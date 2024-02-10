library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HA is
    Port (
        A, B : in  STD_LOGIC;
        Sum, CarryOut : out STD_LOGIC
    );
end HA;

architecture dataflow of HA is
begin
    Sum <= A XOR B;
    CarryOut <= A AND B;
end dataflow;

