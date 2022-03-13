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
-- Generated on "03/11/2022 11:32:20"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ula
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ula_vhd_vec_tst IS
END ula_vhd_vec_tst;
ARCHITECTURE ula_arch OF ula_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL in_port_A : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL in_port_B : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL out_ula_result : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL overflow : STD_LOGIC;
SIGNAL ula_op : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL zero : STD_LOGIC;
COMPONENT ula
	PORT (
	clock : IN STD_LOGIC;
	in_port_A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	in_port_B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	out_ula_result : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	overflow : BUFFER STD_LOGIC;
	ula_op : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	zero : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ula
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	in_port_A => in_port_A,
	in_port_B => in_port_B,
	out_ula_result => out_ula_result,
	overflow => overflow,
	ula_op => ula_op,
	zero => zero
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 25000 ps;
	clock <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;
-- in_port_A[7]
t_prcs_in_port_A_7: PROCESS
BEGIN
	in_port_A(7) <= '0';
WAIT;
END PROCESS t_prcs_in_port_A_7;
-- in_port_A[6]
t_prcs_in_port_A_6: PROCESS
BEGIN
	in_port_A(6) <= '0';
WAIT;
END PROCESS t_prcs_in_port_A_6;
-- in_port_A[5]
t_prcs_in_port_A_5: PROCESS
BEGIN
	in_port_A(5) <= '0';
WAIT;
END PROCESS t_prcs_in_port_A_5;
-- in_port_A[4]
t_prcs_in_port_A_4: PROCESS
BEGIN
	in_port_A(4) <= '0';
	WAIT FOR 800000 ps;
	in_port_A(4) <= '1';
WAIT;
END PROCESS t_prcs_in_port_A_4;
-- in_port_A[3]
t_prcs_in_port_A_3: PROCESS
BEGIN
	in_port_A(3) <= '0';
	WAIT FOR 400000 ps;
	in_port_A(3) <= '1';
	WAIT FOR 400000 ps;
	in_port_A(3) <= '0';
WAIT;
END PROCESS t_prcs_in_port_A_3;
-- in_port_A[2]
t_prcs_in_port_A_2: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		in_port_A(2) <= '0';
		WAIT FOR 200000 ps;
		in_port_A(2) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	in_port_A(2) <= '0';
WAIT;
END PROCESS t_prcs_in_port_A_2;
-- in_port_A[1]
t_prcs_in_port_A_1: PROCESS
BEGIN
LOOP
	in_port_A(1) <= '0';
	WAIT FOR 100000 ps;
	in_port_A(1) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_in_port_A_1;
-- in_port_A[0]
t_prcs_in_port_A_0: PROCESS
BEGIN
LOOP
	in_port_A(0) <= '0';
	WAIT FOR 50000 ps;
	in_port_A(0) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_in_port_A_0;
-- in_port_B[7]
t_prcs_in_port_B_7: PROCESS
BEGIN
	in_port_B(7) <= '0';
WAIT;
END PROCESS t_prcs_in_port_B_7;
-- in_port_B[6]
t_prcs_in_port_B_6: PROCESS
BEGIN
	in_port_B(6) <= '0';
WAIT;
END PROCESS t_prcs_in_port_B_6;
-- in_port_B[5]
t_prcs_in_port_B_5: PROCESS
BEGIN
	in_port_B(5) <= '0';
WAIT;
END PROCESS t_prcs_in_port_B_5;
-- in_port_B[4]
t_prcs_in_port_B_4: PROCESS
BEGIN
	in_port_B(4) <= '0';
WAIT;
END PROCESS t_prcs_in_port_B_4;
-- in_port_B[3]
t_prcs_in_port_B_3: PROCESS
BEGIN
	in_port_B(3) <= '0';
WAIT;
END PROCESS t_prcs_in_port_B_3;
-- in_port_B[2]
t_prcs_in_port_B_2: PROCESS
BEGIN
	in_port_B(2) <= '0';
	WAIT FOR 600000 ps;
	in_port_B(2) <= '1';
WAIT;
END PROCESS t_prcs_in_port_B_2;
-- in_port_B[1]
t_prcs_in_port_B_1: PROCESS
BEGIN
	in_port_B(1) <= '0';
	WAIT FOR 300000 ps;
	in_port_B(1) <= '1';
	WAIT FOR 300000 ps;
	in_port_B(1) <= '0';
	WAIT FOR 300000 ps;
	in_port_B(1) <= '1';
WAIT;
END PROCESS t_prcs_in_port_B_1;
-- in_port_B[0]
t_prcs_in_port_B_0: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		in_port_B(0) <= '0';
		WAIT FOR 150000 ps;
		in_port_B(0) <= '1';
		WAIT FOR 150000 ps;
	END LOOP;
	in_port_B(0) <= '0';
WAIT;
END PROCESS t_prcs_in_port_B_0;
-- ula_op[3]
t_prcs_ula_op_3: PROCESS
BEGIN
	ula_op(3) <= '0';
	WAIT FOR 400000 ps;
	ula_op(3) <= '1';
	WAIT FOR 400000 ps;
	ula_op(3) <= '0';
WAIT;
END PROCESS t_prcs_ula_op_3;
-- ula_op[2]
t_prcs_ula_op_2: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		ula_op(2) <= '0';
		WAIT FOR 200000 ps;
		ula_op(2) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	ula_op(2) <= '0';
WAIT;
END PROCESS t_prcs_ula_op_2;
-- ula_op[1]
t_prcs_ula_op_1: PROCESS
BEGIN
LOOP
	ula_op(1) <= '0';
	WAIT FOR 100000 ps;
	ula_op(1) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ula_op_1;
-- ula_op[0]
t_prcs_ula_op_0: PROCESS
BEGIN
LOOP
	ula_op(0) <= '0';
	WAIT FOR 50000 ps;
	ula_op(0) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ula_op_0;
END ula_arch;
