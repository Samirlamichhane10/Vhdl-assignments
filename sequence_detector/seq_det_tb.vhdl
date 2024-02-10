library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Sequence_Detector_Testbench is
end Sequence_Detector_Testbench;

architecture Behavioral of Sequence_Detector_Testbench is
    component Sequence_Detector is
        Port (
            clk: in STD_LOGIC;
            reset: in STD_LOGIC;
            input_bit: in STD_LOGIC;
            sequence_detected: out STD_LOGIC
        );
    end component;

    signal clk: STD_LOGIC := '0';
    signal reset: STD_LOGIC := '0';
    signal input_bit: STD_LOGIC;
    signal sequence_detected: STD_LOGIC;
begin
    -- Instantiate the sequence detector
    UUT: Sequence_Detector
        port map (
            clk => clk,
            reset => reset,
            input_bit => input_bit,
            sequence_detected => sequence_detected
        );

    -- Clock process
    clk_process: process
    begin
        while now < 100 ns loop
            clk <= '0';
            wait for 5 ns;
            clk <= '1';
            wait for 5 ns;
        end loop;
        wait;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        reset <= '1';
        wait for 10 ns;
        reset <= '0';
        
        -- Stimulate the input sequence
        input_bit <= '1'; wait for 10 ns;
        input_bit <= '0'; wait for 10 ns;
        input_bit <= '1'; wait for 10 ns;
        input_bit <= '1'; wait for 10 ns;
        input_bit <= '0'; wait for 10 ns;
        input_bit <= '1'; wait for 10 ns;
        input_bit <= '0'; wait for 10 ns;
        input_bit <= '1'; wait for 10 ns;
        input_bit <= '1'; wait for 10 ns;
        input_bit <= '1'; wait for 10 ns;

        wait;
    end process;
end Behavioral;

