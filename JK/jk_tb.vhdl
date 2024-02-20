library ieee;
use ieee.std_logic_1164.all;

entity Jk_Flip_Flop_Tb is
end Jk_Flip_Flop_Tb;

architecture behaviour of Jk_Flip_Flop_Tb is signal j,k,clk,reset: std_logic :='0';
	signal q, qo: std_logic;
	constant clk_period: time := 10 ns;
begin
	uut: entity work.jk port map(j=>j, k=>k, clk=>clk, reset=>reset, q=>q, qo=>qo);

	clock_proc:
	process
	begin
		clk <= '0';
		wait for 10*clk_period;
		clk <= '1';
		wait for 10*clk_period;
	end process;

	sti_proc:
	process
	begin
		reset <='1';
		wait for clk_period;
		reset <= '0';
		wait for clk_period;

		j <= '0';
		k <= '0';
		wait for 10*clk_period;

		j <= '0';
		k <= '1';
		wait for 10*clk_period;

		j <= '1';
                k <= '0';
                wait for 10*clk_period;
		
		j <= '1';
                k <= '1';
                wait for 10*clk_period;

		wait;
	end process;
end behaviour;
