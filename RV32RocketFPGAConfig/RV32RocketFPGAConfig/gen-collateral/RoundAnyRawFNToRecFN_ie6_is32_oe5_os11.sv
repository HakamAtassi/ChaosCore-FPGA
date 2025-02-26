// Generated by CIRCT firtool-1.75.0
module RoundAnyRawFNToRecFN_ie6_is32_oe5_os11(	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:48:5]
  input         io_in_isZero,	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:58:16]
  input         io_in_sign,	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:58:16]
  input  [7:0]  io_in_sExp,	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:58:16]
  input  [32:0] io_in_sig,	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:58:16]
  input  [2:0]  io_roundingMode,	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:58:16]
  output [16:0] io_out,	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:58:16]
  output [4:0]  io_exceptionFlags	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:58:16]
);

  wire        roundingMode_near_even = io_roundingMode == 3'h0;	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:90:53]
  wire        roundMagUp = io_roundingMode == 3'h2 & io_in_sign | io_roundingMode == 3'h3 & ~io_in_sign;	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:92:53, :93:53, :98:{27,42,63,66}]
  wire [8:0]  sAdjustedExp = {io_in_sExp[7], io_in_sExp} - 9'h20;	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:110:24]
  wire [1:0]  _GEN = {io_in_sig[20], |(io_in_sig[19:0])};	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:116:66, :117:{26,60}, :164:56, :165:62, :166:36]
  wire        _overflow_roundMagUp_T = roundingMode_near_even | io_roundingMode == 3'h4;	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:90:53, :94:53, :169:38]
  wire [12:0] roundedSig = _overflow_roundMagUp_T & io_in_sig[20] | roundMagUp & (|_GEN) ? {1'h0, io_in_sig[32:21]} + 13'h1 & {12'hFFF, ~(roundingMode_near_even & io_in_sig[20] & ~(|(io_in_sig[19:0])))} : {1'h0, io_in_sig[32:22], io_in_sig[21] | io_roundingMode == 3'h6 & (|_GEN)};	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:90:53, :95:53, :98:42, :116:66, :117:{26,60}, :164:{40,56}, :165:62, :166:36, :169:{38,67}, :170:31, :171:29, :173:16, :174:{49,57}, :175:{21,25,49,64}, :176:30, :180:47, :181:42]
  wire [9:0]  sRoundedExp = {sAdjustedExp[8], sAdjustedExp} + {8'h0, roundedSig[12:11]};	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:110:24, :173:16, :185:{40,54}]
  wire        overflow = ~io_in_isZero & $signed(sRoundedExp[9:4]) > 6'sh2;	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:185:40, :196:{30,50}, :237:64, :238:32]
  wire        overflow_roundMagUp = _overflow_roundMagUp_T | roundMagUp;	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:98:42, :169:38, :243:60]
  wire        pegMaxFiniteMagOut = overflow & ~overflow_roundMagUp;	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:238:32, :243:60, :246:{39,42}]
  wire        _notNaN_isInfOut_T = overflow & overflow_roundMagUp;	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:238:32, :243:60, :248:45]
  assign io_out = {io_in_sign, sRoundedExp[5:0] & ~(io_in_isZero ? 6'h38 : 6'h0) & {1'h1, ~pegMaxFiniteMagOut, 4'hF} & {2'h3, ~_notNaN_isInfOut_T, 3'h7} | (pegMaxFiniteMagOut ? 6'h2F : 6'h0) | (_notNaN_isInfOut_T ? 6'h30 : 6'h0), (io_in_isZero ? 10'h0 : roundedSig[9:0]) | {10{pegMaxFiniteMagOut}}};	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:48:5, :173:16, :185:40, :187:37, :191:27, :246:39, :248:45, :252:24, :253:{14,18}, :260:17, :261:{14,18}, :264:17, :265:{14,18}, :272:15, :273:16, :276:15, :277:16, :280:12, :283:11, :284:13, :286:33]
  assign io_exceptionFlags = {2'h0, overflow, 1'h0, overflow | ~io_in_isZero & (|_GEN)};	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:48:5, :164:56, :165:62, :166:36, :237:64, :238:32, :240:{28,43}, :288:66]
endmodule

