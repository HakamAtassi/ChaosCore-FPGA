// Generated by CIRCT firtool-1.75.0

// Include register initializers in init blocks unless synthesis is set
`ifndef RANDOMIZE
  `ifdef RANDOMIZE_REG_INIT
    `define RANDOMIZE
  `endif // RANDOMIZE_REG_INIT
`endif // not def RANDOMIZE
`ifndef SYNTHESIS
  `ifndef ENABLE_INITIAL_REG_
    `define ENABLE_INITIAL_REG_
  `endif // not def ENABLE_INITIAL_REG_
`endif // not def SYNTHESIS

// Standard header to adapt well known macros for register randomization.

// RANDOM may be set to an expression that produces a 32-bit random unsigned value.
`ifndef RANDOM
  `define RANDOM $random
`endif // not def RANDOM

// Users can define INIT_RANDOM as general code that gets injected into the
// initializer block for modules with registers.
`ifndef INIT_RANDOM
  `define INIT_RANDOM
`endif // not def INIT_RANDOM

// If using random initialization, you can also define RANDOMIZE_DELAY to
// customize the delay used, otherwise 0.002 is used.
`ifndef RANDOMIZE_DELAY
  `define RANDOMIZE_DELAY 0.002
`endif // not def RANDOMIZE_DELAY

// Define INIT_RANDOM_PROLOG_ for use in our modules below.
`ifndef INIT_RANDOM_PROLOG_
  `ifdef RANDOMIZE
    `ifdef VERILATOR
      `define INIT_RANDOM_PROLOG_ `INIT_RANDOM
    `else  // VERILATOR
      `define INIT_RANDOM_PROLOG_ `INIT_RANDOM #`RANDOMIZE_DELAY begin end
    `endif // VERILATOR
  `else  // RANDOMIZE
    `define INIT_RANDOM_PROLOG_
  `endif // RANDOMIZE
`endif // not def INIT_RANDOM_PROLOG_
module AXI4RAM(	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9]
  input         clock,	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9]
  input         reset,	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9]
  output        auto_in_aw_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_in_aw_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [3:0]  auto_in_aw_bits_id,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [27:0] auto_in_aw_bits_addr,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_in_aw_bits_echo_real_last,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_in_w_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_in_w_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [63:0] auto_in_w_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [7:0]  auto_in_w_bits_strb,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_in_b_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_in_b_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [3:0]  auto_in_b_bits_id,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_in_b_bits_echo_real_last,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_in_ar_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_in_ar_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [3:0]  auto_in_ar_bits_id,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [27:0] auto_in_ar_bits_addr,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_in_ar_bits_echo_real_last,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_in_r_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_in_r_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [3:0]  auto_in_r_bits_id,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [63:0] auto_in_r_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_in_r_bits_echo_real_last	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
);

  wire        nodeIn_ar_ready;	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:122:31]
  wire        nodeIn_aw_ready;	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:97:32]
  wire [63:0] _mem_R0_data;	// @[generators/rocket-chip/src/main/scala/util/DescribedSRAM.scala:17:26]
  reg         w_full;	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:75:25]
  reg  [3:0]  w_id;	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:76:21]
  reg         w_echo_real_last;	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:77:21]
  wire        mem_MPORT_en = nodeIn_aw_ready & auto_in_aw_valid;	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:97:32, src/main/scala/chisel3/util/Decoupled.scala:51:35]
  assign nodeIn_aw_ready = auto_in_w_valid & (auto_in_b_ready | ~w_full);	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:75:25, :97:{32,47,50}]
  reg         r_full;	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:104:25]
  reg  [3:0]  r_id;	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:105:21]
  reg         r_echo_real_last;	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:106:21]
  wire        ren = nodeIn_ar_ready & auto_in_ar_valid;	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:122:31, src/main/scala/chisel3/util/Decoupled.scala:51:35]
  reg         rdata_REG;	// @[generators/rocket-chip/src/main/scala/util/package.scala:100:91]
  reg  [7:0]  rdata_r_0;	// @[generators/rocket-chip/src/main/scala/util/package.scala:88:63]
  reg  [7:0]  rdata_r_1;	// @[generators/rocket-chip/src/main/scala/util/package.scala:88:63]
  reg  [7:0]  rdata_r_2;	// @[generators/rocket-chip/src/main/scala/util/package.scala:88:63]
  reg  [7:0]  rdata_r_3;	// @[generators/rocket-chip/src/main/scala/util/package.scala:88:63]
  reg  [7:0]  rdata_r_4;	// @[generators/rocket-chip/src/main/scala/util/package.scala:88:63]
  reg  [7:0]  rdata_r_5;	// @[generators/rocket-chip/src/main/scala/util/package.scala:88:63]
  reg  [7:0]  rdata_r_6;	// @[generators/rocket-chip/src/main/scala/util/package.scala:88:63]
  reg  [7:0]  rdata_r_7;	// @[generators/rocket-chip/src/main/scala/util/package.scala:88:63]
  assign nodeIn_ar_ready = auto_in_r_ready | ~r_full;	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:104:25, :122:{31,34}]
  always @(posedge clock) begin	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9]
    if (reset) begin	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9]
      w_full <= 1'h0;	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:75:25]
      r_full <= 1'h0;	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:104:25]
    end
    else begin	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9]
      w_full <= mem_MPORT_en | ~(auto_in_b_ready & w_full) & w_full;	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:75:25, :81:{23,32}, :82:{23,32}, src/main/scala/chisel3/util/Decoupled.scala:51:35]
      r_full <= ren | ~(auto_in_r_ready & r_full) & r_full;	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:104:25, :108:{23,32}, :109:{23,32}, src/main/scala/chisel3/util/Decoupled.scala:51:35]
    end
    if (mem_MPORT_en) begin	// @[src/main/scala/chisel3/util/Decoupled.scala:51:35]
      w_id <= auto_in_aw_bits_id;	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:76:21]
      w_echo_real_last <= auto_in_aw_bits_echo_real_last;	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:77:21]
    end
    if (ren) begin	// @[src/main/scala/chisel3/util/Decoupled.scala:51:35]
      r_id <= auto_in_ar_bits_id;	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:105:21]
      r_echo_real_last <= auto_in_ar_bits_echo_real_last;	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:106:21]
    end
    rdata_REG <= ren;	// @[generators/rocket-chip/src/main/scala/util/package.scala:100:91, src/main/scala/chisel3/util/Decoupled.scala:51:35]
    if (rdata_REG) begin	// @[generators/rocket-chip/src/main/scala/util/package.scala:100:91]
      rdata_r_0 <= _mem_R0_data[7:0];	// @[generators/rocket-chip/src/main/scala/util/DescribedSRAM.scala:17:26, generators/rocket-chip/src/main/scala/util/package.scala:88:63]
      rdata_r_1 <= _mem_R0_data[15:8];	// @[generators/rocket-chip/src/main/scala/util/DescribedSRAM.scala:17:26, generators/rocket-chip/src/main/scala/util/package.scala:88:63]
      rdata_r_2 <= _mem_R0_data[23:16];	// @[generators/rocket-chip/src/main/scala/util/DescribedSRAM.scala:17:26, generators/rocket-chip/src/main/scala/util/package.scala:88:63]
      rdata_r_3 <= _mem_R0_data[31:24];	// @[generators/rocket-chip/src/main/scala/util/DescribedSRAM.scala:17:26, generators/rocket-chip/src/main/scala/util/package.scala:88:63]
      rdata_r_4 <= _mem_R0_data[39:32];	// @[generators/rocket-chip/src/main/scala/util/DescribedSRAM.scala:17:26, generators/rocket-chip/src/main/scala/util/package.scala:88:63]
      rdata_r_5 <= _mem_R0_data[47:40];	// @[generators/rocket-chip/src/main/scala/util/DescribedSRAM.scala:17:26, generators/rocket-chip/src/main/scala/util/package.scala:88:63]
      rdata_r_6 <= _mem_R0_data[55:48];	// @[generators/rocket-chip/src/main/scala/util/DescribedSRAM.scala:17:26, generators/rocket-chip/src/main/scala/util/package.scala:88:63]
      rdata_r_7 <= _mem_R0_data[63:56];	// @[generators/rocket-chip/src/main/scala/util/DescribedSRAM.scala:17:26, generators/rocket-chip/src/main/scala/util/package.scala:88:63]
    end
  end // always @(posedge)
  `ifdef ENABLE_INITIAL_REG_	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9]
    `ifdef FIRRTL_BEFORE_INITIAL	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9]
      `FIRRTL_BEFORE_INITIAL	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9]
    `endif // FIRRTL_BEFORE_INITIAL
    logic [31:0] _RANDOM[0:2];	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9]
    initial begin	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9]
      `ifdef INIT_RANDOM_PROLOG_	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9]
        `INIT_RANDOM_PROLOG_	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9]
      `endif // INIT_RANDOM_PROLOG_
      `ifdef RANDOMIZE_REG_INIT	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9]
        for (logic [1:0] i = 2'h0; i < 2'h3; i += 2'h1) begin
          _RANDOM[i] = `RANDOM;	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9]
        end	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9]
        w_full = _RANDOM[2'h0][0];	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9, :75:25]
        w_id = _RANDOM[2'h0][4:1];	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9, :75:25, :76:21]
        w_echo_real_last = _RANDOM[2'h0][5];	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9, :75:25, :77:21]
        r_full = _RANDOM[2'h0][8];	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9, :75:25, :104:25]
        r_id = _RANDOM[2'h0][12:9];	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9, :75:25, :105:21]
        r_echo_real_last = _RANDOM[2'h0][13];	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9, :75:25, :106:21]
        rdata_REG = _RANDOM[2'h0][14];	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9, :75:25, generators/rocket-chip/src/main/scala/util/package.scala:100:91]
        rdata_r_0 = _RANDOM[2'h0][22:15];	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9, :75:25, generators/rocket-chip/src/main/scala/util/package.scala:88:63]
        rdata_r_1 = _RANDOM[2'h0][30:23];	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9, :75:25, generators/rocket-chip/src/main/scala/util/package.scala:88:63]
        rdata_r_2 = {_RANDOM[2'h0][31], _RANDOM[2'h1][6:0]};	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9, :75:25, generators/rocket-chip/src/main/scala/util/package.scala:88:63]
        rdata_r_3 = _RANDOM[2'h1][14:7];	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9, generators/rocket-chip/src/main/scala/util/package.scala:88:63]
        rdata_r_4 = _RANDOM[2'h1][22:15];	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9, generators/rocket-chip/src/main/scala/util/package.scala:88:63]
        rdata_r_5 = _RANDOM[2'h1][30:23];	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9, generators/rocket-chip/src/main/scala/util/package.scala:88:63]
        rdata_r_6 = {_RANDOM[2'h1][31], _RANDOM[2'h2][6:0]};	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9, generators/rocket-chip/src/main/scala/util/package.scala:88:63]
        rdata_r_7 = _RANDOM[2'h2][14:7];	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9, generators/rocket-chip/src/main/scala/util/package.scala:88:63]
      `endif // RANDOMIZE_REG_INIT
    end // initial
    `ifdef FIRRTL_AFTER_INITIAL	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9]
      `FIRRTL_AFTER_INITIAL	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9]
    `endif // FIRRTL_AFTER_INITIAL
  `endif // ENABLE_INITIAL_REG_
  mem_0 mem (	// @[generators/rocket-chip/src/main/scala/util/DescribedSRAM.scala:17:26]
    .R0_addr (auto_in_ar_bits_addr[27:3]),	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:70:21]
    .R0_en   (ren),	// @[src/main/scala/chisel3/util/Decoupled.scala:51:35]
    .R0_clk  (clock),
    .R0_data (_mem_R0_data),
    .W0_addr (auto_in_aw_bits_addr[27:3]),	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:71:21]
    .W0_en   (mem_MPORT_en),	// @[src/main/scala/chisel3/util/Decoupled.scala:51:35]
    .W0_clk  (clock),
    .W0_data (auto_in_w_bits_data),
    .W0_mask (auto_in_w_bits_strb)
  );	// @[generators/rocket-chip/src/main/scala/util/DescribedSRAM.scala:17:26]
  assign auto_in_aw_ready = nodeIn_aw_ready;	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9, :97:32]
  assign auto_in_w_ready = auto_in_aw_valid & (auto_in_b_ready | ~w_full);	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9, :75:25, :97:50, :98:{32,47}]
  assign auto_in_b_valid = w_full;	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9, :75:25]
  assign auto_in_b_bits_id = w_id;	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9, :76:21]
  assign auto_in_b_bits_echo_real_last = w_echo_real_last;	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9, :77:21]
  assign auto_in_ar_ready = nodeIn_ar_ready;	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9, :122:31]
  assign auto_in_r_valid = r_full;	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9, :104:25]
  assign auto_in_r_bits_id = r_id;	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9, :105:21]
  assign auto_in_r_bits_data = {rdata_REG ? _mem_R0_data[63:56] : rdata_r_7, rdata_REG ? _mem_R0_data[55:48] : rdata_r_6, rdata_REG ? _mem_R0_data[47:40] : rdata_r_5, rdata_REG ? _mem_R0_data[39:32] : rdata_r_4, rdata_REG ? _mem_R0_data[31:24] : rdata_r_3, rdata_REG ? _mem_R0_data[23:16] : rdata_r_2, rdata_REG ? _mem_R0_data[15:8] : rdata_r_1, rdata_REG ? _mem_R0_data[7:0] : rdata_r_0};	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9, :126:26, generators/rocket-chip/src/main/scala/util/DescribedSRAM.scala:17:26, generators/rocket-chip/src/main/scala/util/package.scala:88:{42,63}, :100:91]
  assign auto_in_r_bits_echo_real_last = r_echo_real_last;	// @[generators/rocket-chip/src/main/scala/amba/axi4/SRAM.scala:58:9, :106:21]
endmodule

