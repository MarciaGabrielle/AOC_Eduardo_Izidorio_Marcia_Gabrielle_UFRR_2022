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

-- DATE "03/12/2022 19:07:33"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	processador_GE_22 IS
    PORT (
	clock : IN std_logic;
	out_out_pc : BUFFER std_logic_vector(7 DOWNTO 0);
	out_out_rom : BUFFER std_logic_vector(7 DOWNTO 0);
	out_opcode : BUFFER std_logic_vector(3 DOWNTO 0);
	out_rs : BUFFER std_logic_vector(1 DOWNTO 0);
	out_rt : BUFFER std_logic_vector(1 DOWNTO 0);
	out_endereco : BUFFER std_logic_vector(3 DOWNTO 0);
	out_out_mem_ram : BUFFER std_logic_vector(7 DOWNTO 0);
	out_out_br_reg_A : BUFFER std_logic_vector(7 DOWNTO 0);
	out_out_br_reg_B : BUFFER std_logic_vector(7 DOWNTO 0);
	out_out_ula_result : BUFFER std_logic_vector(7 DOWNTO 0);
	out_out_overflow : BUFFER std_logic;
	out_out_memoria_ram : BUFFER std_logic_vector(7 DOWNTO 0);
	out_out_mult_2x1_ram_ula : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END processador_GE_22;

ARCHITECTURE structure OF processador_GE_22 IS
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
SIGNAL ww_out_out_pc : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_out_rom : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_opcode : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_out_rs : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_out_rt : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_out_endereco : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_out_out_mem_ram : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_out_br_reg_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_out_br_reg_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_out_ula_result : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_out_overflow : std_logic;
SIGNAL ww_out_out_memoria_ram : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_out_mult_2x1_ram_ula : std_logic_vector(7 DOWNTO 0);
SIGNAL \out_out_pc[0]~output_o\ : std_logic;
SIGNAL \out_out_pc[1]~output_o\ : std_logic;
SIGNAL \out_out_pc[2]~output_o\ : std_logic;
SIGNAL \out_out_pc[3]~output_o\ : std_logic;
SIGNAL \out_out_pc[4]~output_o\ : std_logic;
SIGNAL \out_out_pc[5]~output_o\ : std_logic;
SIGNAL \out_out_pc[6]~output_o\ : std_logic;
SIGNAL \out_out_pc[7]~output_o\ : std_logic;
SIGNAL \out_out_rom[0]~output_o\ : std_logic;
SIGNAL \out_out_rom[1]~output_o\ : std_logic;
SIGNAL \out_out_rom[2]~output_o\ : std_logic;
SIGNAL \out_out_rom[3]~output_o\ : std_logic;
SIGNAL \out_out_rom[4]~output_o\ : std_logic;
SIGNAL \out_out_rom[5]~output_o\ : std_logic;
SIGNAL \out_out_rom[6]~output_o\ : std_logic;
SIGNAL \out_out_rom[7]~output_o\ : std_logic;
SIGNAL \out_opcode[0]~output_o\ : std_logic;
SIGNAL \out_opcode[1]~output_o\ : std_logic;
SIGNAL \out_opcode[2]~output_o\ : std_logic;
SIGNAL \out_opcode[3]~output_o\ : std_logic;
SIGNAL \out_rs[0]~output_o\ : std_logic;
SIGNAL \out_rs[1]~output_o\ : std_logic;
SIGNAL \out_rt[0]~output_o\ : std_logic;
SIGNAL \out_rt[1]~output_o\ : std_logic;
SIGNAL \out_endereco[0]~output_o\ : std_logic;
SIGNAL \out_endereco[1]~output_o\ : std_logic;
SIGNAL \out_endereco[2]~output_o\ : std_logic;
SIGNAL \out_endereco[3]~output_o\ : std_logic;
SIGNAL \out_out_mem_ram[0]~output_o\ : std_logic;
SIGNAL \out_out_mem_ram[1]~output_o\ : std_logic;
SIGNAL \out_out_mem_ram[2]~output_o\ : std_logic;
SIGNAL \out_out_mem_ram[3]~output_o\ : std_logic;
SIGNAL \out_out_mem_ram[4]~output_o\ : std_logic;
SIGNAL \out_out_mem_ram[5]~output_o\ : std_logic;
SIGNAL \out_out_mem_ram[6]~output_o\ : std_logic;
SIGNAL \out_out_mem_ram[7]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_A[0]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_A[1]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_A[2]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_A[3]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_A[4]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_A[5]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_A[6]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_A[7]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_B[0]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_B[1]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_B[2]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_B[3]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_B[4]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_B[5]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_B[6]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_B[7]~output_o\ : std_logic;
SIGNAL \out_out_ula_result[0]~output_o\ : std_logic;
SIGNAL \out_out_ula_result[1]~output_o\ : std_logic;
SIGNAL \out_out_ula_result[2]~output_o\ : std_logic;
SIGNAL \out_out_ula_result[3]~output_o\ : std_logic;
SIGNAL \out_out_ula_result[4]~output_o\ : std_logic;
SIGNAL \out_out_ula_result[5]~output_o\ : std_logic;
SIGNAL \out_out_ula_result[6]~output_o\ : std_logic;
SIGNAL \out_out_ula_result[7]~output_o\ : std_logic;
SIGNAL \out_out_overflow~output_o\ : std_logic;
SIGNAL \out_out_memoria_ram[0]~output_o\ : std_logic;
SIGNAL \out_out_memoria_ram[1]~output_o\ : std_logic;
SIGNAL \out_out_memoria_ram[2]~output_o\ : std_logic;
SIGNAL \out_out_memoria_ram[3]~output_o\ : std_logic;
SIGNAL \out_out_memoria_ram[4]~output_o\ : std_logic;
SIGNAL \out_out_memoria_ram[5]~output_o\ : std_logic;
SIGNAL \out_out_memoria_ram[6]~output_o\ : std_logic;
SIGNAL \out_out_memoria_ram[7]~output_o\ : std_logic;
SIGNAL \out_out_mult_2x1_ram_ula[0]~output_o\ : std_logic;
SIGNAL \out_out_mult_2x1_ram_ula[1]~output_o\ : std_logic;
SIGNAL \out_out_mult_2x1_ram_ula[2]~output_o\ : std_logic;
SIGNAL \out_out_mult_2x1_ram_ula[3]~output_o\ : std_logic;
SIGNAL \out_out_mult_2x1_ram_ula[4]~output_o\ : std_logic;
SIGNAL \out_out_mult_2x1_ram_ula[5]~output_o\ : std_logic;
SIGNAL \out_out_mult_2x1_ram_ula[6]~output_o\ : std_logic;
SIGNAL \out_out_mult_2x1_ram_ula[7]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \port_map_mem_rom|Mux5~0_combout\ : std_logic;
SIGNAL \port_map_mem_rom|Mux5~1_combout\ : std_logic;
SIGNAL \port_map_mem_rom|Mux5~2_combout\ : std_logic;
SIGNAL \port_map_somador_pc|out_port[0]~1\ : std_logic;
SIGNAL \port_map_somador_pc|out_port[1]~3\ : std_logic;
SIGNAL \port_map_somador_pc|out_port[2]~4_combout\ : std_logic;
SIGNAL \port_map_mem_rom|Mux3~0_combout\ : std_logic;
SIGNAL \port_map_mem_rom|Mux3~1_combout\ : std_logic;
SIGNAL \port_map_mem_rom|Mux3~2_combout\ : std_logic;
SIGNAL \port_map_somador_pc|out_port[5]~11\ : std_logic;
SIGNAL \port_map_somador_pc|out_port[6]~12_combout\ : std_logic;
SIGNAL \port_map_mem_rom|Mux0~2_combout\ : std_logic;
SIGNAL \port_map_mem_rom|Mux0~4_combout\ : std_logic;
SIGNAL \port_map_somador_pc|out_port[6]~13\ : std_logic;
SIGNAL \port_map_somador_pc|out_port[7]~14_combout\ : std_logic;
SIGNAL \port_map_mult_2X1_jump|out_port[7]~8_combout\ : std_logic;
SIGNAL \port_map_mem_rom|Mux0~3_combout\ : std_logic;
SIGNAL \port_map_mem_rom|Mux1~0_combout\ : std_logic;
SIGNAL \port_map_mem_rom|Mux1~1_combout\ : std_logic;
SIGNAL \port_map_mem_rom|Mux1~2_combout\ : std_logic;
SIGNAL \port_map_ula|Mux2~3_combout\ : std_logic;
SIGNAL \port_map_mem_rom|Mux0~6_combout\ : std_logic;
SIGNAL \port_map_unidade_controle|Mux5~0_combout\ : std_logic;
SIGNAL \port_map_mem_rom|Mux1~3_combout\ : std_logic;
SIGNAL \port_map_mem_rom|Mux0~5_combout\ : std_logic;
SIGNAL \port_map_unidade_controle|Mux7~0_combout\ : std_logic;
SIGNAL \port_map_mult_2X1_br_ula|out_port[7]~7_combout\ : std_logic;
SIGNAL \port_map_unidade_controle|Mux8~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~76_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~25_q\ : std_logic;
SIGNAL \port_map_mem_rom|Mux5~3_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~77_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~78_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~17_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~55_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~79_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~41_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~56_combout\ : std_logic;
SIGNAL \port_map_mult_2X1_br_ula|out_port[5]~5_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~75_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~32_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~16_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~53_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~40_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~54_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~23_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~15_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~51_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~39_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~52_combout\ : std_logic;
SIGNAL \port_map_unidade_controle|Mux4~2_combout\ : std_logic;
SIGNAL \port_map_ula|Mux7~8_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~30_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~14_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~49_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~38_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~50_combout\ : std_logic;
SIGNAL \port_map_ula|Mux8~8_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~21_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~13_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~47_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~37_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~48_combout\ : std_logic;
SIGNAL \port_map_ula|Mux9~2_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~28_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~12_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~61_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~36_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~62_combout\ : std_logic;
SIGNAL \port_map_mult_2X1_br_ula|out_port[1]~1_combout\ : std_logic;
SIGNAL \port_map_ula|Mux10~0_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_sub|A1|A1|ha1|sum~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~19_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~11_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~59_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~35_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~60_combout\ : std_logic;
SIGNAL \port_map_mult_2X1_br_ula|out_port[0]~0_combout\ : std_logic;
SIGNAL \port_map_mem_rom|Mux2~2_combout\ : std_logic;
SIGNAL \port_map_ula|Mux11~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux11~1_combout\ : std_logic;
SIGNAL \port_map_ula|Mux11~2_combout\ : std_logic;
SIGNAL \port_map_ula|Mux11~3_combout\ : std_logic;
SIGNAL \port_map_ula|Mux11~4_combout\ : std_logic;
SIGNAL \port_map_ula|Mux11~5_combout\ : std_logic;
SIGNAL \port_map_unidade_controle|Mux6~0_combout\ : std_logic;
SIGNAL \port_map_mem_ram|ram~93_combout\ : std_logic;
SIGNAL \port_map_mem_ram|ram~28_q\ : std_logic;
SIGNAL \port_map_mem_ram|ram~94_combout\ : std_logic;
SIGNAL \port_map_mem_ram|ram~20_q\ : std_logic;
SIGNAL \port_map_mem_ram|ram~95_combout\ : std_logic;
SIGNAL \port_map_mem_rom|Mux7~0_combout\ : std_logic;
SIGNAL \port_map_mem_rom|Mux7~1_combout\ : std_logic;
SIGNAL \port_map_mem_rom|Mux7~3_combout\ : std_logic;
SIGNAL \port_map_mem_ram|ram~96_combout\ : std_logic;
SIGNAL \port_map_mem_ram|ram~12_q\ : std_logic;
SIGNAL \port_map_mem_ram|ram~77_combout\ : std_logic;
SIGNAL \port_map_mem_ram|ram~97_combout\ : std_logic;
SIGNAL \port_map_mem_ram|ram~36_q\ : std_logic;
SIGNAL \port_map_mem_ram|ram~78_combout\ : std_logic;
SIGNAL \port_map_unidade_controle|Mux3~0_combout\ : std_logic;
SIGNAL \port_map_mult_2X1_ram_ula|out_port[0]~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~27_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~43_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~44_combout\ : std_logic;
SIGNAL \port_map_ula|Mux10~1_combout\ : std_logic;
SIGNAL \port_map_ula|Mux10~2_combout\ : std_logic;
SIGNAL \port_map_ula|Mux4~10_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add0~1_cout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add0~2_combout\ : std_logic;
SIGNAL \port_map_ula|Mux10~3_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add0~4_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add2~0_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add1~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux10~4_combout\ : std_logic;
SIGNAL \port_map_ula|Mux10~5_combout\ : std_logic;
SIGNAL \port_map_mem_ram|ram~21_q\ : std_logic;
SIGNAL \port_map_mem_ram|ram~29_q\ : std_logic;
SIGNAL \port_map_mem_ram|ram~13_q\ : std_logic;
SIGNAL \port_map_mem_ram|ram~79_combout\ : std_logic;
SIGNAL \port_map_mem_ram|ram~37_q\ : std_logic;
SIGNAL \port_map_mem_ram|ram~80_combout\ : std_logic;
SIGNAL \port_map_mult_2X1_ram_ula|out_port[1]~1_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~20_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~45_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~46_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_sub|A1|A1|cout~combout\ : std_logic;
SIGNAL \port_map_ula|port_map_sub|A1|A2|ha1|sum~0_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_adder|A1|cout~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux9~3_combout\ : std_logic;
SIGNAL \port_map_ula|Mux9~4_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add0~3\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add0~5_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add0~7_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add2~1\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add2~2_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add1~1\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add1~2_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add1~4_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add1~5_combout\ : std_logic;
SIGNAL \port_map_ula|Mux9~7_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add4~0_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add3~0_combout\ : std_logic;
SIGNAL \port_map_mult_2X1_br_ula|out_port[2]~2_combout\ : std_logic;
SIGNAL \port_map_ula|Mux9~5_combout\ : std_logic;
SIGNAL \port_map_ula|Mux9~6_combout\ : std_logic;
SIGNAL \port_map_mem_ram|ram~30_q\ : std_logic;
SIGNAL \port_map_mem_ram|ram~22_q\ : std_logic;
SIGNAL \port_map_mem_ram|ram~14_q\ : std_logic;
SIGNAL \port_map_mem_ram|ram~81_combout\ : std_logic;
SIGNAL \port_map_mem_ram|ram~38_q\ : std_logic;
SIGNAL \port_map_mem_ram|ram~82_combout\ : std_logic;
SIGNAL \port_map_mult_2X1_ram_ula|out_port[2]~2_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~29_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~63_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~64_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_sub|A1|A2|cout~combout\ : std_logic;
SIGNAL \port_map_ula|port_map_sub|A1|A3|ha1|sum~0_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_adder|A2|cout~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux8~9_combout\ : std_logic;
SIGNAL \port_map_ula|Mux8~10_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add0~6\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add0~8_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add0~10_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add2~3\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add2~4_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add1~3\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add1~6_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add1~8_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add1~9_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add4~1\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add4~2_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add3~1\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add3~2_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add3~4_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add3~5_combout\ : std_logic;
SIGNAL \port_map_ula|Mux8~13_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add6~0_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add5~0_combout\ : std_logic;
SIGNAL \port_map_mult_2X1_br_ula|out_port[3]~3_combout\ : std_logic;
SIGNAL \port_map_ula|Mux8~11_combout\ : std_logic;
SIGNAL \port_map_ula|Mux8~12_combout\ : std_logic;
SIGNAL \port_map_mem_ram|ram~23_q\ : std_logic;
SIGNAL \port_map_mem_ram|ram~31_q\ : std_logic;
SIGNAL \port_map_mem_ram|ram~15_q\ : std_logic;
SIGNAL \port_map_mem_ram|ram~83_combout\ : std_logic;
SIGNAL \port_map_mem_ram|ram~39_q\ : std_logic;
SIGNAL \port_map_mem_ram|ram~84_combout\ : std_logic;
SIGNAL \port_map_mult_2X1_ram_ula|out_port[3]~3_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~22_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~65_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~66_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_sub|A1|A3|cout~combout\ : std_logic;
SIGNAL \port_map_ula|port_map_sub|A1|A4|ha1|sum~0_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_adder|A3|cout~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux7~9_combout\ : std_logic;
SIGNAL \port_map_ula|Mux7~10_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add0~9\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add0~11_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add0~13_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add2~5\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add2~6_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add1~7\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add1~10_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add1~12_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add1~13_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add4~3\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add4~4_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add3~3\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add3~6_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add3~8_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add3~9_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add6~1\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add6~2_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add5~1\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add5~2_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add5~4_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add5~5_combout\ : std_logic;
SIGNAL \port_map_ula|Mux7~13_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add8~0_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add7~0_combout\ : std_logic;
SIGNAL \port_map_mult_2X1_br_ula|out_port[4]~4_combout\ : std_logic;
SIGNAL \port_map_ula|Mux7~11_combout\ : std_logic;
SIGNAL \port_map_ula|Mux7~12_combout\ : std_logic;
SIGNAL \port_map_mem_ram|ram~32_q\ : std_logic;
SIGNAL \port_map_mem_ram|ram~24_q\ : std_logic;
SIGNAL \port_map_mem_ram|ram~16_q\ : std_logic;
SIGNAL \port_map_mem_ram|ram~85_combout\ : std_logic;
SIGNAL \port_map_mem_ram|ram~40_q\ : std_logic;
SIGNAL \port_map_mem_ram|ram~86_combout\ : std_logic;
SIGNAL \port_map_mult_2X1_ram_ula|out_port[4]~4_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~31_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~67_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~68_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_sub|A1|A4|cout~combout\ : std_logic;
SIGNAL \port_map_ula|Mux6~8_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_adder|A4|cout~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux6~9_combout\ : std_logic;
SIGNAL \port_map_ula|Mux6~10_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add0~12\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add0~14_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add0~16_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add2~7\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add2~8_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add1~11\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add1~14_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add1~16_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add1~17_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add4~5\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add4~6_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add3~7\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add3~10_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add3~12_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add3~13_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add5~3\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add5~6_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add6~3\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add6~4_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add5~8_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add5~9_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add8~1\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add8~2_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add7~1\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add7~2_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add7~4_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add7~5_combout\ : std_logic;
SIGNAL \port_map_ula|Mux6~13_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add10~0_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add9~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux6~11_combout\ : std_logic;
SIGNAL \port_map_ula|Mux6~12_combout\ : std_logic;
SIGNAL \port_map_mem_ram|ram~25_q\ : std_logic;
SIGNAL \port_map_mem_ram|ram~33_q\ : std_logic;
SIGNAL \port_map_mem_ram|ram~17_q\ : std_logic;
SIGNAL \port_map_mem_ram|ram~87_combout\ : std_logic;
SIGNAL \port_map_mem_ram|ram~41_q\ : std_logic;
SIGNAL \port_map_mem_ram|ram~88_combout\ : std_logic;
SIGNAL \port_map_mult_2X1_ram_ula|out_port[5]~5_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~24_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~69_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~70_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_sub|A1|A5|cout~combout\ : std_logic;
SIGNAL \port_map_ula|Mux5~8_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_adder|A5|cout~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux5~9_combout\ : std_logic;
SIGNAL \port_map_ula|Mux5~10_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add0~15\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add0~17_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add0~19_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add2~9\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add2~10_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add1~15\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add1~18_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add1~20_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add1~21_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add4~7\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add4~8_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add3~11\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add3~14_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add3~16_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add3~17_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add5~7\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add5~10_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add6~5\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add6~6_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add5~12_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add5~13_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add8~3\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add8~4_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add7~3\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add7~6_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add7~8_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add7~9_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add10~1\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add10~2_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add9~1\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add9~2_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add9~4_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add9~5_combout\ : std_logic;
SIGNAL \port_map_ula|Mux5~13_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add12~0_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add11~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux5~11_combout\ : std_logic;
SIGNAL \port_map_ula|Mux5~12_combout\ : std_logic;
SIGNAL \port_map_mem_ram|ram~34_q\ : std_logic;
SIGNAL \port_map_mem_ram|ram~26_q\ : std_logic;
SIGNAL \port_map_mem_ram|ram~18_q\ : std_logic;
SIGNAL \port_map_mem_ram|ram~89_combout\ : std_logic;
SIGNAL \port_map_mem_ram|ram~42_q\ : std_logic;
SIGNAL \port_map_mem_ram|ram~90_combout\ : std_logic;
SIGNAL \port_map_mult_2X1_ram_ula|out_port[6]~6_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~33_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~71_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~72_combout\ : std_logic;
SIGNAL \port_map_mult_2X1_br_ula|out_port[6]~6_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~34_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~18_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~57_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~42_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~58_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_adder|A6|cout~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux4~16_combout\ : std_logic;
SIGNAL \port_map_ula|Mux4~11_combout\ : std_logic;
SIGNAL \port_map_ula|Mux4~12_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add0~18\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add0~20_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add0~22_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add1~19\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add1~22_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add1~24_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add2~11\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add2~12_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add1~25_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add4~9\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add4~10_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add3~15\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add3~18_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add3~20_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add3~21_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add6~7\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add6~8_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add5~11\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add5~14_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add5~16_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add5~17_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add8~5\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add8~6_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add7~7\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add7~10_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add7~12_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add7~13_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add10~3\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add10~4_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add9~3\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add9~6_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add9~8_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add9~9_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add12~1\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add12~2_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add11~1\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add11~2_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add11~4_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add11~5_combout\ : std_logic;
SIGNAL \port_map_ula|Mux4~17_combout\ : std_logic;
SIGNAL \port_map_ula|Mux4~13_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add13~0_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|process_0~0_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add14~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux4~14_combout\ : std_logic;
SIGNAL \port_map_ula|Mux4~15_combout\ : std_logic;
SIGNAL \port_map_mem_ram|ram~27_q\ : std_logic;
SIGNAL \port_map_mem_ram|ram~35_q\ : std_logic;
SIGNAL \port_map_mem_ram|ram~19_q\ : std_logic;
SIGNAL \port_map_mem_ram|ram~91_combout\ : std_logic;
SIGNAL \port_map_mem_ram|ram~43_q\ : std_logic;
SIGNAL \port_map_mem_ram|ram~92_combout\ : std_logic;
SIGNAL \port_map_mult_2X1_ram_ula|out_port[7]~7_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~26_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~73_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registrador~74_combout\ : std_logic;
SIGNAL \port_map_ula|Equal0~5_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_adder|A0|ha1|sum~combout\ : std_logic;
SIGNAL \port_map_ula|Equal0~2_combout\ : std_logic;
SIGNAL \port_map_ula|Equal0~3_combout\ : std_logic;
SIGNAL \port_map_ula|Equal0~4_combout\ : std_logic;
SIGNAL \port_map_ula|Mux2~2_combout\ : std_logic;
SIGNAL \port_map_ula|in_temp_zero~combout\ : std_logic;
SIGNAL \port_map_ula|Mux1~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux0~0_combout\ : std_logic;
SIGNAL \port_map_ula|zero~combout\ : std_logic;
SIGNAL \port_map_pc|out_port[4]~0_combout\ : std_logic;
SIGNAL \port_map_mult_2X1_jump|out_port[6]~7_combout\ : std_logic;
SIGNAL \port_map_mem_rom|Mux2~0_combout\ : std_logic;
SIGNAL \port_map_mem_rom|Mux2~1_combout\ : std_logic;
SIGNAL \port_map_mem_rom|Mux2~3_combout\ : std_logic;
SIGNAL \port_map_unidade_controle|Mux0~0_combout\ : std_logic;
SIGNAL \port_map_mult_2X1_jump|out_port[3]~0_combout\ : std_logic;
SIGNAL \port_map_mult_2X1_jump|out_port[2]~3_combout\ : std_logic;
SIGNAL \port_map_mem_rom|Mux6~0_combout\ : std_logic;
SIGNAL \port_map_mem_rom|Mux6~1_combout\ : std_logic;
SIGNAL \port_map_somador_pc|out_port[1]~2_combout\ : std_logic;
SIGNAL \port_map_mult_2X1_jump|out_port[1]~2_combout\ : std_logic;
SIGNAL \port_map_mem_rom|Mux4~0_combout\ : std_logic;
SIGNAL \port_map_mem_rom|Mux4~1_combout\ : std_logic;
SIGNAL \port_map_somador_pc|out_port[2]~5\ : std_logic;
SIGNAL \port_map_somador_pc|out_port[3]~6_combout\ : std_logic;
SIGNAL \port_map_mult_2X1_jump|out_port[3]~4_combout\ : std_logic;
SIGNAL \port_map_somador_pc|out_port[3]~7\ : std_logic;
SIGNAL \port_map_somador_pc|out_port[4]~8_combout\ : std_logic;
SIGNAL \port_map_mult_2X1_jump|out_port[4]~5_combout\ : std_logic;
SIGNAL \port_map_somador_pc|out_port[4]~9\ : std_logic;
SIGNAL \port_map_somador_pc|out_port[5]~10_combout\ : std_logic;
SIGNAL \port_map_mult_2X1_jump|out_port[5]~6_combout\ : std_logic;
SIGNAL \port_map_mem_ram|ram~76_combout\ : std_logic;
SIGNAL \port_map_mem_rom|Mux7~2_combout\ : std_logic;
SIGNAL \port_map_somador_pc|out_port[0]~0_combout\ : std_logic;
SIGNAL \port_map_mult_2X1_jump|out_port[0]~1_combout\ : std_logic;
SIGNAL \port_map_ula|Mux12~0_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add1~23\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add1~26_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add1~28_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add2~13\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add2~14_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add1~29_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add4~11\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add4~12_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add3~19\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add3~22_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add3~24_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add3~25_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add6~9\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add6~10_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add5~15\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add5~18_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add5~20_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add5~21_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add7~11\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add7~14_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add8~7\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add8~8_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add7~16_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add7~17_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add10~5\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add10~6_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add9~7\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add9~10_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add9~12_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add9~13_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add12~3\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add12~4_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add11~3\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add11~6_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add11~8_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add11~9_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add4~13\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add4~14_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add3~23\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add3~26_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add3~28_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add3~29_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add6~11\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add6~12_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add5~19\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add5~22_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add5~24_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add5~25_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add8~9\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add8~10_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add7~15\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add7~18_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add7~20_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add7~21_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add10~7\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add10~8_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add9~11\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add9~14_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add9~16_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add9~17_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add12~5\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add12~6_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add11~7\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add11~10_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add11~12_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add11~13_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add6~13\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add6~14_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add5~23\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add5~26_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add5~28_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add5~29_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add8~11\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add8~12_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add7~19\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add7~22_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add7~24_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add7~25_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add9~15\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add9~18_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add10~9\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add10~10_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add9~20_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add9~21_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add12~7\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add12~8_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add11~11\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add11~14_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add11~16_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add11~17_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add8~13\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add8~14_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add7~23\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add7~26_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add7~28_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add7~29_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add10~11\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add10~12_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add9~19\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add9~22_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add9~24_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add9~25_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add12~9\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add12~10_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add11~15\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add11~18_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add11~20_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add11~21_combout\ : std_logic;
SIGNAL \port_map_ula|Mux12~1_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add10~13\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add10~14_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add9~23\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add9~26_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add9~28_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add9~29_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add12~11\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add12~12_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add11~19\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add11~22_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add11~24_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add11~25_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add12~13\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add12~14_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add11~23\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add11~26_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add11~28_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add11~29_combout\ : std_logic;
SIGNAL \port_map_ula|Mux12~2_combout\ : std_logic;
SIGNAL \port_map_ula|Mux12~3_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add13~1\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add13~2_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add13~3\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add13~4_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add13~5\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add13~6_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add13~7\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add13~8_combout\ : std_logic;
SIGNAL \port_map_ula|Mux12~4_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add13~9\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add13~10_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add13~11\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add13~12_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add13~13\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add13~14_combout\ : std_logic;
SIGNAL \port_map_ula|Mux12~5_combout\ : std_logic;
SIGNAL \port_map_ula|Mux12~6_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_adder|A7|cout~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux12~7_combout\ : std_logic;
SIGNAL \port_map_ula|Mux12~8_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add14~1\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add14~3\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add14~5\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add14~7\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add14~9\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add14~11\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add14~13\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add14~14_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add14~10_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add14~2_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add14~4_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add14~6_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add14~8_combout\ : std_logic;
SIGNAL \port_map_ula|Mux12~9_combout\ : std_logic;
SIGNAL \port_map_ula|port_map_multi|Add14~12_combout\ : std_logic;
SIGNAL \port_map_ula|Mux12~10_combout\ : std_logic;
SIGNAL \port_map_ula|Mux12~11_combout\ : std_logic;
SIGNAL \port_map_ula|Mux12~12_combout\ : std_logic;
SIGNAL \port_map_ula|Mux13~0_combout\ : std_logic;
SIGNAL \port_map_ula|overflow~combout\ : std_logic;
SIGNAL \port_map_pc|out_port\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \port_map_mem_ram|out_port\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clock <= clock;
out_out_pc <= ww_out_out_pc;
out_out_rom <= ww_out_out_rom;
out_opcode <= ww_out_opcode;
out_rs <= ww_out_rs;
out_rt <= ww_out_rt;
out_endereco <= ww_out_endereco;
out_out_mem_ram <= ww_out_out_mem_ram;
out_out_br_reg_A <= ww_out_out_br_reg_A;
out_out_br_reg_B <= ww_out_out_br_reg_B;
out_out_ula_result <= ww_out_out_ula_result;
out_out_overflow <= ww_out_out_overflow;
out_out_memoria_ram <= ww_out_out_memoria_ram;
out_out_mult_2x1_ram_ula <= ww_out_out_mult_2x1_ram_ula;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\out_out_pc[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|out_port\(0),
	devoe => ww_devoe,
	o => \out_out_pc[0]~output_o\);

\out_out_pc[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|out_port\(1),
	devoe => ww_devoe,
	o => \out_out_pc[1]~output_o\);

\out_out_pc[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|out_port\(2),
	devoe => ww_devoe,
	o => \out_out_pc[2]~output_o\);

\out_out_pc[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|out_port\(3),
	devoe => ww_devoe,
	o => \out_out_pc[3]~output_o\);

\out_out_pc[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|out_port\(4),
	devoe => ww_devoe,
	o => \out_out_pc[4]~output_o\);

\out_out_pc[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|out_port\(5),
	devoe => ww_devoe,
	o => \out_out_pc[5]~output_o\);

\out_out_pc[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|out_port\(6),
	devoe => ww_devoe,
	o => \out_out_pc[6]~output_o\);

\out_out_pc[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|out_port\(7),
	devoe => ww_devoe,
	o => \out_out_pc[7]~output_o\);

\out_out_rom[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mem_rom|Mux7~2_combout\,
	devoe => ww_devoe,
	o => \out_out_rom[0]~output_o\);

\out_out_rom[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mem_rom|Mux6~1_combout\,
	devoe => ww_devoe,
	o => \out_out_rom[1]~output_o\);

\out_out_rom[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mem_rom|Mux5~2_combout\,
	devoe => ww_devoe,
	o => \out_out_rom[2]~output_o\);

\out_out_rom[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mem_rom|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \out_out_rom[3]~output_o\);

\out_out_rom[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mem_rom|Mux3~2_combout\,
	devoe => ww_devoe,
	o => \out_out_rom[4]~output_o\);

\out_out_rom[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mem_rom|Mux2~3_combout\,
	devoe => ww_devoe,
	o => \out_out_rom[5]~output_o\);

\out_out_rom[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mem_rom|Mux1~3_combout\,
	devoe => ww_devoe,
	o => \out_out_rom[6]~output_o\);

\out_out_rom[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mem_rom|Mux0~5_combout\,
	devoe => ww_devoe,
	o => \out_out_rom[7]~output_o\);

\out_opcode[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mem_rom|Mux3~2_combout\,
	devoe => ww_devoe,
	o => \out_opcode[0]~output_o\);

\out_opcode[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mem_rom|Mux2~3_combout\,
	devoe => ww_devoe,
	o => \out_opcode[1]~output_o\);

\out_opcode[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mem_rom|Mux1~3_combout\,
	devoe => ww_devoe,
	o => \out_opcode[2]~output_o\);

\out_opcode[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mem_rom|Mux0~5_combout\,
	devoe => ww_devoe,
	o => \out_opcode[3]~output_o\);

\out_rs[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mem_rom|Mux5~2_combout\,
	devoe => ww_devoe,
	o => \out_rs[0]~output_o\);

\out_rs[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mem_rom|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \out_rs[1]~output_o\);

\out_rt[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mem_rom|Mux7~2_combout\,
	devoe => ww_devoe,
	o => \out_rt[0]~output_o\);

\out_rt[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mem_rom|Mux6~1_combout\,
	devoe => ww_devoe,
	o => \out_rt[1]~output_o\);

\out_endereco[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mem_rom|Mux7~2_combout\,
	devoe => ww_devoe,
	o => \out_endereco[0]~output_o\);

\out_endereco[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mem_rom|Mux6~1_combout\,
	devoe => ww_devoe,
	o => \out_endereco[1]~output_o\);

\out_endereco[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mem_rom|Mux5~2_combout\,
	devoe => ww_devoe,
	o => \out_endereco[2]~output_o\);

\out_endereco[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mem_rom|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \out_endereco[3]~output_o\);

\out_out_mem_ram[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mem_ram|out_port\(0),
	devoe => ww_devoe,
	o => \out_out_mem_ram[0]~output_o\);

\out_out_mem_ram[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mem_ram|out_port\(1),
	devoe => ww_devoe,
	o => \out_out_mem_ram[1]~output_o\);

\out_out_mem_ram[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mem_ram|out_port\(2),
	devoe => ww_devoe,
	o => \out_out_mem_ram[2]~output_o\);

\out_out_mem_ram[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mem_ram|out_port\(3),
	devoe => ww_devoe,
	o => \out_out_mem_ram[3]~output_o\);

\out_out_mem_ram[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mem_ram|out_port\(4),
	devoe => ww_devoe,
	o => \out_out_mem_ram[4]~output_o\);

\out_out_mem_ram[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mem_ram|out_port\(5),
	devoe => ww_devoe,
	o => \out_out_mem_ram[5]~output_o\);

\out_out_mem_ram[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mem_ram|out_port\(6),
	devoe => ww_devoe,
	o => \out_out_mem_ram[6]~output_o\);

\out_out_mem_ram[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mem_ram|out_port\(7),
	devoe => ww_devoe,
	o => \out_out_mem_ram[7]~output_o\);

\out_out_br_reg_A[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registrador~44_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_A[0]~output_o\);

\out_out_br_reg_A[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registrador~46_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_A[1]~output_o\);

\out_out_br_reg_A[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registrador~48_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_A[2]~output_o\);

\out_out_br_reg_A[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registrador~50_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_A[3]~output_o\);

\out_out_br_reg_A[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registrador~52_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_A[4]~output_o\);

\out_out_br_reg_A[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registrador~54_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_A[5]~output_o\);

\out_out_br_reg_A[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registrador~56_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_A[6]~output_o\);

\out_out_br_reg_A[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registrador~58_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_A[7]~output_o\);

\out_out_br_reg_B[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registrador~60_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_B[0]~output_o\);

\out_out_br_reg_B[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registrador~62_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_B[1]~output_o\);

\out_out_br_reg_B[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registrador~64_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_B[2]~output_o\);

\out_out_br_reg_B[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registrador~66_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_B[3]~output_o\);

\out_out_br_reg_B[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registrador~68_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_B[4]~output_o\);

\out_out_br_reg_B[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registrador~70_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_B[5]~output_o\);

\out_out_br_reg_B[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registrador~72_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_B[6]~output_o\);

\out_out_br_reg_B[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registrador~74_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_B[7]~output_o\);

\out_out_ula_result[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux11~5_combout\,
	devoe => ww_devoe,
	o => \out_out_ula_result[0]~output_o\);

\out_out_ula_result[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux10~5_combout\,
	devoe => ww_devoe,
	o => \out_out_ula_result[1]~output_o\);

\out_out_ula_result[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux9~6_combout\,
	devoe => ww_devoe,
	o => \out_out_ula_result[2]~output_o\);

\out_out_ula_result[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux8~12_combout\,
	devoe => ww_devoe,
	o => \out_out_ula_result[3]~output_o\);

\out_out_ula_result[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux7~12_combout\,
	devoe => ww_devoe,
	o => \out_out_ula_result[4]~output_o\);

\out_out_ula_result[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux6~12_combout\,
	devoe => ww_devoe,
	o => \out_out_ula_result[5]~output_o\);

\out_out_ula_result[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux5~12_combout\,
	devoe => ww_devoe,
	o => \out_out_ula_result[6]~output_o\);

\out_out_ula_result[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux4~15_combout\,
	devoe => ww_devoe,
	o => \out_out_ula_result[7]~output_o\);

\out_out_overflow~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|overflow~combout\,
	devoe => ww_devoe,
	o => \out_out_overflow~output_o\);

\out_out_memoria_ram[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_out_memoria_ram[0]~output_o\);

\out_out_memoria_ram[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_out_memoria_ram[1]~output_o\);

\out_out_memoria_ram[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_out_memoria_ram[2]~output_o\);

\out_out_memoria_ram[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_out_memoria_ram[3]~output_o\);

\out_out_memoria_ram[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_out_memoria_ram[4]~output_o\);

\out_out_memoria_ram[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_out_memoria_ram[5]~output_o\);

\out_out_memoria_ram[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_out_memoria_ram[6]~output_o\);

\out_out_memoria_ram[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_out_memoria_ram[7]~output_o\);

\out_out_mult_2x1_ram_ula[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mult_2X1_ram_ula|out_port[0]~0_combout\,
	devoe => ww_devoe,
	o => \out_out_mult_2x1_ram_ula[0]~output_o\);

\out_out_mult_2x1_ram_ula[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mult_2X1_ram_ula|out_port[1]~1_combout\,
	devoe => ww_devoe,
	o => \out_out_mult_2x1_ram_ula[1]~output_o\);

\out_out_mult_2x1_ram_ula[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mult_2X1_ram_ula|out_port[2]~2_combout\,
	devoe => ww_devoe,
	o => \out_out_mult_2x1_ram_ula[2]~output_o\);

\out_out_mult_2x1_ram_ula[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mult_2X1_ram_ula|out_port[3]~3_combout\,
	devoe => ww_devoe,
	o => \out_out_mult_2x1_ram_ula[3]~output_o\);

\out_out_mult_2x1_ram_ula[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mult_2X1_ram_ula|out_port[4]~4_combout\,
	devoe => ww_devoe,
	o => \out_out_mult_2x1_ram_ula[4]~output_o\);

\out_out_mult_2x1_ram_ula[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mult_2X1_ram_ula|out_port[5]~5_combout\,
	devoe => ww_devoe,
	o => \out_out_mult_2x1_ram_ula[5]~output_o\);

\out_out_mult_2x1_ram_ula[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mult_2X1_ram_ula|out_port[6]~6_combout\,
	devoe => ww_devoe,
	o => \out_out_mult_2x1_ram_ula[6]~output_o\);

\out_out_mult_2x1_ram_ula[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_mult_2X1_ram_ula|out_port[7]~7_combout\,
	devoe => ww_devoe,
	o => \out_out_mult_2x1_ram_ula[7]~output_o\);

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

\port_map_mem_rom|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_rom|Mux5~0_combout\ = (\port_map_pc|out_port\(2) & (\port_map_pc|out_port\(4) & (!\port_map_pc|out_port\(0) & !\port_map_pc|out_port\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|out_port\(2),
	datab => \port_map_pc|out_port\(4),
	datac => \port_map_pc|out_port\(0),
	datad => \port_map_pc|out_port\(3),
	combout => \port_map_mem_rom|Mux5~0_combout\);

\port_map_mem_rom|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_rom|Mux5~1_combout\ = (\port_map_pc|out_port\(1) & ((\port_map_pc|out_port\(3) & (!\port_map_pc|out_port\(0))) # (!\port_map_pc|out_port\(3) & ((\port_map_pc|out_port\(2)))))) # (!\port_map_pc|out_port\(1) & (\port_map_pc|out_port\(3) $ 
-- (((\port_map_pc|out_port\(0) & \port_map_pc|out_port\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|out_port\(0),
	datab => \port_map_pc|out_port\(1),
	datac => \port_map_pc|out_port\(2),
	datad => \port_map_pc|out_port\(3),
	combout => \port_map_mem_rom|Mux5~1_combout\);

\port_map_mem_rom|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_rom|Mux5~2_combout\ = (\port_map_mem_ram|ram~76_combout\ & ((\port_map_mem_rom|Mux5~0_combout\) # ((!\port_map_pc|out_port\(4) & !\port_map_mem_rom|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_ram|ram~76_combout\,
	datab => \port_map_mem_rom|Mux5~0_combout\,
	datac => \port_map_pc|out_port\(4),
	datad => \port_map_mem_rom|Mux5~1_combout\,
	combout => \port_map_mem_rom|Mux5~2_combout\);

\port_map_somador_pc|out_port[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_somador_pc|out_port[0]~0_combout\ = \port_map_pc|out_port\(0) $ (VCC)
-- \port_map_somador_pc|out_port[0]~1\ = CARRY(\port_map_pc|out_port\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|out_port\(0),
	datad => VCC,
	combout => \port_map_somador_pc|out_port[0]~0_combout\,
	cout => \port_map_somador_pc|out_port[0]~1\);

\port_map_somador_pc|out_port[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_somador_pc|out_port[1]~2_combout\ = (\port_map_pc|out_port\(1) & (!\port_map_somador_pc|out_port[0]~1\)) # (!\port_map_pc|out_port\(1) & ((\port_map_somador_pc|out_port[0]~1\) # (GND)))
-- \port_map_somador_pc|out_port[1]~3\ = CARRY((!\port_map_somador_pc|out_port[0]~1\) # (!\port_map_pc|out_port\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|out_port\(1),
	datad => VCC,
	cin => \port_map_somador_pc|out_port[0]~1\,
	combout => \port_map_somador_pc|out_port[1]~2_combout\,
	cout => \port_map_somador_pc|out_port[1]~3\);

\port_map_somador_pc|out_port[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_somador_pc|out_port[2]~4_combout\ = (\port_map_pc|out_port\(2) & (\port_map_somador_pc|out_port[1]~3\ $ (GND))) # (!\port_map_pc|out_port\(2) & (!\port_map_somador_pc|out_port[1]~3\ & VCC))
-- \port_map_somador_pc|out_port[2]~5\ = CARRY((\port_map_pc|out_port\(2) & !\port_map_somador_pc|out_port[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|out_port\(2),
	datad => VCC,
	cin => \port_map_somador_pc|out_port[1]~3\,
	combout => \port_map_somador_pc|out_port[2]~4_combout\,
	cout => \port_map_somador_pc|out_port[2]~5\);

\port_map_mem_rom|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_rom|Mux3~0_combout\ = (\port_map_pc|out_port\(0) & (\port_map_pc|out_port\(4) & (\port_map_pc|out_port\(1) $ (!\port_map_pc|out_port\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|out_port\(0),
	datab => \port_map_pc|out_port\(1),
	datac => \port_map_pc|out_port\(2),
	datad => \port_map_pc|out_port\(4),
	combout => \port_map_mem_rom|Mux3~0_combout\);

\port_map_mem_rom|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_rom|Mux3~1_combout\ = (\port_map_pc|out_port\(3) & ((\port_map_pc|out_port\(4)) # (\port_map_pc|out_port\(1) $ (\port_map_pc|out_port\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|out_port\(3),
	datab => \port_map_pc|out_port\(4),
	datac => \port_map_pc|out_port\(1),
	datad => \port_map_pc|out_port\(2),
	combout => \port_map_mem_rom|Mux3~1_combout\);

\port_map_mem_rom|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_rom|Mux3~2_combout\ = (\port_map_mem_ram|ram~76_combout\ & (!\port_map_mem_rom|Mux3~1_combout\ & ((\port_map_pc|out_port\(3)) # (!\port_map_mem_rom|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_ram|ram~76_combout\,
	datab => \port_map_pc|out_port\(3),
	datac => \port_map_mem_rom|Mux3~0_combout\,
	datad => \port_map_mem_rom|Mux3~1_combout\,
	combout => \port_map_mem_rom|Mux3~2_combout\);

\port_map_somador_pc|out_port[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_somador_pc|out_port[5]~10_combout\ = (\port_map_pc|out_port\(5) & (!\port_map_somador_pc|out_port[4]~9\)) # (!\port_map_pc|out_port\(5) & ((\port_map_somador_pc|out_port[4]~9\) # (GND)))
-- \port_map_somador_pc|out_port[5]~11\ = CARRY((!\port_map_somador_pc|out_port[4]~9\) # (!\port_map_pc|out_port\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|out_port\(5),
	datad => VCC,
	cin => \port_map_somador_pc|out_port[4]~9\,
	combout => \port_map_somador_pc|out_port[5]~10_combout\,
	cout => \port_map_somador_pc|out_port[5]~11\);

\port_map_somador_pc|out_port[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_somador_pc|out_port[6]~12_combout\ = (\port_map_pc|out_port\(6) & (\port_map_somador_pc|out_port[5]~11\ $ (GND))) # (!\port_map_pc|out_port\(6) & (!\port_map_somador_pc|out_port[5]~11\ & VCC))
-- \port_map_somador_pc|out_port[6]~13\ = CARRY((\port_map_pc|out_port\(6) & !\port_map_somador_pc|out_port[5]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|out_port\(6),
	datad => VCC,
	cin => \port_map_somador_pc|out_port[5]~11\,
	combout => \port_map_somador_pc|out_port[6]~12_combout\,
	cout => \port_map_somador_pc|out_port[6]~13\);

\port_map_mem_rom|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_rom|Mux0~2_combout\ = (!\port_map_pc|out_port\(3) & (!\port_map_pc|out_port\(5) & !\port_map_pc|out_port\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \port_map_pc|out_port\(3),
	datac => \port_map_pc|out_port\(5),
	datad => \port_map_pc|out_port\(6),
	combout => \port_map_mem_rom|Mux0~2_combout\);

\port_map_mem_rom|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_rom|Mux0~4_combout\ = (!\port_map_pc|out_port\(2) & ((\port_map_pc|out_port\(0) & (!\port_map_pc|out_port\(1))) # (!\port_map_pc|out_port\(0) & (\port_map_pc|out_port\(1) & \port_map_pc|out_port\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|out_port\(0),
	datab => \port_map_pc|out_port\(1),
	datac => \port_map_pc|out_port\(2),
	datad => \port_map_pc|out_port\(4),
	combout => \port_map_mem_rom|Mux0~4_combout\);

\port_map_somador_pc|out_port[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_somador_pc|out_port[7]~14_combout\ = \port_map_pc|out_port\(7) $ (\port_map_somador_pc|out_port[6]~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|out_port\(7),
	cin => \port_map_somador_pc|out_port[6]~13\,
	combout => \port_map_somador_pc|out_port[7]~14_combout\);

\port_map_mult_2X1_jump|out_port[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mult_2X1_jump|out_port[7]~8_combout\ = (\port_map_somador_pc|out_port[7]~14_combout\ & !\port_map_pc|out_port[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_somador_pc|out_port[7]~14_combout\,
	datad => \port_map_pc|out_port[4]~0_combout\,
	combout => \port_map_mult_2X1_jump|out_port[7]~8_combout\);

\port_map_pc|out_port[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_jump|out_port[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|out_port\(7));

\port_map_mem_rom|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_rom|Mux0~3_combout\ = (!\port_map_pc|out_port\(5) & !\port_map_pc|out_port\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \port_map_pc|out_port\(5),
	datad => \port_map_pc|out_port\(6),
	combout => \port_map_mem_rom|Mux0~3_combout\);

\port_map_mem_rom|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_rom|Mux1~0_combout\ = (!\port_map_pc|out_port\(3) & (\port_map_pc|out_port\(2) $ (((\port_map_pc|out_port\(0) & \port_map_pc|out_port\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|out_port\(0),
	datab => \port_map_pc|out_port\(1),
	datac => \port_map_pc|out_port\(2),
	datad => \port_map_pc|out_port\(3),
	combout => \port_map_mem_rom|Mux1~0_combout\);

\port_map_mem_rom|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_rom|Mux1~1_combout\ = (\port_map_pc|out_port\(0) & (\port_map_pc|out_port\(2) $ (((\port_map_pc|out_port\(1)) # (!\port_map_pc|out_port\(3)))))) # (!\port_map_pc|out_port\(0) & (!\port_map_pc|out_port\(3) & (\port_map_pc|out_port\(1) $ 
-- (\port_map_pc|out_port\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|out_port\(0),
	datab => \port_map_pc|out_port\(1),
	datac => \port_map_pc|out_port\(2),
	datad => \port_map_pc|out_port\(3),
	combout => \port_map_mem_rom|Mux1~1_combout\);

\port_map_mem_rom|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_rom|Mux1~2_combout\ = (\port_map_mem_rom|Mux0~3_combout\ & ((\port_map_pc|out_port\(4) & (\port_map_mem_rom|Mux1~0_combout\)) # (!\port_map_pc|out_port\(4) & ((!\port_map_mem_rom|Mux1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux0~3_combout\,
	datab => \port_map_mem_rom|Mux1~0_combout\,
	datac => \port_map_pc|out_port\(4),
	datad => \port_map_mem_rom|Mux1~1_combout\,
	combout => \port_map_mem_rom|Mux1~2_combout\);

\port_map_ula|Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux2~3_combout\ = (\port_map_mem_rom|Mux0~2_combout\ & (\port_map_mem_rom|Mux0~4_combout\ & (!\port_map_pc|out_port\(7) & !\port_map_mem_rom|Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux0~2_combout\,
	datab => \port_map_mem_rom|Mux0~4_combout\,
	datac => \port_map_pc|out_port\(7),
	datad => \port_map_mem_rom|Mux1~2_combout\,
	combout => \port_map_ula|Mux2~3_combout\);

\port_map_mem_rom|Mux0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_rom|Mux0~6_combout\ = (!\port_map_pc|out_port\(3) & (!\port_map_pc|out_port\(5) & (!\port_map_pc|out_port\(6) & \port_map_mem_rom|Mux0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|out_port\(3),
	datab => \port_map_pc|out_port\(5),
	datac => \port_map_pc|out_port\(6),
	datad => \port_map_mem_rom|Mux0~4_combout\,
	combout => \port_map_mem_rom|Mux0~6_combout\);

\port_map_unidade_controle|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_unidade_controle|Mux5~0_combout\ = (\port_map_mem_rom|Mux3~2_combout\) # ((\port_map_mem_rom|Mux1~2_combout\ & (\port_map_mem_rom|Mux0~6_combout\ & !\port_map_pc|out_port\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux3~2_combout\,
	datab => \port_map_mem_rom|Mux1~2_combout\,
	datac => \port_map_mem_rom|Mux0~6_combout\,
	datad => \port_map_pc|out_port\(7),
	combout => \port_map_unidade_controle|Mux5~0_combout\);

\port_map_mem_rom|Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_rom|Mux1~3_combout\ = (\port_map_mem_rom|Mux1~2_combout\ & !\port_map_pc|out_port\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux1~2_combout\,
	datad => \port_map_pc|out_port\(7),
	combout => \port_map_mem_rom|Mux1~3_combout\);

\port_map_mem_rom|Mux0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_rom|Mux0~5_combout\ = (\port_map_mem_rom|Mux0~2_combout\ & (\port_map_mem_rom|Mux0~4_combout\ & !\port_map_pc|out_port\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux0~2_combout\,
	datab => \port_map_mem_rom|Mux0~4_combout\,
	datad => \port_map_pc|out_port\(7),
	combout => \port_map_mem_rom|Mux0~5_combout\);

\port_map_unidade_controle|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_unidade_controle|Mux7~0_combout\ = (\port_map_mem_rom|Mux3~2_combout\ & (!\port_map_mem_rom|Mux0~5_combout\ & ((\port_map_mem_rom|Mux2~3_combout\) # (!\port_map_mem_rom|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux3~2_combout\,
	datab => \port_map_mem_rom|Mux2~3_combout\,
	datac => \port_map_mem_rom|Mux1~3_combout\,
	datad => \port_map_mem_rom|Mux0~5_combout\,
	combout => \port_map_unidade_controle|Mux7~0_combout\);

\port_map_mult_2X1_br_ula|out_port[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mult_2X1_br_ula|out_port[7]~7_combout\ = (\port_map_banco_de_registradores|registrador~74_combout\ & !\port_map_unidade_controle|Mux7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~74_combout\,
	datad => \port_map_unidade_controle|Mux7~0_combout\,
	combout => \port_map_mult_2X1_br_ula|out_port[7]~7_combout\);

\port_map_unidade_controle|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_unidade_controle|Mux8~0_combout\ = (\port_map_mem_rom|Mux3~2_combout\ & ((\port_map_mem_rom|Mux2~3_combout\ & (\port_map_mem_rom|Mux1~3_combout\ & \port_map_mem_rom|Mux0~5_combout\)) # (!\port_map_mem_rom|Mux2~3_combout\ & 
-- ((\port_map_mem_rom|Mux1~3_combout\) # (\port_map_mem_rom|Mux0~5_combout\))))) # (!\port_map_mem_rom|Mux3~2_combout\ & (((\port_map_mem_rom|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux3~2_combout\,
	datab => \port_map_mem_rom|Mux2~3_combout\,
	datac => \port_map_mem_rom|Mux1~3_combout\,
	datad => \port_map_mem_rom|Mux0~5_combout\,
	combout => \port_map_unidade_controle|Mux8~0_combout\);

\port_map_banco_de_registradores|registrador~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registrador~76_combout\ = (!\port_map_mem_rom|Mux4~1_combout\ & (!\port_map_unidade_controle|Mux8~0_combout\ & \port_map_mem_rom|Mux5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux4~1_combout\,
	datab => \port_map_unidade_controle|Mux8~0_combout\,
	datad => \port_map_mem_rom|Mux5~2_combout\,
	combout => \port_map_banco_de_registradores|registrador~76_combout\);

\port_map_banco_de_registradores|registrador~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_ram_ula|out_port[6]~6_combout\,
	ena => \port_map_banco_de_registradores|registrador~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registrador~25_q\);

\port_map_mem_rom|Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_rom|Mux5~3_combout\ = (\port_map_mem_rom|Mux5~0_combout\) # ((!\port_map_pc|out_port\(4) & !\port_map_mem_rom|Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux5~0_combout\,
	datac => \port_map_pc|out_port\(4),
	datad => \port_map_mem_rom|Mux5~1_combout\,
	combout => \port_map_mem_rom|Mux5~3_combout\);

\port_map_banco_de_registradores|registrador~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registrador~77_combout\ = (!\port_map_pc|out_port\(3) & !\port_map_mem_rom|Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \port_map_pc|out_port\(3),
	datad => \port_map_mem_rom|Mux4~0_combout\,
	combout => \port_map_banco_de_registradores|registrador~77_combout\);

\port_map_banco_de_registradores|registrador~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registrador~78_combout\ = (!\port_map_unidade_controle|Mux8~0_combout\ & (((!\port_map_mem_rom|Mux5~3_combout\ & !\port_map_banco_de_registradores|registrador~77_combout\)) # (!\port_map_mem_ram|ram~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|Mux8~0_combout\,
	datab => \port_map_mem_ram|ram~76_combout\,
	datac => \port_map_mem_rom|Mux5~3_combout\,
	datad => \port_map_banco_de_registradores|registrador~77_combout\,
	combout => \port_map_banco_de_registradores|registrador~78_combout\);

\port_map_banco_de_registradores|registrador~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_ram_ula|out_port[6]~6_combout\,
	ena => \port_map_banco_de_registradores|registrador~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registrador~17_q\);

\port_map_banco_de_registradores|registrador~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registrador~55_combout\ = (\port_map_mem_rom|Mux4~1_combout\ & (((\port_map_mem_rom|Mux5~2_combout\)))) # (!\port_map_mem_rom|Mux4~1_combout\ & ((\port_map_mem_rom|Mux5~2_combout\ & 
-- (\port_map_banco_de_registradores|registrador~25_q\)) # (!\port_map_mem_rom|Mux5~2_combout\ & ((\port_map_banco_de_registradores|registrador~17_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux4~1_combout\,
	datab => \port_map_banco_de_registradores|registrador~25_q\,
	datac => \port_map_mem_rom|Mux5~2_combout\,
	datad => \port_map_banco_de_registradores|registrador~17_q\,
	combout => \port_map_banco_de_registradores|registrador~55_combout\);

\port_map_banco_de_registradores|registrador~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registrador~79_combout\ = (!\port_map_unidade_controle|Mux8~0_combout\ & (\port_map_mem_rom|Mux5~3_combout\ & \port_map_mem_rom|Mux4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|Mux8~0_combout\,
	datac => \port_map_mem_rom|Mux5~3_combout\,
	datad => \port_map_mem_rom|Mux4~1_combout\,
	combout => \port_map_banco_de_registradores|registrador~79_combout\);

\port_map_banco_de_registradores|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_ram_ula|out_port[6]~6_combout\,
	ena => \port_map_banco_de_registradores|registrador~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registrador~41_q\);

\port_map_banco_de_registradores|registrador~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registrador~56_combout\ = (\port_map_mem_rom|Mux4~1_combout\ & ((\port_map_banco_de_registradores|registrador~55_combout\ & ((\port_map_banco_de_registradores|registrador~41_q\))) # 
-- (!\port_map_banco_de_registradores|registrador~55_combout\ & (\port_map_banco_de_registradores|registrador~33_q\)))) # (!\port_map_mem_rom|Mux4~1_combout\ & (((\port_map_banco_de_registradores|registrador~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~33_q\,
	datab => \port_map_mem_rom|Mux4~1_combout\,
	datac => \port_map_banco_de_registradores|registrador~55_combout\,
	datad => \port_map_banco_de_registradores|registrador~41_q\,
	combout => \port_map_banco_de_registradores|registrador~56_combout\);

\port_map_mult_2X1_br_ula|out_port[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mult_2X1_br_ula|out_port[5]~5_combout\ = (\port_map_banco_de_registradores|registrador~70_combout\ & !\port_map_unidade_controle|Mux7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~70_combout\,
	datad => \port_map_unidade_controle|Mux7~0_combout\,
	combout => \port_map_mult_2X1_br_ula|out_port[5]~5_combout\);

\port_map_banco_de_registradores|registrador~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registrador~75_combout\ = (!\port_map_mem_rom|Mux5~2_combout\ & (!\port_map_unidade_controle|Mux8~0_combout\ & \port_map_mem_rom|Mux4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux5~2_combout\,
	datab => \port_map_unidade_controle|Mux8~0_combout\,
	datad => \port_map_mem_rom|Mux4~1_combout\,
	combout => \port_map_banco_de_registradores|registrador~75_combout\);

\port_map_banco_de_registradores|registrador~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_ram_ula|out_port[5]~5_combout\,
	ena => \port_map_banco_de_registradores|registrador~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registrador~32_q\);

\port_map_banco_de_registradores|registrador~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_ram_ula|out_port[5]~5_combout\,
	ena => \port_map_banco_de_registradores|registrador~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registrador~16_q\);

\port_map_banco_de_registradores|registrador~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registrador~53_combout\ = (\port_map_mem_rom|Mux5~2_combout\ & (((\port_map_mem_rom|Mux4~1_combout\)))) # (!\port_map_mem_rom|Mux5~2_combout\ & ((\port_map_mem_rom|Mux4~1_combout\ & 
-- (\port_map_banco_de_registradores|registrador~32_q\)) # (!\port_map_mem_rom|Mux4~1_combout\ & ((\port_map_banco_de_registradores|registrador~16_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux5~2_combout\,
	datab => \port_map_banco_de_registradores|registrador~32_q\,
	datac => \port_map_mem_rom|Mux4~1_combout\,
	datad => \port_map_banco_de_registradores|registrador~16_q\,
	combout => \port_map_banco_de_registradores|registrador~53_combout\);

\port_map_banco_de_registradores|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_ram_ula|out_port[5]~5_combout\,
	ena => \port_map_banco_de_registradores|registrador~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registrador~40_q\);

\port_map_banco_de_registradores|registrador~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registrador~54_combout\ = (\port_map_mem_rom|Mux5~2_combout\ & ((\port_map_banco_de_registradores|registrador~53_combout\ & ((\port_map_banco_de_registradores|registrador~40_q\))) # 
-- (!\port_map_banco_de_registradores|registrador~53_combout\ & (\port_map_banco_de_registradores|registrador~24_q\)))) # (!\port_map_mem_rom|Mux5~2_combout\ & (((\port_map_banco_de_registradores|registrador~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~24_q\,
	datab => \port_map_mem_rom|Mux5~2_combout\,
	datac => \port_map_banco_de_registradores|registrador~53_combout\,
	datad => \port_map_banco_de_registradores|registrador~40_q\,
	combout => \port_map_banco_de_registradores|registrador~54_combout\);

\port_map_banco_de_registradores|registrador~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_ram_ula|out_port[4]~4_combout\,
	ena => \port_map_banco_de_registradores|registrador~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registrador~23_q\);

\port_map_banco_de_registradores|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_ram_ula|out_port[4]~4_combout\,
	ena => \port_map_banco_de_registradores|registrador~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registrador~15_q\);

\port_map_banco_de_registradores|registrador~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registrador~51_combout\ = (\port_map_mem_rom|Mux4~1_combout\ & (((\port_map_mem_rom|Mux5~2_combout\)))) # (!\port_map_mem_rom|Mux4~1_combout\ & ((\port_map_mem_rom|Mux5~2_combout\ & 
-- (\port_map_banco_de_registradores|registrador~23_q\)) # (!\port_map_mem_rom|Mux5~2_combout\ & ((\port_map_banco_de_registradores|registrador~15_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux4~1_combout\,
	datab => \port_map_banco_de_registradores|registrador~23_q\,
	datac => \port_map_mem_rom|Mux5~2_combout\,
	datad => \port_map_banco_de_registradores|registrador~15_q\,
	combout => \port_map_banco_de_registradores|registrador~51_combout\);

\port_map_banco_de_registradores|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_ram_ula|out_port[4]~4_combout\,
	ena => \port_map_banco_de_registradores|registrador~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registrador~39_q\);

\port_map_banco_de_registradores|registrador~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registrador~52_combout\ = (\port_map_mem_rom|Mux4~1_combout\ & ((\port_map_banco_de_registradores|registrador~51_combout\ & ((\port_map_banco_de_registradores|registrador~39_q\))) # 
-- (!\port_map_banco_de_registradores|registrador~51_combout\ & (\port_map_banco_de_registradores|registrador~31_q\)))) # (!\port_map_mem_rom|Mux4~1_combout\ & (((\port_map_banco_de_registradores|registrador~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~31_q\,
	datab => \port_map_mem_rom|Mux4~1_combout\,
	datac => \port_map_banco_de_registradores|registrador~51_combout\,
	datad => \port_map_banco_de_registradores|registrador~39_q\,
	combout => \port_map_banco_de_registradores|registrador~52_combout\);

\port_map_unidade_controle|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_unidade_controle|Mux4~2_combout\ = (\port_map_mem_rom|Mux2~3_combout\) # ((\port_map_mem_rom|Mux1~2_combout\ & (!\port_map_pc|out_port\(7) & \port_map_mem_rom|Mux0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux1~2_combout\,
	datab => \port_map_pc|out_port\(7),
	datac => \port_map_mem_rom|Mux2~3_combout\,
	datad => \port_map_mem_rom|Mux0~6_combout\,
	combout => \port_map_unidade_controle|Mux4~2_combout\);

\port_map_ula|Mux7~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux7~8_combout\ = (\port_map_unidade_controle|Mux4~2_combout\ & (((\port_map_banco_de_registradores|registrador~68_combout\ & !\port_map_unidade_controle|Mux7~0_combout\)))) # (!\port_map_unidade_controle|Mux4~2_combout\ & 
-- (\port_map_banco_de_registradores|registrador~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~52_combout\,
	datab => \port_map_banco_de_registradores|registrador~68_combout\,
	datac => \port_map_unidade_controle|Mux4~2_combout\,
	datad => \port_map_unidade_controle|Mux7~0_combout\,
	combout => \port_map_ula|Mux7~8_combout\);

\port_map_banco_de_registradores|registrador~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_ram_ula|out_port[3]~3_combout\,
	ena => \port_map_banco_de_registradores|registrador~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registrador~30_q\);

\port_map_banco_de_registradores|registrador~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_ram_ula|out_port[3]~3_combout\,
	ena => \port_map_banco_de_registradores|registrador~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registrador~14_q\);

\port_map_banco_de_registradores|registrador~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registrador~49_combout\ = (\port_map_mem_rom|Mux5~2_combout\ & (((\port_map_mem_rom|Mux4~1_combout\)))) # (!\port_map_mem_rom|Mux5~2_combout\ & ((\port_map_mem_rom|Mux4~1_combout\ & 
-- (\port_map_banco_de_registradores|registrador~30_q\)) # (!\port_map_mem_rom|Mux4~1_combout\ & ((\port_map_banco_de_registradores|registrador~14_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux5~2_combout\,
	datab => \port_map_banco_de_registradores|registrador~30_q\,
	datac => \port_map_mem_rom|Mux4~1_combout\,
	datad => \port_map_banco_de_registradores|registrador~14_q\,
	combout => \port_map_banco_de_registradores|registrador~49_combout\);

\port_map_banco_de_registradores|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_ram_ula|out_port[3]~3_combout\,
	ena => \port_map_banco_de_registradores|registrador~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registrador~38_q\);

\port_map_banco_de_registradores|registrador~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registrador~50_combout\ = (\port_map_mem_rom|Mux5~2_combout\ & ((\port_map_banco_de_registradores|registrador~49_combout\ & ((\port_map_banco_de_registradores|registrador~38_q\))) # 
-- (!\port_map_banco_de_registradores|registrador~49_combout\ & (\port_map_banco_de_registradores|registrador~22_q\)))) # (!\port_map_mem_rom|Mux5~2_combout\ & (((\port_map_banco_de_registradores|registrador~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~22_q\,
	datab => \port_map_mem_rom|Mux5~2_combout\,
	datac => \port_map_banco_de_registradores|registrador~49_combout\,
	datad => \port_map_banco_de_registradores|registrador~38_q\,
	combout => \port_map_banco_de_registradores|registrador~50_combout\);

\port_map_ula|Mux8~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux8~8_combout\ = (\port_map_unidade_controle|Mux4~2_combout\ & (((\port_map_banco_de_registradores|registrador~66_combout\ & !\port_map_unidade_controle|Mux7~0_combout\)))) # (!\port_map_unidade_controle|Mux4~2_combout\ & 
-- (\port_map_banco_de_registradores|registrador~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~50_combout\,
	datab => \port_map_banco_de_registradores|registrador~66_combout\,
	datac => \port_map_unidade_controle|Mux4~2_combout\,
	datad => \port_map_unidade_controle|Mux7~0_combout\,
	combout => \port_map_ula|Mux8~8_combout\);

\port_map_banco_de_registradores|registrador~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_ram_ula|out_port[2]~2_combout\,
	ena => \port_map_banco_de_registradores|registrador~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registrador~21_q\);

\port_map_banco_de_registradores|registrador~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_ram_ula|out_port[2]~2_combout\,
	ena => \port_map_banco_de_registradores|registrador~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registrador~13_q\);

\port_map_banco_de_registradores|registrador~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registrador~47_combout\ = (\port_map_mem_rom|Mux4~1_combout\ & (((\port_map_mem_rom|Mux5~2_combout\)))) # (!\port_map_mem_rom|Mux4~1_combout\ & ((\port_map_mem_rom|Mux5~2_combout\ & 
-- (\port_map_banco_de_registradores|registrador~21_q\)) # (!\port_map_mem_rom|Mux5~2_combout\ & ((\port_map_banco_de_registradores|registrador~13_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux4~1_combout\,
	datab => \port_map_banco_de_registradores|registrador~21_q\,
	datac => \port_map_mem_rom|Mux5~2_combout\,
	datad => \port_map_banco_de_registradores|registrador~13_q\,
	combout => \port_map_banco_de_registradores|registrador~47_combout\);

\port_map_banco_de_registradores|registrador~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_ram_ula|out_port[2]~2_combout\,
	ena => \port_map_banco_de_registradores|registrador~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registrador~37_q\);

\port_map_banco_de_registradores|registrador~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registrador~48_combout\ = (\port_map_mem_rom|Mux4~1_combout\ & ((\port_map_banco_de_registradores|registrador~47_combout\ & ((\port_map_banco_de_registradores|registrador~37_q\))) # 
-- (!\port_map_banco_de_registradores|registrador~47_combout\ & (\port_map_banco_de_registradores|registrador~29_q\)))) # (!\port_map_mem_rom|Mux4~1_combout\ & (((\port_map_banco_de_registradores|registrador~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~29_q\,
	datab => \port_map_mem_rom|Mux4~1_combout\,
	datac => \port_map_banco_de_registradores|registrador~47_combout\,
	datad => \port_map_banco_de_registradores|registrador~37_q\,
	combout => \port_map_banco_de_registradores|registrador~48_combout\);

\port_map_ula|Mux9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux9~2_combout\ = (\port_map_unidade_controle|Mux4~2_combout\ & (((\port_map_banco_de_registradores|registrador~64_combout\ & !\port_map_unidade_controle|Mux7~0_combout\)))) # (!\port_map_unidade_controle|Mux4~2_combout\ & 
-- (\port_map_banco_de_registradores|registrador~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~48_combout\,
	datab => \port_map_banco_de_registradores|registrador~64_combout\,
	datac => \port_map_unidade_controle|Mux4~2_combout\,
	datad => \port_map_unidade_controle|Mux7~0_combout\,
	combout => \port_map_ula|Mux9~2_combout\);

\port_map_banco_de_registradores|registrador~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_ram_ula|out_port[1]~1_combout\,
	ena => \port_map_banco_de_registradores|registrador~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registrador~28_q\);

\port_map_banco_de_registradores|registrador~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_ram_ula|out_port[1]~1_combout\,
	ena => \port_map_banco_de_registradores|registrador~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registrador~12_q\);

\port_map_banco_de_registradores|registrador~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registrador~61_combout\ = (\port_map_mem_rom|Mux7~2_combout\ & (((\port_map_mem_rom|Mux6~1_combout\)))) # (!\port_map_mem_rom|Mux7~2_combout\ & ((\port_map_mem_rom|Mux6~1_combout\ & 
-- (\port_map_banco_de_registradores|registrador~28_q\)) # (!\port_map_mem_rom|Mux6~1_combout\ & ((\port_map_banco_de_registradores|registrador~12_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux7~2_combout\,
	datab => \port_map_banco_de_registradores|registrador~28_q\,
	datac => \port_map_mem_rom|Mux6~1_combout\,
	datad => \port_map_banco_de_registradores|registrador~12_q\,
	combout => \port_map_banco_de_registradores|registrador~61_combout\);

\port_map_banco_de_registradores|registrador~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_ram_ula|out_port[1]~1_combout\,
	ena => \port_map_banco_de_registradores|registrador~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registrador~36_q\);

\port_map_banco_de_registradores|registrador~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registrador~62_combout\ = (\port_map_mem_rom|Mux7~2_combout\ & ((\port_map_banco_de_registradores|registrador~61_combout\ & ((\port_map_banco_de_registradores|registrador~36_q\))) # 
-- (!\port_map_banco_de_registradores|registrador~61_combout\ & (\port_map_banco_de_registradores|registrador~20_q\)))) # (!\port_map_mem_rom|Mux7~2_combout\ & (((\port_map_banco_de_registradores|registrador~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~20_q\,
	datab => \port_map_mem_rom|Mux7~2_combout\,
	datac => \port_map_banco_de_registradores|registrador~61_combout\,
	datad => \port_map_banco_de_registradores|registrador~36_q\,
	combout => \port_map_banco_de_registradores|registrador~62_combout\);

\port_map_mult_2X1_br_ula|out_port[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mult_2X1_br_ula|out_port[1]~1_combout\ = (\port_map_unidade_controle|Mux7~0_combout\ & (\port_map_mem_rom|Mux6~1_combout\)) # (!\port_map_unidade_controle|Mux7~0_combout\ & ((\port_map_banco_de_registradores|registrador~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux6~1_combout\,
	datab => \port_map_banco_de_registradores|registrador~62_combout\,
	datad => \port_map_unidade_controle|Mux7~0_combout\,
	combout => \port_map_mult_2X1_br_ula|out_port[1]~1_combout\);

\port_map_ula|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux10~0_combout\ = (\port_map_mem_rom|Mux1~3_combout\ & ((\port_map_unidade_controle|Mux4~2_combout\ & (\port_map_mult_2X1_br_ula|out_port[1]~1_combout\)) # (!\port_map_unidade_controle|Mux4~2_combout\ & 
-- ((\port_map_banco_de_registradores|registrador~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux1~3_combout\,
	datab => \port_map_mult_2X1_br_ula|out_port[1]~1_combout\,
	datac => \port_map_banco_de_registradores|registrador~46_combout\,
	datad => \port_map_unidade_controle|Mux4~2_combout\,
	combout => \port_map_ula|Mux10~0_combout\);

\port_map_ula|port_map_sub|A1|A1|ha1|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_sub|A1|A1|ha1|sum~0_combout\ = \port_map_banco_de_registradores|registrador~46_combout\ $ (((\port_map_unidade_controle|Mux7~0_combout\ & ((\port_map_mem_rom|Mux6~1_combout\))) # (!\port_map_unidade_controle|Mux7~0_combout\ & 
-- (\port_map_banco_de_registradores|registrador~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|Mux7~0_combout\,
	datab => \port_map_banco_de_registradores|registrador~62_combout\,
	datac => \port_map_mem_rom|Mux6~1_combout\,
	datad => \port_map_banco_de_registradores|registrador~46_combout\,
	combout => \port_map_ula|port_map_sub|A1|A1|ha1|sum~0_combout\);

\port_map_banco_de_registradores|registrador~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_ram_ula|out_port[0]~0_combout\,
	ena => \port_map_banco_de_registradores|registrador~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registrador~19_q\);

\port_map_banco_de_registradores|registrador~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_ram_ula|out_port[0]~0_combout\,
	ena => \port_map_banco_de_registradores|registrador~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registrador~11_q\);

\port_map_banco_de_registradores|registrador~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registrador~59_combout\ = (\port_map_mem_rom|Mux6~1_combout\ & (((\port_map_mem_rom|Mux7~2_combout\)))) # (!\port_map_mem_rom|Mux6~1_combout\ & ((\port_map_mem_rom|Mux7~2_combout\ & 
-- (\port_map_banco_de_registradores|registrador~19_q\)) # (!\port_map_mem_rom|Mux7~2_combout\ & ((\port_map_banco_de_registradores|registrador~11_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux6~1_combout\,
	datab => \port_map_banco_de_registradores|registrador~19_q\,
	datac => \port_map_mem_rom|Mux7~2_combout\,
	datad => \port_map_banco_de_registradores|registrador~11_q\,
	combout => \port_map_banco_de_registradores|registrador~59_combout\);

\port_map_banco_de_registradores|registrador~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_ram_ula|out_port[0]~0_combout\,
	ena => \port_map_banco_de_registradores|registrador~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registrador~35_q\);

\port_map_banco_de_registradores|registrador~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registrador~60_combout\ = (\port_map_mem_rom|Mux6~1_combout\ & ((\port_map_banco_de_registradores|registrador~59_combout\ & ((\port_map_banco_de_registradores|registrador~35_q\))) # 
-- (!\port_map_banco_de_registradores|registrador~59_combout\ & (\port_map_banco_de_registradores|registrador~27_q\)))) # (!\port_map_mem_rom|Mux6~1_combout\ & (((\port_map_banco_de_registradores|registrador~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~27_q\,
	datab => \port_map_mem_rom|Mux6~1_combout\,
	datac => \port_map_banco_de_registradores|registrador~59_combout\,
	datad => \port_map_banco_de_registradores|registrador~35_q\,
	combout => \port_map_banco_de_registradores|registrador~60_combout\);

\port_map_mult_2X1_br_ula|out_port[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mult_2X1_br_ula|out_port[0]~0_combout\ = (\port_map_unidade_controle|Mux7~0_combout\ & (\port_map_mem_rom|Mux7~2_combout\)) # (!\port_map_unidade_controle|Mux7~0_combout\ & ((\port_map_banco_de_registradores|registrador~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux7~2_combout\,
	datab => \port_map_banco_de_registradores|registrador~60_combout\,
	datad => \port_map_unidade_controle|Mux7~0_combout\,
	combout => \port_map_mult_2X1_br_ula|out_port[0]~0_combout\);

\port_map_mem_rom|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_rom|Mux2~2_combout\ = (\port_map_pc|out_port\(0) & (\port_map_pc|out_port\(1) & ((\port_map_pc|out_port\(2)) # (!\port_map_pc|out_port\(4))))) # (!\port_map_pc|out_port\(0) & (\port_map_pc|out_port\(2) $ (((\port_map_pc|out_port\(1)) # 
-- (\port_map_pc|out_port\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|out_port\(0),
	datab => \port_map_pc|out_port\(1),
	datac => \port_map_pc|out_port\(2),
	datad => \port_map_pc|out_port\(4),
	combout => \port_map_mem_rom|Mux2~2_combout\);

\port_map_ula|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux11~0_combout\ = ((!\port_map_mem_rom|Mux2~1_combout\ & ((\port_map_mem_rom|Mux2~2_combout\) # (!\port_map_mem_rom|Mux0~2_combout\)))) # (!\port_map_mem_rom|Mux0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux2~2_combout\,
	datab => \port_map_mem_rom|Mux0~2_combout\,
	datac => \port_map_mem_rom|Mux2~1_combout\,
	datad => \port_map_mem_rom|Mux0~3_combout\,
	combout => \port_map_ula|Mux11~0_combout\);

\port_map_ula|Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux11~1_combout\ = (\port_map_mem_rom|Mux3~1_combout\) # ((\port_map_ula|Mux11~0_combout\) # ((\port_map_mem_rom|Mux3~0_combout\ & !\port_map_pc|out_port\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux3~1_combout\,
	datab => \port_map_ula|Mux11~0_combout\,
	datac => \port_map_mem_rom|Mux3~0_combout\,
	datad => \port_map_pc|out_port\(3),
	combout => \port_map_ula|Mux11~1_combout\);

\port_map_ula|Mux11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux11~2_combout\ = (\port_map_pc|out_port\(7)) # ((\port_map_ula|Mux11~1_combout\ & ((!\port_map_mem_rom|Mux0~6_combout\) # (!\port_map_mem_rom|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|out_port\(7),
	datab => \port_map_ula|Mux11~1_combout\,
	datac => \port_map_mem_rom|Mux1~2_combout\,
	datad => \port_map_mem_rom|Mux0~6_combout\,
	combout => \port_map_ula|Mux11~2_combout\);

\port_map_ula|Mux11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux11~3_combout\ = (\port_map_mem_rom|Mux0~5_combout\ & (\port_map_banco_de_registradores|registrador~44_combout\ & (\port_map_mult_2X1_br_ula|out_port[0]~0_combout\ & !\port_map_ula|Mux11~2_combout\))) # (!\port_map_mem_rom|Mux0~5_combout\ 
-- & (\port_map_banco_de_registradores|registrador~44_combout\ $ ((\port_map_mult_2X1_br_ula|out_port[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~44_combout\,
	datab => \port_map_mult_2X1_br_ula|out_port[0]~0_combout\,
	datac => \port_map_mem_rom|Mux0~5_combout\,
	datad => \port_map_ula|Mux11~2_combout\,
	combout => \port_map_ula|Mux11~3_combout\);

\port_map_ula|Mux11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux11~4_combout\ = (\port_map_unidade_controle|Mux4~2_combout\ & (\port_map_mult_2X1_br_ula|out_port[0]~0_combout\)) # (!\port_map_unidade_controle|Mux4~2_combout\ & ((\port_map_banco_de_registradores|registrador~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult_2X1_br_ula|out_port[0]~0_combout\,
	datab => \port_map_banco_de_registradores|registrador~44_combout\,
	datad => \port_map_unidade_controle|Mux4~2_combout\,
	combout => \port_map_ula|Mux11~4_combout\);

\port_map_ula|Mux11~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux11~5_combout\ = (\port_map_mem_rom|Mux1~3_combout\ & (((\port_map_ula|Mux11~4_combout\ & !\port_map_mem_rom|Mux0~5_combout\)))) # (!\port_map_mem_rom|Mux1~3_combout\ & (\port_map_ula|Mux11~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|Mux11~3_combout\,
	datab => \port_map_ula|Mux11~4_combout\,
	datac => \port_map_mem_rom|Mux1~3_combout\,
	datad => \port_map_mem_rom|Mux0~5_combout\,
	combout => \port_map_ula|Mux11~5_combout\);

\port_map_unidade_controle|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_unidade_controle|Mux6~0_combout\ = (\port_map_mem_rom|Mux3~2_combout\ & (\port_map_mem_rom|Mux1~3_combout\ & (!\port_map_mem_rom|Mux2~3_combout\ & !\port_map_mem_rom|Mux0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux3~2_combout\,
	datab => \port_map_mem_rom|Mux1~3_combout\,
	datac => \port_map_mem_rom|Mux2~3_combout\,
	datad => \port_map_mem_rom|Mux0~5_combout\,
	combout => \port_map_unidade_controle|Mux6~0_combout\);

\port_map_mem_ram|ram~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_ram|ram~93_combout\ = (\port_map_mem_rom|Mux6~1_combout\ & (\port_map_unidade_controle|Mux6~0_combout\ & !\port_map_mem_rom|Mux7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux6~1_combout\,
	datab => \port_map_unidade_controle|Mux6~0_combout\,
	datad => \port_map_mem_rom|Mux7~2_combout\,
	combout => \port_map_mem_ram|ram~93_combout\);

\port_map_mem_ram|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux11~5_combout\,
	ena => \port_map_mem_ram|ram~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|ram~28_q\);

\port_map_mem_ram|ram~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_ram|ram~94_combout\ = (\port_map_mem_rom|Mux7~2_combout\ & (\port_map_unidade_controle|Mux6~0_combout\ & !\port_map_mem_rom|Mux6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux7~2_combout\,
	datab => \port_map_unidade_controle|Mux6~0_combout\,
	datad => \port_map_mem_rom|Mux6~1_combout\,
	combout => \port_map_mem_ram|ram~94_combout\);

\port_map_mem_ram|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux11~5_combout\,
	ena => \port_map_mem_ram|ram~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|ram~20_q\);

\port_map_mem_ram|ram~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_ram|ram~95_combout\ = (\port_map_pc|out_port\(3)) # (\port_map_mem_rom|Mux6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|out_port\(3),
	datab => \port_map_mem_rom|Mux6~0_combout\,
	combout => \port_map_mem_ram|ram~95_combout\);

\port_map_mem_rom|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_rom|Mux7~0_combout\ = (\port_map_pc|out_port\(4) & (!\port_map_pc|out_port\(1) & (!\port_map_pc|out_port\(2) & !\port_map_pc|out_port\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|out_port\(4),
	datab => \port_map_pc|out_port\(1),
	datac => \port_map_pc|out_port\(2),
	datad => \port_map_pc|out_port\(3),
	combout => \port_map_mem_rom|Mux7~0_combout\);

\port_map_mem_rom|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_rom|Mux7~1_combout\ = (\port_map_pc|out_port\(2) & ((\port_map_pc|out_port\(0) $ (\port_map_pc|out_port\(1))) # (!\port_map_pc|out_port\(3)))) # (!\port_map_pc|out_port\(2) & (\port_map_pc|out_port\(1) & ((\port_map_pc|out_port\(0)) # 
-- (\port_map_pc|out_port\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|out_port\(0),
	datab => \port_map_pc|out_port\(1),
	datac => \port_map_pc|out_port\(2),
	datad => \port_map_pc|out_port\(3),
	combout => \port_map_mem_rom|Mux7~1_combout\);

\port_map_mem_rom|Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_rom|Mux7~3_combout\ = (\port_map_mem_rom|Mux7~0_combout\) # ((!\port_map_pc|out_port\(4) & !\port_map_mem_rom|Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux7~0_combout\,
	datac => \port_map_pc|out_port\(4),
	datad => \port_map_mem_rom|Mux7~1_combout\,
	combout => \port_map_mem_rom|Mux7~3_combout\);

\port_map_mem_ram|ram~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_ram|ram~96_combout\ = (\port_map_unidade_controle|Mux6~0_combout\ & (((\port_map_mem_ram|ram~95_combout\ & !\port_map_mem_rom|Mux7~3_combout\)) # (!\port_map_mem_ram|ram~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|Mux6~0_combout\,
	datab => \port_map_mem_ram|ram~95_combout\,
	datac => \port_map_mem_rom|Mux7~3_combout\,
	datad => \port_map_mem_ram|ram~76_combout\,
	combout => \port_map_mem_ram|ram~96_combout\);

\port_map_mem_ram|ram~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux11~5_combout\,
	ena => \port_map_mem_ram|ram~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|ram~12_q\);

\port_map_mem_ram|ram~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_ram|ram~77_combout\ = (\port_map_mem_rom|Mux6~1_combout\ & (((\port_map_mem_rom|Mux7~2_combout\)))) # (!\port_map_mem_rom|Mux6~1_combout\ & ((\port_map_mem_rom|Mux7~2_combout\ & (\port_map_mem_ram|ram~20_q\)) # 
-- (!\port_map_mem_rom|Mux7~2_combout\ & ((\port_map_mem_ram|ram~12_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux6~1_combout\,
	datab => \port_map_mem_ram|ram~20_q\,
	datac => \port_map_mem_rom|Mux7~2_combout\,
	datad => \port_map_mem_ram|ram~12_q\,
	combout => \port_map_mem_ram|ram~77_combout\);

\port_map_mem_ram|ram~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_ram|ram~97_combout\ = (\port_map_mem_rom|Mux7~3_combout\ & (\port_map_mem_rom|Mux6~1_combout\ & \port_map_unidade_controle|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux7~3_combout\,
	datab => \port_map_mem_rom|Mux6~1_combout\,
	datac => \port_map_unidade_controle|Mux6~0_combout\,
	combout => \port_map_mem_ram|ram~97_combout\);

\port_map_mem_ram|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux11~5_combout\,
	ena => \port_map_mem_ram|ram~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|ram~36_q\);

\port_map_mem_ram|ram~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_ram|ram~78_combout\ = (\port_map_mem_rom|Mux6~1_combout\ & ((\port_map_mem_ram|ram~77_combout\ & ((\port_map_mem_ram|ram~36_q\))) # (!\port_map_mem_ram|ram~77_combout\ & (\port_map_mem_ram|ram~28_q\)))) # (!\port_map_mem_rom|Mux6~1_combout\ 
-- & (((\port_map_mem_ram|ram~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_ram|ram~28_q\,
	datab => \port_map_mem_rom|Mux6~1_combout\,
	datac => \port_map_mem_ram|ram~77_combout\,
	datad => \port_map_mem_ram|ram~36_q\,
	combout => \port_map_mem_ram|ram~78_combout\);

\port_map_unidade_controle|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_unidade_controle|Mux3~0_combout\ = (\port_map_mem_rom|Mux1~3_combout\ & (!\port_map_mem_rom|Mux3~2_combout\ & (!\port_map_mem_rom|Mux2~3_combout\ & !\port_map_mem_rom|Mux0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux1~3_combout\,
	datab => \port_map_mem_rom|Mux3~2_combout\,
	datac => \port_map_mem_rom|Mux2~3_combout\,
	datad => \port_map_mem_rom|Mux0~5_combout\,
	combout => \port_map_unidade_controle|Mux3~0_combout\);

\port_map_mem_ram|out_port[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mem_ram|ram~78_combout\,
	ena => \port_map_unidade_controle|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|out_port\(0));

\port_map_mult_2X1_ram_ula|out_port[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mult_2X1_ram_ula|out_port[0]~0_combout\ = (\port_map_unidade_controle|Mux3~0_combout\ & (\port_map_mem_ram|out_port\(0))) # (!\port_map_unidade_controle|Mux3~0_combout\ & ((\port_map_ula|Mux11~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_ram|out_port\(0),
	datab => \port_map_ula|Mux11~5_combout\,
	datad => \port_map_unidade_controle|Mux3~0_combout\,
	combout => \port_map_mult_2X1_ram_ula|out_port[0]~0_combout\);

\port_map_banco_de_registradores|registrador~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_ram_ula|out_port[0]~0_combout\,
	ena => \port_map_banco_de_registradores|registrador~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registrador~27_q\);

\port_map_banco_de_registradores|registrador~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registrador~43_combout\ = (\port_map_mem_rom|Mux4~1_combout\ & (((\port_map_mem_rom|Mux5~2_combout\)))) # (!\port_map_mem_rom|Mux4~1_combout\ & ((\port_map_mem_rom|Mux5~2_combout\ & 
-- (\port_map_banco_de_registradores|registrador~19_q\)) # (!\port_map_mem_rom|Mux5~2_combout\ & ((\port_map_banco_de_registradores|registrador~11_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux4~1_combout\,
	datab => \port_map_banco_de_registradores|registrador~19_q\,
	datac => \port_map_mem_rom|Mux5~2_combout\,
	datad => \port_map_banco_de_registradores|registrador~11_q\,
	combout => \port_map_banco_de_registradores|registrador~43_combout\);

\port_map_banco_de_registradores|registrador~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registrador~44_combout\ = (\port_map_mem_rom|Mux4~1_combout\ & ((\port_map_banco_de_registradores|registrador~43_combout\ & ((\port_map_banco_de_registradores|registrador~35_q\))) # 
-- (!\port_map_banco_de_registradores|registrador~43_combout\ & (\port_map_banco_de_registradores|registrador~27_q\)))) # (!\port_map_mem_rom|Mux4~1_combout\ & (((\port_map_banco_de_registradores|registrador~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~27_q\,
	datab => \port_map_mem_rom|Mux4~1_combout\,
	datac => \port_map_banco_de_registradores|registrador~43_combout\,
	datad => \port_map_banco_de_registradores|registrador~35_q\,
	combout => \port_map_banco_de_registradores|registrador~44_combout\);

\port_map_ula|Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux10~1_combout\ = \port_map_ula|port_map_sub|A1|A1|ha1|sum~0_combout\ $ (((\port_map_mult_2X1_br_ula|out_port[0]~0_combout\ & (\port_map_banco_de_registradores|registrador~44_combout\ $ (\port_map_unidade_controle|Mux4~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_sub|A1|A1|ha1|sum~0_combout\,
	datab => \port_map_banco_de_registradores|registrador~44_combout\,
	datac => \port_map_unidade_controle|Mux4~2_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[0]~0_combout\,
	combout => \port_map_ula|Mux10~1_combout\);

\port_map_ula|Mux10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux10~2_combout\ = (!\port_map_mem_rom|Mux0~5_combout\ & ((\port_map_ula|Mux10~0_combout\) # ((\port_map_ula|Mux10~1_combout\ & !\port_map_mem_rom|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|Mux10~0_combout\,
	datab => \port_map_ula|Mux10~1_combout\,
	datac => \port_map_mem_rom|Mux1~3_combout\,
	datad => \port_map_mem_rom|Mux0~5_combout\,
	combout => \port_map_ula|Mux10~2_combout\);

\port_map_ula|Mux4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux4~10_combout\ = (\port_map_mem_rom|Mux0~6_combout\ & (!\port_map_pc|out_port\(7) & (!\port_map_mem_rom|Mux1~2_combout\ & !\port_map_ula|Mux11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux0~6_combout\,
	datab => \port_map_pc|out_port\(7),
	datac => \port_map_mem_rom|Mux1~2_combout\,
	datad => \port_map_ula|Mux11~1_combout\,
	combout => \port_map_ula|Mux4~10_combout\);

\port_map_ula|port_map_multi|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add0~1_cout\ = CARRY(!\port_map_banco_de_registradores|registrador~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~44_combout\,
	datad => VCC,
	cout => \port_map_ula|port_map_multi|Add0~1_cout\);

\port_map_ula|port_map_multi|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add0~2_combout\ = (\port_map_banco_de_registradores|registrador~46_combout\ & ((\port_map_ula|port_map_multi|Add0~1_cout\) # (GND))) # (!\port_map_banco_de_registradores|registrador~46_combout\ & 
-- (!\port_map_ula|port_map_multi|Add0~1_cout\))
-- \port_map_ula|port_map_multi|Add0~3\ = CARRY((\port_map_banco_de_registradores|registrador~46_combout\) # (!\port_map_ula|port_map_multi|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~46_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add0~1_cout\,
	combout => \port_map_ula|port_map_multi|Add0~2_combout\,
	cout => \port_map_ula|port_map_multi|Add0~3\);

\port_map_ula|Mux10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux10~3_combout\ = (\port_map_mult_2X1_br_ula|out_port[0]~0_combout\ & (\port_map_mult_2X1_br_ula|out_port[1]~1_combout\ & \port_map_ula|port_map_multi|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult_2X1_br_ula|out_port[0]~0_combout\,
	datab => \port_map_mult_2X1_br_ula|out_port[1]~1_combout\,
	datac => \port_map_ula|port_map_multi|Add0~2_combout\,
	combout => \port_map_ula|Mux10~3_combout\);

\port_map_ula|port_map_multi|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add0~4_combout\ = (\port_map_ula|port_map_multi|Add0~2_combout\ & ((\port_map_unidade_controle|Mux7~0_combout\ & (\port_map_mem_rom|Mux7~2_combout\)) # (!\port_map_unidade_controle|Mux7~0_combout\ & 
-- ((\port_map_banco_de_registradores|registrador~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add0~2_combout\,
	datab => \port_map_mem_rom|Mux7~2_combout\,
	datac => \port_map_banco_de_registradores|registrador~60_combout\,
	datad => \port_map_unidade_controle|Mux7~0_combout\,
	combout => \port_map_ula|port_map_multi|Add0~4_combout\);

\port_map_ula|port_map_multi|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add2~0_combout\ = (\port_map_banco_de_registradores|registrador~44_combout\ & (\port_map_ula|port_map_multi|Add0~4_combout\ $ (VCC))) # (!\port_map_banco_de_registradores|registrador~44_combout\ & 
-- ((\port_map_ula|port_map_multi|Add0~4_combout\) # (GND)))
-- \port_map_ula|port_map_multi|Add2~1\ = CARRY((\port_map_ula|port_map_multi|Add0~4_combout\) # (!\port_map_banco_de_registradores|registrador~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~44_combout\,
	datab => \port_map_ula|port_map_multi|Add0~4_combout\,
	datad => VCC,
	combout => \port_map_ula|port_map_multi|Add2~0_combout\,
	cout => \port_map_ula|port_map_multi|Add2~1\);

\port_map_ula|port_map_multi|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add1~0_combout\ = (\port_map_banco_de_registradores|registrador~44_combout\ & (\port_map_ula|port_map_multi|Add0~4_combout\ $ (VCC))) # (!\port_map_banco_de_registradores|registrador~44_combout\ & 
-- (\port_map_ula|port_map_multi|Add0~4_combout\ & VCC))
-- \port_map_ula|port_map_multi|Add1~1\ = CARRY((\port_map_banco_de_registradores|registrador~44_combout\ & \port_map_ula|port_map_multi|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~44_combout\,
	datab => \port_map_ula|port_map_multi|Add0~4_combout\,
	datad => VCC,
	combout => \port_map_ula|port_map_multi|Add1~0_combout\,
	cout => \port_map_ula|port_map_multi|Add1~1\);

\port_map_ula|Mux10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux10~4_combout\ = (\port_map_mult_2X1_br_ula|out_port[0]~0_combout\ & (((\port_map_ula|port_map_multi|Add1~0_combout\ & !\port_map_mult_2X1_br_ula|out_port[1]~1_combout\)))) # (!\port_map_mult_2X1_br_ula|out_port[0]~0_combout\ & 
-- (\port_map_ula|port_map_multi|Add2~0_combout\ & ((\port_map_mult_2X1_br_ula|out_port[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add2~0_combout\,
	datab => \port_map_ula|port_map_multi|Add1~0_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[0]~0_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[1]~1_combout\,
	combout => \port_map_ula|Mux10~4_combout\);

\port_map_ula|Mux10~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux10~5_combout\ = (\port_map_ula|Mux10~2_combout\) # ((\port_map_ula|Mux4~10_combout\ & ((\port_map_ula|Mux10~3_combout\) # (\port_map_ula|Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|Mux10~2_combout\,
	datab => \port_map_ula|Mux4~10_combout\,
	datac => \port_map_ula|Mux10~3_combout\,
	datad => \port_map_ula|Mux10~4_combout\,
	combout => \port_map_ula|Mux10~5_combout\);

\port_map_mem_ram|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux10~5_combout\,
	ena => \port_map_mem_ram|ram~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|ram~21_q\);

\port_map_mem_ram|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux10~5_combout\,
	ena => \port_map_mem_ram|ram~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|ram~29_q\);

\port_map_mem_ram|ram~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux10~5_combout\,
	ena => \port_map_mem_ram|ram~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|ram~13_q\);

\port_map_mem_ram|ram~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_ram|ram~79_combout\ = (\port_map_mem_rom|Mux7~2_combout\ & (((\port_map_mem_rom|Mux6~1_combout\)))) # (!\port_map_mem_rom|Mux7~2_combout\ & ((\port_map_mem_rom|Mux6~1_combout\ & (\port_map_mem_ram|ram~29_q\)) # 
-- (!\port_map_mem_rom|Mux6~1_combout\ & ((\port_map_mem_ram|ram~13_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux7~2_combout\,
	datab => \port_map_mem_ram|ram~29_q\,
	datac => \port_map_mem_rom|Mux6~1_combout\,
	datad => \port_map_mem_ram|ram~13_q\,
	combout => \port_map_mem_ram|ram~79_combout\);

\port_map_mem_ram|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux10~5_combout\,
	ena => \port_map_mem_ram|ram~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|ram~37_q\);

\port_map_mem_ram|ram~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_ram|ram~80_combout\ = (\port_map_mem_rom|Mux7~2_combout\ & ((\port_map_mem_ram|ram~79_combout\ & ((\port_map_mem_ram|ram~37_q\))) # (!\port_map_mem_ram|ram~79_combout\ & (\port_map_mem_ram|ram~21_q\)))) # (!\port_map_mem_rom|Mux7~2_combout\ 
-- & (((\port_map_mem_ram|ram~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_ram|ram~21_q\,
	datab => \port_map_mem_rom|Mux7~2_combout\,
	datac => \port_map_mem_ram|ram~79_combout\,
	datad => \port_map_mem_ram|ram~37_q\,
	combout => \port_map_mem_ram|ram~80_combout\);

\port_map_mem_ram|out_port[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mem_ram|ram~80_combout\,
	ena => \port_map_unidade_controle|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|out_port\(1));

\port_map_mult_2X1_ram_ula|out_port[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mult_2X1_ram_ula|out_port[1]~1_combout\ = (\port_map_unidade_controle|Mux3~0_combout\ & (\port_map_mem_ram|out_port\(1))) # (!\port_map_unidade_controle|Mux3~0_combout\ & ((\port_map_ula|Mux10~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_ram|out_port\(1),
	datab => \port_map_ula|Mux10~5_combout\,
	datad => \port_map_unidade_controle|Mux3~0_combout\,
	combout => \port_map_mult_2X1_ram_ula|out_port[1]~1_combout\);

\port_map_banco_de_registradores|registrador~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_ram_ula|out_port[1]~1_combout\,
	ena => \port_map_banco_de_registradores|registrador~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registrador~20_q\);

\port_map_banco_de_registradores|registrador~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registrador~45_combout\ = (\port_map_mem_rom|Mux5~2_combout\ & (((\port_map_mem_rom|Mux4~1_combout\)))) # (!\port_map_mem_rom|Mux5~2_combout\ & ((\port_map_mem_rom|Mux4~1_combout\ & 
-- (\port_map_banco_de_registradores|registrador~28_q\)) # (!\port_map_mem_rom|Mux4~1_combout\ & ((\port_map_banco_de_registradores|registrador~12_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux5~2_combout\,
	datab => \port_map_banco_de_registradores|registrador~28_q\,
	datac => \port_map_mem_rom|Mux4~1_combout\,
	datad => \port_map_banco_de_registradores|registrador~12_q\,
	combout => \port_map_banco_de_registradores|registrador~45_combout\);

\port_map_banco_de_registradores|registrador~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registrador~46_combout\ = (\port_map_mem_rom|Mux5~2_combout\ & ((\port_map_banco_de_registradores|registrador~45_combout\ & ((\port_map_banco_de_registradores|registrador~36_q\))) # 
-- (!\port_map_banco_de_registradores|registrador~45_combout\ & (\port_map_banco_de_registradores|registrador~20_q\)))) # (!\port_map_mem_rom|Mux5~2_combout\ & (((\port_map_banco_de_registradores|registrador~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~20_q\,
	datab => \port_map_mem_rom|Mux5~2_combout\,
	datac => \port_map_banco_de_registradores|registrador~45_combout\,
	datad => \port_map_banco_de_registradores|registrador~36_q\,
	combout => \port_map_banco_de_registradores|registrador~46_combout\);

\port_map_ula|port_map_sub|A1|A1|cout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_sub|A1|A1|cout~combout\ = (\port_map_banco_de_registradores|registrador~46_combout\ & ((\port_map_banco_de_registradores|registrador~44_combout\) # ((!\port_map_mult_2X1_br_ula|out_port[1]~1_combout\) # 
-- (!\port_map_mult_2X1_br_ula|out_port[0]~0_combout\)))) # (!\port_map_banco_de_registradores|registrador~46_combout\ & (!\port_map_mult_2X1_br_ula|out_port[1]~1_combout\ & ((\port_map_banco_de_registradores|registrador~44_combout\) # 
-- (!\port_map_mult_2X1_br_ula|out_port[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~46_combout\,
	datab => \port_map_banco_de_registradores|registrador~44_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[0]~0_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[1]~1_combout\,
	combout => \port_map_ula|port_map_sub|A1|A1|cout~combout\);

\port_map_ula|port_map_sub|A1|A2|ha1|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_sub|A1|A2|ha1|sum~0_combout\ = \port_map_banco_de_registradores|registrador~48_combout\ $ (((!\port_map_unidade_controle|Mux7~0_combout\ & \port_map_banco_de_registradores|registrador~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~48_combout\,
	datab => \port_map_unidade_controle|Mux7~0_combout\,
	datad => \port_map_banco_de_registradores|registrador~64_combout\,
	combout => \port_map_ula|port_map_sub|A1|A2|ha1|sum~0_combout\);

\port_map_ula|port_map_adder|A1|cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_adder|A1|cout~0_combout\ = (\port_map_banco_de_registradores|registrador~46_combout\ & ((\port_map_mult_2X1_br_ula|out_port[1]~1_combout\) # ((\port_map_mult_2X1_br_ula|out_port[0]~0_combout\ & 
-- \port_map_banco_de_registradores|registrador~44_combout\)))) # (!\port_map_banco_de_registradores|registrador~46_combout\ & (\port_map_mult_2X1_br_ula|out_port[0]~0_combout\ & (\port_map_banco_de_registradores|registrador~44_combout\ & 
-- \port_map_mult_2X1_br_ula|out_port[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult_2X1_br_ula|out_port[0]~0_combout\,
	datab => \port_map_banco_de_registradores|registrador~44_combout\,
	datac => \port_map_banco_de_registradores|registrador~46_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[1]~1_combout\,
	combout => \port_map_ula|port_map_adder|A1|cout~0_combout\);

\port_map_ula|Mux9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux9~3_combout\ = \port_map_ula|port_map_sub|A1|A2|ha1|sum~0_combout\ $ (((\port_map_unidade_controle|Mux4~2_combout\ & (!\port_map_ula|port_map_sub|A1|A1|cout~combout\)) # (!\port_map_unidade_controle|Mux4~2_combout\ & 
-- ((\port_map_ula|port_map_adder|A1|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_sub|A1|A1|cout~combout\,
	datab => \port_map_unidade_controle|Mux4~2_combout\,
	datac => \port_map_ula|port_map_sub|A1|A2|ha1|sum~0_combout\,
	datad => \port_map_ula|port_map_adder|A1|cout~0_combout\,
	combout => \port_map_ula|Mux9~3_combout\);

\port_map_ula|Mux9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux9~4_combout\ = (!\port_map_mem_rom|Mux0~5_combout\ & ((\port_map_mem_rom|Mux1~3_combout\ & (\port_map_ula|Mux9~2_combout\)) # (!\port_map_mem_rom|Mux1~3_combout\ & ((\port_map_ula|Mux9~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|Mux9~2_combout\,
	datab => \port_map_ula|Mux9~3_combout\,
	datac => \port_map_mem_rom|Mux1~3_combout\,
	datad => \port_map_mem_rom|Mux0~5_combout\,
	combout => \port_map_ula|Mux9~4_combout\);

\port_map_ula|port_map_multi|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add0~5_combout\ = (\port_map_banco_de_registradores|registrador~48_combout\ & (!\port_map_ula|port_map_multi|Add0~3\ & VCC)) # (!\port_map_banco_de_registradores|registrador~48_combout\ & (\port_map_ula|port_map_multi|Add0~3\ 
-- $ (GND)))
-- \port_map_ula|port_map_multi|Add0~6\ = CARRY((!\port_map_banco_de_registradores|registrador~48_combout\ & !\port_map_ula|port_map_multi|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~48_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add0~3\,
	combout => \port_map_ula|port_map_multi|Add0~5_combout\,
	cout => \port_map_ula|port_map_multi|Add0~6\);

\port_map_ula|port_map_multi|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add0~7_combout\ = (\port_map_ula|port_map_multi|Add0~5_combout\ & ((\port_map_unidade_controle|Mux7~0_combout\ & (\port_map_mem_rom|Mux7~2_combout\)) # (!\port_map_unidade_controle|Mux7~0_combout\ & 
-- ((\port_map_banco_de_registradores|registrador~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add0~5_combout\,
	datab => \port_map_mem_rom|Mux7~2_combout\,
	datac => \port_map_banco_de_registradores|registrador~60_combout\,
	datad => \port_map_unidade_controle|Mux7~0_combout\,
	combout => \port_map_ula|port_map_multi|Add0~7_combout\);

\port_map_ula|port_map_multi|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add2~2_combout\ = (\port_map_banco_de_registradores|registrador~46_combout\ & ((\port_map_ula|port_map_multi|Add0~7_combout\ & (!\port_map_ula|port_map_multi|Add2~1\)) # (!\port_map_ula|port_map_multi|Add0~7_combout\ & 
-- ((\port_map_ula|port_map_multi|Add2~1\) # (GND))))) # (!\port_map_banco_de_registradores|registrador~46_combout\ & ((\port_map_ula|port_map_multi|Add0~7_combout\ & (\port_map_ula|port_map_multi|Add2~1\ & VCC)) # 
-- (!\port_map_ula|port_map_multi|Add0~7_combout\ & (!\port_map_ula|port_map_multi|Add2~1\))))
-- \port_map_ula|port_map_multi|Add2~3\ = CARRY((\port_map_banco_de_registradores|registrador~46_combout\ & ((!\port_map_ula|port_map_multi|Add2~1\) # (!\port_map_ula|port_map_multi|Add0~7_combout\))) # 
-- (!\port_map_banco_de_registradores|registrador~46_combout\ & (!\port_map_ula|port_map_multi|Add0~7_combout\ & !\port_map_ula|port_map_multi|Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~46_combout\,
	datab => \port_map_ula|port_map_multi|Add0~7_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add2~1\,
	combout => \port_map_ula|port_map_multi|Add2~2_combout\,
	cout => \port_map_ula|port_map_multi|Add2~3\);

\port_map_ula|port_map_multi|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add1~2_combout\ = (\port_map_banco_de_registradores|registrador~46_combout\ & ((\port_map_ula|port_map_multi|Add0~7_combout\ & (\port_map_ula|port_map_multi|Add1~1\ & VCC)) # (!\port_map_ula|port_map_multi|Add0~7_combout\ & 
-- (!\port_map_ula|port_map_multi|Add1~1\)))) # (!\port_map_banco_de_registradores|registrador~46_combout\ & ((\port_map_ula|port_map_multi|Add0~7_combout\ & (!\port_map_ula|port_map_multi|Add1~1\)) # (!\port_map_ula|port_map_multi|Add0~7_combout\ & 
-- ((\port_map_ula|port_map_multi|Add1~1\) # (GND)))))
-- \port_map_ula|port_map_multi|Add1~3\ = CARRY((\port_map_banco_de_registradores|registrador~46_combout\ & (!\port_map_ula|port_map_multi|Add0~7_combout\ & !\port_map_ula|port_map_multi|Add1~1\)) # (!\port_map_banco_de_registradores|registrador~46_combout\ 
-- & ((!\port_map_ula|port_map_multi|Add1~1\) # (!\port_map_ula|port_map_multi|Add0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~46_combout\,
	datab => \port_map_ula|port_map_multi|Add0~7_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add1~1\,
	combout => \port_map_ula|port_map_multi|Add1~2_combout\,
	cout => \port_map_ula|port_map_multi|Add1~3\);

\port_map_ula|port_map_multi|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add1~4_combout\ = (\port_map_mult_2X1_br_ula|out_port[0]~0_combout\ & (((\port_map_ula|port_map_multi|Add1~2_combout\ & !\port_map_mult_2X1_br_ula|out_port[1]~1_combout\)))) # (!\port_map_mult_2X1_br_ula|out_port[0]~0_combout\ 
-- & (\port_map_ula|port_map_multi|Add2~2_combout\ & ((\port_map_mult_2X1_br_ula|out_port[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add2~2_combout\,
	datab => \port_map_ula|port_map_multi|Add1~2_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[0]~0_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[1]~1_combout\,
	combout => \port_map_ula|port_map_multi|Add1~4_combout\);

\port_map_ula|port_map_multi|Add1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add1~5_combout\ = (\port_map_ula|port_map_multi|Add1~4_combout\) # ((\port_map_ula|port_map_multi|Add0~7_combout\ & (\port_map_mult_2X1_br_ula|out_port[0]~0_combout\ $ (!\port_map_mult_2X1_br_ula|out_port[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add1~4_combout\,
	datab => \port_map_ula|port_map_multi|Add0~7_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[0]~0_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[1]~1_combout\,
	combout => \port_map_ula|port_map_multi|Add1~5_combout\);

\port_map_ula|Mux9~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux9~7_combout\ = (\port_map_ula|port_map_multi|Add1~5_combout\ & (\port_map_mult_2X1_br_ula|out_port[1]~1_combout\ $ (((\port_map_unidade_controle|Mux7~0_combout\) # (!\port_map_banco_de_registradores|registrador~64_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~64_combout\,
	datab => \port_map_unidade_controle|Mux7~0_combout\,
	datac => \port_map_ula|port_map_multi|Add1~5_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[1]~1_combout\,
	combout => \port_map_ula|Mux9~7_combout\);

\port_map_ula|port_map_multi|Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add4~0_combout\ = (\port_map_banco_de_registradores|registrador~44_combout\ & (\port_map_ula|port_map_multi|Add1~5_combout\ $ (VCC))) # (!\port_map_banco_de_registradores|registrador~44_combout\ & 
-- ((\port_map_ula|port_map_multi|Add1~5_combout\) # (GND)))
-- \port_map_ula|port_map_multi|Add4~1\ = CARRY((\port_map_ula|port_map_multi|Add1~5_combout\) # (!\port_map_banco_de_registradores|registrador~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~44_combout\,
	datab => \port_map_ula|port_map_multi|Add1~5_combout\,
	datad => VCC,
	combout => \port_map_ula|port_map_multi|Add4~0_combout\,
	cout => \port_map_ula|port_map_multi|Add4~1\);

\port_map_ula|port_map_multi|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add3~0_combout\ = (\port_map_banco_de_registradores|registrador~44_combout\ & (\port_map_ula|port_map_multi|Add1~5_combout\ $ (VCC))) # (!\port_map_banco_de_registradores|registrador~44_combout\ & 
-- (\port_map_ula|port_map_multi|Add1~5_combout\ & VCC))
-- \port_map_ula|port_map_multi|Add3~1\ = CARRY((\port_map_banco_de_registradores|registrador~44_combout\ & \port_map_ula|port_map_multi|Add1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~44_combout\,
	datab => \port_map_ula|port_map_multi|Add1~5_combout\,
	datad => VCC,
	combout => \port_map_ula|port_map_multi|Add3~0_combout\,
	cout => \port_map_ula|port_map_multi|Add3~1\);

\port_map_mult_2X1_br_ula|out_port[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mult_2X1_br_ula|out_port[2]~2_combout\ = (\port_map_banco_de_registradores|registrador~64_combout\ & !\port_map_unidade_controle|Mux7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~64_combout\,
	datad => \port_map_unidade_controle|Mux7~0_combout\,
	combout => \port_map_mult_2X1_br_ula|out_port[2]~2_combout\);

\port_map_ula|Mux9~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux9~5_combout\ = (\port_map_mult_2X1_br_ula|out_port[1]~1_combout\ & (((\port_map_ula|port_map_multi|Add3~0_combout\ & !\port_map_mult_2X1_br_ula|out_port[2]~2_combout\)))) # (!\port_map_mult_2X1_br_ula|out_port[1]~1_combout\ & 
-- (\port_map_ula|port_map_multi|Add4~0_combout\ & ((\port_map_mult_2X1_br_ula|out_port[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add4~0_combout\,
	datab => \port_map_ula|port_map_multi|Add3~0_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[1]~1_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[2]~2_combout\,
	combout => \port_map_ula|Mux9~5_combout\);

\port_map_ula|Mux9~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux9~6_combout\ = (\port_map_ula|Mux9~4_combout\) # ((\port_map_ula|Mux4~10_combout\ & ((\port_map_ula|Mux9~7_combout\) # (\port_map_ula|Mux9~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|Mux9~4_combout\,
	datab => \port_map_ula|Mux4~10_combout\,
	datac => \port_map_ula|Mux9~7_combout\,
	datad => \port_map_ula|Mux9~5_combout\,
	combout => \port_map_ula|Mux9~6_combout\);

\port_map_mem_ram|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux9~6_combout\,
	ena => \port_map_mem_ram|ram~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|ram~30_q\);

\port_map_mem_ram|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux9~6_combout\,
	ena => \port_map_mem_ram|ram~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|ram~22_q\);

\port_map_mem_ram|ram~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux9~6_combout\,
	ena => \port_map_mem_ram|ram~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|ram~14_q\);

\port_map_mem_ram|ram~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_ram|ram~81_combout\ = (\port_map_mem_rom|Mux6~1_combout\ & (((\port_map_mem_rom|Mux7~2_combout\)))) # (!\port_map_mem_rom|Mux6~1_combout\ & ((\port_map_mem_rom|Mux7~2_combout\ & (\port_map_mem_ram|ram~22_q\)) # 
-- (!\port_map_mem_rom|Mux7~2_combout\ & ((\port_map_mem_ram|ram~14_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux6~1_combout\,
	datab => \port_map_mem_ram|ram~22_q\,
	datac => \port_map_mem_rom|Mux7~2_combout\,
	datad => \port_map_mem_ram|ram~14_q\,
	combout => \port_map_mem_ram|ram~81_combout\);

\port_map_mem_ram|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux9~6_combout\,
	ena => \port_map_mem_ram|ram~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|ram~38_q\);

\port_map_mem_ram|ram~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_ram|ram~82_combout\ = (\port_map_mem_rom|Mux6~1_combout\ & ((\port_map_mem_ram|ram~81_combout\ & ((\port_map_mem_ram|ram~38_q\))) # (!\port_map_mem_ram|ram~81_combout\ & (\port_map_mem_ram|ram~30_q\)))) # (!\port_map_mem_rom|Mux6~1_combout\ 
-- & (((\port_map_mem_ram|ram~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_ram|ram~30_q\,
	datab => \port_map_mem_rom|Mux6~1_combout\,
	datac => \port_map_mem_ram|ram~81_combout\,
	datad => \port_map_mem_ram|ram~38_q\,
	combout => \port_map_mem_ram|ram~82_combout\);

\port_map_mem_ram|out_port[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mem_ram|ram~82_combout\,
	ena => \port_map_unidade_controle|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|out_port\(2));

\port_map_mult_2X1_ram_ula|out_port[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mult_2X1_ram_ula|out_port[2]~2_combout\ = (\port_map_unidade_controle|Mux3~0_combout\ & (\port_map_mem_ram|out_port\(2))) # (!\port_map_unidade_controle|Mux3~0_combout\ & ((\port_map_ula|Mux9~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_ram|out_port\(2),
	datab => \port_map_ula|Mux9~6_combout\,
	datad => \port_map_unidade_controle|Mux3~0_combout\,
	combout => \port_map_mult_2X1_ram_ula|out_port[2]~2_combout\);

\port_map_banco_de_registradores|registrador~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_ram_ula|out_port[2]~2_combout\,
	ena => \port_map_banco_de_registradores|registrador~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registrador~29_q\);

\port_map_banco_de_registradores|registrador~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registrador~63_combout\ = (\port_map_mem_rom|Mux6~1_combout\ & (((\port_map_mem_rom|Mux7~2_combout\)))) # (!\port_map_mem_rom|Mux6~1_combout\ & ((\port_map_mem_rom|Mux7~2_combout\ & 
-- (\port_map_banco_de_registradores|registrador~21_q\)) # (!\port_map_mem_rom|Mux7~2_combout\ & ((\port_map_banco_de_registradores|registrador~13_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux6~1_combout\,
	datab => \port_map_banco_de_registradores|registrador~21_q\,
	datac => \port_map_mem_rom|Mux7~2_combout\,
	datad => \port_map_banco_de_registradores|registrador~13_q\,
	combout => \port_map_banco_de_registradores|registrador~63_combout\);

\port_map_banco_de_registradores|registrador~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registrador~64_combout\ = (\port_map_mem_rom|Mux6~1_combout\ & ((\port_map_banco_de_registradores|registrador~63_combout\ & ((\port_map_banco_de_registradores|registrador~37_q\))) # 
-- (!\port_map_banco_de_registradores|registrador~63_combout\ & (\port_map_banco_de_registradores|registrador~29_q\)))) # (!\port_map_mem_rom|Mux6~1_combout\ & (((\port_map_banco_de_registradores|registrador~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~29_q\,
	datab => \port_map_mem_rom|Mux6~1_combout\,
	datac => \port_map_banco_de_registradores|registrador~63_combout\,
	datad => \port_map_banco_de_registradores|registrador~37_q\,
	combout => \port_map_banco_de_registradores|registrador~64_combout\);

\port_map_ula|port_map_sub|A1|A2|cout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_sub|A1|A2|cout~combout\ = (\port_map_banco_de_registradores|registrador~48_combout\ & (((\port_map_unidade_controle|Mux7~0_combout\) # (\port_map_ula|port_map_sub|A1|A1|cout~combout\)) # 
-- (!\port_map_banco_de_registradores|registrador~64_combout\))) # (!\port_map_banco_de_registradores|registrador~48_combout\ & (\port_map_ula|port_map_sub|A1|A1|cout~combout\ & ((\port_map_unidade_controle|Mux7~0_combout\) # 
-- (!\port_map_banco_de_registradores|registrador~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~64_combout\,
	datab => \port_map_unidade_controle|Mux7~0_combout\,
	datac => \port_map_banco_de_registradores|registrador~48_combout\,
	datad => \port_map_ula|port_map_sub|A1|A1|cout~combout\,
	combout => \port_map_ula|port_map_sub|A1|A2|cout~combout\);

\port_map_ula|port_map_sub|A1|A3|ha1|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_sub|A1|A3|ha1|sum~0_combout\ = \port_map_banco_de_registradores|registrador~50_combout\ $ (((!\port_map_unidade_controle|Mux7~0_combout\ & \port_map_banco_de_registradores|registrador~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~50_combout\,
	datab => \port_map_unidade_controle|Mux7~0_combout\,
	datad => \port_map_banco_de_registradores|registrador~66_combout\,
	combout => \port_map_ula|port_map_sub|A1|A3|ha1|sum~0_combout\);

\port_map_ula|port_map_adder|A2|cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_adder|A2|cout~0_combout\ = (\port_map_banco_de_registradores|registrador~48_combout\ & ((\port_map_ula|port_map_adder|A1|cout~0_combout\) # ((!\port_map_unidade_controle|Mux7~0_combout\ & 
-- \port_map_banco_de_registradores|registrador~64_combout\)))) # (!\port_map_banco_de_registradores|registrador~48_combout\ & (!\port_map_unidade_controle|Mux7~0_combout\ & (\port_map_banco_de_registradores|registrador~64_combout\ & 
-- \port_map_ula|port_map_adder|A1|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|Mux7~0_combout\,
	datab => \port_map_banco_de_registradores|registrador~64_combout\,
	datac => \port_map_banco_de_registradores|registrador~48_combout\,
	datad => \port_map_ula|port_map_adder|A1|cout~0_combout\,
	combout => \port_map_ula|port_map_adder|A2|cout~0_combout\);

\port_map_ula|Mux8~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux8~9_combout\ = \port_map_ula|port_map_sub|A1|A3|ha1|sum~0_combout\ $ (((\port_map_unidade_controle|Mux4~2_combout\ & (!\port_map_ula|port_map_sub|A1|A2|cout~combout\)) # (!\port_map_unidade_controle|Mux4~2_combout\ & 
-- ((\port_map_ula|port_map_adder|A2|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_sub|A1|A2|cout~combout\,
	datab => \port_map_unidade_controle|Mux4~2_combout\,
	datac => \port_map_ula|port_map_sub|A1|A3|ha1|sum~0_combout\,
	datad => \port_map_ula|port_map_adder|A2|cout~0_combout\,
	combout => \port_map_ula|Mux8~9_combout\);

\port_map_ula|Mux8~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux8~10_combout\ = (!\port_map_mem_rom|Mux0~5_combout\ & ((\port_map_mem_rom|Mux1~3_combout\ & (\port_map_ula|Mux8~8_combout\)) # (!\port_map_mem_rom|Mux1~3_combout\ & ((\port_map_ula|Mux8~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|Mux8~8_combout\,
	datab => \port_map_ula|Mux8~9_combout\,
	datac => \port_map_mem_rom|Mux1~3_combout\,
	datad => \port_map_mem_rom|Mux0~5_combout\,
	combout => \port_map_ula|Mux8~10_combout\);

\port_map_ula|port_map_multi|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add0~8_combout\ = (\port_map_banco_de_registradores|registrador~50_combout\ & ((\port_map_ula|port_map_multi|Add0~6\) # (GND))) # (!\port_map_banco_de_registradores|registrador~50_combout\ & 
-- (!\port_map_ula|port_map_multi|Add0~6\))
-- \port_map_ula|port_map_multi|Add0~9\ = CARRY((\port_map_banco_de_registradores|registrador~50_combout\) # (!\port_map_ula|port_map_multi|Add0~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~50_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add0~6\,
	combout => \port_map_ula|port_map_multi|Add0~8_combout\,
	cout => \port_map_ula|port_map_multi|Add0~9\);

\port_map_ula|port_map_multi|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add0~10_combout\ = (\port_map_ula|port_map_multi|Add0~8_combout\ & ((\port_map_unidade_controle|Mux7~0_combout\ & (\port_map_mem_rom|Mux7~2_combout\)) # (!\port_map_unidade_controle|Mux7~0_combout\ & 
-- ((\port_map_banco_de_registradores|registrador~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add0~8_combout\,
	datab => \port_map_mem_rom|Mux7~2_combout\,
	datac => \port_map_banco_de_registradores|registrador~60_combout\,
	datad => \port_map_unidade_controle|Mux7~0_combout\,
	combout => \port_map_ula|port_map_multi|Add0~10_combout\);

\port_map_ula|port_map_multi|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add2~4_combout\ = ((\port_map_banco_de_registradores|registrador~48_combout\ $ (\port_map_ula|port_map_multi|Add0~10_combout\ $ (\port_map_ula|port_map_multi|Add2~3\)))) # (GND)
-- \port_map_ula|port_map_multi|Add2~5\ = CARRY((\port_map_banco_de_registradores|registrador~48_combout\ & (\port_map_ula|port_map_multi|Add0~10_combout\ & !\port_map_ula|port_map_multi|Add2~3\)) # (!\port_map_banco_de_registradores|registrador~48_combout\ 
-- & ((\port_map_ula|port_map_multi|Add0~10_combout\) # (!\port_map_ula|port_map_multi|Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~48_combout\,
	datab => \port_map_ula|port_map_multi|Add0~10_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add2~3\,
	combout => \port_map_ula|port_map_multi|Add2~4_combout\,
	cout => \port_map_ula|port_map_multi|Add2~5\);

\port_map_ula|port_map_multi|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add1~6_combout\ = ((\port_map_banco_de_registradores|registrador~48_combout\ $ (\port_map_ula|port_map_multi|Add0~10_combout\ $ (!\port_map_ula|port_map_multi|Add1~3\)))) # (GND)
-- \port_map_ula|port_map_multi|Add1~7\ = CARRY((\port_map_banco_de_registradores|registrador~48_combout\ & ((\port_map_ula|port_map_multi|Add0~10_combout\) # (!\port_map_ula|port_map_multi|Add1~3\))) # 
-- (!\port_map_banco_de_registradores|registrador~48_combout\ & (\port_map_ula|port_map_multi|Add0~10_combout\ & !\port_map_ula|port_map_multi|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~48_combout\,
	datab => \port_map_ula|port_map_multi|Add0~10_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add1~3\,
	combout => \port_map_ula|port_map_multi|Add1~6_combout\,
	cout => \port_map_ula|port_map_multi|Add1~7\);

\port_map_ula|port_map_multi|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add1~8_combout\ = (\port_map_mult_2X1_br_ula|out_port[0]~0_combout\ & (((\port_map_ula|port_map_multi|Add1~6_combout\ & !\port_map_mult_2X1_br_ula|out_port[1]~1_combout\)))) # (!\port_map_mult_2X1_br_ula|out_port[0]~0_combout\ 
-- & (\port_map_ula|port_map_multi|Add2~4_combout\ & ((\port_map_mult_2X1_br_ula|out_port[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add2~4_combout\,
	datab => \port_map_ula|port_map_multi|Add1~6_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[0]~0_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[1]~1_combout\,
	combout => \port_map_ula|port_map_multi|Add1~8_combout\);

\port_map_ula|port_map_multi|Add1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add1~9_combout\ = (\port_map_ula|port_map_multi|Add1~8_combout\) # ((\port_map_ula|port_map_multi|Add0~10_combout\ & (\port_map_mult_2X1_br_ula|out_port[0]~0_combout\ $ (!\port_map_mult_2X1_br_ula|out_port[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add1~8_combout\,
	datab => \port_map_ula|port_map_multi|Add0~10_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[0]~0_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[1]~1_combout\,
	combout => \port_map_ula|port_map_multi|Add1~9_combout\);

\port_map_ula|port_map_multi|Add4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add4~2_combout\ = (\port_map_banco_de_registradores|registrador~46_combout\ & ((\port_map_ula|port_map_multi|Add1~9_combout\ & (!\port_map_ula|port_map_multi|Add4~1\)) # (!\port_map_ula|port_map_multi|Add1~9_combout\ & 
-- ((\port_map_ula|port_map_multi|Add4~1\) # (GND))))) # (!\port_map_banco_de_registradores|registrador~46_combout\ & ((\port_map_ula|port_map_multi|Add1~9_combout\ & (\port_map_ula|port_map_multi|Add4~1\ & VCC)) # 
-- (!\port_map_ula|port_map_multi|Add1~9_combout\ & (!\port_map_ula|port_map_multi|Add4~1\))))
-- \port_map_ula|port_map_multi|Add4~3\ = CARRY((\port_map_banco_de_registradores|registrador~46_combout\ & ((!\port_map_ula|port_map_multi|Add4~1\) # (!\port_map_ula|port_map_multi|Add1~9_combout\))) # 
-- (!\port_map_banco_de_registradores|registrador~46_combout\ & (!\port_map_ula|port_map_multi|Add1~9_combout\ & !\port_map_ula|port_map_multi|Add4~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~46_combout\,
	datab => \port_map_ula|port_map_multi|Add1~9_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add4~1\,
	combout => \port_map_ula|port_map_multi|Add4~2_combout\,
	cout => \port_map_ula|port_map_multi|Add4~3\);

\port_map_ula|port_map_multi|Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add3~2_combout\ = (\port_map_banco_de_registradores|registrador~46_combout\ & ((\port_map_ula|port_map_multi|Add1~9_combout\ & (\port_map_ula|port_map_multi|Add3~1\ & VCC)) # (!\port_map_ula|port_map_multi|Add1~9_combout\ & 
-- (!\port_map_ula|port_map_multi|Add3~1\)))) # (!\port_map_banco_de_registradores|registrador~46_combout\ & ((\port_map_ula|port_map_multi|Add1~9_combout\ & (!\port_map_ula|port_map_multi|Add3~1\)) # (!\port_map_ula|port_map_multi|Add1~9_combout\ & 
-- ((\port_map_ula|port_map_multi|Add3~1\) # (GND)))))
-- \port_map_ula|port_map_multi|Add3~3\ = CARRY((\port_map_banco_de_registradores|registrador~46_combout\ & (!\port_map_ula|port_map_multi|Add1~9_combout\ & !\port_map_ula|port_map_multi|Add3~1\)) # (!\port_map_banco_de_registradores|registrador~46_combout\ 
-- & ((!\port_map_ula|port_map_multi|Add3~1\) # (!\port_map_ula|port_map_multi|Add1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~46_combout\,
	datab => \port_map_ula|port_map_multi|Add1~9_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add3~1\,
	combout => \port_map_ula|port_map_multi|Add3~2_combout\,
	cout => \port_map_ula|port_map_multi|Add3~3\);

\port_map_ula|port_map_multi|Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add3~4_combout\ = (\port_map_mult_2X1_br_ula|out_port[1]~1_combout\ & (((\port_map_ula|port_map_multi|Add3~2_combout\ & !\port_map_mult_2X1_br_ula|out_port[2]~2_combout\)))) # (!\port_map_mult_2X1_br_ula|out_port[1]~1_combout\ 
-- & (\port_map_ula|port_map_multi|Add4~2_combout\ & ((\port_map_mult_2X1_br_ula|out_port[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add4~2_combout\,
	datab => \port_map_ula|port_map_multi|Add3~2_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[1]~1_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[2]~2_combout\,
	combout => \port_map_ula|port_map_multi|Add3~4_combout\);

\port_map_ula|port_map_multi|Add3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add3~5_combout\ = (\port_map_ula|port_map_multi|Add3~4_combout\) # ((\port_map_ula|port_map_multi|Add1~9_combout\ & (\port_map_mult_2X1_br_ula|out_port[1]~1_combout\ $ (!\port_map_mult_2X1_br_ula|out_port[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add3~4_combout\,
	datab => \port_map_ula|port_map_multi|Add1~9_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[1]~1_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[2]~2_combout\,
	combout => \port_map_ula|port_map_multi|Add3~5_combout\);

\port_map_ula|Mux8~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux8~13_combout\ = (\port_map_ula|port_map_multi|Add3~5_combout\ & ((\port_map_unidade_controle|Mux7~0_combout\) # (\port_map_banco_de_registradores|registrador~66_combout\ $ (!\port_map_banco_de_registradores|registrador~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~66_combout\,
	datab => \port_map_unidade_controle|Mux7~0_combout\,
	datac => \port_map_banco_de_registradores|registrador~64_combout\,
	datad => \port_map_ula|port_map_multi|Add3~5_combout\,
	combout => \port_map_ula|Mux8~13_combout\);

\port_map_ula|port_map_multi|Add6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add6~0_combout\ = (\port_map_banco_de_registradores|registrador~44_combout\ & (\port_map_ula|port_map_multi|Add3~5_combout\ $ (VCC))) # (!\port_map_banco_de_registradores|registrador~44_combout\ & 
-- ((\port_map_ula|port_map_multi|Add3~5_combout\) # (GND)))
-- \port_map_ula|port_map_multi|Add6~1\ = CARRY((\port_map_ula|port_map_multi|Add3~5_combout\) # (!\port_map_banco_de_registradores|registrador~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~44_combout\,
	datab => \port_map_ula|port_map_multi|Add3~5_combout\,
	datad => VCC,
	combout => \port_map_ula|port_map_multi|Add6~0_combout\,
	cout => \port_map_ula|port_map_multi|Add6~1\);

\port_map_ula|port_map_multi|Add5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add5~0_combout\ = (\port_map_banco_de_registradores|registrador~44_combout\ & (\port_map_ula|port_map_multi|Add3~5_combout\ $ (VCC))) # (!\port_map_banco_de_registradores|registrador~44_combout\ & 
-- (\port_map_ula|port_map_multi|Add3~5_combout\ & VCC))
-- \port_map_ula|port_map_multi|Add5~1\ = CARRY((\port_map_banco_de_registradores|registrador~44_combout\ & \port_map_ula|port_map_multi|Add3~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~44_combout\,
	datab => \port_map_ula|port_map_multi|Add3~5_combout\,
	datad => VCC,
	combout => \port_map_ula|port_map_multi|Add5~0_combout\,
	cout => \port_map_ula|port_map_multi|Add5~1\);

\port_map_mult_2X1_br_ula|out_port[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mult_2X1_br_ula|out_port[3]~3_combout\ = (\port_map_banco_de_registradores|registrador~66_combout\ & !\port_map_unidade_controle|Mux7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~66_combout\,
	datad => \port_map_unidade_controle|Mux7~0_combout\,
	combout => \port_map_mult_2X1_br_ula|out_port[3]~3_combout\);

\port_map_ula|Mux8~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux8~11_combout\ = (\port_map_mult_2X1_br_ula|out_port[2]~2_combout\ & (((\port_map_ula|port_map_multi|Add5~0_combout\ & !\port_map_mult_2X1_br_ula|out_port[3]~3_combout\)))) # (!\port_map_mult_2X1_br_ula|out_port[2]~2_combout\ & 
-- (\port_map_ula|port_map_multi|Add6~0_combout\ & ((\port_map_mult_2X1_br_ula|out_port[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add6~0_combout\,
	datab => \port_map_ula|port_map_multi|Add5~0_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[2]~2_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[3]~3_combout\,
	combout => \port_map_ula|Mux8~11_combout\);

\port_map_ula|Mux8~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux8~12_combout\ = (\port_map_ula|Mux8~10_combout\) # ((\port_map_ula|Mux4~10_combout\ & ((\port_map_ula|Mux8~13_combout\) # (\port_map_ula|Mux8~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|Mux8~10_combout\,
	datab => \port_map_ula|Mux4~10_combout\,
	datac => \port_map_ula|Mux8~13_combout\,
	datad => \port_map_ula|Mux8~11_combout\,
	combout => \port_map_ula|Mux8~12_combout\);

\port_map_mem_ram|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux8~12_combout\,
	ena => \port_map_mem_ram|ram~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|ram~23_q\);

\port_map_mem_ram|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux8~12_combout\,
	ena => \port_map_mem_ram|ram~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|ram~31_q\);

\port_map_mem_ram|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux8~12_combout\,
	ena => \port_map_mem_ram|ram~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|ram~15_q\);

\port_map_mem_ram|ram~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_ram|ram~83_combout\ = (\port_map_mem_rom|Mux7~2_combout\ & (((\port_map_mem_rom|Mux6~1_combout\)))) # (!\port_map_mem_rom|Mux7~2_combout\ & ((\port_map_mem_rom|Mux6~1_combout\ & (\port_map_mem_ram|ram~31_q\)) # 
-- (!\port_map_mem_rom|Mux6~1_combout\ & ((\port_map_mem_ram|ram~15_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux7~2_combout\,
	datab => \port_map_mem_ram|ram~31_q\,
	datac => \port_map_mem_rom|Mux6~1_combout\,
	datad => \port_map_mem_ram|ram~15_q\,
	combout => \port_map_mem_ram|ram~83_combout\);

\port_map_mem_ram|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux8~12_combout\,
	ena => \port_map_mem_ram|ram~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|ram~39_q\);

\port_map_mem_ram|ram~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_ram|ram~84_combout\ = (\port_map_mem_rom|Mux7~2_combout\ & ((\port_map_mem_ram|ram~83_combout\ & ((\port_map_mem_ram|ram~39_q\))) # (!\port_map_mem_ram|ram~83_combout\ & (\port_map_mem_ram|ram~23_q\)))) # (!\port_map_mem_rom|Mux7~2_combout\ 
-- & (((\port_map_mem_ram|ram~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_ram|ram~23_q\,
	datab => \port_map_mem_rom|Mux7~2_combout\,
	datac => \port_map_mem_ram|ram~83_combout\,
	datad => \port_map_mem_ram|ram~39_q\,
	combout => \port_map_mem_ram|ram~84_combout\);

\port_map_mem_ram|out_port[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mem_ram|ram~84_combout\,
	ena => \port_map_unidade_controle|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|out_port\(3));

\port_map_mult_2X1_ram_ula|out_port[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mult_2X1_ram_ula|out_port[3]~3_combout\ = (\port_map_unidade_controle|Mux3~0_combout\ & (\port_map_mem_ram|out_port\(3))) # (!\port_map_unidade_controle|Mux3~0_combout\ & ((\port_map_ula|Mux8~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_ram|out_port\(3),
	datab => \port_map_ula|Mux8~12_combout\,
	datad => \port_map_unidade_controle|Mux3~0_combout\,
	combout => \port_map_mult_2X1_ram_ula|out_port[3]~3_combout\);

\port_map_banco_de_registradores|registrador~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_ram_ula|out_port[3]~3_combout\,
	ena => \port_map_banco_de_registradores|registrador~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registrador~22_q\);

\port_map_banco_de_registradores|registrador~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registrador~65_combout\ = (\port_map_mem_rom|Mux7~2_combout\ & (((\port_map_mem_rom|Mux6~1_combout\)))) # (!\port_map_mem_rom|Mux7~2_combout\ & ((\port_map_mem_rom|Mux6~1_combout\ & 
-- (\port_map_banco_de_registradores|registrador~30_q\)) # (!\port_map_mem_rom|Mux6~1_combout\ & ((\port_map_banco_de_registradores|registrador~14_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux7~2_combout\,
	datab => \port_map_banco_de_registradores|registrador~30_q\,
	datac => \port_map_mem_rom|Mux6~1_combout\,
	datad => \port_map_banco_de_registradores|registrador~14_q\,
	combout => \port_map_banco_de_registradores|registrador~65_combout\);

\port_map_banco_de_registradores|registrador~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registrador~66_combout\ = (\port_map_mem_rom|Mux7~2_combout\ & ((\port_map_banco_de_registradores|registrador~65_combout\ & ((\port_map_banco_de_registradores|registrador~38_q\))) # 
-- (!\port_map_banco_de_registradores|registrador~65_combout\ & (\port_map_banco_de_registradores|registrador~22_q\)))) # (!\port_map_mem_rom|Mux7~2_combout\ & (((\port_map_banco_de_registradores|registrador~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~22_q\,
	datab => \port_map_mem_rom|Mux7~2_combout\,
	datac => \port_map_banco_de_registradores|registrador~65_combout\,
	datad => \port_map_banco_de_registradores|registrador~38_q\,
	combout => \port_map_banco_de_registradores|registrador~66_combout\);

\port_map_ula|port_map_sub|A1|A3|cout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_sub|A1|A3|cout~combout\ = (\port_map_banco_de_registradores|registrador~50_combout\ & (((\port_map_unidade_controle|Mux7~0_combout\) # (\port_map_ula|port_map_sub|A1|A2|cout~combout\)) # 
-- (!\port_map_banco_de_registradores|registrador~66_combout\))) # (!\port_map_banco_de_registradores|registrador~50_combout\ & (\port_map_ula|port_map_sub|A1|A2|cout~combout\ & ((\port_map_unidade_controle|Mux7~0_combout\) # 
-- (!\port_map_banco_de_registradores|registrador~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~66_combout\,
	datab => \port_map_unidade_controle|Mux7~0_combout\,
	datac => \port_map_banco_de_registradores|registrador~50_combout\,
	datad => \port_map_ula|port_map_sub|A1|A2|cout~combout\,
	combout => \port_map_ula|port_map_sub|A1|A3|cout~combout\);

\port_map_ula|port_map_sub|A1|A4|ha1|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_sub|A1|A4|ha1|sum~0_combout\ = \port_map_banco_de_registradores|registrador~52_combout\ $ (((!\port_map_unidade_controle|Mux7~0_combout\ & \port_map_banco_de_registradores|registrador~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~52_combout\,
	datab => \port_map_unidade_controle|Mux7~0_combout\,
	datad => \port_map_banco_de_registradores|registrador~68_combout\,
	combout => \port_map_ula|port_map_sub|A1|A4|ha1|sum~0_combout\);

\port_map_ula|port_map_adder|A3|cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_adder|A3|cout~0_combout\ = (\port_map_banco_de_registradores|registrador~50_combout\ & ((\port_map_ula|port_map_adder|A2|cout~0_combout\) # ((!\port_map_unidade_controle|Mux7~0_combout\ & 
-- \port_map_banco_de_registradores|registrador~66_combout\)))) # (!\port_map_banco_de_registradores|registrador~50_combout\ & (!\port_map_unidade_controle|Mux7~0_combout\ & (\port_map_banco_de_registradores|registrador~66_combout\ & 
-- \port_map_ula|port_map_adder|A2|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|Mux7~0_combout\,
	datab => \port_map_banco_de_registradores|registrador~66_combout\,
	datac => \port_map_banco_de_registradores|registrador~50_combout\,
	datad => \port_map_ula|port_map_adder|A2|cout~0_combout\,
	combout => \port_map_ula|port_map_adder|A3|cout~0_combout\);

\port_map_ula|Mux7~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux7~9_combout\ = \port_map_ula|port_map_sub|A1|A4|ha1|sum~0_combout\ $ (((\port_map_unidade_controle|Mux4~2_combout\ & (!\port_map_ula|port_map_sub|A1|A3|cout~combout\)) # (!\port_map_unidade_controle|Mux4~2_combout\ & 
-- ((\port_map_ula|port_map_adder|A3|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_sub|A1|A3|cout~combout\,
	datab => \port_map_unidade_controle|Mux4~2_combout\,
	datac => \port_map_ula|port_map_sub|A1|A4|ha1|sum~0_combout\,
	datad => \port_map_ula|port_map_adder|A3|cout~0_combout\,
	combout => \port_map_ula|Mux7~9_combout\);

\port_map_ula|Mux7~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux7~10_combout\ = (!\port_map_mem_rom|Mux0~5_combout\ & ((\port_map_mem_rom|Mux1~3_combout\ & (\port_map_ula|Mux7~8_combout\)) # (!\port_map_mem_rom|Mux1~3_combout\ & ((\port_map_ula|Mux7~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|Mux7~8_combout\,
	datab => \port_map_ula|Mux7~9_combout\,
	datac => \port_map_mem_rom|Mux1~3_combout\,
	datad => \port_map_mem_rom|Mux0~5_combout\,
	combout => \port_map_ula|Mux7~10_combout\);

\port_map_ula|port_map_multi|Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add0~11_combout\ = (\port_map_banco_de_registradores|registrador~52_combout\ & (!\port_map_ula|port_map_multi|Add0~9\ & VCC)) # (!\port_map_banco_de_registradores|registrador~52_combout\ & (\port_map_ula|port_map_multi|Add0~9\ 
-- $ (GND)))
-- \port_map_ula|port_map_multi|Add0~12\ = CARRY((!\port_map_banco_de_registradores|registrador~52_combout\ & !\port_map_ula|port_map_multi|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~52_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add0~9\,
	combout => \port_map_ula|port_map_multi|Add0~11_combout\,
	cout => \port_map_ula|port_map_multi|Add0~12\);

\port_map_ula|port_map_multi|Add0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add0~13_combout\ = (\port_map_ula|port_map_multi|Add0~11_combout\ & ((\port_map_unidade_controle|Mux7~0_combout\ & (\port_map_mem_rom|Mux7~2_combout\)) # (!\port_map_unidade_controle|Mux7~0_combout\ & 
-- ((\port_map_banco_de_registradores|registrador~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add0~11_combout\,
	datab => \port_map_mem_rom|Mux7~2_combout\,
	datac => \port_map_banco_de_registradores|registrador~60_combout\,
	datad => \port_map_unidade_controle|Mux7~0_combout\,
	combout => \port_map_ula|port_map_multi|Add0~13_combout\);

\port_map_ula|port_map_multi|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add2~6_combout\ = (\port_map_banco_de_registradores|registrador~50_combout\ & ((\port_map_ula|port_map_multi|Add0~13_combout\ & (!\port_map_ula|port_map_multi|Add2~5\)) # (!\port_map_ula|port_map_multi|Add0~13_combout\ & 
-- ((\port_map_ula|port_map_multi|Add2~5\) # (GND))))) # (!\port_map_banco_de_registradores|registrador~50_combout\ & ((\port_map_ula|port_map_multi|Add0~13_combout\ & (\port_map_ula|port_map_multi|Add2~5\ & VCC)) # 
-- (!\port_map_ula|port_map_multi|Add0~13_combout\ & (!\port_map_ula|port_map_multi|Add2~5\))))
-- \port_map_ula|port_map_multi|Add2~7\ = CARRY((\port_map_banco_de_registradores|registrador~50_combout\ & ((!\port_map_ula|port_map_multi|Add2~5\) # (!\port_map_ula|port_map_multi|Add0~13_combout\))) # 
-- (!\port_map_banco_de_registradores|registrador~50_combout\ & (!\port_map_ula|port_map_multi|Add0~13_combout\ & !\port_map_ula|port_map_multi|Add2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~50_combout\,
	datab => \port_map_ula|port_map_multi|Add0~13_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add2~5\,
	combout => \port_map_ula|port_map_multi|Add2~6_combout\,
	cout => \port_map_ula|port_map_multi|Add2~7\);

\port_map_ula|port_map_multi|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add1~10_combout\ = (\port_map_banco_de_registradores|registrador~50_combout\ & ((\port_map_ula|port_map_multi|Add0~13_combout\ & (\port_map_ula|port_map_multi|Add1~7\ & VCC)) # (!\port_map_ula|port_map_multi|Add0~13_combout\ & 
-- (!\port_map_ula|port_map_multi|Add1~7\)))) # (!\port_map_banco_de_registradores|registrador~50_combout\ & ((\port_map_ula|port_map_multi|Add0~13_combout\ & (!\port_map_ula|port_map_multi|Add1~7\)) # (!\port_map_ula|port_map_multi|Add0~13_combout\ & 
-- ((\port_map_ula|port_map_multi|Add1~7\) # (GND)))))
-- \port_map_ula|port_map_multi|Add1~11\ = CARRY((\port_map_banco_de_registradores|registrador~50_combout\ & (!\port_map_ula|port_map_multi|Add0~13_combout\ & !\port_map_ula|port_map_multi|Add1~7\)) # 
-- (!\port_map_banco_de_registradores|registrador~50_combout\ & ((!\port_map_ula|port_map_multi|Add1~7\) # (!\port_map_ula|port_map_multi|Add0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~50_combout\,
	datab => \port_map_ula|port_map_multi|Add0~13_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add1~7\,
	combout => \port_map_ula|port_map_multi|Add1~10_combout\,
	cout => \port_map_ula|port_map_multi|Add1~11\);

\port_map_ula|port_map_multi|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add1~12_combout\ = (\port_map_mult_2X1_br_ula|out_port[0]~0_combout\ & (((\port_map_ula|port_map_multi|Add1~10_combout\ & !\port_map_mult_2X1_br_ula|out_port[1]~1_combout\)))) # 
-- (!\port_map_mult_2X1_br_ula|out_port[0]~0_combout\ & (\port_map_ula|port_map_multi|Add2~6_combout\ & ((\port_map_mult_2X1_br_ula|out_port[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add2~6_combout\,
	datab => \port_map_ula|port_map_multi|Add1~10_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[0]~0_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[1]~1_combout\,
	combout => \port_map_ula|port_map_multi|Add1~12_combout\);

\port_map_ula|port_map_multi|Add1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add1~13_combout\ = (\port_map_ula|port_map_multi|Add1~12_combout\) # ((\port_map_ula|port_map_multi|Add0~13_combout\ & (\port_map_mult_2X1_br_ula|out_port[0]~0_combout\ $ (!\port_map_mult_2X1_br_ula|out_port[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add1~12_combout\,
	datab => \port_map_ula|port_map_multi|Add0~13_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[0]~0_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[1]~1_combout\,
	combout => \port_map_ula|port_map_multi|Add1~13_combout\);

\port_map_ula|port_map_multi|Add4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add4~4_combout\ = ((\port_map_banco_de_registradores|registrador~48_combout\ $ (\port_map_ula|port_map_multi|Add1~13_combout\ $ (\port_map_ula|port_map_multi|Add4~3\)))) # (GND)
-- \port_map_ula|port_map_multi|Add4~5\ = CARRY((\port_map_banco_de_registradores|registrador~48_combout\ & (\port_map_ula|port_map_multi|Add1~13_combout\ & !\port_map_ula|port_map_multi|Add4~3\)) # (!\port_map_banco_de_registradores|registrador~48_combout\ 
-- & ((\port_map_ula|port_map_multi|Add1~13_combout\) # (!\port_map_ula|port_map_multi|Add4~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~48_combout\,
	datab => \port_map_ula|port_map_multi|Add1~13_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add4~3\,
	combout => \port_map_ula|port_map_multi|Add4~4_combout\,
	cout => \port_map_ula|port_map_multi|Add4~5\);

\port_map_ula|port_map_multi|Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add3~6_combout\ = ((\port_map_banco_de_registradores|registrador~48_combout\ $ (\port_map_ula|port_map_multi|Add1~13_combout\ $ (!\port_map_ula|port_map_multi|Add3~3\)))) # (GND)
-- \port_map_ula|port_map_multi|Add3~7\ = CARRY((\port_map_banco_de_registradores|registrador~48_combout\ & ((\port_map_ula|port_map_multi|Add1~13_combout\) # (!\port_map_ula|port_map_multi|Add3~3\))) # 
-- (!\port_map_banco_de_registradores|registrador~48_combout\ & (\port_map_ula|port_map_multi|Add1~13_combout\ & !\port_map_ula|port_map_multi|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~48_combout\,
	datab => \port_map_ula|port_map_multi|Add1~13_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add3~3\,
	combout => \port_map_ula|port_map_multi|Add3~6_combout\,
	cout => \port_map_ula|port_map_multi|Add3~7\);

\port_map_ula|port_map_multi|Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add3~8_combout\ = (\port_map_mult_2X1_br_ula|out_port[1]~1_combout\ & (((\port_map_ula|port_map_multi|Add3~6_combout\ & !\port_map_mult_2X1_br_ula|out_port[2]~2_combout\)))) # (!\port_map_mult_2X1_br_ula|out_port[1]~1_combout\ 
-- & (\port_map_ula|port_map_multi|Add4~4_combout\ & ((\port_map_mult_2X1_br_ula|out_port[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add4~4_combout\,
	datab => \port_map_ula|port_map_multi|Add3~6_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[1]~1_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[2]~2_combout\,
	combout => \port_map_ula|port_map_multi|Add3~8_combout\);

\port_map_ula|port_map_multi|Add3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add3~9_combout\ = (\port_map_ula|port_map_multi|Add3~8_combout\) # ((\port_map_ula|port_map_multi|Add1~13_combout\ & (\port_map_mult_2X1_br_ula|out_port[1]~1_combout\ $ (!\port_map_mult_2X1_br_ula|out_port[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add3~8_combout\,
	datab => \port_map_ula|port_map_multi|Add1~13_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[1]~1_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[2]~2_combout\,
	combout => \port_map_ula|port_map_multi|Add3~9_combout\);

\port_map_ula|port_map_multi|Add6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add6~2_combout\ = (\port_map_banco_de_registradores|registrador~46_combout\ & ((\port_map_ula|port_map_multi|Add3~9_combout\ & (!\port_map_ula|port_map_multi|Add6~1\)) # (!\port_map_ula|port_map_multi|Add3~9_combout\ & 
-- ((\port_map_ula|port_map_multi|Add6~1\) # (GND))))) # (!\port_map_banco_de_registradores|registrador~46_combout\ & ((\port_map_ula|port_map_multi|Add3~9_combout\ & (\port_map_ula|port_map_multi|Add6~1\ & VCC)) # 
-- (!\port_map_ula|port_map_multi|Add3~9_combout\ & (!\port_map_ula|port_map_multi|Add6~1\))))
-- \port_map_ula|port_map_multi|Add6~3\ = CARRY((\port_map_banco_de_registradores|registrador~46_combout\ & ((!\port_map_ula|port_map_multi|Add6~1\) # (!\port_map_ula|port_map_multi|Add3~9_combout\))) # 
-- (!\port_map_banco_de_registradores|registrador~46_combout\ & (!\port_map_ula|port_map_multi|Add3~9_combout\ & !\port_map_ula|port_map_multi|Add6~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~46_combout\,
	datab => \port_map_ula|port_map_multi|Add3~9_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add6~1\,
	combout => \port_map_ula|port_map_multi|Add6~2_combout\,
	cout => \port_map_ula|port_map_multi|Add6~3\);

\port_map_ula|port_map_multi|Add5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add5~2_combout\ = (\port_map_banco_de_registradores|registrador~46_combout\ & ((\port_map_ula|port_map_multi|Add3~9_combout\ & (\port_map_ula|port_map_multi|Add5~1\ & VCC)) # (!\port_map_ula|port_map_multi|Add3~9_combout\ & 
-- (!\port_map_ula|port_map_multi|Add5~1\)))) # (!\port_map_banco_de_registradores|registrador~46_combout\ & ((\port_map_ula|port_map_multi|Add3~9_combout\ & (!\port_map_ula|port_map_multi|Add5~1\)) # (!\port_map_ula|port_map_multi|Add3~9_combout\ & 
-- ((\port_map_ula|port_map_multi|Add5~1\) # (GND)))))
-- \port_map_ula|port_map_multi|Add5~3\ = CARRY((\port_map_banco_de_registradores|registrador~46_combout\ & (!\port_map_ula|port_map_multi|Add3~9_combout\ & !\port_map_ula|port_map_multi|Add5~1\)) # (!\port_map_banco_de_registradores|registrador~46_combout\ 
-- & ((!\port_map_ula|port_map_multi|Add5~1\) # (!\port_map_ula|port_map_multi|Add3~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~46_combout\,
	datab => \port_map_ula|port_map_multi|Add3~9_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add5~1\,
	combout => \port_map_ula|port_map_multi|Add5~2_combout\,
	cout => \port_map_ula|port_map_multi|Add5~3\);

\port_map_ula|port_map_multi|Add5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add5~4_combout\ = (\port_map_mult_2X1_br_ula|out_port[2]~2_combout\ & (((\port_map_ula|port_map_multi|Add5~2_combout\ & !\port_map_mult_2X1_br_ula|out_port[3]~3_combout\)))) # (!\port_map_mult_2X1_br_ula|out_port[2]~2_combout\ 
-- & (\port_map_ula|port_map_multi|Add6~2_combout\ & ((\port_map_mult_2X1_br_ula|out_port[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add6~2_combout\,
	datab => \port_map_ula|port_map_multi|Add5~2_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[2]~2_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[3]~3_combout\,
	combout => \port_map_ula|port_map_multi|Add5~4_combout\);

\port_map_ula|port_map_multi|Add5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add5~5_combout\ = (\port_map_ula|port_map_multi|Add5~4_combout\) # ((\port_map_ula|port_map_multi|Add3~9_combout\ & (\port_map_mult_2X1_br_ula|out_port[2]~2_combout\ $ (!\port_map_mult_2X1_br_ula|out_port[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add5~4_combout\,
	datab => \port_map_ula|port_map_multi|Add3~9_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[2]~2_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[3]~3_combout\,
	combout => \port_map_ula|port_map_multi|Add5~5_combout\);

\port_map_ula|Mux7~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux7~13_combout\ = (\port_map_ula|port_map_multi|Add5~5_combout\ & ((\port_map_unidade_controle|Mux7~0_combout\) # (\port_map_banco_de_registradores|registrador~68_combout\ $ (!\port_map_banco_de_registradores|registrador~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~68_combout\,
	datab => \port_map_unidade_controle|Mux7~0_combout\,
	datac => \port_map_banco_de_registradores|registrador~66_combout\,
	datad => \port_map_ula|port_map_multi|Add5~5_combout\,
	combout => \port_map_ula|Mux7~13_combout\);

\port_map_ula|port_map_multi|Add8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add8~0_combout\ = (\port_map_banco_de_registradores|registrador~44_combout\ & (\port_map_ula|port_map_multi|Add5~5_combout\ $ (VCC))) # (!\port_map_banco_de_registradores|registrador~44_combout\ & 
-- ((\port_map_ula|port_map_multi|Add5~5_combout\) # (GND)))
-- \port_map_ula|port_map_multi|Add8~1\ = CARRY((\port_map_ula|port_map_multi|Add5~5_combout\) # (!\port_map_banco_de_registradores|registrador~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~44_combout\,
	datab => \port_map_ula|port_map_multi|Add5~5_combout\,
	datad => VCC,
	combout => \port_map_ula|port_map_multi|Add8~0_combout\,
	cout => \port_map_ula|port_map_multi|Add8~1\);

\port_map_ula|port_map_multi|Add7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add7~0_combout\ = (\port_map_banco_de_registradores|registrador~44_combout\ & (\port_map_ula|port_map_multi|Add5~5_combout\ $ (VCC))) # (!\port_map_banco_de_registradores|registrador~44_combout\ & 
-- (\port_map_ula|port_map_multi|Add5~5_combout\ & VCC))
-- \port_map_ula|port_map_multi|Add7~1\ = CARRY((\port_map_banco_de_registradores|registrador~44_combout\ & \port_map_ula|port_map_multi|Add5~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~44_combout\,
	datab => \port_map_ula|port_map_multi|Add5~5_combout\,
	datad => VCC,
	combout => \port_map_ula|port_map_multi|Add7~0_combout\,
	cout => \port_map_ula|port_map_multi|Add7~1\);

\port_map_mult_2X1_br_ula|out_port[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mult_2X1_br_ula|out_port[4]~4_combout\ = (\port_map_banco_de_registradores|registrador~68_combout\ & !\port_map_unidade_controle|Mux7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~68_combout\,
	datad => \port_map_unidade_controle|Mux7~0_combout\,
	combout => \port_map_mult_2X1_br_ula|out_port[4]~4_combout\);

\port_map_ula|Mux7~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux7~11_combout\ = (\port_map_mult_2X1_br_ula|out_port[3]~3_combout\ & (((\port_map_ula|port_map_multi|Add7~0_combout\ & !\port_map_mult_2X1_br_ula|out_port[4]~4_combout\)))) # (!\port_map_mult_2X1_br_ula|out_port[3]~3_combout\ & 
-- (\port_map_ula|port_map_multi|Add8~0_combout\ & ((\port_map_mult_2X1_br_ula|out_port[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add8~0_combout\,
	datab => \port_map_ula|port_map_multi|Add7~0_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[3]~3_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[4]~4_combout\,
	combout => \port_map_ula|Mux7~11_combout\);

\port_map_ula|Mux7~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux7~12_combout\ = (\port_map_ula|Mux7~10_combout\) # ((\port_map_ula|Mux4~10_combout\ & ((\port_map_ula|Mux7~13_combout\) # (\port_map_ula|Mux7~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|Mux7~10_combout\,
	datab => \port_map_ula|Mux4~10_combout\,
	datac => \port_map_ula|Mux7~13_combout\,
	datad => \port_map_ula|Mux7~11_combout\,
	combout => \port_map_ula|Mux7~12_combout\);

\port_map_mem_ram|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux7~12_combout\,
	ena => \port_map_mem_ram|ram~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|ram~32_q\);

\port_map_mem_ram|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux7~12_combout\,
	ena => \port_map_mem_ram|ram~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|ram~24_q\);

\port_map_mem_ram|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux7~12_combout\,
	ena => \port_map_mem_ram|ram~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|ram~16_q\);

\port_map_mem_ram|ram~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_ram|ram~85_combout\ = (\port_map_mem_rom|Mux6~1_combout\ & (((\port_map_mem_rom|Mux7~2_combout\)))) # (!\port_map_mem_rom|Mux6~1_combout\ & ((\port_map_mem_rom|Mux7~2_combout\ & (\port_map_mem_ram|ram~24_q\)) # 
-- (!\port_map_mem_rom|Mux7~2_combout\ & ((\port_map_mem_ram|ram~16_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux6~1_combout\,
	datab => \port_map_mem_ram|ram~24_q\,
	datac => \port_map_mem_rom|Mux7~2_combout\,
	datad => \port_map_mem_ram|ram~16_q\,
	combout => \port_map_mem_ram|ram~85_combout\);

\port_map_mem_ram|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux7~12_combout\,
	ena => \port_map_mem_ram|ram~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|ram~40_q\);

\port_map_mem_ram|ram~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_ram|ram~86_combout\ = (\port_map_mem_rom|Mux6~1_combout\ & ((\port_map_mem_ram|ram~85_combout\ & ((\port_map_mem_ram|ram~40_q\))) # (!\port_map_mem_ram|ram~85_combout\ & (\port_map_mem_ram|ram~32_q\)))) # (!\port_map_mem_rom|Mux6~1_combout\ 
-- & (((\port_map_mem_ram|ram~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_ram|ram~32_q\,
	datab => \port_map_mem_rom|Mux6~1_combout\,
	datac => \port_map_mem_ram|ram~85_combout\,
	datad => \port_map_mem_ram|ram~40_q\,
	combout => \port_map_mem_ram|ram~86_combout\);

\port_map_mem_ram|out_port[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mem_ram|ram~86_combout\,
	ena => \port_map_unidade_controle|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|out_port\(4));

\port_map_mult_2X1_ram_ula|out_port[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mult_2X1_ram_ula|out_port[4]~4_combout\ = (\port_map_unidade_controle|Mux3~0_combout\ & (\port_map_mem_ram|out_port\(4))) # (!\port_map_unidade_controle|Mux3~0_combout\ & ((\port_map_ula|Mux7~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_ram|out_port\(4),
	datab => \port_map_ula|Mux7~12_combout\,
	datad => \port_map_unidade_controle|Mux3~0_combout\,
	combout => \port_map_mult_2X1_ram_ula|out_port[4]~4_combout\);

\port_map_banco_de_registradores|registrador~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_ram_ula|out_port[4]~4_combout\,
	ena => \port_map_banco_de_registradores|registrador~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registrador~31_q\);

\port_map_banco_de_registradores|registrador~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registrador~67_combout\ = (\port_map_mem_rom|Mux6~1_combout\ & (((\port_map_mem_rom|Mux7~2_combout\)))) # (!\port_map_mem_rom|Mux6~1_combout\ & ((\port_map_mem_rom|Mux7~2_combout\ & 
-- (\port_map_banco_de_registradores|registrador~23_q\)) # (!\port_map_mem_rom|Mux7~2_combout\ & ((\port_map_banco_de_registradores|registrador~15_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux6~1_combout\,
	datab => \port_map_banco_de_registradores|registrador~23_q\,
	datac => \port_map_mem_rom|Mux7~2_combout\,
	datad => \port_map_banco_de_registradores|registrador~15_q\,
	combout => \port_map_banco_de_registradores|registrador~67_combout\);

\port_map_banco_de_registradores|registrador~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registrador~68_combout\ = (\port_map_mem_rom|Mux6~1_combout\ & ((\port_map_banco_de_registradores|registrador~67_combout\ & ((\port_map_banco_de_registradores|registrador~39_q\))) # 
-- (!\port_map_banco_de_registradores|registrador~67_combout\ & (\port_map_banco_de_registradores|registrador~31_q\)))) # (!\port_map_mem_rom|Mux6~1_combout\ & (((\port_map_banco_de_registradores|registrador~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~31_q\,
	datab => \port_map_mem_rom|Mux6~1_combout\,
	datac => \port_map_banco_de_registradores|registrador~67_combout\,
	datad => \port_map_banco_de_registradores|registrador~39_q\,
	combout => \port_map_banco_de_registradores|registrador~68_combout\);

\port_map_ula|port_map_sub|A1|A4|cout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_sub|A1|A4|cout~combout\ = (\port_map_banco_de_registradores|registrador~52_combout\ & (((\port_map_unidade_controle|Mux7~0_combout\) # (\port_map_ula|port_map_sub|A1|A3|cout~combout\)) # 
-- (!\port_map_banco_de_registradores|registrador~68_combout\))) # (!\port_map_banco_de_registradores|registrador~52_combout\ & (\port_map_ula|port_map_sub|A1|A3|cout~combout\ & ((\port_map_unidade_controle|Mux7~0_combout\) # 
-- (!\port_map_banco_de_registradores|registrador~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~68_combout\,
	datab => \port_map_unidade_controle|Mux7~0_combout\,
	datac => \port_map_banco_de_registradores|registrador~52_combout\,
	datad => \port_map_ula|port_map_sub|A1|A3|cout~combout\,
	combout => \port_map_ula|port_map_sub|A1|A4|cout~combout\);

\port_map_ula|Mux6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux6~8_combout\ = \port_map_mult_2X1_br_ula|out_port[5]~5_combout\ $ (((!\port_map_mem_rom|Mux1~3_combout\ & (\port_map_banco_de_registradores|registrador~54_combout\ $ (!\port_map_ula|port_map_sub|A1|A4|cout~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult_2X1_br_ula|out_port[5]~5_combout\,
	datab => \port_map_mem_rom|Mux1~3_combout\,
	datac => \port_map_banco_de_registradores|registrador~54_combout\,
	datad => \port_map_ula|port_map_sub|A1|A4|cout~combout\,
	combout => \port_map_ula|Mux6~8_combout\);

\port_map_ula|port_map_adder|A4|cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_adder|A4|cout~0_combout\ = (\port_map_banco_de_registradores|registrador~52_combout\ & ((\port_map_ula|port_map_adder|A3|cout~0_combout\) # ((!\port_map_unidade_controle|Mux7~0_combout\ & 
-- \port_map_banco_de_registradores|registrador~68_combout\)))) # (!\port_map_banco_de_registradores|registrador~52_combout\ & (!\port_map_unidade_controle|Mux7~0_combout\ & (\port_map_banco_de_registradores|registrador~68_combout\ & 
-- \port_map_ula|port_map_adder|A3|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|Mux7~0_combout\,
	datab => \port_map_banco_de_registradores|registrador~68_combout\,
	datac => \port_map_banco_de_registradores|registrador~52_combout\,
	datad => \port_map_ula|port_map_adder|A3|cout~0_combout\,
	combout => \port_map_ula|port_map_adder|A4|cout~0_combout\);

\port_map_ula|Mux6~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux6~9_combout\ = \port_map_banco_de_registradores|registrador~54_combout\ $ (((!\port_map_mem_rom|Mux1~3_combout\ & (\port_map_mult_2X1_br_ula|out_port[5]~5_combout\ $ (\port_map_ula|port_map_adder|A4|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~54_combout\,
	datab => \port_map_mem_rom|Mux1~3_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[5]~5_combout\,
	datad => \port_map_ula|port_map_adder|A4|cout~0_combout\,
	combout => \port_map_ula|Mux6~9_combout\);

\port_map_ula|Mux6~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux6~10_combout\ = (!\port_map_mem_rom|Mux0~5_combout\ & ((\port_map_unidade_controle|Mux4~2_combout\ & (\port_map_ula|Mux6~8_combout\)) # (!\port_map_unidade_controle|Mux4~2_combout\ & ((\port_map_ula|Mux6~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|Mux6~8_combout\,
	datab => \port_map_ula|Mux6~9_combout\,
	datac => \port_map_unidade_controle|Mux4~2_combout\,
	datad => \port_map_mem_rom|Mux0~5_combout\,
	combout => \port_map_ula|Mux6~10_combout\);

\port_map_ula|port_map_multi|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add0~14_combout\ = (\port_map_banco_de_registradores|registrador~54_combout\ & ((\port_map_ula|port_map_multi|Add0~12\) # (GND))) # (!\port_map_banco_de_registradores|registrador~54_combout\ & 
-- (!\port_map_ula|port_map_multi|Add0~12\))
-- \port_map_ula|port_map_multi|Add0~15\ = CARRY((\port_map_banco_de_registradores|registrador~54_combout\) # (!\port_map_ula|port_map_multi|Add0~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~54_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add0~12\,
	combout => \port_map_ula|port_map_multi|Add0~14_combout\,
	cout => \port_map_ula|port_map_multi|Add0~15\);

\port_map_ula|port_map_multi|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add0~16_combout\ = (\port_map_ula|port_map_multi|Add0~14_combout\ & ((\port_map_unidade_controle|Mux7~0_combout\ & (\port_map_mem_rom|Mux7~2_combout\)) # (!\port_map_unidade_controle|Mux7~0_combout\ & 
-- ((\port_map_banco_de_registradores|registrador~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add0~14_combout\,
	datab => \port_map_mem_rom|Mux7~2_combout\,
	datac => \port_map_banco_de_registradores|registrador~60_combout\,
	datad => \port_map_unidade_controle|Mux7~0_combout\,
	combout => \port_map_ula|port_map_multi|Add0~16_combout\);

\port_map_ula|port_map_multi|Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add2~8_combout\ = ((\port_map_banco_de_registradores|registrador~52_combout\ $ (\port_map_ula|port_map_multi|Add0~16_combout\ $ (\port_map_ula|port_map_multi|Add2~7\)))) # (GND)
-- \port_map_ula|port_map_multi|Add2~9\ = CARRY((\port_map_banco_de_registradores|registrador~52_combout\ & (\port_map_ula|port_map_multi|Add0~16_combout\ & !\port_map_ula|port_map_multi|Add2~7\)) # (!\port_map_banco_de_registradores|registrador~52_combout\ 
-- & ((\port_map_ula|port_map_multi|Add0~16_combout\) # (!\port_map_ula|port_map_multi|Add2~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~52_combout\,
	datab => \port_map_ula|port_map_multi|Add0~16_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add2~7\,
	combout => \port_map_ula|port_map_multi|Add2~8_combout\,
	cout => \port_map_ula|port_map_multi|Add2~9\);

\port_map_ula|port_map_multi|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add1~14_combout\ = ((\port_map_banco_de_registradores|registrador~52_combout\ $ (\port_map_ula|port_map_multi|Add0~16_combout\ $ (!\port_map_ula|port_map_multi|Add1~11\)))) # (GND)
-- \port_map_ula|port_map_multi|Add1~15\ = CARRY((\port_map_banco_de_registradores|registrador~52_combout\ & ((\port_map_ula|port_map_multi|Add0~16_combout\) # (!\port_map_ula|port_map_multi|Add1~11\))) # 
-- (!\port_map_banco_de_registradores|registrador~52_combout\ & (\port_map_ula|port_map_multi|Add0~16_combout\ & !\port_map_ula|port_map_multi|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~52_combout\,
	datab => \port_map_ula|port_map_multi|Add0~16_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add1~11\,
	combout => \port_map_ula|port_map_multi|Add1~14_combout\,
	cout => \port_map_ula|port_map_multi|Add1~15\);

\port_map_ula|port_map_multi|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add1~16_combout\ = (\port_map_mult_2X1_br_ula|out_port[0]~0_combout\ & (((\port_map_ula|port_map_multi|Add1~14_combout\ & !\port_map_mult_2X1_br_ula|out_port[1]~1_combout\)))) # 
-- (!\port_map_mult_2X1_br_ula|out_port[0]~0_combout\ & (\port_map_ula|port_map_multi|Add2~8_combout\ & ((\port_map_mult_2X1_br_ula|out_port[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add2~8_combout\,
	datab => \port_map_ula|port_map_multi|Add1~14_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[0]~0_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[1]~1_combout\,
	combout => \port_map_ula|port_map_multi|Add1~16_combout\);

\port_map_ula|port_map_multi|Add1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add1~17_combout\ = (\port_map_ula|port_map_multi|Add1~16_combout\) # ((\port_map_ula|port_map_multi|Add0~16_combout\ & (\port_map_mult_2X1_br_ula|out_port[0]~0_combout\ $ (!\port_map_mult_2X1_br_ula|out_port[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add1~16_combout\,
	datab => \port_map_ula|port_map_multi|Add0~16_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[0]~0_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[1]~1_combout\,
	combout => \port_map_ula|port_map_multi|Add1~17_combout\);

\port_map_ula|port_map_multi|Add4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add4~6_combout\ = (\port_map_banco_de_registradores|registrador~50_combout\ & ((\port_map_ula|port_map_multi|Add1~17_combout\ & (!\port_map_ula|port_map_multi|Add4~5\)) # (!\port_map_ula|port_map_multi|Add1~17_combout\ & 
-- ((\port_map_ula|port_map_multi|Add4~5\) # (GND))))) # (!\port_map_banco_de_registradores|registrador~50_combout\ & ((\port_map_ula|port_map_multi|Add1~17_combout\ & (\port_map_ula|port_map_multi|Add4~5\ & VCC)) # 
-- (!\port_map_ula|port_map_multi|Add1~17_combout\ & (!\port_map_ula|port_map_multi|Add4~5\))))
-- \port_map_ula|port_map_multi|Add4~7\ = CARRY((\port_map_banco_de_registradores|registrador~50_combout\ & ((!\port_map_ula|port_map_multi|Add4~5\) # (!\port_map_ula|port_map_multi|Add1~17_combout\))) # 
-- (!\port_map_banco_de_registradores|registrador~50_combout\ & (!\port_map_ula|port_map_multi|Add1~17_combout\ & !\port_map_ula|port_map_multi|Add4~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~50_combout\,
	datab => \port_map_ula|port_map_multi|Add1~17_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add4~5\,
	combout => \port_map_ula|port_map_multi|Add4~6_combout\,
	cout => \port_map_ula|port_map_multi|Add4~7\);

\port_map_ula|port_map_multi|Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add3~10_combout\ = (\port_map_banco_de_registradores|registrador~50_combout\ & ((\port_map_ula|port_map_multi|Add1~17_combout\ & (\port_map_ula|port_map_multi|Add3~7\ & VCC)) # (!\port_map_ula|port_map_multi|Add1~17_combout\ & 
-- (!\port_map_ula|port_map_multi|Add3~7\)))) # (!\port_map_banco_de_registradores|registrador~50_combout\ & ((\port_map_ula|port_map_multi|Add1~17_combout\ & (!\port_map_ula|port_map_multi|Add3~7\)) # (!\port_map_ula|port_map_multi|Add1~17_combout\ & 
-- ((\port_map_ula|port_map_multi|Add3~7\) # (GND)))))
-- \port_map_ula|port_map_multi|Add3~11\ = CARRY((\port_map_banco_de_registradores|registrador~50_combout\ & (!\port_map_ula|port_map_multi|Add1~17_combout\ & !\port_map_ula|port_map_multi|Add3~7\)) # 
-- (!\port_map_banco_de_registradores|registrador~50_combout\ & ((!\port_map_ula|port_map_multi|Add3~7\) # (!\port_map_ula|port_map_multi|Add1~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~50_combout\,
	datab => \port_map_ula|port_map_multi|Add1~17_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add3~7\,
	combout => \port_map_ula|port_map_multi|Add3~10_combout\,
	cout => \port_map_ula|port_map_multi|Add3~11\);

\port_map_ula|port_map_multi|Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add3~12_combout\ = (\port_map_mult_2X1_br_ula|out_port[1]~1_combout\ & (((\port_map_ula|port_map_multi|Add3~10_combout\ & !\port_map_mult_2X1_br_ula|out_port[2]~2_combout\)))) # 
-- (!\port_map_mult_2X1_br_ula|out_port[1]~1_combout\ & (\port_map_ula|port_map_multi|Add4~6_combout\ & ((\port_map_mult_2X1_br_ula|out_port[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add4~6_combout\,
	datab => \port_map_ula|port_map_multi|Add3~10_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[1]~1_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[2]~2_combout\,
	combout => \port_map_ula|port_map_multi|Add3~12_combout\);

\port_map_ula|port_map_multi|Add3~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add3~13_combout\ = (\port_map_ula|port_map_multi|Add3~12_combout\) # ((\port_map_ula|port_map_multi|Add1~17_combout\ & (\port_map_mult_2X1_br_ula|out_port[1]~1_combout\ $ (!\port_map_mult_2X1_br_ula|out_port[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add3~12_combout\,
	datab => \port_map_ula|port_map_multi|Add1~17_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[1]~1_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[2]~2_combout\,
	combout => \port_map_ula|port_map_multi|Add3~13_combout\);

\port_map_ula|port_map_multi|Add5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add5~6_combout\ = ((\port_map_banco_de_registradores|registrador~48_combout\ $ (\port_map_ula|port_map_multi|Add3~13_combout\ $ (!\port_map_ula|port_map_multi|Add5~3\)))) # (GND)
-- \port_map_ula|port_map_multi|Add5~7\ = CARRY((\port_map_banco_de_registradores|registrador~48_combout\ & ((\port_map_ula|port_map_multi|Add3~13_combout\) # (!\port_map_ula|port_map_multi|Add5~3\))) # 
-- (!\port_map_banco_de_registradores|registrador~48_combout\ & (\port_map_ula|port_map_multi|Add3~13_combout\ & !\port_map_ula|port_map_multi|Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~48_combout\,
	datab => \port_map_ula|port_map_multi|Add3~13_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add5~3\,
	combout => \port_map_ula|port_map_multi|Add5~6_combout\,
	cout => \port_map_ula|port_map_multi|Add5~7\);

\port_map_ula|port_map_multi|Add6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add6~4_combout\ = ((\port_map_banco_de_registradores|registrador~48_combout\ $ (\port_map_ula|port_map_multi|Add3~13_combout\ $ (\port_map_ula|port_map_multi|Add6~3\)))) # (GND)
-- \port_map_ula|port_map_multi|Add6~5\ = CARRY((\port_map_banco_de_registradores|registrador~48_combout\ & (\port_map_ula|port_map_multi|Add3~13_combout\ & !\port_map_ula|port_map_multi|Add6~3\)) # (!\port_map_banco_de_registradores|registrador~48_combout\ 
-- & ((\port_map_ula|port_map_multi|Add3~13_combout\) # (!\port_map_ula|port_map_multi|Add6~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~48_combout\,
	datab => \port_map_ula|port_map_multi|Add3~13_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add6~3\,
	combout => \port_map_ula|port_map_multi|Add6~4_combout\,
	cout => \port_map_ula|port_map_multi|Add6~5\);

\port_map_ula|port_map_multi|Add5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add5~8_combout\ = (\port_map_mult_2X1_br_ula|out_port[2]~2_combout\ & ((\port_map_ula|port_map_multi|Add3~13_combout\) # ((!\port_map_mult_2X1_br_ula|out_port[3]~3_combout\)))) # 
-- (!\port_map_mult_2X1_br_ula|out_port[2]~2_combout\ & ((\port_map_mult_2X1_br_ula|out_port[3]~3_combout\ & ((\port_map_ula|port_map_multi|Add6~4_combout\))) # (!\port_map_mult_2X1_br_ula|out_port[3]~3_combout\ & 
-- (\port_map_ula|port_map_multi|Add3~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add3~13_combout\,
	datab => \port_map_mult_2X1_br_ula|out_port[2]~2_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[3]~3_combout\,
	datad => \port_map_ula|port_map_multi|Add6~4_combout\,
	combout => \port_map_ula|port_map_multi|Add5~8_combout\);

\port_map_ula|port_map_multi|Add5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add5~9_combout\ = (\port_map_mult_2X1_br_ula|out_port[2]~2_combout\ & ((\port_map_mult_2X1_br_ula|out_port[3]~3_combout\ & ((\port_map_ula|port_map_multi|Add5~8_combout\))) # (!\port_map_mult_2X1_br_ula|out_port[3]~3_combout\ 
-- & (\port_map_ula|port_map_multi|Add5~6_combout\)))) # (!\port_map_mult_2X1_br_ula|out_port[2]~2_combout\ & (((\port_map_ula|port_map_multi|Add5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult_2X1_br_ula|out_port[2]~2_combout\,
	datab => \port_map_mult_2X1_br_ula|out_port[3]~3_combout\,
	datac => \port_map_ula|port_map_multi|Add5~6_combout\,
	datad => \port_map_ula|port_map_multi|Add5~8_combout\,
	combout => \port_map_ula|port_map_multi|Add5~9_combout\);

\port_map_ula|port_map_multi|Add8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add8~2_combout\ = (\port_map_banco_de_registradores|registrador~46_combout\ & ((\port_map_ula|port_map_multi|Add5~9_combout\ & (!\port_map_ula|port_map_multi|Add8~1\)) # (!\port_map_ula|port_map_multi|Add5~9_combout\ & 
-- ((\port_map_ula|port_map_multi|Add8~1\) # (GND))))) # (!\port_map_banco_de_registradores|registrador~46_combout\ & ((\port_map_ula|port_map_multi|Add5~9_combout\ & (\port_map_ula|port_map_multi|Add8~1\ & VCC)) # 
-- (!\port_map_ula|port_map_multi|Add5~9_combout\ & (!\port_map_ula|port_map_multi|Add8~1\))))
-- \port_map_ula|port_map_multi|Add8~3\ = CARRY((\port_map_banco_de_registradores|registrador~46_combout\ & ((!\port_map_ula|port_map_multi|Add8~1\) # (!\port_map_ula|port_map_multi|Add5~9_combout\))) # 
-- (!\port_map_banco_de_registradores|registrador~46_combout\ & (!\port_map_ula|port_map_multi|Add5~9_combout\ & !\port_map_ula|port_map_multi|Add8~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~46_combout\,
	datab => \port_map_ula|port_map_multi|Add5~9_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add8~1\,
	combout => \port_map_ula|port_map_multi|Add8~2_combout\,
	cout => \port_map_ula|port_map_multi|Add8~3\);

\port_map_ula|port_map_multi|Add7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add7~2_combout\ = (\port_map_banco_de_registradores|registrador~46_combout\ & ((\port_map_ula|port_map_multi|Add5~9_combout\ & (\port_map_ula|port_map_multi|Add7~1\ & VCC)) # (!\port_map_ula|port_map_multi|Add5~9_combout\ & 
-- (!\port_map_ula|port_map_multi|Add7~1\)))) # (!\port_map_banco_de_registradores|registrador~46_combout\ & ((\port_map_ula|port_map_multi|Add5~9_combout\ & (!\port_map_ula|port_map_multi|Add7~1\)) # (!\port_map_ula|port_map_multi|Add5~9_combout\ & 
-- ((\port_map_ula|port_map_multi|Add7~1\) # (GND)))))
-- \port_map_ula|port_map_multi|Add7~3\ = CARRY((\port_map_banco_de_registradores|registrador~46_combout\ & (!\port_map_ula|port_map_multi|Add5~9_combout\ & !\port_map_ula|port_map_multi|Add7~1\)) # (!\port_map_banco_de_registradores|registrador~46_combout\ 
-- & ((!\port_map_ula|port_map_multi|Add7~1\) # (!\port_map_ula|port_map_multi|Add5~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~46_combout\,
	datab => \port_map_ula|port_map_multi|Add5~9_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add7~1\,
	combout => \port_map_ula|port_map_multi|Add7~2_combout\,
	cout => \port_map_ula|port_map_multi|Add7~3\);

\port_map_ula|port_map_multi|Add7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add7~4_combout\ = (\port_map_mult_2X1_br_ula|out_port[3]~3_combout\ & (((\port_map_ula|port_map_multi|Add7~2_combout\ & !\port_map_mult_2X1_br_ula|out_port[4]~4_combout\)))) # (!\port_map_mult_2X1_br_ula|out_port[3]~3_combout\ 
-- & (\port_map_ula|port_map_multi|Add8~2_combout\ & ((\port_map_mult_2X1_br_ula|out_port[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add8~2_combout\,
	datab => \port_map_ula|port_map_multi|Add7~2_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[3]~3_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[4]~4_combout\,
	combout => \port_map_ula|port_map_multi|Add7~4_combout\);

\port_map_ula|port_map_multi|Add7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add7~5_combout\ = (\port_map_ula|port_map_multi|Add7~4_combout\) # ((\port_map_ula|port_map_multi|Add5~9_combout\ & (\port_map_mult_2X1_br_ula|out_port[3]~3_combout\ $ (!\port_map_mult_2X1_br_ula|out_port[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add7~4_combout\,
	datab => \port_map_ula|port_map_multi|Add5~9_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[3]~3_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[4]~4_combout\,
	combout => \port_map_ula|port_map_multi|Add7~5_combout\);

\port_map_ula|Mux6~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux6~13_combout\ = (\port_map_ula|port_map_multi|Add7~5_combout\ & ((\port_map_unidade_controle|Mux7~0_combout\) # (\port_map_banco_de_registradores|registrador~70_combout\ $ (!\port_map_banco_de_registradores|registrador~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~70_combout\,
	datab => \port_map_unidade_controle|Mux7~0_combout\,
	datac => \port_map_banco_de_registradores|registrador~68_combout\,
	datad => \port_map_ula|port_map_multi|Add7~5_combout\,
	combout => \port_map_ula|Mux6~13_combout\);

\port_map_ula|port_map_multi|Add10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add10~0_combout\ = (\port_map_banco_de_registradores|registrador~44_combout\ & (\port_map_ula|port_map_multi|Add7~5_combout\ $ (VCC))) # (!\port_map_banco_de_registradores|registrador~44_combout\ & 
-- ((\port_map_ula|port_map_multi|Add7~5_combout\) # (GND)))
-- \port_map_ula|port_map_multi|Add10~1\ = CARRY((\port_map_ula|port_map_multi|Add7~5_combout\) # (!\port_map_banco_de_registradores|registrador~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~44_combout\,
	datab => \port_map_ula|port_map_multi|Add7~5_combout\,
	datad => VCC,
	combout => \port_map_ula|port_map_multi|Add10~0_combout\,
	cout => \port_map_ula|port_map_multi|Add10~1\);

\port_map_ula|port_map_multi|Add9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add9~0_combout\ = (\port_map_banco_de_registradores|registrador~44_combout\ & (\port_map_ula|port_map_multi|Add7~5_combout\ $ (VCC))) # (!\port_map_banco_de_registradores|registrador~44_combout\ & 
-- (\port_map_ula|port_map_multi|Add7~5_combout\ & VCC))
-- \port_map_ula|port_map_multi|Add9~1\ = CARRY((\port_map_banco_de_registradores|registrador~44_combout\ & \port_map_ula|port_map_multi|Add7~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~44_combout\,
	datab => \port_map_ula|port_map_multi|Add7~5_combout\,
	datad => VCC,
	combout => \port_map_ula|port_map_multi|Add9~0_combout\,
	cout => \port_map_ula|port_map_multi|Add9~1\);

\port_map_ula|Mux6~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux6~11_combout\ = (\port_map_mult_2X1_br_ula|out_port[4]~4_combout\ & (((\port_map_ula|port_map_multi|Add9~0_combout\ & !\port_map_mult_2X1_br_ula|out_port[5]~5_combout\)))) # (!\port_map_mult_2X1_br_ula|out_port[4]~4_combout\ & 
-- (\port_map_ula|port_map_multi|Add10~0_combout\ & ((\port_map_mult_2X1_br_ula|out_port[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add10~0_combout\,
	datab => \port_map_ula|port_map_multi|Add9~0_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[4]~4_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[5]~5_combout\,
	combout => \port_map_ula|Mux6~11_combout\);

\port_map_ula|Mux6~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux6~12_combout\ = (\port_map_ula|Mux6~10_combout\) # ((\port_map_ula|Mux4~10_combout\ & ((\port_map_ula|Mux6~13_combout\) # (\port_map_ula|Mux6~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|Mux6~10_combout\,
	datab => \port_map_ula|Mux4~10_combout\,
	datac => \port_map_ula|Mux6~13_combout\,
	datad => \port_map_ula|Mux6~11_combout\,
	combout => \port_map_ula|Mux6~12_combout\);

\port_map_mem_ram|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux6~12_combout\,
	ena => \port_map_mem_ram|ram~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|ram~25_q\);

\port_map_mem_ram|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux6~12_combout\,
	ena => \port_map_mem_ram|ram~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|ram~33_q\);

\port_map_mem_ram|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux6~12_combout\,
	ena => \port_map_mem_ram|ram~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|ram~17_q\);

\port_map_mem_ram|ram~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_ram|ram~87_combout\ = (\port_map_mem_rom|Mux7~2_combout\ & (((\port_map_mem_rom|Mux6~1_combout\)))) # (!\port_map_mem_rom|Mux7~2_combout\ & ((\port_map_mem_rom|Mux6~1_combout\ & (\port_map_mem_ram|ram~33_q\)) # 
-- (!\port_map_mem_rom|Mux6~1_combout\ & ((\port_map_mem_ram|ram~17_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux7~2_combout\,
	datab => \port_map_mem_ram|ram~33_q\,
	datac => \port_map_mem_rom|Mux6~1_combout\,
	datad => \port_map_mem_ram|ram~17_q\,
	combout => \port_map_mem_ram|ram~87_combout\);

\port_map_mem_ram|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux6~12_combout\,
	ena => \port_map_mem_ram|ram~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|ram~41_q\);

\port_map_mem_ram|ram~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_ram|ram~88_combout\ = (\port_map_mem_rom|Mux7~2_combout\ & ((\port_map_mem_ram|ram~87_combout\ & ((\port_map_mem_ram|ram~41_q\))) # (!\port_map_mem_ram|ram~87_combout\ & (\port_map_mem_ram|ram~25_q\)))) # (!\port_map_mem_rom|Mux7~2_combout\ 
-- & (((\port_map_mem_ram|ram~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_ram|ram~25_q\,
	datab => \port_map_mem_rom|Mux7~2_combout\,
	datac => \port_map_mem_ram|ram~87_combout\,
	datad => \port_map_mem_ram|ram~41_q\,
	combout => \port_map_mem_ram|ram~88_combout\);

\port_map_mem_ram|out_port[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mem_ram|ram~88_combout\,
	ena => \port_map_unidade_controle|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|out_port\(5));

\port_map_mult_2X1_ram_ula|out_port[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mult_2X1_ram_ula|out_port[5]~5_combout\ = (\port_map_unidade_controle|Mux3~0_combout\ & (\port_map_mem_ram|out_port\(5))) # (!\port_map_unidade_controle|Mux3~0_combout\ & ((\port_map_ula|Mux6~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_ram|out_port\(5),
	datab => \port_map_ula|Mux6~12_combout\,
	datad => \port_map_unidade_controle|Mux3~0_combout\,
	combout => \port_map_mult_2X1_ram_ula|out_port[5]~5_combout\);

\port_map_banco_de_registradores|registrador~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_ram_ula|out_port[5]~5_combout\,
	ena => \port_map_banco_de_registradores|registrador~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registrador~24_q\);

\port_map_banco_de_registradores|registrador~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registrador~69_combout\ = (\port_map_mem_rom|Mux7~2_combout\ & (((\port_map_mem_rom|Mux6~1_combout\)))) # (!\port_map_mem_rom|Mux7~2_combout\ & ((\port_map_mem_rom|Mux6~1_combout\ & 
-- (\port_map_banco_de_registradores|registrador~32_q\)) # (!\port_map_mem_rom|Mux6~1_combout\ & ((\port_map_banco_de_registradores|registrador~16_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux7~2_combout\,
	datab => \port_map_banco_de_registradores|registrador~32_q\,
	datac => \port_map_mem_rom|Mux6~1_combout\,
	datad => \port_map_banco_de_registradores|registrador~16_q\,
	combout => \port_map_banco_de_registradores|registrador~69_combout\);

\port_map_banco_de_registradores|registrador~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registrador~70_combout\ = (\port_map_mem_rom|Mux7~2_combout\ & ((\port_map_banco_de_registradores|registrador~69_combout\ & ((\port_map_banco_de_registradores|registrador~40_q\))) # 
-- (!\port_map_banco_de_registradores|registrador~69_combout\ & (\port_map_banco_de_registradores|registrador~24_q\)))) # (!\port_map_mem_rom|Mux7~2_combout\ & (((\port_map_banco_de_registradores|registrador~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~24_q\,
	datab => \port_map_mem_rom|Mux7~2_combout\,
	datac => \port_map_banco_de_registradores|registrador~69_combout\,
	datad => \port_map_banco_de_registradores|registrador~40_q\,
	combout => \port_map_banco_de_registradores|registrador~70_combout\);

\port_map_ula|port_map_sub|A1|A5|cout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_sub|A1|A5|cout~combout\ = (\port_map_banco_de_registradores|registrador~54_combout\ & (((\port_map_unidade_controle|Mux7~0_combout\) # (\port_map_ula|port_map_sub|A1|A4|cout~combout\)) # 
-- (!\port_map_banco_de_registradores|registrador~70_combout\))) # (!\port_map_banco_de_registradores|registrador~54_combout\ & (\port_map_ula|port_map_sub|A1|A4|cout~combout\ & ((\port_map_unidade_controle|Mux7~0_combout\) # 
-- (!\port_map_banco_de_registradores|registrador~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~70_combout\,
	datab => \port_map_unidade_controle|Mux7~0_combout\,
	datac => \port_map_banco_de_registradores|registrador~54_combout\,
	datad => \port_map_ula|port_map_sub|A1|A4|cout~combout\,
	combout => \port_map_ula|port_map_sub|A1|A5|cout~combout\);

\port_map_ula|Mux5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux5~8_combout\ = \port_map_mult_2X1_br_ula|out_port[6]~6_combout\ $ (((!\port_map_mem_rom|Mux1~3_combout\ & (\port_map_banco_de_registradores|registrador~56_combout\ $ (!\port_map_ula|port_map_sub|A1|A5|cout~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult_2X1_br_ula|out_port[6]~6_combout\,
	datab => \port_map_mem_rom|Mux1~3_combout\,
	datac => \port_map_banco_de_registradores|registrador~56_combout\,
	datad => \port_map_ula|port_map_sub|A1|A5|cout~combout\,
	combout => \port_map_ula|Mux5~8_combout\);

\port_map_ula|port_map_adder|A5|cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_adder|A5|cout~0_combout\ = (\port_map_banco_de_registradores|registrador~54_combout\ & ((\port_map_ula|port_map_adder|A4|cout~0_combout\) # ((!\port_map_unidade_controle|Mux7~0_combout\ & 
-- \port_map_banco_de_registradores|registrador~70_combout\)))) # (!\port_map_banco_de_registradores|registrador~54_combout\ & (!\port_map_unidade_controle|Mux7~0_combout\ & (\port_map_banco_de_registradores|registrador~70_combout\ & 
-- \port_map_ula|port_map_adder|A4|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|Mux7~0_combout\,
	datab => \port_map_banco_de_registradores|registrador~70_combout\,
	datac => \port_map_banco_de_registradores|registrador~54_combout\,
	datad => \port_map_ula|port_map_adder|A4|cout~0_combout\,
	combout => \port_map_ula|port_map_adder|A5|cout~0_combout\);

\port_map_ula|Mux5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux5~9_combout\ = \port_map_banco_de_registradores|registrador~56_combout\ $ (((!\port_map_mem_rom|Mux1~3_combout\ & (\port_map_mult_2X1_br_ula|out_port[6]~6_combout\ $ (\port_map_ula|port_map_adder|A5|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~56_combout\,
	datab => \port_map_mem_rom|Mux1~3_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[6]~6_combout\,
	datad => \port_map_ula|port_map_adder|A5|cout~0_combout\,
	combout => \port_map_ula|Mux5~9_combout\);

\port_map_ula|Mux5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux5~10_combout\ = (!\port_map_mem_rom|Mux0~5_combout\ & ((\port_map_unidade_controle|Mux4~2_combout\ & (\port_map_ula|Mux5~8_combout\)) # (!\port_map_unidade_controle|Mux4~2_combout\ & ((\port_map_ula|Mux5~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|Mux5~8_combout\,
	datab => \port_map_ula|Mux5~9_combout\,
	datac => \port_map_unidade_controle|Mux4~2_combout\,
	datad => \port_map_mem_rom|Mux0~5_combout\,
	combout => \port_map_ula|Mux5~10_combout\);

\port_map_ula|port_map_multi|Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add0~17_combout\ = (\port_map_banco_de_registradores|registrador~56_combout\ & (!\port_map_ula|port_map_multi|Add0~15\ & VCC)) # (!\port_map_banco_de_registradores|registrador~56_combout\ & 
-- (\port_map_ula|port_map_multi|Add0~15\ $ (GND)))
-- \port_map_ula|port_map_multi|Add0~18\ = CARRY((!\port_map_banco_de_registradores|registrador~56_combout\ & !\port_map_ula|port_map_multi|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~56_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add0~15\,
	combout => \port_map_ula|port_map_multi|Add0~17_combout\,
	cout => \port_map_ula|port_map_multi|Add0~18\);

\port_map_ula|port_map_multi|Add0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add0~19_combout\ = (\port_map_ula|port_map_multi|Add0~17_combout\ & ((\port_map_unidade_controle|Mux7~0_combout\ & (\port_map_mem_rom|Mux7~2_combout\)) # (!\port_map_unidade_controle|Mux7~0_combout\ & 
-- ((\port_map_banco_de_registradores|registrador~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add0~17_combout\,
	datab => \port_map_mem_rom|Mux7~2_combout\,
	datac => \port_map_banco_de_registradores|registrador~60_combout\,
	datad => \port_map_unidade_controle|Mux7~0_combout\,
	combout => \port_map_ula|port_map_multi|Add0~19_combout\);

\port_map_ula|port_map_multi|Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add2~10_combout\ = (\port_map_banco_de_registradores|registrador~54_combout\ & ((\port_map_ula|port_map_multi|Add0~19_combout\ & (!\port_map_ula|port_map_multi|Add2~9\)) # (!\port_map_ula|port_map_multi|Add0~19_combout\ & 
-- ((\port_map_ula|port_map_multi|Add2~9\) # (GND))))) # (!\port_map_banco_de_registradores|registrador~54_combout\ & ((\port_map_ula|port_map_multi|Add0~19_combout\ & (\port_map_ula|port_map_multi|Add2~9\ & VCC)) # 
-- (!\port_map_ula|port_map_multi|Add0~19_combout\ & (!\port_map_ula|port_map_multi|Add2~9\))))
-- \port_map_ula|port_map_multi|Add2~11\ = CARRY((\port_map_banco_de_registradores|registrador~54_combout\ & ((!\port_map_ula|port_map_multi|Add2~9\) # (!\port_map_ula|port_map_multi|Add0~19_combout\))) # 
-- (!\port_map_banco_de_registradores|registrador~54_combout\ & (!\port_map_ula|port_map_multi|Add0~19_combout\ & !\port_map_ula|port_map_multi|Add2~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~54_combout\,
	datab => \port_map_ula|port_map_multi|Add0~19_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add2~9\,
	combout => \port_map_ula|port_map_multi|Add2~10_combout\,
	cout => \port_map_ula|port_map_multi|Add2~11\);

\port_map_ula|port_map_multi|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add1~18_combout\ = (\port_map_banco_de_registradores|registrador~54_combout\ & ((\port_map_ula|port_map_multi|Add0~19_combout\ & (\port_map_ula|port_map_multi|Add1~15\ & VCC)) # (!\port_map_ula|port_map_multi|Add0~19_combout\ 
-- & (!\port_map_ula|port_map_multi|Add1~15\)))) # (!\port_map_banco_de_registradores|registrador~54_combout\ & ((\port_map_ula|port_map_multi|Add0~19_combout\ & (!\port_map_ula|port_map_multi|Add1~15\)) # (!\port_map_ula|port_map_multi|Add0~19_combout\ & 
-- ((\port_map_ula|port_map_multi|Add1~15\) # (GND)))))
-- \port_map_ula|port_map_multi|Add1~19\ = CARRY((\port_map_banco_de_registradores|registrador~54_combout\ & (!\port_map_ula|port_map_multi|Add0~19_combout\ & !\port_map_ula|port_map_multi|Add1~15\)) # 
-- (!\port_map_banco_de_registradores|registrador~54_combout\ & ((!\port_map_ula|port_map_multi|Add1~15\) # (!\port_map_ula|port_map_multi|Add0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~54_combout\,
	datab => \port_map_ula|port_map_multi|Add0~19_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add1~15\,
	combout => \port_map_ula|port_map_multi|Add1~18_combout\,
	cout => \port_map_ula|port_map_multi|Add1~19\);

\port_map_ula|port_map_multi|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add1~20_combout\ = (\port_map_mult_2X1_br_ula|out_port[0]~0_combout\ & (((\port_map_ula|port_map_multi|Add1~18_combout\ & !\port_map_mult_2X1_br_ula|out_port[1]~1_combout\)))) # 
-- (!\port_map_mult_2X1_br_ula|out_port[0]~0_combout\ & (\port_map_ula|port_map_multi|Add2~10_combout\ & ((\port_map_mult_2X1_br_ula|out_port[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add2~10_combout\,
	datab => \port_map_ula|port_map_multi|Add1~18_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[0]~0_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[1]~1_combout\,
	combout => \port_map_ula|port_map_multi|Add1~20_combout\);

\port_map_ula|port_map_multi|Add1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add1~21_combout\ = (\port_map_ula|port_map_multi|Add1~20_combout\) # ((\port_map_ula|port_map_multi|Add0~19_combout\ & (\port_map_mult_2X1_br_ula|out_port[0]~0_combout\ $ (!\port_map_mult_2X1_br_ula|out_port[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add1~20_combout\,
	datab => \port_map_ula|port_map_multi|Add0~19_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[0]~0_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[1]~1_combout\,
	combout => \port_map_ula|port_map_multi|Add1~21_combout\);

\port_map_ula|port_map_multi|Add4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add4~8_combout\ = ((\port_map_banco_de_registradores|registrador~52_combout\ $ (\port_map_ula|port_map_multi|Add1~21_combout\ $ (\port_map_ula|port_map_multi|Add4~7\)))) # (GND)
-- \port_map_ula|port_map_multi|Add4~9\ = CARRY((\port_map_banco_de_registradores|registrador~52_combout\ & (\port_map_ula|port_map_multi|Add1~21_combout\ & !\port_map_ula|port_map_multi|Add4~7\)) # (!\port_map_banco_de_registradores|registrador~52_combout\ 
-- & ((\port_map_ula|port_map_multi|Add1~21_combout\) # (!\port_map_ula|port_map_multi|Add4~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~52_combout\,
	datab => \port_map_ula|port_map_multi|Add1~21_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add4~7\,
	combout => \port_map_ula|port_map_multi|Add4~8_combout\,
	cout => \port_map_ula|port_map_multi|Add4~9\);

\port_map_ula|port_map_multi|Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add3~14_combout\ = ((\port_map_banco_de_registradores|registrador~52_combout\ $ (\port_map_ula|port_map_multi|Add1~21_combout\ $ (!\port_map_ula|port_map_multi|Add3~11\)))) # (GND)
-- \port_map_ula|port_map_multi|Add3~15\ = CARRY((\port_map_banco_de_registradores|registrador~52_combout\ & ((\port_map_ula|port_map_multi|Add1~21_combout\) # (!\port_map_ula|port_map_multi|Add3~11\))) # 
-- (!\port_map_banco_de_registradores|registrador~52_combout\ & (\port_map_ula|port_map_multi|Add1~21_combout\ & !\port_map_ula|port_map_multi|Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~52_combout\,
	datab => \port_map_ula|port_map_multi|Add1~21_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add3~11\,
	combout => \port_map_ula|port_map_multi|Add3~14_combout\,
	cout => \port_map_ula|port_map_multi|Add3~15\);

\port_map_ula|port_map_multi|Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add3~16_combout\ = (\port_map_mult_2X1_br_ula|out_port[1]~1_combout\ & (((\port_map_ula|port_map_multi|Add3~14_combout\ & !\port_map_mult_2X1_br_ula|out_port[2]~2_combout\)))) # 
-- (!\port_map_mult_2X1_br_ula|out_port[1]~1_combout\ & (\port_map_ula|port_map_multi|Add4~8_combout\ & ((\port_map_mult_2X1_br_ula|out_port[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add4~8_combout\,
	datab => \port_map_ula|port_map_multi|Add3~14_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[1]~1_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[2]~2_combout\,
	combout => \port_map_ula|port_map_multi|Add3~16_combout\);

\port_map_ula|port_map_multi|Add3~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add3~17_combout\ = (\port_map_ula|port_map_multi|Add3~16_combout\) # ((\port_map_ula|port_map_multi|Add1~21_combout\ & (\port_map_mult_2X1_br_ula|out_port[1]~1_combout\ $ (!\port_map_mult_2X1_br_ula|out_port[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add3~16_combout\,
	datab => \port_map_ula|port_map_multi|Add1~21_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[1]~1_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[2]~2_combout\,
	combout => \port_map_ula|port_map_multi|Add3~17_combout\);

\port_map_ula|port_map_multi|Add5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add5~10_combout\ = (\port_map_banco_de_registradores|registrador~50_combout\ & ((\port_map_ula|port_map_multi|Add3~17_combout\ & (\port_map_ula|port_map_multi|Add5~7\ & VCC)) # (!\port_map_ula|port_map_multi|Add3~17_combout\ & 
-- (!\port_map_ula|port_map_multi|Add5~7\)))) # (!\port_map_banco_de_registradores|registrador~50_combout\ & ((\port_map_ula|port_map_multi|Add3~17_combout\ & (!\port_map_ula|port_map_multi|Add5~7\)) # (!\port_map_ula|port_map_multi|Add3~17_combout\ & 
-- ((\port_map_ula|port_map_multi|Add5~7\) # (GND)))))
-- \port_map_ula|port_map_multi|Add5~11\ = CARRY((\port_map_banco_de_registradores|registrador~50_combout\ & (!\port_map_ula|port_map_multi|Add3~17_combout\ & !\port_map_ula|port_map_multi|Add5~7\)) # 
-- (!\port_map_banco_de_registradores|registrador~50_combout\ & ((!\port_map_ula|port_map_multi|Add5~7\) # (!\port_map_ula|port_map_multi|Add3~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~50_combout\,
	datab => \port_map_ula|port_map_multi|Add3~17_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add5~7\,
	combout => \port_map_ula|port_map_multi|Add5~10_combout\,
	cout => \port_map_ula|port_map_multi|Add5~11\);

\port_map_ula|port_map_multi|Add6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add6~6_combout\ = (\port_map_banco_de_registradores|registrador~50_combout\ & ((\port_map_ula|port_map_multi|Add3~17_combout\ & (!\port_map_ula|port_map_multi|Add6~5\)) # (!\port_map_ula|port_map_multi|Add3~17_combout\ & 
-- ((\port_map_ula|port_map_multi|Add6~5\) # (GND))))) # (!\port_map_banco_de_registradores|registrador~50_combout\ & ((\port_map_ula|port_map_multi|Add3~17_combout\ & (\port_map_ula|port_map_multi|Add6~5\ & VCC)) # 
-- (!\port_map_ula|port_map_multi|Add3~17_combout\ & (!\port_map_ula|port_map_multi|Add6~5\))))
-- \port_map_ula|port_map_multi|Add6~7\ = CARRY((\port_map_banco_de_registradores|registrador~50_combout\ & ((!\port_map_ula|port_map_multi|Add6~5\) # (!\port_map_ula|port_map_multi|Add3~17_combout\))) # 
-- (!\port_map_banco_de_registradores|registrador~50_combout\ & (!\port_map_ula|port_map_multi|Add3~17_combout\ & !\port_map_ula|port_map_multi|Add6~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~50_combout\,
	datab => \port_map_ula|port_map_multi|Add3~17_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add6~5\,
	combout => \port_map_ula|port_map_multi|Add6~6_combout\,
	cout => \port_map_ula|port_map_multi|Add6~7\);

\port_map_ula|port_map_multi|Add5~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add5~12_combout\ = (\port_map_mult_2X1_br_ula|out_port[2]~2_combout\ & ((\port_map_ula|port_map_multi|Add3~17_combout\) # ((!\port_map_mult_2X1_br_ula|out_port[3]~3_combout\)))) # 
-- (!\port_map_mult_2X1_br_ula|out_port[2]~2_combout\ & ((\port_map_mult_2X1_br_ula|out_port[3]~3_combout\ & ((\port_map_ula|port_map_multi|Add6~6_combout\))) # (!\port_map_mult_2X1_br_ula|out_port[3]~3_combout\ & 
-- (\port_map_ula|port_map_multi|Add3~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add3~17_combout\,
	datab => \port_map_mult_2X1_br_ula|out_port[2]~2_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[3]~3_combout\,
	datad => \port_map_ula|port_map_multi|Add6~6_combout\,
	combout => \port_map_ula|port_map_multi|Add5~12_combout\);

\port_map_ula|port_map_multi|Add5~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add5~13_combout\ = (\port_map_mult_2X1_br_ula|out_port[2]~2_combout\ & ((\port_map_mult_2X1_br_ula|out_port[3]~3_combout\ & ((\port_map_ula|port_map_multi|Add5~12_combout\))) # 
-- (!\port_map_mult_2X1_br_ula|out_port[3]~3_combout\ & (\port_map_ula|port_map_multi|Add5~10_combout\)))) # (!\port_map_mult_2X1_br_ula|out_port[2]~2_combout\ & (((\port_map_ula|port_map_multi|Add5~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult_2X1_br_ula|out_port[2]~2_combout\,
	datab => \port_map_mult_2X1_br_ula|out_port[3]~3_combout\,
	datac => \port_map_ula|port_map_multi|Add5~10_combout\,
	datad => \port_map_ula|port_map_multi|Add5~12_combout\,
	combout => \port_map_ula|port_map_multi|Add5~13_combout\);

\port_map_ula|port_map_multi|Add8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add8~4_combout\ = ((\port_map_banco_de_registradores|registrador~48_combout\ $ (\port_map_ula|port_map_multi|Add5~13_combout\ $ (\port_map_ula|port_map_multi|Add8~3\)))) # (GND)
-- \port_map_ula|port_map_multi|Add8~5\ = CARRY((\port_map_banco_de_registradores|registrador~48_combout\ & (\port_map_ula|port_map_multi|Add5~13_combout\ & !\port_map_ula|port_map_multi|Add8~3\)) # (!\port_map_banco_de_registradores|registrador~48_combout\ 
-- & ((\port_map_ula|port_map_multi|Add5~13_combout\) # (!\port_map_ula|port_map_multi|Add8~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~48_combout\,
	datab => \port_map_ula|port_map_multi|Add5~13_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add8~3\,
	combout => \port_map_ula|port_map_multi|Add8~4_combout\,
	cout => \port_map_ula|port_map_multi|Add8~5\);

\port_map_ula|port_map_multi|Add7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add7~6_combout\ = ((\port_map_banco_de_registradores|registrador~48_combout\ $ (\port_map_ula|port_map_multi|Add5~13_combout\ $ (!\port_map_ula|port_map_multi|Add7~3\)))) # (GND)
-- \port_map_ula|port_map_multi|Add7~7\ = CARRY((\port_map_banco_de_registradores|registrador~48_combout\ & ((\port_map_ula|port_map_multi|Add5~13_combout\) # (!\port_map_ula|port_map_multi|Add7~3\))) # 
-- (!\port_map_banco_de_registradores|registrador~48_combout\ & (\port_map_ula|port_map_multi|Add5~13_combout\ & !\port_map_ula|port_map_multi|Add7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~48_combout\,
	datab => \port_map_ula|port_map_multi|Add5~13_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add7~3\,
	combout => \port_map_ula|port_map_multi|Add7~6_combout\,
	cout => \port_map_ula|port_map_multi|Add7~7\);

\port_map_ula|port_map_multi|Add7~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add7~8_combout\ = (\port_map_mult_2X1_br_ula|out_port[3]~3_combout\ & ((\port_map_mult_2X1_br_ula|out_port[4]~4_combout\ & (\port_map_ula|port_map_multi|Add5~13_combout\)) # (!\port_map_mult_2X1_br_ula|out_port[4]~4_combout\ & 
-- ((\port_map_ula|port_map_multi|Add7~6_combout\))))) # (!\port_map_mult_2X1_br_ula|out_port[3]~3_combout\ & ((\port_map_ula|port_map_multi|Add5~13_combout\) # ((\port_map_mult_2X1_br_ula|out_port[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add5~13_combout\,
	datab => \port_map_mult_2X1_br_ula|out_port[3]~3_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[4]~4_combout\,
	datad => \port_map_ula|port_map_multi|Add7~6_combout\,
	combout => \port_map_ula|port_map_multi|Add7~8_combout\);

\port_map_ula|port_map_multi|Add7~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add7~9_combout\ = (\port_map_mult_2X1_br_ula|out_port[3]~3_combout\ & (((\port_map_ula|port_map_multi|Add7~8_combout\)))) # (!\port_map_mult_2X1_br_ula|out_port[3]~3_combout\ & 
-- ((\port_map_mult_2X1_br_ula|out_port[4]~4_combout\ & (\port_map_ula|port_map_multi|Add8~4_combout\)) # (!\port_map_mult_2X1_br_ula|out_port[4]~4_combout\ & ((\port_map_ula|port_map_multi|Add7~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult_2X1_br_ula|out_port[3]~3_combout\,
	datab => \port_map_mult_2X1_br_ula|out_port[4]~4_combout\,
	datac => \port_map_ula|port_map_multi|Add8~4_combout\,
	datad => \port_map_ula|port_map_multi|Add7~8_combout\,
	combout => \port_map_ula|port_map_multi|Add7~9_combout\);

\port_map_ula|port_map_multi|Add10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add10~2_combout\ = (\port_map_banco_de_registradores|registrador~46_combout\ & ((\port_map_ula|port_map_multi|Add7~9_combout\ & (!\port_map_ula|port_map_multi|Add10~1\)) # (!\port_map_ula|port_map_multi|Add7~9_combout\ & 
-- ((\port_map_ula|port_map_multi|Add10~1\) # (GND))))) # (!\port_map_banco_de_registradores|registrador~46_combout\ & ((\port_map_ula|port_map_multi|Add7~9_combout\ & (\port_map_ula|port_map_multi|Add10~1\ & VCC)) # 
-- (!\port_map_ula|port_map_multi|Add7~9_combout\ & (!\port_map_ula|port_map_multi|Add10~1\))))
-- \port_map_ula|port_map_multi|Add10~3\ = CARRY((\port_map_banco_de_registradores|registrador~46_combout\ & ((!\port_map_ula|port_map_multi|Add10~1\) # (!\port_map_ula|port_map_multi|Add7~9_combout\))) # 
-- (!\port_map_banco_de_registradores|registrador~46_combout\ & (!\port_map_ula|port_map_multi|Add7~9_combout\ & !\port_map_ula|port_map_multi|Add10~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~46_combout\,
	datab => \port_map_ula|port_map_multi|Add7~9_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add10~1\,
	combout => \port_map_ula|port_map_multi|Add10~2_combout\,
	cout => \port_map_ula|port_map_multi|Add10~3\);

\port_map_ula|port_map_multi|Add9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add9~2_combout\ = (\port_map_banco_de_registradores|registrador~46_combout\ & ((\port_map_ula|port_map_multi|Add7~9_combout\ & (\port_map_ula|port_map_multi|Add9~1\ & VCC)) # (!\port_map_ula|port_map_multi|Add7~9_combout\ & 
-- (!\port_map_ula|port_map_multi|Add9~1\)))) # (!\port_map_banco_de_registradores|registrador~46_combout\ & ((\port_map_ula|port_map_multi|Add7~9_combout\ & (!\port_map_ula|port_map_multi|Add9~1\)) # (!\port_map_ula|port_map_multi|Add7~9_combout\ & 
-- ((\port_map_ula|port_map_multi|Add9~1\) # (GND)))))
-- \port_map_ula|port_map_multi|Add9~3\ = CARRY((\port_map_banco_de_registradores|registrador~46_combout\ & (!\port_map_ula|port_map_multi|Add7~9_combout\ & !\port_map_ula|port_map_multi|Add9~1\)) # (!\port_map_banco_de_registradores|registrador~46_combout\ 
-- & ((!\port_map_ula|port_map_multi|Add9~1\) # (!\port_map_ula|port_map_multi|Add7~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~46_combout\,
	datab => \port_map_ula|port_map_multi|Add7~9_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add9~1\,
	combout => \port_map_ula|port_map_multi|Add9~2_combout\,
	cout => \port_map_ula|port_map_multi|Add9~3\);

\port_map_ula|port_map_multi|Add9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add9~4_combout\ = (\port_map_mult_2X1_br_ula|out_port[4]~4_combout\ & (((\port_map_ula|port_map_multi|Add9~2_combout\ & !\port_map_mult_2X1_br_ula|out_port[5]~5_combout\)))) # (!\port_map_mult_2X1_br_ula|out_port[4]~4_combout\ 
-- & (\port_map_ula|port_map_multi|Add10~2_combout\ & ((\port_map_mult_2X1_br_ula|out_port[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add10~2_combout\,
	datab => \port_map_ula|port_map_multi|Add9~2_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[4]~4_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[5]~5_combout\,
	combout => \port_map_ula|port_map_multi|Add9~4_combout\);

\port_map_ula|port_map_multi|Add9~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add9~5_combout\ = (\port_map_ula|port_map_multi|Add9~4_combout\) # ((\port_map_ula|port_map_multi|Add7~9_combout\ & (\port_map_mult_2X1_br_ula|out_port[4]~4_combout\ $ (!\port_map_mult_2X1_br_ula|out_port[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add9~4_combout\,
	datab => \port_map_ula|port_map_multi|Add7~9_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[4]~4_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[5]~5_combout\,
	combout => \port_map_ula|port_map_multi|Add9~5_combout\);

\port_map_ula|Mux5~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux5~13_combout\ = (\port_map_ula|port_map_multi|Add9~5_combout\ & ((\port_map_unidade_controle|Mux7~0_combout\) # (\port_map_banco_de_registradores|registrador~72_combout\ $ (!\port_map_banco_de_registradores|registrador~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~72_combout\,
	datab => \port_map_unidade_controle|Mux7~0_combout\,
	datac => \port_map_banco_de_registradores|registrador~70_combout\,
	datad => \port_map_ula|port_map_multi|Add9~5_combout\,
	combout => \port_map_ula|Mux5~13_combout\);

\port_map_ula|port_map_multi|Add12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add12~0_combout\ = (\port_map_banco_de_registradores|registrador~44_combout\ & (\port_map_ula|port_map_multi|Add9~5_combout\ $ (VCC))) # (!\port_map_banco_de_registradores|registrador~44_combout\ & 
-- ((\port_map_ula|port_map_multi|Add9~5_combout\) # (GND)))
-- \port_map_ula|port_map_multi|Add12~1\ = CARRY((\port_map_ula|port_map_multi|Add9~5_combout\) # (!\port_map_banco_de_registradores|registrador~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~44_combout\,
	datab => \port_map_ula|port_map_multi|Add9~5_combout\,
	datad => VCC,
	combout => \port_map_ula|port_map_multi|Add12~0_combout\,
	cout => \port_map_ula|port_map_multi|Add12~1\);

\port_map_ula|port_map_multi|Add11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add11~0_combout\ = (\port_map_banco_de_registradores|registrador~44_combout\ & (\port_map_ula|port_map_multi|Add9~5_combout\ $ (VCC))) # (!\port_map_banco_de_registradores|registrador~44_combout\ & 
-- (\port_map_ula|port_map_multi|Add9~5_combout\ & VCC))
-- \port_map_ula|port_map_multi|Add11~1\ = CARRY((\port_map_banco_de_registradores|registrador~44_combout\ & \port_map_ula|port_map_multi|Add9~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~44_combout\,
	datab => \port_map_ula|port_map_multi|Add9~5_combout\,
	datad => VCC,
	combout => \port_map_ula|port_map_multi|Add11~0_combout\,
	cout => \port_map_ula|port_map_multi|Add11~1\);

\port_map_ula|Mux5~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux5~11_combout\ = (\port_map_mult_2X1_br_ula|out_port[5]~5_combout\ & (((\port_map_ula|port_map_multi|Add11~0_combout\ & !\port_map_mult_2X1_br_ula|out_port[6]~6_combout\)))) # (!\port_map_mult_2X1_br_ula|out_port[5]~5_combout\ & 
-- (\port_map_ula|port_map_multi|Add12~0_combout\ & ((\port_map_mult_2X1_br_ula|out_port[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add12~0_combout\,
	datab => \port_map_ula|port_map_multi|Add11~0_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[5]~5_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[6]~6_combout\,
	combout => \port_map_ula|Mux5~11_combout\);

\port_map_ula|Mux5~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux5~12_combout\ = (\port_map_ula|Mux5~10_combout\) # ((\port_map_ula|Mux4~10_combout\ & ((\port_map_ula|Mux5~13_combout\) # (\port_map_ula|Mux5~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|Mux5~10_combout\,
	datab => \port_map_ula|Mux4~10_combout\,
	datac => \port_map_ula|Mux5~13_combout\,
	datad => \port_map_ula|Mux5~11_combout\,
	combout => \port_map_ula|Mux5~12_combout\);

\port_map_mem_ram|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux5~12_combout\,
	ena => \port_map_mem_ram|ram~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|ram~34_q\);

\port_map_mem_ram|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux5~12_combout\,
	ena => \port_map_mem_ram|ram~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|ram~26_q\);

\port_map_mem_ram|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux5~12_combout\,
	ena => \port_map_mem_ram|ram~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|ram~18_q\);

\port_map_mem_ram|ram~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_ram|ram~89_combout\ = (\port_map_mem_rom|Mux6~1_combout\ & (((\port_map_mem_rom|Mux7~2_combout\)))) # (!\port_map_mem_rom|Mux6~1_combout\ & ((\port_map_mem_rom|Mux7~2_combout\ & (\port_map_mem_ram|ram~26_q\)) # 
-- (!\port_map_mem_rom|Mux7~2_combout\ & ((\port_map_mem_ram|ram~18_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux6~1_combout\,
	datab => \port_map_mem_ram|ram~26_q\,
	datac => \port_map_mem_rom|Mux7~2_combout\,
	datad => \port_map_mem_ram|ram~18_q\,
	combout => \port_map_mem_ram|ram~89_combout\);

\port_map_mem_ram|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux5~12_combout\,
	ena => \port_map_mem_ram|ram~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|ram~42_q\);

\port_map_mem_ram|ram~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_ram|ram~90_combout\ = (\port_map_mem_rom|Mux6~1_combout\ & ((\port_map_mem_ram|ram~89_combout\ & ((\port_map_mem_ram|ram~42_q\))) # (!\port_map_mem_ram|ram~89_combout\ & (\port_map_mem_ram|ram~34_q\)))) # (!\port_map_mem_rom|Mux6~1_combout\ 
-- & (((\port_map_mem_ram|ram~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_ram|ram~34_q\,
	datab => \port_map_mem_rom|Mux6~1_combout\,
	datac => \port_map_mem_ram|ram~89_combout\,
	datad => \port_map_mem_ram|ram~42_q\,
	combout => \port_map_mem_ram|ram~90_combout\);

\port_map_mem_ram|out_port[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mem_ram|ram~90_combout\,
	ena => \port_map_unidade_controle|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|out_port\(6));

\port_map_mult_2X1_ram_ula|out_port[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mult_2X1_ram_ula|out_port[6]~6_combout\ = (\port_map_unidade_controle|Mux3~0_combout\ & (\port_map_mem_ram|out_port\(6))) # (!\port_map_unidade_controle|Mux3~0_combout\ & ((\port_map_ula|Mux5~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_ram|out_port\(6),
	datab => \port_map_ula|Mux5~12_combout\,
	datad => \port_map_unidade_controle|Mux3~0_combout\,
	combout => \port_map_mult_2X1_ram_ula|out_port[6]~6_combout\);

\port_map_banco_de_registradores|registrador~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_ram_ula|out_port[6]~6_combout\,
	ena => \port_map_banco_de_registradores|registrador~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registrador~33_q\);

\port_map_banco_de_registradores|registrador~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registrador~71_combout\ = (\port_map_mem_rom|Mux6~1_combout\ & (((\port_map_mem_rom|Mux7~2_combout\)))) # (!\port_map_mem_rom|Mux6~1_combout\ & ((\port_map_mem_rom|Mux7~2_combout\ & 
-- (\port_map_banco_de_registradores|registrador~25_q\)) # (!\port_map_mem_rom|Mux7~2_combout\ & ((\port_map_banco_de_registradores|registrador~17_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux6~1_combout\,
	datab => \port_map_banco_de_registradores|registrador~25_q\,
	datac => \port_map_mem_rom|Mux7~2_combout\,
	datad => \port_map_banco_de_registradores|registrador~17_q\,
	combout => \port_map_banco_de_registradores|registrador~71_combout\);

\port_map_banco_de_registradores|registrador~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registrador~72_combout\ = (\port_map_mem_rom|Mux6~1_combout\ & ((\port_map_banco_de_registradores|registrador~71_combout\ & ((\port_map_banco_de_registradores|registrador~41_q\))) # 
-- (!\port_map_banco_de_registradores|registrador~71_combout\ & (\port_map_banco_de_registradores|registrador~33_q\)))) # (!\port_map_mem_rom|Mux6~1_combout\ & (((\port_map_banco_de_registradores|registrador~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~33_q\,
	datab => \port_map_mem_rom|Mux6~1_combout\,
	datac => \port_map_banco_de_registradores|registrador~71_combout\,
	datad => \port_map_banco_de_registradores|registrador~41_q\,
	combout => \port_map_banco_de_registradores|registrador~72_combout\);

\port_map_mult_2X1_br_ula|out_port[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mult_2X1_br_ula|out_port[6]~6_combout\ = (\port_map_banco_de_registradores|registrador~72_combout\ & !\port_map_unidade_controle|Mux7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~72_combout\,
	datad => \port_map_unidade_controle|Mux7~0_combout\,
	combout => \port_map_mult_2X1_br_ula|out_port[6]~6_combout\);

\port_map_banco_de_registradores|registrador~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_ram_ula|out_port[7]~7_combout\,
	ena => \port_map_banco_de_registradores|registrador~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registrador~34_q\);

\port_map_banco_de_registradores|registrador~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_ram_ula|out_port[7]~7_combout\,
	ena => \port_map_banco_de_registradores|registrador~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registrador~18_q\);

\port_map_banco_de_registradores|registrador~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registrador~57_combout\ = (\port_map_mem_rom|Mux5~2_combout\ & (((\port_map_mem_rom|Mux4~1_combout\)))) # (!\port_map_mem_rom|Mux5~2_combout\ & ((\port_map_mem_rom|Mux4~1_combout\ & 
-- (\port_map_banco_de_registradores|registrador~34_q\)) # (!\port_map_mem_rom|Mux4~1_combout\ & ((\port_map_banco_de_registradores|registrador~18_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux5~2_combout\,
	datab => \port_map_banco_de_registradores|registrador~34_q\,
	datac => \port_map_mem_rom|Mux4~1_combout\,
	datad => \port_map_banco_de_registradores|registrador~18_q\,
	combout => \port_map_banco_de_registradores|registrador~57_combout\);

\port_map_banco_de_registradores|registrador~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_ram_ula|out_port[7]~7_combout\,
	ena => \port_map_banco_de_registradores|registrador~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registrador~42_q\);

\port_map_banco_de_registradores|registrador~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registrador~58_combout\ = (\port_map_mem_rom|Mux5~2_combout\ & ((\port_map_banco_de_registradores|registrador~57_combout\ & ((\port_map_banco_de_registradores|registrador~42_q\))) # 
-- (!\port_map_banco_de_registradores|registrador~57_combout\ & (\port_map_banco_de_registradores|registrador~26_q\)))) # (!\port_map_mem_rom|Mux5~2_combout\ & (((\port_map_banco_de_registradores|registrador~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~26_q\,
	datab => \port_map_mem_rom|Mux5~2_combout\,
	datac => \port_map_banco_de_registradores|registrador~57_combout\,
	datad => \port_map_banco_de_registradores|registrador~42_q\,
	combout => \port_map_banco_de_registradores|registrador~58_combout\);

\port_map_ula|port_map_adder|A6|cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_adder|A6|cout~0_combout\ = (\port_map_banco_de_registradores|registrador~56_combout\ & ((\port_map_ula|port_map_adder|A5|cout~0_combout\) # ((!\port_map_unidade_controle|Mux7~0_combout\ & 
-- \port_map_banco_de_registradores|registrador~72_combout\)))) # (!\port_map_banco_de_registradores|registrador~56_combout\ & (!\port_map_unidade_controle|Mux7~0_combout\ & (\port_map_banco_de_registradores|registrador~72_combout\ & 
-- \port_map_ula|port_map_adder|A5|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|Mux7~0_combout\,
	datab => \port_map_banco_de_registradores|registrador~72_combout\,
	datac => \port_map_banco_de_registradores|registrador~56_combout\,
	datad => \port_map_ula|port_map_adder|A5|cout~0_combout\,
	combout => \port_map_ula|port_map_adder|A6|cout~0_combout\);

\port_map_ula|Mux4~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux4~16_combout\ = (\port_map_banco_de_registradores|registrador~56_combout\ & (((\port_map_unidade_controle|Mux7~0_combout\) # (\port_map_ula|port_map_sub|A1|A5|cout~combout\)) # (!\port_map_banco_de_registradores|registrador~72_combout\))) 
-- # (!\port_map_banco_de_registradores|registrador~56_combout\ & (\port_map_ula|port_map_sub|A1|A5|cout~combout\ & ((\port_map_unidade_controle|Mux7~0_combout\) # (!\port_map_banco_de_registradores|registrador~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~72_combout\,
	datab => \port_map_unidade_controle|Mux7~0_combout\,
	datac => \port_map_banco_de_registradores|registrador~56_combout\,
	datad => \port_map_ula|port_map_sub|A1|A5|cout~combout\,
	combout => \port_map_ula|Mux4~16_combout\);

\port_map_ula|Mux4~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux4~11_combout\ = (\port_map_mem_rom|Mux1~3_combout\ & (\port_map_unidade_controle|Mux4~2_combout\)) # (!\port_map_mem_rom|Mux1~3_combout\ & ((\port_map_unidade_controle|Mux4~2_combout\ & ((!\port_map_ula|Mux4~16_combout\))) # 
-- (!\port_map_unidade_controle|Mux4~2_combout\ & (\port_map_ula|port_map_adder|A6|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux1~3_combout\,
	datab => \port_map_unidade_controle|Mux4~2_combout\,
	datac => \port_map_ula|port_map_adder|A6|cout~0_combout\,
	datad => \port_map_ula|Mux4~16_combout\,
	combout => \port_map_ula|Mux4~11_combout\);

\port_map_ula|Mux4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux4~12_combout\ = (\port_map_mem_rom|Mux1~3_combout\ & ((\port_map_ula|Mux4~11_combout\ & ((\port_map_mult_2X1_br_ula|out_port[7]~7_combout\))) # (!\port_map_ula|Mux4~11_combout\ & 
-- (\port_map_banco_de_registradores|registrador~58_combout\)))) # (!\port_map_mem_rom|Mux1~3_combout\ & (\port_map_banco_de_registradores|registrador~58_combout\ $ (\port_map_mult_2X1_br_ula|out_port[7]~7_combout\ $ (\port_map_ula|Mux4~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~58_combout\,
	datab => \port_map_mult_2X1_br_ula|out_port[7]~7_combout\,
	datac => \port_map_mem_rom|Mux1~3_combout\,
	datad => \port_map_ula|Mux4~11_combout\,
	combout => \port_map_ula|Mux4~12_combout\);

\port_map_ula|port_map_multi|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add0~20_combout\ = \port_map_banco_de_registradores|registrador~58_combout\ $ (!\port_map_ula|port_map_multi|Add0~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~58_combout\,
	cin => \port_map_ula|port_map_multi|Add0~18\,
	combout => \port_map_ula|port_map_multi|Add0~20_combout\);

\port_map_ula|port_map_multi|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add0~22_combout\ = (\port_map_ula|port_map_multi|Add0~20_combout\ & ((\port_map_unidade_controle|Mux7~0_combout\ & (\port_map_mem_rom|Mux7~2_combout\)) # (!\port_map_unidade_controle|Mux7~0_combout\ & 
-- ((\port_map_banco_de_registradores|registrador~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add0~20_combout\,
	datab => \port_map_mem_rom|Mux7~2_combout\,
	datac => \port_map_banco_de_registradores|registrador~60_combout\,
	datad => \port_map_unidade_controle|Mux7~0_combout\,
	combout => \port_map_ula|port_map_multi|Add0~22_combout\);

\port_map_ula|port_map_multi|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add1~22_combout\ = ((\port_map_banco_de_registradores|registrador~56_combout\ $ (\port_map_ula|port_map_multi|Add0~22_combout\ $ (!\port_map_ula|port_map_multi|Add1~19\)))) # (GND)
-- \port_map_ula|port_map_multi|Add1~23\ = CARRY((\port_map_banco_de_registradores|registrador~56_combout\ & ((\port_map_ula|port_map_multi|Add0~22_combout\) # (!\port_map_ula|port_map_multi|Add1~19\))) # 
-- (!\port_map_banco_de_registradores|registrador~56_combout\ & (\port_map_ula|port_map_multi|Add0~22_combout\ & !\port_map_ula|port_map_multi|Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~56_combout\,
	datab => \port_map_ula|port_map_multi|Add0~22_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add1~19\,
	combout => \port_map_ula|port_map_multi|Add1~22_combout\,
	cout => \port_map_ula|port_map_multi|Add1~23\);

\port_map_ula|port_map_multi|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add1~24_combout\ = (\port_map_mult_2X1_br_ula|out_port[0]~0_combout\ & ((\port_map_mult_2X1_br_ula|out_port[1]~1_combout\ & (\port_map_ula|port_map_multi|Add0~22_combout\)) # (!\port_map_mult_2X1_br_ula|out_port[1]~1_combout\ 
-- & ((\port_map_ula|port_map_multi|Add1~22_combout\))))) # (!\port_map_mult_2X1_br_ula|out_port[0]~0_combout\ & (\port_map_ula|port_map_multi|Add0~22_combout\ & ((!\port_map_mult_2X1_br_ula|out_port[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add0~22_combout\,
	datab => \port_map_mult_2X1_br_ula|out_port[0]~0_combout\,
	datac => \port_map_ula|port_map_multi|Add1~22_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[1]~1_combout\,
	combout => \port_map_ula|port_map_multi|Add1~24_combout\);

\port_map_ula|port_map_multi|Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add2~12_combout\ = ((\port_map_banco_de_registradores|registrador~56_combout\ $ (\port_map_ula|port_map_multi|Add0~22_combout\ $ (\port_map_ula|port_map_multi|Add2~11\)))) # (GND)
-- \port_map_ula|port_map_multi|Add2~13\ = CARRY((\port_map_banco_de_registradores|registrador~56_combout\ & (\port_map_ula|port_map_multi|Add0~22_combout\ & !\port_map_ula|port_map_multi|Add2~11\)) # 
-- (!\port_map_banco_de_registradores|registrador~56_combout\ & ((\port_map_ula|port_map_multi|Add0~22_combout\) # (!\port_map_ula|port_map_multi|Add2~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~56_combout\,
	datab => \port_map_ula|port_map_multi|Add0~22_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add2~11\,
	combout => \port_map_ula|port_map_multi|Add2~12_combout\,
	cout => \port_map_ula|port_map_multi|Add2~13\);

\port_map_ula|port_map_multi|Add1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add1~25_combout\ = (\port_map_ula|port_map_multi|Add1~24_combout\) # ((\port_map_mult_2X1_br_ula|out_port[1]~1_combout\ & (\port_map_ula|port_map_multi|Add2~12_combout\ & !\port_map_mult_2X1_br_ula|out_port[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add1~24_combout\,
	datab => \port_map_mult_2X1_br_ula|out_port[1]~1_combout\,
	datac => \port_map_ula|port_map_multi|Add2~12_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[0]~0_combout\,
	combout => \port_map_ula|port_map_multi|Add1~25_combout\);

\port_map_ula|port_map_multi|Add4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add4~10_combout\ = (\port_map_banco_de_registradores|registrador~54_combout\ & ((\port_map_ula|port_map_multi|Add1~25_combout\ & (!\port_map_ula|port_map_multi|Add4~9\)) # (!\port_map_ula|port_map_multi|Add1~25_combout\ & 
-- ((\port_map_ula|port_map_multi|Add4~9\) # (GND))))) # (!\port_map_banco_de_registradores|registrador~54_combout\ & ((\port_map_ula|port_map_multi|Add1~25_combout\ & (\port_map_ula|port_map_multi|Add4~9\ & VCC)) # 
-- (!\port_map_ula|port_map_multi|Add1~25_combout\ & (!\port_map_ula|port_map_multi|Add4~9\))))
-- \port_map_ula|port_map_multi|Add4~11\ = CARRY((\port_map_banco_de_registradores|registrador~54_combout\ & ((!\port_map_ula|port_map_multi|Add4~9\) # (!\port_map_ula|port_map_multi|Add1~25_combout\))) # 
-- (!\port_map_banco_de_registradores|registrador~54_combout\ & (!\port_map_ula|port_map_multi|Add1~25_combout\ & !\port_map_ula|port_map_multi|Add4~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~54_combout\,
	datab => \port_map_ula|port_map_multi|Add1~25_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add4~9\,
	combout => \port_map_ula|port_map_multi|Add4~10_combout\,
	cout => \port_map_ula|port_map_multi|Add4~11\);

\port_map_ula|port_map_multi|Add3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add3~18_combout\ = (\port_map_banco_de_registradores|registrador~54_combout\ & ((\port_map_ula|port_map_multi|Add1~25_combout\ & (\port_map_ula|port_map_multi|Add3~15\ & VCC)) # (!\port_map_ula|port_map_multi|Add1~25_combout\ 
-- & (!\port_map_ula|port_map_multi|Add3~15\)))) # (!\port_map_banco_de_registradores|registrador~54_combout\ & ((\port_map_ula|port_map_multi|Add1~25_combout\ & (!\port_map_ula|port_map_multi|Add3~15\)) # (!\port_map_ula|port_map_multi|Add1~25_combout\ & 
-- ((\port_map_ula|port_map_multi|Add3~15\) # (GND)))))
-- \port_map_ula|port_map_multi|Add3~19\ = CARRY((\port_map_banco_de_registradores|registrador~54_combout\ & (!\port_map_ula|port_map_multi|Add1~25_combout\ & !\port_map_ula|port_map_multi|Add3~15\)) # 
-- (!\port_map_banco_de_registradores|registrador~54_combout\ & ((!\port_map_ula|port_map_multi|Add3~15\) # (!\port_map_ula|port_map_multi|Add1~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~54_combout\,
	datab => \port_map_ula|port_map_multi|Add1~25_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add3~15\,
	combout => \port_map_ula|port_map_multi|Add3~18_combout\,
	cout => \port_map_ula|port_map_multi|Add3~19\);

\port_map_ula|port_map_multi|Add3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add3~20_combout\ = (\port_map_mult_2X1_br_ula|out_port[1]~1_combout\ & (((\port_map_ula|port_map_multi|Add3~18_combout\ & !\port_map_mult_2X1_br_ula|out_port[2]~2_combout\)))) # 
-- (!\port_map_mult_2X1_br_ula|out_port[1]~1_combout\ & (\port_map_ula|port_map_multi|Add4~10_combout\ & ((\port_map_mult_2X1_br_ula|out_port[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add4~10_combout\,
	datab => \port_map_ula|port_map_multi|Add3~18_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[1]~1_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[2]~2_combout\,
	combout => \port_map_ula|port_map_multi|Add3~20_combout\);

\port_map_ula|port_map_multi|Add3~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add3~21_combout\ = (\port_map_ula|port_map_multi|Add3~20_combout\) # ((\port_map_ula|port_map_multi|Add1~25_combout\ & (\port_map_mult_2X1_br_ula|out_port[1]~1_combout\ $ (!\port_map_mult_2X1_br_ula|out_port[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add3~20_combout\,
	datab => \port_map_ula|port_map_multi|Add1~25_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[1]~1_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[2]~2_combout\,
	combout => \port_map_ula|port_map_multi|Add3~21_combout\);

\port_map_ula|port_map_multi|Add6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add6~8_combout\ = ((\port_map_banco_de_registradores|registrador~52_combout\ $ (\port_map_ula|port_map_multi|Add3~21_combout\ $ (\port_map_ula|port_map_multi|Add6~7\)))) # (GND)
-- \port_map_ula|port_map_multi|Add6~9\ = CARRY((\port_map_banco_de_registradores|registrador~52_combout\ & (\port_map_ula|port_map_multi|Add3~21_combout\ & !\port_map_ula|port_map_multi|Add6~7\)) # (!\port_map_banco_de_registradores|registrador~52_combout\ 
-- & ((\port_map_ula|port_map_multi|Add3~21_combout\) # (!\port_map_ula|port_map_multi|Add6~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~52_combout\,
	datab => \port_map_ula|port_map_multi|Add3~21_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add6~7\,
	combout => \port_map_ula|port_map_multi|Add6~8_combout\,
	cout => \port_map_ula|port_map_multi|Add6~9\);

\port_map_ula|port_map_multi|Add5~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add5~14_combout\ = ((\port_map_banco_de_registradores|registrador~52_combout\ $ (\port_map_ula|port_map_multi|Add3~21_combout\ $ (!\port_map_ula|port_map_multi|Add5~11\)))) # (GND)
-- \port_map_ula|port_map_multi|Add5~15\ = CARRY((\port_map_banco_de_registradores|registrador~52_combout\ & ((\port_map_ula|port_map_multi|Add3~21_combout\) # (!\port_map_ula|port_map_multi|Add5~11\))) # 
-- (!\port_map_banco_de_registradores|registrador~52_combout\ & (\port_map_ula|port_map_multi|Add3~21_combout\ & !\port_map_ula|port_map_multi|Add5~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~52_combout\,
	datab => \port_map_ula|port_map_multi|Add3~21_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add5~11\,
	combout => \port_map_ula|port_map_multi|Add5~14_combout\,
	cout => \port_map_ula|port_map_multi|Add5~15\);

\port_map_ula|port_map_multi|Add5~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add5~16_combout\ = (\port_map_mult_2X1_br_ula|out_port[2]~2_combout\ & (((\port_map_ula|port_map_multi|Add5~14_combout\ & !\port_map_mult_2X1_br_ula|out_port[3]~3_combout\)))) # 
-- (!\port_map_mult_2X1_br_ula|out_port[2]~2_combout\ & (\port_map_ula|port_map_multi|Add6~8_combout\ & ((\port_map_mult_2X1_br_ula|out_port[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add6~8_combout\,
	datab => \port_map_ula|port_map_multi|Add5~14_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[2]~2_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[3]~3_combout\,
	combout => \port_map_ula|port_map_multi|Add5~16_combout\);

\port_map_ula|port_map_multi|Add5~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add5~17_combout\ = (\port_map_ula|port_map_multi|Add5~16_combout\) # ((\port_map_ula|port_map_multi|Add3~21_combout\ & (\port_map_mult_2X1_br_ula|out_port[2]~2_combout\ $ (!\port_map_mult_2X1_br_ula|out_port[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add5~16_combout\,
	datab => \port_map_ula|port_map_multi|Add3~21_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[2]~2_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[3]~3_combout\,
	combout => \port_map_ula|port_map_multi|Add5~17_combout\);

\port_map_ula|port_map_multi|Add8~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add8~6_combout\ = (\port_map_banco_de_registradores|registrador~50_combout\ & ((\port_map_ula|port_map_multi|Add5~17_combout\ & (!\port_map_ula|port_map_multi|Add8~5\)) # (!\port_map_ula|port_map_multi|Add5~17_combout\ & 
-- ((\port_map_ula|port_map_multi|Add8~5\) # (GND))))) # (!\port_map_banco_de_registradores|registrador~50_combout\ & ((\port_map_ula|port_map_multi|Add5~17_combout\ & (\port_map_ula|port_map_multi|Add8~5\ & VCC)) # 
-- (!\port_map_ula|port_map_multi|Add5~17_combout\ & (!\port_map_ula|port_map_multi|Add8~5\))))
-- \port_map_ula|port_map_multi|Add8~7\ = CARRY((\port_map_banco_de_registradores|registrador~50_combout\ & ((!\port_map_ula|port_map_multi|Add8~5\) # (!\port_map_ula|port_map_multi|Add5~17_combout\))) # 
-- (!\port_map_banco_de_registradores|registrador~50_combout\ & (!\port_map_ula|port_map_multi|Add5~17_combout\ & !\port_map_ula|port_map_multi|Add8~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~50_combout\,
	datab => \port_map_ula|port_map_multi|Add5~17_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add8~5\,
	combout => \port_map_ula|port_map_multi|Add8~6_combout\,
	cout => \port_map_ula|port_map_multi|Add8~7\);

\port_map_ula|port_map_multi|Add7~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add7~10_combout\ = (\port_map_banco_de_registradores|registrador~50_combout\ & ((\port_map_ula|port_map_multi|Add5~17_combout\ & (\port_map_ula|port_map_multi|Add7~7\ & VCC)) # (!\port_map_ula|port_map_multi|Add5~17_combout\ & 
-- (!\port_map_ula|port_map_multi|Add7~7\)))) # (!\port_map_banco_de_registradores|registrador~50_combout\ & ((\port_map_ula|port_map_multi|Add5~17_combout\ & (!\port_map_ula|port_map_multi|Add7~7\)) # (!\port_map_ula|port_map_multi|Add5~17_combout\ & 
-- ((\port_map_ula|port_map_multi|Add7~7\) # (GND)))))
-- \port_map_ula|port_map_multi|Add7~11\ = CARRY((\port_map_banco_de_registradores|registrador~50_combout\ & (!\port_map_ula|port_map_multi|Add5~17_combout\ & !\port_map_ula|port_map_multi|Add7~7\)) # 
-- (!\port_map_banco_de_registradores|registrador~50_combout\ & ((!\port_map_ula|port_map_multi|Add7~7\) # (!\port_map_ula|port_map_multi|Add5~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~50_combout\,
	datab => \port_map_ula|port_map_multi|Add5~17_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add7~7\,
	combout => \port_map_ula|port_map_multi|Add7~10_combout\,
	cout => \port_map_ula|port_map_multi|Add7~11\);

\port_map_ula|port_map_multi|Add7~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add7~12_combout\ = (\port_map_mult_2X1_br_ula|out_port[3]~3_combout\ & (((\port_map_ula|port_map_multi|Add7~10_combout\ & !\port_map_mult_2X1_br_ula|out_port[4]~4_combout\)))) # 
-- (!\port_map_mult_2X1_br_ula|out_port[3]~3_combout\ & (\port_map_ula|port_map_multi|Add8~6_combout\ & ((\port_map_mult_2X1_br_ula|out_port[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add8~6_combout\,
	datab => \port_map_ula|port_map_multi|Add7~10_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[3]~3_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[4]~4_combout\,
	combout => \port_map_ula|port_map_multi|Add7~12_combout\);

\port_map_ula|port_map_multi|Add7~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add7~13_combout\ = (\port_map_ula|port_map_multi|Add7~12_combout\) # ((\port_map_ula|port_map_multi|Add5~17_combout\ & (\port_map_mult_2X1_br_ula|out_port[3]~3_combout\ $ (!\port_map_mult_2X1_br_ula|out_port[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add7~12_combout\,
	datab => \port_map_ula|port_map_multi|Add5~17_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[3]~3_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[4]~4_combout\,
	combout => \port_map_ula|port_map_multi|Add7~13_combout\);

\port_map_ula|port_map_multi|Add10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add10~4_combout\ = ((\port_map_banco_de_registradores|registrador~48_combout\ $ (\port_map_ula|port_map_multi|Add7~13_combout\ $ (\port_map_ula|port_map_multi|Add10~3\)))) # (GND)
-- \port_map_ula|port_map_multi|Add10~5\ = CARRY((\port_map_banco_de_registradores|registrador~48_combout\ & (\port_map_ula|port_map_multi|Add7~13_combout\ & !\port_map_ula|port_map_multi|Add10~3\)) # 
-- (!\port_map_banco_de_registradores|registrador~48_combout\ & ((\port_map_ula|port_map_multi|Add7~13_combout\) # (!\port_map_ula|port_map_multi|Add10~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~48_combout\,
	datab => \port_map_ula|port_map_multi|Add7~13_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add10~3\,
	combout => \port_map_ula|port_map_multi|Add10~4_combout\,
	cout => \port_map_ula|port_map_multi|Add10~5\);

\port_map_ula|port_map_multi|Add9~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add9~6_combout\ = ((\port_map_banco_de_registradores|registrador~48_combout\ $ (\port_map_ula|port_map_multi|Add7~13_combout\ $ (!\port_map_ula|port_map_multi|Add9~3\)))) # (GND)
-- \port_map_ula|port_map_multi|Add9~7\ = CARRY((\port_map_banco_de_registradores|registrador~48_combout\ & ((\port_map_ula|port_map_multi|Add7~13_combout\) # (!\port_map_ula|port_map_multi|Add9~3\))) # 
-- (!\port_map_banco_de_registradores|registrador~48_combout\ & (\port_map_ula|port_map_multi|Add7~13_combout\ & !\port_map_ula|port_map_multi|Add9~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~48_combout\,
	datab => \port_map_ula|port_map_multi|Add7~13_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add9~3\,
	combout => \port_map_ula|port_map_multi|Add9~6_combout\,
	cout => \port_map_ula|port_map_multi|Add9~7\);

\port_map_ula|port_map_multi|Add9~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add9~8_combout\ = (\port_map_mult_2X1_br_ula|out_port[4]~4_combout\ & (((\port_map_ula|port_map_multi|Add9~6_combout\ & !\port_map_mult_2X1_br_ula|out_port[5]~5_combout\)))) # (!\port_map_mult_2X1_br_ula|out_port[4]~4_combout\ 
-- & (\port_map_ula|port_map_multi|Add10~4_combout\ & ((\port_map_mult_2X1_br_ula|out_port[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add10~4_combout\,
	datab => \port_map_ula|port_map_multi|Add9~6_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[4]~4_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[5]~5_combout\,
	combout => \port_map_ula|port_map_multi|Add9~8_combout\);

\port_map_ula|port_map_multi|Add9~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add9~9_combout\ = (\port_map_ula|port_map_multi|Add9~8_combout\) # ((\port_map_ula|port_map_multi|Add7~13_combout\ & (\port_map_mult_2X1_br_ula|out_port[4]~4_combout\ $ (!\port_map_mult_2X1_br_ula|out_port[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add9~8_combout\,
	datab => \port_map_ula|port_map_multi|Add7~13_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[4]~4_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[5]~5_combout\,
	combout => \port_map_ula|port_map_multi|Add9~9_combout\);

\port_map_ula|port_map_multi|Add12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add12~2_combout\ = (\port_map_banco_de_registradores|registrador~46_combout\ & ((\port_map_ula|port_map_multi|Add9~9_combout\ & (!\port_map_ula|port_map_multi|Add12~1\)) # (!\port_map_ula|port_map_multi|Add9~9_combout\ & 
-- ((\port_map_ula|port_map_multi|Add12~1\) # (GND))))) # (!\port_map_banco_de_registradores|registrador~46_combout\ & ((\port_map_ula|port_map_multi|Add9~9_combout\ & (\port_map_ula|port_map_multi|Add12~1\ & VCC)) # 
-- (!\port_map_ula|port_map_multi|Add9~9_combout\ & (!\port_map_ula|port_map_multi|Add12~1\))))
-- \port_map_ula|port_map_multi|Add12~3\ = CARRY((\port_map_banco_de_registradores|registrador~46_combout\ & ((!\port_map_ula|port_map_multi|Add12~1\) # (!\port_map_ula|port_map_multi|Add9~9_combout\))) # 
-- (!\port_map_banco_de_registradores|registrador~46_combout\ & (!\port_map_ula|port_map_multi|Add9~9_combout\ & !\port_map_ula|port_map_multi|Add12~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~46_combout\,
	datab => \port_map_ula|port_map_multi|Add9~9_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add12~1\,
	combout => \port_map_ula|port_map_multi|Add12~2_combout\,
	cout => \port_map_ula|port_map_multi|Add12~3\);

\port_map_ula|port_map_multi|Add11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add11~2_combout\ = (\port_map_banco_de_registradores|registrador~46_combout\ & ((\port_map_ula|port_map_multi|Add9~9_combout\ & (\port_map_ula|port_map_multi|Add11~1\ & VCC)) # (!\port_map_ula|port_map_multi|Add9~9_combout\ & 
-- (!\port_map_ula|port_map_multi|Add11~1\)))) # (!\port_map_banco_de_registradores|registrador~46_combout\ & ((\port_map_ula|port_map_multi|Add9~9_combout\ & (!\port_map_ula|port_map_multi|Add11~1\)) # (!\port_map_ula|port_map_multi|Add9~9_combout\ & 
-- ((\port_map_ula|port_map_multi|Add11~1\) # (GND)))))
-- \port_map_ula|port_map_multi|Add11~3\ = CARRY((\port_map_banco_de_registradores|registrador~46_combout\ & (!\port_map_ula|port_map_multi|Add9~9_combout\ & !\port_map_ula|port_map_multi|Add11~1\)) # 
-- (!\port_map_banco_de_registradores|registrador~46_combout\ & ((!\port_map_ula|port_map_multi|Add11~1\) # (!\port_map_ula|port_map_multi|Add9~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~46_combout\,
	datab => \port_map_ula|port_map_multi|Add9~9_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add11~1\,
	combout => \port_map_ula|port_map_multi|Add11~2_combout\,
	cout => \port_map_ula|port_map_multi|Add11~3\);

\port_map_ula|port_map_multi|Add11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add11~4_combout\ = (\port_map_mult_2X1_br_ula|out_port[5]~5_combout\ & ((\port_map_mult_2X1_br_ula|out_port[6]~6_combout\ & (\port_map_ula|port_map_multi|Add9~9_combout\)) # (!\port_map_mult_2X1_br_ula|out_port[6]~6_combout\ & 
-- ((\port_map_ula|port_map_multi|Add11~2_combout\))))) # (!\port_map_mult_2X1_br_ula|out_port[5]~5_combout\ & ((\port_map_ula|port_map_multi|Add9~9_combout\) # ((\port_map_mult_2X1_br_ula|out_port[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add9~9_combout\,
	datab => \port_map_mult_2X1_br_ula|out_port[5]~5_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[6]~6_combout\,
	datad => \port_map_ula|port_map_multi|Add11~2_combout\,
	combout => \port_map_ula|port_map_multi|Add11~4_combout\);

\port_map_ula|port_map_multi|Add11~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add11~5_combout\ = (\port_map_mult_2X1_br_ula|out_port[5]~5_combout\ & (((\port_map_ula|port_map_multi|Add11~4_combout\)))) # (!\port_map_mult_2X1_br_ula|out_port[5]~5_combout\ & 
-- ((\port_map_mult_2X1_br_ula|out_port[6]~6_combout\ & (\port_map_ula|port_map_multi|Add12~2_combout\)) # (!\port_map_mult_2X1_br_ula|out_port[6]~6_combout\ & ((\port_map_ula|port_map_multi|Add11~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult_2X1_br_ula|out_port[5]~5_combout\,
	datab => \port_map_mult_2X1_br_ula|out_port[6]~6_combout\,
	datac => \port_map_ula|port_map_multi|Add12~2_combout\,
	datad => \port_map_ula|port_map_multi|Add11~4_combout\,
	combout => \port_map_ula|port_map_multi|Add11~5_combout\);

\port_map_ula|Mux4~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux4~17_combout\ = (\port_map_ula|Mux4~10_combout\ & ((\port_map_unidade_controle|Mux7~0_combout\) # (\port_map_banco_de_registradores|registrador~72_combout\ $ (!\port_map_banco_de_registradores|registrador~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~72_combout\,
	datab => \port_map_unidade_controle|Mux7~0_combout\,
	datac => \port_map_banco_de_registradores|registrador~74_combout\,
	datad => \port_map_ula|Mux4~10_combout\,
	combout => \port_map_ula|Mux4~17_combout\);

\port_map_ula|Mux4~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux4~13_combout\ = (\port_map_mem_rom|Mux0~5_combout\ & (((\port_map_ula|port_map_multi|Add11~5_combout\ & \port_map_ula|Mux4~17_combout\)))) # (!\port_map_mem_rom|Mux0~5_combout\ & ((\port_map_ula|Mux4~12_combout\) # 
-- ((\port_map_ula|port_map_multi|Add11~5_combout\ & \port_map_ula|Mux4~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux0~5_combout\,
	datab => \port_map_ula|Mux4~12_combout\,
	datac => \port_map_ula|port_map_multi|Add11~5_combout\,
	datad => \port_map_ula|Mux4~17_combout\,
	combout => \port_map_ula|Mux4~13_combout\);

\port_map_ula|port_map_multi|Add13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add13~0_combout\ = (\port_map_banco_de_registradores|registrador~44_combout\ & (\port_map_ula|port_map_multi|Add11~5_combout\ $ (VCC))) # (!\port_map_banco_de_registradores|registrador~44_combout\ & 
-- (\port_map_ula|port_map_multi|Add11~5_combout\ & VCC))
-- \port_map_ula|port_map_multi|Add13~1\ = CARRY((\port_map_banco_de_registradores|registrador~44_combout\ & \port_map_ula|port_map_multi|Add11~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~44_combout\,
	datab => \port_map_ula|port_map_multi|Add11~5_combout\,
	datad => VCC,
	combout => \port_map_ula|port_map_multi|Add13~0_combout\,
	cout => \port_map_ula|port_map_multi|Add13~1\);

\port_map_ula|port_map_multi|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|process_0~0_combout\ = (\port_map_banco_de_registradores|registrador~72_combout\) # ((\port_map_unidade_controle|Mux7~0_combout\) # (!\port_map_banco_de_registradores|registrador~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~72_combout\,
	datab => \port_map_unidade_controle|Mux7~0_combout\,
	datad => \port_map_banco_de_registradores|registrador~74_combout\,
	combout => \port_map_ula|port_map_multi|process_0~0_combout\);

\port_map_ula|port_map_multi|Add14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add14~0_combout\ = (\port_map_banco_de_registradores|registrador~44_combout\ & (\port_map_ula|port_map_multi|Add11~5_combout\ $ (VCC))) # (!\port_map_banco_de_registradores|registrador~44_combout\ & 
-- ((\port_map_ula|port_map_multi|Add11~5_combout\) # (GND)))
-- \port_map_ula|port_map_multi|Add14~1\ = CARRY((\port_map_ula|port_map_multi|Add11~5_combout\) # (!\port_map_banco_de_registradores|registrador~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~44_combout\,
	datab => \port_map_ula|port_map_multi|Add11~5_combout\,
	datad => VCC,
	combout => \port_map_ula|port_map_multi|Add14~0_combout\,
	cout => \port_map_ula|port_map_multi|Add14~1\);

\port_map_ula|Mux4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux4~14_combout\ = (\port_map_ula|Mux4~10_combout\ & ((\port_map_ula|port_map_multi|process_0~0_combout\ & (\port_map_ula|port_map_multi|Add13~0_combout\)) # (!\port_map_ula|port_map_multi|process_0~0_combout\ & 
-- ((\port_map_ula|port_map_multi|Add14~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add13~0_combout\,
	datab => \port_map_ula|port_map_multi|process_0~0_combout\,
	datac => \port_map_ula|Mux4~10_combout\,
	datad => \port_map_ula|port_map_multi|Add14~0_combout\,
	combout => \port_map_ula|Mux4~14_combout\);

\port_map_ula|Mux4~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux4~15_combout\ = (\port_map_ula|Mux4~13_combout\) # ((\port_map_ula|Mux4~14_combout\ & (\port_map_mult_2X1_br_ula|out_port[7]~7_combout\ $ (\port_map_mult_2X1_br_ula|out_port[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult_2X1_br_ula|out_port[7]~7_combout\,
	datab => \port_map_mult_2X1_br_ula|out_port[6]~6_combout\,
	datac => \port_map_ula|Mux4~13_combout\,
	datad => \port_map_ula|Mux4~14_combout\,
	combout => \port_map_ula|Mux4~15_combout\);

\port_map_mem_ram|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux4~15_combout\,
	ena => \port_map_mem_ram|ram~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|ram~27_q\);

\port_map_mem_ram|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux4~15_combout\,
	ena => \port_map_mem_ram|ram~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|ram~35_q\);

\port_map_mem_ram|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux4~15_combout\,
	ena => \port_map_mem_ram|ram~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|ram~19_q\);

\port_map_mem_ram|ram~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_ram|ram~91_combout\ = (\port_map_mem_rom|Mux7~2_combout\ & (((\port_map_mem_rom|Mux6~1_combout\)))) # (!\port_map_mem_rom|Mux7~2_combout\ & ((\port_map_mem_rom|Mux6~1_combout\ & (\port_map_mem_ram|ram~35_q\)) # 
-- (!\port_map_mem_rom|Mux6~1_combout\ & ((\port_map_mem_ram|ram~19_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux7~2_combout\,
	datab => \port_map_mem_ram|ram~35_q\,
	datac => \port_map_mem_rom|Mux6~1_combout\,
	datad => \port_map_mem_ram|ram~19_q\,
	combout => \port_map_mem_ram|ram~91_combout\);

\port_map_mem_ram|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux4~15_combout\,
	ena => \port_map_mem_ram|ram~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|ram~43_q\);

\port_map_mem_ram|ram~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_ram|ram~92_combout\ = (\port_map_mem_rom|Mux7~2_combout\ & ((\port_map_mem_ram|ram~91_combout\ & ((\port_map_mem_ram|ram~43_q\))) # (!\port_map_mem_ram|ram~91_combout\ & (\port_map_mem_ram|ram~27_q\)))) # (!\port_map_mem_rom|Mux7~2_combout\ 
-- & (((\port_map_mem_ram|ram~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_ram|ram~27_q\,
	datab => \port_map_mem_rom|Mux7~2_combout\,
	datac => \port_map_mem_ram|ram~91_combout\,
	datad => \port_map_mem_ram|ram~43_q\,
	combout => \port_map_mem_ram|ram~92_combout\);

\port_map_mem_ram|out_port[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mem_ram|ram~92_combout\,
	ena => \port_map_unidade_controle|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_mem_ram|out_port\(7));

\port_map_mult_2X1_ram_ula|out_port[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mult_2X1_ram_ula|out_port[7]~7_combout\ = (\port_map_unidade_controle|Mux3~0_combout\ & (\port_map_mem_ram|out_port\(7))) # (!\port_map_unidade_controle|Mux3~0_combout\ & ((\port_map_ula|Mux4~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_ram|out_port\(7),
	datab => \port_map_ula|Mux4~15_combout\,
	datad => \port_map_unidade_controle|Mux3~0_combout\,
	combout => \port_map_mult_2X1_ram_ula|out_port[7]~7_combout\);

\port_map_banco_de_registradores|registrador~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_ram_ula|out_port[7]~7_combout\,
	ena => \port_map_banco_de_registradores|registrador~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registrador~26_q\);

\port_map_banco_de_registradores|registrador~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registrador~73_combout\ = (\port_map_mem_rom|Mux7~2_combout\ & (((\port_map_mem_rom|Mux6~1_combout\)))) # (!\port_map_mem_rom|Mux7~2_combout\ & ((\port_map_mem_rom|Mux6~1_combout\ & 
-- (\port_map_banco_de_registradores|registrador~34_q\)) # (!\port_map_mem_rom|Mux6~1_combout\ & ((\port_map_banco_de_registradores|registrador~18_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux7~2_combout\,
	datab => \port_map_banco_de_registradores|registrador~34_q\,
	datac => \port_map_mem_rom|Mux6~1_combout\,
	datad => \port_map_banco_de_registradores|registrador~18_q\,
	combout => \port_map_banco_de_registradores|registrador~73_combout\);

\port_map_banco_de_registradores|registrador~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registrador~74_combout\ = (\port_map_mem_rom|Mux7~2_combout\ & ((\port_map_banco_de_registradores|registrador~73_combout\ & ((\port_map_banco_de_registradores|registrador~42_q\))) # 
-- (!\port_map_banco_de_registradores|registrador~73_combout\ & (\port_map_banco_de_registradores|registrador~26_q\)))) # (!\port_map_mem_rom|Mux7~2_combout\ & (((\port_map_banco_de_registradores|registrador~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~26_q\,
	datab => \port_map_mem_rom|Mux7~2_combout\,
	datac => \port_map_banco_de_registradores|registrador~73_combout\,
	datad => \port_map_banco_de_registradores|registrador~42_q\,
	combout => \port_map_banco_de_registradores|registrador~74_combout\);

\port_map_ula|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Equal0~5_combout\ = (!\port_map_ula|port_map_sub|A1|A2|ha1|sum~0_combout\ & (\port_map_banco_de_registradores|registrador~58_combout\ $ (((\port_map_unidade_controle|Mux7~0_combout\) # 
-- (!\port_map_banco_de_registradores|registrador~74_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~74_combout\,
	datab => \port_map_unidade_controle|Mux7~0_combout\,
	datac => \port_map_banco_de_registradores|registrador~58_combout\,
	datad => \port_map_ula|port_map_sub|A1|A2|ha1|sum~0_combout\,
	combout => \port_map_ula|Equal0~5_combout\);

\port_map_ula|port_map_adder|A0|ha1|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_adder|A0|ha1|sum~combout\ = \port_map_banco_de_registradores|registrador~44_combout\ $ (((\port_map_unidade_controle|Mux7~0_combout\ & ((\port_map_mem_rom|Mux7~2_combout\))) # (!\port_map_unidade_controle|Mux7~0_combout\ & 
-- (\port_map_banco_de_registradores|registrador~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|Mux7~0_combout\,
	datab => \port_map_banco_de_registradores|registrador~60_combout\,
	datac => \port_map_mem_rom|Mux7~2_combout\,
	datad => \port_map_banco_de_registradores|registrador~44_combout\,
	combout => \port_map_ula|port_map_adder|A0|ha1|sum~combout\);

\port_map_ula|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Equal0~2_combout\ = (\port_map_ula|Equal0~5_combout\ & (!\port_map_ula|port_map_adder|A0|ha1|sum~combout\ & (!\port_map_ula|port_map_sub|A1|A3|ha1|sum~0_combout\ & !\port_map_ula|port_map_sub|A1|A4|ha1|sum~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|Equal0~5_combout\,
	datab => \port_map_ula|port_map_adder|A0|ha1|sum~combout\,
	datac => \port_map_ula|port_map_sub|A1|A3|ha1|sum~0_combout\,
	datad => \port_map_ula|port_map_sub|A1|A4|ha1|sum~0_combout\,
	combout => \port_map_ula|Equal0~2_combout\);

\port_map_ula|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Equal0~3_combout\ = (\port_map_banco_de_registradores|registrador~54_combout\ & (\port_map_mult_2X1_br_ula|out_port[5]~5_combout\ & (\port_map_banco_de_registradores|registrador~56_combout\ $ 
-- (!\port_map_mult_2X1_br_ula|out_port[6]~6_combout\)))) # (!\port_map_banco_de_registradores|registrador~54_combout\ & (!\port_map_mult_2X1_br_ula|out_port[5]~5_combout\ & (\port_map_banco_de_registradores|registrador~56_combout\ $ 
-- (!\port_map_mult_2X1_br_ula|out_port[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~54_combout\,
	datab => \port_map_banco_de_registradores|registrador~56_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[6]~6_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[5]~5_combout\,
	combout => \port_map_ula|Equal0~3_combout\);

\port_map_ula|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Equal0~4_combout\ = (\port_map_ula|Equal0~2_combout\ & (\port_map_ula|Equal0~3_combout\ & !\port_map_ula|port_map_sub|A1|A1|ha1|sum~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|Equal0~2_combout\,
	datab => \port_map_ula|Equal0~3_combout\,
	datad => \port_map_ula|port_map_sub|A1|A1|ha1|sum~0_combout\,
	combout => \port_map_ula|Equal0~4_combout\);

\port_map_ula|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux2~2_combout\ = (\port_map_unidade_controle|Mux4~2_combout\ & (\port_map_ula|Mux2~3_combout\ & !\port_map_unidade_controle|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|Mux4~2_combout\,
	datab => \port_map_ula|Mux2~3_combout\,
	datad => \port_map_unidade_controle|Mux5~0_combout\,
	combout => \port_map_ula|Mux2~2_combout\);

\port_map_ula|in_temp_zero\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|in_temp_zero~combout\ = (\port_map_ula|Mux2~2_combout\ & (\port_map_ula|Equal0~4_combout\)) # (!\port_map_ula|Mux2~2_combout\ & ((\port_map_ula|in_temp_zero~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \port_map_ula|Equal0~4_combout\,
	datac => \port_map_ula|in_temp_zero~combout\,
	datad => \port_map_ula|Mux2~2_combout\,
	combout => \port_map_ula|in_temp_zero~combout\);

\port_map_ula|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux1~0_combout\ = \port_map_unidade_controle|Mux5~0_combout\ $ (\port_map_ula|in_temp_zero~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \port_map_unidade_controle|Mux5~0_combout\,
	datad => \port_map_ula|in_temp_zero~combout\,
	combout => \port_map_ula|Mux1~0_combout\);

\port_map_ula|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux0~0_combout\ = (\port_map_ula|Mux2~3_combout\ & (!\port_map_mem_rom|Mux2~3_combout\ & ((!\port_map_mem_rom|Mux0~6_combout\) # (!\port_map_mem_rom|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|Mux2~3_combout\,
	datab => \port_map_mem_rom|Mux1~3_combout\,
	datac => \port_map_mem_rom|Mux0~6_combout\,
	datad => \port_map_mem_rom|Mux2~3_combout\,
	combout => \port_map_ula|Mux0~0_combout\);

\port_map_ula|zero\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|zero~combout\ = (\port_map_ula|Mux0~0_combout\ & (\port_map_ula|Mux1~0_combout\)) # (!\port_map_ula|Mux0~0_combout\ & ((\port_map_ula|zero~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \port_map_ula|Mux1~0_combout\,
	datac => \port_map_ula|zero~combout\,
	datad => \port_map_ula|Mux0~0_combout\,
	combout => \port_map_ula|zero~combout\);

\port_map_pc|out_port[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_pc|out_port[4]~0_combout\ = \port_map_unidade_controle|Mux0~0_combout\ $ (((!\port_map_mem_rom|Mux2~3_combout\ & (\port_map_ula|Mux2~3_combout\ & \port_map_ula|zero~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|Mux0~0_combout\,
	datab => \port_map_mem_rom|Mux2~3_combout\,
	datac => \port_map_ula|Mux2~3_combout\,
	datad => \port_map_ula|zero~combout\,
	combout => \port_map_pc|out_port[4]~0_combout\);

\port_map_mult_2X1_jump|out_port[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mult_2X1_jump|out_port[6]~7_combout\ = (\port_map_somador_pc|out_port[6]~12_combout\ & !\port_map_pc|out_port[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_somador_pc|out_port[6]~12_combout\,
	datad => \port_map_pc|out_port[4]~0_combout\,
	combout => \port_map_mult_2X1_jump|out_port[6]~7_combout\);

\port_map_pc|out_port[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_jump|out_port[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|out_port\(6));

\port_map_mem_rom|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_rom|Mux2~0_combout\ = (!\port_map_pc|out_port\(0) & (!\port_map_pc|out_port\(4) & (!\port_map_pc|out_port\(5) & !\port_map_pc|out_port\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|out_port\(0),
	datab => \port_map_pc|out_port\(4),
	datac => \port_map_pc|out_port\(5),
	datad => \port_map_pc|out_port\(6),
	combout => \port_map_mem_rom|Mux2~0_combout\);

\port_map_mem_rom|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_rom|Mux2~1_combout\ = (\port_map_pc|out_port\(3) & (\port_map_mem_rom|Mux2~0_combout\ & (!\port_map_pc|out_port\(1) & !\port_map_pc|out_port\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|out_port\(3),
	datab => \port_map_mem_rom|Mux2~0_combout\,
	datac => \port_map_pc|out_port\(1),
	datad => \port_map_pc|out_port\(2),
	combout => \port_map_mem_rom|Mux2~1_combout\);

\port_map_mem_rom|Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_rom|Mux2~3_combout\ = (!\port_map_pc|out_port\(7) & ((\port_map_mem_rom|Mux2~1_combout\) # ((\port_map_mem_rom|Mux0~2_combout\ & !\port_map_mem_rom|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux2~1_combout\,
	datab => \port_map_mem_rom|Mux0~2_combout\,
	datac => \port_map_mem_rom|Mux2~2_combout\,
	datad => \port_map_pc|out_port\(7),
	combout => \port_map_mem_rom|Mux2~3_combout\);

\port_map_unidade_controle|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_unidade_controle|Mux0~0_combout\ = (\port_map_mem_rom|Mux3~2_combout\ & (\port_map_mem_rom|Mux2~3_combout\ & (\port_map_mem_rom|Mux1~3_combout\ & \port_map_mem_rom|Mux0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux3~2_combout\,
	datab => \port_map_mem_rom|Mux2~3_combout\,
	datac => \port_map_mem_rom|Mux1~3_combout\,
	datad => \port_map_mem_rom|Mux0~5_combout\,
	combout => \port_map_unidade_controle|Mux0~0_combout\);

\port_map_mult_2X1_jump|out_port[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mult_2X1_jump|out_port[3]~0_combout\ = (\port_map_unidade_controle|Mux0~0_combout\) # ((\port_map_ula|Mux2~3_combout\ & (\port_map_ula|zero~combout\ & !\port_map_mem_rom|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|Mux0~0_combout\,
	datab => \port_map_ula|Mux2~3_combout\,
	datac => \port_map_ula|zero~combout\,
	datad => \port_map_mem_rom|Mux2~3_combout\,
	combout => \port_map_mult_2X1_jump|out_port[3]~0_combout\);

\port_map_mult_2X1_jump|out_port[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mult_2X1_jump|out_port[2]~3_combout\ = (\port_map_mult_2X1_jump|out_port[3]~0_combout\ & (\port_map_mem_rom|Mux5~2_combout\)) # (!\port_map_mult_2X1_jump|out_port[3]~0_combout\ & ((\port_map_somador_pc|out_port[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux5~2_combout\,
	datab => \port_map_somador_pc|out_port[2]~4_combout\,
	datad => \port_map_mult_2X1_jump|out_port[3]~0_combout\,
	combout => \port_map_mult_2X1_jump|out_port[2]~3_combout\);

\port_map_pc|out_port[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_jump|out_port[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|out_port\(2));

\port_map_mem_rom|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_rom|Mux6~0_combout\ = (\port_map_pc|out_port\(0) & ((\port_map_pc|out_port\(2)) # ((\port_map_pc|out_port\(1) & \port_map_pc|out_port\(4))))) # (!\port_map_pc|out_port\(0) & ((\port_map_pc|out_port\(1) & (\port_map_pc|out_port\(2))) # 
-- (!\port_map_pc|out_port\(1) & ((\port_map_pc|out_port\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|out_port\(0),
	datab => \port_map_pc|out_port\(1),
	datac => \port_map_pc|out_port\(2),
	datad => \port_map_pc|out_port\(4),
	combout => \port_map_mem_rom|Mux6~0_combout\);

\port_map_mem_rom|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_rom|Mux6~1_combout\ = (\port_map_mem_ram|ram~76_combout\ & (!\port_map_pc|out_port\(3) & !\port_map_mem_rom|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_ram|ram~76_combout\,
	datac => \port_map_pc|out_port\(3),
	datad => \port_map_mem_rom|Mux6~0_combout\,
	combout => \port_map_mem_rom|Mux6~1_combout\);

\port_map_mult_2X1_jump|out_port[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mult_2X1_jump|out_port[1]~2_combout\ = (\port_map_mult_2X1_jump|out_port[3]~0_combout\ & (\port_map_mem_rom|Mux6~1_combout\)) # (!\port_map_mult_2X1_jump|out_port[3]~0_combout\ & ((\port_map_somador_pc|out_port[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux6~1_combout\,
	datab => \port_map_somador_pc|out_port[1]~2_combout\,
	datad => \port_map_mult_2X1_jump|out_port[3]~0_combout\,
	combout => \port_map_mult_2X1_jump|out_port[1]~2_combout\);

\port_map_pc|out_port[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_jump|out_port[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|out_port\(1));

\port_map_mem_rom|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_rom|Mux4~0_combout\ = (\port_map_pc|out_port\(0) & (\port_map_pc|out_port\(1) & ((\port_map_pc|out_port\(2)) # (\port_map_pc|out_port\(4))))) # (!\port_map_pc|out_port\(0) & (\port_map_pc|out_port\(2) & (\port_map_pc|out_port\(1) $ 
-- (\port_map_pc|out_port\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|out_port\(0),
	datab => \port_map_pc|out_port\(1),
	datac => \port_map_pc|out_port\(2),
	datad => \port_map_pc|out_port\(4),
	combout => \port_map_mem_rom|Mux4~0_combout\);

\port_map_mem_rom|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_rom|Mux4~1_combout\ = (\port_map_mem_ram|ram~76_combout\ & (!\port_map_pc|out_port\(3) & !\port_map_mem_rom|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_ram|ram~76_combout\,
	datac => \port_map_pc|out_port\(3),
	datad => \port_map_mem_rom|Mux4~0_combout\,
	combout => \port_map_mem_rom|Mux4~1_combout\);

\port_map_somador_pc|out_port[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_somador_pc|out_port[3]~6_combout\ = (\port_map_pc|out_port\(3) & (!\port_map_somador_pc|out_port[2]~5\)) # (!\port_map_pc|out_port\(3) & ((\port_map_somador_pc|out_port[2]~5\) # (GND)))
-- \port_map_somador_pc|out_port[3]~7\ = CARRY((!\port_map_somador_pc|out_port[2]~5\) # (!\port_map_pc|out_port\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|out_port\(3),
	datad => VCC,
	cin => \port_map_somador_pc|out_port[2]~5\,
	combout => \port_map_somador_pc|out_port[3]~6_combout\,
	cout => \port_map_somador_pc|out_port[3]~7\);

\port_map_mult_2X1_jump|out_port[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mult_2X1_jump|out_port[3]~4_combout\ = (\port_map_mult_2X1_jump|out_port[3]~0_combout\ & (\port_map_mem_rom|Mux4~1_combout\)) # (!\port_map_mult_2X1_jump|out_port[3]~0_combout\ & ((\port_map_somador_pc|out_port[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux4~1_combout\,
	datab => \port_map_somador_pc|out_port[3]~6_combout\,
	datad => \port_map_mult_2X1_jump|out_port[3]~0_combout\,
	combout => \port_map_mult_2X1_jump|out_port[3]~4_combout\);

\port_map_pc|out_port[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_jump|out_port[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|out_port\(3));

\port_map_somador_pc|out_port[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_somador_pc|out_port[4]~8_combout\ = (\port_map_pc|out_port\(4) & (\port_map_somador_pc|out_port[3]~7\ $ (GND))) # (!\port_map_pc|out_port\(4) & (!\port_map_somador_pc|out_port[3]~7\ & VCC))
-- \port_map_somador_pc|out_port[4]~9\ = CARRY((\port_map_pc|out_port\(4) & !\port_map_somador_pc|out_port[3]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|out_port\(4),
	datad => VCC,
	cin => \port_map_somador_pc|out_port[3]~7\,
	combout => \port_map_somador_pc|out_port[4]~8_combout\,
	cout => \port_map_somador_pc|out_port[4]~9\);

\port_map_mult_2X1_jump|out_port[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mult_2X1_jump|out_port[4]~5_combout\ = (\port_map_somador_pc|out_port[4]~8_combout\ & !\port_map_pc|out_port[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_somador_pc|out_port[4]~8_combout\,
	datad => \port_map_pc|out_port[4]~0_combout\,
	combout => \port_map_mult_2X1_jump|out_port[4]~5_combout\);

\port_map_pc|out_port[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_jump|out_port[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|out_port\(4));

\port_map_mult_2X1_jump|out_port[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mult_2X1_jump|out_port[5]~6_combout\ = (\port_map_somador_pc|out_port[5]~10_combout\ & !\port_map_pc|out_port[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_somador_pc|out_port[5]~10_combout\,
	datad => \port_map_pc|out_port[4]~0_combout\,
	combout => \port_map_mult_2X1_jump|out_port[5]~6_combout\);

\port_map_pc|out_port[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_jump|out_port[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|out_port\(5));

\port_map_mem_ram|ram~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_ram|ram~76_combout\ = (!\port_map_pc|out_port\(5) & (!\port_map_pc|out_port\(6) & !\port_map_pc|out_port\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \port_map_pc|out_port\(5),
	datac => \port_map_pc|out_port\(6),
	datad => \port_map_pc|out_port\(7),
	combout => \port_map_mem_ram|ram~76_combout\);

\port_map_mem_rom|Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mem_rom|Mux7~2_combout\ = (\port_map_mem_ram|ram~76_combout\ & ((\port_map_mem_rom|Mux7~0_combout\) # ((!\port_map_pc|out_port\(4) & !\port_map_mem_rom|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_ram|ram~76_combout\,
	datab => \port_map_mem_rom|Mux7~0_combout\,
	datac => \port_map_pc|out_port\(4),
	datad => \port_map_mem_rom|Mux7~1_combout\,
	combout => \port_map_mem_rom|Mux7~2_combout\);

\port_map_mult_2X1_jump|out_port[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_mult_2X1_jump|out_port[0]~1_combout\ = (\port_map_mult_2X1_jump|out_port[3]~0_combout\ & (\port_map_mem_rom|Mux7~2_combout\)) # (!\port_map_mult_2X1_jump|out_port[3]~0_combout\ & ((\port_map_somador_pc|out_port[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mem_rom|Mux7~2_combout\,
	datab => \port_map_somador_pc|out_port[0]~0_combout\,
	datad => \port_map_mult_2X1_jump|out_port[3]~0_combout\,
	combout => \port_map_mult_2X1_jump|out_port[0]~1_combout\);

\port_map_pc|out_port[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_mult_2X1_jump|out_port[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|out_port\(0));

\port_map_ula|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux12~0_combout\ = (\port_map_unidade_controle|Mux4~2_combout\ & ((\port_map_unidade_controle|Mux7~0_combout\) # (\port_map_banco_de_registradores|registrador~72_combout\ $ (!\port_map_banco_de_registradores|registrador~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|Mux4~2_combout\,
	datab => \port_map_unidade_controle|Mux7~0_combout\,
	datac => \port_map_banco_de_registradores|registrador~72_combout\,
	datad => \port_map_banco_de_registradores|registrador~74_combout\,
	combout => \port_map_ula|Mux12~0_combout\);

\port_map_ula|port_map_multi|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add1~26_combout\ = \port_map_banco_de_registradores|registrador~58_combout\ $ (\port_map_ula|port_map_multi|Add0~22_combout\ $ (\port_map_ula|port_map_multi|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~58_combout\,
	datab => \port_map_ula|port_map_multi|Add0~22_combout\,
	cin => \port_map_ula|port_map_multi|Add1~23\,
	combout => \port_map_ula|port_map_multi|Add1~26_combout\);

\port_map_ula|port_map_multi|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add1~28_combout\ = (\port_map_mult_2X1_br_ula|out_port[0]~0_combout\ & ((\port_map_mult_2X1_br_ula|out_port[1]~1_combout\ & (\port_map_ula|port_map_multi|Add0~22_combout\)) # (!\port_map_mult_2X1_br_ula|out_port[1]~1_combout\ 
-- & ((\port_map_ula|port_map_multi|Add1~26_combout\))))) # (!\port_map_mult_2X1_br_ula|out_port[0]~0_combout\ & (\port_map_ula|port_map_multi|Add0~22_combout\ & ((!\port_map_mult_2X1_br_ula|out_port[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add0~22_combout\,
	datab => \port_map_mult_2X1_br_ula|out_port[0]~0_combout\,
	datac => \port_map_ula|port_map_multi|Add1~26_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[1]~1_combout\,
	combout => \port_map_ula|port_map_multi|Add1~28_combout\);

\port_map_ula|port_map_multi|Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add2~14_combout\ = \port_map_banco_de_registradores|registrador~58_combout\ $ (\port_map_ula|port_map_multi|Add0~22_combout\ $ (!\port_map_ula|port_map_multi|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~58_combout\,
	datab => \port_map_ula|port_map_multi|Add0~22_combout\,
	cin => \port_map_ula|port_map_multi|Add2~13\,
	combout => \port_map_ula|port_map_multi|Add2~14_combout\);

\port_map_ula|port_map_multi|Add1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add1~29_combout\ = (\port_map_ula|port_map_multi|Add1~28_combout\) # ((\port_map_mult_2X1_br_ula|out_port[1]~1_combout\ & (\port_map_ula|port_map_multi|Add2~14_combout\ & !\port_map_mult_2X1_br_ula|out_port[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add1~28_combout\,
	datab => \port_map_mult_2X1_br_ula|out_port[1]~1_combout\,
	datac => \port_map_ula|port_map_multi|Add2~14_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[0]~0_combout\,
	combout => \port_map_ula|port_map_multi|Add1~29_combout\);

\port_map_ula|port_map_multi|Add4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add4~12_combout\ = ((\port_map_banco_de_registradores|registrador~56_combout\ $ (\port_map_ula|port_map_multi|Add1~29_combout\ $ (\port_map_ula|port_map_multi|Add4~11\)))) # (GND)
-- \port_map_ula|port_map_multi|Add4~13\ = CARRY((\port_map_banco_de_registradores|registrador~56_combout\ & (\port_map_ula|port_map_multi|Add1~29_combout\ & !\port_map_ula|port_map_multi|Add4~11\)) # 
-- (!\port_map_banco_de_registradores|registrador~56_combout\ & ((\port_map_ula|port_map_multi|Add1~29_combout\) # (!\port_map_ula|port_map_multi|Add4~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~56_combout\,
	datab => \port_map_ula|port_map_multi|Add1~29_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add4~11\,
	combout => \port_map_ula|port_map_multi|Add4~12_combout\,
	cout => \port_map_ula|port_map_multi|Add4~13\);

\port_map_ula|port_map_multi|Add3~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add3~22_combout\ = ((\port_map_banco_de_registradores|registrador~56_combout\ $ (\port_map_ula|port_map_multi|Add1~29_combout\ $ (!\port_map_ula|port_map_multi|Add3~19\)))) # (GND)
-- \port_map_ula|port_map_multi|Add3~23\ = CARRY((\port_map_banco_de_registradores|registrador~56_combout\ & ((\port_map_ula|port_map_multi|Add1~29_combout\) # (!\port_map_ula|port_map_multi|Add3~19\))) # 
-- (!\port_map_banco_de_registradores|registrador~56_combout\ & (\port_map_ula|port_map_multi|Add1~29_combout\ & !\port_map_ula|port_map_multi|Add3~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~56_combout\,
	datab => \port_map_ula|port_map_multi|Add1~29_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add3~19\,
	combout => \port_map_ula|port_map_multi|Add3~22_combout\,
	cout => \port_map_ula|port_map_multi|Add3~23\);

\port_map_ula|port_map_multi|Add3~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add3~24_combout\ = (\port_map_mult_2X1_br_ula|out_port[1]~1_combout\ & (((\port_map_ula|port_map_multi|Add3~22_combout\ & !\port_map_mult_2X1_br_ula|out_port[2]~2_combout\)))) # 
-- (!\port_map_mult_2X1_br_ula|out_port[1]~1_combout\ & (\port_map_ula|port_map_multi|Add4~12_combout\ & ((\port_map_mult_2X1_br_ula|out_port[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add4~12_combout\,
	datab => \port_map_ula|port_map_multi|Add3~22_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[1]~1_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[2]~2_combout\,
	combout => \port_map_ula|port_map_multi|Add3~24_combout\);

\port_map_ula|port_map_multi|Add3~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add3~25_combout\ = (\port_map_ula|port_map_multi|Add3~24_combout\) # ((\port_map_ula|port_map_multi|Add1~29_combout\ & (\port_map_mult_2X1_br_ula|out_port[1]~1_combout\ $ (!\port_map_mult_2X1_br_ula|out_port[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add3~24_combout\,
	datab => \port_map_ula|port_map_multi|Add1~29_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[1]~1_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[2]~2_combout\,
	combout => \port_map_ula|port_map_multi|Add3~25_combout\);

\port_map_ula|port_map_multi|Add6~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add6~10_combout\ = (\port_map_banco_de_registradores|registrador~54_combout\ & ((\port_map_ula|port_map_multi|Add3~25_combout\ & (!\port_map_ula|port_map_multi|Add6~9\)) # (!\port_map_ula|port_map_multi|Add3~25_combout\ & 
-- ((\port_map_ula|port_map_multi|Add6~9\) # (GND))))) # (!\port_map_banco_de_registradores|registrador~54_combout\ & ((\port_map_ula|port_map_multi|Add3~25_combout\ & (\port_map_ula|port_map_multi|Add6~9\ & VCC)) # 
-- (!\port_map_ula|port_map_multi|Add3~25_combout\ & (!\port_map_ula|port_map_multi|Add6~9\))))
-- \port_map_ula|port_map_multi|Add6~11\ = CARRY((\port_map_banco_de_registradores|registrador~54_combout\ & ((!\port_map_ula|port_map_multi|Add6~9\) # (!\port_map_ula|port_map_multi|Add3~25_combout\))) # 
-- (!\port_map_banco_de_registradores|registrador~54_combout\ & (!\port_map_ula|port_map_multi|Add3~25_combout\ & !\port_map_ula|port_map_multi|Add6~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~54_combout\,
	datab => \port_map_ula|port_map_multi|Add3~25_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add6~9\,
	combout => \port_map_ula|port_map_multi|Add6~10_combout\,
	cout => \port_map_ula|port_map_multi|Add6~11\);

\port_map_ula|port_map_multi|Add5~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add5~18_combout\ = (\port_map_banco_de_registradores|registrador~54_combout\ & ((\port_map_ula|port_map_multi|Add3~25_combout\ & (\port_map_ula|port_map_multi|Add5~15\ & VCC)) # (!\port_map_ula|port_map_multi|Add3~25_combout\ 
-- & (!\port_map_ula|port_map_multi|Add5~15\)))) # (!\port_map_banco_de_registradores|registrador~54_combout\ & ((\port_map_ula|port_map_multi|Add3~25_combout\ & (!\port_map_ula|port_map_multi|Add5~15\)) # (!\port_map_ula|port_map_multi|Add3~25_combout\ & 
-- ((\port_map_ula|port_map_multi|Add5~15\) # (GND)))))
-- \port_map_ula|port_map_multi|Add5~19\ = CARRY((\port_map_banco_de_registradores|registrador~54_combout\ & (!\port_map_ula|port_map_multi|Add3~25_combout\ & !\port_map_ula|port_map_multi|Add5~15\)) # 
-- (!\port_map_banco_de_registradores|registrador~54_combout\ & ((!\port_map_ula|port_map_multi|Add5~15\) # (!\port_map_ula|port_map_multi|Add3~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~54_combout\,
	datab => \port_map_ula|port_map_multi|Add3~25_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add5~15\,
	combout => \port_map_ula|port_map_multi|Add5~18_combout\,
	cout => \port_map_ula|port_map_multi|Add5~19\);

\port_map_ula|port_map_multi|Add5~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add5~20_combout\ = (\port_map_mult_2X1_br_ula|out_port[2]~2_combout\ & (((\port_map_ula|port_map_multi|Add5~18_combout\ & !\port_map_mult_2X1_br_ula|out_port[3]~3_combout\)))) # 
-- (!\port_map_mult_2X1_br_ula|out_port[2]~2_combout\ & (\port_map_ula|port_map_multi|Add6~10_combout\ & ((\port_map_mult_2X1_br_ula|out_port[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add6~10_combout\,
	datab => \port_map_ula|port_map_multi|Add5~18_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[2]~2_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[3]~3_combout\,
	combout => \port_map_ula|port_map_multi|Add5~20_combout\);

\port_map_ula|port_map_multi|Add5~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add5~21_combout\ = (\port_map_ula|port_map_multi|Add5~20_combout\) # ((\port_map_ula|port_map_multi|Add3~25_combout\ & (\port_map_mult_2X1_br_ula|out_port[2]~2_combout\ $ (!\port_map_mult_2X1_br_ula|out_port[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add5~20_combout\,
	datab => \port_map_ula|port_map_multi|Add3~25_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[2]~2_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[3]~3_combout\,
	combout => \port_map_ula|port_map_multi|Add5~21_combout\);

\port_map_ula|port_map_multi|Add7~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add7~14_combout\ = ((\port_map_banco_de_registradores|registrador~52_combout\ $ (\port_map_ula|port_map_multi|Add5~21_combout\ $ (!\port_map_ula|port_map_multi|Add7~11\)))) # (GND)
-- \port_map_ula|port_map_multi|Add7~15\ = CARRY((\port_map_banco_de_registradores|registrador~52_combout\ & ((\port_map_ula|port_map_multi|Add5~21_combout\) # (!\port_map_ula|port_map_multi|Add7~11\))) # 
-- (!\port_map_banco_de_registradores|registrador~52_combout\ & (\port_map_ula|port_map_multi|Add5~21_combout\ & !\port_map_ula|port_map_multi|Add7~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~52_combout\,
	datab => \port_map_ula|port_map_multi|Add5~21_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add7~11\,
	combout => \port_map_ula|port_map_multi|Add7~14_combout\,
	cout => \port_map_ula|port_map_multi|Add7~15\);

\port_map_ula|port_map_multi|Add8~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add8~8_combout\ = ((\port_map_banco_de_registradores|registrador~52_combout\ $ (\port_map_ula|port_map_multi|Add5~21_combout\ $ (\port_map_ula|port_map_multi|Add8~7\)))) # (GND)
-- \port_map_ula|port_map_multi|Add8~9\ = CARRY((\port_map_banco_de_registradores|registrador~52_combout\ & (\port_map_ula|port_map_multi|Add5~21_combout\ & !\port_map_ula|port_map_multi|Add8~7\)) # (!\port_map_banco_de_registradores|registrador~52_combout\ 
-- & ((\port_map_ula|port_map_multi|Add5~21_combout\) # (!\port_map_ula|port_map_multi|Add8~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~52_combout\,
	datab => \port_map_ula|port_map_multi|Add5~21_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add8~7\,
	combout => \port_map_ula|port_map_multi|Add8~8_combout\,
	cout => \port_map_ula|port_map_multi|Add8~9\);

\port_map_ula|port_map_multi|Add7~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add7~16_combout\ = (\port_map_mult_2X1_br_ula|out_port[3]~3_combout\ & ((\port_map_ula|port_map_multi|Add5~21_combout\) # ((!\port_map_mult_2X1_br_ula|out_port[4]~4_combout\)))) # 
-- (!\port_map_mult_2X1_br_ula|out_port[3]~3_combout\ & ((\port_map_mult_2X1_br_ula|out_port[4]~4_combout\ & ((\port_map_ula|port_map_multi|Add8~8_combout\))) # (!\port_map_mult_2X1_br_ula|out_port[4]~4_combout\ & 
-- (\port_map_ula|port_map_multi|Add5~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add5~21_combout\,
	datab => \port_map_mult_2X1_br_ula|out_port[3]~3_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[4]~4_combout\,
	datad => \port_map_ula|port_map_multi|Add8~8_combout\,
	combout => \port_map_ula|port_map_multi|Add7~16_combout\);

\port_map_ula|port_map_multi|Add7~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add7~17_combout\ = (\port_map_mult_2X1_br_ula|out_port[3]~3_combout\ & ((\port_map_mult_2X1_br_ula|out_port[4]~4_combout\ & ((\port_map_ula|port_map_multi|Add7~16_combout\))) # 
-- (!\port_map_mult_2X1_br_ula|out_port[4]~4_combout\ & (\port_map_ula|port_map_multi|Add7~14_combout\)))) # (!\port_map_mult_2X1_br_ula|out_port[3]~3_combout\ & (((\port_map_ula|port_map_multi|Add7~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult_2X1_br_ula|out_port[3]~3_combout\,
	datab => \port_map_mult_2X1_br_ula|out_port[4]~4_combout\,
	datac => \port_map_ula|port_map_multi|Add7~14_combout\,
	datad => \port_map_ula|port_map_multi|Add7~16_combout\,
	combout => \port_map_ula|port_map_multi|Add7~17_combout\);

\port_map_ula|port_map_multi|Add10~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add10~6_combout\ = (\port_map_banco_de_registradores|registrador~50_combout\ & ((\port_map_ula|port_map_multi|Add7~17_combout\ & (!\port_map_ula|port_map_multi|Add10~5\)) # (!\port_map_ula|port_map_multi|Add7~17_combout\ & 
-- ((\port_map_ula|port_map_multi|Add10~5\) # (GND))))) # (!\port_map_banco_de_registradores|registrador~50_combout\ & ((\port_map_ula|port_map_multi|Add7~17_combout\ & (\port_map_ula|port_map_multi|Add10~5\ & VCC)) # 
-- (!\port_map_ula|port_map_multi|Add7~17_combout\ & (!\port_map_ula|port_map_multi|Add10~5\))))
-- \port_map_ula|port_map_multi|Add10~7\ = CARRY((\port_map_banco_de_registradores|registrador~50_combout\ & ((!\port_map_ula|port_map_multi|Add10~5\) # (!\port_map_ula|port_map_multi|Add7~17_combout\))) # 
-- (!\port_map_banco_de_registradores|registrador~50_combout\ & (!\port_map_ula|port_map_multi|Add7~17_combout\ & !\port_map_ula|port_map_multi|Add10~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~50_combout\,
	datab => \port_map_ula|port_map_multi|Add7~17_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add10~5\,
	combout => \port_map_ula|port_map_multi|Add10~6_combout\,
	cout => \port_map_ula|port_map_multi|Add10~7\);

\port_map_ula|port_map_multi|Add9~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add9~10_combout\ = (\port_map_banco_de_registradores|registrador~50_combout\ & ((\port_map_ula|port_map_multi|Add7~17_combout\ & (\port_map_ula|port_map_multi|Add9~7\ & VCC)) # (!\port_map_ula|port_map_multi|Add7~17_combout\ & 
-- (!\port_map_ula|port_map_multi|Add9~7\)))) # (!\port_map_banco_de_registradores|registrador~50_combout\ & ((\port_map_ula|port_map_multi|Add7~17_combout\ & (!\port_map_ula|port_map_multi|Add9~7\)) # (!\port_map_ula|port_map_multi|Add7~17_combout\ & 
-- ((\port_map_ula|port_map_multi|Add9~7\) # (GND)))))
-- \port_map_ula|port_map_multi|Add9~11\ = CARRY((\port_map_banco_de_registradores|registrador~50_combout\ & (!\port_map_ula|port_map_multi|Add7~17_combout\ & !\port_map_ula|port_map_multi|Add9~7\)) # 
-- (!\port_map_banco_de_registradores|registrador~50_combout\ & ((!\port_map_ula|port_map_multi|Add9~7\) # (!\port_map_ula|port_map_multi|Add7~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~50_combout\,
	datab => \port_map_ula|port_map_multi|Add7~17_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add9~7\,
	combout => \port_map_ula|port_map_multi|Add9~10_combout\,
	cout => \port_map_ula|port_map_multi|Add9~11\);

\port_map_ula|port_map_multi|Add9~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add9~12_combout\ = (\port_map_mult_2X1_br_ula|out_port[4]~4_combout\ & (((\port_map_ula|port_map_multi|Add9~10_combout\ & !\port_map_mult_2X1_br_ula|out_port[5]~5_combout\)))) # 
-- (!\port_map_mult_2X1_br_ula|out_port[4]~4_combout\ & (\port_map_ula|port_map_multi|Add10~6_combout\ & ((\port_map_mult_2X1_br_ula|out_port[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add10~6_combout\,
	datab => \port_map_ula|port_map_multi|Add9~10_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[4]~4_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[5]~5_combout\,
	combout => \port_map_ula|port_map_multi|Add9~12_combout\);

\port_map_ula|port_map_multi|Add9~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add9~13_combout\ = (\port_map_ula|port_map_multi|Add9~12_combout\) # ((\port_map_ula|port_map_multi|Add7~17_combout\ & (\port_map_mult_2X1_br_ula|out_port[4]~4_combout\ $ (!\port_map_mult_2X1_br_ula|out_port[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add9~12_combout\,
	datab => \port_map_ula|port_map_multi|Add7~17_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[4]~4_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[5]~5_combout\,
	combout => \port_map_ula|port_map_multi|Add9~13_combout\);

\port_map_ula|port_map_multi|Add12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add12~4_combout\ = ((\port_map_banco_de_registradores|registrador~48_combout\ $ (\port_map_ula|port_map_multi|Add9~13_combout\ $ (\port_map_ula|port_map_multi|Add12~3\)))) # (GND)
-- \port_map_ula|port_map_multi|Add12~5\ = CARRY((\port_map_banco_de_registradores|registrador~48_combout\ & (\port_map_ula|port_map_multi|Add9~13_combout\ & !\port_map_ula|port_map_multi|Add12~3\)) # 
-- (!\port_map_banco_de_registradores|registrador~48_combout\ & ((\port_map_ula|port_map_multi|Add9~13_combout\) # (!\port_map_ula|port_map_multi|Add12~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~48_combout\,
	datab => \port_map_ula|port_map_multi|Add9~13_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add12~3\,
	combout => \port_map_ula|port_map_multi|Add12~4_combout\,
	cout => \port_map_ula|port_map_multi|Add12~5\);

\port_map_ula|port_map_multi|Add11~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add11~6_combout\ = ((\port_map_banco_de_registradores|registrador~48_combout\ $ (\port_map_ula|port_map_multi|Add9~13_combout\ $ (!\port_map_ula|port_map_multi|Add11~3\)))) # (GND)
-- \port_map_ula|port_map_multi|Add11~7\ = CARRY((\port_map_banco_de_registradores|registrador~48_combout\ & ((\port_map_ula|port_map_multi|Add9~13_combout\) # (!\port_map_ula|port_map_multi|Add11~3\))) # 
-- (!\port_map_banco_de_registradores|registrador~48_combout\ & (\port_map_ula|port_map_multi|Add9~13_combout\ & !\port_map_ula|port_map_multi|Add11~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~48_combout\,
	datab => \port_map_ula|port_map_multi|Add9~13_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add11~3\,
	combout => \port_map_ula|port_map_multi|Add11~6_combout\,
	cout => \port_map_ula|port_map_multi|Add11~7\);

\port_map_ula|port_map_multi|Add11~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add11~8_combout\ = (\port_map_mult_2X1_br_ula|out_port[5]~5_combout\ & (((\port_map_ula|port_map_multi|Add11~6_combout\ & !\port_map_mult_2X1_br_ula|out_port[6]~6_combout\)))) # 
-- (!\port_map_mult_2X1_br_ula|out_port[5]~5_combout\ & (\port_map_ula|port_map_multi|Add12~4_combout\ & ((\port_map_mult_2X1_br_ula|out_port[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add12~4_combout\,
	datab => \port_map_ula|port_map_multi|Add11~6_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[5]~5_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[6]~6_combout\,
	combout => \port_map_ula|port_map_multi|Add11~8_combout\);

\port_map_ula|port_map_multi|Add11~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add11~9_combout\ = (\port_map_ula|port_map_multi|Add11~8_combout\) # ((\port_map_ula|port_map_multi|Add9~13_combout\ & (\port_map_mult_2X1_br_ula|out_port[5]~5_combout\ $ (!\port_map_mult_2X1_br_ula|out_port[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add11~8_combout\,
	datab => \port_map_ula|port_map_multi|Add9~13_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[5]~5_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[6]~6_combout\,
	combout => \port_map_ula|port_map_multi|Add11~9_combout\);

\port_map_ula|port_map_multi|Add4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add4~14_combout\ = \port_map_banco_de_registradores|registrador~58_combout\ $ (\port_map_ula|port_map_multi|Add1~29_combout\ $ (!\port_map_ula|port_map_multi|Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~58_combout\,
	datab => \port_map_ula|port_map_multi|Add1~29_combout\,
	cin => \port_map_ula|port_map_multi|Add4~13\,
	combout => \port_map_ula|port_map_multi|Add4~14_combout\);

\port_map_ula|port_map_multi|Add3~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add3~26_combout\ = \port_map_banco_de_registradores|registrador~58_combout\ $ (\port_map_ula|port_map_multi|Add1~29_combout\ $ (\port_map_ula|port_map_multi|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~58_combout\,
	datab => \port_map_ula|port_map_multi|Add1~29_combout\,
	cin => \port_map_ula|port_map_multi|Add3~23\,
	combout => \port_map_ula|port_map_multi|Add3~26_combout\);

\port_map_ula|port_map_multi|Add3~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add3~28_combout\ = (\port_map_mult_2X1_br_ula|out_port[1]~1_combout\ & (((\port_map_ula|port_map_multi|Add3~26_combout\ & !\port_map_mult_2X1_br_ula|out_port[2]~2_combout\)))) # 
-- (!\port_map_mult_2X1_br_ula|out_port[1]~1_combout\ & (\port_map_ula|port_map_multi|Add4~14_combout\ & ((\port_map_mult_2X1_br_ula|out_port[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add4~14_combout\,
	datab => \port_map_ula|port_map_multi|Add3~26_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[1]~1_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[2]~2_combout\,
	combout => \port_map_ula|port_map_multi|Add3~28_combout\);

\port_map_ula|port_map_multi|Add3~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add3~29_combout\ = (\port_map_ula|port_map_multi|Add3~28_combout\) # ((\port_map_ula|port_map_multi|Add1~29_combout\ & (\port_map_mult_2X1_br_ula|out_port[1]~1_combout\ $ (!\port_map_mult_2X1_br_ula|out_port[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add3~28_combout\,
	datab => \port_map_ula|port_map_multi|Add1~29_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[1]~1_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[2]~2_combout\,
	combout => \port_map_ula|port_map_multi|Add3~29_combout\);

\port_map_ula|port_map_multi|Add6~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add6~12_combout\ = ((\port_map_banco_de_registradores|registrador~56_combout\ $ (\port_map_ula|port_map_multi|Add3~29_combout\ $ (\port_map_ula|port_map_multi|Add6~11\)))) # (GND)
-- \port_map_ula|port_map_multi|Add6~13\ = CARRY((\port_map_banco_de_registradores|registrador~56_combout\ & (\port_map_ula|port_map_multi|Add3~29_combout\ & !\port_map_ula|port_map_multi|Add6~11\)) # 
-- (!\port_map_banco_de_registradores|registrador~56_combout\ & ((\port_map_ula|port_map_multi|Add3~29_combout\) # (!\port_map_ula|port_map_multi|Add6~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~56_combout\,
	datab => \port_map_ula|port_map_multi|Add3~29_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add6~11\,
	combout => \port_map_ula|port_map_multi|Add6~12_combout\,
	cout => \port_map_ula|port_map_multi|Add6~13\);

\port_map_ula|port_map_multi|Add5~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add5~22_combout\ = ((\port_map_banco_de_registradores|registrador~56_combout\ $ (\port_map_ula|port_map_multi|Add3~29_combout\ $ (!\port_map_ula|port_map_multi|Add5~19\)))) # (GND)
-- \port_map_ula|port_map_multi|Add5~23\ = CARRY((\port_map_banco_de_registradores|registrador~56_combout\ & ((\port_map_ula|port_map_multi|Add3~29_combout\) # (!\port_map_ula|port_map_multi|Add5~19\))) # 
-- (!\port_map_banco_de_registradores|registrador~56_combout\ & (\port_map_ula|port_map_multi|Add3~29_combout\ & !\port_map_ula|port_map_multi|Add5~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~56_combout\,
	datab => \port_map_ula|port_map_multi|Add3~29_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add5~19\,
	combout => \port_map_ula|port_map_multi|Add5~22_combout\,
	cout => \port_map_ula|port_map_multi|Add5~23\);

\port_map_ula|port_map_multi|Add5~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add5~24_combout\ = (\port_map_mult_2X1_br_ula|out_port[2]~2_combout\ & (((\port_map_ula|port_map_multi|Add5~22_combout\ & !\port_map_mult_2X1_br_ula|out_port[3]~3_combout\)))) # 
-- (!\port_map_mult_2X1_br_ula|out_port[2]~2_combout\ & (\port_map_ula|port_map_multi|Add6~12_combout\ & ((\port_map_mult_2X1_br_ula|out_port[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add6~12_combout\,
	datab => \port_map_ula|port_map_multi|Add5~22_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[2]~2_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[3]~3_combout\,
	combout => \port_map_ula|port_map_multi|Add5~24_combout\);

\port_map_ula|port_map_multi|Add5~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add5~25_combout\ = (\port_map_ula|port_map_multi|Add5~24_combout\) # ((\port_map_ula|port_map_multi|Add3~29_combout\ & (\port_map_mult_2X1_br_ula|out_port[2]~2_combout\ $ (!\port_map_mult_2X1_br_ula|out_port[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add5~24_combout\,
	datab => \port_map_ula|port_map_multi|Add3~29_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[2]~2_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[3]~3_combout\,
	combout => \port_map_ula|port_map_multi|Add5~25_combout\);

\port_map_ula|port_map_multi|Add8~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add8~10_combout\ = (\port_map_banco_de_registradores|registrador~54_combout\ & ((\port_map_ula|port_map_multi|Add5~25_combout\ & (!\port_map_ula|port_map_multi|Add8~9\)) # (!\port_map_ula|port_map_multi|Add5~25_combout\ & 
-- ((\port_map_ula|port_map_multi|Add8~9\) # (GND))))) # (!\port_map_banco_de_registradores|registrador~54_combout\ & ((\port_map_ula|port_map_multi|Add5~25_combout\ & (\port_map_ula|port_map_multi|Add8~9\ & VCC)) # 
-- (!\port_map_ula|port_map_multi|Add5~25_combout\ & (!\port_map_ula|port_map_multi|Add8~9\))))
-- \port_map_ula|port_map_multi|Add8~11\ = CARRY((\port_map_banco_de_registradores|registrador~54_combout\ & ((!\port_map_ula|port_map_multi|Add8~9\) # (!\port_map_ula|port_map_multi|Add5~25_combout\))) # 
-- (!\port_map_banco_de_registradores|registrador~54_combout\ & (!\port_map_ula|port_map_multi|Add5~25_combout\ & !\port_map_ula|port_map_multi|Add8~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~54_combout\,
	datab => \port_map_ula|port_map_multi|Add5~25_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add8~9\,
	combout => \port_map_ula|port_map_multi|Add8~10_combout\,
	cout => \port_map_ula|port_map_multi|Add8~11\);

\port_map_ula|port_map_multi|Add7~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add7~18_combout\ = (\port_map_banco_de_registradores|registrador~54_combout\ & ((\port_map_ula|port_map_multi|Add5~25_combout\ & (\port_map_ula|port_map_multi|Add7~15\ & VCC)) # (!\port_map_ula|port_map_multi|Add5~25_combout\ 
-- & (!\port_map_ula|port_map_multi|Add7~15\)))) # (!\port_map_banco_de_registradores|registrador~54_combout\ & ((\port_map_ula|port_map_multi|Add5~25_combout\ & (!\port_map_ula|port_map_multi|Add7~15\)) # (!\port_map_ula|port_map_multi|Add5~25_combout\ & 
-- ((\port_map_ula|port_map_multi|Add7~15\) # (GND)))))
-- \port_map_ula|port_map_multi|Add7~19\ = CARRY((\port_map_banco_de_registradores|registrador~54_combout\ & (!\port_map_ula|port_map_multi|Add5~25_combout\ & !\port_map_ula|port_map_multi|Add7~15\)) # 
-- (!\port_map_banco_de_registradores|registrador~54_combout\ & ((!\port_map_ula|port_map_multi|Add7~15\) # (!\port_map_ula|port_map_multi|Add5~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~54_combout\,
	datab => \port_map_ula|port_map_multi|Add5~25_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add7~15\,
	combout => \port_map_ula|port_map_multi|Add7~18_combout\,
	cout => \port_map_ula|port_map_multi|Add7~19\);

\port_map_ula|port_map_multi|Add7~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add7~20_combout\ = (\port_map_mult_2X1_br_ula|out_port[3]~3_combout\ & (((\port_map_ula|port_map_multi|Add7~18_combout\ & !\port_map_mult_2X1_br_ula|out_port[4]~4_combout\)))) # 
-- (!\port_map_mult_2X1_br_ula|out_port[3]~3_combout\ & (\port_map_ula|port_map_multi|Add8~10_combout\ & ((\port_map_mult_2X1_br_ula|out_port[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add8~10_combout\,
	datab => \port_map_ula|port_map_multi|Add7~18_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[3]~3_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[4]~4_combout\,
	combout => \port_map_ula|port_map_multi|Add7~20_combout\);

\port_map_ula|port_map_multi|Add7~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add7~21_combout\ = (\port_map_ula|port_map_multi|Add7~20_combout\) # ((\port_map_ula|port_map_multi|Add5~25_combout\ & (\port_map_mult_2X1_br_ula|out_port[3]~3_combout\ $ (!\port_map_mult_2X1_br_ula|out_port[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add7~20_combout\,
	datab => \port_map_ula|port_map_multi|Add5~25_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[3]~3_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[4]~4_combout\,
	combout => \port_map_ula|port_map_multi|Add7~21_combout\);

\port_map_ula|port_map_multi|Add10~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add10~8_combout\ = ((\port_map_banco_de_registradores|registrador~52_combout\ $ (\port_map_ula|port_map_multi|Add7~21_combout\ $ (\port_map_ula|port_map_multi|Add10~7\)))) # (GND)
-- \port_map_ula|port_map_multi|Add10~9\ = CARRY((\port_map_banco_de_registradores|registrador~52_combout\ & (\port_map_ula|port_map_multi|Add7~21_combout\ & !\port_map_ula|port_map_multi|Add10~7\)) # 
-- (!\port_map_banco_de_registradores|registrador~52_combout\ & ((\port_map_ula|port_map_multi|Add7~21_combout\) # (!\port_map_ula|port_map_multi|Add10~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~52_combout\,
	datab => \port_map_ula|port_map_multi|Add7~21_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add10~7\,
	combout => \port_map_ula|port_map_multi|Add10~8_combout\,
	cout => \port_map_ula|port_map_multi|Add10~9\);

\port_map_ula|port_map_multi|Add9~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add9~14_combout\ = ((\port_map_banco_de_registradores|registrador~52_combout\ $ (\port_map_ula|port_map_multi|Add7~21_combout\ $ (!\port_map_ula|port_map_multi|Add9~11\)))) # (GND)
-- \port_map_ula|port_map_multi|Add9~15\ = CARRY((\port_map_banco_de_registradores|registrador~52_combout\ & ((\port_map_ula|port_map_multi|Add7~21_combout\) # (!\port_map_ula|port_map_multi|Add9~11\))) # 
-- (!\port_map_banco_de_registradores|registrador~52_combout\ & (\port_map_ula|port_map_multi|Add7~21_combout\ & !\port_map_ula|port_map_multi|Add9~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~52_combout\,
	datab => \port_map_ula|port_map_multi|Add7~21_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add9~11\,
	combout => \port_map_ula|port_map_multi|Add9~14_combout\,
	cout => \port_map_ula|port_map_multi|Add9~15\);

\port_map_ula|port_map_multi|Add9~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add9~16_combout\ = (\port_map_mult_2X1_br_ula|out_port[4]~4_combout\ & (((\port_map_ula|port_map_multi|Add9~14_combout\ & !\port_map_mult_2X1_br_ula|out_port[5]~5_combout\)))) # 
-- (!\port_map_mult_2X1_br_ula|out_port[4]~4_combout\ & (\port_map_ula|port_map_multi|Add10~8_combout\ & ((\port_map_mult_2X1_br_ula|out_port[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add10~8_combout\,
	datab => \port_map_ula|port_map_multi|Add9~14_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[4]~4_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[5]~5_combout\,
	combout => \port_map_ula|port_map_multi|Add9~16_combout\);

\port_map_ula|port_map_multi|Add9~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add9~17_combout\ = (\port_map_ula|port_map_multi|Add9~16_combout\) # ((\port_map_ula|port_map_multi|Add7~21_combout\ & (\port_map_mult_2X1_br_ula|out_port[4]~4_combout\ $ (!\port_map_mult_2X1_br_ula|out_port[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add9~16_combout\,
	datab => \port_map_ula|port_map_multi|Add7~21_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[4]~4_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[5]~5_combout\,
	combout => \port_map_ula|port_map_multi|Add9~17_combout\);

\port_map_ula|port_map_multi|Add12~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add12~6_combout\ = (\port_map_banco_de_registradores|registrador~50_combout\ & ((\port_map_ula|port_map_multi|Add9~17_combout\ & (!\port_map_ula|port_map_multi|Add12~5\)) # (!\port_map_ula|port_map_multi|Add9~17_combout\ & 
-- ((\port_map_ula|port_map_multi|Add12~5\) # (GND))))) # (!\port_map_banco_de_registradores|registrador~50_combout\ & ((\port_map_ula|port_map_multi|Add9~17_combout\ & (\port_map_ula|port_map_multi|Add12~5\ & VCC)) # 
-- (!\port_map_ula|port_map_multi|Add9~17_combout\ & (!\port_map_ula|port_map_multi|Add12~5\))))
-- \port_map_ula|port_map_multi|Add12~7\ = CARRY((\port_map_banco_de_registradores|registrador~50_combout\ & ((!\port_map_ula|port_map_multi|Add12~5\) # (!\port_map_ula|port_map_multi|Add9~17_combout\))) # 
-- (!\port_map_banco_de_registradores|registrador~50_combout\ & (!\port_map_ula|port_map_multi|Add9~17_combout\ & !\port_map_ula|port_map_multi|Add12~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~50_combout\,
	datab => \port_map_ula|port_map_multi|Add9~17_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add12~5\,
	combout => \port_map_ula|port_map_multi|Add12~6_combout\,
	cout => \port_map_ula|port_map_multi|Add12~7\);

\port_map_ula|port_map_multi|Add11~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add11~10_combout\ = (\port_map_banco_de_registradores|registrador~50_combout\ & ((\port_map_ula|port_map_multi|Add9~17_combout\ & (\port_map_ula|port_map_multi|Add11~7\ & VCC)) # (!\port_map_ula|port_map_multi|Add9~17_combout\ 
-- & (!\port_map_ula|port_map_multi|Add11~7\)))) # (!\port_map_banco_de_registradores|registrador~50_combout\ & ((\port_map_ula|port_map_multi|Add9~17_combout\ & (!\port_map_ula|port_map_multi|Add11~7\)) # (!\port_map_ula|port_map_multi|Add9~17_combout\ & 
-- ((\port_map_ula|port_map_multi|Add11~7\) # (GND)))))
-- \port_map_ula|port_map_multi|Add11~11\ = CARRY((\port_map_banco_de_registradores|registrador~50_combout\ & (!\port_map_ula|port_map_multi|Add9~17_combout\ & !\port_map_ula|port_map_multi|Add11~7\)) # 
-- (!\port_map_banco_de_registradores|registrador~50_combout\ & ((!\port_map_ula|port_map_multi|Add11~7\) # (!\port_map_ula|port_map_multi|Add9~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~50_combout\,
	datab => \port_map_ula|port_map_multi|Add9~17_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add11~7\,
	combout => \port_map_ula|port_map_multi|Add11~10_combout\,
	cout => \port_map_ula|port_map_multi|Add11~11\);

\port_map_ula|port_map_multi|Add11~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add11~12_combout\ = (\port_map_mult_2X1_br_ula|out_port[5]~5_combout\ & (((\port_map_ula|port_map_multi|Add11~10_combout\ & !\port_map_mult_2X1_br_ula|out_port[6]~6_combout\)))) # 
-- (!\port_map_mult_2X1_br_ula|out_port[5]~5_combout\ & (\port_map_ula|port_map_multi|Add12~6_combout\ & ((\port_map_mult_2X1_br_ula|out_port[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add12~6_combout\,
	datab => \port_map_ula|port_map_multi|Add11~10_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[5]~5_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[6]~6_combout\,
	combout => \port_map_ula|port_map_multi|Add11~12_combout\);

\port_map_ula|port_map_multi|Add11~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add11~13_combout\ = (\port_map_ula|port_map_multi|Add11~12_combout\) # ((\port_map_ula|port_map_multi|Add9~17_combout\ & (\port_map_mult_2X1_br_ula|out_port[5]~5_combout\ $ 
-- (!\port_map_mult_2X1_br_ula|out_port[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add11~12_combout\,
	datab => \port_map_ula|port_map_multi|Add9~17_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[5]~5_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[6]~6_combout\,
	combout => \port_map_ula|port_map_multi|Add11~13_combout\);

\port_map_ula|port_map_multi|Add6~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add6~14_combout\ = \port_map_banco_de_registradores|registrador~58_combout\ $ (\port_map_ula|port_map_multi|Add3~29_combout\ $ (!\port_map_ula|port_map_multi|Add6~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~58_combout\,
	datab => \port_map_ula|port_map_multi|Add3~29_combout\,
	cin => \port_map_ula|port_map_multi|Add6~13\,
	combout => \port_map_ula|port_map_multi|Add6~14_combout\);

\port_map_ula|port_map_multi|Add5~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add5~26_combout\ = \port_map_banco_de_registradores|registrador~58_combout\ $ (\port_map_ula|port_map_multi|Add3~29_combout\ $ (\port_map_ula|port_map_multi|Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~58_combout\,
	datab => \port_map_ula|port_map_multi|Add3~29_combout\,
	cin => \port_map_ula|port_map_multi|Add5~23\,
	combout => \port_map_ula|port_map_multi|Add5~26_combout\);

\port_map_ula|port_map_multi|Add5~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add5~28_combout\ = (\port_map_mult_2X1_br_ula|out_port[2]~2_combout\ & (((\port_map_ula|port_map_multi|Add5~26_combout\ & !\port_map_mult_2X1_br_ula|out_port[3]~3_combout\)))) # 
-- (!\port_map_mult_2X1_br_ula|out_port[2]~2_combout\ & (\port_map_ula|port_map_multi|Add6~14_combout\ & ((\port_map_mult_2X1_br_ula|out_port[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add6~14_combout\,
	datab => \port_map_ula|port_map_multi|Add5~26_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[2]~2_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[3]~3_combout\,
	combout => \port_map_ula|port_map_multi|Add5~28_combout\);

\port_map_ula|port_map_multi|Add5~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add5~29_combout\ = (\port_map_ula|port_map_multi|Add5~28_combout\) # ((\port_map_ula|port_map_multi|Add3~29_combout\ & (\port_map_mult_2X1_br_ula|out_port[2]~2_combout\ $ (!\port_map_mult_2X1_br_ula|out_port[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add5~28_combout\,
	datab => \port_map_ula|port_map_multi|Add3~29_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[2]~2_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[3]~3_combout\,
	combout => \port_map_ula|port_map_multi|Add5~29_combout\);

\port_map_ula|port_map_multi|Add8~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add8~12_combout\ = ((\port_map_banco_de_registradores|registrador~56_combout\ $ (\port_map_ula|port_map_multi|Add5~29_combout\ $ (\port_map_ula|port_map_multi|Add8~11\)))) # (GND)
-- \port_map_ula|port_map_multi|Add8~13\ = CARRY((\port_map_banco_de_registradores|registrador~56_combout\ & (\port_map_ula|port_map_multi|Add5~29_combout\ & !\port_map_ula|port_map_multi|Add8~11\)) # 
-- (!\port_map_banco_de_registradores|registrador~56_combout\ & ((\port_map_ula|port_map_multi|Add5~29_combout\) # (!\port_map_ula|port_map_multi|Add8~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~56_combout\,
	datab => \port_map_ula|port_map_multi|Add5~29_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add8~11\,
	combout => \port_map_ula|port_map_multi|Add8~12_combout\,
	cout => \port_map_ula|port_map_multi|Add8~13\);

\port_map_ula|port_map_multi|Add7~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add7~22_combout\ = ((\port_map_banco_de_registradores|registrador~56_combout\ $ (\port_map_ula|port_map_multi|Add5~29_combout\ $ (!\port_map_ula|port_map_multi|Add7~19\)))) # (GND)
-- \port_map_ula|port_map_multi|Add7~23\ = CARRY((\port_map_banco_de_registradores|registrador~56_combout\ & ((\port_map_ula|port_map_multi|Add5~29_combout\) # (!\port_map_ula|port_map_multi|Add7~19\))) # 
-- (!\port_map_banco_de_registradores|registrador~56_combout\ & (\port_map_ula|port_map_multi|Add5~29_combout\ & !\port_map_ula|port_map_multi|Add7~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~56_combout\,
	datab => \port_map_ula|port_map_multi|Add5~29_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add7~19\,
	combout => \port_map_ula|port_map_multi|Add7~22_combout\,
	cout => \port_map_ula|port_map_multi|Add7~23\);

\port_map_ula|port_map_multi|Add7~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add7~24_combout\ = (\port_map_mult_2X1_br_ula|out_port[3]~3_combout\ & (((\port_map_ula|port_map_multi|Add7~22_combout\ & !\port_map_mult_2X1_br_ula|out_port[4]~4_combout\)))) # 
-- (!\port_map_mult_2X1_br_ula|out_port[3]~3_combout\ & (\port_map_ula|port_map_multi|Add8~12_combout\ & ((\port_map_mult_2X1_br_ula|out_port[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add8~12_combout\,
	datab => \port_map_ula|port_map_multi|Add7~22_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[3]~3_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[4]~4_combout\,
	combout => \port_map_ula|port_map_multi|Add7~24_combout\);

\port_map_ula|port_map_multi|Add7~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add7~25_combout\ = (\port_map_ula|port_map_multi|Add7~24_combout\) # ((\port_map_ula|port_map_multi|Add5~29_combout\ & (\port_map_mult_2X1_br_ula|out_port[3]~3_combout\ $ (!\port_map_mult_2X1_br_ula|out_port[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add7~24_combout\,
	datab => \port_map_ula|port_map_multi|Add5~29_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[3]~3_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[4]~4_combout\,
	combout => \port_map_ula|port_map_multi|Add7~25_combout\);

\port_map_ula|port_map_multi|Add9~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add9~18_combout\ = (\port_map_banco_de_registradores|registrador~54_combout\ & ((\port_map_ula|port_map_multi|Add7~25_combout\ & (\port_map_ula|port_map_multi|Add9~15\ & VCC)) # (!\port_map_ula|port_map_multi|Add7~25_combout\ 
-- & (!\port_map_ula|port_map_multi|Add9~15\)))) # (!\port_map_banco_de_registradores|registrador~54_combout\ & ((\port_map_ula|port_map_multi|Add7~25_combout\ & (!\port_map_ula|port_map_multi|Add9~15\)) # (!\port_map_ula|port_map_multi|Add7~25_combout\ & 
-- ((\port_map_ula|port_map_multi|Add9~15\) # (GND)))))
-- \port_map_ula|port_map_multi|Add9~19\ = CARRY((\port_map_banco_de_registradores|registrador~54_combout\ & (!\port_map_ula|port_map_multi|Add7~25_combout\ & !\port_map_ula|port_map_multi|Add9~15\)) # 
-- (!\port_map_banco_de_registradores|registrador~54_combout\ & ((!\port_map_ula|port_map_multi|Add9~15\) # (!\port_map_ula|port_map_multi|Add7~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~54_combout\,
	datab => \port_map_ula|port_map_multi|Add7~25_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add9~15\,
	combout => \port_map_ula|port_map_multi|Add9~18_combout\,
	cout => \port_map_ula|port_map_multi|Add9~19\);

\port_map_ula|port_map_multi|Add10~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add10~10_combout\ = (\port_map_banco_de_registradores|registrador~54_combout\ & ((\port_map_ula|port_map_multi|Add7~25_combout\ & (!\port_map_ula|port_map_multi|Add10~9\)) # (!\port_map_ula|port_map_multi|Add7~25_combout\ & 
-- ((\port_map_ula|port_map_multi|Add10~9\) # (GND))))) # (!\port_map_banco_de_registradores|registrador~54_combout\ & ((\port_map_ula|port_map_multi|Add7~25_combout\ & (\port_map_ula|port_map_multi|Add10~9\ & VCC)) # 
-- (!\port_map_ula|port_map_multi|Add7~25_combout\ & (!\port_map_ula|port_map_multi|Add10~9\))))
-- \port_map_ula|port_map_multi|Add10~11\ = CARRY((\port_map_banco_de_registradores|registrador~54_combout\ & ((!\port_map_ula|port_map_multi|Add10~9\) # (!\port_map_ula|port_map_multi|Add7~25_combout\))) # 
-- (!\port_map_banco_de_registradores|registrador~54_combout\ & (!\port_map_ula|port_map_multi|Add7~25_combout\ & !\port_map_ula|port_map_multi|Add10~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~54_combout\,
	datab => \port_map_ula|port_map_multi|Add7~25_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add10~9\,
	combout => \port_map_ula|port_map_multi|Add10~10_combout\,
	cout => \port_map_ula|port_map_multi|Add10~11\);

\port_map_ula|port_map_multi|Add9~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add9~20_combout\ = (\port_map_mult_2X1_br_ula|out_port[4]~4_combout\ & ((\port_map_ula|port_map_multi|Add7~25_combout\) # ((!\port_map_mult_2X1_br_ula|out_port[5]~5_combout\)))) # 
-- (!\port_map_mult_2X1_br_ula|out_port[4]~4_combout\ & ((\port_map_mult_2X1_br_ula|out_port[5]~5_combout\ & ((\port_map_ula|port_map_multi|Add10~10_combout\))) # (!\port_map_mult_2X1_br_ula|out_port[5]~5_combout\ & 
-- (\port_map_ula|port_map_multi|Add7~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add7~25_combout\,
	datab => \port_map_mult_2X1_br_ula|out_port[4]~4_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[5]~5_combout\,
	datad => \port_map_ula|port_map_multi|Add10~10_combout\,
	combout => \port_map_ula|port_map_multi|Add9~20_combout\);

\port_map_ula|port_map_multi|Add9~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add9~21_combout\ = (\port_map_mult_2X1_br_ula|out_port[4]~4_combout\ & ((\port_map_mult_2X1_br_ula|out_port[5]~5_combout\ & ((\port_map_ula|port_map_multi|Add9~20_combout\))) # 
-- (!\port_map_mult_2X1_br_ula|out_port[5]~5_combout\ & (\port_map_ula|port_map_multi|Add9~18_combout\)))) # (!\port_map_mult_2X1_br_ula|out_port[4]~4_combout\ & (((\port_map_ula|port_map_multi|Add9~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_mult_2X1_br_ula|out_port[4]~4_combout\,
	datab => \port_map_mult_2X1_br_ula|out_port[5]~5_combout\,
	datac => \port_map_ula|port_map_multi|Add9~18_combout\,
	datad => \port_map_ula|port_map_multi|Add9~20_combout\,
	combout => \port_map_ula|port_map_multi|Add9~21_combout\);

\port_map_ula|port_map_multi|Add12~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add12~8_combout\ = ((\port_map_banco_de_registradores|registrador~52_combout\ $ (\port_map_ula|port_map_multi|Add9~21_combout\ $ (\port_map_ula|port_map_multi|Add12~7\)))) # (GND)
-- \port_map_ula|port_map_multi|Add12~9\ = CARRY((\port_map_banco_de_registradores|registrador~52_combout\ & (\port_map_ula|port_map_multi|Add9~21_combout\ & !\port_map_ula|port_map_multi|Add12~7\)) # 
-- (!\port_map_banco_de_registradores|registrador~52_combout\ & ((\port_map_ula|port_map_multi|Add9~21_combout\) # (!\port_map_ula|port_map_multi|Add12~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~52_combout\,
	datab => \port_map_ula|port_map_multi|Add9~21_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add12~7\,
	combout => \port_map_ula|port_map_multi|Add12~8_combout\,
	cout => \port_map_ula|port_map_multi|Add12~9\);

\port_map_ula|port_map_multi|Add11~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add11~14_combout\ = ((\port_map_banco_de_registradores|registrador~52_combout\ $ (\port_map_ula|port_map_multi|Add9~21_combout\ $ (!\port_map_ula|port_map_multi|Add11~11\)))) # (GND)
-- \port_map_ula|port_map_multi|Add11~15\ = CARRY((\port_map_banco_de_registradores|registrador~52_combout\ & ((\port_map_ula|port_map_multi|Add9~21_combout\) # (!\port_map_ula|port_map_multi|Add11~11\))) # 
-- (!\port_map_banco_de_registradores|registrador~52_combout\ & (\port_map_ula|port_map_multi|Add9~21_combout\ & !\port_map_ula|port_map_multi|Add11~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~52_combout\,
	datab => \port_map_ula|port_map_multi|Add9~21_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add11~11\,
	combout => \port_map_ula|port_map_multi|Add11~14_combout\,
	cout => \port_map_ula|port_map_multi|Add11~15\);

\port_map_ula|port_map_multi|Add11~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add11~16_combout\ = (\port_map_mult_2X1_br_ula|out_port[5]~5_combout\ & (((\port_map_ula|port_map_multi|Add11~14_combout\ & !\port_map_mult_2X1_br_ula|out_port[6]~6_combout\)))) # 
-- (!\port_map_mult_2X1_br_ula|out_port[5]~5_combout\ & (\port_map_ula|port_map_multi|Add12~8_combout\ & ((\port_map_mult_2X1_br_ula|out_port[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add12~8_combout\,
	datab => \port_map_ula|port_map_multi|Add11~14_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[5]~5_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[6]~6_combout\,
	combout => \port_map_ula|port_map_multi|Add11~16_combout\);

\port_map_ula|port_map_multi|Add11~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add11~17_combout\ = (\port_map_ula|port_map_multi|Add11~16_combout\) # ((\port_map_ula|port_map_multi|Add9~21_combout\ & (\port_map_mult_2X1_br_ula|out_port[5]~5_combout\ $ 
-- (!\port_map_mult_2X1_br_ula|out_port[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add11~16_combout\,
	datab => \port_map_ula|port_map_multi|Add9~21_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[5]~5_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[6]~6_combout\,
	combout => \port_map_ula|port_map_multi|Add11~17_combout\);

\port_map_ula|port_map_multi|Add8~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add8~14_combout\ = \port_map_banco_de_registradores|registrador~58_combout\ $ (\port_map_ula|port_map_multi|Add5~29_combout\ $ (!\port_map_ula|port_map_multi|Add8~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~58_combout\,
	datab => \port_map_ula|port_map_multi|Add5~29_combout\,
	cin => \port_map_ula|port_map_multi|Add8~13\,
	combout => \port_map_ula|port_map_multi|Add8~14_combout\);

\port_map_ula|port_map_multi|Add7~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add7~26_combout\ = \port_map_banco_de_registradores|registrador~58_combout\ $ (\port_map_ula|port_map_multi|Add5~29_combout\ $ (\port_map_ula|port_map_multi|Add7~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~58_combout\,
	datab => \port_map_ula|port_map_multi|Add5~29_combout\,
	cin => \port_map_ula|port_map_multi|Add7~23\,
	combout => \port_map_ula|port_map_multi|Add7~26_combout\);

\port_map_ula|port_map_multi|Add7~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add7~28_combout\ = (\port_map_mult_2X1_br_ula|out_port[3]~3_combout\ & (((\port_map_ula|port_map_multi|Add7~26_combout\ & !\port_map_mult_2X1_br_ula|out_port[4]~4_combout\)))) # 
-- (!\port_map_mult_2X1_br_ula|out_port[3]~3_combout\ & (\port_map_ula|port_map_multi|Add8~14_combout\ & ((\port_map_mult_2X1_br_ula|out_port[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add8~14_combout\,
	datab => \port_map_ula|port_map_multi|Add7~26_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[3]~3_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[4]~4_combout\,
	combout => \port_map_ula|port_map_multi|Add7~28_combout\);

\port_map_ula|port_map_multi|Add7~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add7~29_combout\ = (\port_map_ula|port_map_multi|Add7~28_combout\) # ((\port_map_ula|port_map_multi|Add5~29_combout\ & (\port_map_mult_2X1_br_ula|out_port[3]~3_combout\ $ (!\port_map_mult_2X1_br_ula|out_port[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add7~28_combout\,
	datab => \port_map_ula|port_map_multi|Add5~29_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[3]~3_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[4]~4_combout\,
	combout => \port_map_ula|port_map_multi|Add7~29_combout\);

\port_map_ula|port_map_multi|Add10~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add10~12_combout\ = ((\port_map_banco_de_registradores|registrador~56_combout\ $ (\port_map_ula|port_map_multi|Add7~29_combout\ $ (\port_map_ula|port_map_multi|Add10~11\)))) # (GND)
-- \port_map_ula|port_map_multi|Add10~13\ = CARRY((\port_map_banco_de_registradores|registrador~56_combout\ & (\port_map_ula|port_map_multi|Add7~29_combout\ & !\port_map_ula|port_map_multi|Add10~11\)) # 
-- (!\port_map_banco_de_registradores|registrador~56_combout\ & ((\port_map_ula|port_map_multi|Add7~29_combout\) # (!\port_map_ula|port_map_multi|Add10~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~56_combout\,
	datab => \port_map_ula|port_map_multi|Add7~29_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add10~11\,
	combout => \port_map_ula|port_map_multi|Add10~12_combout\,
	cout => \port_map_ula|port_map_multi|Add10~13\);

\port_map_ula|port_map_multi|Add9~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add9~22_combout\ = ((\port_map_banco_de_registradores|registrador~56_combout\ $ (\port_map_ula|port_map_multi|Add7~29_combout\ $ (!\port_map_ula|port_map_multi|Add9~19\)))) # (GND)
-- \port_map_ula|port_map_multi|Add9~23\ = CARRY((\port_map_banco_de_registradores|registrador~56_combout\ & ((\port_map_ula|port_map_multi|Add7~29_combout\) # (!\port_map_ula|port_map_multi|Add9~19\))) # 
-- (!\port_map_banco_de_registradores|registrador~56_combout\ & (\port_map_ula|port_map_multi|Add7~29_combout\ & !\port_map_ula|port_map_multi|Add9~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~56_combout\,
	datab => \port_map_ula|port_map_multi|Add7~29_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add9~19\,
	combout => \port_map_ula|port_map_multi|Add9~22_combout\,
	cout => \port_map_ula|port_map_multi|Add9~23\);

\port_map_ula|port_map_multi|Add9~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add9~24_combout\ = (\port_map_mult_2X1_br_ula|out_port[4]~4_combout\ & (((\port_map_ula|port_map_multi|Add9~22_combout\ & !\port_map_mult_2X1_br_ula|out_port[5]~5_combout\)))) # 
-- (!\port_map_mult_2X1_br_ula|out_port[4]~4_combout\ & (\port_map_ula|port_map_multi|Add10~12_combout\ & ((\port_map_mult_2X1_br_ula|out_port[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add10~12_combout\,
	datab => \port_map_ula|port_map_multi|Add9~22_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[4]~4_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[5]~5_combout\,
	combout => \port_map_ula|port_map_multi|Add9~24_combout\);

\port_map_ula|port_map_multi|Add9~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add9~25_combout\ = (\port_map_ula|port_map_multi|Add9~24_combout\) # ((\port_map_ula|port_map_multi|Add7~29_combout\ & (\port_map_mult_2X1_br_ula|out_port[4]~4_combout\ $ (!\port_map_mult_2X1_br_ula|out_port[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add9~24_combout\,
	datab => \port_map_ula|port_map_multi|Add7~29_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[4]~4_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[5]~5_combout\,
	combout => \port_map_ula|port_map_multi|Add9~25_combout\);

\port_map_ula|port_map_multi|Add12~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add12~10_combout\ = (\port_map_banco_de_registradores|registrador~54_combout\ & ((\port_map_ula|port_map_multi|Add9~25_combout\ & (!\port_map_ula|port_map_multi|Add12~9\)) # (!\port_map_ula|port_map_multi|Add9~25_combout\ & 
-- ((\port_map_ula|port_map_multi|Add12~9\) # (GND))))) # (!\port_map_banco_de_registradores|registrador~54_combout\ & ((\port_map_ula|port_map_multi|Add9~25_combout\ & (\port_map_ula|port_map_multi|Add12~9\ & VCC)) # 
-- (!\port_map_ula|port_map_multi|Add9~25_combout\ & (!\port_map_ula|port_map_multi|Add12~9\))))
-- \port_map_ula|port_map_multi|Add12~11\ = CARRY((\port_map_banco_de_registradores|registrador~54_combout\ & ((!\port_map_ula|port_map_multi|Add12~9\) # (!\port_map_ula|port_map_multi|Add9~25_combout\))) # 
-- (!\port_map_banco_de_registradores|registrador~54_combout\ & (!\port_map_ula|port_map_multi|Add9~25_combout\ & !\port_map_ula|port_map_multi|Add12~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~54_combout\,
	datab => \port_map_ula|port_map_multi|Add9~25_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add12~9\,
	combout => \port_map_ula|port_map_multi|Add12~10_combout\,
	cout => \port_map_ula|port_map_multi|Add12~11\);

\port_map_ula|port_map_multi|Add11~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add11~18_combout\ = (\port_map_banco_de_registradores|registrador~54_combout\ & ((\port_map_ula|port_map_multi|Add9~25_combout\ & (\port_map_ula|port_map_multi|Add11~15\ & VCC)) # 
-- (!\port_map_ula|port_map_multi|Add9~25_combout\ & (!\port_map_ula|port_map_multi|Add11~15\)))) # (!\port_map_banco_de_registradores|registrador~54_combout\ & ((\port_map_ula|port_map_multi|Add9~25_combout\ & (!\port_map_ula|port_map_multi|Add11~15\)) # 
-- (!\port_map_ula|port_map_multi|Add9~25_combout\ & ((\port_map_ula|port_map_multi|Add11~15\) # (GND)))))
-- \port_map_ula|port_map_multi|Add11~19\ = CARRY((\port_map_banco_de_registradores|registrador~54_combout\ & (!\port_map_ula|port_map_multi|Add9~25_combout\ & !\port_map_ula|port_map_multi|Add11~15\)) # 
-- (!\port_map_banco_de_registradores|registrador~54_combout\ & ((!\port_map_ula|port_map_multi|Add11~15\) # (!\port_map_ula|port_map_multi|Add9~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~54_combout\,
	datab => \port_map_ula|port_map_multi|Add9~25_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add11~15\,
	combout => \port_map_ula|port_map_multi|Add11~18_combout\,
	cout => \port_map_ula|port_map_multi|Add11~19\);

\port_map_ula|port_map_multi|Add11~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add11~20_combout\ = (\port_map_mult_2X1_br_ula|out_port[5]~5_combout\ & (((\port_map_ula|port_map_multi|Add11~18_combout\ & !\port_map_mult_2X1_br_ula|out_port[6]~6_combout\)))) # 
-- (!\port_map_mult_2X1_br_ula|out_port[5]~5_combout\ & (\port_map_ula|port_map_multi|Add12~10_combout\ & ((\port_map_mult_2X1_br_ula|out_port[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add12~10_combout\,
	datab => \port_map_ula|port_map_multi|Add11~18_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[5]~5_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[6]~6_combout\,
	combout => \port_map_ula|port_map_multi|Add11~20_combout\);

\port_map_ula|port_map_multi|Add11~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add11~21_combout\ = (\port_map_ula|port_map_multi|Add11~20_combout\) # ((\port_map_ula|port_map_multi|Add9~25_combout\ & (\port_map_mult_2X1_br_ula|out_port[5]~5_combout\ $ 
-- (!\port_map_mult_2X1_br_ula|out_port[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add11~20_combout\,
	datab => \port_map_ula|port_map_multi|Add9~25_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[5]~5_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[6]~6_combout\,
	combout => \port_map_ula|port_map_multi|Add11~21_combout\);

\port_map_ula|Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux12~1_combout\ = (\port_map_ula|port_map_multi|Add11~9_combout\) # ((\port_map_ula|port_map_multi|Add11~13_combout\) # ((\port_map_ula|port_map_multi|Add11~17_combout\) # (\port_map_ula|port_map_multi|Add11~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add11~9_combout\,
	datab => \port_map_ula|port_map_multi|Add11~13_combout\,
	datac => \port_map_ula|port_map_multi|Add11~17_combout\,
	datad => \port_map_ula|port_map_multi|Add11~21_combout\,
	combout => \port_map_ula|Mux12~1_combout\);

\port_map_ula|port_map_multi|Add10~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add10~14_combout\ = \port_map_banco_de_registradores|registrador~58_combout\ $ (\port_map_ula|port_map_multi|Add7~29_combout\ $ (!\port_map_ula|port_map_multi|Add10~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~58_combout\,
	datab => \port_map_ula|port_map_multi|Add7~29_combout\,
	cin => \port_map_ula|port_map_multi|Add10~13\,
	combout => \port_map_ula|port_map_multi|Add10~14_combout\);

\port_map_ula|port_map_multi|Add9~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add9~26_combout\ = \port_map_banco_de_registradores|registrador~58_combout\ $ (\port_map_ula|port_map_multi|Add7~29_combout\ $ (\port_map_ula|port_map_multi|Add9~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~58_combout\,
	datab => \port_map_ula|port_map_multi|Add7~29_combout\,
	cin => \port_map_ula|port_map_multi|Add9~23\,
	combout => \port_map_ula|port_map_multi|Add9~26_combout\);

\port_map_ula|port_map_multi|Add9~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add9~28_combout\ = (\port_map_mult_2X1_br_ula|out_port[4]~4_combout\ & (((\port_map_ula|port_map_multi|Add9~26_combout\ & !\port_map_mult_2X1_br_ula|out_port[5]~5_combout\)))) # 
-- (!\port_map_mult_2X1_br_ula|out_port[4]~4_combout\ & (\port_map_ula|port_map_multi|Add10~14_combout\ & ((\port_map_mult_2X1_br_ula|out_port[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add10~14_combout\,
	datab => \port_map_ula|port_map_multi|Add9~26_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[4]~4_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[5]~5_combout\,
	combout => \port_map_ula|port_map_multi|Add9~28_combout\);

\port_map_ula|port_map_multi|Add9~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add9~29_combout\ = (\port_map_ula|port_map_multi|Add9~28_combout\) # ((\port_map_ula|port_map_multi|Add7~29_combout\ & (\port_map_mult_2X1_br_ula|out_port[4]~4_combout\ $ (!\port_map_mult_2X1_br_ula|out_port[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add9~28_combout\,
	datab => \port_map_ula|port_map_multi|Add7~29_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[4]~4_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[5]~5_combout\,
	combout => \port_map_ula|port_map_multi|Add9~29_combout\);

\port_map_ula|port_map_multi|Add12~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add12~12_combout\ = ((\port_map_banco_de_registradores|registrador~56_combout\ $ (\port_map_ula|port_map_multi|Add9~29_combout\ $ (\port_map_ula|port_map_multi|Add12~11\)))) # (GND)
-- \port_map_ula|port_map_multi|Add12~13\ = CARRY((\port_map_banco_de_registradores|registrador~56_combout\ & (\port_map_ula|port_map_multi|Add9~29_combout\ & !\port_map_ula|port_map_multi|Add12~11\)) # 
-- (!\port_map_banco_de_registradores|registrador~56_combout\ & ((\port_map_ula|port_map_multi|Add9~29_combout\) # (!\port_map_ula|port_map_multi|Add12~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~56_combout\,
	datab => \port_map_ula|port_map_multi|Add9~29_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add12~11\,
	combout => \port_map_ula|port_map_multi|Add12~12_combout\,
	cout => \port_map_ula|port_map_multi|Add12~13\);

\port_map_ula|port_map_multi|Add11~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add11~22_combout\ = ((\port_map_banco_de_registradores|registrador~56_combout\ $ (\port_map_ula|port_map_multi|Add9~29_combout\ $ (!\port_map_ula|port_map_multi|Add11~19\)))) # (GND)
-- \port_map_ula|port_map_multi|Add11~23\ = CARRY((\port_map_banco_de_registradores|registrador~56_combout\ & ((\port_map_ula|port_map_multi|Add9~29_combout\) # (!\port_map_ula|port_map_multi|Add11~19\))) # 
-- (!\port_map_banco_de_registradores|registrador~56_combout\ & (\port_map_ula|port_map_multi|Add9~29_combout\ & !\port_map_ula|port_map_multi|Add11~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~56_combout\,
	datab => \port_map_ula|port_map_multi|Add9~29_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add11~19\,
	combout => \port_map_ula|port_map_multi|Add11~22_combout\,
	cout => \port_map_ula|port_map_multi|Add11~23\);

\port_map_ula|port_map_multi|Add11~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add11~24_combout\ = (\port_map_mult_2X1_br_ula|out_port[5]~5_combout\ & (((\port_map_ula|port_map_multi|Add11~22_combout\ & !\port_map_mult_2X1_br_ula|out_port[6]~6_combout\)))) # 
-- (!\port_map_mult_2X1_br_ula|out_port[5]~5_combout\ & (\port_map_ula|port_map_multi|Add12~12_combout\ & ((\port_map_mult_2X1_br_ula|out_port[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add12~12_combout\,
	datab => \port_map_ula|port_map_multi|Add11~22_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[5]~5_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[6]~6_combout\,
	combout => \port_map_ula|port_map_multi|Add11~24_combout\);

\port_map_ula|port_map_multi|Add11~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add11~25_combout\ = (\port_map_ula|port_map_multi|Add11~24_combout\) # ((\port_map_ula|port_map_multi|Add9~29_combout\ & (\port_map_mult_2X1_br_ula|out_port[5]~5_combout\ $ 
-- (!\port_map_mult_2X1_br_ula|out_port[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add11~24_combout\,
	datab => \port_map_ula|port_map_multi|Add9~29_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[5]~5_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[6]~6_combout\,
	combout => \port_map_ula|port_map_multi|Add11~25_combout\);

\port_map_ula|port_map_multi|Add12~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add12~14_combout\ = \port_map_banco_de_registradores|registrador~58_combout\ $ (\port_map_ula|port_map_multi|Add9~29_combout\ $ (!\port_map_ula|port_map_multi|Add12~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~58_combout\,
	datab => \port_map_ula|port_map_multi|Add9~29_combout\,
	cin => \port_map_ula|port_map_multi|Add12~13\,
	combout => \port_map_ula|port_map_multi|Add12~14_combout\);

\port_map_ula|port_map_multi|Add11~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add11~26_combout\ = \port_map_banco_de_registradores|registrador~58_combout\ $ (\port_map_ula|port_map_multi|Add9~29_combout\ $ (\port_map_ula|port_map_multi|Add11~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~58_combout\,
	datab => \port_map_ula|port_map_multi|Add9~29_combout\,
	cin => \port_map_ula|port_map_multi|Add11~23\,
	combout => \port_map_ula|port_map_multi|Add11~26_combout\);

\port_map_ula|port_map_multi|Add11~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add11~28_combout\ = (\port_map_mult_2X1_br_ula|out_port[5]~5_combout\ & (((\port_map_ula|port_map_multi|Add11~26_combout\ & !\port_map_mult_2X1_br_ula|out_port[6]~6_combout\)))) # 
-- (!\port_map_mult_2X1_br_ula|out_port[5]~5_combout\ & (\port_map_ula|port_map_multi|Add12~14_combout\ & ((\port_map_mult_2X1_br_ula|out_port[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add12~14_combout\,
	datab => \port_map_ula|port_map_multi|Add11~26_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[5]~5_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[6]~6_combout\,
	combout => \port_map_ula|port_map_multi|Add11~28_combout\);

\port_map_ula|port_map_multi|Add11~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add11~29_combout\ = (\port_map_ula|port_map_multi|Add11~28_combout\) # ((\port_map_ula|port_map_multi|Add9~29_combout\ & (\port_map_mult_2X1_br_ula|out_port[5]~5_combout\ $ 
-- (!\port_map_mult_2X1_br_ula|out_port[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add11~28_combout\,
	datab => \port_map_ula|port_map_multi|Add9~29_combout\,
	datac => \port_map_mult_2X1_br_ula|out_port[5]~5_combout\,
	datad => \port_map_mult_2X1_br_ula|out_port[6]~6_combout\,
	combout => \port_map_ula|port_map_multi|Add11~29_combout\);

\port_map_ula|Mux12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux12~2_combout\ = (\port_map_ula|Mux12~0_combout\ & ((\port_map_ula|Mux12~1_combout\) # ((\port_map_ula|port_map_multi|Add11~25_combout\) # (\port_map_ula|port_map_multi|Add11~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|Mux12~0_combout\,
	datab => \port_map_ula|Mux12~1_combout\,
	datac => \port_map_ula|port_map_multi|Add11~25_combout\,
	datad => \port_map_ula|port_map_multi|Add11~29_combout\,
	combout => \port_map_ula|Mux12~2_combout\);

\port_map_ula|Mux12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux12~3_combout\ = (\port_map_unidade_controle|Mux4~2_combout\ & (!\port_map_unidade_controle|Mux7~0_combout\ & (\port_map_banco_de_registradores|registrador~72_combout\ $ (\port_map_banco_de_registradores|registrador~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|Mux4~2_combout\,
	datab => \port_map_banco_de_registradores|registrador~72_combout\,
	datac => \port_map_banco_de_registradores|registrador~74_combout\,
	datad => \port_map_unidade_controle|Mux7~0_combout\,
	combout => \port_map_ula|Mux12~3_combout\);

\port_map_ula|port_map_multi|Add13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add13~2_combout\ = (\port_map_banco_de_registradores|registrador~46_combout\ & ((\port_map_ula|port_map_multi|Add11~9_combout\ & (\port_map_ula|port_map_multi|Add13~1\ & VCC)) # (!\port_map_ula|port_map_multi|Add11~9_combout\ 
-- & (!\port_map_ula|port_map_multi|Add13~1\)))) # (!\port_map_banco_de_registradores|registrador~46_combout\ & ((\port_map_ula|port_map_multi|Add11~9_combout\ & (!\port_map_ula|port_map_multi|Add13~1\)) # (!\port_map_ula|port_map_multi|Add11~9_combout\ & 
-- ((\port_map_ula|port_map_multi|Add13~1\) # (GND)))))
-- \port_map_ula|port_map_multi|Add13~3\ = CARRY((\port_map_banco_de_registradores|registrador~46_combout\ & (!\port_map_ula|port_map_multi|Add11~9_combout\ & !\port_map_ula|port_map_multi|Add13~1\)) # 
-- (!\port_map_banco_de_registradores|registrador~46_combout\ & ((!\port_map_ula|port_map_multi|Add13~1\) # (!\port_map_ula|port_map_multi|Add11~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~46_combout\,
	datab => \port_map_ula|port_map_multi|Add11~9_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add13~1\,
	combout => \port_map_ula|port_map_multi|Add13~2_combout\,
	cout => \port_map_ula|port_map_multi|Add13~3\);

\port_map_ula|port_map_multi|Add13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add13~4_combout\ = ((\port_map_banco_de_registradores|registrador~48_combout\ $ (\port_map_ula|port_map_multi|Add11~13_combout\ $ (!\port_map_ula|port_map_multi|Add13~3\)))) # (GND)
-- \port_map_ula|port_map_multi|Add13~5\ = CARRY((\port_map_banco_de_registradores|registrador~48_combout\ & ((\port_map_ula|port_map_multi|Add11~13_combout\) # (!\port_map_ula|port_map_multi|Add13~3\))) # 
-- (!\port_map_banco_de_registradores|registrador~48_combout\ & (\port_map_ula|port_map_multi|Add11~13_combout\ & !\port_map_ula|port_map_multi|Add13~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~48_combout\,
	datab => \port_map_ula|port_map_multi|Add11~13_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add13~3\,
	combout => \port_map_ula|port_map_multi|Add13~4_combout\,
	cout => \port_map_ula|port_map_multi|Add13~5\);

\port_map_ula|port_map_multi|Add13~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add13~6_combout\ = (\port_map_banco_de_registradores|registrador~50_combout\ & ((\port_map_ula|port_map_multi|Add11~17_combout\ & (\port_map_ula|port_map_multi|Add13~5\ & VCC)) # 
-- (!\port_map_ula|port_map_multi|Add11~17_combout\ & (!\port_map_ula|port_map_multi|Add13~5\)))) # (!\port_map_banco_de_registradores|registrador~50_combout\ & ((\port_map_ula|port_map_multi|Add11~17_combout\ & (!\port_map_ula|port_map_multi|Add13~5\)) # 
-- (!\port_map_ula|port_map_multi|Add11~17_combout\ & ((\port_map_ula|port_map_multi|Add13~5\) # (GND)))))
-- \port_map_ula|port_map_multi|Add13~7\ = CARRY((\port_map_banco_de_registradores|registrador~50_combout\ & (!\port_map_ula|port_map_multi|Add11~17_combout\ & !\port_map_ula|port_map_multi|Add13~5\)) # 
-- (!\port_map_banco_de_registradores|registrador~50_combout\ & ((!\port_map_ula|port_map_multi|Add13~5\) # (!\port_map_ula|port_map_multi|Add11~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~50_combout\,
	datab => \port_map_ula|port_map_multi|Add11~17_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add13~5\,
	combout => \port_map_ula|port_map_multi|Add13~6_combout\,
	cout => \port_map_ula|port_map_multi|Add13~7\);

\port_map_ula|port_map_multi|Add13~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add13~8_combout\ = ((\port_map_banco_de_registradores|registrador~52_combout\ $ (\port_map_ula|port_map_multi|Add11~21_combout\ $ (!\port_map_ula|port_map_multi|Add13~7\)))) # (GND)
-- \port_map_ula|port_map_multi|Add13~9\ = CARRY((\port_map_banco_de_registradores|registrador~52_combout\ & ((\port_map_ula|port_map_multi|Add11~21_combout\) # (!\port_map_ula|port_map_multi|Add13~7\))) # 
-- (!\port_map_banco_de_registradores|registrador~52_combout\ & (\port_map_ula|port_map_multi|Add11~21_combout\ & !\port_map_ula|port_map_multi|Add13~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~52_combout\,
	datab => \port_map_ula|port_map_multi|Add11~21_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add13~7\,
	combout => \port_map_ula|port_map_multi|Add13~8_combout\,
	cout => \port_map_ula|port_map_multi|Add13~9\);

\port_map_ula|Mux12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux12~4_combout\ = (\port_map_ula|port_map_multi|Add13~2_combout\) # ((\port_map_ula|port_map_multi|Add13~4_combout\) # ((\port_map_ula|port_map_multi|Add13~6_combout\) # (\port_map_ula|port_map_multi|Add13~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add13~2_combout\,
	datab => \port_map_ula|port_map_multi|Add13~4_combout\,
	datac => \port_map_ula|port_map_multi|Add13~6_combout\,
	datad => \port_map_ula|port_map_multi|Add13~8_combout\,
	combout => \port_map_ula|Mux12~4_combout\);

\port_map_ula|port_map_multi|Add13~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add13~10_combout\ = (\port_map_banco_de_registradores|registrador~54_combout\ & ((\port_map_ula|port_map_multi|Add11~25_combout\ & (\port_map_ula|port_map_multi|Add13~9\ & VCC)) # 
-- (!\port_map_ula|port_map_multi|Add11~25_combout\ & (!\port_map_ula|port_map_multi|Add13~9\)))) # (!\port_map_banco_de_registradores|registrador~54_combout\ & ((\port_map_ula|port_map_multi|Add11~25_combout\ & (!\port_map_ula|port_map_multi|Add13~9\)) # 
-- (!\port_map_ula|port_map_multi|Add11~25_combout\ & ((\port_map_ula|port_map_multi|Add13~9\) # (GND)))))
-- \port_map_ula|port_map_multi|Add13~11\ = CARRY((\port_map_banco_de_registradores|registrador~54_combout\ & (!\port_map_ula|port_map_multi|Add11~25_combout\ & !\port_map_ula|port_map_multi|Add13~9\)) # 
-- (!\port_map_banco_de_registradores|registrador~54_combout\ & ((!\port_map_ula|port_map_multi|Add13~9\) # (!\port_map_ula|port_map_multi|Add11~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~54_combout\,
	datab => \port_map_ula|port_map_multi|Add11~25_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add13~9\,
	combout => \port_map_ula|port_map_multi|Add13~10_combout\,
	cout => \port_map_ula|port_map_multi|Add13~11\);

\port_map_ula|port_map_multi|Add13~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add13~12_combout\ = ((\port_map_banco_de_registradores|registrador~56_combout\ $ (\port_map_ula|port_map_multi|Add11~29_combout\ $ (!\port_map_ula|port_map_multi|Add13~11\)))) # (GND)
-- \port_map_ula|port_map_multi|Add13~13\ = CARRY((\port_map_banco_de_registradores|registrador~56_combout\ & ((\port_map_ula|port_map_multi|Add11~29_combout\) # (!\port_map_ula|port_map_multi|Add13~11\))) # 
-- (!\port_map_banco_de_registradores|registrador~56_combout\ & (\port_map_ula|port_map_multi|Add11~29_combout\ & !\port_map_ula|port_map_multi|Add13~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~56_combout\,
	datab => \port_map_ula|port_map_multi|Add11~29_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add13~11\,
	combout => \port_map_ula|port_map_multi|Add13~12_combout\,
	cout => \port_map_ula|port_map_multi|Add13~13\);

\port_map_ula|port_map_multi|Add13~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add13~14_combout\ = \port_map_banco_de_registradores|registrador~58_combout\ $ (\port_map_ula|port_map_multi|Add11~29_combout\ $ (\port_map_ula|port_map_multi|Add13~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~58_combout\,
	datab => \port_map_ula|port_map_multi|Add11~29_combout\,
	cin => \port_map_ula|port_map_multi|Add13~13\,
	combout => \port_map_ula|port_map_multi|Add13~14_combout\);

\port_map_ula|Mux12~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux12~5_combout\ = (\port_map_ula|port_map_multi|Add13~10_combout\) # ((\port_map_ula|port_map_multi|Add13~12_combout\) # (\port_map_ula|port_map_multi|Add13~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add13~10_combout\,
	datab => \port_map_ula|port_map_multi|Add13~12_combout\,
	datac => \port_map_ula|port_map_multi|Add13~14_combout\,
	combout => \port_map_ula|Mux12~5_combout\);

\port_map_ula|Mux12~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux12~6_combout\ = (\port_map_ula|port_map_multi|process_0~0_combout\ & (\port_map_ula|Mux12~3_combout\ & ((\port_map_ula|Mux12~4_combout\) # (\port_map_ula|Mux12~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|process_0~0_combout\,
	datab => \port_map_ula|Mux12~3_combout\,
	datac => \port_map_ula|Mux12~4_combout\,
	datad => \port_map_ula|Mux12~5_combout\,
	combout => \port_map_ula|Mux12~6_combout\);

\port_map_ula|port_map_adder|A7|cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_adder|A7|cout~0_combout\ = (\port_map_banco_de_registradores|registrador~58_combout\ & ((\port_map_ula|port_map_adder|A6|cout~0_combout\) # ((!\port_map_unidade_controle|Mux7~0_combout\ & 
-- \port_map_banco_de_registradores|registrador~74_combout\)))) # (!\port_map_banco_de_registradores|registrador~58_combout\ & (!\port_map_unidade_controle|Mux7~0_combout\ & (\port_map_banco_de_registradores|registrador~74_combout\ & 
-- \port_map_ula|port_map_adder|A6|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|Mux7~0_combout\,
	datab => \port_map_banco_de_registradores|registrador~74_combout\,
	datac => \port_map_banco_de_registradores|registrador~58_combout\,
	datad => \port_map_ula|port_map_adder|A6|cout~0_combout\,
	combout => \port_map_ula|port_map_adder|A7|cout~0_combout\);

\port_map_ula|Mux12~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux12~7_combout\ = (\port_map_ula|port_map_adder|A7|cout~0_combout\ & !\port_map_unidade_controle|Mux4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_adder|A7|cout~0_combout\,
	datad => \port_map_unidade_controle|Mux4~2_combout\,
	combout => \port_map_ula|Mux12~7_combout\);

\port_map_ula|Mux12~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux12~8_combout\ = (!\port_map_unidade_controle|Mux7~0_combout\ & (\port_map_unidade_controle|Mux4~2_combout\ & (\port_map_banco_de_registradores|registrador~72_combout\ $ (\port_map_banco_de_registradores|registrador~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|Mux7~0_combout\,
	datab => \port_map_banco_de_registradores|registrador~72_combout\,
	datac => \port_map_banco_de_registradores|registrador~74_combout\,
	datad => \port_map_unidade_controle|Mux4~2_combout\,
	combout => \port_map_ula|Mux12~8_combout\);

\port_map_ula|port_map_multi|Add14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add14~2_combout\ = (\port_map_banco_de_registradores|registrador~46_combout\ & ((\port_map_ula|port_map_multi|Add11~9_combout\ & (!\port_map_ula|port_map_multi|Add14~1\)) # (!\port_map_ula|port_map_multi|Add11~9_combout\ & 
-- ((\port_map_ula|port_map_multi|Add14~1\) # (GND))))) # (!\port_map_banco_de_registradores|registrador~46_combout\ & ((\port_map_ula|port_map_multi|Add11~9_combout\ & (\port_map_ula|port_map_multi|Add14~1\ & VCC)) # 
-- (!\port_map_ula|port_map_multi|Add11~9_combout\ & (!\port_map_ula|port_map_multi|Add14~1\))))
-- \port_map_ula|port_map_multi|Add14~3\ = CARRY((\port_map_banco_de_registradores|registrador~46_combout\ & ((!\port_map_ula|port_map_multi|Add14~1\) # (!\port_map_ula|port_map_multi|Add11~9_combout\))) # 
-- (!\port_map_banco_de_registradores|registrador~46_combout\ & (!\port_map_ula|port_map_multi|Add11~9_combout\ & !\port_map_ula|port_map_multi|Add14~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~46_combout\,
	datab => \port_map_ula|port_map_multi|Add11~9_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add14~1\,
	combout => \port_map_ula|port_map_multi|Add14~2_combout\,
	cout => \port_map_ula|port_map_multi|Add14~3\);

\port_map_ula|port_map_multi|Add14~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add14~4_combout\ = ((\port_map_banco_de_registradores|registrador~48_combout\ $ (\port_map_ula|port_map_multi|Add11~13_combout\ $ (\port_map_ula|port_map_multi|Add14~3\)))) # (GND)
-- \port_map_ula|port_map_multi|Add14~5\ = CARRY((\port_map_banco_de_registradores|registrador~48_combout\ & (\port_map_ula|port_map_multi|Add11~13_combout\ & !\port_map_ula|port_map_multi|Add14~3\)) # 
-- (!\port_map_banco_de_registradores|registrador~48_combout\ & ((\port_map_ula|port_map_multi|Add11~13_combout\) # (!\port_map_ula|port_map_multi|Add14~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~48_combout\,
	datab => \port_map_ula|port_map_multi|Add11~13_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add14~3\,
	combout => \port_map_ula|port_map_multi|Add14~4_combout\,
	cout => \port_map_ula|port_map_multi|Add14~5\);

\port_map_ula|port_map_multi|Add14~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add14~6_combout\ = (\port_map_banco_de_registradores|registrador~50_combout\ & ((\port_map_ula|port_map_multi|Add11~17_combout\ & (!\port_map_ula|port_map_multi|Add14~5\)) # (!\port_map_ula|port_map_multi|Add11~17_combout\ & 
-- ((\port_map_ula|port_map_multi|Add14~5\) # (GND))))) # (!\port_map_banco_de_registradores|registrador~50_combout\ & ((\port_map_ula|port_map_multi|Add11~17_combout\ & (\port_map_ula|port_map_multi|Add14~5\ & VCC)) # 
-- (!\port_map_ula|port_map_multi|Add11~17_combout\ & (!\port_map_ula|port_map_multi|Add14~5\))))
-- \port_map_ula|port_map_multi|Add14~7\ = CARRY((\port_map_banco_de_registradores|registrador~50_combout\ & ((!\port_map_ula|port_map_multi|Add14~5\) # (!\port_map_ula|port_map_multi|Add11~17_combout\))) # 
-- (!\port_map_banco_de_registradores|registrador~50_combout\ & (!\port_map_ula|port_map_multi|Add11~17_combout\ & !\port_map_ula|port_map_multi|Add14~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~50_combout\,
	datab => \port_map_ula|port_map_multi|Add11~17_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add14~5\,
	combout => \port_map_ula|port_map_multi|Add14~6_combout\,
	cout => \port_map_ula|port_map_multi|Add14~7\);

\port_map_ula|port_map_multi|Add14~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add14~8_combout\ = ((\port_map_banco_de_registradores|registrador~52_combout\ $ (\port_map_ula|port_map_multi|Add11~21_combout\ $ (\port_map_ula|port_map_multi|Add14~7\)))) # (GND)
-- \port_map_ula|port_map_multi|Add14~9\ = CARRY((\port_map_banco_de_registradores|registrador~52_combout\ & (\port_map_ula|port_map_multi|Add11~21_combout\ & !\port_map_ula|port_map_multi|Add14~7\)) # 
-- (!\port_map_banco_de_registradores|registrador~52_combout\ & ((\port_map_ula|port_map_multi|Add11~21_combout\) # (!\port_map_ula|port_map_multi|Add14~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~52_combout\,
	datab => \port_map_ula|port_map_multi|Add11~21_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add14~7\,
	combout => \port_map_ula|port_map_multi|Add14~8_combout\,
	cout => \port_map_ula|port_map_multi|Add14~9\);

\port_map_ula|port_map_multi|Add14~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add14~10_combout\ = (\port_map_banco_de_registradores|registrador~54_combout\ & ((\port_map_ula|port_map_multi|Add11~25_combout\ & (!\port_map_ula|port_map_multi|Add14~9\)) # (!\port_map_ula|port_map_multi|Add11~25_combout\ & 
-- ((\port_map_ula|port_map_multi|Add14~9\) # (GND))))) # (!\port_map_banco_de_registradores|registrador~54_combout\ & ((\port_map_ula|port_map_multi|Add11~25_combout\ & (\port_map_ula|port_map_multi|Add14~9\ & VCC)) # 
-- (!\port_map_ula|port_map_multi|Add11~25_combout\ & (!\port_map_ula|port_map_multi|Add14~9\))))
-- \port_map_ula|port_map_multi|Add14~11\ = CARRY((\port_map_banco_de_registradores|registrador~54_combout\ & ((!\port_map_ula|port_map_multi|Add14~9\) # (!\port_map_ula|port_map_multi|Add11~25_combout\))) # 
-- (!\port_map_banco_de_registradores|registrador~54_combout\ & (!\port_map_ula|port_map_multi|Add11~25_combout\ & !\port_map_ula|port_map_multi|Add14~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~54_combout\,
	datab => \port_map_ula|port_map_multi|Add11~25_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add14~9\,
	combout => \port_map_ula|port_map_multi|Add14~10_combout\,
	cout => \port_map_ula|port_map_multi|Add14~11\);

\port_map_ula|port_map_multi|Add14~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add14~12_combout\ = ((\port_map_banco_de_registradores|registrador~56_combout\ $ (\port_map_ula|port_map_multi|Add11~29_combout\ $ (\port_map_ula|port_map_multi|Add14~11\)))) # (GND)
-- \port_map_ula|port_map_multi|Add14~13\ = CARRY((\port_map_banco_de_registradores|registrador~56_combout\ & (\port_map_ula|port_map_multi|Add11~29_combout\ & !\port_map_ula|port_map_multi|Add14~11\)) # 
-- (!\port_map_banco_de_registradores|registrador~56_combout\ & ((\port_map_ula|port_map_multi|Add11~29_combout\) # (!\port_map_ula|port_map_multi|Add14~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~56_combout\,
	datab => \port_map_ula|port_map_multi|Add11~29_combout\,
	datad => VCC,
	cin => \port_map_ula|port_map_multi|Add14~11\,
	combout => \port_map_ula|port_map_multi|Add14~12_combout\,
	cout => \port_map_ula|port_map_multi|Add14~13\);

\port_map_ula|port_map_multi|Add14~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|port_map_multi|Add14~14_combout\ = \port_map_banco_de_registradores|registrador~58_combout\ $ (\port_map_ula|port_map_multi|Add11~29_combout\ $ (!\port_map_ula|port_map_multi|Add14~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|registrador~58_combout\,
	datab => \port_map_ula|port_map_multi|Add11~29_combout\,
	cin => \port_map_ula|port_map_multi|Add14~13\,
	combout => \port_map_ula|port_map_multi|Add14~14_combout\);

\port_map_ula|Mux12~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux12~9_combout\ = (\port_map_ula|port_map_multi|Add14~2_combout\) # ((\port_map_ula|port_map_multi|Add14~4_combout\) # ((\port_map_ula|port_map_multi|Add14~6_combout\) # (\port_map_ula|port_map_multi|Add14~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add14~2_combout\,
	datab => \port_map_ula|port_map_multi|Add14~4_combout\,
	datac => \port_map_ula|port_map_multi|Add14~6_combout\,
	datad => \port_map_ula|port_map_multi|Add14~8_combout\,
	combout => \port_map_ula|Mux12~9_combout\);

\port_map_ula|Mux12~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux12~10_combout\ = (\port_map_ula|port_map_multi|Add14~10_combout\) # ((\port_map_ula|Mux12~9_combout\) # (\port_map_ula|port_map_multi|Add14~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|Add14~10_combout\,
	datab => \port_map_ula|Mux12~9_combout\,
	datac => \port_map_ula|port_map_multi|Add14~12_combout\,
	combout => \port_map_ula|Mux12~10_combout\);

\port_map_ula|Mux12~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux12~11_combout\ = (!\port_map_ula|port_map_multi|process_0~0_combout\ & (\port_map_ula|Mux12~8_combout\ & ((\port_map_ula|port_map_multi|Add14~14_combout\) # (\port_map_ula|Mux12~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|port_map_multi|process_0~0_combout\,
	datab => \port_map_ula|Mux12~8_combout\,
	datac => \port_map_ula|port_map_multi|Add14~14_combout\,
	datad => \port_map_ula|Mux12~10_combout\,
	combout => \port_map_ula|Mux12~11_combout\);

\port_map_ula|Mux12~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux12~12_combout\ = (\port_map_ula|Mux12~2_combout\) # ((\port_map_ula|Mux12~6_combout\) # ((\port_map_ula|Mux12~7_combout\) # (\port_map_ula|Mux12~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|Mux12~2_combout\,
	datab => \port_map_ula|Mux12~6_combout\,
	datac => \port_map_ula|Mux12~7_combout\,
	datad => \port_map_ula|Mux12~11_combout\,
	combout => \port_map_ula|Mux12~12_combout\);

\port_map_ula|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux13~0_combout\ = (\port_map_mem_rom|Mux1~3_combout\) # ((\port_map_unidade_controle|Mux4~2_combout\ & ((!\port_map_mem_rom|Mux0~5_combout\) # (!\port_map_unidade_controle|Mux5~0_combout\))) # (!\port_map_unidade_controle|Mux4~2_combout\ & 
-- ((\port_map_mem_rom|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_unidade_controle|Mux5~0_combout\,
	datab => \port_map_unidade_controle|Mux4~2_combout\,
	datac => \port_map_mem_rom|Mux1~3_combout\,
	datad => \port_map_mem_rom|Mux0~5_combout\,
	combout => \port_map_ula|Mux13~0_combout\);

\port_map_ula|overflow\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \port_map_ula|overflow~combout\ = (\port_map_ula|Mux13~0_combout\ & ((\port_map_ula|overflow~combout\))) # (!\port_map_ula|Mux13~0_combout\ & (\port_map_ula|Mux12~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \port_map_ula|Mux12~12_combout\,
	datac => \port_map_ula|overflow~combout\,
	datad => \port_map_ula|Mux13~0_combout\,
	combout => \port_map_ula|overflow~combout\);

ww_out_out_pc(0) <= \out_out_pc[0]~output_o\;

ww_out_out_pc(1) <= \out_out_pc[1]~output_o\;

ww_out_out_pc(2) <= \out_out_pc[2]~output_o\;

ww_out_out_pc(3) <= \out_out_pc[3]~output_o\;

ww_out_out_pc(4) <= \out_out_pc[4]~output_o\;

ww_out_out_pc(5) <= \out_out_pc[5]~output_o\;

ww_out_out_pc(6) <= \out_out_pc[6]~output_o\;

ww_out_out_pc(7) <= \out_out_pc[7]~output_o\;

ww_out_out_rom(0) <= \out_out_rom[0]~output_o\;

ww_out_out_rom(1) <= \out_out_rom[1]~output_o\;

ww_out_out_rom(2) <= \out_out_rom[2]~output_o\;

ww_out_out_rom(3) <= \out_out_rom[3]~output_o\;

ww_out_out_rom(4) <= \out_out_rom[4]~output_o\;

ww_out_out_rom(5) <= \out_out_rom[5]~output_o\;

ww_out_out_rom(6) <= \out_out_rom[6]~output_o\;

ww_out_out_rom(7) <= \out_out_rom[7]~output_o\;

ww_out_opcode(0) <= \out_opcode[0]~output_o\;

ww_out_opcode(1) <= \out_opcode[1]~output_o\;

ww_out_opcode(2) <= \out_opcode[2]~output_o\;

ww_out_opcode(3) <= \out_opcode[3]~output_o\;

ww_out_rs(0) <= \out_rs[0]~output_o\;

ww_out_rs(1) <= \out_rs[1]~output_o\;

ww_out_rt(0) <= \out_rt[0]~output_o\;

ww_out_rt(1) <= \out_rt[1]~output_o\;

ww_out_endereco(0) <= \out_endereco[0]~output_o\;

ww_out_endereco(1) <= \out_endereco[1]~output_o\;

ww_out_endereco(2) <= \out_endereco[2]~output_o\;

ww_out_endereco(3) <= \out_endereco[3]~output_o\;

ww_out_out_mem_ram(0) <= \out_out_mem_ram[0]~output_o\;

ww_out_out_mem_ram(1) <= \out_out_mem_ram[1]~output_o\;

ww_out_out_mem_ram(2) <= \out_out_mem_ram[2]~output_o\;

ww_out_out_mem_ram(3) <= \out_out_mem_ram[3]~output_o\;

ww_out_out_mem_ram(4) <= \out_out_mem_ram[4]~output_o\;

ww_out_out_mem_ram(5) <= \out_out_mem_ram[5]~output_o\;

ww_out_out_mem_ram(6) <= \out_out_mem_ram[6]~output_o\;

ww_out_out_mem_ram(7) <= \out_out_mem_ram[7]~output_o\;

ww_out_out_br_reg_A(0) <= \out_out_br_reg_A[0]~output_o\;

ww_out_out_br_reg_A(1) <= \out_out_br_reg_A[1]~output_o\;

ww_out_out_br_reg_A(2) <= \out_out_br_reg_A[2]~output_o\;

ww_out_out_br_reg_A(3) <= \out_out_br_reg_A[3]~output_o\;

ww_out_out_br_reg_A(4) <= \out_out_br_reg_A[4]~output_o\;

ww_out_out_br_reg_A(5) <= \out_out_br_reg_A[5]~output_o\;

ww_out_out_br_reg_A(6) <= \out_out_br_reg_A[6]~output_o\;

ww_out_out_br_reg_A(7) <= \out_out_br_reg_A[7]~output_o\;

ww_out_out_br_reg_B(0) <= \out_out_br_reg_B[0]~output_o\;

ww_out_out_br_reg_B(1) <= \out_out_br_reg_B[1]~output_o\;

ww_out_out_br_reg_B(2) <= \out_out_br_reg_B[2]~output_o\;

ww_out_out_br_reg_B(3) <= \out_out_br_reg_B[3]~output_o\;

ww_out_out_br_reg_B(4) <= \out_out_br_reg_B[4]~output_o\;

ww_out_out_br_reg_B(5) <= \out_out_br_reg_B[5]~output_o\;

ww_out_out_br_reg_B(6) <= \out_out_br_reg_B[6]~output_o\;

ww_out_out_br_reg_B(7) <= \out_out_br_reg_B[7]~output_o\;

ww_out_out_ula_result(0) <= \out_out_ula_result[0]~output_o\;

ww_out_out_ula_result(1) <= \out_out_ula_result[1]~output_o\;

ww_out_out_ula_result(2) <= \out_out_ula_result[2]~output_o\;

ww_out_out_ula_result(3) <= \out_out_ula_result[3]~output_o\;

ww_out_out_ula_result(4) <= \out_out_ula_result[4]~output_o\;

ww_out_out_ula_result(5) <= \out_out_ula_result[5]~output_o\;

ww_out_out_ula_result(6) <= \out_out_ula_result[6]~output_o\;

ww_out_out_ula_result(7) <= \out_out_ula_result[7]~output_o\;

ww_out_out_overflow <= \out_out_overflow~output_o\;

ww_out_out_memoria_ram(0) <= \out_out_memoria_ram[0]~output_o\;

ww_out_out_memoria_ram(1) <= \out_out_memoria_ram[1]~output_o\;

ww_out_out_memoria_ram(2) <= \out_out_memoria_ram[2]~output_o\;

ww_out_out_memoria_ram(3) <= \out_out_memoria_ram[3]~output_o\;

ww_out_out_memoria_ram(4) <= \out_out_memoria_ram[4]~output_o\;

ww_out_out_memoria_ram(5) <= \out_out_memoria_ram[5]~output_o\;

ww_out_out_memoria_ram(6) <= \out_out_memoria_ram[6]~output_o\;

ww_out_out_memoria_ram(7) <= \out_out_memoria_ram[7]~output_o\;

ww_out_out_mult_2x1_ram_ula(0) <= \out_out_mult_2x1_ram_ula[0]~output_o\;

ww_out_out_mult_2x1_ram_ula(1) <= \out_out_mult_2x1_ram_ula[1]~output_o\;

ww_out_out_mult_2x1_ram_ula(2) <= \out_out_mult_2x1_ram_ula[2]~output_o\;

ww_out_out_mult_2x1_ram_ula(3) <= \out_out_mult_2x1_ram_ula[3]~output_o\;

ww_out_out_mult_2x1_ram_ula(4) <= \out_out_mult_2x1_ram_ula[4]~output_o\;

ww_out_out_mult_2x1_ram_ula(5) <= \out_out_mult_2x1_ram_ula[5]~output_o\;

ww_out_out_mult_2x1_ram_ula(6) <= \out_out_mult_2x1_ram_ula[6]~output_o\;

ww_out_out_mult_2x1_ram_ula(7) <= \out_out_mult_2x1_ram_ula[7]~output_o\;
END structure;


