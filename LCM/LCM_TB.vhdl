library ieee;
use ieee.std_logic_1164.all;

entity lcm_fsm_tb is
end lcm_fsm_tb;

architecture test of lcm_fsm_tb is
    signal rst, clk : std_logic;
    signal n1, n2, lcm : integer;

    component lcm_fsm
        Port (
            rst, clk : in std_logic;
            n1, n2 : in integer;
            lcm : out integer
        );
    end component;

begin
    lcm_fsm_inst: lcm_fsm port map(rst => rst, clk => clk, n1 => n1, n2 => n2, lcm => lcm);

    process
    begin
        -- Initialize signals
        rst <= '1';
        clk <= '0';
        n1 <= 0;
        n2 <= 0;

        wait for 500 ms;

        -- Release reset and apply inputs
        rst <= '0';
        n1 <= 4;
        n2 <= 6;

        wait for 1 us;
        clk <= '1';
        wait for 1 us;
        clk <= '0';

        wait for 500 ms;

        -- Apply different inputs
        n1 <= 8;
        n2 <= 12;

        wait for 1 us;
        clk <= '1';
        wait for 1 us;
        clk <= '0';

        wait for 500 ms;

        -- Apply more inputs
        n1 <= 15;
        n2 <= 25;

        wait for 1 us;
        clk <= '1';
        wait for 1 us;
        clk <= '0';

        wait;

    end process;
end test;
