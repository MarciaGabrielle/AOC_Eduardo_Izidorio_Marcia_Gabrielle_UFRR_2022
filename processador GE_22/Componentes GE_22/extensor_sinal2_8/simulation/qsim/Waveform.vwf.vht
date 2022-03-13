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
-- Generated on "03/08/2022 10:02:41"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          extensor_sinal2_8
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY extensor_sinal2_8_vhd_vec_tst IS
END extensor_sinal2_8_vhd_vec_tst;
ARCHITECTURE extensor_sinal2_8_arch OF extensor_sinal2_8_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL in_port : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL out_port : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT extensor_sinal2_8
	PORT (
	in_port : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	out_port : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : extensor_sinal2_8
	PORT MAP (
-- list connections between master ports and signals
	in_port => in_port,
	out_port => out_port
	);
-- in_port[1]
t_prcs_in_port_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		in_port(1) <= '0';
		WAIT FOR 200000 ps;
		in_port(1) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	in_port(1) <= '0';
WAIT;
END PROCESS t_prcs_in_port_1;
-- in_port[0]
t_prcs_in_port_0: PROCESS
BEGIN
LOOP
	in_port(0) <= '0';
	WAIT FOR 100000 ps;
	in_port(0) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_in_port_0;
END extensor_sinal2_8_arch;
