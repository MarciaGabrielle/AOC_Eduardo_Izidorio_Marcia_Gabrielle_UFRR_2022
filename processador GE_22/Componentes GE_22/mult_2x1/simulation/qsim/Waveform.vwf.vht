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
-- Generated on "03/08/2022 09:59:13"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mult_2x1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mult_2x1_vhd_vec_tst IS
END mult_2x1_vhd_vec_tst;
ARCHITECTURE mult_2x1_arch OF mult_2x1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL in_A : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL in_B : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL in_port : STD_LOGIC;
SIGNAL out_port : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT mult_2x1
	PORT (
	in_A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	in_B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	in_port : IN STD_LOGIC;
	out_port : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mult_2x1
	PORT MAP (
-- list connections between master ports and signals
	in_A => in_A,
	in_B => in_B,
	in_port => in_port,
	out_port => out_port
	);
-- in_A[7]
t_prcs_in_A_7: PROCESS
BEGIN
	in_A(7) <= '0';
WAIT;
END PROCESS t_prcs_in_A_7;
-- in_A[6]
t_prcs_in_A_6: PROCESS
BEGIN
	in_A(6) <= '0';
WAIT;
END PROCESS t_prcs_in_A_6;
-- in_A[5]
t_prcs_in_A_5: PROCESS
BEGIN
	in_A(5) <= '0';
WAIT;
END PROCESS t_prcs_in_A_5;
-- in_A[4]
t_prcs_in_A_4: PROCESS
BEGIN
	in_A(4) <= '0';
WAIT;
END PROCESS t_prcs_in_A_4;
-- in_A[3]
t_prcs_in_A_3: PROCESS
BEGIN
	in_A(3) <= '0';
	WAIT FOR 800000 ps;
	in_A(3) <= '1';
WAIT;
END PROCESS t_prcs_in_A_3;
-- in_A[2]
t_prcs_in_A_2: PROCESS
BEGIN
	in_A(2) <= '0';
	WAIT FOR 400000 ps;
	in_A(2) <= '1';
	WAIT FOR 400000 ps;
	in_A(2) <= '0';
WAIT;
END PROCESS t_prcs_in_A_2;
-- in_A[1]
t_prcs_in_A_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		in_A(1) <= '0';
		WAIT FOR 200000 ps;
		in_A(1) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	in_A(1) <= '0';
WAIT;
END PROCESS t_prcs_in_A_1;
-- in_A[0]
t_prcs_in_A_0: PROCESS
BEGIN
LOOP
	in_A(0) <= '0';
	WAIT FOR 100000 ps;
	in_A(0) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_in_A_0;
-- in_B[7]
t_prcs_in_B_7: PROCESS
BEGIN
	in_B(7) <= '0';
WAIT;
END PROCESS t_prcs_in_B_7;
-- in_B[6]
t_prcs_in_B_6: PROCESS
BEGIN
	in_B(6) <= '0';
WAIT;
END PROCESS t_prcs_in_B_6;
-- in_B[5]
t_prcs_in_B_5: PROCESS
BEGIN
	in_B(5) <= '0';
WAIT;
END PROCESS t_prcs_in_B_5;
-- in_B[4]
t_prcs_in_B_4: PROCESS
BEGIN
	in_B(4) <= '0';
WAIT;
END PROCESS t_prcs_in_B_4;
-- in_B[3]
t_prcs_in_B_3: PROCESS
BEGIN
	in_B(3) <= '0';
WAIT;
END PROCESS t_prcs_in_B_3;
-- in_B[2]
t_prcs_in_B_2: PROCESS
BEGIN
	in_B(2) <= '0';
	WAIT FOR 800000 ps;
	in_B(2) <= '1';
WAIT;
END PROCESS t_prcs_in_B_2;
-- in_B[1]
t_prcs_in_B_1: PROCESS
BEGIN
	in_B(1) <= '0';
	WAIT FOR 400000 ps;
	in_B(1) <= '1';
	WAIT FOR 400000 ps;
	in_B(1) <= '0';
WAIT;
END PROCESS t_prcs_in_B_1;
-- in_B[0]
t_prcs_in_B_0: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		in_B(0) <= '0';
		WAIT FOR 200000 ps;
		in_B(0) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	in_B(0) <= '0';
WAIT;
END PROCESS t_prcs_in_B_0;

-- in_port
t_prcs_in_port: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		in_port <= '0';
		WAIT FOR 150000 ps;
		in_port <= '1';
		WAIT FOR 150000 ps;
	END LOOP;
	in_port <= '0';
WAIT;
END PROCESS t_prcs_in_port;
END mult_2x1_arch;
