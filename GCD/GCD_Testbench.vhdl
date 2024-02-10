library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity GCD_TB is
end GCD_TB;

architecture behavior of GCD_TB is
    signal NUM1, NUM2 : std_logic_vector(7 downto  0);
    signal CLK, RESET, START, DONE : std_logic;
    signal RESULT : std_logic_vector(7 downto  0);
    
    -- Define a clock period
    constant CLK_PERIOD : time :=  10 ns;
begin
    -- Instantiate the unit under test (UUT)
    UUT: entity work.GCD
        port map (
            NUM1 => NUM1,
            NUM2 => NUM2,
            CLK => CLK,
            RESET => RESET,
            START => START,
            DONE => DONE,
            RESULT => RESULT
        );

    -- Clock generation
    CLK_process : process
    begin
        CLK <= '0';
        wait for CLK_PERIOD /  2;
        CLK <= '1';
        wait for CLK_PERIOD /  2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Initialize and hold reset state
        RESET <= '1';
        START <= '0';
        wait for CLK_PERIOD *  10;
        
        -- Release reset and provide inputs
        RESET <= '0';
        NUM1 <= "01000001"; --  65 in binary
        NUM2 <= "01000011"; --  67 in binary
        START <= '1';
        wait for CLK_PERIOD *  10;
        START <= '0';
        
        -- Wait for DONE signal
        wait until DONE = '1';
        
        -- Assert the result
        assert RESULT = "00000001" report "Test failed!" severity error;
        
        -- Stop the simulation
        wait;
    end process;
end behavior;

