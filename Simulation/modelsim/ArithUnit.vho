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

-- DATE "04/09/2020 18:38:13"

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

ENTITY 	ArithUnit IS
    PORT (
	A : IN std_logic_vector(63 DOWNTO 0);
	B : IN std_logic_vector(63 DOWNTO 0);
	AddY : OUT std_logic_vector(63 DOWNTO 0);
	Y : OUT std_logic_vector(63 DOWNTO 0);
	NotA : IN std_logic;
	AddnSub : IN std_logic;
	ExtWord : IN std_logic;
	Cout : OUT std_logic;
	Ovfl : OUT std_logic;
	Zero : OUT std_logic;
	AltB : OUT std_logic;
	AltBu : OUT std_logic
	);
END ArithUnit;

-- Design Ports Information
-- AddY[0]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[1]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[2]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[3]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[4]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[5]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[6]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[7]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[8]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[9]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[10]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[11]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[12]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[13]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[14]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[15]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[16]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[17]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[18]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[19]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[20]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[21]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[22]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[23]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[24]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[25]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[26]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[27]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[28]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[29]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[30]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[31]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[32]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[33]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[34]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[35]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[36]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[37]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[38]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[39]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[40]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[41]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[42]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[43]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[44]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[45]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[46]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[47]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[48]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[49]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[50]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[51]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[52]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[53]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[54]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[55]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[56]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[57]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[58]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[59]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[60]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[61]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[62]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[63]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[32]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[33]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[34]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[35]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[36]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[37]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[38]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[39]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[40]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[41]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[42]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[43]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[44]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[45]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[46]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[47]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[48]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[49]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[50]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[51]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[52]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[53]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[54]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[55]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[56]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[57]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[58]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[59]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[60]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[61]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[62]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[63]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltB	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltBu	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NotA	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddnSub	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ArithUnit IS
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
SIGNAL ww_AddY : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_NotA : std_logic;
SIGNAL ww_AddnSub : std_logic;
SIGNAL ww_ExtWord : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_Ovfl : std_logic;
SIGNAL ww_Zero : std_logic;
SIGNAL ww_AltB : std_logic;
SIGNAL ww_AltBu : std_logic;
SIGNAL \AddY[0]~output_o\ : std_logic;
SIGNAL \AddY[1]~output_o\ : std_logic;
SIGNAL \AddY[2]~output_o\ : std_logic;
SIGNAL \AddY[3]~output_o\ : std_logic;
SIGNAL \AddY[4]~output_o\ : std_logic;
SIGNAL \AddY[5]~output_o\ : std_logic;
SIGNAL \AddY[6]~output_o\ : std_logic;
SIGNAL \AddY[7]~output_o\ : std_logic;
SIGNAL \AddY[8]~output_o\ : std_logic;
SIGNAL \AddY[9]~output_o\ : std_logic;
SIGNAL \AddY[10]~output_o\ : std_logic;
SIGNAL \AddY[11]~output_o\ : std_logic;
SIGNAL \AddY[12]~output_o\ : std_logic;
SIGNAL \AddY[13]~output_o\ : std_logic;
SIGNAL \AddY[14]~output_o\ : std_logic;
SIGNAL \AddY[15]~output_o\ : std_logic;
SIGNAL \AddY[16]~output_o\ : std_logic;
SIGNAL \AddY[17]~output_o\ : std_logic;
SIGNAL \AddY[18]~output_o\ : std_logic;
SIGNAL \AddY[19]~output_o\ : std_logic;
SIGNAL \AddY[20]~output_o\ : std_logic;
SIGNAL \AddY[21]~output_o\ : std_logic;
SIGNAL \AddY[22]~output_o\ : std_logic;
SIGNAL \AddY[23]~output_o\ : std_logic;
SIGNAL \AddY[24]~output_o\ : std_logic;
SIGNAL \AddY[25]~output_o\ : std_logic;
SIGNAL \AddY[26]~output_o\ : std_logic;
SIGNAL \AddY[27]~output_o\ : std_logic;
SIGNAL \AddY[28]~output_o\ : std_logic;
SIGNAL \AddY[29]~output_o\ : std_logic;
SIGNAL \AddY[30]~output_o\ : std_logic;
SIGNAL \AddY[31]~output_o\ : std_logic;
SIGNAL \AddY[32]~output_o\ : std_logic;
SIGNAL \AddY[33]~output_o\ : std_logic;
SIGNAL \AddY[34]~output_o\ : std_logic;
SIGNAL \AddY[35]~output_o\ : std_logic;
SIGNAL \AddY[36]~output_o\ : std_logic;
SIGNAL \AddY[37]~output_o\ : std_logic;
SIGNAL \AddY[38]~output_o\ : std_logic;
SIGNAL \AddY[39]~output_o\ : std_logic;
SIGNAL \AddY[40]~output_o\ : std_logic;
SIGNAL \AddY[41]~output_o\ : std_logic;
SIGNAL \AddY[42]~output_o\ : std_logic;
SIGNAL \AddY[43]~output_o\ : std_logic;
SIGNAL \AddY[44]~output_o\ : std_logic;
SIGNAL \AddY[45]~output_o\ : std_logic;
SIGNAL \AddY[46]~output_o\ : std_logic;
SIGNAL \AddY[47]~output_o\ : std_logic;
SIGNAL \AddY[48]~output_o\ : std_logic;
SIGNAL \AddY[49]~output_o\ : std_logic;
SIGNAL \AddY[50]~output_o\ : std_logic;
SIGNAL \AddY[51]~output_o\ : std_logic;
SIGNAL \AddY[52]~output_o\ : std_logic;
SIGNAL \AddY[53]~output_o\ : std_logic;
SIGNAL \AddY[54]~output_o\ : std_logic;
SIGNAL \AddY[55]~output_o\ : std_logic;
SIGNAL \AddY[56]~output_o\ : std_logic;
SIGNAL \AddY[57]~output_o\ : std_logic;
SIGNAL \AddY[58]~output_o\ : std_logic;
SIGNAL \AddY[59]~output_o\ : std_logic;
SIGNAL \AddY[60]~output_o\ : std_logic;
SIGNAL \AddY[61]~output_o\ : std_logic;
SIGNAL \AddY[62]~output_o\ : std_logic;
SIGNAL \AddY[63]~output_o\ : std_logic;
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
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \Ovfl~output_o\ : std_logic;
SIGNAL \Zero~output_o\ : std_logic;
SIGNAL \AltB~output_o\ : std_logic;
SIGNAL \AltBu~output_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \NotA~input_o\ : std_logic;
SIGNAL \Adder64|Y[0]~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Ain[1]~0_combout\ : std_logic;
SIGNAL \AddnSub~input_o\ : std_logic;
SIGNAL \Adder64|Carry[1]~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \Ain[2]~1_combout\ : std_logic;
SIGNAL \Adder64|Carry[2]~1_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Ain[3]~2_combout\ : std_logic;
SIGNAL \Adder64|Carry[3]~2_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Adder64|Carry[4]~3_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \Ain[4]~3_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \Adder64|Carry[5]~4_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \Ain[5]~4_combout\ : std_logic;
SIGNAL \Adder64|Carry[6]~5_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \Ain[6]~5_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \Ain[7]~6_combout\ : std_logic;
SIGNAL \Adder64|Carry[7]~6_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \Ain[8]~7_combout\ : std_logic;
SIGNAL \Adder64|Carry[8]~7_combout\ : std_logic;
SIGNAL \Adder64|Carry[9]~8_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \Ain[9]~8_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \Adder64|Carry[10]~9_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \Ain[10]~9_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \Adder64|Carry[11]~10_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \Ain[11]~10_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \Ain[12]~11_combout\ : std_logic;
SIGNAL \Adder64|Carry[12]~11_combout\ : std_logic;
SIGNAL \Adder64|Carry[13]~12_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \Ain[13]~12_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \Adder64|Carry[14]~13_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \Ain[14]~13_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \Ain[15]~14_combout\ : std_logic;
SIGNAL \Adder64|Carry[15]~14_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \Ain[16]~15_combout\ : std_logic;
SIGNAL \Adder64|Carry[16]~15_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \Ain[17]~16_combout\ : std_logic;
SIGNAL \Adder64|Carry[17]~16_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \Adder64|Carry[18]~17_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \Ain[18]~17_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \Ain[19]~18_combout\ : std_logic;
SIGNAL \Adder64|Carry[19]~18_combout\ : std_logic;
SIGNAL \Adder64|Carry[20]~19_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \Ain[20]~19_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \Adder64|Carry[21]~20_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \Ain[21]~20_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \Ain[22]~21_combout\ : std_logic;
SIGNAL \Adder64|Carry[22]~21_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \Ain[23]~22_combout\ : std_logic;
SIGNAL \Adder64|Carry[23]~22_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \Adder64|Carry[24]~23_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \Ain[24]~23_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \Ain[25]~24_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \Adder64|Carry[25]~24_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \Ain[26]~25_combout\ : std_logic;
SIGNAL \Adder64|Carry[26]~25_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \Ain[27]~26_combout\ : std_logic;
SIGNAL \Adder64|Carry[27]~26_combout\ : std_logic;
SIGNAL \Adder64|Carry[28]~27_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \Ain[28]~27_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \Adder64|Carry[29]~28_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \Ain[29]~28_combout\ : std_logic;
SIGNAL \Adder64|Carry[30]~29_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \Ain[30]~29_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \Ain[31]~30_combout\ : std_logic;
SIGNAL \Adder64|Carry[31]~30_combout\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \Ain[32]~31_combout\ : std_logic;
SIGNAL \Adder64|Carry[32]~31_combout\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \Adder64|Carry[33]~32_combout\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \Ain[33]~32_combout\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \Adder64|Carry[34]~33_combout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \Ain[34]~33_combout\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \Adder64|Carry[35]~34_combout\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \Ain[35]~34_combout\ : std_logic;
SIGNAL \Adder64|Carry[36]~35_combout\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \Ain[36]~35_combout\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \Ain[37]~36_combout\ : std_logic;
SIGNAL \Adder64|Carry[37]~36_combout\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \Adder64|Carry[38]~37_combout\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \Ain[38]~37_combout\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \Ain[39]~38_combout\ : std_logic;
SIGNAL \Adder64|Carry[39]~38_combout\ : std_logic;
SIGNAL \Adder64|Carry[40]~39_combout\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \Ain[40]~39_combout\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \Adder64|Carry[41]~40_combout\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \Ain[41]~40_combout\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \Ain[42]~41_combout\ : std_logic;
SIGNAL \Adder64|Carry[42]~41_combout\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \Ain[43]~42_combout\ : std_logic;
SIGNAL \Adder64|Carry[43]~42_combout\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \Ain[44]~43_combout\ : std_logic;
SIGNAL \Adder64|Carry[44]~43_combout\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \Adder64|Carry[45]~44_combout\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \Ain[45]~44_combout\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \Ain[46]~45_combout\ : std_logic;
SIGNAL \Adder64|Carry[46]~45_combout\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \Ain[47]~46_combout\ : std_logic;
SIGNAL \Adder64|Carry[47]~46_combout\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \Ain[48]~47_combout\ : std_logic;
SIGNAL \Adder64|Carry[48]~47_combout\ : std_logic;
SIGNAL \Adder64|Carry[49]~48_combout\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \Ain[49]~48_combout\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \Ain[50]~49_combout\ : std_logic;
SIGNAL \Adder64|Carry[50]~49_combout\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \Ain[51]~50_combout\ : std_logic;
SIGNAL \Adder64|Carry[51]~50_combout\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \Adder64|Carry[52]~51_combout\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \Ain[52]~51_combout\ : std_logic;
SIGNAL \Adder64|Carry[53]~52_combout\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \Ain[53]~52_combout\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \Ain[54]~53_combout\ : std_logic;
SIGNAL \Adder64|Carry[54]~53_combout\ : std_logic;
SIGNAL \Adder64|Carry[55]~54_combout\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \Ain[55]~54_combout\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \Ain[56]~55_combout\ : std_logic;
SIGNAL \Adder64|Carry[56]~55_combout\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \Adder64|Carry[57]~56_combout\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \Ain[57]~56_combout\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \Adder64|Carry[58]~57_combout\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \Ain[58]~57_combout\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \Ain[59]~58_combout\ : std_logic;
SIGNAL \Adder64|Carry[59]~58_combout\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \Adder64|Carry[60]~59_combout\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \Ain[60]~59_combout\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \Ain[61]~60_combout\ : std_logic;
SIGNAL \Adder64|Carry[61]~60_combout\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \Adder64|Carry[62]~61_combout\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \Ain[62]~61_combout\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \Adder64|Carry[63]~62_combout\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \Ain[63]~62_combout\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \Y~0_combout\ : std_logic;
SIGNAL \Y~1_combout\ : std_logic;
SIGNAL \Y~2_combout\ : std_logic;
SIGNAL \Y~3_combout\ : std_logic;
SIGNAL \Y~4_combout\ : std_logic;
SIGNAL \Y~5_combout\ : std_logic;
SIGNAL \Y~6_combout\ : std_logic;
SIGNAL \Y~7_combout\ : std_logic;
SIGNAL \Y~8_combout\ : std_logic;
SIGNAL \Y~9_combout\ : std_logic;
SIGNAL \Y~10_combout\ : std_logic;
SIGNAL \Y~11_combout\ : std_logic;
SIGNAL \Y~12_combout\ : std_logic;
SIGNAL \Y~13_combout\ : std_logic;
SIGNAL \Y~14_combout\ : std_logic;
SIGNAL \Y~15_combout\ : std_logic;
SIGNAL \Y~16_combout\ : std_logic;
SIGNAL \Y~17_combout\ : std_logic;
SIGNAL \Y~18_combout\ : std_logic;
SIGNAL \Y~19_combout\ : std_logic;
SIGNAL \Y~20_combout\ : std_logic;
SIGNAL \Y~21_combout\ : std_logic;
SIGNAL \Y~22_combout\ : std_logic;
SIGNAL \Y~23_combout\ : std_logic;
SIGNAL \Y~24_combout\ : std_logic;
SIGNAL \Y~25_combout\ : std_logic;
SIGNAL \Y~26_combout\ : std_logic;
SIGNAL \Y~27_combout\ : std_logic;
SIGNAL \Y~28_combout\ : std_logic;
SIGNAL \Y~29_combout\ : std_logic;
SIGNAL \Y~30_combout\ : std_logic;
SIGNAL \Adder64|Y~1_combout\ : std_logic;
SIGNAL \Y~31_combout\ : std_logic;
SIGNAL \Adder64|Cout~0_combout\ : std_logic;
SIGNAL \Adder64|Ovfl~combout\ : std_logic;
SIGNAL \WideOr0~12_combout\ : std_logic;
SIGNAL \WideOr0~14_combout\ : std_logic;
SIGNAL \WideOr0~11_combout\ : std_logic;
SIGNAL \WideOr0~13_combout\ : std_logic;
SIGNAL \WideOr0~15_combout\ : std_logic;
SIGNAL \WideOr0~17_combout\ : std_logic;
SIGNAL \WideOr0~16_combout\ : std_logic;
SIGNAL \WideOr0~19_combout\ : std_logic;
SIGNAL \WideOr0~18_combout\ : std_logic;
SIGNAL \WideOr0~20_combout\ : std_logic;
SIGNAL \WideOr0~9_combout\ : std_logic;
SIGNAL \WideOr0~7_combout\ : std_logic;
SIGNAL \WideOr0~8_combout\ : std_logic;
SIGNAL \WideOr0~6_combout\ : std_logic;
SIGNAL \WideOr0~10_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \WideOr0~1_combout\ : std_logic;
SIGNAL \WideOr0~4_combout\ : std_logic;
SIGNAL \WideOr0~3_combout\ : std_logic;
SIGNAL \WideOr0~2_combout\ : std_logic;
SIGNAL \WideOr0~5_combout\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \AltB~2_combout\ : std_logic;
SIGNAL \Adder64|Y\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \ALT_INV_WideOr0~combout\ : std_logic;
SIGNAL \Adder64|ALT_INV_Cout~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
AddY <= ww_AddY;
Y <= ww_Y;
ww_NotA <= NotA;
ww_AddnSub <= AddnSub;
ww_ExtWord <= ExtWord;
Cout <= ww_Cout;
Ovfl <= ww_Ovfl;
Zero <= ww_Zero;
AltB <= ww_AltB;
AltBu <= ww_AltBu;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_WideOr0~combout\ <= NOT \WideOr0~combout\;
\Adder64|ALT_INV_Cout~0_combout\ <= NOT \Adder64|Cout~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X13_Y73_N23
\AddY[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y[0]~0_combout\,
	devoe => ww_devoe,
	o => \AddY[0]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\AddY[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(1),
	devoe => ww_devoe,
	o => \AddY[1]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\AddY[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(2),
	devoe => ww_devoe,
	o => \AddY[2]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\AddY[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(3),
	devoe => ww_devoe,
	o => \AddY[3]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\AddY[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(4),
	devoe => ww_devoe,
	o => \AddY[4]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\AddY[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(5),
	devoe => ww_devoe,
	o => \AddY[5]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\AddY[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(6),
	devoe => ww_devoe,
	o => \AddY[6]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\AddY[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(7),
	devoe => ww_devoe,
	o => \AddY[7]~output_o\);

-- Location: IOOBUF_X107_Y0_N2
\AddY[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(8),
	devoe => ww_devoe,
	o => \AddY[8]~output_o\);

-- Location: IOOBUF_X115_Y42_N16
\AddY[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(9),
	devoe => ww_devoe,
	o => \AddY[9]~output_o\);

-- Location: IOOBUF_X115_Y46_N9
\AddY[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(10),
	devoe => ww_devoe,
	o => \AddY[10]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\AddY[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(11),
	devoe => ww_devoe,
	o => \AddY[11]~output_o\);

-- Location: IOOBUF_X115_Y28_N2
\AddY[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(12),
	devoe => ww_devoe,
	o => \AddY[12]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\AddY[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(13),
	devoe => ww_devoe,
	o => \AddY[13]~output_o\);

-- Location: IOOBUF_X115_Y31_N2
\AddY[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(14),
	devoe => ww_devoe,
	o => \AddY[14]~output_o\);

-- Location: IOOBUF_X115_Y27_N9
\AddY[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(15),
	devoe => ww_devoe,
	o => \AddY[15]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\AddY[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(16),
	devoe => ww_devoe,
	o => \AddY[16]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\AddY[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(17),
	devoe => ww_devoe,
	o => \AddY[17]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\AddY[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(18),
	devoe => ww_devoe,
	o => \AddY[18]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\AddY[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(19),
	devoe => ww_devoe,
	o => \AddY[19]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\AddY[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(20),
	devoe => ww_devoe,
	o => \AddY[20]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\AddY[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(21),
	devoe => ww_devoe,
	o => \AddY[21]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\AddY[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(22),
	devoe => ww_devoe,
	o => \AddY[22]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\AddY[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(23),
	devoe => ww_devoe,
	o => \AddY[23]~output_o\);

-- Location: IOOBUF_X115_Y17_N2
\AddY[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(24),
	devoe => ww_devoe,
	o => \AddY[24]~output_o\);

-- Location: IOOBUF_X115_Y13_N2
\AddY[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(25),
	devoe => ww_devoe,
	o => \AddY[25]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\AddY[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(26),
	devoe => ww_devoe,
	o => \AddY[26]~output_o\);

-- Location: IOOBUF_X115_Y12_N9
\AddY[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(27),
	devoe => ww_devoe,
	o => \AddY[27]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\AddY[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(28),
	devoe => ww_devoe,
	o => \AddY[28]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\AddY[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(29),
	devoe => ww_devoe,
	o => \AddY[29]~output_o\);

-- Location: IOOBUF_X115_Y66_N23
\AddY[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(30),
	devoe => ww_devoe,
	o => \AddY[30]~output_o\);

-- Location: IOOBUF_X1_Y73_N2
\AddY[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(31),
	devoe => ww_devoe,
	o => \AddY[31]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\AddY[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(32),
	devoe => ww_devoe,
	o => \AddY[32]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\AddY[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(33),
	devoe => ww_devoe,
	o => \AddY[33]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\AddY[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(34),
	devoe => ww_devoe,
	o => \AddY[34]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\AddY[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(35),
	devoe => ww_devoe,
	o => \AddY[35]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\AddY[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(36),
	devoe => ww_devoe,
	o => \AddY[36]~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\AddY[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(37),
	devoe => ww_devoe,
	o => \AddY[37]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\AddY[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(38),
	devoe => ww_devoe,
	o => \AddY[38]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\AddY[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(39),
	devoe => ww_devoe,
	o => \AddY[39]~output_o\);

-- Location: IOOBUF_X115_Y69_N23
\AddY[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(40),
	devoe => ww_devoe,
	o => \AddY[40]~output_o\);

-- Location: IOOBUF_X115_Y65_N23
\AddY[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(41),
	devoe => ww_devoe,
	o => \AddY[41]~output_o\);

-- Location: IOOBUF_X115_Y68_N23
\AddY[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(42),
	devoe => ww_devoe,
	o => \AddY[42]~output_o\);

-- Location: IOOBUF_X115_Y69_N16
\AddY[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(43),
	devoe => ww_devoe,
	o => \AddY[43]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\AddY[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(44),
	devoe => ww_devoe,
	o => \AddY[44]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\AddY[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(45),
	devoe => ww_devoe,
	o => \AddY[45]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\AddY[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(46),
	devoe => ww_devoe,
	o => \AddY[46]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\AddY[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(47),
	devoe => ww_devoe,
	o => \AddY[47]~output_o\);

-- Location: IOOBUF_X11_Y73_N2
\AddY[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(48),
	devoe => ww_devoe,
	o => \AddY[48]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\AddY[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(49),
	devoe => ww_devoe,
	o => \AddY[49]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\AddY[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(50),
	devoe => ww_devoe,
	o => \AddY[50]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\AddY[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(51),
	devoe => ww_devoe,
	o => \AddY[51]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\AddY[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(52),
	devoe => ww_devoe,
	o => \AddY[52]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\AddY[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(53),
	devoe => ww_devoe,
	o => \AddY[53]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\AddY[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(54),
	devoe => ww_devoe,
	o => \AddY[54]~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\AddY[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(55),
	devoe => ww_devoe,
	o => \AddY[55]~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\AddY[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(56),
	devoe => ww_devoe,
	o => \AddY[56]~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\AddY[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(57),
	devoe => ww_devoe,
	o => \AddY[57]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\AddY[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(58),
	devoe => ww_devoe,
	o => \AddY[58]~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\AddY[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(59),
	devoe => ww_devoe,
	o => \AddY[59]~output_o\);

-- Location: IOOBUF_X5_Y73_N9
\AddY[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(60),
	devoe => ww_devoe,
	o => \AddY[60]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\AddY[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(61),
	devoe => ww_devoe,
	o => \AddY[61]~output_o\);

-- Location: IOOBUF_X0_Y67_N23
\AddY[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(62),
	devoe => ww_devoe,
	o => \AddY[62]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\AddY[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(63),
	devoe => ww_devoe,
	o => \AddY[63]~output_o\);

-- Location: IOOBUF_X13_Y73_N9
\Y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y[0]~0_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(1),
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(2),
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(3),
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\Y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(4),
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\Y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(5),
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\Y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(6),
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\Y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(7),
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\Y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(8),
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\Y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(9),
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X115_Y46_N2
\Y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(10),
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X115_Y48_N9
\Y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(11),
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\Y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(12),
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X115_Y34_N23
\Y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(13),
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X115_Y31_N9
\Y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(14),
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X115_Y27_N2
\Y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(15),
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\Y[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(16),
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\Y[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(17),
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\Y[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(18),
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\Y[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(19),
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\Y[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(20),
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\Y[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(21),
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\Y[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(22),
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\Y[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(23),
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\Y[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(24),
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X115_Y14_N9
\Y[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(25),
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\Y[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(26),
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X115_Y12_N2
\Y[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(27),
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X115_Y40_N9
\Y[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(28),
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\Y[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(29),
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\Y[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(30),
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X13_Y73_N16
\Y[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Y\(31),
	devoe => ww_devoe,
	o => \Y[31]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\Y[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~0_combout\,
	devoe => ww_devoe,
	o => \Y[32]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\Y[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~1_combout\,
	devoe => ww_devoe,
	o => \Y[33]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\Y[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~2_combout\,
	devoe => ww_devoe,
	o => \Y[34]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\Y[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~3_combout\,
	devoe => ww_devoe,
	o => \Y[35]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\Y[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~4_combout\,
	devoe => ww_devoe,
	o => \Y[36]~output_o\);

-- Location: IOOBUF_X115_Y68_N16
\Y[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~5_combout\,
	devoe => ww_devoe,
	o => \Y[37]~output_o\);

-- Location: IOOBUF_X115_Y65_N16
\Y[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~6_combout\,
	devoe => ww_devoe,
	o => \Y[38]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\Y[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~7_combout\,
	devoe => ww_devoe,
	o => \Y[39]~output_o\);

-- Location: IOOBUF_X89_Y73_N9
\Y[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~8_combout\,
	devoe => ww_devoe,
	o => \Y[40]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\Y[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~9_combout\,
	devoe => ww_devoe,
	o => \Y[41]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\Y[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~10_combout\,
	devoe => ww_devoe,
	o => \Y[42]~output_o\);

-- Location: IOOBUF_X87_Y73_N2
\Y[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~11_combout\,
	devoe => ww_devoe,
	o => \Y[43]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\Y[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~12_combout\,
	devoe => ww_devoe,
	o => \Y[44]~output_o\);

-- Location: IOOBUF_X113_Y73_N2
\Y[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~13_combout\,
	devoe => ww_devoe,
	o => \Y[45]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\Y[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~14_combout\,
	devoe => ww_devoe,
	o => \Y[46]~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\Y[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~15_combout\,
	devoe => ww_devoe,
	o => \Y[47]~output_o\);

-- Location: IOOBUF_X0_Y63_N16
\Y[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~16_combout\,
	devoe => ww_devoe,
	o => \Y[48]~output_o\);

-- Location: IOOBUF_X0_Y64_N2
\Y[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~17_combout\,
	devoe => ww_devoe,
	o => \Y[49]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\Y[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~18_combout\,
	devoe => ww_devoe,
	o => \Y[50]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\Y[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~19_combout\,
	devoe => ww_devoe,
	o => \Y[51]~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\Y[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~20_combout\,
	devoe => ww_devoe,
	o => \Y[52]~output_o\);

-- Location: IOOBUF_X0_Y61_N23
\Y[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~21_combout\,
	devoe => ww_devoe,
	o => \Y[53]~output_o\);

-- Location: IOOBUF_X0_Y65_N16
\Y[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~22_combout\,
	devoe => ww_devoe,
	o => \Y[54]~output_o\);

-- Location: IOOBUF_X0_Y62_N16
\Y[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~23_combout\,
	devoe => ww_devoe,
	o => \Y[55]~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\Y[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~24_combout\,
	devoe => ww_devoe,
	o => \Y[56]~output_o\);

-- Location: IOOBUF_X0_Y66_N23
\Y[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~25_combout\,
	devoe => ww_devoe,
	o => \Y[57]~output_o\);

-- Location: IOOBUF_X0_Y66_N16
\Y[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~26_combout\,
	devoe => ww_devoe,
	o => \Y[58]~output_o\);

-- Location: IOOBUF_X0_Y68_N9
\Y[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~27_combout\,
	devoe => ww_devoe,
	o => \Y[59]~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\Y[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~28_combout\,
	devoe => ww_devoe,
	o => \Y[60]~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\Y[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~29_combout\,
	devoe => ww_devoe,
	o => \Y[61]~output_o\);

-- Location: IOOBUF_X0_Y63_N23
\Y[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~30_combout\,
	devoe => ww_devoe,
	o => \Y[62]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\Y[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~31_combout\,
	devoe => ww_devoe,
	o => \Y[63]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Cout~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\Ovfl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|Ovfl~combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\Zero~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr0~combout\,
	devoe => ww_devoe,
	o => \Zero~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\AltB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AltB~2_combout\,
	devoe => ww_devoe,
	o => \AltB~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\AltBu~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder64|ALT_INV_Cout~0_combout\,
	devoe => ww_devoe,
	o => \AltBu~output_o\);

-- Location: IOIBUF_X42_Y73_N8
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X42_Y73_N1
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X100_Y0_N15
\NotA~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NotA,
	o => \NotA~input_o\);

-- Location: LCCOMB_X47_Y69_N24
\Adder64|Y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y[0]~0_combout\ = \B[0]~input_o\ $ (\A[0]~input_o\ $ (\NotA~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \NotA~input_o\,
	combout => \Adder64|Y[0]~0_combout\);

-- Location: IOIBUF_X42_Y0_N22
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X45_Y73_N8
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X47_Y69_N20
\Ain[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[1]~0_combout\ = \A[1]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datad => \NotA~input_o\,
	combout => \Ain[1]~0_combout\);

-- Location: IOIBUF_X100_Y0_N22
\AddnSub~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddnSub,
	o => \AddnSub~input_o\);

-- Location: LCCOMB_X47_Y69_N26
\Adder64|Carry[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[1]~0_combout\ = (\B[0]~input_o\ & (\NotA~input_o\ $ ((\A[0]~input_o\)))) # (!\B[0]~input_o\ & (((\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \NotA~input_o\,
	datac => \A[0]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Carry[1]~0_combout\);

-- Location: LCCOMB_X47_Y69_N22
\Adder64|Y[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(1) = \B[1]~input_o\ $ (\Ain[1]~0_combout\ $ (\Adder64|Carry[1]~0_combout\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Ain[1]~0_combout\,
	datac => \Adder64|Carry[1]~0_combout\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Y\(1));

-- Location: IOIBUF_X40_Y73_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X47_Y69_N10
\Ain[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[2]~1_combout\ = \A[2]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datad => \NotA~input_o\,
	combout => \Ain[2]~1_combout\);

-- Location: LCCOMB_X47_Y69_N0
\Adder64|Carry[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[2]~1_combout\ = (\Ain[1]~0_combout\ & ((\Adder64|Carry[1]~0_combout\) # (\B[1]~input_o\ $ (\AddnSub~input_o\)))) # (!\Ain[1]~0_combout\ & (\Adder64|Carry[1]~0_combout\ & (\B[1]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Ain[1]~0_combout\,
	datac => \Adder64|Carry[1]~0_combout\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Carry[2]~1_combout\);

-- Location: IOIBUF_X40_Y0_N22
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X47_Y69_N28
\Adder64|Y[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(2) = \Ain[2]~1_combout\ $ (\Adder64|Carry[2]~1_combout\ $ (\B[2]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ain[2]~1_combout\,
	datab => \Adder64|Carry[2]~1_combout\,
	datac => \B[2]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Y\(2));

-- Location: IOIBUF_X40_Y73_N1
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X47_Y0_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X47_Y69_N16
\Ain[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[3]~2_combout\ = \A[3]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[3]~input_o\,
	datad => \NotA~input_o\,
	combout => \Ain[3]~2_combout\);

-- Location: LCCOMB_X47_Y69_N14
\Adder64|Carry[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[3]~2_combout\ = (\Ain[2]~1_combout\ & ((\Adder64|Carry[2]~1_combout\) # (\B[2]~input_o\ $ (\AddnSub~input_o\)))) # (!\Ain[2]~1_combout\ & (\Adder64|Carry[2]~1_combout\ & (\B[2]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ain[2]~1_combout\,
	datab => \Adder64|Carry[2]~1_combout\,
	datac => \B[2]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Carry[3]~2_combout\);

-- Location: LCCOMB_X47_Y69_N2
\Adder64|Y[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(3) = \B[3]~input_o\ $ (\Ain[3]~2_combout\ $ (\Adder64|Carry[3]~2_combout\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Ain[3]~2_combout\,
	datac => \Adder64|Carry[3]~2_combout\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Y\(3));

-- Location: IOIBUF_X45_Y0_N22
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X47_Y69_N4
\Adder64|Carry[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[4]~3_combout\ = (\Ain[3]~2_combout\ & ((\Adder64|Carry[3]~2_combout\) # (\B[3]~input_o\ $ (\AddnSub~input_o\)))) # (!\Ain[3]~2_combout\ & (\Adder64|Carry[3]~2_combout\ & (\B[3]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Ain[3]~2_combout\,
	datac => \Adder64|Carry[3]~2_combout\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Carry[4]~3_combout\);

-- Location: IOIBUF_X49_Y0_N1
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X50_Y1_N8
\Ain[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[4]~3_combout\ = \A[4]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[4]~input_o\,
	datad => \NotA~input_o\,
	combout => \Ain[4]~3_combout\);

-- Location: LCCOMB_X50_Y1_N26
\Adder64|Y[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(4) = \B[4]~input_o\ $ (\Adder64|Carry[4]~3_combout\ $ (\Ain[4]~3_combout\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Adder64|Carry[4]~3_combout\,
	datac => \Ain[4]~3_combout\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Y\(4));

-- Location: IOIBUF_X54_Y0_N22
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X50_Y1_N28
\Adder64|Carry[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[5]~4_combout\ = (\Adder64|Carry[4]~3_combout\ & ((\Ain[4]~3_combout\) # (\B[4]~input_o\ $ (\AddnSub~input_o\)))) # (!\Adder64|Carry[4]~3_combout\ & (\Ain[4]~3_combout\ & (\B[4]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Adder64|Carry[4]~3_combout\,
	datac => \Ain[4]~3_combout\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Carry[5]~4_combout\);

-- Location: IOIBUF_X49_Y0_N22
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X50_Y1_N30
\Ain[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[5]~4_combout\ = \A[5]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datad => \NotA~input_o\,
	combout => \Ain[5]~4_combout\);

-- Location: LCCOMB_X50_Y1_N0
\Adder64|Y[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(5) = \B[5]~input_o\ $ (\Adder64|Carry[5]~4_combout\ $ (\Ain[5]~4_combout\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Adder64|Carry[5]~4_combout\,
	datac => \Ain[5]~4_combout\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Y\(5));

-- Location: LCCOMB_X50_Y1_N2
\Adder64|Carry[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[6]~5_combout\ = (\Adder64|Carry[5]~4_combout\ & ((\Ain[5]~4_combout\) # (\B[5]~input_o\ $ (\AddnSub~input_o\)))) # (!\Adder64|Carry[5]~4_combout\ & (\Ain[5]~4_combout\ & (\B[5]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Adder64|Carry[5]~4_combout\,
	datac => \Ain[5]~4_combout\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Carry[6]~5_combout\);

-- Location: IOIBUF_X49_Y0_N8
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X50_Y1_N20
\Ain[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[6]~5_combout\ = \A[6]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datad => \NotA~input_o\,
	combout => \Ain[6]~5_combout\);

-- Location: IOIBUF_X54_Y0_N15
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X50_Y1_N6
\Adder64|Y[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(6) = \Adder64|Carry[6]~5_combout\ $ (\Ain[6]~5_combout\ $ (\B[6]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[6]~5_combout\,
	datab => \Ain[6]~5_combout\,
	datac => \B[6]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Y\(6));

-- Location: IOIBUF_X54_Y0_N8
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X50_Y1_N10
\Ain[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[7]~6_combout\ = \A[7]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datad => \NotA~input_o\,
	combout => \Ain[7]~6_combout\);

-- Location: LCCOMB_X50_Y1_N24
\Adder64|Carry[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[7]~6_combout\ = (\Adder64|Carry[6]~5_combout\ & ((\Ain[6]~5_combout\) # (\B[6]~input_o\ $ (\AddnSub~input_o\)))) # (!\Adder64|Carry[6]~5_combout\ & (\Ain[6]~5_combout\ & (\B[6]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[6]~5_combout\,
	datab => \Ain[6]~5_combout\,
	datac => \B[6]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Carry[7]~6_combout\);

-- Location: IOIBUF_X54_Y0_N1
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X50_Y1_N12
\Adder64|Y[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(7) = \Ain[7]~6_combout\ $ (\Adder64|Carry[7]~6_combout\ $ (\B[7]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ain[7]~6_combout\,
	datab => \Adder64|Carry[7]~6_combout\,
	datac => \B[7]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Y\(7));

-- Location: IOIBUF_X49_Y0_N15
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X47_Y0_N1
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X50_Y1_N16
\Ain[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[8]~7_combout\ = \A[8]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[8]~input_o\,
	datad => \NotA~input_o\,
	combout => \Ain[8]~7_combout\);

-- Location: LCCOMB_X50_Y1_N22
\Adder64|Carry[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[8]~7_combout\ = (\Ain[7]~6_combout\ & ((\Adder64|Carry[7]~6_combout\) # (\B[7]~input_o\ $ (\AddnSub~input_o\)))) # (!\Ain[7]~6_combout\ & (\Adder64|Carry[7]~6_combout\ & (\B[7]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ain[7]~6_combout\,
	datab => \Adder64|Carry[7]~6_combout\,
	datac => \B[7]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Carry[8]~7_combout\);

-- Location: LCCOMB_X50_Y1_N18
\Adder64|Y[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(8) = \B[8]~input_o\ $ (\Ain[8]~7_combout\ $ (\Adder64|Carry[8]~7_combout\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \Ain[8]~7_combout\,
	datac => \Adder64|Carry[8]~7_combout\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Y\(8));

-- Location: LCCOMB_X50_Y1_N4
\Adder64|Carry[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[9]~8_combout\ = (\Ain[8]~7_combout\ & ((\Adder64|Carry[8]~7_combout\) # (\B[8]~input_o\ $ (\AddnSub~input_o\)))) # (!\Ain[8]~7_combout\ & (\Adder64|Carry[8]~7_combout\ & (\B[8]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \Ain[8]~7_combout\,
	datac => \Adder64|Carry[8]~7_combout\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Carry[9]~8_combout\);

-- Location: IOIBUF_X115_Y44_N8
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X114_Y45_N24
\Ain[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[9]~8_combout\ = \A[9]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[9]~input_o\,
	datac => \NotA~input_o\,
	combout => \Ain[9]~8_combout\);

-- Location: IOIBUF_X115_Y45_N22
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X114_Y45_N18
\Adder64|Y[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(9) = \Adder64|Carry[9]~8_combout\ $ (\Ain[9]~8_combout\ $ (\AddnSub~input_o\ $ (\B[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[9]~8_combout\,
	datab => \Ain[9]~8_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[9]~input_o\,
	combout => \Adder64|Y\(9));

-- Location: LCCOMB_X114_Y45_N12
\Adder64|Carry[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[10]~9_combout\ = (\Adder64|Carry[9]~8_combout\ & ((\Ain[9]~8_combout\) # (\AddnSub~input_o\ $ (\B[9]~input_o\)))) # (!\Adder64|Carry[9]~8_combout\ & (\Ain[9]~8_combout\ & (\AddnSub~input_o\ $ (\B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[9]~8_combout\,
	datab => \Ain[9]~8_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[9]~input_o\,
	combout => \Adder64|Carry[10]~9_combout\);

-- Location: IOIBUF_X115_Y44_N1
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X114_Y45_N14
\Ain[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[10]~9_combout\ = \NotA~input_o\ $ (\A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \NotA~input_o\,
	datad => \A[10]~input_o\,
	combout => \Ain[10]~9_combout\);

-- Location: IOIBUF_X115_Y47_N22
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X114_Y45_N0
\Adder64|Y[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(10) = \Adder64|Carry[10]~9_combout\ $ (\Ain[10]~9_combout\ $ (\AddnSub~input_o\ $ (\B[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[10]~9_combout\,
	datab => \Ain[10]~9_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[10]~input_o\,
	combout => \Adder64|Y\(10));

-- Location: LCCOMB_X114_Y45_N10
\Adder64|Carry[11]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[11]~10_combout\ = (\Adder64|Carry[10]~9_combout\ & ((\Ain[10]~9_combout\) # (\AddnSub~input_o\ $ (\B[10]~input_o\)))) # (!\Adder64|Carry[10]~9_combout\ & (\Ain[10]~9_combout\ & (\AddnSub~input_o\ $ (\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[10]~9_combout\,
	datab => \Ain[10]~9_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[10]~input_o\,
	combout => \Adder64|Carry[11]~10_combout\);

-- Location: IOIBUF_X115_Y49_N1
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X114_Y45_N28
\Ain[11]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[11]~10_combout\ = \NotA~input_o\ $ (\A[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \NotA~input_o\,
	datad => \A[11]~input_o\,
	combout => \Ain[11]~10_combout\);

-- Location: IOIBUF_X115_Y45_N15
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X114_Y45_N22
\Adder64|Y[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(11) = \Adder64|Carry[11]~10_combout\ $ (\Ain[11]~10_combout\ $ (\AddnSub~input_o\ $ (\B[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[11]~10_combout\,
	datab => \Ain[11]~10_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[11]~input_o\,
	combout => \Adder64|Y\(11));

-- Location: IOIBUF_X115_Y32_N8
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X115_Y30_N1
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X114_Y30_N16
\Ain[12]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[12]~11_combout\ = \NotA~input_o\ $ (\A[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NotA~input_o\,
	datac => \A[12]~input_o\,
	combout => \Ain[12]~11_combout\);

-- Location: LCCOMB_X114_Y45_N8
\Adder64|Carry[12]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[12]~11_combout\ = (\Adder64|Carry[11]~10_combout\ & ((\Ain[11]~10_combout\) # (\AddnSub~input_o\ $ (\B[11]~input_o\)))) # (!\Adder64|Carry[11]~10_combout\ & (\Ain[11]~10_combout\ & (\AddnSub~input_o\ $ (\B[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[11]~10_combout\,
	datab => \Ain[11]~10_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[11]~input_o\,
	combout => \Adder64|Carry[12]~11_combout\);

-- Location: LCCOMB_X114_Y30_N18
\Adder64|Y[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(12) = \B[12]~input_o\ $ (\Ain[12]~11_combout\ $ (\Adder64|Carry[12]~11_combout\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \Ain[12]~11_combout\,
	datac => \Adder64|Carry[12]~11_combout\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Y\(12));

-- Location: LCCOMB_X114_Y30_N12
\Adder64|Carry[13]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[13]~12_combout\ = (\Ain[12]~11_combout\ & ((\Adder64|Carry[12]~11_combout\) # (\B[12]~input_o\ $ (\AddnSub~input_o\)))) # (!\Ain[12]~11_combout\ & (\Adder64|Carry[12]~11_combout\ & (\B[12]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \Ain[12]~11_combout\,
	datac => \Adder64|Carry[12]~11_combout\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Carry[13]~12_combout\);

-- Location: IOIBUF_X115_Y32_N1
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X114_Y30_N30
\Ain[13]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[13]~12_combout\ = \NotA~input_o\ $ (\A[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NotA~input_o\,
	datad => \A[13]~input_o\,
	combout => \Ain[13]~12_combout\);

-- Location: IOIBUF_X115_Y33_N1
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X114_Y30_N0
\Adder64|Y[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(13) = \Adder64|Carry[13]~12_combout\ $ (\AddnSub~input_o\ $ (\Ain[13]~12_combout\ $ (\B[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[13]~12_combout\,
	datab => \AddnSub~input_o\,
	datac => \Ain[13]~12_combout\,
	datad => \B[13]~input_o\,
	combout => \Adder64|Y\(13));

-- Location: LCCOMB_X114_Y30_N10
\Adder64|Carry[14]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[14]~13_combout\ = (\Adder64|Carry[13]~12_combout\ & ((\Ain[13]~12_combout\) # (\AddnSub~input_o\ $ (\B[13]~input_o\)))) # (!\Adder64|Carry[13]~12_combout\ & (\Ain[13]~12_combout\ & (\AddnSub~input_o\ $ (\B[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[13]~12_combout\,
	datab => \AddnSub~input_o\,
	datac => \Ain[13]~12_combout\,
	datad => \B[13]~input_o\,
	combout => \Adder64|Carry[14]~13_combout\);

-- Location: IOIBUF_X115_Y26_N22
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X114_Y30_N4
\Ain[14]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[14]~13_combout\ = \NotA~input_o\ $ (\A[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NotA~input_o\,
	datac => \A[14]~input_o\,
	combout => \Ain[14]~13_combout\);

-- Location: IOIBUF_X115_Y30_N8
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X114_Y30_N6
\Adder64|Y[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(14) = \Adder64|Carry[14]~13_combout\ $ (\AddnSub~input_o\ $ (\Ain[14]~13_combout\ $ (\B[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[14]~13_combout\,
	datab => \AddnSub~input_o\,
	datac => \Ain[14]~13_combout\,
	datad => \B[14]~input_o\,
	combout => \Adder64|Y\(14));

-- Location: IOIBUF_X115_Y29_N8
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X115_Y29_N1
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X114_Y30_N26
\Ain[15]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[15]~14_combout\ = \NotA~input_o\ $ (\A[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NotA~input_o\,
	datad => \A[15]~input_o\,
	combout => \Ain[15]~14_combout\);

-- Location: LCCOMB_X114_Y30_N24
\Adder64|Carry[15]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[15]~14_combout\ = (\Adder64|Carry[14]~13_combout\ & ((\Ain[14]~13_combout\) # (\AddnSub~input_o\ $ (\B[14]~input_o\)))) # (!\Adder64|Carry[14]~13_combout\ & (\Ain[14]~13_combout\ & (\AddnSub~input_o\ $ (\B[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[14]~13_combout\,
	datab => \AddnSub~input_o\,
	datac => \Ain[14]~13_combout\,
	datad => \B[14]~input_o\,
	combout => \Adder64|Carry[15]~14_combout\);

-- Location: LCCOMB_X114_Y30_N28
\Adder64|Y[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(15) = \B[15]~input_o\ $ (\AddnSub~input_o\ $ (\Ain[15]~14_combout\ $ (\Adder64|Carry[15]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Ain[15]~14_combout\,
	datad => \Adder64|Carry[15]~14_combout\,
	combout => \Adder64|Y\(15));

-- Location: IOIBUF_X72_Y73_N15
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X69_Y73_N22
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X69_Y69_N16
\Ain[16]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[16]~15_combout\ = \A[16]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datad => \NotA~input_o\,
	combout => \Ain[16]~15_combout\);

-- Location: LCCOMB_X114_Y30_N22
\Adder64|Carry[16]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[16]~15_combout\ = (\Ain[15]~14_combout\ & ((\Adder64|Carry[15]~14_combout\) # (\B[15]~input_o\ $ (\AddnSub~input_o\)))) # (!\Ain[15]~14_combout\ & (\Adder64|Carry[15]~14_combout\ & (\B[15]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Ain[15]~14_combout\,
	datad => \Adder64|Carry[15]~14_combout\,
	combout => \Adder64|Carry[16]~15_combout\);

-- Location: LCCOMB_X69_Y69_N2
\Adder64|Y[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(16) = \B[16]~input_o\ $ (\Ain[16]~15_combout\ $ (\Adder64|Carry[16]~15_combout\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \Ain[16]~15_combout\,
	datac => \Adder64|Carry[16]~15_combout\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Y\(16));

-- Location: IOIBUF_X67_Y73_N15
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X69_Y69_N30
\Ain[17]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[17]~16_combout\ = \A[17]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datad => \NotA~input_o\,
	combout => \Ain[17]~16_combout\);

-- Location: LCCOMB_X69_Y69_N4
\Adder64|Carry[17]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[17]~16_combout\ = (\Ain[16]~15_combout\ & ((\Adder64|Carry[16]~15_combout\) # (\B[16]~input_o\ $ (\AddnSub~input_o\)))) # (!\Ain[16]~15_combout\ & (\Adder64|Carry[16]~15_combout\ & (\B[16]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \Ain[16]~15_combout\,
	datac => \Adder64|Carry[16]~15_combout\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Carry[17]~16_combout\);

-- Location: IOIBUF_X67_Y73_N22
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LCCOMB_X69_Y69_N24
\Adder64|Y[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(17) = \Ain[17]~16_combout\ $ (\Adder64|Carry[17]~16_combout\ $ (\B[17]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ain[17]~16_combout\,
	datab => \Adder64|Carry[17]~16_combout\,
	datac => \B[17]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Y\(17));

-- Location: LCCOMB_X69_Y69_N26
\Adder64|Carry[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[18]~17_combout\ = (\Ain[17]~16_combout\ & ((\Adder64|Carry[17]~16_combout\) # (\B[17]~input_o\ $ (\AddnSub~input_o\)))) # (!\Ain[17]~16_combout\ & (\Adder64|Carry[17]~16_combout\ & (\B[17]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ain[17]~16_combout\,
	datab => \Adder64|Carry[17]~16_combout\,
	datac => \B[17]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Carry[18]~17_combout\);

-- Location: IOIBUF_X69_Y73_N15
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LCCOMB_X69_Y69_N20
\Ain[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[18]~17_combout\ = \A[18]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[18]~input_o\,
	datad => \NotA~input_o\,
	combout => \Ain[18]~17_combout\);

-- Location: IOIBUF_X65_Y73_N22
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X69_Y69_N14
\Adder64|Y[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(18) = \Adder64|Carry[18]~17_combout\ $ (\Ain[18]~17_combout\ $ (\B[18]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[18]~17_combout\,
	datab => \Ain[18]~17_combout\,
	datac => \B[18]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Y\(18));

-- Location: IOIBUF_X69_Y73_N1
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X72_Y73_N1
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X69_Y69_N18
\Ain[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[19]~18_combout\ = \A[19]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[19]~input_o\,
	datad => \NotA~input_o\,
	combout => \Ain[19]~18_combout\);

-- Location: LCCOMB_X69_Y69_N8
\Adder64|Carry[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[19]~18_combout\ = (\Adder64|Carry[18]~17_combout\ & ((\Ain[18]~17_combout\) # (\B[18]~input_o\ $ (\AddnSub~input_o\)))) # (!\Adder64|Carry[18]~17_combout\ & (\Ain[18]~17_combout\ & (\B[18]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[18]~17_combout\,
	datab => \Ain[18]~17_combout\,
	datac => \B[18]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Carry[19]~18_combout\);

-- Location: LCCOMB_X69_Y69_N12
\Adder64|Y[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(19) = \B[19]~input_o\ $ (\Ain[19]~18_combout\ $ (\Adder64|Carry[19]~18_combout\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \Ain[19]~18_combout\,
	datac => \Adder64|Carry[19]~18_combout\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Y\(19));

-- Location: LCCOMB_X69_Y69_N22
\Adder64|Carry[20]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[20]~19_combout\ = (\Ain[19]~18_combout\ & ((\Adder64|Carry[19]~18_combout\) # (\B[19]~input_o\ $ (\AddnSub~input_o\)))) # (!\Ain[19]~18_combout\ & (\Adder64|Carry[19]~18_combout\ & (\B[19]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \Ain[19]~18_combout\,
	datac => \Adder64|Carry[19]~18_combout\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Carry[20]~19_combout\);

-- Location: IOIBUF_X31_Y73_N8
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X30_Y69_N24
\Ain[20]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[20]~19_combout\ = \A[20]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[20]~input_o\,
	datad => \NotA~input_o\,
	combout => \Ain[20]~19_combout\);

-- Location: IOIBUF_X25_Y73_N15
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LCCOMB_X30_Y69_N2
\Adder64|Y[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(20) = \Adder64|Carry[20]~19_combout\ $ (\Ain[20]~19_combout\ $ (\B[20]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[20]~19_combout\,
	datab => \Ain[20]~19_combout\,
	datac => \B[20]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Y\(20));

-- Location: LCCOMB_X30_Y69_N12
\Adder64|Carry[21]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[21]~20_combout\ = (\Adder64|Carry[20]~19_combout\ & ((\Ain[20]~19_combout\) # (\B[20]~input_o\ $ (\AddnSub~input_o\)))) # (!\Adder64|Carry[20]~19_combout\ & (\Ain[20]~19_combout\ & (\B[20]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[20]~19_combout\,
	datab => \Ain[20]~19_combout\,
	datac => \B[20]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Carry[21]~20_combout\);

-- Location: IOIBUF_X33_Y73_N1
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X35_Y73_N15
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LCCOMB_X30_Y69_N14
\Ain[21]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[21]~20_combout\ = \A[21]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[21]~input_o\,
	datad => \NotA~input_o\,
	combout => \Ain[21]~20_combout\);

-- Location: LCCOMB_X30_Y69_N16
\Adder64|Y[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(21) = \Adder64|Carry[21]~20_combout\ $ (\B[21]~input_o\ $ (\Ain[21]~20_combout\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[21]~20_combout\,
	datab => \B[21]~input_o\,
	datac => \Ain[21]~20_combout\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Y\(21));

-- Location: IOIBUF_X23_Y73_N1
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X27_Y73_N8
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X30_Y69_N28
\Ain[22]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[22]~21_combout\ = \A[22]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[22]~input_o\,
	datad => \NotA~input_o\,
	combout => \Ain[22]~21_combout\);

-- Location: LCCOMB_X30_Y69_N26
\Adder64|Carry[22]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[22]~21_combout\ = (\Adder64|Carry[21]~20_combout\ & ((\Ain[21]~20_combout\) # (\B[21]~input_o\ $ (\AddnSub~input_o\)))) # (!\Adder64|Carry[21]~20_combout\ & (\Ain[21]~20_combout\ & (\B[21]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[21]~20_combout\,
	datab => \B[21]~input_o\,
	datac => \Ain[21]~20_combout\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Carry[22]~21_combout\);

-- Location: LCCOMB_X30_Y69_N6
\Adder64|Y[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(22) = \B[22]~input_o\ $ (\Ain[22]~21_combout\ $ (\Adder64|Carry[22]~21_combout\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \Ain[22]~21_combout\,
	datac => \Adder64|Carry[22]~21_combout\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Y\(22));

-- Location: IOIBUF_X31_Y73_N1
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X30_Y69_N10
\Ain[23]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[23]~22_combout\ = \A[23]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[23]~input_o\,
	datad => \NotA~input_o\,
	combout => \Ain[23]~22_combout\);

-- Location: LCCOMB_X30_Y69_N0
\Adder64|Carry[23]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[23]~22_combout\ = (\Ain[22]~21_combout\ & ((\Adder64|Carry[22]~21_combout\) # (\B[22]~input_o\ $ (\AddnSub~input_o\)))) # (!\Ain[22]~21_combout\ & (\Adder64|Carry[22]~21_combout\ & (\B[22]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \Ain[22]~21_combout\,
	datac => \Adder64|Carry[22]~21_combout\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Carry[23]~22_combout\);

-- Location: IOIBUF_X33_Y73_N8
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LCCOMB_X30_Y69_N4
\Adder64|Y[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(23) = \Ain[23]~22_combout\ $ (\Adder64|Carry[23]~22_combout\ $ (\B[23]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ain[23]~22_combout\,
	datab => \Adder64|Carry[23]~22_combout\,
	datac => \B[23]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Y\(23));

-- Location: LCCOMB_X30_Y69_N22
\Adder64|Carry[24]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[24]~23_combout\ = (\Ain[23]~22_combout\ & ((\Adder64|Carry[23]~22_combout\) # (\B[23]~input_o\ $ (\AddnSub~input_o\)))) # (!\Ain[23]~22_combout\ & (\Adder64|Carry[23]~22_combout\ & (\B[23]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ain[23]~22_combout\,
	datab => \Adder64|Carry[23]~22_combout\,
	datac => \B[23]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Carry[24]~23_combout\);

-- Location: IOIBUF_X115_Y16_N1
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X114_Y16_N8
\Ain[24]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[24]~23_combout\ = \NotA~input_o\ $ (\A[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \NotA~input_o\,
	datad => \A[24]~input_o\,
	combout => \Ain[24]~23_combout\);

-- Location: IOIBUF_X115_Y16_N8
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LCCOMB_X114_Y16_N10
\Adder64|Y[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(24) = \Adder64|Carry[24]~23_combout\ $ (\AddnSub~input_o\ $ (\Ain[24]~23_combout\ $ (\B[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[24]~23_combout\,
	datab => \AddnSub~input_o\,
	datac => \Ain[24]~23_combout\,
	datad => \B[24]~input_o\,
	combout => \Adder64|Y\(24));

-- Location: IOIBUF_X115_Y18_N1
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X114_Y16_N30
\Ain[25]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[25]~24_combout\ = \NotA~input_o\ $ (\A[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \NotA~input_o\,
	datad => \A[25]~input_o\,
	combout => \Ain[25]~24_combout\);

-- Location: IOIBUF_X115_Y14_N1
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LCCOMB_X114_Y16_N12
\Adder64|Carry[25]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[25]~24_combout\ = (\Adder64|Carry[24]~23_combout\ & ((\Ain[24]~23_combout\) # (\AddnSub~input_o\ $ (\B[24]~input_o\)))) # (!\Adder64|Carry[24]~23_combout\ & (\Ain[24]~23_combout\ & (\AddnSub~input_o\ $ (\B[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[24]~23_combout\,
	datab => \AddnSub~input_o\,
	datac => \Ain[24]~23_combout\,
	datad => \B[24]~input_o\,
	combout => \Adder64|Carry[25]~24_combout\);

-- Location: LCCOMB_X114_Y16_N0
\Adder64|Y[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(25) = \Ain[25]~24_combout\ $ (\AddnSub~input_o\ $ (\B[25]~input_o\ $ (\Adder64|Carry[25]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ain[25]~24_combout\,
	datab => \AddnSub~input_o\,
	datac => \B[25]~input_o\,
	datad => \Adder64|Carry[25]~24_combout\,
	combout => \Adder64|Y\(25));

-- Location: IOIBUF_X115_Y19_N1
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X114_Y16_N4
\Ain[26]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[26]~25_combout\ = \A[26]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datac => \NotA~input_o\,
	combout => \Ain[26]~25_combout\);

-- Location: LCCOMB_X114_Y16_N2
\Adder64|Carry[26]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[26]~25_combout\ = (\Ain[25]~24_combout\ & ((\Adder64|Carry[25]~24_combout\) # (\AddnSub~input_o\ $ (\B[25]~input_o\)))) # (!\Ain[25]~24_combout\ & (\Adder64|Carry[25]~24_combout\ & (\AddnSub~input_o\ $ (\B[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ain[25]~24_combout\,
	datab => \AddnSub~input_o\,
	datac => \B[25]~input_o\,
	datad => \Adder64|Carry[25]~24_combout\,
	combout => \Adder64|Carry[26]~25_combout\);

-- Location: LCCOMB_X114_Y16_N6
\Adder64|Y[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(26) = \B[26]~input_o\ $ (\AddnSub~input_o\ $ (\Ain[26]~25_combout\ $ (\Adder64|Carry[26]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Ain[26]~25_combout\,
	datad => \Adder64|Carry[26]~25_combout\,
	combout => \Adder64|Y\(26));

-- Location: IOIBUF_X115_Y19_N8
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LCCOMB_X114_Y16_N26
\Ain[27]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[27]~26_combout\ = \A[27]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[27]~input_o\,
	datac => \NotA~input_o\,
	combout => \Ain[27]~26_combout\);

-- Location: LCCOMB_X114_Y16_N24
\Adder64|Carry[27]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[27]~26_combout\ = (\Ain[26]~25_combout\ & ((\Adder64|Carry[26]~25_combout\) # (\B[26]~input_o\ $ (\AddnSub~input_o\)))) # (!\Ain[26]~25_combout\ & (\Adder64|Carry[26]~25_combout\ & (\B[26]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Ain[26]~25_combout\,
	datad => \Adder64|Carry[26]~25_combout\,
	combout => \Adder64|Carry[27]~26_combout\);

-- Location: LCCOMB_X114_Y16_N20
\Adder64|Y[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(27) = \B[27]~input_o\ $ (\AddnSub~input_o\ $ (\Ain[27]~26_combout\ $ (\Adder64|Carry[27]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Ain[27]~26_combout\,
	datad => \Adder64|Carry[27]~26_combout\,
	combout => \Adder64|Y\(27));

-- Location: LCCOMB_X114_Y16_N22
\Adder64|Carry[28]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[28]~27_combout\ = (\Ain[27]~26_combout\ & ((\Adder64|Carry[27]~26_combout\) # (\B[27]~input_o\ $ (\AddnSub~input_o\)))) # (!\Ain[27]~26_combout\ & (\Adder64|Carry[27]~26_combout\ & (\B[27]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Ain[27]~26_combout\,
	datad => \Adder64|Carry[27]~26_combout\,
	combout => \Adder64|Carry[28]~27_combout\);

-- Location: IOIBUF_X115_Y18_N8
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X114_Y16_N16
\Ain[28]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[28]~27_combout\ = \NotA~input_o\ $ (\A[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \NotA~input_o\,
	datad => \A[28]~input_o\,
	combout => \Ain[28]~27_combout\);

-- Location: IOIBUF_X115_Y13_N8
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X114_Y16_N18
\Adder64|Y[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(28) = \Adder64|Carry[28]~27_combout\ $ (\Ain[28]~27_combout\ $ (\B[28]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[28]~27_combout\,
	datab => \Ain[28]~27_combout\,
	datac => \B[28]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Y\(28));

-- Location: IOIBUF_X62_Y73_N15
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LCCOMB_X114_Y16_N28
\Adder64|Carry[29]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[29]~28_combout\ = (\Adder64|Carry[28]~27_combout\ & ((\Ain[28]~27_combout\) # (\B[28]~input_o\ $ (\AddnSub~input_o\)))) # (!\Adder64|Carry[28]~27_combout\ & (\Ain[28]~27_combout\ & (\B[28]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[28]~27_combout\,
	datab => \Ain[28]~27_combout\,
	datac => \B[28]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Carry[29]~28_combout\);

-- Location: IOIBUF_X60_Y73_N1
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X61_Y69_N0
\Ain[29]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[29]~28_combout\ = \A[29]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[29]~input_o\,
	datad => \NotA~input_o\,
	combout => \Ain[29]~28_combout\);

-- Location: LCCOMB_X61_Y69_N2
\Adder64|Y[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(29) = \AddnSub~input_o\ $ (\B[29]~input_o\ $ (\Adder64|Carry[29]~28_combout\ $ (\Ain[29]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[29]~input_o\,
	datac => \Adder64|Carry[29]~28_combout\,
	datad => \Ain[29]~28_combout\,
	combout => \Adder64|Y\(29));

-- Location: LCCOMB_X61_Y69_N12
\Adder64|Carry[30]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[30]~29_combout\ = (\Adder64|Carry[29]~28_combout\ & ((\Ain[29]~28_combout\) # (\AddnSub~input_o\ $ (\B[29]~input_o\)))) # (!\Adder64|Carry[29]~28_combout\ & (\Ain[29]~28_combout\ & (\AddnSub~input_o\ $ (\B[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[29]~input_o\,
	datac => \Adder64|Carry[29]~28_combout\,
	datad => \Ain[29]~28_combout\,
	combout => \Adder64|Carry[30]~29_combout\);

-- Location: IOIBUF_X65_Y73_N8
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LCCOMB_X61_Y69_N14
\Ain[30]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[30]~29_combout\ = \A[30]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[30]~input_o\,
	datad => \NotA~input_o\,
	combout => \Ain[30]~29_combout\);

-- Location: IOIBUF_X65_Y73_N15
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LCCOMB_X61_Y69_N24
\Adder64|Y[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(30) = \Adder64|Carry[30]~29_combout\ $ (\Ain[30]~29_combout\ $ (\AddnSub~input_o\ $ (\B[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[30]~29_combout\,
	datab => \Ain[30]~29_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[30]~input_o\,
	combout => \Adder64|Y\(30));

-- Location: IOIBUF_X60_Y73_N22
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X62_Y73_N22
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X61_Y69_N20
\Ain[31]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[31]~30_combout\ = \NotA~input_o\ $ (\A[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datad => \A[31]~input_o\,
	combout => \Ain[31]~30_combout\);

-- Location: LCCOMB_X61_Y69_N10
\Adder64|Carry[31]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[31]~30_combout\ = (\Adder64|Carry[30]~29_combout\ & ((\Ain[30]~29_combout\) # (\AddnSub~input_o\ $ (\B[30]~input_o\)))) # (!\Adder64|Carry[30]~29_combout\ & (\Ain[30]~29_combout\ & (\AddnSub~input_o\ $ (\B[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[30]~29_combout\,
	datab => \Ain[30]~29_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[30]~input_o\,
	combout => \Adder64|Carry[31]~30_combout\);

-- Location: LCCOMB_X61_Y69_N30
\Adder64|Y[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(31) = \B[31]~input_o\ $ (\Ain[31]~30_combout\ $ (\AddnSub~input_o\ $ (\Adder64|Carry[31]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[31]~input_o\,
	datab => \Ain[31]~30_combout\,
	datac => \AddnSub~input_o\,
	datad => \Adder64|Carry[31]~30_combout\,
	combout => \Adder64|Y\(31));

-- Location: IOIBUF_X60_Y73_N8
\A[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: LCCOMB_X61_Y69_N26
\Ain[32]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[32]~31_combout\ = \A[32]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[32]~input_o\,
	datad => \NotA~input_o\,
	combout => \Ain[32]~31_combout\);

-- Location: LCCOMB_X61_Y69_N8
\Adder64|Carry[32]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[32]~31_combout\ = (\Ain[31]~30_combout\ & ((\Adder64|Carry[31]~30_combout\) # (\B[31]~input_o\ $ (\AddnSub~input_o\)))) # (!\Ain[31]~30_combout\ & (\Adder64|Carry[31]~30_combout\ & (\B[31]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[31]~input_o\,
	datab => \Ain[31]~30_combout\,
	datac => \AddnSub~input_o\,
	datad => \Adder64|Carry[31]~30_combout\,
	combout => \Adder64|Carry[32]~31_combout\);

-- Location: IOIBUF_X60_Y73_N15
\B[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: LCCOMB_X61_Y69_N4
\Adder64|Y[32]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(32) = \Ain[32]~31_combout\ $ (\Adder64|Carry[32]~31_combout\ $ (\AddnSub~input_o\ $ (\B[32]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ain[32]~31_combout\,
	datab => \Adder64|Carry[32]~31_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[32]~input_o\,
	combout => \Adder64|Y\(32));

-- Location: LCCOMB_X61_Y69_N6
\Adder64|Carry[33]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[33]~32_combout\ = (\Ain[32]~31_combout\ & ((\Adder64|Carry[32]~31_combout\) # (\AddnSub~input_o\ $ (\B[32]~input_o\)))) # (!\Ain[32]~31_combout\ & (\Adder64|Carry[32]~31_combout\ & (\AddnSub~input_o\ $ (\B[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ain[32]~31_combout\,
	datab => \Adder64|Carry[32]~31_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[32]~input_o\,
	combout => \Adder64|Carry[33]~32_combout\);

-- Location: IOIBUF_X58_Y0_N22
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: LCCOMB_X61_Y69_N16
\Ain[33]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[33]~32_combout\ = \NotA~input_o\ $ (\A[33]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datad => \A[33]~input_o\,
	combout => \Ain[33]~32_combout\);

-- Location: IOIBUF_X58_Y0_N15
\B[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: LCCOMB_X61_Y69_N18
\Adder64|Y[33]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(33) = \Adder64|Carry[33]~32_combout\ $ (\Ain[33]~32_combout\ $ (\AddnSub~input_o\ $ (\B[33]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[33]~32_combout\,
	datab => \Ain[33]~32_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[33]~input_o\,
	combout => \Adder64|Y\(33));

-- Location: LCCOMB_X61_Y69_N28
\Adder64|Carry[34]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[34]~33_combout\ = (\Adder64|Carry[33]~32_combout\ & ((\Ain[33]~32_combout\) # (\AddnSub~input_o\ $ (\B[33]~input_o\)))) # (!\Adder64|Carry[33]~32_combout\ & (\Ain[33]~32_combout\ & (\AddnSub~input_o\ $ (\B[33]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[33]~32_combout\,
	datab => \Ain[33]~32_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[33]~input_o\,
	combout => \Adder64|Carry[34]~33_combout\);

-- Location: IOIBUF_X52_Y73_N15
\A[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: LCCOMB_X55_Y69_N16
\Ain[34]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[34]~33_combout\ = \A[34]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[34]~input_o\,
	datad => \NotA~input_o\,
	combout => \Ain[34]~33_combout\);

-- Location: IOIBUF_X52_Y73_N8
\B[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: LCCOMB_X55_Y69_N18
\Adder64|Y[34]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(34) = \Adder64|Carry[34]~33_combout\ $ (\Ain[34]~33_combout\ $ (\B[34]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[34]~33_combout\,
	datab => \Ain[34]~33_combout\,
	datac => \B[34]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Y\(34));

-- Location: LCCOMB_X55_Y69_N12
\Adder64|Carry[35]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[35]~34_combout\ = (\Adder64|Carry[34]~33_combout\ & ((\Ain[34]~33_combout\) # (\B[34]~input_o\ $ (\AddnSub~input_o\)))) # (!\Adder64|Carry[34]~33_combout\ & (\Ain[34]~33_combout\ & (\B[34]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[34]~33_combout\,
	datab => \Ain[34]~33_combout\,
	datac => \B[34]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Carry[35]~34_combout\);

-- Location: IOIBUF_X58_Y0_N8
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: IOIBUF_X52_Y73_N22
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: LCCOMB_X55_Y69_N6
\Ain[35]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[35]~34_combout\ = \A[35]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[35]~input_o\,
	datad => \NotA~input_o\,
	combout => \Ain[35]~34_combout\);

-- Location: LCCOMB_X55_Y69_N8
\Adder64|Y[35]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(35) = \Adder64|Carry[35]~34_combout\ $ (\AddnSub~input_o\ $ (\B[35]~input_o\ $ (\Ain[35]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[35]~34_combout\,
	datab => \AddnSub~input_o\,
	datac => \B[35]~input_o\,
	datad => \Ain[35]~34_combout\,
	combout => \Adder64|Y\(35));

-- Location: LCCOMB_X55_Y69_N26
\Adder64|Carry[36]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[36]~35_combout\ = (\Adder64|Carry[35]~34_combout\ & ((\Ain[35]~34_combout\) # (\AddnSub~input_o\ $ (\B[35]~input_o\)))) # (!\Adder64|Carry[35]~34_combout\ & (\Ain[35]~34_combout\ & (\AddnSub~input_o\ $ (\B[35]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[35]~34_combout\,
	datab => \AddnSub~input_o\,
	datac => \B[35]~input_o\,
	datad => \Ain[35]~34_combout\,
	combout => \Adder64|Carry[36]~35_combout\);

-- Location: IOIBUF_X58_Y0_N1
\A[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: LCCOMB_X97_Y69_N0
\Ain[36]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[36]~35_combout\ = \NotA~input_o\ $ (\A[36]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \NotA~input_o\,
	datad => \A[36]~input_o\,
	combout => \Ain[36]~35_combout\);

-- Location: IOIBUF_X100_Y73_N22
\B[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: LCCOMB_X97_Y69_N26
\Adder64|Y[36]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(36) = \Adder64|Carry[36]~35_combout\ $ (\Ain[36]~35_combout\ $ (\AddnSub~input_o\ $ (\B[36]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[36]~35_combout\,
	datab => \Ain[36]~35_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[36]~input_o\,
	combout => \Adder64|Y\(36));

-- Location: IOIBUF_X98_Y73_N15
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: LCCOMB_X97_Y69_N22
\Ain[37]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[37]~36_combout\ = \NotA~input_o\ $ (\A[37]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \NotA~input_o\,
	datad => \A[37]~input_o\,
	combout => \Ain[37]~36_combout\);

-- Location: LCCOMB_X97_Y69_N28
\Adder64|Carry[37]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[37]~36_combout\ = (\Adder64|Carry[36]~35_combout\ & ((\Ain[36]~35_combout\) # (\AddnSub~input_o\ $ (\B[36]~input_o\)))) # (!\Adder64|Carry[36]~35_combout\ & (\Ain[36]~35_combout\ & (\AddnSub~input_o\ $ (\B[36]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[36]~35_combout\,
	datab => \Ain[36]~35_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[36]~input_o\,
	combout => \Adder64|Carry[37]~36_combout\);

-- Location: IOIBUF_X102_Y73_N8
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: LCCOMB_X97_Y69_N24
\Adder64|Y[37]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(37) = \Ain[37]~36_combout\ $ (\Adder64|Carry[37]~36_combout\ $ (\AddnSub~input_o\ $ (\B[37]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ain[37]~36_combout\,
	datab => \Adder64|Carry[37]~36_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[37]~input_o\,
	combout => \Adder64|Y\(37));

-- Location: LCCOMB_X97_Y69_N10
\Adder64|Carry[38]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[38]~37_combout\ = (\Ain[37]~36_combout\ & ((\Adder64|Carry[37]~36_combout\) # (\AddnSub~input_o\ $ (\B[37]~input_o\)))) # (!\Ain[37]~36_combout\ & (\Adder64|Carry[37]~36_combout\ & (\AddnSub~input_o\ $ (\B[37]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ain[37]~36_combout\,
	datab => \Adder64|Carry[37]~36_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[37]~input_o\,
	combout => \Adder64|Carry[38]~37_combout\);

-- Location: IOIBUF_X105_Y73_N1
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: LCCOMB_X97_Y69_N20
\Ain[38]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[38]~37_combout\ = \NotA~input_o\ $ (\A[38]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datac => \A[38]~input_o\,
	combout => \Ain[38]~37_combout\);

-- Location: IOIBUF_X102_Y73_N1
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: LCCOMB_X97_Y69_N14
\Adder64|Y[38]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(38) = \Adder64|Carry[38]~37_combout\ $ (\Ain[38]~37_combout\ $ (\AddnSub~input_o\ $ (\B[38]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[38]~37_combout\,
	datab => \Ain[38]~37_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[38]~input_o\,
	combout => \Adder64|Y\(38));

-- Location: IOIBUF_X107_Y73_N8
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: IOIBUF_X100_Y73_N15
\A[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: LCCOMB_X97_Y69_N2
\Ain[39]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[39]~38_combout\ = \NotA~input_o\ $ (\A[39]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \NotA~input_o\,
	datad => \A[39]~input_o\,
	combout => \Ain[39]~38_combout\);

-- Location: LCCOMB_X97_Y69_N16
\Adder64|Carry[39]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[39]~38_combout\ = (\Adder64|Carry[38]~37_combout\ & ((\Ain[38]~37_combout\) # (\AddnSub~input_o\ $ (\B[38]~input_o\)))) # (!\Adder64|Carry[38]~37_combout\ & (\Ain[38]~37_combout\ & (\AddnSub~input_o\ $ (\B[38]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[38]~37_combout\,
	datab => \Ain[38]~37_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[38]~input_o\,
	combout => \Adder64|Carry[39]~38_combout\);

-- Location: LCCOMB_X97_Y69_N4
\Adder64|Y[39]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(39) = \B[39]~input_o\ $ (\Ain[39]~38_combout\ $ (\AddnSub~input_o\ $ (\Adder64|Carry[39]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[39]~input_o\,
	datab => \Ain[39]~38_combout\,
	datac => \AddnSub~input_o\,
	datad => \Adder64|Carry[39]~38_combout\,
	combout => \Adder64|Y\(39));

-- Location: LCCOMB_X97_Y69_N6
\Adder64|Carry[40]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[40]~39_combout\ = (\Ain[39]~38_combout\ & ((\Adder64|Carry[39]~38_combout\) # (\B[39]~input_o\ $ (\AddnSub~input_o\)))) # (!\Ain[39]~38_combout\ & (\Adder64|Carry[39]~38_combout\ & (\B[39]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[39]~input_o\,
	datab => \Ain[39]~38_combout\,
	datac => \AddnSub~input_o\,
	datad => \Adder64|Carry[39]~38_combout\,
	combout => \Adder64|Carry[40]~39_combout\);

-- Location: IOIBUF_X113_Y73_N8
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: LCCOMB_X105_Y69_N8
\Ain[40]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[40]~39_combout\ = \NotA~input_o\ $ (\A[40]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datad => \A[40]~input_o\,
	combout => \Ain[40]~39_combout\);

-- Location: IOIBUF_X105_Y73_N8
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: LCCOMB_X105_Y69_N2
\Adder64|Y[40]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(40) = \Adder64|Carry[40]~39_combout\ $ (\AddnSub~input_o\ $ (\Ain[40]~39_combout\ $ (\B[40]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[40]~39_combout\,
	datab => \AddnSub~input_o\,
	datac => \Ain[40]~39_combout\,
	datad => \B[40]~input_o\,
	combout => \Adder64|Y\(40));

-- Location: LCCOMB_X105_Y69_N12
\Adder64|Carry[41]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[41]~40_combout\ = (\Adder64|Carry[40]~39_combout\ & ((\Ain[40]~39_combout\) # (\AddnSub~input_o\ $ (\B[40]~input_o\)))) # (!\Adder64|Carry[40]~39_combout\ & (\Ain[40]~39_combout\ & (\AddnSub~input_o\ $ (\B[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[40]~39_combout\,
	datab => \AddnSub~input_o\,
	datac => \Ain[40]~39_combout\,
	datad => \B[40]~input_o\,
	combout => \Adder64|Carry[41]~40_combout\);

-- Location: IOIBUF_X107_Y73_N1
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: LCCOMB_X105_Y69_N30
\Ain[41]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[41]~40_combout\ = \A[41]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[41]~input_o\,
	datad => \NotA~input_o\,
	combout => \Ain[41]~40_combout\);

-- Location: IOIBUF_X111_Y73_N1
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: LCCOMB_X105_Y69_N0
\Adder64|Y[41]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(41) = \Adder64|Carry[41]~40_combout\ $ (\AddnSub~input_o\ $ (\Ain[41]~40_combout\ $ (\B[41]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[41]~40_combout\,
	datab => \AddnSub~input_o\,
	datac => \Ain[41]~40_combout\,
	datad => \B[41]~input_o\,
	combout => \Adder64|Y\(41));

-- Location: IOIBUF_X107_Y73_N22
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: IOIBUF_X111_Y73_N8
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: LCCOMB_X105_Y69_N4
\Ain[42]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[42]~41_combout\ = \NotA~input_o\ $ (\A[42]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datad => \A[42]~input_o\,
	combout => \Ain[42]~41_combout\);

-- Location: LCCOMB_X105_Y69_N18
\Adder64|Carry[42]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[42]~41_combout\ = (\Adder64|Carry[41]~40_combout\ & ((\Ain[41]~40_combout\) # (\AddnSub~input_o\ $ (\B[41]~input_o\)))) # (!\Adder64|Carry[41]~40_combout\ & (\Ain[41]~40_combout\ & (\AddnSub~input_o\ $ (\B[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[41]~40_combout\,
	datab => \AddnSub~input_o\,
	datac => \Ain[41]~40_combout\,
	datad => \B[41]~input_o\,
	combout => \Adder64|Carry[42]~41_combout\);

-- Location: LCCOMB_X105_Y69_N6
\Adder64|Y[42]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(42) = \B[42]~input_o\ $ (\AddnSub~input_o\ $ (\Ain[42]~41_combout\ $ (\Adder64|Carry[42]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[42]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Ain[42]~41_combout\,
	datad => \Adder64|Carry[42]~41_combout\,
	combout => \Adder64|Y\(42));

-- Location: IOIBUF_X109_Y73_N8
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: IOIBUF_X109_Y73_N1
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: LCCOMB_X105_Y69_N10
\Ain[43]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[43]~42_combout\ = \A[43]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[43]~input_o\,
	datad => \NotA~input_o\,
	combout => \Ain[43]~42_combout\);

-- Location: LCCOMB_X105_Y69_N24
\Adder64|Carry[43]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[43]~42_combout\ = (\Ain[42]~41_combout\ & ((\Adder64|Carry[42]~41_combout\) # (\B[42]~input_o\ $ (\AddnSub~input_o\)))) # (!\Ain[42]~41_combout\ & (\Adder64|Carry[42]~41_combout\ & (\B[42]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[42]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Ain[42]~41_combout\,
	datad => \Adder64|Carry[42]~41_combout\,
	combout => \Adder64|Carry[43]~42_combout\);

-- Location: LCCOMB_X105_Y69_N28
\Adder64|Y[43]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(43) = \B[43]~input_o\ $ (\AddnSub~input_o\ $ (\Ain[43]~42_combout\ $ (\Adder64|Carry[43]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[43]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Ain[43]~42_combout\,
	datad => \Adder64|Carry[43]~42_combout\,
	combout => \Adder64|Y\(43));

-- Location: IOIBUF_X83_Y73_N8
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: IOIBUF_X81_Y73_N22
\A[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: LCCOMB_X82_Y69_N8
\Ain[44]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[44]~43_combout\ = \A[44]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[44]~input_o\,
	datad => \NotA~input_o\,
	combout => \Ain[44]~43_combout\);

-- Location: LCCOMB_X105_Y69_N22
\Adder64|Carry[44]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[44]~43_combout\ = (\Ain[43]~42_combout\ & ((\Adder64|Carry[43]~42_combout\) # (\B[43]~input_o\ $ (\AddnSub~input_o\)))) # (!\Ain[43]~42_combout\ & (\Adder64|Carry[43]~42_combout\ & (\B[43]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[43]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Ain[43]~42_combout\,
	datad => \Adder64|Carry[43]~42_combout\,
	combout => \Adder64|Carry[44]~43_combout\);

-- Location: LCCOMB_X82_Y69_N18
\Adder64|Y[44]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(44) = \B[44]~input_o\ $ (\Ain[44]~43_combout\ $ (\Adder64|Carry[44]~43_combout\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[44]~input_o\,
	datab => \Ain[44]~43_combout\,
	datac => \Adder64|Carry[44]~43_combout\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Y\(44));

-- Location: IOIBUF_X81_Y73_N8
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: LCCOMB_X82_Y69_N28
\Adder64|Carry[45]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[45]~44_combout\ = (\Ain[44]~43_combout\ & ((\Adder64|Carry[44]~43_combout\) # (\B[44]~input_o\ $ (\AddnSub~input_o\)))) # (!\Ain[44]~43_combout\ & (\Adder64|Carry[44]~43_combout\ & (\B[44]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[44]~input_o\,
	datab => \Ain[44]~43_combout\,
	datac => \Adder64|Carry[44]~43_combout\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Carry[45]~44_combout\);

-- Location: IOIBUF_X85_Y73_N1
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: LCCOMB_X82_Y69_N14
\Ain[45]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[45]~44_combout\ = \A[45]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datad => \NotA~input_o\,
	combout => \Ain[45]~44_combout\);

-- Location: LCCOMB_X82_Y69_N16
\Adder64|Y[45]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(45) = \B[45]~input_o\ $ (\Adder64|Carry[45]~44_combout\ $ (\Ain[45]~44_combout\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[45]~input_o\,
	datab => \Adder64|Carry[45]~44_combout\,
	datac => \Ain[45]~44_combout\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Y\(45));

-- Location: IOIBUF_X81_Y73_N1
\A[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: LCCOMB_X82_Y69_N12
\Ain[46]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[46]~45_combout\ = \A[46]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[46]~input_o\,
	datad => \NotA~input_o\,
	combout => \Ain[46]~45_combout\);

-- Location: LCCOMB_X82_Y69_N2
\Adder64|Carry[46]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[46]~45_combout\ = (\Adder64|Carry[45]~44_combout\ & ((\Ain[45]~44_combout\) # (\B[45]~input_o\ $ (\AddnSub~input_o\)))) # (!\Adder64|Carry[45]~44_combout\ & (\Ain[45]~44_combout\ & (\B[45]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[45]~input_o\,
	datab => \Adder64|Carry[45]~44_combout\,
	datac => \Ain[45]~44_combout\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Carry[46]~45_combout\);

-- Location: IOIBUF_X83_Y73_N1
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: LCCOMB_X82_Y69_N6
\Adder64|Y[46]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(46) = \Ain[46]~45_combout\ $ (\Adder64|Carry[46]~45_combout\ $ (\B[46]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ain[46]~45_combout\,
	datab => \Adder64|Carry[46]~45_combout\,
	datac => \B[46]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Y\(46));

-- Location: IOIBUF_X83_Y73_N22
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: LCCOMB_X82_Y69_N10
\Ain[47]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[47]~46_combout\ = \A[47]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[47]~input_o\,
	datad => \NotA~input_o\,
	combout => \Ain[47]~46_combout\);

-- Location: LCCOMB_X82_Y69_N24
\Adder64|Carry[47]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[47]~46_combout\ = (\Ain[46]~45_combout\ & ((\Adder64|Carry[46]~45_combout\) # (\B[46]~input_o\ $ (\AddnSub~input_o\)))) # (!\Ain[46]~45_combout\ & (\Adder64|Carry[46]~45_combout\ & (\B[46]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ain[46]~45_combout\,
	datab => \Adder64|Carry[46]~45_combout\,
	datac => \B[46]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Carry[47]~46_combout\);

-- Location: IOIBUF_X83_Y73_N15
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: LCCOMB_X82_Y69_N20
\Adder64|Y[47]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(47) = \Ain[47]~46_combout\ $ (\Adder64|Carry[47]~46_combout\ $ (\B[47]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ain[47]~46_combout\,
	datab => \Adder64|Carry[47]~46_combout\,
	datac => \B[47]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Y\(47));

-- Location: IOIBUF_X79_Y73_N1
\B[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: IOIBUF_X81_Y73_N15
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: LCCOMB_X82_Y69_N0
\Ain[48]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[48]~47_combout\ = \A[48]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[48]~input_o\,
	datad => \NotA~input_o\,
	combout => \Ain[48]~47_combout\);

-- Location: LCCOMB_X82_Y69_N22
\Adder64|Carry[48]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[48]~47_combout\ = (\Ain[47]~46_combout\ & ((\Adder64|Carry[47]~46_combout\) # (\B[47]~input_o\ $ (\AddnSub~input_o\)))) # (!\Ain[47]~46_combout\ & (\Adder64|Carry[47]~46_combout\ & (\B[47]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ain[47]~46_combout\,
	datab => \Adder64|Carry[47]~46_combout\,
	datac => \B[47]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Carry[48]~47_combout\);

-- Location: LCCOMB_X82_Y69_N26
\Adder64|Y[48]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(48) = \B[48]~input_o\ $ (\Ain[48]~47_combout\ $ (\Adder64|Carry[48]~47_combout\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[48]~input_o\,
	datab => \Ain[48]~47_combout\,
	datac => \Adder64|Carry[48]~47_combout\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Y\(48));

-- Location: LCCOMB_X82_Y69_N4
\Adder64|Carry[49]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[49]~48_combout\ = (\Ain[48]~47_combout\ & ((\Adder64|Carry[48]~47_combout\) # (\B[48]~input_o\ $ (\AddnSub~input_o\)))) # (!\Ain[48]~47_combout\ & (\Adder64|Carry[48]~47_combout\ & (\B[48]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[48]~input_o\,
	datab => \Ain[48]~47_combout\,
	datac => \Adder64|Carry[48]~47_combout\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Carry[49]~48_combout\);

-- Location: IOIBUF_X0_Y52_N15
\B[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: IOIBUF_X0_Y52_N22
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: LCCOMB_X1_Y52_N0
\Ain[49]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[49]~48_combout\ = \A[49]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[49]~input_o\,
	datad => \NotA~input_o\,
	combout => \Ain[49]~48_combout\);

-- Location: LCCOMB_X1_Y52_N10
\Adder64|Y[49]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(49) = \Adder64|Carry[49]~48_combout\ $ (\B[49]~input_o\ $ (\AddnSub~input_o\ $ (\Ain[49]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[49]~48_combout\,
	datab => \B[49]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Ain[49]~48_combout\,
	combout => \Adder64|Y\(49));

-- Location: IOIBUF_X0_Y49_N8
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: LCCOMB_X1_Y52_N22
\Ain[50]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[50]~49_combout\ = \A[50]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[50]~input_o\,
	datad => \NotA~input_o\,
	combout => \Ain[50]~49_combout\);

-- Location: LCCOMB_X1_Y52_N20
\Adder64|Carry[50]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[50]~49_combout\ = (\Adder64|Carry[49]~48_combout\ & ((\Ain[49]~48_combout\) # (\B[49]~input_o\ $ (\AddnSub~input_o\)))) # (!\Adder64|Carry[49]~48_combout\ & (\Ain[49]~48_combout\ & (\B[49]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[49]~48_combout\,
	datab => \B[49]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Ain[49]~48_combout\,
	combout => \Adder64|Carry[50]~49_combout\);

-- Location: IOIBUF_X0_Y44_N1
\B[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: LCCOMB_X1_Y52_N16
\Adder64|Y[50]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(50) = \Ain[50]~49_combout\ $ (\Adder64|Carry[50]~49_combout\ $ (\AddnSub~input_o\ $ (\B[50]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ain[50]~49_combout\,
	datab => \Adder64|Carry[50]~49_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[50]~input_o\,
	combout => \Adder64|Y\(50));

-- Location: IOIBUF_X0_Y44_N22
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: IOIBUF_X0_Y45_N22
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: LCCOMB_X1_Y52_N4
\Ain[51]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[51]~50_combout\ = \A[51]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[51]~input_o\,
	datad => \NotA~input_o\,
	combout => \Ain[51]~50_combout\);

-- Location: LCCOMB_X1_Y52_N18
\Adder64|Carry[51]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[51]~50_combout\ = (\Ain[50]~49_combout\ & ((\Adder64|Carry[50]~49_combout\) # (\AddnSub~input_o\ $ (\B[50]~input_o\)))) # (!\Ain[50]~49_combout\ & (\Adder64|Carry[50]~49_combout\ & (\AddnSub~input_o\ $ (\B[50]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ain[50]~49_combout\,
	datab => \Adder64|Carry[50]~49_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[50]~input_o\,
	combout => \Adder64|Carry[51]~50_combout\);

-- Location: LCCOMB_X1_Y52_N6
\Adder64|Y[51]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(51) = \B[51]~input_o\ $ (\Ain[51]~50_combout\ $ (\AddnSub~input_o\ $ (\Adder64|Carry[51]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[51]~input_o\,
	datab => \Ain[51]~50_combout\,
	datac => \AddnSub~input_o\,
	datad => \Adder64|Carry[51]~50_combout\,
	combout => \Adder64|Y\(51));

-- Location: IOIBUF_X0_Y52_N1
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: LCCOMB_X1_Y52_N24
\Adder64|Carry[52]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[52]~51_combout\ = (\Ain[51]~50_combout\ & ((\Adder64|Carry[51]~50_combout\) # (\B[51]~input_o\ $ (\AddnSub~input_o\)))) # (!\Ain[51]~50_combout\ & (\Adder64|Carry[51]~50_combout\ & (\B[51]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[51]~input_o\,
	datab => \Ain[51]~50_combout\,
	datac => \AddnSub~input_o\,
	datad => \Adder64|Carry[51]~50_combout\,
	combout => \Adder64|Carry[52]~51_combout\);

-- Location: IOIBUF_X0_Y48_N1
\A[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: LCCOMB_X1_Y52_N2
\Ain[52]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[52]~51_combout\ = \A[52]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[52]~input_o\,
	datad => \NotA~input_o\,
	combout => \Ain[52]~51_combout\);

-- Location: LCCOMB_X1_Y52_N12
\Adder64|Y[52]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(52) = \B[52]~input_o\ $ (\Adder64|Carry[52]~51_combout\ $ (\AddnSub~input_o\ $ (\Ain[52]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[52]~input_o\,
	datab => \Adder64|Carry[52]~51_combout\,
	datac => \AddnSub~input_o\,
	datad => \Ain[52]~51_combout\,
	combout => \Adder64|Y\(52));

-- Location: LCCOMB_X1_Y52_N14
\Adder64|Carry[53]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[53]~52_combout\ = (\Adder64|Carry[52]~51_combout\ & ((\Ain[52]~51_combout\) # (\B[52]~input_o\ $ (\AddnSub~input_o\)))) # (!\Adder64|Carry[52]~51_combout\ & (\Ain[52]~51_combout\ & (\B[52]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[52]~input_o\,
	datab => \Adder64|Carry[52]~51_combout\,
	datac => \AddnSub~input_o\,
	datad => \Ain[52]~51_combout\,
	combout => \Adder64|Carry[53]~52_combout\);

-- Location: IOIBUF_X0_Y46_N15
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: LCCOMB_X1_Y54_N8
\Ain[53]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[53]~52_combout\ = \NotA~input_o\ $ (\A[53]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NotA~input_o\,
	datac => \A[53]~input_o\,
	combout => \Ain[53]~52_combout\);

-- Location: IOIBUF_X0_Y49_N1
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: LCCOMB_X1_Y54_N18
\Adder64|Y[53]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(53) = \Adder64|Carry[53]~52_combout\ $ (\Ain[53]~52_combout\ $ (\AddnSub~input_o\ $ (\B[53]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[53]~52_combout\,
	datab => \Ain[53]~52_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[53]~input_o\,
	combout => \Adder64|Y\(53));

-- Location: IOIBUF_X0_Y54_N8
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: IOIBUF_X0_Y53_N8
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: LCCOMB_X1_Y54_N14
\Ain[54]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[54]~53_combout\ = \A[54]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[54]~input_o\,
	datac => \NotA~input_o\,
	combout => \Ain[54]~53_combout\);

-- Location: LCCOMB_X1_Y54_N20
\Adder64|Carry[54]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[54]~53_combout\ = (\Adder64|Carry[53]~52_combout\ & ((\Ain[53]~52_combout\) # (\AddnSub~input_o\ $ (\B[53]~input_o\)))) # (!\Adder64|Carry[53]~52_combout\ & (\Ain[53]~52_combout\ & (\AddnSub~input_o\ $ (\B[53]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[53]~52_combout\,
	datab => \Ain[53]~52_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[53]~input_o\,
	combout => \Adder64|Carry[54]~53_combout\);

-- Location: LCCOMB_X1_Y54_N16
\Adder64|Y[54]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(54) = \B[54]~input_o\ $ (\Ain[54]~53_combout\ $ (\AddnSub~input_o\ $ (\Adder64|Carry[54]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[54]~input_o\,
	datab => \Ain[54]~53_combout\,
	datac => \AddnSub~input_o\,
	datad => \Adder64|Carry[54]~53_combout\,
	combout => \Adder64|Y\(54));

-- Location: LCCOMB_X1_Y54_N26
\Adder64|Carry[55]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[55]~54_combout\ = (\Ain[54]~53_combout\ & ((\Adder64|Carry[54]~53_combout\) # (\B[54]~input_o\ $ (\AddnSub~input_o\)))) # (!\Ain[54]~53_combout\ & (\Adder64|Carry[54]~53_combout\ & (\B[54]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[54]~input_o\,
	datab => \Ain[54]~53_combout\,
	datac => \AddnSub~input_o\,
	datad => \Adder64|Carry[54]~53_combout\,
	combout => \Adder64|Carry[55]~54_combout\);

-- Location: IOIBUF_X0_Y55_N15
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: IOIBUF_X0_Y50_N22
\A[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: LCCOMB_X1_Y54_N28
\Ain[55]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[55]~54_combout\ = \A[55]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datac => \NotA~input_o\,
	combout => \Ain[55]~54_combout\);

-- Location: LCCOMB_X1_Y54_N22
\Adder64|Y[55]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(55) = \Adder64|Carry[55]~54_combout\ $ (\B[55]~input_o\ $ (\AddnSub~input_o\ $ (\Ain[55]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[55]~54_combout\,
	datab => \B[55]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Ain[55]~54_combout\,
	combout => \Adder64|Y\(55));

-- Location: IOIBUF_X0_Y47_N15
\A[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: LCCOMB_X1_Y54_N10
\Ain[56]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[56]~55_combout\ = \NotA~input_o\ $ (\A[56]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NotA~input_o\,
	datac => \A[56]~input_o\,
	combout => \Ain[56]~55_combout\);

-- Location: LCCOMB_X1_Y54_N24
\Adder64|Carry[56]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[56]~55_combout\ = (\Adder64|Carry[55]~54_combout\ & ((\Ain[55]~54_combout\) # (\B[55]~input_o\ $ (\AddnSub~input_o\)))) # (!\Adder64|Carry[55]~54_combout\ & (\Ain[55]~54_combout\ & (\B[55]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[55]~54_combout\,
	datab => \B[55]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Ain[55]~54_combout\,
	combout => \Adder64|Carry[56]~55_combout\);

-- Location: IOIBUF_X0_Y51_N15
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: LCCOMB_X1_Y54_N4
\Adder64|Y[56]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(56) = \Ain[56]~55_combout\ $ (\Adder64|Carry[56]~55_combout\ $ (\AddnSub~input_o\ $ (\B[56]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ain[56]~55_combout\,
	datab => \Adder64|Carry[56]~55_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[56]~input_o\,
	combout => \Adder64|Y\(56));

-- Location: LCCOMB_X1_Y54_N6
\Adder64|Carry[57]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[57]~56_combout\ = (\Ain[56]~55_combout\ & ((\Adder64|Carry[56]~55_combout\) # (\AddnSub~input_o\ $ (\B[56]~input_o\)))) # (!\Ain[56]~55_combout\ & (\Adder64|Carry[56]~55_combout\ & (\AddnSub~input_o\ $ (\B[56]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ain[56]~55_combout\,
	datab => \Adder64|Carry[56]~55_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[56]~input_o\,
	combout => \Adder64|Carry[57]~56_combout\);

-- Location: IOIBUF_X0_Y50_N15
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: LCCOMB_X1_Y54_N0
\Ain[57]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[57]~56_combout\ = \A[57]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[57]~input_o\,
	datac => \NotA~input_o\,
	combout => \Ain[57]~56_combout\);

-- Location: IOIBUF_X0_Y55_N8
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: LCCOMB_X1_Y54_N2
\Adder64|Y[57]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(57) = \Adder64|Carry[57]~56_combout\ $ (\Ain[57]~56_combout\ $ (\AddnSub~input_o\ $ (\B[57]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[57]~56_combout\,
	datab => \Ain[57]~56_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[57]~input_o\,
	combout => \Adder64|Y\(57));

-- Location: IOIBUF_X3_Y73_N22
\B[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: LCCOMB_X1_Y54_N12
\Adder64|Carry[58]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[58]~57_combout\ = (\Adder64|Carry[57]~56_combout\ & ((\Ain[57]~56_combout\) # (\AddnSub~input_o\ $ (\B[57]~input_o\)))) # (!\Adder64|Carry[57]~56_combout\ & (\Ain[57]~56_combout\ & (\AddnSub~input_o\ $ (\B[57]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[57]~56_combout\,
	datab => \Ain[57]~56_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[57]~input_o\,
	combout => \Adder64|Carry[58]~57_combout\);

-- Location: IOIBUF_X9_Y73_N8
\A[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: LCCOMB_X7_Y69_N16
\Ain[58]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[58]~57_combout\ = \NotA~input_o\ $ (\A[58]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NotA~input_o\,
	datad => \A[58]~input_o\,
	combout => \Ain[58]~57_combout\);

-- Location: LCCOMB_X7_Y69_N26
\Adder64|Y[58]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(58) = \B[58]~input_o\ $ (\Adder64|Carry[58]~57_combout\ $ (\AddnSub~input_o\ $ (\Ain[58]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[58]~input_o\,
	datab => \Adder64|Carry[58]~57_combout\,
	datac => \AddnSub~input_o\,
	datad => \Ain[58]~57_combout\,
	combout => \Adder64|Y\(58));

-- Location: IOIBUF_X7_Y73_N15
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: LCCOMB_X7_Y69_N22
\Ain[59]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[59]~58_combout\ = \A[59]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[59]~input_o\,
	datad => \NotA~input_o\,
	combout => \Ain[59]~58_combout\);

-- Location: LCCOMB_X7_Y69_N28
\Adder64|Carry[59]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[59]~58_combout\ = (\Adder64|Carry[58]~57_combout\ & ((\Ain[58]~57_combout\) # (\B[58]~input_o\ $ (\AddnSub~input_o\)))) # (!\Adder64|Carry[58]~57_combout\ & (\Ain[58]~57_combout\ & (\B[58]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[58]~input_o\,
	datab => \Adder64|Carry[58]~57_combout\,
	datac => \AddnSub~input_o\,
	datad => \Ain[58]~57_combout\,
	combout => \Adder64|Carry[59]~58_combout\);

-- Location: IOIBUF_X5_Y73_N22
\B[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: LCCOMB_X7_Y69_N8
\Adder64|Y[59]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(59) = \Ain[59]~58_combout\ $ (\Adder64|Carry[59]~58_combout\ $ (\AddnSub~input_o\ $ (\B[59]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ain[59]~58_combout\,
	datab => \Adder64|Carry[59]~58_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[59]~input_o\,
	combout => \Adder64|Y\(59));

-- Location: LCCOMB_X7_Y69_N10
\Adder64|Carry[60]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[60]~59_combout\ = (\Ain[59]~58_combout\ & ((\Adder64|Carry[59]~58_combout\) # (\AddnSub~input_o\ $ (\B[59]~input_o\)))) # (!\Ain[59]~58_combout\ & (\Adder64|Carry[59]~58_combout\ & (\AddnSub~input_o\ $ (\B[59]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ain[59]~58_combout\,
	datab => \Adder64|Carry[59]~58_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[59]~input_o\,
	combout => \Adder64|Carry[60]~59_combout\);

-- Location: IOIBUF_X7_Y73_N22
\B[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: IOIBUF_X9_Y73_N1
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: LCCOMB_X7_Y69_N12
\Ain[60]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[60]~59_combout\ = \A[60]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[60]~input_o\,
	datad => \NotA~input_o\,
	combout => \Ain[60]~59_combout\);

-- Location: LCCOMB_X7_Y69_N6
\Adder64|Y[60]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(60) = \Adder64|Carry[60]~59_combout\ $ (\B[60]~input_o\ $ (\AddnSub~input_o\ $ (\Ain[60]~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[60]~59_combout\,
	datab => \B[60]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Ain[60]~59_combout\,
	combout => \Adder64|Y\(60));

-- Location: IOIBUF_X0_Y53_N1
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: LCCOMB_X1_Y54_N30
\Ain[61]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[61]~60_combout\ = \NotA~input_o\ $ (\A[61]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NotA~input_o\,
	datac => \A[61]~input_o\,
	combout => \Ain[61]~60_combout\);

-- Location: LCCOMB_X7_Y69_N24
\Adder64|Carry[61]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[61]~60_combout\ = (\Adder64|Carry[60]~59_combout\ & ((\Ain[60]~59_combout\) # (\B[60]~input_o\ $ (\AddnSub~input_o\)))) # (!\Adder64|Carry[60]~59_combout\ & (\Ain[60]~59_combout\ & (\B[60]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[60]~59_combout\,
	datab => \B[60]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Ain[60]~59_combout\,
	combout => \Adder64|Carry[61]~60_combout\);

-- Location: IOIBUF_X11_Y73_N22
\B[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: LCCOMB_X7_Y69_N2
\Adder64|Y[61]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(61) = \Ain[61]~60_combout\ $ (\Adder64|Carry[61]~60_combout\ $ (\AddnSub~input_o\ $ (\B[61]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ain[61]~60_combout\,
	datab => \Adder64|Carry[61]~60_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[61]~input_o\,
	combout => \Adder64|Y\(61));

-- Location: LCCOMB_X7_Y69_N20
\Adder64|Carry[62]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[62]~61_combout\ = (\Ain[61]~60_combout\ & ((\Adder64|Carry[61]~60_combout\) # (\AddnSub~input_o\ $ (\B[61]~input_o\)))) # (!\Ain[61]~60_combout\ & (\Adder64|Carry[61]~60_combout\ & (\AddnSub~input_o\ $ (\B[61]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ain[61]~60_combout\,
	datab => \Adder64|Carry[61]~60_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[61]~input_o\,
	combout => \Adder64|Carry[62]~61_combout\);

-- Location: IOIBUF_X3_Y73_N8
\A[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: LCCOMB_X7_Y69_N14
\Ain[62]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[62]~61_combout\ = \NotA~input_o\ $ (\A[62]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NotA~input_o\,
	datad => \A[62]~input_o\,
	combout => \Ain[62]~61_combout\);

-- Location: IOIBUF_X11_Y73_N8
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: LCCOMB_X7_Y69_N0
\Adder64|Y[62]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(62) = \AddnSub~input_o\ $ (\Adder64|Carry[62]~61_combout\ $ (\Ain[62]~61_combout\ $ (\B[62]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Adder64|Carry[62]~61_combout\,
	datac => \Ain[62]~61_combout\,
	datad => \B[62]~input_o\,
	combout => \Adder64|Y\(62));

-- Location: LCCOMB_X7_Y69_N18
\Adder64|Carry[63]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Carry[63]~62_combout\ = (\Adder64|Carry[62]~61_combout\ & ((\Ain[62]~61_combout\) # (\AddnSub~input_o\ $ (\B[62]~input_o\)))) # (!\Adder64|Carry[62]~61_combout\ & (\Ain[62]~61_combout\ & (\AddnSub~input_o\ $ (\B[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Adder64|Carry[62]~61_combout\,
	datac => \Ain[62]~61_combout\,
	datad => \B[62]~input_o\,
	combout => \Adder64|Carry[63]~62_combout\);

-- Location: IOIBUF_X47_Y73_N15
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: LCCOMB_X55_Y69_N28
\Ain[63]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ain[63]~62_combout\ = \A[63]~input_o\ $ (\NotA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[63]~input_o\,
	datad => \NotA~input_o\,
	combout => \Ain[63]~62_combout\);

-- Location: IOIBUF_X56_Y0_N8
\B[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: LCCOMB_X55_Y69_N14
\Adder64|Y[63]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y\(63) = \Adder64|Carry[63]~62_combout\ $ (\Ain[63]~62_combout\ $ (\B[63]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[63]~62_combout\,
	datab => \Ain[63]~62_combout\,
	datac => \B[63]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Y\(63));

-- Location: IOIBUF_X1_Y73_N22
\ExtWord~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: LCCOMB_X91_Y69_N0
\Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~0_combout\ = (\ExtWord~input_o\ & ((\Adder64|Y\(31)))) # (!\ExtWord~input_o\ & (\Adder64|Y\(32)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \Adder64|Y\(32),
	datad => \Adder64|Y\(31),
	combout => \Y~0_combout\);

-- Location: LCCOMB_X91_Y69_N2
\Y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~1_combout\ = (\ExtWord~input_o\ & ((\Adder64|Y\(31)))) # (!\ExtWord~input_o\ & (\Adder64|Y\(33)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Adder64|Y\(33),
	datad => \Adder64|Y\(31),
	combout => \Y~1_combout\);

-- Location: LCCOMB_X55_Y69_N24
\Y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~2_combout\ = (\ExtWord~input_o\ & (\Adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\Adder64|Y\(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \Adder64|Y\(31),
	datad => \Adder64|Y\(34),
	combout => \Y~2_combout\);

-- Location: LCCOMB_X55_Y69_N10
\Y~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~3_combout\ = (\ExtWord~input_o\ & (\Adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\Adder64|Y\(35))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Y\(31),
	datab => \ExtWord~input_o\,
	datac => \Adder64|Y\(35),
	combout => \Y~3_combout\);

-- Location: LCCOMB_X91_Y69_N20
\Y~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~4_combout\ = (\ExtWord~input_o\ & (\Adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\Adder64|Y\(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Adder64|Y\(31),
	datac => \Adder64|Y\(36),
	combout => \Y~4_combout\);

-- Location: LCCOMB_X91_Y69_N30
\Y~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~5_combout\ = (\ExtWord~input_o\ & (\Adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\Adder64|Y\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Adder64|Y\(31),
	datad => \Adder64|Y\(37),
	combout => \Y~5_combout\);

-- Location: LCCOMB_X91_Y69_N8
\Y~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~6_combout\ = (\ExtWord~input_o\ & (\Adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\Adder64|Y\(38))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Adder64|Y\(31),
	datad => \Adder64|Y\(38),
	combout => \Y~6_combout\);

-- Location: LCCOMB_X91_Y69_N10
\Y~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~7_combout\ = (\ExtWord~input_o\ & (\Adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\Adder64|Y\(39))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Adder64|Y\(31),
	datac => \Adder64|Y\(39),
	combout => \Y~7_combout\);

-- Location: LCCOMB_X91_Y69_N4
\Y~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~8_combout\ = (\ExtWord~input_o\ & (\Adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\Adder64|Y\(40))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Adder64|Y\(31),
	datad => \Adder64|Y\(40),
	combout => \Y~8_combout\);

-- Location: LCCOMB_X91_Y69_N14
\Y~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~9_combout\ = (\ExtWord~input_o\ & (\Adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\Adder64|Y\(41))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Adder64|Y\(31),
	datad => \Adder64|Y\(41),
	combout => \Y~9_combout\);

-- Location: LCCOMB_X91_Y69_N24
\Y~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~10_combout\ = (\ExtWord~input_o\ & (\Adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\Adder64|Y\(42))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Adder64|Y\(31),
	datad => \Adder64|Y\(42),
	combout => \Y~10_combout\);

-- Location: LCCOMB_X91_Y69_N26
\Y~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~11_combout\ = (\ExtWord~input_o\ & (\Adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\Adder64|Y\(43))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Adder64|Y\(31),
	datad => \Adder64|Y\(43),
	combout => \Y~11_combout\);

-- Location: LCCOMB_X91_Y69_N12
\Y~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~12_combout\ = (\ExtWord~input_o\ & (\Adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\Adder64|Y\(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Adder64|Y\(31),
	datad => \Adder64|Y\(44),
	combout => \Y~12_combout\);

-- Location: LCCOMB_X91_Y69_N22
\Y~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~13_combout\ = (\ExtWord~input_o\ & ((\Adder64|Y\(31)))) # (!\ExtWord~input_o\ & (\Adder64|Y\(45)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \Adder64|Y\(45),
	datad => \Adder64|Y\(31),
	combout => \Y~13_combout\);

-- Location: LCCOMB_X91_Y69_N16
\Y~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~14_combout\ = (\ExtWord~input_o\ & (\Adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\Adder64|Y\(46))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Adder64|Y\(31),
	datac => \Adder64|Y\(46),
	combout => \Y~14_combout\);

-- Location: LCCOMB_X1_Y62_N8
\Y~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~15_combout\ = (\ExtWord~input_o\ & (\Adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\Adder64|Y\(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \Adder64|Y\(31),
	datad => \Adder64|Y\(47),
	combout => \Y~15_combout\);

-- Location: LCCOMB_X1_Y62_N18
\Y~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~16_combout\ = (\ExtWord~input_o\ & (\Adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\Adder64|Y\(48))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \Adder64|Y\(31),
	datad => \Adder64|Y\(48),
	combout => \Y~16_combout\);

-- Location: LCCOMB_X1_Y62_N4
\Y~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~17_combout\ = (\ExtWord~input_o\ & (\Adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\Adder64|Y\(49))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Y\(31),
	datab => \ExtWord~input_o\,
	datac => \Adder64|Y\(49),
	combout => \Y~17_combout\);

-- Location: LCCOMB_X1_Y52_N8
\Y~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~18_combout\ = (\ExtWord~input_o\ & (\Adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\Adder64|Y\(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \Adder64|Y\(31),
	datad => \Adder64|Y\(50),
	combout => \Y~18_combout\);

-- Location: LCCOMB_X1_Y52_N26
\Y~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~19_combout\ = (\ExtWord~input_o\ & (\Adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\Adder64|Y\(51))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \Adder64|Y\(31),
	datad => \Adder64|Y\(51),
	combout => \Y~19_combout\);

-- Location: LCCOMB_X1_Y62_N14
\Y~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~20_combout\ = (\ExtWord~input_o\ & (\Adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\Adder64|Y\(52))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Y\(31),
	datab => \ExtWord~input_o\,
	datac => \Adder64|Y\(52),
	combout => \Y~20_combout\);

-- Location: LCCOMB_X1_Y62_N16
\Y~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~21_combout\ = (\ExtWord~input_o\ & ((\Adder64|Y\(31)))) # (!\ExtWord~input_o\ & (\Adder64|Y\(53)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Adder64|Y\(53),
	datac => \Adder64|Y\(31),
	datad => \ExtWord~input_o\,
	combout => \Y~21_combout\);

-- Location: LCCOMB_X1_Y62_N2
\Y~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~22_combout\ = (\ExtWord~input_o\ & (\Adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\Adder64|Y\(54))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Y\(31),
	datab => \ExtWord~input_o\,
	datac => \Adder64|Y\(54),
	combout => \Y~22_combout\);

-- Location: LCCOMB_X1_Y62_N20
\Y~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~23_combout\ = (\ExtWord~input_o\ & ((\Adder64|Y\(31)))) # (!\ExtWord~input_o\ & (\Adder64|Y\(55)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Adder64|Y\(55),
	datac => \Adder64|Y\(31),
	datad => \ExtWord~input_o\,
	combout => \Y~23_combout\);

-- Location: LCCOMB_X1_Y62_N30
\Y~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~24_combout\ = (\ExtWord~input_o\ & (\Adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\Adder64|Y\(56))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Y\(31),
	datab => \ExtWord~input_o\,
	datac => \Adder64|Y\(56),
	combout => \Y~24_combout\);

-- Location: LCCOMB_X1_Y62_N0
\Y~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~25_combout\ = (\ExtWord~input_o\ & ((\Adder64|Y\(31)))) # (!\ExtWord~input_o\ & (\Adder64|Y\(57)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Y\(57),
	datab => \ExtWord~input_o\,
	datac => \Adder64|Y\(31),
	combout => \Y~25_combout\);

-- Location: LCCOMB_X1_Y62_N10
\Y~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~26_combout\ = (\ExtWord~input_o\ & (\Adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\Adder64|Y\(58))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Y\(31),
	datab => \ExtWord~input_o\,
	datac => \Adder64|Y\(58),
	combout => \Y~26_combout\);

-- Location: LCCOMB_X1_Y62_N12
\Y~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~27_combout\ = (\ExtWord~input_o\ & (\Adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\Adder64|Y\(59))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Y\(31),
	datab => \ExtWord~input_o\,
	datad => \Adder64|Y\(59),
	combout => \Y~27_combout\);

-- Location: LCCOMB_X7_Y69_N4
\Y~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~28_combout\ = (\ExtWord~input_o\ & ((\Adder64|Y\(31)))) # (!\ExtWord~input_o\ & (\Adder64|Y\(60)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Y\(60),
	datac => \ExtWord~input_o\,
	datad => \Adder64|Y\(31),
	combout => \Y~28_combout\);

-- Location: LCCOMB_X91_Y69_N18
\Y~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~29_combout\ = (\ExtWord~input_o\ & ((\Adder64|Y\(31)))) # (!\ExtWord~input_o\ & (\Adder64|Y\(61)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Adder64|Y\(61),
	datad => \Adder64|Y\(31),
	combout => \Y~29_combout\);

-- Location: LCCOMB_X1_Y62_N22
\Y~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~30_combout\ = (\ExtWord~input_o\ & ((\Adder64|Y\(31)))) # (!\ExtWord~input_o\ & (\Adder64|Y\(62)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Y\(62),
	datab => \ExtWord~input_o\,
	datac => \Adder64|Y\(31),
	combout => \Y~30_combout\);

-- Location: LCCOMB_X55_Y69_N20
\Adder64|Y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Y~1_combout\ = \NotA~input_o\ $ (\A[63]~input_o\ $ (\B[63]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \A[63]~input_o\,
	datac => \B[63]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Y~1_combout\);

-- Location: LCCOMB_X55_Y69_N22
\Y~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~31_combout\ = (\ExtWord~input_o\ & (\Adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\Adder64|Carry[63]~62_combout\ $ (\Adder64|Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Y\(31),
	datab => \ExtWord~input_o\,
	datac => \Adder64|Carry[63]~62_combout\,
	datad => \Adder64|Y~1_combout\,
	combout => \Y~31_combout\);

-- Location: LCCOMB_X55_Y69_N0
\Adder64|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Cout~0_combout\ = (\Adder64|Carry[63]~62_combout\ & ((\Ain[63]~62_combout\) # (\B[63]~input_o\ $ (\AddnSub~input_o\)))) # (!\Adder64|Carry[63]~62_combout\ & (\Ain[63]~62_combout\ & (\B[63]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[63]~62_combout\,
	datab => \Ain[63]~62_combout\,
	datac => \B[63]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Cout~0_combout\);

-- Location: LCCOMB_X55_Y69_N4
\Adder64|Ovfl\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder64|Ovfl~combout\ = (\Adder64|Carry[63]~62_combout\ & (!\Ain[63]~62_combout\ & (\B[63]~input_o\ $ (!\AddnSub~input_o\)))) # (!\Adder64|Carry[63]~62_combout\ & (\Ain[63]~62_combout\ & (\B[63]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[63]~62_combout\,
	datab => \Ain[63]~62_combout\,
	datac => \B[63]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder64|Ovfl~combout\);

-- Location: LCCOMB_X91_Y69_N28
\WideOr0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~12_combout\ = (\Adder64|Y\(36)) # ((\Adder64|Y\(38)) # ((\Adder64|Y\(39)) # (\Adder64|Y\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Y\(36),
	datab => \Adder64|Y\(38),
	datac => \Adder64|Y\(39),
	datad => \Adder64|Y\(37),
	combout => \WideOr0~12_combout\);

-- Location: LCCOMB_X82_Y69_N30
\WideOr0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~14_combout\ = (\Adder64|Y\(46)) # ((\Adder64|Y\(44)) # ((\Adder64|Y\(47)) # (\Adder64|Y\(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Y\(46),
	datab => \Adder64|Y\(44),
	datac => \Adder64|Y\(47),
	datad => \Adder64|Y\(45),
	combout => \WideOr0~14_combout\);

-- Location: LCCOMB_X55_Y69_N2
\WideOr0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~11_combout\ = (\Adder64|Y\(33)) # ((\Adder64|Y\(34)) # ((\Adder64|Y\(35)) # (\Adder64|Y\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Y\(33),
	datab => \Adder64|Y\(34),
	datac => \Adder64|Y\(35),
	datad => \Adder64|Y\(32),
	combout => \WideOr0~11_combout\);

-- Location: LCCOMB_X105_Y69_N16
\WideOr0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~13_combout\ = (\Adder64|Y\(42)) # ((\Adder64|Y\(43)) # ((\Adder64|Y\(41)) # (\Adder64|Y\(40))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Y\(42),
	datab => \Adder64|Y\(43),
	datac => \Adder64|Y\(41),
	datad => \Adder64|Y\(40),
	combout => \WideOr0~13_combout\);

-- Location: LCCOMB_X105_Y69_N26
\WideOr0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~15_combout\ = (\WideOr0~12_combout\) # ((\WideOr0~14_combout\) # ((\WideOr0~11_combout\) # (\WideOr0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~12_combout\,
	datab => \WideOr0~14_combout\,
	datac => \WideOr0~11_combout\,
	datad => \WideOr0~13_combout\,
	combout => \WideOr0~15_combout\);

-- Location: LCCOMB_X1_Y62_N26
\WideOr0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~17_combout\ = (\Adder64|Y\(54)) # ((\Adder64|Y\(53)) # ((\Adder64|Y\(52)) # (\Adder64|Y\(55))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Y\(54),
	datab => \Adder64|Y\(53),
	datac => \Adder64|Y\(52),
	datad => \Adder64|Y\(55),
	combout => \WideOr0~17_combout\);

-- Location: LCCOMB_X1_Y62_N24
\WideOr0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~16_combout\ = (\Adder64|Y\(51)) # ((\Adder64|Y\(49)) # ((\Adder64|Y\(50)) # (\Adder64|Y\(48))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Y\(51),
	datab => \Adder64|Y\(49),
	datac => \Adder64|Y\(50),
	datad => \Adder64|Y\(48),
	combout => \WideOr0~16_combout\);

-- Location: LCCOMB_X7_Y69_N30
\WideOr0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~19_combout\ = (\Adder64|Y\(60)) # ((\Adder64|Y\(61)) # ((\Adder64|Y[0]~0_combout\) # (\Adder64|Y\(62))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Y\(60),
	datab => \Adder64|Y\(61),
	datac => \Adder64|Y[0]~0_combout\,
	datad => \Adder64|Y\(62),
	combout => \WideOr0~19_combout\);

-- Location: LCCOMB_X1_Y62_N28
\WideOr0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~18_combout\ = (\Adder64|Y\(58)) # ((\Adder64|Y\(59)) # ((\Adder64|Y\(56)) # (\Adder64|Y\(57))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Y\(58),
	datab => \Adder64|Y\(59),
	datac => \Adder64|Y\(56),
	datad => \Adder64|Y\(57),
	combout => \WideOr0~18_combout\);

-- Location: LCCOMB_X1_Y62_N6
\WideOr0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~20_combout\ = (\WideOr0~17_combout\) # ((\WideOr0~16_combout\) # ((\WideOr0~19_combout\) # (\WideOr0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~17_combout\,
	datab => \WideOr0~16_combout\,
	datac => \WideOr0~19_combout\,
	datad => \WideOr0~18_combout\,
	combout => \WideOr0~20_combout\);

-- Location: LCCOMB_X61_Y69_N22
\WideOr0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~9_combout\ = (\Adder64|Y\(29)) # ((\Adder64|Y\(30)) # ((\Adder64|Y\(31)) # (\Adder64|Y\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Y\(29),
	datab => \Adder64|Y\(30),
	datac => \Adder64|Y\(31),
	datad => \Adder64|Y\(28),
	combout => \WideOr0~9_combout\);

-- Location: LCCOMB_X30_Y69_N8
\WideOr0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~7_combout\ = (\Adder64|Y\(20)) # ((\Adder64|Y\(21)) # ((\Adder64|Y\(23)) # (\Adder64|Y\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Y\(20),
	datab => \Adder64|Y\(21),
	datac => \Adder64|Y\(23),
	datad => \Adder64|Y\(22),
	combout => \WideOr0~7_combout\);

-- Location: LCCOMB_X114_Y16_N14
\WideOr0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~8_combout\ = (\Adder64|Y\(26)) # ((\Adder64|Y\(25)) # ((\Adder64|Y\(27)) # (\Adder64|Y\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Y\(26),
	datab => \Adder64|Y\(25),
	datac => \Adder64|Y\(27),
	datad => \Adder64|Y\(24),
	combout => \WideOr0~8_combout\);

-- Location: LCCOMB_X69_Y69_N0
\WideOr0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~6_combout\ = (\Adder64|Y\(19)) # ((\Adder64|Y\(17)) # ((\Adder64|Y\(18)) # (\Adder64|Y\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Y\(19),
	datab => \Adder64|Y\(17),
	datac => \Adder64|Y\(18),
	datad => \Adder64|Y\(16),
	combout => \WideOr0~6_combout\);

-- Location: LCCOMB_X69_Y69_N10
\WideOr0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~10_combout\ = (\WideOr0~9_combout\) # ((\WideOr0~7_combout\) # ((\WideOr0~8_combout\) # (\WideOr0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~9_combout\,
	datab => \WideOr0~7_combout\,
	datac => \WideOr0~8_combout\,
	datad => \WideOr0~6_combout\,
	combout => \WideOr0~10_combout\);

-- Location: LCCOMB_X47_Y69_N30
\WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\Adder64|Y\(2)) # (\Adder64|Y\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Adder64|Y\(2),
	datad => \Adder64|Y\(3),
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X47_Y69_N8
\WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~1_combout\ = (\WideOr0~0_combout\) # ((\Adder64|Y\(1)) # (\Adder64|Y~1_combout\ $ (\Adder64|Carry[63]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Y~1_combout\,
	datab => \WideOr0~0_combout\,
	datac => \Adder64|Y\(1),
	datad => \Adder64|Carry[63]~62_combout\,
	combout => \WideOr0~1_combout\);

-- Location: LCCOMB_X114_Y30_N8
\WideOr0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~4_combout\ = (\Adder64|Y\(14)) # ((\Adder64|Y\(15)) # ((\Adder64|Y\(12)) # (\Adder64|Y\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Y\(14),
	datab => \Adder64|Y\(15),
	datac => \Adder64|Y\(12),
	datad => \Adder64|Y\(13),
	combout => \WideOr0~4_combout\);

-- Location: LCCOMB_X114_Y45_N26
\WideOr0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~3_combout\ = (\Adder64|Y\(11)) # ((\Adder64|Y\(8)) # ((\Adder64|Y\(10)) # (\Adder64|Y\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Y\(11),
	datab => \Adder64|Y\(8),
	datac => \Adder64|Y\(10),
	datad => \Adder64|Y\(9),
	combout => \WideOr0~3_combout\);

-- Location: LCCOMB_X50_Y1_N14
\WideOr0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~2_combout\ = (\Adder64|Y\(6)) # ((\Adder64|Y\(7)) # ((\Adder64|Y\(4)) # (\Adder64|Y\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Y\(6),
	datab => \Adder64|Y\(7),
	datac => \Adder64|Y\(4),
	datad => \Adder64|Y\(5),
	combout => \WideOr0~2_combout\);

-- Location: LCCOMB_X114_Y45_N4
\WideOr0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~5_combout\ = (\WideOr0~1_combout\) # ((\WideOr0~4_combout\) # ((\WideOr0~3_combout\) # (\WideOr0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~1_combout\,
	datab => \WideOr0~4_combout\,
	datac => \WideOr0~3_combout\,
	datad => \WideOr0~2_combout\,
	combout => \WideOr0~5_combout\);

-- Location: LCCOMB_X106_Y53_N0
WideOr0 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = (\WideOr0~15_combout\) # ((\WideOr0~20_combout\) # ((\WideOr0~10_combout\) # (\WideOr0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~15_combout\,
	datab => \WideOr0~20_combout\,
	datac => \WideOr0~10_combout\,
	datad => \WideOr0~5_combout\,
	combout => \WideOr0~combout\);

-- Location: LCCOMB_X55_Y69_N30
\AltB~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AltB~2_combout\ = (\Adder64|Carry[63]~62_combout\ & (\Ain[63]~62_combout\ & (\B[63]~input_o\ $ (\AddnSub~input_o\)))) # (!\Adder64|Carry[63]~62_combout\ & ((\Ain[63]~62_combout\) # (\B[63]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder64|Carry[63]~62_combout\,
	datab => \Ain[63]~62_combout\,
	datac => \B[63]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \AltB~2_combout\);

ww_AddY(0) <= \AddY[0]~output_o\;

ww_AddY(1) <= \AddY[1]~output_o\;

ww_AddY(2) <= \AddY[2]~output_o\;

ww_AddY(3) <= \AddY[3]~output_o\;

ww_AddY(4) <= \AddY[4]~output_o\;

ww_AddY(5) <= \AddY[5]~output_o\;

ww_AddY(6) <= \AddY[6]~output_o\;

ww_AddY(7) <= \AddY[7]~output_o\;

ww_AddY(8) <= \AddY[8]~output_o\;

ww_AddY(9) <= \AddY[9]~output_o\;

ww_AddY(10) <= \AddY[10]~output_o\;

ww_AddY(11) <= \AddY[11]~output_o\;

ww_AddY(12) <= \AddY[12]~output_o\;

ww_AddY(13) <= \AddY[13]~output_o\;

ww_AddY(14) <= \AddY[14]~output_o\;

ww_AddY(15) <= \AddY[15]~output_o\;

ww_AddY(16) <= \AddY[16]~output_o\;

ww_AddY(17) <= \AddY[17]~output_o\;

ww_AddY(18) <= \AddY[18]~output_o\;

ww_AddY(19) <= \AddY[19]~output_o\;

ww_AddY(20) <= \AddY[20]~output_o\;

ww_AddY(21) <= \AddY[21]~output_o\;

ww_AddY(22) <= \AddY[22]~output_o\;

ww_AddY(23) <= \AddY[23]~output_o\;

ww_AddY(24) <= \AddY[24]~output_o\;

ww_AddY(25) <= \AddY[25]~output_o\;

ww_AddY(26) <= \AddY[26]~output_o\;

ww_AddY(27) <= \AddY[27]~output_o\;

ww_AddY(28) <= \AddY[28]~output_o\;

ww_AddY(29) <= \AddY[29]~output_o\;

ww_AddY(30) <= \AddY[30]~output_o\;

ww_AddY(31) <= \AddY[31]~output_o\;

ww_AddY(32) <= \AddY[32]~output_o\;

ww_AddY(33) <= \AddY[33]~output_o\;

ww_AddY(34) <= \AddY[34]~output_o\;

ww_AddY(35) <= \AddY[35]~output_o\;

ww_AddY(36) <= \AddY[36]~output_o\;

ww_AddY(37) <= \AddY[37]~output_o\;

ww_AddY(38) <= \AddY[38]~output_o\;

ww_AddY(39) <= \AddY[39]~output_o\;

ww_AddY(40) <= \AddY[40]~output_o\;

ww_AddY(41) <= \AddY[41]~output_o\;

ww_AddY(42) <= \AddY[42]~output_o\;

ww_AddY(43) <= \AddY[43]~output_o\;

ww_AddY(44) <= \AddY[44]~output_o\;

ww_AddY(45) <= \AddY[45]~output_o\;

ww_AddY(46) <= \AddY[46]~output_o\;

ww_AddY(47) <= \AddY[47]~output_o\;

ww_AddY(48) <= \AddY[48]~output_o\;

ww_AddY(49) <= \AddY[49]~output_o\;

ww_AddY(50) <= \AddY[50]~output_o\;

ww_AddY(51) <= \AddY[51]~output_o\;

ww_AddY(52) <= \AddY[52]~output_o\;

ww_AddY(53) <= \AddY[53]~output_o\;

ww_AddY(54) <= \AddY[54]~output_o\;

ww_AddY(55) <= \AddY[55]~output_o\;

ww_AddY(56) <= \AddY[56]~output_o\;

ww_AddY(57) <= \AddY[57]~output_o\;

ww_AddY(58) <= \AddY[58]~output_o\;

ww_AddY(59) <= \AddY[59]~output_o\;

ww_AddY(60) <= \AddY[60]~output_o\;

ww_AddY(61) <= \AddY[61]~output_o\;

ww_AddY(62) <= \AddY[62]~output_o\;

ww_AddY(63) <= \AddY[63]~output_o\;

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

ww_Cout <= \Cout~output_o\;

ww_Ovfl <= \Ovfl~output_o\;

ww_Zero <= \Zero~output_o\;

ww_AltB <= \AltB~output_o\;

ww_AltBu <= \AltBu~output_o\;
END structure;


