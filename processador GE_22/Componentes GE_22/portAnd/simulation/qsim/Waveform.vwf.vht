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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/08/2022 09:53:06"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          portAnd
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY portAnd_vhd_vec_tst IS
END portAnd_vhd_vec_tst;
ARCHITECTURE portAnd_arch OF portAnd_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL in_port_A : STD_LOGIC;
SIGNAL in_port_B : STD_LOGIC;
SIGNAL out_port : STD_LOGIC;
COMPONENT portAnd
	PORT (
	in_port_A : IN STD_LOGIC;
	in_port_B : IN STD_LOGIC;
	out_port : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : portAnd
	PORT MAP (
-- list connections between master ports and signals
	in_port_A => in_port_A,
	in_port_B => in_port_B,
	out_port => out_port
	);

-- in_port_A
t_prcs_in_port_A: PROCESS
BEGIN
LOOP
	in_port_A <= '0';
	WAIT FOR 100000 ps;
	in_port_A <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_in_port_A;

-- in_port_B
t_prcs_in_port_B: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		in_port_B <= '0';
		WAIT FOR 200000 ps;
		in_port_B <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	in_port_B <= '0';
WAIT;
END PROCESS t_prcs_in_port_B;
END portAnd_arch;
