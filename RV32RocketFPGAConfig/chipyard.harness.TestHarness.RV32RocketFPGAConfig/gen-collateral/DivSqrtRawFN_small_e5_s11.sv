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
module DivSqrtRawFN_small_e5_s11(	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5]
  input         clock,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5]
  input         reset,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5]
  output        io_inReady,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:203:16]
  input         io_inValid,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:203:16]
  input         io_sqrtOp,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:203:16]
  input         io_a_isNaN,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:203:16]
  input         io_a_isInf,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:203:16]
  input         io_a_isZero,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:203:16]
  input         io_a_sign,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:203:16]
  input  [6:0]  io_a_sExp,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:203:16]
  input  [11:0] io_a_sig,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:203:16]
  input         io_b_isNaN,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:203:16]
  input         io_b_isInf,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:203:16]
  input         io_b_isZero,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:203:16]
  input         io_b_sign,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:203:16]
  input  [6:0]  io_b_sExp,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:203:16]
  input  [11:0] io_b_sig,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:203:16]
  input  [2:0]  io_roundingMode,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:203:16]
  output        io_rawOutValid_div,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:203:16]
  output        io_rawOutValid_sqrt,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:203:16]
  output [2:0]  io_roundingModeOut,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:203:16]
  output        io_invalidExc,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:203:16]
  output        io_infiniteExc,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:203:16]
  output        io_rawOut_isNaN,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:203:16]
  output        io_rawOut_isInf,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:203:16]
  output        io_rawOut_isZero,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:203:16]
  output        io_rawOut_sign,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:203:16]
  output [6:0]  io_rawOut_sExp,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:203:16]
  output [13:0] io_rawOut_sig	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:203:16]
);

  reg  [3:0]  cycleNum;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:224:33]
  reg         inReady;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:225:33]
  reg         rawOutValid;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:226:33]
  reg         sqrtOp_Z;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:228:29]
  reg         majorExc_Z;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:229:29]
  reg         isNaN_Z;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:231:29]
  reg         isInf_Z;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:232:29]
  reg         isZero_Z;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:233:29]
  reg         sign_Z;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:234:29]
  reg  [6:0]  sExp_Z;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:235:29]
  reg  [10:0] fractB_Z;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:236:29]
  reg  [2:0]  roundingMode_Z;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:237:29]
  reg  [12:0] rem_Z;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:243:29]
  reg         notZeroRem_Z;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:244:29]
  reg  [12:0] sigX_Z;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:245:29]
  wire        specialCaseA_S = io_a_isNaN | io_a_isInf | io_a_isZero;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:273:{39,55}]
  wire        normalCase_S = io_sqrtOp ? ~specialCaseA_S & ~io_a_sign : ~specialCaseA_S & ~(io_b_isNaN | io_b_isInf | io_b_isZero);	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:273:{39,55}, :274:{39,55}, :275:{28,45,48}, :276:{46,49}, :277:27]
  wire        skipCycle2 = cycleNum == 4'h3 & sigX_Z[12];	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:224:33, :245:29, :301:{31,39,48}]
  wire        notSigNaNIn_invalidExc_S_div = io_a_isZero & io_b_isZero | io_a_isInf & io_b_isInf;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:254:{24,42,59}]
  wire        notSigNaNIn_invalidExc_S_sqrt = ~io_a_isNaN & ~io_a_isZero & io_a_sign;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:256:{9,24,27,43}]
  wire [7:0]  sExpQuot_S_div = {io_a_sExp[6], io_a_sExp} + {{3{io_b_sExp[5]}}, ~(io_b_sExp[4:0])};	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:280:21, :281:{28,40,52}]
  wire [10:0] _fractB_Z_T_4 = inReady & ~io_sqrtOp ? {io_b_sig[9:0], 1'h0} : 11'h0;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5, :225:33, :271:33, :342:{16,25,73,90}]
  wire        _fractB_Z_T_10 = inReady & io_sqrtOp;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:225:33, :343:25]
  wire [15:0] _bitMask_T = 16'h1 << cycleNum;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:224:33, :360:23]
  wire        oddSqrt_S = io_sqrtOp & io_a_sExp[0];	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:291:48, :292:32]
  wire        entering = inReady & io_inValid;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:225:33, :297:28]
  wire        _sigX_Z_T_7 = inReady & oddSqrt_S;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:225:33, :292:32, :353:21]
  wire [13:0] rem = {1'h0, inReady & ~oddSqrt_S ? {io_a_sig, 1'h0} : 13'h0} | (_sigX_Z_T_7 ? {io_a_sig[10:9] - 2'h1, io_a_sig[8:0], 3'h0} : 14'h0) | (inReady ? 14'h0 : {rem_Z, 1'h0});	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5, :225:33, :243:29, :292:32, :313:56, :352:{12,21,24,47,57}, :353:{12,21}, :354:{16,27,56}, :355:27, :358:11, :359:{12,29}]
  wire [12:0] _trialTerm_T_3 = inReady & ~io_sqrtOp ? {io_b_sig, 1'h0} : 13'h0;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5, :225:33, :271:33, :362:{12,21,48}]
  wire [12:0] _trialTerm_T_9 = {_trialTerm_T_3[12], _trialTerm_T_3[11:0] | {inReady & io_sqrtOp & ~(io_a_sExp[0]), 11'h0}} | (_sigX_Z_T_7 ? 13'h1400 : 13'h0);	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:225:33, :291:{32,35,48}, :353:21, :362:{12,74}, :363:{12,21,74}, :364:12]
  wire [15:0] trialRem = {2'h0, rem} - {2'h0, {1'h0, _trialTerm_T_9[12], _trialTerm_T_9[11] | ~inReady & ~sqrtOp_Z, _trialTerm_T_9[10:0] | (inReady ? 11'h0 : fractB_Z)} | (~inReady & sqrtOp_Z ? {sigX_Z, 1'h0} : 14'h0)};	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5, :225:33, :228:29, :236:29, :245:29, :340:23, :352:57, :358:11, :363:74, :364:74, :365:{12,74}, :366:{23,26,74}, :367:{12,23,44}, :368:29]
  wire        newBit = $signed(trialRem) > -16'sh1;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:368:29, :369:23]
  wire        _GEN = entering | ~inReady;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:225:33, :297:28, :340:23, :390:20]
  wire [3:0]  _cycleNum_T_15 = {3'h0, entering & ~normalCase_S} | (entering & normalCase_S ? (io_sqrtOp ? (io_a_sExp[0] ? 4'hB : 4'hC) : 4'hD) : 4'h0) | (entering | skipCycle2 ? 4'h0 : cycleNum - 4'h1);	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:224:33, :277:27, :291:48, :297:28, :298:40, :301:39, :305:{26,28,57}, :306:16, :307:20, :308:24, :312:15, :313:{16,56}]
  wire [12:0] _sigX_Z_T_3 = inReady & ~io_sqrtOp ? {newBit, 12'h0} : 13'h0;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:225:33, :271:33, :369:23, :394:{16,25,50}]
  wire [11:0] _GEN_0 = _sigX_Z_T_3[11:0] | {inReady & io_sqrtOp, 11'h0};	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:225:33, :394:{16,74}, :395:{16,25}]
  always @(posedge clock) begin	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5]
    if (reset) begin	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5]
      cycleNum <= 4'h0;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:224:33]
      inReady <= 1'h1;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5, :225:33]
      rawOutValid <= 1'h0;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5, :226:33]
    end
    else if ((|cycleNum) | entering) begin	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:224:33, :296:25, :297:28, :303:18]
      cycleNum <= {_cycleNum_T_15[3:1], _cycleNum_T_15[0] | skipCycle2};	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:224:33, :301:39, :305:57, :312:15, :313:95]
      inReady <= entering & ~normalCase_S | ~entering & ~skipCycle2 & cycleNum - 4'h1 < 4'h2 | skipCycle2;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:224:33, :225:33, :277:27, :297:28, :301:39, :305:{26,28}, :312:15, :313:{16,17,28,31,56,95}, :317:38]
      rawOutValid <= entering & ~normalCase_S | ~entering & ~skipCycle2 & cycleNum - 4'h1 == 4'h1 | skipCycle2;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:224:33, :226:33, :277:27, :297:28, :301:39, :305:{26,28}, :312:15, :313:{16,17,28,31,56,95}, :318:42]
    end
    if (entering) begin	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:297:28]
      sqrtOp_Z <= io_sqrtOp;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:228:29]
      majorExc_Z <= io_sqrtOp ? io_a_isNaN & ~(io_a_sig[9]) | notSigNaNIn_invalidExc_S_sqrt : io_a_isNaN & ~(io_a_sig[9]) | io_b_isNaN & ~(io_b_sig[9]) | notSigNaNIn_invalidExc_S_div | ~io_a_isNaN & ~io_a_isInf & io_b_isZero;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:229:29, :254:42, :256:{9,24,43}, :258:12, :259:38, :260:{38,66}, :261:46, :262:{33,36,51}, generators/hardfloat/hardfloat/src/main/scala/common.scala:82:{46,49,56}]
      isNaN_Z <= io_sqrtOp ? io_a_isNaN | notSigNaNIn_invalidExc_S_sqrt : io_a_isNaN | io_b_isNaN | notSigNaNIn_invalidExc_S_div;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:231:29, :254:42, :256:{24,43}, :265:12, :266:26, :267:{26,42}]
      isInf_Z <= ~io_sqrtOp & io_b_isZero | io_a_isInf;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:232:29, :269:23]
      isZero_Z <= ~io_sqrtOp & io_b_isInf | io_a_isZero;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:233:29, :269:23, :270:23]
      sign_Z <= io_a_sign ^ ~io_sqrtOp & io_b_sign;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:234:29, :271:{30,33,45}]
      sExp_Z <= io_sqrtOp ? {io_a_sExp[6], io_a_sExp[6:1]} + 7'h10 : {$signed(sExpQuot_S_div) > 8'sh37 ? 4'h6 : sExpQuot_S_div[6:3], sExpQuot_S_div[2:0]};	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:235:29, :280:21, :284:{12,16,48}, :286:31, :288:27, :334:16, :335:{29,34}]
      roundingMode_Z <= io_roundingMode;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:237:29]
    end
    if (entering | ~inReady & sqrtOp_Z)	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:225:33, :228:29, :297:28, :340:{20,23,33}]
      fractB_Z <= {_fractB_Z_T_4[10] | _fractB_Z_T_10 & ~(io_a_sExp[0]), _fractB_Z_T_4[9:0] | {_fractB_Z_T_10 & io_a_sExp[0], 9'h0} | (inReady ? 10'h0 : fractB_Z[10:1])};	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:225:33, :236:29, :291:48, :342:{16,100}, :343:{16,25,38,100}, :344:{38,41}, :345:100, :346:{16,71}]
    if (_GEN) begin	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:390:20]
      rem_Z <= newBit ? trialRem[12:0] : rem[12:0];	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:243:29, :352:57, :358:11, :368:29, :369:23, :371:24]
      sigX_Z <= {_sigX_Z_T_3[12], _GEN_0[11], _GEN_0[10:0] | (_sigX_Z_T_7 ? {newBit, 10'h0} : 11'h0)} | (inReady ? 13'h0 : sigX_Z) | (~inReady & newBit ? _bitMask_T[14:2] : 13'h0);	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:225:33, :245:29, :340:23, :353:21, :360:{23,34}, :369:23, :394:{16,74}, :395:74, :396:{16,50,74}, :397:{16,74}, :398:{16,27}]
    end
    if (_GEN & (inReady | newBit))	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:225:33, :244:29, :369:23, :380:{31,40}, :390:{20,34}, :391:22]
      notZeroRem_Z <= |trialRem;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:244:29, :368:29, :380:60]
  end // always @(posedge)
  `ifdef ENABLE_INITIAL_REG_	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5]
    `ifdef FIRRTL_BEFORE_INITIAL	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5]
      `FIRRTL_BEFORE_INITIAL	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5]
    `endif // FIRRTL_BEFORE_INITIAL
    logic [31:0] _RANDOM[0:1];	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5]
    initial begin	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5]
      `ifdef INIT_RANDOM_PROLOG_	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5]
        `INIT_RANDOM_PROLOG_	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5]
      `endif // INIT_RANDOM_PROLOG_
      `ifdef RANDOMIZE_REG_INIT	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5]
        for (logic [1:0] i = 2'h0; i < 2'h2; i += 2'h1) begin
          _RANDOM[i[0]] = `RANDOM;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5]
        end	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5]
        cycleNum = _RANDOM[1'h0][3:0];	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5, :224:33]
        inReady = _RANDOM[1'h0][4];	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5, :224:33, :225:33]
        rawOutValid = _RANDOM[1'h0][5];	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5, :224:33, :226:33]
        sqrtOp_Z = _RANDOM[1'h0][6];	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5, :224:33, :228:29]
        majorExc_Z = _RANDOM[1'h0][7];	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5, :224:33, :229:29]
        isNaN_Z = _RANDOM[1'h0][8];	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5, :224:33, :231:29]
        isInf_Z = _RANDOM[1'h0][9];	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5, :224:33, :232:29]
        isZero_Z = _RANDOM[1'h0][10];	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5, :224:33, :233:29]
        sign_Z = _RANDOM[1'h0][11];	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5, :224:33, :234:29]
        sExp_Z = _RANDOM[1'h0][18:12];	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5, :224:33, :235:29]
        fractB_Z = _RANDOM[1'h0][29:19];	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5, :224:33, :236:29]
        roundingMode_Z = {_RANDOM[1'h0][31:30], _RANDOM[1'h1][0]};	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5, :224:33, :237:29]
        rem_Z = _RANDOM[1'h1][13:1];	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5, :237:29, :243:29]
        notZeroRem_Z = _RANDOM[1'h1][14];	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5, :237:29, :244:29]
        sigX_Z = _RANDOM[1'h1][27:15];	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5, :237:29, :245:29]
      `endif // RANDOMIZE_REG_INIT
    end // initial
    `ifdef FIRRTL_AFTER_INITIAL	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5]
      `FIRRTL_AFTER_INITIAL	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5]
    `endif // FIRRTL_AFTER_INITIAL
  `endif // ENABLE_INITIAL_REG_
  assign io_inReady = inReady;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5, :225:33]
  assign io_rawOutValid_div = rawOutValid & ~sqrtOp_Z;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5, :226:33, :228:29, :366:26, :404:40]
  assign io_rawOutValid_sqrt = rawOutValid & sqrtOp_Z;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5, :226:33, :228:29, :405:40]
  assign io_roundingModeOut = roundingMode_Z;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5, :237:29]
  assign io_invalidExc = majorExc_Z & isNaN_Z;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5, :229:29, :231:29, :407:36]
  assign io_infiniteExc = majorExc_Z & ~isNaN_Z;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5, :229:29, :231:29, :408:{36,39}]
  assign io_rawOut_isNaN = isNaN_Z;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5, :231:29]
  assign io_rawOut_isInf = isInf_Z;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5, :232:29]
  assign io_rawOut_isZero = isZero_Z;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5, :233:29]
  assign io_rawOut_sign = sign_Z;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5, :234:29]
  assign io_rawOut_sExp = sExp_Z;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5, :235:29]
  assign io_rawOut_sig = {sigX_Z, notZeroRem_Z};	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:199:5, :244:29, :245:29, :414:35]
endmodule

