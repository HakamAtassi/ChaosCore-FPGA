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
module SerialWidthSlicer(	// @[generators/testchipip/src/main/scala/serdes/Adapter.scala:30:7]
  input         clock,	// @[generators/testchipip/src/main/scala/serdes/Adapter.scala:30:7]
  input         reset,	// @[generators/testchipip/src/main/scala/serdes/Adapter.scala:30:7]
  output        io_wide_ready,	// @[generators/testchipip/src/main/scala/serdes/Adapter.scala:33:14]
  input         io_wide_valid,	// @[generators/testchipip/src/main/scala/serdes/Adapter.scala:33:14]
  input  [31:0] io_wide_bits,	// @[generators/testchipip/src/main/scala/serdes/Adapter.scala:33:14]
  input         io_narrow_ready,	// @[generators/testchipip/src/main/scala/serdes/Adapter.scala:33:14]
  output        io_narrow_valid,	// @[generators/testchipip/src/main/scala/serdes/Adapter.scala:33:14]
  output [7:0]  io_narrow_bits	// @[generators/testchipip/src/main/scala/serdes/Adapter.scala:33:14]
);

  reg  [1:0]      wide_beats;	// @[generators/testchipip/src/main/scala/serdes/Adapter.scala:39:27]
  wire [3:0][7:0] _GEN = {{io_wide_bits[31:24]}, {io_wide_bits[23:16]}, {io_wide_bits[15:8]}, {io_wide_bits[7:0]}};	// @[generators/testchipip/src/main/scala/serdes/Adapter.scala:43:{18,42}]
  always @(posedge clock) begin	// @[generators/testchipip/src/main/scala/serdes/Adapter.scala:30:7]
    if (reset)	// @[generators/testchipip/src/main/scala/serdes/Adapter.scala:30:7]
      wide_beats <= 2'h0;	// @[generators/testchipip/src/main/scala/serdes/Adapter.scala:39:27]
    else if (io_narrow_ready & io_wide_valid)	// @[src/main/scala/chisel3/util/Decoupled.scala:51:35]
      wide_beats <= (&wide_beats) ? 2'h0 : wide_beats + 2'h1;	// @[generators/testchipip/src/main/scala/serdes/Adapter.scala:39:27, :40:35, :45:{22,55}]
  end // always @(posedge)
  `ifdef ENABLE_INITIAL_REG_	// @[generators/testchipip/src/main/scala/serdes/Adapter.scala:30:7]
    `ifdef FIRRTL_BEFORE_INITIAL	// @[generators/testchipip/src/main/scala/serdes/Adapter.scala:30:7]
      `FIRRTL_BEFORE_INITIAL	// @[generators/testchipip/src/main/scala/serdes/Adapter.scala:30:7]
    `endif // FIRRTL_BEFORE_INITIAL
    logic [31:0] _RANDOM[0:0];	// @[generators/testchipip/src/main/scala/serdes/Adapter.scala:30:7]
    initial begin	// @[generators/testchipip/src/main/scala/serdes/Adapter.scala:30:7]
      `ifdef INIT_RANDOM_PROLOG_	// @[generators/testchipip/src/main/scala/serdes/Adapter.scala:30:7]
        `INIT_RANDOM_PROLOG_	// @[generators/testchipip/src/main/scala/serdes/Adapter.scala:30:7]
      `endif // INIT_RANDOM_PROLOG_
      `ifdef RANDOMIZE_REG_INIT	// @[generators/testchipip/src/main/scala/serdes/Adapter.scala:30:7]
        _RANDOM[/*Zero width*/ 1'b0] = `RANDOM;	// @[generators/testchipip/src/main/scala/serdes/Adapter.scala:30:7]
        wide_beats = _RANDOM[/*Zero width*/ 1'b0][1:0];	// @[generators/testchipip/src/main/scala/serdes/Adapter.scala:30:7, :39:27]
      `endif // RANDOMIZE_REG_INIT
    end // initial
    `ifdef FIRRTL_AFTER_INITIAL	// @[generators/testchipip/src/main/scala/serdes/Adapter.scala:30:7]
      `FIRRTL_AFTER_INITIAL	// @[generators/testchipip/src/main/scala/serdes/Adapter.scala:30:7]
    `endif // FIRRTL_AFTER_INITIAL
  `endif // ENABLE_INITIAL_REG_
  assign io_wide_ready = (&wide_beats) & io_narrow_ready;	// @[generators/testchipip/src/main/scala/serdes/Adapter.scala:30:7, :39:27, :40:35, :47:35]
  assign io_narrow_valid = io_wide_valid;	// @[generators/testchipip/src/main/scala/serdes/Adapter.scala:30:7]
  assign io_narrow_bits = _GEN[wide_beats];	// @[generators/testchipip/src/main/scala/serdes/Adapter.scala:30:7, :39:27, :43:18]
endmodule

