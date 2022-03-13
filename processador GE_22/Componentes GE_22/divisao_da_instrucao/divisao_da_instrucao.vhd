LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY divisao_da_instrucao IS 
	PORT (
		in_port		: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		out_op_code	: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		out_rs		: OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		out_rt		: OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		out_jump		: OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END divisao_da_instrucao;

ARCHITECTURE behavior OF divisao_da_instrucao IS

BEGIN

		out_op_code 	<= in_port(7 DOWNTO 4);
		out_rs 			<= in_port(3 DOWNTO 2);
		out_rt 			<= in_port(1 DOWNTO 0);
		out_jump 		<= in_port(3 DOWNTO 0);

END behavior;