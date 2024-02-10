library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity JK_Flip_Flop is
    Port ( J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end JK_Flip_Flop;

architecture Behavioral of JK_Flip_Flop is

signal temp:std_logic:='0';
begin

process(RST,CLK,J,K)
begin
if(RST='0') then
TEMP<='0';
elsif (CLK ='1') then
if(J='0' and J='0') then
TEMP<=TEMP;
elsif(J='0' and J='1') then
TEMP<='0';

elsif(J='1' and K='0') then
TEMP<='1';
else
TEMP<= not TEMP;
end if;
end if;
end process;
Q<= TEMP;

end Behavioral;
