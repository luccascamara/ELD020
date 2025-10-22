-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/08/2025 15:20:32"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          key
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY key_vhd_vec_tst IS
END key_vhd_vec_tst;
ARCHITECTURE key_arch OF key_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL BP : STD_LOGIC;
SIGNAL BPR : STD_LOGIC;
SIGNAL CK : STD_LOGIC;
SIGNAL CK_EN : STD_LOGIC;
SIGNAL INI : STD_LOGIC;
SIGNAL KEY1 : STD_LOGIC;
SIGNAL LD : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL SF : STD_LOGIC;
SIGNAL ST : STD_LOGIC;
SIGNAL TVA : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL TVB : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL TVP : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL VDP : STD_LOGIC;
COMPONENT key
	PORT (
	BP : OUT STD_LOGIC;
	BPR : OUT STD_LOGIC;
	CK : IN STD_LOGIC;
	CK_EN : IN STD_LOGIC;
	INI : IN STD_LOGIC;
	KEY1 : IN STD_LOGIC;
	LD : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	SF : IN STD_LOGIC;
	ST : IN STD_LOGIC;
	TVA : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	TVB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	TVP : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	VDP : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : key
	PORT MAP (
-- list connections between master ports and signals
	BP => BP,
	BPR => BPR,
	CK => CK,
	CK_EN => CK_EN,
	INI => INI,
	KEY1 => KEY1,
	LD => LD,
	SF => SF,
	ST => ST,
	TVA => TVA,
	TVB => TVB,
	TVP => TVP,
	VDP => VDP
	);

-- INI
t_prcs_INI: PROCESS
BEGIN
	INI <= '0';
	WAIT FOR 20000 ps;
	INI <= '1';
	WAIT FOR 870000 ps;
	INI <= '0';
	WAIT FOR 30000 ps;
	INI <= '1';
WAIT;
END PROCESS t_prcs_INI;

-- CK
t_prcs_CK: PROCESS
BEGIN
LOOP
	CK <= '0';
	WAIT FOR 10000 ps;
	CK <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CK;

-- CK_EN
t_prcs_CK_EN: PROCESS
BEGIN
	CK_EN <= '1';
WAIT;
END PROCESS t_prcs_CK_EN;

-- KEY1
t_prcs_KEY1: PROCESS
BEGIN
	KEY1 <= '1';
	WAIT FOR 260000 ps;
	KEY1 <= '0';
	WAIT FOR 20000 ps;
	KEY1 <= '1';
WAIT;
END PROCESS t_prcs_KEY1;

-- ST
t_prcs_ST: PROCESS
BEGIN
	ST <= '0';
	WAIT FOR 200000 ps;
	ST <= '1';
	WAIT FOR 330000 ps;
	ST <= '0';
WAIT;
END PROCESS t_prcs_ST;

-- SF
t_prcs_SF: PROCESS
BEGIN
	SF <= '0';
	WAIT FOR 840000 ps;
	SF <= '1';
	WAIT FOR 20000 ps;
	SF <= '0';
WAIT;
END PROCESS t_prcs_SF;
END key_arch;
