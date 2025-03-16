//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Sat Mar 15 20:45:39 2025
//Host        : Desktop-Home running 64-bit Linux Mint 22
//Command     : generate_target BD.bd
//Design      : BD
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "BD,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=BD,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=10,numReposBlks=10,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=24,da_board_cnt=1,da_clkrst_cnt=7,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "BD.hwdef" *) 
module BD
   (heartbeat,
    rst_led);
  output heartbeat;
  output rst_led;

  wire [31:0]AXI_data_snoop_0_rdata_out_0;
  wire [31:0]AXI_data_snoop_0_rdata_out_1;
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
  wire [3:0]core_M_AXI_MEM_BID;
  wire core_M_AXI_MEM_BREADY;
  wire [1:0]core_M_AXI_MEM_BRESP;
  wire core_M_AXI_MEM_BVALID;
  wire [3:0]core_M_AXI_MEM_RID;
  wire core_M_AXI_MEM_RLAST;
  wire core_M_AXI_MEM_RREADY;
  wire [1:0]core_M_AXI_MEM_RRESP;
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
  wire [3:0]core_M_AXI_MMIO_BID;
  wire core_M_AXI_MMIO_BREADY;
  wire [1:0]core_M_AXI_MMIO_BRESP;
  wire core_M_AXI_MMIO_BVALID;
  wire [63:0]core_M_AXI_MMIO_RDATA;
  wire [3:0]core_M_AXI_MMIO_RID;
  wire core_M_AXI_MMIO_RLAST;
  wire core_M_AXI_MMIO_RREADY;
  wire [1:0]core_M_AXI_MMIO_RRESP;
  wire core_M_AXI_MMIO_RVALID;
  wire [63:0]core_M_AXI_MMIO_WDATA;
  wire core_M_AXI_MMIO_WLAST;
  wire core_M_AXI_MMIO_WREADY;
  wire [7:0]core_M_AXI_MMIO_WSTRB;
  wire core_M_AXI_MMIO_WVALID;
  wire core_clock_tap;
  wire [31:0]core_pc;
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
  wire [63:0]smartconnect_0_S00_AXI_rdata;
  wire smartconnect_0_S00_AXI_rvalid;
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
        .rdata(smartconnect_0_S00_AXI_rdata),
        .rdata_out_0(AXI_data_snoop_0_rdata_out_0),
        .rdata_out_1(AXI_data_snoop_0_rdata_out_1),
        .rsp_valid(smartconnect_0_S00_AXI_rvalid),
        .rst(rst_led));
  BD_axi_gpio_0_0 axi_gpio_0
       (.gpio2_io_i(core_pc),
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
  BD_axi_smc_1 axi_smc
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
        .clk(core_clock_tap));
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
        .M_AXI_MEM_BID(core_M_AXI_MEM_BID),
        .M_AXI_MEM_BREADY(core_M_AXI_MEM_BREADY),
        .M_AXI_MEM_BRESP(core_M_AXI_MEM_BRESP),
        .M_AXI_MEM_BVALID(core_M_AXI_MEM_BVALID),
        .M_AXI_MEM_RDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_MEM_RID(core_M_AXI_MEM_RID),
        .M_AXI_MEM_RLAST(core_M_AXI_MEM_RLAST),
        .M_AXI_MEM_RREADY(core_M_AXI_MEM_RREADY),
        .M_AXI_MEM_RRESP(core_M_AXI_MEM_RRESP),
        .M_AXI_MEM_RVALID(1'b0),
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
        .M_AXI_MMIO_BID(core_M_AXI_MMIO_BID),
        .M_AXI_MMIO_BREADY(core_M_AXI_MMIO_BREADY),
        .M_AXI_MMIO_BRESP(core_M_AXI_MMIO_BRESP),
        .M_AXI_MMIO_BVALID(core_M_AXI_MMIO_BVALID),
        .M_AXI_MMIO_RDATA(core_M_AXI_MMIO_RDATA),
        .M_AXI_MMIO_RID(core_M_AXI_MMIO_RID),
        .M_AXI_MMIO_RLAST(core_M_AXI_MMIO_RLAST),
        .M_AXI_MMIO_RREADY(core_M_AXI_MMIO_RREADY),
        .M_AXI_MMIO_RRESP(core_M_AXI_MMIO_RRESP),
        .M_AXI_MMIO_RVALID(core_M_AXI_MMIO_RVALID),
        .M_AXI_MMIO_WDATA(core_M_AXI_MMIO_WDATA),
        .M_AXI_MMIO_WLAST(core_M_AXI_MMIO_WLAST),
        .M_AXI_MMIO_WREADY(core_M_AXI_MMIO_WREADY),
        .M_AXI_MMIO_WSTRB(core_M_AXI_MMIO_WSTRB),
        .M_AXI_MMIO_WVALID(core_M_AXI_MMIO_WVALID),
        .clock_tap(core_clock_tap),
        .clock_uncore(zynq_ultra_ps_e_0_pl_clk0),
        .custom_boot(ctrl0_0_custom_boot),
        .pc(core_pc),
        .reset_io(rst_led));
  BD_ctrl0_0_0 ctrl0_0
       (.custom_boot(ctrl0_0_custom_boot),
        .reg_in(axi_gpio_0_gpio_io_o),
        .reset_out(rst_led));
  BD_rst_ps8_0_100M_1 rst_ps8_0_100M
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
        .S00_AXI_araddr(core_M_AXI_MEM_ARADDR),
        .S00_AXI_arburst(core_M_AXI_MEM_ARBURST),
        .S00_AXI_arcache(core_M_AXI_MEM_ARCACHE),
        .S00_AXI_arid(core_M_AXI_MEM_ARID),
        .S00_AXI_arlen(core_M_AXI_MEM_ARLEN),
        .S00_AXI_arlock(core_M_AXI_MEM_ARLOCK),
        .S00_AXI_arprot(core_M_AXI_MEM_ARPROT),
        .S00_AXI_arqos(core_M_AXI_MEM_ARQOS),
        .S00_AXI_arready(core_M_AXI_MEM_ARREADY),
        .S00_AXI_arsize(core_M_AXI_MEM_ARSIZE),
        .S00_AXI_arvalid(core_M_AXI_MEM_ARVALID),
        .S00_AXI_awaddr(core_M_AXI_MEM_AWADDR),
        .S00_AXI_awburst(core_M_AXI_MEM_AWBURST),
        .S00_AXI_awcache(core_M_AXI_MEM_AWCACHE),
        .S00_AXI_awid(core_M_AXI_MEM_AWID),
        .S00_AXI_awlen(core_M_AXI_MEM_AWLEN),
        .S00_AXI_awlock(core_M_AXI_MEM_AWLOCK),
        .S00_AXI_awprot(core_M_AXI_MEM_AWPROT),
        .S00_AXI_awqos(core_M_AXI_MEM_AWQOS),
        .S00_AXI_awready(core_M_AXI_MEM_AWREADY),
        .S00_AXI_awsize(core_M_AXI_MEM_AWSIZE),
        .S00_AXI_awvalid(core_M_AXI_MEM_AWVALID),
        .S00_AXI_bid(core_M_AXI_MEM_BID),
        .S00_AXI_bready(core_M_AXI_MEM_BREADY),
        .S00_AXI_bresp(core_M_AXI_MEM_BRESP),
        .S00_AXI_bvalid(core_M_AXI_MEM_BVALID),
        .S00_AXI_rdata(smartconnect_0_S00_AXI_rdata),
        .S00_AXI_rid(core_M_AXI_MEM_RID),
        .S00_AXI_rlast(core_M_AXI_MEM_RLAST),
        .S00_AXI_rready(core_M_AXI_MEM_RREADY),
        .S00_AXI_rresp(core_M_AXI_MEM_RRESP),
        .S00_AXI_rvalid(smartconnect_0_S00_AXI_rvalid),
        .S00_AXI_wdata(core_M_AXI_MEM_WDATA),
        .S00_AXI_wlast(core_M_AXI_MEM_WLAST),
        .S00_AXI_wready(core_M_AXI_MEM_WREADY),
        .S00_AXI_wstrb(core_M_AXI_MEM_WSTRB),
        .S00_AXI_wvalid(core_M_AXI_MEM_WVALID),
        .S01_AXI_araddr(core_M_AXI_MMIO_ARADDR),
        .S01_AXI_arburst(core_M_AXI_MMIO_ARBURST),
        .S01_AXI_arcache(core_M_AXI_MMIO_ARCACHE),
        .S01_AXI_arid(core_M_AXI_MMIO_ARID),
        .S01_AXI_arlen(core_M_AXI_MMIO_ARLEN),
        .S01_AXI_arlock(core_M_AXI_MMIO_ARLOCK),
        .S01_AXI_arprot(core_M_AXI_MMIO_ARPROT),
        .S01_AXI_arqos(core_M_AXI_MMIO_ARQOS),
        .S01_AXI_arready(core_M_AXI_MMIO_ARREADY),
        .S01_AXI_arsize(core_M_AXI_MMIO_ARSIZE),
        .S01_AXI_arvalid(core_M_AXI_MMIO_ARVALID),
        .S01_AXI_awaddr(core_M_AXI_MMIO_AWADDR),
        .S01_AXI_awburst(core_M_AXI_MMIO_AWBURST),
        .S01_AXI_awcache(core_M_AXI_MMIO_AWCACHE),
        .S01_AXI_awid(core_M_AXI_MMIO_AWID),
        .S01_AXI_awlen(core_M_AXI_MMIO_AWLEN),
        .S01_AXI_awlock(core_M_AXI_MMIO_AWLOCK),
        .S01_AXI_awprot(core_M_AXI_MMIO_AWPROT),
        .S01_AXI_awqos(core_M_AXI_MMIO_AWQOS),
        .S01_AXI_awready(core_M_AXI_MMIO_AWREADY),
        .S01_AXI_awsize(core_M_AXI_MMIO_AWSIZE),
        .S01_AXI_awvalid(core_M_AXI_MMIO_AWVALID),
        .S01_AXI_bid(core_M_AXI_MMIO_BID),
        .S01_AXI_bready(core_M_AXI_MMIO_BREADY),
        .S01_AXI_bresp(core_M_AXI_MMIO_BRESP),
        .S01_AXI_bvalid(core_M_AXI_MMIO_BVALID),
        .S01_AXI_rdata(core_M_AXI_MMIO_RDATA),
        .S01_AXI_rid(core_M_AXI_MMIO_RID),
        .S01_AXI_rlast(core_M_AXI_MMIO_RLAST),
        .S01_AXI_rready(core_M_AXI_MMIO_RREADY),
        .S01_AXI_rresp(core_M_AXI_MMIO_RRESP),
        .S01_AXI_rvalid(core_M_AXI_MMIO_RVALID),
        .S01_AXI_wdata(core_M_AXI_MMIO_WDATA),
        .S01_AXI_wlast(core_M_AXI_MMIO_WLAST),
        .S01_AXI_wready(core_M_AXI_MMIO_WREADY),
        .S01_AXI_wstrb(core_M_AXI_MMIO_WSTRB),
        .S01_AXI_wvalid(core_M_AXI_MMIO_WVALID),
        .aclk(core_M_AXI_MEM_ACLK),
        .aclk1(core_M_AXI_MMIO_ACLK),
        .aresetn(rst_ps8_0_100M_peripheral_aresetn));
  BD_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
       (.maxigp0_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR),
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
        .saxihp1_fpd_aclk(core_M_AXI_MEM_ACLK));
endmodule
