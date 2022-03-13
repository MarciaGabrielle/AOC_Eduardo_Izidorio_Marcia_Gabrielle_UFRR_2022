LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY extensor_sinal2_8 IS
    PORT (
        in_port	: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
        out_port	: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
    );
END extensor_sinal2_8;

ARCHITECTURE behavior OF extensor_sinal2_8 IS

BEGIN
    PROCESS (in_port)
    BEGIN
	 
        out_port <= ("000000") & in_port;
		  
    END PROCESS;
END behavior;