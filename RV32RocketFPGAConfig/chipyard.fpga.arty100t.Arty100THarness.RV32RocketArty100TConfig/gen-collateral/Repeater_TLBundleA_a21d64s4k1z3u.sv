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
module Repeater_TLBundleA_a21d64s4k1z3u(	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:10:7]
  input         clock,	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:10:7]
  input         reset,	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:10:7]
  input         io_repeat,	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:13:14]
  output        io_full,	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:13:14]
  output        io_enq_ready,	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:13:14]
  input         io_enq_valid,	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:13:14]
  input  [2:0]  io_enq_bits_opcode,	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:13:14]
  input  [2:0]  io_enq_bits_size,	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:13:14]
  input  [3:0]  io_enq_bits_source,	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:13:14]
  input  [20:0] io_enq_bits_address,	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:13:14]
  input  [7:0]  io_enq_bits_mask,	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:13:14]
  input         io_deq_ready,	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:13:14]
  output        io_deq_valid,	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:13:14]
  output [2:0]  io_deq_bits_opcode,	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:13:14]
  output [2:0]  io_deq_bits_size,	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:13:14]
  output [3:0]  io_deq_bits_source,	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:13:14]
  output [20:0] io_deq_bits_address,	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:13:14]
  output [7:0]  io_deq_bits_mask	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:13:14]
);

  reg         full;	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:20:21]
  reg  [2:0]  saved_opcode;	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:21:18]
  reg  [2:0]  saved_size;	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:21:18]
  reg  [3:0]  saved_source;	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:21:18]
  reg  [20:0] saved_address;	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:21:18]
  reg  [7:0]  saved_mask;	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:21:18]
  wire        io_deq_valid_0 = io_enq_valid | full;	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:20:21, :24:32]
  wire        io_enq_ready_0 = io_deq_ready & ~full;	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:20:21, :25:{32,35}]
  wire        _GEN = io_enq_ready_0 & io_enq_valid & io_repeat;	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:25:32, :29:21, src/main/scala/chisel3/util/Decoupled.scala:51:35]
  always @(posedge clock) begin	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:10:7]
    if (reset)	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:10:7]
      full <= 1'h0;	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:10:7, :20:21]
    else	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:10:7]
      full <= ~(io_deq_ready & io_deq_valid_0 & ~io_repeat) & (_GEN | full);	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:20:21, :24:32, :29:{21,36,43}, :30:{21,24,36,43}, src/main/scala/chisel3/util/Decoupled.scala:51:35]
    if (_GEN) begin	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:29:21, src/main/scala/chisel3/util/Decoupled.scala:51:35]
      saved_opcode <= io_enq_bits_opcode;	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:21:18]
      saved_size <= io_enq_bits_size;	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:21:18]
      saved_source <= io_enq_bits_source;	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:21:18]
      saved_address <= io_enq_bits_address;	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:21:18]
      saved_mask <= io_enq_bits_mask;	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:21:18]
    end
  end // always @(posedge)
  `ifdef ENABLE_INITIAL_REG_	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:10:7]
    `ifdef FIRRTL_BEFORE_INITIAL	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:10:7]
      `FIRRTL_BEFORE_INITIAL	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:10:7]
    `endif // FIRRTL_BEFORE_INITIAL
    logic [31:0] _RANDOM[0:1];	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:10:7]
    initial begin	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:10:7]
      `ifdef INIT_RANDOM_PROLOG_	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:10:7]
        `INIT_RANDOM_PROLOG_	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:10:7]
      `endif // INIT_RANDOM_PROLOG_
      `ifdef RANDOMIZE_REG_INIT	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:10:7]
        for (logic [1:0] i = 2'h0; i < 2'h2; i += 2'h1) begin
          _RANDOM[i[0]] = `RANDOM;	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:10:7]
        end	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:10:7]
        full = _RANDOM[1'h0][0];	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:10:7, :20:21]
        saved_opcode = _RANDOM[1'h0][3:1];	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:10:7, :20:21, :21:18]
        saved_size = _RANDOM[1'h0][9:7];	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:10:7, :20:21, :21:18]
        saved_source = _RANDOM[1'h0][13:10];	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:10:7, :20:21, :21:18]
        saved_address = {_RANDOM[1'h0][31:14], _RANDOM[1'h1][2:0]};	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:10:7, :20:21, :21:18]
        saved_mask = _RANDOM[1'h1][10:3];	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:10:7, :21:18]
      `endif // RANDOMIZE_REG_INIT
    end // initial
    `ifdef FIRRTL_AFTER_INITIAL	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:10:7]
      `FIRRTL_AFTER_INITIAL	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:10:7]
    `endif // FIRRTL_AFTER_INITIAL
  `endif // ENABLE_INITIAL_REG_
  assign io_full = full;	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:10:7, :20:21]
  assign io_enq_ready = io_enq_ready_0;	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:10:7, :25:32]
  assign io_deq_valid = io_deq_valid_0;	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:10:7, :24:32]
  assign io_deq_bits_opcode = full ? saved_opcode : io_enq_bits_opcode;	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:10:7, :20:21, :21:18, :26:21]
  assign io_deq_bits_size = full ? saved_size : io_enq_bits_size;	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:10:7, :20:21, :21:18, :26:21]
  assign io_deq_bits_source = full ? saved_source : io_enq_bits_source;	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:10:7, :20:21, :21:18, :26:21]
  assign io_deq_bits_address = full ? saved_address : io_enq_bits_address;	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:10:7, :20:21, :21:18, :26:21]
  assign io_deq_bits_mask = full ? saved_mask : io_enq_bits_mask;	// @[generators/rocket-chip/src/main/scala/util/Repeater.scala:10:7, :20:21, :21:18, :26:21]
endmodule

