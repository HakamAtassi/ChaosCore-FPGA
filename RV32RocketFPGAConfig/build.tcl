
#set design_name "ChaosCore"


#FIXME: eventally updated this to the wrapped block module
set top_module "RV32RocketCoreTop"


set project_name "RV32Rocket"
set project_dir "./RV32Rocket"
set project_file "$project_dir/$project_name.xpr"

# Check if project already exists
if {![file exists $project_file]} {
  puts "Project does not exist. Creating new project..."
  create_project $project_name $project_dir
} else {
  puts "Project already exists. Opening existing project..."
  open_project $project_file
}



# set board files
set_property board_part avnet-tria:ultra96v2:part0:1.3 [current_project]


# set reference directories for source files
set lib_dir [file normalize "./chipyard.harness.TestHarness.RV32RocketFPGAConfig/gen-collateral"]
set constraints_dir [file normalize "./constraints"]

# add sources
set fp [open "$lib_dir/../chipyard.harness.TestHarness.RV32RocketFPGAConfig.all.f" r]
   while {[gets $fp line] >= 0} {
   read_verilog -sv "$line"
}

read_verilog /home/hakam/Repos/ChaosCore-FPGA/RV32RocketFPGAConfig/chipyard.harness.TestHarness.RV32RocketFPGAConfig/gen-collateral/RV32RocketCoreTop.v
read_verilog /home/hakam/Repos/ChaosCore-FPGA/RV32RocketFPGAConfig/chipyard.harness.TestHarness.RV32RocketFPGAConfig/gen-collateral/chipyard.harness.TestHarness.RV32RocketFPGAConfig.top.mems.v



# read constraints
read_xdc "${constraints_dir}/constraints.xdc"


# create block diagram
update_compile_order -fileset sources_1
create_bd_design "BD"
open_bd_design "BD"
update_compile_order -fileset sources_1

# Begin a group for adding IP cores
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:zynq_ultra_ps_e:3.5 zynq_ultra_ps_e_0
endgroup


# to just open the BD
#update_compile_order -fileset sources_1
#open_bd_design {/home/hakam/Repos/ChaosCore-FPGA/RV32RocketFPGAConfig/RV32Rocket/RV32Rocket.srcs/sources_1/bd/BD/BD.bd}

# Set configuration properties for the Zynq UltraScale+ Processing System
set_property -dict [list \
  CONFIG.PSU__SAXIGP2__DATA_WIDTH {64} \
  CONFIG.PSU__SAXIGP6__DATA_WIDTH {64} \
  CONFIG.PSU__USE__M_AXI_GP2 {0} \
  CONFIG.PSU__USE__S_AXI_GP2 {1} \
  CONFIG.PSU__USE__S_AXI_GP6 {1} \
] [get_bd_cells zynq_ultra_ps_e_0]


# not needed anymore I dont think
set_property file_type Verilog [get_files RV32RocketCoreTop.v]
set_property top RV32RocketCoreTop [get_filesets sources_1]

update_ip_catalog
create_bd_cell -type module -reference RV32RocketCoreTop core

connect_bd_intf_net [get_bd_intf_pins core/M_AXI_MMIO] [get_bd_intf_pins zynq_ultra_ps_e_0/S_AXI_LPD]
connect_bd_intf_net [get_bd_intf_pins core/M_AXI_MEM] [get_bd_intf_pins zynq_ultra_ps_e_0/S_AXI_HP0_FPD]
connect_bd_net [get_bd_pins core/M_AXI_MMIO_ACLK] [get_bd_pins zynq_ultra_ps_e_0/saxi_lpd_aclk]
connect_bd_net [get_bd_pins core/M_AXI_MEM_ACLK] [get_bd_pins zynq_ultra_ps_e_0/saxihp0_fpd_aclk]
connect_bd_net [get_bd_pins zynq_ultra_ps_e_0/pl_resetn0] [get_bd_pins core/reset_io]
connect_bd_net [get_bd_pins zynq_ultra_ps_e_0/pl_clk0] [get_bd_pins core/clock_uncore]



#################
# Set addresses #
#################

# set lower address and range for MEM axi port (0x4000_0000 + 1GB)
assign_bd_address -target_address_space /core/M_AXI_MEM [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP2/HP0_DDR_LOW] -force
set_property range 1G [get_bd_addr_segs {core/M_AXI_MEM/SEG_zynq_ultra_ps_e_0_HP0_DDR_LOW}]
set_property offset 0x40000000 [get_bd_addr_segs {core/M_AXI_MEM/SEG_zynq_ultra_ps_e_0_HP0_DDR_LOW}]




# set lower address and range for IO port (0xFF00_0000 + 16MB) for now...
#assign_bd_address -target_address_space /core/M_AXI_MMIO [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP6/LPD_DDR_LOW] -force
#set_property offset 0xFF00 [get_bd_addr_segs {core/M_AXI_MMIO/SEG_zynq_ultra_ps_e_0_LPD_DDR_LOW}]
#set_property range 16M [get_bd_addr_segs {core/M_AXI_MMIO/SEG_zynq_ultra_ps_e_0_LPD_DDR_LOW}]

# add BD wrapper
make_wrapper -files [get_files /home/hakam/Repos/ChaosCore-FPGA/RV32RocketFPGAConfig/RV32Rocket/RV32Rocket.srcs/sources_1/bd/BD/BD.bd] -top
add_files -norecurse /home/hakam/Repos/ChaosCore-FPGA/RV32RocketFPGAConfig/RV32Rocket/RV32Rocket.gen/sources_1/bd/BD/hdl/BD_wrapper.v
update_compile_order -fileset sources_1

# set as top level
set_property top BD_wrapper [current_fileset]
update_compile_order -fileset sources_1


# synth TOP BD

launch_runs impl_1 -to_step write_bitstream -jobs 10
wait_on_run impl_1


####################
# GENERATE REPORTS #
####################

# generate heiarchical percent based util report
#create_report_config -report_name synth_1_synth_report_utilization_1 -step synth_design -report_type report_utilization -run synth_1
#set_property DISPLAY_NAME {Utilization 1 - Synth Design} [get_report_configs -of_objects [get_runs synth_1] synth_1_synth_report_utilization_1] 
#set_property OPTIONS.hierarchical {true} [get_report_config -of_objects [get_runs synth_1] {synth_1_synth_report_utilization_1}]
#set_property OPTIONS.hierarchical_percentages {true} [get_report_config -of_objects [get_runs synth_1] {synth_1_synth_report_utilization_1}]

#generate_reports [get_report_config -of_object [get_runs synth_1] synth_1_synth_report_timing_summary_0] 




# (Optional) Save the project to commit the changes.
#save_project_as ./RV32Rocket/RV32Rocket.xpr
