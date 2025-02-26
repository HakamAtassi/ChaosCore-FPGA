// Generated by CIRCT firtool-1.75.0

// Users can define 'STOP_COND' to add an extra gate to stop conditions.
`ifndef STOP_COND_
  `ifdef STOP_COND
    `define STOP_COND_ (`STOP_COND)
  `else  // STOP_COND
    `define STOP_COND_ 1
  `endif // STOP_COND
`endif // not def STOP_COND_

// Users can define 'ASSERT_VERBOSE_COND' to add an extra gate to assert error printing.
`ifndef ASSERT_VERBOSE_COND_
  `ifdef ASSERT_VERBOSE_COND
    `define ASSERT_VERBOSE_COND_ (`ASSERT_VERBOSE_COND)
  `else  // ASSERT_VERBOSE_COND
    `define ASSERT_VERBOSE_COND_ 1
  `endif // ASSERT_VERBOSE_COND
`endif // not def ASSERT_VERBOSE_COND_
module AXI4UserYanker(	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9]
  input         clock,	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9]
  input         reset,	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9]
  output        auto_in_aw_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_in_aw_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [3:0]  auto_in_aw_bits_id,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [31:0] auto_in_aw_bits_addr,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [7:0]  auto_in_aw_bits_len,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]  auto_in_aw_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [1:0]  auto_in_aw_bits_burst,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_in_aw_bits_lock,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [3:0]  auto_in_aw_bits_cache,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]  auto_in_aw_bits_prot,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [3:0]  auto_in_aw_bits_qos,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [3:0]  auto_in_aw_bits_echo_tl_state_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [1:0]  auto_in_aw_bits_echo_tl_state_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_in_w_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_in_w_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [63:0] auto_in_w_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [7:0]  auto_in_w_bits_strb,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_in_w_bits_last,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_in_b_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_in_b_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [3:0]  auto_in_b_bits_id,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [1:0]  auto_in_b_bits_resp,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [3:0]  auto_in_b_bits_echo_tl_state_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [1:0]  auto_in_b_bits_echo_tl_state_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_in_ar_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_in_ar_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [3:0]  auto_in_ar_bits_id,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [31:0] auto_in_ar_bits_addr,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [7:0]  auto_in_ar_bits_len,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]  auto_in_ar_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [1:0]  auto_in_ar_bits_burst,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_in_ar_bits_lock,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [3:0]  auto_in_ar_bits_cache,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [2:0]  auto_in_ar_bits_prot,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [3:0]  auto_in_ar_bits_qos,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [3:0]  auto_in_ar_bits_echo_tl_state_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [1:0]  auto_in_ar_bits_echo_tl_state_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_in_r_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_in_r_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [3:0]  auto_in_r_bits_id,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [63:0] auto_in_r_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [1:0]  auto_in_r_bits_resp,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [3:0]  auto_in_r_bits_echo_tl_state_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [1:0]  auto_in_r_bits_echo_tl_state_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_in_r_bits_last,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_out_aw_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_out_aw_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [3:0]  auto_out_aw_bits_id,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [31:0] auto_out_aw_bits_addr,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [7:0]  auto_out_aw_bits_len,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [2:0]  auto_out_aw_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [1:0]  auto_out_aw_bits_burst,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_out_aw_bits_lock,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [3:0]  auto_out_aw_bits_cache,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [2:0]  auto_out_aw_bits_prot,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [3:0]  auto_out_aw_bits_qos,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_out_w_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_out_w_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [63:0] auto_out_w_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [7:0]  auto_out_w_bits_strb,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_out_w_bits_last,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_out_b_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_out_b_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [3:0]  auto_out_b_bits_id,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [1:0]  auto_out_b_bits_resp,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_out_ar_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_out_ar_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [3:0]  auto_out_ar_bits_id,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [31:0] auto_out_ar_bits_addr,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [7:0]  auto_out_ar_bits_len,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [2:0]  auto_out_ar_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [1:0]  auto_out_ar_bits_burst,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_out_ar_bits_lock,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [3:0]  auto_out_ar_bits_cache,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [2:0]  auto_out_ar_bits_prot,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output [3:0]  auto_out_ar_bits_qos,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  output        auto_out_r_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_out_r_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [3:0]  auto_out_r_bits_id,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [63:0] auto_out_r_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input  [1:0]  auto_out_r_bits_resp,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
  input         auto_out_r_bits_last	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:107:25]
);

  wire             _Queue1_BundleMap_5_io_enq_ready;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17]
  wire             _Queue1_BundleMap_5_io_deq_valid;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17]
  wire [3:0]       _Queue1_BundleMap_5_io_deq_bits_tl_state_size;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17]
  wire [1:0]       _Queue1_BundleMap_5_io_deq_bits_tl_state_source;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17]
  wire             _Queue1_BundleMap_4_io_enq_ready;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17]
  wire             _Queue1_BundleMap_4_io_deq_valid;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17]
  wire [3:0]       _Queue1_BundleMap_4_io_deq_bits_tl_state_size;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17]
  wire [1:0]       _Queue1_BundleMap_4_io_deq_bits_tl_state_source;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17]
  wire             _Queue1_BundleMap_3_io_enq_ready;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17]
  wire             _Queue1_BundleMap_3_io_deq_valid;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17]
  wire [3:0]       _Queue1_BundleMap_3_io_deq_bits_tl_state_size;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17]
  wire [1:0]       _Queue1_BundleMap_3_io_deq_bits_tl_state_source;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17]
  wire             _Queue1_BundleMap_2_io_enq_ready;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17]
  wire             _Queue1_BundleMap_2_io_deq_valid;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17]
  wire [3:0]       _Queue1_BundleMap_2_io_deq_bits_tl_state_size;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17]
  wire [1:0]       _Queue1_BundleMap_2_io_deq_bits_tl_state_source;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17]
  wire             _Queue1_BundleMap_1_io_enq_ready;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17]
  wire             _Queue1_BundleMap_1_io_deq_valid;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17]
  wire [3:0]       _Queue1_BundleMap_1_io_deq_bits_tl_state_size;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17]
  wire [1:0]       _Queue1_BundleMap_1_io_deq_bits_tl_state_source;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17]
  wire             _Queue1_BundleMap_io_enq_ready;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17]
  wire             _Queue1_BundleMap_io_deq_valid;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17]
  wire [3:0]       _Queue1_BundleMap_io_deq_bits_tl_state_size;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17]
  wire [1:0]       _Queue1_BundleMap_io_deq_bits_tl_state_source;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17]
  wire [15:0]      _GEN = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {_Queue1_BundleMap_2_io_enq_ready}, {_Queue1_BundleMap_1_io_enq_ready}, {_Queue1_BundleMap_io_enq_ready}};	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17, :60:36]
  wire [15:0][3:0] _GEN_0 = {{4'h0}, {4'h0}, {4'h0}, {4'h0}, {4'h0}, {4'h0}, {4'h0}, {4'h0}, {4'h0}, {4'h0}, {4'h0}, {4'h0}, {4'h0}, {_Queue1_BundleMap_2_io_deq_bits_tl_state_size}, {_Queue1_BundleMap_1_io_deq_bits_tl_state_size}, {_Queue1_BundleMap_io_deq_bits_tl_state_size}};	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17, :73:22]
  wire [15:0][1:0] _GEN_1 = {{2'h0}, {2'h0}, {2'h0}, {2'h0}, {2'h0}, {2'h0}, {2'h0}, {2'h0}, {2'h0}, {2'h0}, {2'h0}, {2'h0}, {2'h0}, {_Queue1_BundleMap_2_io_deq_bits_tl_state_source}, {_Queue1_BundleMap_1_io_deq_bits_tl_state_source}, {_Queue1_BundleMap_io_deq_bits_tl_state_source}};	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17, :73:22]
  wire             _rqueues_15_deq_ready_T = auto_out_r_valid & auto_in_r_ready;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:78:37]
  wire             _rqueues_15_enq_valid_T = auto_in_ar_valid & auto_out_ar_ready;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:81:37]
  wire [15:0]      _GEN_2 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {_Queue1_BundleMap_5_io_enq_ready}, {_Queue1_BundleMap_4_io_enq_ready}, {_Queue1_BundleMap_3_io_enq_ready}};	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17, :89:36]
  `ifndef SYNTHESIS	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:69:14]
    wire [15:0] _GEN_3 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {_Queue1_BundleMap_2_io_deq_valid}, {_Queue1_BundleMap_1_io_deq_valid}, {_Queue1_BundleMap_io_deq_valid}};	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17, :69:28]
    wire [15:0] _GEN_4 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {_Queue1_BundleMap_5_io_deq_valid}, {_Queue1_BundleMap_4_io_deq_valid}, {_Queue1_BundleMap_3_io_deq_valid}};	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17, :98:28]
    always @(posedge clock) begin	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:69:14]
      if (~reset & ~(~auto_out_r_valid | _GEN_3[auto_out_r_bits_id])) begin	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:69:{14,15,28}]
        if (`ASSERT_VERBOSE_COND_)	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:69:14]
          $error("Assertion failed\n    at UserYanker.scala:69 assert (!out.r.valid || r_valid) // Q must be ready faster than the response\n");	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:69:14]
        if (`STOP_COND_)	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:69:14]
          $fatal;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:69:14]
      end
      if (~reset & ~(~auto_out_b_valid | _GEN_4[auto_out_b_bits_id])) begin	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:69:14, :98:{14,15,28}]
        if (`ASSERT_VERBOSE_COND_)	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:98:14]
          $error("Assertion failed\n    at UserYanker.scala:98 assert (!out.b.valid || b_valid) // Q must be ready faster than the response\n");	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:98:14]
        if (`STOP_COND_)	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:98:14]
          $fatal;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:98:14]
      end
    end // always @(posedge)
  `endif // not def SYNTHESIS
  wire [15:0][3:0] _GEN_5 = {{4'h0}, {4'h0}, {4'h0}, {4'h0}, {4'h0}, {4'h0}, {4'h0}, {4'h0}, {4'h0}, {4'h0}, {4'h0}, {4'h0}, {4'h0}, {_Queue1_BundleMap_5_io_deq_bits_tl_state_size}, {_Queue1_BundleMap_4_io_deq_bits_tl_state_size}, {_Queue1_BundleMap_3_io_deq_bits_tl_state_size}};	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17, :102:22]
  wire [15:0][1:0] _GEN_6 = {{2'h0}, {2'h0}, {2'h0}, {2'h0}, {2'h0}, {2'h0}, {2'h0}, {2'h0}, {2'h0}, {2'h0}, {2'h0}, {2'h0}, {2'h0}, {_Queue1_BundleMap_5_io_deq_bits_tl_state_source}, {_Queue1_BundleMap_4_io_deq_bits_tl_state_source}, {_Queue1_BundleMap_3_io_deq_bits_tl_state_source}};	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17, :102:22]
  wire             _wqueues_15_deq_ready_T = auto_out_b_valid & auto_in_b_ready;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:107:37]
  wire             _wqueues_15_enq_valid_T = auto_in_aw_valid & auto_out_aw_ready;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:110:37]
  Queue1_BundleMap Queue1_BundleMap (	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17]
    .clock                       (clock),
    .reset                       (reset),
    .io_enq_ready                (_Queue1_BundleMap_io_enq_ready),
    .io_enq_valid                (_rqueues_15_enq_valid_T & auto_in_ar_bits_id == 4'h0),	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:75:55, :81:{37,53}]
    .io_enq_bits_tl_state_size   (auto_in_ar_bits_echo_tl_state_size),
    .io_enq_bits_tl_state_source (auto_in_ar_bits_echo_tl_state_source),
    .io_deq_ready                (_rqueues_15_deq_ready_T & auto_out_r_bits_id == 4'h0 & auto_out_r_bits_last),	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:76:55, :78:{37,53,58}]
    .io_deq_valid                (_Queue1_BundleMap_io_deq_valid),
    .io_deq_bits_tl_state_size   (_Queue1_BundleMap_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source (_Queue1_BundleMap_io_deq_bits_tl_state_source)
  );	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17]
  Queue1_BundleMap Queue1_BundleMap_1 (	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17]
    .clock                       (clock),
    .reset                       (reset),
    .io_enq_ready                (_Queue1_BundleMap_1_io_enq_ready),
    .io_enq_valid                (_rqueues_15_enq_valid_T & auto_in_ar_bits_id == 4'h1),	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:75:55, :81:{37,53}]
    .io_enq_bits_tl_state_size   (auto_in_ar_bits_echo_tl_state_size),
    .io_enq_bits_tl_state_source (auto_in_ar_bits_echo_tl_state_source),
    .io_deq_ready                (_rqueues_15_deq_ready_T & auto_out_r_bits_id == 4'h1 & auto_out_r_bits_last),	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:76:55, :78:{37,53,58}]
    .io_deq_valid                (_Queue1_BundleMap_1_io_deq_valid),
    .io_deq_bits_tl_state_size   (_Queue1_BundleMap_1_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source (_Queue1_BundleMap_1_io_deq_bits_tl_state_source)
  );	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17]
  Queue1_BundleMap Queue1_BundleMap_2 (	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17]
    .clock                       (clock),
    .reset                       (reset),
    .io_enq_ready                (_Queue1_BundleMap_2_io_enq_ready),
    .io_enq_valid                (_rqueues_15_enq_valid_T & auto_in_ar_bits_id == 4'h2),	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:75:55, :81:{37,53}]
    .io_enq_bits_tl_state_size   (auto_in_ar_bits_echo_tl_state_size),
    .io_enq_bits_tl_state_source (auto_in_ar_bits_echo_tl_state_source),
    .io_deq_ready                (_rqueues_15_deq_ready_T & auto_out_r_bits_id == 4'h2 & auto_out_r_bits_last),	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:76:55, :78:{37,53,58}]
    .io_deq_valid                (_Queue1_BundleMap_2_io_deq_valid),
    .io_deq_bits_tl_state_size   (_Queue1_BundleMap_2_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source (_Queue1_BundleMap_2_io_deq_bits_tl_state_source)
  );	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17]
  Queue1_BundleMap Queue1_BundleMap_3 (	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17]
    .clock                       (clock),
    .reset                       (reset),
    .io_enq_ready                (_Queue1_BundleMap_3_io_enq_ready),
    .io_enq_valid                (_wqueues_15_enq_valid_T & auto_in_aw_bits_id == 4'h0),	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:104:55, :110:{37,53}]
    .io_enq_bits_tl_state_size   (auto_in_aw_bits_echo_tl_state_size),
    .io_enq_bits_tl_state_source (auto_in_aw_bits_echo_tl_state_source),
    .io_deq_ready                (_wqueues_15_deq_ready_T & auto_out_b_bits_id == 4'h0),	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:105:55, :107:{37,53}]
    .io_deq_valid                (_Queue1_BundleMap_3_io_deq_valid),
    .io_deq_bits_tl_state_size   (_Queue1_BundleMap_3_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source (_Queue1_BundleMap_3_io_deq_bits_tl_state_source)
  );	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17]
  Queue1_BundleMap Queue1_BundleMap_4 (	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17]
    .clock                       (clock),
    .reset                       (reset),
    .io_enq_ready                (_Queue1_BundleMap_4_io_enq_ready),
    .io_enq_valid                (_wqueues_15_enq_valid_T & auto_in_aw_bits_id == 4'h1),	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:104:55, :110:{37,53}]
    .io_enq_bits_tl_state_size   (auto_in_aw_bits_echo_tl_state_size),
    .io_enq_bits_tl_state_source (auto_in_aw_bits_echo_tl_state_source),
    .io_deq_ready                (_wqueues_15_deq_ready_T & auto_out_b_bits_id == 4'h1),	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:105:55, :107:{37,53}]
    .io_deq_valid                (_Queue1_BundleMap_4_io_deq_valid),
    .io_deq_bits_tl_state_size   (_Queue1_BundleMap_4_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source (_Queue1_BundleMap_4_io_deq_bits_tl_state_source)
  );	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17]
  Queue1_BundleMap Queue1_BundleMap_5 (	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17]
    .clock                       (clock),
    .reset                       (reset),
    .io_enq_ready                (_Queue1_BundleMap_5_io_enq_ready),
    .io_enq_valid                (_wqueues_15_enq_valid_T & auto_in_aw_bits_id == 4'h2),	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:104:55, :110:{37,53}]
    .io_enq_bits_tl_state_size   (auto_in_aw_bits_echo_tl_state_size),
    .io_enq_bits_tl_state_source (auto_in_aw_bits_echo_tl_state_source),
    .io_deq_ready                (_wqueues_15_deq_ready_T & auto_out_b_bits_id == 4'h2),	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:105:55, :107:{37,53}]
    .io_deq_valid                (_Queue1_BundleMap_5_io_deq_valid),
    .io_deq_bits_tl_state_size   (_Queue1_BundleMap_5_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source (_Queue1_BundleMap_5_io_deq_bits_tl_state_source)
  );	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:51:17]
  assign auto_in_aw_ready = auto_out_aw_ready & _GEN_2[auto_in_aw_bits_id];	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9, :89:36]
  assign auto_in_w_ready = auto_out_w_ready;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9]
  assign auto_in_b_valid = auto_out_b_valid;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9]
  assign auto_in_b_bits_id = auto_out_b_bits_id;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9]
  assign auto_in_b_bits_resp = auto_out_b_bits_resp;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9]
  assign auto_in_b_bits_echo_tl_state_size = _GEN_5[auto_out_b_bits_id];	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9, :102:22]
  assign auto_in_b_bits_echo_tl_state_source = _GEN_6[auto_out_b_bits_id];	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9, :102:22]
  assign auto_in_ar_ready = auto_out_ar_ready & _GEN[auto_in_ar_bits_id];	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9, :60:36]
  assign auto_in_r_valid = auto_out_r_valid;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9]
  assign auto_in_r_bits_id = auto_out_r_bits_id;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9]
  assign auto_in_r_bits_data = auto_out_r_bits_data;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9]
  assign auto_in_r_bits_resp = auto_out_r_bits_resp;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9]
  assign auto_in_r_bits_echo_tl_state_size = _GEN_0[auto_out_r_bits_id];	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9, :73:22]
  assign auto_in_r_bits_echo_tl_state_source = _GEN_1[auto_out_r_bits_id];	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9, :73:22]
  assign auto_in_r_bits_last = auto_out_r_bits_last;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9]
  assign auto_out_aw_valid = auto_in_aw_valid & _GEN_2[auto_in_aw_bits_id];	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9, :89:36, :90:36]
  assign auto_out_aw_bits_id = auto_in_aw_bits_id;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9]
  assign auto_out_aw_bits_addr = auto_in_aw_bits_addr;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9]
  assign auto_out_aw_bits_len = auto_in_aw_bits_len;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9]
  assign auto_out_aw_bits_size = auto_in_aw_bits_size;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9]
  assign auto_out_aw_bits_burst = auto_in_aw_bits_burst;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9]
  assign auto_out_aw_bits_lock = auto_in_aw_bits_lock;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9]
  assign auto_out_aw_bits_cache = auto_in_aw_bits_cache;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9]
  assign auto_out_aw_bits_prot = auto_in_aw_bits_prot;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9]
  assign auto_out_aw_bits_qos = auto_in_aw_bits_qos;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9]
  assign auto_out_w_valid = auto_in_w_valid;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9]
  assign auto_out_w_bits_data = auto_in_w_bits_data;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9]
  assign auto_out_w_bits_strb = auto_in_w_bits_strb;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9]
  assign auto_out_w_bits_last = auto_in_w_bits_last;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9]
  assign auto_out_b_ready = auto_in_b_ready;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9]
  assign auto_out_ar_valid = auto_in_ar_valid & _GEN[auto_in_ar_bits_id];	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9, :60:36, :61:36]
  assign auto_out_ar_bits_id = auto_in_ar_bits_id;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9]
  assign auto_out_ar_bits_addr = auto_in_ar_bits_addr;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9]
  assign auto_out_ar_bits_len = auto_in_ar_bits_len;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9]
  assign auto_out_ar_bits_size = auto_in_ar_bits_size;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9]
  assign auto_out_ar_bits_burst = auto_in_ar_bits_burst;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9]
  assign auto_out_ar_bits_lock = auto_in_ar_bits_lock;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9]
  assign auto_out_ar_bits_cache = auto_in_ar_bits_cache;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9]
  assign auto_out_ar_bits_prot = auto_in_ar_bits_prot;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9]
  assign auto_out_ar_bits_qos = auto_in_ar_bits_qos;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9]
  assign auto_out_r_ready = auto_in_r_ready;	// @[generators/rocket-chip/src/main/scala/amba/axi4/UserYanker.scala:36:9]
endmodule

