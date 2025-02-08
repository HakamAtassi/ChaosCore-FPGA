//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Sat Feb  8 00:02:12 2025
//Host        : hakam-MS-7D46 running 64-bit Ubuntu 24.04.1 LTS
//Command     : generate_target BD.bd
//Design      : BD
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "BD,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=BD,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "BD.hwdef" *) 
module BD
   ();

  wire core_M_AXI_MEM_ACLK;
  wire [31:0]core_M_AXI_MEM_ARADDR;
  wire [1:0]core_M_AXI_MEM_ARBURST;
  wire [3:0]core_M_AXI_MEM_ARCACHE;
  wire [3:0]core_M_AXI_MEM_ARID;
  wire [7:0]core_M_AXI_MEM_ARLEN;
  wire core_M_AXI_MEM_ARLOCK;
  wire [2:0]core_M_AXI_MEM_ARPROT;
  wire [3:0]core_M_AXI_MEM_ARQOS;
  wire core_M_AXI_MEM_ARREADY;
  wire [2:0]core_M_AXI_MEM_ARSIZE;
  wire core_M_AXI_MEM_ARVALID;
  wire [31:0]core_M_AXI_MEM_AWADDR;
  wire [1:0]core_M_AXI_MEM_AWBURST;
  wire [3:0]core_M_AXI_MEM_AWCACHE;
  wire [3:0]core_M_AXI_MEM_AWID;
  wire [7:0]core_M_AXI_MEM_AWLEN;
  wire core_M_AXI_MEM_AWLOCK;
  wire [2:0]core_M_AXI_MEM_AWPROT;
  wire [3:0]core_M_AXI_MEM_AWQOS;
  wire core_M_AXI_MEM_AWREADY;
  wire [2:0]core_M_AXI_MEM_AWSIZE;
  wire core_M_AXI_MEM_AWVALID;
  wire [5:0]core_M_AXI_MEM_BID;
  wire core_M_AXI_MEM_BREADY;
  wire [1:0]core_M_AXI_MEM_BRESP;
  wire core_M_AXI_MEM_BVALID;
  wire [63:0]core_M_AXI_MEM_RDATA;
  wire [5:0]core_M_AXI_MEM_RID;
  wire core_M_AXI_MEM_RLAST;
  wire core_M_AXI_MEM_RREADY;
  wire [1:0]core_M_AXI_MEM_RRESP;
  wire core_M_AXI_MEM_RVALID;
  wire [63:0]core_M_AXI_MEM_WDATA;
  wire core_M_AXI_MEM_WLAST;
  wire core_M_AXI_MEM_WREADY;
  wire [7:0]core_M_AXI_MEM_WSTRB;
  wire core_M_AXI_MEM_WVALID;
  wire core_M_AXI_MMIO_ACLK;
  wire [31:0]core_M_AXI_MMIO_ARADDR;
  wire [1:0]core_M_AXI_MMIO_ARBURST;
  wire [3:0]core_M_AXI_MMIO_ARCACHE;
  wire [3:0]core_M_AXI_MMIO_ARID;
  wire [7:0]core_M_AXI_MMIO_ARLEN;
  wire core_M_AXI_MMIO_ARLOCK;
  wire [2:0]core_M_AXI_MMIO_ARPROT;
  wire [3:0]core_M_AXI_MMIO_ARQOS;
  wire core_M_AXI_MMIO_ARREADY;
  wire [2:0]core_M_AXI_MMIO_ARSIZE;
  wire core_M_AXI_MMIO_ARVALID;
  wire [31:0]core_M_AXI_MMIO_AWADDR;
  wire [1:0]core_M_AXI_MMIO_AWBURST;
  wire [3:0]core_M_AXI_MMIO_AWCACHE;
  wire [3:0]core_M_AXI_MMIO_AWID;
  wire [7:0]core_M_AXI_MMIO_AWLEN;
  wire core_M_AXI_MMIO_AWLOCK;
  wire [2:0]core_M_AXI_MMIO_AWPROT;
  wire [3:0]core_M_AXI_MMIO_AWQOS;
  wire core_M_AXI_MMIO_AWREADY;
  wire [2:0]core_M_AXI_MMIO_AWSIZE;
  wire core_M_AXI_MMIO_AWVALID;
  wire [5:0]core_M_AXI_MMIO_BID;
  wire core_M_AXI_MMIO_BREADY;
  wire [1:0]core_M_AXI_MMIO_BRESP;
  wire core_M_AXI_MMIO_BVALID;
  wire [63:0]core_M_AXI_MMIO_RDATA;
  wire [5:0]core_M_AXI_MMIO_RID;
  wire core_M_AXI_MMIO_RLAST;
  wire core_M_AXI_MMIO_RREADY;
  wire [1:0]core_M_AXI_MMIO_RRESP;
  wire core_M_AXI_MMIO_RVALID;
  wire [63:0]core_M_AXI_MMIO_WDATA;
  wire core_M_AXI_MMIO_WLAST;
  wire core_M_AXI_MMIO_WREADY;
  wire [7:0]core_M_AXI_MMIO_WSTRB;
  wire core_M_AXI_MMIO_WVALID;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  BD_core_0 core
       (.M_AXI_MEM_ACLK(core_M_AXI_MEM_ACLK),
        .M_AXI_MEM_ARADDR(core_M_AXI_MEM_ARADDR),
        .M_AXI_MEM_ARBURST(core_M_AXI_MEM_ARBURST),
        .M_AXI_MEM_ARCACHE(core_M_AXI_MEM_ARCACHE),
        .M_AXI_MEM_ARID(core_M_AXI_MEM_ARID),
        .M_AXI_MEM_ARLEN(core_M_AXI_MEM_ARLEN),
        .M_AXI_MEM_ARLOCK(core_M_AXI_MEM_ARLOCK),
        .M_AXI_MEM_ARPROT(core_M_AXI_MEM_ARPROT),
        .M_AXI_MEM_ARQOS(core_M_AXI_MEM_ARQOS),
        .M_AXI_MEM_ARREADY(core_M_AXI_MEM_ARREADY),
        .M_AXI_MEM_ARSIZE(core_M_AXI_MEM_ARSIZE),
        .M_AXI_MEM_ARVALID(core_M_AXI_MEM_ARVALID),
        .M_AXI_MEM_AWADDR(core_M_AXI_MEM_AWADDR),
        .M_AXI_MEM_AWBURST(core_M_AXI_MEM_AWBURST),
        .M_AXI_MEM_AWCACHE(core_M_AXI_MEM_AWCACHE),
        .M_AXI_MEM_AWID(core_M_AXI_MEM_AWID),
        .M_AXI_MEM_AWLEN(core_M_AXI_MEM_AWLEN),
        .M_AXI_MEM_AWLOCK(core_M_AXI_MEM_AWLOCK),
        .M_AXI_MEM_AWPROT(core_M_AXI_MEM_AWPROT),
        .M_AXI_MEM_AWQOS(core_M_AXI_MEM_AWQOS),
        .M_AXI_MEM_AWREADY(core_M_AXI_MEM_AWREADY),
        .M_AXI_MEM_AWSIZE(core_M_AXI_MEM_AWSIZE),
        .M_AXI_MEM_AWVALID(core_M_AXI_MEM_AWVALID),
        .M_AXI_MEM_BID(core_M_AXI_MEM_BID[3:0]),
        .M_AXI_MEM_BREADY(core_M_AXI_MEM_BREADY),
        .M_AXI_MEM_BRESP(core_M_AXI_MEM_BRESP),
        .M_AXI_MEM_BVALID(core_M_AXI_MEM_BVALID),
        .M_AXI_MEM_RDATA(core_M_AXI_MEM_RDATA),
        .M_AXI_MEM_RID(core_M_AXI_MEM_RID[3:0]),
        .M_AXI_MEM_RLAST(core_M_AXI_MEM_RLAST),
        .M_AXI_MEM_RREADY(core_M_AXI_MEM_RREADY),
        .M_AXI_MEM_RRESP(core_M_AXI_MEM_RRESP),
        .M_AXI_MEM_RVALID(core_M_AXI_MEM_RVALID),
        .M_AXI_MEM_WDATA(core_M_AXI_MEM_WDATA),
        .M_AXI_MEM_WLAST(core_M_AXI_MEM_WLAST),
        .M_AXI_MEM_WREADY(core_M_AXI_MEM_WREADY),
        .M_AXI_MEM_WSTRB(core_M_AXI_MEM_WSTRB),
        .M_AXI_MEM_WVALID(core_M_AXI_MEM_WVALID),
        .M_AXI_MMIO_ACLK(core_M_AXI_MMIO_ACLK),
        .M_AXI_MMIO_ARADDR(core_M_AXI_MMIO_ARADDR),
        .M_AXI_MMIO_ARBURST(core_M_AXI_MMIO_ARBURST),
        .M_AXI_MMIO_ARCACHE(core_M_AXI_MMIO_ARCACHE),
        .M_AXI_MMIO_ARID(core_M_AXI_MMIO_ARID),
        .M_AXI_MMIO_ARLEN(core_M_AXI_MMIO_ARLEN),
        .M_AXI_MMIO_ARLOCK(core_M_AXI_MMIO_ARLOCK),
        .M_AXI_MMIO_ARPROT(core_M_AXI_MMIO_ARPROT),
        .M_AXI_MMIO_ARQOS(core_M_AXI_MMIO_ARQOS),
        .M_AXI_MMIO_ARREADY(core_M_AXI_MMIO_ARREADY),
        .M_AXI_MMIO_ARSIZE(core_M_AXI_MMIO_ARSIZE),
        .M_AXI_MMIO_ARVALID(core_M_AXI_MMIO_ARVALID),
        .M_AXI_MMIO_AWADDR(core_M_AXI_MMIO_AWADDR),
        .M_AXI_MMIO_AWBURST(core_M_AXI_MMIO_AWBURST),
        .M_AXI_MMIO_AWCACHE(core_M_AXI_MMIO_AWCACHE),
        .M_AXI_MMIO_AWID(core_M_AXI_MMIO_AWID),
        .M_AXI_MMIO_AWLEN(core_M_AXI_MMIO_AWLEN),
        .M_AXI_MMIO_AWLOCK(core_M_AXI_MMIO_AWLOCK),
        .M_AXI_MMIO_AWPROT(core_M_AXI_MMIO_AWPROT),
        .M_AXI_MMIO_AWQOS(core_M_AXI_MMIO_AWQOS),
        .M_AXI_MMIO_AWREADY(core_M_AXI_MMIO_AWREADY),
        .M_AXI_MMIO_AWSIZE(core_M_AXI_MMIO_AWSIZE),
        .M_AXI_MMIO_AWVALID(core_M_AXI_MMIO_AWVALID),
        .M_AXI_MMIO_BID(core_M_AXI_MMIO_BID[3:0]),
        .M_AXI_MMIO_BREADY(core_M_AXI_MMIO_BREADY),
        .M_AXI_MMIO_BRESP(core_M_AXI_MMIO_BRESP),
        .M_AXI_MMIO_BVALID(core_M_AXI_MMIO_BVALID),
        .M_AXI_MMIO_RDATA(core_M_AXI_MMIO_RDATA),
        .M_AXI_MMIO_RID(core_M_AXI_MMIO_RID[3:0]),
        .M_AXI_MMIO_RLAST(core_M_AXI_MMIO_RLAST),
        .M_AXI_MMIO_RREADY(core_M_AXI_MMIO_RREADY),
        .M_AXI_MMIO_RRESP(core_M_AXI_MMIO_RRESP),
        .M_AXI_MMIO_RVALID(core_M_AXI_MMIO_RVALID),
        .M_AXI_MMIO_WDATA(core_M_AXI_MMIO_WDATA),
        .M_AXI_MMIO_WLAST(core_M_AXI_MMIO_WLAST),
        .M_AXI_MMIO_WREADY(core_M_AXI_MMIO_WREADY),
        .M_AXI_MMIO_WSTRB(core_M_AXI_MMIO_WSTRB),
        .M_AXI_MMIO_WVALID(core_M_AXI_MMIO_WVALID),
        .clock_uncore(zynq_ultra_ps_e_0_pl_clk0),
        .custom_boot(1'b0),
        .reset_io(zynq_ultra_ps_e_0_pl_resetn0));
  BD_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
       (.pl_clk0(zynq_ultra_ps_e_0_pl_clk0),
        .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn0),
        .saxi_lpd_aclk(core_M_AXI_MMIO_ACLK),
        .saxigp2_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,core_M_AXI_MEM_ARADDR}),
        .saxigp2_arburst(core_M_AXI_MEM_ARBURST),
        .saxigp2_arcache(core_M_AXI_MEM_ARCACHE),
        .saxigp2_arid({1'b0,1'b0,core_M_AXI_MEM_ARID}),
        .saxigp2_arlen(core_M_AXI_MEM_ARLEN),
        .saxigp2_arlock(core_M_AXI_MEM_ARLOCK),
        .saxigp2_arprot(core_M_AXI_MEM_ARPROT),
        .saxigp2_arqos(core_M_AXI_MEM_ARQOS),
        .saxigp2_arready(core_M_AXI_MEM_ARREADY),
        .saxigp2_arsize(core_M_AXI_MEM_ARSIZE),
        .saxigp2_aruser(1'b0),
        .saxigp2_arvalid(core_M_AXI_MEM_ARVALID),
        .saxigp2_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,core_M_AXI_MEM_AWADDR}),
        .saxigp2_awburst(core_M_AXI_MEM_AWBURST),
        .saxigp2_awcache(core_M_AXI_MEM_AWCACHE),
        .saxigp2_awid({1'b0,1'b0,core_M_AXI_MEM_AWID}),
        .saxigp2_awlen(core_M_AXI_MEM_AWLEN),
        .saxigp2_awlock(core_M_AXI_MEM_AWLOCK),
        .saxigp2_awprot(core_M_AXI_MEM_AWPROT),
        .saxigp2_awqos(core_M_AXI_MEM_AWQOS),
        .saxigp2_awready(core_M_AXI_MEM_AWREADY),
        .saxigp2_awsize(core_M_AXI_MEM_AWSIZE),
        .saxigp2_awuser(1'b0),
        .saxigp2_awvalid(core_M_AXI_MEM_AWVALID),
        .saxigp2_bid(core_M_AXI_MEM_BID),
        .saxigp2_bready(core_M_AXI_MEM_BREADY),
        .saxigp2_bresp(core_M_AXI_MEM_BRESP),
        .saxigp2_bvalid(core_M_AXI_MEM_BVALID),
        .saxigp2_rdata(core_M_AXI_MEM_RDATA),
        .saxigp2_rid(core_M_AXI_MEM_RID),
        .saxigp2_rlast(core_M_AXI_MEM_RLAST),
        .saxigp2_rready(core_M_AXI_MEM_RREADY),
        .saxigp2_rresp(core_M_AXI_MEM_RRESP),
        .saxigp2_rvalid(core_M_AXI_MEM_RVALID),
        .saxigp2_wdata(core_M_AXI_MEM_WDATA),
        .saxigp2_wlast(core_M_AXI_MEM_WLAST),
        .saxigp2_wready(core_M_AXI_MEM_WREADY),
        .saxigp2_wstrb(core_M_AXI_MEM_WSTRB),
        .saxigp2_wvalid(core_M_AXI_MEM_WVALID),
        .saxigp6_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,core_M_AXI_MMIO_ARADDR}),
        .saxigp6_arburst(core_M_AXI_MMIO_ARBURST),
        .saxigp6_arcache(core_M_AXI_MMIO_ARCACHE),
        .saxigp6_arid({1'b0,1'b0,core_M_AXI_MMIO_ARID}),
        .saxigp6_arlen(core_M_AXI_MMIO_ARLEN),
        .saxigp6_arlock(core_M_AXI_MMIO_ARLOCK),
        .saxigp6_arprot(core_M_AXI_MMIO_ARPROT),
        .saxigp6_arqos(core_M_AXI_MMIO_ARQOS),
        .saxigp6_arready(core_M_AXI_MMIO_ARREADY),
        .saxigp6_arsize(core_M_AXI_MMIO_ARSIZE),
        .saxigp6_aruser(1'b0),
        .saxigp6_arvalid(core_M_AXI_MMIO_ARVALID),
        .saxigp6_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,core_M_AXI_MMIO_AWADDR}),
        .saxigp6_awburst(core_M_AXI_MMIO_AWBURST),
        .saxigp6_awcache(core_M_AXI_MMIO_AWCACHE),
        .saxigp6_awid({1'b0,1'b0,core_M_AXI_MMIO_AWID}),
        .saxigp6_awlen(core_M_AXI_MMIO_AWLEN),
        .saxigp6_awlock(core_M_AXI_MMIO_AWLOCK),
        .saxigp6_awprot(core_M_AXI_MMIO_AWPROT),
        .saxigp6_awqos(core_M_AXI_MMIO_AWQOS),
        .saxigp6_awready(core_M_AXI_MMIO_AWREADY),
        .saxigp6_awsize(core_M_AXI_MMIO_AWSIZE),
        .saxigp6_awuser(1'b0),
        .saxigp6_awvalid(core_M_AXI_MMIO_AWVALID),
        .saxigp6_bid(core_M_AXI_MMIO_BID),
        .saxigp6_bready(core_M_AXI_MMIO_BREADY),
        .saxigp6_bresp(core_M_AXI_MMIO_BRESP),
        .saxigp6_bvalid(core_M_AXI_MMIO_BVALID),
        .saxigp6_rdata(core_M_AXI_MMIO_RDATA),
        .saxigp6_rid(core_M_AXI_MMIO_RID),
        .saxigp6_rlast(core_M_AXI_MMIO_RLAST),
        .saxigp6_rready(core_M_AXI_MMIO_RREADY),
        .saxigp6_rresp(core_M_AXI_MMIO_RRESP),
        .saxigp6_rvalid(core_M_AXI_MMIO_RVALID),
        .saxigp6_wdata(core_M_AXI_MMIO_WDATA),
        .saxigp6_wlast(core_M_AXI_MMIO_WLAST),
        .saxigp6_wready(core_M_AXI_MMIO_WREADY),
        .saxigp6_wstrb(core_M_AXI_MMIO_WSTRB),
        .saxigp6_wvalid(core_M_AXI_MMIO_WVALID),
        .saxihp0_fpd_aclk(core_M_AXI_MEM_ACLK));
endmodule
