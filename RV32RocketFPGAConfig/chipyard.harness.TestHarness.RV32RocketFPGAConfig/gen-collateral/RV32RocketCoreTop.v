
module RV32RocketCoreTop(	
  
  output        M_AXI_MMIO_ACLK,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO AWREADY" *)
  input         M_AXI_MMIO_AWREADY,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO AWVALID" *)
  output        M_AXI_MMIO_AWVALID,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO AWID" *)
  output [3:0]  M_AXI_MMIO_AWID,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO AWADDR" *)
  output [29:0] M_AXI_MMIO_AWADDR,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO AWLEN" *)
  output [7:0]  M_AXI_MMIO_AWLEN,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO AWSIZE" *)
  output [2:0]  M_AXI_MMIO_AWSIZE,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO AWBURST" *)
  output [1:0]  M_AXI_MMIO_AWBURST,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO AWLOCK" *)
  output        M_AXI_MMIO_AWLOCK,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO AWCACHE" *)
  output [3:0]  M_AXI_MMIO_AWCACHE,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO AWPROT" *)
  output [2:0]  M_AXI_MMIO_AWPROT,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO AWQOS" *)
  output [3:0]  M_AXI_MMIO_AWQOS,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO WREADY" *)
  input         M_AXI_MMIO_WREADY,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO WVALID" *)
  output        M_AXI_MMIO_WVALID,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO WDATA" *)
  output [63:0] M_AXI_MMIO_WDATA,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO WSTRB" *)
  output [7:0]  M_AXI_MMIO_WSTRB,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO WLAST" *)
  output        M_AXI_MMIO_WLAST,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO BREADY" *)
  output        M_AXI_MMIO_BREADY,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO BVALID" *)
  input         M_AXI_MMIO_BVALID,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO BID" *)
  input  [3:0]  M_AXI_MMIO_BID,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO BRESP" *)
  input  [1:0]  M_AXI_MMIO_BRESP,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO ARREADY" *)
  input         M_AXI_MMIO_ARREADY,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO ARVALID" *)
  output        M_AXI_MMIO_ARVALID,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO ARID" *)
  output [3:0]  M_AXI_MMIO_ARID,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO ARADDR" *)
  output [29:0] M_AXI_MMIO_ARADDR,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO ARLEN" *)
  output [7:0]  M_AXI_MMIO_ARLEN,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO ARSIZE" *)
  output [2:0]  M_AXI_MMIO_ARSIZE,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO ARBURST" *)
  output [1:0]  M_AXI_MMIO_ARBURST,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO ARLOCK" *)
  output        M_AXI_MMIO_ARLOCK,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO ARCACHE" *)
  output [3:0]  M_AXI_MMIO_ARCACHE,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO ARPROT" *)
  output [2:0]  M_AXI_MMIO_ARPROT,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO ARQOS" *)
  output [3:0]  M_AXI_MMIO_ARQOS,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO RREADY" *)
  output        M_AXI_MMIO_RREADY,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO RVALID" *)
  input         M_AXI_MMIO_RVALID,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO RID" *)
  input  [3:0]  M_AXI_MMIO_RID,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO RDATA" *)
  input  [63:0] M_AXI_MMIO_RDATA,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO RRESP" *)
  input  [1:0]  M_AXI_MMIO_RRESP,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MMIO RLAST" *)
  input         M_AXI_MMIO_RLAST,

  // AXI Memory Interface
  output        M_AXI_MEM_ACLK,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWREADY" *)
  input         M_AXI_MEM_AWREADY,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWVALID" *)
  output        M_AXI_MEM_AWVALID,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWID" *)
  output [3:0]  M_AXI_MEM_AWID,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWADDR" *)
  output [31:0] M_AXI_MEM_AWADDR,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWLEN" *)
  output [7:0]  M_AXI_MEM_AWLEN,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWSIZE" *)
  output [2:0]  M_AXI_MEM_AWSIZE,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWBURST" *)
  output [1:0]  M_AXI_MEM_AWBURST,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWLOCK" *)
  output        M_AXI_MEM_AWLOCK,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWCACHE" *)
  output [3:0]  M_AXI_MEM_AWCACHE,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWPROT" *)
  output [2:0]  M_AXI_MEM_AWPROT,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM AWQOS" *)
  output [3:0]  M_AXI_MEM_AWQOS,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM WREADY" *)
  input         M_AXI_MEM_WREADY,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM WVALID" *)
  output        M_AXI_MEM_WVALID,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM WDATA" *)
  output [63:0] M_AXI_MEM_WDATA,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM WSTRB" *)
  output [7:0]  M_AXI_MEM_WSTRB,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM WLAST" *)
  output        M_AXI_MEM_WLAST,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM BREADY" *)
  output        M_AXI_MEM_BREADY,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM BVALID" *)
  input         M_AXI_MEM_BVALID,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM BID" *)
  input  [3:0]  M_AXI_MEM_BID,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM BRESP" *)
  input  [1:0]  M_AXI_MEM_BRESP,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARREADY" *)
  input         M_AXI_MEM_ARREADY,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARVALID" *)
  output        M_AXI_MEM_ARVALID,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARID" *)
  output [3:0]  M_AXI_MEM_ARID,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARADDR" *)
  output [31:0] M_AXI_MEM_ARADDR,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARLEN" *)
  output [7:0]  M_AXI_MEM_ARLEN,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARSIZE" *)
  output [2:0]  M_AXI_MEM_ARSIZE,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARBURST" *)
  output [1:0]  M_AXI_MEM_ARBURST,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARLOCK" *)
  output        M_AXI_MEM_ARLOCK,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARCACHE" *)
  output [3:0]  M_AXI_MEM_ARCACHE,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARPROT" *)
  output [2:0]  M_AXI_MEM_ARPROT,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM ARQOS" *)
  output [3:0]  M_AXI_MEM_ARQOS,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM RREADY" *)
  output        M_AXI_MEM_RREADY,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM RVALID" *)
  input         M_AXI_MEM_RVALID,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM RID" *)
  input  [3:0]  M_AXI_MEM_RID,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM RDATA" *)
  input  [63:0] M_AXI_MEM_RDATA,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM RRESP" *)
  input  [1:0]  M_AXI_MEM_RRESP,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MEM RLAST" *)
  input         M_AXI_MEM_RLAST,


  input         custom_boot,	// @[generators/chipyard/src/main/scala/iocell/IOCell.scala:196:23]
  input         reset_io,	// @[generators/chipyard/src/main/scala/clocking/ClockBinders.scala:87:24]
  input         clock_uncore,	// @[generators/chipyard/src/main/scala/clocking/ClockBinders.scala:95:26]
  output        clock_tap	// @[generators/chipyard/src/main/scala/iocell/IOCell.scala:196:23]

);

ChipTop chiptop(
  // AXI MMIO Interface
  .axi4_mmio_0_clock(M_AXI_MMIO_ACLK),
  .axi4_mmio_0_bits_aw_ready(M_AXI_MMIO_AWREADY),
  .axi4_mmio_0_bits_aw_valid(M_AXI_MMIO_AWVALID),
  .axi4_mmio_0_bits_aw_bits_id(M_AXI_MMIO_AWID),
  .axi4_mmio_0_bits_aw_bits_addr(M_AXI_MMIO_AWADDR),
  .axi4_mmio_0_bits_aw_bits_len(M_AXI_MMIO_AWLEN),
  .axi4_mmio_0_bits_aw_bits_size(M_AXI_MMIO_AWSIZE),
  .axi4_mmio_0_bits_aw_bits_burst(M_AXI_MMIO_AWBURST),
  .axi4_mmio_0_bits_aw_bits_lock(M_AXI_MMIO_AWLOCK),
  .axi4_mmio_0_bits_aw_bits_cache(M_AXI_MMIO_AWCACHE),
  .axi4_mmio_0_bits_aw_bits_prot(M_AXI_MMIO_AWPROT),
  .axi4_mmio_0_bits_aw_bits_qos(M_AXI_MMIO_AWQOS),
  .axi4_mmio_0_bits_w_ready(M_AXI_MMIO_WREADY),
  .axi4_mmio_0_bits_w_valid(M_AXI_MMIO_WVALID),
  .axi4_mmio_0_bits_w_bits_data(M_AXI_MMIO_WDATA),
  .axi4_mmio_0_bits_w_bits_strb(M_AXI_MMIO_WSTRB),
  .axi4_mmio_0_bits_w_bits_last(M_AXI_MMIO_WLAST),
  .axi4_mmio_0_bits_b_ready(M_AXI_MMIO_BREADY),
  .axi4_mmio_0_bits_b_valid(M_AXI_MMIO_BVALID),
  .axi4_mmio_0_bits_b_bits_id(M_AXI_MMIO_BID),
  .axi4_mmio_0_bits_b_bits_resp(M_AXI_MMIO_BRESP),
  .axi4_mmio_0_bits_ar_ready(M_AXI_MMIO_ARREADY),
  .axi4_mmio_0_bits_ar_valid(M_AXI_MMIO_ARVALID),
  .axi4_mmio_0_bits_ar_bits_id(M_AXI_MMIO_ARID),
  .axi4_mmio_0_bits_ar_bits_addr(M_AXI_MMIO_ARADDR),
  .axi4_mmio_0_bits_ar_bits_len(M_AXI_MMIO_ARLEN),
  .axi4_mmio_0_bits_ar_bits_size(M_AXI_MMIO_ARSIZE),
  .axi4_mmio_0_bits_ar_bits_burst(M_AXI_MMIO_ARBURST),
  .axi4_mmio_0_bits_ar_bits_lock(M_AXI_MMIO_ARLOCK),
  .axi4_mmio_0_bits_ar_bits_cache(M_AXI_MMIO_ARCACHE),
  .axi4_mmio_0_bits_ar_bits_prot(M_AXI_MMIO_ARPROT),
  .axi4_mmio_0_bits_ar_bits_qos(M_AXI_MMIO_ARQOS),
  .axi4_mmio_0_bits_r_ready(M_AXI_MMIO_RREADY),
  .axi4_mmio_0_bits_r_valid(M_AXI_MMIO_RVALID),
  .axi4_mmio_0_bits_r_bits_id(M_AXI_MMIO_RID),
  .axi4_mmio_0_bits_r_bits_data(M_AXI_MMIO_RDATA),
  .axi4_mmio_0_bits_r_bits_resp(M_AXI_MMIO_RRESP),
  .axi4_mmio_0_bits_r_bits_last(M_AXI_MMIO_RLAST),

  // AXI Memory Interface
  .axi4_mem_0_clock(M_AXI_MEM_ACLK),
  .axi4_mem_0_bits_aw_ready(M_AXI_MEM_AWREADY),
  .axi4_mem_0_bits_aw_valid(M_AXI_MEM_AWVALID),
  .axi4_mem_0_bits_aw_bits_id(M_AXI_MEM_AWID),
  .axi4_mem_0_bits_aw_bits_addr(M_AXI_MEM_AWADDR),
  .axi4_mem_0_bits_aw_bits_len(M_AXI_MEM_AWLEN),
  .axi4_mem_0_bits_aw_bits_size(M_AXI_MEM_AWSIZE),
  .axi4_mem_0_bits_aw_bits_burst(M_AXI_MEM_AWBURST),
  .axi4_mem_0_bits_aw_bits_lock(M_AXI_MEM_AWLOCK),
  .axi4_mem_0_bits_aw_bits_cache(M_AXI_MEM_AWCACHE),
  .axi4_mem_0_bits_aw_bits_prot(M_AXI_MEM_AWPROT),
  .axi4_mem_0_bits_aw_bits_qos(M_AXI_MEM_AWQOS),
  .axi4_mem_0_bits_w_ready(M_AXI_MEM_WREADY),
  .axi4_mem_0_bits_w_valid(M_AXI_MEM_WVALID),
  .axi4_mem_0_bits_w_bits_data(M_AXI_MEM_WDATA),
  .axi4_mem_0_bits_w_bits_strb(M_AXI_MEM_WSTRB),
  .axi4_mem_0_bits_w_bits_last(M_AXI_MEM_WLAST),
  .axi4_mem_0_bits_b_ready(M_AXI_MEM_BREADY),
  .axi4_mem_0_bits_b_valid(M_AXI_MEM_BVALID),
  .axi4_mem_0_bits_b_bits_id(M_AXI_MEM_BID),
  .axi4_mem_0_bits_b_bits_resp(M_AXI_MEM_BRESP),
  .axi4_mem_0_bits_ar_ready(M_AXI_MEM_ARREADY),
  .axi4_mem_0_bits_ar_valid(M_AXI_MEM_ARVALID),
  .axi4_mem_0_bits_ar_bits_id(M_AXI_MEM_ARID),
  .axi4_mem_0_bits_ar_bits_addr(M_AXI_MEM_ARADDR),
  .axi4_mem_0_bits_ar_bits_len(M_AXI_MEM_ARLEN),
  .axi4_mem_0_bits_ar_bits_size(M_AXI_MEM_ARSIZE),
  .axi4_mem_0_bits_ar_bits_burst(M_AXI_MEM_ARBURST),
  .axi4_mem_0_bits_ar_bits_lock(M_AXI_MEM_ARLOCK),
  .axi4_mem_0_bits_ar_bits_cache(M_AXI_MEM_ARCACHE),
  .axi4_mem_0_bits_ar_bits_prot(M_AXI_MEM_ARPROT),
  .axi4_mem_0_bits_ar_bits_qos(M_AXI_MEM_ARQOS),
  .axi4_mem_0_bits_r_ready(M_AXI_MEM_RREADY),
  .axi4_mem_0_bits_r_valid(M_AXI_MEM_RVALID),
  .axi4_mem_0_bits_r_bits_id(M_AXI_MEM_RID),
  .axi4_mem_0_bits_r_bits_data(M_AXI_MEM_RDATA),
  .axi4_mem_0_bits_r_bits_resp(M_AXI_MEM_RRESP),
  .axi4_mem_0_bits_r_bits_last(M_AXI_MEM_RLAST),

  // Other I/O
  .custom_boot(custom_boot),
  .reset_io(reset_io),
  .clock_uncore(clock_uncore),
  .clock_tap(clock_tap)
);


endmodule