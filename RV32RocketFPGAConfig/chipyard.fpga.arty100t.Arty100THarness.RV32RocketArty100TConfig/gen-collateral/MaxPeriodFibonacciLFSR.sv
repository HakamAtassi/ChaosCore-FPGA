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
module MaxPeriodFibonacciLFSR(	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7]
  input  clock,	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7]
  input  reset,	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7]
  input  io_increment,	// @[src/main/scala/chisel3/util/random/PRNG.scala:42:22]
  output io_out_0,	// @[src/main/scala/chisel3/util/random/PRNG.scala:42:22]
  output io_out_1,	// @[src/main/scala/chisel3/util/random/PRNG.scala:42:22]
  output io_out_2,	// @[src/main/scala/chisel3/util/random/PRNG.scala:42:22]
  output io_out_3,	// @[src/main/scala/chisel3/util/random/PRNG.scala:42:22]
  output io_out_4,	// @[src/main/scala/chisel3/util/random/PRNG.scala:42:22]
  output io_out_5,	// @[src/main/scala/chisel3/util/random/PRNG.scala:42:22]
  output io_out_6,	// @[src/main/scala/chisel3/util/random/PRNG.scala:42:22]
  output io_out_7,	// @[src/main/scala/chisel3/util/random/PRNG.scala:42:22]
  output io_out_8,	// @[src/main/scala/chisel3/util/random/PRNG.scala:42:22]
  output io_out_9,	// @[src/main/scala/chisel3/util/random/PRNG.scala:42:22]
  output io_out_10,	// @[src/main/scala/chisel3/util/random/PRNG.scala:42:22]
  output io_out_11,	// @[src/main/scala/chisel3/util/random/PRNG.scala:42:22]
  output io_out_12,	// @[src/main/scala/chisel3/util/random/PRNG.scala:42:22]
  output io_out_13,	// @[src/main/scala/chisel3/util/random/PRNG.scala:42:22]
  output io_out_14,	// @[src/main/scala/chisel3/util/random/PRNG.scala:42:22]
  output io_out_15	// @[src/main/scala/chisel3/util/random/PRNG.scala:42:22]
);

  reg state_0;	// @[src/main/scala/chisel3/util/random/PRNG.scala:55:49]
  reg state_1;	// @[src/main/scala/chisel3/util/random/PRNG.scala:55:49]
  reg state_2;	// @[src/main/scala/chisel3/util/random/PRNG.scala:55:49]
  reg state_3;	// @[src/main/scala/chisel3/util/random/PRNG.scala:55:49]
  reg state_4;	// @[src/main/scala/chisel3/util/random/PRNG.scala:55:49]
  reg state_5;	// @[src/main/scala/chisel3/util/random/PRNG.scala:55:49]
  reg state_6;	// @[src/main/scala/chisel3/util/random/PRNG.scala:55:49]
  reg state_7;	// @[src/main/scala/chisel3/util/random/PRNG.scala:55:49]
  reg state_8;	// @[src/main/scala/chisel3/util/random/PRNG.scala:55:49]
  reg state_9;	// @[src/main/scala/chisel3/util/random/PRNG.scala:55:49]
  reg state_10;	// @[src/main/scala/chisel3/util/random/PRNG.scala:55:49]
  reg state_11;	// @[src/main/scala/chisel3/util/random/PRNG.scala:55:49]
  reg state_12;	// @[src/main/scala/chisel3/util/random/PRNG.scala:55:49]
  reg state_13;	// @[src/main/scala/chisel3/util/random/PRNG.scala:55:49]
  reg state_14;	// @[src/main/scala/chisel3/util/random/PRNG.scala:55:49]
  reg state_15;	// @[src/main/scala/chisel3/util/random/PRNG.scala:55:49]
  always @(posedge clock) begin	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7]
    if (reset) begin	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7]
      state_0 <= 1'h1;	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
      state_1 <= 1'h0;	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
      state_2 <= 1'h0;	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
      state_3 <= 1'h0;	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
      state_4 <= 1'h0;	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
      state_5 <= 1'h0;	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
      state_6 <= 1'h0;	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
      state_7 <= 1'h0;	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
      state_8 <= 1'h0;	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
      state_9 <= 1'h0;	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
      state_10 <= 1'h0;	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
      state_11 <= 1'h0;	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
      state_12 <= 1'h0;	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
      state_13 <= 1'h0;	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
      state_14 <= 1'h0;	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
      state_15 <= 1'h0;	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
    end
    else if (io_increment) begin	// @[src/main/scala/chisel3/util/random/PRNG.scala:42:22]
      state_0 <= state_15 ^ state_13 ^ state_12 ^ state_10;	// @[src/main/scala/chisel3/util/random/LFSR.scala:15:41, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
      state_1 <= state_0;	// @[src/main/scala/chisel3/util/random/PRNG.scala:55:49]
      state_2 <= state_1;	// @[src/main/scala/chisel3/util/random/PRNG.scala:55:49]
      state_3 <= state_2;	// @[src/main/scala/chisel3/util/random/PRNG.scala:55:49]
      state_4 <= state_3;	// @[src/main/scala/chisel3/util/random/PRNG.scala:55:49]
      state_5 <= state_4;	// @[src/main/scala/chisel3/util/random/PRNG.scala:55:49]
      state_6 <= state_5;	// @[src/main/scala/chisel3/util/random/PRNG.scala:55:49]
      state_7 <= state_6;	// @[src/main/scala/chisel3/util/random/PRNG.scala:55:49]
      state_8 <= state_7;	// @[src/main/scala/chisel3/util/random/PRNG.scala:55:49]
      state_9 <= state_8;	// @[src/main/scala/chisel3/util/random/PRNG.scala:55:49]
      state_10 <= state_9;	// @[src/main/scala/chisel3/util/random/PRNG.scala:55:49]
      state_11 <= state_10;	// @[src/main/scala/chisel3/util/random/PRNG.scala:55:49]
      state_12 <= state_11;	// @[src/main/scala/chisel3/util/random/PRNG.scala:55:49]
      state_13 <= state_12;	// @[src/main/scala/chisel3/util/random/PRNG.scala:55:49]
      state_14 <= state_13;	// @[src/main/scala/chisel3/util/random/PRNG.scala:55:49]
      state_15 <= state_14;	// @[src/main/scala/chisel3/util/random/PRNG.scala:55:49]
    end
  end // always @(posedge)
  `ifdef ENABLE_INITIAL_REG_	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7]
    `ifdef FIRRTL_BEFORE_INITIAL	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7]
      `FIRRTL_BEFORE_INITIAL	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7]
    `endif // FIRRTL_BEFORE_INITIAL
    logic [31:0] _RANDOM[0:0];	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7]
    initial begin	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7]
      `ifdef INIT_RANDOM_PROLOG_	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7]
        `INIT_RANDOM_PROLOG_	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7]
      `endif // INIT_RANDOM_PROLOG_
      `ifdef RANDOMIZE_REG_INIT	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7]
        _RANDOM[/*Zero width*/ 1'b0] = `RANDOM;	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7]
        state_0 = _RANDOM[/*Zero width*/ 1'b0][0];	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
        state_1 = _RANDOM[/*Zero width*/ 1'b0][1];	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
        state_2 = _RANDOM[/*Zero width*/ 1'b0][2];	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
        state_3 = _RANDOM[/*Zero width*/ 1'b0][3];	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
        state_4 = _RANDOM[/*Zero width*/ 1'b0][4];	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
        state_5 = _RANDOM[/*Zero width*/ 1'b0][5];	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
        state_6 = _RANDOM[/*Zero width*/ 1'b0][6];	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
        state_7 = _RANDOM[/*Zero width*/ 1'b0][7];	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
        state_8 = _RANDOM[/*Zero width*/ 1'b0][8];	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
        state_9 = _RANDOM[/*Zero width*/ 1'b0][9];	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
        state_10 = _RANDOM[/*Zero width*/ 1'b0][10];	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
        state_11 = _RANDOM[/*Zero width*/ 1'b0][11];	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
        state_12 = _RANDOM[/*Zero width*/ 1'b0][12];	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
        state_13 = _RANDOM[/*Zero width*/ 1'b0][13];	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
        state_14 = _RANDOM[/*Zero width*/ 1'b0][14];	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
        state_15 = _RANDOM[/*Zero width*/ 1'b0][15];	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
      `endif // RANDOMIZE_REG_INIT
    end // initial
    `ifdef FIRRTL_AFTER_INITIAL	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7]
      `FIRRTL_AFTER_INITIAL	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7]
    `endif // FIRRTL_AFTER_INITIAL
  `endif // ENABLE_INITIAL_REG_
  assign io_out_0 = state_0;	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
  assign io_out_1 = state_1;	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
  assign io_out_2 = state_2;	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
  assign io_out_3 = state_3;	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
  assign io_out_4 = state_4;	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
  assign io_out_5 = state_5;	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
  assign io_out_6 = state_6;	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
  assign io_out_7 = state_7;	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
  assign io_out_8 = state_8;	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
  assign io_out_9 = state_9;	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
  assign io_out_10 = state_10;	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
  assign io_out_11 = state_11;	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
  assign io_out_12 = state_12;	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
  assign io_out_13 = state_13;	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
  assign io_out_14 = state_14;	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
  assign io_out_15 = state_15;	// @[src/main/scala/chisel3/util/random/FibonacciLFSR.scala:65:7, src/main/scala/chisel3/util/random/PRNG.scala:55:49]
endmodule

