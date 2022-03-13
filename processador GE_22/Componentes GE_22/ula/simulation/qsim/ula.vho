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

-- DATE "03/11/2022 11:32:21"

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

ENTITY 	ula IS
    PORT (
	clock : IN std_logic;
	ula_op : IN std_logic_vector(3 DOWNTO 0);
	in_port_A : IN std_logic_vector(7 DOWNTO 0);
	in_port_B : IN std_logic_vector(7 DOWNTO 0);
	out_ula_result : BUFFER std_logic_vector(7 DOWNTO 0);
	zero : BUFFER std_logic;
	overflow : BUFFER std_logic
	);
END ula;

ARCHITECTURE structure OF ula IS
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
SIGNAL ww_ula_op : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_in_port_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_in_port_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_ula_result : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_zero : std_logic;
SIGNAL ww_overflow : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \out_ula_result[0]~output_o\ : std_logic;
SIGNAL \out_ula_result[1]~output_o\ : std_logic;
SIGNAL \out_ula_result[2]~output_o\ : std_logic;
SIGNAL \out_ula_result[3]~output_o\ : std_logic;
SIGNAL \out_ula_result[4]~output_o\ : std_logic;
SIGNAL \out_ula_result[5]~output_o\ : std_logic;
SIGNAL \out_ula_result[6]~output_o\ : std_logic;
SIGNAL \out_ula_result[7]~output_o\ : std_logic;
SIGNAL \zero~output_o\ : std_logic;
SIGNAL \overflow~output_o\ : std_logic;
SIGNAL \ula_op[0]~input_o\ : std_logic;
SIGNAL \ula_op[3]~input_o\ : std_logic;
SIGNAL \in_port_A[0]~input_o\ : std_logic;
SIGNAL \in_port_B[0]~input_o\ : std_logic;
SIGNAL \ula_op[1]~input_o\ : std_logic;
SIGNAL \ula_op[2]~input_o\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \in_port_B[1]~input_o\ : std_logic;
SIGNAL \in_port_A[1]~input_o\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \port_map_multi|Add0~1_cout\ : std_logic;
SIGNAL \port_map_multi|Add0~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \port_map_multi|Add0~4_combout\ : std_logic;
SIGNAL \port_map_multi|Add2~0_combout\ : std_logic;
SIGNAL \port_map_multi|Add1~14_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \in_port_B[2]~input_o\ : std_logic;
SIGNAL \in_port_A[2]~input_o\ : std_logic;
SIGNAL \port_map_sub|A1|A1|cout~combout\ : std_logic;
SIGNAL \port_map_adder|A1|cout~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \port_map_multi|Add0~3\ : std_logic;
SIGNAL \port_map_multi|Add0~5_combout\ : std_logic;
SIGNAL \port_map_multi|Add0~7_combout\ : std_logic;
SIGNAL \port_map_multi|Add2~1\ : std_logic;
SIGNAL \port_map_multi|Add2~2_combout\ : std_logic;
SIGNAL \port_map_multi|Add1~37_combout\ : std_logic;
SIGNAL \port_map_multi|Add1~15\ : std_logic;
SIGNAL \port_map_multi|Add1~16_combout\ : std_logic;
SIGNAL \port_map_multi|Add1~18_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \port_map_multi|Add4~0_combout\ : std_logic;
SIGNAL \port_map_multi|Add3~0_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \in_port_B[3]~input_o\ : std_logic;
SIGNAL \in_port_A[3]~input_o\ : std_logic;
SIGNAL \port_map_sub|A1|A2|cout~combout\ : std_logic;
SIGNAL \port_map_adder|A2|cout~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \port_map_multi|Add0~6\ : std_logic;
SIGNAL \port_map_multi|Add0~8_combout\ : std_logic;
SIGNAL \port_map_multi|Add0~10_combout\ : std_logic;
SIGNAL \port_map_multi|Add2~3\ : std_logic;
SIGNAL \port_map_multi|Add2~4_combout\ : std_logic;
SIGNAL \port_map_multi|Add1~38_combout\ : std_logic;
SIGNAL \port_map_multi|Add1~17\ : std_logic;
SIGNAL \port_map_multi|Add1~19_combout\ : std_logic;
SIGNAL \port_map_multi|Add1~21_combout\ : std_logic;
SIGNAL \port_map_multi|Add4~1\ : std_logic;
SIGNAL \port_map_multi|Add4~2_combout\ : std_logic;
SIGNAL \port_map_multi|Add3~1\ : std_logic;
SIGNAL \port_map_multi|Add3~2_combout\ : std_logic;
SIGNAL \port_map_multi|Add3~4_combout\ : std_logic;
SIGNAL \port_map_multi|Add3~5_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \port_map_multi|Add6~0_combout\ : std_logic;
SIGNAL \port_map_multi|Add5~0_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \in_port_B[4]~input_o\ : std_logic;
SIGNAL \in_port_A[4]~input_o\ : std_logic;
SIGNAL \port_map_sub|A1|A3|cout~combout\ : std_logic;
SIGNAL \port_map_adder|A3|cout~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \port_map_multi|Add0~9\ : std_logic;
SIGNAL \port_map_multi|Add0~11_combout\ : std_logic;
SIGNAL \port_map_multi|Add0~13_combout\ : std_logic;
SIGNAL \port_map_multi|Add2~5\ : std_logic;
SIGNAL \port_map_multi|Add2~6_combout\ : std_logic;
SIGNAL \port_map_multi|Add1~39_combout\ : std_logic;
SIGNAL \port_map_multi|Add1~20\ : std_logic;
SIGNAL \port_map_multi|Add1~22_combout\ : std_logic;
SIGNAL \port_map_multi|Add1~24_combout\ : std_logic;
SIGNAL \port_map_multi|Add4~3\ : std_logic;
SIGNAL \port_map_multi|Add4~4_combout\ : std_logic;
SIGNAL \port_map_multi|Add3~3\ : std_logic;
SIGNAL \port_map_multi|Add3~6_combout\ : std_logic;
SIGNAL \port_map_multi|Add3~8_combout\ : std_logic;
SIGNAL \port_map_multi|Add3~9_combout\ : std_logic;
SIGNAL \port_map_multi|Add6~1\ : std_logic;
SIGNAL \port_map_multi|Add6~2_combout\ : std_logic;
SIGNAL \port_map_multi|Add5~1\ : std_logic;
SIGNAL \port_map_multi|Add5~2_combout\ : std_logic;
SIGNAL \port_map_multi|Add5~4_combout\ : std_logic;
SIGNAL \port_map_multi|Add5~5_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \port_map_multi|Add8~0_combout\ : std_logic;
SIGNAL \port_map_multi|Add7~0_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \in_port_B[5]~input_o\ : std_logic;
SIGNAL \in_port_A[5]~input_o\ : std_logic;
SIGNAL \port_map_sub|A1|A4|cout~combout\ : std_logic;
SIGNAL \port_map_adder|A4|cout~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \port_map_multi|Add0~12\ : std_logic;
SIGNAL \port_map_multi|Add0~14_combout\ : std_logic;
SIGNAL \port_map_multi|Add0~16_combout\ : std_logic;
SIGNAL \port_map_multi|Add2~7\ : std_logic;
SIGNAL \port_map_multi|Add2~8_combout\ : std_logic;
SIGNAL \port_map_multi|Add1~40_combout\ : std_logic;
SIGNAL \port_map_multi|Add1~23\ : std_logic;
SIGNAL \port_map_multi|Add1~25_combout\ : std_logic;
SIGNAL \port_map_multi|Add1~27_combout\ : std_logic;
SIGNAL \port_map_multi|Add4~5\ : std_logic;
SIGNAL \port_map_multi|Add4~6_combout\ : std_logic;
SIGNAL \port_map_multi|Add3~7\ : std_logic;
SIGNAL \port_map_multi|Add3~10_combout\ : std_logic;
SIGNAL \port_map_multi|Add3~12_combout\ : std_logic;
SIGNAL \port_map_multi|Add3~13_combout\ : std_logic;
SIGNAL \port_map_multi|Add6~3\ : std_logic;
SIGNAL \port_map_multi|Add6~4_combout\ : std_logic;
SIGNAL \port_map_multi|Add5~3\ : std_logic;
SIGNAL \port_map_multi|Add5~6_combout\ : std_logic;
SIGNAL \port_map_multi|Add5~8_combout\ : std_logic;
SIGNAL \port_map_multi|Add5~9_combout\ : std_logic;
SIGNAL \port_map_multi|Add8~1\ : std_logic;
SIGNAL \port_map_multi|Add8~2_combout\ : std_logic;
SIGNAL \port_map_multi|Add7~1\ : std_logic;
SIGNAL \port_map_multi|Add7~2_combout\ : std_logic;
SIGNAL \port_map_multi|Add7~4_combout\ : std_logic;
SIGNAL \port_map_multi|Add7~5_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \port_map_multi|Add10~0_combout\ : std_logic;
SIGNAL \port_map_multi|Add9~0_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \in_port_B[6]~input_o\ : std_logic;
SIGNAL \in_port_A[6]~input_o\ : std_logic;
SIGNAL \port_map_sub|A1|A5|cout~combout\ : std_logic;
SIGNAL \port_map_adder|A5|cout~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \port_map_multi|Add0~15\ : std_logic;
SIGNAL \port_map_multi|Add0~17_combout\ : std_logic;
SIGNAL \port_map_multi|Add0~19_combout\ : std_logic;
SIGNAL \port_map_multi|Add2~9\ : std_logic;
SIGNAL \port_map_multi|Add2~10_combout\ : std_logic;
SIGNAL \port_map_multi|Add1~41_combout\ : std_logic;
SIGNAL \port_map_multi|Add1~26\ : std_logic;
SIGNAL \port_map_multi|Add1~28_combout\ : std_logic;
SIGNAL \port_map_multi|Add1~30_combout\ : std_logic;
SIGNAL \port_map_multi|Add4~7\ : std_logic;
SIGNAL \port_map_multi|Add4~8_combout\ : std_logic;
SIGNAL \port_map_multi|Add3~11\ : std_logic;
SIGNAL \port_map_multi|Add3~14_combout\ : std_logic;
SIGNAL \port_map_multi|Add3~16_combout\ : std_logic;
SIGNAL \port_map_multi|Add3~17_combout\ : std_logic;
SIGNAL \port_map_multi|Add6~5\ : std_logic;
SIGNAL \port_map_multi|Add6~6_combout\ : std_logic;
SIGNAL \port_map_multi|Add5~7\ : std_logic;
SIGNAL \port_map_multi|Add5~10_combout\ : std_logic;
SIGNAL \port_map_multi|Add5~12_combout\ : std_logic;
SIGNAL \port_map_multi|Add5~13_combout\ : std_logic;
SIGNAL \port_map_multi|Add8~3\ : std_logic;
SIGNAL \port_map_multi|Add8~4_combout\ : std_logic;
SIGNAL \port_map_multi|Add7~3\ : std_logic;
SIGNAL \port_map_multi|Add7~6_combout\ : std_logic;
SIGNAL \port_map_multi|Add7~8_combout\ : std_logic;
SIGNAL \port_map_multi|Add7~9_combout\ : std_logic;
SIGNAL \port_map_multi|Add10~1\ : std_logic;
SIGNAL \port_map_multi|Add10~2_combout\ : std_logic;
SIGNAL \port_map_multi|Add9~1\ : std_logic;
SIGNAL \port_map_multi|Add9~2_combout\ : std_logic;
SIGNAL \port_map_multi|Add9~4_combout\ : std_logic;
SIGNAL \port_map_multi|Add9~5_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \port_map_multi|Add12~0_combout\ : std_logic;
SIGNAL \port_map_multi|Add11~0_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \in_port_A[7]~input_o\ : std_logic;
SIGNAL \port_map_multi|Add0~18\ : std_logic;
SIGNAL \port_map_multi|Add0~20_combout\ : std_logic;
SIGNAL \port_map_multi|Add0~22_combout\ : std_logic;
SIGNAL \port_map_multi|Add2~11\ : std_logic;
SIGNAL \port_map_multi|Add2~12_combout\ : std_logic;
SIGNAL \port_map_multi|Add1~29\ : std_logic;
SIGNAL \port_map_multi|Add1~31_combout\ : std_logic;
SIGNAL \port_map_multi|Add1~33_combout\ : std_logic;
SIGNAL \port_map_multi|Add1~42_combout\ : std_logic;
SIGNAL \port_map_multi|Add4~9\ : std_logic;
SIGNAL \port_map_multi|Add4~10_combout\ : std_logic;
SIGNAL \port_map_multi|Add3~15\ : std_logic;
SIGNAL \port_map_multi|Add3~18_combout\ : std_logic;
SIGNAL \port_map_multi|Add3~20_combout\ : std_logic;
SIGNAL \port_map_multi|Add3~21_combout\ : std_logic;
SIGNAL \port_map_multi|Add6~7\ : std_logic;
SIGNAL \port_map_multi|Add6~8_combout\ : std_logic;
SIGNAL \port_map_multi|Add5~11\ : std_logic;
SIGNAL \port_map_multi|Add5~14_combout\ : std_logic;
SIGNAL \port_map_multi|Add5~16_combout\ : std_logic;
SIGNAL \port_map_multi|Add5~17_combout\ : std_logic;
SIGNAL \port_map_multi|Add8~5\ : std_logic;
SIGNAL \port_map_multi|Add8~6_combout\ : std_logic;
SIGNAL \port_map_multi|Add7~7\ : std_logic;
SIGNAL \port_map_multi|Add7~10_combout\ : std_logic;
SIGNAL \port_map_multi|Add7~12_combout\ : std_logic;
SIGNAL \port_map_multi|Add7~13_combout\ : std_logic;
SIGNAL \port_map_multi|Add10~3\ : std_logic;
SIGNAL \port_map_multi|Add10~4_combout\ : std_logic;
SIGNAL \port_map_multi|Add9~3\ : std_logic;
SIGNAL \port_map_multi|Add9~6_combout\ : std_logic;
SIGNAL \port_map_multi|Add9~8_combout\ : std_logic;
SIGNAL \port_map_multi|Add9~9_combout\ : std_logic;
SIGNAL \port_map_multi|Add12~1\ : std_logic;
SIGNAL \port_map_multi|Add12~2_combout\ : std_logic;
SIGNAL \port_map_multi|Add11~1\ : std_logic;
SIGNAL \port_map_multi|Add11~2_combout\ : std_logic;
SIGNAL \port_map_multi|Add11~4_combout\ : std_logic;
SIGNAL \port_map_multi|Add11~5_combout\ : std_logic;
SIGNAL \in_port_B[7]~input_o\ : std_logic;
SIGNAL \port_map_multi|Add13~0_combout\ : std_logic;
SIGNAL \port_map_multi|Add13~2_cout\ : std_logic;
SIGNAL \port_map_multi|Add13~3_combout\ : std_logic;
SIGNAL \port_map_multi|out_port[7]~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \port_map_sub|A1|A7|ha2|sum~0_combout\ : std_logic;
SIGNAL \port_map_adder|A7|ha2|sum~combout\ : std_logic;
SIGNAL \port_map_sub|A1|A7|ha2|sum~combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \in_temp_zero~combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \zero$latch~combout\ : std_logic;
SIGNAL \port_map_multi|Add2~13\ : std_logic;
SIGNAL \port_map_multi|Add2~14_combout\ : std_logic;
SIGNAL \port_map_multi|Add1~32\ : std_logic;
SIGNAL \port_map_multi|Add1~34_combout\ : std_logic;
SIGNAL \port_map_multi|Add1~36_combout\ : std_logic;
SIGNAL \port_map_multi|Add1~43_combout\ : std_logic;
SIGNAL \port_map_multi|Add4~11\ : std_logic;
SIGNAL \port_map_multi|Add4~12_combout\ : std_logic;
SIGNAL \port_map_multi|Add3~19\ : std_logic;
SIGNAL \port_map_multi|Add3~22_combout\ : std_logic;
SIGNAL \port_map_multi|Add3~24_combout\ : std_logic;
SIGNAL \port_map_multi|Add3~25_combout\ : std_logic;
SIGNAL \port_map_multi|Add6~9\ : std_logic;
SIGNAL \port_map_multi|Add6~10_combout\ : std_logic;
SIGNAL \port_map_multi|Add5~15\ : std_logic;
SIGNAL \port_map_multi|Add5~18_combout\ : std_logic;
SIGNAL \port_map_multi|Add5~20_combout\ : std_logic;
SIGNAL \port_map_multi|Add5~21_combout\ : std_logic;
SIGNAL \port_map_multi|Add8~7\ : std_logic;
SIGNAL \port_map_multi|Add8~8_combout\ : std_logic;
SIGNAL \port_map_multi|Add7~11\ : std_logic;
SIGNAL \port_map_multi|Add7~14_combout\ : std_logic;
SIGNAL \port_map_multi|Add7~16_combout\ : std_logic;
SIGNAL \port_map_multi|Add7~17_combout\ : std_logic;
SIGNAL \port_map_multi|Add10~5\ : std_logic;
SIGNAL \port_map_multi|Add10~6_combout\ : std_logic;
SIGNAL \port_map_multi|Add9~7\ : std_logic;
SIGNAL \port_map_multi|Add9~10_combout\ : std_logic;
SIGNAL \port_map_multi|Add9~12_combout\ : std_logic;
SIGNAL \port_map_multi|Add9~13_combout\ : std_logic;
SIGNAL \port_map_multi|Add12~3\ : std_logic;
SIGNAL \port_map_multi|Add12~4_combout\ : std_logic;
SIGNAL \port_map_multi|Add11~3\ : std_logic;
SIGNAL \port_map_multi|Add11~6_combout\ : std_logic;
SIGNAL \port_map_multi|Add11~8_combout\ : std_logic;
SIGNAL \port_map_multi|Add11~9_combout\ : std_logic;
SIGNAL \port_map_multi|Add13~5_combout\ : std_logic;
SIGNAL \port_map_multi|Add13~4\ : std_logic;
SIGNAL \port_map_multi|Add13~6_combout\ : std_logic;
SIGNAL \port_map_multi|Add4~13\ : std_logic;
SIGNAL \port_map_multi|Add4~14_combout\ : std_logic;
SIGNAL \port_map_multi|Add3~23\ : std_logic;
SIGNAL \port_map_multi|Add3~26_combout\ : std_logic;
SIGNAL \port_map_multi|Add3~28_combout\ : std_logic;
SIGNAL \port_map_multi|Add3~29_combout\ : std_logic;
SIGNAL \port_map_multi|Add6~11\ : std_logic;
SIGNAL \port_map_multi|Add6~12_combout\ : std_logic;
SIGNAL \port_map_multi|Add5~19\ : std_logic;
SIGNAL \port_map_multi|Add5~22_combout\ : std_logic;
SIGNAL \port_map_multi|Add5~24_combout\ : std_logic;
SIGNAL \port_map_multi|Add5~25_combout\ : std_logic;
SIGNAL \port_map_multi|Add8~9\ : std_logic;
SIGNAL \port_map_multi|Add8~10_combout\ : std_logic;
SIGNAL \port_map_multi|Add7~15\ : std_logic;
SIGNAL \port_map_multi|Add7~18_combout\ : std_logic;
SIGNAL \port_map_multi|Add7~20_combout\ : std_logic;
SIGNAL \port_map_multi|Add7~21_combout\ : std_logic;
SIGNAL \port_map_multi|Add10~7\ : std_logic;
SIGNAL \port_map_multi|Add10~8_combout\ : std_logic;
SIGNAL \port_map_multi|Add9~11\ : std_logic;
SIGNAL \port_map_multi|Add9~14_combout\ : std_logic;
SIGNAL \port_map_multi|Add9~16_combout\ : std_logic;
SIGNAL \port_map_multi|Add9~17_combout\ : std_logic;
SIGNAL \port_map_multi|Add12~5\ : std_logic;
SIGNAL \port_map_multi|Add12~6_combout\ : std_logic;
SIGNAL \port_map_multi|Add11~7\ : std_logic;
SIGNAL \port_map_multi|Add11~10_combout\ : std_logic;
SIGNAL \port_map_multi|Add11~12_combout\ : std_logic;
SIGNAL \port_map_multi|Add11~13_combout\ : std_logic;
SIGNAL \port_map_multi|Add13~8_combout\ : std_logic;
SIGNAL \port_map_multi|Add13~7\ : std_logic;
SIGNAL \port_map_multi|Add13~9_combout\ : std_logic;
SIGNAL \port_map_multi|Add6~13\ : std_logic;
SIGNAL \port_map_multi|Add6~14_combout\ : std_logic;
SIGNAL \port_map_multi|Add5~23\ : std_logic;
SIGNAL \port_map_multi|Add5~26_combout\ : std_logic;
SIGNAL \port_map_multi|Add5~28_combout\ : std_logic;
SIGNAL \port_map_multi|Add5~29_combout\ : std_logic;
SIGNAL \port_map_multi|Add8~11\ : std_logic;
SIGNAL \port_map_multi|Add8~12_combout\ : std_logic;
SIGNAL \port_map_multi|Add7~19\ : std_logic;
SIGNAL \port_map_multi|Add7~22_combout\ : std_logic;
SIGNAL \port_map_multi|Add7~24_combout\ : std_logic;
SIGNAL \port_map_multi|Add7~25_combout\ : std_logic;
SIGNAL \port_map_multi|Add10~9\ : std_logic;
SIGNAL \port_map_multi|Add10~10_combout\ : std_logic;
SIGNAL \port_map_multi|Add9~15\ : std_logic;
SIGNAL \port_map_multi|Add9~18_combout\ : std_logic;
SIGNAL \port_map_multi|Add9~20_combout\ : std_logic;
SIGNAL \port_map_multi|Add9~21_combout\ : std_logic;
SIGNAL \port_map_multi|Add12~7\ : std_logic;
SIGNAL \port_map_multi|Add12~8_combout\ : std_logic;
SIGNAL \port_map_multi|Add11~11\ : std_logic;
SIGNAL \port_map_multi|Add11~14_combout\ : std_logic;
SIGNAL \port_map_multi|Add11~16_combout\ : std_logic;
SIGNAL \port_map_multi|Add11~17_combout\ : std_logic;
SIGNAL \port_map_multi|Add13~11_combout\ : std_logic;
SIGNAL \port_map_multi|Add13~10\ : std_logic;
SIGNAL \port_map_multi|Add13~12_combout\ : std_logic;
SIGNAL \port_map_multi|Add8~13\ : std_logic;
SIGNAL \port_map_multi|Add8~14_combout\ : std_logic;
SIGNAL \port_map_multi|Add7~23\ : std_logic;
SIGNAL \port_map_multi|Add7~26_combout\ : std_logic;
SIGNAL \port_map_multi|Add7~28_combout\ : std_logic;
SIGNAL \port_map_multi|Add7~29_combout\ : std_logic;
SIGNAL \port_map_multi|Add10~11\ : std_logic;
SIGNAL \port_map_multi|Add10~12_combout\ : std_logic;
SIGNAL \port_map_multi|Add9~19\ : std_logic;
SIGNAL \port_map_multi|Add9~22_combout\ : std_logic;
SIGNAL \port_map_multi|Add9~24_combout\ : std_logic;
SIGNAL \port_map_multi|Add9~25_combout\ : std_logic;
SIGNAL \port_map_multi|Add12~9\ : std_logic;
SIGNAL \port_map_multi|Add12~10_combout\ : std_logic;
SIGNAL \port_map_multi|Add11~15\ : std_logic;
SIGNAL \port_map_multi|Add11~18_combout\ : std_logic;
SIGNAL \port_map_multi|Add11~20_combout\ : std_logic;
SIGNAL \port_map_multi|Add11~21_combout\ : std_logic;
SIGNAL \port_map_multi|Add13~14_combout\ : std_logic;
SIGNAL \port_map_multi|Add13~13\ : std_logic;
SIGNAL \port_map_multi|Add13~15_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \port_map_multi|Add10~13\ : std_logic;
SIGNAL \port_map_multi|Add10~14_combout\ : std_logic;
SIGNAL \port_map_multi|Add9~23\ : std_logic;
SIGNAL \port_map_multi|Add9~26_combout\ : std_logic;
SIGNAL \port_map_multi|Add9~28_combout\ : std_logic;
SIGNAL \port_map_multi|Add9~29_combout\ : std_logic;
SIGNAL \port_map_multi|Add12~11\ : std_logic;
SIGNAL \port_map_multi|Add12~12_combout\ : std_logic;
SIGNAL \port_map_multi|Add11~19\ : std_logic;
SIGNAL \port_map_multi|Add11~22_combout\ : std_logic;
SIGNAL \port_map_multi|Add11~24_combout\ : std_logic;
SIGNAL \port_map_multi|Add11~25_combout\ : std_logic;
SIGNAL \port_map_multi|Add13~17_combout\ : std_logic;
SIGNAL \port_map_multi|Add13~16\ : std_logic;
SIGNAL \port_map_multi|Add13~18_combout\ : std_logic;
SIGNAL \port_map_multi|Add12~13\ : std_logic;
SIGNAL \port_map_multi|Add12~14_combout\ : std_logic;
SIGNAL \port_map_multi|Add11~23\ : std_logic;
SIGNAL \port_map_multi|Add11~26_combout\ : std_logic;
SIGNAL \port_map_multi|Add11~28_combout\ : std_logic;
SIGNAL \port_map_multi|Add11~29_combout\ : std_logic;
SIGNAL \port_map_multi|Add13~20_combout\ : std_logic;
SIGNAL \port_map_multi|Add13~19\ : std_logic;
SIGNAL \port_map_multi|Add13~21_combout\ : std_logic;
SIGNAL \port_map_multi|Add13~23_combout\ : std_logic;
SIGNAL \port_map_multi|Add13~22\ : std_logic;
SIGNAL \port_map_multi|Add13~24_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux12~6_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \overflow$latch~combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_ula_op <= ula_op;
ww_in_port_A <= in_port_A;
ww_in_port_B <= in_port_B;
out_ula_result <= ww_out_ula_result;
zero <= ww_zero;
overflow <= ww_overflow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\out_ula_result[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~2_combout\,
	devoe => ww_devoe,
	o => \out_ula_result[0]~output_o\);

\out_ula_result[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~5_combout\,
	devoe => ww_devoe,
	o => \out_ula_result[1]~output_o\);

\out_ula_result[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~5_combout\,
	devoe => ww_devoe,
	o => \out_ula_result[2]~output_o\);

\out_ula_result[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~5_combout\,
	devoe => ww_devoe,
	o => \out_ula_result[3]~output_o\);

\out_ula_result[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~5_combout\,
	devoe => ww_devoe,
	o => \out_ula_result[4]~output_o\);

\out_ula_result[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~5_combout\,
	devoe => ww_devoe,
	o => \out_ula_result[5]~output_o\);

\out_ula_result[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~5_combout\,
	devoe => ww_devoe,
	o => \out_ula_result[6]~output_o\);

\out_ula_result[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~4_combout\,
	devoe => ww_devoe,
	o => \out_ula_result[7]~output_o\);

\zero~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \zero$latch~combout\,
	devoe => ww_devoe,
	o => \zero~output_o\);

\overflow~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \overflow$latch~combout\,
	devoe => ww_devoe,
	o => \overflow~output_o\);

\ula_op[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ula_op(0),
	o => \ula_op[0]~input_o\);

\ula_op[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ula_op(3),
	o => \ula_op[3]~input_o\);

\in_port_A[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_port_A(0),
	o => \in_port_A[0]~input_o\);

\in_port_B[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_port_B(0),
	o => \in_port_B[0]~input_o\);

\ula_op[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ula_op(1),
	o => \ula_op[1]~input_o\);

\ula_op[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ula_op(2),
	o => \ula_op[2]~input_o\);

\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\ula_op[2]~input_o\ & ((\ula_op[1]~input_o\ & ((\in_port_B[0]~input_o\))) # (!\ula_op[1]~input_o\ & (\in_port_A[0]~input_o\)))) # (!\ula_op[2]~input_o\ & (\in_port_A[0]~input_o\ $ ((\in_port_B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_A[0]~input_o\,
	datab => \in_port_B[0]~input_o\,
	datac => \ula_op[1]~input_o\,
	datad => \ula_op[2]~input_o\,
	combout => \Mux11~0_combout\);

\Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\in_port_A[0]~input_o\ & (\in_port_B[0]~input_o\ & (\ula_op[1]~input_o\ & !\ula_op[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_A[0]~input_o\,
	datab => \in_port_B[0]~input_o\,
	datac => \ula_op[1]~input_o\,
	datad => \ula_op[2]~input_o\,
	combout => \Mux11~1_combout\);

\Mux11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\ula_op[3]~input_o\ & (\ula_op[0]~input_o\ & (!\Mux11~0_combout\ & \Mux11~1_combout\))) # (!\ula_op[3]~input_o\ & (((\Mux11~0_combout\ & !\Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[0]~input_o\,
	datab => \ula_op[3]~input_o\,
	datac => \Mux11~0_combout\,
	datad => \Mux11~1_combout\,
	combout => \Mux11~2_combout\);

\Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\in_port_B[0]~input_o\ & (\ula_op[1]~input_o\ $ (\in_port_A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[1]~input_o\,
	datab => \in_port_A[0]~input_o\,
	datac => \in_port_B[0]~input_o\,
	combout => \Mux10~0_combout\);

\in_port_B[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_port_B(1),
	o => \in_port_B[1]~input_o\);

\in_port_A[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_port_A(1),
	o => \in_port_A[1]~input_o\);

\Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\ula_op[2]~input_o\ & ((\ula_op[1]~input_o\ & (\in_port_B[1]~input_o\)) # (!\ula_op[1]~input_o\ & ((\in_port_A[1]~input_o\))))) # (!\ula_op[2]~input_o\ & (\in_port_B[1]~input_o\ $ ((\in_port_A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[2]~input_o\,
	datab => \in_port_B[1]~input_o\,
	datac => \in_port_A[1]~input_o\,
	datad => \ula_op[1]~input_o\,
	combout => \Mux10~1_combout\);

\Mux10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (!\ula_op[3]~input_o\ & (\Mux10~1_combout\ $ (((\Mux10~0_combout\ & !\ula_op[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[3]~input_o\,
	datab => \Mux10~0_combout\,
	datac => \ula_op[2]~input_o\,
	datad => \Mux10~1_combout\,
	combout => \Mux10~2_combout\);

\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\ula_op[3]~input_o\ & (\ula_op[0]~input_o\ & (\ula_op[1]~input_o\ & !\ula_op[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[3]~input_o\,
	datab => \ula_op[0]~input_o\,
	datac => \ula_op[1]~input_o\,
	datad => \ula_op[2]~input_o\,
	combout => \Mux4~0_combout\);

\port_map_multi|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add0~1_cout\ = CARRY(!\in_port_A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_A[0]~input_o\,
	datad => VCC,
	cout => \port_map_multi|Add0~1_cout\);

\port_map_multi|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add0~2_combout\ = (\in_port_A[1]~input_o\ & ((\port_map_multi|Add0~1_cout\) # (GND))) # (!\in_port_A[1]~input_o\ & (!\port_map_multi|Add0~1_cout\))
-- \port_map_multi|Add0~3\ = CARRY((\in_port_A[1]~input_o\) # (!\port_map_multi|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_A[1]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add0~1_cout\,
	combout => \port_map_multi|Add0~2_combout\,
	cout => \port_map_multi|Add0~3\);

\Mux10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\in_port_B[0]~input_o\ & (\in_port_B[1]~input_o\ & \port_map_multi|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_B[0]~input_o\,
	datab => \in_port_B[1]~input_o\,
	datac => \port_map_multi|Add0~2_combout\,
	combout => \Mux10~3_combout\);

\port_map_multi|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add0~4_combout\ = (\in_port_B[0]~input_o\ & \port_map_multi|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_B[0]~input_o\,
	datab => \port_map_multi|Add0~2_combout\,
	combout => \port_map_multi|Add0~4_combout\);

\port_map_multi|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add2~0_combout\ = (\port_map_multi|Add0~4_combout\ & ((GND) # (!\in_port_A[0]~input_o\))) # (!\port_map_multi|Add0~4_combout\ & (\in_port_A[0]~input_o\ $ (GND)))
-- \port_map_multi|Add2~1\ = CARRY((\port_map_multi|Add0~4_combout\) # (!\in_port_A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add0~4_combout\,
	datab => \in_port_A[0]~input_o\,
	datad => VCC,
	combout => \port_map_multi|Add2~0_combout\,
	cout => \port_map_multi|Add2~1\);

\port_map_multi|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add1~14_combout\ = (\port_map_multi|Add0~4_combout\ & (\in_port_A[0]~input_o\ $ (VCC))) # (!\port_map_multi|Add0~4_combout\ & (\in_port_A[0]~input_o\ & VCC))
-- \port_map_multi|Add1~15\ = CARRY((\port_map_multi|Add0~4_combout\ & \in_port_A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add0~4_combout\,
	datab => \in_port_A[0]~input_o\,
	datad => VCC,
	combout => \port_map_multi|Add1~14_combout\,
	cout => \port_map_multi|Add1~15\);

\Mux10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\in_port_B[0]~input_o\ & (((\port_map_multi|Add1~14_combout\ & !\in_port_B[1]~input_o\)))) # (!\in_port_B[0]~input_o\ & (\port_map_multi|Add2~0_combout\ & ((\in_port_B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add2~0_combout\,
	datab => \port_map_multi|Add1~14_combout\,
	datac => \in_port_B[0]~input_o\,
	datad => \in_port_B[1]~input_o\,
	combout => \Mux10~4_combout\);

\Mux10~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (\Mux10~2_combout\) # ((\Mux4~0_combout\ & ((\Mux10~3_combout\) # (\Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~2_combout\,
	datab => \Mux4~0_combout\,
	datac => \Mux10~3_combout\,
	datad => \Mux10~4_combout\,
	combout => \Mux10~5_combout\);

\in_port_B[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_port_B(2),
	o => \in_port_B[2]~input_o\);

\in_port_A[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_port_A(2),
	o => \in_port_A[2]~input_o\);

\port_map_sub|A1|A1|cout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_sub|A1|A1|cout~combout\ = (\in_port_A[1]~input_o\ & ((\in_port_A[0]~input_o\) # ((!\in_port_B[1]~input_o\) # (!\in_port_B[0]~input_o\)))) # (!\in_port_A[1]~input_o\ & (!\in_port_B[1]~input_o\ & ((\in_port_A[0]~input_o\) # 
-- (!\in_port_B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_A[1]~input_o\,
	datab => \in_port_A[0]~input_o\,
	datac => \in_port_B[0]~input_o\,
	datad => \in_port_B[1]~input_o\,
	combout => \port_map_sub|A1|A1|cout~combout\);

\port_map_adder|A1|cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_adder|A1|cout~0_combout\ = (\in_port_A[1]~input_o\ & ((\in_port_B[1]~input_o\) # ((\in_port_B[0]~input_o\ & \in_port_A[0]~input_o\)))) # (!\in_port_A[1]~input_o\ & (\in_port_B[0]~input_o\ & (\in_port_A[0]~input_o\ & \in_port_B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_B[0]~input_o\,
	datab => \in_port_A[0]~input_o\,
	datac => \in_port_A[1]~input_o\,
	datad => \in_port_B[1]~input_o\,
	combout => \port_map_adder|A1|cout~0_combout\);

\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\ula_op[2]~input_o\ & (\ula_op[1]~input_o\)) # (!\ula_op[2]~input_o\ & ((\ula_op[1]~input_o\ & (!\port_map_sub|A1|A1|cout~combout\)) # (!\ula_op[1]~input_o\ & ((\port_map_adder|A1|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[2]~input_o\,
	datab => \ula_op[1]~input_o\,
	datac => \port_map_sub|A1|A1|cout~combout\,
	datad => \port_map_adder|A1|cout~0_combout\,
	combout => \Mux9~0_combout\);

\Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\ula_op[2]~input_o\ & ((\Mux9~0_combout\ & (\in_port_B[2]~input_o\)) # (!\Mux9~0_combout\ & ((\in_port_A[2]~input_o\))))) # (!\ula_op[2]~input_o\ & (\in_port_B[2]~input_o\ $ (\in_port_A[2]~input_o\ $ (\Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_B[2]~input_o\,
	datab => \in_port_A[2]~input_o\,
	datac => \ula_op[2]~input_o\,
	datad => \Mux9~0_combout\,
	combout => \Mux9~1_combout\);

\Mux9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (!\ula_op[3]~input_o\ & \Mux9~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[3]~input_o\,
	datab => \Mux9~1_combout\,
	combout => \Mux9~2_combout\);

\port_map_multi|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add0~5_combout\ = (\in_port_A[2]~input_o\ & (!\port_map_multi|Add0~3\ & VCC)) # (!\in_port_A[2]~input_o\ & (\port_map_multi|Add0~3\ $ (GND)))
-- \port_map_multi|Add0~6\ = CARRY((!\in_port_A[2]~input_o\ & !\port_map_multi|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_A[2]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add0~3\,
	combout => \port_map_multi|Add0~5_combout\,
	cout => \port_map_multi|Add0~6\);

\port_map_multi|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add0~7_combout\ = (\in_port_B[0]~input_o\ & \port_map_multi|Add0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_B[0]~input_o\,
	datab => \port_map_multi|Add0~5_combout\,
	combout => \port_map_multi|Add0~7_combout\);

\port_map_multi|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add2~2_combout\ = (\port_map_multi|Add0~7_combout\ & ((\in_port_A[1]~input_o\ & (!\port_map_multi|Add2~1\)) # (!\in_port_A[1]~input_o\ & (\port_map_multi|Add2~1\ & VCC)))) # (!\port_map_multi|Add0~7_combout\ & ((\in_port_A[1]~input_o\ & 
-- ((\port_map_multi|Add2~1\) # (GND))) # (!\in_port_A[1]~input_o\ & (!\port_map_multi|Add2~1\))))
-- \port_map_multi|Add2~3\ = CARRY((\port_map_multi|Add0~7_combout\ & (\in_port_A[1]~input_o\ & !\port_map_multi|Add2~1\)) # (!\port_map_multi|Add0~7_combout\ & ((\in_port_A[1]~input_o\) # (!\port_map_multi|Add2~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add0~7_combout\,
	datab => \in_port_A[1]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add2~1\,
	combout => \port_map_multi|Add2~2_combout\,
	cout => \port_map_multi|Add2~3\);

\port_map_multi|Add1~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add1~37_combout\ = (\in_port_B[1]~input_o\ & ((\in_port_B[0]~input_o\ & (\port_map_multi|Add0~5_combout\)) # (!\in_port_B[0]~input_o\ & ((\port_map_multi|Add2~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_B[0]~input_o\,
	datab => \port_map_multi|Add0~5_combout\,
	datac => \in_port_B[1]~input_o\,
	datad => \port_map_multi|Add2~2_combout\,
	combout => \port_map_multi|Add1~37_combout\);

\port_map_multi|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add1~16_combout\ = (\port_map_multi|Add0~7_combout\ & ((\in_port_A[1]~input_o\ & (\port_map_multi|Add1~15\ & VCC)) # (!\in_port_A[1]~input_o\ & (!\port_map_multi|Add1~15\)))) # (!\port_map_multi|Add0~7_combout\ & ((\in_port_A[1]~input_o\ & 
-- (!\port_map_multi|Add1~15\)) # (!\in_port_A[1]~input_o\ & ((\port_map_multi|Add1~15\) # (GND)))))
-- \port_map_multi|Add1~17\ = CARRY((\port_map_multi|Add0~7_combout\ & (!\in_port_A[1]~input_o\ & !\port_map_multi|Add1~15\)) # (!\port_map_multi|Add0~7_combout\ & ((!\port_map_multi|Add1~15\) # (!\in_port_A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add0~7_combout\,
	datab => \in_port_A[1]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add1~15\,
	combout => \port_map_multi|Add1~16_combout\,
	cout => \port_map_multi|Add1~17\);

\port_map_multi|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add1~18_combout\ = (\port_map_multi|Add1~37_combout\) # ((\in_port_B[0]~input_o\ & (\port_map_multi|Add1~16_combout\ & !\in_port_B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add1~37_combout\,
	datab => \in_port_B[0]~input_o\,
	datac => \port_map_multi|Add1~16_combout\,
	datad => \in_port_B[1]~input_o\,
	combout => \port_map_multi|Add1~18_combout\);

\Mux9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\port_map_multi|Add1~18_combout\ & (\in_port_B[1]~input_o\ $ (!\in_port_B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add1~18_combout\,
	datab => \in_port_B[1]~input_o\,
	datac => \in_port_B[2]~input_o\,
	combout => \Mux9~3_combout\);

\port_map_multi|Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add4~0_combout\ = (\port_map_multi|Add1~18_combout\ & ((GND) # (!\in_port_A[0]~input_o\))) # (!\port_map_multi|Add1~18_combout\ & (\in_port_A[0]~input_o\ $ (GND)))
-- \port_map_multi|Add4~1\ = CARRY((\port_map_multi|Add1~18_combout\) # (!\in_port_A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add1~18_combout\,
	datab => \in_port_A[0]~input_o\,
	datad => VCC,
	combout => \port_map_multi|Add4~0_combout\,
	cout => \port_map_multi|Add4~1\);

\port_map_multi|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add3~0_combout\ = (\port_map_multi|Add1~18_combout\ & (\in_port_A[0]~input_o\ $ (VCC))) # (!\port_map_multi|Add1~18_combout\ & (\in_port_A[0]~input_o\ & VCC))
-- \port_map_multi|Add3~1\ = CARRY((\port_map_multi|Add1~18_combout\ & \in_port_A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add1~18_combout\,
	datab => \in_port_A[0]~input_o\,
	datad => VCC,
	combout => \port_map_multi|Add3~0_combout\,
	cout => \port_map_multi|Add3~1\);

\Mux9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\in_port_B[1]~input_o\ & (((\port_map_multi|Add3~0_combout\ & !\in_port_B[2]~input_o\)))) # (!\in_port_B[1]~input_o\ & (\port_map_multi|Add4~0_combout\ & ((\in_port_B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add4~0_combout\,
	datab => \port_map_multi|Add3~0_combout\,
	datac => \in_port_B[1]~input_o\,
	datad => \in_port_B[2]~input_o\,
	combout => \Mux9~4_combout\);

\Mux9~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\Mux9~2_combout\) # ((\Mux4~0_combout\ & ((\Mux9~3_combout\) # (\Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~2_combout\,
	datab => \Mux4~0_combout\,
	datac => \Mux9~3_combout\,
	datad => \Mux9~4_combout\,
	combout => \Mux9~5_combout\);

\in_port_B[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_port_B(3),
	o => \in_port_B[3]~input_o\);

\in_port_A[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_port_A(3),
	o => \in_port_A[3]~input_o\);

\port_map_sub|A1|A2|cout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_sub|A1|A2|cout~combout\ = (\in_port_A[2]~input_o\ & ((\port_map_sub|A1|A1|cout~combout\) # (!\in_port_B[2]~input_o\))) # (!\in_port_A[2]~input_o\ & (\port_map_sub|A1|A1|cout~combout\ & !\in_port_B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_A[2]~input_o\,
	datab => \port_map_sub|A1|A1|cout~combout\,
	datad => \in_port_B[2]~input_o\,
	combout => \port_map_sub|A1|A2|cout~combout\);

\port_map_adder|A2|cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_adder|A2|cout~0_combout\ = (\in_port_B[2]~input_o\ & ((\in_port_A[2]~input_o\) # (\port_map_adder|A1|cout~0_combout\))) # (!\in_port_B[2]~input_o\ & (\in_port_A[2]~input_o\ & \port_map_adder|A1|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_B[2]~input_o\,
	datab => \in_port_A[2]~input_o\,
	datac => \port_map_adder|A1|cout~0_combout\,
	combout => \port_map_adder|A2|cout~0_combout\);

\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\ula_op[2]~input_o\ & (\ula_op[1]~input_o\)) # (!\ula_op[2]~input_o\ & ((\ula_op[1]~input_o\ & (!\port_map_sub|A1|A2|cout~combout\)) # (!\ula_op[1]~input_o\ & ((\port_map_adder|A2|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[2]~input_o\,
	datab => \ula_op[1]~input_o\,
	datac => \port_map_sub|A1|A2|cout~combout\,
	datad => \port_map_adder|A2|cout~0_combout\,
	combout => \Mux8~0_combout\);

\Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\ula_op[2]~input_o\ & ((\Mux8~0_combout\ & (\in_port_B[3]~input_o\)) # (!\Mux8~0_combout\ & ((\in_port_A[3]~input_o\))))) # (!\ula_op[2]~input_o\ & (\in_port_B[3]~input_o\ $ (\in_port_A[3]~input_o\ $ (\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_B[3]~input_o\,
	datab => \in_port_A[3]~input_o\,
	datac => \ula_op[2]~input_o\,
	datad => \Mux8~0_combout\,
	combout => \Mux8~1_combout\);

\Mux8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (!\ula_op[3]~input_o\ & \Mux8~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[3]~input_o\,
	datab => \Mux8~1_combout\,
	combout => \Mux8~2_combout\);

\port_map_multi|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add0~8_combout\ = (\in_port_A[3]~input_o\ & ((\port_map_multi|Add0~6\) # (GND))) # (!\in_port_A[3]~input_o\ & (!\port_map_multi|Add0~6\))
-- \port_map_multi|Add0~9\ = CARRY((\in_port_A[3]~input_o\) # (!\port_map_multi|Add0~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_A[3]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add0~6\,
	combout => \port_map_multi|Add0~8_combout\,
	cout => \port_map_multi|Add0~9\);

\port_map_multi|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add0~10_combout\ = (\in_port_B[0]~input_o\ & \port_map_multi|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_B[0]~input_o\,
	datab => \port_map_multi|Add0~8_combout\,
	combout => \port_map_multi|Add0~10_combout\);

\port_map_multi|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add2~4_combout\ = ((\port_map_multi|Add0~10_combout\ $ (\in_port_A[2]~input_o\ $ (\port_map_multi|Add2~3\)))) # (GND)
-- \port_map_multi|Add2~5\ = CARRY((\port_map_multi|Add0~10_combout\ & ((!\port_map_multi|Add2~3\) # (!\in_port_A[2]~input_o\))) # (!\port_map_multi|Add0~10_combout\ & (!\in_port_A[2]~input_o\ & !\port_map_multi|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add0~10_combout\,
	datab => \in_port_A[2]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add2~3\,
	combout => \port_map_multi|Add2~4_combout\,
	cout => \port_map_multi|Add2~5\);

\port_map_multi|Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add1~38_combout\ = (\in_port_B[1]~input_o\ & ((\in_port_B[0]~input_o\ & (\port_map_multi|Add0~8_combout\)) # (!\in_port_B[0]~input_o\ & ((\port_map_multi|Add2~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_B[0]~input_o\,
	datab => \port_map_multi|Add0~8_combout\,
	datac => \in_port_B[1]~input_o\,
	datad => \port_map_multi|Add2~4_combout\,
	combout => \port_map_multi|Add1~38_combout\);

\port_map_multi|Add1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add1~19_combout\ = ((\port_map_multi|Add0~10_combout\ $ (\in_port_A[2]~input_o\ $ (!\port_map_multi|Add1~17\)))) # (GND)
-- \port_map_multi|Add1~20\ = CARRY((\port_map_multi|Add0~10_combout\ & ((\in_port_A[2]~input_o\) # (!\port_map_multi|Add1~17\))) # (!\port_map_multi|Add0~10_combout\ & (\in_port_A[2]~input_o\ & !\port_map_multi|Add1~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add0~10_combout\,
	datab => \in_port_A[2]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add1~17\,
	combout => \port_map_multi|Add1~19_combout\,
	cout => \port_map_multi|Add1~20\);

\port_map_multi|Add1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add1~21_combout\ = (\port_map_multi|Add1~38_combout\) # ((\in_port_B[0]~input_o\ & (\port_map_multi|Add1~19_combout\ & !\in_port_B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add1~38_combout\,
	datab => \in_port_B[0]~input_o\,
	datac => \port_map_multi|Add1~19_combout\,
	datad => \in_port_B[1]~input_o\,
	combout => \port_map_multi|Add1~21_combout\);

\port_map_multi|Add4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add4~2_combout\ = (\port_map_multi|Add1~21_combout\ & ((\in_port_A[1]~input_o\ & (!\port_map_multi|Add4~1\)) # (!\in_port_A[1]~input_o\ & (\port_map_multi|Add4~1\ & VCC)))) # (!\port_map_multi|Add1~21_combout\ & ((\in_port_A[1]~input_o\ & 
-- ((\port_map_multi|Add4~1\) # (GND))) # (!\in_port_A[1]~input_o\ & (!\port_map_multi|Add4~1\))))
-- \port_map_multi|Add4~3\ = CARRY((\port_map_multi|Add1~21_combout\ & (\in_port_A[1]~input_o\ & !\port_map_multi|Add4~1\)) # (!\port_map_multi|Add1~21_combout\ & ((\in_port_A[1]~input_o\) # (!\port_map_multi|Add4~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add1~21_combout\,
	datab => \in_port_A[1]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add4~1\,
	combout => \port_map_multi|Add4~2_combout\,
	cout => \port_map_multi|Add4~3\);

\port_map_multi|Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add3~2_combout\ = (\port_map_multi|Add1~21_combout\ & ((\in_port_A[1]~input_o\ & (\port_map_multi|Add3~1\ & VCC)) # (!\in_port_A[1]~input_o\ & (!\port_map_multi|Add3~1\)))) # (!\port_map_multi|Add1~21_combout\ & ((\in_port_A[1]~input_o\ & 
-- (!\port_map_multi|Add3~1\)) # (!\in_port_A[1]~input_o\ & ((\port_map_multi|Add3~1\) # (GND)))))
-- \port_map_multi|Add3~3\ = CARRY((\port_map_multi|Add1~21_combout\ & (!\in_port_A[1]~input_o\ & !\port_map_multi|Add3~1\)) # (!\port_map_multi|Add1~21_combout\ & ((!\port_map_multi|Add3~1\) # (!\in_port_A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add1~21_combout\,
	datab => \in_port_A[1]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add3~1\,
	combout => \port_map_multi|Add3~2_combout\,
	cout => \port_map_multi|Add3~3\);

\port_map_multi|Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add3~4_combout\ = (\in_port_B[1]~input_o\ & (((\port_map_multi|Add3~2_combout\ & !\in_port_B[2]~input_o\)))) # (!\in_port_B[1]~input_o\ & (\port_map_multi|Add4~2_combout\ & ((\in_port_B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add4~2_combout\,
	datab => \port_map_multi|Add3~2_combout\,
	datac => \in_port_B[1]~input_o\,
	datad => \in_port_B[2]~input_o\,
	combout => \port_map_multi|Add3~4_combout\);

\port_map_multi|Add3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add3~5_combout\ = (\port_map_multi|Add3~4_combout\) # ((\port_map_multi|Add1~21_combout\ & (\in_port_B[1]~input_o\ $ (!\in_port_B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add3~4_combout\,
	datab => \port_map_multi|Add1~21_combout\,
	datac => \in_port_B[1]~input_o\,
	datad => \in_port_B[2]~input_o\,
	combout => \port_map_multi|Add3~5_combout\);

\Mux8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\port_map_multi|Add3~5_combout\ & (\in_port_B[2]~input_o\ $ (!\in_port_B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add3~5_combout\,
	datab => \in_port_B[2]~input_o\,
	datac => \in_port_B[3]~input_o\,
	combout => \Mux8~3_combout\);

\port_map_multi|Add6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add6~0_combout\ = (\port_map_multi|Add3~5_combout\ & ((GND) # (!\in_port_A[0]~input_o\))) # (!\port_map_multi|Add3~5_combout\ & (\in_port_A[0]~input_o\ $ (GND)))
-- \port_map_multi|Add6~1\ = CARRY((\port_map_multi|Add3~5_combout\) # (!\in_port_A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add3~5_combout\,
	datab => \in_port_A[0]~input_o\,
	datad => VCC,
	combout => \port_map_multi|Add6~0_combout\,
	cout => \port_map_multi|Add6~1\);

\port_map_multi|Add5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add5~0_combout\ = (\port_map_multi|Add3~5_combout\ & (\in_port_A[0]~input_o\ $ (VCC))) # (!\port_map_multi|Add3~5_combout\ & (\in_port_A[0]~input_o\ & VCC))
-- \port_map_multi|Add5~1\ = CARRY((\port_map_multi|Add3~5_combout\ & \in_port_A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add3~5_combout\,
	datab => \in_port_A[0]~input_o\,
	datad => VCC,
	combout => \port_map_multi|Add5~0_combout\,
	cout => \port_map_multi|Add5~1\);

\Mux8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\in_port_B[2]~input_o\ & (((\port_map_multi|Add5~0_combout\ & !\in_port_B[3]~input_o\)))) # (!\in_port_B[2]~input_o\ & (\port_map_multi|Add6~0_combout\ & ((\in_port_B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add6~0_combout\,
	datab => \port_map_multi|Add5~0_combout\,
	datac => \in_port_B[2]~input_o\,
	datad => \in_port_B[3]~input_o\,
	combout => \Mux8~4_combout\);

\Mux8~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (\Mux8~2_combout\) # ((\Mux4~0_combout\ & ((\Mux8~3_combout\) # (\Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~2_combout\,
	datab => \Mux4~0_combout\,
	datac => \Mux8~3_combout\,
	datad => \Mux8~4_combout\,
	combout => \Mux8~5_combout\);

\in_port_B[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_port_B(4),
	o => \in_port_B[4]~input_o\);

\in_port_A[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_port_A(4),
	o => \in_port_A[4]~input_o\);

\port_map_sub|A1|A3|cout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_sub|A1|A3|cout~combout\ = (\in_port_A[3]~input_o\ & ((\port_map_sub|A1|A2|cout~combout\) # (!\in_port_B[3]~input_o\))) # (!\in_port_A[3]~input_o\ & (\port_map_sub|A1|A2|cout~combout\ & !\in_port_B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_A[3]~input_o\,
	datab => \port_map_sub|A1|A2|cout~combout\,
	datad => \in_port_B[3]~input_o\,
	combout => \port_map_sub|A1|A3|cout~combout\);

\port_map_adder|A3|cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_adder|A3|cout~0_combout\ = (\in_port_B[3]~input_o\ & ((\in_port_A[3]~input_o\) # (\port_map_adder|A2|cout~0_combout\))) # (!\in_port_B[3]~input_o\ & (\in_port_A[3]~input_o\ & \port_map_adder|A2|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_B[3]~input_o\,
	datab => \in_port_A[3]~input_o\,
	datac => \port_map_adder|A2|cout~0_combout\,
	combout => \port_map_adder|A3|cout~0_combout\);

\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\ula_op[2]~input_o\ & (\ula_op[1]~input_o\)) # (!\ula_op[2]~input_o\ & ((\ula_op[1]~input_o\ & (!\port_map_sub|A1|A3|cout~combout\)) # (!\ula_op[1]~input_o\ & ((\port_map_adder|A3|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[2]~input_o\,
	datab => \ula_op[1]~input_o\,
	datac => \port_map_sub|A1|A3|cout~combout\,
	datad => \port_map_adder|A3|cout~0_combout\,
	combout => \Mux7~0_combout\);

\Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\ula_op[2]~input_o\ & ((\Mux7~0_combout\ & (\in_port_B[4]~input_o\)) # (!\Mux7~0_combout\ & ((\in_port_A[4]~input_o\))))) # (!\ula_op[2]~input_o\ & (\in_port_B[4]~input_o\ $ (\in_port_A[4]~input_o\ $ (\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_B[4]~input_o\,
	datab => \in_port_A[4]~input_o\,
	datac => \ula_op[2]~input_o\,
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

\Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (!\ula_op[3]~input_o\ & \Mux7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[3]~input_o\,
	datab => \Mux7~1_combout\,
	combout => \Mux7~2_combout\);

\port_map_multi|Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add0~11_combout\ = (\in_port_A[4]~input_o\ & (!\port_map_multi|Add0~9\ & VCC)) # (!\in_port_A[4]~input_o\ & (\port_map_multi|Add0~9\ $ (GND)))
-- \port_map_multi|Add0~12\ = CARRY((!\in_port_A[4]~input_o\ & !\port_map_multi|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_A[4]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add0~9\,
	combout => \port_map_multi|Add0~11_combout\,
	cout => \port_map_multi|Add0~12\);

\port_map_multi|Add0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add0~13_combout\ = (\in_port_B[0]~input_o\ & \port_map_multi|Add0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_B[0]~input_o\,
	datab => \port_map_multi|Add0~11_combout\,
	combout => \port_map_multi|Add0~13_combout\);

\port_map_multi|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add2~6_combout\ = (\port_map_multi|Add0~13_combout\ & ((\in_port_A[3]~input_o\ & (!\port_map_multi|Add2~5\)) # (!\in_port_A[3]~input_o\ & (\port_map_multi|Add2~5\ & VCC)))) # (!\port_map_multi|Add0~13_combout\ & ((\in_port_A[3]~input_o\ & 
-- ((\port_map_multi|Add2~5\) # (GND))) # (!\in_port_A[3]~input_o\ & (!\port_map_multi|Add2~5\))))
-- \port_map_multi|Add2~7\ = CARRY((\port_map_multi|Add0~13_combout\ & (\in_port_A[3]~input_o\ & !\port_map_multi|Add2~5\)) # (!\port_map_multi|Add0~13_combout\ & ((\in_port_A[3]~input_o\) # (!\port_map_multi|Add2~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add0~13_combout\,
	datab => \in_port_A[3]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add2~5\,
	combout => \port_map_multi|Add2~6_combout\,
	cout => \port_map_multi|Add2~7\);

\port_map_multi|Add1~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add1~39_combout\ = (\in_port_B[1]~input_o\ & ((\in_port_B[0]~input_o\ & (\port_map_multi|Add0~11_combout\)) # (!\in_port_B[0]~input_o\ & ((\port_map_multi|Add2~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_B[0]~input_o\,
	datab => \port_map_multi|Add0~11_combout\,
	datac => \in_port_B[1]~input_o\,
	datad => \port_map_multi|Add2~6_combout\,
	combout => \port_map_multi|Add1~39_combout\);

\port_map_multi|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add1~22_combout\ = (\port_map_multi|Add0~13_combout\ & ((\in_port_A[3]~input_o\ & (\port_map_multi|Add1~20\ & VCC)) # (!\in_port_A[3]~input_o\ & (!\port_map_multi|Add1~20\)))) # (!\port_map_multi|Add0~13_combout\ & ((\in_port_A[3]~input_o\ 
-- & (!\port_map_multi|Add1~20\)) # (!\in_port_A[3]~input_o\ & ((\port_map_multi|Add1~20\) # (GND)))))
-- \port_map_multi|Add1~23\ = CARRY((\port_map_multi|Add0~13_combout\ & (!\in_port_A[3]~input_o\ & !\port_map_multi|Add1~20\)) # (!\port_map_multi|Add0~13_combout\ & ((!\port_map_multi|Add1~20\) # (!\in_port_A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add0~13_combout\,
	datab => \in_port_A[3]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add1~20\,
	combout => \port_map_multi|Add1~22_combout\,
	cout => \port_map_multi|Add1~23\);

\port_map_multi|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add1~24_combout\ = (\port_map_multi|Add1~39_combout\) # ((\in_port_B[0]~input_o\ & (\port_map_multi|Add1~22_combout\ & !\in_port_B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add1~39_combout\,
	datab => \in_port_B[0]~input_o\,
	datac => \port_map_multi|Add1~22_combout\,
	datad => \in_port_B[1]~input_o\,
	combout => \port_map_multi|Add1~24_combout\);

\port_map_multi|Add4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add4~4_combout\ = ((\port_map_multi|Add1~24_combout\ $ (\in_port_A[2]~input_o\ $ (\port_map_multi|Add4~3\)))) # (GND)
-- \port_map_multi|Add4~5\ = CARRY((\port_map_multi|Add1~24_combout\ & ((!\port_map_multi|Add4~3\) # (!\in_port_A[2]~input_o\))) # (!\port_map_multi|Add1~24_combout\ & (!\in_port_A[2]~input_o\ & !\port_map_multi|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add1~24_combout\,
	datab => \in_port_A[2]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add4~3\,
	combout => \port_map_multi|Add4~4_combout\,
	cout => \port_map_multi|Add4~5\);

\port_map_multi|Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add3~6_combout\ = ((\port_map_multi|Add1~24_combout\ $ (\in_port_A[2]~input_o\ $ (!\port_map_multi|Add3~3\)))) # (GND)
-- \port_map_multi|Add3~7\ = CARRY((\port_map_multi|Add1~24_combout\ & ((\in_port_A[2]~input_o\) # (!\port_map_multi|Add3~3\))) # (!\port_map_multi|Add1~24_combout\ & (\in_port_A[2]~input_o\ & !\port_map_multi|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add1~24_combout\,
	datab => \in_port_A[2]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add3~3\,
	combout => \port_map_multi|Add3~6_combout\,
	cout => \port_map_multi|Add3~7\);

\port_map_multi|Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add3~8_combout\ = (\in_port_B[1]~input_o\ & (((\port_map_multi|Add3~6_combout\ & !\in_port_B[2]~input_o\)))) # (!\in_port_B[1]~input_o\ & (\port_map_multi|Add4~4_combout\ & ((\in_port_B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add4~4_combout\,
	datab => \port_map_multi|Add3~6_combout\,
	datac => \in_port_B[1]~input_o\,
	datad => \in_port_B[2]~input_o\,
	combout => \port_map_multi|Add3~8_combout\);

\port_map_multi|Add3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add3~9_combout\ = (\port_map_multi|Add3~8_combout\) # ((\port_map_multi|Add1~24_combout\ & (\in_port_B[1]~input_o\ $ (!\in_port_B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add3~8_combout\,
	datab => \port_map_multi|Add1~24_combout\,
	datac => \in_port_B[1]~input_o\,
	datad => \in_port_B[2]~input_o\,
	combout => \port_map_multi|Add3~9_combout\);

\port_map_multi|Add6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add6~2_combout\ = (\port_map_multi|Add3~9_combout\ & ((\in_port_A[1]~input_o\ & (!\port_map_multi|Add6~1\)) # (!\in_port_A[1]~input_o\ & (\port_map_multi|Add6~1\ & VCC)))) # (!\port_map_multi|Add3~9_combout\ & ((\in_port_A[1]~input_o\ & 
-- ((\port_map_multi|Add6~1\) # (GND))) # (!\in_port_A[1]~input_o\ & (!\port_map_multi|Add6~1\))))
-- \port_map_multi|Add6~3\ = CARRY((\port_map_multi|Add3~9_combout\ & (\in_port_A[1]~input_o\ & !\port_map_multi|Add6~1\)) # (!\port_map_multi|Add3~9_combout\ & ((\in_port_A[1]~input_o\) # (!\port_map_multi|Add6~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add3~9_combout\,
	datab => \in_port_A[1]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add6~1\,
	combout => \port_map_multi|Add6~2_combout\,
	cout => \port_map_multi|Add6~3\);

\port_map_multi|Add5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add5~2_combout\ = (\port_map_multi|Add3~9_combout\ & ((\in_port_A[1]~input_o\ & (\port_map_multi|Add5~1\ & VCC)) # (!\in_port_A[1]~input_o\ & (!\port_map_multi|Add5~1\)))) # (!\port_map_multi|Add3~9_combout\ & ((\in_port_A[1]~input_o\ & 
-- (!\port_map_multi|Add5~1\)) # (!\in_port_A[1]~input_o\ & ((\port_map_multi|Add5~1\) # (GND)))))
-- \port_map_multi|Add5~3\ = CARRY((\port_map_multi|Add3~9_combout\ & (!\in_port_A[1]~input_o\ & !\port_map_multi|Add5~1\)) # (!\port_map_multi|Add3~9_combout\ & ((!\port_map_multi|Add5~1\) # (!\in_port_A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add3~9_combout\,
	datab => \in_port_A[1]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add5~1\,
	combout => \port_map_multi|Add5~2_combout\,
	cout => \port_map_multi|Add5~3\);

\port_map_multi|Add5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add5~4_combout\ = (\in_port_B[2]~input_o\ & (((\port_map_multi|Add5~2_combout\ & !\in_port_B[3]~input_o\)))) # (!\in_port_B[2]~input_o\ & (\port_map_multi|Add6~2_combout\ & ((\in_port_B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add6~2_combout\,
	datab => \port_map_multi|Add5~2_combout\,
	datac => \in_port_B[2]~input_o\,
	datad => \in_port_B[3]~input_o\,
	combout => \port_map_multi|Add5~4_combout\);

\port_map_multi|Add5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add5~5_combout\ = (\port_map_multi|Add5~4_combout\) # ((\port_map_multi|Add3~9_combout\ & (\in_port_B[2]~input_o\ $ (!\in_port_B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add5~4_combout\,
	datab => \port_map_multi|Add3~9_combout\,
	datac => \in_port_B[2]~input_o\,
	datad => \in_port_B[3]~input_o\,
	combout => \port_map_multi|Add5~5_combout\);

\Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\port_map_multi|Add5~5_combout\ & (\in_port_B[3]~input_o\ $ (!\in_port_B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add5~5_combout\,
	datab => \in_port_B[3]~input_o\,
	datac => \in_port_B[4]~input_o\,
	combout => \Mux7~3_combout\);

\port_map_multi|Add8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add8~0_combout\ = (\port_map_multi|Add5~5_combout\ & ((GND) # (!\in_port_A[0]~input_o\))) # (!\port_map_multi|Add5~5_combout\ & (\in_port_A[0]~input_o\ $ (GND)))
-- \port_map_multi|Add8~1\ = CARRY((\port_map_multi|Add5~5_combout\) # (!\in_port_A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add5~5_combout\,
	datab => \in_port_A[0]~input_o\,
	datad => VCC,
	combout => \port_map_multi|Add8~0_combout\,
	cout => \port_map_multi|Add8~1\);

\port_map_multi|Add7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add7~0_combout\ = (\port_map_multi|Add5~5_combout\ & (\in_port_A[0]~input_o\ $ (VCC))) # (!\port_map_multi|Add5~5_combout\ & (\in_port_A[0]~input_o\ & VCC))
-- \port_map_multi|Add7~1\ = CARRY((\port_map_multi|Add5~5_combout\ & \in_port_A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add5~5_combout\,
	datab => \in_port_A[0]~input_o\,
	datad => VCC,
	combout => \port_map_multi|Add7~0_combout\,
	cout => \port_map_multi|Add7~1\);

\Mux7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\in_port_B[3]~input_o\ & (((\port_map_multi|Add7~0_combout\ & !\in_port_B[4]~input_o\)))) # (!\in_port_B[3]~input_o\ & (\port_map_multi|Add8~0_combout\ & ((\in_port_B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add8~0_combout\,
	datab => \port_map_multi|Add7~0_combout\,
	datac => \in_port_B[3]~input_o\,
	datad => \in_port_B[4]~input_o\,
	combout => \Mux7~4_combout\);

\Mux7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\Mux7~2_combout\) # ((\Mux4~0_combout\ & ((\Mux7~3_combout\) # (\Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~2_combout\,
	datab => \Mux4~0_combout\,
	datac => \Mux7~3_combout\,
	datad => \Mux7~4_combout\,
	combout => \Mux7~5_combout\);

\in_port_B[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_port_B(5),
	o => \in_port_B[5]~input_o\);

\in_port_A[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_port_A(5),
	o => \in_port_A[5]~input_o\);

\port_map_sub|A1|A4|cout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_sub|A1|A4|cout~combout\ = (\in_port_A[4]~input_o\ & ((\port_map_sub|A1|A3|cout~combout\) # (!\in_port_B[4]~input_o\))) # (!\in_port_A[4]~input_o\ & (\port_map_sub|A1|A3|cout~combout\ & !\in_port_B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_A[4]~input_o\,
	datab => \port_map_sub|A1|A3|cout~combout\,
	datad => \in_port_B[4]~input_o\,
	combout => \port_map_sub|A1|A4|cout~combout\);

\port_map_adder|A4|cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_adder|A4|cout~0_combout\ = (\in_port_B[4]~input_o\ & ((\in_port_A[4]~input_o\) # (\port_map_adder|A3|cout~0_combout\))) # (!\in_port_B[4]~input_o\ & (\in_port_A[4]~input_o\ & \port_map_adder|A3|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_B[4]~input_o\,
	datab => \in_port_A[4]~input_o\,
	datac => \port_map_adder|A3|cout~0_combout\,
	combout => \port_map_adder|A4|cout~0_combout\);

\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\ula_op[2]~input_o\ & (\ula_op[1]~input_o\)) # (!\ula_op[2]~input_o\ & ((\ula_op[1]~input_o\ & (!\port_map_sub|A1|A4|cout~combout\)) # (!\ula_op[1]~input_o\ & ((\port_map_adder|A4|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[2]~input_o\,
	datab => \ula_op[1]~input_o\,
	datac => \port_map_sub|A1|A4|cout~combout\,
	datad => \port_map_adder|A4|cout~0_combout\,
	combout => \Mux6~0_combout\);

\Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\ula_op[2]~input_o\ & ((\Mux6~0_combout\ & (\in_port_B[5]~input_o\)) # (!\Mux6~0_combout\ & ((\in_port_A[5]~input_o\))))) # (!\ula_op[2]~input_o\ & (\in_port_B[5]~input_o\ $ (\in_port_A[5]~input_o\ $ (\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_B[5]~input_o\,
	datab => \in_port_A[5]~input_o\,
	datac => \ula_op[2]~input_o\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

\Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (!\ula_op[3]~input_o\ & \Mux6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[3]~input_o\,
	datab => \Mux6~1_combout\,
	combout => \Mux6~2_combout\);

\port_map_multi|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add0~14_combout\ = (\in_port_A[5]~input_o\ & ((\port_map_multi|Add0~12\) # (GND))) # (!\in_port_A[5]~input_o\ & (!\port_map_multi|Add0~12\))
-- \port_map_multi|Add0~15\ = CARRY((\in_port_A[5]~input_o\) # (!\port_map_multi|Add0~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_A[5]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add0~12\,
	combout => \port_map_multi|Add0~14_combout\,
	cout => \port_map_multi|Add0~15\);

\port_map_multi|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add0~16_combout\ = (\in_port_B[0]~input_o\ & \port_map_multi|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_B[0]~input_o\,
	datab => \port_map_multi|Add0~14_combout\,
	combout => \port_map_multi|Add0~16_combout\);

\port_map_multi|Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add2~8_combout\ = ((\port_map_multi|Add0~16_combout\ $ (\in_port_A[4]~input_o\ $ (\port_map_multi|Add2~7\)))) # (GND)
-- \port_map_multi|Add2~9\ = CARRY((\port_map_multi|Add0~16_combout\ & ((!\port_map_multi|Add2~7\) # (!\in_port_A[4]~input_o\))) # (!\port_map_multi|Add0~16_combout\ & (!\in_port_A[4]~input_o\ & !\port_map_multi|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add0~16_combout\,
	datab => \in_port_A[4]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add2~7\,
	combout => \port_map_multi|Add2~8_combout\,
	cout => \port_map_multi|Add2~9\);

\port_map_multi|Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add1~40_combout\ = (\in_port_B[1]~input_o\ & ((\in_port_B[0]~input_o\ & (\port_map_multi|Add0~14_combout\)) # (!\in_port_B[0]~input_o\ & ((\port_map_multi|Add2~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_B[0]~input_o\,
	datab => \port_map_multi|Add0~14_combout\,
	datac => \in_port_B[1]~input_o\,
	datad => \port_map_multi|Add2~8_combout\,
	combout => \port_map_multi|Add1~40_combout\);

\port_map_multi|Add1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add1~25_combout\ = ((\port_map_multi|Add0~16_combout\ $ (\in_port_A[4]~input_o\ $ (!\port_map_multi|Add1~23\)))) # (GND)
-- \port_map_multi|Add1~26\ = CARRY((\port_map_multi|Add0~16_combout\ & ((\in_port_A[4]~input_o\) # (!\port_map_multi|Add1~23\))) # (!\port_map_multi|Add0~16_combout\ & (\in_port_A[4]~input_o\ & !\port_map_multi|Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add0~16_combout\,
	datab => \in_port_A[4]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add1~23\,
	combout => \port_map_multi|Add1~25_combout\,
	cout => \port_map_multi|Add1~26\);

\port_map_multi|Add1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add1~27_combout\ = (\port_map_multi|Add1~40_combout\) # ((\in_port_B[0]~input_o\ & (\port_map_multi|Add1~25_combout\ & !\in_port_B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add1~40_combout\,
	datab => \in_port_B[0]~input_o\,
	datac => \port_map_multi|Add1~25_combout\,
	datad => \in_port_B[1]~input_o\,
	combout => \port_map_multi|Add1~27_combout\);

\port_map_multi|Add4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add4~6_combout\ = (\port_map_multi|Add1~27_combout\ & ((\in_port_A[3]~input_o\ & (!\port_map_multi|Add4~5\)) # (!\in_port_A[3]~input_o\ & (\port_map_multi|Add4~5\ & VCC)))) # (!\port_map_multi|Add1~27_combout\ & ((\in_port_A[3]~input_o\ & 
-- ((\port_map_multi|Add4~5\) # (GND))) # (!\in_port_A[3]~input_o\ & (!\port_map_multi|Add4~5\))))
-- \port_map_multi|Add4~7\ = CARRY((\port_map_multi|Add1~27_combout\ & (\in_port_A[3]~input_o\ & !\port_map_multi|Add4~5\)) # (!\port_map_multi|Add1~27_combout\ & ((\in_port_A[3]~input_o\) # (!\port_map_multi|Add4~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add1~27_combout\,
	datab => \in_port_A[3]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add4~5\,
	combout => \port_map_multi|Add4~6_combout\,
	cout => \port_map_multi|Add4~7\);

\port_map_multi|Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add3~10_combout\ = (\port_map_multi|Add1~27_combout\ & ((\in_port_A[3]~input_o\ & (\port_map_multi|Add3~7\ & VCC)) # (!\in_port_A[3]~input_o\ & (!\port_map_multi|Add3~7\)))) # (!\port_map_multi|Add1~27_combout\ & ((\in_port_A[3]~input_o\ & 
-- (!\port_map_multi|Add3~7\)) # (!\in_port_A[3]~input_o\ & ((\port_map_multi|Add3~7\) # (GND)))))
-- \port_map_multi|Add3~11\ = CARRY((\port_map_multi|Add1~27_combout\ & (!\in_port_A[3]~input_o\ & !\port_map_multi|Add3~7\)) # (!\port_map_multi|Add1~27_combout\ & ((!\port_map_multi|Add3~7\) # (!\in_port_A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add1~27_combout\,
	datab => \in_port_A[3]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add3~7\,
	combout => \port_map_multi|Add3~10_combout\,
	cout => \port_map_multi|Add3~11\);

\port_map_multi|Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add3~12_combout\ = (\in_port_B[1]~input_o\ & (((\port_map_multi|Add3~10_combout\ & !\in_port_B[2]~input_o\)))) # (!\in_port_B[1]~input_o\ & (\port_map_multi|Add4~6_combout\ & ((\in_port_B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add4~6_combout\,
	datab => \port_map_multi|Add3~10_combout\,
	datac => \in_port_B[1]~input_o\,
	datad => \in_port_B[2]~input_o\,
	combout => \port_map_multi|Add3~12_combout\);

\port_map_multi|Add3~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add3~13_combout\ = (\port_map_multi|Add3~12_combout\) # ((\port_map_multi|Add1~27_combout\ & (\in_port_B[1]~input_o\ $ (!\in_port_B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add3~12_combout\,
	datab => \port_map_multi|Add1~27_combout\,
	datac => \in_port_B[1]~input_o\,
	datad => \in_port_B[2]~input_o\,
	combout => \port_map_multi|Add3~13_combout\);

\port_map_multi|Add6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add6~4_combout\ = ((\port_map_multi|Add3~13_combout\ $ (\in_port_A[2]~input_o\ $ (\port_map_multi|Add6~3\)))) # (GND)
-- \port_map_multi|Add6~5\ = CARRY((\port_map_multi|Add3~13_combout\ & ((!\port_map_multi|Add6~3\) # (!\in_port_A[2]~input_o\))) # (!\port_map_multi|Add3~13_combout\ & (!\in_port_A[2]~input_o\ & !\port_map_multi|Add6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add3~13_combout\,
	datab => \in_port_A[2]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add6~3\,
	combout => \port_map_multi|Add6~4_combout\,
	cout => \port_map_multi|Add6~5\);

\port_map_multi|Add5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add5~6_combout\ = ((\port_map_multi|Add3~13_combout\ $ (\in_port_A[2]~input_o\ $ (!\port_map_multi|Add5~3\)))) # (GND)
-- \port_map_multi|Add5~7\ = CARRY((\port_map_multi|Add3~13_combout\ & ((\in_port_A[2]~input_o\) # (!\port_map_multi|Add5~3\))) # (!\port_map_multi|Add3~13_combout\ & (\in_port_A[2]~input_o\ & !\port_map_multi|Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add3~13_combout\,
	datab => \in_port_A[2]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add5~3\,
	combout => \port_map_multi|Add5~6_combout\,
	cout => \port_map_multi|Add5~7\);

\port_map_multi|Add5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add5~8_combout\ = (\in_port_B[2]~input_o\ & (((\port_map_multi|Add5~6_combout\ & !\in_port_B[3]~input_o\)))) # (!\in_port_B[2]~input_o\ & (\port_map_multi|Add6~4_combout\ & ((\in_port_B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add6~4_combout\,
	datab => \port_map_multi|Add5~6_combout\,
	datac => \in_port_B[2]~input_o\,
	datad => \in_port_B[3]~input_o\,
	combout => \port_map_multi|Add5~8_combout\);

\port_map_multi|Add5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add5~9_combout\ = (\port_map_multi|Add5~8_combout\) # ((\port_map_multi|Add3~13_combout\ & (\in_port_B[2]~input_o\ $ (!\in_port_B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add5~8_combout\,
	datab => \port_map_multi|Add3~13_combout\,
	datac => \in_port_B[2]~input_o\,
	datad => \in_port_B[3]~input_o\,
	combout => \port_map_multi|Add5~9_combout\);

\port_map_multi|Add8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add8~2_combout\ = (\port_map_multi|Add5~9_combout\ & ((\in_port_A[1]~input_o\ & (!\port_map_multi|Add8~1\)) # (!\in_port_A[1]~input_o\ & (\port_map_multi|Add8~1\ & VCC)))) # (!\port_map_multi|Add5~9_combout\ & ((\in_port_A[1]~input_o\ & 
-- ((\port_map_multi|Add8~1\) # (GND))) # (!\in_port_A[1]~input_o\ & (!\port_map_multi|Add8~1\))))
-- \port_map_multi|Add8~3\ = CARRY((\port_map_multi|Add5~9_combout\ & (\in_port_A[1]~input_o\ & !\port_map_multi|Add8~1\)) # (!\port_map_multi|Add5~9_combout\ & ((\in_port_A[1]~input_o\) # (!\port_map_multi|Add8~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add5~9_combout\,
	datab => \in_port_A[1]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add8~1\,
	combout => \port_map_multi|Add8~2_combout\,
	cout => \port_map_multi|Add8~3\);

\port_map_multi|Add7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add7~2_combout\ = (\port_map_multi|Add5~9_combout\ & ((\in_port_A[1]~input_o\ & (\port_map_multi|Add7~1\ & VCC)) # (!\in_port_A[1]~input_o\ & (!\port_map_multi|Add7~1\)))) # (!\port_map_multi|Add5~9_combout\ & ((\in_port_A[1]~input_o\ & 
-- (!\port_map_multi|Add7~1\)) # (!\in_port_A[1]~input_o\ & ((\port_map_multi|Add7~1\) # (GND)))))
-- \port_map_multi|Add7~3\ = CARRY((\port_map_multi|Add5~9_combout\ & (!\in_port_A[1]~input_o\ & !\port_map_multi|Add7~1\)) # (!\port_map_multi|Add5~9_combout\ & ((!\port_map_multi|Add7~1\) # (!\in_port_A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add5~9_combout\,
	datab => \in_port_A[1]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add7~1\,
	combout => \port_map_multi|Add7~2_combout\,
	cout => \port_map_multi|Add7~3\);

\port_map_multi|Add7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add7~4_combout\ = (\in_port_B[3]~input_o\ & (((\port_map_multi|Add7~2_combout\ & !\in_port_B[4]~input_o\)))) # (!\in_port_B[3]~input_o\ & (\port_map_multi|Add8~2_combout\ & ((\in_port_B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add8~2_combout\,
	datab => \port_map_multi|Add7~2_combout\,
	datac => \in_port_B[3]~input_o\,
	datad => \in_port_B[4]~input_o\,
	combout => \port_map_multi|Add7~4_combout\);

\port_map_multi|Add7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add7~5_combout\ = (\port_map_multi|Add7~4_combout\) # ((\port_map_multi|Add5~9_combout\ & (\in_port_B[3]~input_o\ $ (!\in_port_B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add7~4_combout\,
	datab => \port_map_multi|Add5~9_combout\,
	datac => \in_port_B[3]~input_o\,
	datad => \in_port_B[4]~input_o\,
	combout => \port_map_multi|Add7~5_combout\);

\Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\port_map_multi|Add7~5_combout\ & (\in_port_B[4]~input_o\ $ (!\in_port_B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add7~5_combout\,
	datab => \in_port_B[4]~input_o\,
	datac => \in_port_B[5]~input_o\,
	combout => \Mux6~3_combout\);

\port_map_multi|Add10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add10~0_combout\ = (\port_map_multi|Add7~5_combout\ & ((GND) # (!\in_port_A[0]~input_o\))) # (!\port_map_multi|Add7~5_combout\ & (\in_port_A[0]~input_o\ $ (GND)))
-- \port_map_multi|Add10~1\ = CARRY((\port_map_multi|Add7~5_combout\) # (!\in_port_A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add7~5_combout\,
	datab => \in_port_A[0]~input_o\,
	datad => VCC,
	combout => \port_map_multi|Add10~0_combout\,
	cout => \port_map_multi|Add10~1\);

\port_map_multi|Add9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add9~0_combout\ = (\port_map_multi|Add7~5_combout\ & (\in_port_A[0]~input_o\ $ (VCC))) # (!\port_map_multi|Add7~5_combout\ & (\in_port_A[0]~input_o\ & VCC))
-- \port_map_multi|Add9~1\ = CARRY((\port_map_multi|Add7~5_combout\ & \in_port_A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add7~5_combout\,
	datab => \in_port_A[0]~input_o\,
	datad => VCC,
	combout => \port_map_multi|Add9~0_combout\,
	cout => \port_map_multi|Add9~1\);

\Mux6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\in_port_B[4]~input_o\ & (((\port_map_multi|Add9~0_combout\ & !\in_port_B[5]~input_o\)))) # (!\in_port_B[4]~input_o\ & (\port_map_multi|Add10~0_combout\ & ((\in_port_B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add10~0_combout\,
	datab => \port_map_multi|Add9~0_combout\,
	datac => \in_port_B[4]~input_o\,
	datad => \in_port_B[5]~input_o\,
	combout => \Mux6~4_combout\);

\Mux6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\Mux6~2_combout\) # ((\Mux4~0_combout\ & ((\Mux6~3_combout\) # (\Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \Mux4~0_combout\,
	datac => \Mux6~3_combout\,
	datad => \Mux6~4_combout\,
	combout => \Mux6~5_combout\);

\in_port_B[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_port_B(6),
	o => \in_port_B[6]~input_o\);

\in_port_A[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_port_A(6),
	o => \in_port_A[6]~input_o\);

\port_map_sub|A1|A5|cout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_sub|A1|A5|cout~combout\ = (\in_port_A[5]~input_o\ & ((\port_map_sub|A1|A4|cout~combout\) # (!\in_port_B[5]~input_o\))) # (!\in_port_A[5]~input_o\ & (\port_map_sub|A1|A4|cout~combout\ & !\in_port_B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_A[5]~input_o\,
	datab => \port_map_sub|A1|A4|cout~combout\,
	datad => \in_port_B[5]~input_o\,
	combout => \port_map_sub|A1|A5|cout~combout\);

\port_map_adder|A5|cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_adder|A5|cout~0_combout\ = (\in_port_B[5]~input_o\ & ((\in_port_A[5]~input_o\) # (\port_map_adder|A4|cout~0_combout\))) # (!\in_port_B[5]~input_o\ & (\in_port_A[5]~input_o\ & \port_map_adder|A4|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_B[5]~input_o\,
	datab => \in_port_A[5]~input_o\,
	datac => \port_map_adder|A4|cout~0_combout\,
	combout => \port_map_adder|A5|cout~0_combout\);

\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\ula_op[2]~input_o\ & (\ula_op[1]~input_o\)) # (!\ula_op[2]~input_o\ & ((\ula_op[1]~input_o\ & (!\port_map_sub|A1|A5|cout~combout\)) # (!\ula_op[1]~input_o\ & ((\port_map_adder|A5|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[2]~input_o\,
	datab => \ula_op[1]~input_o\,
	datac => \port_map_sub|A1|A5|cout~combout\,
	datad => \port_map_adder|A5|cout~0_combout\,
	combout => \Mux5~0_combout\);

\Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\ula_op[2]~input_o\ & ((\Mux5~0_combout\ & (\in_port_B[6]~input_o\)) # (!\Mux5~0_combout\ & ((\in_port_A[6]~input_o\))))) # (!\ula_op[2]~input_o\ & (\in_port_B[6]~input_o\ $ (\in_port_A[6]~input_o\ $ (\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_B[6]~input_o\,
	datab => \in_port_A[6]~input_o\,
	datac => \ula_op[2]~input_o\,
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

\Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (!\ula_op[3]~input_o\ & \Mux5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[3]~input_o\,
	datab => \Mux5~1_combout\,
	combout => \Mux5~2_combout\);

\port_map_multi|Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add0~17_combout\ = (\in_port_A[6]~input_o\ & (!\port_map_multi|Add0~15\ & VCC)) # (!\in_port_A[6]~input_o\ & (\port_map_multi|Add0~15\ $ (GND)))
-- \port_map_multi|Add0~18\ = CARRY((!\in_port_A[6]~input_o\ & !\port_map_multi|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_A[6]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add0~15\,
	combout => \port_map_multi|Add0~17_combout\,
	cout => \port_map_multi|Add0~18\);

\port_map_multi|Add0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add0~19_combout\ = (\in_port_B[0]~input_o\ & \port_map_multi|Add0~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_B[0]~input_o\,
	datab => \port_map_multi|Add0~17_combout\,
	combout => \port_map_multi|Add0~19_combout\);

\port_map_multi|Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add2~10_combout\ = (\port_map_multi|Add0~19_combout\ & ((\in_port_A[5]~input_o\ & (!\port_map_multi|Add2~9\)) # (!\in_port_A[5]~input_o\ & (\port_map_multi|Add2~9\ & VCC)))) # (!\port_map_multi|Add0~19_combout\ & ((\in_port_A[5]~input_o\ & 
-- ((\port_map_multi|Add2~9\) # (GND))) # (!\in_port_A[5]~input_o\ & (!\port_map_multi|Add2~9\))))
-- \port_map_multi|Add2~11\ = CARRY((\port_map_multi|Add0~19_combout\ & (\in_port_A[5]~input_o\ & !\port_map_multi|Add2~9\)) # (!\port_map_multi|Add0~19_combout\ & ((\in_port_A[5]~input_o\) # (!\port_map_multi|Add2~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add0~19_combout\,
	datab => \in_port_A[5]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add2~9\,
	combout => \port_map_multi|Add2~10_combout\,
	cout => \port_map_multi|Add2~11\);

\port_map_multi|Add1~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add1~41_combout\ = (\in_port_B[1]~input_o\ & ((\in_port_B[0]~input_o\ & (\port_map_multi|Add0~17_combout\)) # (!\in_port_B[0]~input_o\ & ((\port_map_multi|Add2~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_B[0]~input_o\,
	datab => \port_map_multi|Add0~17_combout\,
	datac => \in_port_B[1]~input_o\,
	datad => \port_map_multi|Add2~10_combout\,
	combout => \port_map_multi|Add1~41_combout\);

\port_map_multi|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add1~28_combout\ = (\port_map_multi|Add0~19_combout\ & ((\in_port_A[5]~input_o\ & (\port_map_multi|Add1~26\ & VCC)) # (!\in_port_A[5]~input_o\ & (!\port_map_multi|Add1~26\)))) # (!\port_map_multi|Add0~19_combout\ & ((\in_port_A[5]~input_o\ 
-- & (!\port_map_multi|Add1~26\)) # (!\in_port_A[5]~input_o\ & ((\port_map_multi|Add1~26\) # (GND)))))
-- \port_map_multi|Add1~29\ = CARRY((\port_map_multi|Add0~19_combout\ & (!\in_port_A[5]~input_o\ & !\port_map_multi|Add1~26\)) # (!\port_map_multi|Add0~19_combout\ & ((!\port_map_multi|Add1~26\) # (!\in_port_A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add0~19_combout\,
	datab => \in_port_A[5]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add1~26\,
	combout => \port_map_multi|Add1~28_combout\,
	cout => \port_map_multi|Add1~29\);

\port_map_multi|Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add1~30_combout\ = (\port_map_multi|Add1~41_combout\) # ((\in_port_B[0]~input_o\ & (\port_map_multi|Add1~28_combout\ & !\in_port_B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add1~41_combout\,
	datab => \in_port_B[0]~input_o\,
	datac => \port_map_multi|Add1~28_combout\,
	datad => \in_port_B[1]~input_o\,
	combout => \port_map_multi|Add1~30_combout\);

\port_map_multi|Add4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add4~8_combout\ = ((\port_map_multi|Add1~30_combout\ $ (\in_port_A[4]~input_o\ $ (\port_map_multi|Add4~7\)))) # (GND)
-- \port_map_multi|Add4~9\ = CARRY((\port_map_multi|Add1~30_combout\ & ((!\port_map_multi|Add4~7\) # (!\in_port_A[4]~input_o\))) # (!\port_map_multi|Add1~30_combout\ & (!\in_port_A[4]~input_o\ & !\port_map_multi|Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add1~30_combout\,
	datab => \in_port_A[4]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add4~7\,
	combout => \port_map_multi|Add4~8_combout\,
	cout => \port_map_multi|Add4~9\);

\port_map_multi|Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add3~14_combout\ = ((\port_map_multi|Add1~30_combout\ $ (\in_port_A[4]~input_o\ $ (!\port_map_multi|Add3~11\)))) # (GND)
-- \port_map_multi|Add3~15\ = CARRY((\port_map_multi|Add1~30_combout\ & ((\in_port_A[4]~input_o\) # (!\port_map_multi|Add3~11\))) # (!\port_map_multi|Add1~30_combout\ & (\in_port_A[4]~input_o\ & !\port_map_multi|Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add1~30_combout\,
	datab => \in_port_A[4]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add3~11\,
	combout => \port_map_multi|Add3~14_combout\,
	cout => \port_map_multi|Add3~15\);

\port_map_multi|Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add3~16_combout\ = (\in_port_B[1]~input_o\ & (((\port_map_multi|Add3~14_combout\ & !\in_port_B[2]~input_o\)))) # (!\in_port_B[1]~input_o\ & (\port_map_multi|Add4~8_combout\ & ((\in_port_B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add4~8_combout\,
	datab => \port_map_multi|Add3~14_combout\,
	datac => \in_port_B[1]~input_o\,
	datad => \in_port_B[2]~input_o\,
	combout => \port_map_multi|Add3~16_combout\);

\port_map_multi|Add3~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add3~17_combout\ = (\port_map_multi|Add3~16_combout\) # ((\port_map_multi|Add1~30_combout\ & (\in_port_B[1]~input_o\ $ (!\in_port_B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add3~16_combout\,
	datab => \port_map_multi|Add1~30_combout\,
	datac => \in_port_B[1]~input_o\,
	datad => \in_port_B[2]~input_o\,
	combout => \port_map_multi|Add3~17_combout\);

\port_map_multi|Add6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add6~6_combout\ = (\port_map_multi|Add3~17_combout\ & ((\in_port_A[3]~input_o\ & (!\port_map_multi|Add6~5\)) # (!\in_port_A[3]~input_o\ & (\port_map_multi|Add6~5\ & VCC)))) # (!\port_map_multi|Add3~17_combout\ & ((\in_port_A[3]~input_o\ & 
-- ((\port_map_multi|Add6~5\) # (GND))) # (!\in_port_A[3]~input_o\ & (!\port_map_multi|Add6~5\))))
-- \port_map_multi|Add6~7\ = CARRY((\port_map_multi|Add3~17_combout\ & (\in_port_A[3]~input_o\ & !\port_map_multi|Add6~5\)) # (!\port_map_multi|Add3~17_combout\ & ((\in_port_A[3]~input_o\) # (!\port_map_multi|Add6~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add3~17_combout\,
	datab => \in_port_A[3]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add6~5\,
	combout => \port_map_multi|Add6~6_combout\,
	cout => \port_map_multi|Add6~7\);

\port_map_multi|Add5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add5~10_combout\ = (\port_map_multi|Add3~17_combout\ & ((\in_port_A[3]~input_o\ & (\port_map_multi|Add5~7\ & VCC)) # (!\in_port_A[3]~input_o\ & (!\port_map_multi|Add5~7\)))) # (!\port_map_multi|Add3~17_combout\ & ((\in_port_A[3]~input_o\ & 
-- (!\port_map_multi|Add5~7\)) # (!\in_port_A[3]~input_o\ & ((\port_map_multi|Add5~7\) # (GND)))))
-- \port_map_multi|Add5~11\ = CARRY((\port_map_multi|Add3~17_combout\ & (!\in_port_A[3]~input_o\ & !\port_map_multi|Add5~7\)) # (!\port_map_multi|Add3~17_combout\ & ((!\port_map_multi|Add5~7\) # (!\in_port_A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add3~17_combout\,
	datab => \in_port_A[3]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add5~7\,
	combout => \port_map_multi|Add5~10_combout\,
	cout => \port_map_multi|Add5~11\);

\port_map_multi|Add5~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add5~12_combout\ = (\in_port_B[2]~input_o\ & (((\port_map_multi|Add5~10_combout\ & !\in_port_B[3]~input_o\)))) # (!\in_port_B[2]~input_o\ & (\port_map_multi|Add6~6_combout\ & ((\in_port_B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add6~6_combout\,
	datab => \port_map_multi|Add5~10_combout\,
	datac => \in_port_B[2]~input_o\,
	datad => \in_port_B[3]~input_o\,
	combout => \port_map_multi|Add5~12_combout\);

\port_map_multi|Add5~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add5~13_combout\ = (\port_map_multi|Add5~12_combout\) # ((\port_map_multi|Add3~17_combout\ & (\in_port_B[2]~input_o\ $ (!\in_port_B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add5~12_combout\,
	datab => \port_map_multi|Add3~17_combout\,
	datac => \in_port_B[2]~input_o\,
	datad => \in_port_B[3]~input_o\,
	combout => \port_map_multi|Add5~13_combout\);

\port_map_multi|Add8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add8~4_combout\ = ((\port_map_multi|Add5~13_combout\ $ (\in_port_A[2]~input_o\ $ (\port_map_multi|Add8~3\)))) # (GND)
-- \port_map_multi|Add8~5\ = CARRY((\port_map_multi|Add5~13_combout\ & ((!\port_map_multi|Add8~3\) # (!\in_port_A[2]~input_o\))) # (!\port_map_multi|Add5~13_combout\ & (!\in_port_A[2]~input_o\ & !\port_map_multi|Add8~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add5~13_combout\,
	datab => \in_port_A[2]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add8~3\,
	combout => \port_map_multi|Add8~4_combout\,
	cout => \port_map_multi|Add8~5\);

\port_map_multi|Add7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add7~6_combout\ = ((\port_map_multi|Add5~13_combout\ $ (\in_port_A[2]~input_o\ $ (!\port_map_multi|Add7~3\)))) # (GND)
-- \port_map_multi|Add7~7\ = CARRY((\port_map_multi|Add5~13_combout\ & ((\in_port_A[2]~input_o\) # (!\port_map_multi|Add7~3\))) # (!\port_map_multi|Add5~13_combout\ & (\in_port_A[2]~input_o\ & !\port_map_multi|Add7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add5~13_combout\,
	datab => \in_port_A[2]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add7~3\,
	combout => \port_map_multi|Add7~6_combout\,
	cout => \port_map_multi|Add7~7\);

\port_map_multi|Add7~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add7~8_combout\ = (\in_port_B[3]~input_o\ & (((\port_map_multi|Add7~6_combout\ & !\in_port_B[4]~input_o\)))) # (!\in_port_B[3]~input_o\ & (\port_map_multi|Add8~4_combout\ & ((\in_port_B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add8~4_combout\,
	datab => \port_map_multi|Add7~6_combout\,
	datac => \in_port_B[3]~input_o\,
	datad => \in_port_B[4]~input_o\,
	combout => \port_map_multi|Add7~8_combout\);

\port_map_multi|Add7~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add7~9_combout\ = (\port_map_multi|Add7~8_combout\) # ((\port_map_multi|Add5~13_combout\ & (\in_port_B[3]~input_o\ $ (!\in_port_B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add7~8_combout\,
	datab => \port_map_multi|Add5~13_combout\,
	datac => \in_port_B[3]~input_o\,
	datad => \in_port_B[4]~input_o\,
	combout => \port_map_multi|Add7~9_combout\);

\port_map_multi|Add10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add10~2_combout\ = (\port_map_multi|Add7~9_combout\ & ((\in_port_A[1]~input_o\ & (!\port_map_multi|Add10~1\)) # (!\in_port_A[1]~input_o\ & (\port_map_multi|Add10~1\ & VCC)))) # (!\port_map_multi|Add7~9_combout\ & ((\in_port_A[1]~input_o\ & 
-- ((\port_map_multi|Add10~1\) # (GND))) # (!\in_port_A[1]~input_o\ & (!\port_map_multi|Add10~1\))))
-- \port_map_multi|Add10~3\ = CARRY((\port_map_multi|Add7~9_combout\ & (\in_port_A[1]~input_o\ & !\port_map_multi|Add10~1\)) # (!\port_map_multi|Add7~9_combout\ & ((\in_port_A[1]~input_o\) # (!\port_map_multi|Add10~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add7~9_combout\,
	datab => \in_port_A[1]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add10~1\,
	combout => \port_map_multi|Add10~2_combout\,
	cout => \port_map_multi|Add10~3\);

\port_map_multi|Add9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add9~2_combout\ = (\port_map_multi|Add7~9_combout\ & ((\in_port_A[1]~input_o\ & (\port_map_multi|Add9~1\ & VCC)) # (!\in_port_A[1]~input_o\ & (!\port_map_multi|Add9~1\)))) # (!\port_map_multi|Add7~9_combout\ & ((\in_port_A[1]~input_o\ & 
-- (!\port_map_multi|Add9~1\)) # (!\in_port_A[1]~input_o\ & ((\port_map_multi|Add9~1\) # (GND)))))
-- \port_map_multi|Add9~3\ = CARRY((\port_map_multi|Add7~9_combout\ & (!\in_port_A[1]~input_o\ & !\port_map_multi|Add9~1\)) # (!\port_map_multi|Add7~9_combout\ & ((!\port_map_multi|Add9~1\) # (!\in_port_A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add7~9_combout\,
	datab => \in_port_A[1]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add9~1\,
	combout => \port_map_multi|Add9~2_combout\,
	cout => \port_map_multi|Add9~3\);

\port_map_multi|Add9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add9~4_combout\ = (\in_port_B[4]~input_o\ & (((\port_map_multi|Add9~2_combout\ & !\in_port_B[5]~input_o\)))) # (!\in_port_B[4]~input_o\ & (\port_map_multi|Add10~2_combout\ & ((\in_port_B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add10~2_combout\,
	datab => \port_map_multi|Add9~2_combout\,
	datac => \in_port_B[4]~input_o\,
	datad => \in_port_B[5]~input_o\,
	combout => \port_map_multi|Add9~4_combout\);

\port_map_multi|Add9~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add9~5_combout\ = (\port_map_multi|Add9~4_combout\) # ((\port_map_multi|Add7~9_combout\ & (\in_port_B[4]~input_o\ $ (!\in_port_B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add9~4_combout\,
	datab => \port_map_multi|Add7~9_combout\,
	datac => \in_port_B[4]~input_o\,
	datad => \in_port_B[5]~input_o\,
	combout => \port_map_multi|Add9~5_combout\);

\Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\port_map_multi|Add9~5_combout\ & (\in_port_B[5]~input_o\ $ (!\in_port_B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add9~5_combout\,
	datab => \in_port_B[5]~input_o\,
	datac => \in_port_B[6]~input_o\,
	combout => \Mux5~3_combout\);

\port_map_multi|Add12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add12~0_combout\ = (\port_map_multi|Add9~5_combout\ & ((GND) # (!\in_port_A[0]~input_o\))) # (!\port_map_multi|Add9~5_combout\ & (\in_port_A[0]~input_o\ $ (GND)))
-- \port_map_multi|Add12~1\ = CARRY((\port_map_multi|Add9~5_combout\) # (!\in_port_A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add9~5_combout\,
	datab => \in_port_A[0]~input_o\,
	datad => VCC,
	combout => \port_map_multi|Add12~0_combout\,
	cout => \port_map_multi|Add12~1\);

\port_map_multi|Add11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add11~0_combout\ = (\port_map_multi|Add9~5_combout\ & (\in_port_A[0]~input_o\ $ (VCC))) # (!\port_map_multi|Add9~5_combout\ & (\in_port_A[0]~input_o\ & VCC))
-- \port_map_multi|Add11~1\ = CARRY((\port_map_multi|Add9~5_combout\ & \in_port_A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add9~5_combout\,
	datab => \in_port_A[0]~input_o\,
	datad => VCC,
	combout => \port_map_multi|Add11~0_combout\,
	cout => \port_map_multi|Add11~1\);

\Mux5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\in_port_B[5]~input_o\ & (((\port_map_multi|Add11~0_combout\ & !\in_port_B[6]~input_o\)))) # (!\in_port_B[5]~input_o\ & (\port_map_multi|Add12~0_combout\ & ((\in_port_B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add12~0_combout\,
	datab => \port_map_multi|Add11~0_combout\,
	datac => \in_port_B[5]~input_o\,
	datad => \in_port_B[6]~input_o\,
	combout => \Mux5~4_combout\);

\Mux5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\Mux5~2_combout\) # ((\Mux4~0_combout\ & ((\Mux5~3_combout\) # (\Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~2_combout\,
	datab => \Mux4~0_combout\,
	datac => \Mux5~3_combout\,
	datad => \Mux5~4_combout\,
	combout => \Mux5~5_combout\);

\in_port_A[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_port_A(7),
	o => \in_port_A[7]~input_o\);

\port_map_multi|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add0~20_combout\ = \in_port_A[7]~input_o\ $ (!\port_map_multi|Add0~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_A[7]~input_o\,
	cin => \port_map_multi|Add0~18\,
	combout => \port_map_multi|Add0~20_combout\);

\port_map_multi|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add0~22_combout\ = (\in_port_B[0]~input_o\ & \port_map_multi|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_B[0]~input_o\,
	datab => \port_map_multi|Add0~20_combout\,
	combout => \port_map_multi|Add0~22_combout\);

\port_map_multi|Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add2~12_combout\ = ((\port_map_multi|Add0~22_combout\ $ (\in_port_A[6]~input_o\ $ (\port_map_multi|Add2~11\)))) # (GND)
-- \port_map_multi|Add2~13\ = CARRY((\port_map_multi|Add0~22_combout\ & ((!\port_map_multi|Add2~11\) # (!\in_port_A[6]~input_o\))) # (!\port_map_multi|Add0~22_combout\ & (!\in_port_A[6]~input_o\ & !\port_map_multi|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add0~22_combout\,
	datab => \in_port_A[6]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add2~11\,
	combout => \port_map_multi|Add2~12_combout\,
	cout => \port_map_multi|Add2~13\);

\port_map_multi|Add1~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add1~31_combout\ = ((\port_map_multi|Add0~22_combout\ $ (\in_port_A[6]~input_o\ $ (!\port_map_multi|Add1~29\)))) # (GND)
-- \port_map_multi|Add1~32\ = CARRY((\port_map_multi|Add0~22_combout\ & ((\in_port_A[6]~input_o\) # (!\port_map_multi|Add1~29\))) # (!\port_map_multi|Add0~22_combout\ & (\in_port_A[6]~input_o\ & !\port_map_multi|Add1~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add0~22_combout\,
	datab => \in_port_A[6]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add1~29\,
	combout => \port_map_multi|Add1~31_combout\,
	cout => \port_map_multi|Add1~32\);

\port_map_multi|Add1~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add1~33_combout\ = (\in_port_B[0]~input_o\ & (((\port_map_multi|Add1~31_combout\ & !\in_port_B[1]~input_o\)))) # (!\in_port_B[0]~input_o\ & (\port_map_multi|Add2~12_combout\ & ((\in_port_B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add2~12_combout\,
	datab => \port_map_multi|Add1~31_combout\,
	datac => \in_port_B[0]~input_o\,
	datad => \in_port_B[1]~input_o\,
	combout => \port_map_multi|Add1~33_combout\);

\port_map_multi|Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add1~42_combout\ = (\port_map_multi|Add1~33_combout\) # ((\in_port_B[0]~input_o\ & (\port_map_multi|Add0~20_combout\ & \in_port_B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_B[0]~input_o\,
	datab => \port_map_multi|Add0~20_combout\,
	datac => \port_map_multi|Add1~33_combout\,
	datad => \in_port_B[1]~input_o\,
	combout => \port_map_multi|Add1~42_combout\);

\port_map_multi|Add4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add4~10_combout\ = (\port_map_multi|Add1~42_combout\ & ((\in_port_A[5]~input_o\ & (!\port_map_multi|Add4~9\)) # (!\in_port_A[5]~input_o\ & (\port_map_multi|Add4~9\ & VCC)))) # (!\port_map_multi|Add1~42_combout\ & ((\in_port_A[5]~input_o\ & 
-- ((\port_map_multi|Add4~9\) # (GND))) # (!\in_port_A[5]~input_o\ & (!\port_map_multi|Add4~9\))))
-- \port_map_multi|Add4~11\ = CARRY((\port_map_multi|Add1~42_combout\ & (\in_port_A[5]~input_o\ & !\port_map_multi|Add4~9\)) # (!\port_map_multi|Add1~42_combout\ & ((\in_port_A[5]~input_o\) # (!\port_map_multi|Add4~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add1~42_combout\,
	datab => \in_port_A[5]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add4~9\,
	combout => \port_map_multi|Add4~10_combout\,
	cout => \port_map_multi|Add4~11\);

\port_map_multi|Add3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add3~18_combout\ = (\port_map_multi|Add1~42_combout\ & ((\in_port_A[5]~input_o\ & (\port_map_multi|Add3~15\ & VCC)) # (!\in_port_A[5]~input_o\ & (!\port_map_multi|Add3~15\)))) # (!\port_map_multi|Add1~42_combout\ & ((\in_port_A[5]~input_o\ 
-- & (!\port_map_multi|Add3~15\)) # (!\in_port_A[5]~input_o\ & ((\port_map_multi|Add3~15\) # (GND)))))
-- \port_map_multi|Add3~19\ = CARRY((\port_map_multi|Add1~42_combout\ & (!\in_port_A[5]~input_o\ & !\port_map_multi|Add3~15\)) # (!\port_map_multi|Add1~42_combout\ & ((!\port_map_multi|Add3~15\) # (!\in_port_A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add1~42_combout\,
	datab => \in_port_A[5]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add3~15\,
	combout => \port_map_multi|Add3~18_combout\,
	cout => \port_map_multi|Add3~19\);

\port_map_multi|Add3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add3~20_combout\ = (\in_port_B[1]~input_o\ & (((\port_map_multi|Add3~18_combout\ & !\in_port_B[2]~input_o\)))) # (!\in_port_B[1]~input_o\ & (\port_map_multi|Add4~10_combout\ & ((\in_port_B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add4~10_combout\,
	datab => \port_map_multi|Add3~18_combout\,
	datac => \in_port_B[1]~input_o\,
	datad => \in_port_B[2]~input_o\,
	combout => \port_map_multi|Add3~20_combout\);

\port_map_multi|Add3~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add3~21_combout\ = (\port_map_multi|Add3~20_combout\) # ((\port_map_multi|Add1~42_combout\ & (\in_port_B[1]~input_o\ $ (!\in_port_B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add3~20_combout\,
	datab => \port_map_multi|Add1~42_combout\,
	datac => \in_port_B[1]~input_o\,
	datad => \in_port_B[2]~input_o\,
	combout => \port_map_multi|Add3~21_combout\);

\port_map_multi|Add6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add6~8_combout\ = ((\port_map_multi|Add3~21_combout\ $ (\in_port_A[4]~input_o\ $ (\port_map_multi|Add6~7\)))) # (GND)
-- \port_map_multi|Add6~9\ = CARRY((\port_map_multi|Add3~21_combout\ & ((!\port_map_multi|Add6~7\) # (!\in_port_A[4]~input_o\))) # (!\port_map_multi|Add3~21_combout\ & (!\in_port_A[4]~input_o\ & !\port_map_multi|Add6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add3~21_combout\,
	datab => \in_port_A[4]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add6~7\,
	combout => \port_map_multi|Add6~8_combout\,
	cout => \port_map_multi|Add6~9\);

\port_map_multi|Add5~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add5~14_combout\ = ((\port_map_multi|Add3~21_combout\ $ (\in_port_A[4]~input_o\ $ (!\port_map_multi|Add5~11\)))) # (GND)
-- \port_map_multi|Add5~15\ = CARRY((\port_map_multi|Add3~21_combout\ & ((\in_port_A[4]~input_o\) # (!\port_map_multi|Add5~11\))) # (!\port_map_multi|Add3~21_combout\ & (\in_port_A[4]~input_o\ & !\port_map_multi|Add5~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add3~21_combout\,
	datab => \in_port_A[4]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add5~11\,
	combout => \port_map_multi|Add5~14_combout\,
	cout => \port_map_multi|Add5~15\);

\port_map_multi|Add5~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add5~16_combout\ = (\in_port_B[2]~input_o\ & (((\port_map_multi|Add5~14_combout\ & !\in_port_B[3]~input_o\)))) # (!\in_port_B[2]~input_o\ & (\port_map_multi|Add6~8_combout\ & ((\in_port_B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add6~8_combout\,
	datab => \port_map_multi|Add5~14_combout\,
	datac => \in_port_B[2]~input_o\,
	datad => \in_port_B[3]~input_o\,
	combout => \port_map_multi|Add5~16_combout\);

\port_map_multi|Add5~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add5~17_combout\ = (\port_map_multi|Add5~16_combout\) # ((\port_map_multi|Add3~21_combout\ & (\in_port_B[2]~input_o\ $ (!\in_port_B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add5~16_combout\,
	datab => \port_map_multi|Add3~21_combout\,
	datac => \in_port_B[2]~input_o\,
	datad => \in_port_B[3]~input_o\,
	combout => \port_map_multi|Add5~17_combout\);

\port_map_multi|Add8~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add8~6_combout\ = (\port_map_multi|Add5~17_combout\ & ((\in_port_A[3]~input_o\ & (!\port_map_multi|Add8~5\)) # (!\in_port_A[3]~input_o\ & (\port_map_multi|Add8~5\ & VCC)))) # (!\port_map_multi|Add5~17_combout\ & ((\in_port_A[3]~input_o\ & 
-- ((\port_map_multi|Add8~5\) # (GND))) # (!\in_port_A[3]~input_o\ & (!\port_map_multi|Add8~5\))))
-- \port_map_multi|Add8~7\ = CARRY((\port_map_multi|Add5~17_combout\ & (\in_port_A[3]~input_o\ & !\port_map_multi|Add8~5\)) # (!\port_map_multi|Add5~17_combout\ & ((\in_port_A[3]~input_o\) # (!\port_map_multi|Add8~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add5~17_combout\,
	datab => \in_port_A[3]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add8~5\,
	combout => \port_map_multi|Add8~6_combout\,
	cout => \port_map_multi|Add8~7\);

\port_map_multi|Add7~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add7~10_combout\ = (\port_map_multi|Add5~17_combout\ & ((\in_port_A[3]~input_o\ & (\port_map_multi|Add7~7\ & VCC)) # (!\in_port_A[3]~input_o\ & (!\port_map_multi|Add7~7\)))) # (!\port_map_multi|Add5~17_combout\ & ((\in_port_A[3]~input_o\ & 
-- (!\port_map_multi|Add7~7\)) # (!\in_port_A[3]~input_o\ & ((\port_map_multi|Add7~7\) # (GND)))))
-- \port_map_multi|Add7~11\ = CARRY((\port_map_multi|Add5~17_combout\ & (!\in_port_A[3]~input_o\ & !\port_map_multi|Add7~7\)) # (!\port_map_multi|Add5~17_combout\ & ((!\port_map_multi|Add7~7\) # (!\in_port_A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add5~17_combout\,
	datab => \in_port_A[3]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add7~7\,
	combout => \port_map_multi|Add7~10_combout\,
	cout => \port_map_multi|Add7~11\);

\port_map_multi|Add7~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add7~12_combout\ = (\in_port_B[3]~input_o\ & (((\port_map_multi|Add7~10_combout\ & !\in_port_B[4]~input_o\)))) # (!\in_port_B[3]~input_o\ & (\port_map_multi|Add8~6_combout\ & ((\in_port_B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add8~6_combout\,
	datab => \port_map_multi|Add7~10_combout\,
	datac => \in_port_B[3]~input_o\,
	datad => \in_port_B[4]~input_o\,
	combout => \port_map_multi|Add7~12_combout\);

\port_map_multi|Add7~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add7~13_combout\ = (\port_map_multi|Add7~12_combout\) # ((\port_map_multi|Add5~17_combout\ & (\in_port_B[3]~input_o\ $ (!\in_port_B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add7~12_combout\,
	datab => \port_map_multi|Add5~17_combout\,
	datac => \in_port_B[3]~input_o\,
	datad => \in_port_B[4]~input_o\,
	combout => \port_map_multi|Add7~13_combout\);

\port_map_multi|Add10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add10~4_combout\ = ((\port_map_multi|Add7~13_combout\ $ (\in_port_A[2]~input_o\ $ (\port_map_multi|Add10~3\)))) # (GND)
-- \port_map_multi|Add10~5\ = CARRY((\port_map_multi|Add7~13_combout\ & ((!\port_map_multi|Add10~3\) # (!\in_port_A[2]~input_o\))) # (!\port_map_multi|Add7~13_combout\ & (!\in_port_A[2]~input_o\ & !\port_map_multi|Add10~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add7~13_combout\,
	datab => \in_port_A[2]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add10~3\,
	combout => \port_map_multi|Add10~4_combout\,
	cout => \port_map_multi|Add10~5\);

\port_map_multi|Add9~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add9~6_combout\ = ((\port_map_multi|Add7~13_combout\ $ (\in_port_A[2]~input_o\ $ (!\port_map_multi|Add9~3\)))) # (GND)
-- \port_map_multi|Add9~7\ = CARRY((\port_map_multi|Add7~13_combout\ & ((\in_port_A[2]~input_o\) # (!\port_map_multi|Add9~3\))) # (!\port_map_multi|Add7~13_combout\ & (\in_port_A[2]~input_o\ & !\port_map_multi|Add9~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add7~13_combout\,
	datab => \in_port_A[2]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add9~3\,
	combout => \port_map_multi|Add9~6_combout\,
	cout => \port_map_multi|Add9~7\);

\port_map_multi|Add9~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add9~8_combout\ = (\in_port_B[4]~input_o\ & (((\port_map_multi|Add9~6_combout\ & !\in_port_B[5]~input_o\)))) # (!\in_port_B[4]~input_o\ & (\port_map_multi|Add10~4_combout\ & ((\in_port_B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add10~4_combout\,
	datab => \port_map_multi|Add9~6_combout\,
	datac => \in_port_B[4]~input_o\,
	datad => \in_port_B[5]~input_o\,
	combout => \port_map_multi|Add9~8_combout\);

\port_map_multi|Add9~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add9~9_combout\ = (\port_map_multi|Add9~8_combout\) # ((\port_map_multi|Add7~13_combout\ & (\in_port_B[4]~input_o\ $ (!\in_port_B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add9~8_combout\,
	datab => \port_map_multi|Add7~13_combout\,
	datac => \in_port_B[4]~input_o\,
	datad => \in_port_B[5]~input_o\,
	combout => \port_map_multi|Add9~9_combout\);

\port_map_multi|Add12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add12~2_combout\ = (\port_map_multi|Add9~9_combout\ & ((\in_port_A[1]~input_o\ & (!\port_map_multi|Add12~1\)) # (!\in_port_A[1]~input_o\ & (\port_map_multi|Add12~1\ & VCC)))) # (!\port_map_multi|Add9~9_combout\ & ((\in_port_A[1]~input_o\ & 
-- ((\port_map_multi|Add12~1\) # (GND))) # (!\in_port_A[1]~input_o\ & (!\port_map_multi|Add12~1\))))
-- \port_map_multi|Add12~3\ = CARRY((\port_map_multi|Add9~9_combout\ & (\in_port_A[1]~input_o\ & !\port_map_multi|Add12~1\)) # (!\port_map_multi|Add9~9_combout\ & ((\in_port_A[1]~input_o\) # (!\port_map_multi|Add12~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add9~9_combout\,
	datab => \in_port_A[1]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add12~1\,
	combout => \port_map_multi|Add12~2_combout\,
	cout => \port_map_multi|Add12~3\);

\port_map_multi|Add11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add11~2_combout\ = (\port_map_multi|Add9~9_combout\ & ((\in_port_A[1]~input_o\ & (\port_map_multi|Add11~1\ & VCC)) # (!\in_port_A[1]~input_o\ & (!\port_map_multi|Add11~1\)))) # (!\port_map_multi|Add9~9_combout\ & ((\in_port_A[1]~input_o\ & 
-- (!\port_map_multi|Add11~1\)) # (!\in_port_A[1]~input_o\ & ((\port_map_multi|Add11~1\) # (GND)))))
-- \port_map_multi|Add11~3\ = CARRY((\port_map_multi|Add9~9_combout\ & (!\in_port_A[1]~input_o\ & !\port_map_multi|Add11~1\)) # (!\port_map_multi|Add9~9_combout\ & ((!\port_map_multi|Add11~1\) # (!\in_port_A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add9~9_combout\,
	datab => \in_port_A[1]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add11~1\,
	combout => \port_map_multi|Add11~2_combout\,
	cout => \port_map_multi|Add11~3\);

\port_map_multi|Add11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add11~4_combout\ = (\in_port_B[5]~input_o\ & (((\port_map_multi|Add11~2_combout\ & !\in_port_B[6]~input_o\)))) # (!\in_port_B[5]~input_o\ & (\port_map_multi|Add12~2_combout\ & ((\in_port_B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add12~2_combout\,
	datab => \port_map_multi|Add11~2_combout\,
	datac => \in_port_B[5]~input_o\,
	datad => \in_port_B[6]~input_o\,
	combout => \port_map_multi|Add11~4_combout\);

\port_map_multi|Add11~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add11~5_combout\ = (\port_map_multi|Add11~4_combout\) # ((\port_map_multi|Add9~9_combout\ & (\in_port_B[5]~input_o\ $ (!\in_port_B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add11~4_combout\,
	datab => \port_map_multi|Add9~9_combout\,
	datac => \in_port_B[5]~input_o\,
	datad => \in_port_B[6]~input_o\,
	combout => \port_map_multi|Add11~5_combout\);

\in_port_B[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_port_B(7),
	o => \in_port_B[7]~input_o\);

\port_map_multi|Add13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add13~0_combout\ = \in_port_A[0]~input_o\ $ (((!\in_port_B[7]~input_o\ & \in_port_B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_A[0]~input_o\,
	datab => \in_port_B[7]~input_o\,
	datad => \in_port_B[6]~input_o\,
	combout => \port_map_multi|Add13~0_combout\);

\port_map_multi|Add13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add13~2_cout\ = CARRY((\in_port_B[7]~input_o\) # (!\in_port_B[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_B[6]~input_o\,
	datab => \in_port_B[7]~input_o\,
	datad => VCC,
	cout => \port_map_multi|Add13~2_cout\);

\port_map_multi|Add13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add13~3_combout\ = (\port_map_multi|Add11~5_combout\ & ((\port_map_multi|Add13~0_combout\ & (!\port_map_multi|Add13~2_cout\)) # (!\port_map_multi|Add13~0_combout\ & (\port_map_multi|Add13~2_cout\ & VCC)))) # 
-- (!\port_map_multi|Add11~5_combout\ & ((\port_map_multi|Add13~0_combout\ & ((\port_map_multi|Add13~2_cout\) # (GND))) # (!\port_map_multi|Add13~0_combout\ & (!\port_map_multi|Add13~2_cout\))))
-- \port_map_multi|Add13~4\ = CARRY((\port_map_multi|Add11~5_combout\ & (\port_map_multi|Add13~0_combout\ & !\port_map_multi|Add13~2_cout\)) # (!\port_map_multi|Add11~5_combout\ & ((\port_map_multi|Add13~0_combout\) # (!\port_map_multi|Add13~2_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add11~5_combout\,
	datab => \port_map_multi|Add13~0_combout\,
	datad => VCC,
	cin => \port_map_multi|Add13~2_cout\,
	combout => \port_map_multi|Add13~3_combout\,
	cout => \port_map_multi|Add13~4\);

\port_map_multi|out_port[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|out_port[7]~0_combout\ = \in_port_B[6]~input_o\ $ (\in_port_B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in_port_B[6]~input_o\,
	datad => \in_port_B[7]~input_o\,
	combout => \port_map_multi|out_port[7]~0_combout\);

\Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\ & ((\port_map_multi|out_port[7]~0_combout\ & (\port_map_multi|Add13~3_combout\)) # (!\port_map_multi|out_port[7]~0_combout\ & ((\port_map_multi|Add11~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \port_map_multi|Add13~3_combout\,
	datac => \port_map_multi|Add11~5_combout\,
	datad => \port_map_multi|out_port[7]~0_combout\,
	combout => \Mux4~1_combout\);

\Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\ula_op[2]~input_o\ & ((\ula_op[1]~input_o\ & (\in_port_B[7]~input_o\)) # (!\ula_op[1]~input_o\ & ((\in_port_A[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[2]~input_o\,
	datab => \in_port_B[7]~input_o\,
	datac => \in_port_A[7]~input_o\,
	datad => \ula_op[1]~input_o\,
	combout => \Mux4~2_combout\);

\port_map_sub|A1|A7|ha2|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_sub|A1|A7|ha2|sum~0_combout\ = \in_port_B[7]~input_o\ $ (\in_port_A[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in_port_B[7]~input_o\,
	datad => \in_port_A[7]~input_o\,
	combout => \port_map_sub|A1|A7|ha2|sum~0_combout\);

\port_map_adder|A7|ha2|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_adder|A7|ha2|sum~combout\ = \port_map_sub|A1|A7|ha2|sum~0_combout\ $ (((\in_port_B[6]~input_o\ & ((\in_port_A[6]~input_o\) # (\port_map_adder|A5|cout~0_combout\))) # (!\in_port_B[6]~input_o\ & (\in_port_A[6]~input_o\ & 
-- \port_map_adder|A5|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_B[6]~input_o\,
	datab => \in_port_A[6]~input_o\,
	datac => \port_map_adder|A5|cout~0_combout\,
	datad => \port_map_sub|A1|A7|ha2|sum~0_combout\,
	combout => \port_map_adder|A7|ha2|sum~combout\);

\port_map_sub|A1|A7|ha2|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_sub|A1|A7|ha2|sum~combout\ = \port_map_sub|A1|A7|ha2|sum~0_combout\ $ (((\in_port_B[6]~input_o\ & (\in_port_A[6]~input_o\ & \port_map_sub|A1|A5|cout~combout\)) # (!\in_port_B[6]~input_o\ & ((\in_port_A[6]~input_o\) # 
-- (\port_map_sub|A1|A5|cout~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_B[6]~input_o\,
	datab => \in_port_A[6]~input_o\,
	datac => \port_map_sub|A1|A5|cout~combout\,
	datad => \port_map_sub|A1|A7|ha2|sum~0_combout\,
	combout => \port_map_sub|A1|A7|ha2|sum~combout\);

\Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (!\ula_op[2]~input_o\ & ((\ula_op[1]~input_o\ & ((!\port_map_sub|A1|A7|ha2|sum~combout\))) # (!\ula_op[1]~input_o\ & (\port_map_adder|A7|ha2|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_adder|A7|ha2|sum~combout\,
	datab => \ula_op[1]~input_o\,
	datac => \port_map_sub|A1|A7|ha2|sum~combout\,
	datad => \ula_op[2]~input_o\,
	combout => \Mux4~3_combout\);

\Mux4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\Mux4~1_combout\) # ((!\ula_op[3]~input_o\ & ((\Mux4~2_combout\) # (\Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \Mux4~2_combout\,
	datac => \Mux4~3_combout\,
	datad => \ula_op[3]~input_o\,
	combout => \Mux4~4_combout\);

\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\in_port_A[0]~input_o\ & (\in_port_B[0]~input_o\ & (\in_port_B[7]~input_o\ $ (!\in_port_A[7]~input_o\)))) # (!\in_port_A[0]~input_o\ & (!\in_port_B[0]~input_o\ & (\in_port_B[7]~input_o\ $ (!\in_port_A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_A[0]~input_o\,
	datab => \in_port_B[7]~input_o\,
	datac => \in_port_A[7]~input_o\,
	datad => \in_port_B[0]~input_o\,
	combout => \Equal0~0_combout\);

\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\in_port_B[1]~input_o\ & (\in_port_A[1]~input_o\ & (\in_port_B[2]~input_o\ $ (!\in_port_A[2]~input_o\)))) # (!\in_port_B[1]~input_o\ & (!\in_port_A[1]~input_o\ & (\in_port_B[2]~input_o\ $ (!\in_port_A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_B[1]~input_o\,
	datab => \in_port_B[2]~input_o\,
	datac => \in_port_A[2]~input_o\,
	datad => \in_port_A[1]~input_o\,
	combout => \Equal0~1_combout\);

\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\in_port_B[3]~input_o\ & (\in_port_A[3]~input_o\ & (\in_port_B[4]~input_o\ $ (!\in_port_A[4]~input_o\)))) # (!\in_port_B[3]~input_o\ & (!\in_port_A[3]~input_o\ & (\in_port_B[4]~input_o\ $ (!\in_port_A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_B[3]~input_o\,
	datab => \in_port_B[4]~input_o\,
	datac => \in_port_A[4]~input_o\,
	datad => \in_port_A[3]~input_o\,
	combout => \Equal0~2_combout\);

\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\in_port_B[5]~input_o\ & (\in_port_A[5]~input_o\ & (\in_port_B[6]~input_o\ $ (!\in_port_A[6]~input_o\)))) # (!\in_port_B[5]~input_o\ & (!\in_port_A[5]~input_o\ & (\in_port_B[6]~input_o\ $ (!\in_port_A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_B[5]~input_o\,
	datab => \in_port_B[6]~input_o\,
	datac => \in_port_A[6]~input_o\,
	datad => \in_port_A[5]~input_o\,
	combout => \Equal0~3_combout\);

\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\ula_op[3]~input_o\ & (\ula_op[1]~input_o\ & (!\ula_op[2]~input_o\ & !\ula_op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[3]~input_o\,
	datab => \ula_op[1]~input_o\,
	datac => \ula_op[2]~input_o\,
	datad => \ula_op[0]~input_o\,
	combout => \Mux2~0_combout\);

in_temp_zero : fiftyfivenm_lcell_comb
-- Equation(s):
-- \in_temp_zero~combout\ = (\Mux2~0_combout\ & (\Equal0~4_combout\)) # (!\Mux2~0_combout\ & ((\in_temp_zero~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \in_temp_zero~combout\,
	datad => \Mux2~0_combout\,
	combout => \in_temp_zero~combout\);

\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = \ula_op[0]~input_o\ $ (\in_temp_zero~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ula_op[0]~input_o\,
	datad => \in_temp_zero~combout\,
	combout => \Mux1~0_combout\);

\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\ula_op[3]~input_o\ & (!\ula_op[2]~input_o\ & !\ula_op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[3]~input_o\,
	datac => \ula_op[2]~input_o\,
	datad => \ula_op[1]~input_o\,
	combout => \Mux0~0_combout\);

\zero$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \zero$latch~combout\ = (\Mux0~0_combout\ & (\Mux1~0_combout\)) # (!\Mux0~0_combout\ & ((\zero$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux1~0_combout\,
	datac => \zero$latch~combout\,
	datad => \Mux0~0_combout\,
	combout => \zero$latch~combout\);

\port_map_multi|Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add2~14_combout\ = \port_map_multi|Add0~22_combout\ $ (\in_port_A[7]~input_o\ $ (!\port_map_multi|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add0~22_combout\,
	datab => \in_port_A[7]~input_o\,
	cin => \port_map_multi|Add2~13\,
	combout => \port_map_multi|Add2~14_combout\);

\port_map_multi|Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add1~34_combout\ = \port_map_multi|Add0~22_combout\ $ (\in_port_A[7]~input_o\ $ (\port_map_multi|Add1~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add0~22_combout\,
	datab => \in_port_A[7]~input_o\,
	cin => \port_map_multi|Add1~32\,
	combout => \port_map_multi|Add1~34_combout\);

\port_map_multi|Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add1~36_combout\ = (\in_port_B[0]~input_o\ & (((\port_map_multi|Add1~34_combout\ & !\in_port_B[1]~input_o\)))) # (!\in_port_B[0]~input_o\ & (\port_map_multi|Add2~14_combout\ & ((\in_port_B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add2~14_combout\,
	datab => \port_map_multi|Add1~34_combout\,
	datac => \in_port_B[0]~input_o\,
	datad => \in_port_B[1]~input_o\,
	combout => \port_map_multi|Add1~36_combout\);

\port_map_multi|Add1~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add1~43_combout\ = (\port_map_multi|Add1~36_combout\) # ((\in_port_B[0]~input_o\ & (\port_map_multi|Add0~20_combout\ & \in_port_B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_B[0]~input_o\,
	datab => \port_map_multi|Add0~20_combout\,
	datac => \port_map_multi|Add1~36_combout\,
	datad => \in_port_B[1]~input_o\,
	combout => \port_map_multi|Add1~43_combout\);

\port_map_multi|Add4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add4~12_combout\ = ((\port_map_multi|Add1~43_combout\ $ (\in_port_A[6]~input_o\ $ (\port_map_multi|Add4~11\)))) # (GND)
-- \port_map_multi|Add4~13\ = CARRY((\port_map_multi|Add1~43_combout\ & ((!\port_map_multi|Add4~11\) # (!\in_port_A[6]~input_o\))) # (!\port_map_multi|Add1~43_combout\ & (!\in_port_A[6]~input_o\ & !\port_map_multi|Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add1~43_combout\,
	datab => \in_port_A[6]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add4~11\,
	combout => \port_map_multi|Add4~12_combout\,
	cout => \port_map_multi|Add4~13\);

\port_map_multi|Add3~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add3~22_combout\ = ((\port_map_multi|Add1~43_combout\ $ (\in_port_A[6]~input_o\ $ (!\port_map_multi|Add3~19\)))) # (GND)
-- \port_map_multi|Add3~23\ = CARRY((\port_map_multi|Add1~43_combout\ & ((\in_port_A[6]~input_o\) # (!\port_map_multi|Add3~19\))) # (!\port_map_multi|Add1~43_combout\ & (\in_port_A[6]~input_o\ & !\port_map_multi|Add3~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add1~43_combout\,
	datab => \in_port_A[6]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add3~19\,
	combout => \port_map_multi|Add3~22_combout\,
	cout => \port_map_multi|Add3~23\);

\port_map_multi|Add3~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add3~24_combout\ = (\in_port_B[1]~input_o\ & (((\port_map_multi|Add3~22_combout\ & !\in_port_B[2]~input_o\)))) # (!\in_port_B[1]~input_o\ & (\port_map_multi|Add4~12_combout\ & ((\in_port_B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add4~12_combout\,
	datab => \port_map_multi|Add3~22_combout\,
	datac => \in_port_B[1]~input_o\,
	datad => \in_port_B[2]~input_o\,
	combout => \port_map_multi|Add3~24_combout\);

\port_map_multi|Add3~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add3~25_combout\ = (\port_map_multi|Add3~24_combout\) # ((\port_map_multi|Add1~43_combout\ & (\in_port_B[1]~input_o\ $ (!\in_port_B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add3~24_combout\,
	datab => \port_map_multi|Add1~43_combout\,
	datac => \in_port_B[1]~input_o\,
	datad => \in_port_B[2]~input_o\,
	combout => \port_map_multi|Add3~25_combout\);

\port_map_multi|Add6~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add6~10_combout\ = (\port_map_multi|Add3~25_combout\ & ((\in_port_A[5]~input_o\ & (!\port_map_multi|Add6~9\)) # (!\in_port_A[5]~input_o\ & (\port_map_multi|Add6~9\ & VCC)))) # (!\port_map_multi|Add3~25_combout\ & ((\in_port_A[5]~input_o\ & 
-- ((\port_map_multi|Add6~9\) # (GND))) # (!\in_port_A[5]~input_o\ & (!\port_map_multi|Add6~9\))))
-- \port_map_multi|Add6~11\ = CARRY((\port_map_multi|Add3~25_combout\ & (\in_port_A[5]~input_o\ & !\port_map_multi|Add6~9\)) # (!\port_map_multi|Add3~25_combout\ & ((\in_port_A[5]~input_o\) # (!\port_map_multi|Add6~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add3~25_combout\,
	datab => \in_port_A[5]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add6~9\,
	combout => \port_map_multi|Add6~10_combout\,
	cout => \port_map_multi|Add6~11\);

\port_map_multi|Add5~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add5~18_combout\ = (\port_map_multi|Add3~25_combout\ & ((\in_port_A[5]~input_o\ & (\port_map_multi|Add5~15\ & VCC)) # (!\in_port_A[5]~input_o\ & (!\port_map_multi|Add5~15\)))) # (!\port_map_multi|Add3~25_combout\ & ((\in_port_A[5]~input_o\ 
-- & (!\port_map_multi|Add5~15\)) # (!\in_port_A[5]~input_o\ & ((\port_map_multi|Add5~15\) # (GND)))))
-- \port_map_multi|Add5~19\ = CARRY((\port_map_multi|Add3~25_combout\ & (!\in_port_A[5]~input_o\ & !\port_map_multi|Add5~15\)) # (!\port_map_multi|Add3~25_combout\ & ((!\port_map_multi|Add5~15\) # (!\in_port_A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add3~25_combout\,
	datab => \in_port_A[5]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add5~15\,
	combout => \port_map_multi|Add5~18_combout\,
	cout => \port_map_multi|Add5~19\);

\port_map_multi|Add5~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add5~20_combout\ = (\in_port_B[2]~input_o\ & (((\port_map_multi|Add5~18_combout\ & !\in_port_B[3]~input_o\)))) # (!\in_port_B[2]~input_o\ & (\port_map_multi|Add6~10_combout\ & ((\in_port_B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add6~10_combout\,
	datab => \port_map_multi|Add5~18_combout\,
	datac => \in_port_B[2]~input_o\,
	datad => \in_port_B[3]~input_o\,
	combout => \port_map_multi|Add5~20_combout\);

\port_map_multi|Add5~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add5~21_combout\ = (\port_map_multi|Add5~20_combout\) # ((\port_map_multi|Add3~25_combout\ & (\in_port_B[2]~input_o\ $ (!\in_port_B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add5~20_combout\,
	datab => \port_map_multi|Add3~25_combout\,
	datac => \in_port_B[2]~input_o\,
	datad => \in_port_B[3]~input_o\,
	combout => \port_map_multi|Add5~21_combout\);

\port_map_multi|Add8~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add8~8_combout\ = ((\port_map_multi|Add5~21_combout\ $ (\in_port_A[4]~input_o\ $ (\port_map_multi|Add8~7\)))) # (GND)
-- \port_map_multi|Add8~9\ = CARRY((\port_map_multi|Add5~21_combout\ & ((!\port_map_multi|Add8~7\) # (!\in_port_A[4]~input_o\))) # (!\port_map_multi|Add5~21_combout\ & (!\in_port_A[4]~input_o\ & !\port_map_multi|Add8~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add5~21_combout\,
	datab => \in_port_A[4]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add8~7\,
	combout => \port_map_multi|Add8~8_combout\,
	cout => \port_map_multi|Add8~9\);

\port_map_multi|Add7~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add7~14_combout\ = ((\port_map_multi|Add5~21_combout\ $ (\in_port_A[4]~input_o\ $ (!\port_map_multi|Add7~11\)))) # (GND)
-- \port_map_multi|Add7~15\ = CARRY((\port_map_multi|Add5~21_combout\ & ((\in_port_A[4]~input_o\) # (!\port_map_multi|Add7~11\))) # (!\port_map_multi|Add5~21_combout\ & (\in_port_A[4]~input_o\ & !\port_map_multi|Add7~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add5~21_combout\,
	datab => \in_port_A[4]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add7~11\,
	combout => \port_map_multi|Add7~14_combout\,
	cout => \port_map_multi|Add7~15\);

\port_map_multi|Add7~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add7~16_combout\ = (\in_port_B[3]~input_o\ & (((\port_map_multi|Add7~14_combout\ & !\in_port_B[4]~input_o\)))) # (!\in_port_B[3]~input_o\ & (\port_map_multi|Add8~8_combout\ & ((\in_port_B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add8~8_combout\,
	datab => \port_map_multi|Add7~14_combout\,
	datac => \in_port_B[3]~input_o\,
	datad => \in_port_B[4]~input_o\,
	combout => \port_map_multi|Add7~16_combout\);

\port_map_multi|Add7~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add7~17_combout\ = (\port_map_multi|Add7~16_combout\) # ((\port_map_multi|Add5~21_combout\ & (\in_port_B[3]~input_o\ $ (!\in_port_B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add7~16_combout\,
	datab => \port_map_multi|Add5~21_combout\,
	datac => \in_port_B[3]~input_o\,
	datad => \in_port_B[4]~input_o\,
	combout => \port_map_multi|Add7~17_combout\);

\port_map_multi|Add10~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add10~6_combout\ = (\port_map_multi|Add7~17_combout\ & ((\in_port_A[3]~input_o\ & (!\port_map_multi|Add10~5\)) # (!\in_port_A[3]~input_o\ & (\port_map_multi|Add10~5\ & VCC)))) # (!\port_map_multi|Add7~17_combout\ & ((\in_port_A[3]~input_o\ 
-- & ((\port_map_multi|Add10~5\) # (GND))) # (!\in_port_A[3]~input_o\ & (!\port_map_multi|Add10~5\))))
-- \port_map_multi|Add10~7\ = CARRY((\port_map_multi|Add7~17_combout\ & (\in_port_A[3]~input_o\ & !\port_map_multi|Add10~5\)) # (!\port_map_multi|Add7~17_combout\ & ((\in_port_A[3]~input_o\) # (!\port_map_multi|Add10~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add7~17_combout\,
	datab => \in_port_A[3]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add10~5\,
	combout => \port_map_multi|Add10~6_combout\,
	cout => \port_map_multi|Add10~7\);

\port_map_multi|Add9~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add9~10_combout\ = (\port_map_multi|Add7~17_combout\ & ((\in_port_A[3]~input_o\ & (\port_map_multi|Add9~7\ & VCC)) # (!\in_port_A[3]~input_o\ & (!\port_map_multi|Add9~7\)))) # (!\port_map_multi|Add7~17_combout\ & ((\in_port_A[3]~input_o\ & 
-- (!\port_map_multi|Add9~7\)) # (!\in_port_A[3]~input_o\ & ((\port_map_multi|Add9~7\) # (GND)))))
-- \port_map_multi|Add9~11\ = CARRY((\port_map_multi|Add7~17_combout\ & (!\in_port_A[3]~input_o\ & !\port_map_multi|Add9~7\)) # (!\port_map_multi|Add7~17_combout\ & ((!\port_map_multi|Add9~7\) # (!\in_port_A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add7~17_combout\,
	datab => \in_port_A[3]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add9~7\,
	combout => \port_map_multi|Add9~10_combout\,
	cout => \port_map_multi|Add9~11\);

\port_map_multi|Add9~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add9~12_combout\ = (\in_port_B[4]~input_o\ & (((\port_map_multi|Add9~10_combout\ & !\in_port_B[5]~input_o\)))) # (!\in_port_B[4]~input_o\ & (\port_map_multi|Add10~6_combout\ & ((\in_port_B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add10~6_combout\,
	datab => \port_map_multi|Add9~10_combout\,
	datac => \in_port_B[4]~input_o\,
	datad => \in_port_B[5]~input_o\,
	combout => \port_map_multi|Add9~12_combout\);

\port_map_multi|Add9~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add9~13_combout\ = (\port_map_multi|Add9~12_combout\) # ((\port_map_multi|Add7~17_combout\ & (\in_port_B[4]~input_o\ $ (!\in_port_B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add9~12_combout\,
	datab => \port_map_multi|Add7~17_combout\,
	datac => \in_port_B[4]~input_o\,
	datad => \in_port_B[5]~input_o\,
	combout => \port_map_multi|Add9~13_combout\);

\port_map_multi|Add12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add12~4_combout\ = ((\port_map_multi|Add9~13_combout\ $ (\in_port_A[2]~input_o\ $ (\port_map_multi|Add12~3\)))) # (GND)
-- \port_map_multi|Add12~5\ = CARRY((\port_map_multi|Add9~13_combout\ & ((!\port_map_multi|Add12~3\) # (!\in_port_A[2]~input_o\))) # (!\port_map_multi|Add9~13_combout\ & (!\in_port_A[2]~input_o\ & !\port_map_multi|Add12~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add9~13_combout\,
	datab => \in_port_A[2]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add12~3\,
	combout => \port_map_multi|Add12~4_combout\,
	cout => \port_map_multi|Add12~5\);

\port_map_multi|Add11~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add11~6_combout\ = ((\port_map_multi|Add9~13_combout\ $ (\in_port_A[2]~input_o\ $ (!\port_map_multi|Add11~3\)))) # (GND)
-- \port_map_multi|Add11~7\ = CARRY((\port_map_multi|Add9~13_combout\ & ((\in_port_A[2]~input_o\) # (!\port_map_multi|Add11~3\))) # (!\port_map_multi|Add9~13_combout\ & (\in_port_A[2]~input_o\ & !\port_map_multi|Add11~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add9~13_combout\,
	datab => \in_port_A[2]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add11~3\,
	combout => \port_map_multi|Add11~6_combout\,
	cout => \port_map_multi|Add11~7\);

\port_map_multi|Add11~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add11~8_combout\ = (\in_port_B[5]~input_o\ & (((\port_map_multi|Add11~6_combout\ & !\in_port_B[6]~input_o\)))) # (!\in_port_B[5]~input_o\ & (\port_map_multi|Add12~4_combout\ & ((\in_port_B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add12~4_combout\,
	datab => \port_map_multi|Add11~6_combout\,
	datac => \in_port_B[5]~input_o\,
	datad => \in_port_B[6]~input_o\,
	combout => \port_map_multi|Add11~8_combout\);

\port_map_multi|Add11~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add11~9_combout\ = (\port_map_multi|Add11~8_combout\) # ((\port_map_multi|Add9~13_combout\ & (\in_port_B[5]~input_o\ $ (!\in_port_B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add11~8_combout\,
	datab => \port_map_multi|Add9~13_combout\,
	datac => \in_port_B[5]~input_o\,
	datad => \in_port_B[6]~input_o\,
	combout => \port_map_multi|Add11~9_combout\);

\port_map_multi|Add13~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add13~5_combout\ = \in_port_A[1]~input_o\ $ (((!\in_port_B[7]~input_o\ & \in_port_B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_A[1]~input_o\,
	datab => \in_port_B[7]~input_o\,
	datad => \in_port_B[6]~input_o\,
	combout => \port_map_multi|Add13~5_combout\);

\port_map_multi|Add13~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add13~6_combout\ = ((\port_map_multi|Add11~9_combout\ $ (\port_map_multi|Add13~5_combout\ $ (\port_map_multi|Add13~4\)))) # (GND)
-- \port_map_multi|Add13~7\ = CARRY((\port_map_multi|Add11~9_combout\ & ((!\port_map_multi|Add13~4\) # (!\port_map_multi|Add13~5_combout\))) # (!\port_map_multi|Add11~9_combout\ & (!\port_map_multi|Add13~5_combout\ & !\port_map_multi|Add13~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add11~9_combout\,
	datab => \port_map_multi|Add13~5_combout\,
	datad => VCC,
	cin => \port_map_multi|Add13~4\,
	combout => \port_map_multi|Add13~6_combout\,
	cout => \port_map_multi|Add13~7\);

\port_map_multi|Add4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add4~14_combout\ = \port_map_multi|Add1~43_combout\ $ (\in_port_A[7]~input_o\ $ (!\port_map_multi|Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add1~43_combout\,
	datab => \in_port_A[7]~input_o\,
	cin => \port_map_multi|Add4~13\,
	combout => \port_map_multi|Add4~14_combout\);

\port_map_multi|Add3~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add3~26_combout\ = \port_map_multi|Add1~43_combout\ $ (\in_port_A[7]~input_o\ $ (\port_map_multi|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add1~43_combout\,
	datab => \in_port_A[7]~input_o\,
	cin => \port_map_multi|Add3~23\,
	combout => \port_map_multi|Add3~26_combout\);

\port_map_multi|Add3~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add3~28_combout\ = (\in_port_B[1]~input_o\ & (((\port_map_multi|Add3~26_combout\ & !\in_port_B[2]~input_o\)))) # (!\in_port_B[1]~input_o\ & (\port_map_multi|Add4~14_combout\ & ((\in_port_B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add4~14_combout\,
	datab => \port_map_multi|Add3~26_combout\,
	datac => \in_port_B[1]~input_o\,
	datad => \in_port_B[2]~input_o\,
	combout => \port_map_multi|Add3~28_combout\);

\port_map_multi|Add3~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add3~29_combout\ = (\port_map_multi|Add3~28_combout\) # ((\port_map_multi|Add1~43_combout\ & (\in_port_B[1]~input_o\ $ (!\in_port_B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add3~28_combout\,
	datab => \port_map_multi|Add1~43_combout\,
	datac => \in_port_B[1]~input_o\,
	datad => \in_port_B[2]~input_o\,
	combout => \port_map_multi|Add3~29_combout\);

\port_map_multi|Add6~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add6~12_combout\ = ((\port_map_multi|Add3~29_combout\ $ (\in_port_A[6]~input_o\ $ (\port_map_multi|Add6~11\)))) # (GND)
-- \port_map_multi|Add6~13\ = CARRY((\port_map_multi|Add3~29_combout\ & ((!\port_map_multi|Add6~11\) # (!\in_port_A[6]~input_o\))) # (!\port_map_multi|Add3~29_combout\ & (!\in_port_A[6]~input_o\ & !\port_map_multi|Add6~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add3~29_combout\,
	datab => \in_port_A[6]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add6~11\,
	combout => \port_map_multi|Add6~12_combout\,
	cout => \port_map_multi|Add6~13\);

\port_map_multi|Add5~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add5~22_combout\ = ((\port_map_multi|Add3~29_combout\ $ (\in_port_A[6]~input_o\ $ (!\port_map_multi|Add5~19\)))) # (GND)
-- \port_map_multi|Add5~23\ = CARRY((\port_map_multi|Add3~29_combout\ & ((\in_port_A[6]~input_o\) # (!\port_map_multi|Add5~19\))) # (!\port_map_multi|Add3~29_combout\ & (\in_port_A[6]~input_o\ & !\port_map_multi|Add5~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add3~29_combout\,
	datab => \in_port_A[6]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add5~19\,
	combout => \port_map_multi|Add5~22_combout\,
	cout => \port_map_multi|Add5~23\);

\port_map_multi|Add5~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add5~24_combout\ = (\in_port_B[2]~input_o\ & (((\port_map_multi|Add5~22_combout\ & !\in_port_B[3]~input_o\)))) # (!\in_port_B[2]~input_o\ & (\port_map_multi|Add6~12_combout\ & ((\in_port_B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add6~12_combout\,
	datab => \port_map_multi|Add5~22_combout\,
	datac => \in_port_B[2]~input_o\,
	datad => \in_port_B[3]~input_o\,
	combout => \port_map_multi|Add5~24_combout\);

\port_map_multi|Add5~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add5~25_combout\ = (\port_map_multi|Add5~24_combout\) # ((\port_map_multi|Add3~29_combout\ & (\in_port_B[2]~input_o\ $ (!\in_port_B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add5~24_combout\,
	datab => \port_map_multi|Add3~29_combout\,
	datac => \in_port_B[2]~input_o\,
	datad => \in_port_B[3]~input_o\,
	combout => \port_map_multi|Add5~25_combout\);

\port_map_multi|Add8~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add8~10_combout\ = (\port_map_multi|Add5~25_combout\ & ((\in_port_A[5]~input_o\ & (!\port_map_multi|Add8~9\)) # (!\in_port_A[5]~input_o\ & (\port_map_multi|Add8~9\ & VCC)))) # (!\port_map_multi|Add5~25_combout\ & ((\in_port_A[5]~input_o\ & 
-- ((\port_map_multi|Add8~9\) # (GND))) # (!\in_port_A[5]~input_o\ & (!\port_map_multi|Add8~9\))))
-- \port_map_multi|Add8~11\ = CARRY((\port_map_multi|Add5~25_combout\ & (\in_port_A[5]~input_o\ & !\port_map_multi|Add8~9\)) # (!\port_map_multi|Add5~25_combout\ & ((\in_port_A[5]~input_o\) # (!\port_map_multi|Add8~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add5~25_combout\,
	datab => \in_port_A[5]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add8~9\,
	combout => \port_map_multi|Add8~10_combout\,
	cout => \port_map_multi|Add8~11\);

\port_map_multi|Add7~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add7~18_combout\ = (\port_map_multi|Add5~25_combout\ & ((\in_port_A[5]~input_o\ & (\port_map_multi|Add7~15\ & VCC)) # (!\in_port_A[5]~input_o\ & (!\port_map_multi|Add7~15\)))) # (!\port_map_multi|Add5~25_combout\ & ((\in_port_A[5]~input_o\ 
-- & (!\port_map_multi|Add7~15\)) # (!\in_port_A[5]~input_o\ & ((\port_map_multi|Add7~15\) # (GND)))))
-- \port_map_multi|Add7~19\ = CARRY((\port_map_multi|Add5~25_combout\ & (!\in_port_A[5]~input_o\ & !\port_map_multi|Add7~15\)) # (!\port_map_multi|Add5~25_combout\ & ((!\port_map_multi|Add7~15\) # (!\in_port_A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add5~25_combout\,
	datab => \in_port_A[5]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add7~15\,
	combout => \port_map_multi|Add7~18_combout\,
	cout => \port_map_multi|Add7~19\);

\port_map_multi|Add7~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add7~20_combout\ = (\in_port_B[3]~input_o\ & (((\port_map_multi|Add7~18_combout\ & !\in_port_B[4]~input_o\)))) # (!\in_port_B[3]~input_o\ & (\port_map_multi|Add8~10_combout\ & ((\in_port_B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add8~10_combout\,
	datab => \port_map_multi|Add7~18_combout\,
	datac => \in_port_B[3]~input_o\,
	datad => \in_port_B[4]~input_o\,
	combout => \port_map_multi|Add7~20_combout\);

\port_map_multi|Add7~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add7~21_combout\ = (\port_map_multi|Add7~20_combout\) # ((\port_map_multi|Add5~25_combout\ & (\in_port_B[3]~input_o\ $ (!\in_port_B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add7~20_combout\,
	datab => \port_map_multi|Add5~25_combout\,
	datac => \in_port_B[3]~input_o\,
	datad => \in_port_B[4]~input_o\,
	combout => \port_map_multi|Add7~21_combout\);

\port_map_multi|Add10~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add10~8_combout\ = ((\port_map_multi|Add7~21_combout\ $ (\in_port_A[4]~input_o\ $ (\port_map_multi|Add10~7\)))) # (GND)
-- \port_map_multi|Add10~9\ = CARRY((\port_map_multi|Add7~21_combout\ & ((!\port_map_multi|Add10~7\) # (!\in_port_A[4]~input_o\))) # (!\port_map_multi|Add7~21_combout\ & (!\in_port_A[4]~input_o\ & !\port_map_multi|Add10~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add7~21_combout\,
	datab => \in_port_A[4]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add10~7\,
	combout => \port_map_multi|Add10~8_combout\,
	cout => \port_map_multi|Add10~9\);

\port_map_multi|Add9~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add9~14_combout\ = ((\port_map_multi|Add7~21_combout\ $ (\in_port_A[4]~input_o\ $ (!\port_map_multi|Add9~11\)))) # (GND)
-- \port_map_multi|Add9~15\ = CARRY((\port_map_multi|Add7~21_combout\ & ((\in_port_A[4]~input_o\) # (!\port_map_multi|Add9~11\))) # (!\port_map_multi|Add7~21_combout\ & (\in_port_A[4]~input_o\ & !\port_map_multi|Add9~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add7~21_combout\,
	datab => \in_port_A[4]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add9~11\,
	combout => \port_map_multi|Add9~14_combout\,
	cout => \port_map_multi|Add9~15\);

\port_map_multi|Add9~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add9~16_combout\ = (\in_port_B[4]~input_o\ & (((\port_map_multi|Add9~14_combout\ & !\in_port_B[5]~input_o\)))) # (!\in_port_B[4]~input_o\ & (\port_map_multi|Add10~8_combout\ & ((\in_port_B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add10~8_combout\,
	datab => \port_map_multi|Add9~14_combout\,
	datac => \in_port_B[4]~input_o\,
	datad => \in_port_B[5]~input_o\,
	combout => \port_map_multi|Add9~16_combout\);

\port_map_multi|Add9~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add9~17_combout\ = (\port_map_multi|Add9~16_combout\) # ((\port_map_multi|Add7~21_combout\ & (\in_port_B[4]~input_o\ $ (!\in_port_B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add9~16_combout\,
	datab => \port_map_multi|Add7~21_combout\,
	datac => \in_port_B[4]~input_o\,
	datad => \in_port_B[5]~input_o\,
	combout => \port_map_multi|Add9~17_combout\);

\port_map_multi|Add12~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add12~6_combout\ = (\port_map_multi|Add9~17_combout\ & ((\in_port_A[3]~input_o\ & (!\port_map_multi|Add12~5\)) # (!\in_port_A[3]~input_o\ & (\port_map_multi|Add12~5\ & VCC)))) # (!\port_map_multi|Add9~17_combout\ & ((\in_port_A[3]~input_o\ 
-- & ((\port_map_multi|Add12~5\) # (GND))) # (!\in_port_A[3]~input_o\ & (!\port_map_multi|Add12~5\))))
-- \port_map_multi|Add12~7\ = CARRY((\port_map_multi|Add9~17_combout\ & (\in_port_A[3]~input_o\ & !\port_map_multi|Add12~5\)) # (!\port_map_multi|Add9~17_combout\ & ((\in_port_A[3]~input_o\) # (!\port_map_multi|Add12~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add9~17_combout\,
	datab => \in_port_A[3]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add12~5\,
	combout => \port_map_multi|Add12~6_combout\,
	cout => \port_map_multi|Add12~7\);

\port_map_multi|Add11~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add11~10_combout\ = (\port_map_multi|Add9~17_combout\ & ((\in_port_A[3]~input_o\ & (\port_map_multi|Add11~7\ & VCC)) # (!\in_port_A[3]~input_o\ & (!\port_map_multi|Add11~7\)))) # (!\port_map_multi|Add9~17_combout\ & 
-- ((\in_port_A[3]~input_o\ & (!\port_map_multi|Add11~7\)) # (!\in_port_A[3]~input_o\ & ((\port_map_multi|Add11~7\) # (GND)))))
-- \port_map_multi|Add11~11\ = CARRY((\port_map_multi|Add9~17_combout\ & (!\in_port_A[3]~input_o\ & !\port_map_multi|Add11~7\)) # (!\port_map_multi|Add9~17_combout\ & ((!\port_map_multi|Add11~7\) # (!\in_port_A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add9~17_combout\,
	datab => \in_port_A[3]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add11~7\,
	combout => \port_map_multi|Add11~10_combout\,
	cout => \port_map_multi|Add11~11\);

\port_map_multi|Add11~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add11~12_combout\ = (\in_port_B[5]~input_o\ & (((\port_map_multi|Add11~10_combout\ & !\in_port_B[6]~input_o\)))) # (!\in_port_B[5]~input_o\ & (\port_map_multi|Add12~6_combout\ & ((\in_port_B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add12~6_combout\,
	datab => \port_map_multi|Add11~10_combout\,
	datac => \in_port_B[5]~input_o\,
	datad => \in_port_B[6]~input_o\,
	combout => \port_map_multi|Add11~12_combout\);

\port_map_multi|Add11~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add11~13_combout\ = (\port_map_multi|Add11~12_combout\) # ((\port_map_multi|Add9~17_combout\ & (\in_port_B[5]~input_o\ $ (!\in_port_B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add11~12_combout\,
	datab => \port_map_multi|Add9~17_combout\,
	datac => \in_port_B[5]~input_o\,
	datad => \in_port_B[6]~input_o\,
	combout => \port_map_multi|Add11~13_combout\);

\port_map_multi|Add13~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add13~8_combout\ = \in_port_A[2]~input_o\ $ (((!\in_port_B[7]~input_o\ & \in_port_B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_A[2]~input_o\,
	datab => \in_port_B[7]~input_o\,
	datad => \in_port_B[6]~input_o\,
	combout => \port_map_multi|Add13~8_combout\);

\port_map_multi|Add13~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add13~9_combout\ = (\port_map_multi|Add11~13_combout\ & ((\port_map_multi|Add13~8_combout\ & (!\port_map_multi|Add13~7\)) # (!\port_map_multi|Add13~8_combout\ & (\port_map_multi|Add13~7\ & VCC)))) # (!\port_map_multi|Add11~13_combout\ & 
-- ((\port_map_multi|Add13~8_combout\ & ((\port_map_multi|Add13~7\) # (GND))) # (!\port_map_multi|Add13~8_combout\ & (!\port_map_multi|Add13~7\))))
-- \port_map_multi|Add13~10\ = CARRY((\port_map_multi|Add11~13_combout\ & (\port_map_multi|Add13~8_combout\ & !\port_map_multi|Add13~7\)) # (!\port_map_multi|Add11~13_combout\ & ((\port_map_multi|Add13~8_combout\) # (!\port_map_multi|Add13~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add11~13_combout\,
	datab => \port_map_multi|Add13~8_combout\,
	datad => VCC,
	cin => \port_map_multi|Add13~7\,
	combout => \port_map_multi|Add13~9_combout\,
	cout => \port_map_multi|Add13~10\);

\port_map_multi|Add6~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add6~14_combout\ = \port_map_multi|Add3~29_combout\ $ (\in_port_A[7]~input_o\ $ (!\port_map_multi|Add6~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add3~29_combout\,
	datab => \in_port_A[7]~input_o\,
	cin => \port_map_multi|Add6~13\,
	combout => \port_map_multi|Add6~14_combout\);

\port_map_multi|Add5~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add5~26_combout\ = \port_map_multi|Add3~29_combout\ $ (\in_port_A[7]~input_o\ $ (\port_map_multi|Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add3~29_combout\,
	datab => \in_port_A[7]~input_o\,
	cin => \port_map_multi|Add5~23\,
	combout => \port_map_multi|Add5~26_combout\);

\port_map_multi|Add5~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add5~28_combout\ = (\in_port_B[2]~input_o\ & (((\port_map_multi|Add5~26_combout\ & !\in_port_B[3]~input_o\)))) # (!\in_port_B[2]~input_o\ & (\port_map_multi|Add6~14_combout\ & ((\in_port_B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add6~14_combout\,
	datab => \port_map_multi|Add5~26_combout\,
	datac => \in_port_B[2]~input_o\,
	datad => \in_port_B[3]~input_o\,
	combout => \port_map_multi|Add5~28_combout\);

\port_map_multi|Add5~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add5~29_combout\ = (\port_map_multi|Add5~28_combout\) # ((\port_map_multi|Add3~29_combout\ & (\in_port_B[2]~input_o\ $ (!\in_port_B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add5~28_combout\,
	datab => \port_map_multi|Add3~29_combout\,
	datac => \in_port_B[2]~input_o\,
	datad => \in_port_B[3]~input_o\,
	combout => \port_map_multi|Add5~29_combout\);

\port_map_multi|Add8~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add8~12_combout\ = ((\port_map_multi|Add5~29_combout\ $ (\in_port_A[6]~input_o\ $ (\port_map_multi|Add8~11\)))) # (GND)
-- \port_map_multi|Add8~13\ = CARRY((\port_map_multi|Add5~29_combout\ & ((!\port_map_multi|Add8~11\) # (!\in_port_A[6]~input_o\))) # (!\port_map_multi|Add5~29_combout\ & (!\in_port_A[6]~input_o\ & !\port_map_multi|Add8~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add5~29_combout\,
	datab => \in_port_A[6]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add8~11\,
	combout => \port_map_multi|Add8~12_combout\,
	cout => \port_map_multi|Add8~13\);

\port_map_multi|Add7~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add7~22_combout\ = ((\port_map_multi|Add5~29_combout\ $ (\in_port_A[6]~input_o\ $ (!\port_map_multi|Add7~19\)))) # (GND)
-- \port_map_multi|Add7~23\ = CARRY((\port_map_multi|Add5~29_combout\ & ((\in_port_A[6]~input_o\) # (!\port_map_multi|Add7~19\))) # (!\port_map_multi|Add5~29_combout\ & (\in_port_A[6]~input_o\ & !\port_map_multi|Add7~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add5~29_combout\,
	datab => \in_port_A[6]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add7~19\,
	combout => \port_map_multi|Add7~22_combout\,
	cout => \port_map_multi|Add7~23\);

\port_map_multi|Add7~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add7~24_combout\ = (\in_port_B[3]~input_o\ & (((\port_map_multi|Add7~22_combout\ & !\in_port_B[4]~input_o\)))) # (!\in_port_B[3]~input_o\ & (\port_map_multi|Add8~12_combout\ & ((\in_port_B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add8~12_combout\,
	datab => \port_map_multi|Add7~22_combout\,
	datac => \in_port_B[3]~input_o\,
	datad => \in_port_B[4]~input_o\,
	combout => \port_map_multi|Add7~24_combout\);

\port_map_multi|Add7~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add7~25_combout\ = (\port_map_multi|Add7~24_combout\) # ((\port_map_multi|Add5~29_combout\ & (\in_port_B[3]~input_o\ $ (!\in_port_B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add7~24_combout\,
	datab => \port_map_multi|Add5~29_combout\,
	datac => \in_port_B[3]~input_o\,
	datad => \in_port_B[4]~input_o\,
	combout => \port_map_multi|Add7~25_combout\);

\port_map_multi|Add10~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add10~10_combout\ = (\port_map_multi|Add7~25_combout\ & ((\in_port_A[5]~input_o\ & (!\port_map_multi|Add10~9\)) # (!\in_port_A[5]~input_o\ & (\port_map_multi|Add10~9\ & VCC)))) # (!\port_map_multi|Add7~25_combout\ & 
-- ((\in_port_A[5]~input_o\ & ((\port_map_multi|Add10~9\) # (GND))) # (!\in_port_A[5]~input_o\ & (!\port_map_multi|Add10~9\))))
-- \port_map_multi|Add10~11\ = CARRY((\port_map_multi|Add7~25_combout\ & (\in_port_A[5]~input_o\ & !\port_map_multi|Add10~9\)) # (!\port_map_multi|Add7~25_combout\ & ((\in_port_A[5]~input_o\) # (!\port_map_multi|Add10~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add7~25_combout\,
	datab => \in_port_A[5]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add10~9\,
	combout => \port_map_multi|Add10~10_combout\,
	cout => \port_map_multi|Add10~11\);

\port_map_multi|Add9~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add9~18_combout\ = (\port_map_multi|Add7~25_combout\ & ((\in_port_A[5]~input_o\ & (\port_map_multi|Add9~15\ & VCC)) # (!\in_port_A[5]~input_o\ & (!\port_map_multi|Add9~15\)))) # (!\port_map_multi|Add7~25_combout\ & ((\in_port_A[5]~input_o\ 
-- & (!\port_map_multi|Add9~15\)) # (!\in_port_A[5]~input_o\ & ((\port_map_multi|Add9~15\) # (GND)))))
-- \port_map_multi|Add9~19\ = CARRY((\port_map_multi|Add7~25_combout\ & (!\in_port_A[5]~input_o\ & !\port_map_multi|Add9~15\)) # (!\port_map_multi|Add7~25_combout\ & ((!\port_map_multi|Add9~15\) # (!\in_port_A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add7~25_combout\,
	datab => \in_port_A[5]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add9~15\,
	combout => \port_map_multi|Add9~18_combout\,
	cout => \port_map_multi|Add9~19\);

\port_map_multi|Add9~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add9~20_combout\ = (\in_port_B[4]~input_o\ & (((\port_map_multi|Add9~18_combout\ & !\in_port_B[5]~input_o\)))) # (!\in_port_B[4]~input_o\ & (\port_map_multi|Add10~10_combout\ & ((\in_port_B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add10~10_combout\,
	datab => \port_map_multi|Add9~18_combout\,
	datac => \in_port_B[4]~input_o\,
	datad => \in_port_B[5]~input_o\,
	combout => \port_map_multi|Add9~20_combout\);

\port_map_multi|Add9~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add9~21_combout\ = (\port_map_multi|Add9~20_combout\) # ((\port_map_multi|Add7~25_combout\ & (\in_port_B[4]~input_o\ $ (!\in_port_B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add9~20_combout\,
	datab => \port_map_multi|Add7~25_combout\,
	datac => \in_port_B[4]~input_o\,
	datad => \in_port_B[5]~input_o\,
	combout => \port_map_multi|Add9~21_combout\);

\port_map_multi|Add12~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add12~8_combout\ = ((\port_map_multi|Add9~21_combout\ $ (\in_port_A[4]~input_o\ $ (\port_map_multi|Add12~7\)))) # (GND)
-- \port_map_multi|Add12~9\ = CARRY((\port_map_multi|Add9~21_combout\ & ((!\port_map_multi|Add12~7\) # (!\in_port_A[4]~input_o\))) # (!\port_map_multi|Add9~21_combout\ & (!\in_port_A[4]~input_o\ & !\port_map_multi|Add12~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add9~21_combout\,
	datab => \in_port_A[4]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add12~7\,
	combout => \port_map_multi|Add12~8_combout\,
	cout => \port_map_multi|Add12~9\);

\port_map_multi|Add11~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add11~14_combout\ = ((\port_map_multi|Add9~21_combout\ $ (\in_port_A[4]~input_o\ $ (!\port_map_multi|Add11~11\)))) # (GND)
-- \port_map_multi|Add11~15\ = CARRY((\port_map_multi|Add9~21_combout\ & ((\in_port_A[4]~input_o\) # (!\port_map_multi|Add11~11\))) # (!\port_map_multi|Add9~21_combout\ & (\in_port_A[4]~input_o\ & !\port_map_multi|Add11~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add9~21_combout\,
	datab => \in_port_A[4]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add11~11\,
	combout => \port_map_multi|Add11~14_combout\,
	cout => \port_map_multi|Add11~15\);

\port_map_multi|Add11~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add11~16_combout\ = (\in_port_B[5]~input_o\ & (((\port_map_multi|Add11~14_combout\ & !\in_port_B[6]~input_o\)))) # (!\in_port_B[5]~input_o\ & (\port_map_multi|Add12~8_combout\ & ((\in_port_B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add12~8_combout\,
	datab => \port_map_multi|Add11~14_combout\,
	datac => \in_port_B[5]~input_o\,
	datad => \in_port_B[6]~input_o\,
	combout => \port_map_multi|Add11~16_combout\);

\port_map_multi|Add11~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add11~17_combout\ = (\port_map_multi|Add11~16_combout\) # ((\port_map_multi|Add9~21_combout\ & (\in_port_B[5]~input_o\ $ (!\in_port_B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add11~16_combout\,
	datab => \port_map_multi|Add9~21_combout\,
	datac => \in_port_B[5]~input_o\,
	datad => \in_port_B[6]~input_o\,
	combout => \port_map_multi|Add11~17_combout\);

\port_map_multi|Add13~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add13~11_combout\ = \in_port_A[3]~input_o\ $ (((!\in_port_B[7]~input_o\ & \in_port_B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_A[3]~input_o\,
	datab => \in_port_B[7]~input_o\,
	datad => \in_port_B[6]~input_o\,
	combout => \port_map_multi|Add13~11_combout\);

\port_map_multi|Add13~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add13~12_combout\ = ((\port_map_multi|Add11~17_combout\ $ (\port_map_multi|Add13~11_combout\ $ (\port_map_multi|Add13~10\)))) # (GND)
-- \port_map_multi|Add13~13\ = CARRY((\port_map_multi|Add11~17_combout\ & ((!\port_map_multi|Add13~10\) # (!\port_map_multi|Add13~11_combout\))) # (!\port_map_multi|Add11~17_combout\ & (!\port_map_multi|Add13~11_combout\ & !\port_map_multi|Add13~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add11~17_combout\,
	datab => \port_map_multi|Add13~11_combout\,
	datad => VCC,
	cin => \port_map_multi|Add13~10\,
	combout => \port_map_multi|Add13~12_combout\,
	cout => \port_map_multi|Add13~13\);

\port_map_multi|Add8~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add8~14_combout\ = \port_map_multi|Add5~29_combout\ $ (\in_port_A[7]~input_o\ $ (!\port_map_multi|Add8~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add5~29_combout\,
	datab => \in_port_A[7]~input_o\,
	cin => \port_map_multi|Add8~13\,
	combout => \port_map_multi|Add8~14_combout\);

\port_map_multi|Add7~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add7~26_combout\ = \port_map_multi|Add5~29_combout\ $ (\in_port_A[7]~input_o\ $ (\port_map_multi|Add7~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add5~29_combout\,
	datab => \in_port_A[7]~input_o\,
	cin => \port_map_multi|Add7~23\,
	combout => \port_map_multi|Add7~26_combout\);

\port_map_multi|Add7~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add7~28_combout\ = (\in_port_B[3]~input_o\ & (((\port_map_multi|Add7~26_combout\ & !\in_port_B[4]~input_o\)))) # (!\in_port_B[3]~input_o\ & (\port_map_multi|Add8~14_combout\ & ((\in_port_B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add8~14_combout\,
	datab => \port_map_multi|Add7~26_combout\,
	datac => \in_port_B[3]~input_o\,
	datad => \in_port_B[4]~input_o\,
	combout => \port_map_multi|Add7~28_combout\);

\port_map_multi|Add7~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add7~29_combout\ = (\port_map_multi|Add7~28_combout\) # ((\port_map_multi|Add5~29_combout\ & (\in_port_B[3]~input_o\ $ (!\in_port_B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add7~28_combout\,
	datab => \port_map_multi|Add5~29_combout\,
	datac => \in_port_B[3]~input_o\,
	datad => \in_port_B[4]~input_o\,
	combout => \port_map_multi|Add7~29_combout\);

\port_map_multi|Add10~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add10~12_combout\ = ((\port_map_multi|Add7~29_combout\ $ (\in_port_A[6]~input_o\ $ (\port_map_multi|Add10~11\)))) # (GND)
-- \port_map_multi|Add10~13\ = CARRY((\port_map_multi|Add7~29_combout\ & ((!\port_map_multi|Add10~11\) # (!\in_port_A[6]~input_o\))) # (!\port_map_multi|Add7~29_combout\ & (!\in_port_A[6]~input_o\ & !\port_map_multi|Add10~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add7~29_combout\,
	datab => \in_port_A[6]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add10~11\,
	combout => \port_map_multi|Add10~12_combout\,
	cout => \port_map_multi|Add10~13\);

\port_map_multi|Add9~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add9~22_combout\ = ((\port_map_multi|Add7~29_combout\ $ (\in_port_A[6]~input_o\ $ (!\port_map_multi|Add9~19\)))) # (GND)
-- \port_map_multi|Add9~23\ = CARRY((\port_map_multi|Add7~29_combout\ & ((\in_port_A[6]~input_o\) # (!\port_map_multi|Add9~19\))) # (!\port_map_multi|Add7~29_combout\ & (\in_port_A[6]~input_o\ & !\port_map_multi|Add9~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add7~29_combout\,
	datab => \in_port_A[6]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add9~19\,
	combout => \port_map_multi|Add9~22_combout\,
	cout => \port_map_multi|Add9~23\);

\port_map_multi|Add9~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add9~24_combout\ = (\in_port_B[4]~input_o\ & (((\port_map_multi|Add9~22_combout\ & !\in_port_B[5]~input_o\)))) # (!\in_port_B[4]~input_o\ & (\port_map_multi|Add10~12_combout\ & ((\in_port_B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add10~12_combout\,
	datab => \port_map_multi|Add9~22_combout\,
	datac => \in_port_B[4]~input_o\,
	datad => \in_port_B[5]~input_o\,
	combout => \port_map_multi|Add9~24_combout\);

\port_map_multi|Add9~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add9~25_combout\ = (\port_map_multi|Add9~24_combout\) # ((\port_map_multi|Add7~29_combout\ & (\in_port_B[4]~input_o\ $ (!\in_port_B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add9~24_combout\,
	datab => \port_map_multi|Add7~29_combout\,
	datac => \in_port_B[4]~input_o\,
	datad => \in_port_B[5]~input_o\,
	combout => \port_map_multi|Add9~25_combout\);

\port_map_multi|Add12~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add12~10_combout\ = (\port_map_multi|Add9~25_combout\ & ((\in_port_A[5]~input_o\ & (!\port_map_multi|Add12~9\)) # (!\in_port_A[5]~input_o\ & (\port_map_multi|Add12~9\ & VCC)))) # (!\port_map_multi|Add9~25_combout\ & 
-- ((\in_port_A[5]~input_o\ & ((\port_map_multi|Add12~9\) # (GND))) # (!\in_port_A[5]~input_o\ & (!\port_map_multi|Add12~9\))))
-- \port_map_multi|Add12~11\ = CARRY((\port_map_multi|Add9~25_combout\ & (\in_port_A[5]~input_o\ & !\port_map_multi|Add12~9\)) # (!\port_map_multi|Add9~25_combout\ & ((\in_port_A[5]~input_o\) # (!\port_map_multi|Add12~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add9~25_combout\,
	datab => \in_port_A[5]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add12~9\,
	combout => \port_map_multi|Add12~10_combout\,
	cout => \port_map_multi|Add12~11\);

\port_map_multi|Add11~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add11~18_combout\ = (\port_map_multi|Add9~25_combout\ & ((\in_port_A[5]~input_o\ & (\port_map_multi|Add11~15\ & VCC)) # (!\in_port_A[5]~input_o\ & (!\port_map_multi|Add11~15\)))) # (!\port_map_multi|Add9~25_combout\ & 
-- ((\in_port_A[5]~input_o\ & (!\port_map_multi|Add11~15\)) # (!\in_port_A[5]~input_o\ & ((\port_map_multi|Add11~15\) # (GND)))))
-- \port_map_multi|Add11~19\ = CARRY((\port_map_multi|Add9~25_combout\ & (!\in_port_A[5]~input_o\ & !\port_map_multi|Add11~15\)) # (!\port_map_multi|Add9~25_combout\ & ((!\port_map_multi|Add11~15\) # (!\in_port_A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add9~25_combout\,
	datab => \in_port_A[5]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add11~15\,
	combout => \port_map_multi|Add11~18_combout\,
	cout => \port_map_multi|Add11~19\);

\port_map_multi|Add11~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add11~20_combout\ = (\in_port_B[5]~input_o\ & (((\port_map_multi|Add11~18_combout\ & !\in_port_B[6]~input_o\)))) # (!\in_port_B[5]~input_o\ & (\port_map_multi|Add12~10_combout\ & ((\in_port_B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add12~10_combout\,
	datab => \port_map_multi|Add11~18_combout\,
	datac => \in_port_B[5]~input_o\,
	datad => \in_port_B[6]~input_o\,
	combout => \port_map_multi|Add11~20_combout\);

\port_map_multi|Add11~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add11~21_combout\ = (\port_map_multi|Add11~20_combout\) # ((\port_map_multi|Add9~25_combout\ & (\in_port_B[5]~input_o\ $ (!\in_port_B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add11~20_combout\,
	datab => \port_map_multi|Add9~25_combout\,
	datac => \in_port_B[5]~input_o\,
	datad => \in_port_B[6]~input_o\,
	combout => \port_map_multi|Add11~21_combout\);

\port_map_multi|Add13~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add13~14_combout\ = \in_port_A[4]~input_o\ $ (((!\in_port_B[7]~input_o\ & \in_port_B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_A[4]~input_o\,
	datab => \in_port_B[7]~input_o\,
	datad => \in_port_B[6]~input_o\,
	combout => \port_map_multi|Add13~14_combout\);

\port_map_multi|Add13~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add13~15_combout\ = (\port_map_multi|Add11~21_combout\ & ((\port_map_multi|Add13~14_combout\ & (!\port_map_multi|Add13~13\)) # (!\port_map_multi|Add13~14_combout\ & (\port_map_multi|Add13~13\ & VCC)))) # (!\port_map_multi|Add11~21_combout\ 
-- & ((\port_map_multi|Add13~14_combout\ & ((\port_map_multi|Add13~13\) # (GND))) # (!\port_map_multi|Add13~14_combout\ & (!\port_map_multi|Add13~13\))))
-- \port_map_multi|Add13~16\ = CARRY((\port_map_multi|Add11~21_combout\ & (\port_map_multi|Add13~14_combout\ & !\port_map_multi|Add13~13\)) # (!\port_map_multi|Add11~21_combout\ & ((\port_map_multi|Add13~14_combout\) # (!\port_map_multi|Add13~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add11~21_combout\,
	datab => \port_map_multi|Add13~14_combout\,
	datad => VCC,
	cin => \port_map_multi|Add13~13\,
	combout => \port_map_multi|Add13~15_combout\,
	cout => \port_map_multi|Add13~16\);

\Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\port_map_multi|Add13~6_combout\) # ((\port_map_multi|Add13~9_combout\) # ((\port_map_multi|Add13~12_combout\) # (\port_map_multi|Add13~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add13~6_combout\,
	datab => \port_map_multi|Add13~9_combout\,
	datac => \port_map_multi|Add13~12_combout\,
	datad => \port_map_multi|Add13~15_combout\,
	combout => \Mux12~0_combout\);

\port_map_multi|Add10~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add10~14_combout\ = \port_map_multi|Add7~29_combout\ $ (\in_port_A[7]~input_o\ $ (!\port_map_multi|Add10~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add7~29_combout\,
	datab => \in_port_A[7]~input_o\,
	cin => \port_map_multi|Add10~13\,
	combout => \port_map_multi|Add10~14_combout\);

\port_map_multi|Add9~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add9~26_combout\ = \port_map_multi|Add7~29_combout\ $ (\in_port_A[7]~input_o\ $ (\port_map_multi|Add9~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add7~29_combout\,
	datab => \in_port_A[7]~input_o\,
	cin => \port_map_multi|Add9~23\,
	combout => \port_map_multi|Add9~26_combout\);

\port_map_multi|Add9~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add9~28_combout\ = (\in_port_B[4]~input_o\ & (((\port_map_multi|Add9~26_combout\ & !\in_port_B[5]~input_o\)))) # (!\in_port_B[4]~input_o\ & (\port_map_multi|Add10~14_combout\ & ((\in_port_B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add10~14_combout\,
	datab => \port_map_multi|Add9~26_combout\,
	datac => \in_port_B[4]~input_o\,
	datad => \in_port_B[5]~input_o\,
	combout => \port_map_multi|Add9~28_combout\);

\port_map_multi|Add9~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add9~29_combout\ = (\port_map_multi|Add9~28_combout\) # ((\port_map_multi|Add7~29_combout\ & (\in_port_B[4]~input_o\ $ (!\in_port_B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add9~28_combout\,
	datab => \port_map_multi|Add7~29_combout\,
	datac => \in_port_B[4]~input_o\,
	datad => \in_port_B[5]~input_o\,
	combout => \port_map_multi|Add9~29_combout\);

\port_map_multi|Add12~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add12~12_combout\ = ((\port_map_multi|Add9~29_combout\ $ (\in_port_A[6]~input_o\ $ (\port_map_multi|Add12~11\)))) # (GND)
-- \port_map_multi|Add12~13\ = CARRY((\port_map_multi|Add9~29_combout\ & ((!\port_map_multi|Add12~11\) # (!\in_port_A[6]~input_o\))) # (!\port_map_multi|Add9~29_combout\ & (!\in_port_A[6]~input_o\ & !\port_map_multi|Add12~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add9~29_combout\,
	datab => \in_port_A[6]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add12~11\,
	combout => \port_map_multi|Add12~12_combout\,
	cout => \port_map_multi|Add12~13\);

\port_map_multi|Add11~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add11~22_combout\ = ((\port_map_multi|Add9~29_combout\ $ (\in_port_A[6]~input_o\ $ (!\port_map_multi|Add11~19\)))) # (GND)
-- \port_map_multi|Add11~23\ = CARRY((\port_map_multi|Add9~29_combout\ & ((\in_port_A[6]~input_o\) # (!\port_map_multi|Add11~19\))) # (!\port_map_multi|Add9~29_combout\ & (\in_port_A[6]~input_o\ & !\port_map_multi|Add11~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add9~29_combout\,
	datab => \in_port_A[6]~input_o\,
	datad => VCC,
	cin => \port_map_multi|Add11~19\,
	combout => \port_map_multi|Add11~22_combout\,
	cout => \port_map_multi|Add11~23\);

\port_map_multi|Add11~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add11~24_combout\ = (\in_port_B[5]~input_o\ & (((\port_map_multi|Add11~22_combout\ & !\in_port_B[6]~input_o\)))) # (!\in_port_B[5]~input_o\ & (\port_map_multi|Add12~12_combout\ & ((\in_port_B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add12~12_combout\,
	datab => \port_map_multi|Add11~22_combout\,
	datac => \in_port_B[5]~input_o\,
	datad => \in_port_B[6]~input_o\,
	combout => \port_map_multi|Add11~24_combout\);

\port_map_multi|Add11~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add11~25_combout\ = (\port_map_multi|Add11~24_combout\) # ((\port_map_multi|Add9~29_combout\ & (\in_port_B[5]~input_o\ $ (!\in_port_B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add11~24_combout\,
	datab => \port_map_multi|Add9~29_combout\,
	datac => \in_port_B[5]~input_o\,
	datad => \in_port_B[6]~input_o\,
	combout => \port_map_multi|Add11~25_combout\);

\port_map_multi|Add13~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add13~17_combout\ = \in_port_A[5]~input_o\ $ (((!\in_port_B[7]~input_o\ & \in_port_B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_A[5]~input_o\,
	datab => \in_port_B[7]~input_o\,
	datad => \in_port_B[6]~input_o\,
	combout => \port_map_multi|Add13~17_combout\);

\port_map_multi|Add13~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add13~18_combout\ = ((\port_map_multi|Add11~25_combout\ $ (\port_map_multi|Add13~17_combout\ $ (\port_map_multi|Add13~16\)))) # (GND)
-- \port_map_multi|Add13~19\ = CARRY((\port_map_multi|Add11~25_combout\ & ((!\port_map_multi|Add13~16\) # (!\port_map_multi|Add13~17_combout\))) # (!\port_map_multi|Add11~25_combout\ & (!\port_map_multi|Add13~17_combout\ & !\port_map_multi|Add13~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add11~25_combout\,
	datab => \port_map_multi|Add13~17_combout\,
	datad => VCC,
	cin => \port_map_multi|Add13~16\,
	combout => \port_map_multi|Add13~18_combout\,
	cout => \port_map_multi|Add13~19\);

\port_map_multi|Add12~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add12~14_combout\ = \port_map_multi|Add9~29_combout\ $ (\in_port_A[7]~input_o\ $ (!\port_map_multi|Add12~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add9~29_combout\,
	datab => \in_port_A[7]~input_o\,
	cin => \port_map_multi|Add12~13\,
	combout => \port_map_multi|Add12~14_combout\);

\port_map_multi|Add11~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add11~26_combout\ = \port_map_multi|Add9~29_combout\ $ (\in_port_A[7]~input_o\ $ (\port_map_multi|Add11~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add9~29_combout\,
	datab => \in_port_A[7]~input_o\,
	cin => \port_map_multi|Add11~23\,
	combout => \port_map_multi|Add11~26_combout\);

\port_map_multi|Add11~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add11~28_combout\ = (\in_port_B[5]~input_o\ & (((\port_map_multi|Add11~26_combout\ & !\in_port_B[6]~input_o\)))) # (!\in_port_B[5]~input_o\ & (\port_map_multi|Add12~14_combout\ & ((\in_port_B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add12~14_combout\,
	datab => \port_map_multi|Add11~26_combout\,
	datac => \in_port_B[5]~input_o\,
	datad => \in_port_B[6]~input_o\,
	combout => \port_map_multi|Add11~28_combout\);

\port_map_multi|Add11~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add11~29_combout\ = (\port_map_multi|Add11~28_combout\) # ((\port_map_multi|Add9~29_combout\ & (\in_port_B[5]~input_o\ $ (!\in_port_B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add11~28_combout\,
	datab => \port_map_multi|Add9~29_combout\,
	datac => \in_port_B[5]~input_o\,
	datad => \in_port_B[6]~input_o\,
	combout => \port_map_multi|Add11~29_combout\);

\port_map_multi|Add13~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add13~20_combout\ = \in_port_A[6]~input_o\ $ (((!\in_port_B[7]~input_o\ & \in_port_B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_A[6]~input_o\,
	datab => \in_port_B[7]~input_o\,
	datad => \in_port_B[6]~input_o\,
	combout => \port_map_multi|Add13~20_combout\);

\port_map_multi|Add13~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add13~21_combout\ = (\port_map_multi|Add11~29_combout\ & ((\port_map_multi|Add13~20_combout\ & (!\port_map_multi|Add13~19\)) # (!\port_map_multi|Add13~20_combout\ & (\port_map_multi|Add13~19\ & VCC)))) # (!\port_map_multi|Add11~29_combout\ 
-- & ((\port_map_multi|Add13~20_combout\ & ((\port_map_multi|Add13~19\) # (GND))) # (!\port_map_multi|Add13~20_combout\ & (!\port_map_multi|Add13~19\))))
-- \port_map_multi|Add13~22\ = CARRY((\port_map_multi|Add11~29_combout\ & (\port_map_multi|Add13~20_combout\ & !\port_map_multi|Add13~19\)) # (!\port_map_multi|Add11~29_combout\ & ((\port_map_multi|Add13~20_combout\) # (!\port_map_multi|Add13~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add11~29_combout\,
	datab => \port_map_multi|Add13~20_combout\,
	datad => VCC,
	cin => \port_map_multi|Add13~19\,
	combout => \port_map_multi|Add13~21_combout\,
	cout => \port_map_multi|Add13~22\);

\port_map_multi|Add13~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add13~23_combout\ = \in_port_A[7]~input_o\ $ (((!\in_port_B[7]~input_o\ & \in_port_B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_A[7]~input_o\,
	datab => \in_port_B[7]~input_o\,
	datad => \in_port_B[6]~input_o\,
	combout => \port_map_multi|Add13~23_combout\);

\port_map_multi|Add13~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_multi|Add13~24_combout\ = \port_map_multi|Add11~29_combout\ $ (\port_map_multi|Add13~23_combout\ $ (\port_map_multi|Add13~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add11~29_combout\,
	datab => \port_map_multi|Add13~23_combout\,
	cin => \port_map_multi|Add13~22\,
	combout => \port_map_multi|Add13~24_combout\);

\Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Mux12~0_combout\) # ((\port_map_multi|Add13~18_combout\) # ((\port_map_multi|Add13~21_combout\) # (\port_map_multi|Add13~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~0_combout\,
	datab => \port_map_multi|Add13~18_combout\,
	datac => \port_map_multi|Add13~21_combout\,
	datad => \port_map_multi|Add13~24_combout\,
	combout => \Mux12~1_combout\);

\Mux12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\port_map_multi|Add11~9_combout\) # ((\port_map_multi|Add11~13_combout\) # ((\port_map_multi|Add11~17_combout\) # (\port_map_multi|Add11~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add11~9_combout\,
	datab => \port_map_multi|Add11~13_combout\,
	datac => \port_map_multi|Add11~17_combout\,
	datad => \port_map_multi|Add11~21_combout\,
	combout => \Mux12~2_combout\);

\Mux12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\port_map_multi|Add11~25_combout\) # ((\port_map_multi|Add11~29_combout\) # (\Mux12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multi|Add11~25_combout\,
	datab => \port_map_multi|Add11~29_combout\,
	datac => \Mux12~2_combout\,
	combout => \Mux12~3_combout\);

\Mux12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (\ula_op[1]~input_o\ & (\in_port_B[6]~input_o\)) # (!\ula_op[1]~input_o\ & ((\in_port_B[6]~input_o\ & ((\in_port_A[6]~input_o\) # (\port_map_adder|A5|cout~0_combout\))) # (!\in_port_B[6]~input_o\ & (\in_port_A[6]~input_o\ & 
-- \port_map_adder|A5|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[1]~input_o\,
	datab => \in_port_B[6]~input_o\,
	datac => \in_port_A[6]~input_o\,
	datad => \port_map_adder|A5|cout~0_combout\,
	combout => \Mux12~4_combout\);

\Mux12~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = (\in_port_B[7]~input_o\ & ((\ula_op[1]~input_o\ & ((!\Mux12~4_combout\))) # (!\ula_op[1]~input_o\ & ((\in_port_A[7]~input_o\) # (\Mux12~4_combout\))))) # (!\in_port_B[7]~input_o\ & (\Mux12~4_combout\ & ((\in_port_A[7]~input_o\) # 
-- (\ula_op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_port_B[7]~input_o\,
	datab => \in_port_A[7]~input_o\,
	datac => \ula_op[1]~input_o\,
	datad => \Mux12~4_combout\,
	combout => \Mux12~5_combout\);

\Mux12~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~6_combout\ = (\ula_op[1]~input_o\ & ((\Mux12~5_combout\ & (\Mux12~1_combout\)) # (!\Mux12~5_combout\ & ((\Mux12~3_combout\))))) # (!\ula_op[1]~input_o\ & (((\Mux12~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \Mux12~3_combout\,
	datac => \ula_op[1]~input_o\,
	datad => \Mux12~5_combout\,
	combout => \Mux12~6_combout\);

\Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\ula_op[2]~input_o\) # ((\ula_op[1]~input_o\ & ((!\ula_op[3]~input_o\) # (!\ula_op[0]~input_o\))) # (!\ula_op[1]~input_o\ & ((\ula_op[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[0]~input_o\,
	datab => \ula_op[1]~input_o\,
	datac => \ula_op[2]~input_o\,
	datad => \ula_op[3]~input_o\,
	combout => \Mux13~0_combout\);

\overflow$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \overflow$latch~combout\ = (\Mux13~0_combout\ & ((\overflow$latch~combout\))) # (!\Mux13~0_combout\ & (\Mux12~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux12~6_combout\,
	datac => \overflow$latch~combout\,
	datad => \Mux13~0_combout\,
	combout => \overflow$latch~combout\);

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

ww_out_ula_result(0) <= \out_ula_result[0]~output_o\;

ww_out_ula_result(1) <= \out_ula_result[1]~output_o\;

ww_out_ula_result(2) <= \out_ula_result[2]~output_o\;

ww_out_ula_result(3) <= \out_ula_result[3]~output_o\;

ww_out_ula_result(4) <= \out_ula_result[4]~output_o\;

ww_out_ula_result(5) <= \out_ula_result[5]~output_o\;

ww_out_ula_result(6) <= \out_ula_result[6]~output_o\;

ww_out_ula_result(7) <= \out_ula_result[7]~output_o\;

ww_zero <= \zero~output_o\;

ww_overflow <= \overflow~output_o\;
END structure;


