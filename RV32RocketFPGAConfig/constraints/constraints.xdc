#create_clock -period 10.000 -name uncore_clock [get_ports uncore_clock]
#create_clock -period 5.000 -name clock [get_ports clock]
#create_clock -period 5.000 -name clock [get_ports clock]

#set_property IOSTANDARD LVCMOS18 [get_ports uart_tsi_rx]
#set_property IOSTANDARD LVCMOS18 [get_ports uart_tsi_tx]
#set_property PACKAGE_PIN C5 [get_ports uart_tsi_rx]
#set_property PACKAGE_PIN G6 [get_ports uart_tsi_tx]


set_property IOSTANDARD LVCMOS18 [get_ports rst_led]
set_property PACKAGE_PIN A7 [get_ports rst_led]

#set_property IOSTANDARD LVCMOS18 [get_ports tsi_valid]
#set_property PACKAGE_PIN B6 [get_ports tsi_valid]

#set_property IOSTANDARD LVCMOS18 [get_ports wfi_status]
#set_property PACKAGE_PIN D7 [get_ports wfi_status]

set_property IOSTANDARD LVCMOS18 [get_ports heartbeat]
set_property PACKAGE_PIN F8 [get_ports heartbeat]




