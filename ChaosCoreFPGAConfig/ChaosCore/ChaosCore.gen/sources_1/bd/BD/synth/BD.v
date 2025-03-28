//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Thu Mar 27 18:31:01 2025
//Host        : Desktop-Home running 64-bit Linux Mint 22
//Command     : generate_target BD.bd
//Design      : BD
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "BD,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=BD,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=13,numReposBlks=13,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=2,da_zynq_ultra_ps_e_cnt=1,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "BD.hwdef" *) 
module BD
   (heartbeat,
    rst_led,
    uart0_rx,
    uart0_tx);
  output heartbeat;
  output rst_led;
  input uart0_rx;
  output uart0_tx;

  wire [31:0]AXI_data_snoop_0_rdata_out_0;
  wire [31:0]AXI_data_snoop_0_rdata_out_1;
  wire ChaosCoreTop_0_M_AXI_MEM_ACLK;
  wire [31:0]ChaosCoreTop_0_M_AXI_MEM_ARADDR;
  wire [1:0]ChaosCoreTop_0_M_AXI_MEM_ARBURST;
  wire [3:0]ChaosCoreTop_0_M_AXI_MEM_ARCACHE;
  wire [3:0]ChaosCoreTop_0_M_AXI_MEM_ARID;
  wire [7:0]ChaosCoreTop_0_M_AXI_MEM_ARLEN;
  wire ChaosCoreTop_0_M_AXI_MEM_ARLOCK;
  wire [2:0]ChaosCoreTop_0_M_AXI_MEM_ARPROT;
  wire [3:0]ChaosCoreTop_0_M_AXI_MEM_ARQOS;
  wire ChaosCoreTop_0_M_AXI_MEM_ARREADY;
  wire [2:0]ChaosCoreTop_0_M_AXI_MEM_ARSIZE;
  wire ChaosCoreTop_0_M_AXI_MEM_ARVALID;
  wire [31:0]ChaosCoreTop_0_M_AXI_MEM_AWADDR;
  wire [1:0]ChaosCoreTop_0_M_AXI_MEM_AWBURST;
  wire [3:0]ChaosCoreTop_0_M_AXI_MEM_AWCACHE;
  wire [3:0]ChaosCoreTop_0_M_AXI_MEM_AWID;
  wire [7:0]ChaosCoreTop_0_M_AXI_MEM_AWLEN;
  wire ChaosCoreTop_0_M_AXI_MEM_AWLOCK;
  wire [2:0]ChaosCoreTop_0_M_AXI_MEM_AWPROT;
  wire [3:0]ChaosCoreTop_0_M_AXI_MEM_AWQOS;
  wire ChaosCoreTop_0_M_AXI_MEM_AWREADY;
  wire [2:0]ChaosCoreTop_0_M_AXI_MEM_AWSIZE;
  wire ChaosCoreTop_0_M_AXI_MEM_AWVALID;
  wire [3:0]ChaosCoreTop_0_M_AXI_MEM_BID;
  wire ChaosCoreTop_0_M_AXI_MEM_BREADY;
  wire [1:0]ChaosCoreTop_0_M_AXI_MEM_BRESP;
  wire ChaosCoreTop_0_M_AXI_MEM_BVALID;
  wire [63:0]ChaosCoreTop_0_M_AXI_MEM_RDATA;
  wire [3:0]ChaosCoreTop_0_M_AXI_MEM_RID;
  wire ChaosCoreTop_0_M_AXI_MEM_RLAST;
  wire ChaosCoreTop_0_M_AXI_MEM_RREADY;
  wire [1:0]ChaosCoreTop_0_M_AXI_MEM_RRESP;
  wire ChaosCoreTop_0_M_AXI_MEM_RVALID;
  wire [63:0]ChaosCoreTop_0_M_AXI_MEM_WDATA;
  wire ChaosCoreTop_0_M_AXI_MEM_WLAST;
  wire ChaosCoreTop_0_M_AXI_MEM_WREADY;
  wire [7:0]ChaosCoreTop_0_M_AXI_MEM_WSTRB;
  wire ChaosCoreTop_0_M_AXI_MEM_WVALID;
  wire ChaosCoreTop_0_M_AXI_MMIO_ACLK;
  wire [31:0]ChaosCoreTop_0_M_AXI_MMIO_ARADDR;
  wire [1:0]ChaosCoreTop_0_M_AXI_MMIO_ARBURST;
  wire [3:0]ChaosCoreTop_0_M_AXI_MMIO_ARCACHE;
  wire [3:0]ChaosCoreTop_0_M_AXI_MMIO_ARID;
  wire [7:0]ChaosCoreTop_0_M_AXI_MMIO_ARLEN;
  wire ChaosCoreTop_0_M_AXI_MMIO_ARLOCK;
  wire [2:0]ChaosCoreTop_0_M_AXI_MMIO_ARPROT;
  wire [3:0]ChaosCoreTop_0_M_AXI_MMIO_ARQOS;
  wire ChaosCoreTop_0_M_AXI_MMIO_ARREADY;
  wire [2:0]ChaosCoreTop_0_M_AXI_MMIO_ARSIZE;
  wire ChaosCoreTop_0_M_AXI_MMIO_ARVALID;
  wire [31:0]ChaosCoreTop_0_M_AXI_MMIO_AWADDR;
  wire [1:0]ChaosCoreTop_0_M_AXI_MMIO_AWBURST;
  wire [3:0]ChaosCoreTop_0_M_AXI_MMIO_AWCACHE;
  wire [3:0]ChaosCoreTop_0_M_AXI_MMIO_AWID;
  wire [7:0]ChaosCoreTop_0_M_AXI_MMIO_AWLEN;
  wire ChaosCoreTop_0_M_AXI_MMIO_AWLOCK;
  wire [2:0]ChaosCoreTop_0_M_AXI_MMIO_AWPROT;
  wire [3:0]ChaosCoreTop_0_M_AXI_MMIO_AWQOS;
  wire ChaosCoreTop_0_M_AXI_MMIO_AWREADY;
  wire [2:0]ChaosCoreTop_0_M_AXI_MMIO_AWSIZE;
  wire ChaosCoreTop_0_M_AXI_MMIO_AWVALID;
  wire [3:0]ChaosCoreTop_0_M_AXI_MMIO_BID;
  wire ChaosCoreTop_0_M_AXI_MMIO_BREADY;
  wire [1:0]ChaosCoreTop_0_M_AXI_MMIO_BRESP;
  wire ChaosCoreTop_0_M_AXI_MMIO_BVALID;
  wire [63:0]ChaosCoreTop_0_M_AXI_MMIO_RDATA;
  wire [3:0]ChaosCoreTop_0_M_AXI_MMIO_RID;
  wire ChaosCoreTop_0_M_AXI_MMIO_RLAST;
  wire ChaosCoreTop_0_M_AXI_MMIO_RREADY;
  wire [1:0]ChaosCoreTop_0_M_AXI_MMIO_RRESP;
  wire ChaosCoreTop_0_M_AXI_MMIO_RVALID;
  wire [63:0]ChaosCoreTop_0_M_AXI_MMIO_WDATA;
  wire ChaosCoreTop_0_M_AXI_MMIO_WLAST;
  wire ChaosCoreTop_0_M_AXI_MMIO_WREADY;
  wire [7:0]ChaosCoreTop_0_M_AXI_MMIO_WSTRB;
  wire ChaosCoreTop_0_M_AXI_MMIO_WVALID;
  wire [63:0]ChaosCoreTop_0_axi_r_data_out;
  wire ChaosCoreTop_0_axi_r_valid_out;
  wire ChaosCoreTop_0_clock_tap;
  wire [31:0]ChaosCoreTop_0_pc;
  wire [18:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire [18:0]axi_bram_ctrl_1_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_1_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_1_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_1_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_1_BRAM_PORTA_EN;
  wire axi_bram_ctrl_1_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_1_BRAM_PORTA_WE;
  wire [31:0]axi_gpio_0_gpio_io_o;
  wire [8:0]axi_smc_M00_AXI_ARADDR;
  wire axi_smc_M00_AXI_ARREADY;
  wire axi_smc_M00_AXI_ARVALID;
  wire [8:0]axi_smc_M00_AXI_AWADDR;
  wire axi_smc_M00_AXI_AWREADY;
  wire axi_smc_M00_AXI_AWVALID;
  wire axi_smc_M00_AXI_BREADY;
  wire [1:0]axi_smc_M00_AXI_BRESP;
  wire axi_smc_M00_AXI_BVALID;
  wire [31:0]axi_smc_M00_AXI_RDATA;
  wire axi_smc_M00_AXI_RREADY;
  wire [1:0]axi_smc_M00_AXI_RRESP;
  wire axi_smc_M00_AXI_RVALID;
  wire [31:0]axi_smc_M00_AXI_WDATA;
  wire axi_smc_M00_AXI_WREADY;
  wire [3:0]axi_smc_M00_AXI_WSTRB;
  wire axi_smc_M00_AXI_WVALID;
  wire [8:0]axi_smc_M01_AXI_ARADDR;
  wire axi_smc_M01_AXI_ARREADY;
  wire axi_smc_M01_AXI_ARVALID;
  wire [8:0]axi_smc_M01_AXI_AWADDR;
  wire axi_smc_M01_AXI_AWREADY;
  wire axi_smc_M01_AXI_AWVALID;
  wire axi_smc_M01_AXI_BREADY;
  wire [1:0]axi_smc_M01_AXI_BRESP;
  wire axi_smc_M01_AXI_BVALID;
  wire [31:0]axi_smc_M01_AXI_RDATA;
  wire axi_smc_M01_AXI_RREADY;
  wire [1:0]axi_smc_M01_AXI_RRESP;
  wire axi_smc_M01_AXI_RVALID;
  wire [31:0]axi_smc_M01_AXI_WDATA;
  wire axi_smc_M01_AXI_WREADY;
  wire [3:0]axi_smc_M01_AXI_WSTRB;
  wire axi_smc_M01_AXI_WVALID;
  wire [18:0]axi_smc_M02_AXI_ARADDR;
  wire [1:0]axi_smc_M02_AXI_ARBURST;
  wire [3:0]axi_smc_M02_AXI_ARCACHE;
  wire [7:0]axi_smc_M02_AXI_ARLEN;
  wire [0:0]axi_smc_M02_AXI_ARLOCK;
  wire [2:0]axi_smc_M02_AXI_ARPROT;
  wire axi_smc_M02_AXI_ARREADY;
  wire [2:0]axi_smc_M02_AXI_ARSIZE;
  wire axi_smc_M02_AXI_ARVALID;
  wire [18:0]axi_smc_M02_AXI_AWADDR;
  wire [1:0]axi_smc_M02_AXI_AWBURST;
  wire [3:0]axi_smc_M02_AXI_AWCACHE;
  wire [7:0]axi_smc_M02_AXI_AWLEN;
  wire [0:0]axi_smc_M02_AXI_AWLOCK;
  wire [2:0]axi_smc_M02_AXI_AWPROT;
  wire axi_smc_M02_AXI_AWREADY;
  wire [2:0]axi_smc_M02_AXI_AWSIZE;
  wire axi_smc_M02_AXI_AWVALID;
  wire axi_smc_M02_AXI_BREADY;
  wire [1:0]axi_smc_M02_AXI_BRESP;
  wire axi_smc_M02_AXI_BVALID;
  wire [31:0]axi_smc_M02_AXI_RDATA;
  wire axi_smc_M02_AXI_RLAST;
  wire axi_smc_M02_AXI_RREADY;
  wire [1:0]axi_smc_M02_AXI_RRESP;
  wire axi_smc_M02_AXI_RVALID;
  wire [31:0]axi_smc_M02_AXI_WDATA;
  wire axi_smc_M02_AXI_WLAST;
  wire axi_smc_M02_AXI_WREADY;
  wire [3:0]axi_smc_M02_AXI_WSTRB;
  wire axi_smc_M02_AXI_WVALID;
  wire ctrl0_0_custom_boot;
  wire heartbeat;
  wire rst_led;
  wire [0:0]rst_ps8_0_100M_peripheral_aresetn;
  wire [48:0]smartconnect_0_M00_AXI_ARADDR;
  wire [1:0]smartconnect_0_M00_AXI_ARBURST;
  wire [3:0]smartconnect_0_M00_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M00_AXI_ARLEN;
  wire [0:0]smartconnect_0_M00_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M00_AXI_ARPROT;
  wire [3:0]smartconnect_0_M00_AXI_ARQOS;
  wire smartconnect_0_M00_AXI_ARREADY;
  wire [2:0]smartconnect_0_M00_AXI_ARSIZE;
  wire smartconnect_0_M00_AXI_ARVALID;
  wire [48:0]smartconnect_0_M00_AXI_AWADDR;
  wire [1:0]smartconnect_0_M00_AXI_AWBURST;
  wire [3:0]smartconnect_0_M00_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M00_AXI_AWLEN;
  wire [0:0]smartconnect_0_M00_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M00_AXI_AWPROT;
  wire [3:0]smartconnect_0_M00_AXI_AWQOS;
  wire smartconnect_0_M00_AXI_AWREADY;
  wire [2:0]smartconnect_0_M00_AXI_AWSIZE;
  wire smartconnect_0_M00_AXI_AWVALID;
  wire smartconnect_0_M00_AXI_BREADY;
  wire [1:0]smartconnect_0_M00_AXI_BRESP;
  wire smartconnect_0_M00_AXI_BVALID;
  wire [127:0]smartconnect_0_M00_AXI_RDATA;
  wire smartconnect_0_M00_AXI_RLAST;
  wire smartconnect_0_M00_AXI_RREADY;
  wire [1:0]smartconnect_0_M00_AXI_RRESP;
  wire smartconnect_0_M00_AXI_RVALID;
  wire [127:0]smartconnect_0_M00_AXI_WDATA;
  wire smartconnect_0_M00_AXI_WLAST;
  wire smartconnect_0_M00_AXI_WREADY;
  wire [15:0]smartconnect_0_M00_AXI_WSTRB;
  wire smartconnect_0_M00_AXI_WVALID;
  wire [18:0]smartconnect_0_M01_AXI_ARADDR;
  wire [1:0]smartconnect_0_M01_AXI_ARBURST;
  wire [3:0]smartconnect_0_M01_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M01_AXI_ARLEN;
  wire [0:0]smartconnect_0_M01_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M01_AXI_ARPROT;
  wire smartconnect_0_M01_AXI_ARREADY;
  wire [2:0]smartconnect_0_M01_AXI_ARSIZE;
  wire smartconnect_0_M01_AXI_ARVALID;
  wire [18:0]smartconnect_0_M01_AXI_AWADDR;
  wire [1:0]smartconnect_0_M01_AXI_AWBURST;
  wire [3:0]smartconnect_0_M01_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M01_AXI_AWLEN;
  wire [0:0]smartconnect_0_M01_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M01_AXI_AWPROT;
  wire smartconnect_0_M01_AXI_AWREADY;
  wire [2:0]smartconnect_0_M01_AXI_AWSIZE;
  wire smartconnect_0_M01_AXI_AWVALID;
  wire smartconnect_0_M01_AXI_BREADY;
  wire [1:0]smartconnect_0_M01_AXI_BRESP;
  wire smartconnect_0_M01_AXI_BVALID;
  wire [31:0]smartconnect_0_M01_AXI_RDATA;
  wire smartconnect_0_M01_AXI_RLAST;
  wire smartconnect_0_M01_AXI_RREADY;
  wire [1:0]smartconnect_0_M01_AXI_RRESP;
  wire smartconnect_0_M01_AXI_RVALID;
  wire [31:0]smartconnect_0_M01_AXI_WDATA;
  wire smartconnect_0_M01_AXI_WLAST;
  wire smartconnect_0_M01_AXI_WREADY;
  wire [3:0]smartconnect_0_M01_AXI_WSTRB;
  wire smartconnect_0_M01_AXI_WVALID;
  wire uart0_rx;
  wire uart0_tx;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WDATA;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WREADY;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WSTRB;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WVALID;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  BD_AXI_data_snoop_0_0 AXI_data_snoop_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .rdata(ChaosCoreTop_0_axi_r_data_out),
        .rdata_out_0(AXI_data_snoop_0_rdata_out_0),
        .rdata_out_1(AXI_data_snoop_0_rdata_out_1),
        .rsp_valid(ChaosCoreTop_0_axi_r_valid_out),
        .rst(rst_led));
  BD_ChaosCoreTop_0_0 ChaosCoreTop_0
       (.M_AXI_MEM_ACLK(ChaosCoreTop_0_M_AXI_MEM_ACLK),
        .M_AXI_MEM_ARADDR(ChaosCoreTop_0_M_AXI_MEM_ARADDR),
        .M_AXI_MEM_ARBURST(ChaosCoreTop_0_M_AXI_MEM_ARBURST),
        .M_AXI_MEM_ARCACHE(ChaosCoreTop_0_M_AXI_MEM_ARCACHE),
        .M_AXI_MEM_ARID(ChaosCoreTop_0_M_AXI_MEM_ARID),
        .M_AXI_MEM_ARLEN(ChaosCoreTop_0_M_AXI_MEM_ARLEN),
        .M_AXI_MEM_ARLOCK(ChaosCoreTop_0_M_AXI_MEM_ARLOCK),
        .M_AXI_MEM_ARPROT(ChaosCoreTop_0_M_AXI_MEM_ARPROT),
        .M_AXI_MEM_ARQOS(ChaosCoreTop_0_M_AXI_MEM_ARQOS),
        .M_AXI_MEM_ARREADY(ChaosCoreTop_0_M_AXI_MEM_ARREADY),
        .M_AXI_MEM_ARSIZE(ChaosCoreTop_0_M_AXI_MEM_ARSIZE),
        .M_AXI_MEM_ARVALID(ChaosCoreTop_0_M_AXI_MEM_ARVALID),
        .M_AXI_MEM_AWADDR(ChaosCoreTop_0_M_AXI_MEM_AWADDR),
        .M_AXI_MEM_AWBURST(ChaosCoreTop_0_M_AXI_MEM_AWBURST),
        .M_AXI_MEM_AWCACHE(ChaosCoreTop_0_M_AXI_MEM_AWCACHE),
        .M_AXI_MEM_AWID(ChaosCoreTop_0_M_AXI_MEM_AWID),
        .M_AXI_MEM_AWLEN(ChaosCoreTop_0_M_AXI_MEM_AWLEN),
        .M_AXI_MEM_AWLOCK(ChaosCoreTop_0_M_AXI_MEM_AWLOCK),
        .M_AXI_MEM_AWPROT(ChaosCoreTop_0_M_AXI_MEM_AWPROT),
        .M_AXI_MEM_AWQOS(ChaosCoreTop_0_M_AXI_MEM_AWQOS),
        .M_AXI_MEM_AWREADY(ChaosCoreTop_0_M_AXI_MEM_AWREADY),
        .M_AXI_MEM_AWSIZE(ChaosCoreTop_0_M_AXI_MEM_AWSIZE),
        .M_AXI_MEM_AWVALID(ChaosCoreTop_0_M_AXI_MEM_AWVALID),
        .M_AXI_MEM_BID(ChaosCoreTop_0_M_AXI_MEM_BID),
        .M_AXI_MEM_BREADY(ChaosCoreTop_0_M_AXI_MEM_BREADY),
        .M_AXI_MEM_BRESP(ChaosCoreTop_0_M_AXI_MEM_BRESP),
        .M_AXI_MEM_BVALID(ChaosCoreTop_0_M_AXI_MEM_BVALID),
        .M_AXI_MEM_RDATA(ChaosCoreTop_0_M_AXI_MEM_RDATA),
        .M_AXI_MEM_RID(ChaosCoreTop_0_M_AXI_MEM_RID),
        .M_AXI_MEM_RLAST(ChaosCoreTop_0_M_AXI_MEM_RLAST),
        .M_AXI_MEM_RREADY(ChaosCoreTop_0_M_AXI_MEM_RREADY),
        .M_AXI_MEM_RRESP(ChaosCoreTop_0_M_AXI_MEM_RRESP),
        .M_AXI_MEM_RVALID(ChaosCoreTop_0_M_AXI_MEM_RVALID),
        .M_AXI_MEM_WDATA(ChaosCoreTop_0_M_AXI_MEM_WDATA),
        .M_AXI_MEM_WLAST(ChaosCoreTop_0_M_AXI_MEM_WLAST),
        .M_AXI_MEM_WREADY(ChaosCoreTop_0_M_AXI_MEM_WREADY),
        .M_AXI_MEM_WSTRB(ChaosCoreTop_0_M_AXI_MEM_WSTRB),
        .M_AXI_MEM_WVALID(ChaosCoreTop_0_M_AXI_MEM_WVALID),
        .M_AXI_MMIO_ACLK(ChaosCoreTop_0_M_AXI_MMIO_ACLK),
        .M_AXI_MMIO_ARADDR(ChaosCoreTop_0_M_AXI_MMIO_ARADDR),
        .M_AXI_MMIO_ARBURST(ChaosCoreTop_0_M_AXI_MMIO_ARBURST),
        .M_AXI_MMIO_ARCACHE(ChaosCoreTop_0_M_AXI_MMIO_ARCACHE),
        .M_AXI_MMIO_ARID(ChaosCoreTop_0_M_AXI_MMIO_ARID),
        .M_AXI_MMIO_ARLEN(ChaosCoreTop_0_M_AXI_MMIO_ARLEN),
        .M_AXI_MMIO_ARLOCK(ChaosCoreTop_0_M_AXI_MMIO_ARLOCK),
        .M_AXI_MMIO_ARPROT(ChaosCoreTop_0_M_AXI_MMIO_ARPROT),
        .M_AXI_MMIO_ARQOS(ChaosCoreTop_0_M_AXI_MMIO_ARQOS),
        .M_AXI_MMIO_ARREADY(ChaosCoreTop_0_M_AXI_MMIO_ARREADY),
        .M_AXI_MMIO_ARSIZE(ChaosCoreTop_0_M_AXI_MMIO_ARSIZE),
        .M_AXI_MMIO_ARVALID(ChaosCoreTop_0_M_AXI_MMIO_ARVALID),
        .M_AXI_MMIO_AWADDR(ChaosCoreTop_0_M_AXI_MMIO_AWADDR),
        .M_AXI_MMIO_AWBURST(ChaosCoreTop_0_M_AXI_MMIO_AWBURST),
        .M_AXI_MMIO_AWCACHE(ChaosCoreTop_0_M_AXI_MMIO_AWCACHE),
        .M_AXI_MMIO_AWID(ChaosCoreTop_0_M_AXI_MMIO_AWID),
        .M_AXI_MMIO_AWLEN(ChaosCoreTop_0_M_AXI_MMIO_AWLEN),
        .M_AXI_MMIO_AWLOCK(ChaosCoreTop_0_M_AXI_MMIO_AWLOCK),
        .M_AXI_MMIO_AWPROT(ChaosCoreTop_0_M_AXI_MMIO_AWPROT),
        .M_AXI_MMIO_AWQOS(ChaosCoreTop_0_M_AXI_MMIO_AWQOS),
        .M_AXI_MMIO_AWREADY(ChaosCoreTop_0_M_AXI_MMIO_AWREADY),
        .M_AXI_MMIO_AWSIZE(ChaosCoreTop_0_M_AXI_MMIO_AWSIZE),
        .M_AXI_MMIO_AWVALID(ChaosCoreTop_0_M_AXI_MMIO_AWVALID),
        .M_AXI_MMIO_BID(ChaosCoreTop_0_M_AXI_MMIO_BID),
        .M_AXI_MMIO_BREADY(ChaosCoreTop_0_M_AXI_MMIO_BREADY),
        .M_AXI_MMIO_BRESP(ChaosCoreTop_0_M_AXI_MMIO_BRESP),
        .M_AXI_MMIO_BVALID(ChaosCoreTop_0_M_AXI_MMIO_BVALID),
        .M_AXI_MMIO_RDATA(ChaosCoreTop_0_M_AXI_MMIO_RDATA),
        .M_AXI_MMIO_RID(ChaosCoreTop_0_M_AXI_MMIO_RID),
        .M_AXI_MMIO_RLAST(ChaosCoreTop_0_M_AXI_MMIO_RLAST),
        .M_AXI_MMIO_RREADY(ChaosCoreTop_0_M_AXI_MMIO_RREADY),
        .M_AXI_MMIO_RRESP(ChaosCoreTop_0_M_AXI_MMIO_RRESP),
        .M_AXI_MMIO_RVALID(ChaosCoreTop_0_M_AXI_MMIO_RVALID),
        .M_AXI_MMIO_WDATA(ChaosCoreTop_0_M_AXI_MMIO_WDATA),
        .M_AXI_MMIO_WLAST(ChaosCoreTop_0_M_AXI_MMIO_WLAST),
        .M_AXI_MMIO_WREADY(ChaosCoreTop_0_M_AXI_MMIO_WREADY),
        .M_AXI_MMIO_WSTRB(ChaosCoreTop_0_M_AXI_MMIO_WSTRB),
        .M_AXI_MMIO_WVALID(ChaosCoreTop_0_M_AXI_MMIO_WVALID),
        .axi_r_data_out(ChaosCoreTop_0_axi_r_data_out),
        .axi_r_valid_out(ChaosCoreTop_0_axi_r_valid_out),
        .clock_tap(ChaosCoreTop_0_clock_tap),
        .clock_uncore(zynq_ultra_ps_e_0_pl_clk0),
        .custom_boot(ctrl0_0_custom_boot),
        .pc(ChaosCoreTop_0_pc),
        .reset_io(rst_led));
  BD_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_araddr(axi_smc_M02_AXI_ARADDR),
        .s_axi_arburst(axi_smc_M02_AXI_ARBURST),
        .s_axi_arcache(axi_smc_M02_AXI_ARCACHE),
        .s_axi_aresetn(rst_ps8_0_100M_peripheral_aresetn),
        .s_axi_arlen(axi_smc_M02_AXI_ARLEN),
        .s_axi_arlock(axi_smc_M02_AXI_ARLOCK),
        .s_axi_arprot(axi_smc_M02_AXI_ARPROT),
        .s_axi_arready(axi_smc_M02_AXI_ARREADY),
        .s_axi_arsize(axi_smc_M02_AXI_ARSIZE),
        .s_axi_arvalid(axi_smc_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M02_AXI_AWADDR),
        .s_axi_awburst(axi_smc_M02_AXI_AWBURST),
        .s_axi_awcache(axi_smc_M02_AXI_AWCACHE),
        .s_axi_awlen(axi_smc_M02_AXI_AWLEN),
        .s_axi_awlock(axi_smc_M02_AXI_AWLOCK),
        .s_axi_awprot(axi_smc_M02_AXI_AWPROT),
        .s_axi_awready(axi_smc_M02_AXI_AWREADY),
        .s_axi_awsize(axi_smc_M02_AXI_AWSIZE),
        .s_axi_awvalid(axi_smc_M02_AXI_AWVALID),
        .s_axi_bready(axi_smc_M02_AXI_BREADY),
        .s_axi_bresp(axi_smc_M02_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M02_AXI_BVALID),
        .s_axi_rdata(axi_smc_M02_AXI_RDATA),
        .s_axi_rlast(axi_smc_M02_AXI_RLAST),
        .s_axi_rready(axi_smc_M02_AXI_RREADY),
        .s_axi_rresp(axi_smc_M02_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M02_AXI_RVALID),
        .s_axi_wdata(axi_smc_M02_AXI_WDATA),
        .s_axi_wlast(axi_smc_M02_AXI_WLAST),
        .s_axi_wready(axi_smc_M02_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M02_AXI_WVALID));
  BD_axi_bram_ctrl_1_0 axi_bram_ctrl_1
       (.bram_addr_a(axi_bram_ctrl_1_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_1_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_1_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_1_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_1_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_1_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_1_BRAM_PORTA_DIN),
        .s_axi_aclk(ChaosCoreTop_0_M_AXI_MMIO_ACLK),
        .s_axi_araddr(smartconnect_0_M01_AXI_ARADDR),
        .s_axi_arburst(smartconnect_0_M01_AXI_ARBURST),
        .s_axi_arcache(smartconnect_0_M01_AXI_ARCACHE),
        .s_axi_aresetn(rst_ps8_0_100M_peripheral_aresetn),
        .s_axi_arlen(smartconnect_0_M01_AXI_ARLEN),
        .s_axi_arlock(smartconnect_0_M01_AXI_ARLOCK),
        .s_axi_arprot(smartconnect_0_M01_AXI_ARPROT),
        .s_axi_arready(smartconnect_0_M01_AXI_ARREADY),
        .s_axi_arsize(smartconnect_0_M01_AXI_ARSIZE),
        .s_axi_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .s_axi_awburst(smartconnect_0_M01_AXI_AWBURST),
        .s_axi_awcache(smartconnect_0_M01_AXI_AWCACHE),
        .s_axi_awlen(smartconnect_0_M01_AXI_AWLEN),
        .s_axi_awlock(smartconnect_0_M01_AXI_AWLOCK),
        .s_axi_awprot(smartconnect_0_M01_AXI_AWPROT),
        .s_axi_awready(smartconnect_0_M01_AXI_AWREADY),
        .s_axi_awsize(smartconnect_0_M01_AXI_AWSIZE),
        .s_axi_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M01_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M01_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M01_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M01_AXI_RDATA),
        .s_axi_rlast(smartconnect_0_M01_AXI_RLAST),
        .s_axi_rready(smartconnect_0_M01_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M01_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M01_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M01_AXI_WDATA),
        .s_axi_wlast(smartconnect_0_M01_AXI_WLAST),
        .s_axi_wready(smartconnect_0_M01_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M01_AXI_WVALID));
  BD_axi_gpio_0_0 axi_gpio_0
       (.gpio2_io_i(ChaosCoreTop_0_pc),
        .gpio_io_o(axi_gpio_0_gpio_io_o),
        .s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_araddr(axi_smc_M00_AXI_ARADDR),
        .s_axi_aresetn(rst_ps8_0_100M_peripheral_aresetn),
        .s_axi_arready(axi_smc_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_smc_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M00_AXI_AWADDR),
        .s_axi_awready(axi_smc_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_smc_M00_AXI_AWVALID),
        .s_axi_bready(axi_smc_M00_AXI_BREADY),
        .s_axi_bresp(axi_smc_M00_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M00_AXI_BVALID),
        .s_axi_rdata(axi_smc_M00_AXI_RDATA),
        .s_axi_rready(axi_smc_M00_AXI_RREADY),
        .s_axi_rresp(axi_smc_M00_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M00_AXI_RVALID),
        .s_axi_wdata(axi_smc_M00_AXI_WDATA),
        .s_axi_wready(axi_smc_M00_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M00_AXI_WVALID));
  BD_axi_gpio_1_0 axi_gpio_1
       (.gpio2_io_i(AXI_data_snoop_0_rdata_out_1),
        .gpio_io_i(AXI_data_snoop_0_rdata_out_0),
        .s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_araddr(axi_smc_M01_AXI_ARADDR),
        .s_axi_aresetn(rst_ps8_0_100M_peripheral_aresetn),
        .s_axi_arready(axi_smc_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_smc_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M01_AXI_AWADDR),
        .s_axi_awready(axi_smc_M01_AXI_AWREADY),
        .s_axi_awvalid(axi_smc_M01_AXI_AWVALID),
        .s_axi_bready(axi_smc_M01_AXI_BREADY),
        .s_axi_bresp(axi_smc_M01_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M01_AXI_BVALID),
        .s_axi_rdata(axi_smc_M01_AXI_RDATA),
        .s_axi_rready(axi_smc_M01_AXI_RREADY),
        .s_axi_rresp(axi_smc_M01_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M01_AXI_RVALID),
        .s_axi_wdata(axi_smc_M01_AXI_WDATA),
        .s_axi_wready(axi_smc_M01_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M01_AXI_WVALID));
  BD_axi_smc_0 axi_smc
       (.M00_AXI_araddr(axi_smc_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_smc_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_smc_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_smc_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_smc_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_M00_AXI_RDATA),
        .M00_AXI_rready(axi_smc_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_M00_AXI_WDATA),
        .M00_AXI_wready(axi_smc_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_M00_AXI_WVALID),
        .M01_AXI_araddr(axi_smc_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_smc_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_smc_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_smc_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_smc_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_smc_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_smc_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_smc_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_smc_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_smc_M01_AXI_RDATA),
        .M01_AXI_rready(axi_smc_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_smc_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_smc_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_smc_M01_AXI_WDATA),
        .M01_AXI_wready(axi_smc_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_smc_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_smc_M01_AXI_WVALID),
        .M02_AXI_araddr(axi_smc_M02_AXI_ARADDR),
        .M02_AXI_arburst(axi_smc_M02_AXI_ARBURST),
        .M02_AXI_arcache(axi_smc_M02_AXI_ARCACHE),
        .M02_AXI_arlen(axi_smc_M02_AXI_ARLEN),
        .M02_AXI_arlock(axi_smc_M02_AXI_ARLOCK),
        .M02_AXI_arprot(axi_smc_M02_AXI_ARPROT),
        .M02_AXI_arready(axi_smc_M02_AXI_ARREADY),
        .M02_AXI_arsize(axi_smc_M02_AXI_ARSIZE),
        .M02_AXI_arvalid(axi_smc_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_smc_M02_AXI_AWADDR),
        .M02_AXI_awburst(axi_smc_M02_AXI_AWBURST),
        .M02_AXI_awcache(axi_smc_M02_AXI_AWCACHE),
        .M02_AXI_awlen(axi_smc_M02_AXI_AWLEN),
        .M02_AXI_awlock(axi_smc_M02_AXI_AWLOCK),
        .M02_AXI_awprot(axi_smc_M02_AXI_AWPROT),
        .M02_AXI_awready(axi_smc_M02_AXI_AWREADY),
        .M02_AXI_awsize(axi_smc_M02_AXI_AWSIZE),
        .M02_AXI_awvalid(axi_smc_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_smc_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_smc_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_smc_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_smc_M02_AXI_RDATA),
        .M02_AXI_rlast(axi_smc_M02_AXI_RLAST),
        .M02_AXI_rready(axi_smc_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_smc_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_smc_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_smc_M02_AXI_WDATA),
        .M02_AXI_wlast(axi_smc_M02_AXI_WLAST),
        .M02_AXI_wready(axi_smc_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_smc_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_smc_M02_AXI_WVALID),
        .S00_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR),
        .S00_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
        .S00_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
        .S00_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
        .S00_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
        .S00_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
        .S00_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
        .S00_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS),
        .S00_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
        .S00_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
        .S00_AXI_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER),
        .S00_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
        .S00_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR),
        .S00_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
        .S00_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
        .S00_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
        .S00_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
        .S00_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
        .S00_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
        .S00_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS),
        .S00_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
        .S00_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
        .S00_AXI_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER),
        .S00_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
        .S00_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
        .S00_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
        .S00_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
        .S00_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
        .S00_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
        .S00_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
        .S00_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
        .S00_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
        .S00_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
        .S00_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
        .S00_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
        .S00_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
        .S00_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
        .S00_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
        .S00_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID),
        .S01_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARADDR),
        .S01_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARBURST),
        .S01_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARCACHE),
        .S01_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARID),
        .S01_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLEN),
        .S01_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLOCK),
        .S01_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARPROT),
        .S01_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARQOS),
        .S01_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARREADY),
        .S01_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARSIZE),
        .S01_AXI_aruser(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARUSER),
        .S01_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARVALID),
        .S01_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWADDR),
        .S01_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWBURST),
        .S01_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWCACHE),
        .S01_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWID),
        .S01_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLEN),
        .S01_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLOCK),
        .S01_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWPROT),
        .S01_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWQOS),
        .S01_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWREADY),
        .S01_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWSIZE),
        .S01_AXI_awuser(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWUSER),
        .S01_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWVALID),
        .S01_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BID),
        .S01_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BREADY),
        .S01_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BRESP),
        .S01_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BVALID),
        .S01_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RDATA),
        .S01_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RID),
        .S01_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RLAST),
        .S01_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RREADY),
        .S01_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RRESP),
        .S01_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RVALID),
        .S01_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WDATA),
        .S01_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WLAST),
        .S01_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WREADY),
        .S01_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WSTRB),
        .S01_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WVALID),
        .aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(rst_ps8_0_100M_peripheral_aresetn));
  BD_blink_0_0 blink_0
       (.blink(heartbeat),
        .clk(ChaosCoreTop_0_clock_tap));
  BD_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_1_BRAM_PORTA_ADDR}),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .clkb(axi_bram_ctrl_1_BRAM_PORTA_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .dinb(axi_bram_ctrl_1_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .doutb(axi_bram_ctrl_1_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .enb(axi_bram_ctrl_1_BRAM_PORTA_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .rstb(axi_bram_ctrl_1_BRAM_PORTA_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .web(axi_bram_ctrl_1_BRAM_PORTA_WE));
  BD_ctrl0_0_0 ctrl0_0
       (.custom_boot(ctrl0_0_custom_boot),
        .reg_in(axi_gpio_0_gpio_io_o),
        .reset_out(rst_led));
  BD_rst_ps8_0_100M_0 rst_ps8_0_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ps8_0_100M_peripheral_aresetn),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk0));
  BD_smartconnect_0_0 smartconnect_0
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .M00_AXI_arlen(smartconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smartconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arqos(smartconnect_0_M00_AXI_ARQOS),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .M00_AXI_awlen(smartconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(smartconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awqos(smartconnect_0_M00_AXI_AWQOS),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_0_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_0_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .M01_AXI_araddr(smartconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arburst(smartconnect_0_M01_AXI_ARBURST),
        .M01_AXI_arcache(smartconnect_0_M01_AXI_ARCACHE),
        .M01_AXI_arlen(smartconnect_0_M01_AXI_ARLEN),
        .M01_AXI_arlock(smartconnect_0_M01_AXI_ARLOCK),
        .M01_AXI_arprot(smartconnect_0_M01_AXI_ARPROT),
        .M01_AXI_arready(smartconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arsize(smartconnect_0_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awburst(smartconnect_0_M01_AXI_AWBURST),
        .M01_AXI_awcache(smartconnect_0_M01_AXI_AWCACHE),
        .M01_AXI_awlen(smartconnect_0_M01_AXI_AWLEN),
        .M01_AXI_awlock(smartconnect_0_M01_AXI_AWLOCK),
        .M01_AXI_awprot(smartconnect_0_M01_AXI_AWPROT),
        .M01_AXI_awready(smartconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awsize(smartconnect_0_M01_AXI_AWSIZE),
        .M01_AXI_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bready(smartconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(smartconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(smartconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(smartconnect_0_M01_AXI_RDATA),
        .M01_AXI_rlast(smartconnect_0_M01_AXI_RLAST),
        .M01_AXI_rready(smartconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(smartconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(smartconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(smartconnect_0_M01_AXI_WDATA),
        .M01_AXI_wlast(smartconnect_0_M01_AXI_WLAST),
        .M01_AXI_wready(smartconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(smartconnect_0_M01_AXI_WVALID),
        .S00_AXI_araddr(ChaosCoreTop_0_M_AXI_MEM_ARADDR),
        .S00_AXI_arburst(ChaosCoreTop_0_M_AXI_MEM_ARBURST),
        .S00_AXI_arcache(ChaosCoreTop_0_M_AXI_MEM_ARCACHE),
        .S00_AXI_arid(ChaosCoreTop_0_M_AXI_MEM_ARID),
        .S00_AXI_arlen(ChaosCoreTop_0_M_AXI_MEM_ARLEN),
        .S00_AXI_arlock(ChaosCoreTop_0_M_AXI_MEM_ARLOCK),
        .S00_AXI_arprot(ChaosCoreTop_0_M_AXI_MEM_ARPROT),
        .S00_AXI_arqos(ChaosCoreTop_0_M_AXI_MEM_ARQOS),
        .S00_AXI_arready(ChaosCoreTop_0_M_AXI_MEM_ARREADY),
        .S00_AXI_arsize(ChaosCoreTop_0_M_AXI_MEM_ARSIZE),
        .S00_AXI_arvalid(ChaosCoreTop_0_M_AXI_MEM_ARVALID),
        .S00_AXI_awaddr(ChaosCoreTop_0_M_AXI_MEM_AWADDR),
        .S00_AXI_awburst(ChaosCoreTop_0_M_AXI_MEM_AWBURST),
        .S00_AXI_awcache(ChaosCoreTop_0_M_AXI_MEM_AWCACHE),
        .S00_AXI_awid(ChaosCoreTop_0_M_AXI_MEM_AWID),
        .S00_AXI_awlen(ChaosCoreTop_0_M_AXI_MEM_AWLEN),
        .S00_AXI_awlock(ChaosCoreTop_0_M_AXI_MEM_AWLOCK),
        .S00_AXI_awprot(ChaosCoreTop_0_M_AXI_MEM_AWPROT),
        .S00_AXI_awqos(ChaosCoreTop_0_M_AXI_MEM_AWQOS),
        .S00_AXI_awready(ChaosCoreTop_0_M_AXI_MEM_AWREADY),
        .S00_AXI_awsize(ChaosCoreTop_0_M_AXI_MEM_AWSIZE),
        .S00_AXI_awvalid(ChaosCoreTop_0_M_AXI_MEM_AWVALID),
        .S00_AXI_bid(ChaosCoreTop_0_M_AXI_MEM_BID),
        .S00_AXI_bready(ChaosCoreTop_0_M_AXI_MEM_BREADY),
        .S00_AXI_bresp(ChaosCoreTop_0_M_AXI_MEM_BRESP),
        .S00_AXI_bvalid(ChaosCoreTop_0_M_AXI_MEM_BVALID),
        .S00_AXI_rdata(ChaosCoreTop_0_M_AXI_MEM_RDATA),
        .S00_AXI_rid(ChaosCoreTop_0_M_AXI_MEM_RID),
        .S00_AXI_rlast(ChaosCoreTop_0_M_AXI_MEM_RLAST),
        .S00_AXI_rready(ChaosCoreTop_0_M_AXI_MEM_RREADY),
        .S00_AXI_rresp(ChaosCoreTop_0_M_AXI_MEM_RRESP),
        .S00_AXI_rvalid(ChaosCoreTop_0_M_AXI_MEM_RVALID),
        .S00_AXI_wdata(ChaosCoreTop_0_M_AXI_MEM_WDATA),
        .S00_AXI_wlast(ChaosCoreTop_0_M_AXI_MEM_WLAST),
        .S00_AXI_wready(ChaosCoreTop_0_M_AXI_MEM_WREADY),
        .S00_AXI_wstrb(ChaosCoreTop_0_M_AXI_MEM_WSTRB),
        .S00_AXI_wvalid(ChaosCoreTop_0_M_AXI_MEM_WVALID),
        .S01_AXI_araddr(ChaosCoreTop_0_M_AXI_MMIO_ARADDR),
        .S01_AXI_arburst(ChaosCoreTop_0_M_AXI_MMIO_ARBURST),
        .S01_AXI_arcache(ChaosCoreTop_0_M_AXI_MMIO_ARCACHE),
        .S01_AXI_arid(ChaosCoreTop_0_M_AXI_MMIO_ARID),
        .S01_AXI_arlen(ChaosCoreTop_0_M_AXI_MMIO_ARLEN),
        .S01_AXI_arlock(ChaosCoreTop_0_M_AXI_MMIO_ARLOCK),
        .S01_AXI_arprot(ChaosCoreTop_0_M_AXI_MMIO_ARPROT),
        .S01_AXI_arqos(ChaosCoreTop_0_M_AXI_MMIO_ARQOS),
        .S01_AXI_arready(ChaosCoreTop_0_M_AXI_MMIO_ARREADY),
        .S01_AXI_arsize(ChaosCoreTop_0_M_AXI_MMIO_ARSIZE),
        .S01_AXI_arvalid(ChaosCoreTop_0_M_AXI_MMIO_ARVALID),
        .S01_AXI_awaddr(ChaosCoreTop_0_M_AXI_MMIO_AWADDR),
        .S01_AXI_awburst(ChaosCoreTop_0_M_AXI_MMIO_AWBURST),
        .S01_AXI_awcache(ChaosCoreTop_0_M_AXI_MMIO_AWCACHE),
        .S01_AXI_awid(ChaosCoreTop_0_M_AXI_MMIO_AWID),
        .S01_AXI_awlen(ChaosCoreTop_0_M_AXI_MMIO_AWLEN),
        .S01_AXI_awlock(ChaosCoreTop_0_M_AXI_MMIO_AWLOCK),
        .S01_AXI_awprot(ChaosCoreTop_0_M_AXI_MMIO_AWPROT),
        .S01_AXI_awqos(ChaosCoreTop_0_M_AXI_MMIO_AWQOS),
        .S01_AXI_awready(ChaosCoreTop_0_M_AXI_MMIO_AWREADY),
        .S01_AXI_awsize(ChaosCoreTop_0_M_AXI_MMIO_AWSIZE),
        .S01_AXI_awvalid(ChaosCoreTop_0_M_AXI_MMIO_AWVALID),
        .S01_AXI_bid(ChaosCoreTop_0_M_AXI_MMIO_BID),
        .S01_AXI_bready(ChaosCoreTop_0_M_AXI_MMIO_BREADY),
        .S01_AXI_bresp(ChaosCoreTop_0_M_AXI_MMIO_BRESP),
        .S01_AXI_bvalid(ChaosCoreTop_0_M_AXI_MMIO_BVALID),
        .S01_AXI_rdata(ChaosCoreTop_0_M_AXI_MMIO_RDATA),
        .S01_AXI_rid(ChaosCoreTop_0_M_AXI_MMIO_RID),
        .S01_AXI_rlast(ChaosCoreTop_0_M_AXI_MMIO_RLAST),
        .S01_AXI_rready(ChaosCoreTop_0_M_AXI_MMIO_RREADY),
        .S01_AXI_rresp(ChaosCoreTop_0_M_AXI_MMIO_RRESP),
        .S01_AXI_rvalid(ChaosCoreTop_0_M_AXI_MMIO_RVALID),
        .S01_AXI_wdata(ChaosCoreTop_0_M_AXI_MMIO_WDATA),
        .S01_AXI_wlast(ChaosCoreTop_0_M_AXI_MMIO_WLAST),
        .S01_AXI_wready(ChaosCoreTop_0_M_AXI_MMIO_WREADY),
        .S01_AXI_wstrb(ChaosCoreTop_0_M_AXI_MMIO_WSTRB),
        .S01_AXI_wvalid(ChaosCoreTop_0_M_AXI_MMIO_WVALID),
        .aclk(ChaosCoreTop_0_M_AXI_MEM_ACLK),
        .aclk1(ChaosCoreTop_0_M_AXI_MMIO_ACLK),
        .aresetn(rst_ps8_0_100M_peripheral_aresetn));
  BD_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
       (.emio_uart0_rxd(uart0_rx),
        .emio_uart0_txd(uart0_tx),
        .maxigp0_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR),
        .maxigp0_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
        .maxigp0_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
        .maxigp0_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
        .maxigp0_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
        .maxigp0_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
        .maxigp0_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
        .maxigp0_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS),
        .maxigp0_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
        .maxigp0_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
        .maxigp0_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER),
        .maxigp0_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
        .maxigp0_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR),
        .maxigp0_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
        .maxigp0_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
        .maxigp0_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
        .maxigp0_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
        .maxigp0_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
        .maxigp0_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
        .maxigp0_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS),
        .maxigp0_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
        .maxigp0_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
        .maxigp0_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER),
        .maxigp0_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
        .maxigp0_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
        .maxigp0_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
        .maxigp0_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
        .maxigp0_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
        .maxigp0_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
        .maxigp0_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
        .maxigp0_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
        .maxigp0_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
        .maxigp0_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
        .maxigp0_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
        .maxigp0_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
        .maxigp0_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
        .maxigp0_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
        .maxigp0_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
        .maxigp0_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID),
        .maxigp1_araddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARADDR),
        .maxigp1_arburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARBURST),
        .maxigp1_arcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARCACHE),
        .maxigp1_arid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARID),
        .maxigp1_arlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLEN),
        .maxigp1_arlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLOCK),
        .maxigp1_arprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARPROT),
        .maxigp1_arqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARQOS),
        .maxigp1_arready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARREADY),
        .maxigp1_arsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARSIZE),
        .maxigp1_aruser(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARUSER),
        .maxigp1_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARVALID),
        .maxigp1_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWADDR),
        .maxigp1_awburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWBURST),
        .maxigp1_awcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWCACHE),
        .maxigp1_awid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWID),
        .maxigp1_awlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLEN),
        .maxigp1_awlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLOCK),
        .maxigp1_awprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWPROT),
        .maxigp1_awqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWQOS),
        .maxigp1_awready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWREADY),
        .maxigp1_awsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWSIZE),
        .maxigp1_awuser(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWUSER),
        .maxigp1_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWVALID),
        .maxigp1_bid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BID),
        .maxigp1_bready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BREADY),
        .maxigp1_bresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BRESP),
        .maxigp1_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BVALID),
        .maxigp1_rdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RDATA),
        .maxigp1_rid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RID),
        .maxigp1_rlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RLAST),
        .maxigp1_rready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RREADY),
        .maxigp1_rresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RRESP),
        .maxigp1_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RVALID),
        .maxigp1_wdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WDATA),
        .maxigp1_wlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WLAST),
        .maxigp1_wready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WREADY),
        .maxigp1_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WSTRB),
        .maxigp1_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WVALID),
        .maxihpm0_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .maxihpm1_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .pl_clk0(zynq_ultra_ps_e_0_pl_clk0),
        .pl_ps_irq0(1'b0),
        .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn0),
        .saxigp3_araddr(smartconnect_0_M00_AXI_ARADDR),
        .saxigp3_arburst(smartconnect_0_M00_AXI_ARBURST),
        .saxigp3_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .saxigp3_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp3_arlen(smartconnect_0_M00_AXI_ARLEN),
        .saxigp3_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .saxigp3_arprot(smartconnect_0_M00_AXI_ARPROT),
        .saxigp3_arqos(smartconnect_0_M00_AXI_ARQOS),
        .saxigp3_arready(smartconnect_0_M00_AXI_ARREADY),
        .saxigp3_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .saxigp3_aruser(1'b0),
        .saxigp3_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .saxigp3_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .saxigp3_awburst(smartconnect_0_M00_AXI_AWBURST),
        .saxigp3_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .saxigp3_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp3_awlen(smartconnect_0_M00_AXI_AWLEN),
        .saxigp3_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .saxigp3_awprot(smartconnect_0_M00_AXI_AWPROT),
        .saxigp3_awqos(smartconnect_0_M00_AXI_AWQOS),
        .saxigp3_awready(smartconnect_0_M00_AXI_AWREADY),
        .saxigp3_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .saxigp3_awuser(1'b0),
        .saxigp3_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .saxigp3_bready(smartconnect_0_M00_AXI_BREADY),
        .saxigp3_bresp(smartconnect_0_M00_AXI_BRESP),
        .saxigp3_bvalid(smartconnect_0_M00_AXI_BVALID),
        .saxigp3_rdata(smartconnect_0_M00_AXI_RDATA),
        .saxigp3_rlast(smartconnect_0_M00_AXI_RLAST),
        .saxigp3_rready(smartconnect_0_M00_AXI_RREADY),
        .saxigp3_rresp(smartconnect_0_M00_AXI_RRESP),
        .saxigp3_rvalid(smartconnect_0_M00_AXI_RVALID),
        .saxigp3_wdata(smartconnect_0_M00_AXI_WDATA),
        .saxigp3_wlast(smartconnect_0_M00_AXI_WLAST),
        .saxigp3_wready(smartconnect_0_M00_AXI_WREADY),
        .saxigp3_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .saxigp3_wvalid(smartconnect_0_M00_AXI_WVALID),
        .saxihp1_fpd_aclk(ChaosCoreTop_0_M_AXI_MEM_ACLK));
endmodule
