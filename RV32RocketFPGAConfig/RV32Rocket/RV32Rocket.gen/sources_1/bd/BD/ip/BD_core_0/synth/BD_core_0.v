// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:RV32RocketCoreTop:1.0
// IP Revision: 1

(* X_CORE_INFO = "RV32RocketCoreTop,Vivado 2024.2" *)
(* CHECK_LICENSE_TYPE = "BD_core_0,RV32RocketCoreTop,{}" *)
(* CORE_GENERATION_INFO = "BD_core_0,RV32RocketCoreTop,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=RV32RocketCoreTop,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module BD_core_0 (
  M_AXI_MMIO_ACLK,
  M_AXI_MMIO_AWREADY,
  M_AXI_MMIO_AWVALID,
  M_AXI_MMIO_AWID,
  M_AXI_MMIO_AWADDR,
  M_AXI_MMIO_AWLEN,
  M_AXI_MMIO_AWSIZE,
  M_AXI_MMIO_AWBURST,
  M_AXI_MMIO_AWLOCK,
  M_AXI_MMIO_AWCACHE,
  M_AXI_MMIO_AWPROT,
  M_AXI_MMIO_AWQOS,
  M_AXI_MMIO_WREADY,
  M_AXI_MMIO_WVALID,
  M_AXI_MMIO_WDATA,
  M_AXI_MMIO_WSTRB,
  M_AXI_MMIO_WLAST,
  M_AXI_MMIO_BREADY,
  M_AXI_MMIO_BVALID,
  M_AXI_MMIO_BID,
  M_AXI_MMIO_BRESP,
  M_AXI_MMIO_ARREADY,
  M_AXI_MMIO_ARVALID,
  M_AXI_MMIO_ARID,
  M_AXI_MMIO_ARADDR,
  M_AXI_MMIO_ARLEN,
  M_AXI_MMIO_ARSIZE,
  M_AXI_MMIO_ARBURST,
  M_AXI_MMIO_ARLOCK,
  M_AXI_MMIO_ARCACHE,
  M_AXI_MMIO_ARPROT,
  M_AXI_MMIO_ARQOS,
  M_AXI_MMIO_RREADY,
  M_AXI_MMIO_RVALID,
  M_AXI_MMIO_RID,
  M_AXI_MMIO_RDATA,
  M_AXI_MMIO_RRESP,
  M_AXI_MMIO_RLAST,
  M_AXI_MEM_ACLK,
  M_AXI_MEM_AWREADY,
  M_AXI_MEM_AWVALID,
  M_AXI_MEM_AWID,
  M_AXI_MEM_AWADDR,
  M_AXI_MEM_AWLEN,
  M_AXI_MEM_AWSIZE,
  M_AXI_MEM_AWBURST,
  M_AXI_MEM_AWLOCK,
  M_AXI_MEM_AWCACHE,
  M_AXI_MEM_AWPROT,
  M_AXI_MEM_AWQOS,
  M_AXI_MEM_WREADY,
  M_AXI_MEM_WVALID,
  M_AXI_MEM_WDATA,
  M_AXI_MEM_WSTRB,
  M_AXI_MEM_WLAST,
  M_AXI_MEM_BREADY,
  M_AXI_MEM_BVALID,
  M_AXI_MEM_BID,
  M_AXI_MEM_BRESP,
  M_AXI_MEM_ARREADY,
  M_AXI_MEM_ARVALID,
  M_AXI_MEM_ARID,
  M_AXI_MEM_ARADDR,
  M_AXI_MEM_ARLEN,
  M_AXI_MEM_ARSIZE,
  M_AXI_MEM_ARBURST,
  M_AXI_MEM_ARLOCK,
  M_AXI_MEM_ARCACHE,
  M_AXI_MEM_ARPROT,
  M_AXI_MEM_ARQOS,
  M_AXI_MEM_RREADY,
  M_AXI_MEM_RVALID,
  M_AXI_MEM_RID,
  M_AXI_MEM_RDATA,
  M_AXI_MEM_RRESP,
  M_AXI_MEM_RLAST,
  custom_boot,
  reset_io,
  clock_uncore,
  clock_tap
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_AXI_MMIO_ACLK CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_MMIO_ACLK, ASSOCIATED_BUSIF M_AXI_MMIO, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN BD_core_0_M_AXI_MMIO_ACLK, INSERT_VIP 0" *)
output wire M_AXI_MMIO_ACLK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO AWREADY" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_MMIO, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 4, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN BD_core_0_M_AXI_MMIO_ACLK, NUM_READ_THREADS 1, NUM_WRITE_\
THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
input wire M_AXI_MMIO_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO AWVALID" *)
output wire M_AXI_MMIO_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO AWID" *)
output wire [3 : 0] M_AXI_MMIO_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO AWADDR" *)
output wire [31 : 0] M_AXI_MMIO_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO AWLEN" *)
output wire [7 : 0] M_AXI_MMIO_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO AWSIZE" *)
output wire [2 : 0] M_AXI_MMIO_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO AWBURST" *)
output wire [1 : 0] M_AXI_MMIO_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO AWLOCK" *)
output wire M_AXI_MMIO_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO AWCACHE" *)
output wire [3 : 0] M_AXI_MMIO_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO AWPROT" *)
output wire [2 : 0] M_AXI_MMIO_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO AWQOS" *)
output wire [3 : 0] M_AXI_MMIO_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO WREADY" *)
input wire M_AXI_MMIO_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO WVALID" *)
output wire M_AXI_MMIO_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO WDATA" *)
output wire [63 : 0] M_AXI_MMIO_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO WSTRB" *)
output wire [7 : 0] M_AXI_MMIO_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO WLAST" *)
output wire M_AXI_MMIO_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO BREADY" *)
output wire M_AXI_MMIO_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO BVALID" *)
input wire M_AXI_MMIO_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO BID" *)
input wire [3 : 0] M_AXI_MMIO_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO BRESP" *)
input wire [1 : 0] M_AXI_MMIO_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO ARREADY" *)
input wire M_AXI_MMIO_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO ARVALID" *)
output wire M_AXI_MMIO_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO ARID" *)
output wire [3 : 0] M_AXI_MMIO_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO ARADDR" *)
output wire [31 : 0] M_AXI_MMIO_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO ARLEN" *)
output wire [7 : 0] M_AXI_MMIO_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO ARSIZE" *)
output wire [2 : 0] M_AXI_MMIO_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO ARBURST" *)
output wire [1 : 0] M_AXI_MMIO_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO ARLOCK" *)
output wire M_AXI_MMIO_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO ARCACHE" *)
output wire [3 : 0] M_AXI_MMIO_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO ARPROT" *)
output wire [2 : 0] M_AXI_MMIO_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO ARQOS" *)
output wire [3 : 0] M_AXI_MMIO_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO RREADY" *)
output wire M_AXI_MMIO_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO RVALID" *)
input wire M_AXI_MMIO_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO RID" *)
input wire [3 : 0] M_AXI_MMIO_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO RDATA" *)
input wire [63 : 0] M_AXI_MMIO_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO RRESP" *)
input wire [1 : 0] M_AXI_MMIO_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO RLAST" *)
input wire M_AXI_MMIO_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_AXI_MEM_ACLK CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_MEM_ACLK, ASSOCIATED_BUSIF M_AXI_MEM, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN BD_core_0_M_AXI_MEM_ACLK, INSERT_VIP 0" *)
output wire M_AXI_MEM_ACLK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWREADY" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_MEM, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 4, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN BD_core_0_M_AXI_MEM_ACLK, NUM_READ_THREADS 1, NUM_WRITE_TH\
READS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
input wire M_AXI_MEM_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWVALID" *)
output wire M_AXI_MEM_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWID" *)
output wire [3 : 0] M_AXI_MEM_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWADDR" *)
output wire [31 : 0] M_AXI_MEM_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWLEN" *)
output wire [7 : 0] M_AXI_MEM_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWSIZE" *)
output wire [2 : 0] M_AXI_MEM_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWBURST" *)
output wire [1 : 0] M_AXI_MEM_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWLOCK" *)
output wire M_AXI_MEM_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWCACHE" *)
output wire [3 : 0] M_AXI_MEM_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWPROT" *)
output wire [2 : 0] M_AXI_MEM_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWQOS" *)
output wire [3 : 0] M_AXI_MEM_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM WREADY" *)
input wire M_AXI_MEM_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM WVALID" *)
output wire M_AXI_MEM_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM WDATA" *)
output wire [63 : 0] M_AXI_MEM_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM WSTRB" *)
output wire [7 : 0] M_AXI_MEM_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM WLAST" *)
output wire M_AXI_MEM_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM BREADY" *)
output wire M_AXI_MEM_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM BVALID" *)
input wire M_AXI_MEM_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM BID" *)
input wire [3 : 0] M_AXI_MEM_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM BRESP" *)
input wire [1 : 0] M_AXI_MEM_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARREADY" *)
input wire M_AXI_MEM_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARVALID" *)
output wire M_AXI_MEM_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARID" *)
output wire [3 : 0] M_AXI_MEM_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARADDR" *)
output wire [31 : 0] M_AXI_MEM_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARLEN" *)
output wire [7 : 0] M_AXI_MEM_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARSIZE" *)
output wire [2 : 0] M_AXI_MEM_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARBURST" *)
output wire [1 : 0] M_AXI_MEM_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARLOCK" *)
output wire M_AXI_MEM_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARCACHE" *)
output wire [3 : 0] M_AXI_MEM_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARPROT" *)
output wire [2 : 0] M_AXI_MEM_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARQOS" *)
output wire [3 : 0] M_AXI_MEM_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM RREADY" *)
output wire M_AXI_MEM_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM RVALID" *)
input wire M_AXI_MEM_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM RID" *)
input wire [3 : 0] M_AXI_MEM_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM RDATA" *)
input wire [63 : 0] M_AXI_MEM_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM RRESP" *)
input wire [1 : 0] M_AXI_MEM_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM RLAST" *)
input wire M_AXI_MEM_RLAST;
input wire custom_boot;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_io RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_io, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire reset_io;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock_uncore CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock_uncore, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN BD_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
input wire clock_uncore;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock_tap CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock_tap, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN BD_core_0_clock_tap, INSERT_VIP 0" *)
output wire clock_tap;

  RV32RocketCoreTop inst (
    .M_AXI_MMIO_ACLK(M_AXI_MMIO_ACLK),
    .M_AXI_MMIO_AWREADY(M_AXI_MMIO_AWREADY),
    .M_AXI_MMIO_AWVALID(M_AXI_MMIO_AWVALID),
    .M_AXI_MMIO_AWID(M_AXI_MMIO_AWID),
    .M_AXI_MMIO_AWADDR(M_AXI_MMIO_AWADDR),
    .M_AXI_MMIO_AWLEN(M_AXI_MMIO_AWLEN),
    .M_AXI_MMIO_AWSIZE(M_AXI_MMIO_AWSIZE),
    .M_AXI_MMIO_AWBURST(M_AXI_MMIO_AWBURST),
    .M_AXI_MMIO_AWLOCK(M_AXI_MMIO_AWLOCK),
    .M_AXI_MMIO_AWCACHE(M_AXI_MMIO_AWCACHE),
    .M_AXI_MMIO_AWPROT(M_AXI_MMIO_AWPROT),
    .M_AXI_MMIO_AWQOS(M_AXI_MMIO_AWQOS),
    .M_AXI_MMIO_WREADY(M_AXI_MMIO_WREADY),
    .M_AXI_MMIO_WVALID(M_AXI_MMIO_WVALID),
    .M_AXI_MMIO_WDATA(M_AXI_MMIO_WDATA),
    .M_AXI_MMIO_WSTRB(M_AXI_MMIO_WSTRB),
    .M_AXI_MMIO_WLAST(M_AXI_MMIO_WLAST),
    .M_AXI_MMIO_BREADY(M_AXI_MMIO_BREADY),
    .M_AXI_MMIO_BVALID(M_AXI_MMIO_BVALID),
    .M_AXI_MMIO_BID(M_AXI_MMIO_BID),
    .M_AXI_MMIO_BRESP(M_AXI_MMIO_BRESP),
    .M_AXI_MMIO_ARREADY(M_AXI_MMIO_ARREADY),
    .M_AXI_MMIO_ARVALID(M_AXI_MMIO_ARVALID),
    .M_AXI_MMIO_ARID(M_AXI_MMIO_ARID),
    .M_AXI_MMIO_ARADDR(M_AXI_MMIO_ARADDR),
    .M_AXI_MMIO_ARLEN(M_AXI_MMIO_ARLEN),
    .M_AXI_MMIO_ARSIZE(M_AXI_MMIO_ARSIZE),
    .M_AXI_MMIO_ARBURST(M_AXI_MMIO_ARBURST),
    .M_AXI_MMIO_ARLOCK(M_AXI_MMIO_ARLOCK),
    .M_AXI_MMIO_ARCACHE(M_AXI_MMIO_ARCACHE),
    .M_AXI_MMIO_ARPROT(M_AXI_MMIO_ARPROT),
    .M_AXI_MMIO_ARQOS(M_AXI_MMIO_ARQOS),
    .M_AXI_MMIO_RREADY(M_AXI_MMIO_RREADY),
    .M_AXI_MMIO_RVALID(M_AXI_MMIO_RVALID),
    .M_AXI_MMIO_RID(M_AXI_MMIO_RID),
    .M_AXI_MMIO_RDATA(M_AXI_MMIO_RDATA),
    .M_AXI_MMIO_RRESP(M_AXI_MMIO_RRESP),
    .M_AXI_MMIO_RLAST(M_AXI_MMIO_RLAST),
    .M_AXI_MEM_ACLK(M_AXI_MEM_ACLK),
    .M_AXI_MEM_AWREADY(M_AXI_MEM_AWREADY),
    .M_AXI_MEM_AWVALID(M_AXI_MEM_AWVALID),
    .M_AXI_MEM_AWID(M_AXI_MEM_AWID),
    .M_AXI_MEM_AWADDR(M_AXI_MEM_AWADDR),
    .M_AXI_MEM_AWLEN(M_AXI_MEM_AWLEN),
    .M_AXI_MEM_AWSIZE(M_AXI_MEM_AWSIZE),
    .M_AXI_MEM_AWBURST(M_AXI_MEM_AWBURST),
    .M_AXI_MEM_AWLOCK(M_AXI_MEM_AWLOCK),
    .M_AXI_MEM_AWCACHE(M_AXI_MEM_AWCACHE),
    .M_AXI_MEM_AWPROT(M_AXI_MEM_AWPROT),
    .M_AXI_MEM_AWQOS(M_AXI_MEM_AWQOS),
    .M_AXI_MEM_WREADY(M_AXI_MEM_WREADY),
    .M_AXI_MEM_WVALID(M_AXI_MEM_WVALID),
    .M_AXI_MEM_WDATA(M_AXI_MEM_WDATA),
    .M_AXI_MEM_WSTRB(M_AXI_MEM_WSTRB),
    .M_AXI_MEM_WLAST(M_AXI_MEM_WLAST),
    .M_AXI_MEM_BREADY(M_AXI_MEM_BREADY),
    .M_AXI_MEM_BVALID(M_AXI_MEM_BVALID),
    .M_AXI_MEM_BID(M_AXI_MEM_BID),
    .M_AXI_MEM_BRESP(M_AXI_MEM_BRESP),
    .M_AXI_MEM_ARREADY(M_AXI_MEM_ARREADY),
    .M_AXI_MEM_ARVALID(M_AXI_MEM_ARVALID),
    .M_AXI_MEM_ARID(M_AXI_MEM_ARID),
    .M_AXI_MEM_ARADDR(M_AXI_MEM_ARADDR),
    .M_AXI_MEM_ARLEN(M_AXI_MEM_ARLEN),
    .M_AXI_MEM_ARSIZE(M_AXI_MEM_ARSIZE),
    .M_AXI_MEM_ARBURST(M_AXI_MEM_ARBURST),
    .M_AXI_MEM_ARLOCK(M_AXI_MEM_ARLOCK),
    .M_AXI_MEM_ARCACHE(M_AXI_MEM_ARCACHE),
    .M_AXI_MEM_ARPROT(M_AXI_MEM_ARPROT),
    .M_AXI_MEM_ARQOS(M_AXI_MEM_ARQOS),
    .M_AXI_MEM_RREADY(M_AXI_MEM_RREADY),
    .M_AXI_MEM_RVALID(M_AXI_MEM_RVALID),
    .M_AXI_MEM_RID(M_AXI_MEM_RID),
    .M_AXI_MEM_RDATA(M_AXI_MEM_RDATA),
    .M_AXI_MEM_RRESP(M_AXI_MEM_RRESP),
    .M_AXI_MEM_RLAST(M_AXI_MEM_RLAST),
    .custom_boot(custom_boot),
    .reset_io(reset_io),
    .clock_uncore(clock_uncore),
    .clock_tap(clock_tap)
  );
endmodule
