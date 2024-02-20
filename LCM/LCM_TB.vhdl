library ieee;
use ieee.std_logic_1164.all;

entity LCM_TB  is 
end LCM_TB;

architecture behavior of lcm_tb is 
       	signal CLK, RESET: std_logic;
	signal a, b, lcm_result: integer;
	
begin
	dut : entity work.lcm port map(CLK => CLK, RESET =>  RESET, a => a, b => b, lcm_result => lcm_result);
	clock: process
	begin
		CLK<= '1';
		wait for 100 ns;
	
		CLK <= '0';
		wait for 100 NS;
	
	end process;
	process
	begin
		RESET <= '1';
		wait for 10 ns;
		RESET <= '0';
		wait for 10 ns;
		a <= 12;
		b <= 9;
		wait for 100 ns;

		a <= 7;
		b <= 5;
		wait for 100 ns;
	
		a <= 12;
		b <= 5;
		wait for 100 ns;

		wait;
	end process;
end behavior;
