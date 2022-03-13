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

-- DATE "03/09/2022 11:14:05"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	unidade_controle IS
    PORT (
	clock : IN std_logic;
	op_code : IN std_logic_vector(3 DOWNTO 0);
	jump : OUT std_logic;
	branch : OUT std_logic;
	mem_read : OUT std_logic;
	mem_to_reg : OUT std_logic;
	ula_op : OUT std_logic_vector(3 DOWNTO 0);
	mem_write : OUT std_logic;
	ula_src : OUT std_logic;
	reg_write : OUT std_logic
	);
END unidade_controle;

ARCHITECTURE structure OF unidade_controle IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_op_code : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_jump : std_logic;
SIGNAL ww_branch : std_logic;
SIGNAL ww_mem_read : std_logic;
SIGNAL ww_mem_to_reg : std_logic;
SIGNAL ww_ula_op : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_mem_write : std_logic;
SIGNAL ww_ula_src : std_logic;
SIGNAL ww_reg_write : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \jump~output_o\ : std_logic;
SIGNAL \branch~output_o\ : std_logic;
SIGNAL \mem_read~output_o\ : std_logic;
SIGNAL \mem_to_reg~output_o\ : std_logic;
SIGNAL \ula_op[0]~output_o\ : std_logic;
SIGNAL \ula_op[1]~output_o\ : std_logic;
SIGNAL \ula_op[2]~output_o\ : std_logic;
SIGNAL \ula_op[3]~output_o\ : std_logic;
SIGNAL \mem_write~output_o\ : std_logic;
SIGNAL \ula_src~output_o\ : std_logic;
SIGNAL \reg_write~output_o\ : std_logic;
SIGNAL \op_code[0]~input_o\ : std_logic;
SIGNAL \op_code[1]~input_o\ : std_logic;
SIGNAL \op_code[3]~input_o\ : std_logic;
SIGNAL \op_code[2]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~0_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_op_code <= op_code;
jump <= ww_jump;
branch <= ww_branch;
mem_read <= ww_mem_read;
mem_to_reg <= ww_mem_to_reg;
ula_op <= ww_ula_op;
mem_write <= ww_mem_write;
ula_src <= ww_ula_src;
reg_write <= ww_reg_write;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux10~0_combout\ <= NOT \Mux10~0_combout\;

\jump~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \jump~output_o\);

\branch~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \branch~output_o\);

\mem_read~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \mem_read~output_o\);

\mem_to_reg~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \mem_to_reg~output_o\);

\ula_op[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => \ula_op[0]~output_o\);

\ula_op[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \ula_op[1]~output_o\);

\ula_op[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \ula_op[2]~output_o\);

\ula_op[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \ula_op[3]~output_o\);

\mem_write~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \mem_write~output_o\);

\ula_src~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \ula_src~output_o\);

\reg_write~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux10~0_combout\,
	devoe => ww_devoe,
	o => \reg_write~output_o\);

\op_code[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_code(0),
	o => \op_code[0]~input_o\);

\op_code[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_code(1),
	o => \op_code[1]~input_o\);

\op_code[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_code(3),
	o => \op_code[3]~input_o\);

\op_code[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_code(2),
	o => \op_code[2]~input_o\);

\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\op_code[0]~input_o\ & (\op_code[1]~input_o\ & (\op_code[3]~input_o\ & !\op_code[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_code[0]~input_o\,
	datab => \op_code[1]~input_o\,
	datac => \op_code[3]~input_o\,
	datad => \op_code[2]~input_o\,
	combout => \Mux0~0_combout\);

\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\op_code[0]~input_o\ & (\op_code[1]~input_o\ & (\op_code[2]~input_o\ & !\op_code[3]~input_o\))) # (!\op_code[0]~input_o\ & (!\op_code[1]~input_o\ & (!\op_code[2]~input_o\ & \op_code[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_code[0]~input_o\,
	datab => \op_code[1]~input_o\,
	datac => \op_code[2]~input_o\,
	datad => \op_code[3]~input_o\,
	combout => \Mux1~0_combout\);

\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\op_code[2]~input_o\ & (!\op_code[0]~input_o\ & (!\op_code[1]~input_o\ & !\op_code[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_code[2]~input_o\,
	datab => \op_code[0]~input_o\,
	datac => \op_code[1]~input_o\,
	datad => \op_code[3]~input_o\,
	combout => \Mux2~0_combout\);

\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\op_code[3]~input_o\ & (((\op_code[1]~input_o\) # (\op_code[2]~input_o\)) # (!\op_code[0]~input_o\))) # (!\op_code[3]~input_o\ & (\op_code[0]~input_o\ $ (((\op_code[1]~input_o\ & \op_code[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_code[0]~input_o\,
	datab => \op_code[1]~input_o\,
	datac => \op_code[2]~input_o\,
	datad => \op_code[3]~input_o\,
	combout => \Mux7~0_combout\);

\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\op_code[0]~input_o\ & ((\op_code[3]~input_o\) # ((\op_code[1]~input_o\ & !\op_code[2]~input_o\)))) # (!\op_code[0]~input_o\ & ((\op_code[1]~input_o\) # ((\op_code[2]~input_o\ & \op_code[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_code[0]~input_o\,
	datab => \op_code[1]~input_o\,
	datac => \op_code[2]~input_o\,
	datad => \op_code[3]~input_o\,
	combout => \Mux6~0_combout\);

\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\op_code[0]~input_o\ & ((\op_code[1]~input_o\ & ((\op_code[3]~input_o\))) # (!\op_code[1]~input_o\ & (\op_code[2]~input_o\)))) # (!\op_code[0]~input_o\ & (((\op_code[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_code[0]~input_o\,
	datab => \op_code[1]~input_o\,
	datac => \op_code[2]~input_o\,
	datad => \op_code[3]~input_o\,
	combout => \Mux5~0_combout\);

\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\op_code[3]~input_o\) # ((\op_code[0]~input_o\ & (\op_code[1]~input_o\ & \op_code[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_code[0]~input_o\,
	datab => \op_code[1]~input_o\,
	datac => \op_code[2]~input_o\,
	datad => \op_code[3]~input_o\,
	combout => \Mux4~0_combout\);

\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\op_code[0]~input_o\ & (\op_code[2]~input_o\ & (!\op_code[1]~input_o\ & !\op_code[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_code[0]~input_o\,
	datab => \op_code[2]~input_o\,
	datac => \op_code[1]~input_o\,
	datad => \op_code[3]~input_o\,
	combout => \Mux8~0_combout\);

\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (!\op_code[3]~input_o\ & ((\op_code[0]~input_o\ & ((!\op_code[2]~input_o\))) # (!\op_code[0]~input_o\ & (\op_code[1]~input_o\ & \op_code[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_code[0]~input_o\,
	datab => \op_code[1]~input_o\,
	datac => \op_code[2]~input_o\,
	datad => \op_code[3]~input_o\,
	combout => \Mux9~0_combout\);

\Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\op_code[0]~input_o\ & (((\op_code[2]~input_o\) # (\op_code[3]~input_o\)))) # (!\op_code[0]~input_o\ & (\op_code[3]~input_o\ & ((\op_code[2]~input_o\) # (!\op_code[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_code[0]~input_o\,
	datab => \op_code[1]~input_o\,
	datac => \op_code[2]~input_o\,
	datad => \op_code[3]~input_o\,
	combout => \Mux10~0_combout\);

\clock~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

ww_jump <= \jump~output_o\;

ww_branch <= \branch~output_o\;

ww_mem_read <= \mem_read~output_o\;

ww_mem_to_reg <= \mem_to_reg~output_o\;

ww_ula_op(0) <= \ula_op[0]~output_o\;

ww_ula_op(1) <= \ula_op[1]~output_o\;

ww_ula_op(2) <= \ula_op[2]~output_o\;

ww_ula_op(3) <= \ula_op[3]~output_o\;

ww_mem_write <= \mem_write~output_o\;

ww_ula_src <= \ula_src~output_o\;

ww_reg_write <= \reg_write~output_o\;
END structure;


