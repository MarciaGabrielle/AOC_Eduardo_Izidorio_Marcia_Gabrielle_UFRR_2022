LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY full_adder IS
    PORT (
        A : IN std_logic;
        B : IN std_logic;
        cin : IN std_logic;
        sum : OUT std_logic;
        cout : OUT std_logic
    );
END full_adder;

ARCHITECTURE behavior OF full_adder IS

    COMPONENT half_adder IS
        PORT (
            A : IN std_logic;
            B : IN std_logic;
            sum : OUT std_logic;
            cout : OUT std_logic
        );
    END COMPONENT;

    SIGNAL ha1_sum, ha1_cout, ha2_cout : std_logic;

BEGIN
    ha1 : half_adder PORT MAP(A, B, ha1_sum, ha1_cout);
    ha2 : half_adder PORT MAP(ha1_sum, cin, sum, ha2_cout);
    cout <= ha1_cout OR ha2_cout;
END behavior;