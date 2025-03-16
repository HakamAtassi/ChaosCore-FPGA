# aclk {FREQ_HZ 100000000 CLK_DOMAIN BD_core_0_M_AXI_MEM_ACLK PHASE 0.0} aclk1 {FREQ_HZ 100000000 CLK_DOMAIN BD_core_0_M_AXI_MMIO_ACLK PHASE 0.0}
# Clock Domain: BD_core_0_M_AXI_MEM_ACLK
create_clock -name aclk -period 10.000 [get_ports aclk]
# Clock Domain: BD_core_0_M_AXI_MMIO_ACLK
create_clock -name aclk1 -period 10.000 [get_ports aclk1]
# Generated clocks
