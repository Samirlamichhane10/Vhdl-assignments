library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX41_structural is
    Port (
        A : in STD_LOGIC_VECTOR (3 downto  0);
        Y : out STD_LOGIC;
        S : in STD_LOGIC_VECTOR (1 downto  0)
    );
end MUX41_structural;

architecture structural of MUX41_structural is
begin
    with S select
        Y <= A(0) when "00",
             A(1) when "01",
             A(2) when "10",
             A(3) when "11",
             '0' when others;
end structural;

