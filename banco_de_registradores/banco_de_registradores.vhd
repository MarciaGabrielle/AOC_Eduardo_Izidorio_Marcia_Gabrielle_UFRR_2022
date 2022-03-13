LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY banco_de_registradores IS PORT (
    clock : IN std_logic;
    reg_write : IN std_logic;
    endereco_reg_A : IN std_logic_vector(1 DOWNTO 0);
    endereco_reg_B : IN std_logic_vector(1 DOWNTO 0);
    write_data : IN std_logic_vector (7 DOWNTO 0);
    reg_out_A : OUT std_logic_vector (7 DOWNTO 0);
    reg_out_B : OUT std_logic_vector (7 DOWNTO 0)
);
END banco_de_registradores;

ARCHITECTURE behavior OF banco_de_registradores IS

    TYPE banco_registrador IS ARRAY(0 TO 3) OF std_logic_vector (7 DOWNTO 0);
    SIGNAL registrador : banco_registrador;

BEGIN
    PROCESS (clock)
    BEGIN
        IF rising_edge(clock) THEN
            IF (reg_write = '1') THEN
                registrador(to_integer(unsigned(endereco_reg_A))) <= write_data;
            END IF;
        END IF;
        reg_out_A <= registrador(to_integer(unsigned(endereco_reg_A)));
        reg_out_B <= registrador(to_integer(unsigned(endereco_reg_B)));
    END PROCESS;
END behavior;