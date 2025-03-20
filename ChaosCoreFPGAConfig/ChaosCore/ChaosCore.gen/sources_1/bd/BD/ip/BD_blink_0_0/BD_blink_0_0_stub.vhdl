-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Wed Mar 19 22:53:28 2025
-- Host        : Desktop-Home running 64-bit Linux Mint 22
-- Command     : write_vhdl -force -mode synth_stub
--               /mnt/Storage/SCHOOL/Capstone/bringup/ChaosCore-FPGA/ChaosCoreFPGAConfig/ChaosCore/ChaosCore.gen/sources_1/bd/BD/ip/BD_blink_0_0/BD_blink_0_0_stub.vhdl
-- Design      : BD_blink_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BD_blink_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    blink : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of BD_blink_0_0 : entity is "BD_blink_0_0,blink,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of BD_blink_0_0 : entity is "BD_blink_0_0,blink,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=blink,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of BD_blink_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of BD_blink_0_0 : entity is "module_ref";
end BD_blink_0_0;

architecture stub of BD_blink_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,blink";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN BD_ChaosCoreTop_0_0_clock_tap, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "blink,Vivado 2024.2";
begin
end;
