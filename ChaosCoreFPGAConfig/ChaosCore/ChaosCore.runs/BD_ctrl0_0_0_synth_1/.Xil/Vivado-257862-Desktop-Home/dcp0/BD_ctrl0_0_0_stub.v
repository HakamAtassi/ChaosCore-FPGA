// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "BD_ctrl0_0_0,ctrl0,{}" *) (* CORE_GENERATION_INFO = "BD_ctrl0_0_0,ctrl0,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=ctrl0,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "ctrl0,Vivado 2024.2" *) 
module BD_ctrl0_0_0(reg_in, reset_out, custom_boot, misc0, misc1, 
  misc2, misc3);
  input [31:0]reg_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_out RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_out, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output reset_out;
  output custom_boot;
  output misc0;
  output misc1;
  output misc2;
  output misc3;
endmodule
