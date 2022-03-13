LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY pc IS
    PORT (
        clock		: IN STD_LOGIC;
        in_port	: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        out_port	: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
    );
END pc;

ARCHITECTURE behavior OF pc IS
BEGIN
    PROCESS (clock)
    BEGIN
	 
        IF rising_edge(clock) THEN
            out_port <= in_port;
        END IF;
		  
    END PROCESS;
END behavior;