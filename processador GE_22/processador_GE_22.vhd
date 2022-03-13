LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY processador_GE_22 IS
    PORT (
        clock 							: IN std_logic;
        --teste						: IN std_logic_vector (7 DOWNTO 0); -- usado teste inserir dados
        out_out_pc					: OUT std_logic_vector (7 DOWNTO 0);
        --out_in_pc					: OUT std_logic_vector (7 DOWNTO 0);
        --out_in_rom					: OUT std_logic_vector (7 DOWNTO 0);
        out_out_rom					: OUT std_logic_vector (7 DOWNTO 0);
        out_opcode					: OUT std_logic_vector (3 DOWNTO 0);
        out_rs							: OUT std_logic_vector (1 DOWNTO 0);
        out_rt							: OUT std_logic_vector (1 DOWNTO 0);
        out_endereco					: OUT std_logic_vector (3 DOWNTO 0);
		  out_out_mem_ram: OUT std_logic_vector (7 DOWNTO 0);
        out_out_br_reg_A			: OUT std_logic_vector (7 DOWNTO 0);
        out_out_br_reg_B			: OUT std_logic_vector (7 DOWNTO 0);
        out_out_ula_result			: OUT std_logic_vector(7 DOWNTO 0);
        out_out_overflow			: OUT std_logic;
        out_out_memoria_ram		: OUT std_logic_vector(7 DOWNTO 0);
        out_out_mult_2x1_ram_ula	: OUT std_logic_vector(7 DOWNTO 0)

    );
END processador_GE_22;

ARCHITECTURE behavior OF processador_GE_22 IS

    COMPONENT pc IS
        PORT (
            clock		: IN std_logic;
            in_port	: IN std_logic_vector (7 DOWNTO 0);
            out_port	: OUT std_logic_vector (7 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT somador_pc IS
        PORT (
            clock		: IN std_logic;
            in_port	: IN std_logic_vector (7 DOWNTO 0);
            out_port	: OUT std_logic_vector (7 DOWNTO 0));
    END COMPONENT;

    COMPONENT mem_rom IS
        PORT (
            clock		: IN std_logic;
            in_port	: IN std_logic_vector(7 DOWNTO 0);
            out_port	: OUT std_logic_vector(7 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT divisao_da_instrucao IS 
		  PORT (
				in_port		: IN std_logic_vector(7 DOWNTO 0);
				out_op_code	: OUT std_logic_vector(3 DOWNTO 0);
				out_rs		: OUT std_logic_vector(1 DOWNTO 0);
				out_rt		: OUT std_logic_vector(1 DOWNTO 0);
				out_jump		: OUT std_logic_vector(3 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT unidade_controle IS
        PORT (
            clock			: IN std_logic;
            op_code		: IN std_logic_vector (3 DOWNTO 0);
            jump			: OUT std_logic;
            branch		: OUT std_logic;
            mem_read		: OUT std_logic;
            mem_to_reg	: OUT std_logic;
            ula_op		: OUT std_logic_vector (3 DOWNTO 0);
            mem_write	: OUT std_logic;
            ula_src		: OUT std_logic;
            reg_write	: OUT std_logic
        );
    END COMPONENT;

    COMPONENT banco_de_registradores IS 
		  PORT (
				clock				: IN std_logic;
				reg_write		: IN std_logic;
				endereco_reg_A	: IN std_logic_vector(1 DOWNTO 0);
				endereco_reg_B	: IN std_logic_vector(1 DOWNTO 0);
				write_data		: IN std_logic_vector (7 DOWNTO 0);
				reg_out_A		: OUT std_logic_vector (7 DOWNTO 0);
				reg_out_B		: OUT std_logic_vector (7 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT extensor_sinal2_8 IS
        PORT (
            in_port	: IN std_logic_vector (1 DOWNTO 0);
            out_port	: OUT std_logic_vector (7 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT mult_2x1 IS
        PORT (
            in_port	: IN std_logic;
            in_A		: IN std_logic_vector (7 DOWNTO 0);
            in_B		: IN std_logic_vector (7 DOWNTO 0);
            out_port	: OUT std_logic_vector (7 DOWNTO 0)

        );
    END COMPONENT;

    COMPONENT ula IS
        PORT (
            clock : IN std_logic;
            ula_op : IN std_logic_vector(3 DOWNTO 0);
            in_port_A : IN std_logic_vector(7 DOWNTO 0);
            in_port_B : IN std_logic_vector(7 DOWNTO 0);
            out_ula_result : OUT std_logic_vector(7 DOWNTO 0);
            zero : OUT std_logic;
            overflow : OUT std_logic
        );
    END COMPONENT;

    COMPONENT mem_ram IS
        PORT (
            clock		: IN std_logic;
            mem_write: IN std_logic;
            mem_read	: IN std_logic;
            endereco	: IN std_logic_vector(7 DOWNTO 0);
            in_port	: IN std_logic_vector(7 DOWNTO 0);
            out_port	: OUT std_logic_vector(7 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT extensor_sinal4_8 IS
        PORT (
            in_port	: IN std_logic_vector (3 DOWNTO 0);
            out_port	: OUT std_logic_vector (7 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT portAnd IS
        PORT (
            in_port_A: IN STD_LOGIC;
            in_port_B: IN STD_LOGIC;
            out_port : OUT STD_LOGIC
        );
    END COMPONENT;

    -- somador PC 
    SIGNAL out_somador_pc : std_logic_vector (7 DOWNTO 0);

    -- PC
    SIGNAL out_pc : std_logic_vector (7 DOWNTO 0);

    -- rom
    SIGNAL out_rom : std_logic_vector (7 DOWNTO 0);

    -- divisao instrucao
    SIGNAL out_di_7_4 : std_logic_vector (3 DOWNTO 0);
    SIGNAL out_di_3_2 : std_logic_vector (1 DOWNTO 0);
    SIGNAL out_di_1_0 : std_logic_vector (1 DOWNTO 0);
    SIGNAL out_di_3_0 : std_logic_vector (3 DOWNTO 0);

    -- unidade de controle
    SIGNAL out_uc_jump			: std_logic;
    SIGNAL out_uc_branch		: std_logic;
    SIGNAL out_uc_mem_read		: std_logic;
    SIGNAL out_uc_mem_to_reg	: std_logic;
    SIGNAL out_uc_ula_op		: std_logic_vector (3 DOWNTO 0);
    SIGNAL out_uc_mem_write	: std_logic;
    SIGNAL out_uc_ula_src		: std_logic;
    SIGNAL out_uc_reg_write	: std_logic;

    -- banco de registradores
    SIGNAL out_br_reg_A : std_logic_vector (7 DOWNTO 0);
    SIGNAL out_br_reg_B : std_logic_vector (7 DOWNTO 0);

    -- extensor sinal 2 bits para 8 bits
    SIGNAL out_es_2_8 : std_logic_vector (7 DOWNTO 0);

    -- multiplexador 2X1 8 bits, banco registradores e ula
    SIGNAL out_mul_2X1_br_ula : std_logic_vector (7 DOWNTO 0);

    -- ula
    SIGNAL out_ula_result	: std_logic_vector (7 DOWNTO 0);
    SIGNAL out_ula_zero		: std_logic;
    SIGNAL out_overflow		: std_logic;

    -- memoria ram
    SIGNAL out_mem_ram : std_logic_vector (7 DOWNTO 0);

    -- multiplexador 2X1 8 bits, ula e memoria ram
    SIGNAL out_mult_2x1_ram_ula : std_logic_vector (7 DOWNTO 0);

    -- extensor sinal 4 bits para 8 bits
    SIGNAL out_es_4_8 : std_logic_vector (7 DOWNTO 0);

    -- porta and
    SIGNAL out_portAnd : std_logic;

    -- multiplexador 2X1 8 bits, somador do pc e extensor de sinal 4 bits para 8 bits do jump
    SIGNAL out_mul_2x1_add_pc_jump : std_logic_vector (7 DOWNTO 0);

    -- multiplexador 2X1 8 bits, saida do multiplexador anterior e e extensor de sinal 4 bits para 8 bits do jump
    SIGNAL out_port_map_mul_2x1_jump : std_logic_vector (7 DOWNTO 0);

BEGIN
    port_map_somador_pc : somador_pc PORT MAP(clock, out_pc, out_somador_pc);

    port_map_pc : pc PORT MAP(clock, out_port_map_mul_2X1_jump, out_pc);

    port_map_mem_rom : mem_rom PORT MAP(clock, out_pc, out_rom);

    port_map_divisao_da_instrucao : divisao_da_instrucao PORT MAP(out_rom, out_di_7_4, out_di_3_2, out_di_1_0, out_di_3_0);

    port_map_unidade_controle : unidade_controle PORT MAP(clock, out_di_7_4, out_uc_jump, out_uc_branch, out_uc_mem_read, out_uc_mem_to_reg, out_uc_ula_op, out_uc_mem_write, out_uc_ula_src, out_uc_reg_write);

    port_map_banco_de_registradores : banco_de_registradores PORT MAP(clock, out_uc_reg_write, out_di_3_2, out_di_1_0, out_mult_2x1_ram_ula, out_br_reg_A, out_br_reg_B);

    port_map_extensor_sinal2_8 : extensor_sinal2_8 PORT MAP(out_di_1_0, out_es_2_8);

    port_map_mult_2X1_br_ula : mult_2x1 PORT MAP(out_uc_ula_src, out_br_reg_B, out_es_2_8, out_mul_2X1_br_ula);

    port_map_ula : ula PORT MAP(clock, out_uc_ula_op, out_br_reg_A, out_mul_2X1_br_ula, out_ula_result, out_ula_zero, out_overflow);

    port_map_mem_ram : mem_ram PORT MAP(clock, out_uc_mem_write, out_uc_mem_read, out_es_2_8, out_ula_result, out_mem_ram);

    port_map_mult_2X1_ram_ula : mult_2x1 PORT MAP(out_uc_mem_to_reg, out_ula_result, out_mem_ram, out_mult_2x1_ram_ula);

    port_map_extensor_sinal4_8 : extensor_sinal4_8 PORT MAP(out_di_3_0, out_es_4_8);

    port_map_portAnd: portAnd PORT MAP(out_uc_branch, out_ula_zero, out_portAnd);

    port_map_mult_2X1_add_pc_jump : mult_2x1 PORT MAP(out_portAnd, out_somador_pc, out_es_4_8, out_mul_2X1_add_pc_jump);

    port_map_mult_2X1_jump : mult_2x1 PORT MAP(out_uc_jump, out_mul_2X1_add_pc_jump, out_es_4_8, out_port_map_mul_2X1_jump);

    -- Resultados Saidas
    out_out_pc <= out_pc;
    out_out_rom <= out_rom;
    out_opcode <= out_di_7_4;
    out_rs <= out_di_3_2;
    out_rt <= out_di_1_0;
    out_endereco <= out_di_3_0;
    out_out_br_reg_A <= out_br_reg_A;
    out_out_br_reg_B <= out_br_reg_B;
    out_out_ula_result <= out_ula_result;
    out_out_overflow <= out_overflow;
    out_out_mem_ram <= out_mem_ram;
    out_out_mult_2x1_ram_ula <= out_mult_2x1_ram_ula;
END behavior;