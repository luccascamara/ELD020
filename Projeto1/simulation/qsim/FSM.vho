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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "10/01/2025 14:49:07"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FSM IS
    PORT (
	INI : IN std_logic;
	CK : IN std_logic;
	CK_EN : IN std_logic;
	BP : IN std_logic;
	SF : IN std_logic;
	ST : IN std_logic;
	BPR : OUT std_logic;
	VDP : OUT std_logic;
	TVA : OUT std_logic_vector(3 DOWNTO 0);
	TVB : OUT std_logic_vector(3 DOWNTO 0);
	TVP : OUT std_logic_vector(3 DOWNTO 0);
	LD : OUT std_logic_vector(5 DOWNTO 0)
	);
END FSM;

ARCHITECTURE structure OF FSM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_INI : std_logic;
SIGNAL ww_CK : std_logic;
SIGNAL ww_CK_EN : std_logic;
SIGNAL ww_BP : std_logic;
SIGNAL ww_SF : std_logic;
SIGNAL ww_ST : std_logic;
SIGNAL ww_BPR : std_logic;
SIGNAL ww_VDP : std_logic;
SIGNAL ww_TVA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_TVB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_TVP : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LD : std_logic_vector(5 DOWNTO 0);
SIGNAL \BPR~output_o\ : std_logic;
SIGNAL \VDP~output_o\ : std_logic;
SIGNAL \TVA[0]~output_o\ : std_logic;
SIGNAL \TVA[1]~output_o\ : std_logic;
SIGNAL \TVA[2]~output_o\ : std_logic;
SIGNAL \TVA[3]~output_o\ : std_logic;
SIGNAL \TVB[0]~output_o\ : std_logic;
SIGNAL \TVB[1]~output_o\ : std_logic;
SIGNAL \TVB[2]~output_o\ : std_logic;
SIGNAL \TVB[3]~output_o\ : std_logic;
SIGNAL \TVP[0]~output_o\ : std_logic;
SIGNAL \TVP[1]~output_o\ : std_logic;
SIGNAL \TVP[2]~output_o\ : std_logic;
SIGNAL \TVP[3]~output_o\ : std_logic;
SIGNAL \LD[0]~output_o\ : std_logic;
SIGNAL \LD[1]~output_o\ : std_logic;
SIGNAL \LD[2]~output_o\ : std_logic;
SIGNAL \LD[3]~output_o\ : std_logic;
SIGNAL \LD[4]~output_o\ : std_logic;
SIGNAL \LD[5]~output_o\ : std_logic;
SIGNAL \CK~input_o\ : std_logic;
SIGNAL \SF~input_o\ : std_logic;
SIGNAL \INI~input_o\ : std_logic;
SIGNAL \BP~input_o\ : std_logic;
SIGNAL \E.TVB_I~8_combout\ : std_logic;
SIGNAL \CK_EN~input_o\ : std_logic;
SIGNAL \E.TVB_I~9_combout\ : std_logic;
SIGNAL \ST~input_o\ : std_logic;
SIGNAL \VA[0]~0_combout\ : std_logic;
SIGNAL \VA[0]~4_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \E.TVA_I~8_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \VP[0]~1_combout\ : std_logic;
SIGNAL \VP[1]~2_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \VP[2]~3_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \E.INICIO~2_combout\ : std_logic;
SIGNAL \VB[0]~0_combout\ : std_logic;
SIGNAL \VB[0]~1_combout\ : std_logic;
SIGNAL \VB[0]~2_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \AB[1]~0_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add3~1_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \VA[0]~5_combout\ : std_logic;
SIGNAL \VA[0]~6_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \VA[1]~1_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \VA[2]~2_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \VA[3]~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \AA[0]~0_combout\ : std_logic;
SIGNAL \AA[0]~3_combout\ : std_logic;
SIGNAL \AA[1]~4_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \AA[2]~2_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \AA[3]~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \VP[0]~0_combout\ : std_logic;
SIGNAL \VP[3]~4_combout\ : std_logic;
SIGNAL \E.TVB_I~2_combout\ : std_logic;
SIGNAL \E.TVB_I~3_combout\ : std_logic;
SIGNAL \E.TVB_I~4_combout\ : std_logic;
SIGNAL \E.TVB_I~5_combout\ : std_logic;
SIGNAL \E.TVB_I~6_combout\ : std_logic;
SIGNAL \E.TVB_I~7_combout\ : std_logic;
SIGNAL \E.TVB_I~q\ : std_logic;
SIGNAL \E.INICIO~4_combout\ : std_logic;
SIGNAL \E.TAB~q\ : std_logic;
SIGNAL \E.INICIO~0_combout\ : std_logic;
SIGNAL \E.INICIO~1_combout\ : std_logic;
SIGNAL \E.INICIO~3_combout\ : std_logic;
SIGNAL \E.INICIO~5_combout\ : std_logic;
SIGNAL \E.INICIO~6_combout\ : std_logic;
SIGNAL \E.INICIO~q\ : std_logic;
SIGNAL \E.TVA_I~7_combout\ : std_logic;
SIGNAL \E.TVA_I~2_combout\ : std_logic;
SIGNAL \E.TVA_I~1_combout\ : std_logic;
SIGNAL \E.TVA_I~3_combout\ : std_logic;
SIGNAL \E.TVA_I~4_combout\ : std_logic;
SIGNAL \E.TVA_I~5_combout\ : std_logic;
SIGNAL \E.TVA_I~6_combout\ : std_logic;
SIGNAL \E.TVA_I~q\ : std_logic;
SIGNAL \E.TVA_I~0_combout\ : std_logic;
SIGNAL \E.TAA_I~q\ : std_logic;
SIGNAL \E.TVP_I~0_combout\ : std_logic;
SIGNAL \E.TVP_I~q\ : std_logic;
SIGNAL \BPR~0_combout\ : std_logic;
SIGNAL \E.FALHA~0_combout\ : std_logic;
SIGNAL \E.FALHA~q\ : std_logic;
SIGNAL \LD~0_combout\ : std_logic;
SIGNAL \WideOr7~combout\ : std_logic;
SIGNAL \WideOr6~combout\ : std_logic;
SIGNAL \WideOr5~combout\ : std_logic;
SIGNAL VA : std_logic_vector(3 DOWNTO 0);
SIGNAL AB : std_logic_vector(3 DOWNTO 0);
SIGNAL VB : std_logic_vector(3 DOWNTO 0);
SIGNAL VP : std_logic_vector(3 DOWNTO 0);
SIGNAL AA : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_WideOr7~combout\ : std_logic;
SIGNAL \ALT_INV_E.TAB~q\ : std_logic;

BEGIN

ww_INI <= INI;
ww_CK <= CK;
ww_CK_EN <= CK_EN;
ww_BP <= BP;
ww_SF <= SF;
ww_ST <= ST;
BPR <= ww_BPR;
VDP <= ww_VDP;
TVA <= ww_TVA;
TVB <= ww_TVB;
TVP <= ww_TVP;
LD <= ww_LD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_WideOr7~combout\ <= NOT \WideOr7~combout\;
\ALT_INV_E.TAB~q\ <= NOT \E.TAB~q\;

\BPR~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BPR~0_combout\,
	devoe => ww_devoe,
	o => \BPR~output_o\);

\VDP~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E.TVP_I~q\,
	devoe => ww_devoe,
	o => \VDP~output_o\);

\TVA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VA(0),
	devoe => ww_devoe,
	o => \TVA[0]~output_o\);

\TVA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VA(1),
	devoe => ww_devoe,
	o => \TVA[1]~output_o\);

\TVA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VA(2),
	devoe => ww_devoe,
	o => \TVA[2]~output_o\);

\TVA[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VA(3),
	devoe => ww_devoe,
	o => \TVA[3]~output_o\);

\TVB[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VB(0),
	devoe => ww_devoe,
	o => \TVB[0]~output_o\);

\TVB[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VB(1),
	devoe => ww_devoe,
	o => \TVB[1]~output_o\);

\TVB[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VB(2),
	devoe => ww_devoe,
	o => \TVB[2]~output_o\);

\TVB[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VB(3),
	devoe => ww_devoe,
	o => \TVB[3]~output_o\);

\TVP[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VP(0),
	devoe => ww_devoe,
	o => \TVP[0]~output_o\);

\TVP[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VP(1),
	devoe => ww_devoe,
	o => \TVP[1]~output_o\);

\TVP[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VP(2),
	devoe => ww_devoe,
	o => \TVP[2]~output_o\);

\TVP[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VP(3),
	devoe => ww_devoe,
	o => \TVP[3]~output_o\);

\LD[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E.TVB_I~q\,
	devoe => ww_devoe,
	o => \LD[0]~output_o\);

\LD[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LD~0_combout\,
	devoe => ww_devoe,
	o => \LD[1]~output_o\);

\LD[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr7~combout\,
	devoe => ww_devoe,
	o => \LD[2]~output_o\);

\LD[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E.TVA_I~q\,
	devoe => ww_devoe,
	o => \LD[3]~output_o\);

\LD[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr6~combout\,
	devoe => ww_devoe,
	o => \LD[4]~output_o\);

\LD[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr5~combout\,
	devoe => ww_devoe,
	o => \LD[5]~output_o\);

\CK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CK,
	o => \CK~input_o\);

\SF~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SF,
	o => \SF~input_o\);

\INI~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INI,
	o => \INI~input_o\);

\BP~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BP,
	o => \BP~input_o\);

\E.TVB_I~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E.TVB_I~8_combout\ = (\SF~input_o\ & (\E.TVP_I~q\)) # (!\SF~input_o\ & ((\E.TAA_I~q\ & ((!\BP~input_o\))) # (!\E.TAA_I~q\ & (\E.TVP_I~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E.TVP_I~q\,
	datab => \SF~input_o\,
	datac => \E.TAA_I~q\,
	datad => \BP~input_o\,
	combout => \E.TVB_I~8_combout\);

\CK_EN~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CK_EN,
	o => \CK_EN~input_o\);

\E.TVB_I~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E.TVB_I~9_combout\ = (\E.TAA_I~q\ & (!\SF~input_o\ & \Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E.TAA_I~q\,
	datab => \SF~input_o\,
	datac => \Equal1~0_combout\,
	combout => \E.TVB_I~9_combout\);

\ST~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ST,
	o => \ST~input_o\);

\VA[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VA[0]~0_combout\ = (\E.TVA_I~q\ & ((!VA(0)))) # (!\E.TVA_I~q\ & (\ST~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ST~input_o\,
	datab => VA(0),
	datad => \E.TVA_I~q\,
	combout => \VA[0]~0_combout\);

\VA[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VA[0]~4_combout\ = (\CK_EN~input_o\ & ((\E.TAB~q\) # ((\E.TVA_I~q\) # (!\E.INICIO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CK_EN~input_o\,
	datab => \E.TAB~q\,
	datac => \E.TVA_I~q\,
	datad => \E.INICIO~q\,
	combout => \VA[0]~4_combout\);

\Selector26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (!AB(0) & \E.TAB~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(0),
	datad => \E.TAB~q\,
	combout => \Selector26~0_combout\);

\E.TVA_I~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E.TVA_I~8_combout\ = (\E.TAB~q\ & (!\Equal3~0_combout\ & !\SF~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E.TAB~q\,
	datac => \Equal3~0_combout\,
	datad => \SF~input_o\,
	combout => \E.TVA_I~8_combout\);

\Selector22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (!\E.TVB_I~q\) # (!VB(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VB(0),
	datad => \E.TVB_I~q\,
	combout => \Selector22~0_combout\);

\VP[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VP[0]~1_combout\ = (VP(0) & ((!\VP[0]~0_combout\))) # (!VP(0) & (\E.TVP_I~q\ & \VP[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E.TVP_I~q\,
	datac => VP(0),
	datad => \VP[0]~0_combout\,
	combout => \VP[0]~1_combout\);

\VP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \VP[0]~1_combout\,
	clrn => \INI~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VP(0));

\VP[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VP[1]~2_combout\ = (\VP[0]~0_combout\ & (\E.TVP_I~q\ & (VP(1) $ (!VP(0))))) # (!\VP[0]~0_combout\ & (((VP(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E.TVP_I~q\,
	datab => VP(1),
	datac => VP(0),
	datad => \VP[0]~0_combout\,
	combout => \VP[1]~2_combout\);

\VP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \VP[1]~2_combout\,
	clrn => \INI~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VP(1));

\Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = VP(2) $ (((VP(0)) # (VP(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => VP(0),
	datac => VP(1),
	datad => VP(2),
	combout => \Add4~0_combout\);

\VP[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VP[2]~3_combout\ = (\VP[0]~0_combout\ & (((\E.TVP_I~q\ & !\Add4~0_combout\)))) # (!\VP[0]~0_combout\ & (VP(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VP(2),
	datab => \E.TVP_I~q\,
	datac => \VP[0]~0_combout\,
	datad => \Add4~0_combout\,
	combout => \VP[2]~3_combout\);

\VP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \VP[2]~3_combout\,
	clrn => \INI~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VP(2));

\Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!VP(0) & (!VP(1) & !VP(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => VP(0),
	datac => VP(1),
	datad => VP(2),
	combout => \Equal4~0_combout\);

\E.INICIO~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E.INICIO~2_combout\ = (\E.TVP_I~q\ & (\Equal4~0_combout\ & !VP(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E.TVP_I~q\,
	datab => \Equal4~0_combout\,
	datad => VP(3),
	combout => \E.INICIO~2_combout\);

\VB[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VB[0]~0_combout\ = (\E.TAA_I~q\ & (!\SF~input_o\ & !\BP~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E.TAA_I~q\,
	datac => \SF~input_o\,
	datad => \BP~input_o\,
	combout => \VB[0]~0_combout\);

\VB[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VB[0]~1_combout\ = (\VB[0]~0_combout\ & (((\E.INICIO~4_combout\ & !\Equal2~0_combout\)) # (!\Equal1~0_combout\))) # (!\VB[0]~0_combout\ & (\E.INICIO~4_combout\ & ((!\Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VB[0]~0_combout\,
	datab => \E.INICIO~4_combout\,
	datac => \Equal1~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \VB[0]~1_combout\);

\VB[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VB[0]~2_combout\ = (\CK_EN~input_o\ & ((\E.INICIO~2_combout\) # (\VB[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CK_EN~input_o\,
	datab => \E.INICIO~2_combout\,
	datac => \VB[0]~1_combout\,
	combout => \VB[0]~2_combout\);

\VB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \Selector22~0_combout\,
	clrn => \INI~input_o\,
	ena => \VB[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VB(0));

\Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (VB(0) $ (!VB(1))) # (!\E.TVB_I~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VB(0),
	datab => VB(1),
	datad => \E.TVB_I~q\,
	combout => \Selector21~0_combout\);

\VB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \Selector21~0_combout\,
	clrn => \INI~input_o\,
	ena => \VB[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VB(1));

\Selector20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (VB(2) $ (((!VB(0) & !VB(1))))) # (!\E.TVB_I~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VB(2),
	datab => VB(0),
	datac => VB(1),
	datad => \E.TVB_I~q\,
	combout => \Selector20~0_combout\);

\VB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \Selector20~0_combout\,
	clrn => \INI~input_o\,
	ena => \VB[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VB(2));

\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = VB(3) $ (((VB(0)) # ((VB(1)) # (VB(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VB(0),
	datab => VB(1),
	datac => VB(2),
	datad => VB(3),
	combout => \Add2~0_combout\);

\Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\E.TVB_I~q\ & !\Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E.TVB_I~q\,
	datad => \Add2~0_combout\,
	combout => \Selector19~0_combout\);

\VB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \Selector19~0_combout\,
	clrn => \INI~input_o\,
	ena => \VB[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VB(3));

\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!VB(0) & (!VB(1) & (!VB(2) & !VB(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VB(0),
	datab => VB(1),
	datac => VB(2),
	datad => VB(3),
	combout => \Equal2~0_combout\);

\AB[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AB[1]~0_combout\ = (\CK_EN~input_o\ & ((\E.TVA_I~8_combout\) # ((\Equal2~0_combout\ & \E.INICIO~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CK_EN~input_o\,
	datab => \E.TVA_I~8_combout\,
	datac => \Equal2~0_combout\,
	datad => \E.INICIO~4_combout\,
	combout => \AB[1]~0_combout\);

\AB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \Selector26~0_combout\,
	clrn => \INI~input_o\,
	ena => \AB[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(0));

\Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = AB(0) $ (!AB(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => AB(0),
	datad => AB(1),
	combout => \Add3~2_combout\);

\AB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \Add3~2_combout\,
	clrn => \INI~input_o\,
	sclr => \ALT_INV_E.TAB~q\,
	ena => \AB[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(1));

\Add3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~1_combout\ = AB(2) $ (((!AB(0) & !AB(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => AB(0),
	datac => AB(1),
	datad => AB(2),
	combout => \Add3~1_combout\);

\AB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \Add3~1_combout\,
	clrn => \INI~input_o\,
	sclr => \ALT_INV_E.TAB~q\,
	ena => \AB[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(2));

\Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = AB(3) $ (((!AB(2) & (!AB(0) & !AB(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(2),
	datab => AB(0),
	datac => AB(1),
	datad => AB(3),
	combout => \Add3~0_combout\);

\AB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \Add3~0_combout\,
	clrn => \INI~input_o\,
	sclr => \ALT_INV_E.TAB~q\,
	ena => \AB[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(3));

\Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!AB(3) & (!AB(2) & (!AB(0) & !AB(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(3),
	datab => AB(2),
	datac => AB(0),
	datad => AB(1),
	combout => \Equal3~0_combout\);

\VA[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VA[0]~5_combout\ = (\VA[0]~4_combout\ & (((\Equal3~0_combout\ & !\SF~input_o\)) # (!\E.TAB~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VA[0]~4_combout\,
	datab => \Equal3~0_combout\,
	datac => \SF~input_o\,
	datad => \E.TAB~q\,
	combout => \VA[0]~5_combout\);

\VA[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VA[0]~6_combout\ = ((\E.TVA_I~q\ & ((\SF~input_o\) # (\Equal0~0_combout\)))) # (!\VA[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VA[0]~5_combout\,
	datab => \SF~input_o\,
	datac => \Equal0~0_combout\,
	datad => \E.TVA_I~q\,
	combout => \VA[0]~6_combout\);

\VA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \VA[0]~0_combout\,
	asdata => VA(0),
	clrn => \INI~input_o\,
	sload => \VA[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VA(0));

\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = VA(0) $ (VA(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VA(0),
	datad => VA(1),
	combout => \Add0~0_combout\);

\VA[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VA[1]~1_combout\ = (\E.TVA_I~q\ & ((!\Add0~0_combout\))) # (!\E.TVA_I~q\ & (\ST~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ST~input_o\,
	datab => \Add0~0_combout\,
	datad => \E.TVA_I~q\,
	combout => \VA[1]~1_combout\);

\VA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \VA[1]~1_combout\,
	asdata => VA(1),
	clrn => \INI~input_o\,
	sload => \VA[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VA(1));

\Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = VA(2) $ (((VA(0)) # (VA(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => VA(0),
	datac => VA(1),
	datad => VA(2),
	combout => \Add0~1_combout\);

\VA[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VA[2]~2_combout\ = (\E.TVA_I~q\ & ((!\Add0~1_combout\))) # (!\E.TVA_I~q\ & (\ST~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ST~input_o\,
	datab => \Add0~1_combout\,
	datad => \E.TVA_I~q\,
	combout => \VA[2]~2_combout\);

\VA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \VA[2]~2_combout\,
	asdata => VA(2),
	clrn => \INI~input_o\,
	sload => \VA[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VA(2));

\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = VA(3) $ (((VA(0)) # ((VA(1)) # (VA(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VA(0),
	datab => VA(1),
	datac => VA(2),
	datad => VA(3),
	combout => \Add0~2_combout\);

\VA[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VA[3]~3_combout\ = (\E.TVA_I~q\ & ((!\Add0~2_combout\))) # (!\E.TVA_I~q\ & (!\ST~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ST~input_o\,
	datab => \Add0~2_combout\,
	datad => \E.TVA_I~q\,
	combout => \VA[3]~3_combout\);

\VA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \VA[3]~3_combout\,
	asdata => VA(3),
	clrn => \INI~input_o\,
	sload => \VA[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VA(3));

\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!VA(0) & (!VA(1) & (!VA(2) & !VA(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VA(0),
	datab => VA(1),
	datac => VA(2),
	datad => VA(3),
	combout => \Equal0~0_combout\);

\AA[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AA[0]~0_combout\ = (\CK_EN~input_o\ & ((\E.TVB_I~9_combout\) # ((\Equal0~0_combout\ & \E.TVA_I~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CK_EN~input_o\,
	datab => \E.TVB_I~9_combout\,
	datac => \Equal0~0_combout\,
	datad => \E.TVA_I~0_combout\,
	combout => \AA[0]~0_combout\);

\AA[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AA[0]~3_combout\ = (AA(0) & ((!\AA[0]~0_combout\))) # (!AA(0) & (\E.TAA_I~q\ & \AA[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E.TAA_I~q\,
	datac => AA(0),
	datad => \AA[0]~0_combout\,
	combout => \AA[0]~3_combout\);

\AA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \AA[0]~3_combout\,
	clrn => \INI~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AA(0));

\AA[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AA[1]~4_combout\ = (\AA[0]~0_combout\ & (\E.TAA_I~q\ & (AA(1) $ (!AA(0))))) # (!\AA[0]~0_combout\ & (((AA(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E.TAA_I~q\,
	datab => AA(1),
	datac => AA(0),
	datad => \AA[0]~0_combout\,
	combout => \AA[1]~4_combout\);

\AA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \AA[1]~4_combout\,
	clrn => \INI~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AA(1));

\Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = AA(2) $ (((AA(0)) # (AA(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => AA(0),
	datac => AA(1),
	datad => AA(2),
	combout => \Add1~1_combout\);

\AA[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AA[2]~2_combout\ = (\AA[0]~0_combout\ & (((\E.TAA_I~q\ & !\Add1~1_combout\)))) # (!\AA[0]~0_combout\ & (AA(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AA(2),
	datab => \E.TAA_I~q\,
	datac => \AA[0]~0_combout\,
	datad => \Add1~1_combout\,
	combout => \AA[2]~2_combout\);

\AA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \AA[2]~2_combout\,
	clrn => \INI~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AA(2));

\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = AA(3) $ (((AA(2)) # ((AA(0)) # (AA(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AA(2),
	datab => AA(0),
	datac => AA(1),
	datad => AA(3),
	combout => \Add1~0_combout\);

\AA[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AA[3]~1_combout\ = (\AA[0]~0_combout\ & (((\E.TAA_I~q\ & !\Add1~0_combout\)))) # (!\AA[0]~0_combout\ & (AA(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AA(3),
	datab => \E.TAA_I~q\,
	datac => \AA[0]~0_combout\,
	datad => \Add1~0_combout\,
	combout => \AA[3]~1_combout\);

\AA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \AA[3]~1_combout\,
	clrn => \INI~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AA(3));

\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (AA(3)) # ((AA(2)) # ((AA(0)) # (AA(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AA(3),
	datab => AA(2),
	datac => AA(0),
	datad => AA(1),
	combout => \Equal1~0_combout\);

\VP[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VP[0]~0_combout\ = (\CK_EN~input_o\ & ((\E.TVB_I~2_combout\) # ((\E.TVP_I~0_combout\ & !\Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CK_EN~input_o\,
	datab => \E.TVB_I~2_combout\,
	datac => \E.TVP_I~0_combout\,
	datad => \Equal1~0_combout\,
	combout => \VP[0]~0_combout\);

\VP[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VP[3]~4_combout\ = (\VP[0]~0_combout\ & ((VP(3) $ (\Equal4~0_combout\)) # (!\E.TVP_I~q\))) # (!\VP[0]~0_combout\ & (VP(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VP(3),
	datab => \VP[0]~0_combout\,
	datac => \Equal4~0_combout\,
	datad => \E.TVP_I~q\,
	combout => \VP[3]~4_combout\);

\VP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \VP[3]~4_combout\,
	clrn => \INI~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VP(3));

\E.TVB_I~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E.TVB_I~2_combout\ = (\E.TVP_I~q\ & ((VP(3)) # (!\Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E.TVP_I~q\,
	datab => VP(3),
	datad => \Equal4~0_combout\,
	combout => \E.TVB_I~2_combout\);

\E.TVB_I~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E.TVB_I~3_combout\ = (\E.TAA_I~q\ & !\SF~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E.TAA_I~q\,
	datad => \SF~input_o\,
	combout => \E.TVB_I~3_combout\);

\E.TVB_I~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E.TVB_I~4_combout\ = (\E.TVB_I~2_combout\) # (((\Equal1~0_combout\ & \E.TVB_I~3_combout\)) # (!\CK_EN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E.TVB_I~2_combout\,
	datab => \Equal1~0_combout\,
	datac => \E.TVB_I~3_combout\,
	datad => \CK_EN~input_o\,
	combout => \E.TVB_I~4_combout\);

\E.TVB_I~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E.TVB_I~5_combout\ = (\E.TAB~q\ & (!\Equal3~0_combout\)) # (!\E.TAB~q\ & (((\E.TVB_I~q\ & !\Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E.TAB~q\,
	datab => \Equal3~0_combout\,
	datac => \E.TVB_I~q\,
	datad => \Equal2~0_combout\,
	combout => \E.TVB_I~5_combout\);

\E.TVB_I~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E.TVB_I~6_combout\ = (\E.TVA_I~q\ & (!\Equal0~0_combout\)) # (!\E.TVA_I~q\ & ((\E.TVB_I~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E.TVA_I~q\,
	datab => \Equal0~0_combout\,
	datac => \E.TVB_I~5_combout\,
	combout => \E.TVB_I~6_combout\);

\E.TVB_I~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E.TVB_I~7_combout\ = (!\E.TVB_I~4_combout\ & ((\SF~input_o\) # (!\E.TVB_I~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SF~input_o\,
	datab => \E.TVB_I~4_combout\,
	datac => \E.TVB_I~6_combout\,
	combout => \E.TVB_I~7_combout\);

\E.TVB_I\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \E.TVB_I~8_combout\,
	clrn => \INI~input_o\,
	ena => \E.TVB_I~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E.TVB_I~q\);

\E.INICIO~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E.INICIO~4_combout\ = (\E.TVB_I~q\ & !\SF~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E.TVB_I~q\,
	datad => \SF~input_o\,
	combout => \E.INICIO~4_combout\);

\E.TAB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \E.INICIO~4_combout\,
	clrn => \INI~input_o\,
	ena => \E.INICIO~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E.TAB~q\);

\E.INICIO~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E.INICIO~0_combout\ = (\E.TVP_I~q\) # ((!\SF~input_o\ & ((\E.TAB~q\) # (\E.TAA_I~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E.TVP_I~q\,
	datab => \E.TAB~q\,
	datac => \E.TAA_I~q\,
	datad => \SF~input_o\,
	combout => \E.INICIO~0_combout\);

\E.INICIO~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E.INICIO~1_combout\ = (\E.INICIO~0_combout\ & ((\E.TVP_I~q\) # ((\E.TAA_I~q\) # (!\Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E.INICIO~0_combout\,
	datab => \E.TVP_I~q\,
	datac => \E.TAA_I~q\,
	datad => \Equal3~0_combout\,
	combout => \E.INICIO~1_combout\);

\E.INICIO~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E.INICIO~3_combout\ = (\E.INICIO~1_combout\ & ((\E.TAA_I~q\ & (\Equal1~0_combout\)) # (!\E.TAA_I~q\ & ((!\E.INICIO~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E.INICIO~1_combout\,
	datab => \Equal1~0_combout\,
	datac => \E.TAA_I~q\,
	datad => \E.INICIO~2_combout\,
	combout => \E.INICIO~3_combout\);

\E.INICIO~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E.INICIO~5_combout\ = (\E.INICIO~4_combout\ & (((\E.TVA_I~0_combout\ & !\Equal0~0_combout\)) # (!\Equal2~0_combout\))) # (!\E.INICIO~4_combout\ & (\E.TVA_I~0_combout\ & ((!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E.INICIO~4_combout\,
	datab => \E.TVA_I~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \E.INICIO~5_combout\);

\E.INICIO~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E.INICIO~6_combout\ = (!\E.INICIO~3_combout\ & (!\E.INICIO~5_combout\ & \CK_EN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E.INICIO~3_combout\,
	datab => \E.INICIO~5_combout\,
	datad => \CK_EN~input_o\,
	combout => \E.INICIO~6_combout\);

\E.INICIO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => VCC,
	clrn => \INI~input_o\,
	ena => \E.INICIO~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E.INICIO~q\);

\E.TVA_I~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E.TVA_I~7_combout\ = (\E.TAB~q\ & (!\SF~input_o\)) # (!\E.TAB~q\ & ((!\E.INICIO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SF~input_o\,
	datab => \E.INICIO~q\,
	datad => \E.TAB~q\,
	combout => \E.TVA_I~7_combout\);

\E.TVA_I~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E.TVA_I~2_combout\ = ((\E.TAB~q\ & (!\Equal3~0_combout\ & !\SF~input_o\))) # (!\CK_EN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E.TAB~q\,
	datab => \Equal3~0_combout\,
	datac => \SF~input_o\,
	datad => \CK_EN~input_o\,
	combout => \E.TVA_I~2_combout\);

\E.TVA_I~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E.TVA_I~1_combout\ = (\E.TVP_I~q\) # ((\E.INICIO~4_combout\) # ((\E.TVA_I~0_combout\) # (\E.TVB_I~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E.TVP_I~q\,
	datab => \E.INICIO~4_combout\,
	datac => \E.TVA_I~0_combout\,
	datad => \E.TVB_I~3_combout\,
	combout => \E.TVA_I~1_combout\);

\E.TVA_I~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E.TVA_I~3_combout\ = (\E.TVA_I~1_combout\ & ((!\Equal0~0_combout\) # (!\E.TVA_I~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E.TVA_I~1_combout\,
	datac => \E.TVA_I~q\,
	datad => \Equal0~0_combout\,
	combout => \E.TVA_I~3_combout\);

\E.TVA_I~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E.TVA_I~4_combout\ = (\E.TVP_I~q\ & ((VP(3)) # ((!\Equal4~0_combout\)))) # (!\E.TVP_I~q\ & (((!\Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E.TVP_I~q\,
	datab => VP(3),
	datac => \Equal4~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \E.TVA_I~4_combout\);

\E.TVA_I~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E.TVA_I~5_combout\ = (\E.TAA_I~q\ & (\Equal1~0_combout\)) # (!\E.TAA_I~q\ & ((\E.TVA_I~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \E.TAA_I~q\,
	datac => \E.TVA_I~4_combout\,
	combout => \E.TVA_I~5_combout\);

\E.TVA_I~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E.TVA_I~6_combout\ = (!\E.TVA_I~2_combout\ & (((!\E.TVA_I~q\ & !\E.TVA_I~5_combout\)) # (!\E.TVA_I~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E.TVA_I~2_combout\,
	datab => \E.TVA_I~3_combout\,
	datac => \E.TVA_I~q\,
	datad => \E.TVA_I~5_combout\,
	combout => \E.TVA_I~6_combout\);

\E.TVA_I\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \E.TVA_I~7_combout\,
	clrn => \INI~input_o\,
	ena => \E.TVA_I~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E.TVA_I~q\);

\E.TVA_I~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E.TVA_I~0_combout\ = (\E.TVA_I~q\ & !\SF~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E.TVA_I~q\,
	datad => \SF~input_o\,
	combout => \E.TVA_I~0_combout\);

\E.TAA_I\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \E.TVA_I~0_combout\,
	clrn => \INI~input_o\,
	ena => \E.INICIO~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E.TAA_I~q\);

\E.TVP_I~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E.TVP_I~0_combout\ = (\E.TAA_I~q\ & (\BP~input_o\ & !\SF~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E.TAA_I~q\,
	datab => \BP~input_o\,
	datad => \SF~input_o\,
	combout => \E.TVP_I~0_combout\);

\E.TVP_I\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \E.TVP_I~0_combout\,
	clrn => \INI~input_o\,
	ena => \E.TVB_I~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E.TVP_I~q\);

\BPR~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BPR~0_combout\ = (\E.TVP_I~q\) # (!\E.INICIO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E.TVP_I~q\,
	datad => \E.INICIO~q\,
	combout => \BPR~0_combout\);

\E.FALHA~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E.FALHA~0_combout\ = \E.INICIO~q\ $ (\E.TVA_I~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \E.INICIO~q\,
	datad => \E.TVA_I~1_combout\,
	combout => \E.FALHA~0_combout\);

\E.FALHA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \E.FALHA~0_combout\,
	asdata => \SF~input_o\,
	clrn => \INI~input_o\,
	sload => \E.TAB~q\,
	ena => \E.TVA_I~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E.FALHA~q\);

\LD~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LD~0_combout\ = (\E.TAB~q\) # (\E.FALHA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E.TAB~q\,
	datab => \E.FALHA~q\,
	combout => \LD~0_combout\);

WideOr7 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr7~combout\ = (\E.TVB_I~q\) # ((\E.TAB~q\) # (\E.FALHA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E.TVB_I~q\,
	datab => \E.TAB~q\,
	datac => \E.FALHA~q\,
	combout => \WideOr7~combout\);

WideOr6 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr6~combout\ = (\E.TVP_I~q\) # ((\E.FALHA~q\) # (\E.TAA_I~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E.TVP_I~q\,
	datab => \E.FALHA~q\,
	datac => \E.TAA_I~q\,
	combout => \WideOr6~combout\);

WideOr5 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr5~combout\ = (\E.TVB_I~q\) # ((\E.TAB~q\) # (!\E.INICIO~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E.TVB_I~q\,
	datab => \E.TAB~q\,
	datad => \E.INICIO~q\,
	combout => \WideOr5~combout\);

ww_BPR <= \BPR~output_o\;

ww_VDP <= \VDP~output_o\;

ww_TVA(0) <= \TVA[0]~output_o\;

ww_TVA(1) <= \TVA[1]~output_o\;

ww_TVA(2) <= \TVA[2]~output_o\;

ww_TVA(3) <= \TVA[3]~output_o\;

ww_TVB(0) <= \TVB[0]~output_o\;

ww_TVB(1) <= \TVB[1]~output_o\;

ww_TVB(2) <= \TVB[2]~output_o\;

ww_TVB(3) <= \TVB[3]~output_o\;

ww_TVP(0) <= \TVP[0]~output_o\;

ww_TVP(1) <= \TVP[1]~output_o\;

ww_TVP(2) <= \TVP[2]~output_o\;

ww_TVP(3) <= \TVP[3]~output_o\;

ww_LD(0) <= \LD[0]~output_o\;

ww_LD(1) <= \LD[1]~output_o\;

ww_LD(2) <= \LD[2]~output_o\;

ww_LD(3) <= \LD[3]~output_o\;

ww_LD(4) <= \LD[4]~output_o\;

ww_LD(5) <= \LD[5]~output_o\;
END structure;


