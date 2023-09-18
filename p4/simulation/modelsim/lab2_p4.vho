-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "09/15/2023 17:33:14"

-- 
-- Device: Altera 5CEBA2F17A7 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Top_Level IS
    PORT (
	adder_inputs1 : IN std_logic_vector(7 DOWNTO 0);
	adder_inputs2 : IN std_logic_vector(7 DOWNTO 0);
	decoder_outputs1 : BUFFER std_logic_vector(6 DOWNTO 0);
	decoder_outputs2 : BUFFER std_logic_vector(6 DOWNTO 0);
	carry_in : IN std_logic;
	carry_out : BUFFER std_logic
	);
END Top_Level;

-- Design Ports Information
-- decoder_outputs1[0]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_outputs1[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_outputs1[2]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_outputs1[3]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_outputs1[4]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_outputs1[5]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_outputs1[6]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_outputs2[0]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_outputs2[1]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_outputs2[2]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_outputs2[3]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_outputs2[4]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_outputs2[5]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoder_outputs2[6]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carry_out	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_inputs1[3]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_inputs2[3]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_inputs1[2]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_inputs2[2]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_inputs1[1]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_inputs2[1]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_inputs1[0]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carry_in	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_inputs2[0]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_inputs1[6]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_inputs2[6]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_inputs1[5]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_inputs2[5]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_inputs1[4]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_inputs2[4]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_inputs1[7]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_inputs2[7]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Top_Level IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_adder_inputs1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_adder_inputs2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_decoder_outputs1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_decoder_outputs2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_carry_in : std_logic;
SIGNAL ww_carry_out : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \adder_inputs2[1]~input_o\ : std_logic;
SIGNAL \adder_inputs1[0]~input_o\ : std_logic;
SIGNAL \adder_inputs1[1]~input_o\ : std_logic;
SIGNAL \carry_in~input_o\ : std_logic;
SIGNAL \adder_inputs2[0]~input_o\ : std_logic;
SIGNAL \adder|adder0|fa1|sum~combout\ : std_logic;
SIGNAL \adder_inputs2[2]~input_o\ : std_logic;
SIGNAL \adder|adder0|fa1|carry_out~0_combout\ : std_logic;
SIGNAL \adder_inputs1[2]~input_o\ : std_logic;
SIGNAL \adder|adder0|fa2|sum~combout\ : std_logic;
SIGNAL \adder_inputs1[3]~input_o\ : std_logic;
SIGNAL \adder_inputs2[3]~input_o\ : std_logic;
SIGNAL \adder|adder0|fa3|sum~combout\ : std_logic;
SIGNAL \adder|adder0|fa0|sum~combout\ : std_logic;
SIGNAL \decoder0|outputs[0]~0_combout\ : std_logic;
SIGNAL \decoder0|outputs[1]~1_combout\ : std_logic;
SIGNAL \decoder0|outputs[2]~2_combout\ : std_logic;
SIGNAL \decoder0|outputs[3]~3_combout\ : std_logic;
SIGNAL \decoder0|outputs[4]~4_combout\ : std_logic;
SIGNAL \decoder0|outputs[5]~5_combout\ : std_logic;
SIGNAL \decoder0|outputs[6]~6_combout\ : std_logic;
SIGNAL \adder_inputs2[4]~input_o\ : std_logic;
SIGNAL \adder|adder0|fa3|carry_out~0_combout\ : std_logic;
SIGNAL \adder_inputs2[5]~input_o\ : std_logic;
SIGNAL \adder_inputs2[6]~input_o\ : std_logic;
SIGNAL \adder_inputs1[6]~input_o\ : std_logic;
SIGNAL \adder|adder1|fa2|sum~0_combout\ : std_logic;
SIGNAL \adder_inputs1[5]~input_o\ : std_logic;
SIGNAL \adder_inputs1[4]~input_o\ : std_logic;
SIGNAL \adder|adder1|fa2|sum~combout\ : std_logic;
SIGNAL \adder|adder1|fa0|sum~0_combout\ : std_logic;
SIGNAL \adder|adder1|fa0|sum~combout\ : std_logic;
SIGNAL \adder|adder1|fa1|sum~combout\ : std_logic;
SIGNAL \adder|adder1|fa1|carry_out~0_combout\ : std_logic;
SIGNAL \adder_inputs1[7]~input_o\ : std_logic;
SIGNAL \adder_inputs2[7]~input_o\ : std_logic;
SIGNAL \adder|adder1|fa3|sum~0_combout\ : std_logic;
SIGNAL \adder|adder1|fa3|sum~combout\ : std_logic;
SIGNAL \decoder1|outputs[0]~0_combout\ : std_logic;
SIGNAL \decoder1|outputs[1]~1_combout\ : std_logic;
SIGNAL \decoder1|outputs[2]~2_combout\ : std_logic;
SIGNAL \decoder1|outputs[3]~3_combout\ : std_logic;
SIGNAL \decoder1|outputs[4]~4_combout\ : std_logic;
SIGNAL \decoder1|outputs[5]~5_combout\ : std_logic;
SIGNAL \decoder1|outputs[6]~6_combout\ : std_logic;
SIGNAL \adder|adder1|fa3|carry_out~0_combout\ : std_logic;
SIGNAL \ALT_INV_adder_inputs2[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_adder_inputs1[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_adder_inputs2[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_adder_inputs1[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_adder_inputs2[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_adder_inputs1[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_adder_inputs2[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_adder_inputs1[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_adder_inputs2[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_carry_in~input_o\ : std_logic;
SIGNAL \ALT_INV_adder_inputs1[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_adder_inputs2[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_adder_inputs1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_adder_inputs2[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_adder_inputs1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_adder_inputs2[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_adder_inputs1[3]~input_o\ : std_logic;
SIGNAL \decoder1|ALT_INV_outputs[6]~6_combout\ : std_logic;
SIGNAL \decoder1|ALT_INV_outputs[5]~5_combout\ : std_logic;
SIGNAL \decoder1|ALT_INV_outputs[4]~4_combout\ : std_logic;
SIGNAL \decoder1|ALT_INV_outputs[1]~1_combout\ : std_logic;
SIGNAL \decoder1|ALT_INV_outputs[0]~0_combout\ : std_logic;
SIGNAL \adder|adder1|fa0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \adder|adder1|fa0|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \adder|adder1|fa1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \adder|adder1|fa2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \adder|adder1|fa2|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \adder|adder1|fa3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \adder|adder1|fa3|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \adder|adder1|fa1|ALT_INV_carry_out~0_combout\ : std_logic;
SIGNAL \adder|adder0|fa3|ALT_INV_carry_out~0_combout\ : std_logic;
SIGNAL \decoder0|ALT_INV_outputs[6]~6_combout\ : std_logic;
SIGNAL \decoder0|ALT_INV_outputs[5]~5_combout\ : std_logic;
SIGNAL \decoder0|ALT_INV_outputs[4]~4_combout\ : std_logic;
SIGNAL \decoder0|ALT_INV_outputs[1]~1_combout\ : std_logic;
SIGNAL \decoder0|ALT_INV_outputs[0]~0_combout\ : std_logic;
SIGNAL \adder|adder0|fa0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \adder|adder0|fa1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \adder|adder0|fa2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \adder|adder0|fa3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \adder|adder0|fa1|ALT_INV_carry_out~0_combout\ : std_logic;

BEGIN

ww_adder_inputs1 <= adder_inputs1;
ww_adder_inputs2 <= adder_inputs2;
decoder_outputs1 <= ww_decoder_outputs1;
decoder_outputs2 <= ww_decoder_outputs2;
ww_carry_in <= carry_in;
carry_out <= ww_carry_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_adder_inputs2[7]~input_o\ <= NOT \adder_inputs2[7]~input_o\;
\ALT_INV_adder_inputs1[7]~input_o\ <= NOT \adder_inputs1[7]~input_o\;
\ALT_INV_adder_inputs2[4]~input_o\ <= NOT \adder_inputs2[4]~input_o\;
\ALT_INV_adder_inputs1[4]~input_o\ <= NOT \adder_inputs1[4]~input_o\;
\ALT_INV_adder_inputs2[5]~input_o\ <= NOT \adder_inputs2[5]~input_o\;
\ALT_INV_adder_inputs1[5]~input_o\ <= NOT \adder_inputs1[5]~input_o\;
\ALT_INV_adder_inputs2[6]~input_o\ <= NOT \adder_inputs2[6]~input_o\;
\ALT_INV_adder_inputs1[6]~input_o\ <= NOT \adder_inputs1[6]~input_o\;
\ALT_INV_adder_inputs2[0]~input_o\ <= NOT \adder_inputs2[0]~input_o\;
\ALT_INV_carry_in~input_o\ <= NOT \carry_in~input_o\;
\ALT_INV_adder_inputs1[0]~input_o\ <= NOT \adder_inputs1[0]~input_o\;
\ALT_INV_adder_inputs2[1]~input_o\ <= NOT \adder_inputs2[1]~input_o\;
\ALT_INV_adder_inputs1[1]~input_o\ <= NOT \adder_inputs1[1]~input_o\;
\ALT_INV_adder_inputs2[2]~input_o\ <= NOT \adder_inputs2[2]~input_o\;
\ALT_INV_adder_inputs1[2]~input_o\ <= NOT \adder_inputs1[2]~input_o\;
\ALT_INV_adder_inputs2[3]~input_o\ <= NOT \adder_inputs2[3]~input_o\;
\ALT_INV_adder_inputs1[3]~input_o\ <= NOT \adder_inputs1[3]~input_o\;
\decoder1|ALT_INV_outputs[6]~6_combout\ <= NOT \decoder1|outputs[6]~6_combout\;
\decoder1|ALT_INV_outputs[5]~5_combout\ <= NOT \decoder1|outputs[5]~5_combout\;
\decoder1|ALT_INV_outputs[4]~4_combout\ <= NOT \decoder1|outputs[4]~4_combout\;
\decoder1|ALT_INV_outputs[1]~1_combout\ <= NOT \decoder1|outputs[1]~1_combout\;
\decoder1|ALT_INV_outputs[0]~0_combout\ <= NOT \decoder1|outputs[0]~0_combout\;
\adder|adder1|fa0|ALT_INV_sum~combout\ <= NOT \adder|adder1|fa0|sum~combout\;
\adder|adder1|fa0|ALT_INV_sum~0_combout\ <= NOT \adder|adder1|fa0|sum~0_combout\;
\adder|adder1|fa1|ALT_INV_sum~combout\ <= NOT \adder|adder1|fa1|sum~combout\;
\adder|adder1|fa2|ALT_INV_sum~combout\ <= NOT \adder|adder1|fa2|sum~combout\;
\adder|adder1|fa2|ALT_INV_sum~0_combout\ <= NOT \adder|adder1|fa2|sum~0_combout\;
\adder|adder1|fa3|ALT_INV_sum~combout\ <= NOT \adder|adder1|fa3|sum~combout\;
\adder|adder1|fa3|ALT_INV_sum~0_combout\ <= NOT \adder|adder1|fa3|sum~0_combout\;
\adder|adder1|fa1|ALT_INV_carry_out~0_combout\ <= NOT \adder|adder1|fa1|carry_out~0_combout\;
\adder|adder0|fa3|ALT_INV_carry_out~0_combout\ <= NOT \adder|adder0|fa3|carry_out~0_combout\;
\decoder0|ALT_INV_outputs[6]~6_combout\ <= NOT \decoder0|outputs[6]~6_combout\;
\decoder0|ALT_INV_outputs[5]~5_combout\ <= NOT \decoder0|outputs[5]~5_combout\;
\decoder0|ALT_INV_outputs[4]~4_combout\ <= NOT \decoder0|outputs[4]~4_combout\;
\decoder0|ALT_INV_outputs[1]~1_combout\ <= NOT \decoder0|outputs[1]~1_combout\;
\decoder0|ALT_INV_outputs[0]~0_combout\ <= NOT \decoder0|outputs[0]~0_combout\;
\adder|adder0|fa0|ALT_INV_sum~combout\ <= NOT \adder|adder0|fa0|sum~combout\;
\adder|adder0|fa1|ALT_INV_sum~combout\ <= NOT \adder|adder0|fa1|sum~combout\;
\adder|adder0|fa2|ALT_INV_sum~combout\ <= NOT \adder|adder0|fa2|sum~combout\;
\adder|adder0|fa3|ALT_INV_sum~combout\ <= NOT \adder|adder0|fa3|sum~combout\;
\adder|adder0|fa1|ALT_INV_carry_out~0_combout\ <= NOT \adder|adder0|fa1|carry_out~0_combout\;

-- Location: IOOBUF_X14_Y0_N36
\decoder_outputs1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder0|ALT_INV_outputs[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_decoder_outputs1(0));

-- Location: IOOBUF_X11_Y0_N19
\decoder_outputs1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder0|ALT_INV_outputs[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_decoder_outputs1(1));

-- Location: IOOBUF_X11_Y0_N53
\decoder_outputs1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder0|outputs[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_decoder_outputs1(2));

-- Location: IOOBUF_X14_Y0_N2
\decoder_outputs1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder0|outputs[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_decoder_outputs1(3));

-- Location: IOOBUF_X14_Y0_N19
\decoder_outputs1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder0|ALT_INV_outputs[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_decoder_outputs1(4));

-- Location: IOOBUF_X10_Y0_N76
\decoder_outputs1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder0|ALT_INV_outputs[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_decoder_outputs1(5));

-- Location: IOOBUF_X10_Y0_N59
\decoder_outputs1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder0|ALT_INV_outputs[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_decoder_outputs1(6));

-- Location: IOOBUF_X29_Y0_N36
\decoder_outputs2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|ALT_INV_outputs[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_decoder_outputs2(0));

-- Location: IOOBUF_X24_Y0_N2
\decoder_outputs2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|ALT_INV_outputs[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_decoder_outputs2(1));

-- Location: IOOBUF_X25_Y0_N19
\decoder_outputs2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|outputs[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_decoder_outputs2(2));

-- Location: IOOBUF_X25_Y0_N53
\decoder_outputs2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|outputs[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_decoder_outputs2(3));

-- Location: IOOBUF_X23_Y0_N59
\decoder_outputs2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|ALT_INV_outputs[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_decoder_outputs2(4));

-- Location: IOOBUF_X25_Y0_N36
\decoder_outputs2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|ALT_INV_outputs[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_decoder_outputs2(5));

-- Location: IOOBUF_X29_Y0_N19
\decoder_outputs2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|ALT_INV_outputs[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_decoder_outputs2(6));

-- Location: IOOBUF_X25_Y0_N2
\carry_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \adder|adder1|fa3|carry_out~0_combout\,
	devoe => ww_devoe,
	o => ww_carry_out);

-- Location: IOIBUF_X10_Y0_N92
\adder_inputs2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adder_inputs2(1),
	o => \adder_inputs2[1]~input_o\);

-- Location: IOIBUF_X12_Y0_N35
\adder_inputs1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adder_inputs1(0),
	o => \adder_inputs1[0]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\adder_inputs1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adder_inputs1(1),
	o => \adder_inputs1[1]~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\carry_in~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_carry_in,
	o => \carry_in~input_o\);

-- Location: IOIBUF_X14_Y0_N52
\adder_inputs2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adder_inputs2(0),
	o => \adder_inputs2[0]~input_o\);

-- Location: LABCELL_X12_Y1_N51
\adder|adder0|fa1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|adder0|fa1|sum~combout\ = ( \carry_in~input_o\ & ( \adder_inputs2[0]~input_o\ & ( !\adder_inputs2[1]~input_o\ $ (\adder_inputs1[1]~input_o\) ) ) ) # ( !\carry_in~input_o\ & ( \adder_inputs2[0]~input_o\ & ( !\adder_inputs2[1]~input_o\ $ 
-- (!\adder_inputs1[0]~input_o\ $ (\adder_inputs1[1]~input_o\)) ) ) ) # ( \carry_in~input_o\ & ( !\adder_inputs2[0]~input_o\ & ( !\adder_inputs2[1]~input_o\ $ (!\adder_inputs1[0]~input_o\ $ (\adder_inputs1[1]~input_o\)) ) ) ) # ( !\carry_in~input_o\ & ( 
-- !\adder_inputs2[0]~input_o\ & ( !\adder_inputs2[1]~input_o\ $ (!\adder_inputs1[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010011010010110100101101001011010011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adder_inputs2[1]~input_o\,
	datab => \ALT_INV_adder_inputs1[0]~input_o\,
	datac => \ALT_INV_adder_inputs1[1]~input_o\,
	datae => \ALT_INV_carry_in~input_o\,
	dataf => \ALT_INV_adder_inputs2[0]~input_o\,
	combout => \adder|adder0|fa1|sum~combout\);

-- Location: IOIBUF_X11_Y0_N1
\adder_inputs2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adder_inputs2(2),
	o => \adder_inputs2[2]~input_o\);

-- Location: LABCELL_X12_Y1_N30
\adder|adder0|fa1|carry_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|adder0|fa1|carry_out~0_combout\ = ( \carry_in~input_o\ & ( \adder_inputs2[0]~input_o\ & ( (\adder_inputs2[1]~input_o\) # (\adder_inputs1[1]~input_o\) ) ) ) # ( !\carry_in~input_o\ & ( \adder_inputs2[0]~input_o\ & ( (!\adder_inputs1[1]~input_o\ & 
-- (\adder_inputs2[1]~input_o\ & \adder_inputs1[0]~input_o\)) # (\adder_inputs1[1]~input_o\ & ((\adder_inputs1[0]~input_o\) # (\adder_inputs2[1]~input_o\))) ) ) ) # ( \carry_in~input_o\ & ( !\adder_inputs2[0]~input_o\ & ( (!\adder_inputs1[1]~input_o\ & 
-- (\adder_inputs2[1]~input_o\ & \adder_inputs1[0]~input_o\)) # (\adder_inputs1[1]~input_o\ & ((\adder_inputs1[0]~input_o\) # (\adder_inputs2[1]~input_o\))) ) ) ) # ( !\carry_in~input_o\ & ( !\adder_inputs2[0]~input_o\ & ( (\adder_inputs1[1]~input_o\ & 
-- \adder_inputs2[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110011111100000011001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_adder_inputs1[1]~input_o\,
	datac => \ALT_INV_adder_inputs2[1]~input_o\,
	datad => \ALT_INV_adder_inputs1[0]~input_o\,
	datae => \ALT_INV_carry_in~input_o\,
	dataf => \ALT_INV_adder_inputs2[0]~input_o\,
	combout => \adder|adder0|fa1|carry_out~0_combout\);

-- Location: IOIBUF_X12_Y0_N52
\adder_inputs1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adder_inputs1(2),
	o => \adder_inputs1[2]~input_o\);

-- Location: LABCELL_X12_Y1_N15
\adder|adder0|fa2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|adder0|fa2|sum~combout\ = ( \adder_inputs1[2]~input_o\ & ( !\adder_inputs2[2]~input_o\ $ (\adder|adder0|fa1|carry_out~0_combout\) ) ) # ( !\adder_inputs1[2]~input_o\ & ( !\adder_inputs2[2]~input_o\ $ (!\adder|adder0|fa1|carry_out~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adder_inputs2[2]~input_o\,
	datac => \adder|adder0|fa1|ALT_INV_carry_out~0_combout\,
	dataf => \ALT_INV_adder_inputs1[2]~input_o\,
	combout => \adder|adder0|fa2|sum~combout\);

-- Location: IOIBUF_X12_Y0_N1
\adder_inputs1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adder_inputs1(3),
	o => \adder_inputs1[3]~input_o\);

-- Location: IOIBUF_X10_Y0_N41
\adder_inputs2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adder_inputs2(3),
	o => \adder_inputs2[3]~input_o\);

-- Location: LABCELL_X12_Y1_N6
\adder|adder0|fa3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|adder0|fa3|sum~combout\ = ( \adder_inputs1[2]~input_o\ & ( !\adder_inputs1[3]~input_o\ $ (!\adder_inputs2[3]~input_o\ $ (((\adder|adder0|fa1|carry_out~0_combout\) # (\adder_inputs2[2]~input_o\)))) ) ) # ( !\adder_inputs1[2]~input_o\ & ( 
-- !\adder_inputs1[3]~input_o\ $ (!\adder_inputs2[3]~input_o\ $ (((\adder_inputs2[2]~input_o\ & \adder|adder0|fa1|carry_out~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101001011001100110100101101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adder_inputs1[3]~input_o\,
	datab => \ALT_INV_adder_inputs2[3]~input_o\,
	datac => \ALT_INV_adder_inputs2[2]~input_o\,
	datad => \adder|adder0|fa1|ALT_INV_carry_out~0_combout\,
	dataf => \ALT_INV_adder_inputs1[2]~input_o\,
	combout => \adder|adder0|fa3|sum~combout\);

-- Location: LABCELL_X12_Y1_N12
\adder|adder0|fa0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|adder0|fa0|sum~combout\ = ( \adder_inputs1[0]~input_o\ & ( !\carry_in~input_o\ $ (\adder_inputs2[0]~input_o\) ) ) # ( !\adder_inputs1[0]~input_o\ & ( !\carry_in~input_o\ $ (!\adder_inputs2[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_carry_in~input_o\,
	datac => \ALT_INV_adder_inputs2[0]~input_o\,
	dataf => \ALT_INV_adder_inputs1[0]~input_o\,
	combout => \adder|adder0|fa0|sum~combout\);

-- Location: LABCELL_X12_Y1_N24
\decoder0|outputs[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder0|outputs[0]~0_combout\ = ( \adder|adder0|fa0|sum~combout\ & ( (!\adder|adder0|fa1|sum~combout\ $ (!\adder|adder0|fa2|sum~combout\)) # (\adder|adder0|fa3|sum~combout\) ) ) # ( !\adder|adder0|fa0|sum~combout\ & ( (!\adder|adder0|fa2|sum~combout\ $ 
-- (!\adder|adder0|fa3|sum~combout\)) # (\adder|adder0|fa1|sum~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111110101111101011111010111110101101111011011110110111101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|adder0|fa1|ALT_INV_sum~combout\,
	datab => \adder|adder0|fa2|ALT_INV_sum~combout\,
	datac => \adder|adder0|fa3|ALT_INV_sum~combout\,
	dataf => \adder|adder0|fa0|ALT_INV_sum~combout\,
	combout => \decoder0|outputs[0]~0_combout\);

-- Location: LABCELL_X12_Y1_N27
\decoder0|outputs[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder0|outputs[1]~1_combout\ = ( \adder|adder0|fa0|sum~combout\ & ( !\adder|adder0|fa3|sum~combout\ $ (((!\adder|adder0|fa2|sum~combout\) # (\adder|adder0|fa1|sum~combout\))) ) ) # ( !\adder|adder0|fa0|sum~combout\ & ( (!\adder|adder0|fa1|sum~combout\) 
-- # ((\adder|adder0|fa3|sum~combout\) # (\adder|adder0|fa2|sum~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111111111111101011111111111100001010111101010000101011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|adder0|fa1|ALT_INV_sum~combout\,
	datac => \adder|adder0|fa2|ALT_INV_sum~combout\,
	datad => \adder|adder0|fa3|ALT_INV_sum~combout\,
	dataf => \adder|adder0|fa0|ALT_INV_sum~combout\,
	combout => \decoder0|outputs[1]~1_combout\);

-- Location: LABCELL_X12_Y1_N0
\decoder0|outputs[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder0|outputs[2]~2_combout\ = ( \adder|adder0|fa0|sum~combout\ & ( (!\adder|adder0|fa3|sum~combout\) # ((!\adder|adder0|fa1|sum~combout\ & !\adder|adder0|fa2|sum~combout\)) ) ) # ( !\adder|adder0|fa0|sum~combout\ & ( (!\adder|adder0|fa1|sum~combout\ & 
-- (\adder|adder0|fa2|sum~combout\ & !\adder|adder0|fa3|sum~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000011111000111110001111100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|adder0|fa1|ALT_INV_sum~combout\,
	datab => \adder|adder0|fa2|ALT_INV_sum~combout\,
	datac => \adder|adder0|fa3|ALT_INV_sum~combout\,
	dataf => \adder|adder0|fa0|ALT_INV_sum~combout\,
	combout => \decoder0|outputs[2]~2_combout\);

-- Location: LABCELL_X12_Y1_N3
\decoder0|outputs[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder0|outputs[3]~3_combout\ = ( \adder|adder0|fa3|sum~combout\ & ( (!\adder|adder0|fa1|sum~combout\ & (!\adder|adder0|fa2|sum~combout\ & \adder|adder0|fa0|sum~combout\)) # (\adder|adder0|fa1|sum~combout\ & (!\adder|adder0|fa2|sum~combout\ $ 
-- (\adder|adder0|fa0|sum~combout\))) ) ) # ( !\adder|adder0|fa3|sum~combout\ & ( (!\adder|adder0|fa1|sum~combout\ & (!\adder|adder0|fa2|sum~combout\ $ (!\adder|adder0|fa0|sum~combout\))) # (\adder|adder0|fa1|sum~combout\ & (\adder|adder0|fa2|sum~combout\ & 
-- \adder|adder0|fa0|sum~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100100101001001010010010100101001001010010010100100101001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|adder0|fa1|ALT_INV_sum~combout\,
	datab => \adder|adder0|fa2|ALT_INV_sum~combout\,
	datac => \adder|adder0|fa0|ALT_INV_sum~combout\,
	dataf => \adder|adder0|fa3|ALT_INV_sum~combout\,
	combout => \decoder0|outputs[3]~3_combout\);

-- Location: LABCELL_X12_Y1_N36
\decoder0|outputs[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder0|outputs[4]~4_combout\ = ( \adder|adder0|fa0|sum~combout\ & ( (!\adder|adder0|fa1|sum~combout\) # ((!\adder|adder0|fa2|sum~combout\) # (!\adder|adder0|fa3|sum~combout\)) ) ) # ( !\adder|adder0|fa0|sum~combout\ & ( (!\adder|adder0|fa2|sum~combout\ 
-- & ((!\adder|adder0|fa1|sum~combout\) # (\adder|adder0|fa3|sum~combout\))) # (\adder|adder0|fa2|sum~combout\ & ((!\adder|adder0|fa3|sum~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011110010111100101111001011110011111110111111101111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|adder0|fa1|ALT_INV_sum~combout\,
	datab => \adder|adder0|fa2|ALT_INV_sum~combout\,
	datac => \adder|adder0|fa3|ALT_INV_sum~combout\,
	dataf => \adder|adder0|fa0|ALT_INV_sum~combout\,
	combout => \decoder0|outputs[4]~4_combout\);

-- Location: LABCELL_X12_Y1_N39
\decoder0|outputs[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder0|outputs[5]~5_combout\ = ( \adder|adder0|fa3|sum~combout\ & ( (!\adder|adder0|fa0|sum~combout\ & ((!\adder|adder0|fa2|sum~combout\))) # (\adder|adder0|fa0|sum~combout\ & (!\adder|adder0|fa1|sum~combout\)) ) ) # ( !\adder|adder0|fa3|sum~combout\ & 
-- ( (!\adder|adder0|fa2|sum~combout\) # (!\adder|adder0|fa1|sum~combout\ $ (\adder|adder0|fa0|sum~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110111101101111011011110110111001010110010101100101011001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|adder0|fa1|ALT_INV_sum~combout\,
	datab => \adder|adder0|fa2|ALT_INV_sum~combout\,
	datac => \adder|adder0|fa0|ALT_INV_sum~combout\,
	dataf => \adder|adder0|fa3|ALT_INV_sum~combout\,
	combout => \decoder0|outputs[5]~5_combout\);

-- Location: LABCELL_X12_Y1_N42
\decoder0|outputs[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder0|outputs[6]~6_combout\ = ( \adder|adder0|fa3|sum~combout\ & ( (!\adder|adder0|fa0|sum~combout\) # (!\adder|adder0|fa1|sum~combout\ $ (\adder|adder0|fa2|sum~combout\)) ) ) # ( !\adder|adder0|fa3|sum~combout\ & ( (!\adder|adder0|fa0|sum~combout\ $ 
-- (\adder|adder0|fa2|sum~combout\)) # (\adder|adder0|fa1|sum~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100111111110011110011111111111100110011111111110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \adder|adder0|fa0|ALT_INV_sum~combout\,
	datac => \adder|adder0|fa1|ALT_INV_sum~combout\,
	datad => \adder|adder0|fa2|ALT_INV_sum~combout\,
	dataf => \adder|adder0|fa3|ALT_INV_sum~combout\,
	combout => \decoder0|outputs[6]~6_combout\);

-- Location: IOIBUF_X24_Y0_N18
\adder_inputs2[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adder_inputs2(4),
	o => \adder_inputs2[4]~input_o\);

-- Location: LABCELL_X12_Y1_N21
\adder|adder0|fa3|carry_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|adder0|fa3|carry_out~0_combout\ = ( \adder_inputs1[2]~input_o\ & ( (!\adder_inputs2[3]~input_o\ & (\adder_inputs1[3]~input_o\ & ((\adder|adder0|fa1|carry_out~0_combout\) # (\adder_inputs2[2]~input_o\)))) # (\adder_inputs2[3]~input_o\ & 
-- (((\adder_inputs1[3]~input_o\) # (\adder|adder0|fa1|carry_out~0_combout\)) # (\adder_inputs2[2]~input_o\))) ) ) # ( !\adder_inputs1[2]~input_o\ & ( (!\adder_inputs2[3]~input_o\ & (\adder_inputs2[2]~input_o\ & (\adder|adder0|fa1|carry_out~0_combout\ & 
-- \adder_inputs1[3]~input_o\))) # (\adder_inputs2[3]~input_o\ & (((\adder_inputs2[2]~input_o\ & \adder|adder0|fa1|carry_out~0_combout\)) # (\adder_inputs1[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000111011111110000011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adder_inputs2[2]~input_o\,
	datab => \adder|adder0|fa1|ALT_INV_carry_out~0_combout\,
	datac => \ALT_INV_adder_inputs2[3]~input_o\,
	datad => \ALT_INV_adder_inputs1[3]~input_o\,
	dataf => \ALT_INV_adder_inputs1[2]~input_o\,
	combout => \adder|adder0|fa3|carry_out~0_combout\);

-- Location: IOIBUF_X23_Y0_N92
\adder_inputs2[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adder_inputs2(5),
	o => \adder_inputs2[5]~input_o\);

-- Location: IOIBUF_X23_Y0_N41
\adder_inputs2[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adder_inputs2(6),
	o => \adder_inputs2[6]~input_o\);

-- Location: IOIBUF_X23_Y0_N75
\adder_inputs1[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adder_inputs1(6),
	o => \adder_inputs1[6]~input_o\);

-- Location: MLABCELL_X23_Y1_N6
\adder|adder1|fa2|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|adder1|fa2|sum~0_combout\ = ( \adder_inputs1[6]~input_o\ & ( !\adder_inputs2[6]~input_o\ ) ) # ( !\adder_inputs1[6]~input_o\ & ( \adder_inputs2[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_adder_inputs2[6]~input_o\,
	dataf => \ALT_INV_adder_inputs1[6]~input_o\,
	combout => \adder|adder1|fa2|sum~0_combout\);

-- Location: IOIBUF_X29_Y0_N52
\adder_inputs1[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adder_inputs1(5),
	o => \adder_inputs1[5]~input_o\);

-- Location: IOIBUF_X24_Y0_N35
\adder_inputs1[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adder_inputs1(4),
	o => \adder_inputs1[4]~input_o\);

-- Location: MLABCELL_X23_Y1_N48
\adder|adder1|fa2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|adder1|fa2|sum~combout\ = ( \adder_inputs1[5]~input_o\ & ( \adder_inputs1[4]~input_o\ & ( !\adder|adder1|fa2|sum~0_combout\ $ (((!\adder_inputs2[4]~input_o\ & (!\adder|adder0|fa3|carry_out~0_combout\ & !\adder_inputs2[5]~input_o\)))) ) ) ) # ( 
-- !\adder_inputs1[5]~input_o\ & ( \adder_inputs1[4]~input_o\ & ( !\adder|adder1|fa2|sum~0_combout\ $ (((!\adder_inputs2[5]~input_o\) # ((!\adder_inputs2[4]~input_o\ & !\adder|adder0|fa3|carry_out~0_combout\)))) ) ) ) # ( \adder_inputs1[5]~input_o\ & ( 
-- !\adder_inputs1[4]~input_o\ & ( !\adder|adder1|fa2|sum~0_combout\ $ (((!\adder_inputs2[5]~input_o\ & ((!\adder_inputs2[4]~input_o\) # (!\adder|adder0|fa3|carry_out~0_combout\))))) ) ) ) # ( !\adder_inputs1[5]~input_o\ & ( !\adder_inputs1[4]~input_o\ & ( 
-- !\adder|adder1|fa2|sum~0_combout\ $ (((!\adder_inputs2[4]~input_o\) # ((!\adder|adder0|fa3|carry_out~0_combout\) # (!\adder_inputs2[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111110000111111110000000000111111110000111111110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adder_inputs2[4]~input_o\,
	datab => \adder|adder0|fa3|ALT_INV_carry_out~0_combout\,
	datac => \ALT_INV_adder_inputs2[5]~input_o\,
	datad => \adder|adder1|fa2|ALT_INV_sum~0_combout\,
	datae => \ALT_INV_adder_inputs1[5]~input_o\,
	dataf => \ALT_INV_adder_inputs1[4]~input_o\,
	combout => \adder|adder1|fa2|sum~combout\);

-- Location: LABCELL_X21_Y1_N3
\adder|adder1|fa0|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|adder1|fa0|sum~0_combout\ = ( \adder_inputs1[4]~input_o\ & ( !\adder_inputs2[4]~input_o\ ) ) # ( !\adder_inputs1[4]~input_o\ & ( \adder_inputs2[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101001010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adder_inputs2[4]~input_o\,
	datae => \ALT_INV_adder_inputs1[4]~input_o\,
	combout => \adder|adder1|fa0|sum~0_combout\);

-- Location: LABCELL_X12_Y1_N54
\adder|adder1|fa0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|adder1|fa0|sum~combout\ = ( \adder_inputs2[2]~input_o\ & ( \adder|adder1|fa0|sum~0_combout\ & ( (!\adder_inputs1[3]~input_o\ & ((!\adder_inputs2[3]~input_o\) # ((!\adder_inputs1[2]~input_o\ & !\adder|adder0|fa1|carry_out~0_combout\)))) # 
-- (\adder_inputs1[3]~input_o\ & (!\adder_inputs2[3]~input_o\ & (!\adder_inputs1[2]~input_o\ & !\adder|adder0|fa1|carry_out~0_combout\))) ) ) ) # ( !\adder_inputs2[2]~input_o\ & ( \adder|adder1|fa0|sum~0_combout\ & ( (!\adder_inputs1[3]~input_o\ & 
-- ((!\adder_inputs2[3]~input_o\) # ((!\adder_inputs1[2]~input_o\) # (!\adder|adder0|fa1|carry_out~0_combout\)))) # (\adder_inputs1[3]~input_o\ & (!\adder_inputs2[3]~input_o\ & ((!\adder_inputs1[2]~input_o\) # (!\adder|adder0|fa1|carry_out~0_combout\)))) ) ) 
-- ) # ( \adder_inputs2[2]~input_o\ & ( !\adder|adder1|fa0|sum~0_combout\ & ( (!\adder_inputs1[3]~input_o\ & (\adder_inputs2[3]~input_o\ & ((\adder|adder0|fa1|carry_out~0_combout\) # (\adder_inputs1[2]~input_o\)))) # (\adder_inputs1[3]~input_o\ & 
-- (((\adder|adder0|fa1|carry_out~0_combout\) # (\adder_inputs1[2]~input_o\)) # (\adder_inputs2[3]~input_o\))) ) ) ) # ( !\adder_inputs2[2]~input_o\ & ( !\adder|adder1|fa0|sum~0_combout\ & ( (!\adder_inputs1[3]~input_o\ & (\adder_inputs2[3]~input_o\ & 
-- (\adder_inputs1[2]~input_o\ & \adder|adder0|fa1|carry_out~0_combout\))) # (\adder_inputs1[3]~input_o\ & (((\adder_inputs1[2]~input_o\ & \adder|adder0|fa1|carry_out~0_combout\)) # (\adder_inputs2[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000101110111011111101110111010001110100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adder_inputs1[3]~input_o\,
	datab => \ALT_INV_adder_inputs2[3]~input_o\,
	datac => \ALT_INV_adder_inputs1[2]~input_o\,
	datad => \adder|adder0|fa1|ALT_INV_carry_out~0_combout\,
	datae => \ALT_INV_adder_inputs2[2]~input_o\,
	dataf => \adder|adder1|fa0|ALT_INV_sum~0_combout\,
	combout => \adder|adder1|fa0|sum~combout\);

-- Location: MLABCELL_X23_Y1_N0
\adder|adder1|fa1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|adder1|fa1|sum~combout\ = ( \adder|adder0|fa3|carry_out~0_combout\ & ( !\adder_inputs1[5]~input_o\ $ (!\adder_inputs2[5]~input_o\ $ (((\adder_inputs2[4]~input_o\) # (\adder_inputs1[4]~input_o\)))) ) ) # ( !\adder|adder0|fa3|carry_out~0_combout\ & ( 
-- !\adder_inputs1[5]~input_o\ $ (!\adder_inputs2[5]~input_o\ $ (((\adder_inputs1[4]~input_o\ & \adder_inputs2[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110001101001001111000110100101101001110000110110100111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adder_inputs1[4]~input_o\,
	datab => \ALT_INV_adder_inputs1[5]~input_o\,
	datac => \ALT_INV_adder_inputs2[5]~input_o\,
	datad => \ALT_INV_adder_inputs2[4]~input_o\,
	dataf => \adder|adder0|fa3|ALT_INV_carry_out~0_combout\,
	combout => \adder|adder1|fa1|sum~combout\);

-- Location: MLABCELL_X23_Y1_N3
\adder|adder1|fa1|carry_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|adder1|fa1|carry_out~0_combout\ = ( \adder_inputs2[5]~input_o\ & ( ((!\adder_inputs1[4]~input_o\ & (\adder|adder0|fa3|carry_out~0_combout\ & \adder_inputs2[4]~input_o\)) # (\adder_inputs1[4]~input_o\ & ((\adder_inputs2[4]~input_o\) # 
-- (\adder|adder0|fa3|carry_out~0_combout\)))) # (\adder_inputs1[5]~input_o\) ) ) # ( !\adder_inputs2[5]~input_o\ & ( (\adder_inputs1[5]~input_o\ & ((!\adder_inputs1[4]~input_o\ & (\adder|adder0|fa3|carry_out~0_combout\ & \adder_inputs2[4]~input_o\)) # 
-- (\adder_inputs1[4]~input_o\ & ((\adder_inputs2[4]~input_o\) # (\adder|adder0|fa3|carry_out~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010011000000010001001100110111011111110011011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_adder_inputs1[4]~input_o\,
	datab => \ALT_INV_adder_inputs1[5]~input_o\,
	datac => \adder|adder0|fa3|ALT_INV_carry_out~0_combout\,
	datad => \ALT_INV_adder_inputs2[4]~input_o\,
	dataf => \ALT_INV_adder_inputs2[5]~input_o\,
	combout => \adder|adder1|fa1|carry_out~0_combout\);

-- Location: IOIBUF_X29_Y0_N1
\adder_inputs1[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adder_inputs1(7),
	o => \adder_inputs1[7]~input_o\);

-- Location: IOIBUF_X24_Y0_N52
\adder_inputs2[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adder_inputs2(7),
	o => \adder_inputs2[7]~input_o\);

-- Location: MLABCELL_X23_Y1_N9
\adder|adder1|fa3|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|adder1|fa3|sum~0_combout\ = !\adder_inputs1[7]~input_o\ $ (!\adder_inputs2[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_adder_inputs1[7]~input_o\,
	datac => \ALT_INV_adder_inputs2[7]~input_o\,
	combout => \adder|adder1|fa3|sum~0_combout\);

-- Location: MLABCELL_X23_Y1_N12
\adder|adder1|fa3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|adder1|fa3|sum~combout\ = ( \adder|adder1|fa3|sum~0_combout\ & ( (!\adder|adder1|fa1|carry_out~0_combout\ & ((!\adder_inputs1[6]~input_o\) # (!\adder_inputs2[6]~input_o\))) # (\adder|adder1|fa1|carry_out~0_combout\ & (!\adder_inputs1[6]~input_o\ & 
-- !\adder_inputs2[6]~input_o\)) ) ) # ( !\adder|adder1|fa3|sum~0_combout\ & ( (!\adder|adder1|fa1|carry_out~0_combout\ & (\adder_inputs1[6]~input_o\ & \adder_inputs2[6]~input_o\)) # (\adder|adder1|fa1|carry_out~0_combout\ & ((\adder_inputs2[6]~input_o\) # 
-- (\adder_inputs1[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011111101000111010001110100011101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|adder1|fa1|ALT_INV_carry_out~0_combout\,
	datab => \ALT_INV_adder_inputs1[6]~input_o\,
	datac => \ALT_INV_adder_inputs2[6]~input_o\,
	dataf => \adder|adder1|fa3|ALT_INV_sum~0_combout\,
	combout => \adder|adder1|fa3|sum~combout\);

-- Location: MLABCELL_X23_Y1_N54
\decoder1|outputs[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder1|outputs[0]~0_combout\ = ( \adder|adder1|fa3|sum~combout\ & ( (!\adder|adder1|fa2|sum~combout\) # ((\adder|adder1|fa1|sum~combout\) # (\adder|adder1|fa0|sum~combout\)) ) ) # ( !\adder|adder1|fa3|sum~combout\ & ( (!\adder|adder1|fa2|sum~combout\ & 
-- ((\adder|adder1|fa1|sum~combout\))) # (\adder|adder1|fa2|sum~combout\ & ((!\adder|adder1|fa0|sum~combout\) # (!\adder|adder1|fa1|sum~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111001011110010111100101111010111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|adder1|fa2|ALT_INV_sum~combout\,
	datab => \adder|adder1|fa0|ALT_INV_sum~combout\,
	datac => \adder|adder1|fa1|ALT_INV_sum~combout\,
	dataf => \adder|adder1|fa3|ALT_INV_sum~combout\,
	combout => \decoder1|outputs[0]~0_combout\);

-- Location: MLABCELL_X23_Y1_N30
\decoder1|outputs[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder1|outputs[1]~1_combout\ = ( \adder|adder1|fa1|sum~combout\ & ( \adder_inputs1[6]~input_o\ & ( (!\adder|adder1|fa0|sum~combout\ & ((!\adder|adder1|fa3|sum~0_combout\) # (!\adder|adder1|fa1|carry_out~0_combout\ $ (\adder_inputs2[6]~input_o\)))) # 
-- (\adder|adder1|fa0|sum~combout\ & (!\adder|adder1|fa3|sum~0_combout\ $ (((!\adder|adder1|fa1|carry_out~0_combout\ & !\adder_inputs2[6]~input_o\))))) ) ) ) # ( !\adder|adder1|fa1|sum~combout\ & ( \adder_inputs1[6]~input_o\ & ( 
-- (!\adder|adder1|fa0|sum~combout\) # (!\adder|adder1|fa3|sum~0_combout\ $ (((\adder|adder1|fa1|carry_out~0_combout\ & \adder_inputs2[6]~input_o\)))) ) ) ) # ( \adder|adder1|fa1|sum~combout\ & ( !\adder_inputs1[6]~input_o\ & ( 
-- (!\adder|adder1|fa1|carry_out~0_combout\ & (((!\adder|adder1|fa0|sum~combout\ & \adder_inputs2[6]~input_o\)) # (\adder|adder1|fa3|sum~0_combout\))) # (\adder|adder1|fa1|carry_out~0_combout\ & ((!\adder_inputs2[6]~input_o\ & 
-- ((!\adder|adder1|fa0|sum~combout\) # (\adder|adder1|fa3|sum~0_combout\))) # (\adder_inputs2[6]~input_o\ & ((!\adder|adder1|fa3|sum~0_combout\))))) ) ) ) # ( !\adder|adder1|fa1|sum~combout\ & ( !\adder_inputs1[6]~input_o\ & ( 
-- (!\adder|adder1|fa0|sum~combout\) # (!\adder|adder1|fa3|sum~0_combout\ $ (((!\adder|adder1|fa1|carry_out~0_combout\ & !\adder_inputs2[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111101100010011011111101011111110110011011101111110100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|adder1|fa1|ALT_INV_carry_out~0_combout\,
	datab => \adder|adder1|fa0|ALT_INV_sum~combout\,
	datac => \ALT_INV_adder_inputs2[6]~input_o\,
	datad => \adder|adder1|fa3|ALT_INV_sum~0_combout\,
	datae => \adder|adder1|fa1|ALT_INV_sum~combout\,
	dataf => \ALT_INV_adder_inputs1[6]~input_o\,
	combout => \decoder1|outputs[1]~1_combout\);

-- Location: MLABCELL_X23_Y1_N36
\decoder1|outputs[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder1|outputs[2]~2_combout\ = ( \adder|adder1|fa0|sum~combout\ & ( \adder|adder1|fa3|sum~combout\ & ( (!\adder|adder1|fa2|sum~combout\ & !\adder|adder1|fa1|sum~combout\) ) ) ) # ( \adder|adder1|fa0|sum~combout\ & ( !\adder|adder1|fa3|sum~combout\ ) ) 
-- # ( !\adder|adder1|fa0|sum~combout\ & ( !\adder|adder1|fa3|sum~combout\ & ( (\adder|adder1|fa2|sum~combout\ & !\adder|adder1|fa1|sum~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000111111111111111100000000000000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|adder1|fa2|ALT_INV_sum~combout\,
	datac => \adder|adder1|fa1|ALT_INV_sum~combout\,
	datae => \adder|adder1|fa0|ALT_INV_sum~combout\,
	dataf => \adder|adder1|fa3|ALT_INV_sum~combout\,
	combout => \decoder1|outputs[2]~2_combout\);

-- Location: MLABCELL_X23_Y1_N57
\decoder1|outputs[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder1|outputs[3]~3_combout\ = ( \adder|adder1|fa3|sum~combout\ & ( (!\adder|adder1|fa2|sum~combout\ & (!\adder|adder1|fa0|sum~combout\ $ (!\adder|adder1|fa1|sum~combout\))) # (\adder|adder1|fa2|sum~combout\ & (\adder|adder1|fa0|sum~combout\ & 
-- \adder|adder1|fa1|sum~combout\)) ) ) # ( !\adder|adder1|fa3|sum~combout\ & ( (!\adder|adder1|fa2|sum~combout\ & (\adder|adder1|fa0|sum~combout\ & !\adder|adder1|fa1|sum~combout\)) # (\adder|adder1|fa2|sum~combout\ & (!\adder|adder1|fa0|sum~combout\ $ 
-- (\adder|adder1|fa1|sum~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000010001011001100001000100100010100110010010001010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|adder1|fa2|ALT_INV_sum~combout\,
	datab => \adder|adder1|fa0|ALT_INV_sum~combout\,
	datad => \adder|adder1|fa1|ALT_INV_sum~combout\,
	dataf => \adder|adder1|fa3|ALT_INV_sum~combout\,
	combout => \decoder1|outputs[3]~3_combout\);

-- Location: MLABCELL_X23_Y1_N42
\decoder1|outputs[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder1|outputs[4]~4_combout\ = ( \adder|adder1|fa1|sum~combout\ & ( \adder_inputs1[6]~input_o\ & ( (!\adder|adder1|fa1|carry_out~0_combout\ & ((!\adder|adder1|fa3|sum~0_combout\) # ((\adder|adder1|fa0|sum~combout\ & \adder_inputs2[6]~input_o\)))) # 
-- (\adder|adder1|fa1|carry_out~0_combout\ & ((!\adder_inputs2[6]~input_o\ & ((!\adder|adder1|fa3|sum~0_combout\) # (\adder|adder1|fa0|sum~combout\))) # (\adder_inputs2[6]~input_o\ & ((\adder|adder1|fa3|sum~0_combout\))))) ) ) ) # ( 
-- !\adder|adder1|fa1|sum~combout\ & ( \adder_inputs1[6]~input_o\ & ( ((!\adder|adder1|fa1|carry_out~0_combout\ & ((!\adder|adder1|fa3|sum~0_combout\) # (\adder_inputs2[6]~input_o\))) # (\adder|adder1|fa1|carry_out~0_combout\ & ((!\adder_inputs2[6]~input_o\) 
-- # (\adder|adder1|fa3|sum~0_combout\)))) # (\adder|adder1|fa0|sum~combout\) ) ) ) # ( \adder|adder1|fa1|sum~combout\ & ( !\adder_inputs1[6]~input_o\ & ( (!\adder|adder1|fa0|sum~combout\ & (!\adder|adder1|fa3|sum~0_combout\ $ 
-- (((!\adder|adder1|fa1|carry_out~0_combout\ & !\adder_inputs2[6]~input_o\))))) # (\adder|adder1|fa0|sum~combout\ & ((!\adder|adder1|fa3|sum~0_combout\) # (!\adder|adder1|fa1|carry_out~0_combout\ $ (\adder_inputs2[6]~input_o\)))) ) ) ) # ( 
-- !\adder|adder1|fa1|sum~combout\ & ( !\adder_inputs1[6]~input_o\ & ( ((!\adder|adder1|fa3|sum~0_combout\) # (!\adder|adder1|fa1|carry_out~0_combout\ $ (\adder_inputs2[6]~input_o\))) # (\adder|adder1|fa0|sum~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110110111011111111010000111111011011111111111101000010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|adder1|fa1|ALT_INV_carry_out~0_combout\,
	datab => \adder|adder1|fa0|ALT_INV_sum~combout\,
	datac => \ALT_INV_adder_inputs2[6]~input_o\,
	datad => \adder|adder1|fa3|ALT_INV_sum~0_combout\,
	datae => \adder|adder1|fa1|ALT_INV_sum~combout\,
	dataf => \ALT_INV_adder_inputs1[6]~input_o\,
	combout => \decoder1|outputs[4]~4_combout\);

-- Location: MLABCELL_X23_Y1_N18
\decoder1|outputs[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder1|outputs[5]~5_combout\ = ( \adder|adder1|fa1|sum~combout\ & ( \adder_inputs1[6]~input_o\ & ( (!\adder|adder1|fa0|sum~combout\ & (!\adder|adder1|fa1|carry_out~0_combout\ $ ((!\adder_inputs2[6]~input_o\)))) # (\adder|adder1|fa0|sum~combout\ & 
-- (!\adder|adder1|fa3|sum~0_combout\ $ (((\adder_inputs2[6]~input_o\) # (\adder|adder1|fa1|carry_out~0_combout\))))) ) ) ) # ( !\adder|adder1|fa1|sum~combout\ & ( \adder_inputs1[6]~input_o\ & ( (!\adder|adder1|fa1|carry_out~0_combout\ & 
-- ((!\adder|adder1|fa0|sum~combout\ $ (\adder|adder1|fa3|sum~0_combout\)) # (\adder_inputs2[6]~input_o\))) # (\adder|adder1|fa1|carry_out~0_combout\ & ((!\adder_inputs2[6]~input_o\) # (!\adder|adder1|fa0|sum~combout\ $ (!\adder|adder1|fa3|sum~0_combout\)))) 
-- ) ) ) # ( \adder|adder1|fa1|sum~combout\ & ( !\adder_inputs1[6]~input_o\ & ( (!\adder|adder1|fa0|sum~combout\ & (!\adder|adder1|fa1|carry_out~0_combout\ $ ((\adder_inputs2[6]~input_o\)))) # (\adder|adder1|fa0|sum~combout\ & 
-- (!\adder|adder1|fa3|sum~0_combout\ $ (((\adder|adder1|fa1|carry_out~0_combout\ & \adder_inputs2[6]~input_o\))))) ) ) ) # ( !\adder|adder1|fa1|sum~combout\ & ( !\adder_inputs1[6]~input_o\ & ( (!\adder|adder1|fa1|carry_out~0_combout\ & 
-- ((!\adder_inputs2[6]~input_o\) # (!\adder|adder1|fa0|sum~combout\ $ (\adder|adder1|fa3|sum~0_combout\)))) # (\adder|adder1|fa1|carry_out~0_combout\ & ((!\adder|adder1|fa0|sum~combout\ $ (\adder|adder1|fa3|sum~0_combout\)) # (\adder_inputs2[6]~input_o\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110110110111101101101000010111011011011111100110100001011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|adder1|fa1|ALT_INV_carry_out~0_combout\,
	datab => \adder|adder1|fa0|ALT_INV_sum~combout\,
	datac => \ALT_INV_adder_inputs2[6]~input_o\,
	datad => \adder|adder1|fa3|ALT_INV_sum~0_combout\,
	datae => \adder|adder1|fa1|ALT_INV_sum~combout\,
	dataf => \ALT_INV_adder_inputs1[6]~input_o\,
	combout => \decoder1|outputs[5]~5_combout\);

-- Location: MLABCELL_X23_Y1_N24
\decoder1|outputs[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder1|outputs[6]~6_combout\ = ( \adder|adder1|fa1|sum~combout\ & ( \adder_inputs1[6]~input_o\ & ( (!\adder|adder1|fa0|sum~combout\) # ((!\adder|adder1|fa1|carry_out~0_combout\ $ (\adder_inputs2[6]~input_o\)) # (\adder|adder1|fa3|sum~0_combout\)) ) ) ) 
-- # ( !\adder|adder1|fa1|sum~combout\ & ( \adder_inputs1[6]~input_o\ & ( (!\adder|adder1|fa0|sum~combout\ & ((!\adder|adder1|fa1|carry_out~0_combout\ & ((\adder|adder1|fa3|sum~0_combout\) # (\adder_inputs2[6]~input_o\))) # 
-- (\adder|adder1|fa1|carry_out~0_combout\ & ((!\adder_inputs2[6]~input_o\) # (!\adder|adder1|fa3|sum~0_combout\))))) # (\adder|adder1|fa0|sum~combout\ & (!\adder|adder1|fa3|sum~0_combout\ $ (((\adder|adder1|fa1|carry_out~0_combout\ & 
-- \adder_inputs2[6]~input_o\))))) ) ) ) # ( \adder|adder1|fa1|sum~combout\ & ( !\adder_inputs1[6]~input_o\ & ( (!\adder|adder1|fa0|sum~combout\) # ((!\adder|adder1|fa1|carry_out~0_combout\ & ((!\adder|adder1|fa3|sum~0_combout\) # 
-- (\adder_inputs2[6]~input_o\))) # (\adder|adder1|fa1|carry_out~0_combout\ & ((!\adder_inputs2[6]~input_o\) # (\adder|adder1|fa3|sum~0_combout\)))) ) ) ) # ( !\adder|adder1|fa1|sum~combout\ & ( !\adder_inputs1[6]~input_o\ & ( 
-- (!\adder|adder1|fa0|sum~combout\ & ((!\adder|adder1|fa1|carry_out~0_combout\ $ (\adder_inputs2[6]~input_o\)) # (\adder|adder1|fa3|sum~0_combout\))) # (\adder|adder1|fa0|sum~combout\ & (!\adder|adder1|fa3|sum~0_combout\ $ 
-- (((!\adder|adder1|fa1|carry_out~0_combout\ & !\adder_inputs2[6]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011111101100111111101101111101111110110010011110110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|adder1|fa1|ALT_INV_carry_out~0_combout\,
	datab => \adder|adder1|fa0|ALT_INV_sum~combout\,
	datac => \ALT_INV_adder_inputs2[6]~input_o\,
	datad => \adder|adder1|fa3|ALT_INV_sum~0_combout\,
	datae => \adder|adder1|fa1|ALT_INV_sum~combout\,
	dataf => \ALT_INV_adder_inputs1[6]~input_o\,
	combout => \decoder1|outputs[6]~6_combout\);

-- Location: MLABCELL_X23_Y1_N15
\adder|adder1|fa3|carry_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|adder1|fa3|carry_out~0_combout\ = ( \adder_inputs2[6]~input_o\ & ( (!\adder_inputs2[7]~input_o\ & (\adder_inputs1[7]~input_o\ & ((\adder_inputs1[6]~input_o\) # (\adder|adder1|fa1|carry_out~0_combout\)))) # (\adder_inputs2[7]~input_o\ & 
-- (((\adder_inputs1[7]~input_o\) # (\adder_inputs1[6]~input_o\)) # (\adder|adder1|fa1|carry_out~0_combout\))) ) ) # ( !\adder_inputs2[6]~input_o\ & ( (!\adder_inputs2[7]~input_o\ & (\adder|adder1|fa1|carry_out~0_combout\ & (\adder_inputs1[6]~input_o\ & 
-- \adder_inputs1[7]~input_o\))) # (\adder_inputs2[7]~input_o\ & (((\adder|adder1|fa1|carry_out~0_combout\ & \adder_inputs1[6]~input_o\)) # (\adder_inputs1[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000111011111110000011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|adder1|fa1|ALT_INV_carry_out~0_combout\,
	datab => \ALT_INV_adder_inputs1[6]~input_o\,
	datac => \ALT_INV_adder_inputs2[7]~input_o\,
	datad => \ALT_INV_adder_inputs1[7]~input_o\,
	dataf => \ALT_INV_adder_inputs2[6]~input_o\,
	combout => \adder|adder1|fa3|carry_out~0_combout\);

-- Location: LABCELL_X48_Y23_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


