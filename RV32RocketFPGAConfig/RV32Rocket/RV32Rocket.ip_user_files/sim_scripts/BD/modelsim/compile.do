vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_19
vlib modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_19
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/lib_cdc_v1_0_3
vlib modelsim_lib/msim/interrupt_control_v3_1_5
vlib modelsim_lib/msim/axi_gpio_v2_0_35
vlib modelsim_lib/msim/xlconstant_v1_1_9
vlib modelsim_lib/msim/proc_sys_reset_v5_0_16
vlib modelsim_lib/msim/smartconnect_v1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_33
vlib modelsim_lib/msim/axi_bram_ctrl_v4_1_11
vlib modelsim_lib/msim/blk_mem_gen_v8_4_9

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_19 modelsim_lib/msim/axi_vip_v1_1_19
vmap zynq_ultra_ps_e_vip_v1_0_19 modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_19
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_3 modelsim_lib/msim/lib_cdc_v1_0_3
vmap interrupt_control_v3_1_5 modelsim_lib/msim/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_35 modelsim_lib/msim/axi_gpio_v2_0_35
vmap xlconstant_v1_1_9 modelsim_lib/msim/xlconstant_v1_1_9
vmap proc_sys_reset_v5_0_16 modelsim_lib/msim/proc_sys_reset_v5_0_16
vmap smartconnect_v1_0 modelsim_lib/msim/smartconnect_v1_0
vmap axi_register_slice_v2_1_33 modelsim_lib/msim/axi_register_slice_v2_1_33
vmap axi_bram_ctrl_v4_1_11 modelsim_lib/msim/axi_bram_ctrl_v4_1_11
vmap blk_mem_gen_v8_4_9 modelsim_lib/msim/blk_mem_gen_v8_4_9

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/ec67/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/6f8f/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/tools/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/ec67/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/6f8f/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_19 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/ec67/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/6f8f/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/8c45/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_19 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/ec67/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/6f8f/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/6f8f/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/ec67/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/6f8f/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/BD/ip/BD_zynq_ultra_ps_e_0_0/sim/BD_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
"../../../bd/BD/ip/BD_core_0/sim/BD_core_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93  \
"../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_3 -64 -93  \
"../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_5 -64 -93  \
"../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_35 -64 -93  \
"../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/6718/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/BD/ip/BD_axi_gpio_0_0/sim/BD_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/ec67/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/6f8f/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/BD/ip/BD_ctrl0_0_0/sim/BD_ctrl0_0_0.v" \
"../../../bd/BD/ip/BD_blink_0_0/sim/BD_blink_0_0.v" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/sim/bd_9ccc.v" \

vlog -work xlconstant_v1_1_9 -64 -incr -mfcu  "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/ec67/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/6f8f/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/ec67/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/6f8f/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_0/sim/bd_9ccc_one_0.v" \

vcom -work proc_sys_reset_v5_0_16 -64 -93  \
"../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_1/sim/bd_9ccc_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/ec67/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/6f8f/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/ec67/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/6f8f/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_2/sim/bd_9ccc_arinsw_0.sv" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_3/sim/bd_9ccc_rinsw_0.sv" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_4/sim/bd_9ccc_awinsw_0.sv" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_5/sim/bd_9ccc_winsw_0.sv" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_6/sim/bd_9ccc_binsw_0.sv" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_7/sim/bd_9ccc_aroutsw_0.sv" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_8/sim/bd_9ccc_routsw_0.sv" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_9/sim/bd_9ccc_awoutsw_0.sv" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_10/sim/bd_9ccc_woutsw_0.sv" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_11/sim/bd_9ccc_boutsw_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/ec67/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/6f8f/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/0127/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/ec67/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/6f8f/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_12/sim/bd_9ccc_arni_0.sv" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_13/sim/bd_9ccc_rni_0.sv" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_14/sim/bd_9ccc_awni_0.sv" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_15/sim/bd_9ccc_wni_0.sv" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_16/sim/bd_9ccc_bni_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/ec67/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/6f8f/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/f49a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/ec67/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/6f8f/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_17/sim/bd_9ccc_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/ec67/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/6f8f/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/ec67/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/6f8f/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_18/sim/bd_9ccc_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/ec67/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/6f8f/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/63ed/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/ec67/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/6f8f/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_19/sim/bd_9ccc_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/ec67/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/6f8f/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/ec67/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/6f8f/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_20/sim/bd_9ccc_s00a2s_0.sv" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_21/sim/bd_9ccc_sarn_0.sv" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_22/sim/bd_9ccc_srn_0.sv" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_23/sim/bd_9ccc_sawn_0.sv" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_24/sim/bd_9ccc_swn_0.sv" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_25/sim/bd_9ccc_sbn_0.sv" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_26/sim/bd_9ccc_s01mmu_0.sv" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_27/sim/bd_9ccc_s01tr_0.sv" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_28/sim/bd_9ccc_s01sic_0.sv" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_29/sim/bd_9ccc_s01a2s_0.sv" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_30/sim/bd_9ccc_sarn_1.sv" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_31/sim/bd_9ccc_srn_1.sv" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_32/sim/bd_9ccc_sawn_1.sv" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_33/sim/bd_9ccc_swn_1.sv" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_34/sim/bd_9ccc_sbn_1.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/ec67/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/6f8f/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/ec67/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/6f8f/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_35/sim/bd_9ccc_m00s2a_0.sv" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_36/sim/bd_9ccc_m00arn_0.sv" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_37/sim/bd_9ccc_m00rn_0.sv" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_38/sim/bd_9ccc_m00awn_0.sv" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_39/sim/bd_9ccc_m00wn_0.sv" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_40/sim/bd_9ccc_m00bn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/ec67/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/6f8f/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/37bc/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/ec67/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/6f8f/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/BD/ip/BD_axi_smc_1/bd_0/ip/ip_41/sim/bd_9ccc_m00e_0.sv" \

vlog -work axi_register_slice_v2_1_33 -64 -incr -mfcu  "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/ec67/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/6f8f/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/3ee4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/ec67/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/6f8f/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/BD/ip/BD_axi_smc_1/sim/BD_axi_smc_1.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/BD/ip/BD_rst_ps8_0_100M_1/sim/BD_rst_ps8_0_100M_1.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/ec67/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/6f8f/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/BD/ip/BD_smartconnect_0_0/bd_0/sim/bd_4797.v" \
"../../../bd/BD/ip/BD_smartconnect_0_0/bd_0/ip/ip_0/sim/bd_4797_one_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/BD/ip/BD_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_4797_psr_aclk_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/ec67/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/6f8f/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/BD/ip/BD_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_4797_s00mmu_0.sv" \
"../../../bd/BD/ip/BD_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_4797_s00tr_0.sv" \
"../../../bd/BD/ip/BD_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_4797_s00sic_0.sv" \
"../../../bd/BD/ip/BD_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_4797_s00a2s_0.sv" \
"../../../bd/BD/ip/BD_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_4797_sarn_0.sv" \
"../../../bd/BD/ip/BD_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_4797_srn_0.sv" \
"../../../bd/BD/ip/BD_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_4797_sawn_0.sv" \
"../../../bd/BD/ip/BD_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_4797_swn_0.sv" \
"../../../bd/BD/ip/BD_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_4797_sbn_0.sv" \
"../../../bd/BD/ip/BD_smartconnect_0_0/bd_0/ip/ip_11/sim/bd_4797_m00s2a_0.sv" \
"../../../bd/BD/ip/BD_smartconnect_0_0/bd_0/ip/ip_12/sim/bd_4797_m00e_0.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/ec67/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/6f8f/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/BD/ip/BD_smartconnect_0_0/sim/BD_smartconnect_0_0.v" \
"../../../bd/BD/sim/BD.v" \

vcom -work axi_bram_ctrl_v4_1_11 -64 -93  \
"../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/df79/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/BD/ip/BD_axi_bram_ctrl_0_0/sim/BD_axi_bram_ctrl_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_9 -64 -incr -mfcu  "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/ec67/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/6f8f/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/5ec1/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/ec67/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/6f8f/hdl" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RV32Rocket.gen/sources_1/bd/BD/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/BD/ip/BD_blk_mem_gen_0_0/sim/BD_blk_mem_gen_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

