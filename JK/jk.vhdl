library ieee;
use ieee.std_logic_1164.all;

entity jk is
	port(
		j, k, clk, reset: in std_logic;
		q, qo: out std_logic
	);
end jk;

architecture behaviour of jk is
begin
	process(j,k,clk,reset)
	variable output: std_logic := '0';
	begin
		if reset = '1' then
			output := '0';
		elsif rising_edge(clk) then
			if j /= k then
				output := j;
			elsif j='1' and k='1' then
				output := not output;
			end if;
		end if;
		q <= output;
		qo <= not output;
	end process;
end behaviour;
