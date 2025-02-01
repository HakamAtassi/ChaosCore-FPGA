// Generated by CIRCT firtool-1.75.0
module RoundRawFNToRecFN_e5_s11(	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:295:5]
  input         io_invalidExc,	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:299:16]
  input         io_infiniteExc,	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:299:16]
  input         io_in_isNaN,	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:299:16]
  input         io_in_isInf,	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:299:16]
  input         io_in_isZero,	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:299:16]
  input         io_in_sign,	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:299:16]
  input  [6:0]  io_in_sExp,	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:299:16]
  input  [13:0] io_in_sig,	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:299:16]
  input  [2:0]  io_roundingMode,	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:299:16]
  output [16:0] io_out,	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:299:16]
  output [4:0]  io_exceptionFlags	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:299:16]
);

  RoundAnyRawFNToRecFN_ie5_is13_oe5_os11 roundAnyRawFNToRecFN (	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:310:15]
    .io_invalidExc     (io_invalidExc),
    .io_infiniteExc    (io_infiniteExc),
    .io_in_isNaN       (io_in_isNaN),
    .io_in_isInf       (io_in_isInf),
    .io_in_isZero      (io_in_isZero),
    .io_in_sign        (io_in_sign),
    .io_in_sExp        (io_in_sExp),
    .io_in_sig         (io_in_sig),
    .io_roundingMode   (io_roundingMode),
    .io_out            (io_out),
    .io_exceptionFlags (io_exceptionFlags)
  );	// @[generators/hardfloat/hardfloat/src/main/scala/RoundAnyRawFNToRecFN.scala:310:15]
endmodule

