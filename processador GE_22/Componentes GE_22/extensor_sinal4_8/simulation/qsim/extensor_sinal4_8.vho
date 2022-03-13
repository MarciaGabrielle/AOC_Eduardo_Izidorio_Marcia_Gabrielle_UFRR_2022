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

-- DATE "03/08/2022 10:10:09"

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

ENTITY 	extensor_sinal4_8 IS
    PORT (
	in_port : IN std_logic_vector(3 DOWNTO 0);
	out_port : OUT std_logic_vector(7 DOWNTO 0)
	);
END extensor_sinal4_8;

ARCHITECTURE structure OF extensor_sinal4_8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_in_port : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_out_port : std_logic_vector(7 DOWNTO 0);
SIGNAL \out_port[0]~output_o\ : std_logic;
SIGNAL \out_port[1]~output_o\ : std_logic;
SIGNAL \out_port[2]~output_o\ : std_logic;
SIGNAL \out_port[3]~output_o\ : std_logic;
SIGNAL \out_port[4]~output_o\ : std_logic;
SIGNAL \out_port[5]~output_o\ : std_logic;
SIGNAL \out_port[6]~output_o\ : std_logic;
SIGNAL \out_port[7]~output_o\ : std_logic;
SIGNAL \in_port[0]~input_o\ : std_logic;
SIGNAL \in_port[1]~input_o\ : std_logic;
SIGNAL \in_port[2]~input_o\ : std_logic;
SIGNAL \in_port[3]~input_o\ : std_logic;

BEGIN

ww_in_port <= in_port;
out_port <= ww_out_port;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\out_port[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_port[0]~input_o\,
	devoe => ww_devoe,
	o => \out_port[0]~output_o\);

\out_port[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_port[1]~input_o\,
	devoe => ww_devoe,
	o => \out_port[1]~output_o\);

\out_port[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_port[2]~input_o\,
	devoe => ww_devoe,
	o => \out_port[2]~output_o\);

\out_port[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_port[3]~input_o\,
	devoe => ww_devoe,
	o => \out_port[3]~output_o\);

\out_port[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_port[4]~output_o\);

\out_port[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_port[5]~output_o\);

\out_port[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_port[6]~output_o\);

\out_port[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_port[7]~output_o\);

\in_port[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_port(0),
	o => \in_port[0]~input_o\);

\in_port[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_port(1),
	o => \in_port[1]~input_o\);

\in_port[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_port(2),
	o => \in_port[2]~input_o\);

\in_port[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_port(3),
	o => \in_port[3]~input_o\);

ww_out_port(0) <= \out_port[0]~output_o\;

ww_out_port(1) <= \out_port[1]~output_o\;

ww_out_port(2) <= \out_port[2]~output_o\;

ww_out_port(3) <= \out_port[3]~output_o\;

ww_out_port(4) <= \out_port[4]~output_o\;

ww_out_port(5) <= \out_port[5]~output_o\;

ww_out_port(6) <= \out_port[6]~output_o\;

ww_out_port(7) <= \out_port[7]~output_o\;
END structure;


