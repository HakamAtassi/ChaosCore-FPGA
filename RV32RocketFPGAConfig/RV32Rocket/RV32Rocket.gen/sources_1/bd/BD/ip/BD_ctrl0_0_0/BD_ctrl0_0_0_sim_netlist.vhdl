-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Thu Mar  6 19:41:25 2025
-- Host        : Desktop-Home running 64-bit Linux Mint 22
-- Command     : write_vhdl -force -mode funcsim
--               /mnt/Storage/SCHOOL/Capstone/bringup/ChaosCore-FPGA/RV32RocketFPGAConfig/RV32Rocket/RV32Rocket.gen/sources_1/bd/BD/ip/BD_ctrl0_0_0/BD_ctrl0_0_0_sim_netlist.vhdl
-- Design      : BD_ctrl0_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BD_ctrl0_0_0 is
  port (
    reg_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reset_out : out STD_LOGIC;
    custom_boot : out STD_LOGIC;
    misc0 : out STD_LOGIC;
    misc1 : out STD_LOGIC;
    misc2 : out STD_LOGIC;
    misc3 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of BD_ctrl0_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of BD_ctrl0_0_0 : entity is "BD_ctrl0_0_0,ctrl0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of BD_ctrl0_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of BD_ctrl0_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of BD_ctrl0_0_0 : entity is "ctrl0,Vivado 2024.2";
end BD_ctrl0_0_0;

architecture STRUCTURE of BD_ctrl0_0_0 is
  signal \^reg_in\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of reset_out : signal is "xilinx.com:signal:reset:1.0 reset_out RST";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of reset_out : signal is "master";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of reset_out : signal is "XIL_INTERFACENAME reset_out, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  \^reg_in\(5 downto 0) <= reg_in(5 downto 0);
  custom_boot <= \^reg_in\(1);
  misc0 <= \^reg_in\(2);
  misc1 <= \^reg_in\(3);
  misc2 <= \^reg_in\(4);
  misc3 <= \^reg_in\(5);
  reset_out <= \^reg_in\(0);
end STRUCTURE;
