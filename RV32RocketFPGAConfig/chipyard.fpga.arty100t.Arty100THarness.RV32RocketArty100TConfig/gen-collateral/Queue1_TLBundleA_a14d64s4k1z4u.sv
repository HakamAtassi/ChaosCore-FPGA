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
module Queue1_TLBundleA_a14d64s4k1z4u(	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7]
  input         clock,	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7]
  input         reset,	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7]
  output        io_enq_ready,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  input         io_enq_valid,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  input  [2:0]  io_enq_bits_opcode,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  input  [2:0]  io_enq_bits_param,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  input  [3:0]  io_enq_bits_size,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  input  [3:0]  io_enq_bits_source,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  input  [13:0] io_enq_bits_address,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  input  [7:0]  io_enq_bits_mask,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  input  [63:0] io_enq_bits_data,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  input         io_enq_bits_corrupt,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  input         io_deq_ready,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  output        io_deq_valid,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  output [2:0]  io_deq_bits_opcode,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  output [3:0]  io_deq_bits_size,	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
  output [3:0]  io_deq_bits_source	// @[src/main/scala/chisel3/util/Decoupled.scala:255:14]
);

  reg  [100:0] ram;	// @[src/main/scala/chisel3/util/Decoupled.scala:256:91]
  reg          full;	// @[src/main/scala/chisel3/util/Decoupled.scala:259:27]
  wire         do_enq = ~full & io_enq_valid;	// @[src/main/scala/chisel3/util/Decoupled.scala:51:35, :259:27, :286:19]
  always @(posedge clock) begin	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7]
    if (do_enq)	// @[src/main/scala/chisel3/util/Decoupled.scala:51:35]
      ram <= {io_enq_bits_corrupt, io_enq_bits_data, io_enq_bits_mask, io_enq_bits_address, io_enq_bits_source, io_enq_bits_size, io_enq_bits_param, io_enq_bits_opcode};	// @[src/main/scala/chisel3/util/Decoupled.scala:256:91]
    if (reset)	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7]
      full <= 1'h0;	// @[src/main/scala/chisel3/util/Decoupled.scala:259:27]
    else if (~(do_enq == (io_deq_ready & full)))	// @[src/main/scala/chisel3/util/Decoupled.scala:51:35, :259:27, :276:{15,27}, :277:16]
      full <= do_enq;	// @[src/main/scala/chisel3/util/Decoupled.scala:51:35, :259:27]
  end // always @(posedge)
  `ifdef ENABLE_INITIAL_REG_	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7]
    `ifdef FIRRTL_BEFORE_INITIAL	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7]
      `FIRRTL_BEFORE_INITIAL	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7]
    `endif // FIRRTL_BEFORE_INITIAL
    logic [31:0] _RANDOM[0:3];	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7]
    initial begin	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7]
      `ifdef INIT_RANDOM_PROLOG_	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7]
        `INIT_RANDOM_PROLOG_	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7]
      `endif // INIT_RANDOM_PROLOG_
      `ifdef RANDOMIZE_REG_INIT	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7]
        for (logic [2:0] i = 3'h0; i < 3'h4; i += 3'h1) begin
          _RANDOM[i[1:0]] = `RANDOM;	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7]
        end	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7]
        ram = {_RANDOM[2'h0][31:1], _RANDOM[2'h1], _RANDOM[2'h2], _RANDOM[2'h3][5:0]};	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7, :256:91]
        full = _RANDOM[2'h0][0];	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7, :256:91, :259:27]
      `endif // RANDOMIZE_REG_INIT
    end // initial
    `ifdef FIRRTL_AFTER_INITIAL	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7]
      `FIRRTL_AFTER_INITIAL	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7]
    `endif // FIRRTL_AFTER_INITIAL
  `endif // ENABLE_INITIAL_REG_
  assign io_enq_ready = ~full;	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7, :259:27, :286:19]
  assign io_deq_valid = full;	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7, :259:27]
  assign io_deq_bits_opcode = ram[2:0];	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7, :256:91]
  assign io_deq_bits_size = ram[9:6];	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7, :256:91]
  assign io_deq_bits_source = ram[13:10];	// @[src/main/scala/chisel3/util/Decoupled.scala:243:7, :256:91]
endmodule

