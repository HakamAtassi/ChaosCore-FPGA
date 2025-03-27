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
#include "bram_init.h"

#define DRAM_BASE 0x40000000
#define PROGRAM_START 0x1000
#define UART_FIFO 0xFF010030

#define	XGPIOPS_BASEADDR	XPAR_XGPIOPS_0_BASEADDR

typedef struct pstart{
    uint32_t i1;
    uint32_t i2;
    uint32_t i3;
    uint32_t i4;
} program_start;

#define PROGRAM ((program_start*)DRAM_BASE)

uint32_t *reset = (uint32_t*)XPAR_AXI_GPIO_0_BASEADDR;
uint32_t *pc = (uint32_t*)DRAM_BASE;
volatile char *uart = (volatile char*)UART_FIFO;

volatile uint32_t *bram = (volatile uint32_t*) XPAR_XBRAM_0_BASEADDR;

XGpioPs Gpio;	/* The driver instance for GPIO Device. */

Run_Config RunCfg;

u8 Frame[BUFFERSIZE] __attribute__ ((__aligned__(256)));
XDpDma_FrameBuffer FrameBuffer;

void mask_write(unsigned long addr, uint32_t val, int msb, int lsb){
    uint32_t reg_val = *(uint32_t*)(addr);
    uint32_t mask = ~(((1 << (msb-lsb+1)) - 1) << lsb);
    //xil_printf("mask: 0x%x reg_val: 0x%x\n\r ", mask, reg_val);
    *(uint32_t*)(addr) = (mask & reg_val) | (val << lsb);
}

int load_program(const char* program, long size){
    print("Loading Program...\n\r");
    uint32_t word;
    uint32_t byte_offset;
    for (int i = PROGRAM_START; i < size; i += 4){
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


int main()
{
    // ********************* INIT ****************************
    init_platform();  
    Xil_DCacheDisable();
	Xil_ICacheDisable();

    xil_printf("\n\n\n\n\n\n\n\n\n\n\n\n\n\r");
    xil_printf("Holding ChaosCore in Reset...\n\r");
    *reset = 0x1;

    xil_printf("Initializing BRAM\n\r");
    for (int i = 0; i < 512; i++){
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

    xil_printf("GPIOs Initialized\n\r");

    xil_printf("Initializing Display.....\n\r");
    InitRunConfig(&RunCfg);
	InitDpDmaSubsystem(&RunCfg);
	GraphicsOverlay(Frame, &RunCfg);

	FrameBuffer.Address = (INTPTR)Frame;
	FrameBuffer.Stride = STRIDE;
	FrameBuffer.LineSize = LINESIZE;
	FrameBuffer.Size = BUFFERSIZE;

	SetupInterrupts(&RunCfg);


    // ************************ LOAD PROGRAM ******************************
    load_program (hello_world_bin, hello_world_bin_length);        

    xil_printf("ChaosCore out of reset\n\r");
    *reset = 0x0;

    sleep(1);
    for (int i = 0; i < 512; i++){
        xil_printf("BRAM%d: 0x%x\n\r",i, Xil_In32(XPAR_XBRAM_0_BASEADDR + (i*4)));
    }
    //********************** MAIN LOOP ***************************************8
    while (1) { 
        rst_btn_in = XGpioPs_ReadPin(&Gpio, reset_btn_pin);
        if (rst_btn_in == 0x0){
            *reset = 0x1;     
            xil_printf("-----ChaosCore In Reset------\r");    
            //GraphicsOverlay2(Frame, &RunCfg);
        } else {
            *reset = 0x0;   
            xil_printf("\npc: 0x%x \r", *(uint32_t*)(XPAR_AXI_GPIO_0_BASEADDR + 8));     
            //GraphicsOverlay(Frame, &RunCfg);       
        }

        //xil_printf("BRAM: 0x%x\n\r", Xil_In32(XPAR_XBRAM_0_BASEADDR));
        
        //xil_printf("pc: 0x%x \n\r", *(uint32_t*)(XPAR_AXI_GPIO_0_BASEADDR + 8)); 

        //xil_printf("axi resp: 0x%x 0x%x\n\r",*(uint32_t*)(XPAR_AXI_GPIO_1_BASEADDR + 8), *(uint32_t*)(XPAR_AXI_GPIO_1_BASEADDR));
        usleep(500e3);  
        //if (*(uint32_t*)(XPAR_AXI_GPIO_0_BASEADDR + 8) == 0x40002590){break;}
                
    }

    cleanup_platform();
	return XST_SUCCESS;
}