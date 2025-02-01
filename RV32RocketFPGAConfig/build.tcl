
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
set lib_dir [file normalize "./chipyard.fpga.arty100t.Arty100THarness.RV32RocketArty100TConfig/gen-collateral"]
set constraints_dir [file normalize "./constraints"]

# add sources
set fp [open "$lib_dir/../chipyard.fpga.arty100t.Arty100THarness.RV32RocketArty100TConfig.vsrcs.f" r]
   while {[gets $fp line] >= 0} {
   read_verilog -sv "$line"
}

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



# Normalize the BD file path

add_files -norecurse /home/hakam/Repos/ChaosCore-FPGA/RV32RocketFPGAConfig/RV32Rocket/RV32Rocket.gen/sources_1/bd/BD/hdl/BD_wrapper.v
update_compile_order -fileset sources_1

set_property top BD_wrapper [current_fileset]
update_compile_order -fileset sources_1



# synth TOP BD
launch_runs synth_1 -jobs 10

# Generate synthesis report
#report_utilization -file utilization_synth.rpt -hierarchical -hierarchical_depth 10 -hierarchical_percentage


# place and route
#opt_design
#place_design
#route_design

# write bitstream

#report_timing_summary -file timing_synth.rpt
#write_bitstream -force "${origin_dir}/${arch}/${design_name}.bit"


# (Optional) Save the project to commit the changes.
#save_project_as ./RV32Rocket/RV32Rocket.xpr
