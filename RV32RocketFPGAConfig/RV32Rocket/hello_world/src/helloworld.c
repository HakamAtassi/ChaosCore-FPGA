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
#include <sys/unistd.h>
#include <unistd.h>
#include "xgpiops.h"
#include "xstatus.h"
#include "xplatform_info.h"
#include "hello_world_bin.h"

#define DRAM_BASE 0x40000000
#define PROGRAM_START 0x1000

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

XGpioPs Gpio;	/* The driver instance for GPIO Device. */

int main()
{
    // ********************* INIT ****************************
    init_platform();  

	XGpioPs_Config *ConfigPtr;
	ConfigPtr = XGpioPs_LookupConfig(XGPIOPS_BASEADDR);
	if (XGpioPs_CfgInitialize(&Gpio, ConfigPtr,ConfigPtr->BaseAddr) != XST_SUCCESS){
        return XST_FAILURE;
    }

    u32 reset_btn_pin = 36;
    XGpioPs_SetDirectionPin(&Gpio, reset_btn_pin, 0x0);
	u32 rst_btn_in;


    // ************************ LOAD PROGRAM ******************************
    print("Loading Program...\n\r");
    uint32_t word;
    uint32_t byte_offset;
    for (int i = PROGRAM_START; i < hello_world_bin_length; i += 4){
        //little endian to big endian
        word = hello_world_bin[i] + (hello_world_bin[i+1] << 8) + (hello_world_bin[i+2] << 16) + (hello_world_bin[i+3] << 24);   

        byte_offset = i - PROGRAM_START;  
        *(pc + byte_offset/4) = word;                      
    }
    print("Done Loading Program");    

    xil_printf("0x%x: 0x%x  0x%x  0x%x  0x%x\n\r", DRAM_BASE, PROGRAM->i1, PROGRAM->i2, PROGRAM->i3, PROGRAM->i4);   
    //********************** MAIN LOOP ***************************************8
    while (1) { 
        rst_btn_in = XGpioPs_ReadPin(&Gpio, reset_btn_pin);
        if (rst_btn_in == 0x0){
            *reset = 0x1;
            print("Resetting...\n\r");          
        } else {
            *reset = 0x0;
            //xil_printf("0x%x \n\r", *(uint32_t*)(0x40001000));               
        }

        xil_printf("0x%x \n\r", *(uint32_t*)(XPAR_AXI_GPIO_0_BASEADDR + 8)); 
        //printf("Data read from GPIO Input is  0x%x \n\r", (int)rst_btn_in);
        //usleep(500e3);
    }

    cleanup_platform();
	return XST_SUCCESS;
}