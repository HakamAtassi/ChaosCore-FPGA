-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Sat Mar 15 20:46:30 2025
-- Host        : Desktop-Home running 64-bit Linux Mint 22
-- Command     : write_vhdl -force -mode funcsim
--               /mnt/Storage/SCHOOL/Capstone/bringup/ChaosCore-FPGA/RV32RocketFPGAConfig/RV32Rocket/RV32Rocket.gen/sources_1/bd/BD/ip/BD_AXI_data_snoop_0_0/BD_AXI_data_snoop_0_0_sim_netlist.vhdl
-- Design      : BD_AXI_data_snoop_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BD_AXI_data_snoop_0_0_AXI_data_snoop is
  port (
    Q : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rst : in STD_LOGIC;
    rsp_valid : in STD_LOGIC;
    rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of BD_AXI_data_snoop_0_0_AXI_data_snoop : entity is "AXI_data_snoop";
end BD_AXI_data_snoop_0_0_AXI_data_snoop;

architecture STRUCTURE of BD_AXI_data_snoop_0_0_AXI_data_snoop is
begin
\last_resp_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(0),
      Q => Q(0),
      S => rst
    );
\last_resp_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(10),
      Q => Q(10),
      S => rst
    );
\last_resp_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(11),
      Q => Q(11),
      S => rst
    );
\last_resp_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(12),
      Q => Q(12),
      S => rst
    );
\last_resp_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(13),
      Q => Q(13),
      S => rst
    );
\last_resp_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(14),
      Q => Q(14),
      S => rst
    );
\last_resp_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(15),
      Q => Q(15),
      S => rst
    );
\last_resp_reg[16]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(16),
      Q => Q(16),
      S => rst
    );
\last_resp_reg[17]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(17),
      Q => Q(17),
      S => rst
    );
\last_resp_reg[18]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(18),
      Q => Q(18),
      S => rst
    );
\last_resp_reg[19]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(19),
      Q => Q(19),
      S => rst
    );
\last_resp_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(1),
      Q => Q(1),
      S => rst
    );
\last_resp_reg[20]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(20),
      Q => Q(20),
      S => rst
    );
\last_resp_reg[21]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(21),
      Q => Q(21),
      S => rst
    );
\last_resp_reg[22]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(22),
      Q => Q(22),
      S => rst
    );
\last_resp_reg[23]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(23),
      Q => Q(23),
      S => rst
    );
\last_resp_reg[24]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(24),
      Q => Q(24),
      S => rst
    );
\last_resp_reg[25]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(25),
      Q => Q(25),
      S => rst
    );
\last_resp_reg[26]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(26),
      Q => Q(26),
      S => rst
    );
\last_resp_reg[27]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(27),
      Q => Q(27),
      S => rst
    );
\last_resp_reg[28]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(28),
      Q => Q(28),
      S => rst
    );
\last_resp_reg[29]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(29),
      Q => Q(29),
      S => rst
    );
\last_resp_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(2),
      Q => Q(2),
      S => rst
    );
\last_resp_reg[30]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(30),
      Q => Q(30),
      S => rst
    );
\last_resp_reg[31]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(31),
      Q => Q(31),
      S => rst
    );
\last_resp_reg[32]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(32),
      Q => Q(32),
      S => rst
    );
\last_resp_reg[33]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(33),
      Q => Q(33),
      S => rst
    );
\last_resp_reg[34]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(34),
      Q => Q(34),
      S => rst
    );
\last_resp_reg[35]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(35),
      Q => Q(35),
      S => rst
    );
\last_resp_reg[36]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(36),
      Q => Q(36),
      S => rst
    );
\last_resp_reg[37]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(37),
      Q => Q(37),
      S => rst
    );
\last_resp_reg[38]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(38),
      Q => Q(38),
      S => rst
    );
\last_resp_reg[39]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(39),
      Q => Q(39),
      S => rst
    );
\last_resp_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(3),
      Q => Q(3),
      S => rst
    );
\last_resp_reg[40]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(40),
      Q => Q(40),
      S => rst
    );
\last_resp_reg[41]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(41),
      Q => Q(41),
      S => rst
    );
\last_resp_reg[42]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(42),
      Q => Q(42),
      S => rst
    );
\last_resp_reg[43]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(43),
      Q => Q(43),
      S => rst
    );
\last_resp_reg[44]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(44),
      Q => Q(44),
      S => rst
    );
\last_resp_reg[45]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(45),
      Q => Q(45),
      S => rst
    );
\last_resp_reg[46]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(46),
      Q => Q(46),
      S => rst
    );
\last_resp_reg[47]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(47),
      Q => Q(47),
      S => rst
    );
\last_resp_reg[48]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(48),
      Q => Q(48),
      S => rst
    );
\last_resp_reg[49]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(49),
      Q => Q(49),
      S => rst
    );
\last_resp_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(4),
      Q => Q(4),
      S => rst
    );
\last_resp_reg[50]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(50),
      Q => Q(50),
      S => rst
    );
\last_resp_reg[51]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(51),
      Q => Q(51),
      S => rst
    );
\last_resp_reg[52]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(52),
      Q => Q(52),
      S => rst
    );
\last_resp_reg[53]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(53),
      Q => Q(53),
      S => rst
    );
\last_resp_reg[54]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(54),
      Q => Q(54),
      S => rst
    );
\last_resp_reg[55]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(55),
      Q => Q(55),
      S => rst
    );
\last_resp_reg[56]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(56),
      Q => Q(56),
      S => rst
    );
\last_resp_reg[57]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(57),
      Q => Q(57),
      S => rst
    );
\last_resp_reg[58]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(58),
      Q => Q(58),
      S => rst
    );
\last_resp_reg[59]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(59),
      Q => Q(59),
      S => rst
    );
\last_resp_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(5),
      Q => Q(5),
      S => rst
    );
\last_resp_reg[60]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(60),
      Q => Q(60),
      S => rst
    );
\last_resp_reg[61]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(61),
      Q => Q(61),
      S => rst
    );
\last_resp_reg[62]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(62),
      Q => Q(62),
      S => rst
    );
\last_resp_reg[63]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(63),
      Q => Q(63),
      S => rst
    );
\last_resp_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(6),
      Q => Q(6),
      S => rst
    );
\last_resp_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(7),
      Q => Q(7),
      S => rst
    );
\last_resp_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(8),
      Q => Q(8),
      S => rst
    );
\last_resp_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => rsp_valid,
      D => rdata(9),
      Q => Q(9),
      S => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BD_AXI_data_snoop_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    rsp_valid : in STD_LOGIC;
    rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    rdata_out_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rdata_out_1 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of BD_AXI_data_snoop_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of BD_AXI_data_snoop_0_0 : entity is "BD_AXI_data_snoop_0_0,AXI_data_snoop,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of BD_AXI_data_snoop_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of BD_AXI_data_snoop_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of BD_AXI_data_snoop_0_0 : entity is "AXI_data_snoop,Vivado 2024.2";
end BD_AXI_data_snoop_0_0;

architecture STRUCTURE of BD_AXI_data_snoop_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN BD_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_MODE of rst : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.BD_AXI_data_snoop_0_0_AXI_data_snoop
     port map (
      Q(63 downto 32) => rdata_out_1(31 downto 0),
      Q(31 downto 0) => rdata_out_0(31 downto 0),
      clk => clk,
      rdata(63 downto 0) => rdata(63 downto 0),
      rsp_valid => rsp_valid,
      rst => rst
    );
end STRUCTURE;
