-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BD_ctrl0_0_0 is
  Port ( 
    reg_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reset_out : out STD_LOGIC;
    custom_boot : out STD_LOGIC;
    misc0 : out STD_LOGIC;
    misc1 : out STD_LOGIC;
    misc2 : out STD_LOGIC;
    misc3 : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of BD_ctrl0_0_0 : entity is "BD_ctrl0_0_0,ctrl0,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of BD_ctrl0_0_0 : entity is "BD_ctrl0_0_0,ctrl0,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=ctrl0,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of BD_ctrl0_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of BD_ctrl0_0_0 : entity is "module_ref";
end BD_ctrl0_0_0;

architecture stub of BD_ctrl0_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of reset_out : signal is "xilinx.com:signal:reset:1.0 reset_out RST";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of reset_out : signal is "master";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of reset_out : signal is "XIL_INTERFACENAME reset_out, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "ctrl0,Vivado 2024.2";
begin
end;
