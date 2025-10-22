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

-- DATE "10/21/2025 21:31:34"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Block1 IS
    PORT (
	BPR : OUT std_logic;
	INI : IN std_logic;
	CK : IN std_logic;
	CK_EN : IN std_logic;
	BP : OUT std_logic;
	KEY1 : IN std_logic;
	SF : IN std_logic;
	ST : IN std_logic;
	VDP : OUT std_logic;
	LD : OUT std_logic_vector(5 DOWNTO 0);
	TVA : OUT std_logic_vector(3 DOWNTO 0);
	TVB : OUT std_logic_vector(3 DOWNTO 0);
	TVP : OUT std_logic_vector(3 DOWNTO 0)
	);
END Block1;

-- Design Ports Information
-- BPR	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BP	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VDP	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LD[5]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LD[4]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LD[3]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LD[2]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LD[1]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LD[0]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TVA[3]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TVA[2]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TVA[1]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TVA[0]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TVB[3]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TVB[2]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TVB[1]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TVB[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TVP[3]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TVP[2]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TVP[1]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TVP[0]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SF	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INI	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CK_EN	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY1	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ST	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Block1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_BPR : std_logic;
SIGNAL ww_INI : std_logic;
SIGNAL ww_CK : std_logic;
SIGNAL ww_CK_EN : std_logic;
SIGNAL ww_BP : std_logic;
SIGNAL ww_KEY1 : std_logic;
SIGNAL ww_SF : std_logic;
SIGNAL ww_ST : std_logic;
SIGNAL ww_VDP : std_logic;
SIGNAL ww_LD : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_TVA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_TVB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_TVP : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \INI~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \BPR~output_o\ : std_logic;
SIGNAL \BP~output_o\ : std_logic;
SIGNAL \VDP~output_o\ : std_logic;
SIGNAL \LD[5]~output_o\ : std_logic;
SIGNAL \LD[4]~output_o\ : std_logic;
SIGNAL \LD[3]~output_o\ : std_logic;
SIGNAL \LD[2]~output_o\ : std_logic;
SIGNAL \LD[1]~output_o\ : std_logic;
SIGNAL \LD[0]~output_o\ : std_logic;
SIGNAL \TVA[3]~output_o\ : std_logic;
SIGNAL \TVA[2]~output_o\ : std_logic;
SIGNAL \TVA[1]~output_o\ : std_logic;
SIGNAL \TVA[0]~output_o\ : std_logic;
SIGNAL \TVB[3]~output_o\ : std_logic;
SIGNAL \TVB[2]~output_o\ : std_logic;
SIGNAL \TVB[1]~output_o\ : std_logic;
SIGNAL \TVB[0]~output_o\ : std_logic;
SIGNAL \TVP[3]~output_o\ : std_logic;
SIGNAL \TVP[2]~output_o\ : std_logic;
SIGNAL \TVP[1]~output_o\ : std_logic;
SIGNAL \TVP[0]~output_o\ : std_logic;
SIGNAL \CK~input_o\ : std_logic;
SIGNAL \CK~inputclkctrl_outclk\ : std_logic;
SIGNAL \SF~input_o\ : std_logic;
SIGNAL \inst1|E.INICIO~feeder_combout\ : std_logic;
SIGNAL \INI~input_o\ : std_logic;
SIGNAL \INI~inputclkctrl_outclk\ : std_logic;
SIGNAL \CK_EN~input_o\ : std_logic;
SIGNAL \KEY1~input_o\ : std_logic;
SIGNAL \inst|BP~0_combout\ : std_logic;
SIGNAL \inst|BP~combout\ : std_logic;
SIGNAL \inst1|E.TVB_I~3_combout\ : std_logic;
SIGNAL \inst1|VB[3]~1_combout\ : std_logic;
SIGNAL \inst1|E.TAB~q\ : std_logic;
SIGNAL \inst1|AA[0]~3_combout\ : std_logic;
SIGNAL \inst1|E.INICIO~6_combout\ : std_logic;
SIGNAL \inst1|AB[1]~3_combout\ : std_logic;
SIGNAL \inst1|E.INICIO~0_combout\ : std_logic;
SIGNAL \inst1|E.TVA_I~0_combout\ : std_logic;
SIGNAL \inst1|E.FALHA~0_combout\ : std_logic;
SIGNAL \inst1|VB[3]~2_combout\ : std_logic;
SIGNAL \inst1|VP[3]~1_combout\ : std_logic;
SIGNAL \inst1|VP[3]~2_combout\ : std_logic;
SIGNAL \inst1|VP[0]~8_combout\ : std_logic;
SIGNAL \inst1|VP[1]~5_combout\ : std_logic;
SIGNAL \inst1|VP[1]~6_combout\ : std_logic;
SIGNAL \inst1|VP[1]~7_combout\ : std_logic;
SIGNAL \inst1|Add4~1_combout\ : std_logic;
SIGNAL \inst1|VP[2]~4_combout\ : std_logic;
SIGNAL \inst1|Add4~0_combout\ : std_logic;
SIGNAL \inst1|VP[3]~3_combout\ : std_logic;
SIGNAL \inst1|VP[3]~0_combout\ : std_logic;
SIGNAL \inst1|E.TVA_I~1_combout\ : std_logic;
SIGNAL \inst1|E.TVA_I~2_combout\ : std_logic;
SIGNAL \inst1|E.TVA_I~3_combout\ : std_logic;
SIGNAL \inst1|E.TVA_I~4_combout\ : std_logic;
SIGNAL \inst1|E.FALHA~q\ : std_logic;
SIGNAL \inst1|VB[0]~8_combout\ : std_logic;
SIGNAL \inst1|VB[3]~3_combout\ : std_logic;
SIGNAL \inst1|VB[3]~4_combout\ : std_logic;
SIGNAL \inst1|VB[0]~9_combout\ : std_logic;
SIGNAL \inst1|VB[1]~7_combout\ : std_logic;
SIGNAL \inst1|Add2~1_combout\ : std_logic;
SIGNAL \inst1|VB[2]~6_combout\ : std_logic;
SIGNAL \inst1|Add2~0_combout\ : std_logic;
SIGNAL \inst1|VB[3]~5_combout\ : std_logic;
SIGNAL \inst1|Equal2~0_combout\ : std_logic;
SIGNAL \inst1|AB[1]~2_combout\ : std_logic;
SIGNAL \inst1|AB[1]~4_combout\ : std_logic;
SIGNAL \inst1|AB[0]~8_combout\ : std_logic;
SIGNAL \inst1|AB[1]~7_combout\ : std_logic;
SIGNAL \inst1|Add3~1_combout\ : std_logic;
SIGNAL \inst1|AB[2]~6_combout\ : std_logic;
SIGNAL \inst1|Add3~0_combout\ : std_logic;
SIGNAL \inst1|AB[3]~5_combout\ : std_logic;
SIGNAL \inst1|Equal3~0_combout\ : std_logic;
SIGNAL \inst1|Selector9~3_combout\ : std_logic;
SIGNAL \inst1|WideOr0~0_combout\ : std_logic;
SIGNAL \inst1|Selector10~0_combout\ : std_logic;
SIGNAL \inst1|Selector10~1_combout\ : std_logic;
SIGNAL \inst1|Selector10~2_combout\ : std_logic;
SIGNAL \inst1|Selector9~1_combout\ : std_logic;
SIGNAL \ST~input_o\ : std_logic;
SIGNAL \inst1|Selector9~0_combout\ : std_logic;
SIGNAL \inst1|Selector9~2_combout\ : std_logic;
SIGNAL \inst1|Selector9~4_combout\ : std_logic;
SIGNAL \inst1|Add0~1_combout\ : std_logic;
SIGNAL \inst1|VA[3]~2_combout\ : std_logic;
SIGNAL \inst1|VA[3]~1_combout\ : std_logic;
SIGNAL \inst1|VA[3]~3_combout\ : std_logic;
SIGNAL \inst1|VA[2]~5_combout\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|VA[3]~4_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|AA[0]~2_combout\ : std_logic;
SIGNAL \inst1|AA[0]~4_combout\ : std_logic;
SIGNAL \inst1|AA[0]~8_combout\ : std_logic;
SIGNAL \inst1|AA[1]~7_combout\ : std_logic;
SIGNAL \inst1|Add1~1_combout\ : std_logic;
SIGNAL \inst1|AA[2]~6_combout\ : std_logic;
SIGNAL \inst1|Add1~0_combout\ : std_logic;
SIGNAL \inst1|AA[3]~5_combout\ : std_logic;
SIGNAL \inst1|Equal1~0_combout\ : std_logic;
SIGNAL \inst1|VB[3]~0_combout\ : std_logic;
SIGNAL \inst1|E.TVB_I~0_combout\ : std_logic;
SIGNAL \inst1|E.TVB_I~1_combout\ : std_logic;
SIGNAL \inst1|E.TVB_I~2_combout\ : std_logic;
SIGNAL \inst1|E.TVB_I~q\ : std_logic;
SIGNAL \inst1|E.INICIO~4_combout\ : std_logic;
SIGNAL \inst1|E.INICIO~1_combout\ : std_logic;
SIGNAL \inst1|E.INICIO~2_combout\ : std_logic;
SIGNAL \inst1|E.INICIO~3_combout\ : std_logic;
SIGNAL \inst1|E.INICIO~5_combout\ : std_logic;
SIGNAL \inst1|E.INICIO~q\ : std_logic;
SIGNAL \inst1|E.TVA_I~5_combout\ : std_logic;
SIGNAL \inst1|E.TVA_I~q\ : std_logic;
SIGNAL \inst1|VA[3]~0_combout\ : std_logic;
SIGNAL \inst1|E.TAA_I~q\ : std_logic;
SIGNAL \inst1|E.TVP_I~0_combout\ : std_logic;
SIGNAL \inst1|E.TVP_I~q\ : std_logic;
SIGNAL \inst1|BPR~combout\ : std_logic;
SIGNAL \inst1|WideOr0~combout\ : std_logic;
SIGNAL \inst1|WideOr1~combout\ : std_logic;
SIGNAL \inst1|WideOr2~combout\ : std_logic;
SIGNAL \inst1|LD\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst1|VA\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|VB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|VP\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|AB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|AA\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|ALT_INV_WideOr2~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

BPR <= ww_BPR;
ww_INI <= INI;
ww_CK <= CK;
ww_CK_EN <= CK_EN;
BP <= ww_BP;
ww_KEY1 <= KEY1;
ww_SF <= SF;
ww_ST <= ST;
VDP <= ww_VDP;
LD <= ww_LD;
TVA <= ww_TVA;
TVB <= ww_TVB;
TVP <= ww_TVP;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\INI~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \INI~input_o\);

\CK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CK~input_o\);
\inst1|ALT_INV_WideOr2~combout\ <= NOT \inst1|WideOr2~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X0_Y37_N2
\BPR~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|BPR~combout\,
	devoe => ww_devoe,
	o => \BPR~output_o\);

-- Location: IOOBUF_X0_Y36_N23
\BP~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|BP~combout\,
	devoe => ww_devoe,
	o => \BP~output_o\);

-- Location: IOOBUF_X22_Y39_N23
\VDP~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|E.TVP_I~q\,
	devoe => ww_devoe,
	o => \VDP~output_o\);

-- Location: IOOBUF_X26_Y39_N2
\LD[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|WideOr0~combout\,
	devoe => ww_devoe,
	o => \LD[5]~output_o\);

-- Location: IOOBUF_X26_Y39_N30
\LD[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|WideOr1~combout\,
	devoe => ww_devoe,
	o => \LD[4]~output_o\);

-- Location: IOOBUF_X22_Y39_N30
\LD[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|E.TVA_I~q\,
	devoe => ww_devoe,
	o => \LD[3]~output_o\);

-- Location: IOOBUF_X26_Y39_N16
\LD[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_WideOr2~combout\,
	devoe => ww_devoe,
	o => \LD[2]~output_o\);

-- Location: IOOBUF_X24_Y39_N30
\LD[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LD\(1),
	devoe => ww_devoe,
	o => \LD[1]~output_o\);

-- Location: IOOBUF_X20_Y39_N2
\LD[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|E.TVB_I~q\,
	devoe => ww_devoe,
	o => \LD[0]~output_o\);

-- Location: IOOBUF_X0_Y37_N9
\TVA[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|VA\(3),
	devoe => ww_devoe,
	o => \TVA[3]~output_o\);

-- Location: IOOBUF_X0_Y37_N16
\TVA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|VA\(2),
	devoe => ww_devoe,
	o => \TVA[2]~output_o\);

-- Location: IOOBUF_X0_Y36_N2
\TVA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|VA\(1),
	devoe => ww_devoe,
	o => \TVA[1]~output_o\);

-- Location: IOOBUF_X0_Y37_N23
\TVA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|VA\(0),
	devoe => ww_devoe,
	o => \TVA[0]~output_o\);

-- Location: IOOBUF_X24_Y39_N23
\TVB[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|VB\(3),
	devoe => ww_devoe,
	o => \TVB[3]~output_o\);

-- Location: IOOBUF_X26_Y39_N9
\TVB[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|VB\(2),
	devoe => ww_devoe,
	o => \TVB[2]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\TVB[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|VB\(1),
	devoe => ww_devoe,
	o => \TVB[1]~output_o\);

-- Location: IOOBUF_X29_Y39_N9
\TVB[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|VB\(0),
	devoe => ww_devoe,
	o => \TVB[0]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\TVP[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|VP\(3),
	devoe => ww_devoe,
	o => \TVP[3]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\TVP[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|VP\(2),
	devoe => ww_devoe,
	o => \TVP[2]~output_o\);

-- Location: IOOBUF_X29_Y39_N16
\TVP[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|VP\(1),
	devoe => ww_devoe,
	o => \TVP[1]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\TVP[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|VP\(0),
	devoe => ww_devoe,
	o => \TVP[0]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
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

-- Location: CLKCTRL_G3
\CK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CK~inputclkctrl_outclk\);

-- Location: IOIBUF_X20_Y39_N8
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

-- Location: LCCOMB_X18_Y37_N28
\inst1|E.INICIO~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|E.INICIO~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|E.INICIO~feeder_combout\);

-- Location: IOIBUF_X0_Y18_N22
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

-- Location: CLKCTRL_G4
\INI~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \INI~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \INI~inputclkctrl_outclk\);

-- Location: IOIBUF_X22_Y39_N15
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

-- Location: IOIBUF_X49_Y54_N29
\KEY1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY1,
	o => \KEY1~input_o\);

-- Location: LCCOMB_X17_Y37_N24
\inst|BP~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BP~0_combout\ = ((\inst1|E.TVP_I~q\) # (!\inst1|E.INICIO~q\)) # (!\INI~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INI~input_o\,
	datab => \inst1|E.TVP_I~q\,
	datad => \inst1|E.INICIO~q\,
	combout => \inst|BP~0_combout\);

-- Location: LCCOMB_X20_Y37_N26
\inst|BP\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BP~combout\ = (!\inst|BP~0_combout\ & ((\inst|BP~combout\) # (!\KEY1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1~input_o\,
	datab => \inst|BP~0_combout\,
	datac => \inst|BP~combout\,
	combout => \inst|BP~combout\);

-- Location: LCCOMB_X16_Y37_N4
\inst1|E.TVB_I~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|E.TVB_I~3_combout\ = (\inst1|E.TAA_I~q\ & ((\SF~input_o\ & (\inst1|E.TVP_I~q\)) # (!\SF~input_o\ & ((!\inst|BP~combout\))))) # (!\inst1|E.TAA_I~q\ & (\inst1|E.TVP_I~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|E.TVP_I~q\,
	datab => \inst|BP~combout\,
	datac => \inst1|E.TAA_I~q\,
	datad => \SF~input_o\,
	combout => \inst1|E.TVB_I~3_combout\);

-- Location: LCCOMB_X18_Y37_N6
\inst1|VB[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|VB[3]~1_combout\ = (!\SF~input_o\ & \inst1|E.TVB_I~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SF~input_o\,
	datad => \inst1|E.TVB_I~q\,
	combout => \inst1|VB[3]~1_combout\);

-- Location: FF_X18_Y37_N11
\inst1|E.TAB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \inst1|VB[3]~1_combout\,
	clrn => \INI~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst1|E.INICIO~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|E.TAB~q\);

-- Location: LCCOMB_X17_Y37_N28
\inst1|AA[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|AA[0]~3_combout\ = (\inst1|E.TVA_I~q\ & (!\inst1|E.TVB_I~q\ & (\SF~input_o\ & !\inst1|E.TAB~q\))) # (!\inst1|E.TVA_I~q\ & (!\SF~input_o\ & ((\inst1|E.TVB_I~q\) # (\inst1|E.TAB~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|E.TVA_I~q\,
	datab => \inst1|E.TVB_I~q\,
	datac => \SF~input_o\,
	datad => \inst1|E.TAB~q\,
	combout => \inst1|AA[0]~3_combout\);

-- Location: LCCOMB_X18_Y37_N20
\inst1|E.INICIO~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|E.INICIO~6_combout\ = (!\SF~input_o\ & \inst1|E.TAB~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SF~input_o\,
	datad => \inst1|E.TAB~q\,
	combout => \inst1|E.INICIO~6_combout\);

-- Location: LCCOMB_X19_Y37_N30
\inst1|AB[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|AB[1]~3_combout\ = (\SF~input_o\ & (!\inst1|E.TAA_I~q\ & (\inst1|E.TVB_I~q\ & !\inst1|E.TVA_I~q\))) # (!\SF~input_o\ & (!\inst1|E.TVB_I~q\ & ((\inst1|E.TAA_I~q\) # (\inst1|E.TVA_I~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SF~input_o\,
	datab => \inst1|E.TAA_I~q\,
	datac => \inst1|E.TVB_I~q\,
	datad => \inst1|E.TVA_I~q\,
	combout => \inst1|AB[1]~3_combout\);

-- Location: LCCOMB_X19_Y37_N8
\inst1|E.INICIO~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|E.INICIO~0_combout\ = (!\SF~input_o\ & \inst1|E.TAA_I~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SF~input_o\,
	datad => \inst1|E.TAA_I~q\,
	combout => \inst1|E.INICIO~0_combout\);

-- Location: LCCOMB_X19_Y37_N16
\inst1|E.TVA_I~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|E.TVA_I~0_combout\ = (\inst1|E.INICIO~0_combout\) # ((\inst1|E.TVP_I~q\) # ((\inst1|VB[3]~1_combout\) # (\inst1|VA[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|E.INICIO~0_combout\,
	datab => \inst1|E.TVP_I~q\,
	datac => \inst1|VB[3]~1_combout\,
	datad => \inst1|VA[3]~0_combout\,
	combout => \inst1|E.TVA_I~0_combout\);

-- Location: LCCOMB_X20_Y37_N28
\inst1|E.FALHA~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|E.FALHA~0_combout\ = (!\inst1|E.TVA_I~0_combout\ & \inst1|E.INICIO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|E.TVA_I~0_combout\,
	datab => \inst1|E.INICIO~q\,
	combout => \inst1|E.FALHA~0_combout\);

-- Location: LCCOMB_X20_Y37_N22
\inst1|VB[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|VB[3]~2_combout\ = (!\inst1|E.INICIO~6_combout\ & (\CK_EN~input_o\ & (!\inst1|VA[3]~0_combout\ & \inst1|E.INICIO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|E.INICIO~6_combout\,
	datab => \CK_EN~input_o\,
	datac => \inst1|VA[3]~0_combout\,
	datad => \inst1|E.INICIO~q\,
	combout => \inst1|VB[3]~2_combout\);

-- Location: LCCOMB_X18_Y37_N10
\inst1|VP[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|VP[3]~1_combout\ = (!\inst1|VB[3]~1_combout\ & (((\inst1|Equal1~0_combout\ & \inst|BP~combout\)) # (!\inst1|E.INICIO~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal1~0_combout\,
	datab => \inst1|E.INICIO~0_combout\,
	datac => \inst1|VB[3]~1_combout\,
	datad => \inst|BP~combout\,
	combout => \inst1|VP[3]~1_combout\);

-- Location: LCCOMB_X21_Y37_N28
\inst1|VP[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|VP[3]~2_combout\ = (\inst1|VB[3]~2_combout\ & (\inst1|VP[3]~1_combout\ & ((!\inst1|VP[3]~0_combout\) # (!\inst1|E.TVP_I~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|E.TVP_I~q\,
	datab => \inst1|VP[3]~0_combout\,
	datac => \inst1|VB[3]~2_combout\,
	datad => \inst1|VP[3]~1_combout\,
	combout => \inst1|VP[3]~2_combout\);

-- Location: LCCOMB_X21_Y37_N24
\inst1|VP[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|VP[0]~8_combout\ = (\inst1|VP\(0) & ((!\inst1|VP[3]~2_combout\))) # (!\inst1|VP\(0) & (\inst1|E.TVP_I~q\ & \inst1|VP[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|E.TVP_I~q\,
	datac => \inst1|VP\(0),
	datad => \inst1|VP[3]~2_combout\,
	combout => \inst1|VP[0]~8_combout\);

-- Location: FF_X21_Y37_N25
\inst1|VP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \inst1|VP[0]~8_combout\,
	clrn => \INI~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|VP\(0));

-- Location: LCCOMB_X21_Y37_N6
\inst1|VP[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|VP[1]~5_combout\ = (\inst1|E.TVP_I~q\ & (\inst1|VP\(1) $ (!\inst1|VP\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|VP\(1),
	datac => \inst1|VP\(0),
	datad => \inst1|E.TVP_I~q\,
	combout => \inst1|VP[1]~5_combout\);

-- Location: LCCOMB_X20_Y37_N20
\inst1|VP[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|VP[1]~6_combout\ = (\inst1|E.TAA_I~q\ & (!\inst1|E.FALHA~q\ & (!\inst1|E.TVP_I~q\ & !\SF~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|E.TAA_I~q\,
	datab => \inst1|E.FALHA~q\,
	datac => \inst1|E.TVP_I~q\,
	datad => \SF~input_o\,
	combout => \inst1|VP[1]~6_combout\);

-- Location: LCCOMB_X21_Y37_N26
\inst1|VP[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|VP[1]~7_combout\ = (\inst1|VP[3]~2_combout\ & ((\inst1|VP[1]~5_combout\) # ((\inst1|VP[1]~6_combout\)))) # (!\inst1|VP[3]~2_combout\ & (((\inst1|VP\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|VP[1]~5_combout\,
	datab => \inst1|VP[1]~6_combout\,
	datac => \inst1|VP\(1),
	datad => \inst1|VP[3]~2_combout\,
	combout => \inst1|VP[1]~7_combout\);

-- Location: FF_X21_Y37_N27
\inst1|VP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \inst1|VP[1]~7_combout\,
	clrn => \INI~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|VP\(1));

-- Location: LCCOMB_X21_Y37_N4
\inst1|Add4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add4~1_combout\ = \inst1|VP\(2) $ (((\inst1|VP\(0)) # (\inst1|VP\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|VP\(2),
	datac => \inst1|VP\(0),
	datad => \inst1|VP\(1),
	combout => \inst1|Add4~1_combout\);

-- Location: LCCOMB_X21_Y37_N16
\inst1|VP[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|VP[2]~4_combout\ = (\inst1|VP[3]~2_combout\ & (\inst1|E.TVP_I~q\ & (!\inst1|Add4~1_combout\))) # (!\inst1|VP[3]~2_combout\ & (((\inst1|VP\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|E.TVP_I~q\,
	datab => \inst1|Add4~1_combout\,
	datac => \inst1|VP\(2),
	datad => \inst1|VP[3]~2_combout\,
	combout => \inst1|VP[2]~4_combout\);

-- Location: FF_X21_Y37_N17
\inst1|VP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \inst1|VP[2]~4_combout\,
	clrn => \INI~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|VP\(2));

-- Location: LCCOMB_X21_Y37_N22
\inst1|Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add4~0_combout\ = \inst1|VP\(3) $ (((\inst1|VP\(2)) # ((\inst1|VP\(0)) # (\inst1|VP\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|VP\(3),
	datab => \inst1|VP\(2),
	datac => \inst1|VP\(0),
	datad => \inst1|VP\(1),
	combout => \inst1|Add4~0_combout\);

-- Location: LCCOMB_X21_Y37_N14
\inst1|VP[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|VP[3]~3_combout\ = (\inst1|VP[3]~2_combout\ & (!\inst1|Add4~0_combout\ & (\inst1|E.TVP_I~q\))) # (!\inst1|VP[3]~2_combout\ & (((\inst1|VP\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add4~0_combout\,
	datab => \inst1|E.TVP_I~q\,
	datac => \inst1|VP\(3),
	datad => \inst1|VP[3]~2_combout\,
	combout => \inst1|VP[3]~3_combout\);

-- Location: FF_X21_Y37_N15
\inst1|VP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \inst1|VP[3]~3_combout\,
	clrn => \INI~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|VP\(3));

-- Location: LCCOMB_X21_Y37_N20
\inst1|VP[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|VP[3]~0_combout\ = (!\inst1|VP\(1) & (!\inst1|VP\(0) & (!\inst1|VP\(3) & !\inst1|VP\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|VP\(1),
	datab => \inst1|VP\(0),
	datac => \inst1|VP\(3),
	datad => \inst1|VP\(2),
	combout => \inst1|VP[3]~0_combout\);

-- Location: LCCOMB_X20_Y37_N18
\inst1|E.TVA_I~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|E.TVA_I~1_combout\ = (\inst1|E.TVP_I~q\ & (\inst1|VP[3]~0_combout\)) # (!\inst1|E.TVP_I~q\ & ((\inst1|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|E.TVP_I~q\,
	datac => \inst1|VP[3]~0_combout\,
	datad => \inst1|Equal2~0_combout\,
	combout => \inst1|E.TVA_I~1_combout\);

-- Location: LCCOMB_X20_Y37_N16
\inst1|E.TVA_I~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|E.TVA_I~2_combout\ = (\inst1|E.TAA_I~q\ & (\inst1|Equal1~0_combout\)) # (!\inst1|E.TAA_I~q\ & ((\inst1|E.TVA_I~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|E.TAA_I~q\,
	datab => \inst1|Equal1~0_combout\,
	datad => \inst1|E.TVA_I~1_combout\,
	combout => \inst1|E.TVA_I~2_combout\);

-- Location: LCCOMB_X20_Y37_N2
\inst1|E.TVA_I~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|E.TVA_I~3_combout\ = (\inst1|E.TVA_I~0_combout\ & ((\inst1|E.TVA_I~q\ & (!\inst1|Equal0~0_combout\)) # (!\inst1|E.TVA_I~q\ & ((!\inst1|E.TVA_I~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|E.TVA_I~q\,
	datab => \inst1|Equal0~0_combout\,
	datac => \inst1|E.TVA_I~0_combout\,
	datad => \inst1|E.TVA_I~2_combout\,
	combout => \inst1|E.TVA_I~3_combout\);

-- Location: LCCOMB_X20_Y37_N8
\inst1|E.TVA_I~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|E.TVA_I~4_combout\ = (\CK_EN~input_o\ & (!\inst1|E.TVA_I~3_combout\ & ((\inst1|Equal3~0_combout\) # (!\inst1|E.INICIO~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal3~0_combout\,
	datab => \CK_EN~input_o\,
	datac => \inst1|E.INICIO~6_combout\,
	datad => \inst1|E.TVA_I~3_combout\,
	combout => \inst1|E.TVA_I~4_combout\);

-- Location: FF_X20_Y37_N29
\inst1|E.FALHA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \inst1|E.FALHA~0_combout\,
	asdata => \SF~input_o\,
	clrn => \INI~inputclkctrl_outclk\,
	sload => \inst1|E.TAB~q\,
	ena => \inst1|E.TVA_I~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|E.FALHA~q\);

-- Location: LCCOMB_X21_Y37_N2
\inst1|VB[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|VB[0]~8_combout\ = (!\inst1|VB[3]~1_combout\ & (!\inst1|E.FALHA~q\ & ((\inst1|E.TVP_I~q\) # (\inst1|E.INICIO~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|E.TVP_I~q\,
	datab => \inst1|VB[3]~1_combout\,
	datac => \inst1|E.FALHA~q\,
	datad => \inst1|E.INICIO~0_combout\,
	combout => \inst1|VB[0]~8_combout\);

-- Location: LCCOMB_X20_Y37_N0
\inst1|VB[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|VB[3]~3_combout\ = (\inst1|VB[3]~2_combout\ & (\inst1|VB[3]~0_combout\ & ((!\inst1|Equal2~0_combout\) # (!\inst1|VB[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|VB[3]~1_combout\,
	datab => \inst1|Equal2~0_combout\,
	datac => \inst1|VB[3]~2_combout\,
	datad => \inst1|VB[3]~0_combout\,
	combout => \inst1|VB[3]~3_combout\);

-- Location: LCCOMB_X20_Y37_N14
\inst1|VB[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|VB[3]~4_combout\ = (\inst1|VB[3]~3_combout\ & (((\SF~input_o\) # (!\inst|BP~combout\)) # (!\inst1|E.TAA_I~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|E.TAA_I~q\,
	datab => \inst|BP~combout\,
	datac => \SF~input_o\,
	datad => \inst1|VB[3]~3_combout\,
	combout => \inst1|VB[3]~4_combout\);

-- Location: LCCOMB_X21_Y37_N8
\inst1|VB[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|VB[0]~9_combout\ = (\inst1|VB[3]~4_combout\ & ((\inst1|VB[0]~8_combout\) # ((\inst1|VB[3]~1_combout\ & !\inst1|VB\(0))))) # (!\inst1|VB[3]~4_combout\ & (((\inst1|VB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|VB[3]~1_combout\,
	datab => \inst1|VB[0]~8_combout\,
	datac => \inst1|VB\(0),
	datad => \inst1|VB[3]~4_combout\,
	combout => \inst1|VB[0]~9_combout\);

-- Location: FF_X21_Y37_N9
\inst1|VB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \inst1|VB[0]~9_combout\,
	clrn => \INI~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|VB\(0));

-- Location: LCCOMB_X21_Y37_N30
\inst1|VB[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|VB[1]~7_combout\ = (\inst1|VB[3]~4_combout\ & (\inst1|VB[3]~1_combout\ & (\inst1|VB\(0) $ (!\inst1|VB\(1))))) # (!\inst1|VB[3]~4_combout\ & (((\inst1|VB\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|VB[3]~1_combout\,
	datab => \inst1|VB\(0),
	datac => \inst1|VB\(1),
	datad => \inst1|VB[3]~4_combout\,
	combout => \inst1|VB[1]~7_combout\);

-- Location: FF_X21_Y37_N31
\inst1|VB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \inst1|VB[1]~7_combout\,
	clrn => \INI~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|VB\(1));

-- Location: LCCOMB_X21_Y37_N0
\inst1|Add2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add2~1_combout\ = \inst1|VB\(2) $ (((\inst1|VB\(0)) # (\inst1|VB\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|VB\(0),
	datab => \inst1|VB\(1),
	datad => \inst1|VB\(2),
	combout => \inst1|Add2~1_combout\);

-- Location: LCCOMB_X20_Y37_N30
\inst1|VB[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|VB[2]~6_combout\ = (\inst1|VB[3]~4_combout\ & (\inst1|VB[3]~1_combout\ & (!\inst1|Add2~1_combout\))) # (!\inst1|VB[3]~4_combout\ & (((\inst1|VB\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|VB[3]~1_combout\,
	datab => \inst1|Add2~1_combout\,
	datac => \inst1|VB\(2),
	datad => \inst1|VB[3]~4_combout\,
	combout => \inst1|VB[2]~6_combout\);

-- Location: FF_X20_Y37_N31
\inst1|VB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \inst1|VB[2]~6_combout\,
	clrn => \INI~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|VB\(2));

-- Location: LCCOMB_X21_Y37_N10
\inst1|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add2~0_combout\ = \inst1|VB\(3) $ (((\inst1|VB\(0)) # ((\inst1|VB\(1)) # (\inst1|VB\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|VB\(0),
	datab => \inst1|VB\(1),
	datac => \inst1|VB\(3),
	datad => \inst1|VB\(2),
	combout => \inst1|Add2~0_combout\);

-- Location: LCCOMB_X21_Y37_N12
\inst1|VB[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|VB[3]~5_combout\ = (\inst1|VB[3]~4_combout\ & (!\inst1|Add2~0_combout\ & (\inst1|VB[3]~1_combout\))) # (!\inst1|VB[3]~4_combout\ & (((\inst1|VB\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add2~0_combout\,
	datab => \inst1|VB[3]~1_combout\,
	datac => \inst1|VB\(3),
	datad => \inst1|VB[3]~4_combout\,
	combout => \inst1|VB[3]~5_combout\);

-- Location: FF_X21_Y37_N13
\inst1|VB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \inst1|VB[3]~5_combout\,
	clrn => \INI~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|VB\(3));

-- Location: LCCOMB_X21_Y37_N18
\inst1|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Equal2~0_combout\ = (!\inst1|VB\(3) & (!\inst1|VB\(0) & (!\inst1|VB\(1) & !\inst1|VB\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|VB\(3),
	datab => \inst1|VB\(0),
	datac => \inst1|VB\(1),
	datad => \inst1|VB\(2),
	combout => \inst1|Equal2~0_combout\);

-- Location: LCCOMB_X18_Y37_N24
\inst1|AB[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|AB[1]~2_combout\ = (\CK_EN~input_o\ & (!\inst1|BPR~combout\ & ((!\inst1|E.INICIO~6_combout\) # (!\inst1|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal3~0_combout\,
	datab => \inst1|E.INICIO~6_combout\,
	datac => \CK_EN~input_o\,
	datad => \inst1|BPR~combout\,
	combout => \inst1|AB[1]~2_combout\);

-- Location: LCCOMB_X19_Y37_N20
\inst1|AB[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|AB[1]~4_combout\ = (\inst1|AB[1]~2_combout\ & ((\inst1|E.TVB_I~q\ & ((\inst1|AB[1]~3_combout\) # (\inst1|Equal2~0_combout\))) # (!\inst1|E.TVB_I~q\ & (!\inst1|AB[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|E.TVB_I~q\,
	datab => \inst1|AB[1]~3_combout\,
	datac => \inst1|Equal2~0_combout\,
	datad => \inst1|AB[1]~2_combout\,
	combout => \inst1|AB[1]~4_combout\);

-- Location: LCCOMB_X19_Y37_N4
\inst1|AB[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|AB[0]~8_combout\ = (\inst1|AB\(0) & (((!\inst1|AB[1]~4_combout\)))) # (!\inst1|AB\(0) & (\inst1|E.TAB~q\ & (!\SF~input_o\ & \inst1|AB[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|E.TAB~q\,
	datab => \SF~input_o\,
	datac => \inst1|AB\(0),
	datad => \inst1|AB[1]~4_combout\,
	combout => \inst1|AB[0]~8_combout\);

-- Location: FF_X19_Y37_N5
\inst1|AB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \inst1|AB[0]~8_combout\,
	clrn => \INI~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|AB\(0));

-- Location: LCCOMB_X19_Y37_N10
\inst1|AB[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|AB[1]~7_combout\ = (\inst1|AB[1]~4_combout\ & (\inst1|E.INICIO~6_combout\ & (\inst1|AB\(0) $ (!\inst1|AB\(1))))) # (!\inst1|AB[1]~4_combout\ & (((\inst1|AB\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|E.INICIO~6_combout\,
	datab => \inst1|AB\(0),
	datac => \inst1|AB\(1),
	datad => \inst1|AB[1]~4_combout\,
	combout => \inst1|AB[1]~7_combout\);

-- Location: FF_X19_Y37_N11
\inst1|AB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \inst1|AB[1]~7_combout\,
	clrn => \INI~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|AB\(1));

-- Location: LCCOMB_X19_Y37_N12
\inst1|Add3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add3~1_combout\ = \inst1|AB\(2) $ (((\inst1|AB\(1)) # (\inst1|AB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|AB\(1),
	datab => \inst1|AB\(0),
	datad => \inst1|AB\(2),
	combout => \inst1|Add3~1_combout\);

-- Location: LCCOMB_X19_Y37_N0
\inst1|AB[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|AB[2]~6_combout\ = (\inst1|AB[1]~4_combout\ & (!\inst1|Add3~1_combout\ & (\inst1|E.INICIO~6_combout\))) # (!\inst1|AB[1]~4_combout\ & (((\inst1|AB\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add3~1_combout\,
	datab => \inst1|E.INICIO~6_combout\,
	datac => \inst1|AB\(2),
	datad => \inst1|AB[1]~4_combout\,
	combout => \inst1|AB[2]~6_combout\);

-- Location: FF_X19_Y37_N1
\inst1|AB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \inst1|AB[2]~6_combout\,
	clrn => \INI~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|AB\(2));

-- Location: LCCOMB_X19_Y37_N22
\inst1|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add3~0_combout\ = \inst1|AB\(3) $ (((\inst1|AB\(2)) # ((\inst1|AB\(0)) # (\inst1|AB\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|AB\(3),
	datab => \inst1|AB\(2),
	datac => \inst1|AB\(0),
	datad => \inst1|AB\(1),
	combout => \inst1|Add3~0_combout\);

-- Location: LCCOMB_X19_Y37_N6
\inst1|AB[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|AB[3]~5_combout\ = (\inst1|AB[1]~4_combout\ & (!\inst1|Add3~0_combout\ & (\inst1|E.INICIO~6_combout\))) # (!\inst1|AB[1]~4_combout\ & (((\inst1|AB\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add3~0_combout\,
	datab => \inst1|E.INICIO~6_combout\,
	datac => \inst1|AB\(3),
	datad => \inst1|AB[1]~4_combout\,
	combout => \inst1|AB[3]~5_combout\);

-- Location: FF_X19_Y37_N7
\inst1|AB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \inst1|AB[3]~5_combout\,
	clrn => \INI~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|AB\(3));

-- Location: LCCOMB_X19_Y37_N2
\inst1|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Equal3~0_combout\ = (!\inst1|AB\(1) & (!\inst1|AB\(2) & (!\inst1|AB\(0) & !\inst1|AB\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|AB\(1),
	datab => \inst1|AB\(2),
	datac => \inst1|AB\(0),
	datad => \inst1|AB\(3),
	combout => \inst1|Equal3~0_combout\);

-- Location: LCCOMB_X19_Y37_N24
\inst1|Selector9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector9~3_combout\ = (\inst1|E.TAA_I~q\) # ((\inst1|E.TVB_I~q\) # ((\inst1|E.TAB~q\ & !\inst1|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|E.TAB~q\,
	datab => \inst1|E.TAA_I~q\,
	datac => \inst1|E.TVB_I~q\,
	datad => \inst1|Equal3~0_combout\,
	combout => \inst1|Selector9~3_combout\);

-- Location: LCCOMB_X18_Y37_N0
\inst1|WideOr0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|WideOr0~0_combout\ = (!\inst1|E.TAB~q\ & !\inst1|E.TVB_I~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|E.TAB~q\,
	datad => \inst1|E.TVB_I~q\,
	combout => \inst1|WideOr0~0_combout\);

-- Location: LCCOMB_X18_Y37_N22
\inst1|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector10~0_combout\ = (!\inst1|E.TVP_I~q\ & ((\SF~input_o\) # ((!\inst1|E.TAA_I~q\ & \inst1|WideOr0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|E.TAA_I~q\,
	datab => \SF~input_o\,
	datac => \inst1|E.TVP_I~q\,
	datad => \inst1|WideOr0~0_combout\,
	combout => \inst1|Selector10~0_combout\);

-- Location: LCCOMB_X17_Y37_N30
\inst1|Selector10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector10~1_combout\ = (\inst1|VA\(0) & (((!\inst1|Selector10~0_combout\)))) # (!\inst1|VA\(0) & (\inst1|VA[3]~0_combout\ & (!\inst1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|VA[3]~0_combout\,
	datab => \inst1|VA\(0),
	datac => \inst1|Equal0~0_combout\,
	datad => \inst1|Selector10~0_combout\,
	combout => \inst1|Selector10~1_combout\);

-- Location: LCCOMB_X18_Y37_N18
\inst1|Selector10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector10~2_combout\ = ((\inst1|Selector10~1_combout\) # ((\inst1|Equal3~0_combout\ & \inst1|E.INICIO~6_combout\))) # (!\inst1|E.INICIO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal3~0_combout\,
	datab => \inst1|E.INICIO~6_combout\,
	datac => \inst1|E.INICIO~q\,
	datad => \inst1|Selector10~1_combout\,
	combout => \inst1|Selector10~2_combout\);

-- Location: FF_X18_Y37_N19
\inst1|VA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \inst1|Selector10~2_combout\,
	clrn => \INI~inputclkctrl_outclk\,
	ena => \CK_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|VA\(0));

-- Location: LCCOMB_X18_Y37_N26
\inst1|Selector9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector9~1_combout\ = (!\inst1|Equal0~0_combout\ & (\inst1|VA[3]~0_combout\ & (\inst1|VA\(1) $ (!\inst1|VA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|VA\(1),
	datab => \inst1|VA\(0),
	datac => \inst1|Equal0~0_combout\,
	datad => \inst1|VA[3]~0_combout\,
	combout => \inst1|Selector9~1_combout\);

-- Location: IOIBUF_X20_Y39_N15
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

-- Location: LCCOMB_X19_Y37_N26
\inst1|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector9~0_combout\ = (\ST~input_o\) # ((\inst1|E.INICIO~q\ & ((!\inst1|E.INICIO~6_combout\) # (!\inst1|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ST~input_o\,
	datab => \inst1|Equal3~0_combout\,
	datac => \inst1|E.INICIO~q\,
	datad => \inst1|E.INICIO~6_combout\,
	combout => \inst1|Selector9~0_combout\);

-- Location: LCCOMB_X18_Y37_N8
\inst1|Selector9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector9~2_combout\ = (\inst1|Selector9~1_combout\) # (((\inst1|VA\(1) & \inst1|E.TVP_I~q\)) # (!\inst1|Selector9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|VA\(1),
	datab => \inst1|E.TVP_I~q\,
	datac => \inst1|Selector9~1_combout\,
	datad => \inst1|Selector9~0_combout\,
	combout => \inst1|Selector9~2_combout\);

-- Location: LCCOMB_X18_Y37_N12
\inst1|Selector9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Selector9~4_combout\ = (\inst1|Selector9~2_combout\) # ((\inst1|Selector9~3_combout\ & (!\SF~input_o\ & \inst1|VA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector9~3_combout\,
	datab => \SF~input_o\,
	datac => \inst1|VA\(1),
	datad => \inst1|Selector9~2_combout\,
	combout => \inst1|Selector9~4_combout\);

-- Location: FF_X18_Y37_N13
\inst1|VA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \inst1|Selector9~4_combout\,
	clrn => \INI~inputclkctrl_outclk\,
	ena => \CK_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|VA\(1));

-- Location: LCCOMB_X16_Y37_N18
\inst1|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~1_combout\ = \inst1|VA\(2) $ (((\inst1|VA\(1)) # (\inst1|VA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|VA\(2),
	datac => \inst1|VA\(1),
	datad => \inst1|VA\(0),
	combout => \inst1|Add0~1_combout\);

-- Location: LCCOMB_X16_Y37_N0
\inst1|VA[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|VA[3]~2_combout\ = (\SF~input_o\ & (!\inst1|E.TAA_I~q\ & (\inst1|E.TAB~q\ & !\inst1|E.TVB_I~q\))) # (!\SF~input_o\ & (!\inst1|E.TAB~q\ & ((\inst1|E.TAA_I~q\) # (\inst1|E.TVB_I~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|E.TAA_I~q\,
	datab => \SF~input_o\,
	datac => \inst1|E.TAB~q\,
	datad => \inst1|E.TVB_I~q\,
	combout => \inst1|VA[3]~2_combout\);

-- Location: LCCOMB_X16_Y37_N2
\inst1|VA[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|VA[3]~1_combout\ = (!\inst1|E.TVP_I~q\ & (\CK_EN~input_o\ & ((!\inst1|Equal0~0_combout\) # (!\inst1|VA[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|E.TVP_I~q\,
	datab => \inst1|VA[3]~0_combout\,
	datac => \CK_EN~input_o\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|VA[3]~1_combout\);

-- Location: LCCOMB_X16_Y37_N10
\inst1|VA[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|VA[3]~3_combout\ = (\inst1|VA[3]~1_combout\ & ((\inst1|E.TAB~q\ & ((\inst1|VA[3]~2_combout\) # (\inst1|Equal3~0_combout\))) # (!\inst1|E.TAB~q\ & (!\inst1|VA[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|E.TAB~q\,
	datab => \inst1|VA[3]~2_combout\,
	datac => \inst1|Equal3~0_combout\,
	datad => \inst1|VA[3]~1_combout\,
	combout => \inst1|VA[3]~3_combout\);

-- Location: LCCOMB_X16_Y37_N6
\inst1|VA[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|VA[2]~5_combout\ = (\inst1|VA[3]~3_combout\ & (\inst1|VA[3]~0_combout\ & (!\inst1|Add0~1_combout\))) # (!\inst1|VA[3]~3_combout\ & (((\inst1|VA\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|VA[3]~0_combout\,
	datab => \inst1|Add0~1_combout\,
	datac => \inst1|VA\(2),
	datad => \inst1|VA[3]~3_combout\,
	combout => \inst1|VA[2]~5_combout\);

-- Location: FF_X16_Y37_N7
\inst1|VA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \inst1|VA[2]~5_combout\,
	clrn => \INI~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|VA\(2));

-- Location: LCCOMB_X16_Y37_N12
\inst1|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = \inst1|VA\(3) $ (((\inst1|VA\(2)) # ((\inst1|VA\(1)) # (\inst1|VA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|VA\(2),
	datab => \inst1|VA\(3),
	datac => \inst1|VA\(1),
	datad => \inst1|VA\(0),
	combout => \inst1|Add0~0_combout\);

-- Location: LCCOMB_X16_Y37_N8
\inst1|VA[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|VA[3]~4_combout\ = (\inst1|VA[3]~3_combout\ & (!\inst1|Add0~0_combout\ & (\inst1|VA[3]~0_combout\))) # (!\inst1|VA[3]~3_combout\ & (((\inst1|VA\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~0_combout\,
	datab => \inst1|VA[3]~0_combout\,
	datac => \inst1|VA\(3),
	datad => \inst1|VA[3]~3_combout\,
	combout => \inst1|VA[3]~4_combout\);

-- Location: FF_X16_Y37_N9
\inst1|VA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \inst1|VA[3]~4_combout\,
	clrn => \INI~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|VA\(3));

-- Location: LCCOMB_X18_Y37_N14
\inst1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (!\inst1|VA\(1) & (!\inst1|VA\(0) & (!\inst1|VA\(2) & !\inst1|VA\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|VA\(1),
	datab => \inst1|VA\(0),
	datac => \inst1|VA\(2),
	datad => \inst1|VA\(3),
	combout => \inst1|Equal0~0_combout\);

-- Location: LCCOMB_X18_Y37_N2
\inst1|AA[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|AA[0]~2_combout\ = (\CK_EN~input_o\ & (!\inst1|BPR~combout\ & ((!\inst1|Equal1~0_combout\) # (!\inst1|E.INICIO~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CK_EN~input_o\,
	datab => \inst1|E.INICIO~0_combout\,
	datac => \inst1|Equal1~0_combout\,
	datad => \inst1|BPR~combout\,
	combout => \inst1|AA[0]~2_combout\);

-- Location: LCCOMB_X17_Y37_N18
\inst1|AA[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|AA[0]~4_combout\ = (\inst1|AA[0]~2_combout\ & ((\inst1|E.TVA_I~q\ & ((\inst1|AA[0]~3_combout\) # (\inst1|Equal0~0_combout\))) # (!\inst1|E.TVA_I~q\ & (!\inst1|AA[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|E.TVA_I~q\,
	datab => \inst1|AA[0]~3_combout\,
	datac => \inst1|Equal0~0_combout\,
	datad => \inst1|AA[0]~2_combout\,
	combout => \inst1|AA[0]~4_combout\);

-- Location: LCCOMB_X17_Y37_N8
\inst1|AA[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|AA[0]~8_combout\ = (\inst1|AA\(0) & (((!\inst1|AA[0]~4_combout\)))) # (!\inst1|AA\(0) & (!\SF~input_o\ & (\inst1|E.TAA_I~q\ & \inst1|AA[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SF~input_o\,
	datab => \inst1|E.TAA_I~q\,
	datac => \inst1|AA\(0),
	datad => \inst1|AA[0]~4_combout\,
	combout => \inst1|AA[0]~8_combout\);

-- Location: FF_X17_Y37_N9
\inst1|AA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \inst1|AA[0]~8_combout\,
	clrn => \INI~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|AA\(0));

-- Location: LCCOMB_X17_Y37_N10
\inst1|AA[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|AA[1]~7_combout\ = (\inst1|AA[0]~4_combout\ & (\inst1|E.INICIO~0_combout\ & (\inst1|AA\(0) $ (!\inst1|AA\(1))))) # (!\inst1|AA[0]~4_combout\ & (((\inst1|AA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|AA\(0),
	datab => \inst1|E.INICIO~0_combout\,
	datac => \inst1|AA\(1),
	datad => \inst1|AA[0]~4_combout\,
	combout => \inst1|AA[1]~7_combout\);

-- Location: FF_X17_Y37_N11
\inst1|AA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \inst1|AA[1]~7_combout\,
	clrn => \INI~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|AA\(1));

-- Location: LCCOMB_X17_Y37_N2
\inst1|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add1~1_combout\ = \inst1|AA\(2) $ (((\inst1|AA\(1)) # (\inst1|AA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|AA\(1),
	datab => \inst1|AA\(0),
	datac => \inst1|AA\(2),
	combout => \inst1|Add1~1_combout\);

-- Location: LCCOMB_X17_Y37_N22
\inst1|AA[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|AA[2]~6_combout\ = (\inst1|AA[0]~4_combout\ & (!\inst1|Add1~1_combout\ & (\inst1|E.INICIO~0_combout\))) # (!\inst1|AA[0]~4_combout\ & (((\inst1|AA\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~1_combout\,
	datab => \inst1|E.INICIO~0_combout\,
	datac => \inst1|AA\(2),
	datad => \inst1|AA[0]~4_combout\,
	combout => \inst1|AA[2]~6_combout\);

-- Location: FF_X17_Y37_N23
\inst1|AA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \inst1|AA[2]~6_combout\,
	clrn => \INI~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|AA\(2));

-- Location: LCCOMB_X17_Y37_N12
\inst1|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add1~0_combout\ = \inst1|AA\(3) $ (((\inst1|AA\(2)) # ((\inst1|AA\(0)) # (\inst1|AA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|AA\(2),
	datab => \inst1|AA\(3),
	datac => \inst1|AA\(0),
	datad => \inst1|AA\(1),
	combout => \inst1|Add1~0_combout\);

-- Location: LCCOMB_X17_Y37_N20
\inst1|AA[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|AA[3]~5_combout\ = (\inst1|AA[0]~4_combout\ & (!\inst1|Add1~0_combout\ & (\inst1|E.INICIO~0_combout\))) # (!\inst1|AA[0]~4_combout\ & (((\inst1|AA\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~0_combout\,
	datab => \inst1|E.INICIO~0_combout\,
	datac => \inst1|AA\(3),
	datad => \inst1|AA[0]~4_combout\,
	combout => \inst1|AA[3]~5_combout\);

-- Location: FF_X17_Y37_N21
\inst1|AA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \inst1|AA[3]~5_combout\,
	clrn => \INI~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|AA\(3));

-- Location: LCCOMB_X17_Y37_N16
\inst1|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Equal1~0_combout\ = (!\inst1|AA\(2) & (!\inst1|AA\(3) & (!\inst1|AA\(0) & !\inst1|AA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|AA\(2),
	datab => \inst1|AA\(3),
	datac => \inst1|AA\(0),
	datad => \inst1|AA\(1),
	combout => \inst1|Equal1~0_combout\);

-- Location: LCCOMB_X17_Y37_N6
\inst1|VB[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|VB[3]~0_combout\ = (\inst1|E.TVP_I~q\ & (\inst1|VP[3]~0_combout\ & ((\inst1|Equal1~0_combout\) # (!\inst1|E.INICIO~0_combout\)))) # (!\inst1|E.TVP_I~q\ & ((\inst1|Equal1~0_combout\) # ((!\inst1|E.INICIO~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|E.TVP_I~q\,
	datab => \inst1|Equal1~0_combout\,
	datac => \inst1|E.INICIO~0_combout\,
	datad => \inst1|VP[3]~0_combout\,
	combout => \inst1|VB[3]~0_combout\);

-- Location: LCCOMB_X17_Y37_N26
\inst1|E.TVB_I~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|E.TVB_I~0_combout\ = (\inst1|E.TVA_I~q\) # ((\inst1|E.TAB~q\ & (!\inst1|Equal3~0_combout\)) # (!\inst1|E.TAB~q\ & ((!\inst1|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|E.TAB~q\,
	datab => \inst1|Equal3~0_combout\,
	datac => \inst1|E.TVA_I~q\,
	datad => \inst1|Equal2~0_combout\,
	combout => \inst1|E.TVB_I~0_combout\);

-- Location: LCCOMB_X18_Y37_N4
\inst1|E.TVB_I~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|E.TVB_I~1_combout\ = (!\SF~input_o\ & ((\inst1|E.TVA_I~q\ & (!\inst1|Equal0~0_combout\)) # (!\inst1|E.TVA_I~q\ & ((!\inst1|WideOr0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|E.TVA_I~q\,
	datab => \SF~input_o\,
	datac => \inst1|Equal0~0_combout\,
	datad => \inst1|WideOr0~0_combout\,
	combout => \inst1|E.TVB_I~1_combout\);

-- Location: LCCOMB_X17_Y37_N0
\inst1|E.TVB_I~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|E.TVB_I~2_combout\ = (\inst1|VB[3]~0_combout\ & (\CK_EN~input_o\ & ((!\inst1|E.TVB_I~1_combout\) # (!\inst1|E.TVB_I~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|VB[3]~0_combout\,
	datab => \CK_EN~input_o\,
	datac => \inst1|E.TVB_I~0_combout\,
	datad => \inst1|E.TVB_I~1_combout\,
	combout => \inst1|E.TVB_I~2_combout\);

-- Location: FF_X17_Y37_N25
\inst1|E.TVB_I\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \inst1|E.TVB_I~3_combout\,
	clrn => \INI~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst1|E.TVB_I~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|E.TVB_I~q\);

-- Location: LCCOMB_X18_Y37_N30
\inst1|E.INICIO~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|E.INICIO~4_combout\ = (\inst1|E.TVA_I~q\ & (((\inst1|E.TVB_I~q\ & !\inst1|Equal2~0_combout\)) # (!\inst1|Equal0~0_combout\))) # (!\inst1|E.TVA_I~q\ & (\inst1|E.TVB_I~q\ & ((!\inst1|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|E.TVA_I~q\,
	datab => \inst1|E.TVB_I~q\,
	datac => \inst1|Equal0~0_combout\,
	datad => \inst1|Equal2~0_combout\,
	combout => \inst1|E.INICIO~4_combout\);

-- Location: LCCOMB_X19_Y37_N14
\inst1|E.INICIO~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|E.INICIO~1_combout\ = (\inst1|E.TVP_I~q\) # ((!\SF~input_o\ & ((\inst1|E.TAA_I~q\) # (\inst1|E.TAB~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SF~input_o\,
	datab => \inst1|E.TAA_I~q\,
	datac => \inst1|E.TVP_I~q\,
	datad => \inst1|E.TAB~q\,
	combout => \inst1|E.INICIO~1_combout\);

-- Location: LCCOMB_X19_Y37_N28
\inst1|E.INICIO~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|E.INICIO~2_combout\ = (!\inst1|E.TAA_I~q\ & ((\inst1|E.TVP_I~q\ & ((\inst1|VP[3]~0_combout\))) # (!\inst1|E.TVP_I~q\ & (\inst1|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|E.TAA_I~q\,
	datab => \inst1|Equal3~0_combout\,
	datac => \inst1|E.TVP_I~q\,
	datad => \inst1|VP[3]~0_combout\,
	combout => \inst1|E.INICIO~2_combout\);

-- Location: LCCOMB_X19_Y37_N18
\inst1|E.INICIO~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|E.INICIO~3_combout\ = (\inst1|E.INICIO~1_combout\ & (!\inst1|E.INICIO~2_combout\ & ((!\inst1|E.TAA_I~q\) # (!\inst1|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal1~0_combout\,
	datab => \inst1|E.TAA_I~q\,
	datac => \inst1|E.INICIO~1_combout\,
	datad => \inst1|E.INICIO~2_combout\,
	combout => \inst1|E.INICIO~3_combout\);

-- Location: LCCOMB_X18_Y37_N16
\inst1|E.INICIO~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|E.INICIO~5_combout\ = (\CK_EN~input_o\ & (!\inst1|E.INICIO~3_combout\ & ((\SF~input_o\) # (!\inst1|E.INICIO~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CK_EN~input_o\,
	datab => \SF~input_o\,
	datac => \inst1|E.INICIO~4_combout\,
	datad => \inst1|E.INICIO~3_combout\,
	combout => \inst1|E.INICIO~5_combout\);

-- Location: FF_X18_Y37_N29
\inst1|E.INICIO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \inst1|E.INICIO~feeder_combout\,
	clrn => \INI~inputclkctrl_outclk\,
	ena => \inst1|E.INICIO~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|E.INICIO~q\);

-- Location: LCCOMB_X20_Y37_N12
\inst1|E.TVA_I~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|E.TVA_I~5_combout\ = (\inst1|E.TAB~q\ & ((!\SF~input_o\))) # (!\inst1|E.TAB~q\ & (!\inst1|E.INICIO~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|E.INICIO~q\,
	datac => \inst1|E.TAB~q\,
	datad => \SF~input_o\,
	combout => \inst1|E.TVA_I~5_combout\);

-- Location: FF_X20_Y37_N13
\inst1|E.TVA_I\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \inst1|E.TVA_I~5_combout\,
	clrn => \INI~inputclkctrl_outclk\,
	ena => \inst1|E.TVA_I~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|E.TVA_I~q\);

-- Location: LCCOMB_X20_Y37_N4
\inst1|VA[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|VA[3]~0_combout\ = (!\SF~input_o\ & \inst1|E.TVA_I~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SF~input_o\,
	datad => \inst1|E.TVA_I~q\,
	combout => \inst1|VA[3]~0_combout\);

-- Location: FF_X19_Y37_N13
\inst1|E.TAA_I\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \inst1|VA[3]~0_combout\,
	clrn => \INI~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst1|E.INICIO~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|E.TAA_I~q\);

-- Location: LCCOMB_X17_Y37_N4
\inst1|E.TVP_I~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|E.TVP_I~0_combout\ = (!\SF~input_o\ & (\inst1|E.TAA_I~q\ & \inst|BP~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SF~input_o\,
	datab => \inst1|E.TAA_I~q\,
	datac => \inst|BP~combout\,
	combout => \inst1|E.TVP_I~0_combout\);

-- Location: FF_X17_Y37_N5
\inst1|E.TVP_I\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \inst1|E.TVP_I~0_combout\,
	clrn => \INI~inputclkctrl_outclk\,
	ena => \inst1|E.TVB_I~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|E.TVP_I~q\);

-- Location: LCCOMB_X17_Y37_N14
\inst1|BPR\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|BPR~combout\ = (\inst1|E.TVP_I~q\) # (!\inst1|E.INICIO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|E.TVP_I~q\,
	datad => \inst1|E.INICIO~q\,
	combout => \inst1|BPR~combout\);

-- Location: LCCOMB_X20_Y37_N6
\inst1|WideOr0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|WideOr0~combout\ = (\inst1|E.TAB~q\) # ((\inst1|E.TVB_I~q\) # (!\inst1|E.INICIO~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|E.TAB~q\,
	datac => \inst1|E.TVB_I~q\,
	datad => \inst1|E.INICIO~q\,
	combout => \inst1|WideOr0~combout\);

-- Location: LCCOMB_X22_Y37_N4
\inst1|WideOr1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|WideOr1~combout\ = (\inst1|E.TVP_I~q\) # ((\inst1|E.FALHA~q\) # (\inst1|E.TAA_I~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|E.TVP_I~q\,
	datac => \inst1|E.FALHA~q\,
	datad => \inst1|E.TAA_I~q\,
	combout => \inst1|WideOr1~combout\);

-- Location: LCCOMB_X20_Y37_N10
\inst1|WideOr2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|WideOr2~combout\ = (\inst1|E.TAB~q\) # ((\inst1|E.TVB_I~q\) # (\inst1|E.FALHA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|E.TAB~q\,
	datac => \inst1|E.TVB_I~q\,
	datad => \inst1|E.FALHA~q\,
	combout => \inst1|WideOr2~combout\);

-- Location: LCCOMB_X20_Y37_N24
\inst1|LD[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|LD\(1) = (\inst1|E.TAB~q\) # (\inst1|E.FALHA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|E.TAB~q\,
	datad => \inst1|E.FALHA~q\,
	combout => \inst1|LD\(1));

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_BPR <= \BPR~output_o\;

ww_BP <= \BP~output_o\;

ww_VDP <= \VDP~output_o\;

ww_LD(5) <= \LD[5]~output_o\;

ww_LD(4) <= \LD[4]~output_o\;

ww_LD(3) <= \LD[3]~output_o\;

ww_LD(2) <= \LD[2]~output_o\;

ww_LD(1) <= \LD[1]~output_o\;

ww_LD(0) <= \LD[0]~output_o\;

ww_TVA(3) <= \TVA[3]~output_o\;

ww_TVA(2) <= \TVA[2]~output_o\;

ww_TVA(1) <= \TVA[1]~output_o\;

ww_TVA(0) <= \TVA[0]~output_o\;

ww_TVB(3) <= \TVB[3]~output_o\;

ww_TVB(2) <= \TVB[2]~output_o\;

ww_TVB(1) <= \TVB[1]~output_o\;

ww_TVB(0) <= \TVB[0]~output_o\;

ww_TVP(3) <= \TVP[3]~output_o\;

ww_TVP(2) <= \TVP[2]~output_o\;

ww_TVP(1) <= \TVP[1]~output_o\;

ww_TVP(0) <= \TVP[0]~output_o\;
END structure;


