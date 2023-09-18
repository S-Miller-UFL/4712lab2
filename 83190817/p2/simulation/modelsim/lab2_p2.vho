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

-- DATE "09/13/2023 17:54:42"

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

ENTITY 	decoder IS
    PORT (
	inputs : IN std_logic_vector(3 DOWNTO 0);
	outputs_n : OUT std_logic_vector(6 DOWNTO 0)
	);
END decoder;

-- Design Ports Information
-- outputs_n[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs_n[1]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs_n[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs_n[3]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs_n[4]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs_n[5]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs_n[6]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputs[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputs[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputs[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputs[0]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF decoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_inputs : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_outputs_n : std_logic_vector(6 DOWNTO 0);
SIGNAL \outputs_n[0]~output_o\ : std_logic;
SIGNAL \outputs_n[1]~output_o\ : std_logic;
SIGNAL \outputs_n[2]~output_o\ : std_logic;
SIGNAL \outputs_n[3]~output_o\ : std_logic;
SIGNAL \outputs_n[4]~output_o\ : std_logic;
SIGNAL \outputs_n[5]~output_o\ : std_logic;
SIGNAL \outputs_n[6]~output_o\ : std_logic;
SIGNAL \inputs[3]~input_o\ : std_logic;
SIGNAL \inputs[1]~input_o\ : std_logic;
SIGNAL \inputs[2]~input_o\ : std_logic;
SIGNAL \inputs[0]~input_o\ : std_logic;
SIGNAL \outputs[0]~0_combout\ : std_logic;
SIGNAL \outputs[1]~1_combout\ : std_logic;
SIGNAL \outputs[2]~2_combout\ : std_logic;
SIGNAL \outputs[3]~3_combout\ : std_logic;
SIGNAL \outputs[4]~4_combout\ : std_logic;
SIGNAL \outputs[5]~5_combout\ : std_logic;
SIGNAL \outputs[6]~6_combout\ : std_logic;
SIGNAL \ALT_INV_outputs[6]~6_combout\ : std_logic;
SIGNAL \ALT_INV_outputs[5]~5_combout\ : std_logic;
SIGNAL \ALT_INV_outputs[4]~4_combout\ : std_logic;
SIGNAL \ALT_INV_outputs[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_outputs[0]~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_inputs <= inputs;
outputs_n <= ww_outputs_n;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_outputs[6]~6_combout\ <= NOT \outputs[6]~6_combout\;
\ALT_INV_outputs[5]~5_combout\ <= NOT \outputs[5]~5_combout\;
\ALT_INV_outputs[4]~4_combout\ <= NOT \outputs[4]~4_combout\;
\ALT_INV_outputs[1]~1_combout\ <= NOT \outputs[1]~1_combout\;
\ALT_INV_outputs[0]~0_combout\ <= NOT \outputs[0]~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X14_Y0_N2
\outputs_n[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_outputs[0]~0_combout\,
	devoe => ww_devoe,
	o => \outputs_n[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\outputs_n[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_outputs[1]~1_combout\,
	devoe => ww_devoe,
	o => \outputs_n[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\outputs_n[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputs[2]~2_combout\,
	devoe => ww_devoe,
	o => \outputs_n[2]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\outputs_n[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputs[3]~3_combout\,
	devoe => ww_devoe,
	o => \outputs_n[3]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\outputs_n[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_outputs[4]~4_combout\,
	devoe => ww_devoe,
	o => \outputs_n[4]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\outputs_n[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_outputs[5]~5_combout\,
	devoe => ww_devoe,
	o => \outputs_n[5]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\outputs_n[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_outputs[6]~6_combout\,
	devoe => ww_devoe,
	o => \outputs_n[6]~output_o\);

-- Location: IOIBUF_X12_Y0_N1
\inputs[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputs(3),
	o => \inputs[3]~input_o\);

-- Location: IOIBUF_X33_Y16_N22
\inputs[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputs(1),
	o => \inputs[1]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\inputs[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputs(2),
	o => \inputs[2]~input_o\);

-- Location: IOIBUF_X33_Y16_N15
\inputs[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputs(0),
	o => \inputs[0]~input_o\);

-- Location: LCCOMB_X17_Y3_N0
\outputs[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outputs[0]~0_combout\ = (\inputs[0]~input_o\ & ((\inputs[3]~input_o\) # (\inputs[1]~input_o\ $ (\inputs[2]~input_o\)))) # (!\inputs[0]~input_o\ & ((\inputs[1]~input_o\) # (\inputs[3]~input_o\ $ (\inputs[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputs[3]~input_o\,
	datab => \inputs[1]~input_o\,
	datac => \inputs[2]~input_o\,
	datad => \inputs[0]~input_o\,
	combout => \outputs[0]~0_combout\);

-- Location: LCCOMB_X17_Y3_N10
\outputs[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outputs[1]~1_combout\ = (\inputs[1]~input_o\ & ((\inputs[3]~input_o\) # ((\inputs[2]~input_o\ & !\inputs[0]~input_o\)))) # (!\inputs[1]~input_o\ & ((\inputs[3]~input_o\ $ (\inputs[2]~input_o\)) # (!\inputs[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputs[3]~input_o\,
	datab => \inputs[1]~input_o\,
	datac => \inputs[2]~input_o\,
	datad => \inputs[0]~input_o\,
	combout => \outputs[1]~1_combout\);

-- Location: LCCOMB_X17_Y3_N12
\outputs[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outputs[2]~2_combout\ = (\inputs[1]~input_o\ & (!\inputs[3]~input_o\ & ((\inputs[0]~input_o\)))) # (!\inputs[1]~input_o\ & ((\inputs[2]~input_o\ & (!\inputs[3]~input_o\)) # (!\inputs[2]~input_o\ & ((\inputs[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputs[3]~input_o\,
	datab => \inputs[1]~input_o\,
	datac => \inputs[2]~input_o\,
	datad => \inputs[0]~input_o\,
	combout => \outputs[2]~2_combout\);

-- Location: LCCOMB_X17_Y3_N22
\outputs[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outputs[3]~3_combout\ = (\inputs[0]~input_o\ & ((\inputs[1]~input_o\ $ (!\inputs[2]~input_o\)))) # (!\inputs[0]~input_o\ & ((\inputs[3]~input_o\ & (\inputs[1]~input_o\ & !\inputs[2]~input_o\)) # (!\inputs[3]~input_o\ & (!\inputs[1]~input_o\ & 
-- \inputs[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputs[3]~input_o\,
	datab => \inputs[1]~input_o\,
	datac => \inputs[2]~input_o\,
	datad => \inputs[0]~input_o\,
	combout => \outputs[3]~3_combout\);

-- Location: LCCOMB_X17_Y3_N24
\outputs[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outputs[4]~4_combout\ = (\inputs[3]~input_o\ & (((!\inputs[1]~input_o\ & \inputs[0]~input_o\)) # (!\inputs[2]~input_o\))) # (!\inputs[3]~input_o\ & (((\inputs[2]~input_o\) # (\inputs[0]~input_o\)) # (!\inputs[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputs[3]~input_o\,
	datab => \inputs[1]~input_o\,
	datac => \inputs[2]~input_o\,
	datad => \inputs[0]~input_o\,
	combout => \outputs[4]~4_combout\);

-- Location: LCCOMB_X17_Y3_N18
\outputs[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outputs[5]~5_combout\ = (\inputs[3]~input_o\ & ((\inputs[0]~input_o\ & (!\inputs[1]~input_o\)) # (!\inputs[0]~input_o\ & ((!\inputs[2]~input_o\))))) # (!\inputs[3]~input_o\ & ((\inputs[1]~input_o\ $ (!\inputs[0]~input_o\)) # (!\inputs[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputs[3]~input_o\,
	datab => \inputs[1]~input_o\,
	datac => \inputs[2]~input_o\,
	datad => \inputs[0]~input_o\,
	combout => \outputs[5]~5_combout\);

-- Location: LCCOMB_X17_Y3_N4
\outputs[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outputs[6]~6_combout\ = (\inputs[3]~input_o\ & ((\inputs[1]~input_o\ $ (!\inputs[2]~input_o\)) # (!\inputs[0]~input_o\))) # (!\inputs[3]~input_o\ & ((\inputs[1]~input_o\) # (\inputs[2]~input_o\ $ (!\inputs[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputs[3]~input_o\,
	datab => \inputs[1]~input_o\,
	datac => \inputs[2]~input_o\,
	datad => \inputs[0]~input_o\,
	combout => \outputs[6]~6_combout\);

ww_outputs_n(0) <= \outputs_n[0]~output_o\;

ww_outputs_n(1) <= \outputs_n[1]~output_o\;

ww_outputs_n(2) <= \outputs_n[2]~output_o\;

ww_outputs_n(3) <= \outputs_n[3]~output_o\;

ww_outputs_n(4) <= \outputs_n[4]~output_o\;

ww_outputs_n(5) <= \outputs_n[5]~output_o\;

ww_outputs_n(6) <= \outputs_n[6]~output_o\;
END structure;


