LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY unidade_controle IS
    PORT (
        clock       : IN STD_LOGIC;
        op_code     : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
        jump        : OUT STD_LOGIC;
        branch      : OUT STD_LOGIC;
        mem_read    : OUT STD_LOGIC;
        mem_to_reg  : OUT STD_LOGIC;
        ula_op      : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
        mem_write   : OUT STD_LOGIC;
        ula_src     : OUT STD_LOGIC;
        reg_write   : OUT STD_LOGIC
    );
END unidade_controle;

ARCHITECTURE behavior OF unidade_controle IS
BEGIN
    PROCESS (clock)
    BEGIN
        CASE op_code IS
		  
            WHEN "0000" => -- add
                jump <= '0';
                branch <= '0';
                mem_read <= '0';
                mem_to_reg <= '0';
                ula_op <= "0000";
                mem_write <= '0';
                ula_src <= '0';
                reg_write <= '1';

            WHEN "0001" => -- addi
                jump <= '0';
                branch <= '0';
                mem_read <= '0';
                mem_to_reg <= '0';
                ula_op <= "0001";
                mem_write <= '0';
                ula_src <= '1';
                reg_write <= '1';

            WHEN "0010" => -- sub
                jump <= '0';
                branch <= '0';
                mem_read <= '0';
                mem_to_reg <= '0';
                ula_op <= "0010";
                mem_write <= '0';
                ula_src <= '0';
                reg_write <= '1';

            WHEN "0011" => -- subi
                jump <= '0';
                branch <= '0';
                mem_read <= '0';
                mem_to_reg <= '0';
                ula_op <= "0011";
                mem_write <= '0';
                ula_src <= '1';
                reg_write <= '1';

            WHEN "0100" => -- lw
                jump <= '0';
                branch <= '0';
                mem_read <= '1';
                mem_to_reg <= '1';
                ula_op <= "0100";
                mem_write <= '0';
                ula_src <= '0';
                reg_write <= '1';

            WHEN "0101" => -- sw
                jump <= '0';
                branch <= '0';
                mem_read <= '0';
                mem_to_reg <= '0';
                ula_op <= "0101";
                mem_write <= '1';
                ula_src <= '0';
                reg_write <= '0';
					 
				WHEN "0110" => -- move
                jump <= '0';
                branch <= '0';
                mem_read <= '0';
                mem_to_reg <= '0';
                ula_op <= "0110";
                mem_write <= '0';
                ula_src <= '0';
                reg_write <= '1';

            WHEN "0111" => -- li
                jump <= '0';
                branch <= '0';
                mem_read <= '0';
                mem_to_reg <= '0';
                ula_op <= "0111";
                mem_write <= '0';
                ula_src <= '1';
                reg_write <= '1';

            WHEN "1000" => -- beq
                jump <= '0';
                branch <= '1';
                mem_read <= '0';
                mem_to_reg <= '0';
                ula_op <= "1000";
                mem_write <= '0';
                ula_src <= '0';
                reg_write <= '0';

            WHEN "1001" => -- bne
                jump <= '0';
                branch <= '1';
                mem_read <= '0';
                mem_to_reg <= '0';
                ula_op <= "1001";
                mem_write <= '0';
                ula_src <= '0';
                reg_write <= '0';

            WHEN "1010" => -- if beq e bne
                jump <= '0';
                branch <= '0';
                mem_read <= '0';
                mem_to_reg <= '0';
                ula_op <= "1010";
                mem_write <= '0';
                ula_src <= '0';
                reg_write <= '0';

            WHEN "1011" => -- mul
                jump <= '0';
                branch <= '0';
                mem_read <= '0';
                mem_to_reg <= '0';
                ula_op <= "1011";
                mem_write <= '0';
                ula_src <= '0';
                reg_write <= '1';

            WHEN "1111" => -- jump
                jump <= '1';
                branch <= '0';
                mem_read <= '0';
                mem_to_reg <= '0';
                ula_op <= "1111";
                mem_write <= '0';
                ula_src <= '0';
                reg_write <= '0';

            WHEN OTHERS =>
                jump <= '0';
                branch <= '0';
                mem_read <= '0';
                mem_to_reg <= '0';
                ula_op <= "1111";
                mem_write <= '0';
                ula_src <= '0';
                reg_write <= '0';
        END CASE;
    END PROCESS;
END behavior;