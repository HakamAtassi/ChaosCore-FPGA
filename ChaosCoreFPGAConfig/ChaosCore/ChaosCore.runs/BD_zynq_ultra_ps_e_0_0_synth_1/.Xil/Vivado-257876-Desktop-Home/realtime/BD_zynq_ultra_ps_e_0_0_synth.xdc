set_property SRC_FILE_INFO {cfile:/mnt/Storage/SCHOOL/Capstone/bringup/ChaosCore-FPGA/ChaosCoreFPGAConfig/ChaosCore/ChaosCore.gen/sources_1/bd/BD/ip/BD_zynq_ultra_ps_e_0_0/BD_zynq_ultra_ps_e_0_0.xdc rfile:../../../../../ChaosCore.gen/sources_1/bd/BD/ip/BD_zynq_ultra_ps_e_0_0/BD_zynq_ultra_ps_e_0_0.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
set_property SRC_FILE_INFO {cfile:/mnt/Storage/SCHOOL/Capstone/bringup/ChaosCore-FPGA/ChaosCoreFPGAConfig/ChaosCore/ChaosCore.runs/BD_zynq_ultra_ps_e_0_0_synth_1/dont_touch.xdc rfile:../../../dont_touch.xdc id:2} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:21 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 100.000 -name clk_pl_0 [get_pins {PS8_i/PLCLK[0]}]
set_property src_info {type:SCOPED_XDC file:1 line:25 export:INPUT save:INPUT read:READ} [current_design]
set_property DONT_TOUCH true [get_cells PS8_i]
current_instance
set_property src_info {type:XDC file:2 line:9 export:INPUT save:INPUT read:READ} [current_design]
set_property KEEP_HIERARCHY SOFT [get_cells inst]
