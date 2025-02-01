// Generated by CIRCT firtool-1.75.0
module ErrorDeviceWrapper(	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:138:7]
  input         clock,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:138:7]
  input         reset,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:138:7]
  output        auto_buffer_in_a_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_buffer_in_a_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]  auto_buffer_in_a_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]  auto_buffer_in_a_bits_param,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [3:0]  auto_buffer_in_a_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [3:0]  auto_buffer_in_a_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [13:0] auto_buffer_in_a_bits_address,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [7:0]  auto_buffer_in_a_bits_mask,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [63:0] auto_buffer_in_a_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_buffer_in_a_bits_corrupt,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_buffer_in_d_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_buffer_in_d_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [2:0]  auto_buffer_in_d_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [1:0]  auto_buffer_in_d_bits_param,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [3:0]  auto_buffer_in_d_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [3:0]  auto_buffer_in_d_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_buffer_in_d_bits_sink,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_buffer_in_d_bits_denied,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [63:0] auto_buffer_in_d_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_buffer_in_d_bits_corrupt	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
);

  wire        _buffer_auto_out_a_valid;	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
  wire [2:0]  _buffer_auto_out_a_bits_opcode;	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
  wire [2:0]  _buffer_auto_out_a_bits_param;	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
  wire [3:0]  _buffer_auto_out_a_bits_size;	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
  wire [3:0]  _buffer_auto_out_a_bits_source;	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
  wire [13:0] _buffer_auto_out_a_bits_address;	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
  wire [7:0]  _buffer_auto_out_a_bits_mask;	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
  wire [63:0] _buffer_auto_out_a_bits_data;	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
  wire        _buffer_auto_out_a_bits_corrupt;	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
  wire        _buffer_auto_out_d_ready;	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
  wire        _error_auto_in_a_ready;	// @[generators/rocket-chip/src/main/scala/devices/tilelink/CanHaveBuiltInDevices.scala:40:29]
  wire        _error_auto_in_d_valid;	// @[generators/rocket-chip/src/main/scala/devices/tilelink/CanHaveBuiltInDevices.scala:40:29]
  wire [2:0]  _error_auto_in_d_bits_opcode;	// @[generators/rocket-chip/src/main/scala/devices/tilelink/CanHaveBuiltInDevices.scala:40:29]
  wire [3:0]  _error_auto_in_d_bits_size;	// @[generators/rocket-chip/src/main/scala/devices/tilelink/CanHaveBuiltInDevices.scala:40:29]
  wire [3:0]  _error_auto_in_d_bits_source;	// @[generators/rocket-chip/src/main/scala/devices/tilelink/CanHaveBuiltInDevices.scala:40:29]
  wire        _error_auto_in_d_bits_corrupt;	// @[generators/rocket-chip/src/main/scala/devices/tilelink/CanHaveBuiltInDevices.scala:40:29]
  TLError error (	// @[generators/rocket-chip/src/main/scala/devices/tilelink/CanHaveBuiltInDevices.scala:40:29]
    .clock                  (clock),
    .reset                  (reset),
    .auto_in_a_ready        (_error_auto_in_a_ready),
    .auto_in_a_valid        (_buffer_auto_out_a_valid),	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
    .auto_in_a_bits_opcode  (_buffer_auto_out_a_bits_opcode),	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
    .auto_in_a_bits_param   (_buffer_auto_out_a_bits_param),	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
    .auto_in_a_bits_size    (_buffer_auto_out_a_bits_size),	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
    .auto_in_a_bits_source  (_buffer_auto_out_a_bits_source),	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
    .auto_in_a_bits_address (_buffer_auto_out_a_bits_address),	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
    .auto_in_a_bits_mask    (_buffer_auto_out_a_bits_mask),	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
    .auto_in_a_bits_data    (_buffer_auto_out_a_bits_data),	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
    .auto_in_a_bits_corrupt (_buffer_auto_out_a_bits_corrupt),	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
    .auto_in_d_ready        (_buffer_auto_out_d_ready),	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
    .auto_in_d_valid        (_error_auto_in_d_valid),
    .auto_in_d_bits_opcode  (_error_auto_in_d_bits_opcode),
    .auto_in_d_bits_size    (_error_auto_in_d_bits_size),
    .auto_in_d_bits_source  (_error_auto_in_d_bits_source),
    .auto_in_d_bits_corrupt (_error_auto_in_d_bits_corrupt)
  );	// @[generators/rocket-chip/src/main/scala/devices/tilelink/CanHaveBuiltInDevices.scala:40:29]
  TLBuffer_a14d64s4k1z4u buffer (	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
    .clock                   (clock),
    .reset                   (reset),
    .auto_in_a_ready         (auto_buffer_in_a_ready),
    .auto_in_a_valid         (auto_buffer_in_a_valid),
    .auto_in_a_bits_opcode   (auto_buffer_in_a_bits_opcode),
    .auto_in_a_bits_param    (auto_buffer_in_a_bits_param),
    .auto_in_a_bits_size     (auto_buffer_in_a_bits_size),
    .auto_in_a_bits_source   (auto_buffer_in_a_bits_source),
    .auto_in_a_bits_address  (auto_buffer_in_a_bits_address),
    .auto_in_a_bits_mask     (auto_buffer_in_a_bits_mask),
    .auto_in_a_bits_data     (auto_buffer_in_a_bits_data),
    .auto_in_a_bits_corrupt  (auto_buffer_in_a_bits_corrupt),
    .auto_in_d_ready         (auto_buffer_in_d_ready),
    .auto_in_d_valid         (auto_buffer_in_d_valid),
    .auto_in_d_bits_opcode   (auto_buffer_in_d_bits_opcode),
    .auto_in_d_bits_param    (auto_buffer_in_d_bits_param),
    .auto_in_d_bits_size     (auto_buffer_in_d_bits_size),
    .auto_in_d_bits_source   (auto_buffer_in_d_bits_source),
    .auto_in_d_bits_sink     (auto_buffer_in_d_bits_sink),
    .auto_in_d_bits_denied   (auto_buffer_in_d_bits_denied),
    .auto_in_d_bits_data     (auto_buffer_in_d_bits_data),
    .auto_in_d_bits_corrupt  (auto_buffer_in_d_bits_corrupt),
    .auto_out_a_ready        (_error_auto_in_a_ready),	// @[generators/rocket-chip/src/main/scala/devices/tilelink/CanHaveBuiltInDevices.scala:40:29]
    .auto_out_a_valid        (_buffer_auto_out_a_valid),
    .auto_out_a_bits_opcode  (_buffer_auto_out_a_bits_opcode),
    .auto_out_a_bits_param   (_buffer_auto_out_a_bits_param),
    .auto_out_a_bits_size    (_buffer_auto_out_a_bits_size),
    .auto_out_a_bits_source  (_buffer_auto_out_a_bits_source),
    .auto_out_a_bits_address (_buffer_auto_out_a_bits_address),
    .auto_out_a_bits_mask    (_buffer_auto_out_a_bits_mask),
    .auto_out_a_bits_data    (_buffer_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt (_buffer_auto_out_a_bits_corrupt),
    .auto_out_d_ready        (_buffer_auto_out_d_ready),
    .auto_out_d_valid        (_error_auto_in_d_valid),	// @[generators/rocket-chip/src/main/scala/devices/tilelink/CanHaveBuiltInDevices.scala:40:29]
    .auto_out_d_bits_opcode  (_error_auto_in_d_bits_opcode),	// @[generators/rocket-chip/src/main/scala/devices/tilelink/CanHaveBuiltInDevices.scala:40:29]
    .auto_out_d_bits_size    (_error_auto_in_d_bits_size),	// @[generators/rocket-chip/src/main/scala/devices/tilelink/CanHaveBuiltInDevices.scala:40:29]
    .auto_out_d_bits_source  (_error_auto_in_d_bits_source),	// @[generators/rocket-chip/src/main/scala/devices/tilelink/CanHaveBuiltInDevices.scala:40:29]
    .auto_out_d_bits_corrupt (_error_auto_in_d_bits_corrupt)	// @[generators/rocket-chip/src/main/scala/devices/tilelink/CanHaveBuiltInDevices.scala:40:29]
  );	// @[generators/rocket-chip/src/main/scala/tilelink/Buffer.scala:75:28]
endmodule

