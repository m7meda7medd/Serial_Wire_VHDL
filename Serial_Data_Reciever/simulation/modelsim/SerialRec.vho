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

-- DATE "12/23/2022 00:45:25"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SerialRec IS
    PORT (
	din : IN std_logic;
	clk : IN std_logic;
	data : BUFFER std_logic_vector(0 TO 6);
	err : BUFFER std_logic;
	data_Valid : BUFFER std_logic
	);
END SerialRec;

-- Design Ports Information
-- data[6]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[5]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[4]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[0]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- err	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_Valid	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SerialRec IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_din : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_data : std_logic_vector(0 TO 6);
SIGNAL ww_err : std_logic;
SIGNAL ww_data_Valid : std_logic;
SIGNAL \Equal0~10clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data[6]~output_o\ : std_logic;
SIGNAL \data[5]~output_o\ : std_logic;
SIGNAL \data[4]~output_o\ : std_logic;
SIGNAL \data[3]~output_o\ : std_logic;
SIGNAL \data[2]~output_o\ : std_logic;
SIGNAL \data[1]~output_o\ : std_logic;
SIGNAL \data[0]~output_o\ : std_logic;
SIGNAL \err~output_o\ : std_logic;
SIGNAL \data_Valid~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \counter[0]~1_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \din~input_o\ : std_logic;
SIGNAL \Decoder0~9_combout\ : std_logic;
SIGNAL \Reg[9]~9_combout\ : std_logic;
SIGNAL \Reg[9]~feeder_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Equal0~10clkctrl_outclk\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \counter[3]~0_combout\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \Reg[8]~8_combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \Reg[0]~6_combout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \Reg[1]~5_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \Reg[3]~7_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Reg[2]~0_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \Reg[5]~2_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \Reg[4]~3_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \Reg[7]~4_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \Reg[6]~1_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \data~0_combout\ : std_logic;
SIGNAL \data[6]$latch~combout\ : std_logic;
SIGNAL \data~1_combout\ : std_logic;
SIGNAL \data[5]$latch~combout\ : std_logic;
SIGNAL \data~2_combout\ : std_logic;
SIGNAL \data[4]$latch~combout\ : std_logic;
SIGNAL \data~3_combout\ : std_logic;
SIGNAL \data[3]$latch~combout\ : std_logic;
SIGNAL \data~4_combout\ : std_logic;
SIGNAL \data[2]$latch~combout\ : std_logic;
SIGNAL \data~5_combout\ : std_logic;
SIGNAL \data[1]$latch~combout\ : std_logic;
SIGNAL \data~6_combout\ : std_logic;
SIGNAL \data[0]$latch~combout\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \err$latch~combout\ : std_logic;
SIGNAL \data_Valid$latch~combout\ : std_logic;
SIGNAL Reg : std_logic_vector(9 DOWNTO 0);
SIGNAL counter : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Equal0~10clkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_din <= din;
ww_clk <= clk;
data <= ww_data;
err <= ww_err;
data_Valid <= ww_data_Valid;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Equal0~10clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Equal0~10_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_Equal0~10clkctrl_outclk\ <= NOT \Equal0~10clkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y7_N2
\data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data[6]$latch~combout\,
	devoe => ww_devoe,
	o => \data[6]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data[5]$latch~combout\,
	devoe => ww_devoe,
	o => \data[5]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data[4]$latch~combout\,
	devoe => ww_devoe,
	o => \data[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data[3]$latch~combout\,
	devoe => ww_devoe,
	o => \data[3]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data[2]$latch~combout\,
	devoe => ww_devoe,
	o => \data[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data[1]$latch~combout\,
	devoe => ww_devoe,
	o => \data[1]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data[0]$latch~combout\,
	devoe => ww_devoe,
	o => \data[0]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\err~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \err$latch~combout\,
	devoe => ww_devoe,
	o => \err~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\data_Valid~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_Valid$latch~combout\,
	devoe => ww_devoe,
	o => \data_Valid~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: LCCOMB_X4_Y11_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = counter(0) $ (GND)
-- \Add0~1\ = CARRY(!counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X3_Y11_N28
\counter[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0]~1_combout\ = !\Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	combout => \counter[0]~1_combout\);

-- Location: LCCOMB_X4_Y11_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (counter(3) & (!\Add0~5\)) # (!counter(3) & (\Add0~5\ & VCC))
-- \Add0~7\ = CARRY((counter(3) & !\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X4_Y11_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (counter(4) & ((GND) # (!\Add0~7\))) # (!counter(4) & (\Add0~7\ $ (GND)))
-- \Add0~9\ = CARRY((counter(4)) # (!\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: IOIBUF_X0_Y6_N15
\din~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din,
	o => \din~input_o\);

-- Location: LCCOMB_X3_Y11_N24
\Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~9_combout\ = (!\Add0~2_combout\ & (\Add0~0_combout\ & (!\Add0~4_combout\ & \Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add0~0_combout\,
	datac => \Add0~4_combout\,
	datad => \Add0~6_combout\,
	combout => \Decoder0~9_combout\);

-- Location: LCCOMB_X3_Y11_N10
\Reg[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg[9]~9_combout\ = (\din~input_o\) # ((Reg(9) & !\Decoder0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Reg(9),
	datac => \din~input_o\,
	datad => \Decoder0~9_combout\,
	combout => \Reg[9]~9_combout\);

-- Location: LCCOMB_X3_Y11_N22
\Reg[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg[9]~feeder_combout\ = \Reg[9]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Reg[9]~9_combout\,
	combout => \Reg[9]~feeder_combout\);

-- Location: FF_X3_Y11_N23
\Reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg[9]~feeder_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Reg(9));

-- Location: FF_X4_Y11_N9
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~8_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	ena => Reg(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X4_Y11_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (counter(5) & (\Add0~9\ & VCC)) # (!counter(5) & (!\Add0~9\))
-- \Add0~11\ = CARRY((!counter(5) & !\Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X4_Y11_N11
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~10_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	ena => Reg(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X4_Y11_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (counter(6) & ((GND) # (!\Add0~11\))) # (!counter(6) & (\Add0~11\ $ (GND)))
-- \Add0~13\ = CARRY((counter(6)) # (!\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X4_Y11_N13
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~12_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	ena => Reg(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X4_Y11_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (counter(7) & (\Add0~13\ & VCC)) # (!counter(7) & (!\Add0~13\))
-- \Add0~15\ = CARRY((!counter(7) & !\Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X4_Y11_N15
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~14_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	ena => Reg(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X4_Y11_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (counter(8) & ((GND) # (!\Add0~15\))) # (!counter(8) & (\Add0~15\ $ (GND)))
-- \Add0~17\ = CARRY((counter(8)) # (!\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X4_Y11_N17
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~16_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	ena => Reg(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X4_Y11_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (counter(9) & (\Add0~17\ & VCC)) # (!counter(9) & (!\Add0~17\))
-- \Add0~19\ = CARRY((!counter(9) & !\Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X4_Y11_N19
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~18_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	ena => Reg(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X4_Y11_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (counter(10) & ((GND) # (!\Add0~19\))) # (!counter(10) & (\Add0~19\ $ (GND)))
-- \Add0~21\ = CARRY((counter(10)) # (!\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X4_Y11_N21
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~20_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	ena => Reg(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X4_Y11_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (counter(11) & (\Add0~21\ & VCC)) # (!counter(11) & (!\Add0~21\))
-- \Add0~23\ = CARRY((!counter(11) & !\Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X4_Y11_N23
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~22_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	ena => Reg(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LCCOMB_X4_Y11_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (counter(12) & ((GND) # (!\Add0~23\))) # (!counter(12) & (\Add0~23\ $ (GND)))
-- \Add0~25\ = CARRY((counter(12)) # (!\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X4_Y11_N25
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~24_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	ena => Reg(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X4_Y11_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (counter(13) & (\Add0~25\ & VCC)) # (!counter(13) & (!\Add0~25\))
-- \Add0~27\ = CARRY((!counter(13) & !\Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: FF_X4_Y11_N27
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~26_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	ena => Reg(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LCCOMB_X4_Y11_N28
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (counter(14) & ((GND) # (!\Add0~27\))) # (!counter(14) & (\Add0~27\ $ (GND)))
-- \Add0~29\ = CARRY((counter(14)) # (!\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: FF_X4_Y11_N29
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~28_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	ena => Reg(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LCCOMB_X4_Y11_N30
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (counter(15) & (\Add0~29\ & VCC)) # (!counter(15) & (!\Add0~29\))
-- \Add0~31\ = CARRY((!counter(15) & !\Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X4_Y11_N31
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~30_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	ena => Reg(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LCCOMB_X3_Y11_N8
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!counter(15) & (!counter(14) & (!counter(12) & !counter(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datab => counter(14),
	datac => counter(12),
	datad => counter(13),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X3_Y11_N14
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!counter(10) & (!counter(9) & (!counter(8) & !counter(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(10),
	datab => counter(9),
	datac => counter(8),
	datad => counter(11),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X5_Y11_N2
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!counter(1) & !counter(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datad => counter(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X5_Y11_N18
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!counter(7) & (!counter(6) & (!counter(5) & !counter(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datab => counter(6),
	datac => counter(5),
	datad => counter(4),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X5_Y11_N4
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (counter(3) & counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => counter(3),
	datad => counter(0),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X4_Y10_N0
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (counter(16) & ((GND) # (!\Add0~31\))) # (!counter(16) & (\Add0~31\ $ (GND)))
-- \Add0~33\ = CARRY((counter(16)) # (!\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X4_Y10_N1
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~32_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	ena => Reg(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LCCOMB_X4_Y10_N2
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (counter(17) & (\Add0~33\ & VCC)) # (!counter(17) & (!\Add0~33\))
-- \Add0~35\ = CARRY((!counter(17) & !\Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X4_Y10_N3
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~34_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	ena => Reg(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LCCOMB_X4_Y10_N4
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (counter(18) & ((GND) # (!\Add0~35\))) # (!counter(18) & (\Add0~35\ $ (GND)))
-- \Add0~37\ = CARRY((counter(18)) # (!\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X4_Y10_N5
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~36_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	ena => Reg(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LCCOMB_X4_Y10_N6
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (counter(19) & (\Add0~37\ & VCC)) # (!counter(19) & (!\Add0~37\))
-- \Add0~39\ = CARRY((!counter(19) & !\Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: FF_X4_Y10_N7
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~38_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	ena => Reg(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LCCOMB_X4_Y10_N8
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (counter(20) & ((GND) # (!\Add0~39\))) # (!counter(20) & (\Add0~39\ $ (GND)))
-- \Add0~41\ = CARRY((counter(20)) # (!\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: FF_X4_Y10_N9
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~40_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	ena => Reg(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LCCOMB_X4_Y10_N10
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (counter(21) & (\Add0~41\ & VCC)) # (!counter(21) & (!\Add0~41\))
-- \Add0~43\ = CARRY((!counter(21) & !\Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: FF_X4_Y10_N11
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~42_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	ena => Reg(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LCCOMB_X4_Y10_N12
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (counter(22) & ((GND) # (!\Add0~43\))) # (!counter(22) & (\Add0~43\ $ (GND)))
-- \Add0~45\ = CARRY((counter(22)) # (!\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: FF_X4_Y10_N13
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~44_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	ena => Reg(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: LCCOMB_X4_Y10_N14
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (counter(23) & (\Add0~45\ & VCC)) # (!counter(23) & (!\Add0~45\))
-- \Add0~47\ = CARRY((!counter(23) & !\Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X4_Y10_N15
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~46_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	ena => Reg(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: LCCOMB_X5_Y10_N0
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!counter(23) & (!counter(20) & (!counter(21) & !counter(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(23),
	datab => counter(20),
	datac => counter(21),
	datad => counter(22),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X4_Y10_N16
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (counter(24) & ((GND) # (!\Add0~47\))) # (!counter(24) & (\Add0~47\ $ (GND)))
-- \Add0~49\ = CARRY((counter(24)) # (!\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X4_Y10_N17
\counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~48_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	ena => Reg(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(24));

-- Location: LCCOMB_X4_Y10_N18
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (counter(25) & (\Add0~49\ & VCC)) # (!counter(25) & (!\Add0~49\))
-- \Add0~51\ = CARRY((!counter(25) & !\Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: FF_X4_Y10_N19
\counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~50_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	ena => Reg(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(25));

-- Location: LCCOMB_X4_Y10_N20
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (counter(26) & ((GND) # (!\Add0~51\))) # (!counter(26) & (\Add0~51\ $ (GND)))
-- \Add0~53\ = CARRY((counter(26)) # (!\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: FF_X4_Y10_N21
\counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~52_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	ena => Reg(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(26));

-- Location: LCCOMB_X4_Y10_N22
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (counter(27) & (\Add0~53\ & VCC)) # (!counter(27) & (!\Add0~53\))
-- \Add0~55\ = CARRY((!counter(27) & !\Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: FF_X4_Y10_N23
\counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~54_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	ena => Reg(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(27));

-- Location: LCCOMB_X5_Y11_N24
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!counter(25) & (!counter(24) & (!counter(26) & !counter(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(25),
	datab => counter(24),
	datac => counter(26),
	datad => counter(27),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X5_Y11_N14
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!counter(17) & (!counter(19) & (!counter(16) & !counter(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(17),
	datab => counter(19),
	datac => counter(16),
	datad => counter(18),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X4_Y10_N24
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (counter(28) & ((GND) # (!\Add0~55\))) # (!counter(28) & (\Add0~55\ $ (GND)))
-- \Add0~57\ = CARRY((counter(28)) # (!\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: FF_X4_Y10_N25
\counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~56_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	ena => Reg(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(28));

-- Location: LCCOMB_X4_Y10_N26
\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (counter(29) & (\Add0~57\ & VCC)) # (!counter(29) & (!\Add0~57\))
-- \Add0~59\ = CARRY((!counter(29) & !\Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: FF_X4_Y10_N27
\counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~58_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	ena => Reg(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(29));

-- Location: LCCOMB_X4_Y10_N28
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (counter(30) & ((GND) # (!\Add0~59\))) # (!counter(30) & (\Add0~59\ $ (GND)))
-- \Add0~61\ = CARRY((counter(30)) # (!\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: FF_X4_Y10_N29
\counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~60_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	ena => Reg(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(30));

-- Location: LCCOMB_X4_Y10_N30
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = counter(31) $ (!\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: FF_X4_Y10_N31
\counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~62_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	ena => Reg(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(31));

-- Location: LCCOMB_X5_Y11_N0
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!counter(30) & (!counter(28) & (!counter(31) & !counter(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(30),
	datab => counter(28),
	datac => counter(31),
	datad => counter(29),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X5_Y11_N20
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~6_combout\ & (\Equal0~7_combout\ & (\Equal0~5_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X5_Y11_N30
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~4_combout\ & (\Equal0~3_combout\ & (\Equal0~2_combout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~9_combout\,
	combout => \Equal0~10_combout\);

-- Location: CLKCTRL_G3
\Equal0~10clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Equal0~10clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Equal0~10clkctrl_outclk\);

-- Location: FF_X5_Y11_N3
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter[0]~1_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	sload => VCC,
	ena => Reg(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X4_Y11_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (counter(1) & (\Add0~1\ & VCC)) # (!counter(1) & (!\Add0~1\))
-- \Add0~3\ = CARRY((!counter(1) & !\Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X5_Y11_N7
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Add0~2_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	sload => VCC,
	ena => Reg(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X4_Y11_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (counter(2) & ((GND) # (!\Add0~3\))) # (!counter(2) & (\Add0~3\ $ (GND)))
-- \Add0~5\ = CARRY((counter(2)) # (!\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X4_Y11_N5
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~4_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	ena => Reg(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X3_Y11_N20
\counter[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[3]~0_combout\ = !\Add0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~6_combout\,
	combout => \counter[3]~0_combout\);

-- Location: FF_X3_Y11_N21
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \counter[3]~0_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	ena => Reg(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X5_Y9_N18
\Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~8_combout\ = (!\Add0~2_combout\ & (!\Add0~0_combout\ & (\Add0~6_combout\ & !\Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add0~0_combout\,
	datac => \Add0~6_combout\,
	datad => \Add0~4_combout\,
	combout => \Decoder0~8_combout\);

-- Location: LCCOMB_X5_Y9_N20
\Reg[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg[8]~8_combout\ = (Reg(9) & ((\Decoder0~8_combout\ & (\din~input_o\)) # (!\Decoder0~8_combout\ & ((Reg(8)))))) # (!Reg(9) & (((Reg(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Reg(9),
	datab => \din~input_o\,
	datac => Reg(8),
	datad => \Decoder0~8_combout\,
	combout => \Reg[8]~8_combout\);

-- Location: FF_X5_Y9_N21
\Reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg[8]~8_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Reg(8));

-- Location: LCCOMB_X6_Y11_N16
\Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (!counter(3) & ((counter(0) & (Reg(8))) # (!counter(0) & ((Reg(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(0),
	datac => Reg(8),
	datad => Reg(9),
	combout => \Mux0~7_combout\);

-- Location: LCCOMB_X3_Y11_N18
\Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (!\Add0~2_combout\ & (!\Add0~0_combout\ & (!\Add0~4_combout\ & !\Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add0~0_combout\,
	datac => \Add0~4_combout\,
	datad => \Add0~6_combout\,
	combout => \Decoder0~6_combout\);

-- Location: LCCOMB_X3_Y11_N6
\Reg[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg[0]~6_combout\ = (Reg(9) & ((\Decoder0~6_combout\ & ((\din~input_o\))) # (!\Decoder0~6_combout\ & (Reg(0))))) # (!Reg(9) & (Reg(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Reg(9),
	datab => Reg(0),
	datac => \din~input_o\,
	datad => \Decoder0~6_combout\,
	combout => \Reg[0]~6_combout\);

-- Location: FF_X4_Y11_N7
\Reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Reg[0]~6_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Reg(0));

-- Location: LCCOMB_X3_Y11_N0
\Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (!\Add0~6_combout\ & (\Add0~0_combout\ & (!\Add0~2_combout\ & !\Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add0~0_combout\,
	datac => \Add0~2_combout\,
	datad => \Add0~4_combout\,
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X3_Y11_N26
\Reg[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg[1]~5_combout\ = (Reg(9) & ((\Decoder0~5_combout\ & (\din~input_o\)) # (!\Decoder0~5_combout\ & ((Reg(1)))))) # (!Reg(9) & (((Reg(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Reg(9),
	datab => \din~input_o\,
	datac => Reg(1),
	datad => \Decoder0~5_combout\,
	combout => \Reg[1]~5_combout\);

-- Location: FF_X3_Y11_N27
\Reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg[1]~5_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Reg(1));

-- Location: LCCOMB_X5_Y11_N12
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (counter(1) & (!counter(0))) # (!counter(1) & ((counter(0) & (Reg(0))) # (!counter(0) & ((Reg(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datac => Reg(0),
	datad => Reg(1),
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X5_Y9_N24
\Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (\Add0~2_combout\ & (\Add0~0_combout\ & (!\Add0~6_combout\ & !\Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add0~0_combout\,
	datac => \Add0~6_combout\,
	datad => \Add0~4_combout\,
	combout => \Decoder0~7_combout\);

-- Location: LCCOMB_X5_Y9_N26
\Reg[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg[3]~7_combout\ = (Reg(9) & ((\Decoder0~7_combout\ & (\din~input_o\)) # (!\Decoder0~7_combout\ & ((Reg(3)))))) # (!Reg(9) & (((Reg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Reg(9),
	datab => \din~input_o\,
	datac => Reg(3),
	datad => \Decoder0~7_combout\,
	combout => \Reg[3]~7_combout\);

-- Location: FF_X5_Y9_N27
\Reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg[3]~7_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Reg(3));

-- Location: LCCOMB_X5_Y9_N30
\Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (\Add0~2_combout\ & (!\Add0~0_combout\ & (!\Add0~6_combout\ & !\Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add0~0_combout\,
	datac => \Add0~6_combout\,
	datad => \Add0~4_combout\,
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X5_Y9_N8
\Reg[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg[2]~0_combout\ = (Reg(9) & ((\Decoder0~0_combout\ & (\din~input_o\)) # (!\Decoder0~0_combout\ & ((Reg(2)))))) # (!Reg(9) & (((Reg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Reg(9),
	datab => \din~input_o\,
	datac => Reg(2),
	datad => \Decoder0~0_combout\,
	combout => \Reg[2]~0_combout\);

-- Location: FF_X5_Y9_N9
\Reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg[2]~0_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Reg(2));

-- Location: LCCOMB_X5_Y11_N26
\Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\Mux0~4_combout\ & ((Reg(3)) # ((!counter(1))))) # (!\Mux0~4_combout\ & (((counter(1) & Reg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~4_combout\,
	datab => Reg(3),
	datac => counter(1),
	datad => Reg(2),
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X5_Y9_N10
\Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!\Add0~2_combout\ & (\Add0~0_combout\ & (!\Add0~6_combout\ & \Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add0~0_combout\,
	datac => \Add0~6_combout\,
	datad => \Add0~4_combout\,
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X5_Y9_N0
\Reg[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg[5]~2_combout\ = (Reg(9) & ((\Decoder0~2_combout\ & (\din~input_o\)) # (!\Decoder0~2_combout\ & ((Reg(5)))))) # (!Reg(9) & (((Reg(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Reg(9),
	datab => \din~input_o\,
	datac => Reg(5),
	datad => \Decoder0~2_combout\,
	combout => \Reg[5]~2_combout\);

-- Location: FF_X5_Y9_N1
\Reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg[5]~2_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Reg(5));

-- Location: LCCOMB_X5_Y9_N12
\Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (!\Add0~2_combout\ & (!\Add0~0_combout\ & (!\Add0~6_combout\ & \Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add0~0_combout\,
	datac => \Add0~6_combout\,
	datad => \Add0~4_combout\,
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X5_Y9_N6
\Reg[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg[4]~3_combout\ = (Reg(9) & ((\Decoder0~3_combout\ & (\din~input_o\)) # (!\Decoder0~3_combout\ & ((Reg(4)))))) # (!Reg(9) & (((Reg(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Reg(9),
	datab => \din~input_o\,
	datac => Reg(4),
	datad => \Decoder0~3_combout\,
	combout => \Reg[4]~3_combout\);

-- Location: FF_X5_Y9_N7
\Reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg[4]~3_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Reg(4));

-- Location: LCCOMB_X5_Y11_N6
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (counter(0) & (((!counter(1) & Reg(4))))) # (!counter(0) & ((Reg(5)) # ((counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Reg(5),
	datab => counter(0),
	datac => counter(1),
	datad => Reg(4),
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X5_Y9_N22
\Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (\Add0~2_combout\ & (\Add0~0_combout\ & (!\Add0~6_combout\ & \Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add0~0_combout\,
	datac => \Add0~6_combout\,
	datad => \Add0~4_combout\,
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X5_Y9_N4
\Reg[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg[7]~4_combout\ = (Reg(9) & ((\Decoder0~4_combout\ & (\din~input_o\)) # (!\Decoder0~4_combout\ & ((Reg(7)))))) # (!Reg(9) & (((Reg(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Reg(9),
	datab => \din~input_o\,
	datac => Reg(7),
	datad => \Decoder0~4_combout\,
	combout => \Reg[7]~4_combout\);

-- Location: FF_X5_Y9_N5
\Reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg[7]~4_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Reg(7));

-- Location: LCCOMB_X5_Y9_N28
\Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (\Add0~2_combout\ & (!\Add0~0_combout\ & (!\Add0~6_combout\ & \Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add0~0_combout\,
	datac => \Add0~6_combout\,
	datad => \Add0~4_combout\,
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X5_Y9_N2
\Reg[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg[6]~1_combout\ = (Reg(9) & ((\Decoder0~1_combout\ & (\din~input_o\)) # (!\Decoder0~1_combout\ & ((Reg(6)))))) # (!Reg(9) & (((Reg(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Reg(9),
	datab => \din~input_o\,
	datac => Reg(6),
	datad => \Decoder0~1_combout\,
	combout => \Reg[6]~1_combout\);

-- Location: FF_X5_Y9_N3
\Reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg[6]~1_combout\,
	clrn => \ALT_INV_Equal0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Reg(6));

-- Location: LCCOMB_X5_Y11_N8
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\Mux0~2_combout\ & ((Reg(7)) # ((!counter(1))))) # (!\Mux0~2_combout\ & (((counter(1) & Reg(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~2_combout\,
	datab => Reg(7),
	datac => counter(1),
	datad => Reg(6),
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X5_Y11_N28
\Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (counter(3) & ((counter(2) & ((\Mux0~3_combout\))) # (!counter(2) & (\Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~5_combout\,
	datab => \Mux0~3_combout\,
	datac => counter(3),
	datad => counter(2),
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X5_Y11_N16
\Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = (\Mux0~6_combout\) # ((\Mux0~7_combout\ & (!counter(1) & !counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~7_combout\,
	datab => \Mux0~6_combout\,
	datac => counter(1),
	datad => counter(2),
	combout => \Mux0~8_combout\);

-- Location: LCCOMB_X6_Y11_N2
\process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = counter(3) $ (((!counter(0) & (counter(1) & counter(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(0),
	datac => counter(1),
	datad => counter(2),
	combout => \process_0~4_combout\);

-- Location: LCCOMB_X6_Y11_N30
\process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (counter(3) & ((counter(2)) # ((!counter(0) & counter(1))))) # (!counter(3) & (counter(0) & (!counter(1) & !counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(0),
	datac => counter(1),
	datad => counter(2),
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X6_Y11_N28
\process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (counter(1) & (Reg(8))) # (!counter(1) & ((Reg(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datac => Reg(8),
	datad => Reg(9),
	combout => \process_0~3_combout\);

-- Location: LCCOMB_X5_Y11_N10
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (counter(0) & (((counter(1)) # (Reg(5))))) # (!counter(0) & (Reg(6) & (!counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Reg(6),
	datab => counter(0),
	datac => counter(1),
	datad => Reg(5),
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X5_Y11_N22
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\Mux1~2_combout\ & ((Reg(7)) # ((!counter(1))))) # (!\Mux1~2_combout\ & (((counter(1) & Reg(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~2_combout\,
	datab => Reg(7),
	datac => counter(1),
	datad => Reg(4),
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X6_Y11_N12
\process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = (\process_0~4_combout\ & (((\Mux1~3_combout\)) # (!\process_0~2_combout\))) # (!\process_0~4_combout\ & (\process_0~2_combout\ & (\process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~4_combout\,
	datab => \process_0~2_combout\,
	datac => \process_0~3_combout\,
	datad => \Mux1~3_combout\,
	combout => \process_0~5_combout\);

-- Location: LCCOMB_X5_Y9_N14
\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = Reg(4) $ (Reg(2) $ (Reg(3) $ (Reg(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Reg(4),
	datab => Reg(2),
	datac => Reg(3),
	datad => Reg(5),
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X5_Y9_N16
\process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = Reg(7) $ (Reg(6) $ (\process_0~0_combout\ $ (Reg(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Reg(7),
	datab => Reg(6),
	datac => \process_0~0_combout\,
	datad => Reg(8),
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X6_Y11_N26
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (counter(1) & (counter(0))) # (!counter(1) & ((counter(0) & (Reg(1))) # (!counter(0) & ((Reg(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datac => Reg(1),
	datad => Reg(2),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X6_Y11_N8
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (counter(1) & ((\Mux1~0_combout\ & (Reg(3))) # (!\Mux1~0_combout\ & ((Reg(0)))))) # (!counter(1) & (\Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => \Mux1~0_combout\,
	datac => Reg(3),
	datad => Reg(0),
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X6_Y11_N14
\process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = \process_0~1_combout\ $ (((\process_0~5_combout\ & ((\Mux1~1_combout\) # (\process_0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~5_combout\,
	datab => \process_0~1_combout\,
	datac => \Mux1~1_combout\,
	datad => \process_0~2_combout\,
	combout => \process_0~6_combout\);

-- Location: LCCOMB_X6_Y11_N20
\data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data~0_combout\ = (\Mux0~8_combout\ & (!\process_0~6_combout\ & Reg(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~8_combout\,
	datab => \process_0~6_combout\,
	datad => Reg(2),
	combout => \data~0_combout\);

-- Location: LCCOMB_X6_Y11_N0
\data[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[6]$latch~combout\ = (GLOBAL(\Equal0~10clkctrl_outclk\) & (\data~0_combout\)) # (!GLOBAL(\Equal0~10clkctrl_outclk\) & ((\data[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data~0_combout\,
	datab => \data[6]$latch~combout\,
	datad => \Equal0~10clkctrl_outclk\,
	combout => \data[6]$latch~combout\);

-- Location: LCCOMB_X7_Y11_N28
\data~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data~1_combout\ = (\Mux0~8_combout\ & (Reg(3) & !\process_0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~8_combout\,
	datac => Reg(3),
	datad => \process_0~6_combout\,
	combout => \data~1_combout\);

-- Location: LCCOMB_X7_Y11_N4
\data[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[5]$latch~combout\ = (GLOBAL(\Equal0~10clkctrl_outclk\) & (\data~1_combout\)) # (!GLOBAL(\Equal0~10clkctrl_outclk\) & ((\data[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data~1_combout\,
	datac => \data[5]$latch~combout\,
	datad => \Equal0~10clkctrl_outclk\,
	combout => \data[5]$latch~combout\);

-- Location: LCCOMB_X7_Y11_N18
\data~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \data~2_combout\ = (\Mux0~8_combout\ & (Reg(4) & !\process_0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~8_combout\,
	datac => Reg(4),
	datad => \process_0~6_combout\,
	combout => \data~2_combout\);

-- Location: LCCOMB_X7_Y11_N30
\data[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[4]$latch~combout\ = (GLOBAL(\Equal0~10clkctrl_outclk\) & (\data~2_combout\)) # (!GLOBAL(\Equal0~10clkctrl_outclk\) & ((\data[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data~2_combout\,
	datac => \data[4]$latch~combout\,
	datad => \Equal0~10clkctrl_outclk\,
	combout => \data[4]$latch~combout\);

-- Location: LCCOMB_X7_Y11_N20
\data~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \data~3_combout\ = (\Mux0~8_combout\ & (Reg(5) & !\process_0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~8_combout\,
	datac => Reg(5),
	datad => \process_0~6_combout\,
	combout => \data~3_combout\);

-- Location: LCCOMB_X7_Y11_N8
\data[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[3]$latch~combout\ = (GLOBAL(\Equal0~10clkctrl_outclk\) & (\data~3_combout\)) # (!GLOBAL(\Equal0~10clkctrl_outclk\) & ((\data[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data~3_combout\,
	datac => \data[3]$latch~combout\,
	datad => \Equal0~10clkctrl_outclk\,
	combout => \data[3]$latch~combout\);

-- Location: LCCOMB_X6_Y11_N6
\data~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \data~4_combout\ = (\Mux0~8_combout\ & (!\process_0~6_combout\ & Reg(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~8_combout\,
	datab => \process_0~6_combout\,
	datad => Reg(6),
	combout => \data~4_combout\);

-- Location: LCCOMB_X6_Y11_N18
\data[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[2]$latch~combout\ = (GLOBAL(\Equal0~10clkctrl_outclk\) & ((\data~4_combout\))) # (!GLOBAL(\Equal0~10clkctrl_outclk\) & (\data[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data[2]$latch~combout\,
	datac => \Equal0~10clkctrl_outclk\,
	datad => \data~4_combout\,
	combout => \data[2]$latch~combout\);

-- Location: LCCOMB_X6_Y11_N24
\data~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \data~5_combout\ = (\Mux0~8_combout\ & (!\process_0~6_combout\ & Reg(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~8_combout\,
	datab => \process_0~6_combout\,
	datac => Reg(7),
	combout => \data~5_combout\);

-- Location: LCCOMB_X6_Y11_N4
\data[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[1]$latch~combout\ = (GLOBAL(\Equal0~10clkctrl_outclk\) & (\data~5_combout\)) # (!GLOBAL(\Equal0~10clkctrl_outclk\) & ((\data[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data~5_combout\,
	datac => \data[1]$latch~combout\,
	datad => \Equal0~10clkctrl_outclk\,
	combout => \data[1]$latch~combout\);

-- Location: LCCOMB_X6_Y11_N22
\data~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \data~6_combout\ = (\Mux0~8_combout\ & (!\process_0~6_combout\ & Reg(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~8_combout\,
	datab => \process_0~6_combout\,
	datac => Reg(8),
	combout => \data~6_combout\);

-- Location: LCCOMB_X6_Y11_N10
\data[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[0]$latch~combout\ = (GLOBAL(\Equal0~10clkctrl_outclk\) & ((\data~6_combout\))) # (!GLOBAL(\Equal0~10clkctrl_outclk\) & (\data[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]$latch~combout\,
	datac => \Equal0~10clkctrl_outclk\,
	datad => \data~6_combout\,
	combout => \data[0]$latch~combout\);

-- Location: LCCOMB_X7_Y11_N2
\process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~7_combout\ = (\process_0~6_combout\) # (!\Mux0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~6_combout\,
	datac => \Mux0~8_combout\,
	combout => \process_0~7_combout\);

-- Location: LCCOMB_X7_Y11_N10
\err$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \err$latch~combout\ = (GLOBAL(\Equal0~10clkctrl_outclk\) & ((\process_0~7_combout\))) # (!GLOBAL(\Equal0~10clkctrl_outclk\) & (\err$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \err$latch~combout\,
	datac => \process_0~7_combout\,
	datad => \Equal0~10clkctrl_outclk\,
	combout => \err$latch~combout\);

-- Location: LCCOMB_X7_Y11_N24
\data_Valid$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Valid$latch~combout\ = (GLOBAL(\Equal0~10clkctrl_outclk\) & ((!\process_0~7_combout\))) # (!GLOBAL(\Equal0~10clkctrl_outclk\) & (\data_Valid$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_Valid$latch~combout\,
	datac => \process_0~7_combout\,
	datad => \Equal0~10clkctrl_outclk\,
	combout => \data_Valid$latch~combout\);

ww_data(6) <= \data[6]~output_o\;

ww_data(5) <= \data[5]~output_o\;

ww_data(4) <= \data[4]~output_o\;

ww_data(3) <= \data[3]~output_o\;

ww_data(2) <= \data[2]~output_o\;

ww_data(1) <= \data[1]~output_o\;

ww_data(0) <= \data[0]~output_o\;

ww_err <= \err~output_o\;

ww_data_Valid <= \data_Valid~output_o\;
END structure;


