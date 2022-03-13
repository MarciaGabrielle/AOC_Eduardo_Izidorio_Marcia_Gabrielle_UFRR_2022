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
-- Generated on "03/09/2022 11:14:04"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          unidade_controle
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY unidade_controle_vhd_vec_tst IS
END unidade_controle_vhd_vec_tst;
ARCHITECTURE unidade_controle_arch OF unidade_controle_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL branch : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL jump : STD_LOGIC;
SIGNAL mem_read : STD_LOGIC;
SIGNAL mem_to_reg : STD_LOGIC;
SIGNAL mem_write : STD_LOGIC;
SIGNAL op_code : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL reg_write : STD_LOGIC;
SIGNAL ula_op : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ula_src : STD_LOGIC;
COMPONENT unidade_controle
	PORT (
	branch : OUT STD_LOGIC;
	clock : IN STD_LOGIC;
	jump : OUT STD_LOGIC;
	mem_read : OUT STD_LOGIC;
	mem_to_reg : OUT STD_LOGIC;
	mem_write : OUT STD_LOGIC;
	op_code : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	reg_write : OUT STD_LOGIC;
	ula_op : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	ula_src : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : unidade_controle
	PORT MAP (
-- list connections between master ports and signals
	branch => branch,
	clock => clock,
	jump => jump,
	mem_read => mem_read,
	mem_to_reg => mem_to_reg,
	mem_write => mem_write,
	op_code => op_code,
	reg_write => reg_write,
	ula_op => ula_op,
	ula_src => ula_src
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		clock <= '0';
		WAIT FOR 200000 ps;
		clock <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	clock <= '0';
WAIT;
END PROCESS t_prcs_clock;
-- op_code[3]
t_prcs_op_code_3: PROCESS
BEGIN
	op_code(3) <= '0';
	WAIT FOR 400000 ps;
	op_code(3) <= '1';
	WAIT FOR 400000 ps;
	op_code(3) <= '0';
WAIT;
END PROCESS t_prcs_op_code_3;
-- op_code[2]
t_prcs_op_code_2: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		op_code(2) <= '0';
		WAIT FOR 200000 ps;
		op_code(2) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	op_code(2) <= '0';
WAIT;
END PROCESS t_prcs_op_code_2;
-- op_code[1]
t_prcs_op_code_1: PROCESS
BEGIN
LOOP
	op_code(1) <= '0';
	WAIT FOR 100000 ps;
	op_code(1) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_op_code_1;
-- op_code[0]
t_prcs_op_code_0: PROCESS
BEGIN
LOOP
	op_code(0) <= '0';
	WAIT FOR 50000 ps;
	op_code(0) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_op_code_0;
END unidade_controle_arch;
