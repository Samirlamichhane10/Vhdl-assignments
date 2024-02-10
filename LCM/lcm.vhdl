library ieee;
use ieee.std_logic_1164.all;

entity lcm_fsm is
    Port (
        rst, clk : in std_logic;
        n1, n2 : in integer;
        lcm : out integer
    );
end lcm_fsm;

architecture behaviour of lcm_fsm is
    type state is (S, IP, C, UX, UY, OP); -- start, input, check, updatex, updatey, output
    signal ps, ns : state;
begin
    seq_proc : process(clk, rst)
    begin
        if rst = '1' then
            ps <= S;
        elsif rising_edge(clk) then
            ps <= ns;
        end if;
    end process seq_proc;

    comb_proc: process(n1, n2, ps)
        variable x, y, z : integer;
    begin
        case ps is
            when S =>
                lcm <= 0;
                ns <= IP;
            when IP =>
                x := n1;
                y := n2; -- Fixed typo n1 should be assigned to y
                z := x * y;
                ns <= C;
            when C =>
                if x > y then
                    ns <= UX;
                elsif x < y then
                    ns <= UY;
                else
                    ns <= OP;
                end if;
            when UX =>
                x := x - y;
                ns <= C;
            when UY =>
                y := y - x;
                ns <= C;
            when OP =>
                lcm <= z / x;
                ns <= S;
        end case;
    end process comb_proc;
end behaviour;
