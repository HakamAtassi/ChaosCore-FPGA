// Generated by CIRCT firtool-1.75.0
// VCS coverage exclude_file
module ram_8x78(	// @[src/main/scala/chisel3/util/Decoupled.scala:256:91]
  input  [2:0]  R0_addr,
  input         R0_en,
  input         R0_clk,
  output [77:0] R0_data,
  input  [2:0]  W0_addr,
  input         W0_en,
  input         W0_clk,
  input  [77:0] W0_data
);

  reg [77:0] Memory[0:7];	// @[src/main/scala/chisel3/util/Decoupled.scala:256:91]
  always @(posedge W0_clk) begin	// @[src/main/scala/chisel3/util/Decoupled.scala:256:91]
    if (W0_en & 1'h1)	// @[src/main/scala/chisel3/util/Decoupled.scala:256:91]
      Memory[W0_addr] <= W0_data;	// @[src/main/scala/chisel3/util/Decoupled.scala:256:91]
  end // always @(posedge)
  `ifdef ENABLE_INITIAL_MEM_	// @[src/main/scala/chisel3/util/Decoupled.scala:256:91]
    reg [95:0] _RANDOM_MEM;	// @[src/main/scala/chisel3/util/Decoupled.scala:256:91]
    initial begin	// @[src/main/scala/chisel3/util/Decoupled.scala:256:91]
      `INIT_RANDOM_PROLOG_	// @[src/main/scala/chisel3/util/Decoupled.scala:256:91]
      `ifdef RANDOMIZE_MEM_INIT	// @[src/main/scala/chisel3/util/Decoupled.scala:256:91]
        for (logic [3:0] i = 4'h0; i < 4'h8; i += 4'h1) begin
          for (logic [6:0] j = 7'h0; j < 7'h60; j += 7'h20) begin
            _RANDOM_MEM[j +: 32] = `RANDOM;	// @[src/main/scala/chisel3/util/Decoupled.scala:256:91]
          end
          Memory[i[2:0]] = _RANDOM_MEM[77:0];	// @[src/main/scala/chisel3/util/Decoupled.scala:256:91]
        end
      `endif // RANDOMIZE_MEM_INIT
    end // initial
  `endif // ENABLE_INITIAL_MEM_
  assign R0_data = R0_en ? Memory[R0_addr] : 78'bx;	// @[src/main/scala/chisel3/util/Decoupled.scala:256:91]
endmodule

