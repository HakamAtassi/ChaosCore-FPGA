// Generated by CIRCT firtool-1.75.0
module rockettile_icache_tag_array(	// @[generators/rocket-chip/src/main/scala/util/DescribedSRAM.scala:17:26]
  input  [5:0]   RW0_addr,
  input          RW0_en,
  input          RW0_clk,
  input          RW0_wmode,
  input  [167:0] RW0_wdata,
  output [167:0] RW0_rdata,
  input  [7:0]   RW0_wmask
);

  rockettile_icache_tag_array_ext rockettile_icache_tag_array_ext (	// @[generators/rocket-chip/src/main/scala/util/DescribedSRAM.scala:17:26]
    .RW0_addr  (RW0_addr),
    .RW0_en    (RW0_en),
    .RW0_clk   (RW0_clk),
    .RW0_wmode (RW0_wmode),
    .RW0_wdata (RW0_wdata),
    .RW0_rdata (RW0_rdata),
    .RW0_wmask (RW0_wmask)
  );	// @[generators/rocket-chip/src/main/scala/util/DescribedSRAM.scala:17:26]
endmodule

