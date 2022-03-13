LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY sub_8_bits IS
    PORT (
        A 		: IN std_logic_vector(7 DOWNTO 0);
        B		: IN std_logic_vector(7 DOWNTO 0);
        result : OUT std_logic_vector(7 DOWNTO 0);
        cout 	: OUT std_logic
    );
END sub_8_bits;

ARCHITECTURE behavior OF sub_8_bits IS

    COMPONENT adder_8_bits IS
        PORT (
            A 		: IN std_logic_vector(7 DOWNTO 0);
            B 		: IN std_logic_vector(7 DOWNTO 0);
            sinal : IN std_logic;
            result: OUT std_logic_vector(7 DOWNTO 0);
            cout	: OUT std_logic
        );
    END COMPONENT;

    SIGNAL complemento_2 : std_logic_vector(7 DOWNTO 0);

BEGIN
    complemento_2 <= "11111111" XOR B;
    A1 : adder_8_bits PORT MAP(A, complemento_2, '1', result, cout);
END behavior;