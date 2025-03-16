transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_19
vlib riviera/zynq_ultra_ps_e_vip_v1_0_19
vlib riviera/xil_defaultlib
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/lib_cdc_v1_0_3
vlib riviera/interrupt_control_v3_1_5
vlib riviera/axi_gpio_v2_0_35
vlib riviera/generic_baseblocks_v2_1_2
vlib riviera/axi_register_slice_v2_1_33
vlib riviera/fifo_generator_v13_2_11
vlib riviera/axi_data_fifo_v2_1_32
vlib riviera/axi_crossbar_v2_1_34
vlib riviera/axi_protocol_converter_v2_1_33
vlib riviera/axi_clock_converter_v2_1_32
vlib riviera/blk_mem_gen_v8_4_9
vlib riviera/axi_dwidth_converter_v2_1_33
vlib riviera/proc_sys_reset_v5_0_16
vlib riviera/axi_bram_ctrl_v4_1_11

vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_19 riviera/axi_vip_v1_1_19
vmap zynq_ultra_ps_e_vip_v1_0_19 riviera/zynq_ultra_ps_e_vip_v1_0_19
vmap xil_defaultlib riviera/xil_defaultlib
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_3 riviera/lib_cdc_v1_0_3
vmap interrupt_control_v3_1_5 riviera/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_35 riviera/axi_gpio_v2_0_35
vmap generic_baseblocks_v2_1_2 riviera/generic_baseblocks_v2_1_2
vmap axi_register_slice_v2_1_33 riviera/axi_register_slice_v2_1_33
vmap fifo_generator_v13_2_11 riviera/fifo_generator_v13_2_11
vmap axi_data_fifo_v2_1_32 riviera/axi_data_fifo_v2_1_32
vmap axi_crossbar_v2_1_34 riviera/axi_crossbar_v2_1_34
vmap axi_protocol_converter_v2_1_33 riviera/axi_protocol_converter_v2_1_33
vmap axi_clock_converter_v2_1_32 riviera/axi_clock_converter_v2_1_32
vmap blk_mem_gen_v8_4_9 riviera/blk_mem_gen_v8_4_9
vmap axi_dwidth_converter_v2_1_33 riviera/axi_dwidth_converter_v2_1_33
vmap proc_sys_reset_v5_0_16 riviera/proc_sys_reset_v5_0_16
vmap axi_bram_ctrl_v4_1_11 riviera/axi_bram_ctrl_v4_1_11

vlog -work xpm  -incr "+incdir+../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/ec67/hdl" "+incdir+../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/6f8f/hdl" -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_33 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_crossbar_v2_1_34 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l blk_mem_gen_v8_4_9 -l axi_dwidth_converter_v2_1_33 -l proc_sys_reset_v5_0_16 -l axi_bram_ctrl_v4_1_11 \
"/tools/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/tools/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/ec67/hdl" "+incdir+../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/6f8f/hdl" -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_33 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_crossbar_v2_1_34 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l blk_mem_gen_v8_4_9 -l axi_dwidth_converter_v2_1_33 -l proc_sys_reset_v5_0_16 -l axi_bram_ctrl_v4_1_11 \
"../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_19  -incr "+incdir+../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/ec67/hdl" "+incdir+../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/6f8f/hdl" -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_33 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_crossbar_v2_1_34 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l blk_mem_gen_v8_4_9 -l axi_dwidth_converter_v2_1_33 -l proc_sys_reset_v5_0_16 -l axi_bram_ctrl_v4_1_11 \
"../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/8c45/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_19  -incr "+incdir+../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/ec67/hdl" "+incdir+../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/6f8f/hdl" -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_33 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_crossbar_v2_1_34 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l blk_mem_gen_v8_4_9 -l axi_dwidth_converter_v2_1_33 -l proc_sys_reset_v5_0_16 -l axi_bram_ctrl_v4_1_11 \
"../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/6f8f/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/ec67/hdl" "+incdir+../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/6f8f/hdl" -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_33 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_crossbar_v2_1_34 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l blk_mem_gen_v8_4_9 -l axi_dwidth_converter_v2_1_33 -l proc_sys_reset_v5_0_16 -l axi_bram_ctrl_v4_1_11 \
"../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ip/mpsoc_preset_zynq_ultra_ps_e_0_0/sim/mpsoc_preset_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vcom -work axi_lite_ipif_v3_0_4 -93  -incr \
"../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_3 -93  -incr \
"../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_5 -93  -incr \
"../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_35 -93  -incr \
"../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/6718/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ip/mpsoc_preset_axi_gpio_0_0/sim/mpsoc_preset_axi_gpio_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_2  -incr -v2k5 "+incdir+../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/ec67/hdl" "+incdir+../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/6f8f/hdl" -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_33 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_crossbar_v2_1_34 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l blk_mem_gen_v8_4_9 -l axi_dwidth_converter_v2_1_33 -l proc_sys_reset_v5_0_16 -l axi_bram_ctrl_v4_1_11 \
"../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_33  -incr -v2k5 "+incdir+../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/ec67/hdl" "+incdir+../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/6f8f/hdl" -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_33 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_crossbar_v2_1_34 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l blk_mem_gen_v8_4_9 -l axi_dwidth_converter_v2_1_33 -l proc_sys_reset_v5_0_16 -l axi_bram_ctrl_v4_1_11 \
"../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/3ee4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_11  -incr -v2k5 "+incdir+../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/ec67/hdl" "+incdir+../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/6f8f/hdl" -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_33 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_crossbar_v2_1_34 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l blk_mem_gen_v8_4_9 -l axi_dwidth_converter_v2_1_33 -l proc_sys_reset_v5_0_16 -l axi_bram_ctrl_v4_1_11 \
"../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/6080/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_11 -93  -incr \
"../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/6080/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_11  -incr -v2k5 "+incdir+../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/ec67/hdl" "+incdir+../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/6f8f/hdl" -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_33 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_crossbar_v2_1_34 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l blk_mem_gen_v8_4_9 -l axi_dwidth_converter_v2_1_33 -l proc_sys_reset_v5_0_16 -l axi_bram_ctrl_v4_1_11 \
"../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/6080/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_32  -incr -v2k5 "+incdir+../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/ec67/hdl" "+incdir+../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/6f8f/hdl" -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_33 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_crossbar_v2_1_34 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l blk_mem_gen_v8_4_9 -l axi_dwidth_converter_v2_1_33 -l proc_sys_reset_v5_0_16 -l axi_bram_ctrl_v4_1_11 \
"../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/65ce/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_34  -incr -v2k5 "+incdir+../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/ec67/hdl" "+incdir+../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/6f8f/hdl" -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_33 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_crossbar_v2_1_34 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l blk_mem_gen_v8_4_9 -l axi_dwidth_converter_v2_1_33 -l proc_sys_reset_v5_0_16 -l axi_bram_ctrl_v4_1_11 \
"../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/a7e3/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/ec67/hdl" "+incdir+../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/6f8f/hdl" -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_33 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_crossbar_v2_1_34 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l blk_mem_gen_v8_4_9 -l axi_dwidth_converter_v2_1_33 -l proc_sys_reset_v5_0_16 -l axi_bram_ctrl_v4_1_11 \
"../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ip/mpsoc_preset_ps8_0_axi_periph_imp_xbar_0/sim/mpsoc_preset_ps8_0_axi_periph_imp_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_33  -incr -v2k5 "+incdir+../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/ec67/hdl" "+incdir+../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/6f8f/hdl" -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_33 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_crossbar_v2_1_34 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l blk_mem_gen_v8_4_9 -l axi_dwidth_converter_v2_1_33 -l proc_sys_reset_v5_0_16 -l axi_bram_ctrl_v4_1_11 \
"../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/27ae/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_32  -incr -v2k5 "+incdir+../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/ec67/hdl" "+incdir+../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/6f8f/hdl" -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_33 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_crossbar_v2_1_34 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l blk_mem_gen_v8_4_9 -l axi_dwidth_converter_v2_1_33 -l proc_sys_reset_v5_0_16 -l axi_bram_ctrl_v4_1_11 \
"../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/a4e8/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_9  -incr -v2k5 "+incdir+../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/ec67/hdl" "+incdir+../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/6f8f/hdl" -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_33 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_crossbar_v2_1_34 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l blk_mem_gen_v8_4_9 -l axi_dwidth_converter_v2_1_33 -l proc_sys_reset_v5_0_16 -l axi_bram_ctrl_v4_1_11 \
"../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/5ec1/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_33  -incr -v2k5 "+incdir+../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/ec67/hdl" "+incdir+../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/6f8f/hdl" -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_33 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_crossbar_v2_1_34 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l blk_mem_gen_v8_4_9 -l axi_dwidth_converter_v2_1_33 -l proc_sys_reset_v5_0_16 -l axi_bram_ctrl_v4_1_11 \
"../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/d794/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/ec67/hdl" "+incdir+../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/6f8f/hdl" -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_33 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_crossbar_v2_1_34 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l blk_mem_gen_v8_4_9 -l axi_dwidth_converter_v2_1_33 -l proc_sys_reset_v5_0_16 -l axi_bram_ctrl_v4_1_11 \
"../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ip/mpsoc_preset_ps8_0_axi_periph_imp_auto_ds_0/sim/mpsoc_preset_ps8_0_axi_periph_imp_auto_ds_0.v" \
"../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ip/mpsoc_preset_ps8_0_axi_periph_imp_auto_pc_0/sim/mpsoc_preset_ps8_0_axi_periph_imp_auto_pc_0.v" \
"../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ip/mpsoc_preset_ps8_0_axi_periph_imp_auto_ds_1/sim/mpsoc_preset_ps8_0_axi_periph_imp_auto_ds_1.v" \

vcom -work proc_sys_reset_v5_0_16 -93  -incr \
"../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ip/mpsoc_preset_rst_ps8_0_100M_0/sim/mpsoc_preset_rst_ps8_0_100M_0.vhd" \

vcom -work axi_bram_ctrl_v4_1_11 -93  -incr \
"../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/df79/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ip/mpsoc_preset_axi_bram_ctrl_0_0/sim/mpsoc_preset_axi_bram_ctrl_0_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/ec67/hdl" "+incdir+../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ipshared/6f8f/hdl" -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_33 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_crossbar_v2_1_34 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l blk_mem_gen_v8_4_9 -l axi_dwidth_converter_v2_1_33 -l proc_sys_reset_v5_0_16 -l axi_bram_ctrl_v4_1_11 \
"../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/ip/mpsoc_preset_axi_bram_ctrl_0_bram_0/sim/mpsoc_preset_axi_bram_ctrl_0_bram_0.v" \
"../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.gen/sources_1/bd/mpsoc_preset/sim/mpsoc_preset.v" \
"../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.srcs/sources_1/imports/hdl/mpsoc_preset_wrapper.v" \
"../../../../../../../ULTRA96_basic_tuts/zynq_ultrscale_example/zynq_ultrscale_example.srcs/sim_1/imports/mpsoc_preset/mpsoc_tb.v" \

vlog -work xil_defaultlib \
"glbl.v"

