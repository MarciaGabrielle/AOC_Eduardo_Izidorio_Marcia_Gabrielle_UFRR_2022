LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY mem_ram IS
    PORT (
        clock		: IN STD_LOGIC;
        mem_write	: IN STD_LOGIC;
        mem_read	: IN STD_LOGIC;
        endereco	: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        in_port	: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        out_port	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
END mem_ram;
ARCHITECTURE behavior OF mem_ram IS
    TYPE mem_ram IS ARRAY (0 TO 7) OF std_logic_vector(7 DOWNTO 0);
    SIGNAL ram : mem_ram := (OTHERS => "00000000");
BEGIN
    PROCESS (clock)
    BEGIN
	 
        IF rising_edge(clock) THEN
            IF (mem_write = '1') THEN
                ram(to_integer(unsigned(endereco))) <= in_port;
            END IF;
            IF (mem_read = '1') THEN
                out_port <= ram(to_integer(unsigned(endereco)));
            END IF;
        END IF;
		  
    END PROCESS;
END behavior;