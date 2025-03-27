/*******************************************************************************
* Copyright (C) 2017 - 2022 Xilinx, Inc.  All rights reserved.
* Copyright (C) 2022 - 2023 Advanced Micro Devices, Inc.  All rights reserved.
* SPDX-License-Identifier: MIT
*******************************************************************************/

/*****************************************************************************/
/**
*
* @file xdpdma_video_example.h
*
*
* This file contains a design example using the DPDMA driver (XDpDma)
* This example demonstrates the use of DPDMA for displaying a Graphics Overlay
*
* @note
*
* None.
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who Date     Changes
* ----- --- -------- -----------------------------------------------
* 1.0	aad 10/19/17	Initial Release
*</pre>
*
******************************************************************************/

#ifndef SRC_DPDMA_VIDEO_EXAMPLE_H_
/* Prevent circular inclusions by using protection macros. */
#define SRC_DPDMA_VIDEO_EXAMPLE_H_

/******************************* Include Files ********************************/

#include "xparameters.h"	/* SDK generated parameters */
#include "xdpdma.h"			/* DPDMA device driver */
#ifndef SDT
#include "xscugic.h"		/* Interrupt controller device driver */
#else
#include "xinterrupt_wrap.h"
#endif
#include "xdppsu.h"			/* DP controller device driver */
#include "xavbuf.h"    		/* AVBUF is the video pipeline driver */
#include "xavbuf_clk.h"		/* Clock Driver for Video(VPLL) and Audio(RPLL) clocks */

#ifndef SDT
#define DPPSU_DEVICE_ID		XPAR_PSU_DP_DEVICE_ID
#define AVBUF_DEVICE_ID		XPAR_PSU_DP_DEVICE_ID
#define DPDMA_DEVICE_ID		XPAR_XDPDMA_0_DEVICE_ID
#define INTC_DEVICE_ID		XPAR_SCUGIC_0_DEVICE_ID
#define DPPSU_INTR_ID		151
#define DPDMA_INTR_ID		154

#define DPPSU_BASEADDR		XPAR_PSU_DP_BASEADDR
#define AVBUF_BASEADDR		XPAR_PSU_DP_BASEADDR
#define DPDMA_BASEADDR		XPAR_PSU_DPDMA_BASEADDR
#else
#define DPPSU_BASEADDR		XPAR_XDPPSU_0_BASEADDR
#define AVBUF_BASEADDR		XPAR_XDPPSU_0_BASEADDR
#define DPDMA_BASEADDR		XPAR_XDPDMA_0_BASEADDR
#define INTC_BASEADDR       XPAR_XSCUGIC_0_BASEADDR
#endif

#define BUFFERSIZE			1920 * 1080 * 4		/* HTotal * VTotal * BPP */
#define LINESIZE			1920 * 4			/* HTotal * BPP */
#define STRIDE				LINESIZE			/* The stride value should
													be aligned to 256*/

/****************************** Type Definitions ******************************/

typedef enum {
	LANE_COUNT_1 = 1,
	LANE_COUNT_2 = 2,
} LaneCount_t;

typedef enum {
	LINK_RATE_162GBPS = 0x06,
	LINK_RATE_270GBPS = 0x0A,
	LINK_RATE_540GBPS = 0x14,
} LinkRate_t;

typedef struct {
	XDpPsu	*DpPsuPtr;
	XScuGic	*IntrPtr;
	XAVBuf	*AVBufPtr;
	XDpDma	*DpDmaPtr;

	XVidC_VideoMode	  VideoMode;
	XVidC_ColorDepth  Bpc;
	XDpPsu_ColorEncoding ColorEncode;

	u8 UseMaxLaneCount;
	u8 UseMaxLinkRate;
	u8 LaneCount;
	u8 LinkRate;
	u8 UseMaxCfgCaps;
	u8 EnSynchClkMode;

	u32 PixClkHz;
} Run_Config;

extern u8 Frame[BUFFERSIZE] __attribute__ ((__aligned__(256)));
extern XDpDma_FrameBuffer FrameBuffer;

/************************** Function Prototypes ******************************/
int DpdmaVideoExample(Run_Config *RunCfgPtr);
void InitRunConfig(Run_Config *RunCfgPtr);
int InitDpDmaSubsystem(Run_Config *RunCfgPtr);
void SetupInterrupts(Run_Config *RunCfgPtr);
u8* GraphicsOverlay(u8* Frame, Run_Config *RunCfgPtr);
u8 *GraphicsOverlay2(u8* Frame, Run_Config *RunCfgPtr);

/* DisplayPort interrupt related functions */
void DpPsu_SetupVideoStream(Run_Config *RunCfgPtr);

void DpPsu_Run(Run_Config *RunCfgPtr);
void DpPsu_IsrHpdEvent(void *ref);
void DpPsu_IsrHpdPulse(void *ref);

/************************** Variable Definitions *****************************/


#endif /* SRC_DPDMA_VIDEO_EXAMPLE_H_ */
