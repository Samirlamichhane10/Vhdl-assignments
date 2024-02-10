library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FAdder_TB is
end FAdder_TB;

architecture behavior of FAdder_TB is
    signal A, B, Cin, Sum, Cout : STD_LOGIC;
    
    -- Define a clock period
    constant CLK_PERIOD : time :=  10 ns;
begin
    -- Instantiate the unit under test (UUT)
    UUT: entity work.FA
        port map (
            A => A,
            B => B,
            Cin => Cin,
            Sum => Sum,
            Cout => Cout
        );

    -- Stimulus process
    stim_proc: process
    begin
        -- Hold reset state
        A <= '0';
        B <= '0';
        Cin <= '0';
        wait for CLK_PERIOD;
        
        -- Provide inputs for different cases
        A <= '0'; B <= '0'; Cin <= '0'; wait for CLK_PERIOD;
        A <= '0'; B <= '0'; Cin <= '1'; wait for CLK_PERIOD;
        A <= '0'; B <= '1'; Cin <= '0'; wait for CLK_PERIOD;
        A <= '0'; B <= '1'; Cin <= '1'; wait for CLK_PERIOD;
        A <= '1'; B <= '0'; Cin <= '0'; wait for CLK_PERIOD;
        A <= '1'; B <= '0'; Cin <= '1'; wait for CLK_PERIOD;
        A <= '1'; B <= '1'; Cin <= '0'; wait for CLK_PERIOD;
        A <= '1'; B <= '1'; Cin <= '1'; wait for CLK_PERIOD;
        
        -- Stop the simulation
        wait;
    end process;
end behavior;

