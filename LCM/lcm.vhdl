library  ieee;
use ieee.std_logic_1164.all;

entity lcm is
	port(RESET, CLK : in std_logic;
	    a, b : in integer;
	    lcm_result : out integer
    	);
end lcm;

architecture behavior of lcm is
	type state is (start, input, output, check, check1, updatex,  updatey);
	signal current_state, next_state: state;
begin
	state_register:process(CLK, RESET)
	begin
		if(RESET = '1') then
			current_state <= start;
		elsif(rising_edge(CLK)) then
			current_state <= next_state;
		end if;
	end process;
	compute:process(a, b, current_state)
	variable  z, x, y, r, p : integer;
	begin
		case current_state is 
			when start =>
				next_state <= input;
			when input =>
				x:= a;
				y:= b;
				z := x * y;
				next_state <= check;
			when check =>
				if(x< y) then
					next_state <= updatex;
				else
					next_state <= updatey;
				end if;
				next_state <= check1;
			when  check1 =>
				while y /= 0 loop
					r:= x mod y;
					x:= y;
					y:= r;
				end loop;
				next_state <= output;
			when updatex =>
				p:=x;
				x:=y;
				y:=p;
			when updatey =>
				x:=x;
				y:=y;
			when output =>
				lcm_result <= z / x;	
				next_state <= start;
			when others =>
				next_state <= start;
		end case;
	end process compute;
end behavior;
