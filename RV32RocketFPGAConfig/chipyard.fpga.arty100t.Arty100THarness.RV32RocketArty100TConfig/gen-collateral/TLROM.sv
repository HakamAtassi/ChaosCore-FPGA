// Generated by CIRCT firtool-1.75.0
module TLROM(	// @[generators/rocket-chip/src/main/scala/devices/tilelink/BootROM.scala:41:9]
  output        auto_in_a_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_in_a_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [1:0]  auto_in_a_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [7:0]  auto_in_a_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [16:0] auto_in_a_bits_address,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_in_d_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_in_d_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [1:0]  auto_in_d_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [7:0]  auto_in_d_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [63:0] auto_in_d_bits_data	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
);

  wire [511:0][63:0] _GEN =
    '{64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h0,
      64'h766564,
      64'h6E2C766373697200,
      64'h797469726F697270,
      64'h2D78616D2C766373,
      64'h6972006465646E65,
      64'h7478652D73747075,
      64'h727265746E690073,
      64'h656D616E2D747570,
      64'h74756F2D6B636F6C,
      64'h6300736C6C65632D,
      64'h6B636F6C63230073,
      64'h656D616E2D676572,
      64'h7365676E617200,
      64'h656C646E61687000,
      64'h72656C6C6F72746E,
      64'h6F632D7470757272,
      64'h65746E6900736C6C,
      64'h65632D7470757272,
      64'h65746E6923007469,
      64'h6C70732D626C7400,
      64'h7375746174730073,
      64'h6E6F69676572706D,
      64'h702C766373697200,
      64'h79746972616C756E,
      64'h617267706D702C76,
      64'h6373697200617369,
      64'h2C76637369720067,
      64'h6572006568636163,
      64'h2D6C6576656C2D74,
      64'h78656E0065707974,
      64'h2D756D6D00657A69,
      64'h732D626C742D6900,
      64'h737465732D626C74,
      64'h2D6900657A69732D,
      64'h65686361632D6900,
      64'h737465732D656863,
      64'h61632D6900657A69,
      64'h732D6B636F6C622D,
      64'h65686361632D6900,
      64'h746E756F632D746E,
      64'h696F706B61657262,
      64'h2D636578652D6572,
      64'h6177647261680065,
      64'h7079745F65636976,
      64'h656400657A69732D,
      64'h626C742D64007374,
      64'h65732D626C742D64,
      64'h657A69732D6568,
      64'h6361632D64007374,
      64'h65732D6568636163,
      64'h2D6400657A69732D,
      64'h6B636F6C622D6568,
      64'h6361632D64007963,
      64'h6E6575716572662D,
      64'h6B636F6C63007963,
      64'h6E6575716572662D,
      64'h65736162656D6974,
      64'h6C65646F6D0065,
      64'h6C62697461706D6F,
      64'h6300736C6C65632D,
      64'h657A69732300736C,
      64'h6C65632D73736572,
      64'h6464612309000000,
      64'h200000002000000,
      64'h2000000006C6F72,
      64'h746E6F6394010000,
      64'h800000003000000,
      64'h10000000001100,
      64'h1A01000008000000,
      64'h300000000000000,
      64'h3030303031314072,
      64'h65747465732D7465,
      64'h7365722D656C6974,
      64'h100000002000000,
      64'h6B636F6C632D64,
      64'h657869661B000000,
      64'hC00000003000000,
      64'h6B636F6C635F,
      64'h73756273AB010000,
      64'hB00000003000000,
      64'h80F0FA023F000000,
      64'h400000003000000,
      64'h9E010000,
      64'h400000003000000,
      64'h6B636F6C635F,
      64'h7375627301000000,
      64'h2000000006D656D,
      64'h9401000004000000,
      64'h300000000000100,
      64'h1001A010000,
      64'h800000003000000,
      64'h306D6F722C6576,
      64'h696669731B000000,
      64'hC00000003000000,
      64'h3030303031,
      64'h406D6F7201000000,
      64'h2000000006B636F,
      64'h6C632D6465786966,
      64'h1B0000000C000000,
      64'h300000000006B63,
      64'h6F6C635F73756270,
      64'hAB0100000B000000,
      64'h300000080F0FA02,
      64'h3F00000004000000,
      64'h300000000000000,
      64'h9E01000004000000,
      64'h300000000006B63,
      64'h6F6C635F73756270,
      64'h100000002000000,
      64'h2000000010,
      64'h108D010000,
      64'hC00000003000000,
      64'h7375622D656C,
      64'h706D69731B000000,
      64'hB00000003000000,
      64'h10000000F000000,
      64'h400000003000000,
      64'h100000000000000,
      64'h400000003000000,
      64'h30303030303030,
      64'h3140346978612D74,
      64'h726F702D6F696D6D,
      64'h100000002000000,
      64'h6B636F6C632D64,
      64'h657869661B000000,
      64'hC00000003000000,
      64'h6B636F6C635F,
      64'h7375626DAB010000,
      64'hB00000003000000,
      64'h80F0FA023F000000,
      64'h400000003000000,
      64'h9E010000,
      64'h400000003000000,
      64'h6B636F6C635F,
      64'h7375626D01000000,
      64'h200000000000000,
      64'hE501000004000000,
      64'h300000000000000,
      64'hD201000004000000,
      64'h3000000006C6F72,
      64'h746E6F6394010000,
      64'h800000003000000,
      64'h40000000C,
      64'h1A01000008000000,
      64'h300000009000000,
      64'h30000000B000000,
      64'h3000000BE010000,
      64'h1000000003000000,
      64'h7001000000000000,
      64'h300000000306369,
      64'h6C702C7663736972,
      64'h1B0000000C000000,
      64'h300000001000000,
      64'h5F01000004000000,
      64'h300000000000000,
      64'h3030303030306340,
      64'h72656C6C6F72746E,
      64'h6F632D7470757272,
      64'h65746E6901000000,
      64'h2000000006B636F,
      64'h6C632D6465786966,
      64'h1B0000000C000000,
      64'h300000000006B63,
      64'h6F6C635F73756266,
      64'hAB0100000B000000,
      64'h300000080F0FA02,
      64'h3F00000004000000,
      64'h300000000000000,
      64'h9E01000004000000,
      64'h300000000006B63,
      64'h6F6C635F73756266,
      64'h100000002000000,
      64'h10000000300000,
      64'h1A01000008000000,
      64'h300000000000030,
      64'h726F7272652C6576,
      64'h696669731B000000,
      64'hE00000003000000,
      64'h3030303340,
      64'h6563697665642D72,
      64'h6F72726501000000,
      64'h2000000006C6F72,
      64'h746E6F6394010000,
      64'h800000003000000,
      64'h10000000001000,
      64'h1A01000008000000,
      64'h300000000003030,
      64'h3030303140726574,
      64'h61672D6B636F6C63,
      64'h100000002000000,
      64'h6C6F72746E6F63,
      64'h9401000008000000,
      64'h300000000000100,
      64'h21A010000,
      64'h800000003000000,
      64'h700000003000000,
      64'h300000003000000,
      64'hBE01000010000000,
      64'h300000000000000,
      64'h30746E696C632C76,
      64'h637369721B000000,
      64'hD00000003000000,
      64'h3030303030,
      64'h303240746E696C63,
      64'h100000002000000,
      64'h6B636F6C632D64,
      64'h657869661B000000,
      64'hC00000003000000,
      64'h6B636F6C635F,
      64'h73756263AB010000,
      64'hB00000003000000,
      64'h80F0FA023F000000,
      64'h400000003000000,
      64'h9E010000,
      64'h400000003000000,
      64'h6B636F6C635F,
      64'h7375626301000000,
      64'h2000000006C6F72,
      64'h746E6F6394010000,
      64'h800000003000000,
      64'h10000000100000,
      64'h1A01000008000000,
      64'h300000000000030,
      64'h303031406765722D,
      64'h737365726464612D,
      64'h746F6F6201000000,
      64'h8D01000000000000,
      64'h300000000737562,
      64'h2D656C706D697300,
      64'h636F732D64726179,
      64'h706968632C726162,
      64'h2D6263751B000000,
      64'h2000000003000000,
      64'h10000000F000000,
      64'h400000003000000,
      64'h100000000000000,
      64'h400000003000000,
      64'h636F7301000000,
      64'h200000001000000,
      64'h8501000004000000,
      64'h300000000000010,
      64'h801A010000,
      64'h800000003000000,
      64'h79726F6D656D,
      64'h9200000007000000,
      64'h300000000303030,
      64'h3030303038407972,
      64'h6F6D656D01000000,
      64'h200000002000000,
      64'h8501000004000000,
      64'h300000000000000,
      64'h64656C6261736964,
      64'h4E01000009000000,
      64'h300000000000100,
      64'h81A010000,
      64'h800000003000000,
      64'h79726F6D656D,
      64'h9200000007000000,
      64'h300000000003030,
      64'h3030303038407972,
      64'h6F6D656D01000000,
      64'h200000002000000,
      64'h200000003000000,
      64'h8501000004000000,
      64'h300000070010000,
      64'h3000000,
      64'h63746E692D75,
      64'h70632C7663736972,
      64'h1B0000000F000000,
      64'h300000001000000,
      64'h5F01000004000000,
      64'h300000000000000,
      64'h72656C6C6F72746E,
      64'h6F632D7470757272,
      64'h65746E6901000000,
      64'h5501000000000000,
      64'h300000050C30000,
      64'h2C00000004000000,
      64'h300000000000000,
      64'h79616B6F4E010000,
      64'h500000003000000,
      64'h80000003D010000,
      64'h400000003000000,
      64'h400000028010000,
      64'h400000003000000,
      64'h74656B636F72,
      64'h785F73627A5F6262,
      64'h7A5F61627A5F6866,
      64'h7A5F6D7068697A5F,
      64'h6965636E6566697A,
      64'h5F727363697A6263,
      64'h66616D6932337672,
      64'h1E01000037000000,
      64'h300000000000000,
      64'h1A01000004000000,
      64'h300000002000000,
      64'h100000009010000,
      64'h800000003000000,
      64'h323376732C76,
      64'h6373697200010000,
      64'hB00000003000000,
      64'h20000000F5000000,
      64'h400000003000000,
      64'h1000000EA000000,
      64'h400000003000000,
      64'h800000DD000000,
      64'h400000003000000,
      64'h40000000D0000000,
      64'h400000003000000,
      64'h40000000BD000000,
      64'h400000003000000,
      64'h10000009E000000,
      64'h400000003000000,
      64'h75706392000000,
      64'h400000003000000,
      64'h2000000087000000,
      64'h400000003000000,
      64'h10000007C000000,
      64'h400000003000000,
      64'h8000006F000000,
      64'h400000003000000,
      64'h4000000062000000,
      64'h400000003000000,
      64'h400000004F000000,
      64'h400000003000000,
      64'h76637369,
      64'h72003074656B636F,
      64'h722C657669666973,
      64'h1B00000015000000,
      64'h300000000000000,
      64'h3F00000004000000,
      64'h300000000000030,
      64'h4075706301000000,
      64'h50C300002C000000,
      64'h400000003000000,
      64'hF000000,
      64'h400000003000000,
      64'h100000000000000,
      64'h400000003000000,
      64'h73757063,
      64'h100000000000000,
      64'h6472617970696863,
      64'h2C7261622D626375,
      64'h2600000011000000,
      64'h300000000000000,
      64'h7665642D64726179,
      64'h706968632C726162,
      64'h2D6263751B000000,
      64'h1500000003000000,
      64'h10000000F000000,
      64'h400000003000000,
      64'h100000000000000,
      64'h400000003000000,
      64'h1000000,
      64'h0,
      64'h0,
      64'h1C090000F0010000,
      64'h10000000,
      64'h1100000028000000,
      64'h5409000038000000,
      64'h440B0000EDFE0DD0,
      64'h1330200073,
      64'h3006307308000613,
      64'h185859300000597,
      64'hF140257334151073,
      64'h5250300001537,
      64'h5A02300B505B3,
      64'h251513FE029EE3,
      64'h5A283F81FF06F,
      64'h0,
      64'h0,
      64'h2C0006F,
      64'hFE069AE3FFC62683,
      64'h46061300D62023,
      64'h10069300458613,
      64'h380006F00050463,
      64'hF1402573020005B7,
      64'hFFDFF06F,
      64'h1050007330052073,
      64'h3045107300800513,
      64'h3445307322200513,
      64'h3030107300028863,
      64'h12F2934122D293,
      64'h301022F330551073,
      64'h405051300000517};
  assign auto_in_a_ready = auto_in_d_ready;	// @[generators/rocket-chip/src/main/scala/devices/tilelink/BootROM.scala:41:9]
  assign auto_in_d_valid = auto_in_a_valid;	// @[generators/rocket-chip/src/main/scala/devices/tilelink/BootROM.scala:41:9]
  assign auto_in_d_bits_size = auto_in_a_bits_size;	// @[generators/rocket-chip/src/main/scala/devices/tilelink/BootROM.scala:41:9]
  assign auto_in_d_bits_source = auto_in_a_bits_source;	// @[generators/rocket-chip/src/main/scala/devices/tilelink/BootROM.scala:41:9]
  assign auto_in_d_bits_data = (|(auto_in_a_bits_address[15:12])) ? 64'h0 : _GEN[auto_in_a_bits_address[11:3]];	// @[generators/rocket-chip/src/main/scala/devices/tilelink/BootROM.scala:41:9, :55:34, :56:64, :57:{47,53}]
endmodule

