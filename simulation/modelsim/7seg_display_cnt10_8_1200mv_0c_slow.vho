-- Copyright (C) 1991-2013 Altera Corporation
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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "06/08/2018 21:59:39"

-- 
-- Device: Altera EP3C16Q240C8 Package PQFP240
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cntall IS
    PORT (
	h_one : OUT std_logic_vector(3 DOWNTO 0);
	clearall : IN std_logic;
	pause_h : IN std_logic;
	h : IN std_logic;
	pause_min : IN std_logic;
	min : IN std_logic;
	clk : IN std_logic;
	h_ten : OUT std_logic_vector(3 DOWNTO 0);
	min_one : OUT std_logic_vector(3 DOWNTO 0);
	min_ten : OUT std_logic_vector(3 DOWNTO 0);
	sec_one : OUT std_logic_vector(3 DOWNTO 0);
	sec_ten : OUT std_logic_vector(3 DOWNTO 0)
	);
END cntall;

-- Design Ports Information
-- h_one[3]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_one[2]	=>  Location: PIN_202,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_one[1]	=>  Location: PIN_95,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_one[0]	=>  Location: PIN_201,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_ten[3]	=>  Location: PIN_166,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_ten[2]	=>  Location: PIN_161,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_ten[1]	=>  Location: PIN_199,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_ten[0]	=>  Location: PIN_159,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_one[3]	=>  Location: PIN_146,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_one[2]	=>  Location: PIN_102,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_one[1]	=>  Location: PIN_200,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_one[0]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_ten[3]	=>  Location: PIN_196,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_ten[2]	=>  Location: PIN_147,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_ten[1]	=>  Location: PIN_195,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_ten[0]	=>  Location: PIN_148,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec_one[3]	=>  Location: PIN_224,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec_one[2]	=>  Location: PIN_233,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec_one[1]	=>  Location: PIN_226,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec_one[0]	=>  Location: PIN_231,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec_ten[3]	=>  Location: PIN_220,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec_ten[2]	=>  Location: PIN_221,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec_ten[1]	=>  Location: PIN_218,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec_ten[0]	=>  Location: PIN_223,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clearall	=>  Location: PIN_160,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_152,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h	=>  Location: PIN_151,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pause_h	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min	=>  Location: PIN_222,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pause_min	=>  Location: PIN_230,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cntall IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_h_one : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clearall : std_logic;
SIGNAL ww_pause_h : std_logic;
SIGNAL ww_h : std_logic;
SIGNAL ww_pause_min : std_logic;
SIGNAL ww_min : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_h_ten : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_min_one : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_min_ten : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sec_one : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sec_ten : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst18~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst17~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \h_one[3]~output_o\ : std_logic;
SIGNAL \h_one[2]~output_o\ : std_logic;
SIGNAL \h_one[1]~output_o\ : std_logic;
SIGNAL \h_one[0]~output_o\ : std_logic;
SIGNAL \h_ten[3]~output_o\ : std_logic;
SIGNAL \h_ten[2]~output_o\ : std_logic;
SIGNAL \h_ten[1]~output_o\ : std_logic;
SIGNAL \h_ten[0]~output_o\ : std_logic;
SIGNAL \min_one[3]~output_o\ : std_logic;
SIGNAL \min_one[2]~output_o\ : std_logic;
SIGNAL \min_one[1]~output_o\ : std_logic;
SIGNAL \min_one[0]~output_o\ : std_logic;
SIGNAL \min_ten[3]~output_o\ : std_logic;
SIGNAL \min_ten[2]~output_o\ : std_logic;
SIGNAL \min_ten[1]~output_o\ : std_logic;
SIGNAL \min_ten[0]~output_o\ : std_logic;
SIGNAL \sec_one[3]~output_o\ : std_logic;
SIGNAL \sec_one[2]~output_o\ : std_logic;
SIGNAL \sec_one[1]~output_o\ : std_logic;
SIGNAL \sec_one[0]~output_o\ : std_logic;
SIGNAL \sec_ten[3]~output_o\ : std_logic;
SIGNAL \sec_ten[2]~output_o\ : std_logic;
SIGNAL \sec_ten[1]~output_o\ : std_logic;
SIGNAL \sec_ten[0]~output_o\ : std_logic;
SIGNAL \pause_h~input_o\ : std_logic;
SIGNAL \pause_min~input_o\ : std_logic;
SIGNAL \min~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|7~0_combout\ : std_logic;
SIGNAL \clearall~input_o\ : std_logic;
SIGNAL \inst2~feeder_combout\ : std_logic;
SIGNAL \inst2~q\ : std_logic;
SIGNAL \inst22~combout\ : std_logic;
SIGNAL \inst|7~q\ : std_logic;
SIGNAL \inst|20~combout\ : std_logic;
SIGNAL \inst|6~0_combout\ : std_logic;
SIGNAL \inst|6~feeder_combout\ : std_logic;
SIGNAL \inst|6~q\ : std_logic;
SIGNAL \inst|5~0_combout\ : std_logic;
SIGNAL \inst|5~q\ : std_logic;
SIGNAL \inst|3~0_combout\ : std_logic;
SIGNAL \inst|3~feeder_combout\ : std_logic;
SIGNAL \inst|3~q\ : std_logic;
SIGNAL \inst|34~0_combout\ : std_logic;
SIGNAL \inst|34~feeder_combout\ : std_logic;
SIGNAL \inst|34~q\ : std_logic;
SIGNAL \inst|32~0_combout\ : std_logic;
SIGNAL \inst|32~q\ : std_logic;
SIGNAL \inst|31~0_combout\ : std_logic;
SIGNAL \inst|31~feeder_combout\ : std_logic;
SIGNAL \inst|31~q\ : std_logic;
SIGNAL \inst|29~combout\ : std_logic;
SIGNAL \inst|33~0_combout\ : std_logic;
SIGNAL \inst|33~q\ : std_logic;
SIGNAL \inst4~combout\ : std_logic;
SIGNAL \inst18~combout\ : std_logic;
SIGNAL \inst18~clkctrl_outclk\ : std_logic;
SIGNAL \inst7|7~0_combout\ : std_logic;
SIGNAL \inst7|7~feeder_combout\ : std_logic;
SIGNAL \inst5~feeder_combout\ : std_logic;
SIGNAL \inst5~q\ : std_logic;
SIGNAL \inst13~combout\ : std_logic;
SIGNAL \inst7|7~q\ : std_logic;
SIGNAL \inst7|20~combout\ : std_logic;
SIGNAL \inst7|6~0_combout\ : std_logic;
SIGNAL \inst7|6~feeder_combout\ : std_logic;
SIGNAL \inst7|6~q\ : std_logic;
SIGNAL \inst7|5~0_combout\ : std_logic;
SIGNAL \inst7|5~q\ : std_logic;
SIGNAL \inst7|3~0_combout\ : std_logic;
SIGNAL \inst7|3~feeder_combout\ : std_logic;
SIGNAL \inst7|3~q\ : std_logic;
SIGNAL \inst7|34~0_combout\ : std_logic;
SIGNAL \inst7|34~feeder_combout\ : std_logic;
SIGNAL \inst7|34~q\ : std_logic;
SIGNAL \inst7|32~0_combout\ : std_logic;
SIGNAL \inst7|32~q\ : std_logic;
SIGNAL \inst7|31~0_combout\ : std_logic;
SIGNAL \inst7|31~feeder_combout\ : std_logic;
SIGNAL \inst7|31~q\ : std_logic;
SIGNAL \inst7|29~combout\ : std_logic;
SIGNAL \inst7|33~0_combout\ : std_logic;
SIGNAL \inst7|33~feeder_combout\ : std_logic;
SIGNAL \inst7|33~q\ : std_logic;
SIGNAL \inst9~combout\ : std_logic;
SIGNAL \h~input_o\ : std_logic;
SIGNAL \inst17~combout\ : std_logic;
SIGNAL \inst17~clkctrl_outclk\ : std_logic;
SIGNAL \inst11|7~0_combout\ : std_logic;
SIGNAL \inst11|7~feeder_combout\ : std_logic;
SIGNAL \inst12~feeder_combout\ : std_logic;
SIGNAL \inst11|20~combout\ : std_logic;
SIGNAL \inst11|6~0_combout\ : std_logic;
SIGNAL \inst11|6~q\ : std_logic;
SIGNAL \inst11|5~0_combout\ : std_logic;
SIGNAL \inst11|5~q\ : std_logic;
SIGNAL \inst11|34~0_combout\ : std_logic;
SIGNAL \inst11|34~feeder_combout\ : std_logic;
SIGNAL \inst11|34~q\ : std_logic;
SIGNAL \inst11|32~0_combout\ : std_logic;
SIGNAL \inst11|32~q\ : std_logic;
SIGNAL \inst11|31~0_combout\ : std_logic;
SIGNAL \inst11|31~feeder_combout\ : std_logic;
SIGNAL \inst11|31~q\ : std_logic;
SIGNAL \inst11|29~combout\ : std_logic;
SIGNAL \inst11|33~0_combout\ : std_logic;
SIGNAL \inst11|33~feeder_combout\ : std_logic;
SIGNAL \inst11|33~q\ : std_logic;
SIGNAL \inst15654645~combout\ : std_logic;
SIGNAL \inst12~q\ : std_logic;
SIGNAL \inst19~combout\ : std_logic;
SIGNAL \inst11|7~q\ : std_logic;
SIGNAL \inst11|3~0_combout\ : std_logic;
SIGNAL \inst11|3~feeder_combout\ : std_logic;
SIGNAL \inst11|3~q\ : std_logic;
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_inst17~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_inst18~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_inst4~combout\ : std_logic;
SIGNAL \ALT_INV_inst9~combout\ : std_logic;
SIGNAL \ALT_INV_inst15654645~combout\ : std_logic;
SIGNAL \ALT_INV_inst22~combout\ : std_logic;
SIGNAL \ALT_INV_inst13~combout\ : std_logic;
SIGNAL \ALT_INV_inst19~combout\ : std_logic;
SIGNAL \inst|ALT_INV_34~q\ : std_logic;
SIGNAL \inst|ALT_INV_33~q\ : std_logic;
SIGNAL \inst|ALT_INV_7~q\ : std_logic;
SIGNAL \inst|ALT_INV_6~q\ : std_logic;
SIGNAL \inst|ALT_INV_3~q\ : std_logic;
SIGNAL \inst7|ALT_INV_34~q\ : std_logic;
SIGNAL \inst7|ALT_INV_33~q\ : std_logic;
SIGNAL \inst7|ALT_INV_7~q\ : std_logic;
SIGNAL \inst7|ALT_INV_6~q\ : std_logic;
SIGNAL \inst7|ALT_INV_3~q\ : std_logic;
SIGNAL \inst11|ALT_INV_34~q\ : std_logic;
SIGNAL \inst11|ALT_INV_33~q\ : std_logic;
SIGNAL \inst11|ALT_INV_7~q\ : std_logic;
SIGNAL \inst11|ALT_INV_6~q\ : std_logic;
SIGNAL \inst11|ALT_INV_3~q\ : std_logic;

BEGIN

h_one <= ww_h_one;
ww_clearall <= clearall;
ww_pause_h <= pause_h;
ww_h <= h;
ww_pause_min <= pause_min;
ww_min <= min;
ww_clk <= clk;
h_ten <= ww_h_ten;
min_one <= ww_min_one;
min_ten <= ww_min_ten;
sec_one <= ww_sec_one;
sec_ten <= ww_sec_ten;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst18~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst18~combout\);

\inst17~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst17~combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
\ALT_INV_inst17~clkctrl_outclk\ <= NOT \inst17~clkctrl_outclk\;
\ALT_INV_inst18~clkctrl_outclk\ <= NOT \inst18~clkctrl_outclk\;
\ALT_INV_inst4~combout\ <= NOT \inst4~combout\;
\ALT_INV_inst9~combout\ <= NOT \inst9~combout\;
\ALT_INV_inst15654645~combout\ <= NOT \inst15654645~combout\;
\ALT_INV_inst22~combout\ <= NOT \inst22~combout\;
\ALT_INV_inst13~combout\ <= NOT \inst13~combout\;
\ALT_INV_inst19~combout\ <= NOT \inst19~combout\;
\inst|ALT_INV_34~q\ <= NOT \inst|34~q\;
\inst|ALT_INV_33~q\ <= NOT \inst|33~q\;
\inst|ALT_INV_7~q\ <= NOT \inst|7~q\;
\inst|ALT_INV_6~q\ <= NOT \inst|6~q\;
\inst|ALT_INV_3~q\ <= NOT \inst|3~q\;
\inst7|ALT_INV_34~q\ <= NOT \inst7|34~q\;
\inst7|ALT_INV_33~q\ <= NOT \inst7|33~q\;
\inst7|ALT_INV_7~q\ <= NOT \inst7|7~q\;
\inst7|ALT_INV_6~q\ <= NOT \inst7|6~q\;
\inst7|ALT_INV_3~q\ <= NOT \inst7|3~q\;
\inst11|ALT_INV_34~q\ <= NOT \inst11|34~q\;
\inst11|ALT_INV_33~q\ <= NOT \inst11|33~q\;
\inst11|ALT_INV_7~q\ <= NOT \inst11|7~q\;
\inst11|ALT_INV_6~q\ <= NOT \inst11|6~q\;
\inst11|ALT_INV_3~q\ <= NOT \inst11|3~q\;

-- Location: IOOBUF_X26_Y0_N30
\h_one[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|3~q\,
	devoe => ww_devoe,
	o => \h_one[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\h_one[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|5~q\,
	devoe => ww_devoe,
	o => \h_one[2]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\h_one[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|6~q\,
	devoe => ww_devoe,
	o => \h_one[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\h_one[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|7~q\,
	devoe => ww_devoe,
	o => \h_one[0]~output_o\);

-- Location: IOOBUF_X41_Y19_N2
\h_ten[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|31~q\,
	devoe => ww_devoe,
	o => \h_ten[3]~output_o\);

-- Location: IOOBUF_X41_Y18_N2
\h_ten[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|32~q\,
	devoe => ww_devoe,
	o => \h_ten[2]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\h_ten[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|33~q\,
	devoe => ww_devoe,
	o => \h_ten[1]~output_o\);

-- Location: IOOBUF_X41_Y18_N23
\h_ten[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|34~q\,
	devoe => ww_devoe,
	o => \h_ten[0]~output_o\);

-- Location: IOOBUF_X41_Y14_N16
\min_one[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|3~q\,
	devoe => ww_devoe,
	o => \min_one[3]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\min_one[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|5~q\,
	devoe => ww_devoe,
	o => \min_one[2]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\min_one[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|6~q\,
	devoe => ww_devoe,
	o => \min_one[1]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\min_one[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|7~q\,
	devoe => ww_devoe,
	o => \min_one[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\min_ten[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|31~q\,
	devoe => ww_devoe,
	o => \min_ten[3]~output_o\);

-- Location: IOOBUF_X41_Y14_N9
\min_ten[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|32~q\,
	devoe => ww_devoe,
	o => \min_ten[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N9
\min_ten[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|33~q\,
	devoe => ww_devoe,
	o => \min_ten[1]~output_o\);

-- Location: IOOBUF_X41_Y14_N2
\min_ten[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|34~q\,
	devoe => ww_devoe,
	o => \min_ten[0]~output_o\);

-- Location: IOOBUF_X9_Y29_N2
\sec_one[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|3~q\,
	devoe => ww_devoe,
	o => \sec_one[3]~output_o\);

-- Location: IOOBUF_X5_Y29_N23
\sec_one[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|5~q\,
	devoe => ww_devoe,
	o => \sec_one[2]~output_o\);

-- Location: IOOBUF_X7_Y29_N9
\sec_one[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|6~q\,
	devoe => ww_devoe,
	o => \sec_one[1]~output_o\);

-- Location: IOOBUF_X7_Y29_N30
\sec_one[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|7~q\,
	devoe => ww_devoe,
	o => \sec_one[0]~output_o\);

-- Location: IOOBUF_X11_Y29_N2
\sec_ten[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|31~q\,
	devoe => ww_devoe,
	o => \sec_ten[3]~output_o\);

-- Location: IOOBUF_X11_Y29_N9
\sec_ten[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|32~q\,
	devoe => ww_devoe,
	o => \sec_ten[2]~output_o\);

-- Location: IOOBUF_X14_Y29_N23
\sec_ten[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|33~q\,
	devoe => ww_devoe,
	o => \sec_ten[1]~output_o\);

-- Location: IOOBUF_X11_Y29_N30
\sec_ten[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|34~q\,
	devoe => ww_devoe,
	o => \sec_ten[0]~output_o\);

-- Location: IOIBUF_X41_Y13_N15
\pause_h~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pause_h,
	o => \pause_h~input_o\);

-- Location: IOIBUF_X7_Y29_N22
\pause_min~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pause_min,
	o => \pause_min~input_o\);

-- Location: IOIBUF_X11_Y29_N15
\min~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min,
	o => \min~input_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X8_Y28_N16
\inst|7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|7~0_combout\ = !\inst|7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|7~q\,
	combout => \inst|7~0_combout\);

-- Location: IOIBUF_X41_Y18_N15
\clearall~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clearall,
	o => \clearall~input_o\);

-- Location: LCCOMB_X10_Y28_N20
\inst2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst2~feeder_combout\);

-- Location: FF_X10_Y28_N21
inst2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2~feeder_combout\,
	clrn => \ALT_INV_inst4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2~q\);

-- Location: LCCOMB_X10_Y28_N6
inst22 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22~combout\ = (\clearall~input_o\) # (!\inst2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clearall~input_o\,
	datad => \inst2~q\,
	combout => \inst22~combout\);

-- Location: FF_X8_Y28_N31
\inst|7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst|7~0_combout\,
	clrn => \ALT_INV_inst22~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|7~q\);

-- Location: LCCOMB_X9_Y28_N22
\inst|20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|20~combout\ = LCELL((\inst|3~q\) # (!\inst|7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|3~q\,
	datad => \inst|7~q\,
	combout => \inst|20~combout\);

-- Location: LCCOMB_X9_Y28_N20
\inst|6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|6~0_combout\ = !\inst|6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|6~q\,
	combout => \inst|6~0_combout\);

-- Location: LCCOMB_X9_Y28_N18
\inst|6~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|6~feeder_combout\ = \inst|6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|6~0_combout\,
	combout => \inst|6~feeder_combout\);

-- Location: FF_X9_Y28_N19
\inst|6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|20~combout\,
	d => \inst|6~feeder_combout\,
	clrn => \ALT_INV_inst22~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|6~q\);

-- Location: LCCOMB_X8_Y28_N14
\inst|5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|5~0_combout\ = !\inst|5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|5~q\,
	combout => \inst|5~0_combout\);

-- Location: FF_X8_Y28_N15
\inst|5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_6~q\,
	d => \inst|5~0_combout\,
	clrn => \ALT_INV_inst22~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|5~q\);

-- Location: LCCOMB_X9_Y28_N16
\inst|3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|3~0_combout\ = (!\inst|3~q\ & (\inst|6~q\ & \inst|5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|3~q\,
	datac => \inst|6~q\,
	datad => \inst|5~q\,
	combout => \inst|3~0_combout\);

-- Location: LCCOMB_X9_Y28_N14
\inst|3~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|3~feeder_combout\ = \inst|3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|3~0_combout\,
	combout => \inst|3~feeder_combout\);

-- Location: FF_X9_Y28_N15
\inst|3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_7~q\,
	d => \inst|3~feeder_combout\,
	clrn => \ALT_INV_inst22~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|3~q\);

-- Location: LCCOMB_X10_Y28_N26
\inst|34~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|34~0_combout\ = !\inst|34~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|34~q\,
	combout => \inst|34~0_combout\);

-- Location: LCCOMB_X10_Y28_N14
\inst|34~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|34~feeder_combout\ = \inst|34~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|34~0_combout\,
	combout => \inst|34~feeder_combout\);

-- Location: FF_X10_Y28_N15
\inst|34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_3~q\,
	d => \inst|34~feeder_combout\,
	clrn => \ALT_INV_inst22~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|34~q\);

-- Location: LCCOMB_X12_Y28_N26
\inst|32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|32~0_combout\ = !\inst|32~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|32~q\,
	combout => \inst|32~0_combout\);

-- Location: FF_X12_Y28_N27
\inst|32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_33~q\,
	d => \inst|32~0_combout\,
	clrn => \ALT_INV_inst22~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|32~q\);

-- Location: LCCOMB_X11_Y28_N24
\inst|31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|31~0_combout\ = (\inst|33~q\ & (!\inst|31~q\ & \inst|32~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|33~q\,
	datac => \inst|31~q\,
	datad => \inst|32~q\,
	combout => \inst|31~0_combout\);

-- Location: LCCOMB_X11_Y28_N28
\inst|31~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|31~feeder_combout\ = \inst|31~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|31~0_combout\,
	combout => \inst|31~feeder_combout\);

-- Location: FF_X11_Y28_N29
\inst|31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_34~q\,
	d => \inst|31~feeder_combout\,
	clrn => \ALT_INV_inst22~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|31~q\);

-- Location: LCCOMB_X11_Y28_N16
\inst|29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|29~combout\ = LCELL((\inst|31~q\) # (!\inst|34~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|31~q\,
	datad => \inst|34~q\,
	combout => \inst|29~combout\);

-- Location: LCCOMB_X11_Y28_N12
\inst|33~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|33~0_combout\ = !\inst|33~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|33~q\,
	combout => \inst|33~0_combout\);

-- Location: FF_X11_Y28_N17
\inst|33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|29~combout\,
	asdata => \inst|33~0_combout\,
	clrn => \ALT_INV_inst22~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|33~q\);

-- Location: LCCOMB_X10_Y28_N28
inst4 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4~combout\ = (\inst|33~q\ & \inst|32~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|33~q\,
	datad => \inst|32~q\,
	combout => \inst4~combout\);

-- Location: LCCOMB_X10_Y28_N24
inst18 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18~combout\ = LCELL((\pause_min~input_o\ & (\min~input_o\)) # (!\pause_min~input_o\ & ((\inst4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pause_min~input_o\,
	datac => \min~input_o\,
	datad => \inst4~combout\,
	combout => \inst18~combout\);

-- Location: CLKCTRL_G10
\inst18~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst18~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst18~clkctrl_outclk\);

-- Location: LCCOMB_X29_Y15_N16
\inst7|7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|7~0_combout\ = !\inst7|7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|7~q\,
	combout => \inst7|7~0_combout\);

-- Location: LCCOMB_X29_Y15_N22
\inst7|7~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|7~feeder_combout\ = \inst7|7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|7~0_combout\,
	combout => \inst7|7~feeder_combout\);

-- Location: LCCOMB_X26_Y15_N20
\inst5~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst5~feeder_combout\);

-- Location: FF_X26_Y15_N21
inst5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst18~clkctrl_outclk\,
	d => \inst5~feeder_combout\,
	clrn => \ALT_INV_inst9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5~q\);

-- Location: LCCOMB_X28_Y15_N6
inst13 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13~combout\ = (\clearall~input_o\) # (!\inst5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clearall~input_o\,
	datad => \inst5~q\,
	combout => \inst13~combout\);

-- Location: FF_X29_Y15_N23
\inst7|7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inst18~clkctrl_outclk\,
	d => \inst7|7~feeder_combout\,
	clrn => \ALT_INV_inst13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|7~q\);

-- Location: LCCOMB_X27_Y15_N28
\inst7|20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|20~combout\ = LCELL((\inst7|3~q\) # (!\inst7|7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|7~q\,
	datad => \inst7|3~q\,
	combout => \inst7|20~combout\);

-- Location: LCCOMB_X27_Y15_N24
\inst7|6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|6~0_combout\ = !\inst7|6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|6~q\,
	combout => \inst7|6~0_combout\);

-- Location: LCCOMB_X27_Y15_N30
\inst7|6~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|6~feeder_combout\ = \inst7|6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|6~0_combout\,
	combout => \inst7|6~feeder_combout\);

-- Location: FF_X27_Y15_N31
\inst7|6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|20~combout\,
	d => \inst7|6~feeder_combout\,
	clrn => \ALT_INV_inst13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|6~q\);

-- Location: LCCOMB_X28_Y15_N18
\inst7|5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|5~0_combout\ = !\inst7|5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|5~q\,
	combout => \inst7|5~0_combout\);

-- Location: FF_X28_Y15_N19
\inst7|5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|ALT_INV_6~q\,
	d => \inst7|5~0_combout\,
	clrn => \ALT_INV_inst13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|5~q\);

-- Location: LCCOMB_X27_Y15_N16
\inst7|3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|3~0_combout\ = (!\inst7|3~q\ & (\inst7|6~q\ & \inst7|5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|3~q\,
	datac => \inst7|6~q\,
	datad => \inst7|5~q\,
	combout => \inst7|3~0_combout\);

-- Location: LCCOMB_X27_Y15_N6
\inst7|3~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|3~feeder_combout\ = \inst7|3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|3~0_combout\,
	combout => \inst7|3~feeder_combout\);

-- Location: FF_X27_Y15_N7
\inst7|3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|ALT_INV_7~q\,
	d => \inst7|3~feeder_combout\,
	clrn => \ALT_INV_inst13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|3~q\);

-- Location: LCCOMB_X28_Y15_N22
\inst7|34~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|34~0_combout\ = !\inst7|34~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|34~q\,
	combout => \inst7|34~0_combout\);

-- Location: LCCOMB_X28_Y15_N24
\inst7|34~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|34~feeder_combout\ = \inst7|34~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|34~0_combout\,
	combout => \inst7|34~feeder_combout\);

-- Location: FF_X28_Y15_N25
\inst7|34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|ALT_INV_3~q\,
	d => \inst7|34~feeder_combout\,
	clrn => \ALT_INV_inst13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|34~q\);

-- Location: LCCOMB_X30_Y15_N16
\inst7|32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|32~0_combout\ = !\inst7|32~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|32~q\,
	combout => \inst7|32~0_combout\);

-- Location: FF_X30_Y15_N17
\inst7|32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|ALT_INV_33~q\,
	d => \inst7|32~0_combout\,
	clrn => \ALT_INV_inst13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|32~q\);

-- Location: LCCOMB_X29_Y15_N24
\inst7|31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|31~0_combout\ = (!\inst7|31~q\ & (\inst7|33~q\ & \inst7|32~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|31~q\,
	datac => \inst7|33~q\,
	datad => \inst7|32~q\,
	combout => \inst7|31~0_combout\);

-- Location: LCCOMB_X29_Y15_N30
\inst7|31~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|31~feeder_combout\ = \inst7|31~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|31~0_combout\,
	combout => \inst7|31~feeder_combout\);

-- Location: FF_X29_Y15_N31
\inst7|31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|ALT_INV_34~q\,
	d => \inst7|31~feeder_combout\,
	clrn => \ALT_INV_inst13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|31~q\);

-- Location: LCCOMB_X29_Y15_N6
\inst7|29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|29~combout\ = LCELL((\inst7|31~q\) # (!\inst7|34~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|31~q\,
	datad => \inst7|34~q\,
	combout => \inst7|29~combout\);

-- Location: LCCOMB_X30_Y15_N24
\inst7|33~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|33~0_combout\ = !\inst7|33~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|33~q\,
	combout => \inst7|33~0_combout\);

-- Location: LCCOMB_X30_Y15_N30
\inst7|33~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|33~feeder_combout\ = \inst7|33~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|33~0_combout\,
	combout => \inst7|33~feeder_combout\);

-- Location: FF_X30_Y15_N31
\inst7|33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|29~combout\,
	d => \inst7|33~feeder_combout\,
	clrn => \ALT_INV_inst13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|33~q\);

-- Location: LCCOMB_X30_Y15_N14
inst9 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9~combout\ = (\inst7|33~q\ & \inst7|32~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|33~q\,
	datad => \inst7|32~q\,
	combout => \inst9~combout\);

-- Location: IOIBUF_X41_Y15_N8
\h~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_h,
	o => \h~input_o\);

-- Location: LCCOMB_X40_Y15_N6
inst17 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17~combout\ = LCELL((\pause_h~input_o\ & ((\h~input_o\))) # (!\pause_h~input_o\ & (\inst9~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pause_h~input_o\,
	datac => \inst9~combout\,
	datad => \h~input_o\,
	combout => \inst17~combout\);

-- Location: CLKCTRL_G8
\inst17~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst17~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst17~clkctrl_outclk\);

-- Location: LCCOMB_X26_Y16_N20
\inst11|7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|7~0_combout\ = !\inst11|7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|7~q\,
	combout => \inst11|7~0_combout\);

-- Location: LCCOMB_X26_Y16_N22
\inst11|7~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|7~feeder_combout\ = \inst11|7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|7~0_combout\,
	combout => \inst11|7~feeder_combout\);

-- Location: LCCOMB_X27_Y16_N28
\inst12~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst12~feeder_combout\);

-- Location: LCCOMB_X26_Y16_N30
\inst11|20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|20~combout\ = LCELL((\inst11|3~q\) # (!\inst11|7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|7~q\,
	datad => \inst11|3~q\,
	combout => \inst11|20~combout\);

-- Location: LCCOMB_X26_Y16_N18
\inst11|6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|6~0_combout\ = !\inst11|6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|6~q\,
	combout => \inst11|6~0_combout\);

-- Location: FF_X26_Y16_N31
\inst11|6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|20~combout\,
	asdata => \inst11|6~0_combout\,
	clrn => \ALT_INV_inst19~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|6~q\);

-- Location: LCCOMB_X24_Y16_N10
\inst11|5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|5~0_combout\ = !\inst11|5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|5~q\,
	combout => \inst11|5~0_combout\);

-- Location: FF_X24_Y16_N11
\inst11|5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_6~q\,
	d => \inst11|5~0_combout\,
	clrn => \ALT_INV_inst19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|5~q\);

-- Location: LCCOMB_X29_Y16_N28
\inst11|34~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|34~0_combout\ = !\inst11|34~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|34~q\,
	combout => \inst11|34~0_combout\);

-- Location: LCCOMB_X29_Y16_N30
\inst11|34~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|34~feeder_combout\ = \inst11|34~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst11|34~0_combout\,
	combout => \inst11|34~feeder_combout\);

-- Location: FF_X29_Y16_N31
\inst11|34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_3~q\,
	d => \inst11|34~feeder_combout\,
	clrn => \ALT_INV_inst19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|34~q\);

-- Location: LCCOMB_X28_Y16_N18
\inst11|32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|32~0_combout\ = !\inst11|32~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|32~q\,
	combout => \inst11|32~0_combout\);

-- Location: FF_X28_Y16_N19
\inst11|32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_33~q\,
	d => \inst11|32~0_combout\,
	clrn => \ALT_INV_inst19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|32~q\);

-- Location: LCCOMB_X28_Y16_N20
\inst11|31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|31~0_combout\ = (\inst11|33~q\ & (!\inst11|31~q\ & \inst11|32~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|33~q\,
	datab => \inst11|31~q\,
	datad => \inst11|32~q\,
	combout => \inst11|31~0_combout\);

-- Location: LCCOMB_X28_Y16_N2
\inst11|31~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|31~feeder_combout\ = \inst11|31~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst11|31~0_combout\,
	combout => \inst11|31~feeder_combout\);

-- Location: FF_X28_Y16_N3
\inst11|31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_34~q\,
	d => \inst11|31~feeder_combout\,
	clrn => \ALT_INV_inst19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|31~q\);

-- Location: LCCOMB_X28_Y16_N6
\inst11|29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|29~combout\ = LCELL((\inst11|31~q\) # (!\inst11|34~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|34~q\,
	datad => \inst11|31~q\,
	combout => \inst11|29~combout\);

-- Location: LCCOMB_X27_Y16_N18
\inst11|33~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|33~0_combout\ = !\inst11|33~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst11|33~q\,
	combout => \inst11|33~0_combout\);

-- Location: LCCOMB_X27_Y16_N14
\inst11|33~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|33~feeder_combout\ = \inst11|33~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|33~0_combout\,
	combout => \inst11|33~feeder_combout\);

-- Location: FF_X27_Y16_N15
\inst11|33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|29~combout\,
	d => \inst11|33~feeder_combout\,
	clrn => \ALT_INV_inst19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|33~q\);

-- Location: LCCOMB_X27_Y16_N30
inst15654645 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15654645~combout\ = (\inst11|5~q\ & \inst11|33~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|5~q\,
	datad => \inst11|33~q\,
	combout => \inst15654645~combout\);

-- Location: FF_X27_Y16_N29
inst12 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17~clkctrl_outclk\,
	d => \inst12~feeder_combout\,
	clrn => \ALT_INV_inst15654645~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12~q\);

-- Location: LCCOMB_X27_Y16_N6
inst19 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19~combout\ = (\clearall~input_o\) # (!\inst12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clearall~input_o\,
	datad => \inst12~q\,
	combout => \inst19~combout\);

-- Location: FF_X26_Y16_N23
\inst11|7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inst17~clkctrl_outclk\,
	d => \inst11|7~feeder_combout\,
	clrn => \ALT_INV_inst19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|7~q\);

-- Location: LCCOMB_X24_Y16_N0
\inst11|3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|3~0_combout\ = (!\inst11|3~q\ & (\inst11|6~q\ & \inst11|5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|3~q\,
	datab => \inst11|6~q\,
	datad => \inst11|5~q\,
	combout => \inst11|3~0_combout\);

-- Location: LCCOMB_X24_Y16_N16
\inst11|3~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|3~feeder_combout\ = \inst11|3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst11|3~0_combout\,
	combout => \inst11|3~feeder_combout\);

-- Location: FF_X24_Y16_N17
\inst11|3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_7~q\,
	d => \inst11|3~feeder_combout\,
	clrn => \ALT_INV_inst19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|3~q\);

ww_h_one(3) <= \h_one[3]~output_o\;

ww_h_one(2) <= \h_one[2]~output_o\;

ww_h_one(1) <= \h_one[1]~output_o\;

ww_h_one(0) <= \h_one[0]~output_o\;

ww_h_ten(3) <= \h_ten[3]~output_o\;

ww_h_ten(2) <= \h_ten[2]~output_o\;

ww_h_ten(1) <= \h_ten[1]~output_o\;

ww_h_ten(0) <= \h_ten[0]~output_o\;

ww_min_one(3) <= \min_one[3]~output_o\;

ww_min_one(2) <= \min_one[2]~output_o\;

ww_min_one(1) <= \min_one[1]~output_o\;

ww_min_one(0) <= \min_one[0]~output_o\;

ww_min_ten(3) <= \min_ten[3]~output_o\;

ww_min_ten(2) <= \min_ten[2]~output_o\;

ww_min_ten(1) <= \min_ten[1]~output_o\;

ww_min_ten(0) <= \min_ten[0]~output_o\;

ww_sec_one(3) <= \sec_one[3]~output_o\;

ww_sec_one(2) <= \sec_one[2]~output_o\;

ww_sec_one(1) <= \sec_one[1]~output_o\;

ww_sec_one(0) <= \sec_one[0]~output_o\;

ww_sec_ten(3) <= \sec_ten[3]~output_o\;

ww_sec_ten(2) <= \sec_ten[2]~output_o\;

ww_sec_ten(1) <= \sec_ten[1]~output_o\;

ww_sec_ten(0) <= \sec_ten[0]~output_o\;
END structure;


