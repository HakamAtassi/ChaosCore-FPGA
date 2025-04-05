/******************************************************************************
* Copyright (C) 2023 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/
/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdint.h>
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include <sys/_intsup.h>
#include <xil_io.h>
//#include <sys/unistd.h>
//#include <unistd.h>
#include "xgpiops.h"
#include "xstatus.h"
#include "xplatform_info.h"
#include "hello_world_bin.h"
#include "xil_cache.h"
#include "dhrystone_bin.h"
#include "xdpdma_video_example.h"
#include "FPGA_hello_world_bin.h"
#include "xclockps.h"
#include "xuartps.h"
#include "bmarks/median_bin.h"
#include "bmarks/qsort_bin.h"
#include "bmarks/rsort_bin.h"
#include "bmarks/towers_bin.h"
#include "bmarks/vvadd_bin.h"
#include "bmarks/memcpy_bin.h"
#include "bmarks/spmv_bin.h"
#include "bmarks/multiply_bin.h"

#define DRAM_BASE 0x40000000
#define PROGRAM_START 0x1000
#define UART_FIFO 0xFF010030

#define	XGPIOPS_BASEADDR	XPAR_XGPIOPS_0_BASEADDR

typedef struct ctrl_reg{
    uint32_t reset:1;
    uint32_t custom_boot:1;
    uint32_t clk_disable:1;
    uint32_t slow_clk:1;
    uint32_t clk_divider:20;
} ctrl_reg1;

typedef struct commit_info{
    uint8_t done_0:1;
    uint8_t done_1:1;
    uint8_t done_2:1;
    uint8_t done_3:1;
} commits;

typedef struct pl0_ctrl{
    uint32_t SRC_SEL:3;
    uint32_t reserved:5;
    uint32_t DIV0:6;
    uint32_t reserved2:2;
    uint32_t DIV1:6;
    uint32_t reserved3:2;
    uint32_t CLK_ACT:1;
}pl0_clk_ctrl;

typedef struct iopll{
    uint32_t RESET:1;
    uint32_t reserved:2;
    uint32_t BYPASS:1;
    uint32_t reserved2:4;
    uint32_t FBDIV:7;
    uint32_t reserved3:1;
    uint32_t DIV2:1;
}iopll_ctrl;

#define PL0_CLK_CTRL ((volatile pl0_clk_ctrl*)PL0_REF_CTRL)
#define IOPLL_CLK_CTRL ((volatile iopll_ctrl*)IOPLL_CTRL)

#define CORE_HZ 50000000

#define CTRL_REG ((volatile ctrl_reg1*)XPAR_AXI_GPIO_0_BASEADDR)
#define COMMITS ((volatile commits*)XPAR_AXI_GPIO_1_BASEADDR)

#define PC ((volatile uint32_t*)(XPAR_AXI_GPIO_0_BASEADDR + 8))

//uint32_t *reset = (uint32_t*)XPAR_AXI_GPIO_0_BASEADDR;
volatile char *uart = (volatile char*)UART_FIFO;

volatile uint32_t *bram = (volatile uint32_t*) XPAR_XBRAM_0_BASEADDR;

XGpioPs Gpio;	/* The driver instance for GPIO Device. */

Run_Config RunCfg;

u8 Frame[BUFFERSIZE] __attribute__ ((__aligned__(256)));
XDpDma_FrameBuffer FrameBuffer;

#define NUM_BMARKS 8

void mask_write(unsigned long addr, uint32_t val, int msb, int lsb){
    uint32_t reg_val = *(uint32_t*)(addr);
    uint32_t mask = ~(((1 << (msb-lsb+1)) - 1) << lsb);
    //xil_printf("mask: 0x%x reg_val: 0x%x\n\r ", mask, reg_val);
    *(uint32_t*)(addr) = (mask & reg_val) | (val << lsb);
}

int load_program(const char* program, int size){
    print("Loading Program...\n\r");
    uint32_t *pc = (uint32_t*)DRAM_BASE;
    uint32_t word;
    uint32_t byte_offset;
    for (int i = PROGRAM_START; i < (PROGRAM_START + size); i += 4){
        //big endian to  endian
        word = program[i] + (program[i+1] << 8) + (program[i+2] << 16) + (program[i+3] << 24);

        byte_offset = i - PROGRAM_START;  
        *(pc + byte_offset/4) = word;                      
    }    
    Xil_DCacheFlush();
    print("Done Loading Program\n\r"); 
    //xil_printf("0x%x: 0x%x  0x%x  0x%x  0x%x\n\r", DRAM_BASE, PROGRAM->i1, PROGRAM->i2, PROGRAM->i3, PROGRAM->i4); 
    return 0;
}

uint32_t short2word_RGBA(uint16_t short_RGBA){
    uint32_t RGBA_final = 0;
    RGBA_final = ((short_RGBA & 0xf) << 4) | ((short_RGBA & 0xf0) << 8) | ((short_RGBA & 0xf00) << 12) | ((short_RGBA & 0xf000) << 16);
    return RGBA_final;
}

void load2frame_buffer(uint32_t bram_addr, uint8_t* Frame){
	uint32_t *RGBA;
    uint32_t bram_data;
    uint16_t RGBA_short;
	RGBA = (uint32_t *) Frame;

	for(uint64_t i = 0; i < (BUFFERSIZE/2); i +=4) {
        bram_data = Xil_In32(bram_addr + i);
        RGBA_short = bram_data & 0xffff;
        RGBA[i/2] = short2word_RGBA(RGBA_short);

        RGBA_short = (bram_data >> 16) & 0xffff;
        RGBA[(i/2) + 1] = short2word_RGBA(RGBA_short);

	}
}

uint8_t debug_mode = 0;

int main()
{
    // ********************* INIT ****************************
    init_platform();  
    Xil_DCacheDisable();
	Xil_ICacheDisable();

    xil_printf("\n\n\n\n\n\n\n\n\n\n\n\n\n\r");
    xil_printf("Holding ChaosCore in Reset...\n\r");
    *(volatile char*)0xFF010030 = '\n';
    *(volatile char*)0xFF010030 = '\r';
    CTRL_REG->reset = 1;
    PL0_CLK_CTRL->DIV1 = 2;

    xil_printf("Initializing BRAM\n\r");
    for (int i = 0; i < (1 << 17); i++){
        Xil_Out32(XPAR_XBRAM_0_BASEADDR + (i*4), 0x55555555);
    }

    xil_printf("Initializing GPIO\n\r");
    
	XGpioPs_Config *ConfigPtr;
	ConfigPtr = XGpioPs_LookupConfig(XGPIOPS_BASEADDR);
	if (XGpioPs_CfgInitialize(&Gpio, ConfigPtr,ConfigPtr->BaseAddr) != XST_SUCCESS){
        return XST_FAILURE;
    }

    u32 reset_btn_pin = 36;
    XGpioPs_SetDirectionPin(&Gpio, reset_btn_pin, 0x0);
	u32 rst_btn_in;

    u32 clk_gate_btn_pin = 39;
    XGpioPs_SetDirectionPin(&Gpio, reset_btn_pin, 0x0);
	u32 clk_gate_in;

    u32 dhrystone_btn_pin = 37;
    XGpioPs_SetDirectionPin(&Gpio, dhrystone_btn_pin, 0x0);
	u32 dhrystone_in;

    u32 display_program_btn_pin = 40;
    XGpioPs_SetDirectionPin(&Gpio, display_program_btn_pin, 0x0);
	u32 display_program_in;


    xil_printf("GPIOs Initialized\n\r");

    xil_printf("Initializing Display.....\n\r");
    InitRunConfig(&RunCfg);
	InitDpDmaSubsystem(&RunCfg);
	GraphicsOverlay(Frame);

	FrameBuffer.Address = (INTPTR)Frame;
	FrameBuffer.Stride = STRIDE;
	FrameBuffer.LineSize = LINESIZE;
	FrameBuffer.Size = BUFFERSIZE;

	SetupInterrupts(&RunCfg); 

    // ************************ LOAD PROGRAM ******************************
    load_program (dhrystone_bin, dhrystone_bin_length);        
    xil_printf("ChaosCore out of reset\n\r");
    
    if (debug_mode){
        //CTRL_REG->clk_disable = 1;
        //CTRL_REG->slow_clk = 1;
        //CTRL_REG->clk_divider = 100;   
        CTRL_REG->clk_disable = 1;
        IOPLL_CLK_CTRL->FBDIV = 127;
        IOPLL_CLK_CTRL->DIV2 = 1;
        PL0_CLK_CTRL->DIV1 = 63;
        PL0_CLK_CTRL->DIV0 = 63;     
        PL0_CLK_CTRL->SRC_SEL = 2;
    }    
    //xil_printf("bypass: %x, fbdiv: %d, div2: %d\n\r", IOPLL_CLK_CTRL->BYPASS, IOPLL_CLK_CTRL->FBDIV, IOPLL_CLK_CTRL->DIV2);
    xil_printf("act: %x, div1: %d, div0: %d, src_sel: 0x%x\n\r", PL0_CLK_CTRL->CLK_ACT, PL0_CLK_CTRL->DIV1, PL0_CLK_CTRL->DIV0, PL0_CLK_CTRL->SRC_SEL);
    CTRL_REG->reset = 0;
    uint8_t commited_0 = 0;
    uint8_t commited_1 = 0;
    uint8_t commited_2 = 0;
    uint8_t commited_3 = 0;    

    uint32_t committed_pc = 0;

    uint8_t dhrystone_btn_prev = 1;
    uint8_t disp_prog_btn_prev = 1;
    uint8_t clk_gate_btn_prev = 1;
    uint8_t reset_btn_prev = 1;

    uint8_t bmark_sel = 0;
    //********************** MAIN LOOP ***************************************
    while (1) { 
        if (debug_mode) CTRL_REG->clk_disable = 1;  
        rst_btn_in = XGpioPs_ReadPin(&Gpio, reset_btn_pin);
        clk_gate_in = XGpioPs_ReadPin(&Gpio, clk_gate_btn_pin);
        dhrystone_in = XGpioPs_ReadPin(&Gpio, dhrystone_btn_pin);
        display_program_in = XGpioPs_ReadPin(&Gpio, display_program_btn_pin);
        if (rst_btn_in ^ reset_btn_prev){
            xil_printf("\n");            
        }
        if (dhrystone_in & ~dhrystone_btn_prev) {
            xil_printf("Dhrystone Selected\n\r");
            load_program(dhrystone_bin, dhrystone_bin_length);
        }
        if (display_program_in & ~disp_prog_btn_prev) {
            xil_printf("Display hello world selected\n\r");
            load_program(FPGA_hello_world_bin, FPGA_hello_world_bin_length);
        }
        if (clk_gate_in & ~clk_gate_btn_prev) {
            switch (bmark_sel) {
                case 0: 
                    xil_printf("median selected\n\r");
                    load_program(median_bin, median_bin_length); 
                    break;         
                case 1: 
                    xil_printf("memcpy selected\n\r");
                    load_program(memcpy_bin, memcpy_bin_length); 
                    break;  
                case 2: 
                    xil_printf("multiply selected\n\r");
                    load_program(multiply_bin, multiply_bin_length); 
                    break;  
                case 3: 
                    xil_printf("qsort selected\n\r");
                    load_program(qsort_bin, qsort_bin_length); 
                    break;  
                case 4: 
                    xil_printf("rsort selected\n\r");
                    load_program(rsort_bin, rsort_bin_length); 
                    break;  
                case 5: 
                    xil_printf("spmv selected\n\r");
                    load_program(spmv_bin, spmv_bin_length); 
                    break;  
                case 6: 
                    xil_printf("towers selected\n\r");
                    load_program(towers_bin, towers_bin_length); 
                    break;  
                case 7: 
                    xil_printf("vvadd selected\n\r");
                    load_program(vvadd_bin, vvadd_bin_length); 
                    break;                        
            }            
            bmark_sel = (bmark_sel+1)%NUM_BMARKS;                        
            // CTRL_REG->clk_disable = ~CTRL_REG->clk_disable;
            // if (CTRL_REG->clk_disable){
            //     xil_printf("Clock gated to ChaosCore\n\r");                
            // } else {
            //     xil_printf("Clock enabled to ChasoCore\n\r");
            // }
        }
        dhrystone_btn_prev = dhrystone_in;
        disp_prog_btn_prev = display_program_in;
        clk_gate_btn_prev = clk_gate_in;
        reset_btn_prev = rst_btn_in;

        CTRL_REG->reset = ~rst_btn_in;
        
        if (rst_btn_in == 0x0){
            xil_printf("-----ChaosCore In Reset------\r\r\r\r\r");
            usleep(500);    
        } else {
            if (debug_mode) {
                if (COMMITS->done_0 && !commited_0) {
                    committed_pc = *PC;
                    xil_printf("\npc: 0x%x \r", committed_pc);
                    commited_0 = 1;
                }
                if (COMMITS->done_1  && !commited_1) {
                    committed_pc = (*PC) + 4;
                    xil_printf("\npc: 0x%x \r", committed_pc);
                    commited_1 = 1;
                }
                if (COMMITS->done_2 && !commited_2) {
                    committed_pc = (*PC) + 8;
                    xil_printf("\npc: 0x%x \r", committed_pc);
                    commited_2 = 1;
                }
                if (COMMITS->done_3 && !commited_3) {
                    committed_pc = (*PC) + 12;
                    xil_printf("\npc: 0x%x \r", committed_pc);
                    commited_3 = 1;
                }
                if (!COMMITS->done_0){
                    commited_0 = 0;
                }  
                if (!COMMITS->done_1){
                    commited_1 = 0;
                }  
                if (!COMMITS->done_2){
                    commited_2 = 0;
                }  
                if (!COMMITS->done_3){
                    commited_3 = 0;
                }  
            }
            load2frame_buffer(XPAR_XBRAM_0_BASEADDR, Frame); 
        }
        if (debug_mode){
            CTRL_REG->clk_disable = 0;
        }
                
    }

    cleanup_platform();
	return XST_SUCCESS;
}