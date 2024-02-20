library ieee;
use ieee.std_logic_1164.all;

entity MUX41_tb is
end entity;

architecture tb of MUX41_tb is
    component MUX41_structural is
        Port (
            A : in STD_LOGIC_VECTOR (3 downto  0);
            Y : out STD_LOGIC;
            S : in STD_LOGIC_VECTOR (1 downto  0)
        );
    end component;

    signal A : STD_LOGIC_VECTOR(3 downto  0);
    signal S : STD_LOGIC_VECTOR(1 downto  0);
    signal Y : STD_LOGIC;

begin  
    uut : MUX41_structural port map(
        A => A,
        Y => Y,
        S => S
    );

    stim : process
    begin
        A <= "1010";
        S <= "00"; wait for  10 ns;
        S <= "01"; wait for  10 ns;
        S <= "10"; wait for  10 ns;
        S <= "11"; wait for  10 ns;
        wait;
    end process;
end tb;

