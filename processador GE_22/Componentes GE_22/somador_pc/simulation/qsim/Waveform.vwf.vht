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
-- Generated on "03/08/2022 10:51:39"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          somador_pc
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY somador_pc_vhd_vec_tst IS
END somador_pc_vhd_vec_tst;
ARCHITECTURE somador_pc_arch OF somador_pc_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL in_port : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL out_port : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT somador_pc
	PORT (
	clock : IN STD_LOGIC;
	in_port : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	out_port : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : somador_pc
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	in_port => in_port,
	out_port => out_port
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 100000 ps;
	clock <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;
-- in_port[7]
t_prcs_in_port_7: PROCESS
BEGIN
	in_port(7) <= '0';
WAIT;
END PROCESS t_prcs_in_port_7;
-- in_port[6]
t_prcs_in_port_6: PROCESS
BEGIN
	in_port(6) <= '0';
WAIT;
END PROCESS t_prcs_in_port_6;
-- in_port[5]
t_prcs_in_port_5: PROCESS
BEGIN
	in_port(5) <= '0';
WAIT;
END PROCESS t_prcs_in_port_5;
-- in_port[4]
t_prcs_in_port_4: PROCESS
BEGIN
	in_port(4) <= '0';
WAIT;
END PROCESS t_prcs_in_port_4;
-- in_port[3]
t_prcs_in_port_3: PROCESS
BEGIN
	in_port(3) <= '0';
WAIT;
END PROCESS t_prcs_in_port_3;
-- in_port[2]
t_prcs_in_port_2: PROCESS
BEGIN
	in_port(2) <= '0';
	WAIT FOR 800000 ps;
	in_port(2) <= '1';
WAIT;
END PROCESS t_prcs_in_port_2;
-- in_port[1]
t_prcs_in_port_1: PROCESS
BEGIN
	in_port(1) <= '0';
	WAIT FOR 400000 ps;
	in_port(1) <= '1';
	WAIT FOR 400000 ps;
	in_port(1) <= '0';
WAIT;
END PROCESS t_prcs_in_port_1;
-- in_port[0]
t_prcs_in_port_0: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		in_port(0) <= '0';
		WAIT FOR 200000 ps;
		in_port(0) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	in_port(0) <= '0';
WAIT;
END PROCESS t_prcs_in_port_0;
END somador_pc_arch;
