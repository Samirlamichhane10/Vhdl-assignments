library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FA is
    Port (
        A, B, Cin : in  STD_LOGIC;
        Sum, Cout : out STD_LOGIC
    );
end FA;

architecture structural of FA is
    component HA is
        Port (
            A, B : in  STD_LOGIC;
            Sum, CarryOut : out STD_LOGIC
        );
    end component;
    
    signal S0, S1, S2 : STD_LOGIC;
begin
    U1: HA PORT MAP(A => A, B => B, Sum => S0, CarryOut => S1);
    U2: HA PORT MAP(A => S0, B => Cin, Sum => Sum, CarryOut => S2);
    Cout <= S1 OR S2;
end structural;

