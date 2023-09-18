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

-- DATE "09/15/2023 14:12:00"

-- 
-- Device: Altera EP4CGX15BF14A7 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_NCEO~	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- ~ALTERA_DATA0~	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO~	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_NCSO~	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO~~padout\ : std_logic;
SIGNAL \~ALTERA_NCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_NCSO~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	eightbitadder IS
    PORT (
	input1 : IN std_logic_vector(7 DOWNTO 0);
	input2 : IN std_logic_vector(7 DOWNTO 0);
	carry_in : IN std_logic;
	sum : OUT std_logic_vector(7 DOWNTO 0);
	carry_out : OUT std_logic
	);
END eightbitadder;

-- Design Ports Information
-- sum[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[1]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[2]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[4]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[5]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[6]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[7]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carry_out	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[0]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carry_in	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[1]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[2]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[5]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[5]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[6]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[6]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[7]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[7]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF eightbitadder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_input2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_carry_in : std_logic;
SIGNAL ww_sum : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_carry_out : std_logic;
SIGNAL \sum[0]~output_o\ : std_logic;
SIGNAL \sum[1]~output_o\ : std_logic;
SIGNAL \sum[2]~output_o\ : std_logic;
SIGNAL \sum[3]~output_o\ : std_logic;
SIGNAL \sum[4]~output_o\ : std_logic;
SIGNAL \sum[5]~output_o\ : std_logic;
SIGNAL \sum[6]~output_o\ : std_logic;
SIGNAL \sum[7]~output_o\ : std_logic;
SIGNAL \carry_out~output_o\ : std_logic;
SIGNAL \input1[0]~input_o\ : std_logic;
SIGNAL \input2[0]~input_o\ : std_logic;
SIGNAL \carry_in~input_o\ : std_logic;
SIGNAL \adder0|fa0|sum~0_combout\ : std_logic;
SIGNAL \adder0|fa0|carry_out~0_combout\ : std_logic;
SIGNAL \input2[1]~input_o\ : std_logic;
SIGNAL \input1[1]~input_o\ : std_logic;
SIGNAL \adder0|fa1|sum~combout\ : std_logic;
SIGNAL \input1[2]~input_o\ : std_logic;
SIGNAL \adder0|fa1|carry_out~0_combout\ : std_logic;
SIGNAL \input2[2]~input_o\ : std_logic;
SIGNAL \adder0|fa2|sum~combout\ : std_logic;
SIGNAL \adder0|fa2|carry_out~0_combout\ : std_logic;
SIGNAL \input2[3]~input_o\ : std_logic;
SIGNAL \input1[3]~input_o\ : std_logic;
SIGNAL \adder0|fa3|sum~combout\ : std_logic;
SIGNAL \adder0|fa3|carry_out~0_combout\ : std_logic;
SIGNAL \input2[4]~input_o\ : std_logic;
SIGNAL \input1[4]~input_o\ : std_logic;
SIGNAL \adder1|fa0|sum~combout\ : std_logic;
SIGNAL \input1[5]~input_o\ : std_logic;
SIGNAL \input2[5]~input_o\ : std_logic;
SIGNAL \adder1|fa0|carry_out~0_combout\ : std_logic;
SIGNAL \adder1|fa1|sum~combout\ : std_logic;
SIGNAL \input1[6]~input_o\ : std_logic;
SIGNAL \input2[6]~input_o\ : std_logic;
SIGNAL \adder1|fa1|carry_out~0_combout\ : std_logic;
SIGNAL \adder1|fa2|sum~combout\ : std_logic;
SIGNAL \input1[7]~input_o\ : std_logic;
SIGNAL \adder1|fa2|carry_out~0_combout\ : std_logic;
SIGNAL \input2[7]~input_o\ : std_logic;
SIGNAL \adder1|fa3|sum~combout\ : std_logic;
SIGNAL \adder1|fa3|carry_out~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_input1 <= input1;
ww_input2 <= input2;
ww_carry_in <= carry_in;
sum <= ww_sum;
carry_out <= ww_carry_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X20_Y31_N9
\sum[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder0|fa0|sum~0_combout\,
	devoe => ww_devoe,
	o => \sum[0]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\sum[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder0|fa1|sum~combout\,
	devoe => ww_devoe,
	o => \sum[1]~output_o\);

-- Location: IOOBUF_X33_Y24_N2
\sum[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder0|fa2|sum~combout\,
	devoe => ww_devoe,
	o => \sum[2]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\sum[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder0|fa3|sum~combout\,
	devoe => ww_devoe,
	o => \sum[3]~output_o\);

-- Location: IOOBUF_X22_Y31_N2
\sum[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder1|fa0|sum~combout\,
	devoe => ww_devoe,
	o => \sum[4]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\sum[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder1|fa1|sum~combout\,
	devoe => ww_devoe,
	o => \sum[5]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\sum[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder1|fa2|sum~combout\,
	devoe => ww_devoe,
	o => \sum[6]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\sum[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder1|fa3|sum~combout\,
	devoe => ww_devoe,
	o => \sum[7]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\carry_out~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder1|fa3|carry_out~0_combout\,
	devoe => ww_devoe,
	o => \carry_out~output_o\);

-- Location: IOIBUF_X26_Y31_N8
\input1[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(0),
	o => \input1[0]~input_o\);

-- Location: IOIBUF_X31_Y31_N8
\input2[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(0),
	o => \input2[0]~input_o\);

-- Location: IOIBUF_X33_Y22_N8
\carry_in~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_carry_in,
	o => \carry_in~input_o\);

-- Location: LCCOMB_X27_Y27_N8
\adder0|fa0|sum~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder0|fa0|sum~0_combout\ = \input1[0]~input_o\ $ (\input2[0]~input_o\ $ (\carry_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[0]~input_o\,
	datab => \input2[0]~input_o\,
	datac => \carry_in~input_o\,
	combout => \adder0|fa0|sum~0_combout\);

-- Location: LCCOMB_X27_Y27_N26
\adder0|fa0|carry_out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder0|fa0|carry_out~0_combout\ = (\input1[0]~input_o\ & ((\input2[0]~input_o\) # (\carry_in~input_o\))) # (!\input1[0]~input_o\ & (\input2[0]~input_o\ & \carry_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[0]~input_o\,
	datab => \input2[0]~input_o\,
	datac => \carry_in~input_o\,
	combout => \adder0|fa0|carry_out~0_combout\);

-- Location: IOIBUF_X33_Y28_N1
\input2[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(1),
	o => \input2[1]~input_o\);

-- Location: IOIBUF_X33_Y27_N1
\input1[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(1),
	o => \input1[1]~input_o\);

-- Location: LCCOMB_X27_Y27_N4
\adder0|fa1|sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder0|fa1|sum~combout\ = \adder0|fa0|carry_out~0_combout\ $ (\input2[1]~input_o\ $ (\input1[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder0|fa0|carry_out~0_combout\,
	datac => \input2[1]~input_o\,
	datad => \input1[1]~input_o\,
	combout => \adder0|fa1|sum~combout\);

-- Location: IOIBUF_X31_Y31_N1
\input1[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(2),
	o => \input1[2]~input_o\);

-- Location: LCCOMB_X27_Y27_N30
\adder0|fa1|carry_out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder0|fa1|carry_out~0_combout\ = (\adder0|fa0|carry_out~0_combout\ & ((\input2[1]~input_o\) # (\input1[1]~input_o\))) # (!\adder0|fa0|carry_out~0_combout\ & (\input2[1]~input_o\ & \input1[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder0|fa0|carry_out~0_combout\,
	datac => \input2[1]~input_o\,
	datad => \input1[1]~input_o\,
	combout => \adder0|fa1|carry_out~0_combout\);

-- Location: IOIBUF_X33_Y25_N1
\input2[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(2),
	o => \input2[2]~input_o\);

-- Location: LCCOMB_X27_Y27_N0
\adder0|fa2|sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder0|fa2|sum~combout\ = \input1[2]~input_o\ $ (\adder0|fa1|carry_out~0_combout\ $ (\input2[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input1[2]~input_o\,
	datac => \adder0|fa1|carry_out~0_combout\,
	datad => \input2[2]~input_o\,
	combout => \adder0|fa2|sum~combout\);

-- Location: LCCOMB_X27_Y27_N10
\adder0|fa2|carry_out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder0|fa2|carry_out~0_combout\ = (\input1[2]~input_o\ & ((\adder0|fa1|carry_out~0_combout\) # (\input2[2]~input_o\))) # (!\input1[2]~input_o\ & (\adder0|fa1|carry_out~0_combout\ & \input2[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input1[2]~input_o\,
	datac => \adder0|fa1|carry_out~0_combout\,
	datad => \input2[2]~input_o\,
	combout => \adder0|fa2|carry_out~0_combout\);

-- Location: IOIBUF_X20_Y31_N1
\input2[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(3),
	o => \input2[3]~input_o\);

-- Location: IOIBUF_X33_Y14_N8
\input1[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(3),
	o => \input1[3]~input_o\);

-- Location: LCCOMB_X27_Y27_N28
\adder0|fa3|sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder0|fa3|sum~combout\ = \adder0|fa2|carry_out~0_combout\ $ (\input2[3]~input_o\ $ (\input1[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder0|fa2|carry_out~0_combout\,
	datac => \input2[3]~input_o\,
	datad => \input1[3]~input_o\,
	combout => \adder0|fa3|sum~combout\);

-- Location: LCCOMB_X27_Y27_N14
\adder0|fa3|carry_out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder0|fa3|carry_out~0_combout\ = (\adder0|fa2|carry_out~0_combout\ & ((\input2[3]~input_o\) # (\input1[3]~input_o\))) # (!\adder0|fa2|carry_out~0_combout\ & (\input2[3]~input_o\ & \input1[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder0|fa2|carry_out~0_combout\,
	datac => \input2[3]~input_o\,
	datad => \input1[3]~input_o\,
	combout => \adder0|fa3|carry_out~0_combout\);

-- Location: IOIBUF_X22_Y31_N8
\input2[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(4),
	o => \input2[4]~input_o\);

-- Location: IOIBUF_X29_Y31_N8
\input1[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(4),
	o => \input1[4]~input_o\);

-- Location: LCCOMB_X27_Y27_N24
\adder1|fa0|sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder1|fa0|sum~combout\ = \adder0|fa3|carry_out~0_combout\ $ (\input2[4]~input_o\ $ (\input1[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder0|fa3|carry_out~0_combout\,
	datac => \input2[4]~input_o\,
	datad => \input1[4]~input_o\,
	combout => \adder1|fa0|sum~combout\);

-- Location: IOIBUF_X16_Y31_N1
\input1[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(5),
	o => \input1[5]~input_o\);

-- Location: IOIBUF_X16_Y31_N8
\input2[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(5),
	o => \input2[5]~input_o\);

-- Location: LCCOMB_X27_Y27_N2
\adder1|fa0|carry_out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder1|fa0|carry_out~0_combout\ = (\adder0|fa3|carry_out~0_combout\ & ((\input2[4]~input_o\) # (\input1[4]~input_o\))) # (!\adder0|fa3|carry_out~0_combout\ & (\input2[4]~input_o\ & \input1[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder0|fa3|carry_out~0_combout\,
	datac => \input2[4]~input_o\,
	datad => \input1[4]~input_o\,
	combout => \adder1|fa0|carry_out~0_combout\);

-- Location: LCCOMB_X27_Y27_N12
\adder1|fa1|sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder1|fa1|sum~combout\ = \input1[5]~input_o\ $ (\input2[5]~input_o\ $ (\adder1|fa0|carry_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input1[5]~input_o\,
	datac => \input2[5]~input_o\,
	datad => \adder1|fa0|carry_out~0_combout\,
	combout => \adder1|fa1|sum~combout\);

-- Location: IOIBUF_X12_Y31_N8
\input1[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(6),
	o => \input1[6]~input_o\);

-- Location: IOIBUF_X29_Y31_N1
\input2[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(6),
	o => \input2[6]~input_o\);

-- Location: LCCOMB_X27_Y27_N6
\adder1|fa1|carry_out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder1|fa1|carry_out~0_combout\ = (\input1[5]~input_o\ & ((\input2[5]~input_o\) # (\adder1|fa0|carry_out~0_combout\))) # (!\input1[5]~input_o\ & (\input2[5]~input_o\ & \adder1|fa0|carry_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input1[5]~input_o\,
	datac => \input2[5]~input_o\,
	datad => \adder1|fa0|carry_out~0_combout\,
	combout => \adder1|fa1|carry_out~0_combout\);

-- Location: LCCOMB_X27_Y27_N16
\adder1|fa2|sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder1|fa2|sum~combout\ = \input1[6]~input_o\ $ (\input2[6]~input_o\ $ (\adder1|fa1|carry_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[6]~input_o\,
	datab => \input2[6]~input_o\,
	datad => \adder1|fa1|carry_out~0_combout\,
	combout => \adder1|fa2|sum~combout\);

-- Location: IOIBUF_X24_Y31_N1
\input1[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(7),
	o => \input1[7]~input_o\);

-- Location: LCCOMB_X27_Y27_N18
\adder1|fa2|carry_out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder1|fa2|carry_out~0_combout\ = (\input1[6]~input_o\ & ((\input2[6]~input_o\) # (\adder1|fa1|carry_out~0_combout\))) # (!\input1[6]~input_o\ & (\input2[6]~input_o\ & \adder1|fa1|carry_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[6]~input_o\,
	datab => \input2[6]~input_o\,
	datad => \adder1|fa1|carry_out~0_combout\,
	combout => \adder1|fa2|carry_out~0_combout\);

-- Location: IOIBUF_X33_Y27_N8
\input2[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(7),
	o => \input2[7]~input_o\);

-- Location: LCCOMB_X27_Y27_N20
\adder1|fa3|sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder1|fa3|sum~combout\ = \input1[7]~input_o\ $ (\adder1|fa2|carry_out~0_combout\ $ (\input2[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[7]~input_o\,
	datab => \adder1|fa2|carry_out~0_combout\,
	datad => \input2[7]~input_o\,
	combout => \adder1|fa3|sum~combout\);

-- Location: LCCOMB_X27_Y27_N22
\adder1|fa3|carry_out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adder1|fa3|carry_out~0_combout\ = (\input1[7]~input_o\ & ((\adder1|fa2|carry_out~0_combout\) # (\input2[7]~input_o\))) # (!\input1[7]~input_o\ & (\adder1|fa2|carry_out~0_combout\ & \input2[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[7]~input_o\,
	datab => \adder1|fa2|carry_out~0_combout\,
	datad => \input2[7]~input_o\,
	combout => \adder1|fa3|carry_out~0_combout\);

ww_sum(0) <= \sum[0]~output_o\;

ww_sum(1) <= \sum[1]~output_o\;

ww_sum(2) <= \sum[2]~output_o\;

ww_sum(3) <= \sum[3]~output_o\;

ww_sum(4) <= \sum[4]~output_o\;

ww_sum(5) <= \sum[5]~output_o\;

ww_sum(6) <= \sum[6]~output_o\;

ww_sum(7) <= \sum[7]~output_o\;

ww_carry_out <= \carry_out~output_o\;
END structure;


