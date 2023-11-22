-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 12.1 Build 177 11/07/2012 SJ Web Edition"

-- DATE "11/15/2023 17:06:37"

-- 
-- Device: Altera EPM240T100I5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	vga2ws IS
    PORT (
	host_reset : IN std_logic;
	gen : IN std_logic;
	rgb : OUT std_logic_vector(5 DOWNTO 0);
	hs : OUT std_logic;
	vs : OUT std_logic;
	rom_addr : OUT std_logic_vector(16 DOWNTO 0);
	rom_data : INOUT std_logic_vector(7 DOWNTO 0);
	rom_oe : OUT std_logic;
	rom_we : OUT std_logic;
	ram_addr : OUT std_logic_vector(13 DOWNTO 0);
	ram_data : INOUT std_logic_vector(7 DOWNTO 0);
	ram_we : OUT std_logic;
	host_data : IN std_logic_vector(7 DOWNTO 0);
	host_busy : OUT std_logic;
	host_ad : IN std_logic;
	host_cs : IN std_logic
	);
END vga2ws;

-- Design Ports Information
-- host_ad	=>  Location: PIN_66,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
-- host_cs	=>  Location: PIN_78,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
-- host_reset	=>  Location: PIN_44,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
-- host_data[0]	=>  Location: PIN_92,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
-- host_data[7]	=>  Location: PIN_7,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
-- host_data[6]	=>  Location: PIN_6,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
-- host_data[2]	=>  Location: PIN_2,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
-- host_data[5]	=>  Location: PIN_5,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
-- host_data[1]	=>  Location: PIN_95,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
-- host_data[3]	=>  Location: PIN_3,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
-- host_data[4]	=>  Location: PIN_4,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
-- gen	=>  Location: PIN_12,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
-- rgb[0]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rgb[1]	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rgb[2]	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rgb[3]	=>  Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rgb[4]	=>  Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rgb[5]	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hs	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- vs	=>  Location: PIN_56,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rom_addr[0]	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rom_addr[1]	=>  Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rom_addr[2]	=>  Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rom_addr[3]	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rom_addr[4]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rom_addr[5]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rom_addr[6]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rom_addr[7]	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rom_addr[8]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rom_addr[9]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rom_addr[10]	=>  Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rom_addr[11]	=>  Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rom_addr[12]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rom_addr[13]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rom_addr[14]	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rom_addr[15]	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rom_addr[16]	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rom_oe	=>  Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rom_we	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_addr[0]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_addr[1]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_addr[2]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_addr[3]	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_addr[4]	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_addr[5]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_addr[6]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_addr[7]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_addr[8]	=>  Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_addr[9]	=>  Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_addr[10]	=>  Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_addr[11]	=>  Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_addr[12]	=>  Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_addr[13]	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_we	=>  Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- host_busy	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rom_data[0]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rom_data[1]	=>  Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rom_data[2]	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rom_data[3]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rom_data[4]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rom_data[5]	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rom_data[6]	=>  Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rom_data[7]	=>  Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_data[0]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_data[1]	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_data[2]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_data[3]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_data[4]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_data[5]	=>  Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_data[6]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_data[7]	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA


ARCHITECTURE structure OF vga2ws IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_host_reset : std_logic;
SIGNAL ww_gen : std_logic;
SIGNAL ww_rgb : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_hs : std_logic;
SIGNAL ww_vs : std_logic;
SIGNAL ww_rom_addr : std_logic_vector(16 DOWNTO 0);
SIGNAL ww_rom_oe : std_logic;
SIGNAL ww_rom_we : std_logic;
SIGNAL ww_ram_addr : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_ram_we : std_logic;
SIGNAL ww_host_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_host_busy : std_logic;
SIGNAL ww_host_ad : std_logic;
SIGNAL ww_host_cs : std_logic;
SIGNAL \rom_data[0]~0\ : std_logic;
SIGNAL \rom_data[1]~1\ : std_logic;
SIGNAL \rom_data[2]~2\ : std_logic;
SIGNAL \rom_data[3]~3\ : std_logic;
SIGNAL \rom_data[4]~4\ : std_logic;
SIGNAL \rom_data[5]~5\ : std_logic;
SIGNAL \rom_data[6]~6\ : std_logic;
SIGNAL \rom_data[7]~7\ : std_logic;
SIGNAL \ram_data[0]~0\ : std_logic;
SIGNAL \ram_data[1]~1\ : std_logic;
SIGNAL \ram_data[2]~2\ : std_logic;
SIGNAL \ram_data[3]~3\ : std_logic;
SIGNAL \ram_data[4]~4\ : std_logic;
SIGNAL \ram_data[5]~5\ : std_logic;
SIGNAL \ram_data[6]~6\ : std_logic;
SIGNAL \ram_data[7]~7\ : std_logic;
SIGNAL \gen~combout\ : std_logic;
SIGNAL \gen_inv1~combout\ : std_logic;
SIGNAL \gen_inv2~combout\ : std_logic;
SIGNAL \gen_inv3~combout\ : std_logic;
SIGNAL \gen_inv4~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \host_reset~combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~2COUT1_60\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~12COUT1_62\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~47COUT1_64\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \Add1~12\ : std_logic;
SIGNAL \Add1~45_combout\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Equal1~2\ : std_logic;
SIGNAL \Add1~32\ : std_logic;
SIGNAL \Add1~32COUT1_68\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~17COUT1_66\ : std_logic;
SIGNAL \Add1~35_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~42COUT1_70\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Equal1~0\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~22COUT1_72\ : std_logic;
SIGNAL \Add1~25_combout\ : std_logic;
SIGNAL \Equal1~1\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~27COUT1_74\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \host_busy~reg0_regout\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~42COUT1_70\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~47COUT1_72\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \ram_addr_int[4]~0_combout\ : std_logic;
SIGNAL \Equal9~0\ : std_logic;
SIGNAL \ram_input[2]~7\ : std_logic;
SIGNAL \host_reset~_wirecell_combout\ : std_logic;
SIGNAL \host_ad~combout\ : std_logic;
SIGNAL \rom_addr_ext[6]~1_combout\ : std_logic;
SIGNAL \cntrl_reg~0_combout\ : std_logic;
SIGNAL \cntrl_reg[3]~1_combout\ : std_logic;
SIGNAL \always0~7\ : std_logic;
SIGNAL \always0~8\ : std_logic;
SIGNAL \Equal10~0\ : std_logic;
SIGNAL \always0~9\ : std_logic;
SIGNAL \Equal0~1\ : std_logic;
SIGNAL \Add2~45_combout\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Add2~55_combout\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~15_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~17COUT1_78\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~22COUT1_80\ : std_logic;
SIGNAL \Add2~25_combout\ : std_logic;
SIGNAL \Add2~52\ : std_logic;
SIGNAL \Add2~52COUT1_74\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~12\ : std_logic;
SIGNAL \Add2~12COUT1_76\ : std_logic;
SIGNAL \Add2~32\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~27COUT1_82\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~2COUT1_84\ : std_logic;
SIGNAL \Add2~5_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~35_combout\ : std_logic;
SIGNAL \Equal0~2\ : std_logic;
SIGNAL \Equal0~0\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \always0~0_combout\ : std_logic;
SIGNAL \always0~1\ : std_logic;
SIGNAL \always0~2_combout\ : std_logic;
SIGNAL \always0~3_combout\ : std_logic;
SIGNAL \blink_dev[0]~2_combout\ : std_logic;
SIGNAL \blink_dev[1]~8\ : std_logic;
SIGNAL \blink_dev[1]~8COUT1_15\ : std_logic;
SIGNAL \blink_dev[2]~6\ : std_logic;
SIGNAL \blink_dev[2]~6COUT1_17\ : std_logic;
SIGNAL \blink_dev[3]~4\ : std_logic;
SIGNAL \blink_dev[3]~4COUT1_19\ : std_logic;
SIGNAL \ram_input[1]~6\ : std_logic;
SIGNAL \Mux0~0\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \ram_input[0]~5\ : std_logic;
SIGNAL \always0~6\ : std_logic;
SIGNAL \ram_input[4]~1\ : std_logic;
SIGNAL \rgb[0]~reg0_regout\ : std_logic;
SIGNAL \rgb~2_combout\ : std_logic;
SIGNAL \ram_input[6]~3\ : std_logic;
SIGNAL \ram_input[5]~2\ : std_logic;
SIGNAL \ram_input[7]~4\ : std_logic;
SIGNAL \ram_input[3]~0\ : std_logic;
SIGNAL \rgb~1_combout\ : std_logic;
SIGNAL \rgb[1]~reg0_regout\ : std_logic;
SIGNAL \rgb[2]~reg0_regout\ : std_logic;
SIGNAL \rgb[3]~reg0_regout\ : std_logic;
SIGNAL \rgb~7_combout\ : std_logic;
SIGNAL \rgb~6_combout\ : std_logic;
SIGNAL \rgb[4]~reg0_regout\ : std_logic;
SIGNAL \rgb~5\ : std_logic;
SIGNAL \rgb[5]~reg0_regout\ : std_logic;
SIGNAL \hs~0_combout\ : std_logic;
SIGNAL \always0~4\ : std_logic;
SIGNAL \hs~1_combout\ : std_logic;
SIGNAL \hs~2_combout\ : std_logic;
SIGNAL \hs~reg0_regout\ : std_logic;
SIGNAL \vs~0_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \vs~reg0_regout\ : std_logic;
SIGNAL \host_cs~combout\ : std_logic;
SIGNAL \rom_addr_ext[0]~0_combout\ : std_logic;
SIGNAL \rom_addr~0\ : std_logic;
SIGNAL \rom_addr~1\ : std_logic;
SIGNAL \rom_addr~2\ : std_logic;
SIGNAL \rom_addr~3\ : std_logic;
SIGNAL \rom_addr~4\ : std_logic;
SIGNAL \rom_addr~5\ : std_logic;
SIGNAL \rom_addr_ext[6]~2_combout\ : std_logic;
SIGNAL \rom_addr~6\ : std_logic;
SIGNAL \rom_addr~7\ : std_logic;
SIGNAL \rom_addr~8\ : std_logic;
SIGNAL \rom_addr~9\ : std_logic;
SIGNAL \rom_addr~10\ : std_logic;
SIGNAL \rom_addr~11\ : std_logic;
SIGNAL \rom_addr_ext[12]~3_combout\ : std_logic;
SIGNAL \rom_addr~12\ : std_logic;
SIGNAL \rom_addr~13\ : std_logic;
SIGNAL \rom_addr~14\ : std_logic;
SIGNAL \rom_addr~15\ : std_logic;
SIGNAL \rom_addr~16\ : std_logic;
SIGNAL \rom_we~0_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add4~2\ : std_logic;
SIGNAL \Add4~2COUT1_82\ : std_logic;
SIGNAL \Add4~5_combout\ : std_logic;
SIGNAL \ram_addr_ext[5]~6_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add4~12\ : std_logic;
SIGNAL \Add4~12COUT1_84\ : std_logic;
SIGNAL \Add4~15_combout\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~17COUT1_86\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \Add4~22\ : std_logic;
SIGNAL \Add4~22COUT1_88\ : std_logic;
SIGNAL \Add4~25_combout\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~27COUT1_90\ : std_logic;
SIGNAL \Add4~30_combout\ : std_logic;
SIGNAL \Add4~32\ : std_logic;
SIGNAL \Add4~35_combout\ : std_logic;
SIGNAL \ram_addr_ext[7]~13_combout\ : std_logic;
SIGNAL \ram_addr_ext[7]~14_combout\ : std_logic;
SIGNAL \Add4~37\ : std_logic;
SIGNAL \Add4~37COUT1_92\ : std_logic;
SIGNAL \Add4~40_combout\ : std_logic;
SIGNAL \Add4~42\ : std_logic;
SIGNAL \Add4~42COUT1_94\ : std_logic;
SIGNAL \Add4~45_combout\ : std_logic;
SIGNAL \Add4~47\ : std_logic;
SIGNAL \Add4~47COUT1_96\ : std_logic;
SIGNAL \Add4~50_combout\ : std_logic;
SIGNAL \Add4~52\ : std_logic;
SIGNAL \Add4~52COUT1_98\ : std_logic;
SIGNAL \Add4~55_combout\ : std_logic;
SIGNAL \Add4~57\ : std_logic;
SIGNAL \Add4~60_combout\ : std_logic;
SIGNAL \Add4~62\ : std_logic;
SIGNAL \Add4~62COUT1_100\ : std_logic;
SIGNAL \Add4~65_combout\ : std_logic;
SIGNAL \Equal18~2_combout\ : std_logic;
SIGNAL \Equal18~3_combout\ : std_logic;
SIGNAL \Equal18~0_combout\ : std_logic;
SIGNAL \Equal18~1_combout\ : std_logic;
SIGNAL \ram_addr_ext~4_combout\ : std_logic;
SIGNAL \ram_addr~0\ : std_logic;
SIGNAL \ram_addr~1\ : std_logic;
SIGNAL \ram_addr~2\ : std_logic;
SIGNAL \ram_addr~3\ : std_logic;
SIGNAL \ram_addr~4\ : std_logic;
SIGNAL \ram_addr~5\ : std_logic;
SIGNAL \ram_addr~6\ : std_logic;
SIGNAL \ram_addr~7\ : std_logic;
SIGNAL \ram_addr~8\ : std_logic;
SIGNAL \ram_addr~9\ : std_logic;
SIGNAL \ram_addr~10\ : std_logic;
SIGNAL \ram_addr~11\ : std_logic;
SIGNAL \ram_addr~12_combout\ : std_logic;
SIGNAL \ram_addr~13_combout\ : std_logic;
SIGNAL \ram_we~0_combout\ : std_logic;
SIGNAL vreg : std_logic_vector(9 DOWNTO 0);
SIGNAL temp_reg1 : std_logic_vector(7 DOWNTO 0);
SIGNAL sym_color : std_logic_vector(7 DOWNTO 0);
SIGNAL sym_attr : std_logic_vector(2 DOWNTO 0);
SIGNAL rom_reg : std_logic_vector(7 DOWNTO 0);
SIGNAL rom_addr_int : std_logic_vector(16 DOWNTO 0);
SIGNAL rom_addr_ext : std_logic_vector(16 DOWNTO 0);
SIGNAL ram_addr_int : std_logic_vector(13 DOWNTO 0);
SIGNAL ram_addr_ext : std_logic_vector(13 DOWNTO 0);
SIGNAL hreg : std_logic_vector(11 DOWNTO 0);
SIGNAL \host_data~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL cntrl_reg : std_logic_vector(4 DOWNTO 0);
SIGNAL blink_dev : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_ram_we~0_combout\ : std_logic;
SIGNAL \ALT_INV_rom_we~0_combout\ : std_logic;

BEGIN

ww_host_reset <= host_reset;
ww_gen <= gen;
rgb <= ww_rgb;
hs <= ww_hs;
vs <= ww_vs;
rom_addr <= ww_rom_addr;
rom_oe <= ww_rom_oe;
rom_we <= ww_rom_we;
ram_addr <= ww_ram_addr;
ram_we <= ww_ram_we;
ww_host_data <= host_data;
host_busy <= ww_host_busy;
ww_host_ad <= host_ad;
ww_host_cs <= host_cs;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_ram_we~0_combout\ <= NOT \ram_we~0_combout\;
\ALT_INV_rom_we~0_combout\ <= NOT \rom_we~0_combout\;

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rom_data[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \host_data~combout\(0),
	oe => \rom_we~0_combout\,
	padio => rom_data(0),
	combout => \rom_data[0]~0\);

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rom_data[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \host_data~combout\(1),
	oe => \rom_we~0_combout\,
	padio => rom_data(1),
	combout => \rom_data[1]~1\);

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rom_data[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \host_data~combout\(2),
	oe => \rom_we~0_combout\,
	padio => rom_data(2),
	combout => \rom_data[2]~2\);

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rom_data[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \host_data~combout\(3),
	oe => \rom_we~0_combout\,
	padio => rom_data(3),
	combout => \rom_data[3]~3\);

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rom_data[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \host_data~combout\(4),
	oe => \rom_we~0_combout\,
	padio => rom_data(4),
	combout => \rom_data[4]~4\);

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rom_data[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \host_data~combout\(5),
	oe => \rom_we~0_combout\,
	padio => rom_data(5),
	combout => \rom_data[5]~5\);

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rom_data[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \host_data~combout\(6),
	oe => \rom_we~0_combout\,
	padio => rom_data(6),
	combout => \rom_data[6]~6\);

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rom_data[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \host_data~combout\(7),
	oe => \rom_we~0_combout\,
	padio => rom_data(7),
	combout => \rom_data[7]~7\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ram_data[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \host_data~combout\(0),
	oe => \ram_we~0_combout\,
	padio => ram_data(0),
	combout => \ram_data[0]~0\);

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ram_data[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \host_data~combout\(1),
	oe => \ram_we~0_combout\,
	padio => ram_data(1),
	combout => \ram_data[1]~1\);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ram_data[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \host_data~combout\(2),
	oe => \ram_we~0_combout\,
	padio => ram_data(2),
	combout => \ram_data[2]~2\);

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ram_data[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \host_data~combout\(3),
	oe => \ram_we~0_combout\,
	padio => ram_data(3),
	combout => \ram_data[3]~3\);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ram_data[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \host_data~combout\(4),
	oe => \ram_we~0_combout\,
	padio => ram_data(4),
	combout => \ram_data[4]~4\);

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ram_data[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \host_data~combout\(5),
	oe => \ram_we~0_combout\,
	padio => ram_data(5),
	combout => \ram_data[5]~5\);

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ram_data[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \host_data~combout\(6),
	oe => \ram_we~0_combout\,
	padio => ram_data(6),
	combout => \ram_data[6]~6\);

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ram_data[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \host_data~combout\(7),
	oe => \ram_we~0_combout\,
	padio => ram_data(7),
	combout => \ram_data[7]~7\);

-- Location: PIN_12,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\gen~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_gen,
	combout => \gen~combout\);

-- Location: LC_X2_Y3_N3
gen_inv1 : maxii_lcell
-- Equation(s):
-- \gen_inv1~combout\ = LCELL((((!\gen~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \gen~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \gen_inv1~combout\);

-- Location: LC_X2_Y3_N4
gen_inv2 : maxii_lcell
-- Equation(s):
-- \gen_inv2~combout\ = LCELL((((!\gen_inv1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \gen_inv1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \gen_inv2~combout\);

-- Location: LC_X2_Y3_N5
gen_inv3 : maxii_lcell
-- Equation(s):
-- \gen_inv3~combout\ = LCELL((((!\gen_inv2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \gen_inv2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \gen_inv3~combout\);

-- Location: LC_X2_Y3_N6
gen_inv4 : maxii_lcell
-- Equation(s):
-- \gen_inv4~combout\ = LCELL((((!\gen_inv3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \gen_inv3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \gen_inv4~combout\);

-- Location: LC_X2_Y3_N7
clk : maxii_lcell
-- Equation(s):
-- \clk~combout\ = LCELL((\gen~combout\ $ (((!\gen_inv4~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc33",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \gen~combout\,
	datad => \gen_inv4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk~combout\);

-- Location: PIN_44,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\host_reset~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_host_reset,
	combout => \host_reset~combout\);

-- Location: LC_X6_Y2_N0
\Add1~0\ : maxii_lcell
-- Equation(s):
-- \Add1~0_combout\ = (!vreg(0))
-- \Add1~2\ = CARRY((vreg(0)))
-- \Add1~2COUT1_60\ = CARRY((vreg(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => vreg(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~0_combout\,
	cout0 => \Add1~2\,
	cout1 => \Add1~2COUT1_60\);

-- Location: LC_X5_Y2_N1
\vreg[0]\ : maxii_lcell
-- Equation(s):
-- vreg(0) = DFFEAS((\Add1~0_combout\ & (((!\Equal1~1\) # (!\Equal1~2\)) # (!vreg(6)))), GLOBAL(\clk~combout\), VCC, , \Equal0~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add1~0_combout\,
	datab => vreg(6),
	datac => \Equal1~2\,
	datad => \Equal1~1\,
	aclr => GND,
	ena => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => vreg(0));

-- Location: LC_X6_Y2_N1
\Add1~10\ : maxii_lcell
-- Equation(s):
-- \Add1~10_combout\ = (vreg(1) $ ((\Add1~2\)))
-- \Add1~12\ = CARRY(((!\Add1~2\) # (!vreg(1))))
-- \Add1~12COUT1_62\ = CARRY(((!\Add1~2COUT1_60\) # (!vreg(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => vreg(1),
	cin0 => \Add1~2\,
	cin1 => \Add1~2COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~10_combout\,
	cout0 => \Add1~12\,
	cout1 => \Add1~12COUT1_62\);

-- Location: LC_X6_Y2_N2
\Add1~45\ : maxii_lcell
-- Equation(s):
-- \Add1~45_combout\ = (vreg(2) $ ((!\Add1~12\)))
-- \Add1~47\ = CARRY(((vreg(2) & !\Add1~12\)))
-- \Add1~47COUT1_64\ = CARRY(((vreg(2) & !\Add1~12COUT1_62\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => vreg(2),
	cin0 => \Add1~12\,
	cin1 => \Add1~12COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~45_combout\,
	cout0 => \Add1~47\,
	cout1 => \Add1~47COUT1_64\);

-- Location: LC_X6_Y2_N3
\Add1~15\ : maxii_lcell
-- Equation(s):
-- \Add1~15_combout\ = (vreg(3) $ ((\Add1~47\)))
-- \Add1~17\ = CARRY(((!\Add1~47\) # (!vreg(3))))
-- \Add1~17COUT1_66\ = CARRY(((!\Add1~47COUT1_64\) # (!vreg(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => vreg(3),
	cin0 => \Add1~47\,
	cin1 => \Add1~47COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~15_combout\,
	cout0 => \Add1~17\,
	cout1 => \Add1~17COUT1_66\);

-- Location: LC_X4_Y2_N3
\vreg[3]\ : maxii_lcell
-- Equation(s):
-- vreg(3) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \Equal0~3_combout\, \Add1~15_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add1~15_combout\,
	aclr => GND,
	sload => VCC,
	ena => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => vreg(3));

-- Location: LC_X4_Y2_N2
\vreg[1]\ : maxii_lcell
-- Equation(s):
-- \Equal1~0\ = (((!vreg[1] & !vreg(3))))
-- vreg(1) = DFFEAS(\Equal1~0\, GLOBAL(\clk~combout\), VCC, , \Equal0~3_combout\, \Add1~10_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add1~10_combout\,
	datad => vreg(3),
	aclr => GND,
	sload => VCC,
	ena => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~0\,
	regout => vreg(1));

-- Location: LC_X5_Y2_N9
\vreg[2]\ : maxii_lcell
-- Equation(s):
-- vreg(2) = DFFEAS((\Add1~45_combout\ & (((!\Equal1~1\) # (!vreg(6))) # (!\Equal1~2\))), GLOBAL(\clk~combout\), VCC, , \Equal0~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal1~2\,
	datab => vreg(6),
	datac => \Add1~45_combout\,
	datad => \Equal1~1\,
	aclr => GND,
	ena => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => vreg(2));

-- Location: LC_X5_Y2_N7
\vreg[5]\ : maxii_lcell
-- Equation(s):
-- \Equal1~2\ = (vreg(4) & (vreg(2) & (!vreg[5] & !vreg(0))))
-- vreg(5) = DFFEAS(\Equal1~2\, GLOBAL(\clk~combout\), VCC, , \Equal0~3_combout\, \Add1~30_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => vreg(4),
	datab => vreg(2),
	datac => \Add1~30_combout\,
	datad => vreg(0),
	aclr => GND,
	sload => VCC,
	ena => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~2\,
	regout => vreg(5));

-- Location: LC_X6_Y2_N5
\Add1~30\ : maxii_lcell
-- Equation(s):
-- \Add1~30_combout\ = (vreg(5) $ ((\Add1~37\)))
-- \Add1~32\ = CARRY(((!\Add1~37\) # (!vreg(5))))
-- \Add1~32COUT1_68\ = CARRY(((!\Add1~37\) # (!vreg(5))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => vreg(5),
	cin => \Add1~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~30_combout\,
	cout0 => \Add1~32\,
	cout1 => \Add1~32COUT1_68\);

-- Location: LC_X6_Y2_N6
\Add1~40\ : maxii_lcell
-- Equation(s):
-- \Add1~40_combout\ = (vreg(6) $ ((!(!\Add1~37\ & \Add1~32\) # (\Add1~37\ & \Add1~32COUT1_68\))))
-- \Add1~42\ = CARRY(((vreg(6) & !\Add1~32\)))
-- \Add1~42COUT1_70\ = CARRY(((vreg(6) & !\Add1~32COUT1_68\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => vreg(6),
	cin => \Add1~37\,
	cin0 => \Add1~32\,
	cin1 => \Add1~32COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~40_combout\,
	cout0 => \Add1~42\,
	cout1 => \Add1~42COUT1_70\);

-- Location: LC_X5_Y2_N2
\vreg[6]\ : maxii_lcell
-- Equation(s):
-- vreg(6) = DFFEAS((\Add1~40_combout\ & (((!\Equal1~1\) # (!vreg(6))) # (!\Equal1~2\))), GLOBAL(\clk~combout\), VCC, , \Equal0~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal1~2\,
	datab => vreg(6),
	datac => \Add1~40_combout\,
	datad => \Equal1~1\,
	aclr => GND,
	ena => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => vreg(6));

-- Location: LC_X6_Y2_N4
\Add1~35\ : maxii_lcell
-- Equation(s):
-- \Add1~35_combout\ = vreg(4) $ ((((!\Add1~17\))))
-- \Add1~37\ = CARRY((vreg(4) & ((!\Add1~17COUT1_66\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => vreg(4),
	cin0 => \Add1~17\,
	cin1 => \Add1~17COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~35_combout\,
	cout => \Add1~37\);

-- Location: LC_X5_Y2_N8
\vreg[4]\ : maxii_lcell
-- Equation(s):
-- vreg(4) = DFFEAS((\Add1~35_combout\ & (((!\Equal1~2\) # (!vreg(6))) # (!\Equal1~1\))), GLOBAL(\clk~combout\), VCC, , \Equal0~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal1~1\,
	datab => vreg(6),
	datac => \Equal1~2\,
	datad => \Add1~35_combout\,
	aclr => GND,
	ena => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => vreg(4));

-- Location: LC_X6_Y2_N7
\Add1~20\ : maxii_lcell
-- Equation(s):
-- \Add1~20_combout\ = (vreg(7) $ (((!\Add1~37\ & \Add1~42\) # (\Add1~37\ & \Add1~42COUT1_70\))))
-- \Add1~22\ = CARRY(((!\Add1~42\) # (!vreg(7))))
-- \Add1~22COUT1_72\ = CARRY(((!\Add1~42COUT1_70\) # (!vreg(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => vreg(7),
	cin => \Add1~37\,
	cin0 => \Add1~42\,
	cin1 => \Add1~42COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~20_combout\,
	cout0 => \Add1~22\,
	cout1 => \Add1~22COUT1_72\);

-- Location: LC_X4_Y2_N6
\vreg[7]\ : maxii_lcell
-- Equation(s):
-- \Equal1~1\ = (!vreg(8) & (vreg(9) & (!vreg[7] & \Equal1~0\)))
-- vreg(7) = DFFEAS(\Equal1~1\, GLOBAL(\clk~combout\), VCC, , \Equal0~3_combout\, \Add1~20_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => vreg(8),
	datab => vreg(9),
	datac => \Add1~20_combout\,
	datad => \Equal1~0\,
	aclr => GND,
	sload => VCC,
	ena => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~1\,
	regout => vreg(7));

-- Location: LC_X6_Y2_N8
\Add1~25\ : maxii_lcell
-- Equation(s):
-- \Add1~25_combout\ = (vreg(8) $ ((!(!\Add1~37\ & \Add1~22\) # (\Add1~37\ & \Add1~22COUT1_72\))))
-- \Add1~27\ = CARRY(((vreg(8) & !\Add1~22\)))
-- \Add1~27COUT1_74\ = CARRY(((vreg(8) & !\Add1~22COUT1_72\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => vreg(8),
	cin => \Add1~37\,
	cin0 => \Add1~22\,
	cin1 => \Add1~22COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~25_combout\,
	cout0 => \Add1~27\,
	cout1 => \Add1~27COUT1_74\);

-- Location: LC_X5_Y2_N6
\vreg[8]\ : maxii_lcell
-- Equation(s):
-- vreg(8) = DFFEAS((((\Add1~25_combout\))), GLOBAL(\clk~combout\), VCC, , \Equal0~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add1~25_combout\,
	aclr => GND,
	ena => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => vreg(8));

-- Location: LC_X6_Y2_N9
\Add1~5\ : maxii_lcell
-- Equation(s):
-- \Add1~5_combout\ = (((!\Add1~37\ & \Add1~27\) # (\Add1~37\ & \Add1~27COUT1_74\) $ (vreg(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => vreg(9),
	cin => \Add1~37\,
	cin0 => \Add1~27\,
	cin1 => \Add1~27COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~5_combout\);

-- Location: LC_X5_Y2_N5
\vreg[9]\ : maxii_lcell
-- Equation(s):
-- vreg(9) = DFFEAS((\Add1~5_combout\ & (((!vreg(6)) # (!\Equal1~2\)) # (!\Equal1~1\))), GLOBAL(\clk~combout\), VCC, , \Equal0~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal1~1\,
	datab => \Equal1~2\,
	datac => \Add1~5_combout\,
	datad => vreg(6),
	aclr => GND,
	ena => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => vreg(9));

-- Location: LC_X4_Y2_N9
\host_busy~reg0\ : maxii_lcell
-- Equation(s):
-- \host_busy~reg0_regout\ = DFFEAS((((\host_reset~combout\ & !vreg(9)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \host_reset~combout\,
	datad => vreg(9),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \host_busy~reg0_regout\);

-- Location: LC_X2_Y4_N5
\Add2~40\ : maxii_lcell
-- Equation(s):
-- \Add2~40_combout\ = (hreg(1) $ ((\Add2~57\)))
-- \Add2~42\ = CARRY(((!\Add2~57\) # (!hreg(1))))
-- \Add2~42COUT1_70\ = CARRY(((!\Add2~57\) # (!hreg(1))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => hreg(1),
	cin => \Add2~57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~40_combout\,
	cout0 => \Add2~42\,
	cout1 => \Add2~42COUT1_70\);

-- Location: LC_X2_Y4_N6
\Add2~45\ : maxii_lcell
-- Equation(s):
-- \Add2~45_combout\ = (hreg(2) $ ((!(!\Add2~57\ & \Add2~42\) # (\Add2~57\ & \Add2~42COUT1_70\))))
-- \Add2~47\ = CARRY(((hreg(2) & !\Add2~42\)))
-- \Add2~47COUT1_72\ = CARRY(((hreg(2) & !\Add2~42COUT1_70\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => hreg(2),
	cin => \Add2~57\,
	cin0 => \Add2~42\,
	cin1 => \Add2~42COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~45_combout\,
	cout0 => \Add2~47\,
	cout1 => \Add2~47COUT1_72\);

-- Location: LC_X2_Y4_N7
\Add2~50\ : maxii_lcell
-- Equation(s):
-- \Add2~50_combout\ = (hreg(3) $ (((!\Add2~57\ & \Add2~47\) # (\Add2~57\ & \Add2~47COUT1_72\))))
-- \Add2~52\ = CARRY(((!\Add2~47\) # (!hreg(3))))
-- \Add2~52COUT1_74\ = CARRY(((!\Add2~47COUT1_72\) # (!hreg(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => hreg(3),
	cin => \Add2~57\,
	cin0 => \Add2~47\,
	cin1 => \Add2~47COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~50_combout\,
	cout0 => \Add2~52\,
	cout1 => \Add2~52COUT1_74\);

-- Location: LC_X3_Y2_N1
\hreg[3]\ : maxii_lcell
-- Equation(s):
-- \Equal0~1\ = (hreg(0) & (hreg(1) & (hreg[3] & hreg(2))))
-- hreg(3) = DFFEAS(\Equal0~1\, GLOBAL(\clk~combout\), VCC, , , \Add2~50_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => hreg(0),
	datab => hreg(1),
	datac => \Add2~50_combout\,
	datad => hreg(2),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1\,
	regout => hreg(3));

-- Location: LC_X4_Y2_N7
\ram_addr_int[4]~0\ : maxii_lcell
-- Equation(s):
-- \ram_addr_int[4]~0_combout\ = (!hreg(0) & (!hreg(1) & ((!hreg(2)) # (!hreg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0015",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => hreg(0),
	datab => hreg(3),
	datac => hreg(2),
	datad => hreg(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr_int[4]~0_combout\);

-- Location: LC_X6_Y3_N6
\ram_addr_int[12]\ : maxii_lcell
-- Equation(s):
-- \Equal9~0\ = (hreg(2) & (!hreg(0) & (!hreg(1) & !hreg(3))))
-- ram_addr_int(12) = DFFEAS(\Equal9~0\, GLOBAL(\clk~combout\), VCC, , \ram_addr_int[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => hreg(2),
	datab => hreg(0),
	datac => hreg(1),
	datad => hreg(3),
	aclr => GND,
	ena => \ram_addr_int[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal9~0\,
	regout => ram_addr_int(12));

-- Location: LC_X6_Y3_N7
\temp_reg1[2]\ : maxii_lcell
-- Equation(s):
-- \ram_input[2]~7\ = (\ram_data[2]~2\ & (((\host_busy~reg0_regout\))))
-- temp_reg1(2) = DFFEAS(\ram_input[2]~7\, GLOBAL(\clk~combout\), VCC, , \Equal9~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ram_data[2]~2\,
	datac => \host_busy~reg0_regout\,
	aclr => GND,
	ena => \Equal9~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_input[2]~7\,
	regout => temp_reg1(2));

-- Location: PIN_4,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\host_data[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_host_data(4),
	combout => \host_data~combout\(4));

-- Location: PIN_3,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\host_data[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_host_data(3),
	combout => \host_data~combout\(3));

-- Location: PIN_5,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\host_data[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_host_data(5),
	combout => \host_data~combout\(5));

-- Location: LC_X4_Y2_N8
\host_reset~_wirecell\ : maxii_lcell
-- Equation(s):
-- \host_reset~_wirecell_combout\ = (((!\host_reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \host_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \host_reset~_wirecell_combout\);

-- Location: PIN_66,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\host_ad~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_host_ad,
	combout => \host_ad~combout\);

-- Location: PIN_6,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\host_data[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_host_data(6),
	combout => \host_data~combout\(6));

-- Location: LC_X4_Y4_N8
\rom_addr_ext[6]~1\ : maxii_lcell
-- Equation(s):
-- \rom_addr_ext[6]~1_combout\ = (\host_ad~combout\ & (((\host_data~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \host_ad~combout\,
	datad => \host_data~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rom_addr_ext[6]~1_combout\);

-- Location: PIN_7,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\host_data[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_host_data(7),
	combout => \host_data~combout\(7));

-- Location: PIN_2,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\host_data[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_host_data(2),
	combout => \host_data~combout\(2));

-- Location: LC_X4_Y4_N1
\cntrl_reg~0\ : maxii_lcell
-- Equation(s):
-- \cntrl_reg~0_combout\ = (\rom_addr_ext[6]~1_combout\ & (\host_data~combout\(7) & (\host_data~combout\(5) & \host_data~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom_addr_ext[6]~1_combout\,
	datab => \host_data~combout\(7),
	datac => \host_data~combout\(5),
	datad => \host_data~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cntrl_reg~0_combout\);

-- Location: LC_X4_Y4_N2
\cntrl_reg[2]\ : maxii_lcell
-- Equation(s):
-- cntrl_reg(2) = DFFEAS((((\cntrl_reg~0_combout\))), GLOBAL(\host_cs~combout\), VCC, , , \host_reset~_wirecell_combout\, , , cntrl_reg(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	datac => \host_reset~_wirecell_combout\,
	datad => \cntrl_reg~0_combout\,
	aclr => GND,
	sload => cntrl_reg(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cntrl_reg(2));

-- Location: LC_X4_Y4_N5
\cntrl_reg[3]~1\ : maxii_lcell
-- Equation(s):
-- \cntrl_reg[3]~1_combout\ = (\host_data~combout\(5) & (!cntrl_reg(2) & (\host_data~combout\(7) & \rom_addr_ext[6]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \host_data~combout\(5),
	datab => cntrl_reg(2),
	datac => \host_data~combout\(7),
	datad => \rom_addr_ext[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cntrl_reg[3]~1_combout\);

-- Location: LC_X5_Y2_N3
\cntrl_reg[3]\ : maxii_lcell
-- Equation(s):
-- \always0~7\ = (((!cntrl_reg[3] & vreg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	datac => \host_data~combout\(3),
	datad => vreg(0),
	aclr => GND,
	sload => VCC,
	ena => \cntrl_reg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always0~7\,
	regout => cntrl_reg(3));

-- Location: LC_X5_Y2_N4
\cntrl_reg[4]\ : maxii_lcell
-- Equation(s):
-- \always0~8\ = (vreg(1) & ((vreg(2) & (cntrl_reg[4] & !\always0~7\)) # (!vreg(2) & (!cntrl_reg[4] & \always0~7\)))) # (!vreg(1) & (vreg(2) & (cntrl_reg[4] $ (!\always0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4284",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	dataa => vreg(1),
	datab => vreg(2),
	datac => \host_data~combout\(4),
	datad => \always0~7\,
	aclr => GND,
	sload => VCC,
	ena => \cntrl_reg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always0~8\,
	regout => cntrl_reg(4));

-- Location: LC_X3_Y2_N9
\ram_addr_int[13]\ : maxii_lcell
-- Equation(s):
-- \Equal10~0\ = (!hreg(0) & (hreg(3) & (!hreg(1) & !hreg(2))))
-- ram_addr_int(13) = DFFEAS(\Equal10~0\, GLOBAL(\clk~combout\), VCC, , \ram_addr_int[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => hreg(0),
	datab => hreg(3),
	datac => hreg(1),
	datad => hreg(2),
	aclr => GND,
	ena => \ram_addr_int[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal10~0\,
	regout => ram_addr_int(13));

-- Location: LC_X4_Y3_N3
\sym_attr[2]\ : maxii_lcell
-- Equation(s):
-- \always0~9\ = ((vreg(3) & (sym_attr[2] & \always0~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => vreg(3),
	datac => \ram_input[2]~7\,
	datad => \always0~8\,
	aclr => GND,
	sload => VCC,
	ena => \Equal10~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always0~9\,
	regout => sym_attr(2));

-- Location: LC_X4_Y3_N4
\rom_reg[7]\ : maxii_lcell
-- Equation(s):
-- rom_reg(7) = DFFEAS(((\always0~9\) # ((\host_busy~reg0_regout\ & \rom_data[7]~7\))), GLOBAL(\clk~combout\), VCC, , \Equal0~1\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \host_busy~reg0_regout\,
	datac => \rom_data[7]~7\,
	datad => \always0~9\,
	aclr => GND,
	ena => \Equal0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rom_reg(7));

-- Location: LC_X4_Y3_N9
\rom_reg[6]\ : maxii_lcell
-- Equation(s):
-- rom_reg(6) = DFFEAS(((\always0~9\) # ((\host_busy~reg0_regout\ & \rom_data[6]~6\))), GLOBAL(\clk~combout\), VCC, , \Equal0~1\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \host_busy~reg0_regout\,
	datac => \rom_data[6]~6\,
	datad => \always0~9\,
	aclr => GND,
	ena => \Equal0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rom_reg(6));

-- Location: LC_X3_Y3_N3
\hreg[2]\ : maxii_lcell
-- Equation(s):
-- \Mux0~2\ = (hreg(1) & (((hreg[2]) # (rom_reg(6))))) # (!hreg(1) & (rom_reg(7) & (!hreg[2])))
-- hreg(2) = DFFEAS(\Mux0~2\, GLOBAL(\clk~combout\), VCC, , , \Add2~45_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aea4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => hreg(1),
	datab => rom_reg(7),
	datac => \Add2~45_combout\,
	datad => rom_reg(6),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~2\,
	regout => hreg(2));

-- Location: LC_X4_Y3_N8
\rom_reg[3]\ : maxii_lcell
-- Equation(s):
-- rom_reg(3) = DFFEAS(((\always0~9\) # ((\host_busy~reg0_regout\ & \rom_data[3]~3\))), GLOBAL(\clk~combout\), VCC, , \Equal0~1\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \host_busy~reg0_regout\,
	datac => \rom_data[3]~3\,
	datad => \always0~9\,
	aclr => GND,
	ena => \Equal0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rom_reg(3));

-- Location: LC_X4_Y3_N1
\rom_reg[1]\ : maxii_lcell
-- Equation(s):
-- rom_reg(1) = DFFEAS(((\always0~9\) # ((\rom_data[1]~1\ & \host_busy~reg0_regout\))), GLOBAL(\clk~combout\), VCC, , \Equal0~1\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rom_data[1]~1\,
	datab => \host_busy~reg0_regout\,
	datad => \always0~9\,
	aclr => GND,
	ena => \Equal0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rom_reg(1));

-- Location: LC_X3_Y3_N5
\hreg[1]\ : maxii_lcell
-- Equation(s):
-- \Mux0~0\ = (hreg(2) & (((hreg[1]) # (rom_reg(1))))) # (!hreg(2) & (rom_reg(3) & (!hreg[1])))
-- hreg(1) = DFFEAS(\Mux0~0\, GLOBAL(\clk~combout\), VCC, , , \Add2~40_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aea4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => hreg(2),
	datab => rom_reg(3),
	datac => \Add2~40_combout\,
	datad => rom_reg(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0\,
	regout => hreg(1));

-- Location: LC_X2_Y4_N4
\Add2~55\ : maxii_lcell
-- Equation(s):
-- \Add2~55_combout\ = (!hreg(0))
-- \Add2~57\ = CARRY((hreg(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => hreg(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~55_combout\,
	cout => \Add2~57\);

-- Location: LC_X3_Y2_N5
\hreg[0]\ : maxii_lcell
-- Equation(s):
-- \always0~4\ = (!hreg(1) & (!hreg(3) & (!hreg[0] & !hreg(2))))
-- hreg(0) = DFFEAS(\always0~4\, GLOBAL(\clk~combout\), VCC, , , \Add2~55_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => hreg(1),
	datab => hreg(3),
	datac => \Add2~55_combout\,
	datad => hreg(2),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always0~4\,
	regout => hreg(0));

-- Location: LC_X3_Y4_N0
\Add2~15\ : maxii_lcell
-- Equation(s):
-- \Add2~15_combout\ = (hreg(6) $ ((!\Add2~32\)))
-- \Add2~17\ = CARRY(((hreg(6) & !\Add2~32\)))
-- \Add2~17COUT1_78\ = CARRY(((hreg(6) & !\Add2~32\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => hreg(6),
	cin => \Add2~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~15_combout\,
	cout0 => \Add2~17\,
	cout1 => \Add2~17COUT1_78\);

-- Location: LC_X2_Y2_N1
\hreg[6]\ : maxii_lcell
-- Equation(s):
-- hreg(6) = DFFEAS((((\Add2~15_combout\ & !\Equal0~3_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add2~15_combout\,
	datad => \Equal0~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hreg(6));

-- Location: LC_X3_Y4_N1
\Add2~20\ : maxii_lcell
-- Equation(s):
-- \Add2~20_combout\ = hreg(7) $ (((((!\Add2~32\ & \Add2~17\) # (\Add2~32\ & \Add2~17COUT1_78\)))))
-- \Add2~22\ = CARRY(((!\Add2~17\)) # (!hreg(7)))
-- \Add2~22COUT1_80\ = CARRY(((!\Add2~17COUT1_78\)) # (!hreg(7)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => hreg(7),
	cin => \Add2~32\,
	cin0 => \Add2~17\,
	cin1 => \Add2~17COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~20_combout\,
	cout0 => \Add2~22\,
	cout1 => \Add2~22COUT1_80\);

-- Location: LC_X3_Y4_N2
\Add2~25\ : maxii_lcell
-- Equation(s):
-- \Add2~25_combout\ = (hreg(8) $ ((!(!\Add2~32\ & \Add2~22\) # (\Add2~32\ & \Add2~22COUT1_80\))))
-- \Add2~27\ = CARRY(((hreg(8) & !\Add2~22\)))
-- \Add2~27COUT1_82\ = CARRY(((hreg(8) & !\Add2~22COUT1_80\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => hreg(8),
	cin => \Add2~32\,
	cin0 => \Add2~22\,
	cin1 => \Add2~22COUT1_80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~25_combout\,
	cout0 => \Add2~27\,
	cout1 => \Add2~27COUT1_82\);

-- Location: LC_X2_Y2_N6
\hreg[8]\ : maxii_lcell
-- Equation(s):
-- hreg(8) = DFFEAS((((\Add2~25_combout\ & !\Equal0~3_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add2~25_combout\,
	datad => \Equal0~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hreg(8));

-- Location: LC_X2_Y4_N8
\Add2~10\ : maxii_lcell
-- Equation(s):
-- \Add2~10_combout\ = (hreg(4) $ ((!(!\Add2~57\ & \Add2~52\) # (\Add2~57\ & \Add2~52COUT1_74\))))
-- \Add2~12\ = CARRY(((hreg(4) & !\Add2~52\)))
-- \Add2~12COUT1_76\ = CARRY(((hreg(4) & !\Add2~52COUT1_74\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => hreg(4),
	cin => \Add2~57\,
	cin0 => \Add2~52\,
	cin1 => \Add2~52COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~10_combout\,
	cout0 => \Add2~12\,
	cout1 => \Add2~12COUT1_76\);

-- Location: LC_X2_Y2_N7
\hreg[4]\ : maxii_lcell
-- Equation(s):
-- \Equal0~2\ = (hreg(8) & (((hreg[4] & hreg(6)))))
-- hreg(4) = DFFEAS(\Equal0~2\, GLOBAL(\clk~combout\), VCC, , , \Add2~10_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => hreg(8),
	datac => \Add2~10_combout\,
	datad => hreg(6),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2\,
	regout => hreg(4));

-- Location: LC_X2_Y4_N9
\Add2~30\ : maxii_lcell
-- Equation(s):
-- \Add2~30_combout\ = (hreg(5) $ (((!\Add2~57\ & \Add2~12\) # (\Add2~57\ & \Add2~12COUT1_76\))))
-- \Add2~32\ = CARRY(((!\Add2~12COUT1_76\) # (!hreg(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => hreg(5),
	cin => \Add2~57\,
	cin0 => \Add2~12\,
	cin1 => \Add2~12COUT1_76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~30_combout\,
	cout => \Add2~32\);

-- Location: LC_X3_Y2_N4
\hreg[7]\ : maxii_lcell
-- Equation(s):
-- hreg(7) = DFFEAS((((!\Equal0~3_combout\ & \Add2~20_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Equal0~3_combout\,
	datad => \Add2~20_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hreg(7));

-- Location: LC_X3_Y4_N3
\Add2~0\ : maxii_lcell
-- Equation(s):
-- \Add2~0_combout\ = hreg(9) $ (((((!\Add2~32\ & \Add2~27\) # (\Add2~32\ & \Add2~27COUT1_82\)))))
-- \Add2~2\ = CARRY(((!\Add2~27\)) # (!hreg(9)))
-- \Add2~2COUT1_84\ = CARRY(((!\Add2~27COUT1_82\)) # (!hreg(9)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => hreg(9),
	cin => \Add2~32\,
	cin0 => \Add2~27\,
	cin1 => \Add2~27COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~0_combout\,
	cout0 => \Add2~2\,
	cout1 => \Add2~2COUT1_84\);

-- Location: LC_X2_Y2_N2
\hreg[9]\ : maxii_lcell
-- Equation(s):
-- \always0~1\ = (!hreg(4) & (!hreg(6) & (!hreg[9] & !hreg(10))))
-- hreg(9) = DFFEAS(\always0~1\, GLOBAL(\clk~combout\), VCC, , , \Add2~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => hreg(4),
	datab => hreg(6),
	datac => \Add2~0_combout\,
	datad => hreg(10),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always0~1\,
	regout => hreg(9));

-- Location: LC_X3_Y4_N4
\Add2~5\ : maxii_lcell
-- Equation(s):
-- \Add2~5_combout\ = (hreg(10) $ ((!(!\Add2~32\ & \Add2~2\) # (\Add2~32\ & \Add2~2COUT1_84\))))
-- \Add2~7\ = CARRY(((hreg(10) & !\Add2~2COUT1_84\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => hreg(10),
	cin => \Add2~32\,
	cin0 => \Add2~2\,
	cin1 => \Add2~2COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~5_combout\,
	cout => \Add2~7\);

-- Location: LC_X3_Y2_N6
\hreg[10]\ : maxii_lcell
-- Equation(s):
-- \Equal0~0\ = (hreg(7) & (!hreg(5) & (!hreg[10] & !hreg(9))))
-- hreg(10) = DFFEAS(\Equal0~0\, GLOBAL(\clk~combout\), VCC, , , \Add2~5_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => hreg(7),
	datab => hreg(5),
	datac => \Add2~5_combout\,
	datad => hreg(9),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0\,
	regout => hreg(10));

-- Location: LC_X3_Y4_N5
\Add2~35\ : maxii_lcell
-- Equation(s):
-- \Add2~35_combout\ = (hreg(11) $ ((\Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => hreg(11),
	cin => \Add2~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~35_combout\);

-- Location: LC_X3_Y4_N7
\hreg[11]\ : maxii_lcell
-- Equation(s):
-- hreg(11) = DFFEAS(((!\Equal0~3_combout\ & (\Add2~35_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \Equal0~3_combout\,
	datac => \Add2~35_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hreg(11));

-- Location: LC_X3_Y2_N2
\Equal0~3\ : maxii_lcell
-- Equation(s):
-- \Equal0~3_combout\ = (hreg(11) & (\Equal0~2\ & (\Equal0~0\ & \Equal0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => hreg(11),
	datab => \Equal0~2\,
	datac => \Equal0~0\,
	datad => \Equal0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~3_combout\);

-- Location: LC_X3_Y2_N8
\hreg[5]\ : maxii_lcell
-- Equation(s):
-- hreg(5) = DFFEAS((((!\Equal0~3_combout\ & \Add2~30_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Equal0~3_combout\,
	datad => \Add2~30_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hreg(5));

-- Location: LC_X2_Y2_N4
\always0~0\ : maxii_lcell
-- Equation(s):
-- \always0~0_combout\ = (((\host_reset~combout\ & \host_busy~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \host_reset~combout\,
	datad => \host_busy~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always0~0_combout\);

-- Location: LC_X2_Y2_N3
\always0~2\ : maxii_lcell
-- Equation(s):
-- \always0~2_combout\ = (!hreg(8) & (!hreg(7) & ((\always0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => hreg(8),
	datab => hreg(7),
	datad => \always0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always0~2_combout\);

-- Location: LC_X2_Y2_N0
\always0~3\ : maxii_lcell
-- Equation(s):
-- \always0~3_combout\ = (\always0~0_combout\ & (hreg(11) $ (((hreg(5)) # (!\always0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => hreg(5),
	datab => hreg(11),
	datac => \always0~0_combout\,
	datad => \always0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always0~3_combout\);

-- Location: LC_X3_Y2_N3
\blink_dev[0]~2\ : maxii_lcell
-- Equation(s):
-- \blink_dev[0]~2_combout\ = (vreg(6) & (\Equal1~2\ & (\Equal1~1\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => vreg(6),
	datab => \Equal1~2\,
	datac => \Equal1~1\,
	datad => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \blink_dev[0]~2_combout\);

-- Location: LC_X3_Y2_N0
\blink_dev[0]\ : maxii_lcell
-- Equation(s):
-- blink_dev(0) = DFFEAS(((blink_dev(0) $ (\blink_dev[0]~2_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => blink_dev(0),
	datad => \blink_dev[0]~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink_dev(0));

-- Location: LC_X3_Y1_N0
\blink_dev[1]\ : maxii_lcell
-- Equation(s):
-- blink_dev(1) = DFFEAS(blink_dev(0) $ ((blink_dev(1))), GLOBAL(\clk~combout\), VCC, , \blink_dev[0]~2_combout\, , , , )
-- \blink_dev[1]~8\ = CARRY((blink_dev(0) & (blink_dev(1))))
-- \blink_dev[1]~8COUT1_15\ = CARRY((blink_dev(0) & (blink_dev(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => blink_dev(0),
	datab => blink_dev(1),
	aclr => GND,
	ena => \blink_dev[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink_dev(1),
	cout0 => \blink_dev[1]~8\,
	cout1 => \blink_dev[1]~8COUT1_15\);

-- Location: LC_X3_Y1_N1
\blink_dev[2]\ : maxii_lcell
-- Equation(s):
-- blink_dev(2) = DFFEAS((blink_dev(2) $ ((\blink_dev[1]~8\))), GLOBAL(\clk~combout\), VCC, , \blink_dev[0]~2_combout\, , , , )
-- \blink_dev[2]~6\ = CARRY(((!\blink_dev[1]~8\) # (!blink_dev(2))))
-- \blink_dev[2]~6COUT1_17\ = CARRY(((!\blink_dev[1]~8COUT1_15\) # (!blink_dev(2))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => blink_dev(2),
	aclr => GND,
	ena => \blink_dev[0]~2_combout\,
	cin0 => \blink_dev[1]~8\,
	cin1 => \blink_dev[1]~8COUT1_15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink_dev(2),
	cout0 => \blink_dev[2]~6\,
	cout1 => \blink_dev[2]~6COUT1_17\);

-- Location: LC_X3_Y1_N2
\blink_dev[3]\ : maxii_lcell
-- Equation(s):
-- blink_dev(3) = DFFEAS((blink_dev(3) $ ((!\blink_dev[2]~6\))), GLOBAL(\clk~combout\), VCC, , \blink_dev[0]~2_combout\, , , , )
-- \blink_dev[3]~4\ = CARRY(((blink_dev(3) & !\blink_dev[2]~6\)))
-- \blink_dev[3]~4COUT1_19\ = CARRY(((blink_dev(3) & !\blink_dev[2]~6COUT1_17\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => blink_dev(3),
	aclr => GND,
	ena => \blink_dev[0]~2_combout\,
	cin0 => \blink_dev[2]~6\,
	cin1 => \blink_dev[2]~6COUT1_17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink_dev(3),
	cout0 => \blink_dev[3]~4\,
	cout1 => \blink_dev[3]~4COUT1_19\);

-- Location: LC_X3_Y1_N3
\blink_dev[4]\ : maxii_lcell
-- Equation(s):
-- blink_dev(4) = DFFEAS(((\blink_dev[3]~4\ $ (blink_dev(4)))), GLOBAL(\clk~combout\), VCC, , \blink_dev[0]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => blink_dev(4),
	aclr => GND,
	ena => \blink_dev[0]~2_combout\,
	cin0 => \blink_dev[3]~4\,
	cin1 => \blink_dev[3]~4COUT1_19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink_dev(4));

-- Location: LC_X5_Y3_N0
\temp_reg1[1]\ : maxii_lcell
-- Equation(s):
-- \ram_input[1]~6\ = (((\ram_data[1]~1\ & \host_busy~reg0_regout\)))
-- temp_reg1(1) = DFFEAS(\ram_input[1]~6\, GLOBAL(\clk~combout\), VCC, , \Equal9~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \ram_data[1]~1\,
	datad => \host_busy~reg0_regout\,
	aclr => GND,
	ena => \Equal9~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_input[1]~6\,
	regout => temp_reg1(1));

-- Location: LC_X5_Y1_N2
\sym_attr[1]\ : maxii_lcell
-- Equation(s):
-- sym_attr(1) = DFFEAS((((\ram_input[1]~6\))), GLOBAL(\clk~combout\), VCC, , \Equal10~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \ram_input[1]~6\,
	aclr => GND,
	ena => \Equal10~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sym_attr(1));

-- Location: LC_X3_Y1_N8
\sym_color[4]\ : maxii_lcell
-- Equation(s):
-- sym_color(4) = DFFEAS((\host_busy~reg0_regout\ & (\ram_data[4]~4\ & ((!sym_attr(1)) # (!blink_dev(4))))), GLOBAL(\clk~combout\), VCC, , \Equal0~1\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "40c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => blink_dev(4),
	datab => \host_busy~reg0_regout\,
	datac => \ram_data[4]~4\,
	datad => sym_attr(1),
	aclr => GND,
	ena => \Equal0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sym_color(4));

-- Location: LC_X4_Y3_N7
\rom_reg[0]\ : maxii_lcell
-- Equation(s):
-- rom_reg(0) = DFFEAS(((\always0~9\) # ((\host_busy~reg0_regout\ & \rom_data[0]~0\))), GLOBAL(\clk~combout\), VCC, , \Equal0~1\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \host_busy~reg0_regout\,
	datac => \rom_data[0]~0\,
	datad => \always0~9\,
	aclr => GND,
	ena => \Equal0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rom_reg(0));

-- Location: LC_X4_Y3_N5
\rom_reg[2]\ : maxii_lcell
-- Equation(s):
-- rom_reg(2) = DFFEAS(((\always0~9\) # ((\host_busy~reg0_regout\ & \rom_data[2]~2\))), GLOBAL(\clk~combout\), VCC, , \Equal0~1\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \host_busy~reg0_regout\,
	datac => \rom_data[2]~2\,
	datad => \always0~9\,
	aclr => GND,
	ena => \Equal0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rom_reg(2));

-- Location: LC_X3_Y3_N6
\Mux0~1\ : maxii_lcell
-- Equation(s):
-- \Mux0~1_combout\ = (hreg(1) & ((\Mux0~0\ & (rom_reg(0))) # (!\Mux0~0\ & ((rom_reg(2)))))) # (!hreg(1) & (((\Mux0~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => rom_reg(0),
	datab => rom_reg(2),
	datac => hreg(1),
	datad => \Mux0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~1_combout\);

-- Location: LC_X4_Y3_N2
\rom_reg[4]\ : maxii_lcell
-- Equation(s):
-- rom_reg(4) = DFFEAS(((\always0~9\) # ((\rom_data[4]~4\ & \host_busy~reg0_regout\))), GLOBAL(\clk~combout\), VCC, , \Equal0~1\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rom_data[4]~4\,
	datab => \host_busy~reg0_regout\,
	datad => \always0~9\,
	aclr => GND,
	ena => \Equal0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rom_reg(4));

-- Location: LC_X4_Y3_N0
\rom_reg[5]\ : maxii_lcell
-- Equation(s):
-- rom_reg(5) = DFFEAS(((\always0~9\) # ((\host_busy~reg0_regout\ & \rom_data[5]~5\))), GLOBAL(\clk~combout\), VCC, , \Equal0~1\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \host_busy~reg0_regout\,
	datac => \rom_data[5]~5\,
	datad => \always0~9\,
	aclr => GND,
	ena => \Equal0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rom_reg(5));

-- Location: LC_X3_Y3_N4
\Mux0~3\ : maxii_lcell
-- Equation(s):
-- \Mux0~3_combout\ = (hreg(2) & ((\Mux0~2\ & (rom_reg(4))) # (!\Mux0~2\ & ((rom_reg(5)))))) # (!hreg(2) & (((\Mux0~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => hreg(2),
	datab => rom_reg(4),
	datac => rom_reg(5),
	datad => \Mux0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~3_combout\);

-- Location: LC_X3_Y3_N9
\Mux0~4\ : maxii_lcell
-- Equation(s):
-- \Mux0~4_combout\ = ((hreg(3) & (\Mux0~1_combout\)) # (!hreg(3) & ((\Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => hreg(3),
	datac => \Mux0~1_combout\,
	datad => \Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~4_combout\);

-- Location: LC_X5_Y3_N2
\temp_reg1[0]\ : maxii_lcell
-- Equation(s):
-- \ram_input[0]~5\ = (((\ram_data[0]~0\ & \host_busy~reg0_regout\)))
-- temp_reg1(0) = DFFEAS(\ram_input[0]~5\, GLOBAL(\clk~combout\), VCC, , \Equal9~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \ram_data[0]~0\,
	datad => \host_busy~reg0_regout\,
	aclr => GND,
	ena => \Equal9~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_input[0]~5\,
	regout => temp_reg1(0));

-- Location: LC_X5_Y1_N7
\sym_attr[0]\ : maxii_lcell
-- Equation(s):
-- \always0~6\ = (((sym_attr[0] & blink_dev(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \ram_input[0]~5\,
	datad => blink_dev(4),
	aclr => GND,
	sload => VCC,
	ena => \Equal10~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always0~6\,
	regout => sym_attr(0));

-- Location: LC_X6_Y1_N9
\rom_addr_int[13]\ : maxii_lcell
-- Equation(s):
-- \ram_input[4]~1\ = (\ram_data[4]~4\ & (((\host_busy~reg0_regout\))))
-- rom_addr_int(13) = DFFEAS(\ram_input[4]~1\, GLOBAL(\clk~combout\), VCC, , \Equal10~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ram_data[4]~4\,
	datad => \host_busy~reg0_regout\,
	aclr => GND,
	ena => \Equal10~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_input[4]~1\,
	regout => rom_addr_int(13));

-- Location: LC_X5_Y1_N4
\sym_color[0]\ : maxii_lcell
-- Equation(s):
-- sym_color(0) = DFFEAS((\always0~6\ & (!sym_attr(1) & ((\ram_input[4]~1\)))) # (!\always0~6\ & (((\ram_input[0]~5\)))), GLOBAL(\clk~combout\), VCC, , \Equal0~1\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7430",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => sym_attr(1),
	datab => \always0~6\,
	datac => \ram_input[0]~5\,
	datad => \ram_input[4]~1\,
	aclr => GND,
	ena => \Equal0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sym_color(0));

-- Location: LC_X2_Y3_N8
\rgb[0]~reg0\ : maxii_lcell
-- Equation(s):
-- \rgb[0]~reg0_regout\ = DFFEAS((\always0~3_combout\ & ((\Mux0~4_combout\ & ((sym_color(0)))) # (!\Mux0~4_combout\ & (sym_color(4))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a808",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \always0~3_combout\,
	datab => sym_color(4),
	datac => \Mux0~4_combout\,
	datad => sym_color(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgb[0]~reg0_regout\);

-- Location: LC_X3_Y1_N4
\sym_color[6]\ : maxii_lcell
-- Equation(s):
-- sym_color(6) = DFFEAS((\host_busy~reg0_regout\ & (\ram_data[6]~6\ & ((!sym_attr(1)) # (!blink_dev(4))))), GLOBAL(\clk~combout\), VCC, , \Equal0~1\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "40c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => blink_dev(4),
	datab => \host_busy~reg0_regout\,
	datac => \ram_data[6]~6\,
	datad => sym_attr(1),
	aclr => GND,
	ena => \Equal0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sym_color(6));

-- Location: LC_X3_Y1_N7
\sym_color[7]\ : maxii_lcell
-- Equation(s):
-- sym_color(7) = DFFEAS((\host_busy~reg0_regout\ & (\ram_data[7]~7\ & ((!sym_attr(1)) # (!blink_dev(4))))), GLOBAL(\clk~combout\), VCC, , \Equal0~1\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "40c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => blink_dev(4),
	datab => \host_busy~reg0_regout\,
	datac => \ram_data[7]~7\,
	datad => sym_attr(1),
	aclr => GND,
	ena => \Equal0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sym_color(7));

-- Location: LC_X3_Y1_N9
\sym_color[5]\ : maxii_lcell
-- Equation(s):
-- sym_color(5) = DFFEAS((\host_busy~reg0_regout\ & (\ram_data[5]~5\ & ((!sym_attr(1)) # (!blink_dev(4))))), GLOBAL(\clk~combout\), VCC, , \Equal0~1\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "40c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => blink_dev(4),
	datab => \host_busy~reg0_regout\,
	datac => \ram_data[5]~5\,
	datad => sym_attr(1),
	aclr => GND,
	ena => \Equal0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sym_color(5));

-- Location: LC_X3_Y1_N5
\rgb~2\ : maxii_lcell
-- Equation(s):
-- \rgb~2_combout\ = (sym_color(5) & (((sym_color(7)) # (sym_color(4))) # (!sym_color(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0d0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => sym_color(6),
	datab => sym_color(7),
	datac => sym_color(5),
	datad => sym_color(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rgb~2_combout\);

-- Location: LC_X6_Y1_N3
\rom_addr_int[15]\ : maxii_lcell
-- Equation(s):
-- \ram_input[6]~3\ = (((\ram_data[6]~6\ & \host_busy~reg0_regout\)))
-- rom_addr_int(15) = DFFEAS(\ram_input[6]~3\, GLOBAL(\clk~combout\), VCC, , \Equal10~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \ram_data[6]~6\,
	datad => \host_busy~reg0_regout\,
	aclr => GND,
	ena => \Equal10~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_input[6]~3\,
	regout => rom_addr_int(15));

-- Location: LC_X5_Y1_N9
\sym_color[2]\ : maxii_lcell
-- Equation(s):
-- sym_color(2) = DFFEAS((\always0~6\ & (!sym_attr(1) & (\ram_input[6]~3\))) # (!\always0~6\ & (((\ram_input[2]~7\)))), GLOBAL(\clk~combout\), VCC, , \Equal0~1\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7340",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => sym_attr(1),
	datab => \always0~6\,
	datac => \ram_input[6]~3\,
	datad => \ram_input[2]~7\,
	aclr => GND,
	ena => \Equal0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sym_color(2));

-- Location: LC_X6_Y1_N2
\rom_addr_int[14]\ : maxii_lcell
-- Equation(s):
-- \ram_input[5]~2\ = (((\ram_data[5]~5\ & \host_busy~reg0_regout\)))
-- rom_addr_int(14) = DFFEAS(\ram_input[5]~2\, GLOBAL(\clk~combout\), VCC, , \Equal10~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \ram_data[5]~5\,
	datad => \host_busy~reg0_regout\,
	aclr => GND,
	ena => \Equal10~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_input[5]~2\,
	regout => rom_addr_int(14));

-- Location: LC_X5_Y1_N6
\sym_color[1]\ : maxii_lcell
-- Equation(s):
-- sym_color(1) = DFFEAS((\always0~6\ & (!sym_attr(1) & (\ram_input[5]~2\))) # (!\always0~6\ & (((\ram_input[1]~6\)))), GLOBAL(\clk~combout\), VCC, , \Equal0~1\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7340",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => sym_attr(1),
	datab => \always0~6\,
	datac => \ram_input[5]~2\,
	datad => \ram_input[1]~6\,
	aclr => GND,
	ena => \Equal0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sym_color(1));

-- Location: LC_X6_Y1_N6
\rom_addr_int[16]\ : maxii_lcell
-- Equation(s):
-- \ram_input[7]~4\ = ((\ram_data[7]~7\ & ((\host_busy~reg0_regout\))))
-- rom_addr_int(16) = DFFEAS(\ram_input[7]~4\, GLOBAL(\clk~combout\), VCC, , \Equal10~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \ram_data[7]~7\,
	datad => \host_busy~reg0_regout\,
	aclr => GND,
	ena => \Equal10~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_input[7]~4\,
	regout => rom_addr_int(16));

-- Location: LC_X5_Y1_N3
\rom_addr_int[12]\ : maxii_lcell
-- Equation(s):
-- \ram_input[3]~0\ = (((\ram_data[3]~3\ & \host_busy~reg0_regout\)))
-- rom_addr_int(12) = DFFEAS(\ram_input[3]~0\, GLOBAL(\clk~combout\), VCC, , \Equal10~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \ram_data[3]~3\,
	datad => \host_busy~reg0_regout\,
	aclr => GND,
	ena => \Equal10~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_input[3]~0\,
	regout => rom_addr_int(12));

-- Location: LC_X5_Y1_N8
\sym_color[3]\ : maxii_lcell
-- Equation(s):
-- sym_color(3) = DFFEAS((\always0~6\ & (!sym_attr(1) & (\ram_input[7]~4\))) # (!\always0~6\ & (((\ram_input[3]~0\)))), GLOBAL(\clk~combout\), VCC, , \Equal0~1\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7340",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => sym_attr(1),
	datab => \always0~6\,
	datac => \ram_input[7]~4\,
	datad => \ram_input[3]~0\,
	aclr => GND,
	ena => \Equal0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sym_color(3));

-- Location: LC_X5_Y1_N1
\rgb~1\ : maxii_lcell
-- Equation(s):
-- \rgb~1_combout\ = (sym_color(1) & ((sym_color(0)) # ((sym_color(3)) # (!sym_color(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0b0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => sym_color(0),
	datab => sym_color(2),
	datac => sym_color(1),
	datad => sym_color(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rgb~1_combout\);

-- Location: LC_X3_Y3_N1
\rgb[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \rgb[1]~reg0_regout\ = DFFEAS((\always0~3_combout\ & ((\Mux0~4_combout\ & ((\rgb~1_combout\))) # (!\Mux0~4_combout\ & (\rgb~2_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rgb~2_combout\,
	datab => \Mux0~4_combout\,
	datac => \rgb~1_combout\,
	datad => \always0~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgb[1]~reg0_regout\);

-- Location: LC_X2_Y3_N0
\rgb[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \rgb[2]~reg0_regout\ = DFFEAS((\always0~3_combout\ & ((\Mux0~4_combout\ & ((sym_color(2)))) # (!\Mux0~4_combout\ & (sym_color(6))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ca00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => sym_color(6),
	datab => sym_color(2),
	datac => \Mux0~4_combout\,
	datad => \always0~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgb[2]~reg0_regout\);

-- Location: LC_X3_Y3_N7
\rgb[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \rgb~5\ = (\always0~3_combout\ & ((\Mux0~4_combout\ & (sym_color(3))) # (!\Mux0~4_combout\ & ((sym_color(7))))))
-- \rgb[3]~reg0_regout\ = DFFEAS(\rgb~5\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => sym_color(3),
	datab => \always0~3_combout\,
	datac => sym_color(7),
	datad => \Mux0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rgb~5\,
	regout => \rgb[3]~reg0_regout\);

-- Location: LC_X3_Y1_N6
\rgb~7\ : maxii_lcell
-- Equation(s):
-- \rgb~7_combout\ = (sym_color(7)) # ((sym_color(6) & (sym_color(5) & !sym_color(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => sym_color(6),
	datab => sym_color(7),
	datac => sym_color(5),
	datad => sym_color(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rgb~7_combout\);

-- Location: LC_X5_Y1_N0
\rgb~6\ : maxii_lcell
-- Equation(s):
-- \rgb~6_combout\ = (sym_color(3)) # ((!sym_color(0) & (sym_color(2) & sym_color(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => sym_color(0),
	datab => sym_color(2),
	datac => sym_color(1),
	datad => sym_color(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rgb~6_combout\);

-- Location: LC_X3_Y3_N2
\rgb[4]~reg0\ : maxii_lcell
-- Equation(s):
-- \rgb[4]~reg0_regout\ = DFFEAS((\always0~3_combout\ & ((\Mux0~4_combout\ & ((\rgb~6_combout\))) # (!\Mux0~4_combout\ & (\rgb~7_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rgb~7_combout\,
	datab => \Mux0~4_combout\,
	datac => \rgb~6_combout\,
	datad => \always0~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgb[4]~reg0_regout\);

-- Location: LC_X3_Y3_N8
\rgb[5]~reg0\ : maxii_lcell
-- Equation(s):
-- \rgb[5]~reg0_regout\ = DFFEAS((((\rgb~5\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \rgb~5\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgb[5]~reg0_regout\);

-- Location: LC_X2_Y2_N8
\hs~0\ : maxii_lcell
-- Equation(s):
-- \hs~0_combout\ = ((hreg(5) & (\host_reset~combout\ & \always0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => hreg(5),
	datac => \host_reset~combout\,
	datad => \always0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \hs~0_combout\);

-- Location: LC_X2_Y2_N9
\hs~1\ : maxii_lcell
-- Equation(s):
-- \hs~1_combout\ = (hreg(8) & (((!hreg(4) & !hreg(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => hreg(8),
	datac => hreg(4),
	datad => hreg(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \hs~1_combout\);

-- Location: LC_X3_Y2_N7
\hs~2\ : maxii_lcell
-- Equation(s):
-- \hs~2_combout\ = (\always0~4\ & (\hs~reg0_regout\ $ (((\hs~1_combout\ & \Equal0~0\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "28a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \always0~4\,
	datab => \hs~1_combout\,
	datac => \hs~reg0_regout\,
	datad => \Equal0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \hs~2_combout\);

-- Location: LC_X2_Y2_N5
\hs~reg0\ : maxii_lcell
-- Equation(s):
-- \hs~reg0_regout\ = DFFEAS((\hs~reg0_regout\ & (((!\hs~2_combout\) # (!hreg(11))) # (!\hs~0_combout\))) # (!\hs~reg0_regout\ & (((hreg(11) & \hs~2_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \hs~reg0_regout\,
	datab => \hs~0_combout\,
	datac => hreg(11),
	datad => \hs~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hs~reg0_regout\);

-- Location: LC_X4_Y2_N4
\vs~0\ : maxii_lcell
-- Equation(s):
-- \vs~0_combout\ = (vreg(2) & (((!\vs~reg0_regout\)))) # (!vreg(2) & (\host_reset~combout\ & (\vs~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2c2c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \host_reset~combout\,
	datab => vreg(2),
	datac => \vs~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \vs~0_combout\);

-- Location: LC_X5_Y2_N0
\Equal5~0\ : maxii_lcell
-- Equation(s):
-- \Equal5~0_combout\ = (!vreg(4) & (vreg(5) & (!vreg(6) & \Equal1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => vreg(4),
	datab => vreg(5),
	datac => vreg(6),
	datad => \Equal1~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal5~0_combout\);

-- Location: LC_X4_Y2_N5
\vs~reg0\ : maxii_lcell
-- Equation(s):
-- \vs~reg0_regout\ = DFFEAS((\vs~0_combout\ & ((\Equal5~0_combout\ & ((!vreg(0)))) # (!\Equal5~0_combout\ & (\vs~reg0_regout\)))) # (!\vs~0_combout\ & (\vs~reg0_regout\)), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2eaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \vs~reg0_regout\,
	datab => \vs~0_combout\,
	datac => vreg(0),
	datad => \Equal5~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vs~reg0_regout\);

-- Location: PIN_78,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\host_cs~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_host_cs,
	combout => \host_cs~combout\);

-- Location: LC_X4_Y1_N9
\rom_addr_int[0]\ : maxii_lcell
-- Equation(s):
-- rom_addr_int(0) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \Equal10~0\, vreg(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => vreg(0),
	aclr => GND,
	sload => VCC,
	ena => \Equal10~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rom_addr_int(0));

-- Location: PIN_92,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\host_data[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_host_data(0),
	combout => \host_data~combout\(0));

-- Location: LC_X4_Y4_N0
\rom_addr_ext[0]~0\ : maxii_lcell
-- Equation(s):
-- \rom_addr_ext[0]~0_combout\ = (\host_ad~combout\ & (!\host_data~combout\(6) & (!\host_data~combout\(7) & cntrl_reg(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \host_ad~combout\,
	datab => \host_data~combout\(6),
	datac => \host_data~combout\(7),
	datad => cntrl_reg(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rom_addr_ext[0]~0_combout\);

-- Location: LC_X4_Y1_N6
\rom_addr_ext[0]\ : maxii_lcell
-- Equation(s):
-- \rom_addr~0\ = ((cntrl_reg(2) & ((rom_addr_ext[0]))) # (!cntrl_reg(2) & (rom_addr_int(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	datab => rom_addr_int(0),
	datac => \host_data~combout\(0),
	datad => cntrl_reg(2),
	aclr => GND,
	sload => VCC,
	ena => \rom_addr_ext[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rom_addr~0\,
	regout => rom_addr_ext(0));

-- Location: LC_X4_Y1_N0
\rom_addr_int[1]\ : maxii_lcell
-- Equation(s):
-- rom_addr_int(1) = DFFEAS((((vreg(1)))), GLOBAL(\clk~combout\), VCC, , \Equal10~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => vreg(1),
	aclr => GND,
	ena => \Equal10~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rom_addr_int(1));

-- Location: PIN_95,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\host_data[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_host_data(1),
	combout => \host_data~combout\(1));

-- Location: LC_X4_Y1_N3
\rom_addr_ext[1]\ : maxii_lcell
-- Equation(s):
-- \rom_addr~1\ = ((cntrl_reg(2) & ((rom_addr_ext[1]))) # (!cntrl_reg(2) & (rom_addr_int(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	datab => rom_addr_int(1),
	datac => \host_data~combout\(1),
	datad => cntrl_reg(2),
	aclr => GND,
	sload => VCC,
	ena => \rom_addr_ext[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rom_addr~1\,
	regout => rom_addr_ext(1));

-- Location: LC_X4_Y1_N1
\rom_addr_int[2]\ : maxii_lcell
-- Equation(s):
-- rom_addr_int(2) = DFFEAS((((vreg(2)))), GLOBAL(\clk~combout\), VCC, , \Equal10~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => vreg(2),
	aclr => GND,
	ena => \Equal10~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rom_addr_int(2));

-- Location: LC_X4_Y1_N8
\rom_addr_ext[2]\ : maxii_lcell
-- Equation(s):
-- \rom_addr~2\ = ((cntrl_reg(2) & ((rom_addr_ext[2]))) # (!cntrl_reg(2) & (rom_addr_int(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	datab => rom_addr_int(2),
	datac => \host_data~combout\(2),
	datad => cntrl_reg(2),
	aclr => GND,
	sload => VCC,
	ena => \rom_addr_ext[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rom_addr~2\,
	regout => rom_addr_ext(2));

-- Location: LC_X4_Y3_N6
\rom_addr_int[3]\ : maxii_lcell
-- Equation(s):
-- rom_addr_int(3) = DFFEAS((((vreg(3)))), GLOBAL(\clk~combout\), VCC, , \Equal10~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => vreg(3),
	aclr => GND,
	ena => \Equal10~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rom_addr_int(3));

-- Location: LC_X4_Y1_N4
\rom_addr_ext[3]\ : maxii_lcell
-- Equation(s):
-- \rom_addr~3\ = ((cntrl_reg(2) & ((rom_addr_ext[3]))) # (!cntrl_reg(2) & (rom_addr_int(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	datab => rom_addr_int(3),
	datac => \host_data~combout\(3),
	datad => cntrl_reg(2),
	aclr => GND,
	sload => VCC,
	ena => \rom_addr_ext[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rom_addr~3\,
	regout => rom_addr_ext(3));

-- Location: LC_X4_Y1_N2
\rom_addr_int[4]\ : maxii_lcell
-- Equation(s):
-- rom_addr_int(4) = DFFEAS((((temp_reg1(0)))), GLOBAL(\clk~combout\), VCC, , \Equal10~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => temp_reg1(0),
	aclr => GND,
	ena => \Equal10~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rom_addr_int(4));

-- Location: LC_X4_Y1_N7
\rom_addr_ext[4]\ : maxii_lcell
-- Equation(s):
-- \rom_addr~4\ = ((cntrl_reg(2) & ((rom_addr_ext[4]))) # (!cntrl_reg(2) & (rom_addr_int(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	datab => rom_addr_int(4),
	datac => \host_data~combout\(4),
	datad => cntrl_reg(2),
	aclr => GND,
	sload => VCC,
	ena => \rom_addr_ext[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rom_addr~4\,
	regout => rom_addr_ext(4));

-- Location: LC_X5_Y1_N5
\rom_addr_int[5]\ : maxii_lcell
-- Equation(s):
-- rom_addr_int(5) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \Equal10~0\, temp_reg1(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => temp_reg1(1),
	aclr => GND,
	sload => VCC,
	ena => \Equal10~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rom_addr_int(5));

-- Location: LC_X4_Y1_N5
\rom_addr_ext[5]\ : maxii_lcell
-- Equation(s):
-- \rom_addr~5\ = ((cntrl_reg(2) & (rom_addr_ext[5])) # (!cntrl_reg(2) & ((rom_addr_int(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	datab => cntrl_reg(2),
	datac => \host_data~combout\(5),
	datad => rom_addr_int(5),
	aclr => GND,
	sload => VCC,
	ena => \rom_addr_ext[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rom_addr~5\,
	regout => rom_addr_ext(5));

-- Location: LC_X7_Y2_N9
\rom_addr_int[6]\ : maxii_lcell
-- Equation(s):
-- rom_addr_int(6) = DFFEAS((((temp_reg1(2)))), GLOBAL(\clk~combout\), VCC, , \Equal10~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => temp_reg1(2),
	aclr => GND,
	ena => \Equal10~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rom_addr_int(6));

-- Location: LC_X7_Y2_N3
\rom_addr_ext[6]~2\ : maxii_lcell
-- Equation(s):
-- \rom_addr_ext[6]~2_combout\ = (!\host_data~combout\(7) & (\host_ad~combout\ & (\host_data~combout\(6) & cntrl_reg(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \host_data~combout\(7),
	datab => \host_ad~combout\,
	datac => \host_data~combout\(6),
	datad => cntrl_reg(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rom_addr_ext[6]~2_combout\);

-- Location: LC_X7_Y2_N4
\rom_addr_ext[6]\ : maxii_lcell
-- Equation(s):
-- \rom_addr~6\ = ((cntrl_reg(2) & (rom_addr_ext[6])) # (!cntrl_reg(2) & ((rom_addr_int(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	datab => cntrl_reg(2),
	datac => \host_data~combout\(0),
	datad => rom_addr_int(6),
	aclr => GND,
	sload => VCC,
	ena => \rom_addr_ext[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rom_addr~6\,
	regout => rom_addr_ext(6));

-- Location: LC_X6_Y3_N5
\temp_reg1[3]\ : maxii_lcell
-- Equation(s):
-- temp_reg1(3) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \Equal9~0\, \ram_input[3]~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \ram_input[3]~0\,
	aclr => GND,
	sload => VCC,
	ena => \Equal9~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_reg1(3));

-- Location: LC_X7_Y2_N2
\rom_addr_int[7]\ : maxii_lcell
-- Equation(s):
-- rom_addr_int(7) = DFFEAS((((temp_reg1(3)))), GLOBAL(\clk~combout\), VCC, , \Equal10~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => temp_reg1(3),
	aclr => GND,
	ena => \Equal10~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rom_addr_int(7));

-- Location: LC_X7_Y2_N5
\rom_addr_ext[7]\ : maxii_lcell
-- Equation(s):
-- \rom_addr~7\ = ((cntrl_reg(2) & (rom_addr_ext[7])) # (!cntrl_reg(2) & ((rom_addr_int(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	datab => cntrl_reg(2),
	datac => \host_data~combout\(1),
	datad => rom_addr_int(7),
	aclr => GND,
	sload => VCC,
	ena => \rom_addr_ext[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rom_addr~7\,
	regout => rom_addr_ext(7));

-- Location: LC_X7_Y1_N5
\temp_reg1[4]\ : maxii_lcell
-- Equation(s):
-- temp_reg1(4) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \Equal9~0\, \ram_input[4]~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \ram_input[4]~1\,
	aclr => GND,
	sload => VCC,
	ena => \Equal9~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_reg1(4));

-- Location: LC_X7_Y1_N6
\rom_addr_int[8]\ : maxii_lcell
-- Equation(s):
-- rom_addr_int(8) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \Equal10~0\, temp_reg1(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => temp_reg1(4),
	aclr => GND,
	sload => VCC,
	ena => \Equal10~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rom_addr_int(8));

-- Location: LC_X7_Y2_N7
\rom_addr_ext[8]\ : maxii_lcell
-- Equation(s):
-- \rom_addr~8\ = ((cntrl_reg(2) & (rom_addr_ext[8])) # (!cntrl_reg(2) & ((rom_addr_int(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	datab => cntrl_reg(2),
	datac => \host_data~combout\(2),
	datad => rom_addr_int(8),
	aclr => GND,
	sload => VCC,
	ena => \rom_addr_ext[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rom_addr~8\,
	regout => rom_addr_ext(8));

-- Location: LC_X7_Y1_N4
\temp_reg1[5]\ : maxii_lcell
-- Equation(s):
-- temp_reg1(5) = DFFEAS((((\ram_input[5]~2\))), GLOBAL(\clk~combout\), VCC, , \Equal9~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \ram_input[5]~2\,
	aclr => GND,
	ena => \Equal9~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_reg1(5));

-- Location: LC_X7_Y1_N2
\rom_addr_int[9]\ : maxii_lcell
-- Equation(s):
-- rom_addr_int(9) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \Equal10~0\, temp_reg1(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => temp_reg1(5),
	aclr => GND,
	sload => VCC,
	ena => \Equal10~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rom_addr_int(9));

-- Location: LC_X7_Y2_N1
\rom_addr_ext[9]\ : maxii_lcell
-- Equation(s):
-- \rom_addr~9\ = ((cntrl_reg(2) & (rom_addr_ext[9])) # (!cntrl_reg(2) & ((rom_addr_int(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	datab => cntrl_reg(2),
	datac => \host_data~combout\(3),
	datad => rom_addr_int(9),
	aclr => GND,
	sload => VCC,
	ena => \rom_addr_ext[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rom_addr~9\,
	regout => rom_addr_ext(9));

-- Location: LC_X6_Y3_N9
\temp_reg1[6]\ : maxii_lcell
-- Equation(s):
-- temp_reg1(6) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \Equal9~0\, \ram_input[6]~3\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \ram_input[6]~3\,
	aclr => GND,
	sload => VCC,
	ena => \Equal9~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_reg1(6));

-- Location: LC_X7_Y3_N7
\rom_addr_int[10]\ : maxii_lcell
-- Equation(s):
-- rom_addr_int(10) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \Equal10~0\, temp_reg1(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => temp_reg1(6),
	aclr => GND,
	sload => VCC,
	ena => \Equal10~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rom_addr_int(10));

-- Location: LC_X7_Y2_N6
\rom_addr_ext[10]\ : maxii_lcell
-- Equation(s):
-- \rom_addr~10\ = ((cntrl_reg(2) & (rom_addr_ext[10])) # (!cntrl_reg(2) & ((rom_addr_int(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	datab => cntrl_reg(2),
	datac => \host_data~combout\(4),
	datad => rom_addr_int(10),
	aclr => GND,
	sload => VCC,
	ena => \rom_addr_ext[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rom_addr~10\,
	regout => rom_addr_ext(10));

-- Location: LC_X6_Y3_N1
\temp_reg1[7]\ : maxii_lcell
-- Equation(s):
-- temp_reg1(7) = DFFEAS((((\ram_input[7]~4\))), GLOBAL(\clk~combout\), VCC, , \Equal9~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \ram_input[7]~4\,
	aclr => GND,
	ena => \Equal9~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_reg1(7));

-- Location: LC_X7_Y3_N5
\rom_addr_int[11]\ : maxii_lcell
-- Equation(s):
-- rom_addr_int(11) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \Equal10~0\, temp_reg1(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => temp_reg1(7),
	aclr => GND,
	sload => VCC,
	ena => \Equal10~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rom_addr_int(11));

-- Location: LC_X7_Y2_N0
\rom_addr_ext[11]\ : maxii_lcell
-- Equation(s):
-- \rom_addr~11\ = ((cntrl_reg(2) & (rom_addr_ext[11])) # (!cntrl_reg(2) & ((rom_addr_int(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	datab => cntrl_reg(2),
	datac => \host_data~combout\(5),
	datad => rom_addr_int(11),
	aclr => GND,
	sload => VCC,
	ena => \rom_addr_ext[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rom_addr~11\,
	regout => rom_addr_ext(11));

-- Location: LC_X6_Y1_N4
\rom_addr_ext[12]~3\ : maxii_lcell
-- Equation(s):
-- \rom_addr_ext[12]~3_combout\ = (\host_data~combout\(7) & (!\host_data~combout\(6) & (\host_ad~combout\ & cntrl_reg(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \host_data~combout\(7),
	datab => \host_data~combout\(6),
	datac => \host_ad~combout\,
	datad => cntrl_reg(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rom_addr_ext[12]~3_combout\);

-- Location: LC_X6_Y1_N5
\rom_addr_ext[12]\ : maxii_lcell
-- Equation(s):
-- \rom_addr~12\ = ((cntrl_reg(2) & (rom_addr_ext[12])) # (!cntrl_reg(2) & ((rom_addr_int(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	datab => cntrl_reg(2),
	datac => \host_data~combout\(0),
	datad => rom_addr_int(12),
	aclr => GND,
	sload => VCC,
	ena => \rom_addr_ext[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rom_addr~12\,
	regout => rom_addr_ext(12));

-- Location: LC_X6_Y1_N1
\rom_addr_ext[13]\ : maxii_lcell
-- Equation(s):
-- \rom_addr~13\ = ((cntrl_reg(2) & ((rom_addr_ext[13]))) # (!cntrl_reg(2) & (rom_addr_int(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	datab => rom_addr_int(13),
	datac => \host_data~combout\(1),
	datad => cntrl_reg(2),
	aclr => GND,
	sload => VCC,
	ena => \rom_addr_ext[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rom_addr~13\,
	regout => rom_addr_ext(13));

-- Location: LC_X6_Y1_N7
\rom_addr_ext[14]\ : maxii_lcell
-- Equation(s):
-- \rom_addr~14\ = ((cntrl_reg(2) & (rom_addr_ext[14])) # (!cntrl_reg(2) & ((rom_addr_int(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	datab => cntrl_reg(2),
	datac => \host_data~combout\(2),
	datad => rom_addr_int(14),
	aclr => GND,
	sload => VCC,
	ena => \rom_addr_ext[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rom_addr~14\,
	regout => rom_addr_ext(14));

-- Location: LC_X6_Y1_N8
\rom_addr_ext[15]\ : maxii_lcell
-- Equation(s):
-- \rom_addr~15\ = ((cntrl_reg(2) & (rom_addr_ext[15])) # (!cntrl_reg(2) & ((rom_addr_int(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	datab => cntrl_reg(2),
	datac => \host_data~combout\(3),
	datad => rom_addr_int(15),
	aclr => GND,
	sload => VCC,
	ena => \rom_addr_ext[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rom_addr~15\,
	regout => rom_addr_ext(15));

-- Location: LC_X6_Y1_N0
\rom_addr_ext[16]\ : maxii_lcell
-- Equation(s):
-- \rom_addr~16\ = ((cntrl_reg(2) & ((rom_addr_ext[16]))) # (!cntrl_reg(2) & (rom_addr_int(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	dataa => rom_addr_int(16),
	datac => \host_data~combout\(4),
	datad => cntrl_reg(2),
	aclr => GND,
	sload => VCC,
	ena => \rom_addr_ext[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rom_addr~16\,
	regout => rom_addr_ext(16));

-- Location: LC_X5_Y3_N3
\rom_we~0\ : maxii_lcell
-- Equation(s):
-- \rom_we~0_combout\ = (!\host_ad~combout\ & (!\host_cs~combout\ & (cntrl_reg(2) & !\host_busy~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \host_ad~combout\,
	datab => \host_cs~combout\,
	datac => cntrl_reg(2),
	datad => \host_busy~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rom_we~0_combout\);

-- Location: LC_X5_Y4_N3
\Add4~0\ : maxii_lcell
-- Equation(s):
-- \Add4~0_combout\ = ((!ram_addr_ext(0)))
-- \Add4~2\ = CARRY(((ram_addr_ext(0))))
-- \Add4~2COUT1_82\ = CARRY(((ram_addr_ext(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => ram_addr_ext(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~0_combout\,
	cout0 => \Add4~2\,
	cout1 => \Add4~2COUT1_82\);

-- Location: LC_X5_Y4_N4
\Add4~5\ : maxii_lcell
-- Equation(s):
-- \Add4~5_combout\ = (ram_addr_ext(1) $ ((\Add4~2\)))
-- \Add4~7\ = CARRY(((!\Add4~2COUT1_82\) # (!ram_addr_ext(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => ram_addr_ext(1),
	cin0 => \Add4~2\,
	cin1 => \Add4~2COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~5_combout\,
	cout => \Add4~7\);

-- Location: LC_X4_Y4_N9
\ram_addr_ext[5]~6\ : maxii_lcell
-- Equation(s):
-- \ram_addr_ext[5]~6_combout\ = ((!cntrl_reg(2) & ((!\host_data~combout\(7))))) # (!\host_ad~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5577",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \host_ad~combout\,
	datab => cntrl_reg(2),
	datad => \host_data~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr_ext[5]~6_combout\);

-- Location: LC_X4_Y4_N6
\ram_addr_ext[1]\ : maxii_lcell
-- Equation(s):
-- ram_addr_ext(1) = DFFEAS((\host_ad~combout\ & ((\host_data~combout\(1)) # ((\Add4~5_combout\ & !\ram_addr_ext~4_combout\)))) # (!\host_ad~combout\ & (\Add4~5_combout\ & ((!\ram_addr_ext~4_combout\)))), GLOBAL(\host_cs~combout\), VCC, , 
-- \ram_addr_ext[5]~6_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0ec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	dataa => \host_ad~combout\,
	datab => \Add4~5_combout\,
	datac => \host_data~combout\(1),
	datad => \ram_addr_ext~4_combout\,
	aclr => GND,
	ena => \ram_addr_ext[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_ext(1));

-- Location: LC_X5_Y4_N5
\Add4~10\ : maxii_lcell
-- Equation(s):
-- \Add4~10_combout\ = (ram_addr_ext(2) $ ((!\Add4~7\)))
-- \Add4~12\ = CARRY(((ram_addr_ext(2) & !\Add4~7\)))
-- \Add4~12COUT1_84\ = CARRY(((ram_addr_ext(2) & !\Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => ram_addr_ext(2),
	cin => \Add4~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~10_combout\,
	cout0 => \Add4~12\,
	cout1 => \Add4~12COUT1_84\);

-- Location: LC_X5_Y4_N2
\ram_addr_ext[2]\ : maxii_lcell
-- Equation(s):
-- ram_addr_ext(2) = DFFEAS((\host_ad~combout\ & ((\host_data~combout\(2)) # ((\Add4~10_combout\ & !\ram_addr_ext~4_combout\)))) # (!\host_ad~combout\ & (((\Add4~10_combout\ & !\ram_addr_ext~4_combout\)))), GLOBAL(\host_cs~combout\), VCC, , 
-- \ram_addr_ext[5]~6_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88f8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	dataa => \host_ad~combout\,
	datab => \host_data~combout\(2),
	datac => \Add4~10_combout\,
	datad => \ram_addr_ext~4_combout\,
	aclr => GND,
	ena => \ram_addr_ext[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_ext(2));

-- Location: LC_X5_Y4_N6
\Add4~15\ : maxii_lcell
-- Equation(s):
-- \Add4~15_combout\ = (ram_addr_ext(3) $ (((!\Add4~7\ & \Add4~12\) # (\Add4~7\ & \Add4~12COUT1_84\))))
-- \Add4~17\ = CARRY(((!\Add4~12\) # (!ram_addr_ext(3))))
-- \Add4~17COUT1_86\ = CARRY(((!\Add4~12COUT1_84\) # (!ram_addr_ext(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => ram_addr_ext(3),
	cin => \Add4~7\,
	cin0 => \Add4~12\,
	cin1 => \Add4~12COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~15_combout\,
	cout0 => \Add4~17\,
	cout1 => \Add4~17COUT1_86\);

-- Location: LC_X5_Y4_N0
\ram_addr_ext[3]\ : maxii_lcell
-- Equation(s):
-- ram_addr_ext(3) = DFFEAS((\host_ad~combout\ & ((\host_data~combout\(3)) # ((\Add4~15_combout\ & !\ram_addr_ext~4_combout\)))) # (!\host_ad~combout\ & (((\Add4~15_combout\ & !\ram_addr_ext~4_combout\)))), GLOBAL(\host_cs~combout\), VCC, , 
-- \ram_addr_ext[5]~6_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88f8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	dataa => \host_ad~combout\,
	datab => \host_data~combout\(3),
	datac => \Add4~15_combout\,
	datad => \ram_addr_ext~4_combout\,
	aclr => GND,
	ena => \ram_addr_ext[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_ext(3));

-- Location: LC_X5_Y4_N7
\Add4~20\ : maxii_lcell
-- Equation(s):
-- \Add4~20_combout\ = (ram_addr_ext(4) $ ((!(!\Add4~7\ & \Add4~17\) # (\Add4~7\ & \Add4~17COUT1_86\))))
-- \Add4~22\ = CARRY(((ram_addr_ext(4) & !\Add4~17\)))
-- \Add4~22COUT1_88\ = CARRY(((ram_addr_ext(4) & !\Add4~17COUT1_86\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => ram_addr_ext(4),
	cin => \Add4~7\,
	cin0 => \Add4~17\,
	cin1 => \Add4~17COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~20_combout\,
	cout0 => \Add4~22\,
	cout1 => \Add4~22COUT1_88\);

-- Location: LC_X5_Y4_N1
\ram_addr_ext[4]\ : maxii_lcell
-- Equation(s):
-- ram_addr_ext(4) = DFFEAS((\host_ad~combout\ & ((\host_data~combout\(4)) # ((\Add4~20_combout\ & !\ram_addr_ext~4_combout\)))) # (!\host_ad~combout\ & (((\Add4~20_combout\ & !\ram_addr_ext~4_combout\)))), GLOBAL(\host_cs~combout\), VCC, , 
-- \ram_addr_ext[5]~6_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88f8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	dataa => \host_ad~combout\,
	datab => \host_data~combout\(4),
	datac => \Add4~20_combout\,
	datad => \ram_addr_ext~4_combout\,
	aclr => GND,
	ena => \ram_addr_ext[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_ext(4));

-- Location: LC_X5_Y4_N8
\Add4~25\ : maxii_lcell
-- Equation(s):
-- \Add4~25_combout\ = (ram_addr_ext(5) $ (((!\Add4~7\ & \Add4~22\) # (\Add4~7\ & \Add4~22COUT1_88\))))
-- \Add4~27\ = CARRY(((!\Add4~22\) # (!ram_addr_ext(5))))
-- \Add4~27COUT1_90\ = CARRY(((!\Add4~22COUT1_88\) # (!ram_addr_ext(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => ram_addr_ext(5),
	cin => \Add4~7\,
	cin0 => \Add4~22\,
	cin1 => \Add4~22COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~25_combout\,
	cout0 => \Add4~27\,
	cout1 => \Add4~27COUT1_90\);

-- Location: LC_X4_Y4_N3
\ram_addr_ext[5]\ : maxii_lcell
-- Equation(s):
-- ram_addr_ext(5) = DFFEAS((\host_ad~combout\ & ((\host_data~combout\(5)) # ((\Add4~25_combout\ & !\ram_addr_ext~4_combout\)))) # (!\host_ad~combout\ & (\Add4~25_combout\ & ((!\ram_addr_ext~4_combout\)))), GLOBAL(\host_cs~combout\), VCC, , 
-- \ram_addr_ext[5]~6_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0ec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	dataa => \host_ad~combout\,
	datab => \Add4~25_combout\,
	datac => \host_data~combout\(5),
	datad => \ram_addr_ext~4_combout\,
	aclr => GND,
	ena => \ram_addr_ext[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_ext(5));

-- Location: LC_X5_Y4_N9
\Add4~30\ : maxii_lcell
-- Equation(s):
-- \Add4~30_combout\ = (ram_addr_ext(6) $ ((!(!\Add4~7\ & \Add4~27\) # (\Add4~7\ & \Add4~27COUT1_90\))))
-- \Add4~32\ = CARRY(((ram_addr_ext(6) & !\Add4~27COUT1_90\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => ram_addr_ext(6),
	cin => \Add4~7\,
	cin0 => \Add4~27\,
	cin1 => \Add4~27COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~30_combout\,
	cout => \Add4~32\);

-- Location: LC_X4_Y4_N7
\ram_addr_ext[6]\ : maxii_lcell
-- Equation(s):
-- ram_addr_ext(6) = DFFEAS((\host_ad~combout\ & ((\host_data~combout\(6)) # ((\Add4~30_combout\ & !\ram_addr_ext~4_combout\)))) # (!\host_ad~combout\ & (((\Add4~30_combout\ & !\ram_addr_ext~4_combout\)))), GLOBAL(\host_cs~combout\), VCC, , 
-- \ram_addr_ext[5]~6_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88f8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	dataa => \host_ad~combout\,
	datab => \host_data~combout\(6),
	datac => \Add4~30_combout\,
	datad => \ram_addr_ext~4_combout\,
	aclr => GND,
	ena => \ram_addr_ext[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_ext(6));

-- Location: LC_X6_Y4_N0
\Add4~35\ : maxii_lcell
-- Equation(s):
-- \Add4~35_combout\ = (ram_addr_ext(7) $ ((\Add4~32\)))
-- \Add4~37\ = CARRY(((!\Add4~32\) # (!ram_addr_ext(7))))
-- \Add4~37COUT1_92\ = CARRY(((!\Add4~32\) # (!ram_addr_ext(7))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => ram_addr_ext(7),
	cin => \Add4~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~35_combout\,
	cout0 => \Add4~37\,
	cout1 => \Add4~37COUT1_92\);

-- Location: LC_X7_Y2_N8
\ram_addr_ext[7]~13\ : maxii_lcell
-- Equation(s):
-- \ram_addr_ext[7]~13_combout\ = (((\host_data~combout\(5) & \host_data~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \host_data~combout\(5),
	datad => \host_data~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr_ext[7]~13_combout\);

-- Location: LC_X7_Y4_N0
\ram_addr_ext[7]~14\ : maxii_lcell
-- Equation(s):
-- \ram_addr_ext[7]~14_combout\ = ((\host_data~combout\(7) & (!\ram_addr_ext[7]~13_combout\ & !cntrl_reg(2)))) # (!\host_ad~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "02ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \host_data~combout\(7),
	datab => \ram_addr_ext[7]~13_combout\,
	datac => cntrl_reg(2),
	datad => \host_ad~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr_ext[7]~14_combout\);

-- Location: LC_X7_Y4_N5
\ram_addr_ext[7]\ : maxii_lcell
-- Equation(s):
-- ram_addr_ext(7) = DFFEAS((\host_data~combout\(0) & ((\host_ad~combout\) # ((!\ram_addr_ext~4_combout\ & \Add4~35_combout\)))) # (!\host_data~combout\(0) & (((!\ram_addr_ext~4_combout\ & \Add4~35_combout\)))), GLOBAL(\host_cs~combout\), VCC, , 
-- \ram_addr_ext[7]~14_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8f88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	dataa => \host_data~combout\(0),
	datab => \host_ad~combout\,
	datac => \ram_addr_ext~4_combout\,
	datad => \Add4~35_combout\,
	aclr => GND,
	ena => \ram_addr_ext[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_ext(7));

-- Location: LC_X6_Y4_N1
\Add4~40\ : maxii_lcell
-- Equation(s):
-- \Add4~40_combout\ = (ram_addr_ext(8) $ ((!(!\Add4~32\ & \Add4~37\) # (\Add4~32\ & \Add4~37COUT1_92\))))
-- \Add4~42\ = CARRY(((ram_addr_ext(8) & !\Add4~37\)))
-- \Add4~42COUT1_94\ = CARRY(((ram_addr_ext(8) & !\Add4~37COUT1_92\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => ram_addr_ext(8),
	cin => \Add4~32\,
	cin0 => \Add4~37\,
	cin1 => \Add4~37COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~40_combout\,
	cout0 => \Add4~42\,
	cout1 => \Add4~42COUT1_94\);

-- Location: LC_X7_Y4_N8
\ram_addr_ext[8]\ : maxii_lcell
-- Equation(s):
-- ram_addr_ext(8) = DFFEAS((\host_data~combout\(1) & ((\host_ad~combout\) # ((\Add4~40_combout\ & !\ram_addr_ext~4_combout\)))) # (!\host_data~combout\(1) & (((\Add4~40_combout\ & !\ram_addr_ext~4_combout\)))), GLOBAL(\host_cs~combout\), VCC, , 
-- \ram_addr_ext[7]~14_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88f8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	dataa => \host_data~combout\(1),
	datab => \host_ad~combout\,
	datac => \Add4~40_combout\,
	datad => \ram_addr_ext~4_combout\,
	aclr => GND,
	ena => \ram_addr_ext[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_ext(8));

-- Location: LC_X6_Y4_N2
\Add4~45\ : maxii_lcell
-- Equation(s):
-- \Add4~45_combout\ = (ram_addr_ext(9) $ (((!\Add4~32\ & \Add4~42\) # (\Add4~32\ & \Add4~42COUT1_94\))))
-- \Add4~47\ = CARRY(((!\Add4~42\) # (!ram_addr_ext(9))))
-- \Add4~47COUT1_96\ = CARRY(((!\Add4~42COUT1_94\) # (!ram_addr_ext(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => ram_addr_ext(9),
	cin => \Add4~32\,
	cin0 => \Add4~42\,
	cin1 => \Add4~42COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~45_combout\,
	cout0 => \Add4~47\,
	cout1 => \Add4~47COUT1_96\);

-- Location: LC_X7_Y4_N9
\ram_addr_ext[9]\ : maxii_lcell
-- Equation(s):
-- ram_addr_ext(9) = DFFEAS((\host_ad~combout\ & ((\host_data~combout\(2)) # ((!\ram_addr_ext~4_combout\ & \Add4~45_combout\)))) # (!\host_ad~combout\ & (!\ram_addr_ext~4_combout\ & ((\Add4~45_combout\)))), GLOBAL(\host_cs~combout\), VCC, , 
-- \ram_addr_ext[7]~14_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b3a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	dataa => \host_ad~combout\,
	datab => \ram_addr_ext~4_combout\,
	datac => \host_data~combout\(2),
	datad => \Add4~45_combout\,
	aclr => GND,
	ena => \ram_addr_ext[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_ext(9));

-- Location: LC_X6_Y4_N3
\Add4~50\ : maxii_lcell
-- Equation(s):
-- \Add4~50_combout\ = (ram_addr_ext(10) $ ((!(!\Add4~32\ & \Add4~47\) # (\Add4~32\ & \Add4~47COUT1_96\))))
-- \Add4~52\ = CARRY(((ram_addr_ext(10) & !\Add4~47\)))
-- \Add4~52COUT1_98\ = CARRY(((ram_addr_ext(10) & !\Add4~47COUT1_96\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => ram_addr_ext(10),
	cin => \Add4~32\,
	cin0 => \Add4~47\,
	cin1 => \Add4~47COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~50_combout\,
	cout0 => \Add4~52\,
	cout1 => \Add4~52COUT1_98\);

-- Location: LC_X6_Y4_N9
\ram_addr_ext[10]\ : maxii_lcell
-- Equation(s):
-- ram_addr_ext(10) = DFFEAS((\ram_addr_ext~4_combout\ & (\host_data~combout\(3) & (\host_ad~combout\))) # (!\ram_addr_ext~4_combout\ & ((\Add4~50_combout\) # ((\host_data~combout\(3) & \host_ad~combout\)))), GLOBAL(\host_cs~combout\), VCC, , 
-- \ram_addr_ext[7]~14_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d5c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	dataa => \ram_addr_ext~4_combout\,
	datab => \host_data~combout\(3),
	datac => \host_ad~combout\,
	datad => \Add4~50_combout\,
	aclr => GND,
	ena => \ram_addr_ext[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_ext(10));

-- Location: LC_X6_Y4_N4
\Add4~55\ : maxii_lcell
-- Equation(s):
-- \Add4~55_combout\ = ram_addr_ext(11) $ (((((!\Add4~32\ & \Add4~52\) # (\Add4~32\ & \Add4~52COUT1_98\)))))
-- \Add4~57\ = CARRY(((!\Add4~52COUT1_98\)) # (!ram_addr_ext(11)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => ram_addr_ext(11),
	cin => \Add4~32\,
	cin0 => \Add4~52\,
	cin1 => \Add4~52COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~55_combout\,
	cout => \Add4~57\);

-- Location: LC_X7_Y4_N3
\ram_addr_ext[11]\ : maxii_lcell
-- Equation(s):
-- ram_addr_ext(11) = DFFEAS((\host_data~combout\(4) & ((\host_ad~combout\) # ((!\ram_addr_ext~4_combout\ & \Add4~55_combout\)))) # (!\host_data~combout\(4) & (((!\ram_addr_ext~4_combout\ & \Add4~55_combout\)))), GLOBAL(\host_cs~combout\), VCC, , 
-- \ram_addr_ext[7]~14_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8f88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	dataa => \host_data~combout\(4),
	datab => \host_ad~combout\,
	datac => \ram_addr_ext~4_combout\,
	datad => \Add4~55_combout\,
	aclr => GND,
	ena => \ram_addr_ext[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_ext(11));

-- Location: LC_X6_Y4_N5
\Add4~60\ : maxii_lcell
-- Equation(s):
-- \Add4~60_combout\ = (ram_addr_ext(12) $ ((!\Add4~57\)))
-- \Add4~62\ = CARRY(((ram_addr_ext(12) & !\Add4~57\)))
-- \Add4~62COUT1_100\ = CARRY(((ram_addr_ext(12) & !\Add4~57\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => ram_addr_ext(12),
	cin => \Add4~57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~60_combout\,
	cout0 => \Add4~62\,
	cout1 => \Add4~62COUT1_100\);

-- Location: LC_X6_Y4_N7
\ram_addr_ext[12]\ : maxii_lcell
-- Equation(s):
-- ram_addr_ext(12) = DFFEAS((\host_ad~combout\ & ((\host_data~combout\(5)) # ((\Add4~60_combout\ & !\ram_addr_ext~4_combout\)))) # (!\host_ad~combout\ & (((\Add4~60_combout\ & !\ram_addr_ext~4_combout\)))), GLOBAL(\host_cs~combout\), VCC, , 
-- \ram_addr_ext[7]~14_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88f8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	dataa => \host_ad~combout\,
	datab => \host_data~combout\(5),
	datac => \Add4~60_combout\,
	datad => \ram_addr_ext~4_combout\,
	aclr => GND,
	ena => \ram_addr_ext[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_ext(12));

-- Location: LC_X6_Y4_N6
\Add4~65\ : maxii_lcell
-- Equation(s):
-- \Add4~65_combout\ = (((!\Add4~57\ & \Add4~62\) # (\Add4~57\ & \Add4~62COUT1_100\) $ (ram_addr_ext(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => ram_addr_ext(13),
	cin => \Add4~57\,
	cin0 => \Add4~62\,
	cin1 => \Add4~62COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~65_combout\);

-- Location: LC_X7_Y4_N4
\ram_addr_ext[13]\ : maxii_lcell
-- Equation(s):
-- ram_addr_ext(13) = DFFEAS((\host_data~combout\(6) & ((\host_ad~combout\) # ((!\ram_addr_ext~4_combout\ & \Add4~65_combout\)))) # (!\host_data~combout\(6) & (!\ram_addr_ext~4_combout\ & (\Add4~65_combout\))), GLOBAL(\host_cs~combout\), VCC, , 
-- \ram_addr_ext[7]~14_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	dataa => \host_data~combout\(6),
	datab => \ram_addr_ext~4_combout\,
	datac => \Add4~65_combout\,
	datad => \host_ad~combout\,
	aclr => GND,
	ena => \ram_addr_ext[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_ext(13));

-- Location: LC_X7_Y4_N1
\Equal18~2\ : maxii_lcell
-- Equation(s):
-- \Equal18~2_combout\ = (ram_addr_ext(8) & (ram_addr_ext(9) & (ram_addr_ext(10) & ram_addr_ext(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => ram_addr_ext(8),
	datab => ram_addr_ext(9),
	datac => ram_addr_ext(10),
	datad => ram_addr_ext(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal18~2_combout\);

-- Location: LC_X7_Y4_N2
\Equal18~3\ : maxii_lcell
-- Equation(s):
-- \Equal18~3_combout\ = ((!ram_addr_ext(12) & (ram_addr_ext(13) & \Equal18~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => ram_addr_ext(12),
	datac => ram_addr_ext(13),
	datad => \Equal18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal18~3_combout\);

-- Location: LC_X4_Y4_N4
\Equal18~0\ : maxii_lcell
-- Equation(s):
-- \Equal18~0_combout\ = (ram_addr_ext(5) & (ram_addr_ext(6) & (ram_addr_ext(3) & ram_addr_ext(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => ram_addr_ext(5),
	datab => ram_addr_ext(6),
	datac => ram_addr_ext(3),
	datad => ram_addr_ext(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal18~0_combout\);

-- Location: LC_X7_Y4_N6
\Equal18~1\ : maxii_lcell
-- Equation(s):
-- \Equal18~1_combout\ = (ram_addr_ext(7) & (ram_addr_ext(2) & (ram_addr_ext(1) & ram_addr_ext(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => ram_addr_ext(7),
	datab => ram_addr_ext(2),
	datac => ram_addr_ext(1),
	datad => ram_addr_ext(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal18~1_combout\);

-- Location: LC_X7_Y4_N7
\ram_addr_ext~4\ : maxii_lcell
-- Equation(s):
-- \ram_addr_ext~4_combout\ = (\host_ad~combout\) # ((\Equal18~3_combout\ & (\Equal18~0_combout\ & \Equal18~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \host_ad~combout\,
	datab => \Equal18~3_combout\,
	datac => \Equal18~0_combout\,
	datad => \Equal18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr_ext~4_combout\);

-- Location: LC_X6_Y4_N8
\ram_addr_ext[0]\ : maxii_lcell
-- Equation(s):
-- ram_addr_ext(0) = DFFEAS((\host_ad~combout\ & ((\host_data~combout\(0)) # ((\Add4~0_combout\ & !\ram_addr_ext~4_combout\)))) # (!\host_ad~combout\ & (\Add4~0_combout\ & ((!\ram_addr_ext~4_combout\)))), GLOBAL(\host_cs~combout\), VCC, , 
-- \ram_addr_ext[5]~6_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0ec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	dataa => \host_ad~combout\,
	datab => \Add4~0_combout\,
	datac => \host_data~combout\(0),
	datad => \ram_addr_ext~4_combout\,
	aclr => GND,
	ena => \ram_addr_ext[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_ext(0));

-- Location: LC_X5_Y3_N7
\ram_addr_int[0]\ : maxii_lcell
-- Equation(s):
-- \ram_addr~0\ = ((\host_busy~reg0_regout\ & (ram_addr_int[0])) # (!\host_busy~reg0_regout\ & ((ram_addr_ext(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \host_busy~reg0_regout\,
	datac => hreg(4),
	datad => ram_addr_ext(0),
	aclr => GND,
	sload => VCC,
	ena => \ram_addr_int[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr~0\,
	regout => ram_addr_int(0));

-- Location: LC_X5_Y3_N1
\ram_addr_int[1]\ : maxii_lcell
-- Equation(s):
-- \ram_addr~1\ = ((\host_busy~reg0_regout\ & ((ram_addr_int[1]))) # (!\host_busy~reg0_regout\ & (ram_addr_ext(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => ram_addr_ext(1),
	datac => hreg(5),
	datad => \host_busy~reg0_regout\,
	aclr => GND,
	sload => VCC,
	ena => \ram_addr_int[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr~1\,
	regout => ram_addr_int(1));

-- Location: LC_X5_Y3_N4
\ram_addr_int[2]\ : maxii_lcell
-- Equation(s):
-- \ram_addr~2\ = ((\host_busy~reg0_regout\ & ((ram_addr_int[2]))) # (!\host_busy~reg0_regout\ & (ram_addr_ext(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => ram_addr_ext(2),
	datac => hreg(6),
	datad => \host_busy~reg0_regout\,
	aclr => GND,
	sload => VCC,
	ena => \ram_addr_int[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr~2\,
	regout => ram_addr_int(2));

-- Location: LC_X5_Y3_N6
\ram_addr_int[3]\ : maxii_lcell
-- Equation(s):
-- \ram_addr~3\ = ((\host_busy~reg0_regout\ & ((ram_addr_int[3]))) # (!\host_busy~reg0_regout\ & (ram_addr_ext(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => ram_addr_ext(3),
	datac => hreg(7),
	datad => \host_busy~reg0_regout\,
	aclr => GND,
	sload => VCC,
	ena => \ram_addr_int[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr~3\,
	regout => ram_addr_int(3));

-- Location: LC_X3_Y4_N9
\ram_addr_int[4]\ : maxii_lcell
-- Equation(s):
-- \ram_addr~4\ = ((\host_busy~reg0_regout\ & (ram_addr_int[4])) # (!\host_busy~reg0_regout\ & ((ram_addr_ext(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \host_busy~reg0_regout\,
	datac => hreg(8),
	datad => ram_addr_ext(4),
	aclr => GND,
	sload => VCC,
	ena => \ram_addr_int[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr~4\,
	regout => ram_addr_int(4));

-- Location: LC_X3_Y4_N8
\ram_addr_int[5]\ : maxii_lcell
-- Equation(s):
-- \ram_addr~5\ = (\host_busy~reg0_regout\ & (((ram_addr_int[5])))) # (!\host_busy~reg0_regout\ & (ram_addr_ext(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => ram_addr_ext(5),
	datab => \host_busy~reg0_regout\,
	datac => hreg(9),
	aclr => GND,
	sload => VCC,
	ena => \ram_addr_int[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr~5\,
	regout => ram_addr_int(5));

-- Location: LC_X3_Y4_N6
\ram_addr_int[6]\ : maxii_lcell
-- Equation(s):
-- \ram_addr~6\ = (\host_busy~reg0_regout\ & (((ram_addr_int[6])))) # (!\host_busy~reg0_regout\ & (ram_addr_ext(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \host_busy~reg0_regout\,
	datab => ram_addr_ext(6),
	datac => hreg(10),
	aclr => GND,
	sload => VCC,
	ena => \ram_addr_int[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr~6\,
	regout => ram_addr_int(6));

-- Location: LC_X6_Y3_N2
\ram_addr_int[7]\ : maxii_lcell
-- Equation(s):
-- \ram_addr~7\ = (\host_busy~reg0_regout\ & (((ram_addr_int[7])))) # (!\host_busy~reg0_regout\ & (((ram_addr_ext(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \host_busy~reg0_regout\,
	datac => vreg(4),
	datad => ram_addr_ext(7),
	aclr => GND,
	sload => VCC,
	ena => \ram_addr_int[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr~7\,
	regout => ram_addr_int(7));

-- Location: LC_X6_Y3_N4
\ram_addr_int[8]\ : maxii_lcell
-- Equation(s):
-- \ram_addr~8\ = (\host_busy~reg0_regout\ & (((ram_addr_int[8])))) # (!\host_busy~reg0_regout\ & (ram_addr_ext(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \host_busy~reg0_regout\,
	datab => ram_addr_ext(8),
	datac => vreg(5),
	aclr => GND,
	sload => VCC,
	ena => \ram_addr_int[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr~8\,
	regout => ram_addr_int(8));

-- Location: LC_X6_Y3_N8
\ram_addr_int[9]\ : maxii_lcell
-- Equation(s):
-- \ram_addr~9\ = (\host_busy~reg0_regout\ & (((ram_addr_int[9])))) # (!\host_busy~reg0_regout\ & (((ram_addr_ext(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \host_busy~reg0_regout\,
	datac => vreg(6),
	datad => ram_addr_ext(9),
	aclr => GND,
	sload => VCC,
	ena => \ram_addr_int[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr~9\,
	regout => ram_addr_int(9));

-- Location: LC_X5_Y3_N9
\ram_addr_int[10]\ : maxii_lcell
-- Equation(s):
-- \ram_addr~10\ = ((\host_busy~reg0_regout\ & ((ram_addr_int[10]))) # (!\host_busy~reg0_regout\ & (ram_addr_ext(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => ram_addr_ext(10),
	datac => vreg(7),
	datad => \host_busy~reg0_regout\,
	aclr => GND,
	sload => VCC,
	ena => \ram_addr_int[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr~10\,
	regout => ram_addr_int(10));

-- Location: LC_X6_Y3_N0
\ram_addr_int[11]\ : maxii_lcell
-- Equation(s):
-- \ram_addr~11\ = (\host_busy~reg0_regout\ & (((ram_addr_int[11])))) # (!\host_busy~reg0_regout\ & (((ram_addr_ext(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \host_busy~reg0_regout\,
	datac => vreg(8),
	datad => ram_addr_ext(11),
	aclr => GND,
	sload => VCC,
	ena => \ram_addr_int[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr~11\,
	regout => ram_addr_int(11));

-- Location: LC_X6_Y3_N3
\ram_addr~12\ : maxii_lcell
-- Equation(s):
-- \ram_addr~12_combout\ = (\host_busy~reg0_regout\ & (((ram_addr_int(12))))) # (!\host_busy~reg0_regout\ & (((ram_addr_ext(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \host_busy~reg0_regout\,
	datac => ram_addr_int(12),
	datad => ram_addr_ext(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr~12_combout\);

-- Location: LC_X5_Y3_N5
\ram_addr~13\ : maxii_lcell
-- Equation(s):
-- \ram_addr~13_combout\ = (\host_busy~reg0_regout\ & (ram_addr_int(13))) # (!\host_busy~reg0_regout\ & (((ram_addr_ext(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => ram_addr_int(13),
	datab => \host_busy~reg0_regout\,
	datad => ram_addr_ext(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr~13_combout\);

-- Location: LC_X5_Y3_N8
\ram_we~0\ : maxii_lcell
-- Equation(s):
-- \ram_we~0_combout\ = (!\host_ad~combout\ & (!\host_cs~combout\ & (!cntrl_reg(2) & !\host_busy~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \host_ad~combout\,
	datab => \host_cs~combout\,
	datac => cntrl_reg(2),
	datad => \host_busy~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_we~0_combout\);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rgb[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rgb[0]~reg0_regout\,
	oe => VCC,
	padio => ww_rgb(0));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rgb[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rgb[1]~reg0_regout\,
	oe => VCC,
	padio => ww_rgb(1));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rgb[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rgb[2]~reg0_regout\,
	oe => VCC,
	padio => ww_rgb(2));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rgb[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rgb[3]~reg0_regout\,
	oe => VCC,
	padio => ww_rgb(3));

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rgb[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rgb[4]~reg0_regout\,
	oe => VCC,
	padio => ww_rgb(4));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rgb[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rgb[5]~reg0_regout\,
	oe => VCC,
	padio => ww_rgb(5));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\hs~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \hs~reg0_regout\,
	oe => VCC,
	padio => ww_hs);

-- Location: PIN_56,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vs~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \vs~reg0_regout\,
	oe => VCC,
	padio => ww_vs);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rom_addr[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rom_addr~0\,
	oe => VCC,
	padio => ww_rom_addr(0));

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rom_addr[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rom_addr~1\,
	oe => VCC,
	padio => ww_rom_addr(1));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rom_addr[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rom_addr~2\,
	oe => VCC,
	padio => ww_rom_addr(2));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rom_addr[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rom_addr~3\,
	oe => VCC,
	padio => ww_rom_addr(3));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rom_addr[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rom_addr~4\,
	oe => VCC,
	padio => ww_rom_addr(4));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rom_addr[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rom_addr~5\,
	oe => VCC,
	padio => ww_rom_addr(5));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rom_addr[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rom_addr~6\,
	oe => VCC,
	padio => ww_rom_addr(6));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rom_addr[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rom_addr~7\,
	oe => VCC,
	padio => ww_rom_addr(7));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rom_addr[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rom_addr~8\,
	oe => VCC,
	padio => ww_rom_addr(8));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rom_addr[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rom_addr~9\,
	oe => VCC,
	padio => ww_rom_addr(9));

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rom_addr[10]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rom_addr~10\,
	oe => VCC,
	padio => ww_rom_addr(10));

-- Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rom_addr[11]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rom_addr~11\,
	oe => VCC,
	padio => ww_rom_addr(11));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rom_addr[12]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rom_addr~12\,
	oe => VCC,
	padio => ww_rom_addr(12));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rom_addr[13]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rom_addr~13\,
	oe => VCC,
	padio => ww_rom_addr(13));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rom_addr[14]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rom_addr~14\,
	oe => VCC,
	padio => ww_rom_addr(14));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rom_addr[15]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rom_addr~15\,
	oe => VCC,
	padio => ww_rom_addr(15));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rom_addr[16]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rom_addr~16\,
	oe => VCC,
	padio => ww_rom_addr(16));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rom_oe~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rom_we~0_combout\,
	oe => VCC,
	padio => ww_rom_oe);

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rom_we~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_rom_we~0_combout\,
	oe => VCC,
	padio => ww_rom_we);

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ram_addr[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ram_addr~0\,
	oe => VCC,
	padio => ww_ram_addr(0));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ram_addr[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ram_addr~1\,
	oe => VCC,
	padio => ww_ram_addr(1));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ram_addr[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ram_addr~2\,
	oe => VCC,
	padio => ww_ram_addr(2));

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ram_addr[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ram_addr~3\,
	oe => VCC,
	padio => ww_ram_addr(3));

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ram_addr[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ram_addr~4\,
	oe => VCC,
	padio => ww_ram_addr(4));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ram_addr[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ram_addr~5\,
	oe => VCC,
	padio => ww_ram_addr(5));

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ram_addr[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ram_addr~6\,
	oe => VCC,
	padio => ww_ram_addr(6));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ram_addr[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ram_addr~7\,
	oe => VCC,
	padio => ww_ram_addr(7));

-- Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ram_addr[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ram_addr~8\,
	oe => VCC,
	padio => ww_ram_addr(8));

-- Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ram_addr[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ram_addr~9\,
	oe => VCC,
	padio => ww_ram_addr(9));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ram_addr[10]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ram_addr~10\,
	oe => VCC,
	padio => ww_ram_addr(10));

-- Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ram_addr[11]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ram_addr~11\,
	oe => VCC,
	padio => ww_ram_addr(11));

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ram_addr[12]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ram_addr~12_combout\,
	oe => VCC,
	padio => ww_ram_addr(12));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ram_addr[13]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ram_addr~13_combout\,
	oe => VCC,
	padio => ww_ram_addr(13));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ram_we~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_ram_we~0_combout\,
	oe => VCC,
	padio => ww_ram_we);

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\host_busy~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \host_busy~reg0_regout\,
	oe => VCC,
	padio => ww_host_busy);
END structure;


