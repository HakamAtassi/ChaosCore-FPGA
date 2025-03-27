set(DDR psu_ddr_0)
set(psu_ddr_0 "0x0;0x7ff00000")
set(axi_bram_0 "0xa0100000;0x80000")
set(psu_ocm_0 "0xfffc0000;0x40000")
set(TOTAL_MEM_CONTROLLERS "psu_ddr_0;axi_bram_0;psu_ocm_0")
set(MEMORY_SECTION "MEMORY
{
	psu_ddr_0 : ORIGIN = 0x0, LENGTH = 0x7ff00000
	axi_bram_0 : ORIGIN = 0xa0100000, LENGTH = 0x80000
	psu_ocm_0 : ORIGIN = 0xfffc0000, LENGTH = 0x40000
}")
set(STACK_SIZE 0x2000)
set(HEAP_SIZE 0x2000)
