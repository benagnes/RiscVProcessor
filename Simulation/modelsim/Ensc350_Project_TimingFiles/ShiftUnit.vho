-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "04/08/2020 23:35:01"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ShiftUnit IS
    PORT (
	A : IN std_logic_vector(63 DOWNTO 0);
	B : IN std_logic_vector(63 DOWNTO 0);
	C : IN std_logic_vector(63 DOWNTO 0);
	Y : OUT std_logic_vector(63 DOWNTO 0);
	ShiftFN : IN std_logic_vector(1 DOWNTO 0);
	ExtWord : IN std_logic
	);
END ShiftUnit;

-- Design Ports Information
-- B[6]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[32]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[33]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[34]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[35]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[36]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[37]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[38]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[39]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[40]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[41]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[42]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[43]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[44]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[45]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[46]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[47]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[48]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[49]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[50]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[51]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[52]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[53]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[54]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[55]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[56]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[57]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[58]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[59]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[60]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[61]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[62]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[63]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[0]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[1]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[2]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[3]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[5]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[6]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[7]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[8]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[9]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[10]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[11]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[12]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[13]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[14]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[15]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[16]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[17]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[18]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[19]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[20]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[21]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[22]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[23]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[24]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[25]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[26]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[27]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[28]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[29]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[30]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[31]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[32]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[33]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[34]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[35]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[36]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[37]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[38]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[39]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[40]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[41]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[42]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[43]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[44]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[45]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[46]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[47]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[48]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[49]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[50]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[51]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[52]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[53]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[54]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[55]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[56]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[57]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[58]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[59]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[60]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[61]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[62]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[63]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ShiftUnit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_C : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_ShiftFN : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ExtWord : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \Y[0]~output_o\ : std_logic;
SIGNAL \Y[1]~output_o\ : std_logic;
SIGNAL \Y[2]~output_o\ : std_logic;
SIGNAL \Y[3]~output_o\ : std_logic;
SIGNAL \Y[4]~output_o\ : std_logic;
SIGNAL \Y[5]~output_o\ : std_logic;
SIGNAL \Y[6]~output_o\ : std_logic;
SIGNAL \Y[7]~output_o\ : std_logic;
SIGNAL \Y[8]~output_o\ : std_logic;
SIGNAL \Y[9]~output_o\ : std_logic;
SIGNAL \Y[10]~output_o\ : std_logic;
SIGNAL \Y[11]~output_o\ : std_logic;
SIGNAL \Y[12]~output_o\ : std_logic;
SIGNAL \Y[13]~output_o\ : std_logic;
SIGNAL \Y[14]~output_o\ : std_logic;
SIGNAL \Y[15]~output_o\ : std_logic;
SIGNAL \Y[16]~output_o\ : std_logic;
SIGNAL \Y[17]~output_o\ : std_logic;
SIGNAL \Y[18]~output_o\ : std_logic;
SIGNAL \Y[19]~output_o\ : std_logic;
SIGNAL \Y[20]~output_o\ : std_logic;
SIGNAL \Y[21]~output_o\ : std_logic;
SIGNAL \Y[22]~output_o\ : std_logic;
SIGNAL \Y[23]~output_o\ : std_logic;
SIGNAL \Y[24]~output_o\ : std_logic;
SIGNAL \Y[25]~output_o\ : std_logic;
SIGNAL \Y[26]~output_o\ : std_logic;
SIGNAL \Y[27]~output_o\ : std_logic;
SIGNAL \Y[28]~output_o\ : std_logic;
SIGNAL \Y[29]~output_o\ : std_logic;
SIGNAL \Y[30]~output_o\ : std_logic;
SIGNAL \Y[31]~output_o\ : std_logic;
SIGNAL \Y[32]~output_o\ : std_logic;
SIGNAL \Y[33]~output_o\ : std_logic;
SIGNAL \Y[34]~output_o\ : std_logic;
SIGNAL \Y[35]~output_o\ : std_logic;
SIGNAL \Y[36]~output_o\ : std_logic;
SIGNAL \Y[37]~output_o\ : std_logic;
SIGNAL \Y[38]~output_o\ : std_logic;
SIGNAL \Y[39]~output_o\ : std_logic;
SIGNAL \Y[40]~output_o\ : std_logic;
SIGNAL \Y[41]~output_o\ : std_logic;
SIGNAL \Y[42]~output_o\ : std_logic;
SIGNAL \Y[43]~output_o\ : std_logic;
SIGNAL \Y[44]~output_o\ : std_logic;
SIGNAL \Y[45]~output_o\ : std_logic;
SIGNAL \Y[46]~output_o\ : std_logic;
SIGNAL \Y[47]~output_o\ : std_logic;
SIGNAL \Y[48]~output_o\ : std_logic;
SIGNAL \Y[49]~output_o\ : std_logic;
SIGNAL \Y[50]~output_o\ : std_logic;
SIGNAL \Y[51]~output_o\ : std_logic;
SIGNAL \Y[52]~output_o\ : std_logic;
SIGNAL \Y[53]~output_o\ : std_logic;
SIGNAL \Y[54]~output_o\ : std_logic;
SIGNAL \Y[55]~output_o\ : std_logic;
SIGNAL \Y[56]~output_o\ : std_logic;
SIGNAL \Y[57]~output_o\ : std_logic;
SIGNAL \Y[58]~output_o\ : std_logic;
SIGNAL \Y[59]~output_o\ : std_logic;
SIGNAL \Y[60]~output_o\ : std_logic;
SIGNAL \Y[61]~output_o\ : std_logic;
SIGNAL \Y[62]~output_o\ : std_logic;
SIGNAL \Y[63]~output_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \AmuxOut[45]~30_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \AmuxOut[61]~29_combout\ : std_logic;
SIGNAL \SRA64unit|Mux19~14_combout\ : std_logic;
SIGNAL \AmuxOut[13]~46_combout\ : std_logic;
SIGNAL \ShiftCount[5]~0_combout\ : std_logic;
SIGNAL \AmuxOut[29]~45_combout\ : std_logic;
SIGNAL \SRA64unit|Mux49~2_combout\ : std_logic;
SIGNAL \SRA64unit|Mux49~3_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \AmuxOut[41]~26_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \AmuxOut[57]~25_combout\ : std_logic;
SIGNAL \SRA64unit|Mux19~12_combout\ : std_logic;
SIGNAL \AmuxOut[9]~48_combout\ : std_logic;
SIGNAL \AmuxOut[25]~47_combout\ : std_logic;
SIGNAL \SRA64unit|Mux53~2_combout\ : std_logic;
SIGNAL \SRA64unit|Mux53~3_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~67_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \SRA64unit|Mux123~0_combout\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \AmuxOut[7]~39_combout\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \AmuxOut[23]~38_combout\ : std_logic;
SIGNAL \SRA64unit|Mux55~2_combout\ : std_logic;
SIGNAL \AmuxOut[55]~19_combout\ : std_logic;
SIGNAL \AmuxOut[39]~20_combout\ : std_logic;
SIGNAL \SRA64unit|Mux19~9_combout\ : std_logic;
SIGNAL \SRA64unit|Mux55~3_combout\ : std_logic;
SIGNAL \SRA64unit|Mux123~1_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \AmuxOut[51]~23_combout\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \AmuxOut[35]~24_combout\ : std_logic;
SIGNAL \SRA64unit|Mux19~11_combout\ : std_logic;
SIGNAL \SRA64unit|Mux122~1_combout\ : std_logic;
SIGNAL \AmuxOut[3]~37_combout\ : std_logic;
SIGNAL \AmuxOut[19]~40_combout\ : std_logic;
SIGNAL \SRA64unit|Mux122~2_combout\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \AmuxOut[59]~21_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \AmuxOut[43]~22_combout\ : std_logic;
SIGNAL \SRA64unit|Mux19~10_combout\ : std_logic;
SIGNAL \AmuxOut[11]~36_combout\ : std_logic;
SIGNAL \AmuxOut[27]~35_combout\ : std_logic;
SIGNAL \SRA64unit|Mux51~2_combout\ : std_logic;
SIGNAL \SRA64unit|Mux51~3_combout\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \AmuxOut[15]~34_combout\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \AmuxOut[31]~33_combout\ : std_logic;
SIGNAL \SRA64unit|Mux47~2_combout\ : std_logic;
SIGNAL \AmuxOut[47]~18_combout\ : std_logic;
SIGNAL \AmuxOut[63]~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux19~8_combout\ : std_logic;
SIGNAL \SRA64unit|Mux47~3_combout\ : std_logic;
SIGNAL \SRA64unit|Mux122~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux122~3_combout\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \AmuxOut[49]~27_combout\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \AmuxOut[33]~28_combout\ : std_logic;
SIGNAL \SRA64unit|Mux19~13_combout\ : std_logic;
SIGNAL \AmuxOut[1]~42_combout\ : std_logic;
SIGNAL \AmuxOut[17]~41_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~64_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~65_combout\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \AmuxOut[53]~31_combout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \AmuxOut[37]~32_combout\ : std_logic;
SIGNAL \SRA64unit|Mux19~15_combout\ : std_logic;
SIGNAL \AmuxOut[21]~43_combout\ : std_logic;
SIGNAL \AmuxOut[5]~44_combout\ : std_logic;
SIGNAL \SRA64unit|Mux57~2_combout\ : std_logic;
SIGNAL \SRA64unit|Mux57~3_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~66_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~68_combout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \AmuxOut[2]~55_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \AmuxOut[50]~4_combout\ : std_logic;
SIGNAL \AmuxOut[34]~5_combout\ : std_logic;
SIGNAL \SRA64unit|Mux19~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux123~3_combout\ : std_logic;
SIGNAL \AmuxOut[18]~56_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \AmuxOut[38]~9_combout\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \AmuxOut[54]~8_combout\ : std_logic;
SIGNAL \SRA64unit|Mux19~3_combout\ : std_logic;
SIGNAL \AmuxOut[6]~54_combout\ : std_logic;
SIGNAL \AmuxOut[22]~53_combout\ : std_logic;
SIGNAL \SRA64unit|Mux56~2_combout\ : std_logic;
SIGNAL \SRA64unit|Mux56~3_combout\ : std_logic;
SIGNAL \SRA64unit|Mux123~4_combout\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \AmuxOut[58]~2_combout\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \AmuxOut[42]~3_combout\ : std_logic;
SIGNAL \SRA64unit|Mux19~0_combout\ : std_logic;
SIGNAL \AmuxOut[26]~51_combout\ : std_logic;
SIGNAL \AmuxOut[10]~52_combout\ : std_logic;
SIGNAL \SRA64unit|Mux52~2_combout\ : std_logic;
SIGNAL \SRA64unit|Mux52~3_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \AmuxOut[30]~49_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \AmuxOut[14]~50_combout\ : std_logic;
SIGNAL \SRA64unit|Mux48~2_combout\ : std_logic;
SIGNAL \AmuxOut[62]~6_combout\ : std_logic;
SIGNAL \AmuxOut[46]~7_combout\ : std_logic;
SIGNAL \SRA64unit|Mux19~2_combout\ : std_logic;
SIGNAL \SRA64unit|Mux48~3_combout\ : std_logic;
SIGNAL \SRA64unit|Mux123~2_combout\ : std_logic;
SIGNAL \SRA64unit|Mux123~5_combout\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \AmuxOut[0]~0_combout\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \AmuxOut[16]~61_combout\ : std_logic;
SIGNAL \SRA64unit|Mux188~1_combout\ : std_logic;
SIGNAL \AmuxOut[32]~13_combout\ : std_logic;
SIGNAL \AmuxOut[48]~12_combout\ : std_logic;
SIGNAL \SRA64unit|Mux19~5_combout\ : std_logic;
SIGNAL \SRA64unit|Mux188~2_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \AmuxOut[40]~17_combout\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \AmuxOut[56]~16_combout\ : std_logic;
SIGNAL \SRA64unit|Mux19~7_combout\ : std_logic;
SIGNAL \AmuxOut[24]~62_combout\ : std_logic;
SIGNAL \AmuxOut[8]~63_combout\ : std_logic;
SIGNAL \SRA64unit|Mux54~2_combout\ : std_logic;
SIGNAL \SRA64unit|Mux54~3_combout\ : std_logic;
SIGNAL \SRA64unit|Mux188~3_combout\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \AmuxOut[28]~57_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \AmuxOut[12]~58_combout\ : std_logic;
SIGNAL \SRA64unit|Mux50~2_combout\ : std_logic;
SIGNAL \AmuxOut[60]~14_combout\ : std_logic;
SIGNAL \AmuxOut[44]~15_combout\ : std_logic;
SIGNAL \SRA64unit|Mux19~6_combout\ : std_logic;
SIGNAL \SRA64unit|Mux50~3_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \AmuxOut[20]~59_combout\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \AmuxOut[4]~60_combout\ : std_logic;
SIGNAL \SRA64unit|Mux58~2_combout\ : std_logic;
SIGNAL \AmuxOut[36]~11_combout\ : std_logic;
SIGNAL \AmuxOut[52]~10_combout\ : std_logic;
SIGNAL \SRA64unit|Mux19~4_combout\ : std_logic;
SIGNAL \SRA64unit|Mux58~3_combout\ : std_logic;
SIGNAL \SRA64unit|Mux188~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux188~4_combout\ : std_logic;
SIGNAL \Y~61_combout\ : std_logic;
SIGNAL \C[0]~input_o\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \SRL64unit|Mux47~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~92_combout\ : std_logic;
SIGNAL \Y~58_combout\ : std_logic;
SIGNAL \Y~59_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~16_combout\ : std_logic;
SIGNAL \SRL64unit|Mux92~0_combout\ : std_logic;
SIGNAL \SRL64unit|Mux92~1_combout\ : std_logic;
SIGNAL \SRL64unit|Mux90~0_combout\ : std_logic;
SIGNAL \SRL64unit|Mux94~0_combout\ : std_logic;
SIGNAL \SRL64unit|Mux94~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~59_combout\ : std_logic;
SIGNAL \SRL64unit|Mux95~0_combout\ : std_logic;
SIGNAL \SRL64unit|Mux95~1_combout\ : std_logic;
SIGNAL \SRL64unit|Mux95~2_combout\ : std_logic;
SIGNAL \SRL64unit|Mux93~0_combout\ : std_logic;
SIGNAL \SRL64unit|Mux89~0_combout\ : std_logic;
SIGNAL \SRL64unit|Mux93~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~58_combout\ : std_logic;
SIGNAL \SRLorSRAout[32]~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~253_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~61_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~18_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~62_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~17_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~60_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~63_combout\ : std_logic;
SIGNAL \SRLorSRAout[32]~1_combout\ : std_logic;
SIGNAL \Y~60_combout\ : std_logic;
SIGNAL \Y~62_combout\ : std_logic;
SIGNAL \C[1]~input_o\ : std_logic;
SIGNAL \Y~63_combout\ : std_logic;
SIGNAL \Y~64_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~71_combout\ : std_logic;
SIGNAL \SRL64unit|Mux123~0_combout\ : std_logic;
SIGNAL \SRL64unit|Mux47~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~81_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~20_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~72_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~73_combout\ : std_logic;
SIGNAL \SRA64unit|Mux46~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux46~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux121~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~254_combout\ : std_logic;
SIGNAL \Y~66_combout\ : std_logic;
SIGNAL \Y~67_combout\ : std_logic;
SIGNAL \SRL64unit|Mux91~0_combout\ : std_logic;
SIGNAL \SRL64unit|Mux91~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~69_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~70_combout\ : std_logic;
SIGNAL \SRLorSRAout[33]~2_combout\ : std_logic;
SIGNAL \SRLorSRAout[33]~3_combout\ : std_logic;
SIGNAL \Y~65_combout\ : std_logic;
SIGNAL \Y~68_combout\ : std_logic;
SIGNAL \SRL64unit|Mux90~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~75_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~76_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~86_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~77_combout\ : std_logic;
SIGNAL \SRL64unit|Mux90~2_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~74_combout\ : std_logic;
SIGNAL \SRLorSRAout[34]~4_combout\ : std_logic;
SIGNAL \SRLorSRAout[34]~5_combout\ : std_logic;
SIGNAL \Y~69_combout\ : std_logic;
SIGNAL \C[2]~input_o\ : std_logic;
SIGNAL \SRL64unit|Mux119~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~17_combout\ : std_logic;
SIGNAL \SRL64unit|Mux46~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux45~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux45~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux120~0_combout\ : std_logic;
SIGNAL \SRL64unit|Mux122~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~78_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~255_combout\ : std_logic;
SIGNAL \Y~71_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~82_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~21_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~79_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~80_combout\ : std_logic;
SIGNAL \Y~72_combout\ : std_logic;
SIGNAL \SLL64unit|Mux127~4_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~16_combout\ : std_logic;
SIGNAL \Y~70_combout\ : std_logic;
SIGNAL \Y~73_combout\ : std_logic;
SIGNAL \Y~74_combout\ : std_logic;
SIGNAL \Y~282_combout\ : std_logic;
SIGNAL \SRL64unit|Mux89~1_combout\ : std_logic;
SIGNAL \SRL64unit|Mux89~2_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~81_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~82_combout\ : std_logic;
SIGNAL \SRLorSRAout[35]~6_combout\ : std_logic;
SIGNAL \SRLorSRAout[35]~7_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~18_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~83_combout\ : std_logic;
SIGNAL \SRL64unit|Mux45~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~22_combout\ : std_logic;
SIGNAL \SRL64unit|Mux121~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~83_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~84_combout\ : std_logic;
SIGNAL \Y~75_combout\ : std_logic;
SIGNAL \SRA64unit|Mux44~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux44~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux119~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux121~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~256_combout\ : std_logic;
SIGNAL \Y~76_combout\ : std_logic;
SIGNAL \Y~77_combout\ : std_logic;
SIGNAL \C[3]~input_o\ : std_logic;
SIGNAL \Y~78_combout\ : std_logic;
SIGNAL \Y~283_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~19_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~97_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~86_combout\ : std_logic;
SIGNAL \SRA64unit|Mux78~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~23_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~87_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~88_combout\ : std_logic;
SIGNAL \SRL64unit|Mux80~0_combout\ : std_logic;
SIGNAL \SRL64unit|Mux88~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~85_combout\ : std_logic;
SIGNAL \SRLorSRAout[36]~8_combout\ : std_logic;
SIGNAL \SRLorSRAout[36]~9_combout\ : std_logic;
SIGNAL \Y~79_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~84_combout\ : std_logic;
SIGNAL \SRL64unit|Mux44~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~24_combout\ : std_logic;
SIGNAL \SRL64unit|Mux120~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~89_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~90_combout\ : std_logic;
SIGNAL \SRA64unit|Mux43~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux43~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux118~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux120~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~257_combout\ : std_logic;
SIGNAL \Y~80_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~20_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~93_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~22_combout\ : std_logic;
SIGNAL \Y~81_combout\ : std_logic;
SIGNAL \C[4]~input_o\ : std_logic;
SIGNAL \Y~82_combout\ : std_logic;
SIGNAL \Y~284_combout\ : std_logic;
SIGNAL \C[5]~input_o\ : std_logic;
SIGNAL \SRL64unit|Mux119~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux119~1_combout\ : std_logic;
SIGNAL \SRL64unit|Mux43~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux42~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux42~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux117~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~258_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~19_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~26_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~27_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~94_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~93_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~95_combout\ : std_logic;
SIGNAL \Y~83_combout\ : std_logic;
SIGNAL \Y~84_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~23_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~24_combout\ : std_logic;
SIGNAL \Y~85_combout\ : std_logic;
SIGNAL \Y~86_combout\ : std_logic;
SIGNAL \SRL64unit|Mux87~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~25_combout\ : std_logic;
SIGNAL \SRL64unit|Mux87~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~91_combout\ : std_logic;
SIGNAL \SRLorSRAout[37]~10_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~92_combout\ : std_logic;
SIGNAL \SRLorSRAout[37]~11_combout\ : std_logic;
SIGNAL \Y~285_combout\ : std_logic;
SIGNAL \SRA64unit|Mux86~0_combout\ : std_logic;
SIGNAL \SRL64unit|Mux86~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~28_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~97_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~98_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~99_combout\ : std_logic;
SIGNAL \SRL64unit|Mux86~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~96_combout\ : std_logic;
SIGNAL \SRLorSRAout[38]~12_combout\ : std_logic;
SIGNAL \SRLorSRAout[38]~13_combout\ : std_logic;
SIGNAL \C[6]~input_o\ : std_logic;
SIGNAL \Y~87_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~100_combout\ : std_logic;
SIGNAL \SRL64unit|Mux118~0_combout\ : std_logic;
SIGNAL \SRL64unit|Mux42~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~29_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~30_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~101_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~102_combout\ : std_logic;
SIGNAL \SRA64unit|Mux41~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux41~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux116~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux118~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~259_combout\ : std_logic;
SIGNAL \Y~88_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~26_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~25_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~27_combout\ : std_logic;
SIGNAL \Y~89_combout\ : std_logic;
SIGNAL \Y~90_combout\ : std_logic;
SIGNAL \Y~286_combout\ : std_logic;
SIGNAL \Y~91_combout\ : std_logic;
SIGNAL \SRA64unit|Mux117~1_combout\ : std_logic;
SIGNAL \SRL64unit|Mux117~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux40~0_combout\ : std_logic;
SIGNAL \SRL64unit|Mux41~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux40~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux115~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~260_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~32_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~33_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~105_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~106_combout\ : std_logic;
SIGNAL \Y~92_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~28_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~29_combout\ : std_logic;
SIGNAL \Y~93_combout\ : std_logic;
SIGNAL \C[7]~input_o\ : std_logic;
SIGNAL \Y~94_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~31_combout\ : std_logic;
SIGNAL \SRL64unit|Mux85~0_combout\ : std_logic;
SIGNAL \SRL64unit|Mux85~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~103_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~104_combout\ : std_logic;
SIGNAL \SRLorSRAout[39]~14_combout\ : std_logic;
SIGNAL \SRLorSRAout[39]~15_combout\ : std_logic;
SIGNAL \Y~287_combout\ : std_logic;
SIGNAL \SRL64unit|Mux84~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~34_combout\ : std_logic;
SIGNAL \SRL64unit|Mux84~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~107_combout\ : std_logic;
SIGNAL \SRLorSRAout[40]~16_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~109_combout\ : std_logic;
SIGNAL \SRA64unit|Mux82~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux82~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~110_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~21_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~108_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~111_combout\ : std_logic;
SIGNAL \SRLorSRAout[40]~17_combout\ : std_logic;
SIGNAL \C[8]~input_o\ : std_logic;
SIGNAL \SLL64unit|Mux115~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux119~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~94_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~30_combout\ : std_logic;
SIGNAL \SRA64unit|Mux116~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux39~0_combout\ : std_logic;
SIGNAL \SRL64unit|Mux40~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux39~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux114~0_combout\ : std_logic;
SIGNAL \SRL64unit|Mux116~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~261_combout\ : std_logic;
SIGNAL \Y~95_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~35_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~36_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~112_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~113_combout\ : std_logic;
SIGNAL \Y~96_combout\ : std_logic;
SIGNAL \Y~97_combout\ : std_logic;
SIGNAL \Y~98_combout\ : std_logic;
SIGNAL \Y~288_combout\ : std_logic;
SIGNAL \SRL64unit|Mux83~0_combout\ : std_logic;
SIGNAL \SRL64unit|Mux83~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~114_combout\ : std_logic;
SIGNAL \SRLorSRAout[41]~18_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~115_combout\ : std_logic;
SIGNAL \SRLorSRAout[41]~19_combout\ : std_logic;
SIGNAL \C[9]~input_o\ : std_logic;
SIGNAL \SLL64unit|Mux114~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux118~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~31_combout\ : std_logic;
SIGNAL \Y~99_combout\ : std_logic;
SIGNAL \SRA64unit|Mux113~0_combout\ : std_logic;
SIGNAL \SRL64unit|Mux39~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux38~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux38~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux113~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~262_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~37_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~38_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~116_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~117_combout\ : std_logic;
SIGNAL \Y~100_combout\ : std_logic;
SIGNAL \Y~101_combout\ : std_logic;
SIGNAL \Y~102_combout\ : std_logic;
SIGNAL \Y~289_combout\ : std_logic;
SIGNAL \SLL64unit|Mux113~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux117~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~95_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~32_combout\ : std_logic;
SIGNAL \SRL64unit|Mux38~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux37~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux37~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux112~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux112~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~263_combout\ : std_logic;
SIGNAL \Y~103_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~39_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~40_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~122_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~123_combout\ : std_logic;
SIGNAL \Y~104_combout\ : std_logic;
SIGNAL \Y~105_combout\ : std_logic;
SIGNAL \C[10]~input_o\ : std_logic;
SIGNAL \Y~106_combout\ : std_logic;
SIGNAL \SRL64unit|Mux82~1_combout\ : std_logic;
SIGNAL \SRL64unit|Mux82~0_combout\ : std_logic;
SIGNAL \SRL64unit|Mux82~2_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~118_combout\ : std_logic;
SIGNAL \SRLorSRAout[42]~20_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~119_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~270_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~120_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~121_combout\ : std_logic;
SIGNAL \SRLorSRAout[42]~21_combout\ : std_logic;
SIGNAL \Y~290_combout\ : std_logic;
SIGNAL \SLL64unit|Mux112~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux116~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~33_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~126_combout\ : std_logic;
SIGNAL \SRL64unit|Mux37~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~41_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~42_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~127_combout\ : std_logic;
SIGNAL \SRA64unit|Mux36~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux36~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux111~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux111~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~128_combout\ : std_logic;
SIGNAL \Y~107_combout\ : std_logic;
SIGNAL \Y~108_combout\ : std_logic;
SIGNAL \Y~109_combout\ : std_logic;
SIGNAL \C[11]~input_o\ : std_logic;
SIGNAL \Y~110_combout\ : std_logic;
SIGNAL \SRL64unit|Mux81~0_combout\ : std_logic;
SIGNAL \SRL64unit|Mux81~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~124_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~125_combout\ : std_logic;
SIGNAL \SRLorSRAout[43]~22_combout\ : std_logic;
SIGNAL \SRLorSRAout[43]~23_combout\ : std_logic;
SIGNAL \Y~291_combout\ : std_logic;
SIGNAL \C[12]~input_o\ : std_logic;
SIGNAL \SRL64unit|Mux36~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~44_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~45_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~134_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~135_combout\ : std_logic;
SIGNAL \Y~111_combout\ : std_logic;
SIGNAL \SRA64unit|Mux110~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux35~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux35~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux110~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~136_combout\ : std_logic;
SIGNAL \Y~112_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~96_combout\ : std_logic;
SIGNAL \SLL64unit|Mux115~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux115~2_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~34_combout\ : std_logic;
SIGNAL \Y~113_combout\ : std_logic;
SIGNAL \Y~114_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~43_combout\ : std_logic;
SIGNAL \SRL64unit|Mux80~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~129_combout\ : std_logic;
SIGNAL \SRLorSRAout[44]~24_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~131_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~130_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~132_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~133_combout\ : std_logic;
SIGNAL \SRLorSRAout[44]~25_combout\ : std_logic;
SIGNAL \Y~292_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~46_combout\ : std_logic;
SIGNAL \SRL64unit|Mux79~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~137_combout\ : std_logic;
SIGNAL \SRLorSRAout[45]~26_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~138_combout\ : std_logic;
SIGNAL \SRLorSRAout[45]~27_combout\ : std_logic;
SIGNAL \C[13]~input_o\ : std_logic;
SIGNAL \SLL64unit|Mux114~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux114~2_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~35_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~139_combout\ : std_logic;
SIGNAL \SRL64unit|Mux35~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~47_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~48_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~140_combout\ : std_logic;
SIGNAL \Y~115_combout\ : std_logic;
SIGNAL \SRA64unit|Mux34~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux34~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux109~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux109~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~141_combout\ : std_logic;
SIGNAL \Y~116_combout\ : std_logic;
SIGNAL \Y~117_combout\ : std_logic;
SIGNAL \Y~118_combout\ : std_logic;
SIGNAL \Y~293_combout\ : std_logic;
SIGNAL \C[14]~input_o\ : std_logic;
SIGNAL \SLL64unit|Mux113~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux113~2_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~36_combout\ : std_logic;
SIGNAL \Y~119_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~50_combout\ : std_logic;
SIGNAL \SRL64unit|Mux34~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~51_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~146_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~147_combout\ : std_logic;
SIGNAL \SRA64unit|Mux33~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux33~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux108~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux108~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~148_combout\ : std_logic;
SIGNAL \Y~120_combout\ : std_logic;
SIGNAL \Y~121_combout\ : std_logic;
SIGNAL \Y~122_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~49_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~142_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~144_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~145_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~143_combout\ : std_logic;
SIGNAL \SRLorSRAout[46]~28_combout\ : std_logic;
SIGNAL \SRLorSRAout[46]~29_combout\ : std_logic;
SIGNAL \Y~294_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~52_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~149_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~150_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~151_combout\ : std_logic;
SIGNAL \SRLorSRAout[47]~30_combout\ : std_logic;
SIGNAL \SRLorSRAout[47]~31_combout\ : std_logic;
SIGNAL \C[15]~input_o\ : std_logic;
SIGNAL \SRA64unit|Mux32~0_combout\ : std_logic;
SIGNAL \SRL64unit|Mux33~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux32~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux107~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux107~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~154_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~53_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~54_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~152_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~153_combout\ : std_logic;
SIGNAL \Y~123_combout\ : std_logic;
SIGNAL \Y~124_combout\ : std_logic;
SIGNAL \SLL64unit|Mux112~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux112~2_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~37_combout\ : std_logic;
SIGNAL \Y~125_combout\ : std_logic;
SIGNAL \Y~126_combout\ : std_logic;
SIGNAL \Y~295_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~55_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~156_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~155_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~157_combout\ : std_logic;
SIGNAL \SRLorSRAout[48]~32_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~264_combout\ : std_logic;
SIGNAL \SRA64unit|Mux74~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~158_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~159_combout\ : std_logic;
SIGNAL \SRLorSRAout[48]~33_combout\ : std_logic;
SIGNAL \Y~127_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~56_combout\ : std_logic;
SIGNAL \SRL64unit|Mux32~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~57_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~160_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~161_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~252_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~58_combout\ : std_logic;
SIGNAL \SRA64unit|Mux106~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux106~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~162_combout\ : std_logic;
SIGNAL \Y~128_combout\ : std_logic;
SIGNAL \SRA64unit|Mux19~16_combout\ : std_logic;
SIGNAL \SLL64unit|Mux111~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux111~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~38_combout\ : std_logic;
SIGNAL \Y~129_combout\ : std_logic;
SIGNAL \C[16]~input_o\ : std_logic;
SIGNAL \Y~130_combout\ : std_logic;
SIGNAL \Y~296_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~163_combout\ : std_logic;
SIGNAL \SRL64unit|Mux75~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~164_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~265_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~165_combout\ : std_logic;
SIGNAL \SRLorSRAout[49]~34_combout\ : std_logic;
SIGNAL \SRA64unit|Mux73~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux73~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~166_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~167_combout\ : std_logic;
SIGNAL \SRLorSRAout[49]~35_combout\ : std_logic;
SIGNAL \C[17]~input_o\ : std_logic;
SIGNAL \SRA64unit|Mux19~17_combout\ : std_logic;
SIGNAL \SLL64unit|Mux110~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux110~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~39_combout\ : std_logic;
SIGNAL \Y~131_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~59_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~60_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~61_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~168_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~169_combout\ : std_logic;
SIGNAL \SRA64unit|Mux105~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~62_combout\ : std_logic;
SIGNAL \SRA64unit|Mux105~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~170_combout\ : std_logic;
SIGNAL \Y~132_combout\ : std_logic;
SIGNAL \Y~133_combout\ : std_logic;
SIGNAL \Y~134_combout\ : std_logic;
SIGNAL \Y~297_combout\ : std_logic;
SIGNAL \C[18]~input_o\ : std_logic;
SIGNAL \SRA64unit|Mux90~63_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~64_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~65_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~175_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~176_combout\ : std_logic;
SIGNAL \Y~135_combout\ : std_logic;
SIGNAL \SRA64unit|Mux104~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~66_combout\ : std_logic;
SIGNAL \SRA64unit|Mux104~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~177_combout\ : std_logic;
SIGNAL \Y~136_combout\ : std_logic;
SIGNAL \SRA64unit|Mux19~18_combout\ : std_logic;
SIGNAL \SLL64unit|Mux109~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux109~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~40_combout\ : std_logic;
SIGNAL \Y~137_combout\ : std_logic;
SIGNAL \Y~138_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~266_combout\ : std_logic;
SIGNAL \SRL64unit|Mux74~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux74~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux72~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~173_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~174_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~171_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~172_combout\ : std_logic;
SIGNAL \SRLorSRAout[50]~36_combout\ : std_logic;
SIGNAL \SRLorSRAout[50]~37_combout\ : std_logic;
SIGNAL \Y~298_combout\ : std_logic;
SIGNAL \SRL64unit|Mux73~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux71~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~180_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~181_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~178_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~179_combout\ : std_logic;
SIGNAL \SRLorSRAout[51]~38_combout\ : std_logic;
SIGNAL \SRLorSRAout[51]~39_combout\ : std_logic;
SIGNAL \C[19]~input_o\ : std_logic;
SIGNAL \SRA64unit|Mux19~19_combout\ : std_logic;
SIGNAL \SLL64unit|Mux108~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux108~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~41_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~69_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~85_combout\ : std_logic;
SIGNAL \SRA64unit|Mux103~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux103~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~184_combout\ : std_logic;
SIGNAL \Y~139_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~67_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~68_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~182_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~183_combout\ : std_logic;
SIGNAL \Y~140_combout\ : std_logic;
SIGNAL \Y~141_combout\ : std_logic;
SIGNAL \Y~142_combout\ : std_logic;
SIGNAL \Y~299_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~185_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~186_combout\ : std_logic;
SIGNAL \SRLorSRAout[52]~40_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~187_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~188_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~267_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~189_combout\ : std_logic;
SIGNAL \SRLorSRAout[52]~41_combout\ : std_logic;
SIGNAL \C[20]~input_o\ : std_logic;
SIGNAL \SRA64unit|Mux90~70_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~71_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~190_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~191_combout\ : std_logic;
SIGNAL \Y~143_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~72_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~73_combout\ : std_logic;
SIGNAL \SRA64unit|Mux102~4_combout\ : std_logic;
SIGNAL \SRA64unit|Mux102~2_combout\ : std_logic;
SIGNAL \SRA64unit|Mux102~3_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~192_combout\ : std_logic;
SIGNAL \Y~144_combout\ : std_logic;
SIGNAL \SRA64unit|Mux19~20_combout\ : std_logic;
SIGNAL \SLL64unit|Mux107~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux107~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~42_combout\ : std_logic;
SIGNAL \Y~145_combout\ : std_logic;
SIGNAL \Y~146_combout\ : std_logic;
SIGNAL \Y~300_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~194_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~195_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~196_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~193_combout\ : std_logic;
SIGNAL \SRLorSRAout[53]~42_combout\ : std_logic;
SIGNAL \SRLorSRAout[53]~43_combout\ : std_logic;
SIGNAL \C[21]~input_o\ : std_logic;
SIGNAL \SRA64unit|Mux90~74_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~197_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~198_combout\ : std_logic;
SIGNAL \SRA64unit|Mux101~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux101~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~199_combout\ : std_logic;
SIGNAL \Y~147_combout\ : std_logic;
SIGNAL \Y~148_combout\ : std_logic;
SIGNAL \SRA64unit|Mux19~21_combout\ : std_logic;
SIGNAL \SLL64unit|Mux106~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux106~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~43_combout\ : std_logic;
SIGNAL \Y~149_combout\ : std_logic;
SIGNAL \Y~150_combout\ : std_logic;
SIGNAL \Y~301_combout\ : std_logic;
SIGNAL \C[22]~input_o\ : std_logic;
SIGNAL \Y~151_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~75_combout\ : std_logic;
SIGNAL \SRA64unit|Mux100~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux100~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~205_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~203_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~204_combout\ : std_logic;
SIGNAL \Y~152_combout\ : std_logic;
SIGNAL \SRA64unit|Mux19~22_combout\ : std_logic;
SIGNAL \SLL64unit|Mux105~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux105~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~44_combout\ : std_logic;
SIGNAL \Y~153_combout\ : std_logic;
SIGNAL \Y~154_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~200_combout\ : std_logic;
SIGNAL \SRLorSRAout[54]~44_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~201_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~202_combout\ : std_logic;
SIGNAL \SRLorSRAout[54]~45_combout\ : std_logic;
SIGNAL \Y~302_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~206_combout\ : std_logic;
SIGNAL \SRLorSRAout[55]~46_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~207_combout\ : std_logic;
SIGNAL \SRLorSRAout[55]~47_combout\ : std_logic;
SIGNAL \C[23]~input_o\ : std_logic;
SIGNAL \SRA64unit|Mux90~76_combout\ : std_logic;
SIGNAL \SRA64unit|Mux99~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux99~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~210_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~208_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~209_combout\ : std_logic;
SIGNAL \Y~155_combout\ : std_logic;
SIGNAL \Y~156_combout\ : std_logic;
SIGNAL \SRA64unit|Mux19~23_combout\ : std_logic;
SIGNAL \SLL64unit|Mux104~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux104~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~45_combout\ : std_logic;
SIGNAL \Y~157_combout\ : std_logic;
SIGNAL \Y~158_combout\ : std_logic;
SIGNAL \Y~303_combout\ : std_logic;
SIGNAL \C[24]~input_o\ : std_logic;
SIGNAL \SRA64unit|Mux19~24_combout\ : std_logic;
SIGNAL \SLL64unit|Mux103~3_combout\ : std_logic;
SIGNAL \SLL64unit|Mux103~2_combout\ : std_logic;
SIGNAL \SLL64unit|Mux103~4_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~46_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~77_combout\ : std_logic;
SIGNAL \SRA64unit|Mux98~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~216_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~214_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~215_combout\ : std_logic;
SIGNAL \Y~159_combout\ : std_logic;
SIGNAL \Y~160_combout\ : std_logic;
SIGNAL \Y~161_combout\ : std_logic;
SIGNAL \Y~162_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~211_combout\ : std_logic;
SIGNAL \SRLorSRAout[56]~48_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~212_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~213_combout\ : std_logic;
SIGNAL \SRLorSRAout[56]~49_combout\ : std_logic;
SIGNAL \Y~304_combout\ : std_logic;
SIGNAL \C[25]~input_o\ : std_logic;
SIGNAL \SLL64unit|Mux102~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux19~25_combout\ : std_logic;
SIGNAL \SLL64unit|Mux102~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux102~2_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~47_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~78_combout\ : std_logic;
SIGNAL \SRA64unit|Mux97~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~221_combout\ : std_logic;
SIGNAL \Y~163_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~219_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~220_combout\ : std_logic;
SIGNAL \Y~164_combout\ : std_logic;
SIGNAL \Y~165_combout\ : std_logic;
SIGNAL \Y~166_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~217_combout\ : std_logic;
SIGNAL \SRLorSRAout[57]~50_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~218_combout\ : std_logic;
SIGNAL \SRLorSRAout[57]~51_combout\ : std_logic;
SIGNAL \Y~305_combout\ : std_logic;
SIGNAL \C[26]~input_o\ : std_logic;
SIGNAL \SLL64unit|Mux101~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux19~26_combout\ : std_logic;
SIGNAL \SLL64unit|Mux101~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux101~2_combout\ : std_logic;
SIGNAL \SLL64unit|Mux103~5_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~48_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~225_combout\ : std_logic;
SIGNAL \SRA64unit|Mux90~79_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~226_combout\ : std_logic;
SIGNAL \SRA64unit|Mux96~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~227_combout\ : std_logic;
SIGNAL \Y~167_combout\ : std_logic;
SIGNAL \Y~168_combout\ : std_logic;
SIGNAL \Y~169_combout\ : std_logic;
SIGNAL \Y~170_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~222_combout\ : std_logic;
SIGNAL \SRLorSRAout[58]~52_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~223_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~224_combout\ : std_logic;
SIGNAL \SRLorSRAout[58]~53_combout\ : std_logic;
SIGNAL \Y~306_combout\ : std_logic;
SIGNAL \C[27]~input_o\ : std_logic;
SIGNAL \SRA64unit|Mux90~80_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~230_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~231_combout\ : std_logic;
SIGNAL \SRA64unit|Mux95~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~232_combout\ : std_logic;
SIGNAL \Y~171_combout\ : std_logic;
SIGNAL \Y~172_combout\ : std_logic;
SIGNAL \SRA64unit|Mux19~27_combout\ : std_logic;
SIGNAL \SLL64unit|Mux100~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux100~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux100~2_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~49_combout\ : std_logic;
SIGNAL \Y~173_combout\ : std_logic;
SIGNAL \Y~174_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~228_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~229_combout\ : std_logic;
SIGNAL \SRLorSRAout[59]~54_combout\ : std_logic;
SIGNAL \SRLorSRAout[59]~55_combout\ : std_logic;
SIGNAL \Y~307_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~234_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~235_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~233_combout\ : std_logic;
SIGNAL \SRLorSRAout[60]~56_combout\ : std_logic;
SIGNAL \SRLorSRAout[60]~57_combout\ : std_logic;
SIGNAL \C[28]~input_o\ : std_logic;
SIGNAL \SLL64unit|Mux190~50_combout\ : std_logic;
SIGNAL \SRA64unit|Mux19~28_combout\ : std_logic;
SIGNAL \SLL64unit|Mux99~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux99~1_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~236_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~51_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~238_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~237_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~239_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~240_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~241_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~242_combout\ : std_logic;
SIGNAL \Y~175_combout\ : std_logic;
SIGNAL \Y~176_combout\ : std_logic;
SIGNAL \Y~177_combout\ : std_logic;
SIGNAL \Y~178_combout\ : std_logic;
SIGNAL \Y~308_combout\ : std_logic;
SIGNAL \C[29]~input_o\ : std_logic;
SIGNAL \SRA64unit|Mux156~268_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~248_combout\ : std_logic;
SIGNAL \Y~179_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~245_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~246_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~247_combout\ : std_logic;
SIGNAL \Y~180_combout\ : std_logic;
SIGNAL \SRA64unit|Mux19~29_combout\ : std_logic;
SIGNAL \SLL64unit|Mux98~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux98~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~52_combout\ : std_logic;
SIGNAL \Y~181_combout\ : std_logic;
SIGNAL \Y~182_combout\ : std_logic;
SIGNAL \SRA64unit|Mux63~0_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~244_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~243_combout\ : std_logic;
SIGNAL \SRLorSRAout[61]~58_combout\ : std_logic;
SIGNAL \SRLorSRAout[61]~59_combout\ : std_logic;
SIGNAL \Y~309_combout\ : std_logic;
SIGNAL \C[30]~input_o\ : std_logic;
SIGNAL \SRA64unit|Mux156~251_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~269_combout\ : std_logic;
SIGNAL \Y~183_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~249_combout\ : std_logic;
SIGNAL \SRA64unit|Mux156~250_combout\ : std_logic;
SIGNAL \Y~184_combout\ : std_logic;
SIGNAL \SRA64unit|Mux19~30_combout\ : std_logic;
SIGNAL \SLL64unit|Mux97~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux97~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~53_combout\ : std_logic;
SIGNAL \Y~185_combout\ : std_logic;
SIGNAL \Y~186_combout\ : std_logic;
SIGNAL \SRLorSRAout[62]~60_combout\ : std_logic;
SIGNAL \SRLorSRAout[62]~63_combout\ : std_logic;
SIGNAL \SRLorSRAout[62]~64_combout\ : std_logic;
SIGNAL \Y~310_combout\ : std_logic;
SIGNAL \SRA64unit|Mux19~31_combout\ : std_logic;
SIGNAL \SLL64unit|Mux96~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux96~1_combout\ : std_logic;
SIGNAL \CorSLLoutEXT[31]~0_combout\ : std_logic;
SIGNAL \CorSLLoutEXT[31]~1_combout\ : std_logic;
SIGNAL \C[31]~input_o\ : std_logic;
SIGNAL \CorSLLoutEXT[31]~2_combout\ : std_logic;
SIGNAL \SRLorSRAoutEXT[63]~0_combout\ : std_logic;
SIGNAL \SRLorSRAout[31]~61_combout\ : std_logic;
SIGNAL \SRLorSRAout[31]~62_combout\ : std_logic;
SIGNAL \SRLorSRAoutEXT[0]~1_combout\ : std_logic;
SIGNAL \SRLorSRAoutEXT[0]~2_combout\ : std_logic;
SIGNAL \Y~187_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~55_combout\ : std_logic;
SIGNAL \Y~188_combout\ : std_logic;
SIGNAL \SLL64unit|Mux31~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux31~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux95~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux95~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~54_combout\ : std_logic;
SIGNAL \C[32]~input_o\ : std_logic;
SIGNAL \Y~189_combout\ : std_logic;
SIGNAL \Y~190_combout\ : std_logic;
SIGNAL \Y~191_combout\ : std_logic;
SIGNAL \C[33]~input_o\ : std_logic;
SIGNAL \SLL64unit|Mux30~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux30~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux94~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux94~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~56_combout\ : std_logic;
SIGNAL \Y~192_combout\ : std_logic;
SIGNAL \Y~193_combout\ : std_logic;
SIGNAL \Y~194_combout\ : std_logic;
SIGNAL \C[34]~input_o\ : std_logic;
SIGNAL \SLL64unit|Mux29~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux29~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux93~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux93~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~57_combout\ : std_logic;
SIGNAL \Y~195_combout\ : std_logic;
SIGNAL \Y~196_combout\ : std_logic;
SIGNAL \Y~197_combout\ : std_logic;
SIGNAL \SLL64unit|Mux28~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux28~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux92~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux92~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~58_combout\ : std_logic;
SIGNAL \C[35]~input_o\ : std_logic;
SIGNAL \Y~198_combout\ : std_logic;
SIGNAL \Y~199_combout\ : std_logic;
SIGNAL \Y~200_combout\ : std_logic;
SIGNAL \SLL64unit|Mux91~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux27~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux27~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux91~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux91~2_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~59_combout\ : std_logic;
SIGNAL \C[36]~input_o\ : std_logic;
SIGNAL \Y~201_combout\ : std_logic;
SIGNAL \Y~202_combout\ : std_logic;
SIGNAL \Y~203_combout\ : std_logic;
SIGNAL \C[37]~input_o\ : std_logic;
SIGNAL \SLL64unit|Mux26~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux26~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux90~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux90~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux90~2_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~60_combout\ : std_logic;
SIGNAL \Y~204_combout\ : std_logic;
SIGNAL \Y~205_combout\ : std_logic;
SIGNAL \Y~206_combout\ : std_logic;
SIGNAL \SLL64unit|Mux25~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux25~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux89~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux89~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux89~2_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~61_combout\ : std_logic;
SIGNAL \C[38]~input_o\ : std_logic;
SIGNAL \Y~207_combout\ : std_logic;
SIGNAL \Y~208_combout\ : std_logic;
SIGNAL \Y~209_combout\ : std_logic;
SIGNAL \C[39]~input_o\ : std_logic;
SIGNAL \SLL64unit|Mux24~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux24~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux88~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux88~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux88~2_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~62_combout\ : std_logic;
SIGNAL \Y~210_combout\ : std_logic;
SIGNAL \Y~211_combout\ : std_logic;
SIGNAL \Y~212_combout\ : std_logic;
SIGNAL \SLL64unit|Mux87~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux23~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux23~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux87~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux87~2_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~63_combout\ : std_logic;
SIGNAL \C[40]~input_o\ : std_logic;
SIGNAL \Y~213_combout\ : std_logic;
SIGNAL \Y~214_combout\ : std_logic;
SIGNAL \Y~215_combout\ : std_logic;
SIGNAL \SLL64unit|Mux86~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux22~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux22~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux86~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux86~2_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~64_combout\ : std_logic;
SIGNAL \C[41]~input_o\ : std_logic;
SIGNAL \Y~216_combout\ : std_logic;
SIGNAL \Y~217_combout\ : std_logic;
SIGNAL \Y~218_combout\ : std_logic;
SIGNAL \SLL64unit|Mux85~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux21~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux21~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux85~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux85~2_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~65_combout\ : std_logic;
SIGNAL \C[42]~input_o\ : std_logic;
SIGNAL \Y~219_combout\ : std_logic;
SIGNAL \Y~220_combout\ : std_logic;
SIGNAL \Y~221_combout\ : std_logic;
SIGNAL \C[43]~input_o\ : std_logic;
SIGNAL \SLL64unit|Mux84~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux20~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux20~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux84~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux84~2_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~66_combout\ : std_logic;
SIGNAL \Y~222_combout\ : std_logic;
SIGNAL \Y~223_combout\ : std_logic;
SIGNAL \Y~224_combout\ : std_logic;
SIGNAL \SLL64unit|Mux19~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux19~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux83~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux83~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~67_combout\ : std_logic;
SIGNAL \C[44]~input_o\ : std_logic;
SIGNAL \Y~225_combout\ : std_logic;
SIGNAL \Y~226_combout\ : std_logic;
SIGNAL \Y~227_combout\ : std_logic;
SIGNAL \C[45]~input_o\ : std_logic;
SIGNAL \SLL64unit|Mux18~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux18~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux82~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux82~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~68_combout\ : std_logic;
SIGNAL \Y~228_combout\ : std_logic;
SIGNAL \Y~229_combout\ : std_logic;
SIGNAL \Y~230_combout\ : std_logic;
SIGNAL \C[46]~input_o\ : std_logic;
SIGNAL \SLL64unit|Mux17~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux17~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux81~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux81~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~69_combout\ : std_logic;
SIGNAL \Y~231_combout\ : std_logic;
SIGNAL \Y~232_combout\ : std_logic;
SIGNAL \Y~233_combout\ : std_logic;
SIGNAL \SLL64unit|Mux16~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux16~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux80~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux80~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~70_combout\ : std_logic;
SIGNAL \C[47]~input_o\ : std_logic;
SIGNAL \Y~234_combout\ : std_logic;
SIGNAL \Y~235_combout\ : std_logic;
SIGNAL \Y~236_combout\ : std_logic;
SIGNAL \C[48]~input_o\ : std_logic;
SIGNAL \SLL64unit|Mux15~2_combout\ : std_logic;
SIGNAL \SLL64unit|Mux15~3_combout\ : std_logic;
SIGNAL \SLL64unit|Mux79~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux79~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~71_combout\ : std_logic;
SIGNAL \Y~237_combout\ : std_logic;
SIGNAL \Y~238_combout\ : std_logic;
SIGNAL \Y~239_combout\ : std_logic;
SIGNAL \SLL64unit|Mux14~2_combout\ : std_logic;
SIGNAL \SLL64unit|Mux14~3_combout\ : std_logic;
SIGNAL \SLL64unit|Mux78~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux78~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~72_combout\ : std_logic;
SIGNAL \C[49]~input_o\ : std_logic;
SIGNAL \Y~240_combout\ : std_logic;
SIGNAL \Y~241_combout\ : std_logic;
SIGNAL \Y~242_combout\ : std_logic;
SIGNAL \C[50]~input_o\ : std_logic;
SIGNAL \SLL64unit|Mux13~2_combout\ : std_logic;
SIGNAL \SLL64unit|Mux13~3_combout\ : std_logic;
SIGNAL \SLL64unit|Mux77~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux77~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~73_combout\ : std_logic;
SIGNAL \Y~243_combout\ : std_logic;
SIGNAL \Y~244_combout\ : std_logic;
SIGNAL \Y~245_combout\ : std_logic;
SIGNAL \C[51]~input_o\ : std_logic;
SIGNAL \SLL64unit|Mux12~2_combout\ : std_logic;
SIGNAL \SLL64unit|Mux12~3_combout\ : std_logic;
SIGNAL \SLL64unit|Mux76~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux76~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~74_combout\ : std_logic;
SIGNAL \Y~246_combout\ : std_logic;
SIGNAL \Y~247_combout\ : std_logic;
SIGNAL \Y~248_combout\ : std_logic;
SIGNAL \C[52]~input_o\ : std_logic;
SIGNAL \SLL64unit|Mux11~2_combout\ : std_logic;
SIGNAL \SLL64unit|Mux11~3_combout\ : std_logic;
SIGNAL \SLL64unit|Mux75~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux75~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~75_combout\ : std_logic;
SIGNAL \Y~249_combout\ : std_logic;
SIGNAL \Y~250_combout\ : std_logic;
SIGNAL \Y~251_combout\ : std_logic;
SIGNAL \C[53]~input_o\ : std_logic;
SIGNAL \SLL64unit|Mux10~2_combout\ : std_logic;
SIGNAL \SLL64unit|Mux10~3_combout\ : std_logic;
SIGNAL \SLL64unit|Mux74~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux74~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~76_combout\ : std_logic;
SIGNAL \Y~252_combout\ : std_logic;
SIGNAL \Y~253_combout\ : std_logic;
SIGNAL \Y~254_combout\ : std_logic;
SIGNAL \C[54]~input_o\ : std_logic;
SIGNAL \SLL64unit|Mux9~2_combout\ : std_logic;
SIGNAL \SLL64unit|Mux9~3_combout\ : std_logic;
SIGNAL \SLL64unit|Mux73~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux73~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~77_combout\ : std_logic;
SIGNAL \Y~255_combout\ : std_logic;
SIGNAL \Y~256_combout\ : std_logic;
SIGNAL \Y~257_combout\ : std_logic;
SIGNAL \SLL64unit|Mux8~2_combout\ : std_logic;
SIGNAL \SLL64unit|Mux8~3_combout\ : std_logic;
SIGNAL \SLL64unit|Mux72~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux72~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~78_combout\ : std_logic;
SIGNAL \C[55]~input_o\ : std_logic;
SIGNAL \Y~258_combout\ : std_logic;
SIGNAL \Y~259_combout\ : std_logic;
SIGNAL \Y~260_combout\ : std_logic;
SIGNAL \C[56]~input_o\ : std_logic;
SIGNAL \SLL64unit|Mux121~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux121~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux123~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux123~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux71~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~79_combout\ : std_logic;
SIGNAL \Y~261_combout\ : std_logic;
SIGNAL \Y~262_combout\ : std_logic;
SIGNAL \Y~263_combout\ : std_logic;
SIGNAL \C[57]~input_o\ : std_logic;
SIGNAL \SLL64unit|Mux122~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux122~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux70~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~80_combout\ : std_logic;
SIGNAL \Y~264_combout\ : std_logic;
SIGNAL \Y~265_combout\ : std_logic;
SIGNAL \Y~266_combout\ : std_logic;
SIGNAL \C[58]~input_o\ : std_logic;
SIGNAL \SLL64unit|Mux121~2_combout\ : std_logic;
SIGNAL \SLL64unit|Mux121~3_combout\ : std_logic;
SIGNAL \SLL64unit|Mux69~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~81_combout\ : std_logic;
SIGNAL \Y~267_combout\ : std_logic;
SIGNAL \Y~268_combout\ : std_logic;
SIGNAL \Y~269_combout\ : std_logic;
SIGNAL \C[59]~input_o\ : std_logic;
SIGNAL \SLL64unit|Mux120~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux120~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux68~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~82_combout\ : std_logic;
SIGNAL \Y~270_combout\ : std_logic;
SIGNAL \Y~271_combout\ : std_logic;
SIGNAL \Y~272_combout\ : std_logic;
SIGNAL \C[60]~input_o\ : std_logic;
SIGNAL \SLL64unit|Mux67~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux67~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~83_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~84_combout\ : std_logic;
SIGNAL \Y~273_combout\ : std_logic;
SIGNAL \Y~274_combout\ : std_logic;
SIGNAL \Y~275_combout\ : std_logic;
SIGNAL \C[61]~input_o\ : std_logic;
SIGNAL \SLL64unit|Mux66~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux66~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~85_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~86_combout\ : std_logic;
SIGNAL \Y~276_combout\ : std_logic;
SIGNAL \Y~277_combout\ : std_logic;
SIGNAL \Y~278_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~87_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~88_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~89_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~90_combout\ : std_logic;
SIGNAL \SLL64unit|Mux190~91_combout\ : std_logic;
SIGNAL \C[62]~input_o\ : std_logic;
SIGNAL \Y~279_combout\ : std_logic;
SIGNAL \Y~280_combout\ : std_logic;
SIGNAL \Y~281_combout\ : std_logic;
SIGNAL \SLL64unit|Mux128~1_combout\ : std_logic;
SIGNAL \SLL64unit|Mux128~2_combout\ : std_logic;
SIGNAL \SLL64unit|Mux128~3_combout\ : std_logic;
SIGNAL \SLL64unit|Mux128~4_combout\ : std_logic;
SIGNAL \SLL64unit|Mux128~0_combout\ : std_logic;
SIGNAL \SLL64unit|Mux128~5_combout\ : std_logic;
SIGNAL \C[63]~input_o\ : std_logic;
SIGNAL \SRLorSRAoutEXT[0]~4_combout\ : std_logic;
SIGNAL \SRLorSRAoutEXT[0]~3_combout\ : std_logic;
SIGNAL \SRLorSRAoutEXT[0]~5_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_C <= C;
Y <= ww_Y;
ww_ShiftFN <= ShiftFN;
ww_ExtWord <= ExtWord;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y36_N16
\Y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~62_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~68_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~282_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X115_Y47_N23
\Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~283_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\Y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~284_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X115_Y51_N2
\Y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~285_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\Y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~286_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\Y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~287_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\Y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~288_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\Y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~289_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\Y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~290_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X115_Y34_N23
\Y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~291_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\Y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~292_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\Y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~293_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\Y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~294_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\Y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~295_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\Y[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~296_combout\,
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\Y[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~297_combout\,
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\Y[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~298_combout\,
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\Y[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~299_combout\,
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\Y[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~300_combout\,
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\Y[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~301_combout\,
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\Y[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~302_combout\,
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\Y[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~303_combout\,
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\Y[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~304_combout\,
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\Y[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~305_combout\,
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\Y[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~306_combout\,
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\Y[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~307_combout\,
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\Y[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~308_combout\,
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\Y[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~309_combout\,
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\Y[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~310_combout\,
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\Y[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRLorSRAoutEXT[0]~2_combout\,
	devoe => ww_devoe,
	o => \Y[31]~output_o\);

-- Location: IOOBUF_X115_Y31_N2
\Y[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~191_combout\,
	devoe => ww_devoe,
	o => \Y[32]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\Y[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~194_combout\,
	devoe => ww_devoe,
	o => \Y[33]~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\Y[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~197_combout\,
	devoe => ww_devoe,
	o => \Y[34]~output_o\);

-- Location: IOOBUF_X115_Y32_N9
\Y[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~200_combout\,
	devoe => ww_devoe,
	o => \Y[35]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\Y[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~203_combout\,
	devoe => ww_devoe,
	o => \Y[36]~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\Y[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~206_combout\,
	devoe => ww_devoe,
	o => \Y[37]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\Y[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~209_combout\,
	devoe => ww_devoe,
	o => \Y[38]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\Y[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~212_combout\,
	devoe => ww_devoe,
	o => \Y[39]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\Y[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~215_combout\,
	devoe => ww_devoe,
	o => \Y[40]~output_o\);

-- Location: IOOBUF_X115_Y44_N2
\Y[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~218_combout\,
	devoe => ww_devoe,
	o => \Y[41]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\Y[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~221_combout\,
	devoe => ww_devoe,
	o => \Y[42]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\Y[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~224_combout\,
	devoe => ww_devoe,
	o => \Y[43]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\Y[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~227_combout\,
	devoe => ww_devoe,
	o => \Y[44]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\Y[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~230_combout\,
	devoe => ww_devoe,
	o => \Y[45]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\Y[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~233_combout\,
	devoe => ww_devoe,
	o => \Y[46]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\Y[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~236_combout\,
	devoe => ww_devoe,
	o => \Y[47]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\Y[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~239_combout\,
	devoe => ww_devoe,
	o => \Y[48]~output_o\);

-- Location: IOOBUF_X115_Y48_N9
\Y[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~242_combout\,
	devoe => ww_devoe,
	o => \Y[49]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\Y[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~245_combout\,
	devoe => ww_devoe,
	o => \Y[50]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\Y[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~248_combout\,
	devoe => ww_devoe,
	o => \Y[51]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\Y[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~251_combout\,
	devoe => ww_devoe,
	o => \Y[52]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\Y[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~254_combout\,
	devoe => ww_devoe,
	o => \Y[53]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\Y[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~257_combout\,
	devoe => ww_devoe,
	o => \Y[54]~output_o\);

-- Location: IOOBUF_X115_Y45_N23
\Y[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~260_combout\,
	devoe => ww_devoe,
	o => \Y[55]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\Y[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~263_combout\,
	devoe => ww_devoe,
	o => \Y[56]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\Y[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~266_combout\,
	devoe => ww_devoe,
	o => \Y[57]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\Y[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~269_combout\,
	devoe => ww_devoe,
	o => \Y[58]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\Y[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~272_combout\,
	devoe => ww_devoe,
	o => \Y[59]~output_o\);

-- Location: IOOBUF_X115_Y46_N2
\Y[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~275_combout\,
	devoe => ww_devoe,
	o => \Y[60]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\Y[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~278_combout\,
	devoe => ww_devoe,
	o => \Y[61]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\Y[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~281_combout\,
	devoe => ww_devoe,
	o => \Y[62]~output_o\);

-- Location: IOOBUF_X115_Y26_N23
\Y[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRLorSRAoutEXT[0]~5_combout\,
	devoe => ww_devoe,
	o => \Y[63]~output_o\);

-- Location: IOIBUF_X58_Y0_N22
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X67_Y73_N22
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X81_Y73_N1
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X72_Y73_N15
\ExtWord~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: IOIBUF_X67_Y0_N15
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: IOIBUF_X115_Y40_N1
\ShiftFN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: IOIBUF_X69_Y0_N8
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X67_Y39_N20
\AmuxOut[45]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[45]~30_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[13]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[45]~input_o\)))) # (!\ExtWord~input_o\ & (\A[45]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[13]~input_o\,
	combout => \AmuxOut[45]~30_combout\);

-- Location: IOIBUF_X115_Y34_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X67_Y0_N22
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: IOIBUF_X69_Y0_N1
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X67_Y39_N26
\AmuxOut[61]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[61]~29_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[29]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[61]~input_o\)))) # (!\ExtWord~input_o\ & (\A[61]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[29]~input_o\,
	combout => \AmuxOut[61]~29_combout\);

-- Location: LCCOMB_X67_Y39_N14
\SRA64unit|Mux19~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux19~14_combout\ = (\B[4]~input_o\ & ((\AmuxOut[61]~29_combout\))) # (!\B[4]~input_o\ & (\AmuxOut[45]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[45]~30_combout\,
	datab => \B[4]~input_o\,
	datac => \AmuxOut[61]~29_combout\,
	combout => \SRA64unit|Mux19~14_combout\);

-- Location: LCCOMB_X67_Y39_N22
\AmuxOut[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[13]~46_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[45]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[13]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[13]~input_o\,
	combout => \AmuxOut[13]~46_combout\);

-- Location: LCCOMB_X63_Y39_N24
\ShiftCount[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftCount[5]~0_combout\ = (\ExtWord~input_o\) # (!\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[5]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \ShiftCount[5]~0_combout\);

-- Location: LCCOMB_X67_Y39_N28
\AmuxOut[29]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[29]~45_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[61]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[29]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[29]~input_o\,
	combout => \AmuxOut[29]~45_combout\);

-- Location: LCCOMB_X67_Y39_N0
\SRA64unit|Mux49~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux49~2_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & ((\AmuxOut[29]~45_combout\))) # (!\B[4]~input_o\ & (\AmuxOut[13]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[13]~46_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \AmuxOut[29]~45_combout\,
	combout => \SRA64unit|Mux49~2_combout\);

-- Location: LCCOMB_X67_Y39_N10
\SRA64unit|Mux49~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux49~3_combout\ = (\SRA64unit|Mux49~2_combout\) # ((\B[5]~input_o\ & (!\ExtWord~input_o\ & \SRA64unit|Mux19~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \SRA64unit|Mux19~14_combout\,
	datad => \SRA64unit|Mux49~2_combout\,
	combout => \SRA64unit|Mux49~3_combout\);

-- Location: IOIBUF_X69_Y73_N22
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X83_Y0_N8
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X72_Y0_N8
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: LCCOMB_X70_Y38_N10
\AmuxOut[41]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[41]~26_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[9]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[41]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[9]~input_o\,
	datad => \A[41]~input_o\,
	combout => \AmuxOut[41]~26_combout\);

-- Location: IOIBUF_X74_Y0_N1
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X79_Y0_N15
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: LCCOMB_X70_Y38_N8
\AmuxOut[57]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[57]~25_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[25]~input_o\)) # (!\ExtWord~input_o\ & ((\A[57]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[57]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[57]~input_o\,
	combout => \AmuxOut[57]~25_combout\);

-- Location: LCCOMB_X70_Y38_N4
\SRA64unit|Mux19~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux19~12_combout\ = (\B[4]~input_o\ & ((\AmuxOut[57]~25_combout\))) # (!\B[4]~input_o\ & (\AmuxOut[41]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AmuxOut[41]~26_combout\,
	datac => \B[4]~input_o\,
	datad => \AmuxOut[57]~25_combout\,
	combout => \SRA64unit|Mux19~12_combout\);

-- Location: LCCOMB_X70_Y38_N16
\AmuxOut[9]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[9]~48_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[41]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[9]~input_o\)))) # (!\ExtWord~input_o\ & (((\A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[9]~input_o\,
	datad => \A[41]~input_o\,
	combout => \AmuxOut[9]~48_combout\);

-- Location: LCCOMB_X70_Y38_N6
\AmuxOut[25]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[25]~47_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[57]~input_o\))) # (!\ExtWord~input_o\ & (\A[25]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (\A[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[57]~input_o\,
	combout => \AmuxOut[25]~47_combout\);

-- Location: LCCOMB_X70_Y38_N18
\SRA64unit|Mux53~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux53~2_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & ((\AmuxOut[25]~47_combout\))) # (!\B[4]~input_o\ & (\AmuxOut[9]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \AmuxOut[9]~48_combout\,
	datac => \B[4]~input_o\,
	datad => \AmuxOut[25]~47_combout\,
	combout => \SRA64unit|Mux53~2_combout\);

-- Location: LCCOMB_X70_Y38_N2
\SRA64unit|Mux53~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux53~3_combout\ = (\SRA64unit|Mux53~2_combout\) # ((!\ExtWord~input_o\ & (\SRA64unit|Mux19~12_combout\ & \B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \SRA64unit|Mux19~12_combout\,
	datac => \B[5]~input_o\,
	datad => \SRA64unit|Mux53~2_combout\,
	combout => \SRA64unit|Mux53~3_combout\);

-- Location: LCCOMB_X66_Y42_N2
\SRA64unit|Mux156~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~67_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRA64unit|Mux49~3_combout\)) # (!\B[2]~input_o\ & ((\SRA64unit|Mux53~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA64unit|Mux49~3_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux53~3_combout\,
	combout => \SRA64unit|Mux156~67_combout\);

-- Location: IOIBUF_X72_Y73_N8
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X58_Y40_N2
\SRA64unit|Mux123~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux123~0_combout\ = (!\B[2]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[5]~input_o\,
	combout => \SRA64unit|Mux123~0_combout\);

-- Location: IOIBUF_X52_Y73_N15
\A[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: IOIBUF_X38_Y73_N22
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X59_Y42_N20
\AmuxOut[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[7]~39_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[39]~input_o\)) # (!\ExtWord~input_o\ & ((\A[7]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[39]~input_o\,
	datad => \A[7]~input_o\,
	combout => \AmuxOut[7]~39_combout\);

-- Location: IOIBUF_X54_Y73_N1
\A[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: IOIBUF_X58_Y73_N15
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X59_Y42_N18
\AmuxOut[23]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[23]~38_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[55]~input_o\)) # (!\ExtWord~input_o\ & ((\A[23]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[55]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[23]~input_o\,
	combout => \AmuxOut[23]~38_combout\);

-- Location: LCCOMB_X59_Y42_N14
\SRA64unit|Mux55~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux55~2_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & ((\AmuxOut[23]~38_combout\))) # (!\B[4]~input_o\ & (\AmuxOut[7]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \AmuxOut[7]~39_combout\,
	datad => \AmuxOut[23]~38_combout\,
	combout => \SRA64unit|Mux55~2_combout\);

-- Location: LCCOMB_X59_Y42_N28
\AmuxOut[55]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[55]~19_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[23]~input_o\))) # (!\ExtWord~input_o\ & (\A[55]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (\A[55]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[55]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[23]~input_o\,
	combout => \AmuxOut[55]~19_combout\);

-- Location: LCCOMB_X59_Y42_N22
\AmuxOut[39]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[39]~20_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[7]~input_o\))) # (!\ExtWord~input_o\ & (\A[39]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (((\A[39]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[39]~input_o\,
	datad => \A[7]~input_o\,
	combout => \AmuxOut[39]~20_combout\);

-- Location: LCCOMB_X59_Y42_N16
\SRA64unit|Mux19~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux19~9_combout\ = (\B[4]~input_o\ & (\AmuxOut[55]~19_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[39]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \AmuxOut[55]~19_combout\,
	datac => \AmuxOut[39]~20_combout\,
	combout => \SRA64unit|Mux19~9_combout\);

-- Location: LCCOMB_X59_Y43_N24
\SRA64unit|Mux55~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux55~3_combout\ = (\SRA64unit|Mux55~2_combout\) # ((!\ExtWord~input_o\ & (\SRA64unit|Mux19~9_combout\ & \B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux55~2_combout\,
	datab => \ExtWord~input_o\,
	datac => \SRA64unit|Mux19~9_combout\,
	datad => \B[5]~input_o\,
	combout => \SRA64unit|Mux55~3_combout\);

-- Location: LCCOMB_X58_Y40_N12
\SRA64unit|Mux123~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux123~1_combout\ = (\B[2]~input_o\) # ((\B[4]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SRA64unit|Mux123~1_combout\);

-- Location: IOIBUF_X25_Y73_N22
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X60_Y73_N15
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: LCCOMB_X59_Y43_N8
\AmuxOut[51]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[51]~23_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[19]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[51]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[51]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[51]~input_o\,
	combout => \AmuxOut[51]~23_combout\);

-- Location: IOIBUF_X52_Y73_N1
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: IOIBUF_X60_Y73_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X59_Y43_N10
\AmuxOut[35]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[35]~24_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[3]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[35]~input_o\)))) # (!\ExtWord~input_o\ & (\A[35]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[35]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[3]~input_o\,
	combout => \AmuxOut[35]~24_combout\);

-- Location: LCCOMB_X59_Y43_N28
\SRA64unit|Mux19~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux19~11_combout\ = (\B[4]~input_o\ & (\AmuxOut[51]~23_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[35]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \AmuxOut[51]~23_combout\,
	datad => \AmuxOut[35]~24_combout\,
	combout => \SRA64unit|Mux19~11_combout\);

-- Location: LCCOMB_X59_Y43_N0
\SRA64unit|Mux122~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux122~1_combout\ = (\SRA64unit|Mux123~0_combout\ & (((\SRA64unit|Mux123~1_combout\)))) # (!\SRA64unit|Mux123~0_combout\ & ((\SRA64unit|Mux123~1_combout\ & (\SRA64unit|Mux55~3_combout\)) # (!\SRA64unit|Mux123~1_combout\ & 
-- ((\SRA64unit|Mux19~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux123~0_combout\,
	datab => \SRA64unit|Mux55~3_combout\,
	datac => \SRA64unit|Mux123~1_combout\,
	datad => \SRA64unit|Mux19~11_combout\,
	combout => \SRA64unit|Mux122~1_combout\);

-- Location: LCCOMB_X59_Y43_N30
\AmuxOut[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[3]~37_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[35]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[3]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[35]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[3]~input_o\,
	combout => \AmuxOut[3]~37_combout\);

-- Location: LCCOMB_X59_Y43_N18
\AmuxOut[19]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[19]~40_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[51]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[19]~input_o\)))) # (!\ExtWord~input_o\ & (\A[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[51]~input_o\,
	combout => \AmuxOut[19]~40_combout\);

-- Location: LCCOMB_X59_Y43_N12
\SRA64unit|Mux122~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux122~2_combout\ = (\SRA64unit|Mux123~0_combout\ & ((\SRA64unit|Mux122~1_combout\ & ((\AmuxOut[19]~40_combout\))) # (!\SRA64unit|Mux122~1_combout\ & (\AmuxOut[3]~37_combout\)))) # (!\SRA64unit|Mux123~0_combout\ & 
-- (\SRA64unit|Mux122~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux123~0_combout\,
	datab => \SRA64unit|Mux122~1_combout\,
	datac => \AmuxOut[3]~37_combout\,
	datad => \AmuxOut[19]~40_combout\,
	combout => \SRA64unit|Mux122~2_combout\);

-- Location: IOIBUF_X0_Y44_N1
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: IOIBUF_X52_Y73_N8
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LCCOMB_X58_Y39_N18
\AmuxOut[59]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[59]~21_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[27]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[59]~input_o\)))) # (!\ExtWord~input_o\ & (\A[59]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[27]~input_o\,
	combout => \AmuxOut[59]~21_combout\);

-- Location: IOIBUF_X38_Y73_N8
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X29_Y73_N8
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: LCCOMB_X58_Y39_N20
\AmuxOut[43]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[43]~22_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[11]~input_o\)) # (!\ExtWord~input_o\ & ((\A[43]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[43]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[11]~input_o\,
	datad => \A[43]~input_o\,
	combout => \AmuxOut[43]~22_combout\);

-- Location: LCCOMB_X58_Y39_N22
\SRA64unit|Mux19~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux19~10_combout\ = (\B[4]~input_o\ & (\AmuxOut[59]~21_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[43]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \AmuxOut[59]~21_combout\,
	datad => \AmuxOut[43]~22_combout\,
	combout => \SRA64unit|Mux19~10_combout\);

-- Location: LCCOMB_X58_Y39_N12
\AmuxOut[11]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[11]~36_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[43]~input_o\))) # (!\ExtWord~input_o\ & (\A[11]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (((\A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[11]~input_o\,
	datad => \A[43]~input_o\,
	combout => \AmuxOut[11]~36_combout\);

-- Location: LCCOMB_X58_Y39_N10
\AmuxOut[27]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[27]~35_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[59]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[27]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[27]~input_o\,
	combout => \AmuxOut[27]~35_combout\);

-- Location: LCCOMB_X58_Y39_N14
\SRA64unit|Mux51~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux51~2_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & ((\AmuxOut[27]~35_combout\))) # (!\B[4]~input_o\ & (\AmuxOut[11]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \AmuxOut[11]~36_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \AmuxOut[27]~35_combout\,
	combout => \SRA64unit|Mux51~2_combout\);

-- Location: LCCOMB_X63_Y39_N12
\SRA64unit|Mux51~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux51~3_combout\ = (\SRA64unit|Mux51~2_combout\) # ((!\ExtWord~input_o\ & (\SRA64unit|Mux19~10_combout\ & \B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \SRA64unit|Mux19~10_combout\,
	datac => \B[5]~input_o\,
	datad => \SRA64unit|Mux51~2_combout\,
	combout => \SRA64unit|Mux51~3_combout\);

-- Location: IOIBUF_X47_Y73_N15
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: IOIBUF_X0_Y35_N15
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X58_Y39_N0
\AmuxOut[15]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[15]~34_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[47]~input_o\)) # (!\ExtWord~input_o\ & ((\A[15]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[47]~input_o\,
	datad => \A[15]~input_o\,
	combout => \AmuxOut[15]~34_combout\);

-- Location: IOIBUF_X115_Y35_N15
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: IOIBUF_X115_Y44_N8
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X67_Y37_N10
\AmuxOut[31]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[31]~33_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[63]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[31]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[63]~input_o\,
	datad => \A[31]~input_o\,
	combout => \AmuxOut[31]~33_combout\);

-- Location: LCCOMB_X63_Y40_N30
\SRA64unit|Mux47~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux47~2_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & ((\AmuxOut[31]~33_combout\))) # (!\B[4]~input_o\ & (\AmuxOut[15]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[15]~34_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \AmuxOut[31]~33_combout\,
	datad => \B[4]~input_o\,
	combout => \SRA64unit|Mux47~2_combout\);

-- Location: LCCOMB_X58_Y39_N8
\AmuxOut[47]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[47]~18_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[15]~input_o\))) # (!\ExtWord~input_o\ & (\A[47]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (((\A[47]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[47]~input_o\,
	datad => \A[15]~input_o\,
	combout => \AmuxOut[47]~18_combout\);

-- Location: LCCOMB_X67_Y37_N0
\AmuxOut[63]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[63]~1_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[31]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[63]~input_o\)))) # (!\ExtWord~input_o\ & (((\A[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[63]~input_o\,
	datad => \A[31]~input_o\,
	combout => \AmuxOut[63]~1_combout\);

-- Location: LCCOMB_X63_Y40_N8
\SRA64unit|Mux19~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux19~8_combout\ = (\B[4]~input_o\ & ((\AmuxOut[63]~1_combout\))) # (!\B[4]~input_o\ & (\AmuxOut[47]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[47]~18_combout\,
	datac => \AmuxOut[63]~1_combout\,
	datad => \B[4]~input_o\,
	combout => \SRA64unit|Mux19~8_combout\);

-- Location: LCCOMB_X63_Y40_N20
\SRA64unit|Mux47~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux47~3_combout\ = (\SRA64unit|Mux47~2_combout\) # ((!\ExtWord~input_o\ & (\SRA64unit|Mux19~8_combout\ & \B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux47~2_combout\,
	datab => \ExtWord~input_o\,
	datac => \SRA64unit|Mux19~8_combout\,
	datad => \B[5]~input_o\,
	combout => \SRA64unit|Mux47~3_combout\);

-- Location: LCCOMB_X62_Y43_N16
\SRA64unit|Mux122~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux122~0_combout\ = (\B[2]~input_o\ & ((\SRA64unit|Mux47~3_combout\))) # (!\B[2]~input_o\ & (\SRA64unit|Mux51~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64unit|Mux51~3_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA64unit|Mux47~3_combout\,
	combout => \SRA64unit|Mux122~0_combout\);

-- Location: LCCOMB_X65_Y40_N24
\SRA64unit|Mux122~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux122~3_combout\ = (\B[3]~input_o\ & ((\SRA64unit|Mux122~0_combout\))) # (!\B[3]~input_o\ & (\SRA64unit|Mux122~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux122~2_combout\,
	datac => \SRA64unit|Mux122~0_combout\,
	datad => \B[3]~input_o\,
	combout => \SRA64unit|Mux122~3_combout\);

-- Location: IOIBUF_X85_Y73_N22
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X70_Y40_N16
\AmuxOut[49]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[49]~27_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[17]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[49]~input_o\)))) # (!\ExtWord~input_o\ & (\A[49]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \A[17]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \AmuxOut[49]~27_combout\);

-- Location: IOIBUF_X115_Y40_N8
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: IOIBUF_X115_Y49_N8
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X70_Y40_N2
\AmuxOut[33]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[33]~28_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[1]~input_o\))) # (!\ExtWord~input_o\ & (\A[33]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (\A[33]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[33]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[1]~input_o\,
	combout => \AmuxOut[33]~28_combout\);

-- Location: LCCOMB_X70_Y40_N28
\SRA64unit|Mux19~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux19~13_combout\ = (\B[4]~input_o\ & (\AmuxOut[49]~27_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[33]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AmuxOut[49]~27_combout\,
	datac => \B[4]~input_o\,
	datad => \AmuxOut[33]~28_combout\,
	combout => \SRA64unit|Mux19~13_combout\);

-- Location: LCCOMB_X70_Y40_N8
\AmuxOut[1]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[1]~42_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[33]~input_o\)) # (!\ExtWord~input_o\ & ((\A[1]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[33]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[1]~input_o\,
	combout => \AmuxOut[1]~42_combout\);

-- Location: LCCOMB_X70_Y40_N6
\AmuxOut[17]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[17]~41_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[49]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[17]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \A[17]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \AmuxOut[17]~41_combout\);

-- Location: LCCOMB_X70_Y40_N10
\SRA64unit|Mux156~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~64_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & ((\AmuxOut[17]~41_combout\))) # (!\B[4]~input_o\ & (\AmuxOut[1]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \AmuxOut[1]~42_combout\,
	datac => \B[4]~input_o\,
	datad => \AmuxOut[17]~41_combout\,
	combout => \SRA64unit|Mux156~64_combout\);

-- Location: LCCOMB_X70_Y40_N12
\SRA64unit|Mux156~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~65_combout\ = (!\B[2]~input_o\ & ((\SRA64unit|Mux156~64_combout\) # ((\SRA64unit|Mux19~13_combout\ & !\ShiftCount[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA64unit|Mux19~13_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \SRA64unit|Mux156~64_combout\,
	combout => \SRA64unit|Mux156~65_combout\);

-- Location: IOIBUF_X69_Y73_N15
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: IOIBUF_X42_Y73_N8
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LCCOMB_X66_Y41_N24
\AmuxOut[53]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[53]~31_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[21]~input_o\))) # (!\ExtWord~input_o\ & (\A[53]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (\A[53]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[53]~input_o\,
	datac => \A[21]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \AmuxOut[53]~31_combout\);

-- Location: IOIBUF_X74_Y0_N22
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: IOIBUF_X89_Y73_N15
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X66_Y41_N10
\AmuxOut[37]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[37]~32_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[5]~input_o\))) # (!\ExtWord~input_o\ & (\A[37]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (((\A[37]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[37]~input_o\,
	datad => \A[5]~input_o\,
	combout => \AmuxOut[37]~32_combout\);

-- Location: LCCOMB_X66_Y41_N4
\SRA64unit|Mux19~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux19~15_combout\ = (\B[4]~input_o\ & (\AmuxOut[53]~31_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[37]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \AmuxOut[53]~31_combout\,
	datad => \AmuxOut[37]~32_combout\,
	combout => \SRA64unit|Mux19~15_combout\);

-- Location: LCCOMB_X66_Y41_N22
\AmuxOut[21]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[21]~43_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[53]~input_o\)) # (!\ExtWord~input_o\ & ((\A[21]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[53]~input_o\,
	datac => \A[21]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \AmuxOut[21]~43_combout\);

-- Location: LCCOMB_X66_Y41_N16
\AmuxOut[5]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[5]~44_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[37]~input_o\)) # (!\ExtWord~input_o\ & ((\A[5]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[37]~input_o\,
	datad => \A[5]~input_o\,
	combout => \AmuxOut[5]~44_combout\);

-- Location: LCCOMB_X66_Y41_N18
\SRA64unit|Mux57~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux57~2_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\AmuxOut[21]~43_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[5]~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \AmuxOut[21]~43_combout\,
	datad => \AmuxOut[5]~44_combout\,
	combout => \SRA64unit|Mux57~2_combout\);

-- Location: LCCOMB_X66_Y41_N12
\SRA64unit|Mux57~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux57~3_combout\ = (\SRA64unit|Mux57~2_combout\) # ((\B[5]~input_o\ & (!\ExtWord~input_o\ & \SRA64unit|Mux19~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \SRA64unit|Mux19~15_combout\,
	datad => \SRA64unit|Mux57~2_combout\,
	combout => \SRA64unit|Mux57~3_combout\);

-- Location: LCCOMB_X66_Y42_N8
\SRA64unit|Mux156~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~66_combout\ = (!\B[3]~input_o\ & ((\SRA64unit|Mux156~65_combout\) # ((\B[2]~input_o\ & \SRA64unit|Mux57~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA64unit|Mux156~65_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux57~3_combout\,
	combout => \SRA64unit|Mux156~66_combout\);

-- Location: LCCOMB_X67_Y42_N0
\SRA64unit|Mux156~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~68_combout\ = (\B[1]~input_o\ & (((\SRA64unit|Mux122~3_combout\)))) # (!\B[1]~input_o\ & ((\SRA64unit|Mux156~67_combout\) # ((\SRA64unit|Mux156~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~67_combout\,
	datab => \B[1]~input_o\,
	datac => \SRA64unit|Mux122~3_combout\,
	datad => \SRA64unit|Mux156~66_combout\,
	combout => \SRA64unit|Mux156~68_combout\);

-- Location: IOIBUF_X0_Y35_N1
\A[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: IOIBUF_X47_Y0_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X57_Y39_N4
\AmuxOut[2]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[2]~55_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[34]~input_o\)) # (!\ExtWord~input_o\ & ((\A[2]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[34]~input_o\,
	datad => \A[2]~input_o\,
	combout => \AmuxOut[2]~55_combout\);

-- Location: IOIBUF_X0_Y43_N15
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X13_Y73_N1
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: LCCOMB_X59_Y42_N24
\AmuxOut[50]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[50]~4_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[18]~input_o\)) # (!\ExtWord~input_o\ & ((\A[50]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[50]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[18]~input_o\,
	datad => \A[50]~input_o\,
	combout => \AmuxOut[50]~4_combout\);

-- Location: LCCOMB_X57_Y39_N0
\AmuxOut[34]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[34]~5_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[2]~input_o\))) # (!\ExtWord~input_o\ & (\A[34]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (((\A[34]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[34]~input_o\,
	datad => \A[2]~input_o\,
	combout => \AmuxOut[34]~5_combout\);

-- Location: LCCOMB_X58_Y40_N8
\SRA64unit|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux19~1_combout\ = (\B[4]~input_o\ & (\AmuxOut[50]~4_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[34]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[50]~4_combout\,
	datac => \AmuxOut[34]~5_combout\,
	datad => \B[4]~input_o\,
	combout => \SRA64unit|Mux19~1_combout\);

-- Location: LCCOMB_X58_Y40_N6
\SRA64unit|Mux123~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux123~3_combout\ = (\SRA64unit|Mux123~1_combout\ & (((\SRA64unit|Mux123~0_combout\)))) # (!\SRA64unit|Mux123~1_combout\ & ((\SRA64unit|Mux123~0_combout\ & (\AmuxOut[2]~55_combout\)) # (!\SRA64unit|Mux123~0_combout\ & 
-- ((\SRA64unit|Mux19~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[2]~55_combout\,
	datab => \SRA64unit|Mux19~1_combout\,
	datac => \SRA64unit|Mux123~1_combout\,
	datad => \SRA64unit|Mux123~0_combout\,
	combout => \SRA64unit|Mux123~3_combout\);

-- Location: LCCOMB_X58_Y40_N0
\AmuxOut[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[18]~56_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[50]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[18]~input_o\)))) # (!\ExtWord~input_o\ & (\A[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[18]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[50]~input_o\,
	combout => \AmuxOut[18]~56_combout\);

-- Location: IOIBUF_X49_Y0_N1
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X0_Y42_N1
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: LCCOMB_X57_Y39_N20
\AmuxOut[38]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[38]~9_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[6]~input_o\)) # (!\ExtWord~input_o\ & ((\A[38]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[38]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[6]~input_o\,
	datad => \A[38]~input_o\,
	combout => \AmuxOut[38]~9_combout\);

-- Location: IOIBUF_X0_Y46_N15
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X57_Y39_N2
\AmuxOut[54]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[54]~8_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[22]~input_o\))) # (!\ExtWord~input_o\ & (\A[54]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (((\A[54]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[54]~input_o\,
	datad => \A[22]~input_o\,
	combout => \AmuxOut[54]~8_combout\);

-- Location: LCCOMB_X61_Y40_N16
\SRA64unit|Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux19~3_combout\ = (\B[4]~input_o\ & ((\AmuxOut[54]~8_combout\))) # (!\B[4]~input_o\ & (\AmuxOut[38]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[38]~9_combout\,
	datab => \B[4]~input_o\,
	datad => \AmuxOut[54]~8_combout\,
	combout => \SRA64unit|Mux19~3_combout\);

-- Location: LCCOMB_X57_Y39_N8
\AmuxOut[6]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[6]~54_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[38]~input_o\))) # (!\ExtWord~input_o\ & (\A[6]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (((\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[6]~input_o\,
	datad => \A[38]~input_o\,
	combout => \AmuxOut[6]~54_combout\);

-- Location: LCCOMB_X57_Y39_N6
\AmuxOut[22]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[22]~53_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[54]~input_o\)) # (!\ExtWord~input_o\ & ((\A[22]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[54]~input_o\,
	datad => \A[22]~input_o\,
	combout => \AmuxOut[22]~53_combout\);

-- Location: LCCOMB_X57_Y39_N26
\SRA64unit|Mux56~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux56~2_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & ((\AmuxOut[22]~53_combout\))) # (!\B[4]~input_o\ & (\AmuxOut[6]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \AmuxOut[6]~54_combout\,
	datac => \B[4]~input_o\,
	datad => \AmuxOut[22]~53_combout\,
	combout => \SRA64unit|Mux56~2_combout\);

-- Location: LCCOMB_X60_Y39_N0
\SRA64unit|Mux56~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux56~3_combout\ = (\SRA64unit|Mux56~2_combout\) # ((\B[5]~input_o\ & (!\ExtWord~input_o\ & \SRA64unit|Mux19~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \SRA64unit|Mux19~3_combout\,
	datad => \SRA64unit|Mux56~2_combout\,
	combout => \SRA64unit|Mux56~3_combout\);

-- Location: LCCOMB_X58_Y40_N26
\SRA64unit|Mux123~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux123~4_combout\ = (\SRA64unit|Mux123~3_combout\ & ((\AmuxOut[18]~56_combout\) # ((!\SRA64unit|Mux123~1_combout\)))) # (!\SRA64unit|Mux123~3_combout\ & (((\SRA64unit|Mux123~1_combout\ & \SRA64unit|Mux56~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux123~3_combout\,
	datab => \AmuxOut[18]~56_combout\,
	datac => \SRA64unit|Mux123~1_combout\,
	datad => \SRA64unit|Mux56~3_combout\,
	combout => \SRA64unit|Mux123~4_combout\);

-- Location: IOIBUF_X58_Y0_N8
\A[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: IOIBUF_X33_Y73_N1
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X59_Y38_N24
\AmuxOut[58]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[58]~2_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[26]~input_o\))) # (!\ExtWord~input_o\ & (\A[58]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (((\A[58]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[58]~input_o\,
	datad => \A[26]~input_o\,
	combout => \AmuxOut[58]~2_combout\);

-- Location: IOIBUF_X42_Y0_N22
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: IOIBUF_X58_Y0_N1
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X59_Y38_N10
\AmuxOut[42]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[42]~3_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[10]~input_o\))) # (!\ExtWord~input_o\ & (\A[42]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (\A[42]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[42]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[10]~input_o\,
	combout => \AmuxOut[42]~3_combout\);

-- Location: LCCOMB_X59_Y38_N28
\SRA64unit|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux19~0_combout\ = (\B[4]~input_o\ & (\AmuxOut[58]~2_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[42]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \AmuxOut[58]~2_combout\,
	datad => \AmuxOut[42]~3_combout\,
	combout => \SRA64unit|Mux19~0_combout\);

-- Location: LCCOMB_X59_Y38_N30
\AmuxOut[26]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[26]~51_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[58]~input_o\)) # (!\ExtWord~input_o\ & ((\A[26]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[58]~input_o\,
	datad => \A[26]~input_o\,
	combout => \AmuxOut[26]~51_combout\);

-- Location: LCCOMB_X59_Y38_N0
\AmuxOut[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[10]~52_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[42]~input_o\)) # (!\ExtWord~input_o\ & ((\A[10]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[42]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[10]~input_o\,
	combout => \AmuxOut[10]~52_combout\);

-- Location: LCCOMB_X59_Y38_N2
\SRA64unit|Mux52~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux52~2_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\AmuxOut[26]~51_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[10]~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \AmuxOut[26]~51_combout\,
	datad => \AmuxOut[10]~52_combout\,
	combout => \SRA64unit|Mux52~2_combout\);

-- Location: LCCOMB_X59_Y38_N22
\SRA64unit|Mux52~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux52~3_combout\ = (\SRA64unit|Mux52~2_combout\) # ((\B[5]~input_o\ & (\SRA64unit|Mux19~0_combout\ & !\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \SRA64unit|Mux19~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \SRA64unit|Mux52~2_combout\,
	combout => \SRA64unit|Mux52~3_combout\);

-- Location: IOIBUF_X49_Y0_N22
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X0_Y34_N22
\A[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: LCCOMB_X57_Y37_N30
\AmuxOut[30]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[30]~49_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[62]~input_o\))) # (!\ExtWord~input_o\ & (\A[30]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (\A[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[62]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \AmuxOut[30]~49_combout\);

-- Location: IOIBUF_X49_Y0_N15
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X56_Y0_N15
\A[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: LCCOMB_X57_Y37_N8
\AmuxOut[14]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[14]~50_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[46]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[14]~input_o\)))) # (!\ExtWord~input_o\ & (\A[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[14]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[46]~input_o\,
	combout => \AmuxOut[14]~50_combout\);

-- Location: LCCOMB_X57_Y37_N10
\SRA64unit|Mux48~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux48~2_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\AmuxOut[30]~49_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[14]~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \AmuxOut[30]~49_combout\,
	datad => \AmuxOut[14]~50_combout\,
	combout => \SRA64unit|Mux48~2_combout\);

-- Location: LCCOMB_X57_Y37_N16
\AmuxOut[62]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[62]~6_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[30]~input_o\)) # (!\ExtWord~input_o\ & ((\A[62]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[62]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \AmuxOut[62]~6_combout\);

-- Location: LCCOMB_X57_Y37_N26
\AmuxOut[46]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[46]~7_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[14]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[46]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[46]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[14]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[46]~input_o\,
	combout => \AmuxOut[46]~7_combout\);

-- Location: LCCOMB_X57_Y37_N4
\SRA64unit|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux19~2_combout\ = (\B[4]~input_o\ & (\AmuxOut[62]~6_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[46]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AmuxOut[62]~6_combout\,
	datac => \AmuxOut[46]~7_combout\,
	datad => \B[4]~input_o\,
	combout => \SRA64unit|Mux19~2_combout\);

-- Location: LCCOMB_X60_Y39_N30
\SRA64unit|Mux48~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux48~3_combout\ = (\SRA64unit|Mux48~2_combout\) # ((\B[5]~input_o\ & (!\ExtWord~input_o\ & \SRA64unit|Mux19~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \SRA64unit|Mux48~2_combout\,
	datad => \SRA64unit|Mux19~2_combout\,
	combout => \SRA64unit|Mux48~3_combout\);

-- Location: LCCOMB_X60_Y39_N24
\SRA64unit|Mux123~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux123~2_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA64unit|Mux48~3_combout\))) # (!\B[2]~input_o\ & (\SRA64unit|Mux52~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA64unit|Mux52~3_combout\,
	datac => \SRA64unit|Mux48~3_combout\,
	datad => \B[3]~input_o\,
	combout => \SRA64unit|Mux123~2_combout\);

-- Location: LCCOMB_X60_Y39_N10
\SRA64unit|Mux123~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux123~5_combout\ = (\SRA64unit|Mux123~2_combout\) # ((!\B[3]~input_o\ & \SRA64unit|Mux123~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64unit|Mux123~4_combout\,
	datad => \SRA64unit|Mux123~2_combout\,
	combout => \SRA64unit|Mux123~5_combout\);

-- Location: IOIBUF_X115_Y30_N1
\A[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: IOIBUF_X60_Y0_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X61_Y36_N0
\AmuxOut[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[0]~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[32]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[0]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \AmuxOut[0]~0_combout\);

-- Location: IOIBUF_X56_Y0_N8
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: IOIBUF_X27_Y0_N22
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X61_Y36_N16
\AmuxOut[16]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[16]~61_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[48]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[16]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[48]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[16]~input_o\,
	combout => \AmuxOut[16]~61_combout\);

-- Location: LCCOMB_X61_Y36_N18
\SRA64unit|Mux188~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux188~1_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & ((\AmuxOut[16]~61_combout\))) # (!\B[4]~input_o\ & (\AmuxOut[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[0]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \AmuxOut[16]~61_combout\,
	combout => \SRA64unit|Mux188~1_combout\);

-- Location: LCCOMB_X61_Y36_N20
\AmuxOut[32]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[32]~13_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[0]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[32]~input_o\)))) # (!\ExtWord~input_o\ & (\A[32]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \AmuxOut[32]~13_combout\);

-- Location: LCCOMB_X61_Y36_N2
\AmuxOut[48]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[48]~12_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[16]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[48]~input_o\)))) # (!\ExtWord~input_o\ & (\A[48]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[48]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[16]~input_o\,
	combout => \AmuxOut[48]~12_combout\);

-- Location: LCCOMB_X61_Y36_N30
\SRA64unit|Mux19~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux19~5_combout\ = (\B[4]~input_o\ & ((\AmuxOut[48]~12_combout\))) # (!\B[4]~input_o\ & (\AmuxOut[32]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \AmuxOut[32]~13_combout\,
	datad => \AmuxOut[48]~12_combout\,
	combout => \SRA64unit|Mux19~5_combout\);

-- Location: LCCOMB_X61_Y36_N28
\SRA64unit|Mux188~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux188~2_combout\ = (!\B[3]~input_o\ & ((\SRA64unit|Mux188~1_combout\) # ((!\ShiftCount[5]~0_combout\ & \SRA64unit|Mux19~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \SRA64unit|Mux188~1_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux19~5_combout\,
	combout => \SRA64unit|Mux188~2_combout\);

-- Location: IOIBUF_X54_Y0_N1
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X54_Y0_N8
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: LCCOMB_X58_Y36_N10
\AmuxOut[40]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[40]~17_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[8]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[40]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[40]~input_o\,
	combout => \AmuxOut[40]~17_combout\);

-- Location: IOIBUF_X85_Y0_N22
\A[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: IOIBUF_X54_Y0_N15
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X58_Y36_N8
\AmuxOut[56]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[56]~16_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[24]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[56]~input_o\)))) # (!\ExtWord~input_o\ & (\A[56]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[56]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[24]~input_o\,
	combout => \AmuxOut[56]~16_combout\);

-- Location: LCCOMB_X58_Y36_N12
\SRA64unit|Mux19~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux19~7_combout\ = (\B[4]~input_o\ & ((\AmuxOut[56]~16_combout\))) # (!\B[4]~input_o\ & (\AmuxOut[40]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[40]~17_combout\,
	datab => \AmuxOut[56]~16_combout\,
	datac => \B[4]~input_o\,
	combout => \SRA64unit|Mux19~7_combout\);

-- Location: LCCOMB_X58_Y36_N30
\AmuxOut[24]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[24]~62_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[56]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[24]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[56]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[24]~input_o\,
	combout => \AmuxOut[24]~62_combout\);

-- Location: LCCOMB_X58_Y36_N0
\AmuxOut[8]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[8]~63_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[40]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[8]~input_o\)))) # (!\ExtWord~input_o\ & (\A[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[40]~input_o\,
	combout => \AmuxOut[8]~63_combout\);

-- Location: LCCOMB_X58_Y36_N2
\SRA64unit|Mux54~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux54~2_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\AmuxOut[24]~62_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[8]~63_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[24]~62_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \AmuxOut[8]~63_combout\,
	combout => \SRA64unit|Mux54~2_combout\);

-- Location: LCCOMB_X62_Y36_N28
\SRA64unit|Mux54~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux54~3_combout\ = (\SRA64unit|Mux54~2_combout\) # ((\B[5]~input_o\ & (\SRA64unit|Mux19~7_combout\ & !\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \SRA64unit|Mux19~7_combout\,
	datac => \ExtWord~input_o\,
	datad => \SRA64unit|Mux54~2_combout\,
	combout => \SRA64unit|Mux54~3_combout\);

-- Location: LCCOMB_X60_Y36_N2
\SRA64unit|Mux188~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux188~3_combout\ = (!\B[2]~input_o\ & ((\SRA64unit|Mux188~2_combout\) # ((\B[3]~input_o\ & \SRA64unit|Mux54~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA64unit|Mux188~2_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux54~3_combout\,
	combout => \SRA64unit|Mux188~3_combout\);

-- Location: IOIBUF_X49_Y0_N8
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: IOIBUF_X56_Y0_N22
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X60_Y37_N20
\AmuxOut[28]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[28]~57_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[60]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[28]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[60]~input_o\,
	datad => \A[28]~input_o\,
	combout => \AmuxOut[28]~57_combout\);

-- Location: IOIBUF_X52_Y73_N22
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X58_Y73_N22
\A[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: LCCOMB_X59_Y42_N0
\AmuxOut[12]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[12]~58_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[44]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[12]~input_o\)))) # (!\ExtWord~input_o\ & (\A[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[44]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \AmuxOut[12]~58_combout\);

-- Location: LCCOMB_X60_Y37_N22
\SRA64unit|Mux50~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux50~2_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\AmuxOut[28]~57_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[12]~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \AmuxOut[28]~57_combout\,
	datac => \AmuxOut[12]~58_combout\,
	datad => \B[4]~input_o\,
	combout => \SRA64unit|Mux50~2_combout\);

-- Location: LCCOMB_X60_Y37_N16
\AmuxOut[60]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[60]~14_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[28]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[60]~input_o\)))) # (!\ExtWord~input_o\ & (((\A[60]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[60]~input_o\,
	datad => \A[28]~input_o\,
	combout => \AmuxOut[60]~14_combout\);

-- Location: LCCOMB_X59_Y42_N2
\AmuxOut[44]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[44]~15_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[12]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[44]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[44]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[44]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \AmuxOut[44]~15_combout\);

-- Location: LCCOMB_X60_Y37_N26
\SRA64unit|Mux19~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux19~6_combout\ = (\B[4]~input_o\ & (\AmuxOut[60]~14_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[44]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \AmuxOut[60]~14_combout\,
	datad => \AmuxOut[44]~15_combout\,
	combout => \SRA64unit|Mux19~6_combout\);

-- Location: LCCOMB_X62_Y36_N26
\SRA64unit|Mux50~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux50~3_combout\ = (\SRA64unit|Mux50~2_combout\) # ((\B[5]~input_o\ & (!\ExtWord~input_o\ & \SRA64unit|Mux19~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \SRA64unit|Mux50~2_combout\,
	datac => \ExtWord~input_o\,
	datad => \SRA64unit|Mux19~6_combout\,
	combout => \SRA64unit|Mux50~3_combout\);

-- Location: IOIBUF_X115_Y31_N8
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X60_Y0_N15
\A[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: LCCOMB_X61_Y35_N14
\AmuxOut[20]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[20]~59_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[52]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[20]~input_o\)))) # (!\ExtWord~input_o\ & (\A[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[20]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[52]~input_o\,
	combout => \AmuxOut[20]~59_combout\);

-- Location: IOIBUF_X115_Y32_N1
\A[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X61_Y35_N24
\AmuxOut[4]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[4]~60_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[36]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[4]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[36]~input_o\,
	datad => \A[4]~input_o\,
	combout => \AmuxOut[4]~60_combout\);

-- Location: LCCOMB_X61_Y35_N26
\SRA64unit|Mux58~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux58~2_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\AmuxOut[20]~59_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[4]~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \AmuxOut[20]~59_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \AmuxOut[4]~60_combout\,
	combout => \SRA64unit|Mux58~2_combout\);

-- Location: LCCOMB_X61_Y35_N18
\AmuxOut[36]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[36]~11_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[4]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[36]~input_o\)))) # (!\ExtWord~input_o\ & (((\A[36]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[36]~input_o\,
	datad => \A[4]~input_o\,
	combout => \AmuxOut[36]~11_combout\);

-- Location: LCCOMB_X61_Y35_N16
\AmuxOut[52]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \AmuxOut[52]~10_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[20]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[52]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[52]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[20]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[52]~input_o\,
	combout => \AmuxOut[52]~10_combout\);

-- Location: LCCOMB_X61_Y35_N20
\SRA64unit|Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux19~4_combout\ = (\B[4]~input_o\ & ((\AmuxOut[52]~10_combout\))) # (!\B[4]~input_o\ & (\AmuxOut[36]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \AmuxOut[36]~11_combout\,
	datad => \AmuxOut[52]~10_combout\,
	combout => \SRA64unit|Mux19~4_combout\);

-- Location: LCCOMB_X61_Y35_N2
\SRA64unit|Mux58~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux58~3_combout\ = (\SRA64unit|Mux58~2_combout\) # ((\B[5]~input_o\ & (!\ExtWord~input_o\ & \SRA64unit|Mux19~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux58~2_combout\,
	datab => \B[5]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \SRA64unit|Mux19~4_combout\,
	combout => \SRA64unit|Mux58~3_combout\);

-- Location: LCCOMB_X60_Y36_N16
\SRA64unit|Mux188~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux188~0_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\SRA64unit|Mux50~3_combout\)) # (!\B[3]~input_o\ & ((\SRA64unit|Mux58~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA64unit|Mux50~3_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux58~3_combout\,
	combout => \SRA64unit|Mux188~0_combout\);

-- Location: LCCOMB_X68_Y36_N28
\SRA64unit|Mux188~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux188~4_combout\ = (\B[1]~input_o\ & (\SRA64unit|Mux123~5_combout\)) # (!\B[1]~input_o\ & (((\SRA64unit|Mux188~3_combout\) # (\SRA64unit|Mux188~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux123~5_combout\,
	datab => \SRA64unit|Mux188~3_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux188~0_combout\,
	combout => \SRA64unit|Mux188~4_combout\);

-- Location: LCCOMB_X68_Y36_N30
\Y~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~61_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & (\SRA64unit|Mux156~68_combout\)) # (!\B[0]~input_o\ & ((\SRA64unit|Mux188~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRA64unit|Mux156~68_combout\,
	datac => \ExtWord~input_o\,
	datad => \SRA64unit|Mux188~4_combout\,
	combout => \Y~61_combout\);

-- Location: IOIBUF_X58_Y0_N15
\C[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(0),
	o => \C[0]~input_o\);

-- Location: IOIBUF_X74_Y73_N15
\ShiftFN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: LCCOMB_X67_Y39_N16
\SRL64unit|Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux47~0_combout\ = (!\B[4]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[4]~input_o\,
	combout => \SRL64unit|Mux47~0_combout\);

-- Location: LCCOMB_X67_Y40_N16
\SLL64unit|Mux190~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~92_combout\ = (!\B[1]~input_o\ & (\SRL64unit|Mux47~0_combout\ & (!\B[3]~input_o\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRL64unit|Mux47~0_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SLL64unit|Mux190~92_combout\);

-- Location: LCCOMB_X67_Y40_N2
\Y~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~58_combout\ = (!\B[0]~input_o\ & (\AmuxOut[0]~0_combout\ & (\ShiftFN[0]~input_o\ & \SLL64unit|Mux190~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \AmuxOut[0]~0_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SLL64unit|Mux190~92_combout\,
	combout => \Y~58_combout\);

-- Location: LCCOMB_X68_Y36_N16
\Y~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~59_combout\ = (!\ShiftFN[1]~input_o\ & ((\Y~58_combout\) # ((\C[0]~input_o\ & !\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \C[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Y~58_combout\,
	combout => \Y~59_combout\);

-- Location: LCCOMB_X63_Y39_N10
\SRA64unit|Mux90~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~16_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\SRA64unit|Mux19~10_combout\)) # (!\B[3]~input_o\ & ((\SRA64unit|Mux19~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA64unit|Mux19~10_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux19~11_combout\,
	combout => \SRA64unit|Mux90~16_combout\);

-- Location: LCCOMB_X63_Y40_N2
\SRL64unit|Mux92~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux92~0_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SRA64unit|Mux19~8_combout\))) # (!\B[3]~input_o\ & (\SRA64unit|Mux19~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux19~9_combout\,
	datab => \SRA64unit|Mux19~8_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SRL64unit|Mux92~0_combout\);

-- Location: LCCOMB_X63_Y40_N12
\SRL64unit|Mux92~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux92~1_combout\ = (\SRA64unit|Mux90~16_combout\) # (\SRL64unit|Mux92~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~16_combout\,
	datad => \SRL64unit|Mux92~0_combout\,
	combout => \SRL64unit|Mux92~1_combout\);

-- Location: LCCOMB_X66_Y36_N18
\SRL64unit|Mux90~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux90~0_combout\ = (\B[3]~input_o\ & (\SRA64unit|Mux19~14_combout\)) # (!\B[3]~input_o\ & ((\SRA64unit|Mux19~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64unit|Mux19~14_combout\,
	datac => \SRA64unit|Mux19~15_combout\,
	combout => \SRL64unit|Mux90~0_combout\);

-- Location: LCCOMB_X66_Y36_N24
\SRL64unit|Mux94~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux94~0_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\SRA64unit|Mux19~12_combout\)) # (!\B[3]~input_o\ & ((\SRA64unit|Mux19~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64unit|Mux19~12_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA64unit|Mux19~13_combout\,
	combout => \SRL64unit|Mux94~0_combout\);

-- Location: LCCOMB_X66_Y36_N4
\SRL64unit|Mux94~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux94~1_combout\ = (\SRL64unit|Mux94~0_combout\) # ((\B[2]~input_o\ & \SRL64unit|Mux90~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRL64unit|Mux90~0_combout\,
	datad => \SRL64unit|Mux94~0_combout\,
	combout => \SRL64unit|Mux94~1_combout\);

-- Location: LCCOMB_X65_Y36_N2
\SRA64unit|Mux156~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~59_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[1]~input_o\ & (\SRL64unit|Mux92~1_combout\)) # (!\B[1]~input_o\ & ((\SRL64unit|Mux94~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux92~1_combout\,
	datab => \B[1]~input_o\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \SRL64unit|Mux94~1_combout\,
	combout => \SRA64unit|Mux156~59_combout\);

-- Location: LCCOMB_X62_Y36_N0
\SRL64unit|Mux95~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux95~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA64unit|Mux19~4_combout\))) # (!\B[2]~input_o\ & (\SRA64unit|Mux19~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA64unit|Mux19~5_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux19~4_combout\,
	combout => \SRL64unit|Mux95~0_combout\);

-- Location: LCCOMB_X62_Y36_N18
\SRL64unit|Mux95~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux95~1_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA64unit|Mux19~6_combout\))) # (!\B[2]~input_o\ & (\SRA64unit|Mux19~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA64unit|Mux19~7_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux19~6_combout\,
	combout => \SRL64unit|Mux95~1_combout\);

-- Location: LCCOMB_X62_Y36_N12
\SRL64unit|Mux95~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux95~2_combout\ = (\SRL64unit|Mux95~0_combout\) # (\SRL64unit|Mux95~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64unit|Mux95~0_combout\,
	datad => \SRL64unit|Mux95~1_combout\,
	combout => \SRL64unit|Mux95~2_combout\);

-- Location: LCCOMB_X65_Y38_N16
\SRL64unit|Mux93~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux93~0_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SRA64unit|Mux19~0_combout\))) # (!\B[3]~input_o\ & (\SRA64unit|Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux19~1_combout\,
	datab => \SRA64unit|Mux19~0_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SRL64unit|Mux93~0_combout\);

-- Location: LCCOMB_X65_Y38_N26
\SRL64unit|Mux89~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux89~0_combout\ = (\B[3]~input_o\ & ((\SRA64unit|Mux19~2_combout\))) # (!\B[3]~input_o\ & (\SRA64unit|Mux19~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux19~3_combout\,
	datab => \B[3]~input_o\,
	datac => \SRA64unit|Mux19~2_combout\,
	combout => \SRL64unit|Mux89~0_combout\);

-- Location: LCCOMB_X65_Y38_N4
\SRL64unit|Mux93~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux93~1_combout\ = (\SRL64unit|Mux93~0_combout\) # ((\SRL64unit|Mux89~0_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64unit|Mux93~0_combout\,
	datac => \SRL64unit|Mux89~0_combout\,
	datad => \B[2]~input_o\,
	combout => \SRL64unit|Mux93~1_combout\);

-- Location: LCCOMB_X65_Y36_N16
\SRA64unit|Mux156~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~58_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[1]~input_o\ & ((\SRL64unit|Mux93~1_combout\))) # (!\B[1]~input_o\ & (\SRL64unit|Mux95~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \SRL64unit|Mux95~2_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL64unit|Mux93~1_combout\,
	combout => \SRA64unit|Mux156~58_combout\);

-- Location: LCCOMB_X65_Y36_N28
\SRLorSRAout[32]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[32]~0_combout\ = (\ShiftFN[0]~input_o\ & (\B[0]~input_o\)) # (!\ShiftFN[0]~input_o\ & ((\B[0]~input_o\ & (\SRA64unit|Mux156~59_combout\)) # (!\B[0]~input_o\ & ((\SRA64unit|Mux156~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SRA64unit|Mux156~59_combout\,
	datad => \SRA64unit|Mux156~58_combout\,
	combout => \SRLorSRAout[32]~0_combout\);

-- Location: LCCOMB_X65_Y36_N20
\SRA64unit|Mux156~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~253_combout\ = (\SRA64unit|Mux156~58_combout\) # ((\AmuxOut[63]~1_combout\ & (!\ExtWord~input_o\ & \B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[63]~1_combout\,
	datab => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \SRA64unit|Mux156~58_combout\,
	combout => \SRA64unit|Mux156~253_combout\);

-- Location: LCCOMB_X66_Y36_N6
\SRA64unit|Mux156~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~61_combout\ = (!\B[1]~input_o\ & ((\SRL64unit|Mux94~0_combout\) # ((\B[2]~input_o\ & \SRL64unit|Mux90~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \SRL64unit|Mux90~0_combout\,
	datad => \SRL64unit|Mux94~0_combout\,
	combout => \SRA64unit|Mux156~61_combout\);

-- Location: LCCOMB_X63_Y39_N4
\SRA64unit|Mux90~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~18_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\AmuxOut[47]~18_combout\))) # (!\B[3]~input_o\ & (\SRA64unit|Mux19~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \SRA64unit|Mux19~9_combout\,
	datad => \AmuxOut[47]~18_combout\,
	combout => \SRA64unit|Mux90~18_combout\);

-- Location: LCCOMB_X63_Y39_N30
\SRA64unit|Mux156~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~62_combout\ = (\B[1]~input_o\ & ((\SRA64unit|Mux90~18_combout\) # (\SRA64unit|Mux90~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64unit|Mux90~18_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux90~16_combout\,
	combout => \SRA64unit|Mux156~62_combout\);

-- Location: LCCOMB_X67_Y39_N24
\SRA64unit|Mux90~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~17_combout\ = (\B[2]~input_o\ & \B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SRA64unit|Mux90~17_combout\);

-- Location: LCCOMB_X67_Y39_N18
\SRA64unit|Mux156~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~60_combout\ = (\B[1]~input_o\ & ((\SRA64unit|Mux90~17_combout\ & (\SRL64unit|Mux47~0_combout\)) # (!\SRA64unit|Mux90~17_combout\ & ((\ShiftCount[5]~0_combout\))))) # (!\B[1]~input_o\ & (((\ShiftCount[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux47~0_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux90~17_combout\,
	combout => \SRA64unit|Mux156~60_combout\);

-- Location: LCCOMB_X68_Y36_N2
\SRA64unit|Mux156~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~63_combout\ = (\SRA64unit|Mux156~60_combout\ & (((\SRA64unit|Mux156~61_combout\) # (\SRA64unit|Mux156~62_combout\)))) # (!\SRA64unit|Mux156~60_combout\ & (\AmuxOut[63]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[63]~1_combout\,
	datab => \SRA64unit|Mux156~61_combout\,
	datac => \SRA64unit|Mux156~62_combout\,
	datad => \SRA64unit|Mux156~60_combout\,
	combout => \SRA64unit|Mux156~63_combout\);

-- Location: LCCOMB_X69_Y36_N8
\SRLorSRAout[32]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[32]~1_combout\ = (\ShiftFN[0]~input_o\ & ((\SRLorSRAout[32]~0_combout\ & ((\SRA64unit|Mux156~63_combout\))) # (!\SRLorSRAout[32]~0_combout\ & (\SRA64unit|Mux156~253_combout\)))) # (!\ShiftFN[0]~input_o\ & (\SRLorSRAout[32]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SRLorSRAout[32]~0_combout\,
	datac => \SRA64unit|Mux156~253_combout\,
	datad => \SRA64unit|Mux156~63_combout\,
	combout => \SRLorSRAout[32]~1_combout\);

-- Location: LCCOMB_X69_Y36_N18
\Y~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~60_combout\ = (\SRLorSRAout[32]~1_combout\ & \ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRLorSRAout[32]~1_combout\,
	datac => \ExtWord~input_o\,
	combout => \Y~60_combout\);

-- Location: LCCOMB_X68_Y36_N24
\Y~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~62_combout\ = (\Y~59_combout\) # ((\ShiftFN[1]~input_o\ & ((\Y~61_combout\) # (\Y~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~61_combout\,
	datab => \Y~59_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y~60_combout\,
	combout => \Y~62_combout\);

-- Location: IOIBUF_X83_Y0_N1
\C[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(1),
	o => \C[1]~input_o\);

-- Location: LCCOMB_X67_Y40_N12
\Y~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~63_combout\ = (\ShiftFN[0]~input_o\ & ((\B[0]~input_o\ & (\AmuxOut[0]~0_combout\)) # (!\B[0]~input_o\ & ((\AmuxOut[1]~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \AmuxOut[0]~0_combout\,
	datac => \AmuxOut[1]~42_combout\,
	datad => \B[0]~input_o\,
	combout => \Y~63_combout\);

-- Location: LCCOMB_X67_Y40_N6
\Y~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~64_combout\ = (\C[1]~input_o\ & (((\SLL64unit|Mux190~92_combout\ & \Y~63_combout\)) # (!\ShiftFN[0]~input_o\))) # (!\C[1]~input_o\ & (\SLL64unit|Mux190~92_combout\ & ((\Y~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[1]~input_o\,
	datab => \SLL64unit|Mux190~92_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Y~63_combout\,
	combout => \Y~64_combout\);

-- Location: LCCOMB_X60_Y39_N12
\SRA64unit|Mux156~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~71_combout\ = (!\B[1]~input_o\ & ((\SRA64unit|Mux123~2_combout\) # ((\SRA64unit|Mux123~4_combout\ & !\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRA64unit|Mux123~2_combout\,
	datac => \SRA64unit|Mux123~4_combout\,
	datad => \B[3]~input_o\,
	combout => \SRA64unit|Mux156~71_combout\);

-- Location: LCCOMB_X60_Y36_N12
\SRL64unit|Mux123~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux123~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRA64unit|Mux54~3_combout\)) # (!\B[2]~input_o\ & ((\SRA64unit|Mux58~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA64unit|Mux54~3_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux58~3_combout\,
	combout => \SRL64unit|Mux123~0_combout\);

-- Location: LCCOMB_X61_Y36_N14
\SRL64unit|Mux47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux47~1_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & ((\AmuxOut[32]~13_combout\))) # (!\B[4]~input_o\ & (\AmuxOut[16]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[16]~61_combout\,
	datab => \B[4]~input_o\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \AmuxOut[32]~13_combout\,
	combout => \SRL64unit|Mux47~1_combout\);

-- Location: LCCOMB_X61_Y36_N4
\SRA64unit|Mux90~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~81_combout\ = (\B[5]~input_o\ & (!\B[4]~input_o\ & (!\ExtWord~input_o\ & \AmuxOut[48]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[4]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \AmuxOut[48]~12_combout\,
	combout => \SRA64unit|Mux90~81_combout\);

-- Location: LCCOMB_X60_Y36_N18
\SRA64unit|Mux90~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~20_combout\ = (\B[2]~input_o\ & (((\SRL64unit|Mux47~1_combout\) # (\SRA64unit|Mux90~81_combout\)))) # (!\B[2]~input_o\ & (\SRA64unit|Mux50~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA64unit|Mux50~3_combout\,
	datac => \SRL64unit|Mux47~1_combout\,
	datad => \SRA64unit|Mux90~81_combout\,
	combout => \SRA64unit|Mux90~20_combout\);

-- Location: LCCOMB_X61_Y39_N10
\SRA64unit|Mux156~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~72_combout\ = (\B[1]~input_o\ & ((\SRL64unit|Mux123~0_combout\) # ((\B[3]~input_o\ & \SRA64unit|Mux90~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux123~0_combout\,
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux90~20_combout\,
	combout => \SRA64unit|Mux156~72_combout\);

-- Location: LCCOMB_X61_Y39_N28
\SRA64unit|Mux156~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~73_combout\ = (\SRA64unit|Mux156~71_combout\) # (\SRA64unit|Mux156~72_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64unit|Mux156~71_combout\,
	datad => \SRA64unit|Mux156~72_combout\,
	combout => \SRA64unit|Mux156~73_combout\);

-- Location: LCCOMB_X61_Y36_N24
\SRA64unit|Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux46~0_combout\ = (!\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\AmuxOut[63]~1_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[48]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[63]~1_combout\,
	datab => \B[4]~input_o\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \AmuxOut[48]~12_combout\,
	combout => \SRA64unit|Mux46~0_combout\);

-- Location: LCCOMB_X60_Y36_N6
\SRA64unit|Mux46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux46~1_combout\ = (\SRA64unit|Mux46~0_combout\) # (\SRL64unit|Mux47~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64unit|Mux46~0_combout\,
	datac => \SRL64unit|Mux47~1_combout\,
	combout => \SRA64unit|Mux46~1_combout\);

-- Location: LCCOMB_X60_Y36_N24
\SRA64unit|Mux121~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux121~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA64unit|Mux46~1_combout\))) # (!\B[2]~input_o\ & (\SRA64unit|Mux50~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA64unit|Mux50~3_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux46~1_combout\,
	combout => \SRA64unit|Mux121~0_combout\);

-- Location: LCCOMB_X61_Y39_N18
\SRA64unit|Mux156~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~254_combout\ = (\SRA64unit|Mux156~71_combout\) # ((\B[1]~input_o\ & ((\SRL64unit|Mux123~0_combout\) # (\SRA64unit|Mux121~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux123~0_combout\,
	datab => \SRA64unit|Mux121~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux156~71_combout\,
	combout => \SRA64unit|Mux156~254_combout\);

-- Location: LCCOMB_X68_Y36_N12
\Y~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~66_combout\ = (\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\SRA64unit|Mux156~254_combout\))) # (!\ShiftFN[0]~input_o\ & (\SRA64unit|Mux156~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRA64unit|Mux156~73_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~254_combout\,
	combout => \Y~66_combout\);

-- Location: LCCOMB_X68_Y36_N14
\Y~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~67_combout\ = (!\ExtWord~input_o\ & ((\Y~66_combout\) # ((!\B[0]~input_o\ & \SRA64unit|Mux156~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRA64unit|Mux156~68_combout\,
	datac => \ExtWord~input_o\,
	datad => \Y~66_combout\,
	combout => \Y~67_combout\);

-- Location: LCCOMB_X62_Y36_N14
\SRL64unit|Mux91~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux91~0_combout\ = (\B[2]~input_o\ & (((\B[3]~input_o\)))) # (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\SRA64unit|Mux19~6_combout\)) # (!\B[3]~input_o\ & ((\SRA64unit|Mux19~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux19~6_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux19~4_combout\,
	combout => \SRL64unit|Mux91~0_combout\);

-- Location: LCCOMB_X62_Y36_N16
\SRL64unit|Mux91~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux91~1_combout\ = (\B[2]~input_o\ & ((\SRL64unit|Mux91~0_combout\ & ((\AmuxOut[48]~12_combout\))) # (!\SRL64unit|Mux91~0_combout\ & (\SRA64unit|Mux19~7_combout\)))) # (!\B[2]~input_o\ & (\SRL64unit|Mux91~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRL64unit|Mux91~0_combout\,
	datac => \SRA64unit|Mux19~7_combout\,
	datad => \AmuxOut[48]~12_combout\,
	combout => \SRL64unit|Mux91~1_combout\);

-- Location: LCCOMB_X68_Y36_N10
\SRA64unit|Mux156~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~69_combout\ = (\SRA64unit|Mux156~60_combout\ & ((\B[1]~input_o\ & ((\SRL64unit|Mux91~1_combout\))) # (!\B[1]~input_o\ & (\SRL64unit|Mux93~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRL64unit|Mux93~1_combout\,
	datac => \SRL64unit|Mux91~1_combout\,
	datad => \SRA64unit|Mux156~60_combout\,
	combout => \SRA64unit|Mux156~69_combout\);

-- Location: LCCOMB_X68_Y36_N6
\SRA64unit|Mux156~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~70_combout\ = (\SRA64unit|Mux156~69_combout\) # ((!\SRA64unit|Mux156~60_combout\ & \AmuxOut[63]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64unit|Mux156~60_combout\,
	datac => \AmuxOut[63]~1_combout\,
	datad => \SRA64unit|Mux156~69_combout\,
	combout => \SRA64unit|Mux156~70_combout\);

-- Location: LCCOMB_X68_Y36_N20
\SRLorSRAout[33]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[33]~2_combout\ = (\ShiftFN[0]~input_o\ & (((\B[0]~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\B[0]~input_o\ & ((\SRA64unit|Mux156~69_combout\))) # (!\B[0]~input_o\ & (\SRA64unit|Mux156~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~59_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \SRA64unit|Mux156~69_combout\,
	combout => \SRLorSRAout[33]~2_combout\);

-- Location: LCCOMB_X68_Y36_N8
\SRLorSRAout[33]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[33]~3_combout\ = (\SRLorSRAout[33]~2_combout\ & ((\SRA64unit|Mux156~70_combout\) # ((!\ShiftFN[0]~input_o\)))) # (!\SRLorSRAout[33]~2_combout\ & (((\ShiftFN[0]~input_o\ & \SRA64unit|Mux156~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~70_combout\,
	datab => \SRLorSRAout[33]~2_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~63_combout\,
	combout => \SRLorSRAout[33]~3_combout\);

-- Location: LCCOMB_X68_Y36_N18
\Y~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~65_combout\ = (\ExtWord~input_o\ & \SRLorSRAout[33]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \SRLorSRAout[33]~3_combout\,
	combout => \Y~65_combout\);

-- Location: LCCOMB_X68_Y36_N0
\Y~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~68_combout\ = (\ShiftFN[1]~input_o\ & (((\Y~67_combout\) # (\Y~65_combout\)))) # (!\ShiftFN[1]~input_o\ & (\Y~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~64_combout\,
	datab => \Y~67_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y~65_combout\,
	combout => \Y~68_combout\);

-- Location: LCCOMB_X66_Y36_N16
\SRL64unit|Mux90~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux90~1_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\AmuxOut[49]~27_combout\))) # (!\B[3]~input_o\ & (\SRA64unit|Mux19~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64unit|Mux19~12_combout\,
	datac => \AmuxOut[49]~27_combout\,
	datad => \B[2]~input_o\,
	combout => \SRL64unit|Mux90~1_combout\);

-- Location: LCCOMB_X66_Y36_N12
\SRA64unit|Mux156~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~75_combout\ = (\B[1]~input_o\ & ((\SRL64unit|Mux90~1_combout\) # ((!\B[2]~input_o\ & \SRL64unit|Mux90~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRL64unit|Mux90~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL64unit|Mux90~1_combout\,
	combout => \SRA64unit|Mux156~75_combout\);

-- Location: LCCOMB_X63_Y39_N8
\SRA64unit|Mux156~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~76_combout\ = (!\B[1]~input_o\ & ((\SRA64unit|Mux90~18_combout\) # (\SRA64unit|Mux90~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64unit|Mux90~18_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux90~16_combout\,
	combout => \SRA64unit|Mux156~76_combout\);

-- Location: LCCOMB_X67_Y39_N6
\SRA64unit|Mux90~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~86_combout\ = (\B[5]~input_o\ & (\ExtWord~input_o\ & ((!\SRA64unit|Mux90~17_combout\) # (!\B[4]~input_o\)))) # (!\B[5]~input_o\ & (((!\SRA64unit|Mux90~17_combout\) # (!\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[4]~input_o\,
	datad => \SRA64unit|Mux90~17_combout\,
	combout => \SRA64unit|Mux90~86_combout\);

-- Location: LCCOMB_X67_Y36_N26
\SRA64unit|Mux156~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~77_combout\ = (\SRA64unit|Mux90~86_combout\ & ((\SRA64unit|Mux156~75_combout\) # ((\SRA64unit|Mux156~76_combout\)))) # (!\SRA64unit|Mux90~86_combout\ & (((\AmuxOut[63]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~75_combout\,
	datab => \AmuxOut[63]~1_combout\,
	datac => \SRA64unit|Mux156~76_combout\,
	datad => \SRA64unit|Mux90~86_combout\,
	combout => \SRA64unit|Mux156~77_combout\);

-- Location: LCCOMB_X66_Y36_N26
\SRL64unit|Mux90~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux90~2_combout\ = (\SRL64unit|Mux90~1_combout\) # ((!\B[2]~input_o\ & \SRL64unit|Mux90~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRL64unit|Mux90~0_combout\,
	datad => \SRL64unit|Mux90~1_combout\,
	combout => \SRL64unit|Mux90~2_combout\);

-- Location: LCCOMB_X67_Y36_N24
\SRA64unit|Mux156~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~74_combout\ = (\SRA64unit|Mux156~60_combout\ & ((\B[1]~input_o\ & (\SRL64unit|Mux90~2_combout\)) # (!\B[1]~input_o\ & ((\SRL64unit|Mux92~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux90~2_combout\,
	datab => \B[1]~input_o\,
	datac => \SRA64unit|Mux156~60_combout\,
	datad => \SRL64unit|Mux92~1_combout\,
	combout => \SRA64unit|Mux156~74_combout\);

-- Location: LCCOMB_X68_Y36_N26
\SRLorSRAout[34]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[34]~4_combout\ = (\ShiftFN[0]~input_o\ & (((\B[0]~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\B[0]~input_o\ & ((\SRA64unit|Mux156~74_combout\))) # (!\B[0]~input_o\ & (\SRA64unit|Mux156~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~69_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \SRA64unit|Mux156~74_combout\,
	combout => \SRLorSRAout[34]~4_combout\);

-- Location: LCCOMB_X67_Y43_N8
\SRLorSRAout[34]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[34]~5_combout\ = (\SRLorSRAout[34]~4_combout\ & ((\SRA64unit|Mux156~77_combout\) # ((!\ShiftFN[0]~input_o\)))) # (!\SRLorSRAout[34]~4_combout\ & (((\ShiftFN[0]~input_o\ & \SRA64unit|Mux156~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~77_combout\,
	datab => \SRLorSRAout[34]~4_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~70_combout\,
	combout => \SRLorSRAout[34]~5_combout\);

-- Location: LCCOMB_X63_Y38_N0
\Y~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~69_combout\ = (!\ShiftFN[1]~input_o\ & ((\B[0]~input_o\) # (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~69_combout\);

-- Location: IOIBUF_X115_Y50_N8
\C[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(2),
	o => \C[2]~input_o\);

-- Location: LCCOMB_X67_Y40_N8
\SRL64unit|Mux119~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux119~0_combout\ = (!\B[2]~input_o\ & !\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	combout => \SRL64unit|Mux119~0_combout\);

-- Location: LCCOMB_X67_Y40_N24
\SLL64unit|Mux190~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~17_combout\ = (!\B[1]~input_o\ & (\SRL64unit|Mux47~0_combout\ & (\AmuxOut[1]~42_combout\ & \SRL64unit|Mux119~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRL64unit|Mux47~0_combout\,
	datac => \AmuxOut[1]~42_combout\,
	datad => \SRL64unit|Mux119~0_combout\,
	combout => \SLL64unit|Mux190~17_combout\);

-- Location: LCCOMB_X70_Y40_N14
\SRL64unit|Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux46~0_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\AmuxOut[33]~28_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[17]~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \AmuxOut[33]~28_combout\,
	datac => \B[4]~input_o\,
	datad => \AmuxOut[17]~41_combout\,
	combout => \SRL64unit|Mux46~0_combout\);

-- Location: LCCOMB_X61_Y40_N12
\SRA64unit|Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux45~0_combout\ = (!\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & ((\AmuxOut[63]~1_combout\))) # (!\B[4]~input_o\ & (\AmuxOut[49]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[49]~27_combout\,
	datab => \AmuxOut[63]~1_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SRA64unit|Mux45~0_combout\);

-- Location: LCCOMB_X61_Y40_N14
\SRA64unit|Mux45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux45~1_combout\ = (\SRL64unit|Mux46~0_combout\) # (\SRA64unit|Mux45~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux46~0_combout\,
	datad => \SRA64unit|Mux45~0_combout\,
	combout => \SRA64unit|Mux45~1_combout\);

-- Location: LCCOMB_X66_Y40_N16
\SRA64unit|Mux120~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux120~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRA64unit|Mux45~1_combout\)) # (!\B[2]~input_o\ & ((\SRA64unit|Mux49~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux45~1_combout\,
	datab => \B[2]~input_o\,
	datac => \SRA64unit|Mux49~3_combout\,
	datad => \B[3]~input_o\,
	combout => \SRA64unit|Mux120~0_combout\);

-- Location: LCCOMB_X66_Y42_N12
\SRL64unit|Mux122~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux122~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRA64unit|Mux53~3_combout\)) # (!\B[2]~input_o\ & ((\SRA64unit|Mux57~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA64unit|Mux53~3_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux57~3_combout\,
	combout => \SRL64unit|Mux122~0_combout\);

-- Location: LCCOMB_X65_Y40_N2
\SRA64unit|Mux156~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~78_combout\ = (!\B[1]~input_o\ & ((\B[3]~input_o\ & (\SRA64unit|Mux122~0_combout\)) # (!\B[3]~input_o\ & ((\SRA64unit|Mux122~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64unit|Mux122~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux122~2_combout\,
	combout => \SRA64unit|Mux156~78_combout\);

-- Location: LCCOMB_X66_Y43_N20
\SRA64unit|Mux156~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~255_combout\ = (\SRA64unit|Mux156~78_combout\) # ((\B[1]~input_o\ & ((\SRA64unit|Mux120~0_combout\) # (\SRL64unit|Mux122~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRA64unit|Mux120~0_combout\,
	datac => \SRL64unit|Mux122~0_combout\,
	datad => \SRA64unit|Mux156~78_combout\,
	combout => \SRA64unit|Mux156~255_combout\);

-- Location: LCCOMB_X68_Y36_N4
\Y~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~71_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\SRA64unit|Mux156~254_combout\))) # (!\ShiftFN[0]~input_o\ & (\SRA64unit|Mux156~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRA64unit|Mux156~73_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~254_combout\,
	combout => \Y~71_combout\);

-- Location: LCCOMB_X61_Y40_N20
\SRA64unit|Mux90~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~82_combout\ = (\AmuxOut[49]~27_combout\ & (!\B[4]~input_o\ & (!\ExtWord~input_o\ & \B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[49]~27_combout\,
	datab => \B[4]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \B[5]~input_o\,
	combout => \SRA64unit|Mux90~82_combout\);

-- Location: LCCOMB_X66_Y42_N14
\SRA64unit|Mux90~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~21_combout\ = (\B[2]~input_o\ & ((\SRL64unit|Mux46~0_combout\) # ((\SRA64unit|Mux90~82_combout\)))) # (!\B[2]~input_o\ & (((\SRA64unit|Mux49~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRL64unit|Mux46~0_combout\,
	datac => \SRA64unit|Mux49~3_combout\,
	datad => \SRA64unit|Mux90~82_combout\,
	combout => \SRA64unit|Mux90~21_combout\);

-- Location: LCCOMB_X66_Y42_N0
\SRA64unit|Mux156~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~79_combout\ = (\B[1]~input_o\ & ((\SRL64unit|Mux122~0_combout\) # ((\B[3]~input_o\ & \SRA64unit|Mux90~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[1]~input_o\,
	datac => \SRA64unit|Mux90~21_combout\,
	datad => \SRL64unit|Mux122~0_combout\,
	combout => \SRA64unit|Mux156~79_combout\);

-- Location: LCCOMB_X66_Y43_N24
\SRA64unit|Mux156~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~80_combout\ = (\SRA64unit|Mux156~78_combout\) # (\SRA64unit|Mux156~79_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~78_combout\,
	datad => \SRA64unit|Mux156~79_combout\,
	combout => \SRA64unit|Mux156~80_combout\);

-- Location: LCCOMB_X66_Y43_N12
\Y~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~72_combout\ = (\B[0]~input_o\ & ((\Y~71_combout\ & (\SRA64unit|Mux156~255_combout\)) # (!\Y~71_combout\ & ((\SRA64unit|Mux156~80_combout\))))) # (!\B[0]~input_o\ & (((\Y~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRA64unit|Mux156~255_combout\,
	datac => \Y~71_combout\,
	datad => \SRA64unit|Mux156~80_combout\,
	combout => \Y~72_combout\);

-- Location: LCCOMB_X67_Y40_N18
\SLL64unit|Mux127~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux127~4_combout\ = ((\B[3]~input_o\) # (\B[2]~input_o\)) # (!\SRL64unit|Mux47~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64unit|Mux47~0_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SLL64unit|Mux127~4_combout\);

-- Location: LCCOMB_X57_Y39_N30
\SLL64unit|Mux190~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~16_combout\ = (!\SLL64unit|Mux127~4_combout\ & ((\B[1]~input_o\ & (\AmuxOut[0]~0_combout\)) # (!\B[1]~input_o\ & ((\AmuxOut[2]~55_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[0]~0_combout\,
	datab => \AmuxOut[2]~55_combout\,
	datac => \SLL64unit|Mux127~4_combout\,
	datad => \B[1]~input_o\,
	combout => \SLL64unit|Mux190~16_combout\);

-- Location: LCCOMB_X63_Y38_N18
\Y~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~70_combout\ = (\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~70_combout\);

-- Location: LCCOMB_X67_Y43_N18
\Y~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~73_combout\ = (\Y~69_combout\ & (((\Y~70_combout\)))) # (!\Y~69_combout\ & ((\Y~70_combout\ & ((\SLL64unit|Mux190~16_combout\))) # (!\Y~70_combout\ & (\Y~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~72_combout\,
	datab => \SLL64unit|Mux190~16_combout\,
	datac => \Y~69_combout\,
	datad => \Y~70_combout\,
	combout => \Y~73_combout\);

-- Location: LCCOMB_X67_Y43_N12
\Y~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~74_combout\ = (\Y~69_combout\ & ((\Y~73_combout\ & ((\SLL64unit|Mux190~17_combout\))) # (!\Y~73_combout\ & (\C[2]~input_o\)))) # (!\Y~69_combout\ & (((\Y~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~69_combout\,
	datab => \C[2]~input_o\,
	datac => \SLL64unit|Mux190~17_combout\,
	datad => \Y~73_combout\,
	combout => \Y~74_combout\);

-- Location: LCCOMB_X67_Y43_N28
\Y~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~282_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\SRLorSRAout[34]~5_combout\)) # (!\ExtWord~input_o\ & ((\Y~74_combout\))))) # (!\ShiftFN[1]~input_o\ & (((\Y~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \SRLorSRAout[34]~5_combout\,
	datad => \Y~74_combout\,
	combout => \Y~282_combout\);

-- Location: LCCOMB_X65_Y38_N6
\SRL64unit|Mux89~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux89~1_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\AmuxOut[50]~4_combout\))) # (!\B[3]~input_o\ & (\SRA64unit|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA64unit|Mux19~0_combout\,
	datac => \B[3]~input_o\,
	datad => \AmuxOut[50]~4_combout\,
	combout => \SRL64unit|Mux89~1_combout\);

-- Location: LCCOMB_X65_Y38_N0
\SRL64unit|Mux89~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux89~2_combout\ = (\SRL64unit|Mux89~1_combout\) # ((!\B[2]~input_o\ & \SRL64unit|Mux89~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \SRL64unit|Mux89~0_combout\,
	datad => \SRL64unit|Mux89~1_combout\,
	combout => \SRL64unit|Mux89~2_combout\);

-- Location: LCCOMB_X67_Y36_N12
\SRA64unit|Mux156~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~81_combout\ = (\SRA64unit|Mux90~86_combout\ & ((\B[1]~input_o\ & ((\SRL64unit|Mux89~2_combout\))) # (!\B[1]~input_o\ & (\SRL64unit|Mux91~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~86_combout\,
	datab => \B[1]~input_o\,
	datac => \SRL64unit|Mux91~1_combout\,
	datad => \SRL64unit|Mux89~2_combout\,
	combout => \SRA64unit|Mux156~81_combout\);

-- Location: LCCOMB_X67_Y36_N22
\SRA64unit|Mux156~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~82_combout\ = (\SRA64unit|Mux156~81_combout\) # ((\AmuxOut[63]~1_combout\ & !\SRA64unit|Mux90~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~81_combout\,
	datab => \AmuxOut[63]~1_combout\,
	datad => \SRA64unit|Mux90~86_combout\,
	combout => \SRA64unit|Mux156~82_combout\);

-- Location: LCCOMB_X68_Y36_N22
\SRLorSRAout[35]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[35]~6_combout\ = (\ShiftFN[0]~input_o\ & (((\B[0]~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\B[0]~input_o\ & (\SRA64unit|Mux156~81_combout\)) # (!\B[0]~input_o\ & ((\SRA64unit|Mux156~74_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~81_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \SRA64unit|Mux156~74_combout\,
	combout => \SRLorSRAout[35]~6_combout\);

-- Location: LCCOMB_X67_Y36_N8
\SRLorSRAout[35]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[35]~7_combout\ = (\ShiftFN[0]~input_o\ & ((\SRLorSRAout[35]~6_combout\ & (\SRA64unit|Mux156~82_combout\)) # (!\SRLorSRAout[35]~6_combout\ & ((\SRA64unit|Mux156~77_combout\))))) # (!\ShiftFN[0]~input_o\ & (((\SRLorSRAout[35]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~82_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SRA64unit|Mux156~77_combout\,
	datad => \SRLorSRAout[35]~6_combout\,
	combout => \SRLorSRAout[35]~7_combout\);

-- Location: LCCOMB_X65_Y39_N8
\SLL64unit|Mux190~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~18_combout\ = (!\SLL64unit|Mux127~4_combout\ & ((\B[1]~input_o\ & ((\AmuxOut[1]~42_combout\))) # (!\B[1]~input_o\ & (\AmuxOut[3]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[3]~37_combout\,
	datab => \SLL64unit|Mux127~4_combout\,
	datac => \B[1]~input_o\,
	datad => \AmuxOut[1]~42_combout\,
	combout => \SLL64unit|Mux190~18_combout\);

-- Location: LCCOMB_X61_Y40_N30
\SRA64unit|Mux90~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~83_combout\ = (\B[5]~input_o\ & (!\ExtWord~input_o\ & (\AmuxOut[50]~4_combout\ & !\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \AmuxOut[50]~4_combout\,
	datad => \B[4]~input_o\,
	combout => \SRA64unit|Mux90~83_combout\);

-- Location: LCCOMB_X58_Y40_N28
\SRL64unit|Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux45~0_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\AmuxOut[34]~5_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[18]~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \AmuxOut[34]~5_combout\,
	datad => \AmuxOut[18]~56_combout\,
	combout => \SRL64unit|Mux45~0_combout\);

-- Location: LCCOMB_X61_Y40_N8
\SRA64unit|Mux90~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~22_combout\ = (\B[2]~input_o\ & ((\SRA64unit|Mux90~83_combout\) # ((\SRL64unit|Mux45~0_combout\)))) # (!\B[2]~input_o\ & (((\SRA64unit|Mux48~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~83_combout\,
	datab => \SRL64unit|Mux45~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA64unit|Mux48~3_combout\,
	combout => \SRA64unit|Mux90~22_combout\);

-- Location: LCCOMB_X60_Y39_N22
\SRL64unit|Mux121~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux121~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRA64unit|Mux52~3_combout\)) # (!\B[2]~input_o\ & ((\SRA64unit|Mux56~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA64unit|Mux52~3_combout\,
	datac => \SRA64unit|Mux56~3_combout\,
	datad => \B[3]~input_o\,
	combout => \SRL64unit|Mux121~0_combout\);

-- Location: LCCOMB_X61_Y39_N30
\SRA64unit|Mux156~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~83_combout\ = (\B[1]~input_o\ & ((\SRL64unit|Mux121~0_combout\) # ((\SRA64unit|Mux90~22_combout\ & \B[3]~input_o\)))) # (!\B[1]~input_o\ & (((\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~22_combout\,
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRL64unit|Mux121~0_combout\,
	combout => \SRA64unit|Mux156~83_combout\);

-- Location: LCCOMB_X61_Y39_N16
\SRA64unit|Mux156~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~84_combout\ = (\B[1]~input_o\ & (((\SRA64unit|Mux156~83_combout\)))) # (!\B[1]~input_o\ & ((\SRL64unit|Mux123~0_combout\) # ((\SRA64unit|Mux156~83_combout\ & \SRA64unit|Mux90~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux123~0_combout\,
	datab => \B[1]~input_o\,
	datac => \SRA64unit|Mux156~83_combout\,
	datad => \SRA64unit|Mux90~20_combout\,
	combout => \SRA64unit|Mux156~84_combout\);

-- Location: LCCOMB_X66_Y43_N14
\Y~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~75_combout\ = (\ShiftFN[0]~input_o\ & ((\SRA64unit|Mux156~255_combout\) # ((\B[0]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (((!\B[0]~input_o\ & \SRA64unit|Mux156~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~255_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \SRA64unit|Mux156~80_combout\,
	combout => \Y~75_combout\);

-- Location: LCCOMB_X61_Y40_N10
\SRA64unit|Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux44~0_combout\ = (!\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & ((\AmuxOut[63]~1_combout\))) # (!\B[4]~input_o\ & (\AmuxOut[50]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[50]~4_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \AmuxOut[63]~1_combout\,
	datad => \B[4]~input_o\,
	combout => \SRA64unit|Mux44~0_combout\);

-- Location: LCCOMB_X61_Y40_N28
\SRA64unit|Mux44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux44~1_combout\ = (\SRL64unit|Mux45~0_combout\) # (\SRA64unit|Mux44~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64unit|Mux45~0_combout\,
	datad => \SRA64unit|Mux44~0_combout\,
	combout => \SRA64unit|Mux44~1_combout\);

-- Location: LCCOMB_X60_Y38_N0
\SRA64unit|Mux119~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux119~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA64unit|Mux44~1_combout\))) # (!\B[2]~input_o\ & (\SRA64unit|Mux48~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SRA64unit|Mux48~3_combout\,
	datad => \SRA64unit|Mux44~1_combout\,
	combout => \SRA64unit|Mux119~0_combout\);

-- Location: LCCOMB_X61_Y39_N8
\SRA64unit|Mux121~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux121~1_combout\ = (\SRA64unit|Mux121~0_combout\) # (\SRL64unit|Mux123~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64unit|Mux121~0_combout\,
	datad => \SRL64unit|Mux123~0_combout\,
	combout => \SRA64unit|Mux121~1_combout\);

-- Location: LCCOMB_X61_Y39_N20
\SRA64unit|Mux156~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~256_combout\ = (\B[1]~input_o\ & ((\SRA64unit|Mux119~0_combout\) # ((\SRL64unit|Mux121~0_combout\)))) # (!\B[1]~input_o\ & (((\SRA64unit|Mux121~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux119~0_combout\,
	datab => \B[1]~input_o\,
	datac => \SRA64unit|Mux121~1_combout\,
	datad => \SRL64unit|Mux121~0_combout\,
	combout => \SRA64unit|Mux156~256_combout\);

-- Location: LCCOMB_X66_Y43_N8
\Y~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~76_combout\ = (\B[0]~input_o\ & ((\Y~75_combout\ & ((\SRA64unit|Mux156~256_combout\))) # (!\Y~75_combout\ & (\SRA64unit|Mux156~84_combout\)))) # (!\B[0]~input_o\ & (((\Y~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~84_combout\,
	datab => \B[0]~input_o\,
	datac => \Y~75_combout\,
	datad => \SRA64unit|Mux156~256_combout\,
	combout => \Y~76_combout\);

-- Location: LCCOMB_X67_Y43_N22
\Y~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~77_combout\ = (\Y~69_combout\ & (\Y~70_combout\)) # (!\Y~69_combout\ & ((\Y~70_combout\ & (\SLL64unit|Mux190~18_combout\)) # (!\Y~70_combout\ & ((\Y~76_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~69_combout\,
	datab => \Y~70_combout\,
	datac => \SLL64unit|Mux190~18_combout\,
	datad => \Y~76_combout\,
	combout => \Y~77_combout\);

-- Location: IOIBUF_X67_Y73_N1
\C[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(3),
	o => \C[3]~input_o\);

-- Location: LCCOMB_X67_Y43_N0
\Y~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~78_combout\ = (\Y~77_combout\ & ((\SLL64unit|Mux190~16_combout\) # ((!\Y~69_combout\)))) # (!\Y~77_combout\ & (((\Y~69_combout\ & \C[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~77_combout\,
	datab => \SLL64unit|Mux190~16_combout\,
	datac => \Y~69_combout\,
	datad => \C[3]~input_o\,
	combout => \Y~78_combout\);

-- Location: LCCOMB_X67_Y43_N14
\Y~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~283_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\SRLorSRAout[35]~7_combout\)) # (!\ExtWord~input_o\ & ((\Y~78_combout\))))) # (!\ShiftFN[1]~input_o\ & (((\Y~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \SRLorSRAout[35]~7_combout\,
	datad => \Y~78_combout\,
	combout => \Y~283_combout\);

-- Location: LCCOMB_X60_Y39_N16
\SLL64unit|Mux190~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~19_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\) # (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SLL64unit|Mux190~19_combout\);

-- Location: LCCOMB_X60_Y39_N4
\SLL64unit|Mux190~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~97_combout\ = (\B[4]~input_o\ & (!\SLL64unit|Mux190~19_combout\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\)))) # (!\B[4]~input_o\ & ((\ExtWord~input_o\) # ((!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \SLL64unit|Mux190~19_combout\,
	combout => \SLL64unit|Mux190~97_combout\);

-- Location: LCCOMB_X66_Y36_N14
\SRA64unit|Mux156~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~86_combout\ = (!\B[1]~input_o\ & ((\SRL64unit|Mux90~1_combout\) # ((!\B[2]~input_o\ & \SRL64unit|Mux90~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \SRL64unit|Mux90~0_combout\,
	datad => \SRL64unit|Mux90~1_combout\,
	combout => \SRA64unit|Mux156~86_combout\);

-- Location: LCCOMB_X66_Y39_N26
\SRA64unit|Mux78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux78~0_combout\ = (\B[2]~input_o\ & ((\AmuxOut[51]~23_combout\))) # (!\B[2]~input_o\ & (\AmuxOut[47]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AmuxOut[47]~18_combout\,
	datac => \B[2]~input_o\,
	datad => \AmuxOut[51]~23_combout\,
	combout => \SRA64unit|Mux78~0_combout\);

-- Location: LCCOMB_X63_Y39_N2
\SRA64unit|Mux90~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~23_combout\ = (\B[2]~input_o\ & ((\SRA64unit|Mux19~10_combout\))) # (!\B[2]~input_o\ & (\SRA64unit|Mux19~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \SRA64unit|Mux19~9_combout\,
	datad => \SRA64unit|Mux19~10_combout\,
	combout => \SRA64unit|Mux90~23_combout\);

-- Location: LCCOMB_X67_Y38_N2
\SRA64unit|Mux156~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~87_combout\ = (\B[1]~input_o\ & ((\B[3]~input_o\ & (\SRA64unit|Mux78~0_combout\)) # (!\B[3]~input_o\ & ((\SRA64unit|Mux90~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux78~0_combout\,
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux90~23_combout\,
	combout => \SRA64unit|Mux156~87_combout\);

-- Location: LCCOMB_X66_Y36_N8
\SRA64unit|Mux156~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~88_combout\ = (\SLL64unit|Mux190~97_combout\ & ((\SRA64unit|Mux156~86_combout\) # ((\SRA64unit|Mux156~87_combout\)))) # (!\SLL64unit|Mux190~97_combout\ & (((\AmuxOut[63]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux190~97_combout\,
	datab => \SRA64unit|Mux156~86_combout\,
	datac => \AmuxOut[63]~1_combout\,
	datad => \SRA64unit|Mux156~87_combout\,
	combout => \SRA64unit|Mux156~88_combout\);

-- Location: LCCOMB_X66_Y39_N0
\SRL64unit|Mux80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux80~0_combout\ = (\B[2]~input_o\ & (\AmuxOut[51]~23_combout\)) # (!\B[2]~input_o\ & ((\SRA64unit|Mux19~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[51]~23_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA64unit|Mux19~8_combout\,
	combout => \SRL64unit|Mux80~0_combout\);

-- Location: LCCOMB_X67_Y38_N8
\SRL64unit|Mux88~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux88~0_combout\ = (\B[3]~input_o\ & ((\SRL64unit|Mux80~0_combout\))) # (!\B[3]~input_o\ & (\SRA64unit|Mux90~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64unit|Mux90~23_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL64unit|Mux80~0_combout\,
	combout => \SRL64unit|Mux88~0_combout\);

-- Location: LCCOMB_X67_Y36_N10
\SRA64unit|Mux156~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~85_combout\ = (\SRA64unit|Mux90~86_combout\ & ((\B[1]~input_o\ & ((\SRL64unit|Mux88~0_combout\))) # (!\B[1]~input_o\ & (\SRL64unit|Mux90~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux90~2_combout\,
	datab => \B[1]~input_o\,
	datac => \SRL64unit|Mux88~0_combout\,
	datad => \SRA64unit|Mux90~86_combout\,
	combout => \SRA64unit|Mux156~85_combout\);

-- Location: LCCOMB_X67_Y36_N28
\SRLorSRAout[36]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[36]~8_combout\ = (\B[0]~input_o\ & ((\SRA64unit|Mux156~85_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & (((!\ShiftFN[0]~input_o\ & \SRA64unit|Mux156~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~85_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~81_combout\,
	combout => \SRLorSRAout[36]~8_combout\);

-- Location: LCCOMB_X67_Y36_N6
\SRLorSRAout[36]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[36]~9_combout\ = (\ShiftFN[0]~input_o\ & ((\SRLorSRAout[36]~8_combout\ & (\SRA64unit|Mux156~88_combout\)) # (!\SRLorSRAout[36]~8_combout\ & ((\SRA64unit|Mux156~82_combout\))))) # (!\ShiftFN[0]~input_o\ & (((\SRLorSRAout[36]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~88_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SRA64unit|Mux156~82_combout\,
	datad => \SRLorSRAout[36]~8_combout\,
	combout => \SRLorSRAout[36]~9_combout\);

-- Location: LCCOMB_X66_Y43_N22
\Y~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~79_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & (\SRA64unit|Mux156~256_combout\)) # (!\ShiftFN[0]~input_o\ & ((\SRA64unit|Mux156~84_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~256_combout\,
	datab => \B[0]~input_o\,
	datac => \SRA64unit|Mux156~84_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y~79_combout\);

-- Location: LCCOMB_X59_Y43_N2
\SRA64unit|Mux90~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~84_combout\ = (\AmuxOut[51]~23_combout\ & (!\ExtWord~input_o\ & (!\B[4]~input_o\ & \B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[51]~23_combout\,
	datab => \ExtWord~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[5]~input_o\,
	combout => \SRA64unit|Mux90~84_combout\);

-- Location: LCCOMB_X59_Y43_N6
\SRL64unit|Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux44~0_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\AmuxOut[35]~24_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[19]~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[35]~24_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \AmuxOut[19]~40_combout\,
	combout => \SRL64unit|Mux44~0_combout\);

-- Location: LCCOMB_X62_Y43_N4
\SRA64unit|Mux90~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~24_combout\ = (\B[2]~input_o\ & ((\SRA64unit|Mux90~84_combout\) # ((\SRL64unit|Mux44~0_combout\)))) # (!\B[2]~input_o\ & (((\SRA64unit|Mux47~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~84_combout\,
	datab => \SRL64unit|Mux44~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA64unit|Mux47~3_combout\,
	combout => \SRA64unit|Mux90~24_combout\);

-- Location: LCCOMB_X62_Y43_N2
\SRL64unit|Mux120~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux120~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRA64unit|Mux51~3_combout\)) # (!\B[2]~input_o\ & ((\SRA64unit|Mux55~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64unit|Mux51~3_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA64unit|Mux55~3_combout\,
	combout => \SRL64unit|Mux120~0_combout\);

-- Location: LCCOMB_X66_Y43_N18
\SRA64unit|Mux156~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~89_combout\ = (\B[1]~input_o\ & ((\SRL64unit|Mux120~0_combout\) # ((\SRA64unit|Mux90~24_combout\ & \B[3]~input_o\)))) # (!\B[1]~input_o\ & (((\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~24_combout\,
	datab => \SRL64unit|Mux120~0_combout\,
	datac => \B[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SRA64unit|Mux156~89_combout\);

-- Location: LCCOMB_X66_Y43_N4
\SRA64unit|Mux156~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~90_combout\ = (\B[1]~input_o\ & (((\SRA64unit|Mux156~89_combout\)))) # (!\B[1]~input_o\ & ((\SRL64unit|Mux122~0_combout\) # ((\SRA64unit|Mux90~21_combout\ & \SRA64unit|Mux156~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~21_combout\,
	datab => \SRL64unit|Mux122~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux156~89_combout\,
	combout => \SRA64unit|Mux156~90_combout\);

-- Location: LCCOMB_X66_Y39_N20
\SRA64unit|Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux43~0_combout\ = (!\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\AmuxOut[63]~1_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[51]~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \AmuxOut[63]~1_combout\,
	datac => \B[4]~input_o\,
	datad => \AmuxOut[51]~23_combout\,
	combout => \SRA64unit|Mux43~0_combout\);

-- Location: LCCOMB_X62_Y43_N22
\SRA64unit|Mux43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux43~1_combout\ = (\SRA64unit|Mux43~0_combout\) # (\SRL64unit|Mux44~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64unit|Mux43~0_combout\,
	datac => \SRL64unit|Mux44~0_combout\,
	combout => \SRA64unit|Mux43~1_combout\);

-- Location: LCCOMB_X62_Y43_N0
\SRA64unit|Mux118~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux118~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRA64unit|Mux43~1_combout\)) # (!\B[2]~input_o\ & ((\SRA64unit|Mux47~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64unit|Mux43~1_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA64unit|Mux47~3_combout\,
	combout => \SRA64unit|Mux118~0_combout\);

-- Location: LCCOMB_X66_Y43_N10
\SRA64unit|Mux120~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux120~1_combout\ = (\SRA64unit|Mux120~0_combout\) # (\SRL64unit|Mux122~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64unit|Mux120~0_combout\,
	datac => \SRL64unit|Mux122~0_combout\,
	combout => \SRA64unit|Mux120~1_combout\);

-- Location: LCCOMB_X66_Y43_N6
\SRA64unit|Mux156~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~257_combout\ = (\B[1]~input_o\ & ((\SRA64unit|Mux118~0_combout\) # ((\SRL64unit|Mux120~0_combout\)))) # (!\B[1]~input_o\ & (((\SRA64unit|Mux120~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux118~0_combout\,
	datab => \SRL64unit|Mux120~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux120~1_combout\,
	combout => \SRA64unit|Mux156~257_combout\);

-- Location: LCCOMB_X66_Y43_N2
\Y~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~80_combout\ = (\Y~79_combout\ & (((\SRA64unit|Mux156~257_combout\)) # (!\B[0]~input_o\))) # (!\Y~79_combout\ & (\B[0]~input_o\ & (\SRA64unit|Mux156~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~79_combout\,
	datab => \B[0]~input_o\,
	datac => \SRA64unit|Mux156~90_combout\,
	datad => \SRA64unit|Mux156~257_combout\,
	combout => \Y~80_combout\);

-- Location: LCCOMB_X57_Y39_N24
\SLL64unit|Mux190~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~20_combout\ = (\B[2]~input_o\ & (\AmuxOut[0]~0_combout\)) # (!\B[2]~input_o\ & ((\AmuxOut[4]~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[0]~0_combout\,
	datab => \AmuxOut[4]~60_combout\,
	datad => \B[2]~input_o\,
	combout => \SLL64unit|Mux190~20_combout\);

-- Location: LCCOMB_X57_Y39_N14
\SLL64unit|Mux190~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~93_combout\ = (\B[3]~input_o\) # (((\B[2]~input_o\ & \B[1]~input_o\)) # (!\SRL64unit|Mux47~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \SRL64unit|Mux47~0_combout\,
	datad => \B[1]~input_o\,
	combout => \SLL64unit|Mux190~93_combout\);

-- Location: LCCOMB_X57_Y39_N10
\SLL64unit|Mux190~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~22_combout\ = (!\SLL64unit|Mux190~93_combout\ & ((\B[1]~input_o\ & ((\AmuxOut[2]~55_combout\))) # (!\B[1]~input_o\ & (\SLL64unit|Mux190~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL64unit|Mux190~20_combout\,
	datac => \AmuxOut[2]~55_combout\,
	datad => \SLL64unit|Mux190~93_combout\,
	combout => \SLL64unit|Mux190~22_combout\);

-- Location: LCCOMB_X67_Y43_N26
\Y~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~81_combout\ = (\Y~69_combout\ & (((\Y~70_combout\)))) # (!\Y~69_combout\ & ((\Y~70_combout\ & ((\SLL64unit|Mux190~22_combout\))) # (!\Y~70_combout\ & (\Y~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~80_combout\,
	datab => \SLL64unit|Mux190~22_combout\,
	datac => \Y~69_combout\,
	datad => \Y~70_combout\,
	combout => \Y~81_combout\);

-- Location: IOIBUF_X83_Y73_N8
\C[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(4),
	o => \C[4]~input_o\);

-- Location: LCCOMB_X67_Y43_N20
\Y~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~82_combout\ = (\Y~69_combout\ & ((\Y~81_combout\ & (\SLL64unit|Mux190~18_combout\)) # (!\Y~81_combout\ & ((\C[4]~input_o\))))) # (!\Y~69_combout\ & (((\Y~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~69_combout\,
	datab => \SLL64unit|Mux190~18_combout\,
	datac => \Y~81_combout\,
	datad => \C[4]~input_o\,
	combout => \Y~82_combout\);

-- Location: LCCOMB_X67_Y43_N16
\Y~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~284_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\SRLorSRAout[36]~9_combout\)) # (!\ExtWord~input_o\ & ((\Y~82_combout\))))) # (!\ShiftFN[1]~input_o\ & (((\Y~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \SRLorSRAout[36]~9_combout\,
	datad => \Y~82_combout\,
	combout => \Y~284_combout\);

-- Location: IOIBUF_X74_Y73_N22
\C[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(5),
	o => \C[5]~input_o\);

-- Location: LCCOMB_X60_Y36_N4
\SRL64unit|Mux119~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux119~1_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA64unit|Mux50~3_combout\))) # (!\B[2]~input_o\ & (\SRA64unit|Mux54~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA64unit|Mux54~3_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux50~3_combout\,
	combout => \SRL64unit|Mux119~1_combout\);

-- Location: LCCOMB_X61_Y39_N2
\SRA64unit|Mux119~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux119~1_combout\ = (\SRA64unit|Mux119~0_combout\) # (\SRL64unit|Mux121~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRA64unit|Mux119~0_combout\,
	datad => \SRL64unit|Mux121~0_combout\,
	combout => \SRA64unit|Mux119~1_combout\);

-- Location: LCCOMB_X61_Y35_N4
\SRL64unit|Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux43~0_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & ((\AmuxOut[36]~11_combout\))) # (!\B[4]~input_o\ & (\AmuxOut[20]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \AmuxOut[20]~59_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \AmuxOut[36]~11_combout\,
	combout => \SRL64unit|Mux43~0_combout\);

-- Location: LCCOMB_X61_Y35_N30
\SRA64unit|Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux42~0_combout\ = (!\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\AmuxOut[63]~1_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[52]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \AmuxOut[63]~1_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \AmuxOut[52]~10_combout\,
	combout => \SRA64unit|Mux42~0_combout\);

-- Location: LCCOMB_X61_Y35_N8
\SRA64unit|Mux42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux42~1_combout\ = (\SRL64unit|Mux43~0_combout\) # (\SRA64unit|Mux42~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64unit|Mux43~0_combout\,
	datac => \SRA64unit|Mux42~0_combout\,
	combout => \SRA64unit|Mux42~1_combout\);

-- Location: LCCOMB_X60_Y36_N14
\SRA64unit|Mux117~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux117~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRA64unit|Mux42~1_combout\)) # (!\B[2]~input_o\ & ((\SRA64unit|Mux46~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA64unit|Mux42~1_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux46~1_combout\,
	combout => \SRA64unit|Mux117~0_combout\);

-- Location: LCCOMB_X61_Y39_N14
\SRA64unit|Mux156~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~258_combout\ = (\B[1]~input_o\ & ((\SRL64unit|Mux119~1_combout\) # ((\SRA64unit|Mux117~0_combout\)))) # (!\B[1]~input_o\ & (((\SRA64unit|Mux119~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux119~1_combout\,
	datab => \SRA64unit|Mux119~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux117~0_combout\,
	combout => \SRA64unit|Mux156~258_combout\);

-- Location: LCCOMB_X61_Y40_N18
\SRA64unit|Mux90~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~19_combout\ = (\B[5]~input_o\ & (!\ExtWord~input_o\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \B[4]~input_o\,
	combout => \SRA64unit|Mux90~19_combout\);

-- Location: LCCOMB_X62_Y39_N18
\SRA64unit|Mux90~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~26_combout\ = (\SRA64unit|Mux90~19_combout\ & ((\B[2]~input_o\ & (\AmuxOut[52]~10_combout\)) # (!\B[2]~input_o\ & ((\AmuxOut[48]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[52]~10_combout\,
	datab => \B[2]~input_o\,
	datac => \SRA64unit|Mux90~19_combout\,
	datad => \AmuxOut[48]~12_combout\,
	combout => \SRA64unit|Mux90~26_combout\);

-- Location: LCCOMB_X62_Y39_N20
\SRA64unit|Mux90~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~27_combout\ = (\SRA64unit|Mux90~26_combout\) # ((\B[2]~input_o\ & (\SRL64unit|Mux43~0_combout\)) # (!\B[2]~input_o\ & ((\SRL64unit|Mux47~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux43~0_combout\,
	datab => \B[2]~input_o\,
	datac => \SRL64unit|Mux47~1_combout\,
	datad => \SRA64unit|Mux90~26_combout\,
	combout => \SRA64unit|Mux90~27_combout\);

-- Location: LCCOMB_X61_Y39_N22
\SRA64unit|Mux156~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~94_combout\ = (\SRL64unit|Mux119~1_combout\) # ((\B[3]~input_o\ & \SRA64unit|Mux90~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux119~1_combout\,
	datab => \B[3]~input_o\,
	datac => \SRA64unit|Mux90~27_combout\,
	combout => \SRA64unit|Mux156~94_combout\);

-- Location: LCCOMB_X61_Y39_N4
\SRA64unit|Mux156~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~93_combout\ = (!\B[1]~input_o\ & ((\SRL64unit|Mux121~0_combout\) # ((\SRA64unit|Mux90~22_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~22_combout\,
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRL64unit|Mux121~0_combout\,
	combout => \SRA64unit|Mux156~93_combout\);

-- Location: LCCOMB_X61_Y39_N24
\SRA64unit|Mux156~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~95_combout\ = (\SRA64unit|Mux156~93_combout\) # ((\B[1]~input_o\ & \SRA64unit|Mux156~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \SRA64unit|Mux156~94_combout\,
	datad => \SRA64unit|Mux156~93_combout\,
	combout => \SRA64unit|Mux156~95_combout\);

-- Location: LCCOMB_X66_Y43_N28
\Y~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~83_combout\ = (\ShiftFN[0]~input_o\ & ((\SRA64unit|Mux156~257_combout\) # ((\B[0]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (((\SRA64unit|Mux156~90_combout\ & !\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~257_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SRA64unit|Mux156~90_combout\,
	datad => \B[0]~input_o\,
	combout => \Y~83_combout\);

-- Location: LCCOMB_X66_Y43_N30
\Y~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~84_combout\ = (\B[0]~input_o\ & ((\Y~83_combout\ & (\SRA64unit|Mux156~258_combout\)) # (!\Y~83_combout\ & ((\SRA64unit|Mux156~95_combout\))))) # (!\B[0]~input_o\ & (((\Y~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~258_combout\,
	datab => \B[0]~input_o\,
	datac => \SRA64unit|Mux156~95_combout\,
	datad => \Y~83_combout\,
	combout => \Y~84_combout\);

-- Location: LCCOMB_X65_Y39_N26
\SLL64unit|Mux190~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~23_combout\ = (\B[2]~input_o\ & ((\AmuxOut[1]~42_combout\))) # (!\B[2]~input_o\ & (\AmuxOut[5]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \AmuxOut[5]~44_combout\,
	datad => \AmuxOut[1]~42_combout\,
	combout => \SLL64unit|Mux190~23_combout\);

-- Location: LCCOMB_X65_Y39_N20
\SLL64unit|Mux190~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~24_combout\ = (!\SLL64unit|Mux190~93_combout\ & ((\B[1]~input_o\ & (\AmuxOut[3]~37_combout\)) # (!\B[1]~input_o\ & ((\SLL64unit|Mux190~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[3]~37_combout\,
	datab => \B[1]~input_o\,
	datac => \SLL64unit|Mux190~23_combout\,
	datad => \SLL64unit|Mux190~93_combout\,
	combout => \SLL64unit|Mux190~24_combout\);

-- Location: LCCOMB_X65_Y42_N0
\Y~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~85_combout\ = (\Y~69_combout\ & (\Y~70_combout\)) # (!\Y~69_combout\ & ((\Y~70_combout\ & ((\SLL64unit|Mux190~24_combout\))) # (!\Y~70_combout\ & (\Y~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~69_combout\,
	datab => \Y~70_combout\,
	datac => \Y~84_combout\,
	datad => \SLL64unit|Mux190~24_combout\,
	combout => \Y~85_combout\);

-- Location: LCCOMB_X67_Y43_N30
\Y~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~86_combout\ = (\Y~69_combout\ & ((\Y~85_combout\ & ((\SLL64unit|Mux190~22_combout\))) # (!\Y~85_combout\ & (\C[5]~input_o\)))) # (!\Y~69_combout\ & (((\Y~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[5]~input_o\,
	datab => \SLL64unit|Mux190~22_combout\,
	datac => \Y~69_combout\,
	datad => \Y~85_combout\,
	combout => \Y~86_combout\);

-- Location: LCCOMB_X62_Y36_N10
\SRL64unit|Mux87~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux87~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA64unit|Mux19~6_combout\))) # (!\B[2]~input_o\ & (\SRA64unit|Mux19~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA64unit|Mux19~7_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux19~6_combout\,
	combout => \SRL64unit|Mux87~0_combout\);

-- Location: LCCOMB_X62_Y39_N16
\SRA64unit|Mux90~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~25_combout\ = (\B[2]~input_o\ & (\AmuxOut[52]~10_combout\)) # (!\B[2]~input_o\ & ((\AmuxOut[48]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \AmuxOut[52]~10_combout\,
	datad => \AmuxOut[48]~12_combout\,
	combout => \SRA64unit|Mux90~25_combout\);

-- Location: LCCOMB_X62_Y36_N20
\SRL64unit|Mux87~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux87~1_combout\ = (\SRL64unit|Mux87~0_combout\) # ((\B[3]~input_o\ & \SRA64unit|Mux90~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux87~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux90~25_combout\,
	combout => \SRL64unit|Mux87~1_combout\);

-- Location: LCCOMB_X67_Y36_N0
\SRA64unit|Mux156~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~91_combout\ = (\SLL64unit|Mux190~97_combout\ & ((\B[1]~input_o\ & (\SRL64unit|Mux87~1_combout\)) # (!\B[1]~input_o\ & ((\SRL64unit|Mux89~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux87~1_combout\,
	datab => \B[1]~input_o\,
	datac => \SLL64unit|Mux190~97_combout\,
	datad => \SRL64unit|Mux89~2_combout\,
	combout => \SRA64unit|Mux156~91_combout\);

-- Location: LCCOMB_X67_Y36_N18
\SRLorSRAout[37]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[37]~10_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\) # (\SRA64unit|Mux156~91_combout\)))) # (!\B[0]~input_o\ & (\SRA64unit|Mux156~85_combout\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~85_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~91_combout\,
	combout => \SRLorSRAout[37]~10_combout\);

-- Location: LCCOMB_X67_Y36_N20
\SRA64unit|Mux156~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~92_combout\ = (\SRA64unit|Mux156~91_combout\) # ((\AmuxOut[63]~1_combout\ & !\SLL64unit|Mux190~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AmuxOut[63]~1_combout\,
	datac => \SLL64unit|Mux190~97_combout\,
	datad => \SRA64unit|Mux156~91_combout\,
	combout => \SRA64unit|Mux156~92_combout\);

-- Location: LCCOMB_X67_Y36_N14
\SRLorSRAout[37]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[37]~11_combout\ = (\SRLorSRAout[37]~10_combout\ & (((\SRA64unit|Mux156~92_combout\) # (!\ShiftFN[0]~input_o\)))) # (!\SRLorSRAout[37]~10_combout\ & (\SRA64unit|Mux156~88_combout\ & (\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~88_combout\,
	datab => \SRLorSRAout[37]~10_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~92_combout\,
	combout => \SRLorSRAout[37]~11_combout\);

-- Location: LCCOMB_X67_Y43_N2
\Y~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~285_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\SRLorSRAout[37]~11_combout\))) # (!\ShiftFN[1]~input_o\ & (\Y~86_combout\)))) # (!\ExtWord~input_o\ & (\Y~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~86_combout\,
	datab => \ExtWord~input_o\,
	datac => \SRLorSRAout[37]~11_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~285_combout\);

-- Location: LCCOMB_X70_Y38_N20
\SRA64unit|Mux86~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux86~0_combout\ = (\ExtWord~input_o\ & (((!\B[4]~input_o\)) # (!\B[3]~input_o\))) # (!\ExtWord~input_o\ & (!\B[5]~input_o\ & ((!\B[4]~input_o\) # (!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[5]~input_o\,
	combout => \SRA64unit|Mux86~0_combout\);

-- Location: LCCOMB_X66_Y36_N10
\SRL64unit|Mux86~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux86~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRA64unit|Mux19~14_combout\)) # (!\B[2]~input_o\ & ((\SRA64unit|Mux19~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64unit|Mux19~14_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA64unit|Mux19~12_combout\,
	combout => \SRL64unit|Mux86~0_combout\);

-- Location: LCCOMB_X70_Y40_N24
\SRA64unit|Mux90~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~28_combout\ = (\B[2]~input_o\ & (\AmuxOut[53]~31_combout\)) # (!\B[2]~input_o\ & ((\AmuxOut[49]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \AmuxOut[53]~31_combout\,
	datad => \AmuxOut[49]~27_combout\,
	combout => \SRA64unit|Mux90~28_combout\);

-- Location: LCCOMB_X67_Y38_N22
\SRA64unit|Mux156~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~97_combout\ = (\B[1]~input_o\ & ((\SRL64unit|Mux86~0_combout\) # ((\B[3]~input_o\ & \SRA64unit|Mux90~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux86~0_combout\,
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux90~28_combout\,
	combout => \SRA64unit|Mux156~97_combout\);

-- Location: LCCOMB_X67_Y38_N24
\SRA64unit|Mux156~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~98_combout\ = (!\B[1]~input_o\ & ((\B[3]~input_o\ & (\SRA64unit|Mux78~0_combout\)) # (!\B[3]~input_o\ & ((\SRA64unit|Mux90~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux78~0_combout\,
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux90~23_combout\,
	combout => \SRA64unit|Mux156~98_combout\);

-- Location: LCCOMB_X67_Y38_N26
\SRA64unit|Mux156~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~99_combout\ = (\SRA64unit|Mux86~0_combout\ & (((\SRA64unit|Mux156~97_combout\) # (\SRA64unit|Mux156~98_combout\)))) # (!\SRA64unit|Mux86~0_combout\ & (\AmuxOut[63]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[63]~1_combout\,
	datab => \SRA64unit|Mux86~0_combout\,
	datac => \SRA64unit|Mux156~97_combout\,
	datad => \SRA64unit|Mux156~98_combout\,
	combout => \SRA64unit|Mux156~99_combout\);

-- Location: LCCOMB_X67_Y38_N20
\SRL64unit|Mux86~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux86~1_combout\ = (\SRL64unit|Mux86~0_combout\) # ((\B[3]~input_o\ & \SRA64unit|Mux90~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux86~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux90~28_combout\,
	combout => \SRL64unit|Mux86~1_combout\);

-- Location: LCCOMB_X67_Y36_N16
\SRA64unit|Mux156~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~96_combout\ = (\SLL64unit|Mux190~97_combout\ & ((\B[1]~input_o\ & ((\SRL64unit|Mux86~1_combout\))) # (!\B[1]~input_o\ & (\SRL64unit|Mux88~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux88~0_combout\,
	datab => \SLL64unit|Mux190~97_combout\,
	datac => \SRL64unit|Mux86~1_combout\,
	datad => \B[1]~input_o\,
	combout => \SRA64unit|Mux156~96_combout\);

-- Location: LCCOMB_X68_Y38_N16
\SRLorSRAout[38]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[38]~12_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\) # (\SRA64unit|Mux156~96_combout\)))) # (!\B[0]~input_o\ & (\SRA64unit|Mux156~91_combout\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRA64unit|Mux156~91_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~96_combout\,
	combout => \SRLorSRAout[38]~12_combout\);

-- Location: LCCOMB_X67_Y36_N2
\SRLorSRAout[38]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[38]~13_combout\ = (\ShiftFN[0]~input_o\ & ((\SRLorSRAout[38]~12_combout\ & (\SRA64unit|Mux156~99_combout\)) # (!\SRLorSRAout[38]~12_combout\ & ((\SRA64unit|Mux156~92_combout\))))) # (!\ShiftFN[0]~input_o\ & (((\SRLorSRAout[38]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~99_combout\,
	datab => \SRA64unit|Mux156~92_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRLorSRAout[38]~12_combout\,
	combout => \SRLorSRAout[38]~13_combout\);

-- Location: IOIBUF_X42_Y73_N1
\C[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(6),
	o => \C[6]~input_o\);

-- Location: LCCOMB_X66_Y43_N26
\Y~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~87_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & (\SRA64unit|Mux156~258_combout\)) # (!\ShiftFN[0]~input_o\ & ((\SRA64unit|Mux156~95_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~258_combout\,
	datab => \B[0]~input_o\,
	datac => \SRA64unit|Mux156~95_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y~87_combout\);

-- Location: LCCOMB_X66_Y43_N16
\SRA64unit|Mux156~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~100_combout\ = (!\B[1]~input_o\ & ((\SRL64unit|Mux120~0_combout\) # ((\SRA64unit|Mux90~24_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~24_combout\,
	datab => \SRL64unit|Mux120~0_combout\,
	datac => \B[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SRA64unit|Mux156~100_combout\);

-- Location: LCCOMB_X66_Y42_N10
\SRL64unit|Mux118~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux118~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRA64unit|Mux49~3_combout\)) # (!\B[2]~input_o\ & ((\SRA64unit|Mux53~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA64unit|Mux49~3_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux53~3_combout\,
	combout => \SRL64unit|Mux118~0_combout\);

-- Location: LCCOMB_X66_Y41_N30
\SRL64unit|Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux42~0_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & ((\AmuxOut[37]~32_combout\))) # (!\B[4]~input_o\ & (\AmuxOut[21]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \AmuxOut[21]~43_combout\,
	datad => \AmuxOut[37]~32_combout\,
	combout => \SRL64unit|Mux42~0_combout\);

-- Location: LCCOMB_X66_Y41_N28
\SRA64unit|Mux90~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~29_combout\ = (\SRA64unit|Mux90~19_combout\ & ((\B[2]~input_o\ & (\AmuxOut[53]~31_combout\)) # (!\B[2]~input_o\ & ((\AmuxOut[49]~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \AmuxOut[53]~31_combout\,
	datac => \SRA64unit|Mux90~19_combout\,
	datad => \AmuxOut[49]~27_combout\,
	combout => \SRA64unit|Mux90~29_combout\);

-- Location: LCCOMB_X66_Y42_N28
\SRA64unit|Mux90~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~30_combout\ = (\SRA64unit|Mux90~29_combout\) # ((\B[2]~input_o\ & ((\SRL64unit|Mux42~0_combout\))) # (!\B[2]~input_o\ & (\SRL64unit|Mux46~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRL64unit|Mux46~0_combout\,
	datac => \SRL64unit|Mux42~0_combout\,
	datad => \SRA64unit|Mux90~29_combout\,
	combout => \SRA64unit|Mux90~30_combout\);

-- Location: LCCOMB_X66_Y42_N6
\SRA64unit|Mux156~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~101_combout\ = (\SRL64unit|Mux118~0_combout\) # ((\B[3]~input_o\ & \SRA64unit|Mux90~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \SRL64unit|Mux118~0_combout\,
	datad => \SRA64unit|Mux90~30_combout\,
	combout => \SRA64unit|Mux156~101_combout\);

-- Location: LCCOMB_X63_Y42_N8
\SRA64unit|Mux156~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~102_combout\ = (\SRA64unit|Mux156~100_combout\) # ((\SRA64unit|Mux156~101_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64unit|Mux156~100_combout\,
	datac => \SRA64unit|Mux156~101_combout\,
	datad => \B[1]~input_o\,
	combout => \SRA64unit|Mux156~102_combout\);

-- Location: LCCOMB_X66_Y41_N8
\SRA64unit|Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux41~0_combout\ = (!\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\AmuxOut[63]~1_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[53]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[63]~1_combout\,
	datab => \AmuxOut[53]~31_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SRA64unit|Mux41~0_combout\);

-- Location: LCCOMB_X66_Y40_N10
\SRA64unit|Mux41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux41~1_combout\ = (\SRL64unit|Mux42~0_combout\) # (\SRA64unit|Mux41~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRL64unit|Mux42~0_combout\,
	datad => \SRA64unit|Mux41~0_combout\,
	combout => \SRA64unit|Mux41~1_combout\);

-- Location: LCCOMB_X66_Y40_N28
\SRA64unit|Mux116~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux116~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA64unit|Mux41~1_combout\))) # (!\B[2]~input_o\ & (\SRA64unit|Mux45~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SRA64unit|Mux45~1_combout\,
	datad => \SRA64unit|Mux41~1_combout\,
	combout => \SRA64unit|Mux116~0_combout\);

-- Location: LCCOMB_X66_Y43_N0
\SRA64unit|Mux118~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux118~1_combout\ = (\SRA64unit|Mux118~0_combout\) # (\SRL64unit|Mux120~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux118~0_combout\,
	datac => \SRL64unit|Mux120~0_combout\,
	combout => \SRA64unit|Mux118~1_combout\);

-- Location: LCCOMB_X62_Y42_N28
\SRA64unit|Mux156~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~259_combout\ = (\B[1]~input_o\ & ((\SRL64unit|Mux118~0_combout\) # ((\SRA64unit|Mux116~0_combout\)))) # (!\B[1]~input_o\ & (((\SRA64unit|Mux118~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux118~0_combout\,
	datab => \SRA64unit|Mux116~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux118~1_combout\,
	combout => \SRA64unit|Mux156~259_combout\);

-- Location: LCCOMB_X63_Y42_N2
\Y~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~88_combout\ = (\Y~87_combout\ & (((\SRA64unit|Mux156~259_combout\)) # (!\B[0]~input_o\))) # (!\Y~87_combout\ & (\B[0]~input_o\ & (\SRA64unit|Mux156~102_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~87_combout\,
	datab => \B[0]~input_o\,
	datac => \SRA64unit|Mux156~102_combout\,
	datad => \SRA64unit|Mux156~259_combout\,
	combout => \Y~88_combout\);

-- Location: LCCOMB_X57_Y39_N28
\SLL64unit|Mux190~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~26_combout\ = (\B[2]~input_o\ & (\AmuxOut[2]~55_combout\)) # (!\B[2]~input_o\ & ((\AmuxOut[6]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \AmuxOut[2]~55_combout\,
	datac => \AmuxOut[6]~54_combout\,
	combout => \SLL64unit|Mux190~26_combout\);

-- Location: LCCOMB_X70_Y38_N22
\SLL64unit|Mux190~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~25_combout\ = (!\B[3]~input_o\ & (!\B[4]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[5]~input_o\,
	combout => \SLL64unit|Mux190~25_combout\);

-- Location: LCCOMB_X57_Y39_N22
\SLL64unit|Mux190~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~27_combout\ = (\SLL64unit|Mux190~25_combout\ & ((\B[1]~input_o\ & ((\SLL64unit|Mux190~20_combout\))) # (!\B[1]~input_o\ & (\SLL64unit|Mux190~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL64unit|Mux190~26_combout\,
	datac => \SLL64unit|Mux190~25_combout\,
	datad => \SLL64unit|Mux190~20_combout\,
	combout => \SLL64unit|Mux190~27_combout\);

-- Location: LCCOMB_X65_Y42_N10
\Y~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~89_combout\ = (\Y~69_combout\ & (((\Y~70_combout\)))) # (!\Y~69_combout\ & ((\Y~70_combout\ & ((\SLL64unit|Mux190~27_combout\))) # (!\Y~70_combout\ & (\Y~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~69_combout\,
	datab => \Y~88_combout\,
	datac => \Y~70_combout\,
	datad => \SLL64unit|Mux190~27_combout\,
	combout => \Y~89_combout\);

-- Location: LCCOMB_X65_Y42_N28
\Y~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~90_combout\ = (\Y~69_combout\ & ((\Y~89_combout\ & (\SLL64unit|Mux190~24_combout\)) # (!\Y~89_combout\ & ((\C[6]~input_o\))))) # (!\Y~69_combout\ & (((\Y~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~69_combout\,
	datab => \SLL64unit|Mux190~24_combout\,
	datac => \C[6]~input_o\,
	datad => \Y~89_combout\,
	combout => \Y~90_combout\);

-- Location: LCCOMB_X73_Y41_N0
\Y~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~286_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\SRLorSRAout[38]~13_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Y~90_combout\))))) # (!\ExtWord~input_o\ & (((\Y~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \SRLorSRAout[38]~13_combout\,
	datad => \Y~90_combout\,
	combout => \Y~286_combout\);

-- Location: LCCOMB_X63_Y42_N6
\Y~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~91_combout\ = (\ShiftFN[0]~input_o\ & ((\B[0]~input_o\) # ((\SRA64unit|Mux156~259_combout\)))) # (!\ShiftFN[0]~input_o\ & (!\B[0]~input_o\ & (\SRA64unit|Mux156~102_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SRA64unit|Mux156~102_combout\,
	datad => \SRA64unit|Mux156~259_combout\,
	combout => \Y~91_combout\);

-- Location: LCCOMB_X61_Y39_N26
\SRA64unit|Mux117~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux117~1_combout\ = (\SRL64unit|Mux119~1_combout\) # (\SRA64unit|Mux117~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRL64unit|Mux119~1_combout\,
	datad => \SRA64unit|Mux117~0_combout\,
	combout => \SRA64unit|Mux117~1_combout\);

-- Location: LCCOMB_X60_Y39_N26
\SRL64unit|Mux117~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux117~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA64unit|Mux48~3_combout\))) # (!\B[2]~input_o\ & (\SRA64unit|Mux52~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA64unit|Mux52~3_combout\,
	datac => \SRA64unit|Mux48~3_combout\,
	datad => \B[3]~input_o\,
	combout => \SRL64unit|Mux117~0_combout\);

-- Location: LCCOMB_X61_Y40_N6
\SRA64unit|Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux40~0_combout\ = (!\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\AmuxOut[63]~1_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[54]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \AmuxOut[63]~1_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \AmuxOut[54]~8_combout\,
	combout => \SRA64unit|Mux40~0_combout\);

-- Location: LCCOMB_X61_Y40_N26
\SRL64unit|Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux41~0_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\AmuxOut[38]~9_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[22]~53_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[38]~9_combout\,
	datab => \B[4]~input_o\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \AmuxOut[22]~53_combout\,
	combout => \SRL64unit|Mux41~0_combout\);

-- Location: LCCOMB_X61_Y40_N0
\SRA64unit|Mux40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux40~1_combout\ = (\SRA64unit|Mux40~0_combout\) # (\SRL64unit|Mux41~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux40~0_combout\,
	datac => \SRL64unit|Mux41~0_combout\,
	combout => \SRA64unit|Mux40~1_combout\);

-- Location: LCCOMB_X60_Y38_N10
\SRA64unit|Mux115~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux115~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRA64unit|Mux40~1_combout\)) # (!\B[2]~input_o\ & ((\SRA64unit|Mux44~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64unit|Mux40~1_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA64unit|Mux44~1_combout\,
	combout => \SRA64unit|Mux115~0_combout\);

-- Location: LCCOMB_X63_Y42_N20
\SRA64unit|Mux156~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~260_combout\ = (\B[1]~input_o\ & (((\SRL64unit|Mux117~0_combout\) # (\SRA64unit|Mux115~0_combout\)))) # (!\B[1]~input_o\ & (\SRA64unit|Mux117~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRA64unit|Mux117~1_combout\,
	datac => \SRL64unit|Mux117~0_combout\,
	datad => \SRA64unit|Mux115~0_combout\,
	combout => \SRA64unit|Mux156~260_combout\);

-- Location: LCCOMB_X61_Y40_N24
\SRA64unit|Mux90~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~32_combout\ = (\SRA64unit|Mux90~19_combout\ & ((\B[2]~input_o\ & ((\AmuxOut[54]~8_combout\))) # (!\B[2]~input_o\ & (\AmuxOut[50]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[50]~4_combout\,
	datab => \SRA64unit|Mux90~19_combout\,
	datac => \B[2]~input_o\,
	datad => \AmuxOut[54]~8_combout\,
	combout => \SRA64unit|Mux90~32_combout\);

-- Location: LCCOMB_X61_Y40_N4
\SRA64unit|Mux90~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~33_combout\ = (\SRA64unit|Mux90~32_combout\) # ((\B[2]~input_o\ & (\SRL64unit|Mux41~0_combout\)) # (!\B[2]~input_o\ & ((\SRL64unit|Mux45~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux41~0_combout\,
	datab => \SRL64unit|Mux45~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA64unit|Mux90~32_combout\,
	combout => \SRA64unit|Mux90~33_combout\);

-- Location: LCCOMB_X61_Y37_N8
\SRA64unit|Mux156~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~105_combout\ = (\SRL64unit|Mux117~0_combout\) # ((\B[3]~input_o\ & \SRA64unit|Mux90~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux117~0_combout\,
	datab => \B[3]~input_o\,
	datac => \SRA64unit|Mux90~33_combout\,
	combout => \SRA64unit|Mux156~105_combout\);

-- Location: LCCOMB_X63_Y42_N12
\SRA64unit|Mux156~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~106_combout\ = (\B[1]~input_o\ & ((\SRA64unit|Mux156~105_combout\))) # (!\B[1]~input_o\ & (\SRA64unit|Mux156~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64unit|Mux156~94_combout\,
	datac => \SRA64unit|Mux156~105_combout\,
	datad => \B[1]~input_o\,
	combout => \SRA64unit|Mux156~106_combout\);

-- Location: LCCOMB_X63_Y42_N16
\Y~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~92_combout\ = (\Y~91_combout\ & ((\SRA64unit|Mux156~260_combout\) # ((!\B[0]~input_o\)))) # (!\Y~91_combout\ & (((\B[0]~input_o\ & \SRA64unit|Mux156~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~91_combout\,
	datab => \SRA64unit|Mux156~260_combout\,
	datac => \B[0]~input_o\,
	datad => \SRA64unit|Mux156~106_combout\,
	combout => \Y~92_combout\);

-- Location: LCCOMB_X65_Y39_N22
\SLL64unit|Mux190~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~28_combout\ = (\B[2]~input_o\ & (\AmuxOut[3]~37_combout\)) # (!\B[2]~input_o\ & ((\AmuxOut[7]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[3]~37_combout\,
	datac => \AmuxOut[7]~39_combout\,
	datad => \B[2]~input_o\,
	combout => \SLL64unit|Mux190~28_combout\);

-- Location: LCCOMB_X65_Y39_N16
\SLL64unit|Mux190~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~29_combout\ = (\SLL64unit|Mux190~25_combout\ & ((\B[1]~input_o\ & ((\SLL64unit|Mux190~23_combout\))) # (!\B[1]~input_o\ & (\SLL64unit|Mux190~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux190~28_combout\,
	datab => \B[1]~input_o\,
	datac => \SLL64unit|Mux190~23_combout\,
	datad => \SLL64unit|Mux190~25_combout\,
	combout => \SLL64unit|Mux190~29_combout\);

-- Location: LCCOMB_X65_Y42_N6
\Y~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~93_combout\ = (\Y~69_combout\ & (((\Y~70_combout\)))) # (!\Y~69_combout\ & ((\Y~70_combout\ & ((\SLL64unit|Mux190~29_combout\))) # (!\Y~70_combout\ & (\Y~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~69_combout\,
	datab => \Y~92_combout\,
	datac => \Y~70_combout\,
	datad => \SLL64unit|Mux190~29_combout\,
	combout => \Y~93_combout\);

-- Location: IOIBUF_X65_Y73_N22
\C[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(7),
	o => \C[7]~input_o\);

-- Location: LCCOMB_X65_Y42_N8
\Y~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~94_combout\ = (\Y~69_combout\ & ((\Y~93_combout\ & ((\SLL64unit|Mux190~27_combout\))) # (!\Y~93_combout\ & (\C[7]~input_o\)))) # (!\Y~69_combout\ & (\Y~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~69_combout\,
	datab => \Y~93_combout\,
	datac => \C[7]~input_o\,
	datad => \SLL64unit|Mux190~27_combout\,
	combout => \Y~94_combout\);

-- Location: LCCOMB_X61_Y40_N22
\SRA64unit|Mux90~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~31_combout\ = (\B[2]~input_o\ & ((\AmuxOut[54]~8_combout\))) # (!\B[2]~input_o\ & (\AmuxOut[50]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[50]~4_combout\,
	datac => \B[2]~input_o\,
	datad => \AmuxOut[54]~8_combout\,
	combout => \SRA64unit|Mux90~31_combout\);

-- Location: LCCOMB_X65_Y38_N20
\SRL64unit|Mux85~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux85~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRA64unit|Mux19~2_combout\)) # (!\B[2]~input_o\ & ((\SRA64unit|Mux19~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux19~2_combout\,
	datab => \SRA64unit|Mux19~0_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SRL64unit|Mux85~0_combout\);

-- Location: LCCOMB_X65_Y41_N8
\SRL64unit|Mux85~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux85~1_combout\ = (\SRL64unit|Mux85~0_combout\) # ((\B[3]~input_o\ & \SRA64unit|Mux90~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \SRA64unit|Mux90~31_combout\,
	datad => \SRL64unit|Mux85~0_combout\,
	combout => \SRL64unit|Mux85~1_combout\);

-- Location: LCCOMB_X67_Y36_N4
\SRA64unit|Mux156~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~103_combout\ = (\SRA64unit|Mux86~0_combout\ & ((\B[1]~input_o\ & ((\SRL64unit|Mux85~1_combout\))) # (!\B[1]~input_o\ & (\SRL64unit|Mux87~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux87~1_combout\,
	datab => \B[1]~input_o\,
	datac => \SRA64unit|Mux86~0_combout\,
	datad => \SRL64unit|Mux85~1_combout\,
	combout => \SRA64unit|Mux156~103_combout\);

-- Location: LCCOMB_X58_Y38_N8
\SRA64unit|Mux156~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~104_combout\ = (\SRA64unit|Mux156~103_combout\) # ((\AmuxOut[63]~1_combout\ & !\SRA64unit|Mux86~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[63]~1_combout\,
	datac => \SRA64unit|Mux156~103_combout\,
	datad => \SRA64unit|Mux86~0_combout\,
	combout => \SRA64unit|Mux156~104_combout\);

-- Location: LCCOMB_X68_Y38_N10
\SRLorSRAout[39]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[39]~14_combout\ = (\B[0]~input_o\ & ((\SRA64unit|Mux156~103_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & (((!\ShiftFN[0]~input_o\ & \SRA64unit|Mux156~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRA64unit|Mux156~103_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~96_combout\,
	combout => \SRLorSRAout[39]~14_combout\);

-- Location: LCCOMB_X68_Y38_N4
\SRLorSRAout[39]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[39]~15_combout\ = (\ShiftFN[0]~input_o\ & ((\SRLorSRAout[39]~14_combout\ & (\SRA64unit|Mux156~104_combout\)) # (!\SRLorSRAout[39]~14_combout\ & ((\SRA64unit|Mux156~99_combout\))))) # (!\ShiftFN[0]~input_o\ & 
-- (((\SRLorSRAout[39]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~104_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SRA64unit|Mux156~99_combout\,
	datad => \SRLorSRAout[39]~14_combout\,
	combout => \SRLorSRAout[39]~15_combout\);

-- Location: LCCOMB_X73_Y41_N10
\Y~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~287_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\SRLorSRAout[39]~15_combout\))) # (!\ShiftFN[1]~input_o\ & (\Y~94_combout\)))) # (!\ExtWord~input_o\ & (\Y~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Y~94_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \SRLorSRAout[39]~15_combout\,
	combout => \Y~287_combout\);

-- Location: LCCOMB_X66_Y39_N14
\SRL64unit|Mux84~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux84~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRA64unit|Mux19~8_combout\)) # (!\B[2]~input_o\ & ((\SRA64unit|Mux19~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux19~8_combout\,
	datab => \SRA64unit|Mux19~10_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SRL64unit|Mux84~0_combout\);

-- Location: LCCOMB_X66_Y39_N16
\SRA64unit|Mux90~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~34_combout\ = (\B[2]~input_o\ & (\AmuxOut[55]~19_combout\)) # (!\B[2]~input_o\ & ((\AmuxOut[51]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[55]~19_combout\,
	datac => \B[2]~input_o\,
	datad => \AmuxOut[51]~23_combout\,
	combout => \SRA64unit|Mux90~34_combout\);

-- Location: LCCOMB_X66_Y39_N18
\SRL64unit|Mux84~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux84~1_combout\ = (\SRL64unit|Mux84~0_combout\) # ((\B[3]~input_o\ & \SRA64unit|Mux90~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \SRL64unit|Mux84~0_combout\,
	datad => \SRA64unit|Mux90~34_combout\,
	combout => \SRL64unit|Mux84~1_combout\);

-- Location: LCCOMB_X67_Y36_N30
\SRA64unit|Mux156~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~107_combout\ = (\SRA64unit|Mux86~0_combout\ & ((\B[1]~input_o\ & ((\SRL64unit|Mux84~1_combout\))) # (!\B[1]~input_o\ & (\SRL64unit|Mux86~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux86~1_combout\,
	datab => \B[1]~input_o\,
	datac => \SRA64unit|Mux86~0_combout\,
	datad => \SRL64unit|Mux84~1_combout\,
	combout => \SRA64unit|Mux156~107_combout\);

-- Location: LCCOMB_X66_Y38_N8
\SRLorSRAout[40]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[40]~16_combout\ = (\ShiftFN[0]~input_o\ & (((\B[0]~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\B[0]~input_o\ & ((\SRA64unit|Mux156~107_combout\))) # (!\B[0]~input_o\ & (\SRA64unit|Mux156~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~103_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SRA64unit|Mux156~107_combout\,
	datad => \B[0]~input_o\,
	combout => \SRLorSRAout[40]~16_combout\);

-- Location: LCCOMB_X67_Y38_N4
\SRA64unit|Mux156~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~109_combout\ = (!\B[1]~input_o\ & ((\SRL64unit|Mux86~0_combout\) # ((\B[3]~input_o\ & \SRA64unit|Mux90~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux86~0_combout\,
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux90~28_combout\,
	combout => \SRA64unit|Mux156~109_combout\);

-- Location: LCCOMB_X66_Y39_N30
\SRA64unit|Mux82~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux82~1_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\AmuxOut[51]~23_combout\)) # (!\B[3]~input_o\ & ((\SRA64unit|Mux19~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[51]~23_combout\,
	datab => \SRA64unit|Mux19~10_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SRA64unit|Mux82~1_combout\);

-- Location: LCCOMB_X66_Y39_N12
\SRA64unit|Mux82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux82~0_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\AmuxOut[55]~19_combout\)) # (!\B[3]~input_o\ & ((\AmuxOut[47]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[55]~19_combout\,
	datab => \AmuxOut[47]~18_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SRA64unit|Mux82~0_combout\);

-- Location: LCCOMB_X66_Y38_N26
\SRA64unit|Mux156~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~110_combout\ = (\B[1]~input_o\ & ((\SRA64unit|Mux82~1_combout\) # (\SRA64unit|Mux82~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \SRA64unit|Mux82~1_combout\,
	datad => \SRA64unit|Mux82~0_combout\,
	combout => \SRA64unit|Mux156~110_combout\);

-- Location: LCCOMB_X65_Y38_N18
\SLL64unit|Mux190~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~21_combout\ = (\B[2]~input_o\ & \B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SLL64unit|Mux190~21_combout\);

-- Location: LCCOMB_X65_Y38_N22
\SRA64unit|Mux156~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~108_combout\ = (\SLL64unit|Mux190~21_combout\ & (((\SRL64unit|Mux47~0_combout\)))) # (!\SLL64unit|Mux190~21_combout\ & ((\B[3]~input_o\ & ((\SRL64unit|Mux47~0_combout\))) # (!\B[3]~input_o\ & (\ShiftCount[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux190~21_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL64unit|Mux47~0_combout\,
	combout => \SRA64unit|Mux156~108_combout\);

-- Location: LCCOMB_X66_Y38_N12
\SRA64unit|Mux156~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~111_combout\ = (\SRA64unit|Mux156~108_combout\ & ((\SRA64unit|Mux156~109_combout\) # ((\SRA64unit|Mux156~110_combout\)))) # (!\SRA64unit|Mux156~108_combout\ & (((\AmuxOut[63]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~109_combout\,
	datab => \AmuxOut[63]~1_combout\,
	datac => \SRA64unit|Mux156~110_combout\,
	datad => \SRA64unit|Mux156~108_combout\,
	combout => \SRA64unit|Mux156~111_combout\);

-- Location: LCCOMB_X66_Y38_N6
\SRLorSRAout[40]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[40]~17_combout\ = (\SRLorSRAout[40]~16_combout\ & (((\SRA64unit|Mux156~111_combout\) # (!\ShiftFN[0]~input_o\)))) # (!\SRLorSRAout[40]~16_combout\ & (\SRA64unit|Mux156~104_combout\ & (\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~104_combout\,
	datab => \SRLorSRAout[40]~16_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~111_combout\,
	combout => \SRLorSRAout[40]~17_combout\);

-- Location: IOIBUF_X91_Y73_N15
\C[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(8),
	o => \C[8]~input_o\);

-- Location: LCCOMB_X58_Y36_N4
\SLL64unit|Mux115~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux115~0_combout\ = (\B[3]~input_o\ & (\AmuxOut[0]~0_combout\)) # (!\B[3]~input_o\ & ((\AmuxOut[8]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[0]~0_combout\,
	datac => \B[3]~input_o\,
	datad => \AmuxOut[8]~63_combout\,
	combout => \SLL64unit|Mux115~0_combout\);

-- Location: LCCOMB_X58_Y36_N22
\SLL64unit|Mux119~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux119~0_combout\ = (\B[2]~input_o\ & ((\AmuxOut[4]~60_combout\))) # (!\B[2]~input_o\ & (\SLL64unit|Mux115~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL64unit|Mux115~0_combout\,
	datac => \B[2]~input_o\,
	datad => \AmuxOut[4]~60_combout\,
	combout => \SLL64unit|Mux119~0_combout\);

-- Location: LCCOMB_X60_Y39_N2
\SLL64unit|Mux190~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~94_combout\ = (!\B[4]~input_o\ & (!\SLL64unit|Mux190~19_combout\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \SLL64unit|Mux190~19_combout\,
	combout => \SLL64unit|Mux190~94_combout\);

-- Location: LCCOMB_X57_Y39_N16
\SLL64unit|Mux190~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~30_combout\ = (\SLL64unit|Mux190~94_combout\ & ((\B[1]~input_o\ & ((\SLL64unit|Mux190~26_combout\))) # (!\B[1]~input_o\ & (\SLL64unit|Mux119~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL64unit|Mux119~0_combout\,
	datac => \SLL64unit|Mux190~94_combout\,
	datad => \SLL64unit|Mux190~26_combout\,
	combout => \SLL64unit|Mux190~30_combout\);

-- Location: LCCOMB_X62_Y42_N16
\SRA64unit|Mux116~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux116~1_combout\ = (\SRA64unit|Mux116~0_combout\) # (\SRL64unit|Mux118~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRA64unit|Mux116~0_combout\,
	datad => \SRL64unit|Mux118~0_combout\,
	combout => \SRA64unit|Mux116~1_combout\);

-- Location: LCCOMB_X66_Y39_N10
\SRA64unit|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux39~0_combout\ = (!\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & ((\AmuxOut[63]~1_combout\))) # (!\B[4]~input_o\ & (\AmuxOut[55]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \AmuxOut[55]~19_combout\,
	datad => \AmuxOut[63]~1_combout\,
	combout => \SRA64unit|Mux39~0_combout\);

-- Location: LCCOMB_X59_Y42_N10
\SRL64unit|Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux40~0_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\AmuxOut[39]~20_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[23]~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \AmuxOut[39]~20_combout\,
	datad => \AmuxOut[23]~38_combout\,
	combout => \SRL64unit|Mux40~0_combout\);

-- Location: LCCOMB_X62_Y43_N12
\SRA64unit|Mux39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux39~1_combout\ = (\SRA64unit|Mux39~0_combout\) # (\SRL64unit|Mux40~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux39~0_combout\,
	datad => \SRL64unit|Mux40~0_combout\,
	combout => \SRA64unit|Mux39~1_combout\);

-- Location: LCCOMB_X62_Y43_N30
\SRA64unit|Mux114~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux114~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA64unit|Mux39~1_combout\))) # (!\B[2]~input_o\ & (\SRA64unit|Mux43~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64unit|Mux43~1_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA64unit|Mux39~1_combout\,
	combout => \SRA64unit|Mux114~0_combout\);

-- Location: LCCOMB_X62_Y43_N10
\SRL64unit|Mux116~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux116~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA64unit|Mux47~3_combout\))) # (!\B[2]~input_o\ & (\SRA64unit|Mux51~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64unit|Mux51~3_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA64unit|Mux47~3_combout\,
	combout => \SRL64unit|Mux116~0_combout\);

-- Location: LCCOMB_X62_Y42_N14
\SRA64unit|Mux156~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~261_combout\ = (\B[1]~input_o\ & (((\SRA64unit|Mux114~0_combout\) # (\SRL64unit|Mux116~0_combout\)))) # (!\B[1]~input_o\ & (\SRA64unit|Mux116~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux116~1_combout\,
	datab => \B[1]~input_o\,
	datac => \SRA64unit|Mux114~0_combout\,
	datad => \SRL64unit|Mux116~0_combout\,
	combout => \SRA64unit|Mux156~261_combout\);

-- Location: LCCOMB_X63_Y42_N4
\Y~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~95_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\SRA64unit|Mux156~260_combout\))) # (!\ShiftFN[0]~input_o\ & (\SRA64unit|Mux156~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~106_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~260_combout\,
	combout => \Y~95_combout\);

-- Location: LCCOMB_X66_Y39_N8
\SRA64unit|Mux90~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~35_combout\ = (\SRA64unit|Mux90~19_combout\ & ((\B[2]~input_o\ & (\AmuxOut[55]~19_combout\)) # (!\B[2]~input_o\ & ((\AmuxOut[51]~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[55]~19_combout\,
	datab => \B[2]~input_o\,
	datac => \SRA64unit|Mux90~19_combout\,
	datad => \AmuxOut[51]~23_combout\,
	combout => \SRA64unit|Mux90~35_combout\);

-- Location: LCCOMB_X63_Y41_N16
\SRA64unit|Mux90~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~36_combout\ = (\SRA64unit|Mux90~35_combout\) # ((\B[2]~input_o\ & (\SRL64unit|Mux40~0_combout\)) # (!\B[2]~input_o\ & ((\SRL64unit|Mux44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~35_combout\,
	datab => \SRL64unit|Mux40~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SRL64unit|Mux44~0_combout\,
	combout => \SRA64unit|Mux90~36_combout\);

-- Location: LCCOMB_X63_Y41_N10
\SRA64unit|Mux156~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~112_combout\ = (\SRL64unit|Mux116~0_combout\) # ((\B[3]~input_o\ & \SRA64unit|Mux90~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux116~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux90~36_combout\,
	combout => \SRA64unit|Mux156~112_combout\);

-- Location: LCCOMB_X63_Y42_N10
\SRA64unit|Mux156~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~113_combout\ = (\B[1]~input_o\ & ((\SRA64unit|Mux156~112_combout\))) # (!\B[1]~input_o\ & (\SRA64unit|Mux156~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \SRA64unit|Mux156~101_combout\,
	datad => \SRA64unit|Mux156~112_combout\,
	combout => \SRA64unit|Mux156~113_combout\);

-- Location: LCCOMB_X63_Y42_N30
\Y~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~96_combout\ = (\B[0]~input_o\ & ((\Y~95_combout\ & (\SRA64unit|Mux156~261_combout\)) # (!\Y~95_combout\ & ((\SRA64unit|Mux156~113_combout\))))) # (!\B[0]~input_o\ & (((\Y~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~261_combout\,
	datab => \B[0]~input_o\,
	datac => \Y~95_combout\,
	datad => \SRA64unit|Mux156~113_combout\,
	combout => \Y~96_combout\);

-- Location: LCCOMB_X65_Y42_N2
\Y~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~97_combout\ = (\Y~69_combout\ & (\Y~70_combout\)) # (!\Y~69_combout\ & ((\Y~70_combout\ & (\SLL64unit|Mux190~30_combout\)) # (!\Y~70_combout\ & ((\Y~96_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~69_combout\,
	datab => \Y~70_combout\,
	datac => \SLL64unit|Mux190~30_combout\,
	datad => \Y~96_combout\,
	combout => \Y~97_combout\);

-- Location: LCCOMB_X65_Y42_N12
\Y~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~98_combout\ = (\Y~69_combout\ & ((\Y~97_combout\ & (\SLL64unit|Mux190~29_combout\)) # (!\Y~97_combout\ & ((\C[8]~input_o\))))) # (!\Y~69_combout\ & (((\Y~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~69_combout\,
	datab => \SLL64unit|Mux190~29_combout\,
	datac => \C[8]~input_o\,
	datad => \Y~97_combout\,
	combout => \Y~98_combout\);

-- Location: LCCOMB_X73_Y41_N28
\Y~288\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~288_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\SRLorSRAout[40]~17_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Y~98_combout\))))) # (!\ExtWord~input_o\ & (((\Y~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \SRLorSRAout[40]~17_combout\,
	datad => \Y~98_combout\,
	combout => \Y~288_combout\);

-- Location: LCCOMB_X62_Y39_N30
\SRL64unit|Mux83~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux83~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\) # ((\AmuxOut[52]~10_combout\)))) # (!\B[3]~input_o\ & (!\B[2]~input_o\ & ((\SRA64unit|Mux19~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \AmuxOut[52]~10_combout\,
	datad => \SRA64unit|Mux19~6_combout\,
	combout => \SRL64unit|Mux83~0_combout\);

-- Location: LCCOMB_X62_Y39_N8
\SRL64unit|Mux83~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux83~1_combout\ = (\B[2]~input_o\ & ((\SRL64unit|Mux83~0_combout\ & (\AmuxOut[56]~16_combout\)) # (!\SRL64unit|Mux83~0_combout\ & ((\AmuxOut[48]~12_combout\))))) # (!\B[2]~input_o\ & (((\SRL64unit|Mux83~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[56]~16_combout\,
	datab => \B[2]~input_o\,
	datac => \SRL64unit|Mux83~0_combout\,
	datad => \AmuxOut[48]~12_combout\,
	combout => \SRL64unit|Mux83~1_combout\);

-- Location: LCCOMB_X66_Y38_N24
\SRA64unit|Mux156~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~114_combout\ = (\SRA64unit|Mux156~108_combout\ & ((\B[1]~input_o\ & (\SRL64unit|Mux83~1_combout\)) # (!\B[1]~input_o\ & ((\SRL64unit|Mux85~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux83~1_combout\,
	datab => \SRA64unit|Mux156~108_combout\,
	datac => \SRL64unit|Mux85~1_combout\,
	datad => \B[1]~input_o\,
	combout => \SRA64unit|Mux156~114_combout\);

-- Location: LCCOMB_X66_Y38_N10
\SRLorSRAout[41]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[41]~18_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\) # (\SRA64unit|Mux156~114_combout\)))) # (!\B[0]~input_o\ & (\SRA64unit|Mux156~107_combout\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~107_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~114_combout\,
	combout => \SRLorSRAout[41]~18_combout\);

-- Location: LCCOMB_X66_Y38_N4
\SRA64unit|Mux156~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~115_combout\ = (\SRA64unit|Mux156~114_combout\) # ((\AmuxOut[63]~1_combout\ & !\SRA64unit|Mux156~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AmuxOut[63]~1_combout\,
	datac => \SRA64unit|Mux156~114_combout\,
	datad => \SRA64unit|Mux156~108_combout\,
	combout => \SRA64unit|Mux156~115_combout\);

-- Location: LCCOMB_X66_Y38_N30
\SRLorSRAout[41]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[41]~19_combout\ = (\SRLorSRAout[41]~18_combout\ & ((\SRA64unit|Mux156~115_combout\) # ((!\ShiftFN[0]~input_o\)))) # (!\SRLorSRAout[41]~18_combout\ & (((\ShiftFN[0]~input_o\ & \SRA64unit|Mux156~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLorSRAout[41]~18_combout\,
	datab => \SRA64unit|Mux156~115_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~111_combout\,
	combout => \SRLorSRAout[41]~19_combout\);

-- Location: IOIBUF_X115_Y27_N8
\C[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(9),
	o => \C[9]~input_o\);

-- Location: LCCOMB_X65_Y39_N10
\SLL64unit|Mux114~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux114~0_combout\ = (\B[3]~input_o\ & ((\AmuxOut[1]~42_combout\))) # (!\B[3]~input_o\ & (\AmuxOut[9]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \AmuxOut[9]~48_combout\,
	datad => \AmuxOut[1]~42_combout\,
	combout => \SLL64unit|Mux114~0_combout\);

-- Location: LCCOMB_X65_Y39_N12
\SLL64unit|Mux118~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux118~0_combout\ = (\B[2]~input_o\ & (\AmuxOut[5]~44_combout\)) # (!\B[2]~input_o\ & ((\SLL64unit|Mux114~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \AmuxOut[5]~44_combout\,
	datad => \SLL64unit|Mux114~0_combout\,
	combout => \SLL64unit|Mux118~0_combout\);

-- Location: LCCOMB_X65_Y39_N6
\SLL64unit|Mux190~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~31_combout\ = (\SLL64unit|Mux190~94_combout\ & ((\B[1]~input_o\ & ((\SLL64unit|Mux190~28_combout\))) # (!\B[1]~input_o\ & (\SLL64unit|Mux118~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux118~0_combout\,
	datab => \B[1]~input_o\,
	datac => \SLL64unit|Mux190~28_combout\,
	datad => \SLL64unit|Mux190~94_combout\,
	combout => \SLL64unit|Mux190~31_combout\);

-- Location: LCCOMB_X63_Y42_N28
\Y~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~99_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & (\SRA64unit|Mux156~261_combout\)) # (!\ShiftFN[0]~input_o\ & ((\SRA64unit|Mux156~113_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~261_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~113_combout\,
	combout => \Y~99_combout\);

-- Location: LCCOMB_X60_Y36_N0
\SRA64unit|Mux113~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux113~0_combout\ = (\B[2]~input_o\ & (((\B[3]~input_o\)))) # (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\SRA64unit|Mux42~1_combout\)) # (!\B[3]~input_o\ & ((\SRA64unit|Mux50~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA64unit|Mux42~1_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux50~3_combout\,
	combout => \SRA64unit|Mux113~0_combout\);

-- Location: LCCOMB_X58_Y36_N24
\SRL64unit|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux39~0_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & ((\AmuxOut[40]~17_combout\))) # (!\B[4]~input_o\ & (\AmuxOut[24]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[24]~62_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \AmuxOut[40]~17_combout\,
	combout => \SRL64unit|Mux39~0_combout\);

-- Location: LCCOMB_X60_Y37_N0
\SRA64unit|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux38~0_combout\ = (!\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\AmuxOut[63]~1_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[56]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \AmuxOut[63]~1_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \AmuxOut[56]~16_combout\,
	combout => \SRA64unit|Mux38~0_combout\);

-- Location: LCCOMB_X60_Y37_N10
\SRA64unit|Mux38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux38~1_combout\ = (\SRL64unit|Mux39~0_combout\) # (\SRA64unit|Mux38~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64unit|Mux39~0_combout\,
	datad => \SRA64unit|Mux38~0_combout\,
	combout => \SRA64unit|Mux38~1_combout\);

-- Location: LCCOMB_X60_Y36_N26
\SRA64unit|Mux113~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux113~1_combout\ = (\B[2]~input_o\ & ((\SRA64unit|Mux113~0_combout\ & ((\SRA64unit|Mux38~1_combout\))) # (!\SRA64unit|Mux113~0_combout\ & (\SRA64unit|Mux46~1_combout\)))) # (!\B[2]~input_o\ & (\SRA64unit|Mux113~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA64unit|Mux113~0_combout\,
	datac => \SRA64unit|Mux46~1_combout\,
	datad => \SRA64unit|Mux38~1_combout\,
	combout => \SRA64unit|Mux113~1_combout\);

-- Location: LCCOMB_X63_Y42_N22
\SRA64unit|Mux156~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~262_combout\ = (\B[1]~input_o\ & (\SRA64unit|Mux113~1_combout\)) # (!\B[1]~input_o\ & (((\SRL64unit|Mux117~0_combout\) # (\SRA64unit|Mux115~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRA64unit|Mux113~1_combout\,
	datac => \SRL64unit|Mux117~0_combout\,
	datad => \SRA64unit|Mux115~0_combout\,
	combout => \SRA64unit|Mux156~262_combout\);

-- Location: LCCOMB_X62_Y39_N10
\SRA64unit|Mux90~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~37_combout\ = (\SRA64unit|Mux90~19_combout\ & ((\B[2]~input_o\ & (\AmuxOut[56]~16_combout\)) # (!\B[2]~input_o\ & ((\AmuxOut[52]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[56]~16_combout\,
	datab => \SRA64unit|Mux90~19_combout\,
	datac => \AmuxOut[52]~10_combout\,
	datad => \B[2]~input_o\,
	combout => \SRA64unit|Mux90~37_combout\);

-- Location: LCCOMB_X62_Y39_N4
\SRA64unit|Mux90~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~38_combout\ = (\SRA64unit|Mux90~37_combout\) # ((\B[2]~input_o\ & ((\SRL64unit|Mux39~0_combout\))) # (!\B[2]~input_o\ & (\SRL64unit|Mux43~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux43~0_combout\,
	datab => \B[2]~input_o\,
	datac => \SRL64unit|Mux39~0_combout\,
	datad => \SRA64unit|Mux90~37_combout\,
	combout => \SRA64unit|Mux90~38_combout\);

-- Location: LCCOMB_X63_Y42_N0
\SRA64unit|Mux156~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~116_combout\ = (\B[1]~input_o\ & ((\B[3]~input_o\ & ((\SRA64unit|Mux90~38_combout\))) # (!\B[3]~input_o\ & (\SRA64unit|Mux90~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64unit|Mux90~20_combout\,
	datac => \SRA64unit|Mux90~38_combout\,
	datad => \B[1]~input_o\,
	combout => \SRA64unit|Mux156~116_combout\);

-- Location: LCCOMB_X63_Y42_N18
\SRA64unit|Mux156~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~117_combout\ = (\SRA64unit|Mux156~116_combout\) # ((!\B[1]~input_o\ & \SRA64unit|Mux156~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \SRA64unit|Mux156~105_combout\,
	datad => \SRA64unit|Mux156~116_combout\,
	combout => \SRA64unit|Mux156~117_combout\);

-- Location: LCCOMB_X63_Y42_N14
\Y~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~100_combout\ = (\B[0]~input_o\ & ((\Y~99_combout\ & (\SRA64unit|Mux156~262_combout\)) # (!\Y~99_combout\ & ((\SRA64unit|Mux156~117_combout\))))) # (!\B[0]~input_o\ & (\Y~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Y~99_combout\,
	datac => \SRA64unit|Mux156~262_combout\,
	datad => \SRA64unit|Mux156~117_combout\,
	combout => \Y~100_combout\);

-- Location: LCCOMB_X65_Y42_N30
\Y~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~101_combout\ = (\Y~69_combout\ & (\Y~70_combout\)) # (!\Y~69_combout\ & ((\Y~70_combout\ & (\SLL64unit|Mux190~31_combout\)) # (!\Y~70_combout\ & ((\Y~100_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~69_combout\,
	datab => \Y~70_combout\,
	datac => \SLL64unit|Mux190~31_combout\,
	datad => \Y~100_combout\,
	combout => \Y~101_combout\);

-- Location: LCCOMB_X65_Y42_N24
\Y~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~102_combout\ = (\Y~69_combout\ & ((\Y~101_combout\ & ((\SLL64unit|Mux190~30_combout\))) # (!\Y~101_combout\ & (\C[9]~input_o\)))) # (!\Y~69_combout\ & (((\Y~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~69_combout\,
	datab => \C[9]~input_o\,
	datac => \SLL64unit|Mux190~30_combout\,
	datad => \Y~101_combout\,
	combout => \Y~102_combout\);

-- Location: LCCOMB_X58_Y39_N4
\Y~289\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~289_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\SRLorSRAout[41]~19_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Y~102_combout\))))) # (!\ExtWord~input_o\ & (((\Y~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLorSRAout[41]~19_combout\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y~102_combout\,
	combout => \Y~289_combout\);

-- Location: LCCOMB_X57_Y39_N18
\SLL64unit|Mux113~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux113~0_combout\ = (\B[3]~input_o\ & (\AmuxOut[2]~55_combout\)) # (!\B[3]~input_o\ & ((\AmuxOut[10]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AmuxOut[2]~55_combout\,
	datac => \B[3]~input_o\,
	datad => \AmuxOut[10]~52_combout\,
	combout => \SLL64unit|Mux113~0_combout\);

-- Location: LCCOMB_X58_Y38_N18
\SLL64unit|Mux117~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux117~0_combout\ = (\B[2]~input_o\ & (\AmuxOut[6]~54_combout\)) # (!\B[2]~input_o\ & ((\SLL64unit|Mux113~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[6]~54_combout\,
	datab => \B[2]~input_o\,
	datac => \SLL64unit|Mux113~0_combout\,
	combout => \SLL64unit|Mux117~0_combout\);

-- Location: LCCOMB_X67_Y39_N12
\SLL64unit|Mux190~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~95_combout\ = (!\B[4]~input_o\ & (!\SRA64unit|Mux90~17_combout\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[4]~input_o\,
	datad => \SRA64unit|Mux90~17_combout\,
	combout => \SLL64unit|Mux190~95_combout\);

-- Location: LCCOMB_X65_Y39_N24
\SLL64unit|Mux190~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~32_combout\ = (\SLL64unit|Mux190~95_combout\ & ((\B[1]~input_o\ & ((\SLL64unit|Mux119~0_combout\))) # (!\B[1]~input_o\ & (\SLL64unit|Mux117~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux117~0_combout\,
	datab => \SLL64unit|Mux119~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL64unit|Mux190~95_combout\,
	combout => \SLL64unit|Mux190~32_combout\);

-- Location: LCCOMB_X70_Y38_N24
\SRL64unit|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux38~0_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\AmuxOut[41]~26_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[25]~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \AmuxOut[41]~26_combout\,
	datac => \B[4]~input_o\,
	datad => \AmuxOut[25]~47_combout\,
	combout => \SRL64unit|Mux38~0_combout\);

-- Location: LCCOMB_X65_Y39_N18
\SRA64unit|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux37~0_combout\ = (!\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\AmuxOut[63]~1_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[57]~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \AmuxOut[63]~1_combout\,
	datac => \B[4]~input_o\,
	datad => \AmuxOut[57]~25_combout\,
	combout => \SRA64unit|Mux37~0_combout\);

-- Location: LCCOMB_X65_Y39_N28
\SRA64unit|Mux37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux37~1_combout\ = (\SRL64unit|Mux38~0_combout\) # (\SRA64unit|Mux37~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64unit|Mux38~0_combout\,
	datad => \SRA64unit|Mux37~0_combout\,
	combout => \SRA64unit|Mux37~1_combout\);

-- Location: LCCOMB_X66_Y40_N14
\SRA64unit|Mux112~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux112~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\) # ((\SRA64unit|Mux41~1_combout\)))) # (!\B[3]~input_o\ & (!\B[2]~input_o\ & (\SRA64unit|Mux49~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SRA64unit|Mux49~3_combout\,
	datad => \SRA64unit|Mux41~1_combout\,
	combout => \SRA64unit|Mux112~0_combout\);

-- Location: LCCOMB_X66_Y40_N0
\SRA64unit|Mux112~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux112~1_combout\ = (\B[2]~input_o\ & ((\SRA64unit|Mux112~0_combout\ & (\SRA64unit|Mux37~1_combout\)) # (!\SRA64unit|Mux112~0_combout\ & ((\SRA64unit|Mux45~1_combout\))))) # (!\B[2]~input_o\ & (((\SRA64unit|Mux112~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux37~1_combout\,
	datab => \B[2]~input_o\,
	datac => \SRA64unit|Mux112~0_combout\,
	datad => \SRA64unit|Mux45~1_combout\,
	combout => \SRA64unit|Mux112~1_combout\);

-- Location: LCCOMB_X62_Y42_N24
\SRA64unit|Mux156~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~263_combout\ = (\B[1]~input_o\ & (((\SRA64unit|Mux112~1_combout\)))) # (!\B[1]~input_o\ & ((\SRA64unit|Mux114~0_combout\) # ((\SRL64unit|Mux116~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux114~0_combout\,
	datab => \SRA64unit|Mux112~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL64unit|Mux116~0_combout\,
	combout => \SRA64unit|Mux156~263_combout\);

-- Location: LCCOMB_X63_Y42_N26
\Y~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~103_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & (\SRA64unit|Mux156~262_combout\)) # (!\ShiftFN[0]~input_o\ & ((\SRA64unit|Mux156~117_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~262_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~117_combout\,
	combout => \Y~103_combout\);

-- Location: LCCOMB_X66_Y41_N2
\SRA64unit|Mux90~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~39_combout\ = (\SRA64unit|Mux90~19_combout\ & ((\B[2]~input_o\ & ((\AmuxOut[57]~25_combout\))) # (!\B[2]~input_o\ & (\AmuxOut[53]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \AmuxOut[53]~31_combout\,
	datac => \SRA64unit|Mux90~19_combout\,
	datad => \AmuxOut[57]~25_combout\,
	combout => \SRA64unit|Mux90~39_combout\);

-- Location: LCCOMB_X66_Y42_N16
\SRA64unit|Mux90~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~40_combout\ = (\SRA64unit|Mux90~39_combout\) # ((\B[2]~input_o\ & (\SRL64unit|Mux38~0_combout\)) # (!\B[2]~input_o\ & ((\SRL64unit|Mux42~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRL64unit|Mux38~0_combout\,
	datac => \SRL64unit|Mux42~0_combout\,
	datad => \SRA64unit|Mux90~39_combout\,
	combout => \SRA64unit|Mux90~40_combout\);

-- Location: LCCOMB_X66_Y42_N18
\SRA64unit|Mux156~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~122_combout\ = (\B[1]~input_o\ & ((\B[3]~input_o\ & (\SRA64unit|Mux90~40_combout\)) # (!\B[3]~input_o\ & ((\SRA64unit|Mux90~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64unit|Mux90~40_combout\,
	datac => \SRA64unit|Mux90~21_combout\,
	datad => \B[1]~input_o\,
	combout => \SRA64unit|Mux156~122_combout\);

-- Location: LCCOMB_X63_Y42_N24
\SRA64unit|Mux156~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~123_combout\ = (\SRA64unit|Mux156~122_combout\) # ((!\B[1]~input_o\ & \SRA64unit|Mux156~112_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \SRA64unit|Mux156~122_combout\,
	datad => \SRA64unit|Mux156~112_combout\,
	combout => \SRA64unit|Mux156~123_combout\);

-- Location: LCCOMB_X61_Y42_N8
\Y~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~104_combout\ = (\Y~103_combout\ & ((\SRA64unit|Mux156~263_combout\) # ((!\B[0]~input_o\)))) # (!\Y~103_combout\ & (((\B[0]~input_o\ & \SRA64unit|Mux156~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~263_combout\,
	datab => \Y~103_combout\,
	datac => \B[0]~input_o\,
	datad => \SRA64unit|Mux156~123_combout\,
	combout => \Y~104_combout\);

-- Location: LCCOMB_X65_Y42_N26
\Y~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~105_combout\ = (\Y~69_combout\ & (\Y~70_combout\)) # (!\Y~69_combout\ & ((\Y~70_combout\ & (\SLL64unit|Mux190~32_combout\)) # (!\Y~70_combout\ & ((\Y~104_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~69_combout\,
	datab => \Y~70_combout\,
	datac => \SLL64unit|Mux190~32_combout\,
	datad => \Y~104_combout\,
	combout => \Y~105_combout\);

-- Location: IOIBUF_X115_Y42_N15
\C[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(10),
	o => \C[10]~input_o\);

-- Location: LCCOMB_X65_Y42_N20
\Y~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~106_combout\ = (\Y~69_combout\ & ((\Y~105_combout\ & (\SLL64unit|Mux190~31_combout\)) # (!\Y~105_combout\ & ((\C[10]~input_o\))))) # (!\Y~69_combout\ & (((\Y~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~69_combout\,
	datab => \SLL64unit|Mux190~31_combout\,
	datac => \Y~105_combout\,
	datad => \C[10]~input_o\,
	combout => \Y~106_combout\);

-- Location: LCCOMB_X65_Y38_N2
\SRL64unit|Mux82~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux82~1_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\AmuxOut[53]~31_combout\))) # (!\B[3]~input_o\ & (\SRA64unit|Mux19~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA64unit|Mux19~14_combout\,
	datac => \B[3]~input_o\,
	datad => \AmuxOut[53]~31_combout\,
	combout => \SRL64unit|Mux82~1_combout\);

-- Location: LCCOMB_X65_Y38_N24
\SRL64unit|Mux82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux82~0_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\AmuxOut[57]~25_combout\)) # (!\B[3]~input_o\ & ((\AmuxOut[49]~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \AmuxOut[57]~25_combout\,
	datac => \B[3]~input_o\,
	datad => \AmuxOut[49]~27_combout\,
	combout => \SRL64unit|Mux82~0_combout\);

-- Location: LCCOMB_X65_Y38_N12
\SRL64unit|Mux82~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux82~2_combout\ = (\SRL64unit|Mux82~1_combout\) # (\SRL64unit|Mux82~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64unit|Mux82~1_combout\,
	datad => \SRL64unit|Mux82~0_combout\,
	combout => \SRL64unit|Mux82~2_combout\);

-- Location: LCCOMB_X65_Y38_N14
\SRA64unit|Mux156~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~118_combout\ = (\SRA64unit|Mux156~108_combout\ & ((\B[1]~input_o\ & ((\SRL64unit|Mux82~2_combout\))) # (!\B[1]~input_o\ & (\SRL64unit|Mux84~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRA64unit|Mux156~108_combout\,
	datac => \SRL64unit|Mux84~1_combout\,
	datad => \SRL64unit|Mux82~2_combout\,
	combout => \SRA64unit|Mux156~118_combout\);

-- Location: LCCOMB_X66_Y38_N16
\SRLorSRAout[42]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[42]~20_combout\ = (\B[0]~input_o\ & ((\SRA64unit|Mux156~118_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & (((!\ShiftFN[0]~input_o\ & \SRA64unit|Mux156~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~118_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~114_combout\,
	combout => \SRLorSRAout[42]~20_combout\);

-- Location: LCCOMB_X65_Y38_N8
\SRA64unit|Mux156~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~119_combout\ = (\B[1]~input_o\ & ((\SRL64unit|Mux82~1_combout\) # (\SRL64unit|Mux82~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRL64unit|Mux82~1_combout\,
	datad => \SRL64unit|Mux82~0_combout\,
	combout => \SRA64unit|Mux156~119_combout\);

-- Location: LCCOMB_X58_Y40_N14
\SRA64unit|Mux156~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~270_combout\ = (\ExtWord~input_o\ & ((\SRL64unit|Mux119~0_combout\) # ((!\B[4]~input_o\)))) # (!\ExtWord~input_o\ & (!\B[5]~input_o\ & ((\SRL64unit|Mux119~0_combout\) # (!\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \SRL64unit|Mux119~0_combout\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SRA64unit|Mux156~270_combout\);

-- Location: LCCOMB_X66_Y38_N18
\SRA64unit|Mux156~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~120_combout\ = (!\B[1]~input_o\ & ((\SRA64unit|Mux82~1_combout\) # (\SRA64unit|Mux82~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \SRA64unit|Mux82~1_combout\,
	datad => \SRA64unit|Mux82~0_combout\,
	combout => \SRA64unit|Mux156~120_combout\);

-- Location: LCCOMB_X66_Y38_N28
\SRA64unit|Mux156~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~121_combout\ = (\SRA64unit|Mux156~270_combout\ & ((\SRA64unit|Mux156~119_combout\) # ((\SRA64unit|Mux156~120_combout\)))) # (!\SRA64unit|Mux156~270_combout\ & (((\AmuxOut[63]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~119_combout\,
	datab => \AmuxOut[63]~1_combout\,
	datac => \SRA64unit|Mux156~270_combout\,
	datad => \SRA64unit|Mux156~120_combout\,
	combout => \SRA64unit|Mux156~121_combout\);

-- Location: LCCOMB_X66_Y38_N14
\SRLorSRAout[42]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[42]~21_combout\ = (\SRLorSRAout[42]~20_combout\ & (((\SRA64unit|Mux156~121_combout\)) # (!\ShiftFN[0]~input_o\))) # (!\SRLorSRAout[42]~20_combout\ & (\ShiftFN[0]~input_o\ & (\SRA64unit|Mux156~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLorSRAout[42]~20_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SRA64unit|Mux156~115_combout\,
	datad => \SRA64unit|Mux156~121_combout\,
	combout => \SRLorSRAout[42]~21_combout\);

-- Location: LCCOMB_X72_Y40_N4
\Y~290\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~290_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\SRLorSRAout[42]~21_combout\))) # (!\ExtWord~input_o\ & (\Y~106_combout\)))) # (!\ShiftFN[1]~input_o\ & (\Y~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Y~106_combout\,
	datac => \ExtWord~input_o\,
	datad => \SRLorSRAout[42]~21_combout\,
	combout => \Y~290_combout\);

-- Location: LCCOMB_X62_Y39_N6
\SLL64unit|Mux112~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux112~0_combout\ = (\B[3]~input_o\ & (\AmuxOut[3]~37_combout\)) # (!\B[3]~input_o\ & ((\AmuxOut[11]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \AmuxOut[3]~37_combout\,
	datad => \AmuxOut[11]~36_combout\,
	combout => \SLL64unit|Mux112~0_combout\);

-- Location: LCCOMB_X62_Y39_N24
\SLL64unit|Mux116~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux116~0_combout\ = (\B[2]~input_o\ & (\AmuxOut[7]~39_combout\)) # (!\B[2]~input_o\ & ((\SLL64unit|Mux112~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \AmuxOut[7]~39_combout\,
	datad => \SLL64unit|Mux112~0_combout\,
	combout => \SLL64unit|Mux116~0_combout\);

-- Location: LCCOMB_X65_Y39_N14
\SLL64unit|Mux190~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~33_combout\ = (\SLL64unit|Mux190~95_combout\ & ((\B[1]~input_o\ & ((\SLL64unit|Mux118~0_combout\))) # (!\B[1]~input_o\ & (\SLL64unit|Mux116~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux190~95_combout\,
	datab => \SLL64unit|Mux116~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL64unit|Mux118~0_combout\,
	combout => \SLL64unit|Mux190~33_combout\);

-- Location: LCCOMB_X61_Y39_N12
\SRA64unit|Mux156~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~126_combout\ = (\B[1]~input_o\ & ((\SRA64unit|Mux90~22_combout\) # ((\B[3]~input_o\)))) # (!\B[1]~input_o\ & (((!\B[3]~input_o\ & \SRA64unit|Mux90~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~22_combout\,
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux90~20_combout\,
	combout => \SRA64unit|Mux156~126_combout\);

-- Location: LCCOMB_X59_Y38_N12
\SRL64unit|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux37~0_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & ((\AmuxOut[42]~3_combout\))) # (!\B[4]~input_o\ & (\AmuxOut[26]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \AmuxOut[26]~51_combout\,
	datad => \AmuxOut[42]~3_combout\,
	combout => \SRL64unit|Mux37~0_combout\);

-- Location: LCCOMB_X60_Y37_N12
\SRA64unit|Mux90~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~41_combout\ = (\SRA64unit|Mux90~19_combout\ & ((\B[2]~input_o\ & ((\AmuxOut[58]~2_combout\))) # (!\B[2]~input_o\ & (\AmuxOut[54]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[54]~8_combout\,
	datab => \SRA64unit|Mux90~19_combout\,
	datac => \AmuxOut[58]~2_combout\,
	datad => \B[2]~input_o\,
	combout => \SRA64unit|Mux90~41_combout\);

-- Location: LCCOMB_X61_Y37_N2
\SRA64unit|Mux90~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~42_combout\ = (\SRA64unit|Mux90~41_combout\) # ((\B[2]~input_o\ & (\SRL64unit|Mux37~0_combout\)) # (!\B[2]~input_o\ & ((\SRL64unit|Mux41~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux37~0_combout\,
	datab => \SRL64unit|Mux41~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA64unit|Mux90~41_combout\,
	combout => \SRA64unit|Mux90~42_combout\);

-- Location: LCCOMB_X61_Y42_N10
\SRA64unit|Mux156~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~127_combout\ = (\SRA64unit|Mux156~126_combout\ & ((\SRA64unit|Mux90~42_combout\) # ((!\B[3]~input_o\)))) # (!\SRA64unit|Mux156~126_combout\ & (((\B[3]~input_o\ & \SRA64unit|Mux90~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~126_combout\,
	datab => \SRA64unit|Mux90~42_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux90~38_combout\,
	combout => \SRA64unit|Mux156~127_combout\);

-- Location: LCCOMB_X59_Y38_N14
\SRA64unit|Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux36~0_combout\ = (!\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\AmuxOut[63]~1_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[58]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[63]~1_combout\,
	datab => \AmuxOut[58]~2_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SRA64unit|Mux36~0_combout\);

-- Location: LCCOMB_X59_Y38_N8
\SRA64unit|Mux36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux36~1_combout\ = (\SRA64unit|Mux36~0_combout\) # (\SRL64unit|Mux37~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRA64unit|Mux36~0_combout\,
	datad => \SRL64unit|Mux37~0_combout\,
	combout => \SRA64unit|Mux36~1_combout\);

-- Location: LCCOMB_X60_Y38_N12
\SRA64unit|Mux111~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux111~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\) # ((\SRA64unit|Mux40~1_combout\)))) # (!\B[3]~input_o\ & (!\B[2]~input_o\ & (\SRA64unit|Mux48~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SRA64unit|Mux48~3_combout\,
	datad => \SRA64unit|Mux40~1_combout\,
	combout => \SRA64unit|Mux111~0_combout\);

-- Location: LCCOMB_X60_Y38_N14
\SRA64unit|Mux111~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux111~1_combout\ = (\B[2]~input_o\ & ((\SRA64unit|Mux111~0_combout\ & (\SRA64unit|Mux36~1_combout\)) # (!\SRA64unit|Mux111~0_combout\ & ((\SRA64unit|Mux44~1_combout\))))) # (!\B[2]~input_o\ & (((\SRA64unit|Mux111~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux36~1_combout\,
	datab => \SRA64unit|Mux44~1_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA64unit|Mux111~0_combout\,
	combout => \SRA64unit|Mux111~1_combout\);

-- Location: LCCOMB_X61_Y42_N22
\SRA64unit|Mux156~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~128_combout\ = (\B[1]~input_o\ & ((\SRA64unit|Mux111~1_combout\))) # (!\B[1]~input_o\ & (\SRA64unit|Mux113~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux113~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux111~1_combout\,
	combout => \SRA64unit|Mux156~128_combout\);

-- Location: LCCOMB_X61_Y42_N12
\Y~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~107_combout\ = (\ShiftFN[0]~input_o\ & ((\SRA64unit|Mux156~263_combout\) # ((\B[0]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (((!\B[0]~input_o\ & \SRA64unit|Mux156~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SRA64unit|Mux156~263_combout\,
	datac => \B[0]~input_o\,
	datad => \SRA64unit|Mux156~123_combout\,
	combout => \Y~107_combout\);

-- Location: LCCOMB_X61_Y42_N16
\Y~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~108_combout\ = (\B[0]~input_o\ & ((\Y~107_combout\ & ((\SRA64unit|Mux156~128_combout\))) # (!\Y~107_combout\ & (\SRA64unit|Mux156~127_combout\)))) # (!\B[0]~input_o\ & (((\Y~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~127_combout\,
	datab => \B[0]~input_o\,
	datac => \SRA64unit|Mux156~128_combout\,
	datad => \Y~107_combout\,
	combout => \Y~108_combout\);

-- Location: LCCOMB_X65_Y42_N14
\Y~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~109_combout\ = (\Y~69_combout\ & (\Y~70_combout\)) # (!\Y~69_combout\ & ((\Y~70_combout\ & (\SLL64unit|Mux190~33_combout\)) # (!\Y~70_combout\ & ((\Y~108_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~69_combout\,
	datab => \Y~70_combout\,
	datac => \SLL64unit|Mux190~33_combout\,
	datad => \Y~108_combout\,
	combout => \Y~109_combout\);

-- Location: IOIBUF_X69_Y73_N1
\C[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(11),
	o => \C[11]~input_o\);

-- Location: LCCOMB_X65_Y42_N16
\Y~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~110_combout\ = (\Y~69_combout\ & ((\Y~109_combout\ & (\SLL64unit|Mux190~32_combout\)) # (!\Y~109_combout\ & ((\C[11]~input_o\))))) # (!\Y~69_combout\ & (\Y~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~69_combout\,
	datab => \Y~109_combout\,
	datac => \SLL64unit|Mux190~32_combout\,
	datad => \C[11]~input_o\,
	combout => \Y~110_combout\);

-- Location: LCCOMB_X60_Y39_N20
\SRL64unit|Mux81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux81~0_combout\ = (\B[2]~input_o\ & (((\B[3]~input_o\)))) # (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\AmuxOut[54]~8_combout\)) # (!\B[3]~input_o\ & ((\SRA64unit|Mux19~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \AmuxOut[54]~8_combout\,
	datac => \SRA64unit|Mux19~2_combout\,
	datad => \B[3]~input_o\,
	combout => \SRL64unit|Mux81~0_combout\);

-- Location: LCCOMB_X60_Y39_N6
\SRL64unit|Mux81~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux81~1_combout\ = (\B[2]~input_o\ & ((\SRL64unit|Mux81~0_combout\ & (\AmuxOut[58]~2_combout\)) # (!\SRL64unit|Mux81~0_combout\ & ((\AmuxOut[50]~4_combout\))))) # (!\B[2]~input_o\ & (((\SRL64unit|Mux81~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \AmuxOut[58]~2_combout\,
	datac => \AmuxOut[50]~4_combout\,
	datad => \SRL64unit|Mux81~0_combout\,
	combout => \SRL64unit|Mux81~1_combout\);

-- Location: LCCOMB_X66_Y38_N0
\SRA64unit|Mux156~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~124_combout\ = (\SRA64unit|Mux156~270_combout\ & ((\B[1]~input_o\ & ((\SRL64unit|Mux81~1_combout\))) # (!\B[1]~input_o\ & (\SRL64unit|Mux83~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux83~1_combout\,
	datab => \SRA64unit|Mux156~270_combout\,
	datac => \SRL64unit|Mux81~1_combout\,
	datad => \B[1]~input_o\,
	combout => \SRA64unit|Mux156~124_combout\);

-- Location: LCCOMB_X66_Y38_N20
\SRA64unit|Mux156~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~125_combout\ = (\SRA64unit|Mux156~124_combout\) # ((\AmuxOut[63]~1_combout\ & !\SRA64unit|Mux156~270_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AmuxOut[63]~1_combout\,
	datac => \SRA64unit|Mux156~270_combout\,
	datad => \SRA64unit|Mux156~124_combout\,
	combout => \SRA64unit|Mux156~125_combout\);

-- Location: LCCOMB_X66_Y38_N2
\SRLorSRAout[43]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[43]~22_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\) # (\SRA64unit|Mux156~124_combout\)))) # (!\B[0]~input_o\ & (\SRA64unit|Mux156~118_combout\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~118_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~124_combout\,
	combout => \SRLorSRAout[43]~22_combout\);

-- Location: LCCOMB_X66_Y38_N22
\SRLorSRAout[43]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[43]~23_combout\ = (\ShiftFN[0]~input_o\ & ((\SRLorSRAout[43]~22_combout\ & (\SRA64unit|Mux156~125_combout\)) # (!\SRLorSRAout[43]~22_combout\ & ((\SRA64unit|Mux156~121_combout\))))) # (!\ShiftFN[0]~input_o\ & 
-- (((\SRLorSRAout[43]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~125_combout\,
	datab => \SRA64unit|Mux156~121_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRLorSRAout[43]~22_combout\,
	combout => \SRLorSRAout[43]~23_combout\);

-- Location: LCCOMB_X72_Y40_N22
\Y~291\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~291_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\SRLorSRAout[43]~23_combout\))) # (!\ExtWord~input_o\ & (\Y~110_combout\)))) # (!\ShiftFN[1]~input_o\ & (\Y~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Y~110_combout\,
	datac => \ExtWord~input_o\,
	datad => \SRLorSRAout[43]~23_combout\,
	combout => \Y~291_combout\);

-- Location: IOIBUF_X87_Y73_N15
\C[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(12),
	o => \C[12]~input_o\);

-- Location: LCCOMB_X58_Y39_N16
\SRL64unit|Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux36~0_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\AmuxOut[43]~22_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[27]~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \AmuxOut[43]~22_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \AmuxOut[27]~35_combout\,
	combout => \SRL64unit|Mux36~0_combout\);

-- Location: LCCOMB_X66_Y39_N22
\SRA64unit|Mux90~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~44_combout\ = (\SRA64unit|Mux90~19_combout\ & ((\B[2]~input_o\ & ((\AmuxOut[59]~21_combout\))) # (!\B[2]~input_o\ & (\AmuxOut[55]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~19_combout\,
	datab => \B[2]~input_o\,
	datac => \AmuxOut[55]~19_combout\,
	datad => \AmuxOut[59]~21_combout\,
	combout => \SRA64unit|Mux90~44_combout\);

-- Location: LCCOMB_X63_Y41_N20
\SRA64unit|Mux90~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~45_combout\ = (\SRA64unit|Mux90~44_combout\) # ((\B[2]~input_o\ & (\SRL64unit|Mux36~0_combout\)) # (!\B[2]~input_o\ & ((\SRL64unit|Mux40~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux36~0_combout\,
	datab => \SRA64unit|Mux90~44_combout\,
	datac => \B[2]~input_o\,
	datad => \SRL64unit|Mux40~0_combout\,
	combout => \SRA64unit|Mux90~45_combout\);

-- Location: LCCOMB_X66_Y42_N20
\SRA64unit|Mux156~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~134_combout\ = (\B[3]~input_o\ & (((\B[1]~input_o\)))) # (!\B[3]~input_o\ & ((\B[1]~input_o\ & (\SRA64unit|Mux90~24_combout\)) # (!\B[1]~input_o\ & ((\SRA64unit|Mux90~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64unit|Mux90~24_combout\,
	datac => \SRA64unit|Mux90~21_combout\,
	datad => \B[1]~input_o\,
	combout => \SRA64unit|Mux156~134_combout\);

-- Location: LCCOMB_X66_Y42_N22
\SRA64unit|Mux156~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~135_combout\ = (\B[3]~input_o\ & ((\SRA64unit|Mux156~134_combout\ & ((\SRA64unit|Mux90~45_combout\))) # (!\SRA64unit|Mux156~134_combout\ & (\SRA64unit|Mux90~40_combout\)))) # (!\B[3]~input_o\ & (((\SRA64unit|Mux156~134_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64unit|Mux90~40_combout\,
	datac => \SRA64unit|Mux90~45_combout\,
	datad => \SRA64unit|Mux156~134_combout\,
	combout => \SRA64unit|Mux156~135_combout\);

-- Location: LCCOMB_X61_Y42_N2
\Y~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~111_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\SRA64unit|Mux156~128_combout\))) # (!\ShiftFN[0]~input_o\ & (\SRA64unit|Mux156~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~127_combout\,
	datab => \B[0]~input_o\,
	datac => \SRA64unit|Mux156~128_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y~111_combout\);

-- Location: LCCOMB_X62_Y43_N24
\SRA64unit|Mux110~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux110~0_combout\ = (\B[3]~input_o\ & (((\B[2]~input_o\) # (\SRA64unit|Mux39~1_combout\)))) # (!\B[3]~input_o\ & (\SRA64unit|Mux47~3_combout\ & (!\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64unit|Mux47~3_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA64unit|Mux39~1_combout\,
	combout => \SRA64unit|Mux110~0_combout\);

-- Location: LCCOMB_X66_Y39_N24
\SRA64unit|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux35~0_combout\ = (!\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\AmuxOut[63]~1_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[59]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \AmuxOut[63]~1_combout\,
	datac => \B[4]~input_o\,
	datad => \AmuxOut[59]~21_combout\,
	combout => \SRA64unit|Mux35~0_combout\);

-- Location: LCCOMB_X63_Y41_N30
\SRA64unit|Mux35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux35~1_combout\ = (\SRL64unit|Mux36~0_combout\) # (\SRA64unit|Mux35~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux36~0_combout\,
	datad => \SRA64unit|Mux35~0_combout\,
	combout => \SRA64unit|Mux35~1_combout\);

-- Location: LCCOMB_X62_Y43_N26
\SRA64unit|Mux110~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux110~1_combout\ = (\SRA64unit|Mux110~0_combout\ & (((\SRA64unit|Mux35~1_combout\) # (!\B[2]~input_o\)))) # (!\SRA64unit|Mux110~0_combout\ & (\SRA64unit|Mux43~1_combout\ & (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux43~1_combout\,
	datab => \SRA64unit|Mux110~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA64unit|Mux35~1_combout\,
	combout => \SRA64unit|Mux110~1_combout\);

-- Location: LCCOMB_X62_Y42_N18
\SRA64unit|Mux156~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~136_combout\ = (\B[1]~input_o\ & (\SRA64unit|Mux110~1_combout\)) # (!\B[1]~input_o\ & ((\SRA64unit|Mux112~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \SRA64unit|Mux110~1_combout\,
	datad => \SRA64unit|Mux112~1_combout\,
	combout => \SRA64unit|Mux156~136_combout\);

-- Location: LCCOMB_X61_Y42_N4
\Y~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~112_combout\ = (\Y~111_combout\ & (((\SRA64unit|Mux156~136_combout\) # (!\B[0]~input_o\)))) # (!\Y~111_combout\ & (\SRA64unit|Mux156~135_combout\ & (\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~135_combout\,
	datab => \Y~111_combout\,
	datac => \B[0]~input_o\,
	datad => \SRA64unit|Mux156~136_combout\,
	combout => \Y~112_combout\);

-- Location: LCCOMB_X58_Y38_N4
\SLL64unit|Mux190~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~96_combout\ = (\SRL64unit|Mux47~0_combout\ & (((!\B[3]~input_o\) # (!\B[1]~input_o\)) # (!\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux47~0_combout\,
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SLL64unit|Mux190~96_combout\);

-- Location: LCCOMB_X58_Y36_N26
\SLL64unit|Mux115~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux115~1_combout\ = (\B[3]~input_o\ & ((\AmuxOut[4]~60_combout\))) # (!\B[3]~input_o\ & (\AmuxOut[12]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AmuxOut[12]~58_combout\,
	datac => \B[3]~input_o\,
	datad => \AmuxOut[4]~60_combout\,
	combout => \SLL64unit|Mux115~1_combout\);

-- Location: LCCOMB_X58_Y36_N20
\SLL64unit|Mux115~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux115~2_combout\ = (\B[2]~input_o\ & ((\SLL64unit|Mux115~0_combout\))) # (!\B[2]~input_o\ & (\SLL64unit|Mux115~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux115~1_combout\,
	datab => \SLL64unit|Mux115~0_combout\,
	datac => \B[2]~input_o\,
	combout => \SLL64unit|Mux115~2_combout\);

-- Location: LCCOMB_X58_Y38_N12
\SLL64unit|Mux190~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~34_combout\ = (\SLL64unit|Mux190~96_combout\ & ((\B[1]~input_o\ & ((\SLL64unit|Mux117~0_combout\))) # (!\B[1]~input_o\ & (\SLL64unit|Mux115~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL64unit|Mux190~96_combout\,
	datac => \SLL64unit|Mux115~2_combout\,
	datad => \SLL64unit|Mux117~0_combout\,
	combout => \SLL64unit|Mux190~34_combout\);

-- Location: LCCOMB_X65_Y42_N18
\Y~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~113_combout\ = (\Y~69_combout\ & (((\Y~70_combout\)))) # (!\Y~69_combout\ & ((\Y~70_combout\ & ((\SLL64unit|Mux190~34_combout\))) # (!\Y~70_combout\ & (\Y~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~69_combout\,
	datab => \Y~112_combout\,
	datac => \Y~70_combout\,
	datad => \SLL64unit|Mux190~34_combout\,
	combout => \Y~113_combout\);

-- Location: LCCOMB_X65_Y42_N4
\Y~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~114_combout\ = (\Y~69_combout\ & ((\Y~113_combout\ & ((\SLL64unit|Mux190~33_combout\))) # (!\Y~113_combout\ & (\C[12]~input_o\)))) # (!\Y~69_combout\ & (((\Y~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~69_combout\,
	datab => \C[12]~input_o\,
	datac => \SLL64unit|Mux190~33_combout\,
	datad => \Y~113_combout\,
	combout => \Y~114_combout\);

-- Location: LCCOMB_X66_Y39_N28
\SRA64unit|Mux90~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~43_combout\ = (\B[2]~input_o\ & ((\AmuxOut[59]~21_combout\))) # (!\B[2]~input_o\ & (\AmuxOut[55]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[55]~19_combout\,
	datab => \AmuxOut[59]~21_combout\,
	datac => \B[2]~input_o\,
	combout => \SRA64unit|Mux90~43_combout\);

-- Location: LCCOMB_X67_Y38_N6
\SRL64unit|Mux80~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux80~1_combout\ = (\B[3]~input_o\ & (\SRA64unit|Mux90~43_combout\)) # (!\B[3]~input_o\ & ((\SRL64unit|Mux80~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~43_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL64unit|Mux80~0_combout\,
	combout => \SRL64unit|Mux80~1_combout\);

-- Location: LCCOMB_X67_Y38_N16
\SRA64unit|Mux156~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~129_combout\ = (\SRA64unit|Mux156~270_combout\ & ((\B[1]~input_o\ & ((\SRL64unit|Mux80~1_combout\))) # (!\B[1]~input_o\ & (\SRL64unit|Mux82~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux82~2_combout\,
	datab => \B[1]~input_o\,
	datac => \SRA64unit|Mux156~270_combout\,
	datad => \SRL64unit|Mux80~1_combout\,
	combout => \SRA64unit|Mux156~129_combout\);

-- Location: LCCOMB_X68_Y38_N6
\SRLorSRAout[44]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[44]~24_combout\ = (\B[0]~input_o\ & ((\SRA64unit|Mux156~129_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & (((!\ShiftFN[0]~input_o\ & \SRA64unit|Mux156~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRA64unit|Mux156~129_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~124_combout\,
	combout => \SRLorSRAout[44]~24_combout\);

-- Location: LCCOMB_X65_Y38_N10
\SRA64unit|Mux156~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~131_combout\ = (!\B[1]~input_o\ & ((\SRL64unit|Mux82~1_combout\) # (\SRL64unit|Mux82~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRL64unit|Mux82~1_combout\,
	datad => \SRL64unit|Mux82~0_combout\,
	combout => \SRA64unit|Mux156~131_combout\);

-- Location: LCCOMB_X58_Y40_N22
\SRA64unit|Mux156~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~130_combout\ = (\ShiftCount[5]~0_combout\ & (((!\B[1]~input_o\ & \SRL64unit|Mux119~0_combout\)) # (!\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRL64unit|Mux119~0_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SRA64unit|Mux156~130_combout\);

-- Location: LCCOMB_X67_Y38_N18
\SRA64unit|Mux156~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~132_combout\ = (\B[1]~input_o\ & ((\B[3]~input_o\ & ((\SRA64unit|Mux90~43_combout\))) # (!\B[3]~input_o\ & (\SRA64unit|Mux78~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux78~0_combout\,
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux90~43_combout\,
	combout => \SRA64unit|Mux156~132_combout\);

-- Location: LCCOMB_X68_Y38_N24
\SRA64unit|Mux156~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~133_combout\ = (\SRA64unit|Mux156~130_combout\ & (((\SRA64unit|Mux156~131_combout\) # (\SRA64unit|Mux156~132_combout\)))) # (!\SRA64unit|Mux156~130_combout\ & (\AmuxOut[63]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[63]~1_combout\,
	datab => \SRA64unit|Mux156~131_combout\,
	datac => \SRA64unit|Mux156~130_combout\,
	datad => \SRA64unit|Mux156~132_combout\,
	combout => \SRA64unit|Mux156~133_combout\);

-- Location: LCCOMB_X68_Y38_N2
\SRLorSRAout[44]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[44]~25_combout\ = (\SRLorSRAout[44]~24_combout\ & (((\SRA64unit|Mux156~133_combout\) # (!\ShiftFN[0]~input_o\)))) # (!\SRLorSRAout[44]~24_combout\ & (\SRA64unit|Mux156~125_combout\ & (\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLorSRAout[44]~24_combout\,
	datab => \SRA64unit|Mux156~125_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~133_combout\,
	combout => \SRLorSRAout[44]~25_combout\);

-- Location: LCCOMB_X59_Y42_N12
\Y~292\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~292_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\SRLorSRAout[44]~25_combout\))) # (!\ShiftFN[1]~input_o\ & (\Y~114_combout\)))) # (!\ExtWord~input_o\ & (\Y~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~114_combout\,
	datab => \ExtWord~input_o\,
	datac => \SRLorSRAout[44]~25_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~292_combout\);

-- Location: LCCOMB_X62_Y39_N26
\SRA64unit|Mux90~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~46_combout\ = (\B[2]~input_o\ & ((\AmuxOut[60]~14_combout\))) # (!\B[2]~input_o\ & (\AmuxOut[56]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[56]~16_combout\,
	datab => \AmuxOut[60]~14_combout\,
	datad => \B[2]~input_o\,
	combout => \SRA64unit|Mux90~46_combout\);

-- Location: LCCOMB_X62_Y39_N12
\SRL64unit|Mux79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux79~0_combout\ = (\B[3]~input_o\ & (\SRA64unit|Mux90~46_combout\)) # (!\B[3]~input_o\ & ((\SRA64unit|Mux90~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \SRA64unit|Mux90~46_combout\,
	datad => \SRA64unit|Mux90~25_combout\,
	combout => \SRL64unit|Mux79~0_combout\);

-- Location: LCCOMB_X68_Y38_N12
\SRA64unit|Mux156~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~137_combout\ = (\SRA64unit|Mux156~130_combout\ & ((\B[1]~input_o\ & (\SRL64unit|Mux79~0_combout\)) # (!\B[1]~input_o\ & ((\SRL64unit|Mux81~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux79~0_combout\,
	datab => \SRA64unit|Mux156~130_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL64unit|Mux81~1_combout\,
	combout => \SRA64unit|Mux156~137_combout\);

-- Location: LCCOMB_X68_Y38_N30
\SRLorSRAout[45]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[45]~26_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\) # (\SRA64unit|Mux156~137_combout\)))) # (!\B[0]~input_o\ & (\SRA64unit|Mux156~129_combout\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRA64unit|Mux156~129_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~137_combout\,
	combout => \SRLorSRAout[45]~26_combout\);

-- Location: LCCOMB_X68_Y38_N0
\SRA64unit|Mux156~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~138_combout\ = (\SRA64unit|Mux156~137_combout\) # ((\AmuxOut[63]~1_combout\ & !\SRA64unit|Mux156~130_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[63]~1_combout\,
	datac => \SRA64unit|Mux156~130_combout\,
	datad => \SRA64unit|Mux156~137_combout\,
	combout => \SRA64unit|Mux156~138_combout\);

-- Location: LCCOMB_X68_Y38_N26
\SRLorSRAout[45]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[45]~27_combout\ = (\SRLorSRAout[45]~26_combout\ & ((\SRA64unit|Mux156~138_combout\) # ((!\ShiftFN[0]~input_o\)))) # (!\SRLorSRAout[45]~26_combout\ & (((\ShiftFN[0]~input_o\ & \SRA64unit|Mux156~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLorSRAout[45]~26_combout\,
	datab => \SRA64unit|Mux156~138_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~133_combout\,
	combout => \SRLorSRAout[45]~27_combout\);

-- Location: IOIBUF_X0_Y36_N15
\C[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(13),
	o => \C[13]~input_o\);

-- Location: LCCOMB_X65_Y39_N0
\SLL64unit|Mux114~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux114~1_combout\ = (\B[3]~input_o\ & ((\AmuxOut[5]~44_combout\))) # (!\B[3]~input_o\ & (\AmuxOut[13]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \AmuxOut[13]~46_combout\,
	datad => \AmuxOut[5]~44_combout\,
	combout => \SLL64unit|Mux114~1_combout\);

-- Location: LCCOMB_X65_Y39_N2
\SLL64unit|Mux114~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux114~2_combout\ = (\B[2]~input_o\ & ((\SLL64unit|Mux114~0_combout\))) # (!\B[2]~input_o\ & (\SLL64unit|Mux114~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL64unit|Mux114~1_combout\,
	datad => \SLL64unit|Mux114~0_combout\,
	combout => \SLL64unit|Mux114~2_combout\);

-- Location: LCCOMB_X65_Y39_N4
\SLL64unit|Mux190~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~35_combout\ = (\SLL64unit|Mux190~96_combout\ & ((\B[1]~input_o\ & (\SLL64unit|Mux116~0_combout\)) # (!\B[1]~input_o\ & ((\SLL64unit|Mux114~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux190~96_combout\,
	datab => \SLL64unit|Mux116~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL64unit|Mux114~2_combout\,
	combout => \SLL64unit|Mux190~35_combout\);

-- Location: LCCOMB_X61_Y39_N6
\SRA64unit|Mux156~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~139_combout\ = (\B[1]~input_o\ & (((\B[3]~input_o\)))) # (!\B[1]~input_o\ & ((\B[3]~input_o\ & (\SRA64unit|Mux90~42_combout\)) # (!\B[3]~input_o\ & ((\SRA64unit|Mux90~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~42_combout\,
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux90~22_combout\,
	combout => \SRA64unit|Mux156~139_combout\);

-- Location: LCCOMB_X60_Y37_N24
\SRL64unit|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux35~0_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\AmuxOut[44]~15_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[28]~57_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \AmuxOut[44]~15_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \AmuxOut[28]~57_combout\,
	combout => \SRL64unit|Mux35~0_combout\);

-- Location: LCCOMB_X60_Y37_N30
\SRA64unit|Mux90~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~47_combout\ = (\SRA64unit|Mux90~19_combout\ & ((\B[2]~input_o\ & ((\AmuxOut[60]~14_combout\))) # (!\B[2]~input_o\ & (\AmuxOut[56]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[56]~16_combout\,
	datab => \SRA64unit|Mux90~19_combout\,
	datac => \AmuxOut[60]~14_combout\,
	datad => \B[2]~input_o\,
	combout => \SRA64unit|Mux90~47_combout\);

-- Location: LCCOMB_X60_Y37_N18
\SRA64unit|Mux90~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~48_combout\ = (\SRA64unit|Mux90~47_combout\) # ((\B[2]~input_o\ & (\SRL64unit|Mux35~0_combout\)) # (!\B[2]~input_o\ & ((\SRL64unit|Mux39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRL64unit|Mux35~0_combout\,
	datac => \SRA64unit|Mux90~47_combout\,
	datad => \SRL64unit|Mux39~0_combout\,
	combout => \SRA64unit|Mux90~48_combout\);

-- Location: LCCOMB_X61_Y39_N0
\SRA64unit|Mux156~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~140_combout\ = (\SRA64unit|Mux156~139_combout\ & (((\SRA64unit|Mux90~48_combout\)) # (!\B[1]~input_o\))) # (!\SRA64unit|Mux156~139_combout\ & (\B[1]~input_o\ & (\SRA64unit|Mux90~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~139_combout\,
	datab => \B[1]~input_o\,
	datac => \SRA64unit|Mux90~27_combout\,
	datad => \SRA64unit|Mux90~48_combout\,
	combout => \SRA64unit|Mux156~140_combout\);

-- Location: LCCOMB_X61_Y42_N14
\Y~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~115_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\SRA64unit|Mux156~136_combout\))) # (!\ShiftFN[0]~input_o\ & (\SRA64unit|Mux156~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~135_combout\,
	datab => \SRA64unit|Mux156~136_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y~115_combout\);

-- Location: LCCOMB_X60_Y37_N28
\SRA64unit|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux34~0_combout\ = (!\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & ((\AmuxOut[63]~1_combout\))) # (!\B[4]~input_o\ & (\AmuxOut[60]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \AmuxOut[60]~14_combout\,
	datac => \AmuxOut[63]~1_combout\,
	datad => \B[4]~input_o\,
	combout => \SRA64unit|Mux34~0_combout\);

-- Location: LCCOMB_X60_Y37_N14
\SRA64unit|Mux34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux34~1_combout\ = (\SRA64unit|Mux34~0_combout\) # (\SRL64unit|Mux35~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64unit|Mux34~0_combout\,
	datad => \SRL64unit|Mux35~0_combout\,
	combout => \SRA64unit|Mux34~1_combout\);

-- Location: LCCOMB_X60_Y36_N28
\SRA64unit|Mux109~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux109~0_combout\ = (\B[2]~input_o\ & ((\SRA64unit|Mux34~1_combout\) # ((!\B[3]~input_o\)))) # (!\B[2]~input_o\ & (((\B[3]~input_o\ & \SRA64unit|Mux38~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA64unit|Mux34~1_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux38~1_combout\,
	combout => \SRA64unit|Mux109~0_combout\);

-- Location: LCCOMB_X60_Y36_N30
\SRA64unit|Mux109~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux109~1_combout\ = (\B[3]~input_o\ & (((\SRA64unit|Mux109~0_combout\)))) # (!\B[3]~input_o\ & ((\SRA64unit|Mux109~0_combout\ & ((\SRA64unit|Mux42~1_combout\))) # (!\SRA64unit|Mux109~0_combout\ & (\SRA64unit|Mux46~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux46~1_combout\,
	datab => \B[3]~input_o\,
	datac => \SRA64unit|Mux42~1_combout\,
	datad => \SRA64unit|Mux109~0_combout\,
	combout => \SRA64unit|Mux109~1_combout\);

-- Location: LCCOMB_X61_Y42_N0
\SRA64unit|Mux156~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~141_combout\ = (\B[1]~input_o\ & (\SRA64unit|Mux109~1_combout\)) # (!\B[1]~input_o\ & ((\SRA64unit|Mux111~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64unit|Mux109~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux111~1_combout\,
	combout => \SRA64unit|Mux156~141_combout\);

-- Location: LCCOMB_X61_Y42_N18
\Y~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~116_combout\ = (\Y~115_combout\ & (((\SRA64unit|Mux156~141_combout\) # (!\B[0]~input_o\)))) # (!\Y~115_combout\ & (\SRA64unit|Mux156~140_combout\ & (\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~140_combout\,
	datab => \Y~115_combout\,
	datac => \B[0]~input_o\,
	datad => \SRA64unit|Mux156~141_combout\,
	combout => \Y~116_combout\);

-- Location: LCCOMB_X60_Y41_N16
\Y~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~117_combout\ = (\Y~70_combout\ & ((\Y~69_combout\) # ((\SLL64unit|Mux190~35_combout\)))) # (!\Y~70_combout\ & (!\Y~69_combout\ & ((\Y~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~70_combout\,
	datab => \Y~69_combout\,
	datac => \SLL64unit|Mux190~35_combout\,
	datad => \Y~116_combout\,
	combout => \Y~117_combout\);

-- Location: LCCOMB_X60_Y41_N18
\Y~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~118_combout\ = (\Y~69_combout\ & ((\Y~117_combout\ & ((\SLL64unit|Mux190~34_combout\))) # (!\Y~117_combout\ & (\C[13]~input_o\)))) # (!\Y~69_combout\ & (((\Y~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[13]~input_o\,
	datab => \Y~69_combout\,
	datac => \SLL64unit|Mux190~34_combout\,
	datad => \Y~117_combout\,
	combout => \Y~118_combout\);

-- Location: LCCOMB_X60_Y41_N14
\Y~293\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~293_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\SRLorSRAout[45]~27_combout\)) # (!\ExtWord~input_o\ & ((\Y~118_combout\))))) # (!\ShiftFN[1]~input_o\ & (((\Y~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \SRLorSRAout[45]~27_combout\,
	datac => \ExtWord~input_o\,
	datad => \Y~118_combout\,
	combout => \Y~293_combout\);

-- Location: IOIBUF_X0_Y36_N22
\C[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(14),
	o => \C[14]~input_o\);

-- Location: LCCOMB_X58_Y37_N0
\SLL64unit|Mux113~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux113~1_combout\ = (\B[3]~input_o\ & ((\AmuxOut[6]~54_combout\))) # (!\B[3]~input_o\ & (\AmuxOut[14]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[14]~50_combout\,
	datab => \B[3]~input_o\,
	datad => \AmuxOut[6]~54_combout\,
	combout => \SLL64unit|Mux113~1_combout\);

-- Location: LCCOMB_X58_Y38_N14
\SLL64unit|Mux113~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux113~2_combout\ = (\B[2]~input_o\ & (\SLL64unit|Mux113~0_combout\)) # (!\B[2]~input_o\ & ((\SLL64unit|Mux113~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \SLL64unit|Mux113~0_combout\,
	datad => \SLL64unit|Mux113~1_combout\,
	combout => \SLL64unit|Mux113~2_combout\);

-- Location: LCCOMB_X58_Y38_N24
\SLL64unit|Mux190~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~36_combout\ = (\SRL64unit|Mux47~0_combout\ & ((\B[1]~input_o\ & (\SLL64unit|Mux115~2_combout\)) # (!\B[1]~input_o\ & ((\SLL64unit|Mux113~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL64unit|Mux115~2_combout\,
	datac => \SLL64unit|Mux113~2_combout\,
	datad => \SRL64unit|Mux47~0_combout\,
	combout => \SLL64unit|Mux190~36_combout\);

-- Location: LCCOMB_X61_Y42_N28
\Y~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~119_combout\ = (\ShiftFN[0]~input_o\ & ((\SRA64unit|Mux156~141_combout\) # ((\B[0]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (((!\B[0]~input_o\ & \SRA64unit|Mux156~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SRA64unit|Mux156~141_combout\,
	datac => \B[0]~input_o\,
	datad => \SRA64unit|Mux156~140_combout\,
	combout => \Y~119_combout\);

-- Location: LCCOMB_X66_Y40_N12
\SRA64unit|Mux90~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~50_combout\ = (\SRA64unit|Mux90~19_combout\ & ((\B[2]~input_o\ & (\AmuxOut[61]~29_combout\)) # (!\B[2]~input_o\ & ((\AmuxOut[57]~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[61]~29_combout\,
	datab => \SRA64unit|Mux90~19_combout\,
	datac => \AmuxOut[57]~25_combout\,
	datad => \B[2]~input_o\,
	combout => \SRA64unit|Mux90~50_combout\);

-- Location: LCCOMB_X67_Y39_N2
\SRL64unit|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux34~0_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\AmuxOut[45]~30_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[29]~45_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[45]~30_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \AmuxOut[29]~45_combout\,
	combout => \SRL64unit|Mux34~0_combout\);

-- Location: LCCOMB_X66_Y42_N24
\SRA64unit|Mux90~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~51_combout\ = (\SRA64unit|Mux90~50_combout\) # ((\B[2]~input_o\ & ((\SRL64unit|Mux34~0_combout\))) # (!\B[2]~input_o\ & (\SRL64unit|Mux38~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRL64unit|Mux38~0_combout\,
	datac => \SRA64unit|Mux90~50_combout\,
	datad => \SRL64unit|Mux34~0_combout\,
	combout => \SRA64unit|Mux90~51_combout\);

-- Location: LCCOMB_X66_Y42_N26
\SRA64unit|Mux156~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~146_combout\ = (\B[3]~input_o\ & (((\SRA64unit|Mux90~45_combout\) # (\B[1]~input_o\)))) # (!\B[3]~input_o\ & (\SRA64unit|Mux90~24_combout\ & ((!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64unit|Mux90~24_combout\,
	datac => \SRA64unit|Mux90~45_combout\,
	datad => \B[1]~input_o\,
	combout => \SRA64unit|Mux156~146_combout\);

-- Location: LCCOMB_X66_Y42_N4
\SRA64unit|Mux156~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~147_combout\ = (\B[1]~input_o\ & ((\SRA64unit|Mux156~146_combout\ & (\SRA64unit|Mux90~51_combout\)) # (!\SRA64unit|Mux156~146_combout\ & ((\SRA64unit|Mux90~30_combout\))))) # (!\B[1]~input_o\ & (((\SRA64unit|Mux156~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~51_combout\,
	datab => \B[1]~input_o\,
	datac => \SRA64unit|Mux156~146_combout\,
	datad => \SRA64unit|Mux90~30_combout\,
	combout => \SRA64unit|Mux156~147_combout\);

-- Location: LCCOMB_X61_Y40_N2
\SRA64unit|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux33~0_combout\ = (!\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & ((\AmuxOut[63]~1_combout\))) # (!\B[4]~input_o\ & (\AmuxOut[61]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[61]~29_combout\,
	datab => \AmuxOut[63]~1_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SRA64unit|Mux33~0_combout\);

-- Location: LCCOMB_X66_Y40_N6
\SRA64unit|Mux33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux33~1_combout\ = (\SRA64unit|Mux33~0_combout\) # (\SRL64unit|Mux34~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux33~0_combout\,
	datad => \SRL64unit|Mux34~0_combout\,
	combout => \SRA64unit|Mux33~1_combout\);

-- Location: LCCOMB_X66_Y40_N8
\SRA64unit|Mux108~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux108~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA64unit|Mux33~1_combout\))) # (!\B[2]~input_o\ & (\SRA64unit|Mux37~1_combout\)))) # (!\B[3]~input_o\ & (\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SRA64unit|Mux37~1_combout\,
	datad => \SRA64unit|Mux33~1_combout\,
	combout => \SRA64unit|Mux108~0_combout\);

-- Location: LCCOMB_X66_Y40_N26
\SRA64unit|Mux108~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux108~1_combout\ = (\B[3]~input_o\ & (\SRA64unit|Mux108~0_combout\)) # (!\B[3]~input_o\ & ((\SRA64unit|Mux108~0_combout\ & ((\SRA64unit|Mux41~1_combout\))) # (!\SRA64unit|Mux108~0_combout\ & (\SRA64unit|Mux45~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64unit|Mux108~0_combout\,
	datac => \SRA64unit|Mux45~1_combout\,
	datad => \SRA64unit|Mux41~1_combout\,
	combout => \SRA64unit|Mux108~1_combout\);

-- Location: LCCOMB_X62_Y42_N4
\SRA64unit|Mux156~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~148_combout\ = (\B[1]~input_o\ & (\SRA64unit|Mux108~1_combout\)) # (!\B[1]~input_o\ & ((\SRA64unit|Mux110~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux108~1_combout\,
	datab => \SRA64unit|Mux110~1_combout\,
	datac => \B[1]~input_o\,
	combout => \SRA64unit|Mux156~148_combout\);

-- Location: LCCOMB_X61_Y42_N30
\Y~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~120_combout\ = (\B[0]~input_o\ & ((\Y~119_combout\ & ((\SRA64unit|Mux156~148_combout\))) # (!\Y~119_combout\ & (\SRA64unit|Mux156~147_combout\)))) # (!\B[0]~input_o\ & (\Y~119_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Y~119_combout\,
	datac => \SRA64unit|Mux156~147_combout\,
	datad => \SRA64unit|Mux156~148_combout\,
	combout => \Y~120_combout\);

-- Location: LCCOMB_X60_Y41_N12
\Y~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~121_combout\ = (\Y~70_combout\ & ((\Y~69_combout\) # ((\SLL64unit|Mux190~36_combout\)))) # (!\Y~70_combout\ & (!\Y~69_combout\ & ((\Y~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~70_combout\,
	datab => \Y~69_combout\,
	datac => \SLL64unit|Mux190~36_combout\,
	datad => \Y~120_combout\,
	combout => \Y~121_combout\);

-- Location: LCCOMB_X60_Y41_N6
\Y~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~122_combout\ = (\Y~69_combout\ & ((\Y~121_combout\ & ((\SLL64unit|Mux190~35_combout\))) # (!\Y~121_combout\ & (\C[14]~input_o\)))) # (!\Y~69_combout\ & (((\Y~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[14]~input_o\,
	datab => \Y~69_combout\,
	datac => \SLL64unit|Mux190~35_combout\,
	datad => \Y~121_combout\,
	combout => \Y~122_combout\);

-- Location: LCCOMB_X66_Y40_N2
\SRA64unit|Mux90~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~49_combout\ = (\B[2]~input_o\ & (\AmuxOut[61]~29_combout\)) # (!\B[2]~input_o\ & ((\AmuxOut[57]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[61]~29_combout\,
	datab => \B[2]~input_o\,
	datac => \AmuxOut[57]~25_combout\,
	combout => \SRA64unit|Mux90~49_combout\);

-- Location: LCCOMB_X67_Y38_N12
\SRA64unit|Mux156~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~142_combout\ = (\B[1]~input_o\ & ((\B[3]~input_o\ & (\SRA64unit|Mux90~49_combout\)) # (!\B[3]~input_o\ & ((\SRA64unit|Mux90~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRA64unit|Mux90~49_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux90~28_combout\,
	combout => \SRA64unit|Mux156~142_combout\);

-- Location: LCCOMB_X67_Y38_N0
\SRA64unit|Mux156~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~144_combout\ = (!\B[1]~input_o\ & ((\B[3]~input_o\ & ((\SRA64unit|Mux90~43_combout\))) # (!\B[3]~input_o\ & (\SRA64unit|Mux78~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux78~0_combout\,
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux90~43_combout\,
	combout => \SRA64unit|Mux156~144_combout\);

-- Location: LCCOMB_X67_Y38_N10
\SRA64unit|Mux156~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~145_combout\ = (\SRL64unit|Mux47~0_combout\ & ((\SRA64unit|Mux156~142_combout\) # ((\SRA64unit|Mux156~144_combout\)))) # (!\SRL64unit|Mux47~0_combout\ & (((\AmuxOut[63]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~142_combout\,
	datab => \SRL64unit|Mux47~0_combout\,
	datac => \AmuxOut[63]~1_combout\,
	datad => \SRA64unit|Mux156~144_combout\,
	combout => \SRA64unit|Mux156~145_combout\);

-- Location: LCCOMB_X67_Y38_N14
\SRA64unit|Mux156~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~143_combout\ = (\SRA64unit|Mux156~130_combout\ & ((\SRA64unit|Mux156~142_combout\) # ((\SRL64unit|Mux80~1_combout\ & !\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux80~1_combout\,
	datab => \B[1]~input_o\,
	datac => \SRA64unit|Mux156~130_combout\,
	datad => \SRA64unit|Mux156~142_combout\,
	combout => \SRA64unit|Mux156~143_combout\);

-- Location: LCCOMB_X68_Y38_N20
\SRLorSRAout[46]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[46]~28_combout\ = (\B[0]~input_o\ & ((\SRA64unit|Mux156~143_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & (((!\ShiftFN[0]~input_o\ & \SRA64unit|Mux156~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~143_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~137_combout\,
	combout => \SRLorSRAout[46]~28_combout\);

-- Location: LCCOMB_X68_Y38_N14
\SRLorSRAout[46]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[46]~29_combout\ = (\SRLorSRAout[46]~28_combout\ & ((\SRA64unit|Mux156~145_combout\) # ((!\ShiftFN[0]~input_o\)))) # (!\SRLorSRAout[46]~28_combout\ & (((\ShiftFN[0]~input_o\ & \SRA64unit|Mux156~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~145_combout\,
	datab => \SRLorSRAout[46]~28_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~138_combout\,
	combout => \SRLorSRAout[46]~29_combout\);

-- Location: LCCOMB_X60_Y41_N8
\Y~294\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~294_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\SRLorSRAout[46]~29_combout\))) # (!\ExtWord~input_o\ & (\Y~122_combout\)))) # (!\ShiftFN[1]~input_o\ & (\Y~122_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Y~122_combout\,
	datac => \ExtWord~input_o\,
	datad => \SRLorSRAout[46]~29_combout\,
	combout => \Y~294_combout\);

-- Location: LCCOMB_X62_Y39_N22
\SRA64unit|Mux90~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~52_combout\ = (\B[2]~input_o\ & (\AmuxOut[62]~6_combout\)) # (!\B[2]~input_o\ & ((\AmuxOut[58]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \AmuxOut[62]~6_combout\,
	datad => \AmuxOut[58]~2_combout\,
	combout => \SRA64unit|Mux90~52_combout\);

-- Location: LCCOMB_X65_Y41_N2
\SRA64unit|Mux156~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~149_combout\ = (\B[1]~input_o\ & ((\B[3]~input_o\ & (\SRA64unit|Mux90~52_combout\)) # (!\B[3]~input_o\ & ((\SRA64unit|Mux90~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~52_combout\,
	datab => \B[3]~input_o\,
	datac => \SRA64unit|Mux90~31_combout\,
	datad => \B[1]~input_o\,
	combout => \SRA64unit|Mux156~149_combout\);

-- Location: LCCOMB_X68_Y38_N8
\SRA64unit|Mux156~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~150_combout\ = (\SRL64unit|Mux47~0_combout\ & ((\SRA64unit|Mux156~149_combout\) # ((\SRL64unit|Mux79~0_combout\ & !\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux79~0_combout\,
	datab => \SRA64unit|Mux156~149_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL64unit|Mux47~0_combout\,
	combout => \SRA64unit|Mux156~150_combout\);

-- Location: LCCOMB_X68_Y38_N28
\SRA64unit|Mux156~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~151_combout\ = (\SRA64unit|Mux156~150_combout\) # ((\AmuxOut[63]~1_combout\ & !\SRL64unit|Mux47~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[63]~1_combout\,
	datab => \SRL64unit|Mux47~0_combout\,
	datac => \SRA64unit|Mux156~150_combout\,
	combout => \SRA64unit|Mux156~151_combout\);

-- Location: LCCOMB_X68_Y38_N18
\SRLorSRAout[47]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[47]~30_combout\ = (\B[0]~input_o\ & ((\SRA64unit|Mux156~150_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & (((!\ShiftFN[0]~input_o\ & \SRA64unit|Mux156~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRA64unit|Mux156~150_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~143_combout\,
	combout => \SRLorSRAout[47]~30_combout\);

-- Location: LCCOMB_X68_Y38_N22
\SRLorSRAout[47]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[47]~31_combout\ = (\ShiftFN[0]~input_o\ & ((\SRLorSRAout[47]~30_combout\ & ((\SRA64unit|Mux156~151_combout\))) # (!\SRLorSRAout[47]~30_combout\ & (\SRA64unit|Mux156~145_combout\)))) # (!\ShiftFN[0]~input_o\ & 
-- (((\SRLorSRAout[47]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~145_combout\,
	datab => \SRA64unit|Mux156~151_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRLorSRAout[47]~30_combout\,
	combout => \SRLorSRAout[47]~31_combout\);

-- Location: IOIBUF_X40_Y0_N15
\C[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(15),
	o => \C[15]~input_o\);

-- Location: LCCOMB_X57_Y37_N6
\SRA64unit|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux32~0_combout\ = (!\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & ((\AmuxOut[63]~1_combout\))) # (!\B[4]~input_o\ & (\AmuxOut[62]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \AmuxOut[62]~6_combout\,
	datac => \AmuxOut[63]~1_combout\,
	datad => \B[4]~input_o\,
	combout => \SRA64unit|Mux32~0_combout\);

-- Location: LCCOMB_X57_Y37_N28
\SRL64unit|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux33~0_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\AmuxOut[46]~7_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[30]~49_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \AmuxOut[46]~7_combout\,
	datad => \AmuxOut[30]~49_combout\,
	combout => \SRL64unit|Mux33~0_combout\);

-- Location: LCCOMB_X57_Y37_N0
\SRA64unit|Mux32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux32~1_combout\ = (\SRA64unit|Mux32~0_combout\) # (\SRL64unit|Mux33~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux32~0_combout\,
	datad => \SRL64unit|Mux33~0_combout\,
	combout => \SRA64unit|Mux32~1_combout\);

-- Location: LCCOMB_X60_Y38_N24
\SRA64unit|Mux107~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux107~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRA64unit|Mux32~1_combout\)) # (!\B[2]~input_o\ & ((\SRA64unit|Mux36~1_combout\))))) # (!\B[3]~input_o\ & (((\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64unit|Mux32~1_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA64unit|Mux36~1_combout\,
	combout => \SRA64unit|Mux107~0_combout\);

-- Location: LCCOMB_X60_Y38_N18
\SRA64unit|Mux107~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux107~1_combout\ = (\SRA64unit|Mux107~0_combout\ & ((\SRA64unit|Mux40~1_combout\) # ((\B[3]~input_o\)))) # (!\SRA64unit|Mux107~0_combout\ & (((!\B[3]~input_o\ & \SRA64unit|Mux44~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux107~0_combout\,
	datab => \SRA64unit|Mux40~1_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux44~1_combout\,
	combout => \SRA64unit|Mux107~1_combout\);

-- Location: LCCOMB_X61_Y42_N26
\SRA64unit|Mux156~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~154_combout\ = (\B[1]~input_o\ & ((\SRA64unit|Mux107~1_combout\))) # (!\B[1]~input_o\ & (\SRA64unit|Mux109~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64unit|Mux109~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux107~1_combout\,
	combout => \SRA64unit|Mux156~154_combout\);

-- Location: LCCOMB_X62_Y39_N28
\SRA64unit|Mux90~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~53_combout\ = (\SRA64unit|Mux90~19_combout\ & ((\B[2]~input_o\ & (\AmuxOut[62]~6_combout\)) # (!\B[2]~input_o\ & ((\AmuxOut[58]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA64unit|Mux90~19_combout\,
	datac => \AmuxOut[62]~6_combout\,
	datad => \AmuxOut[58]~2_combout\,
	combout => \SRA64unit|Mux90~53_combout\);

-- Location: LCCOMB_X61_Y37_N4
\SRA64unit|Mux90~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~54_combout\ = (\SRA64unit|Mux90~53_combout\) # ((\B[2]~input_o\ & ((\SRL64unit|Mux33~0_combout\))) # (!\B[2]~input_o\ & (\SRL64unit|Mux37~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux37~0_combout\,
	datab => \B[2]~input_o\,
	datac => \SRA64unit|Mux90~53_combout\,
	datad => \SRL64unit|Mux33~0_combout\,
	combout => \SRA64unit|Mux90~54_combout\);

-- Location: LCCOMB_X61_Y37_N30
\SRA64unit|Mux156~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~152_combout\ = (\B[1]~input_o\ & ((\B[3]~input_o\ & (\SRA64unit|Mux90~54_combout\)) # (!\B[3]~input_o\ & ((\SRA64unit|Mux90~33_combout\))))) # (!\B[1]~input_o\ & (\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[3]~input_o\,
	datac => \SRA64unit|Mux90~54_combout\,
	datad => \SRA64unit|Mux90~33_combout\,
	combout => \SRA64unit|Mux156~152_combout\);

-- Location: LCCOMB_X61_Y37_N24
\SRA64unit|Mux156~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~153_combout\ = (\SRA64unit|Mux156~152_combout\ & ((\SRA64unit|Mux90~48_combout\) # ((\B[1]~input_o\)))) # (!\SRA64unit|Mux156~152_combout\ & (((!\B[1]~input_o\ & \SRA64unit|Mux90~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~152_combout\,
	datab => \SRA64unit|Mux90~48_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux90~27_combout\,
	combout => \SRA64unit|Mux156~153_combout\);

-- Location: LCCOMB_X61_Y42_N24
\Y~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~123_combout\ = (\ShiftFN[0]~input_o\ & (((\B[0]~input_o\) # (\SRA64unit|Mux156~148_combout\)))) # (!\ShiftFN[0]~input_o\ & (\SRA64unit|Mux156~147_combout\ & (!\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SRA64unit|Mux156~147_combout\,
	datac => \B[0]~input_o\,
	datad => \SRA64unit|Mux156~148_combout\,
	combout => \Y~123_combout\);

-- Location: LCCOMB_X61_Y42_N20
\Y~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~124_combout\ = (\B[0]~input_o\ & ((\Y~123_combout\ & (\SRA64unit|Mux156~154_combout\)) # (!\Y~123_combout\ & ((\SRA64unit|Mux156~153_combout\))))) # (!\B[0]~input_o\ & (((\Y~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~154_combout\,
	datab => \SRA64unit|Mux156~153_combout\,
	datac => \B[0]~input_o\,
	datad => \Y~123_combout\,
	combout => \Y~124_combout\);

-- Location: LCCOMB_X62_Y39_N0
\SLL64unit|Mux112~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux112~1_combout\ = (\B[3]~input_o\ & (\AmuxOut[7]~39_combout\)) # (!\B[3]~input_o\ & ((\AmuxOut[15]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \AmuxOut[7]~39_combout\,
	datac => \AmuxOut[15]~34_combout\,
	combout => \SLL64unit|Mux112~1_combout\);

-- Location: LCCOMB_X62_Y39_N2
\SLL64unit|Mux112~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux112~2_combout\ = (\B[2]~input_o\ & (\SLL64unit|Mux112~0_combout\)) # (!\B[2]~input_o\ & ((\SLL64unit|Mux112~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux112~0_combout\,
	datab => \B[2]~input_o\,
	datad => \SLL64unit|Mux112~1_combout\,
	combout => \SLL64unit|Mux112~2_combout\);

-- Location: LCCOMB_X60_Y41_N24
\SLL64unit|Mux190~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~37_combout\ = (\SRL64unit|Mux47~0_combout\ & ((\B[1]~input_o\ & (\SLL64unit|Mux114~2_combout\)) # (!\B[1]~input_o\ & ((\SLL64unit|Mux112~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux47~0_combout\,
	datab => \SLL64unit|Mux114~2_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL64unit|Mux112~2_combout\,
	combout => \SLL64unit|Mux190~37_combout\);

-- Location: LCCOMB_X60_Y41_N2
\Y~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~125_combout\ = (\Y~69_combout\ & (((\Y~70_combout\)))) # (!\Y~69_combout\ & ((\Y~70_combout\ & ((\SLL64unit|Mux190~37_combout\))) # (!\Y~70_combout\ & (\Y~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~124_combout\,
	datab => \Y~69_combout\,
	datac => \Y~70_combout\,
	datad => \SLL64unit|Mux190~37_combout\,
	combout => \Y~125_combout\);

-- Location: LCCOMB_X60_Y41_N20
\Y~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~126_combout\ = (\Y~69_combout\ & ((\Y~125_combout\ & (\SLL64unit|Mux190~36_combout\)) # (!\Y~125_combout\ & ((\C[15]~input_o\))))) # (!\Y~69_combout\ & (((\Y~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux190~36_combout\,
	datab => \Y~69_combout\,
	datac => \C[15]~input_o\,
	datad => \Y~125_combout\,
	combout => \Y~126_combout\);

-- Location: LCCOMB_X60_Y41_N10
\Y~295\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~295_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\SRLorSRAout[47]~31_combout\)) # (!\ExtWord~input_o\ & ((\Y~126_combout\))))) # (!\ShiftFN[1]~input_o\ & (((\Y~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \SRLorSRAout[47]~31_combout\,
	datac => \ExtWord~input_o\,
	datad => \Y~126_combout\,
	combout => \Y~295_combout\);

-- Location: LCCOMB_X66_Y39_N2
\SRA64unit|Mux90~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~55_combout\ = (\B[2]~input_o\ & (\AmuxOut[63]~1_combout\)) # (!\B[2]~input_o\ & ((\AmuxOut[59]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AmuxOut[63]~1_combout\,
	datac => \B[2]~input_o\,
	datad => \AmuxOut[59]~21_combout\,
	combout => \SRA64unit|Mux90~55_combout\);

-- Location: LCCOMB_X66_Y37_N0
\SRA64unit|Mux156~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~156_combout\ = (\B[3]~input_o\ & (\SRA64unit|Mux90~55_combout\)) # (!\B[3]~input_o\ & ((\SRA64unit|Mux90~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~55_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux90~34_combout\,
	combout => \SRA64unit|Mux156~156_combout\);

-- Location: LCCOMB_X67_Y38_N28
\SRA64unit|Mux156~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~155_combout\ = (!\B[1]~input_o\ & ((\B[3]~input_o\ & (\SRA64unit|Mux90~49_combout\)) # (!\B[3]~input_o\ & ((\SRA64unit|Mux90~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRA64unit|Mux90~49_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux90~28_combout\,
	combout => \SRA64unit|Mux156~155_combout\);

-- Location: LCCOMB_X66_Y37_N18
\SRA64unit|Mux156~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~157_combout\ = (\SRL64unit|Mux47~0_combout\ & ((\SRA64unit|Mux156~155_combout\) # ((\SRA64unit|Mux156~156_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux47~0_combout\,
	datab => \SRA64unit|Mux156~156_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux156~155_combout\,
	combout => \SRA64unit|Mux156~157_combout\);

-- Location: LCCOMB_X65_Y37_N24
\SRLorSRAout[48]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[48]~32_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\) # (\SRA64unit|Mux156~157_combout\)))) # (!\B[0]~input_o\ & (\SRA64unit|Mux156~150_combout\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~150_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~157_combout\,
	combout => \SRLorSRAout[48]~32_combout\);

-- Location: LCCOMB_X62_Y37_N14
\SRA64unit|Mux156~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~264_combout\ = (\B[3]~input_o\ & ((\B[1]~input_o\ & (\B[2]~input_o\)) # (!\B[1]~input_o\ & ((!\SRL64unit|Mux47~0_combout\))))) # (!\B[3]~input_o\ & (((!\SRL64unit|Mux47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SRL64unit|Mux47~0_combout\,
	datad => \B[1]~input_o\,
	combout => \SRA64unit|Mux156~264_combout\);

-- Location: LCCOMB_X66_Y37_N28
\SRA64unit|Mux74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux74~0_combout\ = (\B[3]~input_o\ & ((\SRL64unit|Mux47~0_combout\ & ((\AmuxOut[59]~21_combout\))) # (!\SRL64unit|Mux47~0_combout\ & (\AmuxOut[63]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[63]~1_combout\,
	datab => \AmuxOut[59]~21_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL64unit|Mux47~0_combout\,
	combout => \SRA64unit|Mux74~0_combout\);

-- Location: LCCOMB_X66_Y37_N30
\SRA64unit|Mux156~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~158_combout\ = (\B[1]~input_o\ & ((\SRA64unit|Mux74~0_combout\) # ((\SRA64unit|Mux90~34_combout\ & !\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~34_combout\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux74~0_combout\,
	combout => \SRA64unit|Mux156~158_combout\);

-- Location: LCCOMB_X66_Y37_N24
\SRA64unit|Mux156~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~159_combout\ = (\SRA64unit|Mux156~264_combout\ & (\AmuxOut[63]~1_combout\)) # (!\SRA64unit|Mux156~264_combout\ & (((\SRA64unit|Mux156~158_combout\) # (\SRA64unit|Mux156~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[63]~1_combout\,
	datab => \SRA64unit|Mux156~264_combout\,
	datac => \SRA64unit|Mux156~158_combout\,
	datad => \SRA64unit|Mux156~155_combout\,
	combout => \SRA64unit|Mux156~159_combout\);

-- Location: LCCOMB_X65_Y37_N10
\SRLorSRAout[48]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[48]~33_combout\ = (\SRLorSRAout[48]~32_combout\ & (((\SRA64unit|Mux156~159_combout\) # (!\ShiftFN[0]~input_o\)))) # (!\SRLorSRAout[48]~32_combout\ & (\SRA64unit|Mux156~151_combout\ & (\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~151_combout\,
	datab => \SRLorSRAout[48]~32_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~159_combout\,
	combout => \SRLorSRAout[48]~33_combout\);

-- Location: LCCOMB_X61_Y42_N6
\Y~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~127_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\SRA64unit|Mux156~154_combout\))) # (!\ShiftFN[0]~input_o\ & (\SRA64unit|Mux156~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRA64unit|Mux156~153_combout\,
	datac => \SRA64unit|Mux156~154_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y~127_combout\);

-- Location: LCCOMB_X66_Y39_N4
\SRA64unit|Mux90~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~56_combout\ = (\SRA64unit|Mux90~19_combout\ & ((\B[2]~input_o\ & (\AmuxOut[63]~1_combout\)) # (!\B[2]~input_o\ & ((\AmuxOut[59]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~19_combout\,
	datab => \AmuxOut[63]~1_combout\,
	datac => \B[2]~input_o\,
	datad => \AmuxOut[59]~21_combout\,
	combout => \SRA64unit|Mux90~56_combout\);

-- Location: LCCOMB_X63_Y40_N0
\SRL64unit|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux32~0_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\AmuxOut[47]~18_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[31]~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[47]~18_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \AmuxOut[31]~33_combout\,
	datad => \B[4]~input_o\,
	combout => \SRL64unit|Mux32~0_combout\);

-- Location: LCCOMB_X63_Y41_N8
\SRA64unit|Mux90~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~57_combout\ = (\SRA64unit|Mux90~56_combout\) # ((\B[2]~input_o\ & ((\SRL64unit|Mux32~0_combout\))) # (!\B[2]~input_o\ & (\SRL64unit|Mux36~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux36~0_combout\,
	datab => \SRA64unit|Mux90~56_combout\,
	datac => \B[2]~input_o\,
	datad => \SRL64unit|Mux32~0_combout\,
	combout => \SRA64unit|Mux90~57_combout\);

-- Location: LCCOMB_X63_Y41_N26
\SRA64unit|Mux156~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~160_combout\ = (\B[1]~input_o\ & ((\B[3]~input_o\ & (\SRA64unit|Mux90~57_combout\)) # (!\B[3]~input_o\ & ((\SRA64unit|Mux90~36_combout\))))) # (!\B[1]~input_o\ & (((\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRA64unit|Mux90~57_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux90~36_combout\,
	combout => \SRA64unit|Mux156~160_combout\);

-- Location: LCCOMB_X66_Y42_N30
\SRA64unit|Mux156~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~161_combout\ = (\B[1]~input_o\ & (((\SRA64unit|Mux156~160_combout\)))) # (!\B[1]~input_o\ & ((\SRA64unit|Mux156~160_combout\ & (\SRA64unit|Mux90~51_combout\)) # (!\SRA64unit|Mux156~160_combout\ & ((\SRA64unit|Mux90~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~51_combout\,
	datab => \B[1]~input_o\,
	datac => \SRA64unit|Mux156~160_combout\,
	datad => \SRA64unit|Mux90~30_combout\,
	combout => \SRA64unit|Mux156~161_combout\);

-- Location: LCCOMB_X65_Y36_N26
\SRA64unit|Mux156~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~252_combout\ = (\AmuxOut[63]~1_combout\ & (\B[5]~input_o\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AmuxOut[63]~1_combout\,
	datac => \B[5]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \SRA64unit|Mux156~252_combout\);

-- Location: LCCOMB_X62_Y43_N6
\SRA64unit|Mux90~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~58_combout\ = (\B[2]~input_o\ & ((\SRL64unit|Mux32~0_combout\) # ((\SRA64unit|Mux156~252_combout\)))) # (!\B[2]~input_o\ & (((\SRA64unit|Mux35~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux32~0_combout\,
	datab => \SRA64unit|Mux156~252_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA64unit|Mux35~1_combout\,
	combout => \SRA64unit|Mux90~58_combout\);

-- Location: LCCOMB_X62_Y43_N20
\SRA64unit|Mux106~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux106~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA64unit|Mux39~1_combout\))) # (!\B[2]~input_o\ & (\SRA64unit|Mux43~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64unit|Mux43~1_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA64unit|Mux39~1_combout\,
	combout => \SRA64unit|Mux106~0_combout\);

-- Location: LCCOMB_X62_Y43_N8
\SRA64unit|Mux106~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux106~1_combout\ = (\SRA64unit|Mux106~0_combout\) # ((\SRA64unit|Mux90~58_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~58_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux106~0_combout\,
	combout => \SRA64unit|Mux106~1_combout\);

-- Location: LCCOMB_X62_Y42_N22
\SRA64unit|Mux156~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~162_combout\ = (\B[1]~input_o\ & ((\SRA64unit|Mux106~1_combout\))) # (!\B[1]~input_o\ & (\SRA64unit|Mux108~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux108~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux106~1_combout\,
	combout => \SRA64unit|Mux156~162_combout\);

-- Location: LCCOMB_X61_Y38_N24
\Y~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~128_combout\ = (\Y~127_combout\ & (((\SRA64unit|Mux156~162_combout\)) # (!\B[0]~input_o\))) # (!\Y~127_combout\ & (\B[0]~input_o\ & (\SRA64unit|Mux156~161_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~127_combout\,
	datab => \B[0]~input_o\,
	datac => \SRA64unit|Mux156~161_combout\,
	datad => \SRA64unit|Mux156~162_combout\,
	combout => \Y~128_combout\);

-- Location: LCCOMB_X61_Y36_N26
\SRA64unit|Mux19~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux19~16_combout\ = (\B[4]~input_o\ & (\AmuxOut[0]~0_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[16]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[0]~0_combout\,
	datab => \B[4]~input_o\,
	datad => \AmuxOut[16]~61_combout\,
	combout => \SRA64unit|Mux19~16_combout\);

-- Location: LCCOMB_X58_Y36_N6
\SLL64unit|Mux111~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux111~0_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\AmuxOut[8]~63_combout\))) # (!\B[3]~input_o\ & (\SRA64unit|Mux19~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux19~16_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \AmuxOut[8]~63_combout\,
	combout => \SLL64unit|Mux111~0_combout\);

-- Location: LCCOMB_X58_Y38_N10
\SLL64unit|Mux111~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux111~1_combout\ = (\SLL64unit|Mux111~0_combout\) # ((\B[2]~input_o\ & \SLL64unit|Mux115~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL64unit|Mux111~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL64unit|Mux115~1_combout\,
	combout => \SLL64unit|Mux111~1_combout\);

-- Location: LCCOMB_X58_Y38_N28
\SLL64unit|Mux190~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~38_combout\ = (\SRA64unit|Mux156~130_combout\ & ((\B[1]~input_o\ & ((\SLL64unit|Mux113~2_combout\))) # (!\B[1]~input_o\ & (\SLL64unit|Mux111~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux111~1_combout\,
	datab => \SLL64unit|Mux113~2_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux156~130_combout\,
	combout => \SLL64unit|Mux190~38_combout\);

-- Location: LCCOMB_X57_Y38_N8
\Y~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~129_combout\ = (\Y~70_combout\ & ((\Y~69_combout\) # ((\SLL64unit|Mux190~38_combout\)))) # (!\Y~70_combout\ & (!\Y~69_combout\ & (\Y~128_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~70_combout\,
	datab => \Y~69_combout\,
	datac => \Y~128_combout\,
	datad => \SLL64unit|Mux190~38_combout\,
	combout => \Y~129_combout\);

-- Location: IOIBUF_X85_Y73_N15
\C[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(16),
	o => \C[16]~input_o\);

-- Location: LCCOMB_X60_Y41_N30
\Y~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~130_combout\ = (\Y~129_combout\ & (((\SLL64unit|Mux190~37_combout\)) # (!\Y~69_combout\))) # (!\Y~129_combout\ & (\Y~69_combout\ & (\C[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~129_combout\,
	datab => \Y~69_combout\,
	datac => \C[16]~input_o\,
	datad => \SLL64unit|Mux190~37_combout\,
	combout => \Y~130_combout\);

-- Location: LCCOMB_X60_Y41_N4
\Y~296\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~296_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\SRLorSRAout[48]~33_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Y~130_combout\))))) # (!\ExtWord~input_o\ & (((\Y~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLorSRAout[48]~33_combout\,
	datab => \ExtWord~input_o\,
	datac => \Y~130_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~296_combout\);

-- Location: LCCOMB_X65_Y41_N28
\SRA64unit|Mux156~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~163_combout\ = (!\B[1]~input_o\ & ((\B[3]~input_o\ & (\SRA64unit|Mux90~52_combout\)) # (!\B[3]~input_o\ & ((\SRA64unit|Mux90~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~52_combout\,
	datab => \B[3]~input_o\,
	datac => \SRA64unit|Mux90~31_combout\,
	datad => \B[1]~input_o\,
	combout => \SRA64unit|Mux156~163_combout\);

-- Location: LCCOMB_X60_Y39_N8
\SRL64unit|Mux75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux75~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\AmuxOut[56]~16_combout\)) # (!\B[2]~input_o\ & ((\AmuxOut[52]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \AmuxOut[56]~16_combout\,
	datac => \AmuxOut[52]~10_combout\,
	datad => \B[3]~input_o\,
	combout => \SRL64unit|Mux75~0_combout\);

-- Location: LCCOMB_X62_Y37_N8
\SRA64unit|Mux156~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~164_combout\ = (\SRL64unit|Mux75~0_combout\) # ((\AmuxOut[60]~14_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AmuxOut[60]~14_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL64unit|Mux75~0_combout\,
	combout => \SRA64unit|Mux156~164_combout\);

-- Location: LCCOMB_X66_Y37_N20
\SRA64unit|Mux156~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~265_combout\ = (\SRL64unit|Mux47~0_combout\ & (((!\B[1]~input_o\) # (!\B[3]~input_o\)) # (!\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRL64unit|Mux47~0_combout\,
	combout => \SRA64unit|Mux156~265_combout\);

-- Location: LCCOMB_X62_Y37_N2
\SRA64unit|Mux156~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~165_combout\ = (\SRA64unit|Mux156~265_combout\ & ((\SRA64unit|Mux156~163_combout\) # ((\SRA64unit|Mux156~164_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~163_combout\,
	datab => \SRA64unit|Mux156~164_combout\,
	datac => \SRA64unit|Mux156~265_combout\,
	datad => \B[1]~input_o\,
	combout => \SRA64unit|Mux156~165_combout\);

-- Location: LCCOMB_X65_Y37_N12
\SRLorSRAout[49]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[49]~34_combout\ = (\B[0]~input_o\ & ((\SRA64unit|Mux156~165_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & (((!\ShiftFN[0]~input_o\ & \SRA64unit|Mux156~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~165_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~157_combout\,
	combout => \SRLorSRAout[49]~34_combout\);

-- Location: LCCOMB_X62_Y37_N28
\SRA64unit|Mux73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux73~0_combout\ = (\B[3]~input_o\ & ((\SRL64unit|Mux47~0_combout\ & ((\AmuxOut[60]~14_combout\))) # (!\SRL64unit|Mux47~0_combout\ & (\AmuxOut[63]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[63]~1_combout\,
	datab => \SRL64unit|Mux47~0_combout\,
	datac => \B[3]~input_o\,
	datad => \AmuxOut[60]~14_combout\,
	combout => \SRA64unit|Mux73~0_combout\);

-- Location: LCCOMB_X62_Y37_N6
\SRA64unit|Mux73~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux73~1_combout\ = (\SRL64unit|Mux75~0_combout\) # (\SRA64unit|Mux73~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux75~0_combout\,
	datad => \SRA64unit|Mux73~0_combout\,
	combout => \SRA64unit|Mux73~1_combout\);

-- Location: LCCOMB_X62_Y37_N24
\SRA64unit|Mux156~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~166_combout\ = (!\SRA64unit|Mux156~264_combout\ & ((\SRA64unit|Mux156~163_combout\) # ((\B[1]~input_o\ & \SRA64unit|Mux73~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~163_combout\,
	datab => \B[1]~input_o\,
	datac => \SRA64unit|Mux156~264_combout\,
	datad => \SRA64unit|Mux73~1_combout\,
	combout => \SRA64unit|Mux156~166_combout\);

-- Location: LCCOMB_X62_Y37_N26
\SRA64unit|Mux156~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~167_combout\ = (\SRA64unit|Mux156~166_combout\) # ((\AmuxOut[63]~1_combout\ & \SRA64unit|Mux156~264_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[63]~1_combout\,
	datab => \SRA64unit|Mux156~264_combout\,
	datad => \SRA64unit|Mux156~166_combout\,
	combout => \SRA64unit|Mux156~167_combout\);

-- Location: LCCOMB_X65_Y37_N30
\SRLorSRAout[49]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[49]~35_combout\ = (\SRLorSRAout[49]~34_combout\ & ((\SRA64unit|Mux156~167_combout\) # ((!\ShiftFN[0]~input_o\)))) # (!\SRLorSRAout[49]~34_combout\ & (((\ShiftFN[0]~input_o\ & \SRA64unit|Mux156~159_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLorSRAout[49]~34_combout\,
	datab => \SRA64unit|Mux156~167_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~159_combout\,
	combout => \SRLorSRAout[49]~35_combout\);

-- Location: IOIBUF_X47_Y73_N1
\C[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(17),
	o => \C[17]~input_o\);

-- Location: LCCOMB_X70_Y40_N18
\SRA64unit|Mux19~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux19~17_combout\ = (\B[4]~input_o\ & ((\AmuxOut[1]~42_combout\))) # (!\B[4]~input_o\ & (\AmuxOut[17]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[17]~41_combout\,
	datab => \AmuxOut[1]~42_combout\,
	datac => \B[4]~input_o\,
	combout => \SRA64unit|Mux19~17_combout\);

-- Location: LCCOMB_X69_Y39_N8
\SLL64unit|Mux110~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux110~0_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\AmuxOut[9]~48_combout\))) # (!\B[3]~input_o\ & (\SRA64unit|Mux19~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux19~17_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \AmuxOut[9]~48_combout\,
	combout => \SLL64unit|Mux110~0_combout\);

-- Location: LCCOMB_X65_Y39_N30
\SLL64unit|Mux110~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux110~1_combout\ = (\SLL64unit|Mux110~0_combout\) # ((\B[2]~input_o\ & \SLL64unit|Mux114~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL64unit|Mux114~1_combout\,
	datac => \SLL64unit|Mux110~0_combout\,
	combout => \SLL64unit|Mux110~1_combout\);

-- Location: LCCOMB_X57_Y38_N2
\SLL64unit|Mux190~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~39_combout\ = (\SRA64unit|Mux156~130_combout\ & ((\B[1]~input_o\ & ((\SLL64unit|Mux112~2_combout\))) # (!\B[1]~input_o\ & (\SLL64unit|Mux110~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~130_combout\,
	datab => \B[1]~input_o\,
	datac => \SLL64unit|Mux110~1_combout\,
	datad => \SLL64unit|Mux112~2_combout\,
	combout => \SLL64unit|Mux190~39_combout\);

-- Location: LCCOMB_X61_Y38_N26
\Y~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~131_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\SRA64unit|Mux156~162_combout\))) # (!\ShiftFN[0]~input_o\ & (\SRA64unit|Mux156~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~161_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~162_combout\,
	combout => \Y~131_combout\);

-- Location: LCCOMB_X60_Y37_N8
\SRA64unit|Mux90~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~59_combout\ = (!\B[2]~input_o\ & ((\SRL64unit|Mux35~0_combout\) # ((\SRA64unit|Mux90~19_combout\ & \AmuxOut[60]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA64unit|Mux90~19_combout\,
	datac => \AmuxOut[60]~14_combout\,
	datad => \SRL64unit|Mux35~0_combout\,
	combout => \SRA64unit|Mux90~59_combout\);

-- Location: LCCOMB_X61_Y36_N12
\SRA64unit|Mux90~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~60_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & ((\AmuxOut[48]~12_combout\))) # (!\B[4]~input_o\ & (\AmuxOut[32]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[32]~13_combout\,
	datab => \B[4]~input_o\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \AmuxOut[48]~12_combout\,
	combout => \SRA64unit|Mux90~60_combout\);

-- Location: LCCOMB_X61_Y37_N18
\SRA64unit|Mux90~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~61_combout\ = (\SRA64unit|Mux90~59_combout\) # ((\B[2]~input_o\ & \SRA64unit|Mux90~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~59_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA64unit|Mux90~60_combout\,
	combout => \SRA64unit|Mux90~61_combout\);

-- Location: LCCOMB_X61_Y37_N28
\SRA64unit|Mux156~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~168_combout\ = (\B[3]~input_o\ & (((\SRA64unit|Mux90~61_combout\) # (!\B[1]~input_o\)))) # (!\B[3]~input_o\ & (\SRA64unit|Mux90~38_combout\ & (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~38_combout\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux90~61_combout\,
	combout => \SRA64unit|Mux156~168_combout\);

-- Location: LCCOMB_X61_Y37_N6
\SRA64unit|Mux156~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~169_combout\ = (\B[1]~input_o\ & (((\SRA64unit|Mux156~168_combout\)))) # (!\B[1]~input_o\ & ((\SRA64unit|Mux156~168_combout\ & (\SRA64unit|Mux90~54_combout\)) # (!\SRA64unit|Mux156~168_combout\ & ((\SRA64unit|Mux90~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRA64unit|Mux90~54_combout\,
	datac => \SRA64unit|Mux90~33_combout\,
	datad => \SRA64unit|Mux156~168_combout\,
	combout => \SRA64unit|Mux156~169_combout\);

-- Location: LCCOMB_X60_Y36_N8
\SRA64unit|Mux105~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux105~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA64unit|Mux38~1_combout\))) # (!\B[2]~input_o\ & (\SRA64unit|Mux42~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \SRA64unit|Mux42~1_combout\,
	datad => \SRA64unit|Mux38~1_combout\,
	combout => \SRA64unit|Mux105~0_combout\);

-- Location: LCCOMB_X60_Y36_N10
\SRA64unit|Mux90~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~62_combout\ = (\B[2]~input_o\ & (((\SRA64unit|Mux90~60_combout\) # (\SRA64unit|Mux156~252_combout\)))) # (!\B[2]~input_o\ & (\SRA64unit|Mux34~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA64unit|Mux34~1_combout\,
	datac => \SRA64unit|Mux90~60_combout\,
	datad => \SRA64unit|Mux156~252_combout\,
	combout => \SRA64unit|Mux90~62_combout\);

-- Location: LCCOMB_X60_Y36_N20
\SRA64unit|Mux105~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux105~1_combout\ = (\SRA64unit|Mux105~0_combout\) # ((\B[3]~input_o\ & \SRA64unit|Mux90~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64unit|Mux105~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux90~62_combout\,
	combout => \SRA64unit|Mux105~1_combout\);

-- Location: LCCOMB_X61_Y38_N28
\SRA64unit|Mux156~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~170_combout\ = (\B[1]~input_o\ & (\SRA64unit|Mux105~1_combout\)) # (!\B[1]~input_o\ & ((\SRA64unit|Mux107~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64unit|Mux105~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux107~1_combout\,
	combout => \SRA64unit|Mux156~170_combout\);

-- Location: LCCOMB_X61_Y38_N22
\Y~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~132_combout\ = (\Y~131_combout\ & (((\SRA64unit|Mux156~170_combout\)) # (!\B[0]~input_o\))) # (!\Y~131_combout\ & (\B[0]~input_o\ & (\SRA64unit|Mux156~169_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~131_combout\,
	datab => \B[0]~input_o\,
	datac => \SRA64unit|Mux156~169_combout\,
	datad => \SRA64unit|Mux156~170_combout\,
	combout => \Y~132_combout\);

-- Location: LCCOMB_X57_Y38_N20
\Y~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~133_combout\ = (\Y~70_combout\ & ((\SLL64unit|Mux190~39_combout\) # ((\Y~69_combout\)))) # (!\Y~70_combout\ & (((!\Y~69_combout\ & \Y~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~70_combout\,
	datab => \SLL64unit|Mux190~39_combout\,
	datac => \Y~69_combout\,
	datad => \Y~132_combout\,
	combout => \Y~133_combout\);

-- Location: LCCOMB_X57_Y38_N14
\Y~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~134_combout\ = (\Y~133_combout\ & (((\SLL64unit|Mux190~38_combout\) # (!\Y~69_combout\)))) # (!\Y~133_combout\ & (\C[17]~input_o\ & (\Y~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[17]~input_o\,
	datab => \Y~133_combout\,
	datac => \Y~69_combout\,
	datad => \SLL64unit|Mux190~38_combout\,
	combout => \Y~134_combout\);

-- Location: LCCOMB_X60_Y41_N22
\Y~297\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~297_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\SRLorSRAout[49]~35_combout\)) # (!\ExtWord~input_o\ & ((\Y~134_combout\))))) # (!\ShiftFN[1]~input_o\ & (((\Y~134_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \SRLorSRAout[49]~35_combout\,
	datad => \Y~134_combout\,
	combout => \Y~297_combout\);

-- Location: IOIBUF_X0_Y34_N8
\C[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(18),
	o => \C[18]~input_o\);

-- Location: LCCOMB_X66_Y40_N4
\SRA64unit|Mux90~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~63_combout\ = (!\B[2]~input_o\ & ((\SRL64unit|Mux34~0_combout\) # ((\AmuxOut[61]~29_combout\ & \SRA64unit|Mux90~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[61]~29_combout\,
	datab => \B[2]~input_o\,
	datac => \SRA64unit|Mux90~19_combout\,
	datad => \SRL64unit|Mux34~0_combout\,
	combout => \SRA64unit|Mux90~63_combout\);

-- Location: LCCOMB_X70_Y40_N4
\SRA64unit|Mux90~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~64_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\AmuxOut[49]~27_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[33]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \AmuxOut[49]~27_combout\,
	datac => \B[4]~input_o\,
	datad => \AmuxOut[33]~28_combout\,
	combout => \SRA64unit|Mux90~64_combout\);

-- Location: LCCOMB_X66_Y40_N30
\SRA64unit|Mux90~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~65_combout\ = (\SRA64unit|Mux90~63_combout\) # ((\B[2]~input_o\ & \SRA64unit|Mux90~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \SRA64unit|Mux90~63_combout\,
	datad => \SRA64unit|Mux90~64_combout\,
	combout => \SRA64unit|Mux90~65_combout\);

-- Location: LCCOMB_X63_Y41_N12
\SRA64unit|Mux156~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~175_combout\ = (\B[3]~input_o\ & ((\SRA64unit|Mux90~65_combout\) # ((!\B[1]~input_o\)))) # (!\B[3]~input_o\ & (((\SRA64unit|Mux90~40_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~65_combout\,
	datab => \SRA64unit|Mux90~40_combout\,
	datac => \B[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRA64unit|Mux156~175_combout\);

-- Location: LCCOMB_X63_Y41_N6
\SRA64unit|Mux156~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~176_combout\ = (\SRA64unit|Mux156~175_combout\ & (((\SRA64unit|Mux90~57_combout\) # (\B[1]~input_o\)))) # (!\SRA64unit|Mux156~175_combout\ & (\SRA64unit|Mux90~36_combout\ & ((!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~175_combout\,
	datab => \SRA64unit|Mux90~36_combout\,
	datac => \SRA64unit|Mux90~57_combout\,
	datad => \B[1]~input_o\,
	combout => \SRA64unit|Mux156~176_combout\);

-- Location: LCCOMB_X61_Y38_N0
\Y~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~135_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\SRA64unit|Mux156~170_combout\))) # (!\ShiftFN[0]~input_o\ & (\SRA64unit|Mux156~169_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~169_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~170_combout\,
	combout => \Y~135_combout\);

-- Location: LCCOMB_X66_Y40_N24
\SRA64unit|Mux104~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux104~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRA64unit|Mux37~1_combout\)) # (!\B[2]~input_o\ & ((\SRA64unit|Mux41~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SRA64unit|Mux37~1_combout\,
	datad => \SRA64unit|Mux41~1_combout\,
	combout => \SRA64unit|Mux104~0_combout\);

-- Location: LCCOMB_X66_Y40_N18
\SRA64unit|Mux90~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~66_combout\ = (\B[2]~input_o\ & (((\SRA64unit|Mux156~252_combout\) # (\SRA64unit|Mux90~64_combout\)))) # (!\B[2]~input_o\ & (\SRA64unit|Mux33~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux33~1_combout\,
	datab => \B[2]~input_o\,
	datac => \SRA64unit|Mux156~252_combout\,
	datad => \SRA64unit|Mux90~64_combout\,
	combout => \SRA64unit|Mux90~66_combout\);

-- Location: LCCOMB_X66_Y40_N20
\SRA64unit|Mux104~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux104~1_combout\ = (\SRA64unit|Mux104~0_combout\) # ((\B[3]~input_o\ & \SRA64unit|Mux90~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64unit|Mux104~0_combout\,
	datad => \SRA64unit|Mux90~66_combout\,
	combout => \SRA64unit|Mux104~1_combout\);

-- Location: LCCOMB_X62_Y42_N0
\SRA64unit|Mux156~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~177_combout\ = (\B[1]~input_o\ & (\SRA64unit|Mux104~1_combout\)) # (!\B[1]~input_o\ & ((\SRA64unit|Mux106~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux104~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux106~1_combout\,
	combout => \SRA64unit|Mux156~177_combout\);

-- Location: LCCOMB_X61_Y38_N2
\Y~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~136_combout\ = (\Y~135_combout\ & (((\SRA64unit|Mux156~177_combout\) # (!\B[0]~input_o\)))) # (!\Y~135_combout\ & (\SRA64unit|Mux156~176_combout\ & ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~176_combout\,
	datab => \Y~135_combout\,
	datac => \SRA64unit|Mux156~177_combout\,
	datad => \B[0]~input_o\,
	combout => \Y~136_combout\);

-- Location: LCCOMB_X58_Y40_N16
\SRA64unit|Mux19~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux19~18_combout\ = (\B[4]~input_o\ & (\AmuxOut[2]~55_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[18]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[2]~55_combout\,
	datab => \B[4]~input_o\,
	datad => \AmuxOut[18]~56_combout\,
	combout => \SRA64unit|Mux19~18_combout\);

-- Location: LCCOMB_X58_Y37_N2
\SLL64unit|Mux109~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux109~0_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\AmuxOut[10]~52_combout\))) # (!\B[3]~input_o\ & (\SRA64unit|Mux19~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \SRA64unit|Mux19~18_combout\,
	datad => \AmuxOut[10]~52_combout\,
	combout => \SLL64unit|Mux109~0_combout\);

-- Location: LCCOMB_X58_Y38_N0
\SLL64unit|Mux109~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux109~1_combout\ = (\SLL64unit|Mux109~0_combout\) # ((\SLL64unit|Mux113~1_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL64unit|Mux113~1_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL64unit|Mux109~0_combout\,
	combout => \SLL64unit|Mux109~1_combout\);

-- Location: LCCOMB_X58_Y38_N2
\SLL64unit|Mux190~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~40_combout\ = (\SRA64unit|Mux156~270_combout\ & ((\B[1]~input_o\ & (\SLL64unit|Mux111~1_combout\)) # (!\B[1]~input_o\ & ((\SLL64unit|Mux109~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux111~1_combout\,
	datab => \SRA64unit|Mux156~270_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL64unit|Mux109~1_combout\,
	combout => \SLL64unit|Mux190~40_combout\);

-- Location: LCCOMB_X57_Y38_N24
\Y~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~137_combout\ = (\Y~70_combout\ & ((\Y~69_combout\) # ((\SLL64unit|Mux190~40_combout\)))) # (!\Y~70_combout\ & (!\Y~69_combout\ & (\Y~136_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~70_combout\,
	datab => \Y~69_combout\,
	datac => \Y~136_combout\,
	datad => \SLL64unit|Mux190~40_combout\,
	combout => \Y~137_combout\);

-- Location: LCCOMB_X57_Y38_N26
\Y~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~138_combout\ = (\Y~69_combout\ & ((\Y~137_combout\ & ((\SLL64unit|Mux190~39_combout\))) # (!\Y~137_combout\ & (\C[18]~input_o\)))) # (!\Y~69_combout\ & (((\Y~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[18]~input_o\,
	datab => \SLL64unit|Mux190~39_combout\,
	datac => \Y~69_combout\,
	datad => \Y~137_combout\,
	combout => \Y~138_combout\);

-- Location: LCCOMB_X58_Y38_N22
\SRA64unit|Mux156~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~266_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\))) # (!\B[3]~input_o\ & (!\SRL64unit|Mux47~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux47~0_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SRA64unit|Mux156~266_combout\);

-- Location: LCCOMB_X66_Y37_N26
\SRL64unit|Mux74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux74~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\AmuxOut[57]~25_combout\)) # (!\B[2]~input_o\ & ((\AmuxOut[53]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \AmuxOut[57]~25_combout\,
	datad => \AmuxOut[53]~31_combout\,
	combout => \SRL64unit|Mux74~0_combout\);

-- Location: LCCOMB_X66_Y37_N16
\SRA64unit|Mux74~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux74~1_combout\ = (\SRA64unit|Mux74~0_combout\) # ((!\B[3]~input_o\ & \SRA64unit|Mux90~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64unit|Mux74~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux90~34_combout\,
	combout => \SRA64unit|Mux74~1_combout\);

-- Location: LCCOMB_X66_Y37_N10
\SRA64unit|Mux72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux72~0_combout\ = (\B[3]~input_o\ & ((\SRL64unit|Mux47~0_combout\ & (\AmuxOut[61]~29_combout\)) # (!\SRL64unit|Mux47~0_combout\ & ((\AmuxOut[63]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[61]~29_combout\,
	datab => \SRL64unit|Mux47~0_combout\,
	datac => \B[3]~input_o\,
	datad => \AmuxOut[63]~1_combout\,
	combout => \SRA64unit|Mux72~0_combout\);

-- Location: LCCOMB_X66_Y37_N12
\SRA64unit|Mux156~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~173_combout\ = (\B[1]~input_o\ & ((\SRL64unit|Mux74~0_combout\) # ((\SRA64unit|Mux72~0_combout\)))) # (!\B[1]~input_o\ & (((\SRA64unit|Mux74~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux74~0_combout\,
	datab => \SRA64unit|Mux74~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux72~0_combout\,
	combout => \SRA64unit|Mux156~173_combout\);

-- Location: LCCOMB_X58_Y38_N30
\SRA64unit|Mux156~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~174_combout\ = (\SRA64unit|Mux156~266_combout\ & (\AmuxOut[63]~1_combout\)) # (!\SRA64unit|Mux156~266_combout\ & ((\SRA64unit|Mux156~173_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[63]~1_combout\,
	datac => \SRA64unit|Mux156~266_combout\,
	datad => \SRA64unit|Mux156~173_combout\,
	combout => \SRA64unit|Mux156~174_combout\);

-- Location: LCCOMB_X66_Y37_N4
\SRA64unit|Mux156~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~171_combout\ = (\SRL64unit|Mux74~0_combout\) # ((\B[3]~input_o\ & \AmuxOut[61]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux74~0_combout\,
	datab => \B[3]~input_o\,
	datac => \AmuxOut[61]~29_combout\,
	combout => \SRA64unit|Mux156~171_combout\);

-- Location: LCCOMB_X66_Y37_N22
\SRA64unit|Mux156~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~172_combout\ = (\SRA64unit|Mux156~265_combout\ & ((\B[1]~input_o\ & (\SRA64unit|Mux156~171_combout\)) # (!\B[1]~input_o\ & ((\SRA64unit|Mux156~156_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRA64unit|Mux156~265_combout\,
	datac => \SRA64unit|Mux156~171_combout\,
	datad => \SRA64unit|Mux156~156_combout\,
	combout => \SRA64unit|Mux156~172_combout\);

-- Location: LCCOMB_X65_Y37_N16
\SRLorSRAout[50]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[50]~36_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\) # (\SRA64unit|Mux156~172_combout\)))) # (!\B[0]~input_o\ & (\SRA64unit|Mux156~165_combout\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~165_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~172_combout\,
	combout => \SRLorSRAout[50]~36_combout\);

-- Location: LCCOMB_X65_Y37_N26
\SRLorSRAout[50]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[50]~37_combout\ = (\ShiftFN[0]~input_o\ & ((\SRLorSRAout[50]~36_combout\ & (\SRA64unit|Mux156~174_combout\)) # (!\SRLorSRAout[50]~36_combout\ & ((\SRA64unit|Mux156~167_combout\))))) # (!\ShiftFN[0]~input_o\ & 
-- (((\SRLorSRAout[50]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~174_combout\,
	datab => \SRA64unit|Mux156~167_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRLorSRAout[50]~36_combout\,
	combout => \SRLorSRAout[50]~37_combout\);

-- Location: LCCOMB_X57_Y41_N30
\Y~298\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~298_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\SRLorSRAout[50]~37_combout\))) # (!\ExtWord~input_o\ & (\Y~138_combout\)))) # (!\ShiftFN[1]~input_o\ & (\Y~138_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~138_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \SRLorSRAout[50]~37_combout\,
	datad => \ExtWord~input_o\,
	combout => \Y~298_combout\);

-- Location: LCCOMB_X62_Y37_N20
\SRL64unit|Mux73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64unit|Mux73~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\AmuxOut[58]~2_combout\))) # (!\B[2]~input_o\ & (\AmuxOut[54]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[54]~8_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \AmuxOut[58]~2_combout\,
	combout => \SRL64unit|Mux73~0_combout\);

-- Location: LCCOMB_X62_Y37_N10
\SRA64unit|Mux71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux71~0_combout\ = (\B[3]~input_o\ & ((\SRL64unit|Mux47~0_combout\ & ((\AmuxOut[62]~6_combout\))) # (!\SRL64unit|Mux47~0_combout\ & (\AmuxOut[63]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[63]~1_combout\,
	datab => \SRL64unit|Mux47~0_combout\,
	datac => \B[3]~input_o\,
	datad => \AmuxOut[62]~6_combout\,
	combout => \SRA64unit|Mux71~0_combout\);

-- Location: LCCOMB_X62_Y37_N12
\SRA64unit|Mux156~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~180_combout\ = (\B[1]~input_o\ & (((\SRL64unit|Mux73~0_combout\) # (\SRA64unit|Mux71~0_combout\)))) # (!\B[1]~input_o\ & (\SRA64unit|Mux73~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux73~1_combout\,
	datab => \B[1]~input_o\,
	datac => \SRL64unit|Mux73~0_combout\,
	datad => \SRA64unit|Mux71~0_combout\,
	combout => \SRA64unit|Mux156~180_combout\);

-- Location: LCCOMB_X58_Y38_N20
\SRA64unit|Mux156~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~181_combout\ = (\SRA64unit|Mux156~266_combout\ & (\AmuxOut[63]~1_combout\)) # (!\SRA64unit|Mux156~266_combout\ & ((\SRA64unit|Mux156~180_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~266_combout\,
	datac => \AmuxOut[63]~1_combout\,
	datad => \SRA64unit|Mux156~180_combout\,
	combout => \SRA64unit|Mux156~181_combout\);

-- Location: LCCOMB_X62_Y37_N30
\SRA64unit|Mux156~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~178_combout\ = (\SRL64unit|Mux73~0_combout\) # ((\AmuxOut[62]~6_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AmuxOut[62]~6_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL64unit|Mux73~0_combout\,
	combout => \SRA64unit|Mux156~178_combout\);

-- Location: LCCOMB_X62_Y37_N16
\SRA64unit|Mux156~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~179_combout\ = (\SLL64unit|Mux190~95_combout\ & ((\B[1]~input_o\ & (\SRA64unit|Mux156~178_combout\)) # (!\B[1]~input_o\ & ((\SRA64unit|Mux156~164_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~178_combout\,
	datab => \B[1]~input_o\,
	datac => \SRA64unit|Mux156~164_combout\,
	datad => \SLL64unit|Mux190~95_combout\,
	combout => \SRA64unit|Mux156~179_combout\);

-- Location: LCCOMB_X65_Y37_N20
\SRLorSRAout[51]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[51]~38_combout\ = (\B[0]~input_o\ & ((\SRA64unit|Mux156~179_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & (((!\ShiftFN[0]~input_o\ & \SRA64unit|Mux156~172_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~179_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~172_combout\,
	combout => \SRLorSRAout[51]~38_combout\);

-- Location: LCCOMB_X65_Y37_N14
\SRLorSRAout[51]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[51]~39_combout\ = (\SRLorSRAout[51]~38_combout\ & ((\SRA64unit|Mux156~181_combout\) # ((!\ShiftFN[0]~input_o\)))) # (!\SRLorSRAout[51]~38_combout\ & (((\ShiftFN[0]~input_o\ & \SRA64unit|Mux156~174_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~181_combout\,
	datab => \SRLorSRAout[51]~38_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~174_combout\,
	combout => \SRLorSRAout[51]~39_combout\);

-- Location: IOIBUF_X27_Y73_N22
\C[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(19),
	o => \C[19]~input_o\);

-- Location: LCCOMB_X59_Y43_N16
\SRA64unit|Mux19~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux19~19_combout\ = (\B[4]~input_o\ & (\AmuxOut[3]~37_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[19]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \AmuxOut[3]~37_combout\,
	datad => \AmuxOut[19]~40_combout\,
	combout => \SRA64unit|Mux19~19_combout\);

-- Location: LCCOMB_X59_Y40_N8
\SLL64unit|Mux108~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux108~0_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\AmuxOut[11]~36_combout\)) # (!\B[3]~input_o\ & ((\SRA64unit|Mux19~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \AmuxOut[11]~36_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux19~19_combout\,
	combout => \SLL64unit|Mux108~0_combout\);

-- Location: LCCOMB_X59_Y40_N10
\SLL64unit|Mux108~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux108~1_combout\ = (\SLL64unit|Mux108~0_combout\) # ((\B[2]~input_o\ & \SLL64unit|Mux112~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL64unit|Mux108~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL64unit|Mux112~1_combout\,
	combout => \SLL64unit|Mux108~1_combout\);

-- Location: LCCOMB_X57_Y38_N4
\SLL64unit|Mux190~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~41_combout\ = (\SRA64unit|Mux156~270_combout\ & ((\B[1]~input_o\ & (\SLL64unit|Mux110~1_combout\)) # (!\B[1]~input_o\ & ((\SLL64unit|Mux108~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~270_combout\,
	datab => \B[1]~input_o\,
	datac => \SLL64unit|Mux110~1_combout\,
	datad => \SLL64unit|Mux108~1_combout\,
	combout => \SLL64unit|Mux190~41_combout\);

-- Location: LCCOMB_X57_Y37_N20
\SRA64unit|Mux90~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~69_combout\ = (\B[2]~input_o\ & ((\ShiftCount[5]~0_combout\ & ((\SRA64unit|Mux19~1_combout\))) # (!\ShiftCount[5]~0_combout\ & (\AmuxOut[63]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \AmuxOut[63]~1_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA64unit|Mux19~1_combout\,
	combout => \SRA64unit|Mux90~69_combout\);

-- Location: LCCOMB_X57_Y37_N14
\SRA64unit|Mux90~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~85_combout\ = (\SRA64unit|Mux90~69_combout\) # ((!\B[2]~input_o\ & ((\SRA64unit|Mux32~0_combout\) # (\SRL64unit|Mux33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux32~0_combout\,
	datab => \SRA64unit|Mux90~69_combout\,
	datac => \B[2]~input_o\,
	datad => \SRL64unit|Mux33~0_combout\,
	combout => \SRA64unit|Mux90~85_combout\);

-- Location: LCCOMB_X60_Y38_N20
\SRA64unit|Mux103~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux103~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA64unit|Mux36~1_combout\))) # (!\B[2]~input_o\ & (\SRA64unit|Mux40~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64unit|Mux40~1_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA64unit|Mux36~1_combout\,
	combout => \SRA64unit|Mux103~0_combout\);

-- Location: LCCOMB_X60_Y38_N22
\SRA64unit|Mux103~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux103~1_combout\ = (\SRA64unit|Mux103~0_combout\) # ((\SRA64unit|Mux90~85_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64unit|Mux90~85_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux103~0_combout\,
	combout => \SRA64unit|Mux103~1_combout\);

-- Location: LCCOMB_X61_Y38_N30
\SRA64unit|Mux156~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~184_combout\ = (\B[1]~input_o\ & ((\SRA64unit|Mux103~1_combout\))) # (!\B[1]~input_o\ & (\SRA64unit|Mux105~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64unit|Mux105~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux103~1_combout\,
	combout => \SRA64unit|Mux156~184_combout\);

-- Location: LCCOMB_X61_Y38_N4
\Y~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~139_combout\ = (\B[0]~input_o\ & (\ShiftFN[0]~input_o\)) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & (\SRA64unit|Mux156~177_combout\)) # (!\ShiftFN[0]~input_o\ & ((\SRA64unit|Mux156~176_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SRA64unit|Mux156~177_combout\,
	datad => \SRA64unit|Mux156~176_combout\,
	combout => \Y~139_combout\);

-- Location: LCCOMB_X57_Y37_N18
\SRA64unit|Mux90~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~67_combout\ = (!\B[2]~input_o\ & ((\SRL64unit|Mux33~0_combout\) # ((\SRA64unit|Mux90~19_combout\ & \AmuxOut[62]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~19_combout\,
	datab => \AmuxOut[62]~6_combout\,
	datac => \B[2]~input_o\,
	datad => \SRL64unit|Mux33~0_combout\,
	combout => \SRA64unit|Mux90~67_combout\);

-- Location: LCCOMB_X66_Y36_N28
\SRA64unit|Mux90~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~68_combout\ = (\SRA64unit|Mux90~67_combout\) # ((\ShiftCount[5]~0_combout\ & (\SRA64unit|Mux19~1_combout\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~67_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \SRA64unit|Mux19~1_combout\,
	datad => \B[2]~input_o\,
	combout => \SRA64unit|Mux90~68_combout\);

-- Location: LCCOMB_X61_Y37_N16
\SRA64unit|Mux156~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~182_combout\ = (\B[3]~input_o\ & ((\SRA64unit|Mux90~68_combout\) # ((!\B[1]~input_o\)))) # (!\B[3]~input_o\ & (((\B[1]~input_o\ & \SRA64unit|Mux90~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~68_combout\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux90~42_combout\,
	combout => \SRA64unit|Mux156~182_combout\);

-- Location: LCCOMB_X61_Y37_N26
\SRA64unit|Mux156~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~183_combout\ = (\SRA64unit|Mux156~182_combout\ & (((\B[1]~input_o\) # (\SRA64unit|Mux90~61_combout\)))) # (!\SRA64unit|Mux156~182_combout\ & (\SRA64unit|Mux90~38_combout\ & (!\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~38_combout\,
	datab => \SRA64unit|Mux156~182_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux90~61_combout\,
	combout => \SRA64unit|Mux156~183_combout\);

-- Location: LCCOMB_X61_Y38_N8
\Y~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~140_combout\ = (\B[0]~input_o\ & ((\Y~139_combout\ & (\SRA64unit|Mux156~184_combout\)) # (!\Y~139_combout\ & ((\SRA64unit|Mux156~183_combout\))))) # (!\B[0]~input_o\ & (((\Y~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~184_combout\,
	datab => \B[0]~input_o\,
	datac => \Y~139_combout\,
	datad => \SRA64unit|Mux156~183_combout\,
	combout => \Y~140_combout\);

-- Location: LCCOMB_X57_Y38_N22
\Y~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~141_combout\ = (\Y~70_combout\ & ((\SLL64unit|Mux190~41_combout\) # ((\Y~69_combout\)))) # (!\Y~70_combout\ & (((!\Y~69_combout\ & \Y~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~70_combout\,
	datab => \SLL64unit|Mux190~41_combout\,
	datac => \Y~69_combout\,
	datad => \Y~140_combout\,
	combout => \Y~141_combout\);

-- Location: LCCOMB_X57_Y38_N0
\Y~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~142_combout\ = (\Y~69_combout\ & ((\Y~141_combout\ & ((\SLL64unit|Mux190~40_combout\))) # (!\Y~141_combout\ & (\C[19]~input_o\)))) # (!\Y~69_combout\ & (((\Y~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[19]~input_o\,
	datab => \Y~69_combout\,
	datac => \Y~141_combout\,
	datad => \SLL64unit|Mux190~40_combout\,
	combout => \Y~142_combout\);

-- Location: LCCOMB_X57_Y41_N24
\Y~299\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~299_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\SRLorSRAout[51]~39_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Y~142_combout\))))) # (!\ExtWord~input_o\ & (((\Y~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \SRLorSRAout[51]~39_combout\,
	datad => \Y~142_combout\,
	combout => \Y~299_combout\);

-- Location: LCCOMB_X67_Y40_N10
\SRA64unit|Mux156~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~185_combout\ = (\B[3]~input_o\ & (\AmuxOut[63]~1_combout\)) # (!\B[3]~input_o\ & ((\SRA64unit|Mux90~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[63]~1_combout\,
	datab => \B[3]~input_o\,
	datac => \SRA64unit|Mux90~43_combout\,
	combout => \SRA64unit|Mux156~185_combout\);

-- Location: LCCOMB_X65_Y37_N0
\SRA64unit|Mux156~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~186_combout\ = (\SLL64unit|Mux190~95_combout\ & ((\B[1]~input_o\ & ((\SRA64unit|Mux156~185_combout\))) # (!\B[1]~input_o\ & (\SRA64unit|Mux156~171_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~171_combout\,
	datab => \SLL64unit|Mux190~95_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux156~185_combout\,
	combout => \SRA64unit|Mux156~186_combout\);

-- Location: LCCOMB_X65_Y37_N18
\SRLorSRAout[52]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[52]~40_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\) # (\SRA64unit|Mux156~186_combout\)))) # (!\B[0]~input_o\ & (\SRA64unit|Mux156~179_combout\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~179_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~186_combout\,
	combout => \SRLorSRAout[52]~40_combout\);

-- Location: LCCOMB_X66_Y37_N6
\SRA64unit|Mux156~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~187_combout\ = (\B[1]~input_o\ & ((\SRL64unit|Mux47~0_combout\ & ((\SRA64unit|Mux90~43_combout\))) # (!\SRL64unit|Mux47~0_combout\ & (\AmuxOut[63]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[63]~1_combout\,
	datab => \SRL64unit|Mux47~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux90~43_combout\,
	combout => \SRA64unit|Mux156~187_combout\);

-- Location: LCCOMB_X66_Y37_N8
\SRA64unit|Mux156~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~188_combout\ = (\SRA64unit|Mux156~187_combout\) # ((!\B[1]~input_o\ & ((\SRL64unit|Mux74~0_combout\) # (\SRA64unit|Mux72~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux74~0_combout\,
	datab => \SRA64unit|Mux72~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux156~187_combout\,
	combout => \SRA64unit|Mux156~188_combout\);

-- Location: LCCOMB_X66_Y37_N14
\SRA64unit|Mux156~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~267_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\) # ((\B[1]~input_o\)))) # (!\B[3]~input_o\ & (((!\B[1]~input_o\ & !\SRL64unit|Mux47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRL64unit|Mux47~0_combout\,
	combout => \SRA64unit|Mux156~267_combout\);

-- Location: LCCOMB_X66_Y37_N2
\SRA64unit|Mux156~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~189_combout\ = (\SRA64unit|Mux156~267_combout\ & (\AmuxOut[63]~1_combout\)) # (!\SRA64unit|Mux156~267_combout\ & ((\SRA64unit|Mux156~188_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[63]~1_combout\,
	datab => \SRA64unit|Mux156~188_combout\,
	datac => \SRA64unit|Mux156~267_combout\,
	combout => \SRA64unit|Mux156~189_combout\);

-- Location: LCCOMB_X65_Y37_N4
\SRLorSRAout[52]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[52]~41_combout\ = (\SRLorSRAout[52]~40_combout\ & (((\SRA64unit|Mux156~189_combout\) # (!\ShiftFN[0]~input_o\)))) # (!\SRLorSRAout[52]~40_combout\ & (\SRA64unit|Mux156~181_combout\ & (\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~181_combout\,
	datab => \SRLorSRAout[52]~40_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~189_combout\,
	combout => \SRLorSRAout[52]~41_combout\);

-- Location: IOIBUF_X0_Y35_N8
\C[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(20),
	o => \C[20]~input_o\);

-- Location: LCCOMB_X63_Y41_N0
\SRA64unit|Mux90~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~70_combout\ = (!\B[2]~input_o\ & ((\SRL64unit|Mux32~0_combout\) # ((\AmuxOut[63]~1_combout\ & \SRA64unit|Mux90~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[63]~1_combout\,
	datab => \SRA64unit|Mux90~19_combout\,
	datac => \B[2]~input_o\,
	datad => \SRL64unit|Mux32~0_combout\,
	combout => \SRA64unit|Mux90~70_combout\);

-- Location: LCCOMB_X63_Y41_N18
\SRA64unit|Mux90~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~71_combout\ = (\SRA64unit|Mux90~70_combout\) # ((\SRA64unit|Mux19~11_combout\ & (\ShiftCount[5]~0_combout\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux19~11_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA64unit|Mux90~70_combout\,
	combout => \SRA64unit|Mux90~71_combout\);

-- Location: LCCOMB_X63_Y41_N28
\SRA64unit|Mux156~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~190_combout\ = (\B[1]~input_o\ & ((\B[3]~input_o\ & ((\SRA64unit|Mux90~71_combout\))) # (!\B[3]~input_o\ & (\SRA64unit|Mux90~45_combout\)))) # (!\B[1]~input_o\ & (((\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRA64unit|Mux90~45_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux90~71_combout\,
	combout => \SRA64unit|Mux156~190_combout\);

-- Location: LCCOMB_X63_Y41_N14
\SRA64unit|Mux156~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~191_combout\ = (\B[1]~input_o\ & (((\SRA64unit|Mux156~190_combout\)))) # (!\B[1]~input_o\ & ((\SRA64unit|Mux156~190_combout\ & (\SRA64unit|Mux90~65_combout\)) # (!\SRA64unit|Mux156~190_combout\ & ((\SRA64unit|Mux90~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRA64unit|Mux90~65_combout\,
	datac => \SRA64unit|Mux90~40_combout\,
	datad => \SRA64unit|Mux156~190_combout\,
	combout => \SRA64unit|Mux156~191_combout\);

-- Location: LCCOMB_X61_Y38_N18
\Y~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~143_combout\ = (\ShiftFN[0]~input_o\ & (((\SRA64unit|Mux156~184_combout\) # (\B[0]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (\SRA64unit|Mux156~183_combout\ & ((!\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~183_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SRA64unit|Mux156~184_combout\,
	datad => \B[0]~input_o\,
	combout => \Y~143_combout\);

-- Location: LCCOMB_X63_Y40_N10
\SRA64unit|Mux90~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~72_combout\ = (!\B[2]~input_o\ & ((\B[4]~input_o\ & (\AmuxOut[47]~18_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[31]~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[47]~18_combout\,
	datab => \B[2]~input_o\,
	datac => \AmuxOut[31]~33_combout\,
	datad => \B[4]~input_o\,
	combout => \SRA64unit|Mux90~72_combout\);

-- Location: LCCOMB_X63_Y39_N20
\SRA64unit|Mux90~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~73_combout\ = (\SRA64unit|Mux90~72_combout\) # ((\SRA64unit|Mux19~11_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64unit|Mux19~11_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA64unit|Mux90~72_combout\,
	combout => \SRA64unit|Mux90~73_combout\);

-- Location: LCCOMB_X63_Y39_N6
\SRA64unit|Mux102~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux102~4_combout\ = (\B[3]~input_o\ & (\SRA64unit|Mux90~73_combout\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[5]~input_o\,
	datad => \SRA64unit|Mux90~73_combout\,
	combout => \SRA64unit|Mux102~4_combout\);

-- Location: LCCOMB_X62_Y43_N18
\SRA64unit|Mux102~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux102~2_combout\ = (\B[3]~input_o\ & (\SRA64unit|Mux156~252_combout\)) # (!\B[3]~input_o\ & (((\B[2]~input_o\ & \SRA64unit|Mux35~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64unit|Mux156~252_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA64unit|Mux35~1_combout\,
	combout => \SRA64unit|Mux102~2_combout\);

-- Location: LCCOMB_X62_Y43_N28
\SRA64unit|Mux102~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux102~3_combout\ = (\SRA64unit|Mux102~4_combout\) # ((\SRA64unit|Mux102~2_combout\) # ((\SRA64unit|Mux39~1_combout\ & \SRL64unit|Mux119~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux39~1_combout\,
	datab => \SRA64unit|Mux102~4_combout\,
	datac => \SRL64unit|Mux119~0_combout\,
	datad => \SRA64unit|Mux102~2_combout\,
	combout => \SRA64unit|Mux102~3_combout\);

-- Location: LCCOMB_X62_Y42_N26
\SRA64unit|Mux156~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~192_combout\ = (\B[1]~input_o\ & (\SRA64unit|Mux102~3_combout\)) # (!\B[1]~input_o\ & ((\SRA64unit|Mux104~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64unit|Mux102~3_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux104~1_combout\,
	combout => \SRA64unit|Mux156~192_combout\);

-- Location: LCCOMB_X61_Y38_N20
\Y~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~144_combout\ = (\Y~143_combout\ & (((\SRA64unit|Mux156~192_combout\) # (!\B[0]~input_o\)))) # (!\Y~143_combout\ & (\SRA64unit|Mux156~191_combout\ & (\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~191_combout\,
	datab => \Y~143_combout\,
	datac => \B[0]~input_o\,
	datad => \SRA64unit|Mux156~192_combout\,
	combout => \Y~144_combout\);

-- Location: LCCOMB_X61_Y35_N10
\SRA64unit|Mux19~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux19~20_combout\ = (\B[4]~input_o\ & ((\AmuxOut[4]~60_combout\))) # (!\B[4]~input_o\ & (\AmuxOut[20]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \AmuxOut[20]~59_combout\,
	datad => \AmuxOut[4]~60_combout\,
	combout => \SRA64unit|Mux19~20_combout\);

-- Location: LCCOMB_X59_Y36_N24
\SLL64unit|Mux107~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux107~0_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\) # ((\SRA64unit|Mux19~16_combout\)))) # (!\B[2]~input_o\ & (!\B[3]~input_o\ & ((\SRA64unit|Mux19~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \SRA64unit|Mux19~16_combout\,
	datad => \SRA64unit|Mux19~20_combout\,
	combout => \SLL64unit|Mux107~0_combout\);

-- Location: LCCOMB_X58_Y36_N16
\SLL64unit|Mux107~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux107~1_combout\ = (\SLL64unit|Mux107~0_combout\ & ((\AmuxOut[8]~63_combout\) # ((!\B[3]~input_o\)))) # (!\SLL64unit|Mux107~0_combout\ & (((\B[3]~input_o\ & \AmuxOut[12]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux107~0_combout\,
	datab => \AmuxOut[8]~63_combout\,
	datac => \B[3]~input_o\,
	datad => \AmuxOut[12]~58_combout\,
	combout => \SLL64unit|Mux107~1_combout\);

-- Location: LCCOMB_X58_Y38_N6
\SLL64unit|Mux190~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~42_combout\ = (\SRA64unit|Mux156~108_combout\ & ((\B[1]~input_o\ & ((\SLL64unit|Mux109~1_combout\))) # (!\B[1]~input_o\ & (\SLL64unit|Mux107~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux107~1_combout\,
	datab => \SRA64unit|Mux156~108_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL64unit|Mux109~1_combout\,
	combout => \SLL64unit|Mux190~42_combout\);

-- Location: LCCOMB_X57_Y38_N18
\Y~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~145_combout\ = (\Y~70_combout\ & (((\Y~69_combout\) # (\SLL64unit|Mux190~42_combout\)))) # (!\Y~70_combout\ & (\Y~144_combout\ & (!\Y~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~70_combout\,
	datab => \Y~144_combout\,
	datac => \Y~69_combout\,
	datad => \SLL64unit|Mux190~42_combout\,
	combout => \Y~145_combout\);

-- Location: LCCOMB_X57_Y38_N12
\Y~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~146_combout\ = (\Y~69_combout\ & ((\Y~145_combout\ & ((\SLL64unit|Mux190~41_combout\))) # (!\Y~145_combout\ & (\C[20]~input_o\)))) # (!\Y~69_combout\ & (((\Y~145_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[20]~input_o\,
	datab => \Y~69_combout\,
	datac => \SLL64unit|Mux190~41_combout\,
	datad => \Y~145_combout\,
	combout => \Y~146_combout\);

-- Location: LCCOMB_X57_Y41_N10
\Y~300\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~300_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\SRLorSRAout[52]~41_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Y~146_combout\))))) # (!\ExtWord~input_o\ & (((\Y~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \SRLorSRAout[52]~41_combout\,
	datad => \Y~146_combout\,
	combout => \Y~300_combout\);

-- Location: LCCOMB_X62_Y37_N0
\SRA64unit|Mux156~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~194_combout\ = (!\B[1]~input_o\ & ((\SRA64unit|Mux71~0_combout\) # (\SRL64unit|Mux73~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux71~0_combout\,
	datab => \B[1]~input_o\,
	datad => \SRL64unit|Mux73~0_combout\,
	combout => \SRA64unit|Mux156~194_combout\);

-- Location: LCCOMB_X62_Y37_N18
\SRA64unit|Mux156~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~195_combout\ = (\B[1]~input_o\ & ((\SRL64unit|Mux47~0_combout\ & (\SRA64unit|Mux90~46_combout\)) # (!\SRL64unit|Mux47~0_combout\ & ((\AmuxOut[63]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~46_combout\,
	datab => \SRL64unit|Mux47~0_combout\,
	datac => \AmuxOut[63]~1_combout\,
	datad => \B[1]~input_o\,
	combout => \SRA64unit|Mux156~195_combout\);

-- Location: LCCOMB_X62_Y37_N4
\SRA64unit|Mux156~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~196_combout\ = (\SRA64unit|Mux156~267_combout\ & (\AmuxOut[63]~1_combout\)) # (!\SRA64unit|Mux156~267_combout\ & (((\SRA64unit|Mux156~194_combout\) # (\SRA64unit|Mux156~195_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[63]~1_combout\,
	datab => \SRA64unit|Mux156~194_combout\,
	datac => \SRA64unit|Mux156~195_combout\,
	datad => \SRA64unit|Mux156~267_combout\,
	combout => \SRA64unit|Mux156~196_combout\);

-- Location: LCCOMB_X62_Y37_N22
\SRA64unit|Mux156~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~193_combout\ = (\SLL64unit|Mux190~94_combout\ & ((\B[1]~input_o\ & (\SRA64unit|Mux90~46_combout\)) # (!\B[1]~input_o\ & ((\SRA64unit|Mux156~178_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~46_combout\,
	datab => \SLL64unit|Mux190~94_combout\,
	datac => \SRA64unit|Mux156~178_combout\,
	datad => \B[1]~input_o\,
	combout => \SRA64unit|Mux156~193_combout\);

-- Location: LCCOMB_X65_Y37_N6
\SRLorSRAout[53]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[53]~42_combout\ = (\B[0]~input_o\ & ((\SRA64unit|Mux156~193_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & (((!\ShiftFN[0]~input_o\ & \SRA64unit|Mux156~186_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~193_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~186_combout\,
	combout => \SRLorSRAout[53]~42_combout\);

-- Location: LCCOMB_X65_Y37_N8
\SRLorSRAout[53]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[53]~43_combout\ = (\SRLorSRAout[53]~42_combout\ & ((\SRA64unit|Mux156~196_combout\) # ((!\ShiftFN[0]~input_o\)))) # (!\SRLorSRAout[53]~42_combout\ & (((\ShiftFN[0]~input_o\ & \SRA64unit|Mux156~189_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~196_combout\,
	datab => \SRLorSRAout[53]~42_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~189_combout\,
	combout => \SRLorSRAout[53]~43_combout\);

-- Location: IOIBUF_X45_Y0_N22
\C[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(21),
	o => \C[21]~input_o\);

-- Location: LCCOMB_X62_Y36_N6
\SRA64unit|Mux90~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~74_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[2]~input_o\ & (\SRA64unit|Mux19~4_combout\)) # (!\B[2]~input_o\ & ((\SRA64unit|Mux19~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \SRA64unit|Mux19~4_combout\,
	datad => \SRA64unit|Mux19~5_combout\,
	combout => \SRA64unit|Mux90~74_combout\);

-- Location: LCCOMB_X61_Y37_N20
\SRA64unit|Mux156~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~197_combout\ = (\B[3]~input_o\ & (((\SRA64unit|Mux90~74_combout\) # (!\B[1]~input_o\)))) # (!\B[3]~input_o\ & (\SRA64unit|Mux90~48_combout\ & (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64unit|Mux90~48_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux90~74_combout\,
	combout => \SRA64unit|Mux156~197_combout\);

-- Location: LCCOMB_X61_Y37_N14
\SRA64unit|Mux156~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~198_combout\ = (\B[1]~input_o\ & (\SRA64unit|Mux156~197_combout\)) # (!\B[1]~input_o\ & ((\SRA64unit|Mux156~197_combout\ & (\SRA64unit|Mux90~68_combout\)) # (!\SRA64unit|Mux156~197_combout\ & ((\SRA64unit|Mux90~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRA64unit|Mux156~197_combout\,
	datac => \SRA64unit|Mux90~68_combout\,
	datad => \SRA64unit|Mux90~42_combout\,
	combout => \SRA64unit|Mux156~198_combout\);

-- Location: LCCOMB_X60_Y36_N22
\SRA64unit|Mux101~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux101~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRA64unit|Mux34~1_combout\)) # (!\B[2]~input_o\ & ((\SRA64unit|Mux38~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA64unit|Mux34~1_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux38~1_combout\,
	combout => \SRA64unit|Mux101~0_combout\);

-- Location: LCCOMB_X61_Y37_N0
\SRA64unit|Mux101~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux101~1_combout\ = (\SRA64unit|Mux101~0_combout\) # ((\B[3]~input_o\ & ((\SRA64unit|Mux156~252_combout\) # (\SRA64unit|Mux90~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~252_combout\,
	datab => \B[3]~input_o\,
	datac => \SRA64unit|Mux101~0_combout\,
	datad => \SRA64unit|Mux90~74_combout\,
	combout => \SRA64unit|Mux101~1_combout\);

-- Location: LCCOMB_X61_Y38_N16
\SRA64unit|Mux156~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~199_combout\ = (\B[1]~input_o\ & ((\SRA64unit|Mux101~1_combout\))) # (!\B[1]~input_o\ & (\SRA64unit|Mux103~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64unit|Mux103~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux101~1_combout\,
	combout => \SRA64unit|Mux156~199_combout\);

-- Location: LCCOMB_X61_Y38_N6
\Y~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~147_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\SRA64unit|Mux156~192_combout\))) # (!\ShiftFN[0]~input_o\ & (\SRA64unit|Mux156~191_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~191_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~192_combout\,
	combout => \Y~147_combout\);

-- Location: LCCOMB_X61_Y38_N10
\Y~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~148_combout\ = (\B[0]~input_o\ & ((\Y~147_combout\ & ((\SRA64unit|Mux156~199_combout\))) # (!\Y~147_combout\ & (\SRA64unit|Mux156~198_combout\)))) # (!\B[0]~input_o\ & (((\Y~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~198_combout\,
	datab => \SRA64unit|Mux156~199_combout\,
	datac => \B[0]~input_o\,
	datad => \Y~147_combout\,
	combout => \Y~148_combout\);

-- Location: LCCOMB_X66_Y41_N20
\SRA64unit|Mux19~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux19~21_combout\ = (\B[4]~input_o\ & ((\AmuxOut[5]~44_combout\))) # (!\B[4]~input_o\ & (\AmuxOut[21]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \AmuxOut[21]~43_combout\,
	datad => \AmuxOut[5]~44_combout\,
	combout => \SRA64unit|Mux19~21_combout\);

-- Location: LCCOMB_X69_Y39_N10
\SLL64unit|Mux106~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux106~0_combout\ = (\B[2]~input_o\ & ((\SRA64unit|Mux19~17_combout\) # ((\B[3]~input_o\)))) # (!\B[2]~input_o\ & (((!\B[3]~input_o\ & \SRA64unit|Mux19~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux19~17_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux19~21_combout\,
	combout => \SLL64unit|Mux106~0_combout\);

-- Location: LCCOMB_X69_Y39_N20
\SLL64unit|Mux106~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux106~1_combout\ = (\B[3]~input_o\ & ((\SLL64unit|Mux106~0_combout\ & ((\AmuxOut[9]~48_combout\))) # (!\SLL64unit|Mux106~0_combout\ & (\AmuxOut[13]~46_combout\)))) # (!\B[3]~input_o\ & (((\SLL64unit|Mux106~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[13]~46_combout\,
	datab => \AmuxOut[9]~48_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL64unit|Mux106~0_combout\,
	combout => \SLL64unit|Mux106~1_combout\);

-- Location: LCCOMB_X57_Y38_N6
\SLL64unit|Mux190~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~43_combout\ = (\SRA64unit|Mux156~108_combout\ & ((\B[1]~input_o\ & ((\SLL64unit|Mux108~1_combout\))) # (!\B[1]~input_o\ & (\SLL64unit|Mux106~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~108_combout\,
	datab => \B[1]~input_o\,
	datac => \SLL64unit|Mux106~1_combout\,
	datad => \SLL64unit|Mux108~1_combout\,
	combout => \SLL64unit|Mux190~43_combout\);

-- Location: LCCOMB_X57_Y38_N16
\Y~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~149_combout\ = (\Y~70_combout\ & ((\Y~69_combout\) # ((\SLL64unit|Mux190~43_combout\)))) # (!\Y~70_combout\ & (!\Y~69_combout\ & (\Y~148_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~70_combout\,
	datab => \Y~69_combout\,
	datac => \Y~148_combout\,
	datad => \SLL64unit|Mux190~43_combout\,
	combout => \Y~149_combout\);

-- Location: LCCOMB_X57_Y38_N10
\Y~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~150_combout\ = (\Y~149_combout\ & (((\SLL64unit|Mux190~42_combout\) # (!\Y~69_combout\)))) # (!\Y~149_combout\ & (\C[21]~input_o\ & (\Y~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[21]~input_o\,
	datab => \Y~149_combout\,
	datac => \Y~69_combout\,
	datad => \SLL64unit|Mux190~42_combout\,
	combout => \Y~150_combout\);

-- Location: LCCOMB_X57_Y41_N12
\Y~301\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~301_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\SRLorSRAout[53]~43_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Y~150_combout\))))) # (!\ExtWord~input_o\ & (((\Y~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \SRLorSRAout[53]~43_combout\,
	datad => \Y~150_combout\,
	combout => \Y~301_combout\);

-- Location: IOIBUF_X47_Y0_N1
\C[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(22),
	o => \C[22]~input_o\);

-- Location: LCCOMB_X61_Y38_N12
\Y~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~151_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\SRA64unit|Mux156~199_combout\))) # (!\ShiftFN[0]~input_o\ & (\SRA64unit|Mux156~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~198_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~199_combout\,
	combout => \Y~151_combout\);

-- Location: LCCOMB_X66_Y36_N22
\SRA64unit|Mux90~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~75_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[2]~input_o\ & (\SRA64unit|Mux19~15_combout\)) # (!\B[2]~input_o\ & ((\SRA64unit|Mux19~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \SRA64unit|Mux19~15_combout\,
	datad => \SRA64unit|Mux19~13_combout\,
	combout => \SRA64unit|Mux90~75_combout\);

-- Location: LCCOMB_X66_Y40_N22
\SRA64unit|Mux100~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux100~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA64unit|Mux33~1_combout\))) # (!\B[2]~input_o\ & (\SRA64unit|Mux37~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SRA64unit|Mux37~1_combout\,
	datad => \SRA64unit|Mux33~1_combout\,
	combout => \SRA64unit|Mux100~0_combout\);

-- Location: LCCOMB_X65_Y40_N12
\SRA64unit|Mux100~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux100~1_combout\ = (\SRA64unit|Mux100~0_combout\) # ((\B[3]~input_o\ & ((\SRA64unit|Mux90~75_combout\) # (\SRA64unit|Mux156~252_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64unit|Mux90~75_combout\,
	datac => \SRA64unit|Mux156~252_combout\,
	datad => \SRA64unit|Mux100~0_combout\,
	combout => \SRA64unit|Mux100~1_combout\);

-- Location: LCCOMB_X65_Y40_N22
\SRA64unit|Mux156~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~205_combout\ = (\B[1]~input_o\ & (\SRA64unit|Mux100~1_combout\)) # (!\B[1]~input_o\ & ((\SRA64unit|Mux102~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux100~1_combout\,
	datab => \SRA64unit|Mux102~3_combout\,
	datad => \B[1]~input_o\,
	combout => \SRA64unit|Mux156~205_combout\);

-- Location: LCCOMB_X63_Y41_N24
\SRA64unit|Mux156~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~203_combout\ = (\B[3]~input_o\ & (((\SRA64unit|Mux90~75_combout\) # (!\B[1]~input_o\)))) # (!\B[3]~input_o\ & (\SRA64unit|Mux90~51_combout\ & ((\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~51_combout\,
	datab => \SRA64unit|Mux90~75_combout\,
	datac => \B[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRA64unit|Mux156~203_combout\);

-- Location: LCCOMB_X63_Y41_N2
\SRA64unit|Mux156~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~204_combout\ = (\B[1]~input_o\ & (((\SRA64unit|Mux156~203_combout\)))) # (!\B[1]~input_o\ & ((\SRA64unit|Mux156~203_combout\ & ((\SRA64unit|Mux90~71_combout\))) # (!\SRA64unit|Mux156~203_combout\ & (\SRA64unit|Mux90~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRA64unit|Mux90~45_combout\,
	datac => \SRA64unit|Mux90~71_combout\,
	datad => \SRA64unit|Mux156~203_combout\,
	combout => \SRA64unit|Mux156~204_combout\);

-- Location: LCCOMB_X62_Y38_N2
\Y~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~152_combout\ = (\Y~151_combout\ & ((\SRA64unit|Mux156~205_combout\) # ((!\B[0]~input_o\)))) # (!\Y~151_combout\ & (((\B[0]~input_o\ & \SRA64unit|Mux156~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~151_combout\,
	datab => \SRA64unit|Mux156~205_combout\,
	datac => \B[0]~input_o\,
	datad => \SRA64unit|Mux156~204_combout\,
	combout => \Y~152_combout\);

-- Location: LCCOMB_X58_Y37_N12
\SRA64unit|Mux19~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux19~22_combout\ = (\B[4]~input_o\ & (\AmuxOut[6]~54_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[22]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AmuxOut[6]~54_combout\,
	datac => \B[4]~input_o\,
	datad => \AmuxOut[22]~53_combout\,
	combout => \SRA64unit|Mux19~22_combout\);

-- Location: LCCOMB_X58_Y37_N22
\SLL64unit|Mux105~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux105~0_combout\ = (\B[3]~input_o\ & (((\B[2]~input_o\)))) # (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA64unit|Mux19~18_combout\))) # (!\B[2]~input_o\ & (\SRA64unit|Mux19~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux19~22_combout\,
	datab => \B[3]~input_o\,
	datac => \SRA64unit|Mux19~18_combout\,
	datad => \B[2]~input_o\,
	combout => \SLL64unit|Mux105~0_combout\);

-- Location: LCCOMB_X58_Y37_N16
\SLL64unit|Mux105~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux105~1_combout\ = (\B[3]~input_o\ & ((\SLL64unit|Mux105~0_combout\ & ((\AmuxOut[10]~52_combout\))) # (!\SLL64unit|Mux105~0_combout\ & (\AmuxOut[14]~50_combout\)))) # (!\B[3]~input_o\ & (((\SLL64unit|Mux105~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[14]~50_combout\,
	datab => \B[3]~input_o\,
	datac => \SLL64unit|Mux105~0_combout\,
	datad => \AmuxOut[10]~52_combout\,
	combout => \SLL64unit|Mux105~1_combout\);

-- Location: LCCOMB_X62_Y38_N8
\SLL64unit|Mux190~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~44_combout\ = (\SRA64unit|Mux86~0_combout\ & ((\B[1]~input_o\ & (\SLL64unit|Mux107~1_combout\)) # (!\B[1]~input_o\ & ((\SLL64unit|Mux105~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux107~1_combout\,
	datab => \SLL64unit|Mux105~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux86~0_combout\,
	combout => \SLL64unit|Mux190~44_combout\);

-- Location: LCCOMB_X57_Y38_N28
\Y~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~153_combout\ = (\Y~70_combout\ & (((\Y~69_combout\) # (\SLL64unit|Mux190~44_combout\)))) # (!\Y~70_combout\ & (\Y~152_combout\ & (!\Y~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~70_combout\,
	datab => \Y~152_combout\,
	datac => \Y~69_combout\,
	datad => \SLL64unit|Mux190~44_combout\,
	combout => \Y~153_combout\);

-- Location: LCCOMB_X57_Y38_N30
\Y~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~154_combout\ = (\Y~153_combout\ & (((\SLL64unit|Mux190~43_combout\) # (!\Y~69_combout\)))) # (!\Y~153_combout\ & (\C[22]~input_o\ & (\Y~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[22]~input_o\,
	datab => \Y~153_combout\,
	datac => \Y~69_combout\,
	datad => \SLL64unit|Mux190~43_combout\,
	combout => \Y~154_combout\);

-- Location: LCCOMB_X65_Y37_N2
\SRA64unit|Mux156~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~200_combout\ = (\SLL64unit|Mux190~94_combout\ & ((\B[1]~input_o\ & ((\SRA64unit|Mux90~49_combout\))) # (!\B[1]~input_o\ & (\SRA64unit|Mux156~185_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux190~94_combout\,
	datab => \SRA64unit|Mux156~185_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux90~49_combout\,
	combout => \SRA64unit|Mux156~200_combout\);

-- Location: LCCOMB_X65_Y37_N28
\SRLorSRAout[54]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[54]~44_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\) # (\SRA64unit|Mux156~200_combout\)))) # (!\B[0]~input_o\ & (\SRA64unit|Mux156~193_combout\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~193_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~200_combout\,
	combout => \SRLorSRAout[54]~44_combout\);

-- Location: LCCOMB_X67_Y38_N30
\SRA64unit|Mux156~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~201_combout\ = (\SLL64unit|Mux190~25_combout\ & ((\B[1]~input_o\ & ((\SRA64unit|Mux90~49_combout\))) # (!\B[1]~input_o\ & (\SRA64unit|Mux90~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~43_combout\,
	datab => \B[1]~input_o\,
	datac => \SLL64unit|Mux190~25_combout\,
	datad => \SRA64unit|Mux90~49_combout\,
	combout => \SRA64unit|Mux156~201_combout\);

-- Location: LCCOMB_X68_Y37_N8
\SRA64unit|Mux156~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~202_combout\ = (\SRA64unit|Mux156~201_combout\) # ((\AmuxOut[63]~1_combout\ & !\SLL64unit|Mux190~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[63]~1_combout\,
	datab => \SLL64unit|Mux190~25_combout\,
	datad => \SRA64unit|Mux156~201_combout\,
	combout => \SRA64unit|Mux156~202_combout\);

-- Location: LCCOMB_X65_Y37_N22
\SRLorSRAout[54]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[54]~45_combout\ = (\SRLorSRAout[54]~44_combout\ & (((\SRA64unit|Mux156~202_combout\) # (!\ShiftFN[0]~input_o\)))) # (!\SRLorSRAout[54]~44_combout\ & (\SRA64unit|Mux156~196_combout\ & (\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~196_combout\,
	datab => \SRLorSRAout[54]~44_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~202_combout\,
	combout => \SRLorSRAout[54]~45_combout\);

-- Location: LCCOMB_X65_Y41_N18
\Y~302\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~302_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\SRLorSRAout[54]~45_combout\))) # (!\ExtWord~input_o\ & (\Y~154_combout\)))) # (!\ShiftFN[1]~input_o\ & (((\Y~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \Y~154_combout\,
	datad => \SRLorSRAout[54]~45_combout\,
	combout => \Y~302_combout\);

-- Location: LCCOMB_X68_Y37_N18
\SRA64unit|Mux156~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~206_combout\ = (\SLL64unit|Mux190~25_combout\ & ((\B[1]~input_o\ & ((\SRA64unit|Mux90~52_combout\))) # (!\B[1]~input_o\ & (\SRA64unit|Mux90~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRA64unit|Mux90~46_combout\,
	datac => \SLL64unit|Mux190~25_combout\,
	datad => \SRA64unit|Mux90~52_combout\,
	combout => \SRA64unit|Mux156~206_combout\);

-- Location: LCCOMB_X68_Y37_N20
\SRLorSRAout[55]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[55]~46_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\) # (\SRA64unit|Mux156~206_combout\)))) # (!\B[0]~input_o\ & (\SRA64unit|Mux156~200_combout\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRA64unit|Mux156~200_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~206_combout\,
	combout => \SRLorSRAout[55]~46_combout\);

-- Location: LCCOMB_X68_Y37_N14
\SRA64unit|Mux156~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~207_combout\ = (\SRA64unit|Mux156~206_combout\) # ((\AmuxOut[63]~1_combout\ & !\SLL64unit|Mux190~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[63]~1_combout\,
	datac => \SLL64unit|Mux190~25_combout\,
	datad => \SRA64unit|Mux156~206_combout\,
	combout => \SRA64unit|Mux156~207_combout\);

-- Location: LCCOMB_X68_Y37_N0
\SRLorSRAout[55]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[55]~47_combout\ = (\ShiftFN[0]~input_o\ & ((\SRLorSRAout[55]~46_combout\ & (\SRA64unit|Mux156~207_combout\)) # (!\SRLorSRAout[55]~46_combout\ & ((\SRA64unit|Mux156~202_combout\))))) # (!\ShiftFN[0]~input_o\ & (\SRLorSRAout[55]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SRLorSRAout[55]~46_combout\,
	datac => \SRA64unit|Mux156~207_combout\,
	datad => \SRA64unit|Mux156~202_combout\,
	combout => \SRLorSRAout[55]~47_combout\);

-- Location: IOIBUF_X0_Y34_N1
\C[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(23),
	o => \C[23]~input_o\);

-- Location: LCCOMB_X65_Y38_N28
\SRA64unit|Mux90~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~76_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[2]~input_o\ & (\SRA64unit|Mux19~3_combout\)) # (!\B[2]~input_o\ & ((\SRA64unit|Mux19~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux19~3_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \SRA64unit|Mux19~1_combout\,
	datad => \B[2]~input_o\,
	combout => \SRA64unit|Mux90~76_combout\);

-- Location: LCCOMB_X60_Y38_N8
\SRA64unit|Mux99~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux99~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRA64unit|Mux32~1_combout\)) # (!\B[2]~input_o\ & ((\SRA64unit|Mux36~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64unit|Mux32~1_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA64unit|Mux36~1_combout\,
	combout => \SRA64unit|Mux99~0_combout\);

-- Location: LCCOMB_X60_Y38_N26
\SRA64unit|Mux99~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux99~1_combout\ = (\SRA64unit|Mux99~0_combout\) # ((\B[3]~input_o\ & ((\SRA64unit|Mux90~76_combout\) # (\SRA64unit|Mux156~252_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~76_combout\,
	datab => \SRA64unit|Mux99~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux156~252_combout\,
	combout => \SRA64unit|Mux99~1_combout\);

-- Location: LCCOMB_X61_Y38_N14
\SRA64unit|Mux156~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~210_combout\ = (\B[1]~input_o\ & (\SRA64unit|Mux99~1_combout\)) # (!\B[1]~input_o\ & ((\SRA64unit|Mux101~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux99~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux101~1_combout\,
	combout => \SRA64unit|Mux156~210_combout\);

-- Location: LCCOMB_X61_Y37_N10
\SRA64unit|Mux156~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~208_combout\ = (\B[3]~input_o\ & (((\B[1]~input_o\)))) # (!\B[3]~input_o\ & ((\B[1]~input_o\ & (\SRA64unit|Mux90~54_combout\)) # (!\B[1]~input_o\ & ((\SRA64unit|Mux90~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64unit|Mux90~54_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux90~48_combout\,
	combout => \SRA64unit|Mux156~208_combout\);

-- Location: LCCOMB_X61_Y37_N12
\SRA64unit|Mux156~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~209_combout\ = (\SRA64unit|Mux156~208_combout\ & (((\SRA64unit|Mux90~76_combout\)) # (!\B[3]~input_o\))) # (!\SRA64unit|Mux156~208_combout\ & (\B[3]~input_o\ & ((\SRA64unit|Mux90~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~208_combout\,
	datab => \B[3]~input_o\,
	datac => \SRA64unit|Mux90~76_combout\,
	datad => \SRA64unit|Mux90~74_combout\,
	combout => \SRA64unit|Mux156~209_combout\);

-- Location: LCCOMB_X62_Y38_N6
\Y~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~155_combout\ = (\B[0]~input_o\ & (\ShiftFN[0]~input_o\)) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & (\SRA64unit|Mux156~205_combout\)) # (!\ShiftFN[0]~input_o\ & ((\SRA64unit|Mux156~204_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SRA64unit|Mux156~205_combout\,
	datad => \SRA64unit|Mux156~204_combout\,
	combout => \Y~155_combout\);

-- Location: LCCOMB_X62_Y38_N24
\Y~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~156_combout\ = (\B[0]~input_o\ & ((\Y~155_combout\ & (\SRA64unit|Mux156~210_combout\)) # (!\Y~155_combout\ & ((\SRA64unit|Mux156~209_combout\))))) # (!\B[0]~input_o\ & (((\Y~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~210_combout\,
	datab => \SRA64unit|Mux156~209_combout\,
	datac => \B[0]~input_o\,
	datad => \Y~155_combout\,
	combout => \Y~156_combout\);

-- Location: LCCOMB_X59_Y42_N4
\SRA64unit|Mux19~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux19~23_combout\ = (\B[4]~input_o\ & (\AmuxOut[7]~39_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[23]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \AmuxOut[7]~39_combout\,
	datad => \AmuxOut[23]~38_combout\,
	combout => \SRA64unit|Mux19~23_combout\);

-- Location: LCCOMB_X59_Y40_N20
\SLL64unit|Mux104~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux104~0_combout\ = (\B[3]~input_o\ & (((\B[2]~input_o\)))) # (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA64unit|Mux19~19_combout\))) # (!\B[2]~input_o\ & (\SRA64unit|Mux19~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64unit|Mux19~23_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA64unit|Mux19~19_combout\,
	combout => \SLL64unit|Mux104~0_combout\);

-- Location: LCCOMB_X58_Y39_N26
\SLL64unit|Mux104~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux104~1_combout\ = (\B[3]~input_o\ & ((\SLL64unit|Mux104~0_combout\ & (\AmuxOut[11]~36_combout\)) # (!\SLL64unit|Mux104~0_combout\ & ((\AmuxOut[15]~34_combout\))))) # (!\B[3]~input_o\ & (((\SLL64unit|Mux104~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[11]~36_combout\,
	datab => \AmuxOut[15]~34_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL64unit|Mux104~0_combout\,
	combout => \SLL64unit|Mux104~1_combout\);

-- Location: LCCOMB_X62_Y38_N4
\SLL64unit|Mux190~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~45_combout\ = (\SRA64unit|Mux86~0_combout\ & ((\B[1]~input_o\ & ((\SLL64unit|Mux106~1_combout\))) # (!\B[1]~input_o\ & (\SLL64unit|Mux104~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux86~0_combout\,
	datab => \SLL64unit|Mux104~1_combout\,
	datac => \SLL64unit|Mux106~1_combout\,
	datad => \B[1]~input_o\,
	combout => \SLL64unit|Mux190~45_combout\);

-- Location: LCCOMB_X62_Y38_N10
\Y~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~157_combout\ = (\Y~69_combout\ & (((\Y~70_combout\)))) # (!\Y~69_combout\ & ((\Y~70_combout\ & ((\SLL64unit|Mux190~45_combout\))) # (!\Y~70_combout\ & (\Y~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~156_combout\,
	datab => \Y~69_combout\,
	datac => \SLL64unit|Mux190~45_combout\,
	datad => \Y~70_combout\,
	combout => \Y~157_combout\);

-- Location: LCCOMB_X62_Y38_N20
\Y~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~158_combout\ = (\Y~69_combout\ & ((\Y~157_combout\ & ((\SLL64unit|Mux190~44_combout\))) # (!\Y~157_combout\ & (\C[23]~input_o\)))) # (!\Y~69_combout\ & (((\Y~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[23]~input_o\,
	datab => \Y~69_combout\,
	datac => \SLL64unit|Mux190~44_combout\,
	datad => \Y~157_combout\,
	combout => \Y~158_combout\);

-- Location: LCCOMB_X69_Y36_N22
\Y~303\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~303_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\SRLorSRAout[55]~47_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Y~158_combout\))))) # (!\ExtWord~input_o\ & (((\Y~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLorSRAout[55]~47_combout\,
	datab => \Y~158_combout\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~303_combout\);

-- Location: IOIBUF_X115_Y30_N8
\C[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(24),
	o => \C[24]~input_o\);

-- Location: LCCOMB_X58_Y36_N18
\SRA64unit|Mux19~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux19~24_combout\ = (\B[4]~input_o\ & ((\AmuxOut[8]~63_combout\))) # (!\B[4]~input_o\ & (\AmuxOut[24]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[24]~62_combout\,
	datab => \AmuxOut[8]~63_combout\,
	datac => \B[4]~input_o\,
	combout => \SRA64unit|Mux19~24_combout\);

-- Location: LCCOMB_X59_Y36_N20
\SLL64unit|Mux103~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux103~3_combout\ = (\B[3]~input_o\ & (\SRA64unit|Mux19~16_combout\)) # (!\B[3]~input_o\ & ((\SRA64unit|Mux19~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux19~16_combout\,
	datab => \SRA64unit|Mux19~24_combout\,
	datac => \B[3]~input_o\,
	combout => \SLL64unit|Mux103~3_combout\);

-- Location: LCCOMB_X59_Y36_N26
\SLL64unit|Mux103~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux103~2_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\AmuxOut[12]~58_combout\)) # (!\B[3]~input_o\ & ((\SRA64unit|Mux19~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \AmuxOut[12]~58_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux19~20_combout\,
	combout => \SLL64unit|Mux103~2_combout\);

-- Location: LCCOMB_X59_Y36_N30
\SLL64unit|Mux103~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux103~4_combout\ = (\SLL64unit|Mux103~2_combout\) # ((!\B[2]~input_o\ & \SLL64unit|Mux103~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL64unit|Mux103~3_combout\,
	datac => \SLL64unit|Mux103~2_combout\,
	combout => \SLL64unit|Mux103~4_combout\);

-- Location: LCCOMB_X62_Y38_N30
\SLL64unit|Mux190~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~46_combout\ = (\SLL64unit|Mux190~97_combout\ & ((\B[1]~input_o\ & ((\SLL64unit|Mux105~1_combout\))) # (!\B[1]~input_o\ & (\SLL64unit|Mux103~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL64unit|Mux190~97_combout\,
	datac => \SLL64unit|Mux103~4_combout\,
	datad => \SLL64unit|Mux105~1_combout\,
	combout => \SLL64unit|Mux190~46_combout\);

-- Location: LCCOMB_X63_Y39_N22
\SRA64unit|Mux90~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~77_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[2]~input_o\ & (\SRA64unit|Mux19~9_combout\)) # (!\B[2]~input_o\ & ((\SRA64unit|Mux19~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \SRA64unit|Mux19~9_combout\,
	datad => \SRA64unit|Mux19~11_combout\,
	combout => \SRA64unit|Mux90~77_combout\);

-- Location: LCCOMB_X62_Y43_N14
\SRA64unit|Mux98~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux98~0_combout\ = (\B[3]~input_o\ & (((\SRA64unit|Mux156~252_combout\) # (\SRA64unit|Mux90~77_combout\)))) # (!\B[3]~input_o\ & (\SRA64unit|Mux90~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~58_combout\,
	datab => \SRA64unit|Mux156~252_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux90~77_combout\,
	combout => \SRA64unit|Mux98~0_combout\);

-- Location: LCCOMB_X65_Y40_N26
\SRA64unit|Mux156~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~216_combout\ = (\B[1]~input_o\ & (\SRA64unit|Mux98~0_combout\)) # (!\B[1]~input_o\ & ((\SRA64unit|Mux100~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux98~0_combout\,
	datab => \B[1]~input_o\,
	datad => \SRA64unit|Mux100~1_combout\,
	combout => \SRA64unit|Mux156~216_combout\);

-- Location: LCCOMB_X63_Y41_N4
\SRA64unit|Mux156~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~214_combout\ = (\B[3]~input_o\ & (((\B[1]~input_o\)))) # (!\B[3]~input_o\ & ((\B[1]~input_o\ & ((\SRA64unit|Mux90~57_combout\))) # (!\B[1]~input_o\ & (\SRA64unit|Mux90~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~51_combout\,
	datab => \SRA64unit|Mux90~57_combout\,
	datac => \B[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRA64unit|Mux156~214_combout\);

-- Location: LCCOMB_X65_Y40_N0
\SRA64unit|Mux156~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~215_combout\ = (\SRA64unit|Mux156~214_combout\ & (((\SRA64unit|Mux90~77_combout\) # (!\B[3]~input_o\)))) # (!\SRA64unit|Mux156~214_combout\ & (\SRA64unit|Mux90~75_combout\ & ((\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~214_combout\,
	datab => \SRA64unit|Mux90~75_combout\,
	datac => \SRA64unit|Mux90~77_combout\,
	datad => \B[3]~input_o\,
	combout => \SRA64unit|Mux156~215_combout\);

-- Location: LCCOMB_X62_Y38_N16
\Y~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~159_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\SRA64unit|Mux156~210_combout\))) # (!\ShiftFN[0]~input_o\ & (\SRA64unit|Mux156~209_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRA64unit|Mux156~209_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~210_combout\,
	combout => \Y~159_combout\);

-- Location: LCCOMB_X62_Y38_N18
\Y~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~160_combout\ = (\B[0]~input_o\ & ((\Y~159_combout\ & (\SRA64unit|Mux156~216_combout\)) # (!\Y~159_combout\ & ((\SRA64unit|Mux156~215_combout\))))) # (!\B[0]~input_o\ & (((\Y~159_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~216_combout\,
	datab => \SRA64unit|Mux156~215_combout\,
	datac => \B[0]~input_o\,
	datad => \Y~159_combout\,
	combout => \Y~160_combout\);

-- Location: LCCOMB_X62_Y38_N28
\Y~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~161_combout\ = (\Y~70_combout\ & ((\SLL64unit|Mux190~46_combout\) # ((\Y~69_combout\)))) # (!\Y~70_combout\ & (((!\Y~69_combout\ & \Y~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux190~46_combout\,
	datab => \Y~70_combout\,
	datac => \Y~69_combout\,
	datad => \Y~160_combout\,
	combout => \Y~161_combout\);

-- Location: LCCOMB_X62_Y38_N22
\Y~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~162_combout\ = (\Y~69_combout\ & ((\Y~161_combout\ & ((\SLL64unit|Mux190~45_combout\))) # (!\Y~161_combout\ & (\C[24]~input_o\)))) # (!\Y~69_combout\ & (((\Y~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[24]~input_o\,
	datab => \Y~69_combout\,
	datac => \SLL64unit|Mux190~45_combout\,
	datad => \Y~161_combout\,
	combout => \Y~162_combout\);

-- Location: LCCOMB_X68_Y37_N10
\SRA64unit|Mux156~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~211_combout\ = (\SLL64unit|Mux190~25_combout\ & ((\B[1]~input_o\ & ((\SRA64unit|Mux90~55_combout\))) # (!\B[1]~input_o\ & (\SRA64unit|Mux90~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~49_combout\,
	datab => \SLL64unit|Mux190~25_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux90~55_combout\,
	combout => \SRA64unit|Mux156~211_combout\);

-- Location: LCCOMB_X68_Y37_N28
\SRLorSRAout[56]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[56]~48_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\) # (\SRA64unit|Mux156~211_combout\)))) # (!\B[0]~input_o\ & (\SRA64unit|Mux156~206_combout\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRA64unit|Mux156~206_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~211_combout\,
	combout => \SRLorSRAout[56]~48_combout\);

-- Location: LCCOMB_X68_Y37_N6
\SRA64unit|Mux156~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~212_combout\ = (!\SLL64unit|Mux190~93_combout\ & ((\B[1]~input_o\ & (\AmuxOut[59]~21_combout\)) # (!\B[1]~input_o\ & ((\SRA64unit|Mux90~49_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux190~93_combout\,
	datab => \AmuxOut[59]~21_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux90~49_combout\,
	combout => \SRA64unit|Mux156~212_combout\);

-- Location: LCCOMB_X68_Y37_N16
\SRA64unit|Mux156~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~213_combout\ = (\SRA64unit|Mux156~212_combout\) # ((\SLL64unit|Mux190~93_combout\ & \AmuxOut[63]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux190~93_combout\,
	datac => \AmuxOut[63]~1_combout\,
	datad => \SRA64unit|Mux156~212_combout\,
	combout => \SRA64unit|Mux156~213_combout\);

-- Location: LCCOMB_X68_Y37_N2
\SRLorSRAout[56]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[56]~49_combout\ = (\ShiftFN[0]~input_o\ & ((\SRLorSRAout[56]~48_combout\ & ((\SRA64unit|Mux156~213_combout\))) # (!\SRLorSRAout[56]~48_combout\ & (\SRA64unit|Mux156~207_combout\)))) # (!\ShiftFN[0]~input_o\ & (\SRLorSRAout[56]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SRLorSRAout[56]~48_combout\,
	datac => \SRA64unit|Mux156~207_combout\,
	datad => \SRA64unit|Mux156~213_combout\,
	combout => \SRLorSRAout[56]~49_combout\);

-- Location: LCCOMB_X65_Y41_N20
\Y~304\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~304_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\SRLorSRAout[56]~49_combout\))) # (!\ExtWord~input_o\ & (\Y~162_combout\)))) # (!\ShiftFN[1]~input_o\ & (((\Y~162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \Y~162_combout\,
	datad => \SRLorSRAout[56]~49_combout\,
	combout => \Y~304_combout\);

-- Location: IOIBUF_X62_Y0_N22
\C[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(25),
	o => \C[25]~input_o\);

-- Location: LCCOMB_X69_Y39_N30
\SLL64unit|Mux102~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux102~0_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\AmuxOut[13]~46_combout\)) # (!\B[3]~input_o\ & ((\SRA64unit|Mux19~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[13]~46_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux19~21_combout\,
	combout => \SLL64unit|Mux102~0_combout\);

-- Location: LCCOMB_X70_Y38_N26
\SRA64unit|Mux19~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux19~25_combout\ = (\B[4]~input_o\ & (\AmuxOut[9]~48_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[25]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AmuxOut[9]~48_combout\,
	datac => \B[4]~input_o\,
	datad => \AmuxOut[25]~47_combout\,
	combout => \SRA64unit|Mux19~25_combout\);

-- Location: LCCOMB_X69_Y39_N24
\SLL64unit|Mux102~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux102~1_combout\ = (\B[3]~input_o\ & ((\SRA64unit|Mux19~17_combout\))) # (!\B[3]~input_o\ & (\SRA64unit|Mux19~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux19~25_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux19~17_combout\,
	combout => \SLL64unit|Mux102~1_combout\);

-- Location: LCCOMB_X69_Y39_N26
\SLL64unit|Mux102~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux102~2_combout\ = (\SLL64unit|Mux102~0_combout\) # ((!\B[2]~input_o\ & \SLL64unit|Mux102~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux102~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL64unit|Mux102~1_combout\,
	combout => \SLL64unit|Mux102~2_combout\);

-- Location: LCCOMB_X62_Y38_N0
\SLL64unit|Mux190~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~47_combout\ = (\SLL64unit|Mux190~97_combout\ & ((\B[1]~input_o\ & (\SLL64unit|Mux104~1_combout\)) # (!\B[1]~input_o\ & ((\SLL64unit|Mux102~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL64unit|Mux190~97_combout\,
	datac => \SLL64unit|Mux104~1_combout\,
	datad => \SLL64unit|Mux102~2_combout\,
	combout => \SLL64unit|Mux190~47_combout\);

-- Location: LCCOMB_X62_Y36_N24
\SRA64unit|Mux90~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~78_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[2]~input_o\ & (\SRA64unit|Mux19~7_combout\)) # (!\B[2]~input_o\ & ((\SRA64unit|Mux19~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \SRA64unit|Mux19~7_combout\,
	datad => \SRA64unit|Mux19~4_combout\,
	combout => \SRA64unit|Mux90~78_combout\);

-- Location: LCCOMB_X60_Y38_N28
\SRA64unit|Mux97~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux97~0_combout\ = (\B[3]~input_o\ & (((\SRA64unit|Mux156~252_combout\) # (\SRA64unit|Mux90~78_combout\)))) # (!\B[3]~input_o\ & (\SRA64unit|Mux90~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64unit|Mux90~62_combout\,
	datac => \SRA64unit|Mux156~252_combout\,
	datad => \SRA64unit|Mux90~78_combout\,
	combout => \SRA64unit|Mux97~0_combout\);

-- Location: LCCOMB_X60_Y38_N6
\SRA64unit|Mux156~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~221_combout\ = (\B[1]~input_o\ & ((\SRA64unit|Mux97~0_combout\))) # (!\B[1]~input_o\ & (\SRA64unit|Mux99~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux99~1_combout\,
	datab => \SRA64unit|Mux97~0_combout\,
	datac => \B[1]~input_o\,
	combout => \SRA64unit|Mux156~221_combout\);

-- Location: LCCOMB_X62_Y38_N26
\Y~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~163_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & (\SRA64unit|Mux156~216_combout\)) # (!\ShiftFN[0]~input_o\ & ((\SRA64unit|Mux156~215_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRA64unit|Mux156~216_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~215_combout\,
	combout => \Y~163_combout\);

-- Location: LCCOMB_X61_Y37_N22
\SRA64unit|Mux156~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~219_combout\ = (\B[1]~input_o\ & ((\SRA64unit|Mux90~61_combout\) # ((\B[3]~input_o\)))) # (!\B[1]~input_o\ & (((\SRA64unit|Mux90~54_combout\ & !\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRA64unit|Mux90~61_combout\,
	datac => \SRA64unit|Mux90~54_combout\,
	datad => \B[3]~input_o\,
	combout => \SRA64unit|Mux156~219_combout\);

-- Location: LCCOMB_X63_Y38_N12
\SRA64unit|Mux156~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~220_combout\ = (\B[3]~input_o\ & ((\SRA64unit|Mux156~219_combout\ & ((\SRA64unit|Mux90~78_combout\))) # (!\SRA64unit|Mux156~219_combout\ & (\SRA64unit|Mux90~76_combout\)))) # (!\B[3]~input_o\ & (((\SRA64unit|Mux156~219_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~76_combout\,
	datab => \SRA64unit|Mux90~78_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux156~219_combout\,
	combout => \SRA64unit|Mux156~220_combout\);

-- Location: LCCOMB_X63_Y38_N22
\Y~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~164_combout\ = (\B[0]~input_o\ & ((\Y~163_combout\ & (\SRA64unit|Mux156~221_combout\)) # (!\Y~163_combout\ & ((\SRA64unit|Mux156~220_combout\))))) # (!\B[0]~input_o\ & (((\Y~163_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~221_combout\,
	datab => \B[0]~input_o\,
	datac => \Y~163_combout\,
	datad => \SRA64unit|Mux156~220_combout\,
	combout => \Y~164_combout\);

-- Location: LCCOMB_X62_Y38_N12
\Y~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~165_combout\ = (\Y~70_combout\ & ((\SLL64unit|Mux190~47_combout\) # ((\Y~69_combout\)))) # (!\Y~70_combout\ & (((!\Y~69_combout\ & \Y~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux190~47_combout\,
	datab => \Y~70_combout\,
	datac => \Y~69_combout\,
	datad => \Y~164_combout\,
	combout => \Y~165_combout\);

-- Location: LCCOMB_X62_Y38_N14
\Y~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~166_combout\ = (\Y~69_combout\ & ((\Y~165_combout\ & (\SLL64unit|Mux190~46_combout\)) # (!\Y~165_combout\ & ((\C[25]~input_o\))))) # (!\Y~69_combout\ & (((\Y~165_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux190~46_combout\,
	datab => \C[25]~input_o\,
	datac => \Y~69_combout\,
	datad => \Y~165_combout\,
	combout => \Y~166_combout\);

-- Location: LCCOMB_X68_Y37_N4
\SRA64unit|Mux156~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~217_combout\ = (!\SLL64unit|Mux190~93_combout\ & ((\B[1]~input_o\ & (\AmuxOut[60]~14_combout\)) # (!\B[1]~input_o\ & ((\SRA64unit|Mux90~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[60]~14_combout\,
	datab => \SRA64unit|Mux90~52_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL64unit|Mux190~93_combout\,
	combout => \SRA64unit|Mux156~217_combout\);

-- Location: LCCOMB_X68_Y37_N30
\SRLorSRAout[57]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[57]~50_combout\ = (\B[0]~input_o\ & ((\SRA64unit|Mux156~217_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & (((!\ShiftFN[0]~input_o\ & \SRA64unit|Mux156~211_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRA64unit|Mux156~217_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~211_combout\,
	combout => \SRLorSRAout[57]~50_combout\);

-- Location: LCCOMB_X68_Y37_N24
\SRA64unit|Mux156~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~218_combout\ = (\SRA64unit|Mux156~217_combout\) # ((\SLL64unit|Mux190~93_combout\ & \AmuxOut[63]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux190~93_combout\,
	datab => \SRA64unit|Mux156~217_combout\,
	datac => \AmuxOut[63]~1_combout\,
	combout => \SRA64unit|Mux156~218_combout\);

-- Location: LCCOMB_X68_Y37_N26
\SRLorSRAout[57]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[57]~51_combout\ = (\SRLorSRAout[57]~50_combout\ & (((\SRA64unit|Mux156~218_combout\) # (!\ShiftFN[0]~input_o\)))) # (!\SRLorSRAout[57]~50_combout\ & (\SRA64unit|Mux156~213_combout\ & (\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLorSRAout[57]~50_combout\,
	datab => \SRA64unit|Mux156~213_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~218_combout\,
	combout => \SRLorSRAout[57]~51_combout\);

-- Location: LCCOMB_X63_Y38_N28
\Y~305\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~305_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\SRLorSRAout[57]~51_combout\))) # (!\ShiftFN[1]~input_o\ & (\Y~166_combout\)))) # (!\ExtWord~input_o\ & (\Y~166_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~166_combout\,
	datab => \ExtWord~input_o\,
	datac => \SRLorSRAout[57]~51_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~305_combout\);

-- Location: IOIBUF_X87_Y73_N8
\C[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(26),
	o => \C[26]~input_o\);

-- Location: LCCOMB_X58_Y37_N10
\SLL64unit|Mux101~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux101~0_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\AmuxOut[14]~50_combout\))) # (!\B[3]~input_o\ & (\SRA64unit|Mux19~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux19~22_combout\,
	datab => \B[3]~input_o\,
	datac => \AmuxOut[14]~50_combout\,
	datad => \B[2]~input_o\,
	combout => \SLL64unit|Mux101~0_combout\);

-- Location: LCCOMB_X59_Y38_N18
\SRA64unit|Mux19~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux19~26_combout\ = (\B[4]~input_o\ & ((\AmuxOut[10]~52_combout\))) # (!\B[4]~input_o\ & (\AmuxOut[26]~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \AmuxOut[26]~51_combout\,
	datad => \AmuxOut[10]~52_combout\,
	combout => \SRA64unit|Mux19~26_combout\);

-- Location: LCCOMB_X58_Y37_N20
\SLL64unit|Mux101~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux101~1_combout\ = (\B[3]~input_o\ & (\SRA64unit|Mux19~18_combout\)) # (!\B[3]~input_o\ & ((\SRA64unit|Mux19~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \SRA64unit|Mux19~18_combout\,
	datad => \SRA64unit|Mux19~26_combout\,
	combout => \SLL64unit|Mux101~1_combout\);

-- Location: LCCOMB_X58_Y37_N6
\SLL64unit|Mux101~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux101~2_combout\ = (\SLL64unit|Mux101~0_combout\) # ((!\B[2]~input_o\ & \SLL64unit|Mux101~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux101~0_combout\,
	datab => \B[2]~input_o\,
	datad => \SLL64unit|Mux101~1_combout\,
	combout => \SLL64unit|Mux101~2_combout\);

-- Location: LCCOMB_X58_Y40_N18
\SLL64unit|Mux103~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux103~5_combout\ = (\B[2]~input_o\ & (\SRA64unit|Mux86~0_combout\)) # (!\B[2]~input_o\ & (((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux86~0_combout\,
	datab => \B[2]~input_o\,
	datac => \B[5]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \SLL64unit|Mux103~5_combout\);

-- Location: LCCOMB_X63_Y36_N0
\SLL64unit|Mux190~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~48_combout\ = (\SLL64unit|Mux103~5_combout\ & ((\B[1]~input_o\ & (\SLL64unit|Mux103~4_combout\)) # (!\B[1]~input_o\ & ((\SLL64unit|Mux101~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux103~4_combout\,
	datab => \SLL64unit|Mux101~2_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL64unit|Mux103~5_combout\,
	combout => \SLL64unit|Mux190~48_combout\);

-- Location: LCCOMB_X63_Y41_N22
\SRA64unit|Mux156~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~225_combout\ = (\B[3]~input_o\ & (((\B[1]~input_o\)))) # (!\B[3]~input_o\ & ((\B[1]~input_o\ & (\SRA64unit|Mux90~65_combout\)) # (!\B[1]~input_o\ & ((\SRA64unit|Mux90~57_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~65_combout\,
	datab => \SRA64unit|Mux90~57_combout\,
	datac => \B[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRA64unit|Mux156~225_combout\);

-- Location: LCCOMB_X66_Y36_N0
\SRA64unit|Mux90~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~79_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[2]~input_o\ & ((\SRA64unit|Mux19~12_combout\))) # (!\B[2]~input_o\ & (\SRA64unit|Mux19~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \SRA64unit|Mux19~15_combout\,
	datad => \SRA64unit|Mux19~12_combout\,
	combout => \SRA64unit|Mux90~79_combout\);

-- Location: LCCOMB_X65_Y40_N28
\SRA64unit|Mux156~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~226_combout\ = (\SRA64unit|Mux156~225_combout\ & (((\SRA64unit|Mux90~79_combout\) # (!\B[3]~input_o\)))) # (!\SRA64unit|Mux156~225_combout\ & (\SRA64unit|Mux90~77_combout\ & ((\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~225_combout\,
	datab => \SRA64unit|Mux90~77_combout\,
	datac => \SRA64unit|Mux90~79_combout\,
	datad => \B[3]~input_o\,
	combout => \SRA64unit|Mux156~226_combout\);

-- Location: LCCOMB_X65_Y40_N6
\SRA64unit|Mux96~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux96~0_combout\ = (\B[3]~input_o\ & ((\SRA64unit|Mux90~79_combout\) # ((\SRA64unit|Mux156~252_combout\)))) # (!\B[3]~input_o\ & (((\SRA64unit|Mux90~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64unit|Mux90~79_combout\,
	datac => \SRA64unit|Mux156~252_combout\,
	datad => \SRA64unit|Mux90~66_combout\,
	combout => \SRA64unit|Mux96~0_combout\);

-- Location: LCCOMB_X65_Y40_N8
\SRA64unit|Mux156~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~227_combout\ = (\B[1]~input_o\ & ((\SRA64unit|Mux96~0_combout\))) # (!\B[1]~input_o\ & (\SRA64unit|Mux98~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux98~0_combout\,
	datab => \B[1]~input_o\,
	datad => \SRA64unit|Mux96~0_combout\,
	combout => \SRA64unit|Mux156~227_combout\);

-- Location: LCCOMB_X63_Y38_N24
\Y~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~167_combout\ = (\ShiftFN[0]~input_o\ & ((\B[0]~input_o\) # ((\SRA64unit|Mux156~221_combout\)))) # (!\ShiftFN[0]~input_o\ & (!\B[0]~input_o\ & ((\SRA64unit|Mux156~220_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SRA64unit|Mux156~221_combout\,
	datad => \SRA64unit|Mux156~220_combout\,
	combout => \Y~167_combout\);

-- Location: LCCOMB_X63_Y38_N2
\Y~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~168_combout\ = (\B[0]~input_o\ & ((\Y~167_combout\ & ((\SRA64unit|Mux156~227_combout\))) # (!\Y~167_combout\ & (\SRA64unit|Mux156~226_combout\)))) # (!\B[0]~input_o\ & (((\Y~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~226_combout\,
	datab => \B[0]~input_o\,
	datac => \SRA64unit|Mux156~227_combout\,
	datad => \Y~167_combout\,
	combout => \Y~168_combout\);

-- Location: LCCOMB_X63_Y38_N20
\Y~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~169_combout\ = (\Y~69_combout\ & (((\Y~70_combout\)))) # (!\Y~69_combout\ & ((\Y~70_combout\ & (\SLL64unit|Mux190~48_combout\)) # (!\Y~70_combout\ & ((\Y~168_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux190~48_combout\,
	datab => \Y~69_combout\,
	datac => \Y~70_combout\,
	datad => \Y~168_combout\,
	combout => \Y~169_combout\);

-- Location: LCCOMB_X63_Y38_N14
\Y~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~170_combout\ = (\Y~69_combout\ & ((\Y~169_combout\ & (\SLL64unit|Mux190~47_combout\)) # (!\Y~169_combout\ & ((\C[26]~input_o\))))) # (!\Y~69_combout\ & (((\Y~169_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux190~47_combout\,
	datab => \Y~69_combout\,
	datac => \C[26]~input_o\,
	datad => \Y~169_combout\,
	combout => \Y~170_combout\);

-- Location: LCCOMB_X68_Y37_N12
\SRA64unit|Mux156~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~222_combout\ = (!\SLL64unit|Mux190~93_combout\ & ((\B[1]~input_o\ & (\AmuxOut[61]~29_combout\)) # (!\B[1]~input_o\ & ((\SRA64unit|Mux90~55_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux190~93_combout\,
	datab => \AmuxOut[61]~29_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux90~55_combout\,
	combout => \SRA64unit|Mux156~222_combout\);

-- Location: LCCOMB_X68_Y37_N22
\SRLorSRAout[58]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[58]~52_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\) # (\SRA64unit|Mux156~222_combout\)))) # (!\B[0]~input_o\ & (\SRA64unit|Mux156~217_combout\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRA64unit|Mux156~217_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux156~222_combout\,
	combout => \SRLorSRAout[58]~52_combout\);

-- Location: LCCOMB_X67_Y37_N20
\SRA64unit|Mux156~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~223_combout\ = (\B[1]~input_o\ & ((\AmuxOut[61]~29_combout\))) # (!\B[1]~input_o\ & (\AmuxOut[59]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[59]~21_combout\,
	datab => \B[1]~input_o\,
	datad => \AmuxOut[61]~29_combout\,
	combout => \SRA64unit|Mux156~223_combout\);

-- Location: LCCOMB_X67_Y37_N14
\SRA64unit|Mux156~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~224_combout\ = (\SLL64unit|Mux127~4_combout\ & (\AmuxOut[63]~1_combout\)) # (!\SLL64unit|Mux127~4_combout\ & ((\SRA64unit|Mux156~223_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AmuxOut[63]~1_combout\,
	datac => \SLL64unit|Mux127~4_combout\,
	datad => \SRA64unit|Mux156~223_combout\,
	combout => \SRA64unit|Mux156~224_combout\);

-- Location: LCCOMB_X67_Y37_N24
\SRLorSRAout[58]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[58]~53_combout\ = (\SRLorSRAout[58]~52_combout\ & (((\SRA64unit|Mux156~224_combout\) # (!\ShiftFN[0]~input_o\)))) # (!\SRLorSRAout[58]~52_combout\ & (\SRA64unit|Mux156~218_combout\ & ((\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLorSRAout[58]~52_combout\,
	datab => \SRA64unit|Mux156~218_combout\,
	datac => \SRA64unit|Mux156~224_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \SRLorSRAout[58]~53_combout\);

-- Location: LCCOMB_X67_Y37_N18
\Y~306\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~306_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\SRLorSRAout[58]~53_combout\))) # (!\ExtWord~input_o\ & (\Y~170_combout\)))) # (!\ShiftFN[1]~input_o\ & (\Y~170_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~170_combout\,
	datab => \SRLorSRAout[58]~53_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Y~306_combout\);

-- Location: IOIBUF_X115_Y46_N8
\C[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(27),
	o => \C[27]~input_o\);

-- Location: LCCOMB_X65_Y38_N30
\SRA64unit|Mux90~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux90~80_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[2]~input_o\ & ((\SRA64unit|Mux19~0_combout\))) # (!\B[2]~input_o\ & (\SRA64unit|Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux19~3_combout\,
	datab => \SRA64unit|Mux19~0_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \B[2]~input_o\,
	combout => \SRA64unit|Mux90~80_combout\);

-- Location: LCCOMB_X62_Y36_N2
\SRA64unit|Mux156~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~230_combout\ = (\B[3]~input_o\ & (((\B[1]~input_o\)))) # (!\B[3]~input_o\ & ((\B[1]~input_o\ & (\SRA64unit|Mux90~68_combout\)) # (!\B[1]~input_o\ & ((\SRA64unit|Mux90~61_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~68_combout\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux90~61_combout\,
	combout => \SRA64unit|Mux156~230_combout\);

-- Location: LCCOMB_X62_Y36_N4
\SRA64unit|Mux156~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~231_combout\ = (\SRA64unit|Mux156~230_combout\ & ((\SRA64unit|Mux90~80_combout\) # ((!\B[3]~input_o\)))) # (!\SRA64unit|Mux156~230_combout\ & (((\B[3]~input_o\ & \SRA64unit|Mux90~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~80_combout\,
	datab => \SRA64unit|Mux156~230_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux90~78_combout\,
	combout => \SRA64unit|Mux156~231_combout\);

-- Location: LCCOMB_X60_Y38_N16
\SRA64unit|Mux95~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux95~0_combout\ = (\B[3]~input_o\ & ((\SRA64unit|Mux90~80_combout\) # ((\SRA64unit|Mux156~252_combout\)))) # (!\B[3]~input_o\ & (((\SRA64unit|Mux90~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64unit|Mux90~80_combout\,
	datac => \SRA64unit|Mux90~85_combout\,
	datad => \SRA64unit|Mux156~252_combout\,
	combout => \SRA64unit|Mux95~0_combout\);

-- Location: LCCOMB_X60_Y38_N2
\SRA64unit|Mux156~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~232_combout\ = (\B[1]~input_o\ & (\SRA64unit|Mux95~0_combout\)) # (!\B[1]~input_o\ & ((\SRA64unit|Mux97~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64unit|Mux95~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux97~0_combout\,
	combout => \SRA64unit|Mux156~232_combout\);

-- Location: LCCOMB_X63_Y38_N16
\Y~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~171_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\SRA64unit|Mux156~227_combout\))) # (!\ShiftFN[0]~input_o\ & (\SRA64unit|Mux156~226_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~226_combout\,
	datab => \B[0]~input_o\,
	datac => \SRA64unit|Mux156~227_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y~171_combout\);

-- Location: LCCOMB_X63_Y38_N10
\Y~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~172_combout\ = (\B[0]~input_o\ & ((\Y~171_combout\ & ((\SRA64unit|Mux156~232_combout\))) # (!\Y~171_combout\ & (\SRA64unit|Mux156~231_combout\)))) # (!\B[0]~input_o\ & (((\Y~171_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRA64unit|Mux156~231_combout\,
	datac => \SRA64unit|Mux156~232_combout\,
	datad => \Y~171_combout\,
	combout => \Y~172_combout\);

-- Location: LCCOMB_X58_Y39_N28
\SRA64unit|Mux19~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux19~27_combout\ = (\B[4]~input_o\ & (\AmuxOut[11]~36_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[27]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \AmuxOut[11]~36_combout\,
	datad => \AmuxOut[27]~35_combout\,
	combout => \SRA64unit|Mux19~27_combout\);

-- Location: LCCOMB_X59_Y40_N6
\SLL64unit|Mux100~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux100~1_combout\ = (\B[3]~input_o\ & ((\SRA64unit|Mux19~19_combout\))) # (!\B[3]~input_o\ & (\SRA64unit|Mux19~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \SRA64unit|Mux19~27_combout\,
	datad => \SRA64unit|Mux19~19_combout\,
	combout => \SLL64unit|Mux100~1_combout\);

-- Location: LCCOMB_X63_Y40_N28
\SLL64unit|Mux100~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux100~0_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\AmuxOut[15]~34_combout\))) # (!\B[3]~input_o\ & (\SRA64unit|Mux19~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux19~23_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \AmuxOut[15]~34_combout\,
	combout => \SLL64unit|Mux100~0_combout\);

-- Location: LCCOMB_X59_Y40_N24
\SLL64unit|Mux100~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux100~2_combout\ = (\SLL64unit|Mux100~0_combout\) # ((\SLL64unit|Mux100~1_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux100~1_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL64unit|Mux100~0_combout\,
	combout => \SLL64unit|Mux100~2_combout\);

-- Location: LCCOMB_X63_Y36_N2
\SLL64unit|Mux190~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~49_combout\ = (\SLL64unit|Mux103~5_combout\ & ((\B[1]~input_o\ & (\SLL64unit|Mux102~2_combout\)) # (!\B[1]~input_o\ & ((\SLL64unit|Mux100~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux103~5_combout\,
	datab => \SLL64unit|Mux102~2_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL64unit|Mux100~2_combout\,
	combout => \SLL64unit|Mux190~49_combout\);

-- Location: LCCOMB_X63_Y38_N4
\Y~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~173_combout\ = (\Y~69_combout\ & (((\Y~70_combout\)))) # (!\Y~69_combout\ & ((\Y~70_combout\ & ((\SLL64unit|Mux190~49_combout\))) # (!\Y~70_combout\ & (\Y~172_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~172_combout\,
	datab => \Y~69_combout\,
	datac => \Y~70_combout\,
	datad => \SLL64unit|Mux190~49_combout\,
	combout => \Y~173_combout\);

-- Location: LCCOMB_X63_Y38_N6
\Y~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~174_combout\ = (\Y~69_combout\ & ((\Y~173_combout\ & ((\SLL64unit|Mux190~48_combout\))) # (!\Y~173_combout\ & (\C[27]~input_o\)))) # (!\Y~69_combout\ & (((\Y~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[27]~input_o\,
	datab => \Y~69_combout\,
	datac => \Y~173_combout\,
	datad => \SLL64unit|Mux190~48_combout\,
	combout => \Y~174_combout\);

-- Location: LCCOMB_X67_Y40_N4
\SRA64unit|Mux156~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~228_combout\ = (!\SLL64unit|Mux127~4_combout\ & ((\B[1]~input_o\ & ((\AmuxOut[62]~6_combout\))) # (!\B[1]~input_o\ & (\AmuxOut[60]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[60]~14_combout\,
	datab => \AmuxOut[62]~6_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL64unit|Mux127~4_combout\,
	combout => \SRA64unit|Mux156~228_combout\);

-- Location: LCCOMB_X67_Y37_N12
\SRA64unit|Mux156~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~229_combout\ = (\SRA64unit|Mux156~228_combout\) # ((\AmuxOut[63]~1_combout\ & \SLL64unit|Mux127~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~228_combout\,
	datab => \AmuxOut[63]~1_combout\,
	datac => \SLL64unit|Mux127~4_combout\,
	combout => \SRA64unit|Mux156~229_combout\);

-- Location: LCCOMB_X67_Y37_N2
\SRLorSRAout[59]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[59]~54_combout\ = (\B[0]~input_o\ & ((\SRA64unit|Mux156~228_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & (((\SRA64unit|Mux156~222_combout\ & !\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~228_combout\,
	datab => \SRA64unit|Mux156~222_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \SRLorSRAout[59]~54_combout\);

-- Location: LCCOMB_X67_Y37_N30
\SRLorSRAout[59]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[59]~55_combout\ = (\ShiftFN[0]~input_o\ & ((\SRLorSRAout[59]~54_combout\ & (\SRA64unit|Mux156~229_combout\)) # (!\SRLorSRAout[59]~54_combout\ & ((\SRA64unit|Mux156~224_combout\))))) # (!\ShiftFN[0]~input_o\ & 
-- (((\SRLorSRAout[59]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~229_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SRA64unit|Mux156~224_combout\,
	datad => \SRLorSRAout[59]~54_combout\,
	combout => \SRLorSRAout[59]~55_combout\);

-- Location: LCCOMB_X63_Y38_N30
\Y~307\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~307_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\SRLorSRAout[59]~55_combout\))) # (!\ShiftFN[1]~input_o\ & (\Y~174_combout\)))) # (!\ExtWord~input_o\ & (\Y~174_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~174_combout\,
	datab => \ExtWord~input_o\,
	datac => \SRLorSRAout[59]~55_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~307_combout\);

-- Location: LCCOMB_X58_Y38_N16
\SRA64unit|Mux156~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~234_combout\ = (!\B[1]~input_o\ & (!\B[3]~input_o\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	combout => \SRA64unit|Mux156~234_combout\);

-- Location: LCCOMB_X58_Y38_N26
\SRA64unit|Mux156~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~235_combout\ = (\SRA64unit|Mux156~234_combout\ & ((\SRL64unit|Mux47~0_combout\ & ((\AmuxOut[61]~29_combout\))) # (!\SRL64unit|Mux47~0_combout\ & (\AmuxOut[63]~1_combout\)))) # (!\SRA64unit|Mux156~234_combout\ & (\AmuxOut[63]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[63]~1_combout\,
	datab => \SRA64unit|Mux156~234_combout\,
	datac => \SRL64unit|Mux47~0_combout\,
	datad => \AmuxOut[61]~29_combout\,
	combout => \SRA64unit|Mux156~235_combout\);

-- Location: LCCOMB_X67_Y37_N16
\SRA64unit|Mux156~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~233_combout\ = (!\SLL64unit|Mux127~4_combout\ & ((\B[1]~input_o\ & ((\AmuxOut[63]~1_combout\))) # (!\B[1]~input_o\ & (\AmuxOut[61]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[61]~29_combout\,
	datab => \AmuxOut[63]~1_combout\,
	datac => \SLL64unit|Mux127~4_combout\,
	datad => \B[1]~input_o\,
	combout => \SRA64unit|Mux156~233_combout\);

-- Location: LCCOMB_X67_Y37_N26
\SRLorSRAout[60]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[60]~56_combout\ = (\B[0]~input_o\ & (((\SRA64unit|Mux156~233_combout\) # (\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & (\SRA64unit|Mux156~228_combout\ & ((!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~228_combout\,
	datab => \SRA64unit|Mux156~233_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \SRLorSRAout[60]~56_combout\);

-- Location: LCCOMB_X67_Y37_N28
\SRLorSRAout[60]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[60]~57_combout\ = (\SRLorSRAout[60]~56_combout\ & (((\SRA64unit|Mux156~235_combout\) # (!\ShiftFN[0]~input_o\)))) # (!\SRLorSRAout[60]~56_combout\ & (\SRA64unit|Mux156~229_combout\ & ((\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~229_combout\,
	datab => \SRA64unit|Mux156~235_combout\,
	datac => \SRLorSRAout[60]~56_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \SRLorSRAout[60]~57_combout\);

-- Location: IOIBUF_X65_Y0_N1
\C[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(28),
	o => \C[28]~input_o\);

-- Location: LCCOMB_X58_Y40_N10
\SLL64unit|Mux190~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~50_combout\ = (\B[1]~input_o\ & ((\SRA64unit|Mux123~0_combout\) # ((\SRA64unit|Mux86~0_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux86~0_combout\,
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux123~0_combout\,
	combout => \SLL64unit|Mux190~50_combout\);

-- Location: LCCOMB_X60_Y37_N2
\SRA64unit|Mux19~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux19~28_combout\ = (\B[4]~input_o\ & (\AmuxOut[12]~58_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[28]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \AmuxOut[12]~58_combout\,
	datad => \AmuxOut[28]~57_combout\,
	combout => \SRA64unit|Mux19~28_combout\);

-- Location: LCCOMB_X59_Y36_N8
\SLL64unit|Mux99~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux99~0_combout\ = (\B[3]~input_o\ & ((\SRA64unit|Mux19~20_combout\))) # (!\B[3]~input_o\ & (\SRA64unit|Mux19~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux19~28_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux19~20_combout\,
	combout => \SLL64unit|Mux99~0_combout\);

-- Location: LCCOMB_X59_Y36_N10
\SLL64unit|Mux99~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux99~1_combout\ = (\B[2]~input_o\ & (\SLL64unit|Mux103~3_combout\)) # (!\B[2]~input_o\ & ((\SLL64unit|Mux99~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL64unit|Mux103~3_combout\,
	datac => \SLL64unit|Mux99~0_combout\,
	combout => \SLL64unit|Mux99~1_combout\);

-- Location: LCCOMB_X63_Y39_N16
\SRA64unit|Mux156~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~236_combout\ = (!\B[1]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \B[5]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \SRA64unit|Mux156~236_combout\);

-- Location: LCCOMB_X63_Y36_N28
\SLL64unit|Mux190~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~51_combout\ = (\SLL64unit|Mux190~50_combout\ & ((\SLL64unit|Mux101~2_combout\) # ((\SLL64unit|Mux99~1_combout\ & \SRA64unit|Mux156~236_combout\)))) # (!\SLL64unit|Mux190~50_combout\ & (((\SLL64unit|Mux99~1_combout\ & 
-- \SRA64unit|Mux156~236_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux190~50_combout\,
	datab => \SLL64unit|Mux101~2_combout\,
	datac => \SLL64unit|Mux99~1_combout\,
	datad => \SRA64unit|Mux156~236_combout\,
	combout => \SLL64unit|Mux190~51_combout\);

-- Location: LCCOMB_X63_Y39_N28
\SRA64unit|Mux156~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~238_combout\ = (\B[1]~input_o\ & (((\SRA64unit|Mux90~23_combout\ & \ShiftCount[5]~0_combout\)))) # (!\B[1]~input_o\ & (\SRA64unit|Mux90~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~79_combout\,
	datab => \SRA64unit|Mux90~23_combout\,
	datac => \B[1]~input_o\,
	datad => \ShiftCount[5]~0_combout\,
	combout => \SRA64unit|Mux156~238_combout\);

-- Location: LCCOMB_X63_Y39_N18
\SRA64unit|Mux156~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~237_combout\ = (!\B[3]~input_o\ & ((\B[1]~input_o\ & ((\SRA64unit|Mux90~71_combout\))) # (!\B[1]~input_o\ & (\SRA64unit|Mux90~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~65_combout\,
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux90~71_combout\,
	combout => \SRA64unit|Mux156~237_combout\);

-- Location: LCCOMB_X63_Y39_N14
\SRA64unit|Mux156~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~239_combout\ = (\SRA64unit|Mux156~237_combout\) # ((\SRA64unit|Mux156~238_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64unit|Mux156~238_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux156~237_combout\,
	combout => \SRA64unit|Mux156~239_combout\);

-- Location: LCCOMB_X63_Y39_N0
\SRA64unit|Mux156~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~240_combout\ = (\B[3]~input_o\ & (\SRA64unit|Mux90~23_combout\)) # (!\B[3]~input_o\ & ((\SRA64unit|Mux90~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64unit|Mux90~23_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux90~73_combout\,
	combout => \SRA64unit|Mux156~240_combout\);

-- Location: LCCOMB_X65_Y40_N10
\SRA64unit|Mux156~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~241_combout\ = (\B[1]~input_o\ & ((\SRA64unit|Mux156~252_combout\) # ((\SRA64unit|Mux156~240_combout\ & \ShiftCount[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~240_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \SRA64unit|Mux156~252_combout\,
	datad => \B[1]~input_o\,
	combout => \SRA64unit|Mux156~241_combout\);

-- Location: LCCOMB_X65_Y40_N20
\SRA64unit|Mux156~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~242_combout\ = (\SRA64unit|Mux156~241_combout\) # ((!\B[1]~input_o\ & \SRA64unit|Mux96~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~241_combout\,
	datab => \B[1]~input_o\,
	datad => \SRA64unit|Mux96~0_combout\,
	combout => \SRA64unit|Mux156~242_combout\);

-- Location: LCCOMB_X63_Y38_N8
\Y~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~175_combout\ = (\ShiftFN[0]~input_o\ & ((\B[0]~input_o\) # ((\SRA64unit|Mux156~232_combout\)))) # (!\ShiftFN[0]~input_o\ & (!\B[0]~input_o\ & ((\SRA64unit|Mux156~231_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SRA64unit|Mux156~232_combout\,
	datad => \SRA64unit|Mux156~231_combout\,
	combout => \Y~175_combout\);

-- Location: LCCOMB_X63_Y36_N6
\Y~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~176_combout\ = (\B[0]~input_o\ & ((\Y~175_combout\ & ((\SRA64unit|Mux156~242_combout\))) # (!\Y~175_combout\ & (\SRA64unit|Mux156~239_combout\)))) # (!\B[0]~input_o\ & (((\Y~175_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~239_combout\,
	datab => \SRA64unit|Mux156~242_combout\,
	datac => \B[0]~input_o\,
	datad => \Y~175_combout\,
	combout => \Y~176_combout\);

-- Location: LCCOMB_X63_Y36_N16
\Y~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~177_combout\ = (\Y~70_combout\ & ((\SLL64unit|Mux190~51_combout\) # ((\Y~69_combout\)))) # (!\Y~70_combout\ & (((!\Y~69_combout\ & \Y~176_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~70_combout\,
	datab => \SLL64unit|Mux190~51_combout\,
	datac => \Y~69_combout\,
	datad => \Y~176_combout\,
	combout => \Y~177_combout\);

-- Location: LCCOMB_X63_Y36_N18
\Y~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~178_combout\ = (\Y~177_combout\ & (((\SLL64unit|Mux190~49_combout\) # (!\Y~69_combout\)))) # (!\Y~177_combout\ & (\C[28]~input_o\ & (\Y~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[28]~input_o\,
	datab => \Y~177_combout\,
	datac => \Y~69_combout\,
	datad => \SLL64unit|Mux190~49_combout\,
	combout => \Y~178_combout\);

-- Location: LCCOMB_X63_Y36_N4
\Y~308\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~308_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\SRLorSRAout[60]~57_combout\)) # (!\ExtWord~input_o\ & ((\Y~178_combout\))))) # (!\ShiftFN[1]~input_o\ & (((\Y~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \SRLorSRAout[60]~57_combout\,
	datad => \Y~178_combout\,
	combout => \Y~308_combout\);

-- Location: IOIBUF_X115_Y28_N1
\C[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(29),
	o => \C[29]~input_o\);

-- Location: LCCOMB_X62_Y36_N30
\SRA64unit|Mux156~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~268_combout\ = (\B[5]~input_o\ & (\ExtWord~input_o\ & ((\SRL64unit|Mux95~0_combout\) # (\SRL64unit|Mux95~1_combout\)))) # (!\B[5]~input_o\ & ((\SRL64unit|Mux95~0_combout\) # ((\SRL64unit|Mux95~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \SRL64unit|Mux95~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \SRL64unit|Mux95~1_combout\,
	combout => \SRA64unit|Mux156~268_combout\);

-- Location: LCCOMB_X65_Y36_N10
\SRA64unit|Mux156~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~248_combout\ = (\B[1]~input_o\ & ((\SRA64unit|Mux156~252_combout\) # ((\SRA64unit|Mux156~268_combout\)))) # (!\B[1]~input_o\ & (((\SRA64unit|Mux95~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~252_combout\,
	datab => \SRA64unit|Mux156~268_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux95~0_combout\,
	combout => \SRA64unit|Mux156~248_combout\);

-- Location: LCCOMB_X65_Y36_N0
\Y~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~179_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\SRA64unit|Mux156~242_combout\))) # (!\ShiftFN[0]~input_o\ & (\SRA64unit|Mux156~239_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~239_combout\,
	datab => \B[0]~input_o\,
	datac => \SRA64unit|Mux156~242_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y~179_combout\);

-- Location: LCCOMB_X62_Y36_N22
\SRA64unit|Mux156~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~245_combout\ = (\ShiftCount[5]~0_combout\ & (\B[1]~input_o\ & ((\SRL64unit|Mux95~0_combout\) # (\SRL64unit|Mux95~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux95~0_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL64unit|Mux95~1_combout\,
	combout => \SRA64unit|Mux156~245_combout\);

-- Location: LCCOMB_X62_Y36_N8
\SRA64unit|Mux156~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~246_combout\ = (\SRA64unit|Mux156~245_combout\) # ((\SRA64unit|Mux90~68_combout\ & (!\B[3]~input_o\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~68_combout\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux156~245_combout\,
	combout => \SRA64unit|Mux156~246_combout\);

-- Location: LCCOMB_X65_Y36_N6
\SRA64unit|Mux156~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~247_combout\ = (\SRA64unit|Mux156~246_combout\) # ((\B[3]~input_o\ & (!\B[1]~input_o\ & \SRA64unit|Mux90~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64unit|Mux156~246_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux90~80_combout\,
	combout => \SRA64unit|Mux156~247_combout\);

-- Location: LCCOMB_X65_Y36_N4
\Y~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~180_combout\ = (\Y~179_combout\ & ((\SRA64unit|Mux156~248_combout\) # ((!\B[0]~input_o\)))) # (!\Y~179_combout\ & (((\B[0]~input_o\ & \SRA64unit|Mux156~247_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~248_combout\,
	datab => \Y~179_combout\,
	datac => \B[0]~input_o\,
	datad => \SRA64unit|Mux156~247_combout\,
	combout => \Y~180_combout\);

-- Location: LCCOMB_X67_Y39_N4
\SRA64unit|Mux19~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux19~29_combout\ = (\B[4]~input_o\ & (\AmuxOut[13]~46_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[29]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \AmuxOut[13]~46_combout\,
	datad => \AmuxOut[29]~45_combout\,
	combout => \SRA64unit|Mux19~29_combout\);

-- Location: LCCOMB_X69_Y39_N12
\SLL64unit|Mux98~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux98~0_combout\ = (\B[3]~input_o\ & ((\SRA64unit|Mux19~21_combout\))) # (!\B[3]~input_o\ & (\SRA64unit|Mux19~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux19~29_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux19~21_combout\,
	combout => \SLL64unit|Mux98~0_combout\);

-- Location: LCCOMB_X69_Y39_N14
\SLL64unit|Mux98~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux98~1_combout\ = (\B[2]~input_o\ & ((\SLL64unit|Mux102~1_combout\))) # (!\B[2]~input_o\ & (\SLL64unit|Mux98~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux98~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL64unit|Mux102~1_combout\,
	combout => \SLL64unit|Mux98~1_combout\);

-- Location: LCCOMB_X63_Y36_N12
\SLL64unit|Mux190~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~52_combout\ = (\SLL64unit|Mux190~50_combout\ & ((\SLL64unit|Mux100~2_combout\) # ((\SLL64unit|Mux98~1_combout\ & \SRA64unit|Mux156~236_combout\)))) # (!\SLL64unit|Mux190~50_combout\ & (((\SLL64unit|Mux98~1_combout\ & 
-- \SRA64unit|Mux156~236_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux190~50_combout\,
	datab => \SLL64unit|Mux100~2_combout\,
	datac => \SLL64unit|Mux98~1_combout\,
	datad => \SRA64unit|Mux156~236_combout\,
	combout => \SLL64unit|Mux190~52_combout\);

-- Location: LCCOMB_X63_Y36_N14
\Y~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~181_combout\ = (\Y~70_combout\ & (((\Y~69_combout\) # (\SLL64unit|Mux190~52_combout\)))) # (!\Y~70_combout\ & (\Y~180_combout\ & (!\Y~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~70_combout\,
	datab => \Y~180_combout\,
	datac => \Y~69_combout\,
	datad => \SLL64unit|Mux190~52_combout\,
	combout => \Y~181_combout\);

-- Location: LCCOMB_X63_Y36_N8
\Y~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~182_combout\ = (\Y~181_combout\ & (((\SLL64unit|Mux190~51_combout\) # (!\Y~69_combout\)))) # (!\Y~181_combout\ & (\C[29]~input_o\ & (\Y~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[29]~input_o\,
	datab => \Y~181_combout\,
	datac => \Y~69_combout\,
	datad => \SLL64unit|Mux190~51_combout\,
	combout => \Y~182_combout\);

-- Location: LCCOMB_X67_Y40_N0
\SRA64unit|Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux63~0_combout\ = (\SRL64unit|Mux47~0_combout\ & ((\SRL64unit|Mux119~0_combout\ & ((\AmuxOut[62]~6_combout\))) # (!\SRL64unit|Mux119~0_combout\ & (\AmuxOut[63]~1_combout\)))) # (!\SRL64unit|Mux47~0_combout\ & (\AmuxOut[63]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[63]~1_combout\,
	datab => \SRL64unit|Mux47~0_combout\,
	datac => \AmuxOut[62]~6_combout\,
	datad => \SRL64unit|Mux119~0_combout\,
	combout => \SRA64unit|Mux63~0_combout\);

-- Location: LCCOMB_X67_Y40_N26
\SRA64unit|Mux156~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~244_combout\ = (\B[1]~input_o\ & (\AmuxOut[63]~1_combout\)) # (!\B[1]~input_o\ & ((\SRA64unit|Mux63~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[63]~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA64unit|Mux63~0_combout\,
	combout => \SRA64unit|Mux156~244_combout\);

-- Location: LCCOMB_X67_Y40_N14
\SRA64unit|Mux156~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~243_combout\ = (\SRL64unit|Mux119~0_combout\ & (\AmuxOut[62]~6_combout\ & (!\B[1]~input_o\ & \SRL64unit|Mux47~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64unit|Mux119~0_combout\,
	datab => \AmuxOut[62]~6_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL64unit|Mux47~0_combout\,
	combout => \SRA64unit|Mux156~243_combout\);

-- Location: LCCOMB_X67_Y37_N22
\SRLorSRAout[61]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[61]~58_combout\ = (\B[0]~input_o\ & ((\SRA64unit|Mux156~243_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & (((\SRA64unit|Mux156~233_combout\ & !\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~243_combout\,
	datab => \SRA64unit|Mux156~233_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \SRLorSRAout[61]~58_combout\);

-- Location: LCCOMB_X67_Y37_N8
\SRLorSRAout[61]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[61]~59_combout\ = (\ShiftFN[0]~input_o\ & ((\SRLorSRAout[61]~58_combout\ & (\SRA64unit|Mux156~244_combout\)) # (!\SRLorSRAout[61]~58_combout\ & ((\SRA64unit|Mux156~235_combout\))))) # (!\ShiftFN[0]~input_o\ & 
-- (((\SRLorSRAout[61]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SRA64unit|Mux156~244_combout\,
	datac => \SRLorSRAout[61]~58_combout\,
	datad => \SRA64unit|Mux156~235_combout\,
	combout => \SRLorSRAout[61]~59_combout\);

-- Location: LCCOMB_X67_Y37_N4
\Y~309\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~309_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\SRLorSRAout[61]~59_combout\))) # (!\ExtWord~input_o\ & (\Y~182_combout\)))) # (!\ShiftFN[1]~input_o\ & (\Y~182_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~182_combout\,
	datab => \SRLorSRAout[61]~59_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Y~309_combout\);

-- Location: IOIBUF_X65_Y0_N15
\C[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(30),
	o => \C[30]~input_o\);

-- Location: LCCOMB_X65_Y36_N18
\SRA64unit|Mux156~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~251_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[1]~input_o\ & ((\SRL64unit|Mux94~1_combout\))) # (!\B[1]~input_o\ & (\SRA64unit|Mux156~240_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \SRA64unit|Mux156~240_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL64unit|Mux94~1_combout\,
	combout => \SRA64unit|Mux156~251_combout\);

-- Location: LCCOMB_X65_Y36_N22
\SRA64unit|Mux156~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~269_combout\ = (\SRA64unit|Mux156~251_combout\) # ((!\ExtWord~input_o\ & (\B[5]~input_o\ & \AmuxOut[63]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~251_combout\,
	datab => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \AmuxOut[63]~1_combout\,
	combout => \SRA64unit|Mux156~269_combout\);

-- Location: LCCOMB_X65_Y36_N8
\Y~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~183_combout\ = (\ShiftFN[0]~input_o\ & ((\B[0]~input_o\) # ((\SRA64unit|Mux156~248_combout\)))) # (!\ShiftFN[0]~input_o\ & (!\B[0]~input_o\ & ((\SRA64unit|Mux156~247_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SRA64unit|Mux156~248_combout\,
	datad => \SRA64unit|Mux156~247_combout\,
	combout => \Y~183_combout\);

-- Location: LCCOMB_X63_Y39_N26
\SRA64unit|Mux156~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~249_combout\ = (\B[3]~input_o\ & (((\ShiftCount[5]~0_combout\ & \SRA64unit|Mux90~23_combout\)))) # (!\B[3]~input_o\ & (\SRA64unit|Mux90~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux90~71_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux90~23_combout\,
	combout => \SRA64unit|Mux156~249_combout\);

-- Location: LCCOMB_X65_Y36_N14
\SRA64unit|Mux156~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux156~250_combout\ = (\B[1]~input_o\ & (((\ShiftCount[5]~0_combout\ & \SRL64unit|Mux94~1_combout\)))) # (!\B[1]~input_o\ & (\SRA64unit|Mux156~249_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRA64unit|Mux156~249_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \SRL64unit|Mux94~1_combout\,
	combout => \SRA64unit|Mux156~250_combout\);

-- Location: LCCOMB_X65_Y36_N12
\Y~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~184_combout\ = (\Y~183_combout\ & ((\SRA64unit|Mux156~269_combout\) # ((!\B[0]~input_o\)))) # (!\Y~183_combout\ & (((\SRA64unit|Mux156~250_combout\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux156~269_combout\,
	datab => \Y~183_combout\,
	datac => \SRA64unit|Mux156~250_combout\,
	datad => \B[0]~input_o\,
	combout => \Y~184_combout\);

-- Location: LCCOMB_X57_Y37_N22
\SRA64unit|Mux19~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux19~30_combout\ = (\B[4]~input_o\ & ((\AmuxOut[14]~50_combout\))) # (!\B[4]~input_o\ & (\AmuxOut[30]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \AmuxOut[30]~49_combout\,
	datad => \AmuxOut[14]~50_combout\,
	combout => \SRA64unit|Mux19~30_combout\);

-- Location: LCCOMB_X58_Y37_N8
\SLL64unit|Mux97~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux97~0_combout\ = (\B[3]~input_o\ & ((\SRA64unit|Mux19~22_combout\))) # (!\B[3]~input_o\ & (\SRA64unit|Mux19~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \SRA64unit|Mux19~30_combout\,
	datad => \SRA64unit|Mux19~22_combout\,
	combout => \SLL64unit|Mux97~0_combout\);

-- Location: LCCOMB_X58_Y37_N18
\SLL64unit|Mux97~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux97~1_combout\ = (\B[2]~input_o\ & ((\SLL64unit|Mux101~1_combout\))) # (!\B[2]~input_o\ & (\SLL64unit|Mux97~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \SLL64unit|Mux97~0_combout\,
	datad => \SLL64unit|Mux101~1_combout\,
	combout => \SLL64unit|Mux97~1_combout\);

-- Location: LCCOMB_X63_Y36_N10
\SLL64unit|Mux190~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~53_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[1]~input_o\ & (\SLL64unit|Mux99~1_combout\)) # (!\B[1]~input_o\ & ((\SLL64unit|Mux97~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux99~1_combout\,
	datab => \SLL64unit|Mux97~1_combout\,
	datac => \B[1]~input_o\,
	datad => \ShiftCount[5]~0_combout\,
	combout => \SLL64unit|Mux190~53_combout\);

-- Location: LCCOMB_X63_Y36_N20
\Y~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~185_combout\ = (\Y~70_combout\ & (((\Y~69_combout\) # (\SLL64unit|Mux190~53_combout\)))) # (!\Y~70_combout\ & (\Y~184_combout\ & (!\Y~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~70_combout\,
	datab => \Y~184_combout\,
	datac => \Y~69_combout\,
	datad => \SLL64unit|Mux190~53_combout\,
	combout => \Y~185_combout\);

-- Location: LCCOMB_X63_Y36_N22
\Y~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~186_combout\ = (\Y~185_combout\ & (((\SLL64unit|Mux190~52_combout\) # (!\Y~69_combout\)))) # (!\Y~185_combout\ & (\C[30]~input_o\ & (\Y~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[30]~input_o\,
	datab => \Y~185_combout\,
	datac => \Y~69_combout\,
	datad => \SLL64unit|Mux190~52_combout\,
	combout => \Y~186_combout\);

-- Location: LCCOMB_X67_Y40_N20
\SRLorSRAout[62]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[62]~60_combout\ = (\ShiftFN[0]~input_o\ & (((\SRA64unit|Mux63~0_combout\)))) # (!\ShiftFN[0]~input_o\ & (!\SLL64unit|Mux127~4_combout\ & (\AmuxOut[62]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux127~4_combout\,
	datab => \AmuxOut[62]~6_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64unit|Mux63~0_combout\,
	combout => \SRLorSRAout[62]~60_combout\);

-- Location: LCCOMB_X67_Y40_N28
\SRLorSRAout[62]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[62]~63_combout\ = (\AmuxOut[63]~1_combout\ & ((\ShiftFN[0]~input_o\) # ((!\B[1]~input_o\ & !\SLL64unit|Mux127~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL64unit|Mux127~4_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \AmuxOut[63]~1_combout\,
	combout => \SRLorSRAout[62]~63_combout\);

-- Location: LCCOMB_X67_Y40_N30
\SRLorSRAout[62]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[62]~64_combout\ = (\B[0]~input_o\ & (((\SRLorSRAout[62]~63_combout\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\SRLorSRAout[62]~63_combout\))) # (!\B[1]~input_o\ & (\SRLorSRAout[62]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRLorSRAout[62]~60_combout\,
	datac => \B[1]~input_o\,
	datad => \SRLorSRAout[62]~63_combout\,
	combout => \SRLorSRAout[62]~64_combout\);

-- Location: LCCOMB_X63_Y36_N30
\Y~310\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~310_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\SRLorSRAout[62]~64_combout\))) # (!\ExtWord~input_o\ & (\Y~186_combout\)))) # (!\ShiftFN[1]~input_o\ & (((\Y~186_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \Y~186_combout\,
	datad => \SRLorSRAout[62]~64_combout\,
	combout => \Y~310_combout\);

-- Location: LCCOMB_X63_Y40_N6
\SRA64unit|Mux19~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64unit|Mux19~31_combout\ = (\B[4]~input_o\ & (\AmuxOut[15]~34_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[31]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AmuxOut[15]~34_combout\,
	datac => \AmuxOut[31]~33_combout\,
	datad => \B[4]~input_o\,
	combout => \SRA64unit|Mux19~31_combout\);

-- Location: LCCOMB_X59_Y40_N26
\SLL64unit|Mux96~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux96~0_combout\ = (\B[3]~input_o\ & (\SRA64unit|Mux19~23_combout\)) # (!\B[3]~input_o\ & ((\SRA64unit|Mux19~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64unit|Mux19~23_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux19~31_combout\,
	combout => \SLL64unit|Mux96~0_combout\);

-- Location: LCCOMB_X59_Y40_N4
\SLL64unit|Mux96~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux96~1_combout\ = (\B[2]~input_o\ & ((\SLL64unit|Mux100~1_combout\))) # (!\B[2]~input_o\ & (\SLL64unit|Mux96~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux96~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL64unit|Mux100~1_combout\,
	combout => \SLL64unit|Mux96~1_combout\);

-- Location: LCCOMB_X63_Y36_N24
\CorSLLoutEXT[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CorSLLoutEXT[31]~0_combout\ = (\B[0]~input_o\ & (((\B[1]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\SLL64unit|Mux98~1_combout\)) # (!\B[1]~input_o\ & ((\SLL64unit|Mux96~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SLL64unit|Mux98~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL64unit|Mux96~1_combout\,
	combout => \CorSLLoutEXT[31]~0_combout\);

-- Location: LCCOMB_X63_Y36_N26
\CorSLLoutEXT[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CorSLLoutEXT[31]~1_combout\ = (\B[0]~input_o\ & ((\CorSLLoutEXT[31]~0_combout\ & ((\SLL64unit|Mux99~1_combout\))) # (!\CorSLLoutEXT[31]~0_combout\ & (\SLL64unit|Mux97~1_combout\)))) # (!\B[0]~input_o\ & (((\CorSLLoutEXT[31]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SLL64unit|Mux97~1_combout\,
	datac => \SLL64unit|Mux99~1_combout\,
	datad => \CorSLLoutEXT[31]~0_combout\,
	combout => \CorSLLoutEXT[31]~1_combout\);

-- Location: IOIBUF_X115_Y29_N1
\C[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(31),
	o => \C[31]~input_o\);

-- Location: LCCOMB_X69_Y36_N30
\CorSLLoutEXT[31]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CorSLLoutEXT[31]~2_combout\ = (\ShiftFN[0]~input_o\ & (\CorSLLoutEXT[31]~1_combout\ & (\ShiftCount[5]~0_combout\))) # (!\ShiftFN[0]~input_o\ & (((\C[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \CorSLLoutEXT[31]~1_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \C[31]~input_o\,
	combout => \CorSLLoutEXT[31]~2_combout\);

-- Location: LCCOMB_X67_Y40_N22
\SRLorSRAoutEXT[63]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAoutEXT[63]~0_combout\ = (\AmuxOut[63]~1_combout\ & ((\ShiftFN[0]~input_o\) # ((!\B[0]~input_o\ & \SLL64unit|Mux190~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SLL64unit|Mux190~92_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \AmuxOut[63]~1_combout\,
	combout => \SRLorSRAoutEXT[63]~0_combout\);

-- Location: LCCOMB_X65_Y36_N30
\SRLorSRAout[31]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[31]~61_combout\ = (\ShiftFN[0]~input_o\ & (\B[0]~input_o\)) # (!\ShiftFN[0]~input_o\ & ((\B[0]~input_o\ & ((\SRA64unit|Mux156~58_combout\))) # (!\B[0]~input_o\ & (\SRA64unit|Mux156~250_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SRA64unit|Mux156~250_combout\,
	datad => \SRA64unit|Mux156~58_combout\,
	combout => \SRLorSRAout[31]~61_combout\);

-- Location: LCCOMB_X65_Y36_N24
\SRLorSRAout[31]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAout[31]~62_combout\ = (\SRLorSRAout[31]~61_combout\ & (((\SRA64unit|Mux156~253_combout\)) # (!\ShiftFN[0]~input_o\))) # (!\SRLorSRAout[31]~61_combout\ & (\ShiftFN[0]~input_o\ & (\SRA64unit|Mux156~269_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLorSRAout[31]~61_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SRA64unit|Mux156~269_combout\,
	datad => \SRA64unit|Mux156~253_combout\,
	combout => \SRLorSRAout[31]~62_combout\);

-- Location: LCCOMB_X69_Y36_N20
\SRLorSRAoutEXT[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAoutEXT[0]~1_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\SRLorSRAoutEXT[63]~0_combout\)) # (!\ExtWord~input_o\ & ((\SRLorSRAout[31]~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLorSRAoutEXT[63]~0_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \SRLorSRAout[31]~62_combout\,
	combout => \SRLorSRAoutEXT[0]~1_combout\);

-- Location: LCCOMB_X69_Y36_N16
\SRLorSRAoutEXT[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAoutEXT[0]~2_combout\ = (\SRLorSRAoutEXT[0]~1_combout\) # ((!\ShiftFN[1]~input_o\ & \CorSLLoutEXT[31]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \CorSLLoutEXT[31]~2_combout\,
	datad => \SRLorSRAoutEXT[0]~1_combout\,
	combout => \SRLorSRAoutEXT[0]~2_combout\);

-- Location: LCCOMB_X69_Y36_N26
\Y~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~187_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\SRLorSRAoutEXT[63]~0_combout\)) # (!\ShiftFN[1]~input_o\ & ((\CorSLLoutEXT[31]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \SRLorSRAoutEXT[63]~0_combout\,
	datad => \CorSLLoutEXT[31]~2_combout\,
	combout => \Y~187_combout\);

-- Location: LCCOMB_X69_Y36_N6
\SLL64unit|Mux190~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~55_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[1]~input_o\ & ((\SLL64unit|Mux98~1_combout\))) # (!\B[1]~input_o\ & (\SLL64unit|Mux96~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \SLL64unit|Mux96~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL64unit|Mux98~1_combout\,
	combout => \SLL64unit|Mux190~55_combout\);

-- Location: LCCOMB_X63_Y38_N26
\Y~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~188_combout\ = (\ShiftFN[1]~input_o\) # ((\ShiftFN[0]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~188_combout\);

-- Location: LCCOMB_X61_Y36_N6
\SLL64unit|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux31~0_combout\ = (!\B[4]~input_o\ & ((\ShiftCount[5]~0_combout\ & ((\AmuxOut[32]~13_combout\))) # (!\ShiftCount[5]~0_combout\ & (\AmuxOut[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[0]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \AmuxOut[32]~13_combout\,
	combout => \SLL64unit|Mux31~0_combout\);

-- Location: LCCOMB_X61_Y36_N8
\SLL64unit|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux31~1_combout\ = (\SLL64unit|Mux31~0_combout\) # ((\B[4]~input_o\ & (\ShiftCount[5]~0_combout\ & \AmuxOut[16]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux31~0_combout\,
	datab => \B[4]~input_o\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \AmuxOut[16]~61_combout\,
	combout => \SLL64unit|Mux31~1_combout\);

-- Location: LCCOMB_X59_Y36_N4
\SLL64unit|Mux95~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux95~0_combout\ = (\B[3]~input_o\ & (((\ShiftCount[5]~0_combout\ & \SRA64unit|Mux19~24_combout\)))) # (!\B[3]~input_o\ & (\SLL64unit|Mux31~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux31~1_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux19~24_combout\,
	combout => \SLL64unit|Mux95~0_combout\);

-- Location: LCCOMB_X59_Y36_N6
\SLL64unit|Mux95~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux95~1_combout\ = (\B[2]~input_o\ & (\SLL64unit|Mux99~0_combout\ & ((\ShiftCount[5]~0_combout\)))) # (!\B[2]~input_o\ & (((\SLL64unit|Mux95~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL64unit|Mux99~0_combout\,
	datac => \SLL64unit|Mux95~0_combout\,
	datad => \ShiftCount[5]~0_combout\,
	combout => \SLL64unit|Mux95~1_combout\);

-- Location: LCCOMB_X59_Y36_N16
\SLL64unit|Mux190~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~54_combout\ = (\B[1]~input_o\ & (((\ShiftCount[5]~0_combout\ & \SLL64unit|Mux97~1_combout\)))) # (!\B[1]~input_o\ & (\SLL64unit|Mux95~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux95~1_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \SLL64unit|Mux97~1_combout\,
	datad => \B[1]~input_o\,
	combout => \SLL64unit|Mux190~54_combout\);

-- Location: IOIBUF_X115_Y35_N22
\C[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(32),
	o => \C[32]~input_o\);

-- Location: LCCOMB_X69_Y36_N12
\Y~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~189_combout\ = (\Y~188_combout\ & (((\Y~70_combout\)))) # (!\Y~188_combout\ & ((\Y~70_combout\ & (\SLL64unit|Mux190~54_combout\)) # (!\Y~70_combout\ & ((\C[32]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~188_combout\,
	datab => \SLL64unit|Mux190~54_combout\,
	datac => \C[32]~input_o\,
	datad => \Y~70_combout\,
	combout => \Y~189_combout\);

-- Location: LCCOMB_X69_Y36_N0
\Y~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~190_combout\ = (\Y~188_combout\ & ((\Y~189_combout\ & (\SLL64unit|Mux190~55_combout\)) # (!\Y~189_combout\ & ((\SRLorSRAout[32]~1_combout\))))) # (!\Y~188_combout\ & (((\Y~189_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux190~55_combout\,
	datab => \SRLorSRAout[32]~1_combout\,
	datac => \Y~188_combout\,
	datad => \Y~189_combout\,
	combout => \Y~190_combout\);

-- Location: LCCOMB_X69_Y36_N2
\Y~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~191_combout\ = (\Y~187_combout\) # ((!\ExtWord~input_o\ & \Y~190_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~187_combout\,
	datac => \ExtWord~input_o\,
	datad => \Y~190_combout\,
	combout => \Y~191_combout\);

-- Location: IOIBUF_X81_Y0_N22
\C[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(33),
	o => \C[33]~input_o\);

-- Location: LCCOMB_X70_Y40_N30
\SLL64unit|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux30~0_combout\ = (!\B[4]~input_o\ & ((\ShiftCount[5]~0_combout\ & ((\AmuxOut[33]~28_combout\))) # (!\ShiftCount[5]~0_combout\ & (\AmuxOut[1]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \AmuxOut[1]~42_combout\,
	datad => \AmuxOut[33]~28_combout\,
	combout => \SLL64unit|Mux30~0_combout\);

-- Location: LCCOMB_X70_Y40_N0
\SLL64unit|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux30~1_combout\ = (\SLL64unit|Mux30~0_combout\) # ((\ShiftCount[5]~0_combout\ & (\B[4]~input_o\ & \AmuxOut[17]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \SLL64unit|Mux30~0_combout\,
	datad => \AmuxOut[17]~41_combout\,
	combout => \SLL64unit|Mux30~1_combout\);

-- Location: LCCOMB_X69_Y39_N0
\SLL64unit|Mux94~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux94~0_combout\ = (\B[3]~input_o\ & (\SRA64unit|Mux19~25_combout\ & (\ShiftCount[5]~0_combout\))) # (!\B[3]~input_o\ & (((\SLL64unit|Mux30~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux19~25_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL64unit|Mux30~1_combout\,
	combout => \SLL64unit|Mux94~0_combout\);

-- Location: LCCOMB_X69_Y39_N18
\SLL64unit|Mux94~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux94~1_combout\ = (\B[2]~input_o\ & (\SLL64unit|Mux98~0_combout\ & ((\ShiftCount[5]~0_combout\)))) # (!\B[2]~input_o\ & (((\SLL64unit|Mux94~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux98~0_combout\,
	datab => \B[2]~input_o\,
	datac => \SLL64unit|Mux94~0_combout\,
	datad => \ShiftCount[5]~0_combout\,
	combout => \SLL64unit|Mux94~1_combout\);

-- Location: LCCOMB_X73_Y36_N16
\SLL64unit|Mux190~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~56_combout\ = (\B[1]~input_o\ & (\ShiftCount[5]~0_combout\ & (\SLL64unit|Mux96~1_combout\))) # (!\B[1]~input_o\ & (((\SLL64unit|Mux94~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \SLL64unit|Mux96~1_combout\,
	datac => \SLL64unit|Mux94~1_combout\,
	datad => \B[1]~input_o\,
	combout => \SLL64unit|Mux190~56_combout\);

-- Location: LCCOMB_X73_Y36_N26
\Y~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~192_combout\ = (\Y~188_combout\ & (\Y~70_combout\)) # (!\Y~188_combout\ & ((\Y~70_combout\ & ((\SLL64unit|Mux190~56_combout\))) # (!\Y~70_combout\ & (\C[33]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~188_combout\,
	datab => \Y~70_combout\,
	datac => \C[33]~input_o\,
	datad => \SLL64unit|Mux190~56_combout\,
	combout => \Y~192_combout\);

-- Location: LCCOMB_X69_Y36_N28
\Y~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~193_combout\ = (\Y~188_combout\ & ((\Y~192_combout\ & ((\SLL64unit|Mux190~54_combout\))) # (!\Y~192_combout\ & (\SRLorSRAout[33]~3_combout\)))) # (!\Y~188_combout\ & (((\Y~192_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLorSRAout[33]~3_combout\,
	datab => \SLL64unit|Mux190~54_combout\,
	datac => \Y~188_combout\,
	datad => \Y~192_combout\,
	combout => \Y~193_combout\);

-- Location: LCCOMB_X69_Y36_N14
\Y~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~194_combout\ = (\Y~187_combout\) # ((!\ExtWord~input_o\ & \Y~193_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~187_combout\,
	datac => \ExtWord~input_o\,
	datad => \Y~193_combout\,
	combout => \Y~194_combout\);

-- Location: IOIBUF_X74_Y0_N8
\C[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(34),
	o => \C[34]~input_o\);

-- Location: LCCOMB_X58_Y40_N4
\SLL64unit|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux29~0_combout\ = (!\B[4]~input_o\ & ((\ShiftCount[5]~0_combout\ & (\AmuxOut[34]~5_combout\)) # (!\ShiftCount[5]~0_combout\ & ((\AmuxOut[2]~55_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[34]~5_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \AmuxOut[2]~55_combout\,
	combout => \SLL64unit|Mux29~0_combout\);

-- Location: LCCOMB_X58_Y40_N30
\SLL64unit|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux29~1_combout\ = (\SLL64unit|Mux29~0_combout\) # ((\B[4]~input_o\ & (\ShiftCount[5]~0_combout\ & \AmuxOut[18]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux29~0_combout\,
	datab => \B[4]~input_o\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \AmuxOut[18]~56_combout\,
	combout => \SLL64unit|Mux29~1_combout\);

-- Location: LCCOMB_X59_Y37_N24
\SLL64unit|Mux93~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux93~0_combout\ = (\B[3]~input_o\ & (\ShiftCount[5]~0_combout\ & (\SRA64unit|Mux19~26_combout\))) # (!\B[3]~input_o\ & (((\SLL64unit|Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \B[3]~input_o\,
	datac => \SRA64unit|Mux19~26_combout\,
	datad => \SLL64unit|Mux29~1_combout\,
	combout => \SLL64unit|Mux93~0_combout\);

-- Location: LCCOMB_X58_Y37_N28
\SLL64unit|Mux93~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux93~1_combout\ = (\B[2]~input_o\ & (\SLL64unit|Mux97~0_combout\ & (\ShiftCount[5]~0_combout\))) # (!\B[2]~input_o\ & (((\SLL64unit|Mux93~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux97~0_combout\,
	datab => \B[2]~input_o\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \SLL64unit|Mux93~0_combout\,
	combout => \SLL64unit|Mux93~1_combout\);

-- Location: LCCOMB_X59_Y36_N18
\SLL64unit|Mux190~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~57_combout\ = (\B[1]~input_o\ & ((\SLL64unit|Mux95~1_combout\))) # (!\B[1]~input_o\ & (\SLL64unit|Mux93~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \SLL64unit|Mux93~1_combout\,
	datad => \SLL64unit|Mux95~1_combout\,
	combout => \SLL64unit|Mux190~57_combout\);

-- Location: LCCOMB_X73_Y36_N4
\Y~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~195_combout\ = (\Y~188_combout\ & (((\Y~70_combout\)))) # (!\Y~188_combout\ & ((\Y~70_combout\ & ((\SLL64unit|Mux190~57_combout\))) # (!\Y~70_combout\ & (\C[34]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[34]~input_o\,
	datab => \Y~188_combout\,
	datac => \SLL64unit|Mux190~57_combout\,
	datad => \Y~70_combout\,
	combout => \Y~195_combout\);

-- Location: LCCOMB_X73_Y36_N22
\Y~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~196_combout\ = (\Y~188_combout\ & ((\Y~195_combout\ & ((\SLL64unit|Mux190~56_combout\))) # (!\Y~195_combout\ & (\SRLorSRAout[34]~5_combout\)))) # (!\Y~188_combout\ & (((\Y~195_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLorSRAout[34]~5_combout\,
	datab => \Y~188_combout\,
	datac => \Y~195_combout\,
	datad => \SLL64unit|Mux190~56_combout\,
	combout => \Y~196_combout\);

-- Location: LCCOMB_X73_Y36_N0
\Y~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~197_combout\ = (\Y~187_combout\) # ((!\ExtWord~input_o\ & \Y~196_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Y~187_combout\,
	datac => \Y~196_combout\,
	combout => \Y~197_combout\);

-- Location: LCCOMB_X59_Y43_N26
\SLL64unit|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux28~0_combout\ = (!\B[4]~input_o\ & ((\ShiftCount[5]~0_combout\ & ((\AmuxOut[35]~24_combout\))) # (!\ShiftCount[5]~0_combout\ & (\AmuxOut[3]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[3]~37_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \AmuxOut[35]~24_combout\,
	combout => \SLL64unit|Mux28~0_combout\);

-- Location: LCCOMB_X59_Y43_N4
\SLL64unit|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux28~1_combout\ = (\SLL64unit|Mux28~0_combout\) # ((\ShiftCount[5]~0_combout\ & (\B[4]~input_o\ & \AmuxOut[19]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux28~0_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \AmuxOut[19]~40_combout\,
	combout => \SLL64unit|Mux28~1_combout\);

-- Location: LCCOMB_X59_Y40_N22
\SLL64unit|Mux92~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux92~0_combout\ = (\B[3]~input_o\ & (\ShiftCount[5]~0_combout\ & (\SRA64unit|Mux19~27_combout\))) # (!\B[3]~input_o\ & (((\SLL64unit|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \SRA64unit|Mux19~27_combout\,
	datad => \SLL64unit|Mux28~1_combout\,
	combout => \SLL64unit|Mux92~0_combout\);

-- Location: LCCOMB_X59_Y40_N16
\SLL64unit|Mux92~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux92~1_combout\ = (\B[2]~input_o\ & (\ShiftCount[5]~0_combout\ & (\SLL64unit|Mux96~0_combout\))) # (!\B[2]~input_o\ & (((\SLL64unit|Mux92~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \SLL64unit|Mux96~0_combout\,
	datad => \SLL64unit|Mux92~0_combout\,
	combout => \SLL64unit|Mux92~1_combout\);

-- Location: LCCOMB_X73_Y36_N10
\SLL64unit|Mux190~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~58_combout\ = (\B[1]~input_o\ & (\SLL64unit|Mux94~1_combout\)) # (!\B[1]~input_o\ & ((\SLL64unit|Mux92~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \SLL64unit|Mux94~1_combout\,
	datad => \SLL64unit|Mux92~1_combout\,
	combout => \SLL64unit|Mux190~58_combout\);

-- Location: IOIBUF_X79_Y73_N1
\C[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(35),
	o => \C[35]~input_o\);

-- Location: LCCOMB_X73_Y36_N20
\Y~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~198_combout\ = (\Y~70_combout\ & ((\SLL64unit|Mux190~58_combout\) # ((\Y~188_combout\)))) # (!\Y~70_combout\ & (((\C[35]~input_o\ & !\Y~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux190~58_combout\,
	datab => \Y~70_combout\,
	datac => \C[35]~input_o\,
	datad => \Y~188_combout\,
	combout => \Y~198_combout\);

-- Location: LCCOMB_X73_Y36_N30
\Y~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~199_combout\ = (\Y~188_combout\ & ((\Y~198_combout\ & ((\SLL64unit|Mux190~57_combout\))) # (!\Y~198_combout\ & (\SRLorSRAout[35]~7_combout\)))) # (!\Y~188_combout\ & (((\Y~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLorSRAout[35]~7_combout\,
	datab => \Y~188_combout\,
	datac => \SLL64unit|Mux190~57_combout\,
	datad => \Y~198_combout\,
	combout => \Y~199_combout\);

-- Location: LCCOMB_X73_Y36_N8
\Y~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~200_combout\ = (\Y~187_combout\) # ((!\ExtWord~input_o\ & \Y~199_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Y~187_combout\,
	datac => \Y~199_combout\,
	combout => \Y~200_combout\);

-- Location: LCCOMB_X59_Y36_N22
\SLL64unit|Mux91~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux91~1_combout\ = (\B[2]~input_o\ & (\SRA64unit|Mux19~24_combout\)) # (!\B[2]~input_o\ & ((\SRA64unit|Mux19~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA64unit|Mux19~24_combout\,
	datac => \SRA64unit|Mux19~28_combout\,
	combout => \SLL64unit|Mux91~1_combout\);

-- Location: LCCOMB_X61_Y35_N28
\SLL64unit|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux27~0_combout\ = (!\B[4]~input_o\ & ((\ShiftCount[5]~0_combout\ & (\AmuxOut[36]~11_combout\)) # (!\ShiftCount[5]~0_combout\ & ((\AmuxOut[4]~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \AmuxOut[36]~11_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \AmuxOut[4]~60_combout\,
	combout => \SLL64unit|Mux27~0_combout\);

-- Location: LCCOMB_X61_Y35_N6
\SLL64unit|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux27~1_combout\ = (\SLL64unit|Mux27~0_combout\) # ((\B[4]~input_o\ & (\AmuxOut[20]~59_combout\ & \ShiftCount[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \AmuxOut[20]~59_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \SLL64unit|Mux27~0_combout\,
	combout => \SLL64unit|Mux27~1_combout\);

-- Location: LCCOMB_X59_Y36_N28
\SLL64unit|Mux91~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux91~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SLL64unit|Mux31~1_combout\))) # (!\B[2]~input_o\ & (\SLL64unit|Mux27~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL64unit|Mux27~1_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL64unit|Mux31~1_combout\,
	combout => \SLL64unit|Mux91~0_combout\);

-- Location: LCCOMB_X59_Y36_N0
\SLL64unit|Mux91~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux91~2_combout\ = (\SLL64unit|Mux91~0_combout\) # ((\SLL64unit|Mux91~1_combout\ & (\ShiftCount[5]~0_combout\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux91~1_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL64unit|Mux91~0_combout\,
	combout => \SLL64unit|Mux91~2_combout\);

-- Location: LCCOMB_X59_Y36_N2
\SLL64unit|Mux190~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~59_combout\ = (\B[1]~input_o\ & (\SLL64unit|Mux93~1_combout\)) # (!\B[1]~input_o\ & ((\SLL64unit|Mux91~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \SLL64unit|Mux93~1_combout\,
	datad => \SLL64unit|Mux91~2_combout\,
	combout => \SLL64unit|Mux190~59_combout\);

-- Location: IOIBUF_X115_Y36_N8
\C[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(36),
	o => \C[36]~input_o\);

-- Location: LCCOMB_X73_Y36_N2
\Y~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~201_combout\ = (\Y~188_combout\ & (((\Y~70_combout\)))) # (!\Y~188_combout\ & ((\Y~70_combout\ & (\SLL64unit|Mux190~59_combout\)) # (!\Y~70_combout\ & ((\C[36]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux190~59_combout\,
	datab => \Y~188_combout\,
	datac => \C[36]~input_o\,
	datad => \Y~70_combout\,
	combout => \Y~201_combout\);

-- Location: LCCOMB_X73_Y36_N12
\Y~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~202_combout\ = (\Y~188_combout\ & ((\Y~201_combout\ & (\SLL64unit|Mux190~58_combout\)) # (!\Y~201_combout\ & ((\SRLorSRAout[36]~9_combout\))))) # (!\Y~188_combout\ & (((\Y~201_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux190~58_combout\,
	datab => \Y~188_combout\,
	datac => \SRLorSRAout[36]~9_combout\,
	datad => \Y~201_combout\,
	combout => \Y~202_combout\);

-- Location: LCCOMB_X73_Y36_N6
\Y~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~203_combout\ = (\Y~187_combout\) # ((!\ExtWord~input_o\ & \Y~202_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Y~187_combout\,
	datad => \Y~202_combout\,
	combout => \Y~203_combout\);

-- Location: IOIBUF_X115_Y24_N1
\C[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(37),
	o => \C[37]~input_o\);

-- Location: LCCOMB_X66_Y41_N6
\SLL64unit|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux26~0_combout\ = (!\B[4]~input_o\ & ((\ShiftCount[5]~0_combout\ & ((\AmuxOut[37]~32_combout\))) # (!\ShiftCount[5]~0_combout\ & (\AmuxOut[5]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \AmuxOut[5]~44_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \AmuxOut[37]~32_combout\,
	combout => \SLL64unit|Mux26~0_combout\);

-- Location: LCCOMB_X66_Y41_N0
\SLL64unit|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux26~1_combout\ = (\SLL64unit|Mux26~0_combout\) # ((\B[4]~input_o\ & (\ShiftCount[5]~0_combout\ & \AmuxOut[21]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \AmuxOut[21]~43_combout\,
	datad => \SLL64unit|Mux26~0_combout\,
	combout => \SLL64unit|Mux26~1_combout\);

-- Location: LCCOMB_X69_Y39_N4
\SLL64unit|Mux90~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux90~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SLL64unit|Mux30~1_combout\))) # (!\B[2]~input_o\ & (\SLL64unit|Mux26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SLL64unit|Mux26~1_combout\,
	datad => \SLL64unit|Mux30~1_combout\,
	combout => \SLL64unit|Mux90~0_combout\);

-- Location: LCCOMB_X69_Y39_N6
\SLL64unit|Mux90~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux90~1_combout\ = (\B[2]~input_o\ & ((\SRA64unit|Mux19~25_combout\))) # (!\B[2]~input_o\ & (\SRA64unit|Mux19~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux19~29_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA64unit|Mux19~25_combout\,
	combout => \SLL64unit|Mux90~1_combout\);

-- Location: LCCOMB_X69_Y39_N16
\SLL64unit|Mux90~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux90~2_combout\ = (\SLL64unit|Mux90~0_combout\) # ((\B[3]~input_o\ & (\ShiftCount[5]~0_combout\ & \SLL64unit|Mux90~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \SLL64unit|Mux90~0_combout\,
	datad => \SLL64unit|Mux90~1_combout\,
	combout => \SLL64unit|Mux90~2_combout\);

-- Location: LCCOMB_X73_Y36_N24
\SLL64unit|Mux190~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~60_combout\ = (\B[1]~input_o\ & ((\SLL64unit|Mux92~1_combout\))) # (!\B[1]~input_o\ & (\SLL64unit|Mux90~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \SLL64unit|Mux90~2_combout\,
	datad => \SLL64unit|Mux92~1_combout\,
	combout => \SLL64unit|Mux190~60_combout\);

-- Location: LCCOMB_X73_Y36_N18
\Y~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~204_combout\ = (\Y~188_combout\ & (\Y~70_combout\)) # (!\Y~188_combout\ & ((\Y~70_combout\ & ((\SLL64unit|Mux190~60_combout\))) # (!\Y~70_combout\ & (\C[37]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~188_combout\,
	datab => \Y~70_combout\,
	datac => \C[37]~input_o\,
	datad => \SLL64unit|Mux190~60_combout\,
	combout => \Y~204_combout\);

-- Location: LCCOMB_X73_Y36_N28
\Y~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~205_combout\ = (\Y~188_combout\ & ((\Y~204_combout\ & (\SLL64unit|Mux190~59_combout\)) # (!\Y~204_combout\ & ((\SRLorSRAout[37]~11_combout\))))) # (!\Y~188_combout\ & (((\Y~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux190~59_combout\,
	datab => \Y~188_combout\,
	datac => \SRLorSRAout[37]~11_combout\,
	datad => \Y~204_combout\,
	combout => \Y~205_combout\);

-- Location: LCCOMB_X73_Y36_N14
\Y~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~206_combout\ = (\Y~187_combout\) # ((!\ExtWord~input_o\ & \Y~205_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Y~187_combout\,
	datad => \Y~205_combout\,
	combout => \Y~206_combout\);

-- Location: LCCOMB_X57_Y39_N12
\SLL64unit|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux25~0_combout\ = (!\B[4]~input_o\ & ((\ShiftCount[5]~0_combout\ & ((\AmuxOut[38]~9_combout\))) # (!\ShiftCount[5]~0_combout\ & (\AmuxOut[6]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \AmuxOut[6]~54_combout\,
	datac => \B[4]~input_o\,
	datad => \AmuxOut[38]~9_combout\,
	combout => \SLL64unit|Mux25~0_combout\);

-- Location: LCCOMB_X58_Y39_N30
\SLL64unit|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux25~1_combout\ = (\SLL64unit|Mux25~0_combout\) # ((\B[4]~input_o\ & (\AmuxOut[22]~53_combout\ & \ShiftCount[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \AmuxOut[22]~53_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \SLL64unit|Mux25~0_combout\,
	combout => \SLL64unit|Mux25~1_combout\);

-- Location: LCCOMB_X59_Y37_N26
\SLL64unit|Mux89~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux89~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SLL64unit|Mux29~1_combout\))) # (!\B[2]~input_o\ & (\SLL64unit|Mux25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL64unit|Mux25~1_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL64unit|Mux29~1_combout\,
	combout => \SLL64unit|Mux89~0_combout\);

-- Location: LCCOMB_X59_Y37_N28
\SLL64unit|Mux89~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux89~1_combout\ = (\B[2]~input_o\ & (\SRA64unit|Mux19~26_combout\)) # (!\B[2]~input_o\ & ((\SRA64unit|Mux19~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA64unit|Mux19~26_combout\,
	datac => \SRA64unit|Mux19~30_combout\,
	combout => \SLL64unit|Mux89~1_combout\);

-- Location: LCCOMB_X59_Y37_N22
\SLL64unit|Mux89~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux89~2_combout\ = (\SLL64unit|Mux89~0_combout\) # ((\ShiftCount[5]~0_combout\ & (\B[3]~input_o\ & \SLL64unit|Mux89~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \B[3]~input_o\,
	datac => \SLL64unit|Mux89~0_combout\,
	datad => \SLL64unit|Mux89~1_combout\,
	combout => \SLL64unit|Mux89~2_combout\);

-- Location: LCCOMB_X59_Y37_N16
\SLL64unit|Mux190~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~61_combout\ = (\B[1]~input_o\ & (\SLL64unit|Mux91~2_combout\)) # (!\B[1]~input_o\ & ((\SLL64unit|Mux89~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL64unit|Mux91~2_combout\,
	datac => \SLL64unit|Mux89~2_combout\,
	combout => \SLL64unit|Mux190~61_combout\);

-- Location: IOIBUF_X115_Y41_N1
\C[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(38),
	o => \C[38]~input_o\);

-- Location: LCCOMB_X73_Y41_N16
\Y~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~207_combout\ = (\Y~188_combout\ & (\Y~70_combout\)) # (!\Y~188_combout\ & ((\Y~70_combout\ & (\SLL64unit|Mux190~61_combout\)) # (!\Y~70_combout\ & ((\C[38]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~188_combout\,
	datab => \Y~70_combout\,
	datac => \SLL64unit|Mux190~61_combout\,
	datad => \C[38]~input_o\,
	combout => \Y~207_combout\);

-- Location: LCCOMB_X73_Y41_N18
\Y~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~208_combout\ = (\Y~188_combout\ & ((\Y~207_combout\ & (\SLL64unit|Mux190~60_combout\)) # (!\Y~207_combout\ & ((\SRLorSRAout[38]~13_combout\))))) # (!\Y~188_combout\ & (((\Y~207_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~188_combout\,
	datab => \SLL64unit|Mux190~60_combout\,
	datac => \SRLorSRAout[38]~13_combout\,
	datad => \Y~207_combout\,
	combout => \Y~208_combout\);

-- Location: LCCOMB_X73_Y41_N20
\Y~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~209_combout\ = (\Y~187_combout\) # ((!\ExtWord~input_o\ & \Y~208_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \Y~187_combout\,
	datad => \Y~208_combout\,
	combout => \Y~209_combout\);

-- Location: IOIBUF_X81_Y73_N15
\C[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(39),
	o => \C[39]~input_o\);

-- Location: LCCOMB_X59_Y42_N30
\SLL64unit|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux24~0_combout\ = (!\B[4]~input_o\ & ((\ShiftCount[5]~0_combout\ & ((\AmuxOut[39]~20_combout\))) # (!\ShiftCount[5]~0_combout\ & (\AmuxOut[7]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \AmuxOut[7]~39_combout\,
	datac => \AmuxOut[39]~20_combout\,
	datad => \ShiftCount[5]~0_combout\,
	combout => \SLL64unit|Mux24~0_combout\);

-- Location: LCCOMB_X59_Y42_N8
\SLL64unit|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux24~1_combout\ = (\SLL64unit|Mux24~0_combout\) # ((\B[4]~input_o\ & (\ShiftCount[5]~0_combout\ & \AmuxOut[23]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \SLL64unit|Mux24~0_combout\,
	datad => \AmuxOut[23]~38_combout\,
	combout => \SLL64unit|Mux24~1_combout\);

-- Location: LCCOMB_X59_Y40_N18
\SLL64unit|Mux88~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux88~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SLL64unit|Mux28~1_combout\))) # (!\B[2]~input_o\ & (\SLL64unit|Mux24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SLL64unit|Mux24~1_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL64unit|Mux28~1_combout\,
	combout => \SLL64unit|Mux88~0_combout\);

-- Location: LCCOMB_X59_Y40_N12
\SLL64unit|Mux88~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux88~1_combout\ = (\B[2]~input_o\ & (\SRA64unit|Mux19~27_combout\)) # (!\B[2]~input_o\ & ((\SRA64unit|Mux19~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \SRA64unit|Mux19~27_combout\,
	datad => \SRA64unit|Mux19~31_combout\,
	combout => \SLL64unit|Mux88~1_combout\);

-- Location: LCCOMB_X59_Y40_N30
\SLL64unit|Mux88~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux88~2_combout\ = (\SLL64unit|Mux88~0_combout\) # ((\B[3]~input_o\ & (\ShiftCount[5]~0_combout\ & \SLL64unit|Mux88~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SLL64unit|Mux88~0_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \SLL64unit|Mux88~1_combout\,
	combout => \SLL64unit|Mux88~2_combout\);

-- Location: LCCOMB_X73_Y41_N6
\SLL64unit|Mux190~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~62_combout\ = (\B[1]~input_o\ & ((\SLL64unit|Mux90~2_combout\))) # (!\B[1]~input_o\ & (\SLL64unit|Mux88~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \SLL64unit|Mux88~2_combout\,
	datad => \SLL64unit|Mux90~2_combout\,
	combout => \SLL64unit|Mux190~62_combout\);

-- Location: LCCOMB_X73_Y41_N8
\Y~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~210_combout\ = (\Y~188_combout\ & (\Y~70_combout\)) # (!\Y~188_combout\ & ((\Y~70_combout\ & ((\SLL64unit|Mux190~62_combout\))) # (!\Y~70_combout\ & (\C[39]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~188_combout\,
	datab => \Y~70_combout\,
	datac => \C[39]~input_o\,
	datad => \SLL64unit|Mux190~62_combout\,
	combout => \Y~210_combout\);

-- Location: LCCOMB_X73_Y41_N26
\Y~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~211_combout\ = (\Y~188_combout\ & ((\Y~210_combout\ & (\SLL64unit|Mux190~61_combout\)) # (!\Y~210_combout\ & ((\SRLorSRAout[39]~15_combout\))))) # (!\Y~188_combout\ & (((\Y~210_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~188_combout\,
	datab => \SLL64unit|Mux190~61_combout\,
	datac => \Y~210_combout\,
	datad => \SRLorSRAout[39]~15_combout\,
	combout => \Y~211_combout\);

-- Location: LCCOMB_X73_Y41_N12
\Y~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~212_combout\ = (\Y~187_combout\) # ((!\ExtWord~input_o\ & \Y~211_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Y~187_combout\,
	datac => \Y~211_combout\,
	combout => \Y~212_combout\);

-- Location: LCCOMB_X59_Y37_N18
\SLL64unit|Mux87~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux87~0_combout\ = (\B[3]~input_o\ & (\ShiftCount[5]~0_combout\ & ((\SRA64unit|Mux19~28_combout\)))) # (!\B[3]~input_o\ & (((\SLL64unit|Mux27~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \B[3]~input_o\,
	datac => \SLL64unit|Mux27~1_combout\,
	datad => \SRA64unit|Mux19~28_combout\,
	combout => \SLL64unit|Mux87~0_combout\);

-- Location: LCCOMB_X58_Y36_N28
\SLL64unit|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux23~0_combout\ = (!\B[4]~input_o\ & ((\ShiftCount[5]~0_combout\ & (\AmuxOut[40]~17_combout\)) # (!\ShiftCount[5]~0_combout\ & ((\AmuxOut[8]~63_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[40]~17_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \AmuxOut[8]~63_combout\,
	combout => \SLL64unit|Mux23~0_combout\);

-- Location: LCCOMB_X58_Y36_N14
\SLL64unit|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux23~1_combout\ = (\SLL64unit|Mux23~0_combout\) # ((\AmuxOut[24]~62_combout\ & (\ShiftCount[5]~0_combout\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[24]~62_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \SLL64unit|Mux23~0_combout\,
	combout => \SLL64unit|Mux23~1_combout\);

-- Location: LCCOMB_X59_Y36_N12
\SLL64unit|Mux87~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux87~1_combout\ = (\B[3]~input_o\ & ((\SLL64unit|Mux31~1_combout\))) # (!\B[3]~input_o\ & (\SLL64unit|Mux23~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux23~1_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL64unit|Mux31~1_combout\,
	combout => \SLL64unit|Mux87~1_combout\);

-- Location: LCCOMB_X59_Y37_N12
\SLL64unit|Mux87~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux87~2_combout\ = (\B[2]~input_o\ & (\SLL64unit|Mux87~0_combout\)) # (!\B[2]~input_o\ & ((\SLL64unit|Mux87~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL64unit|Mux87~0_combout\,
	datac => \SLL64unit|Mux87~1_combout\,
	combout => \SLL64unit|Mux87~2_combout\);

-- Location: LCCOMB_X59_Y37_N30
\SLL64unit|Mux190~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~63_combout\ = (\B[1]~input_o\ & (\SLL64unit|Mux89~2_combout\)) # (!\B[1]~input_o\ & ((\SLL64unit|Mux87~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \SLL64unit|Mux89~2_combout\,
	datad => \SLL64unit|Mux87~2_combout\,
	combout => \SLL64unit|Mux190~63_combout\);

-- Location: IOIBUF_X115_Y45_N15
\C[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(40),
	o => \C[40]~input_o\);

-- Location: LCCOMB_X73_Y41_N30
\Y~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~213_combout\ = (\Y~188_combout\ & (\Y~70_combout\)) # (!\Y~188_combout\ & ((\Y~70_combout\ & (\SLL64unit|Mux190~63_combout\)) # (!\Y~70_combout\ & ((\C[40]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~188_combout\,
	datab => \Y~70_combout\,
	datac => \SLL64unit|Mux190~63_combout\,
	datad => \C[40]~input_o\,
	combout => \Y~213_combout\);

-- Location: LCCOMB_X73_Y41_N24
\Y~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~214_combout\ = (\Y~188_combout\ & ((\Y~213_combout\ & ((\SLL64unit|Mux190~62_combout\))) # (!\Y~213_combout\ & (\SRLorSRAout[40]~17_combout\)))) # (!\Y~188_combout\ & (((\Y~213_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~188_combout\,
	datab => \SRLorSRAout[40]~17_combout\,
	datac => \Y~213_combout\,
	datad => \SLL64unit|Mux190~62_combout\,
	combout => \Y~214_combout\);

-- Location: LCCOMB_X73_Y41_N2
\Y~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~215_combout\ = (\Y~187_combout\) # ((!\ExtWord~input_o\ & \Y~214_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \Y~187_combout\,
	datad => \Y~214_combout\,
	combout => \Y~215_combout\);

-- Location: LCCOMB_X69_Y39_N2
\SLL64unit|Mux86~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux86~0_combout\ = (\B[3]~input_o\ & (\ShiftCount[5]~0_combout\ & ((\SRA64unit|Mux19~29_combout\)))) # (!\B[3]~input_o\ & (((\SLL64unit|Mux26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \SLL64unit|Mux26~1_combout\,
	datad => \SRA64unit|Mux19~29_combout\,
	combout => \SLL64unit|Mux86~0_combout\);

-- Location: LCCOMB_X70_Y38_N28
\SLL64unit|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux22~0_combout\ = (!\B[4]~input_o\ & ((\ShiftCount[5]~0_combout\ & (\AmuxOut[41]~26_combout\)) # (!\ShiftCount[5]~0_combout\ & ((\AmuxOut[9]~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \AmuxOut[41]~26_combout\,
	datac => \B[4]~input_o\,
	datad => \AmuxOut[9]~48_combout\,
	combout => \SLL64unit|Mux22~0_combout\);

-- Location: LCCOMB_X70_Y38_N14
\SLL64unit|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux22~1_combout\ = (\SLL64unit|Mux22~0_combout\) # ((\ShiftCount[5]~0_combout\ & (\B[4]~input_o\ & \AmuxOut[25]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \SLL64unit|Mux22~0_combout\,
	datac => \B[4]~input_o\,
	datad => \AmuxOut[25]~47_combout\,
	combout => \SLL64unit|Mux22~1_combout\);

-- Location: LCCOMB_X69_Y40_N24
\SLL64unit|Mux86~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux86~1_combout\ = (\B[3]~input_o\ & ((\SLL64unit|Mux30~1_combout\))) # (!\B[3]~input_o\ & (\SLL64unit|Mux22~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux22~1_combout\,
	datab => \SLL64unit|Mux30~1_combout\,
	datac => \B[3]~input_o\,
	combout => \SLL64unit|Mux86~1_combout\);

-- Location: LCCOMB_X69_Y40_N18
\SLL64unit|Mux86~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux86~2_combout\ = (\B[2]~input_o\ & (\SLL64unit|Mux86~0_combout\)) # (!\B[2]~input_o\ & ((\SLL64unit|Mux86~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux86~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL64unit|Mux86~1_combout\,
	combout => \SLL64unit|Mux86~2_combout\);

-- Location: LCCOMB_X72_Y40_N24
\SLL64unit|Mux190~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~64_combout\ = (\B[1]~input_o\ & (\SLL64unit|Mux88~2_combout\)) # (!\B[1]~input_o\ & ((\SLL64unit|Mux86~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL64unit|Mux88~2_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL64unit|Mux86~2_combout\,
	combout => \SLL64unit|Mux190~64_combout\);

-- Location: IOIBUF_X115_Y48_N1
\C[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(41),
	o => \C[41]~input_o\);

-- Location: LCCOMB_X72_Y40_N2
\Y~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~216_combout\ = (\Y~70_combout\ & ((\SLL64unit|Mux190~64_combout\) # ((\Y~188_combout\)))) # (!\Y~70_combout\ & (((!\Y~188_combout\ & \C[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~70_combout\,
	datab => \SLL64unit|Mux190~64_combout\,
	datac => \Y~188_combout\,
	datad => \C[41]~input_o\,
	combout => \Y~216_combout\);

-- Location: LCCOMB_X72_Y40_N28
\Y~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~217_combout\ = (\Y~188_combout\ & ((\Y~216_combout\ & ((\SLL64unit|Mux190~63_combout\))) # (!\Y~216_combout\ & (\SRLorSRAout[41]~19_combout\)))) # (!\Y~188_combout\ & (((\Y~216_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLorSRAout[41]~19_combout\,
	datab => \SLL64unit|Mux190~63_combout\,
	datac => \Y~188_combout\,
	datad => \Y~216_combout\,
	combout => \Y~217_combout\);

-- Location: LCCOMB_X72_Y40_N6
\Y~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~218_combout\ = (\Y~187_combout\) # ((!\ExtWord~input_o\ & \Y~217_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \Y~187_combout\,
	datad => \Y~217_combout\,
	combout => \Y~218_combout\);

-- Location: LCCOMB_X59_Y37_N8
\SLL64unit|Mux85~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux85~0_combout\ = (\B[3]~input_o\ & (\ShiftCount[5]~0_combout\ & (\SRA64unit|Mux19~30_combout\))) # (!\B[3]~input_o\ & (((\SLL64unit|Mux25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \B[3]~input_o\,
	datac => \SRA64unit|Mux19~30_combout\,
	datad => \SLL64unit|Mux25~1_combout\,
	combout => \SLL64unit|Mux85~0_combout\);

-- Location: LCCOMB_X59_Y38_N20
\SLL64unit|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux21~0_combout\ = (!\B[4]~input_o\ & ((\ShiftCount[5]~0_combout\ & ((\AmuxOut[42]~3_combout\))) # (!\ShiftCount[5]~0_combout\ & (\AmuxOut[10]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \AmuxOut[10]~52_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \AmuxOut[42]~3_combout\,
	combout => \SLL64unit|Mux21~0_combout\);

-- Location: LCCOMB_X59_Y38_N6
\SLL64unit|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux21~1_combout\ = (\SLL64unit|Mux21~0_combout\) # ((\B[4]~input_o\ & (\ShiftCount[5]~0_combout\ & \AmuxOut[26]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \AmuxOut[26]~51_combout\,
	datad => \SLL64unit|Mux21~0_combout\,
	combout => \SLL64unit|Mux21~1_combout\);

-- Location: LCCOMB_X59_Y37_N2
\SLL64unit|Mux85~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux85~1_combout\ = (\B[3]~input_o\ & ((\SLL64unit|Mux29~1_combout\))) # (!\B[3]~input_o\ & (\SLL64unit|Mux21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \SLL64unit|Mux21~1_combout\,
	datad => \SLL64unit|Mux29~1_combout\,
	combout => \SLL64unit|Mux85~1_combout\);

-- Location: LCCOMB_X59_Y37_N20
\SLL64unit|Mux85~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux85~2_combout\ = (\B[2]~input_o\ & (\SLL64unit|Mux85~0_combout\)) # (!\B[2]~input_o\ & ((\SLL64unit|Mux85~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \SLL64unit|Mux85~0_combout\,
	datad => \SLL64unit|Mux85~1_combout\,
	combout => \SLL64unit|Mux85~2_combout\);

-- Location: LCCOMB_X59_Y37_N14
\SLL64unit|Mux190~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~65_combout\ = (\B[1]~input_o\ & ((\SLL64unit|Mux87~2_combout\))) # (!\B[1]~input_o\ & (\SLL64unit|Mux85~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL64unit|Mux85~2_combout\,
	datad => \SLL64unit|Mux87~2_combout\,
	combout => \SLL64unit|Mux190~65_combout\);

-- Location: IOIBUF_X115_Y33_N1
\C[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(42),
	o => \C[42]~input_o\);

-- Location: LCCOMB_X72_Y40_N16
\Y~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~219_combout\ = (\Y~188_combout\ & (((\Y~70_combout\)))) # (!\Y~188_combout\ & ((\Y~70_combout\ & (\SLL64unit|Mux190~65_combout\)) # (!\Y~70_combout\ & ((\C[42]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~188_combout\,
	datab => \SLL64unit|Mux190~65_combout\,
	datac => \Y~70_combout\,
	datad => \C[42]~input_o\,
	combout => \Y~219_combout\);

-- Location: LCCOMB_X72_Y40_N10
\Y~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~220_combout\ = (\Y~219_combout\ & (((\SLL64unit|Mux190~64_combout\) # (!\Y~188_combout\)))) # (!\Y~219_combout\ & (\SRLorSRAout[42]~21_combout\ & (\Y~188_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLorSRAout[42]~21_combout\,
	datab => \Y~219_combout\,
	datac => \Y~188_combout\,
	datad => \SLL64unit|Mux190~64_combout\,
	combout => \Y~220_combout\);

-- Location: LCCOMB_X72_Y40_N20
\Y~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~221_combout\ = (\Y~187_combout\) # ((!\ExtWord~input_o\ & \Y~220_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \Y~187_combout\,
	datad => \Y~220_combout\,
	combout => \Y~221_combout\);

-- Location: IOIBUF_X115_Y47_N15
\C[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(43),
	o => \C[43]~input_o\);

-- Location: LCCOMB_X59_Y40_N0
\SLL64unit|Mux84~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux84~0_combout\ = (\B[3]~input_o\ & (((\ShiftCount[5]~0_combout\ & \SRA64unit|Mux19~31_combout\)))) # (!\B[3]~input_o\ & (\SLL64unit|Mux24~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SLL64unit|Mux24~1_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \SRA64unit|Mux19~31_combout\,
	combout => \SLL64unit|Mux84~0_combout\);

-- Location: LCCOMB_X58_Y39_N24
\SLL64unit|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux20~0_combout\ = (!\B[4]~input_o\ & ((\ShiftCount[5]~0_combout\ & (\AmuxOut[43]~22_combout\)) # (!\ShiftCount[5]~0_combout\ & ((\AmuxOut[11]~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \AmuxOut[43]~22_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \AmuxOut[11]~36_combout\,
	combout => \SLL64unit|Mux20~0_combout\);

-- Location: LCCOMB_X58_Y39_N2
\SLL64unit|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux20~1_combout\ = (\SLL64unit|Mux20~0_combout\) # ((\B[4]~input_o\ & (\ShiftCount[5]~0_combout\ & \AmuxOut[27]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \SLL64unit|Mux20~0_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \AmuxOut[27]~35_combout\,
	combout => \SLL64unit|Mux20~1_combout\);

-- Location: LCCOMB_X59_Y40_N2
\SLL64unit|Mux84~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux84~1_combout\ = (\B[3]~input_o\ & ((\SLL64unit|Mux28~1_combout\))) # (!\B[3]~input_o\ & (\SLL64unit|Mux20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL64unit|Mux20~1_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL64unit|Mux28~1_combout\,
	combout => \SLL64unit|Mux84~1_combout\);

-- Location: LCCOMB_X59_Y40_N28
\SLL64unit|Mux84~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux84~2_combout\ = (\B[2]~input_o\ & (\SLL64unit|Mux84~0_combout\)) # (!\B[2]~input_o\ & ((\SLL64unit|Mux84~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL64unit|Mux84~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL64unit|Mux84~1_combout\,
	combout => \SLL64unit|Mux84~2_combout\);

-- Location: LCCOMB_X72_Y40_N30
\SLL64unit|Mux190~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~66_combout\ = (\B[1]~input_o\ & ((\SLL64unit|Mux86~2_combout\))) # (!\B[1]~input_o\ & (\SLL64unit|Mux84~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \SLL64unit|Mux84~2_combout\,
	datad => \SLL64unit|Mux86~2_combout\,
	combout => \SLL64unit|Mux190~66_combout\);

-- Location: LCCOMB_X72_Y40_N0
\Y~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~222_combout\ = (\Y~188_combout\ & (((\Y~70_combout\)))) # (!\Y~188_combout\ & ((\Y~70_combout\ & ((\SLL64unit|Mux190~66_combout\))) # (!\Y~70_combout\ & (\C[43]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~188_combout\,
	datab => \C[43]~input_o\,
	datac => \Y~70_combout\,
	datad => \SLL64unit|Mux190~66_combout\,
	combout => \Y~222_combout\);

-- Location: LCCOMB_X72_Y40_N26
\Y~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~223_combout\ = (\Y~188_combout\ & ((\Y~222_combout\ & (\SLL64unit|Mux190~65_combout\)) # (!\Y~222_combout\ & ((\SRLorSRAout[43]~23_combout\))))) # (!\Y~188_combout\ & (\Y~222_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~188_combout\,
	datab => \Y~222_combout\,
	datac => \SLL64unit|Mux190~65_combout\,
	datad => \SRLorSRAout[43]~23_combout\,
	combout => \Y~223_combout\);

-- Location: LCCOMB_X72_Y40_N12
\Y~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~224_combout\ = (\Y~187_combout\) # ((\Y~223_combout\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~223_combout\,
	datab => \ExtWord~input_o\,
	datac => \Y~187_combout\,
	combout => \Y~224_combout\);

-- Location: LCCOMB_X60_Y37_N4
\SLL64unit|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux19~0_combout\ = (!\B[4]~input_o\ & ((\ShiftCount[5]~0_combout\ & (\AmuxOut[44]~15_combout\)) # (!\ShiftCount[5]~0_combout\ & ((\AmuxOut[12]~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \AmuxOut[44]~15_combout\,
	datac => \AmuxOut[12]~58_combout\,
	datad => \B[4]~input_o\,
	combout => \SLL64unit|Mux19~0_combout\);

-- Location: LCCOMB_X60_Y37_N6
\SLL64unit|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux19~1_combout\ = (\SLL64unit|Mux19~0_combout\) # ((\B[4]~input_o\ & (\AmuxOut[28]~57_combout\ & \ShiftCount[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \AmuxOut[28]~57_combout\,
	datac => \SLL64unit|Mux19~0_combout\,
	datad => \ShiftCount[5]~0_combout\,
	combout => \SLL64unit|Mux19~1_combout\);

-- Location: LCCOMB_X59_Y37_N0
\SLL64unit|Mux83~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux83~0_combout\ = (\B[3]~input_o\ & (\SLL64unit|Mux27~1_combout\)) # (!\B[3]~input_o\ & ((\SLL64unit|Mux19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \SLL64unit|Mux27~1_combout\,
	datad => \SLL64unit|Mux19~1_combout\,
	combout => \SLL64unit|Mux83~0_combout\);

-- Location: LCCOMB_X59_Y37_N10
\SLL64unit|Mux83~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux83~1_combout\ = (\B[2]~input_o\ & ((\SLL64unit|Mux87~1_combout\))) # (!\B[2]~input_o\ & (\SLL64unit|Mux83~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL64unit|Mux83~0_combout\,
	datac => \SLL64unit|Mux87~1_combout\,
	combout => \SLL64unit|Mux83~1_combout\);

-- Location: LCCOMB_X59_Y37_N4
\SLL64unit|Mux190~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~67_combout\ = (\B[1]~input_o\ & (\SLL64unit|Mux85~2_combout\)) # (!\B[1]~input_o\ & ((\SLL64unit|Mux83~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL64unit|Mux85~2_combout\,
	datad => \SLL64unit|Mux83~1_combout\,
	combout => \SLL64unit|Mux190~67_combout\);

-- Location: IOIBUF_X85_Y73_N8
\C[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(44),
	o => \C[44]~input_o\);

-- Location: LCCOMB_X72_Y40_N14
\Y~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~225_combout\ = (\Y~188_combout\ & (((\Y~70_combout\)))) # (!\Y~188_combout\ & ((\Y~70_combout\ & (\SLL64unit|Mux190~67_combout\)) # (!\Y~70_combout\ & ((\C[44]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~188_combout\,
	datab => \SLL64unit|Mux190~67_combout\,
	datac => \Y~70_combout\,
	datad => \C[44]~input_o\,
	combout => \Y~225_combout\);

-- Location: LCCOMB_X72_Y40_N8
\Y~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~226_combout\ = (\Y~188_combout\ & ((\Y~225_combout\ & (\SLL64unit|Mux190~66_combout\)) # (!\Y~225_combout\ & ((\SRLorSRAout[44]~25_combout\))))) # (!\Y~188_combout\ & (\Y~225_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~188_combout\,
	datab => \Y~225_combout\,
	datac => \SLL64unit|Mux190~66_combout\,
	datad => \SRLorSRAout[44]~25_combout\,
	combout => \Y~226_combout\);

-- Location: LCCOMB_X72_Y40_N18
\Y~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~227_combout\ = (\Y~187_combout\) # ((!\ExtWord~input_o\ & \Y~226_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \Y~226_combout\,
	datad => \Y~187_combout\,
	combout => \Y~227_combout\);

-- Location: IOIBUF_X35_Y73_N22
\C[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(45),
	o => \C[45]~input_o\);

-- Location: LCCOMB_X67_Y39_N30
\SLL64unit|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux18~0_combout\ = (!\B[4]~input_o\ & ((\ShiftCount[5]~0_combout\ & ((\AmuxOut[45]~30_combout\))) # (!\ShiftCount[5]~0_combout\ & (\AmuxOut[13]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[13]~46_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \AmuxOut[45]~30_combout\,
	combout => \SLL64unit|Mux18~0_combout\);

-- Location: LCCOMB_X67_Y39_N8
\SLL64unit|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux18~1_combout\ = (\SLL64unit|Mux18~0_combout\) # ((\ShiftCount[5]~0_combout\ & (\B[4]~input_o\ & \AmuxOut[29]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux18~0_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \AmuxOut[29]~45_combout\,
	combout => \SLL64unit|Mux18~1_combout\);

-- Location: LCCOMB_X69_Y39_N28
\SLL64unit|Mux82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux82~0_combout\ = (\B[3]~input_o\ & (\SLL64unit|Mux26~1_combout\)) # (!\B[3]~input_o\ & ((\SLL64unit|Mux18~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \SLL64unit|Mux26~1_combout\,
	datad => \SLL64unit|Mux18~1_combout\,
	combout => \SLL64unit|Mux82~0_combout\);

-- Location: LCCOMB_X69_Y40_N12
\SLL64unit|Mux82~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux82~1_combout\ = (\B[2]~input_o\ & ((\SLL64unit|Mux86~1_combout\))) # (!\B[2]~input_o\ & (\SLL64unit|Mux82~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux82~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL64unit|Mux86~1_combout\,
	combout => \SLL64unit|Mux82~1_combout\);

-- Location: LCCOMB_X60_Y40_N24
\SLL64unit|Mux190~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~68_combout\ = (\B[1]~input_o\ & (\SLL64unit|Mux84~2_combout\)) # (!\B[1]~input_o\ & ((\SLL64unit|Mux82~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL64unit|Mux84~2_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL64unit|Mux82~1_combout\,
	combout => \SLL64unit|Mux190~68_combout\);

-- Location: LCCOMB_X60_Y40_N26
\Y~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~228_combout\ = (\Y~70_combout\ & ((\Y~188_combout\) # ((\SLL64unit|Mux190~68_combout\)))) # (!\Y~70_combout\ & (!\Y~188_combout\ & (\C[45]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~70_combout\,
	datab => \Y~188_combout\,
	datac => \C[45]~input_o\,
	datad => \SLL64unit|Mux190~68_combout\,
	combout => \Y~228_combout\);

-- Location: LCCOMB_X60_Y40_N4
\Y~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~229_combout\ = (\Y~228_combout\ & (((\SLL64unit|Mux190~67_combout\)) # (!\Y~188_combout\))) # (!\Y~228_combout\ & (\Y~188_combout\ & (\SRLorSRAout[45]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~228_combout\,
	datab => \Y~188_combout\,
	datac => \SRLorSRAout[45]~27_combout\,
	datad => \SLL64unit|Mux190~67_combout\,
	combout => \Y~229_combout\);

-- Location: LCCOMB_X60_Y40_N6
\Y~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~230_combout\ = (\Y~187_combout\) # ((\Y~229_combout\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~187_combout\,
	datac => \Y~229_combout\,
	datad => \ExtWord~input_o\,
	combout => \Y~230_combout\);

-- Location: IOIBUF_X60_Y73_N1
\C[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(46),
	o => \C[46]~input_o\);

-- Location: LCCOMB_X57_Y37_N24
\SLL64unit|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux17~0_combout\ = (!\B[4]~input_o\ & ((\ShiftCount[5]~0_combout\ & (\AmuxOut[46]~7_combout\)) # (!\ShiftCount[5]~0_combout\ & ((\AmuxOut[14]~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \AmuxOut[46]~7_combout\,
	datad => \AmuxOut[14]~50_combout\,
	combout => \SLL64unit|Mux17~0_combout\);

-- Location: LCCOMB_X57_Y37_N2
\SLL64unit|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux17~1_combout\ = (\SLL64unit|Mux17~0_combout\) # ((\ShiftCount[5]~0_combout\ & (\B[4]~input_o\ & \AmuxOut[30]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \AmuxOut[30]~49_combout\,
	datad => \SLL64unit|Mux17~0_combout\,
	combout => \SLL64unit|Mux17~1_combout\);

-- Location: LCCOMB_X58_Y41_N24
\SLL64unit|Mux81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux81~0_combout\ = (\B[3]~input_o\ & ((\SLL64unit|Mux25~1_combout\))) # (!\B[3]~input_o\ & (\SLL64unit|Mux17~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \SLL64unit|Mux17~1_combout\,
	datad => \SLL64unit|Mux25~1_combout\,
	combout => \SLL64unit|Mux81~0_combout\);

-- Location: LCCOMB_X58_Y41_N10
\SLL64unit|Mux81~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux81~1_combout\ = (\B[2]~input_o\ & ((\SLL64unit|Mux85~1_combout\))) # (!\B[2]~input_o\ & (\SLL64unit|Mux81~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL64unit|Mux81~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL64unit|Mux85~1_combout\,
	combout => \SLL64unit|Mux81~1_combout\);

-- Location: LCCOMB_X58_Y41_N12
\SLL64unit|Mux190~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~69_combout\ = (\B[1]~input_o\ & (\SLL64unit|Mux83~1_combout\)) # (!\B[1]~input_o\ & ((\SLL64unit|Mux81~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \SLL64unit|Mux83~1_combout\,
	datad => \SLL64unit|Mux81~1_combout\,
	combout => \SLL64unit|Mux190~69_combout\);

-- Location: LCCOMB_X60_Y40_N16
\Y~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~231_combout\ = (\Y~70_combout\ & ((\Y~188_combout\) # ((\SLL64unit|Mux190~69_combout\)))) # (!\Y~70_combout\ & (!\Y~188_combout\ & (\C[46]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~70_combout\,
	datab => \Y~188_combout\,
	datac => \C[46]~input_o\,
	datad => \SLL64unit|Mux190~69_combout\,
	combout => \Y~231_combout\);

-- Location: LCCOMB_X60_Y40_N10
\Y~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~232_combout\ = (\Y~231_combout\ & (((\SLL64unit|Mux190~68_combout\) # (!\Y~188_combout\)))) # (!\Y~231_combout\ & (\SRLorSRAout[46]~29_combout\ & (\Y~188_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~231_combout\,
	datab => \SRLorSRAout[46]~29_combout\,
	datac => \Y~188_combout\,
	datad => \SLL64unit|Mux190~68_combout\,
	combout => \Y~232_combout\);

-- Location: LCCOMB_X60_Y40_N20
\Y~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~233_combout\ = (\Y~187_combout\) # ((!\ExtWord~input_o\ & \Y~232_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \Y~187_combout\,
	datad => \Y~232_combout\,
	combout => \Y~233_combout\);

-- Location: LCCOMB_X63_Y40_N24
\SLL64unit|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux16~0_combout\ = (!\B[4]~input_o\ & ((\ShiftCount[5]~0_combout\ & (\AmuxOut[47]~18_combout\)) # (!\ShiftCount[5]~0_combout\ & ((\AmuxOut[15]~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[47]~18_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \AmuxOut[15]~34_combout\,
	datad => \B[4]~input_o\,
	combout => \SLL64unit|Mux16~0_combout\);

-- Location: LCCOMB_X63_Y40_N18
\SLL64unit|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux16~1_combout\ = (\SLL64unit|Mux16~0_combout\) # ((\ShiftCount[5]~0_combout\ & (\B[4]~input_o\ & \AmuxOut[31]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \AmuxOut[31]~33_combout\,
	datad => \SLL64unit|Mux16~0_combout\,
	combout => \SLL64unit|Mux16~1_combout\);

-- Location: LCCOMB_X62_Y40_N8
\SLL64unit|Mux80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux80~0_combout\ = (\B[3]~input_o\ & (\SLL64unit|Mux24~1_combout\)) # (!\B[3]~input_o\ & ((\SLL64unit|Mux16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL64unit|Mux24~1_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL64unit|Mux16~1_combout\,
	combout => \SLL64unit|Mux80~0_combout\);

-- Location: LCCOMB_X62_Y40_N26
\SLL64unit|Mux80~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux80~1_combout\ = (\B[2]~input_o\ & ((\SLL64unit|Mux84~1_combout\))) # (!\B[2]~input_o\ & (\SLL64unit|Mux80~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL64unit|Mux80~0_combout\,
	datac => \SLL64unit|Mux84~1_combout\,
	combout => \SLL64unit|Mux80~1_combout\);

-- Location: LCCOMB_X60_Y40_N22
\SLL64unit|Mux190~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~70_combout\ = (\B[1]~input_o\ & (\SLL64unit|Mux82~1_combout\)) # (!\B[1]~input_o\ & ((\SLL64unit|Mux80~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL64unit|Mux82~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL64unit|Mux80~1_combout\,
	combout => \SLL64unit|Mux190~70_combout\);

-- Location: IOIBUF_X89_Y73_N8
\C[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(47),
	o => \C[47]~input_o\);

-- Location: LCCOMB_X60_Y40_N8
\Y~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~234_combout\ = (\Y~70_combout\ & ((\Y~188_combout\) # ((\SLL64unit|Mux190~70_combout\)))) # (!\Y~70_combout\ & (!\Y~188_combout\ & ((\C[47]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~70_combout\,
	datab => \Y~188_combout\,
	datac => \SLL64unit|Mux190~70_combout\,
	datad => \C[47]~input_o\,
	combout => \Y~234_combout\);

-- Location: LCCOMB_X60_Y40_N2
\Y~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~235_combout\ = (\Y~188_combout\ & ((\Y~234_combout\ & ((\SLL64unit|Mux190~69_combout\))) # (!\Y~234_combout\ & (\SRLorSRAout[47]~31_combout\)))) # (!\Y~188_combout\ & (((\Y~234_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLorSRAout[47]~31_combout\,
	datab => \Y~188_combout\,
	datac => \Y~234_combout\,
	datad => \SLL64unit|Mux190~69_combout\,
	combout => \Y~235_combout\);

-- Location: LCCOMB_X60_Y40_N28
\Y~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~236_combout\ = (\Y~187_combout\) # ((\Y~235_combout\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~187_combout\,
	datab => \Y~235_combout\,
	datad => \ExtWord~input_o\,
	combout => \Y~236_combout\);

-- Location: IOIBUF_X27_Y73_N15
\C[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(48),
	o => \C[48]~input_o\);

-- Location: LCCOMB_X61_Y36_N10
\SLL64unit|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux15~2_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\AmuxOut[32]~13_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[48]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[32]~13_combout\,
	datab => \B[4]~input_o\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \AmuxOut[48]~12_combout\,
	combout => \SLL64unit|Mux15~2_combout\);

-- Location: LCCOMB_X61_Y36_N22
\SLL64unit|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux15~3_combout\ = (\SLL64unit|Mux15~2_combout\) # ((\B[5]~input_o\ & (!\ExtWord~input_o\ & \SRA64unit|Mux19~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux15~2_combout\,
	datab => \B[5]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \SRA64unit|Mux19~16_combout\,
	combout => \SLL64unit|Mux15~3_combout\);

-- Location: LCCOMB_X59_Y39_N16
\SLL64unit|Mux79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux79~0_combout\ = (\B[3]~input_o\ & (\SLL64unit|Mux23~1_combout\)) # (!\B[3]~input_o\ & ((\SLL64unit|Mux15~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux23~1_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL64unit|Mux15~3_combout\,
	combout => \SLL64unit|Mux79~0_combout\);

-- Location: LCCOMB_X59_Y37_N6
\SLL64unit|Mux79~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux79~1_combout\ = (\B[2]~input_o\ & (\SLL64unit|Mux83~0_combout\)) # (!\B[2]~input_o\ & ((\SLL64unit|Mux79~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL64unit|Mux83~0_combout\,
	datad => \SLL64unit|Mux79~0_combout\,
	combout => \SLL64unit|Mux79~1_combout\);

-- Location: LCCOMB_X58_Y41_N30
\SLL64unit|Mux190~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~71_combout\ = (\B[1]~input_o\ & ((\SLL64unit|Mux81~1_combout\))) # (!\B[1]~input_o\ & (\SLL64unit|Mux79~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \SLL64unit|Mux79~1_combout\,
	datad => \SLL64unit|Mux81~1_combout\,
	combout => \SLL64unit|Mux190~71_combout\);

-- Location: LCCOMB_X60_Y40_N30
\Y~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~237_combout\ = (\Y~188_combout\ & (((\Y~70_combout\)))) # (!\Y~188_combout\ & ((\Y~70_combout\ & ((\SLL64unit|Mux190~71_combout\))) # (!\Y~70_combout\ & (\C[48]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[48]~input_o\,
	datab => \Y~188_combout\,
	datac => \SLL64unit|Mux190~71_combout\,
	datad => \Y~70_combout\,
	combout => \Y~237_combout\);

-- Location: LCCOMB_X60_Y40_N0
\Y~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~238_combout\ = (\Y~237_combout\ & (((\SLL64unit|Mux190~70_combout\)) # (!\Y~188_combout\))) # (!\Y~237_combout\ & (\Y~188_combout\ & ((\SRLorSRAout[48]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~237_combout\,
	datab => \Y~188_combout\,
	datac => \SLL64unit|Mux190~70_combout\,
	datad => \SRLorSRAout[48]~33_combout\,
	combout => \Y~238_combout\);

-- Location: LCCOMB_X60_Y41_N0
\Y~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~239_combout\ = (\Y~187_combout\) # ((!\ExtWord~input_o\ & \Y~238_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \Y~187_combout\,
	datad => \Y~238_combout\,
	combout => \Y~239_combout\);

-- Location: LCCOMB_X70_Y40_N26
\SLL64unit|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux14~2_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & ((\AmuxOut[33]~28_combout\))) # (!\B[4]~input_o\ & (\AmuxOut[49]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \AmuxOut[49]~27_combout\,
	datac => \B[4]~input_o\,
	datad => \AmuxOut[33]~28_combout\,
	combout => \SLL64unit|Mux14~2_combout\);

-- Location: LCCOMB_X70_Y40_N20
\SLL64unit|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux14~3_combout\ = (\SLL64unit|Mux14~2_combout\) # ((\B[5]~input_o\ & (!\ExtWord~input_o\ & \SRA64unit|Mux19~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux14~2_combout\,
	datab => \B[5]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \SRA64unit|Mux19~17_combout\,
	combout => \SLL64unit|Mux14~3_combout\);

-- Location: LCCOMB_X62_Y40_N28
\SLL64unit|Mux78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux78~0_combout\ = (\B[3]~input_o\ & (\SLL64unit|Mux22~1_combout\)) # (!\B[3]~input_o\ & ((\SLL64unit|Mux14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux22~1_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL64unit|Mux14~3_combout\,
	combout => \SLL64unit|Mux78~0_combout\);

-- Location: LCCOMB_X62_Y40_N6
\SLL64unit|Mux78~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux78~1_combout\ = (\B[2]~input_o\ & (\SLL64unit|Mux82~0_combout\)) # (!\B[2]~input_o\ & ((\SLL64unit|Mux78~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \SLL64unit|Mux82~0_combout\,
	datad => \SLL64unit|Mux78~0_combout\,
	combout => \SLL64unit|Mux78~1_combout\);

-- Location: LCCOMB_X62_Y40_N24
\SLL64unit|Mux190~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~72_combout\ = (\B[1]~input_o\ & ((\SLL64unit|Mux80~1_combout\))) # (!\B[1]~input_o\ & (\SLL64unit|Mux78~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux78~1_combout\,
	datab => \B[1]~input_o\,
	datac => \SLL64unit|Mux80~1_combout\,
	combout => \SLL64unit|Mux190~72_combout\);

-- Location: IOIBUF_X52_Y0_N15
\C[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(49),
	o => \C[49]~input_o\);

-- Location: LCCOMB_X60_Y40_N18
\Y~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~240_combout\ = (\Y~70_combout\ & ((\Y~188_combout\) # ((\SLL64unit|Mux190~72_combout\)))) # (!\Y~70_combout\ & (!\Y~188_combout\ & ((\C[49]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~70_combout\,
	datab => \Y~188_combout\,
	datac => \SLL64unit|Mux190~72_combout\,
	datad => \C[49]~input_o\,
	combout => \Y~240_combout\);

-- Location: LCCOMB_X60_Y40_N12
\Y~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~241_combout\ = (\Y~188_combout\ & ((\Y~240_combout\ & ((\SLL64unit|Mux190~71_combout\))) # (!\Y~240_combout\ & (\SRLorSRAout[49]~35_combout\)))) # (!\Y~188_combout\ & (((\Y~240_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLorSRAout[49]~35_combout\,
	datab => \Y~188_combout\,
	datac => \SLL64unit|Mux190~71_combout\,
	datad => \Y~240_combout\,
	combout => \Y~241_combout\);

-- Location: LCCOMB_X60_Y40_N14
\Y~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~242_combout\ = (\Y~187_combout\) # ((!\ExtWord~input_o\ & \Y~241_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \Y~187_combout\,
	datad => \Y~241_combout\,
	combout => \Y~242_combout\);

-- Location: IOIBUF_X0_Y44_N22
\C[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(50),
	o => \C[50]~input_o\);

-- Location: LCCOMB_X58_Y40_N24
\SLL64unit|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux13~2_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & ((\AmuxOut[34]~5_combout\))) # (!\B[4]~input_o\ & (\AmuxOut[50]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[50]~4_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \AmuxOut[34]~5_combout\,
	datad => \B[4]~input_o\,
	combout => \SLL64unit|Mux13~2_combout\);

-- Location: LCCOMB_X58_Y40_N20
\SLL64unit|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux13~3_combout\ = (\SLL64unit|Mux13~2_combout\) # ((!\ExtWord~input_o\ & (\B[5]~input_o\ & \SRA64unit|Mux19~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \SLL64unit|Mux13~2_combout\,
	datac => \B[5]~input_o\,
	datad => \SRA64unit|Mux19~18_combout\,
	combout => \SLL64unit|Mux13~3_combout\);

-- Location: LCCOMB_X59_Y38_N16
\SLL64unit|Mux77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux77~0_combout\ = (\B[3]~input_o\ & ((\SLL64unit|Mux21~1_combout\))) # (!\B[3]~input_o\ & (\SLL64unit|Mux13~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL64unit|Mux13~3_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL64unit|Mux21~1_combout\,
	combout => \SLL64unit|Mux77~0_combout\);

-- Location: LCCOMB_X58_Y41_N8
\SLL64unit|Mux77~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux77~1_combout\ = (\B[2]~input_o\ & (\SLL64unit|Mux81~0_combout\)) # (!\B[2]~input_o\ & ((\SLL64unit|Mux77~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL64unit|Mux81~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL64unit|Mux77~0_combout\,
	combout => \SLL64unit|Mux77~1_combout\);

-- Location: LCCOMB_X58_Y41_N2
\SLL64unit|Mux190~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~73_combout\ = (\B[1]~input_o\ & (\SLL64unit|Mux79~1_combout\)) # (!\B[1]~input_o\ & ((\SLL64unit|Mux77~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL64unit|Mux79~1_combout\,
	datac => \SLL64unit|Mux77~1_combout\,
	combout => \SLL64unit|Mux190~73_combout\);

-- Location: LCCOMB_X57_Y41_N16
\Y~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~243_combout\ = (\Y~188_combout\ & (((\Y~70_combout\)))) # (!\Y~188_combout\ & ((\Y~70_combout\ & ((\SLL64unit|Mux190~73_combout\))) # (!\Y~70_combout\ & (\C[50]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[50]~input_o\,
	datab => \Y~188_combout\,
	datac => \Y~70_combout\,
	datad => \SLL64unit|Mux190~73_combout\,
	combout => \Y~243_combout\);

-- Location: LCCOMB_X57_Y41_N2
\Y~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~244_combout\ = (\Y~188_combout\ & ((\Y~243_combout\ & (\SLL64unit|Mux190~72_combout\)) # (!\Y~243_combout\ & ((\SRLorSRAout[50]~37_combout\))))) # (!\Y~188_combout\ & (((\Y~243_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux190~72_combout\,
	datab => \Y~188_combout\,
	datac => \SRLorSRAout[50]~37_combout\,
	datad => \Y~243_combout\,
	combout => \Y~244_combout\);

-- Location: LCCOMB_X60_Y41_N26
\Y~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~245_combout\ = (\Y~187_combout\) # ((\Y~244_combout\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~244_combout\,
	datab => \ExtWord~input_o\,
	datac => \Y~187_combout\,
	combout => \Y~245_combout\);

-- Location: IOIBUF_X38_Y73_N15
\C[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(51),
	o => \C[51]~input_o\);

-- Location: LCCOMB_X59_Y43_N14
\SLL64unit|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux12~2_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\AmuxOut[35]~24_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[51]~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[35]~24_combout\,
	datab => \AmuxOut[51]~23_combout\,
	datac => \B[4]~input_o\,
	datad => \ShiftCount[5]~0_combout\,
	combout => \SLL64unit|Mux12~2_combout\);

-- Location: LCCOMB_X59_Y43_N20
\SLL64unit|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux12~3_combout\ = (\SLL64unit|Mux12~2_combout\) # ((\B[5]~input_o\ & (!\ExtWord~input_o\ & \SRA64unit|Mux19~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \SLL64unit|Mux12~2_combout\,
	datac => \ExtWord~input_o\,
	datad => \SRA64unit|Mux19~19_combout\,
	combout => \SLL64unit|Mux12~3_combout\);

-- Location: LCCOMB_X59_Y40_N14
\SLL64unit|Mux76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux76~0_combout\ = (\B[3]~input_o\ & (\SLL64unit|Mux20~1_combout\)) # (!\B[3]~input_o\ & ((\SLL64unit|Mux12~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL64unit|Mux20~1_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL64unit|Mux12~3_combout\,
	combout => \SLL64unit|Mux76~0_combout\);

-- Location: LCCOMB_X62_Y40_N18
\SLL64unit|Mux76~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux76~1_combout\ = (\B[2]~input_o\ & ((\SLL64unit|Mux80~0_combout\))) # (!\B[2]~input_o\ & (\SLL64unit|Mux76~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux76~0_combout\,
	datab => \SLL64unit|Mux80~0_combout\,
	datac => \B[2]~input_o\,
	combout => \SLL64unit|Mux76~1_combout\);

-- Location: LCCOMB_X62_Y40_N4
\SLL64unit|Mux190~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~74_combout\ = (\B[1]~input_o\ & ((\SLL64unit|Mux78~1_combout\))) # (!\B[1]~input_o\ & (\SLL64unit|Mux76~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL64unit|Mux76~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL64unit|Mux78~1_combout\,
	combout => \SLL64unit|Mux190~74_combout\);

-- Location: LCCOMB_X57_Y41_N20
\Y~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~246_combout\ = (\Y~188_combout\ & (((\Y~70_combout\)))) # (!\Y~188_combout\ & ((\Y~70_combout\ & ((\SLL64unit|Mux190~74_combout\))) # (!\Y~70_combout\ & (\C[51]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[51]~input_o\,
	datab => \Y~188_combout\,
	datac => \Y~70_combout\,
	datad => \SLL64unit|Mux190~74_combout\,
	combout => \Y~246_combout\);

-- Location: LCCOMB_X57_Y41_N6
\Y~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~247_combout\ = (\Y~188_combout\ & ((\Y~246_combout\ & (\SLL64unit|Mux190~73_combout\)) # (!\Y~246_combout\ & ((\SRLorSRAout[51]~39_combout\))))) # (!\Y~188_combout\ & (((\Y~246_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux190~73_combout\,
	datab => \Y~188_combout\,
	datac => \SRLorSRAout[51]~39_combout\,
	datad => \Y~246_combout\,
	combout => \Y~247_combout\);

-- Location: LCCOMB_X57_Y41_N0
\Y~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~248_combout\ = (\Y~187_combout\) # ((!\ExtWord~input_o\ & \Y~247_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \Y~187_combout\,
	datad => \Y~247_combout\,
	combout => \Y~248_combout\);

-- Location: IOIBUF_X0_Y45_N15
\C[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(52),
	o => \C[52]~input_o\);

-- Location: LCCOMB_X61_Y35_N0
\SLL64unit|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux11~2_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\AmuxOut[36]~11_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[52]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \AmuxOut[36]~11_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \AmuxOut[52]~10_combout\,
	combout => \SLL64unit|Mux11~2_combout\);

-- Location: LCCOMB_X61_Y35_N12
\SLL64unit|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux11~3_combout\ = (\SLL64unit|Mux11~2_combout\) # ((\SRA64unit|Mux19~20_combout\ & (\B[5]~input_o\ & !\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux19~20_combout\,
	datab => \B[5]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \SLL64unit|Mux11~2_combout\,
	combout => \SLL64unit|Mux11~3_combout\);

-- Location: LCCOMB_X59_Y39_N26
\SLL64unit|Mux75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux75~0_combout\ = (\B[3]~input_o\ & (\SLL64unit|Mux19~1_combout\)) # (!\B[3]~input_o\ & ((\SLL64unit|Mux11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SLL64unit|Mux19~1_combout\,
	datad => \SLL64unit|Mux11~3_combout\,
	combout => \SLL64unit|Mux75~0_combout\);

-- Location: LCCOMB_X59_Y39_N20
\SLL64unit|Mux75~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux75~1_combout\ = (\B[2]~input_o\ & ((\SLL64unit|Mux79~0_combout\))) # (!\B[2]~input_o\ & (\SLL64unit|Mux75~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \SLL64unit|Mux75~0_combout\,
	datad => \SLL64unit|Mux79~0_combout\,
	combout => \SLL64unit|Mux75~1_combout\);

-- Location: LCCOMB_X58_Y41_N28
\SLL64unit|Mux190~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~75_combout\ = (\B[1]~input_o\ & (\SLL64unit|Mux77~1_combout\)) # (!\B[1]~input_o\ & ((\SLL64unit|Mux75~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \SLL64unit|Mux77~1_combout\,
	datad => \SLL64unit|Mux75~1_combout\,
	combout => \SLL64unit|Mux190~75_combout\);

-- Location: LCCOMB_X57_Y41_N26
\Y~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~249_combout\ = (\Y~188_combout\ & (((\Y~70_combout\)))) # (!\Y~188_combout\ & ((\Y~70_combout\ & ((\SLL64unit|Mux190~75_combout\))) # (!\Y~70_combout\ & (\C[52]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[52]~input_o\,
	datab => \Y~188_combout\,
	datac => \Y~70_combout\,
	datad => \SLL64unit|Mux190~75_combout\,
	combout => \Y~249_combout\);

-- Location: LCCOMB_X57_Y41_N4
\Y~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~250_combout\ = (\Y~249_combout\ & (((\SLL64unit|Mux190~74_combout\)) # (!\Y~188_combout\))) # (!\Y~249_combout\ & (\Y~188_combout\ & (\SRLorSRAout[52]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~249_combout\,
	datab => \Y~188_combout\,
	datac => \SRLorSRAout[52]~41_combout\,
	datad => \SLL64unit|Mux190~74_combout\,
	combout => \Y~250_combout\);

-- Location: LCCOMB_X57_Y41_N22
\Y~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~251_combout\ = (\Y~187_combout\) # ((!\ExtWord~input_o\ & \Y~250_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Y~250_combout\,
	datac => \Y~187_combout\,
	combout => \Y~251_combout\);

-- Location: IOIBUF_X54_Y73_N8
\C[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(53),
	o => \C[53]~input_o\);

-- Location: LCCOMB_X66_Y41_N26
\SLL64unit|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux10~2_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & ((\AmuxOut[37]~32_combout\))) # (!\B[4]~input_o\ & (\AmuxOut[53]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \AmuxOut[53]~31_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \AmuxOut[37]~32_combout\,
	combout => \SLL64unit|Mux10~2_combout\);

-- Location: LCCOMB_X66_Y41_N14
\SLL64unit|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux10~3_combout\ = (\SLL64unit|Mux10~2_combout\) # ((!\ExtWord~input_o\ & (\B[5]~input_o\ & \SRA64unit|Mux19~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux10~2_combout\,
	datab => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \SRA64unit|Mux19~21_combout\,
	combout => \SLL64unit|Mux10~3_combout\);

-- Location: LCCOMB_X59_Y39_N30
\SLL64unit|Mux74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux74~0_combout\ = (\B[3]~input_o\ & (\SLL64unit|Mux18~1_combout\)) # (!\B[3]~input_o\ & ((\SLL64unit|Mux10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SLL64unit|Mux18~1_combout\,
	datac => \SLL64unit|Mux10~3_combout\,
	combout => \SLL64unit|Mux74~0_combout\);

-- Location: LCCOMB_X62_Y40_N30
\SLL64unit|Mux74~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux74~1_combout\ = (\B[2]~input_o\ & ((\SLL64unit|Mux78~0_combout\))) # (!\B[2]~input_o\ & (\SLL64unit|Mux74~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux74~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL64unit|Mux78~0_combout\,
	combout => \SLL64unit|Mux74~1_combout\);

-- Location: LCCOMB_X65_Y41_N22
\SLL64unit|Mux190~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~76_combout\ = (\B[1]~input_o\ & ((\SLL64unit|Mux76~1_combout\))) # (!\B[1]~input_o\ & (\SLL64unit|Mux74~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux74~1_combout\,
	datac => \SLL64unit|Mux76~1_combout\,
	datad => \B[1]~input_o\,
	combout => \SLL64unit|Mux190~76_combout\);

-- Location: LCCOMB_X57_Y41_N8
\Y~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~252_combout\ = (\Y~70_combout\ & ((\Y~188_combout\) # ((\SLL64unit|Mux190~76_combout\)))) # (!\Y~70_combout\ & (!\Y~188_combout\ & (\C[53]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~70_combout\,
	datab => \Y~188_combout\,
	datac => \C[53]~input_o\,
	datad => \SLL64unit|Mux190~76_combout\,
	combout => \Y~252_combout\);

-- Location: LCCOMB_X57_Y41_N18
\Y~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~253_combout\ = (\Y~188_combout\ & ((\Y~252_combout\ & ((\SLL64unit|Mux190~75_combout\))) # (!\Y~252_combout\ & (\SRLorSRAout[53]~43_combout\)))) # (!\Y~188_combout\ & (((\Y~252_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~188_combout\,
	datab => \SRLorSRAout[53]~43_combout\,
	datac => \Y~252_combout\,
	datad => \SLL64unit|Mux190~75_combout\,
	combout => \Y~253_combout\);

-- Location: LCCOMB_X57_Y41_N28
\Y~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~254_combout\ = (\Y~187_combout\) # ((!\ExtWord~input_o\ & \Y~253_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \Y~187_combout\,
	datad => \Y~253_combout\,
	combout => \Y~254_combout\);

-- Location: IOIBUF_X85_Y73_N1
\C[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(54),
	o => \C[54]~input_o\);

-- Location: LCCOMB_X58_Y37_N30
\SLL64unit|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux9~2_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & ((\AmuxOut[38]~9_combout\))) # (!\B[4]~input_o\ & (\AmuxOut[54]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \AmuxOut[54]~8_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \AmuxOut[38]~9_combout\,
	combout => \SLL64unit|Mux9~2_combout\);

-- Location: LCCOMB_X58_Y37_N4
\SLL64unit|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux9~3_combout\ = (\SLL64unit|Mux9~2_combout\) # ((\B[5]~input_o\ & (!\ExtWord~input_o\ & \SRA64unit|Mux19~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \SLL64unit|Mux9~2_combout\,
	datad => \SRA64unit|Mux19~22_combout\,
	combout => \SLL64unit|Mux9~3_combout\);

-- Location: LCCOMB_X58_Y41_N22
\SLL64unit|Mux73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux73~0_combout\ = (\B[3]~input_o\ & (\SLL64unit|Mux17~1_combout\)) # (!\B[3]~input_o\ & ((\SLL64unit|Mux9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \SLL64unit|Mux17~1_combout\,
	datad => \SLL64unit|Mux9~3_combout\,
	combout => \SLL64unit|Mux73~0_combout\);

-- Location: LCCOMB_X58_Y41_N16
\SLL64unit|Mux73~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux73~1_combout\ = (\B[2]~input_o\ & ((\SLL64unit|Mux77~0_combout\))) # (!\B[2]~input_o\ & (\SLL64unit|Mux73~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux73~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL64unit|Mux77~0_combout\,
	combout => \SLL64unit|Mux73~1_combout\);

-- Location: LCCOMB_X58_Y41_N18
\SLL64unit|Mux190~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~77_combout\ = (\B[1]~input_o\ & ((\SLL64unit|Mux75~1_combout\))) # (!\B[1]~input_o\ & (\SLL64unit|Mux73~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL64unit|Mux73~1_combout\,
	datad => \SLL64unit|Mux75~1_combout\,
	combout => \SLL64unit|Mux190~77_combout\);

-- Location: LCCOMB_X65_Y41_N16
\Y~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~255_combout\ = (\Y~188_combout\ & (((\Y~70_combout\)))) # (!\Y~188_combout\ & ((\Y~70_combout\ & ((\SLL64unit|Mux190~77_combout\))) # (!\Y~70_combout\ & (\C[54]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[54]~input_o\,
	datab => \Y~188_combout\,
	datac => \SLL64unit|Mux190~77_combout\,
	datad => \Y~70_combout\,
	combout => \Y~255_combout\);

-- Location: LCCOMB_X65_Y41_N10
\Y~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~256_combout\ = (\Y~188_combout\ & ((\Y~255_combout\ & ((\SLL64unit|Mux190~76_combout\))) # (!\Y~255_combout\ & (\SRLorSRAout[54]~45_combout\)))) # (!\Y~188_combout\ & (((\Y~255_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~188_combout\,
	datab => \SRLorSRAout[54]~45_combout\,
	datac => \SLL64unit|Mux190~76_combout\,
	datad => \Y~255_combout\,
	combout => \Y~256_combout\);

-- Location: LCCOMB_X65_Y41_N4
\Y~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~257_combout\ = (\Y~187_combout\) # ((!\ExtWord~input_o\ & \Y~256_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \Y~187_combout\,
	datad => \Y~256_combout\,
	combout => \Y~257_combout\);

-- Location: LCCOMB_X59_Y42_N26
\SLL64unit|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux8~2_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & ((\AmuxOut[39]~20_combout\))) # (!\B[4]~input_o\ & (\AmuxOut[55]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \AmuxOut[55]~19_combout\,
	datac => \AmuxOut[39]~20_combout\,
	datad => \ShiftCount[5]~0_combout\,
	combout => \SLL64unit|Mux8~2_combout\);

-- Location: LCCOMB_X63_Y40_N14
\SLL64unit|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux8~3_combout\ = (\SLL64unit|Mux8~2_combout\) # ((\B[5]~input_o\ & (!\ExtWord~input_o\ & \SRA64unit|Mux19~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \SRA64unit|Mux19~23_combout\,
	datad => \SLL64unit|Mux8~2_combout\,
	combout => \SLL64unit|Mux8~3_combout\);

-- Location: LCCOMB_X63_Y40_N4
\SLL64unit|Mux72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux72~0_combout\ = (\B[3]~input_o\ & ((\SLL64unit|Mux16~1_combout\))) # (!\B[3]~input_o\ & (\SLL64unit|Mux8~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL64unit|Mux8~3_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL64unit|Mux16~1_combout\,
	combout => \SLL64unit|Mux72~0_combout\);

-- Location: LCCOMB_X62_Y40_N0
\SLL64unit|Mux72~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux72~1_combout\ = (\B[2]~input_o\ & (\SLL64unit|Mux76~0_combout\)) # (!\B[2]~input_o\ & ((\SLL64unit|Mux72~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux76~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL64unit|Mux72~0_combout\,
	combout => \SLL64unit|Mux72~1_combout\);

-- Location: LCCOMB_X65_Y41_N6
\SLL64unit|Mux190~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~78_combout\ = (\B[1]~input_o\ & (\SLL64unit|Mux74~1_combout\)) # (!\B[1]~input_o\ & ((\SLL64unit|Mux72~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux74~1_combout\,
	datac => \SLL64unit|Mux72~1_combout\,
	datad => \B[1]~input_o\,
	combout => \SLL64unit|Mux190~78_combout\);

-- Location: IOIBUF_X115_Y29_N8
\C[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(55),
	o => \C[55]~input_o\);

-- Location: LCCOMB_X65_Y41_N24
\Y~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~258_combout\ = (\Y~70_combout\ & ((\SLL64unit|Mux190~78_combout\) # ((\Y~188_combout\)))) # (!\Y~70_combout\ & (((\C[55]~input_o\ & !\Y~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux190~78_combout\,
	datab => \Y~70_combout\,
	datac => \C[55]~input_o\,
	datad => \Y~188_combout\,
	combout => \Y~258_combout\);

-- Location: LCCOMB_X65_Y41_N26
\Y~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~259_combout\ = (\Y~188_combout\ & ((\Y~258_combout\ & ((\SLL64unit|Mux190~77_combout\))) # (!\Y~258_combout\ & (\SRLorSRAout[55]~47_combout\)))) # (!\Y~188_combout\ & (((\Y~258_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLorSRAout[55]~47_combout\,
	datab => \Y~188_combout\,
	datac => \SLL64unit|Mux190~77_combout\,
	datad => \Y~258_combout\,
	combout => \Y~259_combout\);

-- Location: LCCOMB_X65_Y41_N12
\Y~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~260_combout\ = (\Y~187_combout\) # ((\Y~259_combout\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~259_combout\,
	datab => \ExtWord~input_o\,
	datac => \Y~187_combout\,
	combout => \Y~260_combout\);

-- Location: IOIBUF_X65_Y73_N8
\C[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(56),
	o => \C[56]~input_o\);

-- Location: LCCOMB_X70_Y38_N0
\SLL64unit|Mux121~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux121~0_combout\ = (\B[3]~input_o\) # ((\B[4]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[5]~input_o\,
	combout => \SLL64unit|Mux121~0_combout\);

-- Location: LCCOMB_X60_Y39_N18
\SLL64unit|Mux121~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux121~1_combout\ = (!\B[3]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datad => \B[3]~input_o\,
	combout => \SLL64unit|Mux121~1_combout\);

-- Location: LCCOMB_X59_Y39_N8
\SLL64unit|Mux123~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux123~0_combout\ = (\SLL64unit|Mux121~0_combout\ & (((\SLL64unit|Mux121~1_combout\)))) # (!\SLL64unit|Mux121~0_combout\ & ((\SLL64unit|Mux121~1_combout\ & ((\AmuxOut[56]~16_combout\))) # (!\SLL64unit|Mux121~1_combout\ & 
-- (\SRA64unit|Mux19~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux19~24_combout\,
	datab => \SLL64unit|Mux121~0_combout\,
	datac => \AmuxOut[56]~16_combout\,
	datad => \SLL64unit|Mux121~1_combout\,
	combout => \SLL64unit|Mux123~0_combout\);

-- Location: LCCOMB_X59_Y39_N18
\SLL64unit|Mux123~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux123~1_combout\ = (\SLL64unit|Mux121~0_combout\ & ((\SLL64unit|Mux123~0_combout\ & (\AmuxOut[40]~17_combout\)) # (!\SLL64unit|Mux123~0_combout\ & ((\SLL64unit|Mux15~3_combout\))))) # (!\SLL64unit|Mux121~0_combout\ & 
-- (((\SLL64unit|Mux123~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[40]~17_combout\,
	datab => \SLL64unit|Mux121~0_combout\,
	datac => \SLL64unit|Mux123~0_combout\,
	datad => \SLL64unit|Mux15~3_combout\,
	combout => \SLL64unit|Mux123~1_combout\);

-- Location: LCCOMB_X59_Y39_N12
\SLL64unit|Mux71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux71~0_combout\ = (\B[2]~input_o\ & ((\SLL64unit|Mux75~0_combout\))) # (!\B[2]~input_o\ & (\SLL64unit|Mux123~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL64unit|Mux123~1_combout\,
	datac => \SLL64unit|Mux75~0_combout\,
	datad => \B[2]~input_o\,
	combout => \SLL64unit|Mux71~0_combout\);

-- Location: LCCOMB_X58_Y41_N4
\SLL64unit|Mux190~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~79_combout\ = (\B[1]~input_o\ & (\SLL64unit|Mux73~1_combout\)) # (!\B[1]~input_o\ & ((\SLL64unit|Mux71~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL64unit|Mux73~1_combout\,
	datac => \SLL64unit|Mux71~0_combout\,
	combout => \SLL64unit|Mux190~79_combout\);

-- Location: LCCOMB_X62_Y41_N0
\Y~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~261_combout\ = (\Y~70_combout\ & (((\SLL64unit|Mux190~79_combout\) # (\Y~188_combout\)))) # (!\Y~70_combout\ & (\C[56]~input_o\ & ((!\Y~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~70_combout\,
	datab => \C[56]~input_o\,
	datac => \SLL64unit|Mux190~79_combout\,
	datad => \Y~188_combout\,
	combout => \Y~261_combout\);

-- Location: LCCOMB_X65_Y41_N30
\Y~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~262_combout\ = (\Y~188_combout\ & ((\Y~261_combout\ & (\SLL64unit|Mux190~78_combout\)) # (!\Y~261_combout\ & ((\SRLorSRAout[56]~49_combout\))))) # (!\Y~188_combout\ & (((\Y~261_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux190~78_combout\,
	datab => \Y~188_combout\,
	datac => \Y~261_combout\,
	datad => \SRLorSRAout[56]~49_combout\,
	combout => \Y~262_combout\);

-- Location: LCCOMB_X65_Y41_N0
\Y~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~263_combout\ = (\Y~187_combout\) # ((\Y~262_combout\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~262_combout\,
	datab => \ExtWord~input_o\,
	datac => \Y~187_combout\,
	combout => \Y~263_combout\);

-- Location: IOIBUF_X62_Y73_N22
\C[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(57),
	o => \C[57]~input_o\);

-- Location: LCCOMB_X59_Y39_N22
\SLL64unit|Mux122~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux122~0_combout\ = (\SLL64unit|Mux121~0_combout\ & (((\SLL64unit|Mux14~3_combout\) # (\SLL64unit|Mux121~1_combout\)))) # (!\SLL64unit|Mux121~0_combout\ & (\SRA64unit|Mux19~25_combout\ & ((!\SLL64unit|Mux121~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux19~25_combout\,
	datab => \SLL64unit|Mux121~0_combout\,
	datac => \SLL64unit|Mux14~3_combout\,
	datad => \SLL64unit|Mux121~1_combout\,
	combout => \SLL64unit|Mux122~0_combout\);

-- Location: LCCOMB_X59_Y39_N0
\SLL64unit|Mux122~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux122~1_combout\ = (\SLL64unit|Mux122~0_combout\ & ((\AmuxOut[41]~26_combout\) # ((!\SLL64unit|Mux121~1_combout\)))) # (!\SLL64unit|Mux122~0_combout\ & (((\AmuxOut[57]~25_combout\ & \SLL64unit|Mux121~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[41]~26_combout\,
	datab => \AmuxOut[57]~25_combout\,
	datac => \SLL64unit|Mux122~0_combout\,
	datad => \SLL64unit|Mux121~1_combout\,
	combout => \SLL64unit|Mux122~1_combout\);

-- Location: LCCOMB_X62_Y40_N2
\SLL64unit|Mux70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux70~0_combout\ = (\B[2]~input_o\ & ((\SLL64unit|Mux74~0_combout\))) # (!\B[2]~input_o\ & (\SLL64unit|Mux122~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \SLL64unit|Mux122~1_combout\,
	datad => \SLL64unit|Mux74~0_combout\,
	combout => \SLL64unit|Mux70~0_combout\);

-- Location: LCCOMB_X62_Y41_N10
\SLL64unit|Mux190~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~80_combout\ = (\B[1]~input_o\ & (\SLL64unit|Mux72~1_combout\)) # (!\B[1]~input_o\ & ((\SLL64unit|Mux70~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL64unit|Mux72~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL64unit|Mux70~0_combout\,
	combout => \SLL64unit|Mux190~80_combout\);

-- Location: LCCOMB_X62_Y41_N12
\Y~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~264_combout\ = (\Y~70_combout\ & ((\Y~188_combout\) # ((\SLL64unit|Mux190~80_combout\)))) # (!\Y~70_combout\ & (!\Y~188_combout\ & (\C[57]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~70_combout\,
	datab => \Y~188_combout\,
	datac => \C[57]~input_o\,
	datad => \SLL64unit|Mux190~80_combout\,
	combout => \Y~264_combout\);

-- Location: LCCOMB_X62_Y41_N22
\Y~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~265_combout\ = (\Y~188_combout\ & ((\Y~264_combout\ & ((\SLL64unit|Mux190~79_combout\))) # (!\Y~264_combout\ & (\SRLorSRAout[57]~51_combout\)))) # (!\Y~188_combout\ & (((\Y~264_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLorSRAout[57]~51_combout\,
	datab => \Y~188_combout\,
	datac => \SLL64unit|Mux190~79_combout\,
	datad => \Y~264_combout\,
	combout => \Y~265_combout\);

-- Location: LCCOMB_X67_Y43_N24
\Y~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~266_combout\ = (\Y~187_combout\) # ((\Y~265_combout\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~265_combout\,
	datab => \Y~187_combout\,
	datad => \ExtWord~input_o\,
	combout => \Y~266_combout\);

-- Location: IOIBUF_X60_Y73_N22
\C[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(58),
	o => \C[58]~input_o\);

-- Location: LCCOMB_X59_Y38_N26
\SLL64unit|Mux121~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux121~2_combout\ = (\SLL64unit|Mux121~0_combout\ & (((\SLL64unit|Mux121~1_combout\)))) # (!\SLL64unit|Mux121~0_combout\ & ((\SLL64unit|Mux121~1_combout\ & ((\AmuxOut[58]~2_combout\))) # (!\SLL64unit|Mux121~1_combout\ & 
-- (\SRA64unit|Mux19~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux121~0_combout\,
	datab => \SRA64unit|Mux19~26_combout\,
	datac => \AmuxOut[58]~2_combout\,
	datad => \SLL64unit|Mux121~1_combout\,
	combout => \SLL64unit|Mux121~2_combout\);

-- Location: LCCOMB_X59_Y38_N4
\SLL64unit|Mux121~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux121~3_combout\ = (\SLL64unit|Mux121~0_combout\ & ((\SLL64unit|Mux121~2_combout\ & ((\AmuxOut[42]~3_combout\))) # (!\SLL64unit|Mux121~2_combout\ & (\SLL64unit|Mux13~3_combout\)))) # (!\SLL64unit|Mux121~0_combout\ & 
-- (((\SLL64unit|Mux121~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux121~0_combout\,
	datab => \SLL64unit|Mux13~3_combout\,
	datac => \SLL64unit|Mux121~2_combout\,
	datad => \AmuxOut[42]~3_combout\,
	combout => \SLL64unit|Mux121~3_combout\);

-- Location: LCCOMB_X58_Y41_N14
\SLL64unit|Mux69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux69~0_combout\ = (\B[2]~input_o\ & (\SLL64unit|Mux73~0_combout\)) # (!\B[2]~input_o\ & ((\SLL64unit|Mux121~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux73~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL64unit|Mux121~3_combout\,
	combout => \SLL64unit|Mux69~0_combout\);

-- Location: LCCOMB_X58_Y41_N0
\SLL64unit|Mux190~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~81_combout\ = (\B[1]~input_o\ & ((\SLL64unit|Mux71~0_combout\))) # (!\B[1]~input_o\ & (\SLL64unit|Mux69~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL64unit|Mux69~0_combout\,
	datac => \SLL64unit|Mux71~0_combout\,
	combout => \SLL64unit|Mux190~81_combout\);

-- Location: LCCOMB_X62_Y41_N8
\Y~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~267_combout\ = (\Y~70_combout\ & ((\Y~188_combout\) # ((\SLL64unit|Mux190~81_combout\)))) # (!\Y~70_combout\ & (!\Y~188_combout\ & (\C[58]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~70_combout\,
	datab => \Y~188_combout\,
	datac => \C[58]~input_o\,
	datad => \SLL64unit|Mux190~81_combout\,
	combout => \Y~267_combout\);

-- Location: LCCOMB_X62_Y41_N18
\Y~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~268_combout\ = (\Y~267_combout\ & ((\SLL64unit|Mux190~80_combout\) # ((!\Y~188_combout\)))) # (!\Y~267_combout\ & (((\SRLorSRAout[58]~53_combout\ & \Y~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux190~80_combout\,
	datab => \SRLorSRAout[58]~53_combout\,
	datac => \Y~267_combout\,
	datad => \Y~188_combout\,
	combout => \Y~268_combout\);

-- Location: LCCOMB_X67_Y43_N10
\Y~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~269_combout\ = (\Y~187_combout\) # ((\Y~268_combout\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~268_combout\,
	datab => \Y~187_combout\,
	datad => \ExtWord~input_o\,
	combout => \Y~269_combout\);

-- Location: IOIBUF_X0_Y44_N15
\C[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(59),
	o => \C[59]~input_o\);

-- Location: LCCOMB_X59_Y39_N10
\SLL64unit|Mux120~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux120~0_combout\ = (\SLL64unit|Mux121~1_combout\ & (((\SLL64unit|Mux121~0_combout\)))) # (!\SLL64unit|Mux121~1_combout\ & ((\SLL64unit|Mux121~0_combout\ & ((\SLL64unit|Mux12~3_combout\))) # (!\SLL64unit|Mux121~0_combout\ & 
-- (\SRA64unit|Mux19~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux19~27_combout\,
	datab => \SLL64unit|Mux121~1_combout\,
	datac => \SLL64unit|Mux12~3_combout\,
	datad => \SLL64unit|Mux121~0_combout\,
	combout => \SLL64unit|Mux120~0_combout\);

-- Location: LCCOMB_X59_Y39_N28
\SLL64unit|Mux120~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux120~1_combout\ = (\SLL64unit|Mux120~0_combout\ & ((\AmuxOut[43]~22_combout\) # ((!\SLL64unit|Mux121~1_combout\)))) # (!\SLL64unit|Mux120~0_combout\ & (((\AmuxOut[59]~21_combout\ & \SLL64unit|Mux121~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux120~0_combout\,
	datab => \AmuxOut[43]~22_combout\,
	datac => \AmuxOut[59]~21_combout\,
	datad => \SLL64unit|Mux121~1_combout\,
	combout => \SLL64unit|Mux120~1_combout\);

-- Location: LCCOMB_X62_Y40_N12
\SLL64unit|Mux68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux68~0_combout\ = (\B[2]~input_o\ & ((\SLL64unit|Mux72~0_combout\))) # (!\B[2]~input_o\ & (\SLL64unit|Mux120~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \SLL64unit|Mux120~1_combout\,
	datad => \SLL64unit|Mux72~0_combout\,
	combout => \SLL64unit|Mux68~0_combout\);

-- Location: LCCOMB_X62_Y41_N20
\SLL64unit|Mux190~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~82_combout\ = (\B[1]~input_o\ & ((\SLL64unit|Mux70~0_combout\))) # (!\B[1]~input_o\ & (\SLL64unit|Mux68~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux68~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL64unit|Mux70~0_combout\,
	combout => \SLL64unit|Mux190~82_combout\);

-- Location: LCCOMB_X62_Y41_N14
\Y~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~270_combout\ = (\Y~188_combout\ & (((\Y~70_combout\)))) # (!\Y~188_combout\ & ((\Y~70_combout\ & ((\SLL64unit|Mux190~82_combout\))) # (!\Y~70_combout\ & (\C[59]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[59]~input_o\,
	datab => \Y~188_combout\,
	datac => \Y~70_combout\,
	datad => \SLL64unit|Mux190~82_combout\,
	combout => \Y~270_combout\);

-- Location: LCCOMB_X62_Y41_N16
\Y~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~271_combout\ = (\Y~270_combout\ & (((\SLL64unit|Mux190~81_combout\) # (!\Y~188_combout\)))) # (!\Y~270_combout\ & (\SRLorSRAout[59]~55_combout\ & ((\Y~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLorSRAout[59]~55_combout\,
	datab => \SLL64unit|Mux190~81_combout\,
	datac => \Y~270_combout\,
	datad => \Y~188_combout\,
	combout => \Y~271_combout\);

-- Location: LCCOMB_X73_Y41_N4
\Y~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~272_combout\ = (\Y~187_combout\) # ((\Y~271_combout\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y~271_combout\,
	datac => \Y~187_combout\,
	datad => \ExtWord~input_o\,
	combout => \Y~272_combout\);

-- Location: IOIBUF_X35_Y73_N15
\C[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(60),
	o => \C[60]~input_o\);

-- Location: LCCOMB_X59_Y39_N6
\SLL64unit|Mux67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux67~0_combout\ = (\SLL64unit|Mux121~0_combout\ & (((\SLL64unit|Mux121~1_combout\)))) # (!\SLL64unit|Mux121~0_combout\ & ((\SLL64unit|Mux121~1_combout\ & ((\AmuxOut[60]~14_combout\))) # (!\SLL64unit|Mux121~1_combout\ & 
-- (\SRA64unit|Mux19~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64unit|Mux19~28_combout\,
	datab => \SLL64unit|Mux121~0_combout\,
	datac => \AmuxOut[60]~14_combout\,
	datad => \SLL64unit|Mux121~1_combout\,
	combout => \SLL64unit|Mux67~0_combout\);

-- Location: LCCOMB_X59_Y39_N24
\SLL64unit|Mux67~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux67~1_combout\ = (\SLL64unit|Mux67~0_combout\ & (((\AmuxOut[44]~15_combout\)) # (!\SLL64unit|Mux121~0_combout\))) # (!\SLL64unit|Mux67~0_combout\ & (\SLL64unit|Mux121~0_combout\ & ((\SLL64unit|Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux67~0_combout\,
	datab => \SLL64unit|Mux121~0_combout\,
	datac => \AmuxOut[44]~15_combout\,
	datad => \SLL64unit|Mux11~3_combout\,
	combout => \SLL64unit|Mux67~1_combout\);

-- Location: LCCOMB_X59_Y39_N2
\SLL64unit|Mux190~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~83_combout\ = (\B[2]~input_o\ & ((\SLL64unit|Mux123~1_combout\))) # (!\B[2]~input_o\ & (\SLL64unit|Mux67~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL64unit|Mux67~1_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL64unit|Mux123~1_combout\,
	combout => \SLL64unit|Mux190~83_combout\);

-- Location: LCCOMB_X58_Y41_N26
\SLL64unit|Mux190~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~84_combout\ = (\B[1]~input_o\ & ((\SLL64unit|Mux69~0_combout\))) # (!\B[1]~input_o\ & (\SLL64unit|Mux190~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL64unit|Mux190~83_combout\,
	datac => \SLL64unit|Mux69~0_combout\,
	combout => \SLL64unit|Mux190~84_combout\);

-- Location: LCCOMB_X62_Y41_N2
\Y~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~273_combout\ = (\Y~188_combout\ & (((\Y~70_combout\)))) # (!\Y~188_combout\ & ((\Y~70_combout\ & ((\SLL64unit|Mux190~84_combout\))) # (!\Y~70_combout\ & (\C[60]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[60]~input_o\,
	datab => \Y~188_combout\,
	datac => \Y~70_combout\,
	datad => \SLL64unit|Mux190~84_combout\,
	combout => \Y~273_combout\);

-- Location: LCCOMB_X62_Y41_N4
\Y~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~274_combout\ = (\Y~273_combout\ & (((\SLL64unit|Mux190~82_combout\)) # (!\Y~188_combout\))) # (!\Y~273_combout\ & (\Y~188_combout\ & (\SRLorSRAout[60]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~273_combout\,
	datab => \Y~188_combout\,
	datac => \SRLorSRAout[60]~57_combout\,
	datad => \SLL64unit|Mux190~82_combout\,
	combout => \Y~274_combout\);

-- Location: LCCOMB_X73_Y41_N22
\Y~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~275_combout\ = (\Y~187_combout\) # ((\Y~274_combout\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y~187_combout\,
	datac => \Y~274_combout\,
	datad => \ExtWord~input_o\,
	combout => \Y~275_combout\);

-- Location: IOIBUF_X62_Y73_N15
\C[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(61),
	o => \C[61]~input_o\);

-- Location: LCCOMB_X59_Y39_N4
\SLL64unit|Mux66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux66~0_combout\ = (\SLL64unit|Mux121~0_combout\ & ((\SLL64unit|Mux10~3_combout\) # ((\SLL64unit|Mux121~1_combout\)))) # (!\SLL64unit|Mux121~0_combout\ & (((\SRA64unit|Mux19~29_combout\ & !\SLL64unit|Mux121~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux10~3_combout\,
	datab => \SLL64unit|Mux121~0_combout\,
	datac => \SRA64unit|Mux19~29_combout\,
	datad => \SLL64unit|Mux121~1_combout\,
	combout => \SLL64unit|Mux66~0_combout\);

-- Location: LCCOMB_X59_Y39_N14
\SLL64unit|Mux66~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux66~1_combout\ = (\SLL64unit|Mux121~1_combout\ & ((\SLL64unit|Mux66~0_combout\ & ((\AmuxOut[45]~30_combout\))) # (!\SLL64unit|Mux66~0_combout\ & (\AmuxOut[61]~29_combout\)))) # (!\SLL64unit|Mux121~1_combout\ & 
-- (((\SLL64unit|Mux66~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[61]~29_combout\,
	datab => \SLL64unit|Mux121~1_combout\,
	datac => \SLL64unit|Mux66~0_combout\,
	datad => \AmuxOut[45]~30_combout\,
	combout => \SLL64unit|Mux66~1_combout\);

-- Location: LCCOMB_X62_Y40_N14
\SLL64unit|Mux190~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~85_combout\ = (!\B[1]~input_o\ & ((\B[2]~input_o\ & (\SLL64unit|Mux122~1_combout\)) # (!\B[2]~input_o\ & ((\SLL64unit|Mux66~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux122~1_combout\,
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \SLL64unit|Mux66~1_combout\,
	combout => \SLL64unit|Mux190~85_combout\);

-- Location: LCCOMB_X62_Y41_N6
\SLL64unit|Mux190~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~86_combout\ = (\SLL64unit|Mux190~85_combout\) # ((\B[1]~input_o\ & \SLL64unit|Mux68~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux190~85_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL64unit|Mux68~0_combout\,
	combout => \SLL64unit|Mux190~86_combout\);

-- Location: LCCOMB_X62_Y41_N24
\Y~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~276_combout\ = (\Y~70_combout\ & ((\Y~188_combout\) # ((\SLL64unit|Mux190~86_combout\)))) # (!\Y~70_combout\ & (!\Y~188_combout\ & (\C[61]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~70_combout\,
	datab => \Y~188_combout\,
	datac => \C[61]~input_o\,
	datad => \SLL64unit|Mux190~86_combout\,
	combout => \Y~276_combout\);

-- Location: LCCOMB_X62_Y41_N26
\Y~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~277_combout\ = (\Y~188_combout\ & ((\Y~276_combout\ & ((\SLL64unit|Mux190~84_combout\))) # (!\Y~276_combout\ & (\SRLorSRAout[61]~59_combout\)))) # (!\Y~188_combout\ & (((\Y~276_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLorSRAout[61]~59_combout\,
	datab => \Y~188_combout\,
	datac => \SLL64unit|Mux190~84_combout\,
	datad => \Y~276_combout\,
	combout => \Y~277_combout\);

-- Location: LCCOMB_X60_Y41_N28
\Y~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~278_combout\ = (\Y~187_combout\) # ((!\ExtWord~input_o\ & \Y~277_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \Y~187_combout\,
	datad => \Y~277_combout\,
	combout => \Y~278_combout\);

-- Location: LCCOMB_X58_Y41_N20
\SLL64unit|Mux190~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~87_combout\ = (\B[2]~input_o\ & \SLL64unit|Mux121~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \SLL64unit|Mux121~3_combout\,
	combout => \SLL64unit|Mux190~87_combout\);

-- Location: LCCOMB_X57_Y37_N12
\SLL64unit|Mux190~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~88_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & ((\AmuxOut[46]~7_combout\))) # (!\B[4]~input_o\ & (\AmuxOut[62]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \AmuxOut[62]~6_combout\,
	datac => \AmuxOut[46]~7_combout\,
	datad => \B[4]~input_o\,
	combout => \SLL64unit|Mux190~88_combout\);

-- Location: LCCOMB_X58_Y37_N24
\SLL64unit|Mux190~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~89_combout\ = (!\B[3]~input_o\ & ((\SLL64unit|Mux190~88_combout\) # ((\SRA64unit|Mux19~30_combout\ & !\ShiftCount[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux190~88_combout\,
	datab => \B[3]~input_o\,
	datac => \SRA64unit|Mux19~30_combout\,
	datad => \ShiftCount[5]~0_combout\,
	combout => \SLL64unit|Mux190~89_combout\);

-- Location: LCCOMB_X58_Y37_N26
\SLL64unit|Mux190~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~90_combout\ = (!\B[2]~input_o\ & ((\SLL64unit|Mux190~89_combout\) # ((\B[3]~input_o\ & \SLL64unit|Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux190~89_combout\,
	datab => \B[3]~input_o\,
	datac => \SLL64unit|Mux9~3_combout\,
	datad => \B[2]~input_o\,
	combout => \SLL64unit|Mux190~90_combout\);

-- Location: LCCOMB_X58_Y41_N6
\SLL64unit|Mux190~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux190~91_combout\ = (\B[1]~input_o\ & (((\SLL64unit|Mux190~83_combout\)))) # (!\B[1]~input_o\ & ((\SLL64unit|Mux190~87_combout\) # ((\SLL64unit|Mux190~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL64unit|Mux190~87_combout\,
	datac => \SLL64unit|Mux190~83_combout\,
	datad => \SLL64unit|Mux190~90_combout\,
	combout => \SLL64unit|Mux190~91_combout\);

-- Location: IOIBUF_X38_Y73_N1
\C[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(62),
	o => \C[62]~input_o\);

-- Location: LCCOMB_X62_Y41_N28
\Y~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~279_combout\ = (\Y~188_combout\ & (((\Y~70_combout\)))) # (!\Y~188_combout\ & ((\Y~70_combout\ & (\SLL64unit|Mux190~91_combout\)) # (!\Y~70_combout\ & ((\C[62]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux190~91_combout\,
	datab => \Y~188_combout\,
	datac => \Y~70_combout\,
	datad => \C[62]~input_o\,
	combout => \Y~279_combout\);

-- Location: LCCOMB_X62_Y41_N30
\Y~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~280_combout\ = (\Y~188_combout\ & ((\Y~279_combout\ & (\SLL64unit|Mux190~86_combout\)) # (!\Y~279_combout\ & ((\SRLorSRAout[62]~64_combout\))))) # (!\Y~188_combout\ & (((\Y~279_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux190~86_combout\,
	datab => \Y~188_combout\,
	datac => \SRLorSRAout[62]~64_combout\,
	datad => \Y~279_combout\,
	combout => \Y~280_combout\);

-- Location: LCCOMB_X60_Y39_N28
\Y~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~281_combout\ = (\Y~187_combout\) # ((!\ExtWord~input_o\ & \Y~280_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y~187_combout\,
	datac => \ExtWord~input_o\,
	datad => \Y~280_combout\,
	combout => \Y~281_combout\);

-- Location: LCCOMB_X63_Y40_N22
\SLL64unit|Mux128~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux128~1_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\AmuxOut[47]~18_combout\)) # (!\B[4]~input_o\ & ((\AmuxOut[63]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AmuxOut[47]~18_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \AmuxOut[63]~1_combout\,
	datad => \B[4]~input_o\,
	combout => \SLL64unit|Mux128~1_combout\);

-- Location: LCCOMB_X63_Y40_N16
\SLL64unit|Mux128~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux128~2_combout\ = (!\B[3]~input_o\ & ((\SLL64unit|Mux128~1_combout\) # ((!\ShiftCount[5]~0_combout\ & \SRA64unit|Mux19~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux128~1_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64unit|Mux19~31_combout\,
	combout => \SLL64unit|Mux128~2_combout\);

-- Location: LCCOMB_X63_Y40_N26
\SLL64unit|Mux128~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux128~3_combout\ = (!\B[2]~input_o\ & ((\SLL64unit|Mux128~2_combout\) # ((\B[3]~input_o\ & \SLL64unit|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux128~2_combout\,
	datab => \B[3]~input_o\,
	datac => \SLL64unit|Mux8~3_combout\,
	datad => \B[2]~input_o\,
	combout => \SLL64unit|Mux128~3_combout\);

-- Location: LCCOMB_X62_Y40_N10
\SLL64unit|Mux128~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux128~4_combout\ = (!\B[1]~input_o\ & ((\SLL64unit|Mux128~3_combout\) # ((\SLL64unit|Mux120~1_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux120~1_combout\,
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \SLL64unit|Mux128~3_combout\,
	combout => \SLL64unit|Mux128~4_combout\);

-- Location: LCCOMB_X62_Y40_N16
\SLL64unit|Mux128~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux128~0_combout\ = (\B[1]~input_o\ & ((\B[2]~input_o\ & (\SLL64unit|Mux122~1_combout\)) # (!\B[2]~input_o\ & ((\SLL64unit|Mux66~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux122~1_combout\,
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \SLL64unit|Mux66~1_combout\,
	combout => \SLL64unit|Mux128~0_combout\);

-- Location: LCCOMB_X62_Y40_N20
\SLL64unit|Mux128~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64unit|Mux128~5_combout\ = (\B[0]~input_o\ & (((\SLL64unit|Mux190~91_combout\)))) # (!\B[0]~input_o\ & ((\SLL64unit|Mux128~4_combout\) # ((\SLL64unit|Mux128~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64unit|Mux128~4_combout\,
	datab => \SLL64unit|Mux190~91_combout\,
	datac => \B[0]~input_o\,
	datad => \SLL64unit|Mux128~0_combout\,
	combout => \SLL64unit|Mux128~5_combout\);

-- Location: IOIBUF_X115_Y25_N22
\C[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(63),
	o => \C[63]~input_o\);

-- Location: LCCOMB_X69_Y36_N10
\SRLorSRAoutEXT[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAoutEXT[0]~4_combout\ = (!\ExtWord~input_o\ & ((\ShiftFN[0]~input_o\ & (\SLL64unit|Mux128~5_combout\)) # (!\ShiftFN[0]~input_o\ & ((\C[63]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SLL64unit|Mux128~5_combout\,
	datac => \ExtWord~input_o\,
	datad => \C[63]~input_o\,
	combout => \SRLorSRAoutEXT[0]~4_combout\);

-- Location: LCCOMB_X69_Y36_N24
\SRLorSRAoutEXT[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAoutEXT[0]~3_combout\ = (\CorSLLoutEXT[31]~2_combout\ & \ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CorSLLoutEXT[31]~2_combout\,
	datac => \ExtWord~input_o\,
	combout => \SRLorSRAoutEXT[0]~3_combout\);

-- Location: LCCOMB_X69_Y36_N4
\SRLorSRAoutEXT[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLorSRAoutEXT[0]~5_combout\ = (\ShiftFN[1]~input_o\ & (((\SRLorSRAoutEXT[63]~0_combout\)))) # (!\ShiftFN[1]~input_o\ & ((\SRLorSRAoutEXT[0]~4_combout\) # ((\SRLorSRAoutEXT[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLorSRAoutEXT[0]~4_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \SRLorSRAoutEXT[63]~0_combout\,
	datad => \SRLorSRAoutEXT[0]~3_combout\,
	combout => \SRLorSRAoutEXT[0]~5_combout\);

-- Location: IOIBUF_X0_Y68_N8
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X1_Y73_N8
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X115_Y65_N15
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X0_Y15_N15
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X20_Y73_N8
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X0_Y48_N1
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X115_Y64_N1
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X85_Y0_N1
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X100_Y0_N22
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X94_Y0_N8
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X100_Y0_N15
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X89_Y0_N22
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X113_Y0_N8
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X115_Y63_N1
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X105_Y0_N15
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X107_Y73_N8
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X115_Y23_N8
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X20_Y73_N15
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X0_Y33_N15
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X0_Y13_N8
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X0_Y27_N15
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X89_Y0_N15
\B[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\B[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: IOIBUF_X107_Y73_N15
\B[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: IOIBUF_X91_Y0_N15
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\B[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: IOIBUF_X115_Y16_N1
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: IOIBUF_X0_Y55_N22
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: IOIBUF_X109_Y0_N1
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: IOIBUF_X0_Y69_N8
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: IOIBUF_X0_Y44_N8
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: IOIBUF_X0_Y15_N22
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: IOIBUF_X16_Y73_N8
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: IOIBUF_X0_Y4_N1
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: IOIBUF_X85_Y0_N8
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: IOIBUF_X0_Y52_N15
\B[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: IOIBUF_X0_Y22_N22
\B[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: IOIBUF_X16_Y73_N22
\B[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: IOIBUF_X115_Y67_N15
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: IOIBUF_X0_Y12_N22
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: IOIBUF_X0_Y4_N8
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: IOIBUF_X0_Y59_N22
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: IOIBUF_X107_Y73_N22
\B[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: IOIBUF_X115_Y62_N15
\B[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: IOIBUF_X0_Y57_N22
\B[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: IOIBUF_X33_Y0_N1
\B[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: IOIBUF_X94_Y0_N1
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: IOIBUF_X102_Y0_N15
\B[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

ww_Y(0) <= \Y[0]~output_o\;

ww_Y(1) <= \Y[1]~output_o\;

ww_Y(2) <= \Y[2]~output_o\;

ww_Y(3) <= \Y[3]~output_o\;

ww_Y(4) <= \Y[4]~output_o\;

ww_Y(5) <= \Y[5]~output_o\;

ww_Y(6) <= \Y[6]~output_o\;

ww_Y(7) <= \Y[7]~output_o\;

ww_Y(8) <= \Y[8]~output_o\;

ww_Y(9) <= \Y[9]~output_o\;

ww_Y(10) <= \Y[10]~output_o\;

ww_Y(11) <= \Y[11]~output_o\;

ww_Y(12) <= \Y[12]~output_o\;

ww_Y(13) <= \Y[13]~output_o\;

ww_Y(14) <= \Y[14]~output_o\;

ww_Y(15) <= \Y[15]~output_o\;

ww_Y(16) <= \Y[16]~output_o\;

ww_Y(17) <= \Y[17]~output_o\;

ww_Y(18) <= \Y[18]~output_o\;

ww_Y(19) <= \Y[19]~output_o\;

ww_Y(20) <= \Y[20]~output_o\;

ww_Y(21) <= \Y[21]~output_o\;

ww_Y(22) <= \Y[22]~output_o\;

ww_Y(23) <= \Y[23]~output_o\;

ww_Y(24) <= \Y[24]~output_o\;

ww_Y(25) <= \Y[25]~output_o\;

ww_Y(26) <= \Y[26]~output_o\;

ww_Y(27) <= \Y[27]~output_o\;

ww_Y(28) <= \Y[28]~output_o\;

ww_Y(29) <= \Y[29]~output_o\;

ww_Y(30) <= \Y[30]~output_o\;

ww_Y(31) <= \Y[31]~output_o\;

ww_Y(32) <= \Y[32]~output_o\;

ww_Y(33) <= \Y[33]~output_o\;

ww_Y(34) <= \Y[34]~output_o\;

ww_Y(35) <= \Y[35]~output_o\;

ww_Y(36) <= \Y[36]~output_o\;

ww_Y(37) <= \Y[37]~output_o\;

ww_Y(38) <= \Y[38]~output_o\;

ww_Y(39) <= \Y[39]~output_o\;

ww_Y(40) <= \Y[40]~output_o\;

ww_Y(41) <= \Y[41]~output_o\;

ww_Y(42) <= \Y[42]~output_o\;

ww_Y(43) <= \Y[43]~output_o\;

ww_Y(44) <= \Y[44]~output_o\;

ww_Y(45) <= \Y[45]~output_o\;

ww_Y(46) <= \Y[46]~output_o\;

ww_Y(47) <= \Y[47]~output_o\;

ww_Y(48) <= \Y[48]~output_o\;

ww_Y(49) <= \Y[49]~output_o\;

ww_Y(50) <= \Y[50]~output_o\;

ww_Y(51) <= \Y[51]~output_o\;

ww_Y(52) <= \Y[52]~output_o\;

ww_Y(53) <= \Y[53]~output_o\;

ww_Y(54) <= \Y[54]~output_o\;

ww_Y(55) <= \Y[55]~output_o\;

ww_Y(56) <= \Y[56]~output_o\;

ww_Y(57) <= \Y[57]~output_o\;

ww_Y(58) <= \Y[58]~output_o\;

ww_Y(59) <= \Y[59]~output_o\;

ww_Y(60) <= \Y[60]~output_o\;

ww_Y(61) <= \Y[61]~output_o\;

ww_Y(62) <= \Y[62]~output_o\;

ww_Y(63) <= \Y[63]~output_o\;
END structure;


