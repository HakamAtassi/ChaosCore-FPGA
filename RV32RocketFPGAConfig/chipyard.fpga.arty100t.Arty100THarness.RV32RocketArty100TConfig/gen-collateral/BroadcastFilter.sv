// Generated by CIRCT firtool-1.75.0
module BroadcastFilter(	// @[generators/rocket-chip/src/main/scala/tilelink/Broadcast.scala:366:7]
  output        io_request_ready,	// @[generators/rocket-chip/src/main/scala/tilelink/Broadcast.scala:363:14]
  input         io_request_valid,	// @[generators/rocket-chip/src/main/scala/tilelink/Broadcast.scala:363:14]
  input  [1:0]  io_request_bits_mshr,	// @[generators/rocket-chip/src/main/scala/tilelink/Broadcast.scala:363:14]
  input  [31:0] io_request_bits_address,	// @[generators/rocket-chip/src/main/scala/tilelink/Broadcast.scala:363:14]
  input         io_request_bits_allocOH,	// @[generators/rocket-chip/src/main/scala/tilelink/Broadcast.scala:363:14]
  input         io_request_bits_needT,	// @[generators/rocket-chip/src/main/scala/tilelink/Broadcast.scala:363:14]
  input         io_response_ready,	// @[generators/rocket-chip/src/main/scala/tilelink/Broadcast.scala:363:14]
  output        io_response_valid,	// @[generators/rocket-chip/src/main/scala/tilelink/Broadcast.scala:363:14]
  output [1:0]  io_response_bits_mshr,	// @[generators/rocket-chip/src/main/scala/tilelink/Broadcast.scala:363:14]
  output [31:0] io_response_bits_address,	// @[generators/rocket-chip/src/main/scala/tilelink/Broadcast.scala:363:14]
  output        io_response_bits_allocOH,	// @[generators/rocket-chip/src/main/scala/tilelink/Broadcast.scala:363:14]
  output        io_response_bits_needT	// @[generators/rocket-chip/src/main/scala/tilelink/Broadcast.scala:363:14]
);

  assign io_request_ready = io_response_ready;	// @[generators/rocket-chip/src/main/scala/tilelink/Broadcast.scala:366:7]
  assign io_response_valid = io_request_valid;	// @[generators/rocket-chip/src/main/scala/tilelink/Broadcast.scala:366:7]
  assign io_response_bits_mshr = io_request_bits_mshr;	// @[generators/rocket-chip/src/main/scala/tilelink/Broadcast.scala:366:7]
  assign io_response_bits_address = io_request_bits_address;	// @[generators/rocket-chip/src/main/scala/tilelink/Broadcast.scala:366:7]
  assign io_response_bits_allocOH = io_request_bits_allocOH;	// @[generators/rocket-chip/src/main/scala/tilelink/Broadcast.scala:366:7]
  assign io_response_bits_needT = io_request_bits_needT;	// @[generators/rocket-chip/src/main/scala/tilelink/Broadcast.scala:366:7]
endmodule

