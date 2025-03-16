// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sat Mar 15 20:46:30 2025
// Host        : Desktop-Home running 64-bit Linux Mint 22
// Command     : write_verilog -force -mode synth_stub
//               /mnt/Storage/SCHOOL/Capstone/bringup/ChaosCore-FPGA/RV32RocketFPGAConfig/RV32Rocket/RV32Rocket.gen/sources_1/bd/BD/ip/BD_AXI_data_snoop_0_0/BD_AXI_data_snoop_0_0_stub.v
// Design      : BD_AXI_data_snoop_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "BD_AXI_data_snoop_0_0,AXI_data_snoop,{}" *) (* CORE_GENERATION_INFO = "BD_AXI_data_snoop_0_0,AXI_data_snoop,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=AXI_data_snoop,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "AXI_data_snoop,Vivado 2024.2" *) 
module BD_AXI_data_snoop_0_0(clk, rst, rsp_valid, rdata, rdata_out_0, 
  rdata_out_1)
/* synthesis syn_black_box black_box_pad_pin="rst,rsp_valid,rdata[63:0],rdata_out_0[31:0],rdata_out_1[31:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN BD_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input rsp_valid;
  input [63:0]rdata;
  output [31:0]rdata_out_0;
  output [31:0]rdata_out_1;
endmodule
