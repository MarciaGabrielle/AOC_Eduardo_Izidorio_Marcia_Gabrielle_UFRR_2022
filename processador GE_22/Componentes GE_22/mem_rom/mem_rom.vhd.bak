LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;

ENTITY mem_rom IS
    PORT (
        clock   : IN std_logic;
        in_port : IN std_logic_vector(7 DOWNTO 0);
        out_port: OUT std_logic_vector(7 DOWNTO 0)
    );
END mem_rom;

ARCHITECTURE behavior OF mem_rom IS
    TYPE mem_rom IS ARRAY (0 TO 255) OF std_logic_vector(7 DOWNTO 0);
    CONSTANT rom : mem_rom := (
    -- Teste addi, add, subi, li e jump
    --0 => "00010010", -- addi S0 2 -- S0 == 2
    --1 => "00010111", -- addi S1 3 -- S1 == 3
    --2 => "00000001", -- add S0 S1 -- S0 == 5
    --3 => "00010011", -- addi S0 3 -- S0 == 8
    --4 => "00110010", -- subi S0 2 -- S0 == 6
    --5 => "01110000", -- li S0 0
    --6 => "01110100", -- li S1 0
    --7 => "11110000", -- jump 0000
    --OTHERS => "00000000"

    -- Teste sw e lw
    --0 => "00010011", -- addi S0 3 -- S0 == 3
    --1 => "01010000", -- sw S0 ram(00)
    --2 => "00010110", -- addi S1 2 -- S1 == 2
    --3 => "01010101", -- sw S1 ram(01)
    --4 => "01110000", -- li S0 0
    --5 => "01110100", -- li S1 0
    --6 => "01000000", -- lw S0 ram(00)
    --7 => "01000101", -- lw S1 ram(01)
    --8 => "00000001", -- add S0 S1 -- S0 == 5
    --9 => "01110000", -- li S0 0
    --10 => "01110100", -- li S1 0
    --11 => "11110000", -- jump 0000
    --OTHERS => "00000000"

    -- Teste move
    --0 => "01110011", -- li S0 3
    --1 => "01110110", -- li S1 2
    --2 => "01101000", -- move S2 S0
    --3 => "01101101", -- move S3 S1
    --4 => "00001011", -- add S2 S3
    --5 => "01100010", -- move S0 S2
    --6 => "00110001", -- subi S0 1
    --7 => "01110000", -- li S0 0
    --8 => "01110100", -- li S1 0
    --9 => "11110000", -- jump 0000
    --OTHERS => "00000000");

    -- Teste beq
    --0 => "01110010", -- li S0 2
    --1 => "01110110", -- li S1 2
    --2 => "10100001", -- if S0 == S1
    --3 => "10000110", -- beq S0 == S1 jump 0110
    --4 => "00010011", -- addi S0 3
    --5 => "00010011", -- addi S0 3
    --6 => "00000001", -- add S0 S1
    --7 => "01110000", -- li S0 0
    --8 => "01110100", -- li S1 0
    --9 => "11110000", -- jump 0000
    --OTHERS => "00000000");

    -- Teste bne
    --0 => "01110010", -- li S0 2
    --1 => "01110111", -- li S1 3
    --2 => "10100001", -- if S0 == S1
    --3 => "10010110", -- bne S0 != S1 jump 0110
    --4 => "00010011", -- addi S0 3
    --5 => "00010011", -- addi S0 3
    --6 => "00000001", -- add S0 S1
    --7 => "01110000", -- li S0 0
    --8 => "01110100", -- li S1 0
    --9 => "11110000", -- jump 0000
    --OTHERS => "00000000");

    -- Teste mul
    --0 => "01110011", -- li S0 3
    --1 => "01110110", -- li S1 2
    --2 => "01111011", -- li S2 3 
    --3 => "01111111", -- li S3 3
    --4 => "10110001", -- mul S0 S1
    --5 => "10111011", -- mul S2 S3
    --6 => "10110010", -- mul S0 S2
    --7 => "00100010", -- sub S0 S2
    --8 => "01111000", -- li S2 0
    --9 => "10110010", -- mul S0 S2
    --10 => "11110000", -- jump 0000
    --OTHERS => "00000000");
  
    -- Teste Fibonacci
    -- para nao se perder
    -- S2 == i do for
    -- S3 == numero que deseja calcular o fib
    -- variaveis
    -- a == memoria(00)
    -- b == memoria(01)
    -- S0 usado para lw e sw
    -- S1 == aux
    0 => "01111111", -- li S3 3
    1 => "10111111", -- mul S3 S3 == 9
    2 => "00011111", -- addi S3 1  == 12
    3 => "00011110", -- addi S3 2  == 14
    4 => "00011110", -- addi S3 2  == 16
    5 => "01111000", -- li S2 0
    6 => "01110000", -- li S0 0 
    7 => "01010000", -- sw S0 ram(00)  ==  a = 0
    8 => "01110001", -- li S0 1
    9 => "01010001", -- sw S0 ram(01) == b = 1
    
    10 => "01000000", -- lw S0 ram(00)
    11 => "00000100", -- add S1 S0
    12 => "01000001", -- lw S0 ram(01)
    13 => "00000100", -- add S1 S0
    14 => "01010000", -- sw S0 ram(00)  ==  a = b
    15 => "01010101", -- sw s1 ram(01) == b = aux
    
    16 => "00011001", -- addi s2 1
    17 => "10101011", -- if S2 == S3
    18 => "10011010", -- bne S2 != S3 jump 1010
    19 => "01110000", -- li S0 0
    20 => "01110100", -- li S1 0
    21 => "01111000", -- li S2 0
    22 => "01111100", -- li S3 0
    OTHERS => "00000000");

BEGIN
    PROCESS (clock)
    BEGIN
        out_port <= rom(conv_integer(unsigned(in_port)));
    END PROCESS;
END behavior;