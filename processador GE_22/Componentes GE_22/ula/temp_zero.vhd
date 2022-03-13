LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY temp_zero IS
    PORT (
        in_port : IN std_logic;
        out_port : OUT std_logic
    );
END temp_zero;

ARCHITECTURE behavior OF temp_zero IS
BEGIN
    out_port <= in_port;
END behavior;