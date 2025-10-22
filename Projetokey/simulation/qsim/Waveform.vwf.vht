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
-- Generated on "10/21/2025 21:08:38"
                                                             
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
SIGNAL 50MHZ : STD_LOGIC;
SIGNAL H0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL H1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL H4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL H5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL KEY0 : STD_LOGIC;
SIGNAL KEY1 : STD_LOGIC;
SIGNAL LD0 : STD_LOGIC;
SIGNAL LD1 : STD_LOGIC;
SIGNAL LD2 : STD_LOGIC;
SIGNAL LD3 : STD_LOGIC;
SIGNAL LD4 : STD_LOGIC;
SIGNAL LD5 : STD_LOGIC;
SIGNAL LD6 : STD_LOGIC;
SIGNAL LD7 : STD_LOGIC;
SIGNAL LD8 : STD_LOGIC;
SIGNAL LD9 : STD_LOGIC;
SIGNAL SW8 : STD_LOGIC;
SIGNAL SW9 : STD_LOGIC;
COMPONENT key
	PORT (
	\50MHZ\ : IN STD_LOGIC;
	H0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	H1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	H4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	H5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	KEY0 : IN STD_LOGIC;
	KEY1 : IN STD_LOGIC;
	LD0 : OUT STD_LOGIC;
	LD1 : OUT STD_LOGIC;
	LD2 : OUT STD_LOGIC;
	LD3 : OUT STD_LOGIC;
	LD4 : OUT STD_LOGIC;
	LD5 : OUT STD_LOGIC;
	LD6 : OUT STD_LOGIC;
	LD7 : OUT STD_LOGIC;
	LD8 : OUT STD_LOGIC;
	LD9 : OUT STD_LOGIC;
	SW8 : IN STD_LOGIC;
	SW9 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : key
	PORT MAP (
-- list connections between master ports and signals
	\50MHZ\ => 50MHZ,
	H0 => H0,
	H1 => H1,
	H4 => H4,
	H5 => H5,
	KEY0 => KEY0,
	KEY1 => KEY1,
	LD0 => LD0,
	LD1 => LD1,
	LD2 => LD2,
	LD3 => LD3,
	LD4 => LD4,
	LD5 => LD5,
	LD6 => LD6,
	LD7 => LD7,
	LD8 => LD8,
	LD9 => LD9,
	SW8 => SW8,
	SW9 => SW9
	);

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
END key_arch;
