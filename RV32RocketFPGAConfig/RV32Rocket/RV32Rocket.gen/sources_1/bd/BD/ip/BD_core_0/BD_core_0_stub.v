// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sat Feb  8 00:04:21 2025
// Host        : hakam-MS-7D46 running 64-bit Ubuntu 24.04.1 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/hakam/Repos/ChaosCore-FPGA/RV32RocketFPGAConfig/RV32Rocket/RV32Rocket.gen/sources_1/bd/BD/ip/BD_core_0/BD_core_0_stub.v
// Design      : BD_core_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "BD_core_0,RV32RocketCoreTop,{}" *) (* CORE_GENERATION_INFO = "BD_core_0,RV32RocketCoreTop,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=RV32RocketCoreTop,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "RV32RocketCoreTop,Vivado 2024.2" *) 
module BD_core_0(M_AXI_MMIO_ACLK, M_AXI_MMIO_AWREADY, 
  M_AXI_MMIO_AWVALID, M_AXI_MMIO_AWID, M_AXI_MMIO_AWADDR, M_AXI_MMIO_AWLEN, 
  M_AXI_MMIO_AWSIZE, M_AXI_MMIO_AWBURST, M_AXI_MMIO_AWLOCK, M_AXI_MMIO_AWCACHE, 
  M_AXI_MMIO_AWPROT, M_AXI_MMIO_AWQOS, M_AXI_MMIO_WREADY, M_AXI_MMIO_WVALID, 
  M_AXI_MMIO_WDATA, M_AXI_MMIO_WSTRB, M_AXI_MMIO_WLAST, M_AXI_MMIO_BREADY, 
  M_AXI_MMIO_BVALID, M_AXI_MMIO_BID, M_AXI_MMIO_BRESP, M_AXI_MMIO_ARREADY, 
  M_AXI_MMIO_ARVALID, M_AXI_MMIO_ARID, M_AXI_MMIO_ARADDR, M_AXI_MMIO_ARLEN, 
  M_AXI_MMIO_ARSIZE, M_AXI_MMIO_ARBURST, M_AXI_MMIO_ARLOCK, M_AXI_MMIO_ARCACHE, 
  M_AXI_MMIO_ARPROT, M_AXI_MMIO_ARQOS, M_AXI_MMIO_RREADY, M_AXI_MMIO_RVALID, 
  M_AXI_MMIO_RID, M_AXI_MMIO_RDATA, M_AXI_MMIO_RRESP, M_AXI_MMIO_RLAST, M_AXI_MEM_ACLK, 
  M_AXI_MEM_AWREADY, M_AXI_MEM_AWVALID, M_AXI_MEM_AWID, M_AXI_MEM_AWADDR, M_AXI_MEM_AWLEN, 
  M_AXI_MEM_AWSIZE, M_AXI_MEM_AWBURST, M_AXI_MEM_AWLOCK, M_AXI_MEM_AWCACHE, 
  M_AXI_MEM_AWPROT, M_AXI_MEM_AWQOS, M_AXI_MEM_WREADY, M_AXI_MEM_WVALID, M_AXI_MEM_WDATA, 
  M_AXI_MEM_WSTRB, M_AXI_MEM_WLAST, M_AXI_MEM_BREADY, M_AXI_MEM_BVALID, M_AXI_MEM_BID, 
  M_AXI_MEM_BRESP, M_AXI_MEM_ARREADY, M_AXI_MEM_ARVALID, M_AXI_MEM_ARID, M_AXI_MEM_ARADDR, 
  M_AXI_MEM_ARLEN, M_AXI_MEM_ARSIZE, M_AXI_MEM_ARBURST, M_AXI_MEM_ARLOCK, 
  M_AXI_MEM_ARCACHE, M_AXI_MEM_ARPROT, M_AXI_MEM_ARQOS, M_AXI_MEM_RREADY, M_AXI_MEM_RVALID, 
  M_AXI_MEM_RID, M_AXI_MEM_RDATA, M_AXI_MEM_RRESP, M_AXI_MEM_RLAST, custom_boot, reset_io, 
  clock_uncore, clock_tap)
/* synthesis syn_black_box black_box_pad_pin="M_AXI_MMIO_AWREADY,M_AXI_MMIO_AWVALID,M_AXI_MMIO_AWID[3:0],M_AXI_MMIO_AWADDR[31:0],M_AXI_MMIO_AWLEN[7:0],M_AXI_MMIO_AWSIZE[2:0],M_AXI_MMIO_AWBURST[1:0],M_AXI_MMIO_AWLOCK,M_AXI_MMIO_AWCACHE[3:0],M_AXI_MMIO_AWPROT[2:0],M_AXI_MMIO_AWQOS[3:0],M_AXI_MMIO_WREADY,M_AXI_MMIO_WVALID,M_AXI_MMIO_WDATA[63:0],M_AXI_MMIO_WSTRB[7:0],M_AXI_MMIO_WLAST,M_AXI_MMIO_BREADY,M_AXI_MMIO_BVALID,M_AXI_MMIO_BID[3:0],M_AXI_MMIO_BRESP[1:0],M_AXI_MMIO_ARREADY,M_AXI_MMIO_ARVALID,M_AXI_MMIO_ARID[3:0],M_AXI_MMIO_ARADDR[31:0],M_AXI_MMIO_ARLEN[7:0],M_AXI_MMIO_ARSIZE[2:0],M_AXI_MMIO_ARBURST[1:0],M_AXI_MMIO_ARLOCK,M_AXI_MMIO_ARCACHE[3:0],M_AXI_MMIO_ARPROT[2:0],M_AXI_MMIO_ARQOS[3:0],M_AXI_MMIO_RREADY,M_AXI_MMIO_RVALID,M_AXI_MMIO_RID[3:0],M_AXI_MMIO_RDATA[63:0],M_AXI_MMIO_RRESP[1:0],M_AXI_MMIO_RLAST,M_AXI_MEM_AWREADY,M_AXI_MEM_AWVALID,M_AXI_MEM_AWID[3:0],M_AXI_MEM_AWADDR[31:0],M_AXI_MEM_AWLEN[7:0],M_AXI_MEM_AWSIZE[2:0],M_AXI_MEM_AWBURST[1:0],M_AXI_MEM_AWLOCK,M_AXI_MEM_AWCACHE[3:0],M_AXI_MEM_AWPROT[2:0],M_AXI_MEM_AWQOS[3:0],M_AXI_MEM_WREADY,M_AXI_MEM_WVALID,M_AXI_MEM_WDATA[63:0],M_AXI_MEM_WSTRB[7:0],M_AXI_MEM_WLAST,M_AXI_MEM_BREADY,M_AXI_MEM_BVALID,M_AXI_MEM_BID[3:0],M_AXI_MEM_BRESP[1:0],M_AXI_MEM_ARREADY,M_AXI_MEM_ARVALID,M_AXI_MEM_ARID[3:0],M_AXI_MEM_ARADDR[31:0],M_AXI_MEM_ARLEN[7:0],M_AXI_MEM_ARSIZE[2:0],M_AXI_MEM_ARBURST[1:0],M_AXI_MEM_ARLOCK,M_AXI_MEM_ARCACHE[3:0],M_AXI_MEM_ARPROT[2:0],M_AXI_MEM_ARQOS[3:0],M_AXI_MEM_RREADY,M_AXI_MEM_RVALID,M_AXI_MEM_RID[3:0],M_AXI_MEM_RDATA[63:0],M_AXI_MEM_RRESP[1:0],M_AXI_MEM_RLAST,custom_boot,reset_io" */
/* synthesis syn_force_seq_prim="M_AXI_MMIO_ACLK" */
/* synthesis syn_force_seq_prim="M_AXI_MEM_ACLK" */
/* synthesis syn_force_seq_prim="clock_uncore" */
/* synthesis syn_force_seq_prim="clock_tap" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_AXI_MMIO_ACLK CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_MMIO_ACLK, ASSOCIATED_BUSIF M_AXI_MMIO, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN BD_core_0_M_AXI_MMIO_ACLK, INSERT_VIP 0" *) output M_AXI_MMIO_ACLK /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO AWREADY" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_MMIO, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 4, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN BD_core_0_M_AXI_MMIO_ACLK, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input M_AXI_MMIO_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO AWVALID" *) output M_AXI_MMIO_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO AWID" *) output [3:0]M_AXI_MMIO_AWID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO AWADDR" *) output [31:0]M_AXI_MMIO_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO AWLEN" *) output [7:0]M_AXI_MMIO_AWLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO AWSIZE" *) output [2:0]M_AXI_MMIO_AWSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO AWBURST" *) output [1:0]M_AXI_MMIO_AWBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO AWLOCK" *) output M_AXI_MMIO_AWLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO AWCACHE" *) output [3:0]M_AXI_MMIO_AWCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO AWPROT" *) output [2:0]M_AXI_MMIO_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO AWQOS" *) output [3:0]M_AXI_MMIO_AWQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO WREADY" *) input M_AXI_MMIO_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO WVALID" *) output M_AXI_MMIO_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO WDATA" *) output [63:0]M_AXI_MMIO_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO WSTRB" *) output [7:0]M_AXI_MMIO_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO WLAST" *) output M_AXI_MMIO_WLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO BREADY" *) output M_AXI_MMIO_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO BVALID" *) input M_AXI_MMIO_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO BID" *) input [3:0]M_AXI_MMIO_BID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO BRESP" *) input [1:0]M_AXI_MMIO_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO ARREADY" *) input M_AXI_MMIO_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO ARVALID" *) output M_AXI_MMIO_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO ARID" *) output [3:0]M_AXI_MMIO_ARID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO ARADDR" *) output [31:0]M_AXI_MMIO_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO ARLEN" *) output [7:0]M_AXI_MMIO_ARLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO ARSIZE" *) output [2:0]M_AXI_MMIO_ARSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO ARBURST" *) output [1:0]M_AXI_MMIO_ARBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO ARLOCK" *) output M_AXI_MMIO_ARLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO ARCACHE" *) output [3:0]M_AXI_MMIO_ARCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO ARPROT" *) output [2:0]M_AXI_MMIO_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO ARQOS" *) output [3:0]M_AXI_MMIO_ARQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO RREADY" *) output M_AXI_MMIO_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO RVALID" *) input M_AXI_MMIO_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO RID" *) input [3:0]M_AXI_MMIO_RID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO RDATA" *) input [63:0]M_AXI_MMIO_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO RRESP" *) input [1:0]M_AXI_MMIO_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO RLAST" *) input M_AXI_MMIO_RLAST;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_AXI_MEM_ACLK CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_MEM_ACLK, ASSOCIATED_BUSIF M_AXI_MEM, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN BD_core_0_M_AXI_MEM_ACLK, INSERT_VIP 0" *) output M_AXI_MEM_ACLK /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWREADY" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_MEM, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 4, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN BD_core_0_M_AXI_MEM_ACLK, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input M_AXI_MEM_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWVALID" *) output M_AXI_MEM_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWID" *) output [3:0]M_AXI_MEM_AWID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWADDR" *) output [31:0]M_AXI_MEM_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWLEN" *) output [7:0]M_AXI_MEM_AWLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWSIZE" *) output [2:0]M_AXI_MEM_AWSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWBURST" *) output [1:0]M_AXI_MEM_AWBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWLOCK" *) output M_AXI_MEM_AWLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWCACHE" *) output [3:0]M_AXI_MEM_AWCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWPROT" *) output [2:0]M_AXI_MEM_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWQOS" *) output [3:0]M_AXI_MEM_AWQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM WREADY" *) input M_AXI_MEM_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM WVALID" *) output M_AXI_MEM_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM WDATA" *) output [63:0]M_AXI_MEM_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM WSTRB" *) output [7:0]M_AXI_MEM_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM WLAST" *) output M_AXI_MEM_WLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM BREADY" *) output M_AXI_MEM_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM BVALID" *) input M_AXI_MEM_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM BID" *) input [3:0]M_AXI_MEM_BID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM BRESP" *) input [1:0]M_AXI_MEM_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARREADY" *) input M_AXI_MEM_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARVALID" *) output M_AXI_MEM_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARID" *) output [3:0]M_AXI_MEM_ARID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARADDR" *) output [31:0]M_AXI_MEM_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARLEN" *) output [7:0]M_AXI_MEM_ARLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARSIZE" *) output [2:0]M_AXI_MEM_ARSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARBURST" *) output [1:0]M_AXI_MEM_ARBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARLOCK" *) output M_AXI_MEM_ARLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARCACHE" *) output [3:0]M_AXI_MEM_ARCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARPROT" *) output [2:0]M_AXI_MEM_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARQOS" *) output [3:0]M_AXI_MEM_ARQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM RREADY" *) output M_AXI_MEM_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM RVALID" *) input M_AXI_MEM_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM RID" *) input [3:0]M_AXI_MEM_RID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM RDATA" *) input [63:0]M_AXI_MEM_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM RRESP" *) input [1:0]M_AXI_MEM_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM RLAST" *) input M_AXI_MEM_RLAST;
  input custom_boot;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_io RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_io, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_io;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock_uncore CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock_uncore, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN BD_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input clock_uncore /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock_tap CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock_tap, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN BD_core_0_clock_tap, INSERT_VIP 0" *) output clock_tap /* synthesis syn_isclock = 1 */;
endmodule
