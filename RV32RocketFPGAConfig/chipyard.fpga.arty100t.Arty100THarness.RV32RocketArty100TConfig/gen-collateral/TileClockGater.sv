// Generated by CIRCT firtool-1.75.0
module TileClockGater(	// @[generators/chipyard/src/main/scala/clocking/TileClockGater.scala:27:25]
  input         clock,	// @[generators/chipyard/src/main/scala/clocking/TileClockGater.scala:27:25]
  output        auto_clock_gater_in_1_a_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_clock_gater_in_1_a_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]  auto_clock_gater_in_1_a_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [1:0]  auto_clock_gater_in_1_a_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [7:0]  auto_clock_gater_in_1_a_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [20:0] auto_clock_gater_in_1_a_bits_address,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [7:0]  auto_clock_gater_in_1_a_bits_mask,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [63:0] auto_clock_gater_in_1_a_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_clock_gater_in_1_d_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_clock_gater_in_1_d_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [2:0]  auto_clock_gater_in_1_d_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [1:0]  auto_clock_gater_in_1_d_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [7:0]  auto_clock_gater_in_1_d_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [63:0] auto_clock_gater_in_1_d_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_clock_gater_in_0_member_allClocks_uncore_clock,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_clock_gater_in_0_member_allClocks_uncore_reset,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_clock_gater_out_member_allClocks_uncore_clock,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_clock_gater_out_member_allClocks_uncore_reset	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
);

  wire _out_wofireMux_T_1;	// @[generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:87:24]
  wire _regs_0_io_q;	// @[generators/chipyard/src/main/scala/clocking/TileClockGater.scala:33:53]
  wire in_bits_read = auto_clock_gater_in_1_a_bits_opcode == 3'h4;	// @[generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:74:36]
  wire _out_T_1 = auto_clock_gater_in_1_a_bits_address[11:3] == 9'h0;	// @[generators/rocket-chip/src/main/scala/tilelink/Edges.scala:192:34, generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:75:19, :87:24]
  assign _out_wofireMux_T_1 = ~in_bits_read;	// @[generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:74:36, :87:24]
  AsyncResetRegVec_w1_i1 regs_0 (	// @[generators/chipyard/src/main/scala/clocking/TileClockGater.scala:33:53]
    .clock (clock),
    .reset (auto_clock_gater_in_0_member_allClocks_uncore_reset),
    .io_d  (auto_clock_gater_in_1_a_bits_data[0]),	// @[generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:87:24]
    .io_q  (_regs_0_io_q),
    .io_en (auto_clock_gater_in_1_a_valid & auto_clock_gater_in_1_d_ready & _out_wofireMux_T_1 & _out_T_1 & auto_clock_gater_in_1_a_bits_mask[0])	// @[generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:87:24]
  );	// @[generators/chipyard/src/main/scala/clocking/TileClockGater.scala:33:53]
  assign auto_clock_gater_in_1_a_ready = auto_clock_gater_in_1_d_ready;	// @[generators/chipyard/src/main/scala/clocking/TileClockGater.scala:27:25]
  assign auto_clock_gater_in_1_d_valid = auto_clock_gater_in_1_a_valid;	// @[generators/chipyard/src/main/scala/clocking/TileClockGater.scala:27:25]
  assign auto_clock_gater_in_1_d_bits_opcode = {2'h0, in_bits_read};	// @[generators/chipyard/src/main/scala/clocking/TileClockGater.scala:27:25, generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:74:36, :105:19]
  assign auto_clock_gater_in_1_d_bits_size = auto_clock_gater_in_1_a_bits_size;	// @[generators/chipyard/src/main/scala/clocking/TileClockGater.scala:27:25]
  assign auto_clock_gater_in_1_d_bits_source = auto_clock_gater_in_1_a_bits_source;	// @[generators/chipyard/src/main/scala/clocking/TileClockGater.scala:27:25]
  assign auto_clock_gater_in_1_d_bits_data = {63'h0, _out_T_1 & _regs_0_io_q};	// @[generators/chipyard/src/main/scala/clocking/TileClockGater.scala:27:25, :33:53, generators/rocket-chip/src/main/scala/tilelink/RegisterRouter.scala:87:24]
  assign auto_clock_gater_out_member_allClocks_uncore_clock = auto_clock_gater_in_0_member_allClocks_uncore_clock;	// @[generators/chipyard/src/main/scala/clocking/TileClockGater.scala:27:25]
  assign auto_clock_gater_out_member_allClocks_uncore_reset = auto_clock_gater_in_0_member_allClocks_uncore_reset;	// @[generators/chipyard/src/main/scala/clocking/TileClockGater.scala:27:25]
endmodule

