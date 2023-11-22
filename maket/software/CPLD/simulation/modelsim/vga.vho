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

-- DATE "08/19/2023 13:44:32"

-- 
-- Device: Altera EPM240T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	vga IS
    PORT (
	reset : IN std_logic;
	gen : IN std_logic;
	rgb : OUT std_logic_vector(5 DOWNTO 0);
	hs : OUT std_logic;
	vs : OUT std_logic;
	led : OUT std_logic;
	rom_addr : OUT std_logic_vector(10 DOWNTO 0);
	rom_data : IN std_logic_vector(7 DOWNTO 0);
	rom_rc : OUT std_logic;
	ram_addr : OUT std_logic_vector(13 DOWNTO 0);
	ram_data : INOUT std_logic_vector(7 DOWNTO 0);
	ram_we : OUT std_logic;
	host_data : IN std_logic_vector(7 DOWNTO 0);
	host_busy : OUT std_logic;
	host_ad : IN std_logic;
	host_cs : IN std_logic
	);
END vga;

-- Design Ports Information
-- host_ad	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- host_cs	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- gen	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- host_data[0]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- host_data[7]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- host_data[1]	=>  Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- host_data[2]	=>  Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- host_data[3]	=>  Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- host_data[4]	=>  Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- host_data[5]	=>  Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- host_data[6]	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rom_data[2]	=>  Location: PIN_56,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rom_data[1]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rom_data[3]	=>  Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rom_data[0]	=>  Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rom_data[5]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rom_data[6]	=>  Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rom_data[7]	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rom_data[4]	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rgb[0]	=>  Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rgb[1]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rgb[2]	=>  Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rgb[3]	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rgb[4]	=>  Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rgb[5]	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hs	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- vs	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- led	=>  Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rom_addr[0]	=>  Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rom_addr[1]	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rom_addr[2]	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rom_addr[3]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rom_addr[4]	=>  Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rom_addr[5]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rom_addr[6]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rom_addr[7]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rom_addr[8]	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rom_addr[9]	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rom_addr[10]	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rom_rc	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_addr[0]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_addr[1]	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_addr[2]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_addr[3]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_addr[4]	=>  Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_addr[5]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_addr[6]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_addr[7]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_addr[8]	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_addr[9]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_addr[10]	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_addr[11]	=>  Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_addr[12]	=>  Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_addr[13]	=>  Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_we	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- host_busy	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_data[0]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_data[1]	=>  Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_data[2]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_data[3]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_data[4]	=>  Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_data[5]	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_data[6]	=>  Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ram_data[7]	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA


ARCHITECTURE structure OF vga IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_gen : std_logic;
SIGNAL ww_rgb : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_hs : std_logic;
SIGNAL ww_vs : std_logic;
SIGNAL ww_led : std_logic;
SIGNAL ww_rom_addr : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_rom_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_rom_rc : std_logic;
SIGNAL ww_ram_addr : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_ram_we : std_logic;
SIGNAL ww_host_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_host_busy : std_logic;
SIGNAL ww_host_ad : std_logic;
SIGNAL ww_host_cs : std_logic;
SIGNAL \Add6~35\ : std_logic;
SIGNAL \Add5~10\ : std_logic;
SIGNAL \Add6~40\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add6~45\ : std_logic;
SIGNAL \Add5~20\ : std_logic;
SIGNAL \Add6~50\ : std_logic;
SIGNAL \Add5~25\ : std_logic;
SIGNAL \Add6~55\ : std_logic;
SIGNAL \Add5~30\ : std_logic;
SIGNAL \Add6~60\ : std_logic;
SIGNAL \Add5~35\ : std_logic;
SIGNAL \Add5~40\ : std_logic;
SIGNAL \Add5~45\ : std_logic;
SIGNAL \Add5~50\ : std_logic;
SIGNAL \Add5~55\ : std_logic;
SIGNAL \Add5~60\ : std_logic;
SIGNAL \ram_data[0]~0\ : std_logic;
SIGNAL \ram_data[1]~1\ : std_logic;
SIGNAL \ram_data[2]~2\ : std_logic;
SIGNAL \ram_data[3]~3\ : std_logic;
SIGNAL \ram_data[4]~4\ : std_logic;
SIGNAL \ram_data[5]~5\ : std_logic;
SIGNAL \ram_data[6]~6\ : std_logic;
SIGNAL \ram_data[7]~7\ : std_logic;
SIGNAL \gen~combout\ : std_logic;
SIGNAL \Add2~22COUT1_73\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~17COUT1_75\ : std_logic;
SIGNAL \Add2~25_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~27COUT1_77\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \always0~0\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~2COUT1_79\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~15_combout\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~7COUT1_76\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \host_ad~combout\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \Add7~12\ : std_logic;
SIGNAL \Add7~12COUT1_84\ : std_logic;
SIGNAL \Add7~17\ : std_logic;
SIGNAL \Add7~17COUT1_86\ : std_logic;
SIGNAL \Add7~20_combout\ : std_logic;
SIGNAL \ram_addr_ext[3]~6_combout\ : std_logic;
SIGNAL \Add7~22\ : std_logic;
SIGNAL \Add7~22COUT1_88\ : std_logic;
SIGNAL \Add7~25_combout\ : std_logic;
SIGNAL \Add7~27\ : std_logic;
SIGNAL \Add7~27COUT1_90\ : std_logic;
SIGNAL \Add7~30_combout\ : std_logic;
SIGNAL \Add7~32\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Add5~62_cout\ : std_logic;
SIGNAL \Add5~57_cout0\ : std_logic;
SIGNAL \Add5~57COUT1_76\ : std_logic;
SIGNAL \Add5~52_cout0\ : std_logic;
SIGNAL \Add5~52COUT1_78\ : std_logic;
SIGNAL \Add5~47_cout0\ : std_logic;
SIGNAL \Add5~47COUT1_80\ : std_logic;
SIGNAL \Add5~42_cout0\ : std_logic;
SIGNAL \Add5~42COUT1_82\ : std_logic;
SIGNAL \Add5~37_cout\ : std_logic;
SIGNAL \ram_addr_ext~14_combout\ : std_logic;
SIGNAL \Add7~35_combout\ : std_logic;
SIGNAL \Add6~62_cout\ : std_logic;
SIGNAL \Add6~57_cout0\ : std_logic;
SIGNAL \Add6~57COUT1_76\ : std_logic;
SIGNAL \Add6~52_cout0\ : std_logic;
SIGNAL \Add6~52COUT1_78\ : std_logic;
SIGNAL \Add6~47_cout0\ : std_logic;
SIGNAL \Add6~47COUT1_80\ : std_logic;
SIGNAL \Add6~42_cout0\ : std_logic;
SIGNAL \Add6~42COUT1_82\ : std_logic;
SIGNAL \Add6~37_cout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \ram_addr_ext~13_combout\ : std_logic;
SIGNAL \ram_addr_ext[10]~17_combout\ : std_logic;
SIGNAL \Add7~37\ : std_logic;
SIGNAL \Add7~37COUT1_92\ : std_logic;
SIGNAL \Add7~40_combout\ : std_logic;
SIGNAL \Add6~2\ : std_logic;
SIGNAL \Add6~2COUT1_84\ : std_logic;
SIGNAL \Add6~5_combout\ : std_logic;
SIGNAL \ram_addr_ext~18_combout\ : std_logic;
SIGNAL \Add7~42\ : std_logic;
SIGNAL \Add7~42COUT1_94\ : std_logic;
SIGNAL \Add7~45_combout\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~7COUT1_86\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \ram_addr_ext~20_combout\ : std_logic;
SIGNAL \Add5~32_cout0\ : std_logic;
SIGNAL \Add5~32COUT1_84\ : std_logic;
SIGNAL \Add5~27_cout0\ : std_logic;
SIGNAL \Add5~27COUT1_86\ : std_logic;
SIGNAL \Add5~22_cout0\ : std_logic;
SIGNAL \Add5~22COUT1_88\ : std_logic;
SIGNAL \Add5~17_cout0\ : std_logic;
SIGNAL \Add5~17COUT1_90\ : std_logic;
SIGNAL \Add5~12_cout\ : std_logic;
SIGNAL \Add6~12\ : std_logic;
SIGNAL \Add6~12COUT1_88\ : std_logic;
SIGNAL \Add6~17\ : std_logic;
SIGNAL \Add6~17COUT1_90\ : std_logic;
SIGNAL \Add6~22\ : std_logic;
SIGNAL \Add6~25_combout\ : std_logic;
SIGNAL \Add7~47\ : std_logic;
SIGNAL \Add7~47COUT1_96\ : std_logic;
SIGNAL \Add7~52COUT1_98\ : std_logic;
SIGNAL \Add7~57\ : std_logic;
SIGNAL \Add7~60_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \ram_addr_ext~26_combout\ : std_logic;
SIGNAL \ram_addr_ext~27_combout\ : std_logic;
SIGNAL \Add5~2\ : std_logic;
SIGNAL \Add5~2COUT1_92\ : std_logic;
SIGNAL \Add5~5_combout\ : std_logic;
SIGNAL \Add6~27\ : std_logic;
SIGNAL \Add6~27COUT1_92\ : std_logic;
SIGNAL \Add6~30_combout\ : std_logic;
SIGNAL \Add7~62\ : std_logic;
SIGNAL \Add7~62COUT1_100\ : std_logic;
SIGNAL \Add7~65_combout\ : std_logic;
SIGNAL \ram_addr_ext~29_combout\ : std_logic;
SIGNAL \ram_addr_ext~30_combout\ : std_logic;
SIGNAL \ram_addr_ext[3]~15_combout\ : std_logic;
SIGNAL \Add7~50_combout\ : std_logic;
SIGNAL \Add6~15_combout\ : std_logic;
SIGNAL \ram_addr_ext~22_combout\ : std_logic;
SIGNAL \Add7~52\ : std_logic;
SIGNAL \Add7~55_combout\ : std_logic;
SIGNAL \Add6~20_combout\ : std_logic;
SIGNAL \ram_addr_ext~24_combout\ : std_logic;
SIGNAL \ram_addr_ext[3]~3_combout\ : std_logic;
SIGNAL \ram_addr_ext[3]~4_combout\ : std_logic;
SIGNAL \ram_addr_ext[3]~1_combout\ : std_logic;
SIGNAL \ram_addr_ext[3]~0_combout\ : std_logic;
SIGNAL \ram_addr_ext[3]~2_combout\ : std_logic;
SIGNAL \Add7~2\ : std_logic;
SIGNAL \Add7~2COUT1_82\ : std_logic;
SIGNAL \Add7~5_combout\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~15_combout\ : std_logic;
SIGNAL \Add3~12\ : std_logic;
SIGNAL \Add3~12COUT1_78\ : std_logic;
SIGNAL \Add3~15_combout\ : std_logic;
SIGNAL \ram_addr_int[9]~1_combout\ : std_logic;
SIGNAL \Equal9~1_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~12\ : std_logic;
SIGNAL \Add1~12COUT1_68\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~17COUT1_70\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~17COUT1_80\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~22COUT1_82\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~32\ : std_logic;
SIGNAL \Add3~32COUT1_84\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~37COUT1_86\ : std_logic;
SIGNAL \Add3~42\ : std_logic;
SIGNAL \Add3~42COUT1_88\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~47COUT1_90\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Equal1~2\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~22COUT1_72\ : std_logic;
SIGNAL \Add1~25_combout\ : std_logic;
SIGNAL \Equal1~3\ : std_logic;
SIGNAL \Add1~42COUT1_60\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~7COUT1_62\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \cntrl_reg[3]~0_combout\ : std_logic;
SIGNAL \always0~8\ : std_logic;
SIGNAL \always0~9\ : std_logic;
SIGNAL \Equal13~0_combout\ : std_logic;
SIGNAL \always0~7_combout\ : std_logic;
SIGNAL \Add2~52\ : std_logic;
SIGNAL \Add2~52COUT1_65\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Equal12~0_combout\ : std_logic;
SIGNAL \Add3~35_combout\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \Add2~32\ : std_logic;
SIGNAL \Add2~32COUT1_67\ : std_logic;
SIGNAL \Add2~35_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~37COUT1_69\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~42COUT1_71\ : std_logic;
SIGNAL \Add2~45_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~5_combout\ : std_logic;
SIGNAL \Equal9~0\ : std_logic;
SIGNAL \Equal0~0\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal1~1\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~2COUT1_64\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~32\ : std_logic;
SIGNAL \Add1~32COUT1_66\ : std_logic;
SIGNAL \Add1~35_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~27COUT1_74\ : std_logic;
SIGNAL \Add1~45_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \always0~3\ : std_logic;
SIGNAL \host_busy~reg0_regout\ : std_logic;
SIGNAL \blink_dev[0]~0_combout\ : std_logic;
SIGNAL \blink_dev[1]~9\ : std_logic;
SIGNAL \blink_dev[1]~9COUT1_15\ : std_logic;
SIGNAL \blink_dev[2]~7\ : std_logic;
SIGNAL \blink_dev[2]~7COUT1_17\ : std_logic;
SIGNAL \blink_dev[3]~5\ : std_logic;
SIGNAL \blink_dev[3]~5COUT1_19\ : std_logic;
SIGNAL \ram_input[0]~0\ : std_logic;
SIGNAL \always0~6_combout\ : std_logic;
SIGNAL \sym_color~0\ : std_logic;
SIGNAL \always0~1\ : std_logic;
SIGNAL \always0~2_combout\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \Mux0~2\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Add3~25_combout\ : std_logic;
SIGNAL \Mux0~0\ : std_logic;
SIGNAL \Add3~5_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \rgb[0]~reg0_regout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \rgb~2_combout\ : std_logic;
SIGNAL \ram_input[1]~1\ : std_logic;
SIGNAL \sym_color~5\ : std_logic;
SIGNAL \ram_input[7]~3\ : std_logic;
SIGNAL \ram_input[2]~2\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \rgb~1_combout\ : std_logic;
SIGNAL \rgb[1]~reg0_regout\ : std_logic;
SIGNAL \rgb[2]~reg0_regout\ : std_logic;
SIGNAL \rgb[3]~reg0_regout\ : std_logic;
SIGNAL \rgb~6_combout\ : std_logic;
SIGNAL \rgb~7_combout\ : std_logic;
SIGNAL \rgb[4]~reg0_regout\ : std_logic;
SIGNAL \Add3~0\ : std_logic;
SIGNAL \rgb~5\ : std_logic;
SIGNAL \rgb[5]~reg0_regout\ : std_logic;
SIGNAL \hs~0_combout\ : std_logic;
SIGNAL \hs~reg0_regout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \always0~4_combout\ : std_logic;
SIGNAL \vs~reg0_regout\ : std_logic;
SIGNAL \temp_reg3~regout\ : std_logic;
SIGNAL \rom_addr[4]~1_combout\ : std_logic;
SIGNAL \rom_addr[0]~reg0_regout\ : std_logic;
SIGNAL \rom_addr[1]~reg0_regout\ : std_logic;
SIGNAL \rom_addr[2]~reg0_regout\ : std_logic;
SIGNAL \rom_addr[3]~reg0_regout\ : std_logic;
SIGNAL \rom_addr[4]~reg0_regout\ : std_logic;
SIGNAL \rom_addr[5]~reg0_regout\ : std_logic;
SIGNAL \rom_addr[6]~reg0_regout\ : std_logic;
SIGNAL \rom_addr[7]~reg0_regout\ : std_logic;
SIGNAL \rom_addr[8]~reg0_regout\ : std_logic;
SIGNAL \rom_addr[9]~reg0_regout\ : std_logic;
SIGNAL \rom_addr[10]~reg0_regout\ : std_logic;
SIGNAL \rom_rc~reg0_regout\ : std_logic;
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
SIGNAL \Add3~50\ : std_logic;
SIGNAL \ram_addr~10_combout\ : std_logic;
SIGNAL \Add3~52\ : std_logic;
SIGNAL \Add3~55_combout\ : std_logic;
SIGNAL \ram_addr~11_combout\ : std_logic;
SIGNAL \Add3~57\ : std_logic;
SIGNAL \Add3~57COUT1_92\ : std_logic;
SIGNAL \Add3~60_combout\ : std_logic;
SIGNAL \ram_addr~12_combout\ : std_logic;
SIGNAL \ram_addr~13_combout\ : std_logic;
SIGNAL \host_cs~combout\ : std_logic;
SIGNAL \ram_we~0_combout\ : std_logic;
SIGNAL vreg : std_logic_vector(9 DOWNTO 0);
SIGNAL temp_reg2 : std_logic_vector(2 DOWNTO 0);
SIGNAL temp_reg1 : std_logic_vector(7 DOWNTO 0);
SIGNAL sym_color : std_logic_vector(7 DOWNTO 0);
SIGNAL sym_attr : std_logic_vector(2 DOWNTO 0);
SIGNAL rom_reg : std_logic_vector(7 DOWNTO 0);
SIGNAL \rom_data~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL ram_addr_int : std_logic_vector(13 DOWNTO 0);
SIGNAL ram_addr_ext : std_logic_vector(13 DOWNTO 0);
SIGNAL hreg : std_logic_vector(10 DOWNTO 0);
SIGNAL \host_data~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL cntrl_reg : std_logic_vector(4 DOWNTO 0);
SIGNAL blink_dev : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_gen~combout\ : std_logic;
SIGNAL \ALT_INV_ram_we~0_combout\ : std_logic;
SIGNAL \ALT_INV_host_busy~reg0_regout\ : std_logic;

BEGIN

ww_reset <= reset;
ww_gen <= gen;
rgb <= ww_rgb;
hs <= ww_hs;
vs <= ww_vs;
led <= ww_led;
rom_addr <= ww_rom_addr;
ww_rom_data <= rom_data;
rom_rc <= ww_rom_rc;
ram_addr <= ww_ram_addr;
ram_we <= ww_ram_we;
ww_host_data <= host_data;
host_busy <= ww_host_busy;
ww_host_ad <= host_ad;
ww_host_cs <= host_cs;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_gen~combout\ <= NOT \gen~combout\;
\ALT_INV_ram_we~0_combout\ <= NOT \ram_we~0_combout\;
\ALT_INV_host_busy~reg0_regout\ <= NOT \host_busy~reg0_regout\;

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
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

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
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

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
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

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
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

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
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

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
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

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
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

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
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

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\gen~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_gen,
	combout => \gen~combout\);

-- Location: LC_X5_Y4_N0
\Add2~20\ : maxii_lcell
-- Equation(s):
-- \Add2~20_combout\ = (hreg(5) $ ((\Add2~47\)))
-- \Add2~22\ = CARRY(((!\Add2~47\) # (!hreg(5))))
-- \Add2~22COUT1_73\ = CARRY(((!\Add2~47\) # (!hreg(5))))

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
	datab => hreg(5),
	cin => \Add2~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~20_combout\,
	cout0 => \Add2~22\,
	cout1 => \Add2~22COUT1_73\);

-- Location: LC_X5_Y4_N1
\Add2~15\ : maxii_lcell
-- Equation(s):
-- \Add2~15_combout\ = hreg(6) $ ((((!(!\Add2~47\ & \Add2~22\) # (\Add2~47\ & \Add2~22COUT1_73\)))))
-- \Add2~17\ = CARRY((hreg(6) & ((!\Add2~22\))))
-- \Add2~17COUT1_75\ = CARRY((hreg(6) & ((!\Add2~22COUT1_73\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => hreg(6),
	cin => \Add2~47\,
	cin0 => \Add2~22\,
	cin1 => \Add2~22COUT1_73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~15_combout\,
	cout0 => \Add2~17\,
	cout1 => \Add2~17COUT1_75\);

-- Location: LC_X5_Y4_N2
\Add2~25\ : maxii_lcell
-- Equation(s):
-- \Add2~25_combout\ = (hreg(7) $ (((!\Add2~47\ & \Add2~17\) # (\Add2~47\ & \Add2~17COUT1_75\))))
-- \Add2~27\ = CARRY(((!\Add2~17\) # (!hreg(7))))
-- \Add2~27COUT1_77\ = CARRY(((!\Add2~17COUT1_75\) # (!hreg(7))))

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
	datab => hreg(7),
	cin => \Add2~47\,
	cin0 => \Add2~17\,
	cin1 => \Add2~17COUT1_75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~25_combout\,
	cout0 => \Add2~27\,
	cout1 => \Add2~27COUT1_77\);

-- Location: LC_X4_Y3_N6
\hreg[7]\ : maxii_lcell
-- Equation(s):
-- \always0~0\ = ((hreg(6)) # ((hreg[7]) # (hreg(5))))
-- hreg(7) = DFFEAS(\always0~0\, !GLOBAL(\gen~combout\), VCC, , , \Add2~25_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	datab => hreg(6),
	datac => \Add2~25_combout\,
	datad => hreg(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always0~0\,
	regout => hreg(7));

-- Location: LC_X5_Y4_N3
\Add2~0\ : maxii_lcell
-- Equation(s):
-- \Add2~0_combout\ = (hreg(8) $ ((!(!\Add2~47\ & \Add2~27\) # (\Add2~47\ & \Add2~27COUT1_77\))))
-- \Add2~2\ = CARRY(((hreg(8) & !\Add2~27\)))
-- \Add2~2COUT1_79\ = CARRY(((hreg(8) & !\Add2~27COUT1_77\)))

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
	cin => \Add2~47\,
	cin0 => \Add2~27\,
	cin1 => \Add2~27COUT1_77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~0_combout\,
	cout0 => \Add2~2\,
	cout1 => \Add2~2COUT1_79\);

-- Location: LC_X4_Y3_N2
\hreg[8]\ : maxii_lcell
-- Equation(s):
-- \always0~1\ = (hreg(9) & (!hreg(10))) # (!hreg(9) & ((hreg(10) & ((!\always0~0\) # (!hreg[8]))) # (!hreg(10) & ((hreg[8]) # (\always0~0\)))))
-- hreg(8) = DFFEAS(\always0~1\, !GLOBAL(\gen~combout\), VCC, , , \Add2~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3776",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => hreg(9),
	datab => hreg(10),
	datac => \Add2~0_combout\,
	datad => \always0~0\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always0~1\,
	regout => hreg(8));

-- Location: LC_X5_Y4_N4
\Add2~5\ : maxii_lcell
-- Equation(s):
-- \Add2~5_combout\ = hreg(9) $ (((((!\Add2~47\ & \Add2~2\) # (\Add2~47\ & \Add2~2COUT1_79\)))))
-- \Add2~7\ = CARRY(((!\Add2~2COUT1_79\)) # (!hreg(9)))

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
	cin => \Add2~47\,
	cin0 => \Add2~2\,
	cin1 => \Add2~2COUT1_79\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~5_combout\,
	cout => \Add2~7\);

-- Location: LC_X5_Y4_N5
\Add2~10\ : maxii_lcell
-- Equation(s):
-- \Add2~10_combout\ = ((\Add2~7\ $ (!hreg(10))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => hreg(10),
	cin => \Add2~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~10_combout\);

-- Location: LC_X4_Y3_N9
\hreg[10]\ : maxii_lcell
-- Equation(s):
-- hreg(10) = DFFEAS((!\Equal0~2_combout\ & (((\Add2~10_combout\)))), !GLOBAL(\gen~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => \Equal0~2_combout\,
	datad => \Add2~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hreg(10));

-- Location: LC_X4_Y3_N0
\hreg[5]\ : maxii_lcell
-- Equation(s):
-- \Equal0~0\ = (!hreg(7) & (hreg(10) & (!hreg[5] & !hreg(4))))
-- hreg(5) = DFFEAS(\Equal0~0\, !GLOBAL(\gen~combout\), VCC, , , \Add2~20_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => hreg(7),
	datab => hreg(10),
	datac => \Add2~20_combout\,
	datad => hreg(4),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0\,
	regout => hreg(5));

-- Location: LC_X4_Y3_N7
\hreg[6]\ : maxii_lcell
-- Equation(s):
-- hreg(6) = DFFEAS((!\Equal0~2_combout\ & (((\Add2~15_combout\)))), !GLOBAL(\gen~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => \Equal0~2_combout\,
	datad => \Add2~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hreg(6));

-- Location: LC_X5_Y3_N4
\hreg[4]\ : maxii_lcell
-- Equation(s):
-- \Add3~0\ = (!hreg(4))
-- hreg(4) = DFFEAS(\Add3~0\, !GLOBAL(\gen~combout\), VCC, , , \Add2~45_combout\, , , VCC)
-- \Add3~2\ = CARRY((hreg(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => hreg(4),
	datac => \Add2~45_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~0\,
	regout => hreg(4),
	cout => \Add3~2\);

-- Location: LC_X5_Y3_N5
\Add3~5\ : maxii_lcell
-- Equation(s):
-- \Add3~5_combout\ = hreg(5) $ ((((!\Add3~2\))))
-- \Add3~7\ = CARRY((!hreg(5) & ((!\Add3~2\))))
-- \Add3~7COUT1_76\ = CARRY((!hreg(5) & ((!\Add3~2\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => hreg(5),
	cin => \Add3~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~5_combout\,
	cout0 => \Add3~7\,
	cout1 => \Add3~7COUT1_76\);

-- Location: LC_X5_Y3_N6
\Add3~10\ : maxii_lcell
-- Equation(s):
-- \Add3~10_combout\ = (hreg(6) $ (((!\Add3~2\ & \Add3~7\) # (\Add3~2\ & \Add3~7COUT1_76\))))
-- \Add3~12\ = CARRY(((hreg(6)) # (!\Add3~7\)))
-- \Add3~12COUT1_78\ = CARRY(((hreg(6)) # (!\Add3~7COUT1_76\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => hreg(6),
	cin => \Add3~2\,
	cin0 => \Add3~7\,
	cin1 => \Add3~7COUT1_76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~10_combout\,
	cout0 => \Add3~12\,
	cout1 => \Add3~12COUT1_78\);

-- Location: LC_X4_Y4_N5
\Add2~50\ : maxii_lcell
-- Equation(s):
-- \Add2~50_combout\ = ((!hreg(0)))
-- \Add2~52\ = CARRY(((hreg(0))))
-- \Add2~52COUT1_65\ = CARRY(((hreg(0))))

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
	datab => hreg(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~50_combout\,
	cout0 => \Add2~52\,
	cout1 => \Add2~52COUT1_65\);

-- Location: LC_X5_Y3_N2
\hreg[0]\ : maxii_lcell
-- Equation(s):
-- hreg(0) = DFFEAS((!\Equal0~2_combout\ & (((\Add2~50_combout\)))), !GLOBAL(\gen~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => \Equal0~2_combout\,
	datac => \Add2~50_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hreg(0));

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\host_data[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_host_data(1),
	combout => \host_data~combout\(1));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\host_ad~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_host_ad,
	combout => \host_ad~combout\);

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\host_data[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_host_data(2),
	combout => \host_data~combout\(2));

-- Location: LC_X4_Y1_N5
\Add7~10\ : maxii_lcell
-- Equation(s):
-- \Add7~10_combout\ = ram_addr_ext(2) $ ((((!\Add7~7\))))
-- \Add7~12\ = CARRY((ram_addr_ext(2) & ((!\Add7~7\))))
-- \Add7~12COUT1_84\ = CARRY((ram_addr_ext(2) & ((!\Add7~7\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => ram_addr_ext(2),
	cin => \Add7~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~10_combout\,
	cout0 => \Add7~12\,
	cout1 => \Add7~12COUT1_84\);

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\host_data[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_host_data(6),
	combout => \host_data~combout\(6));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\host_data[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_host_data(5),
	combout => \host_data~combout\(5));

-- Location: LC_X4_Y1_N6
\Add7~15\ : maxii_lcell
-- Equation(s):
-- \Add7~15_combout\ = (ram_addr_ext(3) $ (((!\Add7~7\ & \Add7~12\) # (\Add7~7\ & \Add7~12COUT1_84\))))
-- \Add7~17\ = CARRY(((!\Add7~12\) # (!ram_addr_ext(3))))
-- \Add7~17COUT1_86\ = CARRY(((!\Add7~12COUT1_84\) # (!ram_addr_ext(3))))

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
	cin => \Add7~7\,
	cin0 => \Add7~12\,
	cin1 => \Add7~12COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~15_combout\,
	cout0 => \Add7~17\,
	cout1 => \Add7~17COUT1_86\);

-- Location: LC_X4_Y1_N7
\Add7~20\ : maxii_lcell
-- Equation(s):
-- \Add7~20_combout\ = ram_addr_ext(4) $ ((((!(!\Add7~7\ & \Add7~17\) # (\Add7~7\ & \Add7~17COUT1_86\)))))
-- \Add7~22\ = CARRY((ram_addr_ext(4) & ((!\Add7~17\))))
-- \Add7~22COUT1_88\ = CARRY((ram_addr_ext(4) & ((!\Add7~17COUT1_86\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => ram_addr_ext(4),
	cin => \Add7~7\,
	cin0 => \Add7~17\,
	cin1 => \Add7~17COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~20_combout\,
	cout0 => \Add7~22\,
	cout1 => \Add7~22COUT1_88\);

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\host_data[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_host_data(4),
	combout => \host_data~combout\(4));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\host_data[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_host_data(7),
	combout => \host_data~combout\(7));

-- Location: LC_X6_Y2_N3
\ram_addr_ext[3]~6\ : maxii_lcell
-- Equation(s):
-- \ram_addr_ext[3]~6_combout\ = (((!\host_ad~combout\) # (!\host_data~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \host_data~combout\(7),
	datad => \host_ad~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr_ext[3]~6_combout\);

-- Location: LC_X3_Y1_N9
\ram_addr_ext[4]\ : maxii_lcell
-- Equation(s):
-- ram_addr_ext(4) = DFFEAS((!\ram_addr_ext[3]~2_combout\ & ((\ram_addr_ext[3]~4_combout\ & ((\host_data~combout\(4)))) # (!\ram_addr_ext[3]~4_combout\ & (\Add7~20_combout\)))), GLOBAL(\host_cs~combout\), VCC, , \ram_addr_ext[3]~6_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	dataa => \Add7~20_combout\,
	datab => \host_data~combout\(4),
	datac => \ram_addr_ext[3]~2_combout\,
	datad => \ram_addr_ext[3]~4_combout\,
	aclr => GND,
	ena => \ram_addr_ext[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_ext(4));

-- Location: LC_X4_Y1_N8
\Add7~25\ : maxii_lcell
-- Equation(s):
-- \Add7~25_combout\ = ram_addr_ext(5) $ (((((!\Add7~7\ & \Add7~22\) # (\Add7~7\ & \Add7~22COUT1_88\)))))
-- \Add7~27\ = CARRY(((!\Add7~22\)) # (!ram_addr_ext(5)))
-- \Add7~27COUT1_90\ = CARRY(((!\Add7~22COUT1_88\)) # (!ram_addr_ext(5)))

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
	dataa => ram_addr_ext(5),
	cin => \Add7~7\,
	cin0 => \Add7~22\,
	cin1 => \Add7~22COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~25_combout\,
	cout0 => \Add7~27\,
	cout1 => \Add7~27COUT1_90\);

-- Location: LC_X3_Y2_N2
\ram_addr_ext[5]\ : maxii_lcell
-- Equation(s):
-- ram_addr_ext(5) = DFFEAS((!\ram_addr_ext[3]~2_combout\ & ((\ram_addr_ext[3]~4_combout\ & (\host_data~combout\(5))) # (!\ram_addr_ext[3]~4_combout\ & ((\Add7~25_combout\))))), GLOBAL(\host_cs~combout\), VCC, , \ram_addr_ext[3]~6_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4450",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	dataa => \ram_addr_ext[3]~2_combout\,
	datab => \host_data~combout\(5),
	datac => \Add7~25_combout\,
	datad => \ram_addr_ext[3]~4_combout\,
	aclr => GND,
	ena => \ram_addr_ext[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_ext(5));

-- Location: LC_X4_Y1_N9
\Add7~30\ : maxii_lcell
-- Equation(s):
-- \Add7~30_combout\ = (ram_addr_ext(6) $ ((!(!\Add7~7\ & \Add7~27\) # (\Add7~7\ & \Add7~27COUT1_90\))))
-- \Add7~32\ = CARRY(((ram_addr_ext(6) & !\Add7~27COUT1_90\)))

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
	cin => \Add7~7\,
	cin0 => \Add7~27\,
	cin1 => \Add7~27COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~30_combout\,
	cout => \Add7~32\);

-- Location: LC_X6_Y1_N5
\ram_addr_ext[6]\ : maxii_lcell
-- Equation(s):
-- ram_addr_ext(6) = DFFEAS((!\ram_addr_ext[3]~2_combout\ & ((\ram_addr_ext[3]~4_combout\ & (\host_data~combout\(6))) # (!\ram_addr_ext[3]~4_combout\ & ((\Add7~30_combout\))))), GLOBAL(\host_cs~combout\), VCC, , \ram_addr_ext[3]~6_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00b8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	dataa => \host_data~combout\(6),
	datab => \ram_addr_ext[3]~4_combout\,
	datac => \Add7~30_combout\,
	datad => \ram_addr_ext[3]~2_combout\,
	aclr => GND,
	ena => \ram_addr_ext[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_ext(6));

-- Location: LC_X4_Y1_N3
\Add7~0\ : maxii_lcell
-- Equation(s):
-- \Add7~0_combout\ = ((!ram_addr_ext(0)))
-- \Add7~2\ = CARRY(((ram_addr_ext(0))))
-- \Add7~2COUT1_82\ = CARRY(((ram_addr_ext(0))))

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
	combout => \Add7~0_combout\,
	cout0 => \Add7~2\,
	cout1 => \Add7~2COUT1_82\);

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\host_data[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_host_data(0),
	combout => \host_data~combout\(0));

-- Location: LC_X2_Y1_N0
\ram_addr_ext[0]\ : maxii_lcell
-- Equation(s):
-- ram_addr_ext(0) = DFFEAS((!\ram_addr_ext[3]~2_combout\ & ((\ram_addr_ext[3]~4_combout\ & ((\host_data~combout\(0)))) # (!\ram_addr_ext[3]~4_combout\ & (\Add7~0_combout\)))), GLOBAL(\host_cs~combout\), VCC, , \ram_addr_ext[3]~6_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	dataa => \Add7~0_combout\,
	datab => \host_data~combout\(0),
	datac => \ram_addr_ext[3]~2_combout\,
	datad => \ram_addr_ext[3]~4_combout\,
	aclr => GND,
	ena => \ram_addr_ext[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_ext(0));

-- Location: LC_X2_Y1_N4
\Add5~62\ : maxii_lcell
-- Equation(s):
-- \Add5~62_cout\ = CARRY((ram_addr_ext(1) & (ram_addr_ext(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff88",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => ram_addr_ext(1),
	datab => ram_addr_ext(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~60\,
	cout => \Add5~62_cout\);

-- Location: LC_X2_Y1_N5
\Add5~57\ : maxii_lcell
-- Equation(s):
-- \Add5~57_cout0\ = CARRY(((!\Add5~62_cout\) # (!ram_addr_ext(2))))
-- \Add5~57COUT1_76\ = CARRY(((!\Add5~62_cout\) # (!ram_addr_ext(2))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff3f",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => ram_addr_ext(2),
	cin => \Add5~62_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~55\,
	cout0 => \Add5~57_cout0\,
	cout1 => \Add5~57COUT1_76\);

-- Location: LC_X2_Y1_N6
\Add5~52\ : maxii_lcell
-- Equation(s):
-- \Add5~52_cout0\ = CARRY((ram_addr_ext(3) & ((!\Add5~57_cout0\))))
-- \Add5~52COUT1_78\ = CARRY((ram_addr_ext(3) & ((!\Add5~57COUT1_76\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff0a",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => ram_addr_ext(3),
	cin => \Add5~62_cout\,
	cin0 => \Add5~57_cout0\,
	cin1 => \Add5~57COUT1_76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~50\,
	cout0 => \Add5~52_cout0\,
	cout1 => \Add5~52COUT1_78\);

-- Location: LC_X2_Y1_N7
\Add5~47\ : maxii_lcell
-- Equation(s):
-- \Add5~47_cout0\ = CARRY(((!ram_addr_ext(4) & !\Add5~52_cout0\)))
-- \Add5~47COUT1_80\ = CARRY(((!ram_addr_ext(4) & !\Add5~52COUT1_78\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff03",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => ram_addr_ext(4),
	cin => \Add5~62_cout\,
	cin0 => \Add5~52_cout0\,
	cin1 => \Add5~52COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~45\,
	cout0 => \Add5~47_cout0\,
	cout1 => \Add5~47COUT1_80\);

-- Location: LC_X2_Y1_N8
\Add5~42\ : maxii_lcell
-- Equation(s):
-- \Add5~42_cout0\ = CARRY((ram_addr_ext(5)) # ((!\Add5~47_cout0\)))
-- \Add5~42COUT1_82\ = CARRY((ram_addr_ext(5)) # ((!\Add5~47COUT1_80\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ffaf",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => ram_addr_ext(5),
	cin => \Add5~62_cout\,
	cin0 => \Add5~47_cout0\,
	cin1 => \Add5~47COUT1_80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~40\,
	cout0 => \Add5~42_cout0\,
	cout1 => \Add5~42COUT1_82\);

-- Location: LC_X2_Y1_N9
\Add5~37\ : maxii_lcell
-- Equation(s):
-- \Add5~37_cout\ = CARRY(((!\Add5~42COUT1_82\) # (!ram_addr_ext(6))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff3f",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => ram_addr_ext(6),
	cin => \Add5~62_cout\,
	cin0 => \Add5~42_cout0\,
	cin1 => \Add5~42COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~35\,
	cout => \Add5~37_cout\);

-- Location: LC_X7_Y1_N0
\ram_addr_ext~14\ : maxii_lcell
-- Equation(s):
-- \ram_addr_ext~14_combout\ = (((!\ram_addr_ext[3]~2_combout\ & !\host_ad~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \ram_addr_ext[3]~2_combout\,
	datad => \host_ad~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr_ext~14_combout\);

-- Location: LC_X5_Y1_N0
\Add7~35\ : maxii_lcell
-- Equation(s):
-- \Add7~35_combout\ = (ram_addr_ext(7) $ ((\Add7~32\)))
-- \Add7~37\ = CARRY(((!\Add7~32\) # (!ram_addr_ext(7))))
-- \Add7~37COUT1_92\ = CARRY(((!\Add7~32\) # (!ram_addr_ext(7))))

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
	cin => \Add7~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~35_combout\,
	cout0 => \Add7~37\,
	cout1 => \Add7~37COUT1_92\);

-- Location: LC_X3_Y2_N4
\Add6~62\ : maxii_lcell
-- Equation(s):
-- \Add6~62_cout\ = CARRY((ram_addr_ext(0) & (ram_addr_ext(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff88",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => ram_addr_ext(0),
	datab => ram_addr_ext(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~60\,
	cout => \Add6~62_cout\);

-- Location: LC_X3_Y2_N5
\Add6~57\ : maxii_lcell
-- Equation(s):
-- \Add6~57_cout0\ = CARRY(((!\Add6~62_cout\)) # (!ram_addr_ext(2)))
-- \Add6~57COUT1_76\ = CARRY(((!\Add6~62_cout\)) # (!ram_addr_ext(2)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff5f",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => ram_addr_ext(2),
	cin => \Add6~62_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~55\,
	cout0 => \Add6~57_cout0\,
	cout1 => \Add6~57COUT1_76\);

-- Location: LC_X3_Y2_N6
\Add6~52\ : maxii_lcell
-- Equation(s):
-- \Add6~52_cout0\ = CARRY(((ram_addr_ext(3) & !\Add6~57_cout0\)))
-- \Add6~52COUT1_78\ = CARRY(((ram_addr_ext(3) & !\Add6~57COUT1_76\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff0c",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => ram_addr_ext(3),
	cin => \Add6~62_cout\,
	cin0 => \Add6~57_cout0\,
	cin1 => \Add6~57COUT1_76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~50\,
	cout0 => \Add6~52_cout0\,
	cout1 => \Add6~52COUT1_78\);

-- Location: LC_X3_Y2_N7
\Add6~47\ : maxii_lcell
-- Equation(s):
-- \Add6~47_cout0\ = CARRY(((!ram_addr_ext(4) & !\Add6~52_cout0\)))
-- \Add6~47COUT1_80\ = CARRY(((!ram_addr_ext(4) & !\Add6~52COUT1_78\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff03",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => ram_addr_ext(4),
	cin => \Add6~62_cout\,
	cin0 => \Add6~52_cout0\,
	cin1 => \Add6~52COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~45\,
	cout0 => \Add6~47_cout0\,
	cout1 => \Add6~47COUT1_80\);

-- Location: LC_X3_Y2_N8
\Add6~42\ : maxii_lcell
-- Equation(s):
-- \Add6~42_cout0\ = CARRY(((ram_addr_ext(5)) # (!\Add6~47_cout0\)))
-- \Add6~42COUT1_82\ = CARRY(((ram_addr_ext(5)) # (!\Add6~47COUT1_80\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ffcf",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => ram_addr_ext(5),
	cin => \Add6~62_cout\,
	cin0 => \Add6~47_cout0\,
	cin1 => \Add6~47COUT1_80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~40\,
	cout0 => \Add6~42_cout0\,
	cout1 => \Add6~42COUT1_82\);

-- Location: LC_X3_Y2_N9
\Add6~37\ : maxii_lcell
-- Equation(s):
-- \Add6~37_cout\ = CARRY(((!\Add6~42COUT1_82\) # (!ram_addr_ext(6))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff3f",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => ram_addr_ext(6),
	cin => \Add6~62_cout\,
	cin0 => \Add6~42_cout0\,
	cin1 => \Add6~42COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~35\,
	cout => \Add6~37_cout\);

-- Location: LC_X4_Y2_N0
\Add6~0\ : maxii_lcell
-- Equation(s):
-- \Add6~0_combout\ = (ram_addr_ext(7) $ ((!\Add6~37_cout\)))
-- \Add6~2\ = CARRY(((ram_addr_ext(7) & !\Add6~37_cout\)))
-- \Add6~2COUT1_84\ = CARRY(((ram_addr_ext(7) & !\Add6~37_cout\)))

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
	datab => ram_addr_ext(7),
	cin => \Add6~37_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~0_combout\,
	cout0 => \Add6~2\,
	cout1 => \Add6~2COUT1_84\);

-- Location: LC_X7_Y1_N1
\ram_addr_ext~13\ : maxii_lcell
-- Equation(s):
-- \ram_addr_ext~13_combout\ = (\ram_addr_ext[3]~4_combout\ & ((\ram_addr_ext[3]~2_combout\ & ((\Add6~0_combout\))) # (!\ram_addr_ext[3]~2_combout\ & (\host_data~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \host_data~combout\(0),
	datab => \ram_addr_ext[3]~4_combout\,
	datac => \ram_addr_ext[3]~2_combout\,
	datad => \Add6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr_ext~13_combout\);

-- Location: LC_X6_Y2_N8
\ram_addr_ext[10]~17\ : maxii_lcell
-- Equation(s):
-- \ram_addr_ext[10]~17_combout\ = ((\host_data~combout\(7) & ((!\host_data~combout\(6)) # (!\host_data~combout\(5))))) # (!\host_ad~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \host_data~combout\(5),
	datab => \host_data~combout\(6),
	datac => \host_data~combout\(7),
	datad => \host_ad~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr_ext[10]~17_combout\);

-- Location: LC_X7_Y1_N2
\ram_addr_ext[7]\ : maxii_lcell
-- Equation(s):
-- ram_addr_ext(7) = DFFEAS((!\ram_addr_ext[3]~15_combout\ & ((\ram_addr_ext~13_combout\) # ((\ram_addr_ext~14_combout\ & \Add7~35_combout\)))), GLOBAL(\host_cs~combout\), VCC, , \ram_addr_ext[10]~17_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5540",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	dataa => \ram_addr_ext[3]~15_combout\,
	datab => \ram_addr_ext~14_combout\,
	datac => \Add7~35_combout\,
	datad => \ram_addr_ext~13_combout\,
	aclr => GND,
	ena => \ram_addr_ext[10]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_ext(7));

-- Location: LC_X5_Y1_N1
\Add7~40\ : maxii_lcell
-- Equation(s):
-- \Add7~40_combout\ = (ram_addr_ext(8) $ ((!(!\Add7~32\ & \Add7~37\) # (\Add7~32\ & \Add7~37COUT1_92\))))
-- \Add7~42\ = CARRY(((ram_addr_ext(8) & !\Add7~37\)))
-- \Add7~42COUT1_94\ = CARRY(((ram_addr_ext(8) & !\Add7~37COUT1_92\)))

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
	cin => \Add7~32\,
	cin0 => \Add7~37\,
	cin1 => \Add7~37COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~40_combout\,
	cout0 => \Add7~42\,
	cout1 => \Add7~42COUT1_94\);

-- Location: LC_X4_Y2_N1
\Add6~5\ : maxii_lcell
-- Equation(s):
-- \Add6~5_combout\ = (ram_addr_ext(8) $ (((!\Add6~37_cout\ & \Add6~2\) # (\Add6~37_cout\ & \Add6~2COUT1_84\))))
-- \Add6~7\ = CARRY(((!\Add6~2\) # (!ram_addr_ext(8))))
-- \Add6~7COUT1_86\ = CARRY(((!\Add6~2COUT1_84\) # (!ram_addr_ext(8))))

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
	datab => ram_addr_ext(8),
	cin => \Add6~37_cout\,
	cin0 => \Add6~2\,
	cin1 => \Add6~2COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~5_combout\,
	cout0 => \Add6~7\,
	cout1 => \Add6~7COUT1_86\);

-- Location: LC_X7_Y1_N5
\ram_addr_ext~18\ : maxii_lcell
-- Equation(s):
-- \ram_addr_ext~18_combout\ = (\ram_addr_ext[3]~4_combout\ & ((\ram_addr_ext[3]~2_combout\ & ((\Add6~5_combout\))) # (!\ram_addr_ext[3]~2_combout\ & (\host_data~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ram_addr_ext[3]~2_combout\,
	datab => \host_data~combout\(1),
	datac => \Add6~5_combout\,
	datad => \ram_addr_ext[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr_ext~18_combout\);

-- Location: LC_X7_Y1_N6
\ram_addr_ext[8]\ : maxii_lcell
-- Equation(s):
-- ram_addr_ext(8) = DFFEAS((!\ram_addr_ext[3]~15_combout\ & ((\ram_addr_ext~18_combout\) # ((\Add7~40_combout\ & \ram_addr_ext~14_combout\)))), GLOBAL(\host_cs~combout\), VCC, , \ram_addr_ext[10]~17_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	dataa => \Add7~40_combout\,
	datab => \ram_addr_ext~14_combout\,
	datac => \ram_addr_ext[3]~15_combout\,
	datad => \ram_addr_ext~18_combout\,
	aclr => GND,
	ena => \ram_addr_ext[10]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_ext(8));

-- Location: LC_X5_Y1_N2
\Add7~45\ : maxii_lcell
-- Equation(s):
-- \Add7~45_combout\ = (ram_addr_ext(9) $ (((!\Add7~32\ & \Add7~42\) # (\Add7~32\ & \Add7~42COUT1_94\))))
-- \Add7~47\ = CARRY(((!\Add7~42\) # (!ram_addr_ext(9))))
-- \Add7~47COUT1_96\ = CARRY(((!\Add7~42COUT1_94\) # (!ram_addr_ext(9))))

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
	cin => \Add7~32\,
	cin0 => \Add7~42\,
	cin1 => \Add7~42COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~45_combout\,
	cout0 => \Add7~47\,
	cout1 => \Add7~47COUT1_96\);

-- Location: LC_X4_Y2_N2
\Add6~10\ : maxii_lcell
-- Equation(s):
-- \Add6~10_combout\ = (ram_addr_ext(9) $ ((!(!\Add6~37_cout\ & \Add6~7\) # (\Add6~37_cout\ & \Add6~7COUT1_86\))))
-- \Add6~12\ = CARRY(((ram_addr_ext(9) & !\Add6~7\)))
-- \Add6~12COUT1_88\ = CARRY(((ram_addr_ext(9) & !\Add6~7COUT1_86\)))

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
	datab => ram_addr_ext(9),
	cin => \Add6~37_cout\,
	cin0 => \Add6~7\,
	cin1 => \Add6~7COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~10_combout\,
	cout0 => \Add6~12\,
	cout1 => \Add6~12COUT1_88\);

-- Location: LC_X7_Y1_N3
\ram_addr_ext~20\ : maxii_lcell
-- Equation(s):
-- \ram_addr_ext~20_combout\ = (\ram_addr_ext[3]~4_combout\ & ((\ram_addr_ext[3]~2_combout\ & ((\Add6~10_combout\))) # (!\ram_addr_ext[3]~2_combout\ & (\host_data~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c840",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ram_addr_ext[3]~2_combout\,
	datab => \ram_addr_ext[3]~4_combout\,
	datac => \host_data~combout\(2),
	datad => \Add6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr_ext~20_combout\);

-- Location: LC_X7_Y1_N4
\ram_addr_ext[9]\ : maxii_lcell
-- Equation(s):
-- ram_addr_ext(9) = DFFEAS((!\ram_addr_ext[3]~15_combout\ & ((\ram_addr_ext~20_combout\) # ((\Add7~45_combout\ & \ram_addr_ext~14_combout\)))), GLOBAL(\host_cs~combout\), VCC, , \ram_addr_ext[10]~17_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	dataa => \Add7~45_combout\,
	datab => \ram_addr_ext~14_combout\,
	datac => \ram_addr_ext[3]~15_combout\,
	datad => \ram_addr_ext~20_combout\,
	aclr => GND,
	ena => \ram_addr_ext[10]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_ext(9));

-- Location: LC_X3_Y1_N0
\Add5~32\ : maxii_lcell
-- Equation(s):
-- \Add5~32_cout0\ = CARRY((ram_addr_ext(7) & ((!\Add5~37_cout\))))
-- \Add5~32COUT1_84\ = CARRY((ram_addr_ext(7) & ((!\Add5~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff0a",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => ram_addr_ext(7),
	cin => \Add5~37_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~30\,
	cout0 => \Add5~32_cout0\,
	cout1 => \Add5~32COUT1_84\);

-- Location: LC_X3_Y1_N1
\Add5~27\ : maxii_lcell
-- Equation(s):
-- \Add5~27_cout0\ = CARRY(((!ram_addr_ext(8) & !\Add5~32_cout0\)))
-- \Add5~27COUT1_86\ = CARRY(((!ram_addr_ext(8) & !\Add5~32COUT1_84\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff03",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => ram_addr_ext(8),
	cin => \Add5~37_cout\,
	cin0 => \Add5~32_cout0\,
	cin1 => \Add5~32COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~25\,
	cout0 => \Add5~27_cout0\,
	cout1 => \Add5~27COUT1_86\);

-- Location: LC_X3_Y1_N2
\Add5~22\ : maxii_lcell
-- Equation(s):
-- \Add5~22_cout0\ = CARRY(((ram_addr_ext(9) & !\Add5~27_cout0\)))
-- \Add5~22COUT1_88\ = CARRY(((ram_addr_ext(9) & !\Add5~27COUT1_86\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff0c",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => ram_addr_ext(9),
	cin => \Add5~37_cout\,
	cin0 => \Add5~27_cout0\,
	cin1 => \Add5~27COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~20\,
	cout0 => \Add5~22_cout0\,
	cout1 => \Add5~22COUT1_88\);

-- Location: LC_X3_Y1_N3
\Add5~17\ : maxii_lcell
-- Equation(s):
-- \Add5~17_cout0\ = CARRY(((!\Add5~22_cout0\) # (!ram_addr_ext(10))))
-- \Add5~17COUT1_90\ = CARRY(((!\Add5~22COUT1_88\) # (!ram_addr_ext(10))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff3f",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => ram_addr_ext(10),
	cin => \Add5~37_cout\,
	cin0 => \Add5~22_cout0\,
	cin1 => \Add5~22COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~15\,
	cout0 => \Add5~17_cout0\,
	cout1 => \Add5~17COUT1_90\);

-- Location: LC_X3_Y1_N4
\Add5~12\ : maxii_lcell
-- Equation(s):
-- \Add5~12_cout\ = CARRY(((ram_addr_ext(11) & !\Add5~17COUT1_90\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff0c",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => ram_addr_ext(11),
	cin => \Add5~37_cout\,
	cin0 => \Add5~17_cout0\,
	cin1 => \Add5~17COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~10\,
	cout => \Add5~12_cout\);

-- Location: LC_X4_Y2_N3
\Add6~15\ : maxii_lcell
-- Equation(s):
-- \Add6~15_combout\ = ram_addr_ext(10) $ (((((!\Add6~37_cout\ & \Add6~12\) # (\Add6~37_cout\ & \Add6~12COUT1_88\)))))
-- \Add6~17\ = CARRY(((!\Add6~12\)) # (!ram_addr_ext(10)))
-- \Add6~17COUT1_90\ = CARRY(((!\Add6~12COUT1_88\)) # (!ram_addr_ext(10)))

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
	dataa => ram_addr_ext(10),
	cin => \Add6~37_cout\,
	cin0 => \Add6~12\,
	cin1 => \Add6~12COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~15_combout\,
	cout0 => \Add6~17\,
	cout1 => \Add6~17COUT1_90\);

-- Location: LC_X4_Y2_N4
\Add6~20\ : maxii_lcell
-- Equation(s):
-- \Add6~20_combout\ = (ram_addr_ext(11) $ ((!(!\Add6~37_cout\ & \Add6~17\) # (\Add6~37_cout\ & \Add6~17COUT1_90\))))
-- \Add6~22\ = CARRY(((ram_addr_ext(11) & !\Add6~17COUT1_90\)))

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
	datab => ram_addr_ext(11),
	cin => \Add6~37_cout\,
	cin0 => \Add6~17\,
	cin1 => \Add6~17COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~20_combout\,
	cout => \Add6~22\);

-- Location: LC_X4_Y2_N5
\Add6~25\ : maxii_lcell
-- Equation(s):
-- \Add6~25_combout\ = ram_addr_ext(12) $ ((((\Add6~22\))))
-- \Add6~27\ = CARRY(((!\Add6~22\)) # (!ram_addr_ext(12)))
-- \Add6~27COUT1_92\ = CARRY(((!\Add6~22\)) # (!ram_addr_ext(12)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => ram_addr_ext(12),
	cin => \Add6~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~25_combout\,
	cout0 => \Add6~27\,
	cout1 => \Add6~27COUT1_92\);

-- Location: LC_X5_Y1_N3
\Add7~50\ : maxii_lcell
-- Equation(s):
-- \Add7~50_combout\ = (ram_addr_ext(10) $ ((!(!\Add7~32\ & \Add7~47\) # (\Add7~32\ & \Add7~47COUT1_96\))))
-- \Add7~52\ = CARRY(((ram_addr_ext(10) & !\Add7~47\)))
-- \Add7~52COUT1_98\ = CARRY(((ram_addr_ext(10) & !\Add7~47COUT1_96\)))

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
	cin => \Add7~32\,
	cin0 => \Add7~47\,
	cin1 => \Add7~47COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~50_combout\,
	cout0 => \Add7~52\,
	cout1 => \Add7~52COUT1_98\);

-- Location: LC_X5_Y1_N4
\Add7~55\ : maxii_lcell
-- Equation(s):
-- \Add7~55_combout\ = (ram_addr_ext(11) $ (((!\Add7~32\ & \Add7~52\) # (\Add7~32\ & \Add7~52COUT1_98\))))
-- \Add7~57\ = CARRY(((!\Add7~52COUT1_98\) # (!ram_addr_ext(11))))

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
	datab => ram_addr_ext(11),
	cin => \Add7~32\,
	cin0 => \Add7~52\,
	cin1 => \Add7~52COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~55_combout\,
	cout => \Add7~57\);

-- Location: LC_X5_Y1_N5
\Add7~60\ : maxii_lcell
-- Equation(s):
-- \Add7~60_combout\ = (ram_addr_ext(12) $ ((!\Add7~57\)))
-- \Add7~62\ = CARRY(((ram_addr_ext(12) & !\Add7~57\)))
-- \Add7~62COUT1_100\ = CARRY(((ram_addr_ext(12) & !\Add7~57\)))

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
	cin => \Add7~57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~60_combout\,
	cout0 => \Add7~62\,
	cout1 => \Add7~62COUT1_100\);

-- Location: LC_X3_Y1_N5
\Add5~0\ : maxii_lcell
-- Equation(s):
-- \Add5~0_combout\ = (ram_addr_ext(12) $ ((\Add5~12_cout\)))
-- \Add5~2\ = CARRY(((!\Add5~12_cout\) # (!ram_addr_ext(12))))
-- \Add5~2COUT1_92\ = CARRY(((!\Add5~12_cout\) # (!ram_addr_ext(12))))

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
	datab => ram_addr_ext(12),
	cin => \Add5~12_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~0_combout\,
	cout0 => \Add5~2\,
	cout1 => \Add5~2COUT1_92\);

-- Location: LC_X5_Y1_N7
\ram_addr_ext~26\ : maxii_lcell
-- Equation(s):
-- \ram_addr_ext~26_combout\ = (\ram_addr_ext[3]~2_combout\ & ((\ram_addr_ext[3]~4_combout\) # ((\Add5~0_combout\)))) # (!\ram_addr_ext[3]~2_combout\ & (!\ram_addr_ext[3]~4_combout\ & (\Add7~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ram_addr_ext[3]~2_combout\,
	datab => \ram_addr_ext[3]~4_combout\,
	datac => \Add7~60_combout\,
	datad => \Add5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr_ext~26_combout\);

-- Location: LC_X5_Y1_N8
\ram_addr_ext~27\ : maxii_lcell
-- Equation(s):
-- \ram_addr_ext~27_combout\ = (\ram_addr_ext[3]~4_combout\ & ((\ram_addr_ext~26_combout\ & ((\Add6~25_combout\))) # (!\ram_addr_ext~26_combout\ & (\host_data~combout\(5))))) # (!\ram_addr_ext[3]~4_combout\ & (((\ram_addr_ext~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \host_data~combout\(5),
	datab => \ram_addr_ext[3]~4_combout\,
	datac => \Add6~25_combout\,
	datad => \ram_addr_ext~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr_ext~27_combout\);

-- Location: LC_X5_Y1_N9
\ram_addr_ext[12]\ : maxii_lcell
-- Equation(s):
-- ram_addr_ext(12) = DFFEAS((((!\ram_addr_ext[3]~15_combout\ & \ram_addr_ext~27_combout\))), GLOBAL(\host_cs~combout\), VCC, , \ram_addr_ext[10]~17_combout\, , , , )

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
	clk => \host_cs~combout\,
	datac => \ram_addr_ext[3]~15_combout\,
	datad => \ram_addr_ext~27_combout\,
	aclr => GND,
	ena => \ram_addr_ext[10]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_ext(12));

-- Location: LC_X3_Y1_N6
\Add5~5\ : maxii_lcell
-- Equation(s):
-- \Add5~5_combout\ = (((!\Add5~12_cout\ & \Add5~2\) # (\Add5~12_cout\ & \Add5~2COUT1_92\) $ (!ram_addr_ext(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => ram_addr_ext(13),
	cin => \Add5~12_cout\,
	cin0 => \Add5~2\,
	cin1 => \Add5~2COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~5_combout\);

-- Location: LC_X4_Y2_N6
\Add6~30\ : maxii_lcell
-- Equation(s):
-- \Add6~30_combout\ = (((!\Add6~22\ & \Add6~27\) # (\Add6~22\ & \Add6~27COUT1_92\) $ (!ram_addr_ext(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => ram_addr_ext(13),
	cin => \Add6~22\,
	cin0 => \Add6~27\,
	cin1 => \Add6~27COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~30_combout\);

-- Location: LC_X5_Y1_N6
\Add7~65\ : maxii_lcell
-- Equation(s):
-- \Add7~65_combout\ = (((!\Add7~57\ & \Add7~62\) # (\Add7~57\ & \Add7~62COUT1_100\) $ (ram_addr_ext(13))))

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
	cin => \Add7~57\,
	cin0 => \Add7~62\,
	cin1 => \Add7~62COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~65_combout\);

-- Location: LC_X6_Y1_N6
\ram_addr_ext~29\ : maxii_lcell
-- Equation(s):
-- \ram_addr_ext~29_combout\ = (\ram_addr_ext[3]~2_combout\ & (((\ram_addr_ext[3]~4_combout\)))) # (!\ram_addr_ext[3]~2_combout\ & ((\ram_addr_ext[3]~4_combout\ & (\host_data~combout\(6))) # (!\ram_addr_ext[3]~4_combout\ & ((\Add7~65_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \host_data~combout\(6),
	datab => \ram_addr_ext[3]~2_combout\,
	datac => \Add7~65_combout\,
	datad => \ram_addr_ext[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr_ext~29_combout\);

-- Location: LC_X6_Y1_N7
\ram_addr_ext~30\ : maxii_lcell
-- Equation(s):
-- \ram_addr_ext~30_combout\ = (\ram_addr_ext[3]~2_combout\ & ((\ram_addr_ext~29_combout\ & ((\Add6~30_combout\))) # (!\ram_addr_ext~29_combout\ & (\Add5~5_combout\)))) # (!\ram_addr_ext[3]~2_combout\ & (((\ram_addr_ext~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~5_combout\,
	datab => \ram_addr_ext[3]~2_combout\,
	datac => \Add6~30_combout\,
	datad => \ram_addr_ext~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr_ext~30_combout\);

-- Location: LC_X6_Y1_N8
\ram_addr_ext[13]\ : maxii_lcell
-- Equation(s):
-- ram_addr_ext(13) = DFFEAS(((!\ram_addr_ext[3]~15_combout\ & ((\ram_addr_ext~30_combout\)))), GLOBAL(\host_cs~combout\), VCC, , \ram_addr_ext[10]~17_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	datab => \ram_addr_ext[3]~15_combout\,
	datad => \ram_addr_ext~30_combout\,
	aclr => GND,
	ena => \ram_addr_ext[10]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_ext(13));

-- Location: LC_X6_Y1_N9
\ram_addr_ext[3]~15\ : maxii_lcell
-- Equation(s):
-- \ram_addr_ext[3]~15_combout\ = (ram_addr_ext(13) & (!ram_addr_ext(12) & (\ram_addr_ext[3]~2_combout\ & !\ram_addr_ext[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => ram_addr_ext(13),
	datab => ram_addr_ext(12),
	datac => \ram_addr_ext[3]~2_combout\,
	datad => \ram_addr_ext[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr_ext[3]~15_combout\);

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\host_data[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_host_data(3),
	combout => \host_data~combout\(3));

-- Location: LC_X7_Y1_N7
\ram_addr_ext~22\ : maxii_lcell
-- Equation(s):
-- \ram_addr_ext~22_combout\ = (\ram_addr_ext[3]~4_combout\ & ((\ram_addr_ext[3]~2_combout\ & ((\Add6~15_combout\))) # (!\ram_addr_ext[3]~2_combout\ & (\host_data~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c840",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ram_addr_ext[3]~2_combout\,
	datab => \ram_addr_ext[3]~4_combout\,
	datac => \host_data~combout\(3),
	datad => \Add6~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr_ext~22_combout\);

-- Location: LC_X7_Y1_N8
\ram_addr_ext[10]\ : maxii_lcell
-- Equation(s):
-- ram_addr_ext(10) = DFFEAS((!\ram_addr_ext[3]~15_combout\ & ((\ram_addr_ext~22_combout\) # ((\ram_addr_ext~14_combout\ & \Add7~50_combout\)))), GLOBAL(\host_cs~combout\), VCC, , \ram_addr_ext[10]~17_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5540",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	dataa => \ram_addr_ext[3]~15_combout\,
	datab => \ram_addr_ext~14_combout\,
	datac => \Add7~50_combout\,
	datad => \ram_addr_ext~22_combout\,
	aclr => GND,
	ena => \ram_addr_ext[10]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_ext(10));

-- Location: LC_X6_Y1_N3
\ram_addr_ext~24\ : maxii_lcell
-- Equation(s):
-- \ram_addr_ext~24_combout\ = (\ram_addr_ext[3]~4_combout\ & ((\ram_addr_ext[3]~2_combout\ & ((\Add6~20_combout\))) # (!\ram_addr_ext[3]~2_combout\ & (\host_data~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \host_data~combout\(4),
	datab => \ram_addr_ext[3]~4_combout\,
	datac => \ram_addr_ext[3]~2_combout\,
	datad => \Add6~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr_ext~24_combout\);

-- Location: LC_X6_Y1_N4
\ram_addr_ext[11]\ : maxii_lcell
-- Equation(s):
-- ram_addr_ext(11) = DFFEAS((!\ram_addr_ext[3]~15_combout\ & ((\ram_addr_ext~24_combout\) # ((\Add7~55_combout\ & \ram_addr_ext~14_combout\)))), GLOBAL(\host_cs~combout\), VCC, , \ram_addr_ext[10]~17_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3320",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	dataa => \Add7~55_combout\,
	datab => \ram_addr_ext[3]~15_combout\,
	datac => \ram_addr_ext~14_combout\,
	datad => \ram_addr_ext~24_combout\,
	aclr => GND,
	ena => \ram_addr_ext[10]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_ext(11));

-- Location: LC_X7_Y1_N9
\ram_addr_ext[3]~3\ : maxii_lcell
-- Equation(s):
-- \ram_addr_ext[3]~3_combout\ = (ram_addr_ext(8)) # (((!ram_addr_ext(10)) # (!ram_addr_ext(9))) # (!ram_addr_ext(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => ram_addr_ext(8),
	datab => ram_addr_ext(7),
	datac => ram_addr_ext(9),
	datad => ram_addr_ext(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr_ext[3]~3_combout\);

-- Location: LC_X6_Y1_N2
\ram_addr_ext[3]~4\ : maxii_lcell
-- Equation(s):
-- \ram_addr_ext[3]~4_combout\ = (\host_ad~combout\) # ((\ram_addr_ext[3]~2_combout\ & ((\ram_addr_ext[3]~3_combout\) # (!ram_addr_ext(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => ram_addr_ext(11),
	datab => \ram_addr_ext[3]~3_combout\,
	datac => \host_ad~combout\,
	datad => \ram_addr_ext[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr_ext[3]~4_combout\);

-- Location: LC_X3_Y1_N8
\ram_addr_ext[2]\ : maxii_lcell
-- Equation(s):
-- ram_addr_ext(2) = DFFEAS((!\ram_addr_ext[3]~2_combout\ & ((\ram_addr_ext[3]~4_combout\ & (\host_data~combout\(2))) # (!\ram_addr_ext[3]~4_combout\ & ((\Add7~10_combout\))))), GLOBAL(\host_cs~combout\), VCC, , \ram_addr_ext[3]~6_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	dataa => \host_data~combout\(2),
	datab => \Add7~10_combout\,
	datac => \ram_addr_ext[3]~2_combout\,
	datad => \ram_addr_ext[3]~4_combout\,
	aclr => GND,
	ena => \ram_addr_ext[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_ext(2));

-- Location: LC_X2_Y1_N3
\ram_addr_ext[3]~1\ : maxii_lcell
-- Equation(s):
-- \ram_addr_ext[3]~1_combout\ = (!\host_ad~combout\ & (ram_addr_ext(2) & (ram_addr_ext(0) & ram_addr_ext(1))))

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
	dataa => \host_ad~combout\,
	datab => ram_addr_ext(2),
	datac => ram_addr_ext(0),
	datad => ram_addr_ext(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr_ext[3]~1_combout\);

-- Location: LC_X6_Y1_N0
\ram_addr_ext[3]~0\ : maxii_lcell
-- Equation(s):
-- \ram_addr_ext[3]~0_combout\ = (((ram_addr_ext(6) & !ram_addr_ext(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => ram_addr_ext(6),
	datad => ram_addr_ext(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr_ext[3]~0_combout\);

-- Location: LC_X6_Y1_N1
\ram_addr_ext[3]~2\ : maxii_lcell
-- Equation(s):
-- \ram_addr_ext[3]~2_combout\ = (ram_addr_ext(3) & (\ram_addr_ext[3]~1_combout\ & (!ram_addr_ext(4) & \ram_addr_ext[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => ram_addr_ext(3),
	datab => \ram_addr_ext[3]~1_combout\,
	datac => ram_addr_ext(4),
	datad => \ram_addr_ext[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr_ext[3]~2_combout\);

-- Location: LC_X4_Y1_N4
\Add7~5\ : maxii_lcell
-- Equation(s):
-- \Add7~5_combout\ = (ram_addr_ext(1) $ ((\Add7~2\)))
-- \Add7~7\ = CARRY(((!\Add7~2COUT1_82\) # (!ram_addr_ext(1))))

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
	cin0 => \Add7~2\,
	cin1 => \Add7~2COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~5_combout\,
	cout => \Add7~7\);

-- Location: LC_X2_Y1_N2
\ram_addr_ext[1]\ : maxii_lcell
-- Equation(s):
-- ram_addr_ext(1) = DFFEAS((!\ram_addr_ext[3]~2_combout\ & ((\ram_addr_ext[3]~4_combout\ & (\host_data~combout\(1))) # (!\ram_addr_ext[3]~4_combout\ & ((\Add7~5_combout\))))), GLOBAL(\host_cs~combout\), VCC, , \ram_addr_ext[3]~6_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2230",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	dataa => \host_data~combout\(1),
	datab => \ram_addr_ext[3]~2_combout\,
	datac => \Add7~5_combout\,
	datad => \ram_addr_ext[3]~4_combout\,
	aclr => GND,
	ena => \ram_addr_ext[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_ext(1));

-- Location: LC_X3_Y1_N7
\ram_addr_ext[3]\ : maxii_lcell
-- Equation(s):
-- ram_addr_ext(3) = DFFEAS((!\ram_addr_ext[3]~2_combout\ & ((\ram_addr_ext[3]~4_combout\ & ((\host_data~combout\(3)))) # (!\ram_addr_ext[3]~4_combout\ & (\Add7~15_combout\)))), GLOBAL(\host_cs~combout\), VCC, , \ram_addr_ext[3]~6_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	dataa => \Add7~15_combout\,
	datab => \host_data~combout\(3),
	datac => \ram_addr_ext[3]~2_combout\,
	datad => \ram_addr_ext[3]~4_combout\,
	aclr => GND,
	ena => \ram_addr_ext[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_ext(3));

-- Location: LC_X5_Y3_N7
\Add3~15\ : maxii_lcell
-- Equation(s):
-- \Add3~15_combout\ = (hreg(7) $ ((!(!\Add3~2\ & \Add3~12\) # (\Add3~2\ & \Add3~12COUT1_78\))))
-- \Add3~17\ = CARRY(((!hreg(7) & !\Add3~12\)))
-- \Add3~17COUT1_80\ = CARRY(((!hreg(7) & !\Add3~12COUT1_78\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => hreg(7),
	cin => \Add3~2\,
	cin0 => \Add3~12\,
	cin1 => \Add3~12COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~15_combout\,
	cout0 => \Add3~17\,
	cout1 => \Add3~17COUT1_80\);

-- Location: LC_X6_Y4_N2
\ram_addr_int[9]~1\ : maxii_lcell
-- Equation(s):
-- \ram_addr_int[9]~1_combout\ = (hreg(0) & (!hreg(1) & (!hreg(3) & hreg(2)))) # (!hreg(0) & (!hreg(2) & (hreg(1) $ (!hreg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0241",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => hreg(0),
	datab => hreg(1),
	datac => hreg(3),
	datad => hreg(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr_int[9]~1_combout\);

-- Location: LC_X5_Y3_N1
\ram_addr_int[3]\ : maxii_lcell
-- Equation(s):
-- ram_addr_int(3) = DFFEAS(((\Equal12~0_combout\ & (\Add3~15_combout\)) # (!\Equal12~0_combout\ & ((hreg(7))))), !GLOBAL(\gen~combout\), VCC, , \ram_addr_int[9]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	datab => \Add3~15_combout\,
	datac => hreg(7),
	datad => \Equal12~0_combout\,
	aclr => GND,
	ena => \ram_addr_int[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_int(3));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rom_data[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rom_data(1),
	combout => \rom_data~combout\(1));

-- Location: LC_X4_Y4_N2
\Equal9~1\ : maxii_lcell
-- Equation(s):
-- \Equal9~1_combout\ = (!hreg(1) & (!hreg(3) & (hreg(2) & !hreg(0))))

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
	dataa => hreg(1),
	datab => hreg(3),
	datac => hreg(2),
	datad => hreg(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal9~1_combout\);

-- Location: LC_X2_Y2_N6
\temp_reg1[1]\ : maxii_lcell
-- Equation(s):
-- \ram_addr~3\ = ((\host_busy~reg0_regout\ & ((ram_addr_int(3)))) # (!\host_busy~reg0_regout\ & (ram_addr_ext(3))))
-- temp_reg1(1) = DFFEAS(\ram_addr~3\, !GLOBAL(\gen~combout\), VCC, , \Equal9~1_combout\, \rom_data~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => ram_addr_ext(3),
	datab => ram_addr_int(3),
	datac => \rom_data~combout\(1),
	datad => \host_busy~reg0_regout\,
	aclr => GND,
	sload => VCC,
	ena => \Equal9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr~3\,
	regout => temp_reg1(1));

-- Location: LC_X7_Y3_N5
\Add1~10\ : maxii_lcell
-- Equation(s):
-- \Add1~10_combout\ = (vreg(5) $ ((\Add1~37\)))
-- \Add1~12\ = CARRY(((!\Add1~37\) # (!vreg(5))))
-- \Add1~12COUT1_68\ = CARRY(((!\Add1~37\) # (!vreg(5))))

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
	combout => \Add1~10_combout\,
	cout0 => \Add1~12\,
	cout1 => \Add1~12COUT1_68\);

-- Location: LC_X7_Y3_N6
\Add1~15\ : maxii_lcell
-- Equation(s):
-- \Add1~15_combout\ = (vreg(6) $ ((!(!\Add1~37\ & \Add1~12\) # (\Add1~37\ & \Add1~12COUT1_68\))))
-- \Add1~17\ = CARRY(((vreg(6) & !\Add1~12\)))
-- \Add1~17COUT1_70\ = CARRY(((vreg(6) & !\Add1~12COUT1_68\)))

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
	cin0 => \Add1~12\,
	cin1 => \Add1~12COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~15_combout\,
	cout0 => \Add1~17\,
	cout1 => \Add1~17COUT1_70\);

-- Location: LC_X7_Y3_N7
\Add1~20\ : maxii_lcell
-- Equation(s):
-- \Add1~20_combout\ = (vreg(7) $ (((!\Add1~37\ & \Add1~17\) # (\Add1~37\ & \Add1~17COUT1_70\))))
-- \Add1~22\ = CARRY(((!\Add1~17\) # (!vreg(7))))
-- \Add1~22COUT1_72\ = CARRY(((!\Add1~17COUT1_70\) # (!vreg(7))))

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
	cin0 => \Add1~17\,
	cin1 => \Add1~17COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~20_combout\,
	cout0 => \Add1~22\,
	cout1 => \Add1~22COUT1_72\);

-- Location: LC_X5_Y3_N8
\Add3~20\ : maxii_lcell
-- Equation(s):
-- \Add3~20_combout\ = (hreg(8) $ (((!\Add3~2\ & \Add3~17\) # (\Add3~2\ & \Add3~17COUT1_80\))))
-- \Add3~22\ = CARRY(((hreg(8)) # (!\Add3~17\)))
-- \Add3~22COUT1_82\ = CARRY(((hreg(8)) # (!\Add3~17COUT1_80\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => hreg(8),
	cin => \Add3~2\,
	cin0 => \Add3~17\,
	cin1 => \Add3~17COUT1_80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~20_combout\,
	cout0 => \Add3~22\,
	cout1 => \Add3~22COUT1_82\);

-- Location: LC_X5_Y3_N9
\Add3~25\ : maxii_lcell
-- Equation(s):
-- \Add3~25_combout\ = (hreg(9) $ ((!(!\Add3~2\ & \Add3~22\) # (\Add3~2\ & \Add3~22COUT1_82\))))
-- \Add3~27\ = CARRY(((!hreg(9) & !\Add3~22COUT1_82\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => hreg(9),
	cin => \Add3~2\,
	cin0 => \Add3~22\,
	cin1 => \Add3~22COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~25_combout\,
	cout => \Add3~27\);

-- Location: LC_X6_Y3_N0
\Add3~30\ : maxii_lcell
-- Equation(s):
-- \Add3~30_combout\ = (hreg(10) $ ((\Add3~27\)))
-- \Add3~32\ = CARRY(((hreg(10)) # (!\Add3~27\)))
-- \Add3~32COUT1_84\ = CARRY(((hreg(10)) # (!\Add3~27\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => hreg(10),
	cin => \Add3~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~30_combout\,
	cout0 => \Add3~32\,
	cout1 => \Add3~32COUT1_84\);

-- Location: LC_X6_Y3_N1
\Add3~35\ : maxii_lcell
-- Equation(s):
-- \Add3~35_combout\ = (vreg(4) $ ((!(!\Add3~27\ & \Add3~32\) # (\Add3~27\ & \Add3~32COUT1_84\))))
-- \Add3~37\ = CARRY(((!vreg(4) & !\Add3~32\)))
-- \Add3~37COUT1_86\ = CARRY(((!vreg(4) & !\Add3~32COUT1_84\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => vreg(4),
	cin => \Add3~27\,
	cin0 => \Add3~32\,
	cin1 => \Add3~32COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~35_combout\,
	cout0 => \Add3~37\,
	cout1 => \Add3~37COUT1_86\);

-- Location: LC_X6_Y3_N2
\Add3~40\ : maxii_lcell
-- Equation(s):
-- \Add3~40_combout\ = (vreg(5) $ (((!\Add3~27\ & \Add3~37\) # (\Add3~27\ & \Add3~37COUT1_86\))))
-- \Add3~42\ = CARRY(((vreg(5)) # (!\Add3~37\)))
-- \Add3~42COUT1_88\ = CARRY(((vreg(5)) # (!\Add3~37COUT1_86\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => vreg(5),
	cin => \Add3~27\,
	cin0 => \Add3~37\,
	cin1 => \Add3~37COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~40_combout\,
	cout0 => \Add3~42\,
	cout1 => \Add3~42COUT1_88\);

-- Location: LC_X6_Y3_N3
\vreg[6]\ : maxii_lcell
-- Equation(s):
-- \Add3~45\ = vreg(6) $ ((((!(!\Add3~27\ & \Add3~42\) # (\Add3~27\ & \Add3~42COUT1_88\)))))
-- vreg(6) = DFFEAS(\Add3~45\, !GLOBAL(\gen~combout\), VCC, , \Equal0~2_combout\, \Add1~15_combout\, , , VCC)
-- \Add3~47\ = CARRY((!vreg(6) & ((!\Add3~42\))))
-- \Add3~47COUT1_90\ = CARRY((!vreg(6) & ((!\Add3~42COUT1_88\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => vreg(6),
	datac => \Add1~15_combout\,
	aclr => GND,
	sload => VCC,
	ena => \Equal0~2_combout\,
	cin => \Add3~27\,
	cin0 => \Add3~42\,
	cin1 => \Add3~42COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~45\,
	regout => vreg(6),
	cout0 => \Add3~47\,
	cout1 => \Add3~47COUT1_90\);

-- Location: LC_X6_Y3_N4
\vreg[7]\ : maxii_lcell
-- Equation(s):
-- \Add3~50\ = vreg(7) $ (((((!\Add3~27\ & \Add3~47\) # (\Add3~27\ & \Add3~47COUT1_90\)))))
-- vreg(7) = DFFEAS(\Add3~50\, !GLOBAL(\gen~combout\), VCC, , \Equal0~2_combout\, \Add1~20_combout\, , , VCC)
-- \Add3~52\ = CARRY((vreg(7)) # ((!\Add3~47COUT1_90\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => vreg(7),
	datac => \Add1~20_combout\,
	aclr => GND,
	sload => VCC,
	ena => \Equal0~2_combout\,
	cin => \Add3~27\,
	cin0 => \Add3~47\,
	cin1 => \Add3~47COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~50\,
	regout => vreg(7),
	cout => \Add3~52\);

-- Location: LC_X3_Y3_N0
\vreg[5]\ : maxii_lcell
-- Equation(s):
-- \always0~3\ = (vreg(6) & (vreg(8) & (vreg[5] & vreg(7))))
-- vreg(5) = DFFEAS(\always0~3\, !GLOBAL(\gen~combout\), VCC, , \Equal0~2_combout\, \Add1~10_combout\, , , VCC)

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
	clk => \ALT_INV_gen~combout\,
	dataa => vreg(6),
	datab => vreg(8),
	datac => \Add1~10_combout\,
	datad => vreg(7),
	aclr => GND,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always0~3\,
	regout => vreg(5));

-- Location: LC_X7_Y3_N0
\Add1~40\ : maxii_lcell
-- Equation(s):
-- \Add1~40_combout\ = ((!vreg(0)))
-- \Add1~42\ = CARRY(((vreg(0))))
-- \Add1~42COUT1_60\ = CARRY(((vreg(0))))

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
	datab => vreg(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~40_combout\,
	cout0 => \Add1~42\,
	cout1 => \Add1~42COUT1_60\);

-- Location: LC_X3_Y3_N6
\vreg[0]\ : maxii_lcell
-- Equation(s):
-- \Equal1~2\ = (!vreg(6) & (!vreg(5) & (vreg[0] & !vreg(7))))
-- vreg(0) = DFFEAS(\Equal1~2\, !GLOBAL(\gen~combout\), VCC, , \Equal0~2_combout\, \Add1~40_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => vreg(6),
	datab => vreg(5),
	datac => \Add1~40_combout\,
	datad => vreg(7),
	aclr => GND,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~2\,
	regout => vreg(0));

-- Location: LC_X3_Y3_N7
\vreg[8]\ : maxii_lcell
-- Equation(s):
-- \Equal1~3\ = (vreg(9) & (((!vreg[8] & \Equal1~2\))))
-- vreg(8) = DFFEAS(\Equal1~3\, !GLOBAL(\gen~combout\), VCC, , \Equal0~2_combout\, \Add1~25_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => vreg(9),
	datac => \Add1~25_combout\,
	datad => \Equal1~2\,
	aclr => GND,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~3\,
	regout => vreg(8));

-- Location: LC_X7_Y3_N8
\Add1~25\ : maxii_lcell
-- Equation(s):
-- \Add1~25_combout\ = vreg(8) $ ((((!(!\Add1~37\ & \Add1~22\) # (\Add1~37\ & \Add1~22COUT1_72\)))))
-- \Add1~27\ = CARRY((vreg(8) & ((!\Add1~22\))))
-- \Add1~27COUT1_74\ = CARRY((vreg(8) & ((!\Add1~22COUT1_72\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => vreg(8),
	cin => \Add1~37\,
	cin0 => \Add1~22\,
	cin1 => \Add1~22COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~25_combout\,
	cout0 => \Add1~27\,
	cout1 => \Add1~27COUT1_74\);

-- Location: LC_X7_Y3_N1
\Add1~5\ : maxii_lcell
-- Equation(s):
-- \Add1~5_combout\ = (vreg(1) $ ((\Add1~42\)))
-- \Add1~7\ = CARRY(((!\Add1~42\) # (!vreg(1))))
-- \Add1~7COUT1_62\ = CARRY(((!\Add1~42COUT1_60\) # (!vreg(1))))

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
	cin0 => \Add1~42\,
	cin1 => \Add1~42COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~5_combout\,
	cout0 => \Add1~7\,
	cout1 => \Add1~7COUT1_62\);

-- Location: LC_X7_Y3_N2
\Add1~0\ : maxii_lcell
-- Equation(s):
-- \Add1~0_combout\ = (vreg(2) $ ((!\Add1~7\)))
-- \Add1~2\ = CARRY(((vreg(2) & !\Add1~7\)))
-- \Add1~2COUT1_64\ = CARRY(((vreg(2) & !\Add1~7COUT1_62\)))

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
	cin0 => \Add1~7\,
	cin1 => \Add1~7COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~0_combout\,
	cout0 => \Add1~2\,
	cout1 => \Add1~2COUT1_64\);

-- Location: LC_X3_Y3_N5
\vreg[2]\ : maxii_lcell
-- Equation(s):
-- vreg(2) = DFFEAS((\Add1~0_combout\ & (((!\Equal1~1\) # (!\Equal1~3\)) # (!\Equal1~0_combout\))), !GLOBAL(\gen~combout\), VCC, , \Equal0~2_combout\, , , , )

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
	clk => \ALT_INV_gen~combout\,
	dataa => \Equal1~0_combout\,
	datab => \Equal1~3\,
	datac => \Add1~0_combout\,
	datad => \Equal1~1\,
	aclr => GND,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => vreg(2));

-- Location: LC_X6_Y2_N5
\cntrl_reg[3]~0\ : maxii_lcell
-- Equation(s):
-- \cntrl_reg[3]~0_combout\ = (\host_data~combout\(5) & (\host_data~combout\(6) & (\host_data~combout\(7) & \host_ad~combout\)))

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
	dataa => \host_data~combout\(5),
	datab => \host_data~combout\(6),
	datac => \host_data~combout\(7),
	datad => \host_ad~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cntrl_reg[3]~0_combout\);

-- Location: LC_X2_Y4_N2
\cntrl_reg[3]\ : maxii_lcell
-- Equation(s):
-- \always0~8\ = (((!cntrl_reg[3] & vreg(0))))

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
	ena => \cntrl_reg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always0~8\,
	regout => cntrl_reg(3));

-- Location: LC_X2_Y4_N8
\cntrl_reg[4]\ : maxii_lcell
-- Equation(s):
-- \always0~9\ = (vreg(2) & ((vreg(1) & (cntrl_reg[4] & !\always0~8\)) # (!vreg(1) & (cntrl_reg[4] $ (!\always0~8\))))) # (!vreg(2) & (vreg(1) & (!cntrl_reg[4] & \always0~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2482",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \host_cs~combout\,
	dataa => vreg(2),
	datab => vreg(1),
	datac => \host_data~combout\(4),
	datad => \always0~8\,
	aclr => GND,
	sload => VCC,
	ena => \cntrl_reg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always0~9\,
	regout => cntrl_reg(4));

-- Location: LC_X6_Y4_N5
\Equal13~0\ : maxii_lcell
-- Equation(s):
-- \Equal13~0_combout\ = ((hreg(0) & ((hreg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => hreg(0),
	datad => hreg(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal13~0_combout\);

-- Location: LC_X6_Y4_N6
\always0~7\ : maxii_lcell
-- Equation(s):
-- \always0~7_combout\ = (\host_busy~reg0_regout\ & (hreg(1) & (hreg(3) & \Equal13~0_combout\)))

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
	dataa => \host_busy~reg0_regout\,
	datab => hreg(1),
	datac => hreg(3),
	datad => \Equal13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always0~7_combout\);

-- Location: LC_X2_Y4_N9
\rom_reg[1]\ : maxii_lcell
-- Equation(s):
-- rom_reg(1) = DFFEAS((temp_reg1(1)) # ((vreg(3) & (sym_attr(2) & \always0~9\))), !GLOBAL(\gen~combout\), VCC, , \always0~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => vreg(3),
	datab => sym_attr(2),
	datac => temp_reg1(1),
	datad => \always0~9\,
	aclr => GND,
	ena => \always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rom_reg(1));

-- Location: LC_X4_Y4_N6
\Add2~30\ : maxii_lcell
-- Equation(s):
-- \Add2~30_combout\ = (hreg(1) $ ((\Add2~52\)))
-- \Add2~32\ = CARRY(((!\Add2~52\) # (!hreg(1))))
-- \Add2~32COUT1_67\ = CARRY(((!\Add2~52COUT1_65\) # (!hreg(1))))

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
	datab => hreg(1),
	cin0 => \Add2~52\,
	cin1 => \Add2~52COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~30_combout\,
	cout0 => \Add2~32\,
	cout1 => \Add2~32COUT1_67\);

-- Location: LC_X5_Y4_N7
\ram_addr_int[4]\ : maxii_lcell
-- Equation(s):
-- ram_addr_int(4) = DFFEAS(((\Equal12~0_combout\ & ((\Add3~20_combout\))) # (!\Equal12~0_combout\ & (hreg(8)))), !GLOBAL(\gen~combout\), VCC, , \ram_addr_int[9]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	datab => hreg(8),
	datac => \Equal12~0_combout\,
	datad => \Add3~20_combout\,
	aclr => GND,
	ena => \ram_addr_int[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_int(4));

-- Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rom_data[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rom_data(3),
	combout => \rom_data~combout\(3));

-- Location: LC_X2_Y2_N7
\temp_reg1[3]\ : maxii_lcell
-- Equation(s):
-- \ram_addr~4\ = (\host_busy~reg0_regout\ & (ram_addr_int(4))) # (!\host_busy~reg0_regout\ & (((ram_addr_ext(4)))))
-- temp_reg1(3) = DFFEAS(\ram_addr~4\, !GLOBAL(\gen~combout\), VCC, , \Equal9~1_combout\, \rom_data~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => \host_busy~reg0_regout\,
	datab => ram_addr_int(4),
	datac => \rom_data~combout\(3),
	datad => ram_addr_ext(4),
	aclr => GND,
	sload => VCC,
	ena => \Equal9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr~4\,
	regout => temp_reg1(3));

-- Location: LC_X2_Y4_N4
\rom_reg[3]\ : maxii_lcell
-- Equation(s):
-- rom_reg(3) = DFFEAS((temp_reg1(3)) # ((vreg(3) & (sym_attr(2) & \always0~9\))), !GLOBAL(\gen~combout\), VCC, , \always0~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => vreg(3),
	datab => sym_attr(2),
	datac => temp_reg1(3),
	datad => \always0~9\,
	aclr => GND,
	ena => \always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rom_reg(3));

-- Location: LC_X4_Y4_N0
\hreg[1]\ : maxii_lcell
-- Equation(s):
-- \Mux0~0\ = (hreg(2) & ((rom_reg(1)) # ((hreg[1])))) # (!hreg(2) & (((!hreg[1] & rom_reg(3)))))
-- hreg(1) = DFFEAS(\Mux0~0\, !GLOBAL(\gen~combout\), VCC, , , \Add2~30_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ada8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => hreg(2),
	datab => rom_reg(1),
	datac => \Add2~30_combout\,
	datad => rom_reg(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0\,
	regout => hreg(1));

-- Location: LC_X6_Y4_N9
\Equal12~0\ : maxii_lcell
-- Equation(s):
-- \Equal12~0_combout\ = (!hreg(0) & (hreg(1) & (hreg(3) & !hreg(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => hreg(0),
	datab => hreg(1),
	datac => hreg(3),
	datad => hreg(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal12~0_combout\);

-- Location: LC_X5_Y3_N0
\ram_addr_int[2]\ : maxii_lcell
-- Equation(s):
-- ram_addr_int(2) = DFFEAS(((\Equal12~0_combout\ & ((\Add3~10_combout\))) # (!\Equal12~0_combout\ & (hreg(6)))), !GLOBAL(\gen~combout\), VCC, , \ram_addr_int[9]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	datab => hreg(6),
	datac => \Add3~10_combout\,
	datad => \Equal12~0_combout\,
	aclr => GND,
	ena => \ram_addr_int[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_int(2));

-- Location: LC_X6_Y2_N6
\temp_reg2[2]\ : maxii_lcell
-- Equation(s):
-- \ram_input[2]~2\ = (\host_busy~reg0_regout\ & (((\ram_data[2]~2\))))
-- temp_reg2(2) = DFFEAS(\ram_input[2]~2\, !GLOBAL(\gen~combout\), VCC, , \Equal12~0_combout\, , , , )

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
	clk => \ALT_INV_gen~combout\,
	dataa => \host_busy~reg0_regout\,
	datac => \ram_data[2]~2\,
	aclr => GND,
	ena => \Equal12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_input[2]~2\,
	regout => temp_reg2(2));

-- Location: LC_X2_Y2_N4
\sym_attr[2]\ : maxii_lcell
-- Equation(s):
-- \ram_addr~2\ = ((\host_busy~reg0_regout\ & (ram_addr_int(2))) # (!\host_busy~reg0_regout\ & ((ram_addr_ext(2)))))
-- sym_attr(2) = DFFEAS(\ram_addr~2\, !GLOBAL(\gen~combout\), VCC, , \Equal9~1_combout\, temp_reg2(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => ram_addr_int(2),
	datab => ram_addr_ext(2),
	datac => temp_reg2(2),
	datad => \host_busy~reg0_regout\,
	aclr => GND,
	sload => VCC,
	ena => \Equal9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr~2\,
	regout => sym_attr(2));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rom_data[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rom_data(6),
	combout => \rom_data~combout\(6));

-- Location: LC_X7_Y4_N3
\ram_addr_int[7]\ : maxii_lcell
-- Equation(s):
-- ram_addr_int(7) = DFFEAS((\Equal12~0_combout\ & (((\Add3~35_combout\)))) # (!\Equal12~0_combout\ & (vreg(4))), !GLOBAL(\gen~combout\), VCC, , \ram_addr_int[9]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => vreg(4),
	datab => \Equal12~0_combout\,
	datad => \Add3~35_combout\,
	aclr => GND,
	ena => \ram_addr_int[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_int(7));

-- Location: LC_X7_Y4_N2
\temp_reg1[6]\ : maxii_lcell
-- Equation(s):
-- \ram_addr~7\ = (\host_busy~reg0_regout\ & (((ram_addr_int(7))))) # (!\host_busy~reg0_regout\ & (ram_addr_ext(7)))
-- temp_reg1(6) = DFFEAS(\ram_addr~7\, !GLOBAL(\gen~combout\), VCC, , \Equal9~1_combout\, \rom_data~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => \host_busy~reg0_regout\,
	datab => ram_addr_ext(7),
	datac => \rom_data~combout\(6),
	datad => ram_addr_int(7),
	aclr => GND,
	sload => VCC,
	ena => \Equal9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr~7\,
	regout => temp_reg1(6));

-- Location: LC_X2_Y4_N0
\rom_reg[6]\ : maxii_lcell
-- Equation(s):
-- rom_reg(6) = DFFEAS((temp_reg1(6)) # ((vreg(3) & (sym_attr(2) & \always0~9\))), !GLOBAL(\gen~combout\), VCC, , \always0~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => vreg(3),
	datab => sym_attr(2),
	datac => temp_reg1(6),
	datad => \always0~9\,
	aclr => GND,
	ena => \always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rom_reg(6));

-- Location: LC_X6_Y3_N9
\ram_addr_int[8]\ : maxii_lcell
-- Equation(s):
-- ram_addr_int(8) = DFFEAS(((\Equal12~0_combout\ & ((\Add3~40_combout\))) # (!\Equal12~0_combout\ & (vreg(5)))), !GLOBAL(\gen~combout\), VCC, , \ram_addr_int[9]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	datab => vreg(5),
	datac => \Add3~40_combout\,
	datad => \Equal12~0_combout\,
	aclr => GND,
	ena => \ram_addr_int[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_int(8));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rom_data[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rom_data(7),
	combout => \rom_data~combout\(7));

-- Location: LC_X4_Y2_N8
\temp_reg1[7]\ : maxii_lcell
-- Equation(s):
-- \ram_addr~8\ = ((\host_busy~reg0_regout\ & ((ram_addr_int(8)))) # (!\host_busy~reg0_regout\ & (ram_addr_ext(8))))
-- temp_reg1(7) = DFFEAS(\ram_addr~8\, !GLOBAL(\gen~combout\), VCC, , \Equal9~1_combout\, \rom_data~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => ram_addr_ext(8),
	datab => ram_addr_int(8),
	datac => \rom_data~combout\(7),
	datad => \host_busy~reg0_regout\,
	aclr => GND,
	sload => VCC,
	ena => \Equal9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr~8\,
	regout => temp_reg1(7));

-- Location: LC_X2_Y4_N3
\rom_reg[7]\ : maxii_lcell
-- Equation(s):
-- rom_reg(7) = DFFEAS((temp_reg1(7)) # ((vreg(3) & (sym_attr(2) & \always0~9\))), !GLOBAL(\gen~combout\), VCC, , \always0~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => vreg(3),
	datab => sym_attr(2),
	datac => temp_reg1(7),
	datad => \always0~9\,
	aclr => GND,
	ena => \always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rom_reg(7));

-- Location: LC_X4_Y4_N7
\Add2~35\ : maxii_lcell
-- Equation(s):
-- \Add2~35_combout\ = hreg(2) $ ((((!\Add2~32\))))
-- \Add2~37\ = CARRY((hreg(2) & ((!\Add2~32\))))
-- \Add2~37COUT1_69\ = CARRY((hreg(2) & ((!\Add2~32COUT1_67\))))

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
	dataa => hreg(2),
	cin0 => \Add2~32\,
	cin1 => \Add2~32COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~35_combout\,
	cout0 => \Add2~37\,
	cout1 => \Add2~37COUT1_69\);

-- Location: LC_X3_Y4_N1
\hreg[2]\ : maxii_lcell
-- Equation(s):
-- \Mux0~2\ = (hreg[2] & (((hreg(1))))) # (!hreg[2] & ((hreg(1) & (rom_reg(6))) # (!hreg(1) & ((rom_reg(7))))))
-- hreg(2) = DFFEAS(\Mux0~2\, !GLOBAL(\gen~combout\), VCC, , , \Add2~35_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => rom_reg(6),
	datab => rom_reg(7),
	datac => \Add2~35_combout\,
	datad => hreg(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~2\,
	regout => hreg(2));

-- Location: LC_X4_Y4_N8
\Add2~40\ : maxii_lcell
-- Equation(s):
-- \Add2~40_combout\ = (hreg(3) $ ((\Add2~37\)))
-- \Add2~42\ = CARRY(((!\Add2~37\) # (!hreg(3))))
-- \Add2~42COUT1_71\ = CARRY(((!\Add2~37COUT1_69\) # (!hreg(3))))

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
	datab => hreg(3),
	cin0 => \Add2~37\,
	cin1 => \Add2~37COUT1_69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~40_combout\,
	cout0 => \Add2~42\,
	cout1 => \Add2~42COUT1_71\);

-- Location: LC_X4_Y3_N5
\hreg[3]\ : maxii_lcell
-- Equation(s):
-- \Equal9~0\ = (((!hreg[3] & !hreg(1))))
-- hreg(3) = DFFEAS(\Equal9~0\, !GLOBAL(\gen~combout\), VCC, , , \Add2~40_combout\, , , VCC)

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
	clk => \ALT_INV_gen~combout\,
	datac => \Add2~40_combout\,
	datad => hreg(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal9~0\,
	regout => hreg(3));

-- Location: LC_X4_Y4_N9
\Add2~45\ : maxii_lcell
-- Equation(s):
-- \Add2~45_combout\ = (hreg(4) $ ((!\Add2~42\)))
-- \Add2~47\ = CARRY(((hreg(4) & !\Add2~42COUT1_71\)))

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
	datab => hreg(4),
	cin0 => \Add2~42\,
	cin1 => \Add2~42COUT1_71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~45_combout\,
	cout => \Add2~47\);

-- Location: LC_X5_Y4_N6
\hreg[9]\ : maxii_lcell
-- Equation(s):
-- hreg(9) = DFFEAS((((\Add2~5_combout\ & !\Equal0~2_combout\))), !GLOBAL(\gen~combout\), VCC, , , , , , )

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
	clk => \ALT_INV_gen~combout\,
	datac => \Add2~5_combout\,
	datad => \Equal0~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hreg(9));

-- Location: LC_X4_Y3_N1
\Equal0~1\ : maxii_lcell
-- Equation(s):
-- \Equal0~1_combout\ = (!hreg(2) & (!hreg(0) & (\Equal9~0\ & \Equal0~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => hreg(2),
	datab => hreg(0),
	datac => \Equal9~0\,
	datad => \Equal0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1_combout\);

-- Location: LC_X4_Y3_N8
\Equal0~2\ : maxii_lcell
-- Equation(s):
-- \Equal0~2_combout\ = (hreg(9) & (!hreg(8) & (hreg(6) & \Equal0~1_combout\)))

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
	dataa => hreg(9),
	datab => hreg(8),
	datac => hreg(6),
	datad => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2_combout\);

-- Location: LC_X4_Y3_N4
\vreg[4]\ : maxii_lcell
-- Equation(s):
-- \Equal1~1\ = (((!vreg[4] & vreg(3))))
-- vreg(4) = DFFEAS(\Equal1~1\, !GLOBAL(\gen~combout\), VCC, , \Equal0~2_combout\, \Add1~35_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	datac => \Add1~35_combout\,
	datad => vreg(3),
	aclr => GND,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~1\,
	regout => vreg(4));

-- Location: LC_X7_Y3_N3
\Add1~30\ : maxii_lcell
-- Equation(s):
-- \Add1~30_combout\ = vreg(3) $ ((((\Add1~2\))))
-- \Add1~32\ = CARRY(((!\Add1~2\)) # (!vreg(3)))
-- \Add1~32COUT1_66\ = CARRY(((!\Add1~2COUT1_64\)) # (!vreg(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => vreg(3),
	cin0 => \Add1~2\,
	cin1 => \Add1~2COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~30_combout\,
	cout0 => \Add1~32\,
	cout1 => \Add1~32COUT1_66\);

-- Location: LC_X3_Y3_N8
\vreg[3]\ : maxii_lcell
-- Equation(s):
-- vreg(3) = DFFEAS((\Add1~30_combout\ & (((!\Equal1~3\) # (!\Equal1~1\)) # (!\Equal1~0_combout\))), !GLOBAL(\gen~combout\), VCC, , \Equal0~2_combout\, , , , )

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
	clk => \ALT_INV_gen~combout\,
	dataa => \Equal1~0_combout\,
	datab => \Equal1~1\,
	datac => \Equal1~3\,
	datad => \Add1~30_combout\,
	aclr => GND,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => vreg(3));

-- Location: LC_X7_Y3_N4
\Add1~35\ : maxii_lcell
-- Equation(s):
-- \Add1~35_combout\ = vreg(4) $ ((((!\Add1~32\))))
-- \Add1~37\ = CARRY((vreg(4) & ((!\Add1~32COUT1_66\))))

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
	cin0 => \Add1~32\,
	cin1 => \Add1~32COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~35_combout\,
	cout => \Add1~37\);

-- Location: LC_X3_Y3_N3
\vreg[1]\ : maxii_lcell
-- Equation(s):
-- vreg(1) = DFFEAS((\Add1~5_combout\ & (((!\Equal1~1\) # (!\Equal1~3\)) # (!\Equal1~0_combout\))), !GLOBAL(\gen~combout\), VCC, , \Equal0~2_combout\, , , , )

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
	clk => \ALT_INV_gen~combout\,
	dataa => \Add1~5_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal1~3\,
	datad => \Equal1~1\,
	aclr => GND,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => vreg(1));

-- Location: LC_X2_Y2_N0
\Equal1~0\ : maxii_lcell
-- Equation(s):
-- \Equal1~0_combout\ = (((!vreg(1) & vreg(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => vreg(1),
	datad => vreg(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~0_combout\);

-- Location: LC_X7_Y3_N9
\Add1~45\ : maxii_lcell
-- Equation(s):
-- \Add1~45_combout\ = (((!\Add1~37\ & \Add1~27\) # (\Add1~37\ & \Add1~27COUT1_74\) $ (vreg(9))))

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
	combout => \Add1~45_combout\);

-- Location: LC_X3_Y3_N4
\vreg[9]\ : maxii_lcell
-- Equation(s):
-- vreg(9) = DFFEAS((\Add1~45_combout\ & (((!\Equal1~3\) # (!\Equal1~1\)) # (!\Equal1~0_combout\))), !GLOBAL(\gen~combout\), VCC, , \Equal0~2_combout\, , , , )

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
	clk => \ALT_INV_gen~combout\,
	dataa => \Equal1~0_combout\,
	datab => \Equal1~1\,
	datac => \Equal1~3\,
	datad => \Add1~45_combout\,
	aclr => GND,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => vreg(9));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LC_X6_Y4_N8
\host_busy~reg0\ : maxii_lcell
-- Equation(s):
-- \host_busy~reg0_regout\ = DFFEAS((!vreg(9) & (((\reset~combout\ & !\always0~3\)))), !GLOBAL(\gen~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => vreg(9),
	datac => \reset~combout\,
	datad => \always0~3\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \host_busy~reg0_regout\);

-- Location: LC_X6_Y2_N7
\temp_reg2[1]\ : maxii_lcell
-- Equation(s):
-- \ram_input[1]~1\ = ((\ram_data[1]~1\ & (\host_busy~reg0_regout\)))
-- temp_reg2(1) = DFFEAS(\ram_input[1]~1\, !GLOBAL(\gen~combout\), VCC, , \Equal12~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	datab => \ram_data[1]~1\,
	datac => \host_busy~reg0_regout\,
	aclr => GND,
	ena => \Equal12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_input[1]~1\,
	regout => temp_reg2(1));

-- Location: LC_X4_Y2_N7
\sym_attr[1]\ : maxii_lcell
-- Equation(s):
-- \sym_color~5\ = ((\ram_data[3]~3\ & ((\host_busy~reg0_regout\))))
-- sym_attr(1) = DFFEAS(\sym_color~5\, !GLOBAL(\gen~combout\), VCC, , \Equal9~1_combout\, temp_reg2(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	datab => \ram_data[3]~3\,
	datac => temp_reg2(1),
	datad => \host_busy~reg0_regout\,
	aclr => GND,
	sload => VCC,
	ena => \Equal9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sym_color~5\,
	regout => sym_attr(1));

-- Location: LC_X3_Y3_N1
\blink_dev[0]~0\ : maxii_lcell
-- Equation(s):
-- \blink_dev[0]~0_combout\ = (\Equal1~0_combout\ & (\Equal1~1\ & (\Equal1~3\ & \Equal0~2_combout\)))

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
	dataa => \Equal1~0_combout\,
	datab => \Equal1~1\,
	datac => \Equal1~3\,
	datad => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \blink_dev[0]~0_combout\);

-- Location: LC_X3_Y3_N2
\blink_dev[0]\ : maxii_lcell
-- Equation(s):
-- blink_dev(0) = DFFEAS(((blink_dev(0) $ (\blink_dev[0]~0_combout\))), !GLOBAL(\gen~combout\), VCC, , , , , , )

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
	clk => \ALT_INV_gen~combout\,
	datac => blink_dev(0),
	datad => \blink_dev[0]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink_dev(0));

-- Location: LC_X2_Y3_N5
\blink_dev[1]\ : maxii_lcell
-- Equation(s):
-- blink_dev(1) = DFFEAS(blink_dev(1) $ ((blink_dev(0))), !GLOBAL(\gen~combout\), VCC, , \blink_dev[0]~0_combout\, , , , )
-- \blink_dev[1]~9\ = CARRY((blink_dev(1) & (blink_dev(0))))
-- \blink_dev[1]~9COUT1_15\ = CARRY((blink_dev(1) & (blink_dev(0))))

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
	clk => \ALT_INV_gen~combout\,
	dataa => blink_dev(1),
	datab => blink_dev(0),
	aclr => GND,
	ena => \blink_dev[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink_dev(1),
	cout0 => \blink_dev[1]~9\,
	cout1 => \blink_dev[1]~9COUT1_15\);

-- Location: LC_X2_Y3_N6
\blink_dev[2]\ : maxii_lcell
-- Equation(s):
-- blink_dev(2) = DFFEAS(blink_dev(2) $ ((((\blink_dev[1]~9\)))), !GLOBAL(\gen~combout\), VCC, , \blink_dev[0]~0_combout\, , , , )
-- \blink_dev[2]~7\ = CARRY(((!\blink_dev[1]~9\)) # (!blink_dev(2)))
-- \blink_dev[2]~7COUT1_17\ = CARRY(((!\blink_dev[1]~9COUT1_15\)) # (!blink_dev(2)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => blink_dev(2),
	aclr => GND,
	ena => \blink_dev[0]~0_combout\,
	cin0 => \blink_dev[1]~9\,
	cin1 => \blink_dev[1]~9COUT1_15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink_dev(2),
	cout0 => \blink_dev[2]~7\,
	cout1 => \blink_dev[2]~7COUT1_17\);

-- Location: LC_X2_Y3_N7
\blink_dev[3]\ : maxii_lcell
-- Equation(s):
-- blink_dev(3) = DFFEAS((blink_dev(3) $ ((!\blink_dev[2]~7\))), !GLOBAL(\gen~combout\), VCC, , \blink_dev[0]~0_combout\, , , , )
-- \blink_dev[3]~5\ = CARRY(((blink_dev(3) & !\blink_dev[2]~7\)))
-- \blink_dev[3]~5COUT1_19\ = CARRY(((blink_dev(3) & !\blink_dev[2]~7COUT1_17\)))

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
	clk => \ALT_INV_gen~combout\,
	datab => blink_dev(3),
	aclr => GND,
	ena => \blink_dev[0]~0_combout\,
	cin0 => \blink_dev[2]~7\,
	cin1 => \blink_dev[2]~7COUT1_17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink_dev(3),
	cout0 => \blink_dev[3]~5\,
	cout1 => \blink_dev[3]~5COUT1_19\);

-- Location: LC_X2_Y3_N8
\blink_dev[4]\ : maxii_lcell
-- Equation(s):
-- blink_dev(4) = DFFEAS(((\blink_dev[3]~5\ $ (blink_dev(4)))), !GLOBAL(\gen~combout\), VCC, , \blink_dev[0]~0_combout\, , , , )

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
	clk => \ALT_INV_gen~combout\,
	datad => blink_dev(4),
	aclr => GND,
	ena => \blink_dev[0]~0_combout\,
	cin0 => \blink_dev[3]~5\,
	cin1 => \blink_dev[3]~5COUT1_19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink_dev(4));

-- Location: LC_X5_Y2_N6
\sym_color[4]\ : maxii_lcell
-- Equation(s):
-- sym_color(4) = DFFEAS((\ram_data[4]~4\ & (\host_busy~reg0_regout\ & ((!blink_dev(4)) # (!sym_attr(1))))), !GLOBAL(\gen~combout\), VCC, , \always0~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => \ram_data[4]~4\,
	datab => sym_attr(1),
	datac => blink_dev(4),
	datad => \host_busy~reg0_regout\,
	aclr => GND,
	ena => \always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sym_color(4));

-- Location: LC_X6_Y2_N1
\temp_reg2[0]\ : maxii_lcell
-- Equation(s):
-- \ram_input[0]~0\ = ((\ram_data[0]~0\ & (\host_busy~reg0_regout\)))
-- temp_reg2(0) = DFFEAS(\ram_input[0]~0\, !GLOBAL(\gen~combout\), VCC, , \Equal12~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	datab => \ram_data[0]~0\,
	datac => \host_busy~reg0_regout\,
	aclr => GND,
	ena => \Equal12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_input[0]~0\,
	regout => temp_reg2(0));

-- Location: LC_X5_Y2_N3
\sym_attr[0]\ : maxii_lcell
-- Equation(s):
-- \sym_color~0\ = (\host_busy~reg0_regout\ & (blink_dev(4) & (sym_attr[0] & !sym_attr(1))))
-- sym_attr(0) = DFFEAS(\sym_color~0\, !GLOBAL(\gen~combout\), VCC, , \Equal9~1_combout\, temp_reg2(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => \host_busy~reg0_regout\,
	datab => blink_dev(4),
	datac => temp_reg2(0),
	datad => sym_attr(1),
	aclr => GND,
	sload => VCC,
	ena => \Equal9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sym_color~0\,
	regout => sym_attr(0));

-- Location: LC_X5_Y2_N0
\always0~6\ : maxii_lcell
-- Equation(s):
-- \always0~6_combout\ = (sym_attr(0) & (((blink_dev(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => sym_attr(0),
	datac => blink_dev(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always0~6_combout\);

-- Location: LC_X5_Y2_N1
\sym_color[0]\ : maxii_lcell
-- Equation(s):
-- sym_color(0) = DFFEAS((\ram_input[0]~0\ & (((\ram_data[4]~4\ & \sym_color~0\)) # (!\always0~6_combout\))) # (!\ram_input[0]~0\ & (((\ram_data[4]~4\ & \sym_color~0\)))), !GLOBAL(\gen~combout\), VCC, , \always0~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f222",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => \ram_input[0]~0\,
	datab => \always0~6_combout\,
	datac => \ram_data[4]~4\,
	datad => \sym_color~0\,
	aclr => GND,
	ena => \always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sym_color(0));

-- Location: LC_X4_Y3_N3
\always0~2\ : maxii_lcell
-- Equation(s):
-- \always0~2_combout\ = ((\host_busy~reg0_regout\ & (\reset~combout\ & \always0~1\)))

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
	datab => \host_busy~reg0_regout\,
	datac => \reset~combout\,
	datad => \always0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always0~2_combout\);

-- Location: LC_X7_Y4_N5
\ram_addr_int[6]\ : maxii_lcell
-- Equation(s):
-- ram_addr_int(6) = DFFEAS(((\Equal12~0_combout\ & ((\Add3~30_combout\))) # (!\Equal12~0_combout\ & (hreg(10)))), !GLOBAL(\gen~combout\), VCC, , \ram_addr_int[9]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	datab => \Equal12~0_combout\,
	datac => hreg(10),
	datad => \Add3~30_combout\,
	aclr => GND,
	ena => \ram_addr_int[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_int(6));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rom_data[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rom_data(5),
	combout => \rom_data~combout\(5));

-- Location: LC_X2_Y2_N2
\temp_reg1[5]\ : maxii_lcell
-- Equation(s):
-- \ram_addr~6\ = ((\host_busy~reg0_regout\ & (ram_addr_int(6))) # (!\host_busy~reg0_regout\ & ((ram_addr_ext(6)))))
-- temp_reg1(5) = DFFEAS(\ram_addr~6\, !GLOBAL(\gen~combout\), VCC, , \Equal9~1_combout\, \rom_data~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => ram_addr_int(6),
	datab => ram_addr_ext(6),
	datac => \rom_data~combout\(5),
	datad => \host_busy~reg0_regout\,
	aclr => GND,
	sload => VCC,
	ena => \Equal9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr~6\,
	regout => temp_reg1(5));

-- Location: LC_X2_Y4_N5
\rom_reg[5]\ : maxii_lcell
-- Equation(s):
-- rom_reg(5) = DFFEAS((temp_reg1(5)) # ((vreg(3) & (sym_attr(2) & \always0~9\))), !GLOBAL(\gen~combout\), VCC, , \always0~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => vreg(3),
	datab => sym_attr(2),
	datac => temp_reg1(5),
	datad => \always0~9\,
	aclr => GND,
	ena => \always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rom_reg(5));

-- Location: LC_X6_Y3_N7
\ram_addr_int[9]\ : maxii_lcell
-- Equation(s):
-- ram_addr_int(9) = DFFEAS(((\Equal12~0_combout\ & ((\Add3~45\))) # (!\Equal12~0_combout\ & (vreg(6)))), !GLOBAL(\gen~combout\), VCC, , \ram_addr_int[9]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => vreg(6),
	datac => \Add3~45\,
	datad => \Equal12~0_combout\,
	aclr => GND,
	ena => \ram_addr_int[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_int(9));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rom_data[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rom_data(4),
	combout => \rom_data~combout\(4));

-- Location: LC_X4_Y1_N0
\temp_reg1[4]\ : maxii_lcell
-- Equation(s):
-- \ram_addr~9\ = (\host_busy~reg0_regout\ & (ram_addr_int(9))) # (!\host_busy~reg0_regout\ & (((ram_addr_ext(9)))))
-- temp_reg1(4) = DFFEAS(\ram_addr~9\, !GLOBAL(\gen~combout\), VCC, , \Equal9~1_combout\, \rom_data~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => \host_busy~reg0_regout\,
	datab => ram_addr_int(9),
	datac => \rom_data~combout\(4),
	datad => ram_addr_ext(9),
	aclr => GND,
	sload => VCC,
	ena => \Equal9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr~9\,
	regout => temp_reg1(4));

-- Location: LC_X2_Y4_N6
\rom_reg[4]\ : maxii_lcell
-- Equation(s):
-- rom_reg(4) = DFFEAS((temp_reg1(4)) # ((vreg(3) & (sym_attr(2) & \always0~9\))), !GLOBAL(\gen~combout\), VCC, , \always0~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => vreg(3),
	datab => sym_attr(2),
	datac => temp_reg1(4),
	datad => \always0~9\,
	aclr => GND,
	ena => \always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rom_reg(4));

-- Location: LC_X3_Y4_N0
\Mux0~3\ : maxii_lcell
-- Equation(s):
-- \Mux0~3_combout\ = (hreg(2) & ((\Mux0~2\ & ((rom_reg(4)))) # (!\Mux0~2\ & (rom_reg(5))))) # (!hreg(2) & (((\Mux0~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => rom_reg(5),
	datab => hreg(2),
	datac => rom_reg(4),
	datad => \Mux0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~3_combout\);

-- Location: LC_X5_Y3_N3
\ram_addr_int[5]\ : maxii_lcell
-- Equation(s):
-- ram_addr_int(5) = DFFEAS(((\Equal12~0_combout\ & ((\Add3~25_combout\))) # (!\Equal12~0_combout\ & (hreg(9)))), !GLOBAL(\gen~combout\), VCC, , \ram_addr_int[9]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => hreg(9),
	datab => \Add3~25_combout\,
	datad => \Equal12~0_combout\,
	aclr => GND,
	ena => \ram_addr_int[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_int(5));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rom_data[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rom_data(0),
	combout => \rom_data~combout\(0));

-- Location: LC_X4_Y4_N3
\temp_reg1[0]\ : maxii_lcell
-- Equation(s):
-- \ram_addr~5\ = ((\host_busy~reg0_regout\ & ((ram_addr_int(5)))) # (!\host_busy~reg0_regout\ & (ram_addr_ext(5))))
-- temp_reg1(0) = DFFEAS(\ram_addr~5\, !GLOBAL(\gen~combout\), VCC, , \Equal9~1_combout\, \rom_data~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => ram_addr_ext(5),
	datab => ram_addr_int(5),
	datac => \rom_data~combout\(0),
	datad => \host_busy~reg0_regout\,
	aclr => GND,
	sload => VCC,
	ena => \Equal9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr~5\,
	regout => temp_reg1(0));

-- Location: LC_X2_Y4_N7
\rom_reg[0]\ : maxii_lcell
-- Equation(s):
-- rom_reg(0) = DFFEAS((temp_reg1(0)) # ((vreg(3) & (sym_attr(2) & \always0~9\))), !GLOBAL(\gen~combout\), VCC, , \always0~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => vreg(3),
	datab => sym_attr(2),
	datac => temp_reg1(0),
	datad => \always0~9\,
	aclr => GND,
	ena => \always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rom_reg(0));

-- Location: LC_X6_Y2_N0
\ram_addr_int[1]\ : maxii_lcell
-- Equation(s):
-- ram_addr_int(1) = DFFEAS(((\Equal12~0_combout\ & ((\Add3~5_combout\))) # (!\Equal12~0_combout\ & (hreg(5)))), !GLOBAL(\gen~combout\), VCC, , \ram_addr_int[9]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => hreg(5),
	datac => \Equal12~0_combout\,
	datad => \Add3~5_combout\,
	aclr => GND,
	ena => \ram_addr_int[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_int(1));

-- Location: PIN_56,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rom_data[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rom_data(2),
	combout => \rom_data~combout\(2));

-- Location: LC_X4_Y2_N9
\temp_reg1[2]\ : maxii_lcell
-- Equation(s):
-- \ram_addr~1\ = ((\host_busy~reg0_regout\ & ((ram_addr_int(1)))) # (!\host_busy~reg0_regout\ & (ram_addr_ext(1))))
-- temp_reg1(2) = DFFEAS(\ram_addr~1\, !GLOBAL(\gen~combout\), VCC, , \Equal9~1_combout\, \rom_data~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => ram_addr_ext(1),
	datab => ram_addr_int(1),
	datac => \rom_data~combout\(2),
	datad => \host_busy~reg0_regout\,
	aclr => GND,
	sload => VCC,
	ena => \Equal9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr~1\,
	regout => temp_reg1(2));

-- Location: LC_X2_Y4_N1
\rom_reg[2]\ : maxii_lcell
-- Equation(s):
-- rom_reg(2) = DFFEAS((temp_reg1(2)) # ((vreg(3) & (sym_attr(2) & \always0~9\))), !GLOBAL(\gen~combout\), VCC, , \always0~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => vreg(3),
	datab => sym_attr(2),
	datac => temp_reg1(2),
	datad => \always0~9\,
	aclr => GND,
	ena => \always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rom_reg(2));

-- Location: LC_X3_Y4_N7
\Mux0~1\ : maxii_lcell
-- Equation(s):
-- \Mux0~1_combout\ = (hreg(1) & ((\Mux0~0\ & (rom_reg(0))) # (!\Mux0~0\ & ((rom_reg(2)))))) # (!hreg(1) & (((\Mux0~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dad0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => hreg(1),
	datab => rom_reg(0),
	datac => \Mux0~0\,
	datad => rom_reg(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~1_combout\);

-- Location: LC_X3_Y4_N8
\Mux0~4\ : maxii_lcell
-- Equation(s):
-- \Mux0~4_combout\ = ((hreg(3) & ((\Mux0~1_combout\))) # (!hreg(3) & (\Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => hreg(3),
	datac => \Mux0~3_combout\,
	datad => \Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~4_combout\);

-- Location: LC_X3_Y4_N3
\rgb[0]~reg0\ : maxii_lcell
-- Equation(s):
-- \rgb[0]~reg0_regout\ = DFFEAS((\always0~2_combout\ & ((\Mux0~4_combout\ & ((sym_color(0)))) # (!\Mux0~4_combout\ & (sym_color(4))))), !GLOBAL(\gen~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => sym_color(4),
	datab => sym_color(0),
	datac => \always0~2_combout\,
	datad => \Mux0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgb[0]~reg0_regout\);

-- Location: LC_X5_Y2_N7
\sym_color[6]\ : maxii_lcell
-- Equation(s):
-- sym_color(6) = DFFEAS((\ram_data[6]~6\ & (\host_busy~reg0_regout\ & ((!blink_dev(4)) # (!sym_attr(1))))), !GLOBAL(\gen~combout\), VCC, , \always0~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => \ram_data[6]~6\,
	datab => sym_attr(1),
	datac => blink_dev(4),
	datad => \host_busy~reg0_regout\,
	aclr => GND,
	ena => \always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sym_color(6));

-- Location: LC_X3_Y2_N1
\sym_color[5]\ : maxii_lcell
-- Equation(s):
-- sym_color(5) = DFFEAS((\ram_data[5]~5\ & (\host_busy~reg0_regout\ & ((!blink_dev(4)) # (!sym_attr(1))))), !GLOBAL(\gen~combout\), VCC, , \always0~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0888",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => \ram_data[5]~5\,
	datab => \host_busy~reg0_regout\,
	datac => sym_attr(1),
	datad => blink_dev(4),
	aclr => GND,
	ena => \always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sym_color(5));

-- Location: LC_X5_Y2_N2
\sym_color[7]\ : maxii_lcell
-- Equation(s):
-- sym_color(7) = DFFEAS((\host_busy~reg0_regout\ & (\ram_data[7]~7\ & ((!sym_attr(1)) # (!blink_dev(4))))), !GLOBAL(\gen~combout\), VCC, , \always0~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "20a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => \host_busy~reg0_regout\,
	datab => blink_dev(4),
	datac => \ram_data[7]~7\,
	datad => sym_attr(1),
	aclr => GND,
	ena => \always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sym_color(7));

-- Location: LC_X2_Y3_N1
\Equal7~0\ : maxii_lcell
-- Equation(s):
-- \Equal7~0_combout\ = (sym_color(6) & (!sym_color(4) & (sym_color(5) & !sym_color(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => sym_color(6),
	datab => sym_color(4),
	datac => sym_color(5),
	datad => sym_color(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal7~0_combout\);

-- Location: LC_X3_Y4_N2
\rgb~2\ : maxii_lcell
-- Equation(s):
-- \rgb~2_combout\ = (sym_color(5) & ((hreg(3) & (!\Mux0~1_combout\)) # (!hreg(3) & ((!\Mux0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "220a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => sym_color(5),
	datab => \Mux0~1_combout\,
	datac => \Mux0~3_combout\,
	datad => hreg(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rgb~2_combout\);

-- Location: LC_X5_Y2_N5
\sym_color[1]\ : maxii_lcell
-- Equation(s):
-- sym_color(1) = DFFEAS((\sym_color~0\ & ((\ram_data[5]~5\) # ((!\always0~6_combout\ & \ram_input[1]~1\)))) # (!\sym_color~0\ & (((!\always0~6_combout\ & \ram_input[1]~1\)))), !GLOBAL(\gen~combout\), VCC, , \always0~7_combout\, , , , )

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
	clk => \ALT_INV_gen~combout\,
	dataa => \sym_color~0\,
	datab => \ram_data[5]~5\,
	datac => \always0~6_combout\,
	datad => \ram_input[1]~1\,
	aclr => GND,
	ena => \always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sym_color(1));

-- Location: LC_X5_Y2_N9
temp_reg3 : maxii_lcell
-- Equation(s):
-- \ram_input[7]~3\ = (((\ram_data[7]~7\ & \host_busy~reg0_regout\)))
-- \temp_reg3~regout\ = DFFEAS(\ram_input[7]~3\, !GLOBAL(\gen~combout\), VCC, , \Equal9~1_combout\, , , , )

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
	clk => \ALT_INV_gen~combout\,
	datac => \ram_data[7]~7\,
	datad => \host_busy~reg0_regout\,
	aclr => GND,
	ena => \Equal9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_input[7]~3\,
	regout => \temp_reg3~regout\);

-- Location: LC_X5_Y2_N4
\sym_color[3]\ : maxii_lcell
-- Equation(s):
-- sym_color(3) = DFFEAS((\always0~6_combout\ & (((!sym_attr(1) & \ram_input[7]~3\)))) # (!\always0~6_combout\ & (\sym_color~5\)), !GLOBAL(\gen~combout\), VCC, , \always0~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3a0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => \sym_color~5\,
	datab => sym_attr(1),
	datac => \always0~6_combout\,
	datad => \ram_input[7]~3\,
	aclr => GND,
	ena => \always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sym_color(3));

-- Location: LC_X5_Y2_N8
\sym_color[2]\ : maxii_lcell
-- Equation(s):
-- sym_color(2) = DFFEAS((\ram_input[2]~2\ & (((\ram_data[6]~6\ & \sym_color~0\)) # (!\always0~6_combout\))) # (!\ram_input[2]~2\ & (((\ram_data[6]~6\ & \sym_color~0\)))), !GLOBAL(\gen~combout\), VCC, , \always0~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f222",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => \ram_input[2]~2\,
	datab => \always0~6_combout\,
	datac => \ram_data[6]~6\,
	datad => \sym_color~0\,
	aclr => GND,
	ena => \always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sym_color(2));

-- Location: LC_X3_Y4_N4
\Equal6~0\ : maxii_lcell
-- Equation(s):
-- \Equal6~0_combout\ = (!sym_color(3) & (sym_color(2) & (!sym_color(0) & sym_color(1))))

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
	dataa => sym_color(3),
	datab => sym_color(2),
	datac => sym_color(0),
	datad => sym_color(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal6~0_combout\);

-- Location: LC_X3_Y4_N5
\rgb~1\ : maxii_lcell
-- Equation(s):
-- \rgb~1_combout\ = ((sym_color(1) & (!\Equal6~0_combout\ & \Mux0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => sym_color(1),
	datac => \Equal6~0_combout\,
	datad => \Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rgb~1_combout\);

-- Location: LC_X3_Y4_N6
\rgb[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \rgb[1]~reg0_regout\ = DFFEAS((\always0~2_combout\ & ((\rgb~1_combout\) # ((!\Equal7~0_combout\ & \rgb~2_combout\)))), !GLOBAL(\gen~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f040",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => \Equal7~0_combout\,
	datab => \rgb~2_combout\,
	datac => \always0~2_combout\,
	datad => \rgb~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgb[1]~reg0_regout\);

-- Location: LC_X3_Y4_N9
\rgb[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \rgb[2]~reg0_regout\ = DFFEAS((\always0~2_combout\ & ((\Mux0~4_combout\ & ((sym_color(2)))) # (!\Mux0~4_combout\ & (sym_color(6))))), !GLOBAL(\gen~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => sym_color(6),
	datab => sym_color(2),
	datac => \always0~2_combout\,
	datad => \Mux0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgb[2]~reg0_regout\);

-- Location: LC_X2_Y3_N4
\rgb[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \rgb~5\ = (\always0~2_combout\ & ((\Mux0~4_combout\ & (sym_color(3))) # (!\Mux0~4_combout\ & ((sym_color(7))))))
-- \rgb[3]~reg0_regout\ = DFFEAS(\rgb~5\, !GLOBAL(\gen~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => sym_color(3),
	datab => sym_color(7),
	datac => \always0~2_combout\,
	datad => \Mux0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rgb~5\,
	regout => \rgb[3]~reg0_regout\);

-- Location: LC_X2_Y3_N0
\rgb~6\ : maxii_lcell
-- Equation(s):
-- \rgb~6_combout\ = (sym_color(3)) # ((sym_color(2) & (!sym_color(0) & sym_color(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => sym_color(2),
	datab => sym_color(0),
	datac => sym_color(1),
	datad => sym_color(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rgb~6_combout\);

-- Location: LC_X2_Y3_N9
\rgb~7\ : maxii_lcell
-- Equation(s):
-- \rgb~7_combout\ = (sym_color(7)) # ((sym_color(6) & (!sym_color(4) & sym_color(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => sym_color(6),
	datab => sym_color(4),
	datac => sym_color(5),
	datad => sym_color(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rgb~7_combout\);

-- Location: LC_X4_Y4_N1
\rgb[4]~reg0\ : maxii_lcell
-- Equation(s):
-- \rgb[4]~reg0_regout\ = DFFEAS((\always0~2_combout\ & ((\Mux0~4_combout\ & (\rgb~6_combout\)) # (!\Mux0~4_combout\ & ((\rgb~7_combout\))))), !GLOBAL(\gen~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ac00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => \rgb~6_combout\,
	datab => \rgb~7_combout\,
	datac => \Mux0~4_combout\,
	datad => \always0~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgb[4]~reg0_regout\);

-- Location: LC_X6_Y4_N7
\ram_addr_int[0]\ : maxii_lcell
-- Equation(s):
-- ram_addr_int(0) = DFFEAS(((\Equal12~0_combout\ & ((\Add3~0\))) # (!\Equal12~0_combout\ & (hreg(4)))), !GLOBAL(\gen~combout\), VCC, , \ram_addr_int[9]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	datab => \Equal12~0_combout\,
	datac => hreg(4),
	datad => \Add3~0\,
	aclr => GND,
	ena => \ram_addr_int[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_int(0));

-- Location: LC_X2_Y3_N2
\rgb[5]~reg0\ : maxii_lcell
-- Equation(s):
-- \ram_addr~0\ = (\host_busy~reg0_regout\ & (ram_addr_int(0))) # (!\host_busy~reg0_regout\ & (((ram_addr_ext(0)))))
-- \rgb[5]~reg0_regout\ = DFFEAS(\ram_addr~0\, !GLOBAL(\gen~combout\), VCC, , , \rgb~5\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => ram_addr_int(0),
	datab => \host_busy~reg0_regout\,
	datac => \rgb~5\,
	datad => ram_addr_ext(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr~0\,
	regout => \rgb[5]~reg0_regout\);

-- Location: LC_X5_Y4_N9
\hs~0\ : maxii_lcell
-- Equation(s):
-- \hs~0_combout\ = (\hs~reg0_regout\ & (!hreg(9) & (hreg(6) & hreg(8)))) # (!\hs~reg0_regout\ & (hreg(9) & (!hreg(6) & !hreg(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \hs~reg0_regout\,
	datab => hreg(9),
	datac => hreg(6),
	datad => hreg(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \hs~0_combout\);

-- Location: LC_X5_Y4_N8
\hs~reg0\ : maxii_lcell
-- Equation(s):
-- \hs~reg0_regout\ = DFFEAS((\hs~reg0_regout\ & (((!\reset~combout\) # (!\Equal0~1_combout\)) # (!\hs~0_combout\))) # (!\hs~reg0_regout\ & (\hs~0_combout\ & (\Equal0~1_combout\))), !GLOBAL(\gen~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6aea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => \hs~reg0_regout\,
	datab => \hs~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \reset~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hs~reg0_regout\);

-- Location: LC_X3_Y3_N9
\Equal5~0\ : maxii_lcell
-- Equation(s):
-- \Equal5~0_combout\ = (!vreg(9) & (\Equal1~1\ & (\always0~3\ & !vreg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => vreg(9),
	datab => \Equal1~1\,
	datac => \always0~3\,
	datad => vreg(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal5~0_combout\);

-- Location: LC_X2_Y2_N3
\always0~4\ : maxii_lcell
-- Equation(s):
-- \always0~4_combout\ = ((vreg(1) & (\reset~combout\ & !vreg(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => vreg(1),
	datac => \reset~combout\,
	datad => vreg(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always0~4_combout\);

-- Location: LC_X2_Y3_N3
\vs~reg0\ : maxii_lcell
-- Equation(s):
-- \vs~reg0_regout\ = DFFEAS((\Equal5~0_combout\ & ((\Equal1~0_combout\) # ((\vs~reg0_regout\ & !\always0~4_combout\)))) # (!\Equal5~0_combout\ & (\vs~reg0_regout\)), !GLOBAL(\gen~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => \vs~reg0_regout\,
	datab => \Equal1~0_combout\,
	datac => \Equal5~0_combout\,
	datad => \always0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vs~reg0_regout\);

-- Location: LC_X4_Y4_N4
\rom_addr[4]~1\ : maxii_lcell
-- Equation(s):
-- \rom_addr[4]~1_combout\ = (!hreg(0) & ((hreg(1) & (hreg(3) & !hreg(2))) # (!hreg(1) & (!hreg(3) & hreg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0018",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => hreg(1),
	datab => hreg(3),
	datac => hreg(2),
	datad => hreg(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rom_addr[4]~1_combout\);

-- Location: LC_X7_Y2_N4
\rom_addr[0]~reg0\ : maxii_lcell
-- Equation(s):
-- \rom_addr[0]~reg0_regout\ = DFFEAS(((\Equal12~0_combout\ & (\temp_reg3~regout\)) # (!\Equal12~0_combout\ & ((vreg(0))))), !GLOBAL(\gen~combout\), VCC, , \rom_addr[4]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => \temp_reg3~regout\,
	datac => \Equal12~0_combout\,
	datad => vreg(0),
	aclr => GND,
	ena => \rom_addr[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rom_addr[0]~reg0_regout\);

-- Location: LC_X7_Y2_N5
\rom_addr[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \rom_addr[1]~reg0_regout\ = DFFEAS((\Equal12~0_combout\ & (\ram_data[3]~3\ & (\host_busy~reg0_regout\))) # (!\Equal12~0_combout\ & (((vreg(1))))), !GLOBAL(\gen~combout\), VCC, , \rom_addr[4]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => \ram_data[3]~3\,
	datab => \host_busy~reg0_regout\,
	datac => vreg(1),
	datad => \Equal12~0_combout\,
	aclr => GND,
	ena => \rom_addr[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rom_addr[1]~reg0_regout\);

-- Location: LC_X7_Y2_N3
\rom_addr[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \rom_addr[2]~reg0_regout\ = DFFEAS((\Equal12~0_combout\ & (((\ram_data[4]~4\ & \host_busy~reg0_regout\)))) # (!\Equal12~0_combout\ & (vreg(2))), !GLOBAL(\gen~combout\), VCC, , \rom_addr[4]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ca0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => vreg(2),
	datab => \ram_data[4]~4\,
	datac => \Equal12~0_combout\,
	datad => \host_busy~reg0_regout\,
	aclr => GND,
	ena => \rom_addr[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rom_addr[2]~reg0_regout\);

-- Location: LC_X7_Y2_N9
\rom_addr[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \rom_addr[3]~reg0_regout\ = DFFEAS((\Equal12~0_combout\ & (\ram_data[5]~5\ & (\host_busy~reg0_regout\))) # (!\Equal12~0_combout\ & (((vreg(3))))), !GLOBAL(\gen~combout\), VCC, , \rom_addr[4]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => \ram_data[5]~5\,
	datab => \host_busy~reg0_regout\,
	datac => vreg(3),
	datad => \Equal12~0_combout\,
	aclr => GND,
	ena => \rom_addr[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rom_addr[3]~reg0_regout\);

-- Location: LC_X7_Y2_N8
\rom_addr[4]~reg0\ : maxii_lcell
-- Equation(s):
-- \rom_addr[4]~reg0_regout\ = DFFEAS(((\Equal12~0_combout\ & (\ram_data[6]~6\)) # (!\Equal12~0_combout\ & ((\ram_data[0]~0\)))), !GLOBAL(\gen~combout\), VCC, , \rom_addr[4]~1_combout\, , , !\host_busy~reg0_regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	datab => \ram_data[6]~6\,
	datac => \ram_data[0]~0\,
	datad => \Equal12~0_combout\,
	aclr => GND,
	sclr => \ALT_INV_host_busy~reg0_regout\,
	ena => \rom_addr[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rom_addr[4]~reg0_regout\);

-- Location: LC_X7_Y2_N2
\rom_addr[5]~reg0\ : maxii_lcell
-- Equation(s):
-- \rom_addr[5]~reg0_regout\ = DFFEAS(((\Equal12~0_combout\ & (\ram_data[7]~7\)) # (!\Equal12~0_combout\ & ((\ram_data[1]~1\)))), !GLOBAL(\gen~combout\), VCC, , \rom_addr[4]~1_combout\, , , !\host_busy~reg0_regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	datab => \ram_data[7]~7\,
	datac => \ram_data[1]~1\,
	datad => \Equal12~0_combout\,
	aclr => GND,
	sclr => \ALT_INV_host_busy~reg0_regout\,
	ena => \rom_addr[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rom_addr[5]~reg0_regout\);

-- Location: LC_X7_Y2_N1
\rom_addr[6]~reg0\ : maxii_lcell
-- Equation(s):
-- \rom_addr[6]~reg0_regout\ = DFFEAS(((\host_busy~reg0_regout\ & (\ram_data[2]~2\ & !\Equal12~0_combout\))), !GLOBAL(\gen~combout\), VCC, , \rom_addr[4]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	datab => \host_busy~reg0_regout\,
	datac => \ram_data[2]~2\,
	datad => \Equal12~0_combout\,
	aclr => GND,
	ena => \rom_addr[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rom_addr[6]~reg0_regout\);

-- Location: LC_X7_Y2_N6
\rom_addr[7]~reg0\ : maxii_lcell
-- Equation(s):
-- \rom_addr[7]~reg0_regout\ = DFFEAS((\ram_data[3]~3\ & (!\Equal12~0_combout\ & ((\host_busy~reg0_regout\)))), !GLOBAL(\gen~combout\), VCC, , \rom_addr[4]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => \ram_data[3]~3\,
	datab => \Equal12~0_combout\,
	datad => \host_busy~reg0_regout\,
	aclr => GND,
	ena => \rom_addr[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rom_addr[7]~reg0_regout\);

-- Location: LC_X7_Y2_N7
\rom_addr[8]~reg0\ : maxii_lcell
-- Equation(s):
-- \rom_addr[8]~reg0_regout\ = DFFEAS((\ram_data[4]~4\ & (!\Equal12~0_combout\ & ((\host_busy~reg0_regout\)))), !GLOBAL(\gen~combout\), VCC, , \rom_addr[4]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => \ram_data[4]~4\,
	datab => \Equal12~0_combout\,
	datad => \host_busy~reg0_regout\,
	aclr => GND,
	ena => \rom_addr[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rom_addr[8]~reg0_regout\);

-- Location: LC_X4_Y1_N2
\rom_addr[9]~reg0\ : maxii_lcell
-- Equation(s):
-- \rom_addr[9]~reg0_regout\ = DFFEAS(((\host_busy~reg0_regout\ & (\ram_data[5]~5\ & !\Equal12~0_combout\))), !GLOBAL(\gen~combout\), VCC, , \rom_addr[4]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	datab => \host_busy~reg0_regout\,
	datac => \ram_data[5]~5\,
	datad => \Equal12~0_combout\,
	aclr => GND,
	ena => \rom_addr[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rom_addr[9]~reg0_regout\);

-- Location: LC_X7_Y2_N0
\rom_addr[10]~reg0\ : maxii_lcell
-- Equation(s):
-- \rom_addr[10]~reg0_regout\ = DFFEAS(((!\Equal12~0_combout\ & (\ram_data[6]~6\ & \host_busy~reg0_regout\))), !GLOBAL(\gen~combout\), VCC, , \rom_addr[4]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	datab => \Equal12~0_combout\,
	datac => \ram_data[6]~6\,
	datad => \host_busy~reg0_regout\,
	aclr => GND,
	ena => \rom_addr[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rom_addr[10]~reg0_regout\);

-- Location: LC_X6_Y4_N4
\rom_rc~reg0\ : maxii_lcell
-- Equation(s):
-- \rom_rc~reg0_regout\ = DFFEAS((\rom_rc~reg0_regout\ & (((hreg(3)) # (!\Equal13~0_combout\)) # (!hreg(1)))) # (!\rom_rc~reg0_regout\ & (!hreg(1) & (\Equal13~0_combout\ & hreg(3)))), !GLOBAL(\gen~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba2a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => \rom_rc~reg0_regout\,
	datab => hreg(1),
	datac => \Equal13~0_combout\,
	datad => hreg(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rom_rc~reg0_regout\);

-- Location: LC_X6_Y3_N8
\ram_addr_int[10]\ : maxii_lcell
-- Equation(s):
-- ram_addr_int(10) = DFFEAS(((\Equal12~0_combout\ & (\Add3~50\)) # (!\Equal12~0_combout\ & ((vreg(7))))), !GLOBAL(\gen~combout\), VCC, , \ram_addr_int[9]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	datab => \Add3~50\,
	datac => vreg(7),
	datad => \Equal12~0_combout\,
	aclr => GND,
	ena => \ram_addr_int[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_int(10));

-- Location: LC_X6_Y2_N9
\ram_addr~10\ : maxii_lcell
-- Equation(s):
-- \ram_addr~10_combout\ = (\host_busy~reg0_regout\ & (((ram_addr_int(10))))) # (!\host_busy~reg0_regout\ & (ram_addr_ext(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => ram_addr_ext(10),
	datab => ram_addr_int(10),
	datac => \host_busy~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr~10_combout\);

-- Location: LC_X6_Y3_N5
\Add3~55\ : maxii_lcell
-- Equation(s):
-- \Add3~55_combout\ = (vreg(8) $ ((!\Add3~52\)))
-- \Add3~57\ = CARRY(((!vreg(8) & !\Add3~52\)))
-- \Add3~57COUT1_92\ = CARRY(((!vreg(8) & !\Add3~52\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => vreg(8),
	cin => \Add3~52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~55_combout\,
	cout0 => \Add3~57\,
	cout1 => \Add3~57COUT1_92\);

-- Location: LC_X6_Y2_N2
\ram_addr_int[11]\ : maxii_lcell
-- Equation(s):
-- ram_addr_int(11) = DFFEAS(((\Equal12~0_combout\ & ((\Add3~55_combout\))) # (!\Equal12~0_combout\ & (vreg(8)))), !GLOBAL(\gen~combout\), VCC, , \ram_addr_int[9]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	datab => vreg(8),
	datac => \Equal12~0_combout\,
	datad => \Add3~55_combout\,
	aclr => GND,
	ena => \ram_addr_int[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_int(11));

-- Location: LC_X6_Y2_N4
\ram_addr~11\ : maxii_lcell
-- Equation(s):
-- \ram_addr~11_combout\ = (\host_busy~reg0_regout\ & (((ram_addr_int(11))))) # (!\host_busy~reg0_regout\ & (ram_addr_ext(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => ram_addr_ext(11),
	datab => ram_addr_int(11),
	datac => \host_busy~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr~11_combout\);

-- Location: LC_X6_Y3_N6
\Add3~60\ : maxii_lcell
-- Equation(s):
-- \Add3~60_combout\ = (((!(!\Add3~52\ & \Add3~57\) # (\Add3~52\ & \Add3~57COUT1_92\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add3~52\,
	cin0 => \Add3~57\,
	cin1 => \Add3~57COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~60_combout\);

-- Location: LC_X6_Y4_N1
\ram_addr_int[12]\ : maxii_lcell
-- Equation(s):
-- ram_addr_int(12) = DFFEAS((\Equal12~0_combout\ & (((\Equal9~0\ & \Equal13~0_combout\)) # (!\Add3~60_combout\))) # (!\Equal12~0_combout\ & (\Equal9~0\ & (\Equal13~0_combout\))), !GLOBAL(\gen~combout\), VCC, , \ram_addr_int[9]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0ea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	dataa => \Equal12~0_combout\,
	datab => \Equal9~0\,
	datac => \Equal13~0_combout\,
	datad => \Add3~60_combout\,
	aclr => GND,
	ena => \ram_addr_int[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_int(12));

-- Location: LC_X6_Y4_N0
\ram_addr~12\ : maxii_lcell
-- Equation(s):
-- \ram_addr~12_combout\ = (\host_busy~reg0_regout\ & (((ram_addr_int(12))))) # (!\host_busy~reg0_regout\ & (((ram_addr_ext(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \host_busy~reg0_regout\,
	datac => ram_addr_ext(12),
	datad => ram_addr_int(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr~12_combout\);

-- Location: LC_X6_Y4_N3
\ram_addr_int[13]\ : maxii_lcell
-- Equation(s):
-- ram_addr_int(13) = DFFEAS((((\Add3~60_combout\ & \Equal12~0_combout\))), !GLOBAL(\gen~combout\), VCC, , \ram_addr_int[9]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen~combout\,
	datac => \Add3~60_combout\,
	datad => \Equal12~0_combout\,
	aclr => GND,
	ena => \ram_addr_int[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ram_addr_int(13));

-- Location: LC_X3_Y2_N3
\ram_addr~13\ : maxii_lcell
-- Equation(s):
-- \ram_addr~13_combout\ = ((\host_busy~reg0_regout\ & ((ram_addr_int(13)))) # (!\host_busy~reg0_regout\ & (ram_addr_ext(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => ram_addr_ext(13),
	datac => \host_busy~reg0_regout\,
	datad => ram_addr_int(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_addr~13_combout\);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\host_cs~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_host_cs,
	combout => \host_cs~combout\);

-- Location: LC_X4_Y1_N1
\ram_we~0\ : maxii_lcell
-- Equation(s):
-- \ram_we~0_combout\ = (!\host_ad~combout\ & (((!\host_cs~combout\ & !\host_busy~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \host_ad~combout\,
	datac => \host_cs~combout\,
	datad => \host_busy~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ram_we~0_combout\);

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rgb[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rgb[0]~reg0_regout\,
	oe => VCC,
	padio => ww_rgb(0));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rgb[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rgb[1]~reg0_regout\,
	oe => VCC,
	padio => ww_rgb(1));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rgb[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rgb[2]~reg0_regout\,
	oe => VCC,
	padio => ww_rgb(2));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rgb[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rgb[3]~reg0_regout\,
	oe => VCC,
	padio => ww_rgb(3));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rgb[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rgb[4]~reg0_regout\,
	oe => VCC,
	padio => ww_rgb(4));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rgb[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rgb[5]~reg0_regout\,
	oe => VCC,
	padio => ww_rgb(5));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\hs~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \hs~reg0_regout\,
	oe => VCC,
	padio => ww_hs);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vs~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \vs~reg0_regout\,
	oe => VCC,
	padio => ww_vs);

-- Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => blink_dev(0),
	oe => VCC,
	padio => ww_led);

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rom_addr[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rom_addr[0]~reg0_regout\,
	oe => VCC,
	padio => ww_rom_addr(0));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rom_addr[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rom_addr[1]~reg0_regout\,
	oe => VCC,
	padio => ww_rom_addr(1));

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rom_addr[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rom_addr[2]~reg0_regout\,
	oe => VCC,
	padio => ww_rom_addr(2));

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rom_addr[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rom_addr[3]~reg0_regout\,
	oe => VCC,
	padio => ww_rom_addr(3));

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rom_addr[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rom_addr[4]~reg0_regout\,
	oe => VCC,
	padio => ww_rom_addr(4));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rom_addr[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rom_addr[5]~reg0_regout\,
	oe => VCC,
	padio => ww_rom_addr(5));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rom_addr[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rom_addr[6]~reg0_regout\,
	oe => VCC,
	padio => ww_rom_addr(6));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rom_addr[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rom_addr[7]~reg0_regout\,
	oe => VCC,
	padio => ww_rom_addr(7));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rom_addr[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rom_addr[8]~reg0_regout\,
	oe => VCC,
	padio => ww_rom_addr(8));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rom_addr[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rom_addr[9]~reg0_regout\,
	oe => VCC,
	padio => ww_rom_addr(9));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rom_addr[10]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rom_addr[10]~reg0_regout\,
	oe => VCC,
	padio => ww_rom_addr(10));

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rom_rc~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rom_rc~reg0_regout\,
	oe => VCC,
	padio => ww_rom_rc);

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ram_addr[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ram_addr~0\,
	oe => VCC,
	padio => ww_ram_addr(0));

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ram_addr[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ram_addr~1\,
	oe => VCC,
	padio => ww_ram_addr(1));

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ram_addr[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ram_addr~2\,
	oe => VCC,
	padio => ww_ram_addr(2));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ram_addr[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ram_addr~3\,
	oe => VCC,
	padio => ww_ram_addr(3));

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ram_addr[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ram_addr~4\,
	oe => VCC,
	padio => ww_ram_addr(4));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ram_addr[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ram_addr~5\,
	oe => VCC,
	padio => ww_ram_addr(5));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ram_addr[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ram_addr~6\,
	oe => VCC,
	padio => ww_ram_addr(6));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ram_addr[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ram_addr~7\,
	oe => VCC,
	padio => ww_ram_addr(7));

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ram_addr[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ram_addr~8\,
	oe => VCC,
	padio => ww_ram_addr(8));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ram_addr[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ram_addr~9\,
	oe => VCC,
	padio => ww_ram_addr(9));

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ram_addr[10]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ram_addr~10_combout\,
	oe => VCC,
	padio => ww_ram_addr(10));

-- Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ram_addr[11]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ram_addr~11_combout\,
	oe => VCC,
	padio => ww_ram_addr(11));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ram_addr[12]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ram_addr~12_combout\,
	oe => VCC,
	padio => ww_ram_addr(12));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ram_addr[13]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ram_addr~13_combout\,
	oe => VCC,
	padio => ww_ram_addr(13));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ram_we~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_ram_we~0_combout\,
	oe => VCC,
	padio => ww_ram_we);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
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


