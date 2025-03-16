/******************************************************************************
* Copyright (c) 2023 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/
#include "memory_config.h"

struct memory_range_s memory_ranges[] = {
	/* psu_ocm_0 memory will not be tested since application resides in the same memory */
	{
        	"psu_ddr_0",
        	"psu_ddr_0",
        	0x0,
        	0x7ff00000,
          },
	 
};

int n_memory_ranges = 1;
