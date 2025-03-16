// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sat Mar 15 20:46:30 2025
// Host        : Desktop-Home running 64-bit Linux Mint 22
// Command     : write_verilog -force -mode funcsim
//               /mnt/Storage/SCHOOL/Capstone/bringup/ChaosCore-FPGA/RV32RocketFPGAConfig/RV32Rocket/RV32Rocket.gen/sources_1/bd/BD/ip/BD_AXI_data_snoop_0_0/BD_AXI_data_snoop_0_0_sim_netlist.v
// Design      : BD_AXI_data_snoop_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "BD_AXI_data_snoop_0_0,AXI_data_snoop,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "AXI_data_snoop,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module BD_AXI_data_snoop_0_0
   (clk,
    rst,
    rsp_valid,
    rdata,
    rdata_out_0,
    rdata_out_1);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN BD_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input rsp_valid;
  input [63:0]rdata;
  output [31:0]rdata_out_0;
  output [31:0]rdata_out_1;

  wire clk;
  wire [63:0]rdata;
  wire [31:0]rdata_out_0;
  wire [31:0]rdata_out_1;
  wire rsp_valid;
  wire rst;

  BD_AXI_data_snoop_0_0_AXI_data_snoop inst
       (.Q({rdata_out_1,rdata_out_0}),
        .clk(clk),
        .rdata(rdata),
        .rsp_valid(rsp_valid),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "AXI_data_snoop" *) 
module BD_AXI_data_snoop_0_0_AXI_data_snoop
   (Q,
    rst,
    rsp_valid,
    rdata,
    clk);
  output [63:0]Q;
  input rst;
  input rsp_valid;
  input [63:0]rdata;
  input clk;

  wire [63:0]Q;
  wire clk;
  wire [63:0]rdata;
  wire rsp_valid;
  wire rst;

  FDSE \last_resp_reg[0] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[0]),
        .Q(Q[0]),
        .S(rst));
  FDSE \last_resp_reg[10] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[10]),
        .Q(Q[10]),
        .S(rst));
  FDSE \last_resp_reg[11] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[11]),
        .Q(Q[11]),
        .S(rst));
  FDSE \last_resp_reg[12] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[12]),
        .Q(Q[12]),
        .S(rst));
  FDSE \last_resp_reg[13] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[13]),
        .Q(Q[13]),
        .S(rst));
  FDSE \last_resp_reg[14] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[14]),
        .Q(Q[14]),
        .S(rst));
  FDSE \last_resp_reg[15] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[15]),
        .Q(Q[15]),
        .S(rst));
  FDSE \last_resp_reg[16] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[16]),
        .Q(Q[16]),
        .S(rst));
  FDSE \last_resp_reg[17] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[17]),
        .Q(Q[17]),
        .S(rst));
  FDSE \last_resp_reg[18] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[18]),
        .Q(Q[18]),
        .S(rst));
  FDSE \last_resp_reg[19] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[19]),
        .Q(Q[19]),
        .S(rst));
  FDSE \last_resp_reg[1] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[1]),
        .Q(Q[1]),
        .S(rst));
  FDSE \last_resp_reg[20] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[20]),
        .Q(Q[20]),
        .S(rst));
  FDSE \last_resp_reg[21] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[21]),
        .Q(Q[21]),
        .S(rst));
  FDSE \last_resp_reg[22] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[22]),
        .Q(Q[22]),
        .S(rst));
  FDSE \last_resp_reg[23] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[23]),
        .Q(Q[23]),
        .S(rst));
  FDSE \last_resp_reg[24] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[24]),
        .Q(Q[24]),
        .S(rst));
  FDSE \last_resp_reg[25] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[25]),
        .Q(Q[25]),
        .S(rst));
  FDSE \last_resp_reg[26] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[26]),
        .Q(Q[26]),
        .S(rst));
  FDSE \last_resp_reg[27] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[27]),
        .Q(Q[27]),
        .S(rst));
  FDSE \last_resp_reg[28] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[28]),
        .Q(Q[28]),
        .S(rst));
  FDSE \last_resp_reg[29] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[29]),
        .Q(Q[29]),
        .S(rst));
  FDSE \last_resp_reg[2] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[2]),
        .Q(Q[2]),
        .S(rst));
  FDSE \last_resp_reg[30] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[30]),
        .Q(Q[30]),
        .S(rst));
  FDSE \last_resp_reg[31] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[31]),
        .Q(Q[31]),
        .S(rst));
  FDSE \last_resp_reg[32] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[32]),
        .Q(Q[32]),
        .S(rst));
  FDSE \last_resp_reg[33] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[33]),
        .Q(Q[33]),
        .S(rst));
  FDSE \last_resp_reg[34] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[34]),
        .Q(Q[34]),
        .S(rst));
  FDSE \last_resp_reg[35] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[35]),
        .Q(Q[35]),
        .S(rst));
  FDSE \last_resp_reg[36] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[36]),
        .Q(Q[36]),
        .S(rst));
  FDSE \last_resp_reg[37] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[37]),
        .Q(Q[37]),
        .S(rst));
  FDSE \last_resp_reg[38] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[38]),
        .Q(Q[38]),
        .S(rst));
  FDSE \last_resp_reg[39] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[39]),
        .Q(Q[39]),
        .S(rst));
  FDSE \last_resp_reg[3] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[3]),
        .Q(Q[3]),
        .S(rst));
  FDSE \last_resp_reg[40] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[40]),
        .Q(Q[40]),
        .S(rst));
  FDSE \last_resp_reg[41] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[41]),
        .Q(Q[41]),
        .S(rst));
  FDSE \last_resp_reg[42] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[42]),
        .Q(Q[42]),
        .S(rst));
  FDSE \last_resp_reg[43] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[43]),
        .Q(Q[43]),
        .S(rst));
  FDSE \last_resp_reg[44] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[44]),
        .Q(Q[44]),
        .S(rst));
  FDSE \last_resp_reg[45] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[45]),
        .Q(Q[45]),
        .S(rst));
  FDSE \last_resp_reg[46] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[46]),
        .Q(Q[46]),
        .S(rst));
  FDSE \last_resp_reg[47] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[47]),
        .Q(Q[47]),
        .S(rst));
  FDSE \last_resp_reg[48] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[48]),
        .Q(Q[48]),
        .S(rst));
  FDSE \last_resp_reg[49] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[49]),
        .Q(Q[49]),
        .S(rst));
  FDSE \last_resp_reg[4] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[4]),
        .Q(Q[4]),
        .S(rst));
  FDSE \last_resp_reg[50] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[50]),
        .Q(Q[50]),
        .S(rst));
  FDSE \last_resp_reg[51] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[51]),
        .Q(Q[51]),
        .S(rst));
  FDSE \last_resp_reg[52] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[52]),
        .Q(Q[52]),
        .S(rst));
  FDSE \last_resp_reg[53] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[53]),
        .Q(Q[53]),
        .S(rst));
  FDSE \last_resp_reg[54] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[54]),
        .Q(Q[54]),
        .S(rst));
  FDSE \last_resp_reg[55] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[55]),
        .Q(Q[55]),
        .S(rst));
  FDSE \last_resp_reg[56] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[56]),
        .Q(Q[56]),
        .S(rst));
  FDSE \last_resp_reg[57] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[57]),
        .Q(Q[57]),
        .S(rst));
  FDSE \last_resp_reg[58] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[58]),
        .Q(Q[58]),
        .S(rst));
  FDSE \last_resp_reg[59] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[59]),
        .Q(Q[59]),
        .S(rst));
  FDSE \last_resp_reg[5] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[5]),
        .Q(Q[5]),
        .S(rst));
  FDSE \last_resp_reg[60] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[60]),
        .Q(Q[60]),
        .S(rst));
  FDSE \last_resp_reg[61] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[61]),
        .Q(Q[61]),
        .S(rst));
  FDSE \last_resp_reg[62] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[62]),
        .Q(Q[62]),
        .S(rst));
  FDSE \last_resp_reg[63] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[63]),
        .Q(Q[63]),
        .S(rst));
  FDSE \last_resp_reg[6] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[6]),
        .Q(Q[6]),
        .S(rst));
  FDSE \last_resp_reg[7] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[7]),
        .Q(Q[7]),
        .S(rst));
  FDSE \last_resp_reg[8] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[8]),
        .Q(Q[8]),
        .S(rst));
  FDSE \last_resp_reg[9] 
       (.C(clk),
        .CE(rsp_valid),
        .D(rdata[9]),
        .Q(Q[9]),
        .S(rst));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
