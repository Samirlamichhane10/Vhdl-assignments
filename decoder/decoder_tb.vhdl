library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity decoder_tb is
end decoder_tb;

architecture BEHAVIORAL_TB of decoder_tb is
    signal TEST_INPUT : std_logic_vector(1 downto  0);
    signal TEST_OUTPUT : std_logic_vector(3 downto  0);

    component DECODER_SOURCE is
        Port ( I : in  STD_LOGIC_VECTOR (1 downto  0);
               Y : out STD_LOGIC_VECTOR (3 downto  0));
    end component;

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: DECODER_SOURCE
        port map (
            I => TEST_INPUT,
            Y => TEST_OUTPUT
        );

    -- Stimulus process
    stim_proc: process
    begin
        -- Test all possible inputs
        for i in  0 to  3 loop
            TEST_INPUT <= std_logic_vector(to_unsigned(i,  2));
            wait for  10 ns;
        end loop;

        -- End the simulation
        wait;
    end process;
end BEHAVIORAL_TB;

