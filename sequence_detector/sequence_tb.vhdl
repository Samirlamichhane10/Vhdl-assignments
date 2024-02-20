library IEEE;
use IEEE.std_logic_1164.all;

entity sequence_tb is
end sequence_tb;

architecture behavioral of sequence_tb is
    -- Constants
    constant CLK_PERIOD : time := 10 ns;

    -- Signals
    signal clk : std_logic := '0';
    signal reset : std_logic := '1'; -- Active low reset
    signal input_sig : std_logic := '0';
    signal output_sig : std_logic;

begin
    dut : entity work.sequence
        port map (
            clk => clk,
            reset => reset,
            input => input_sig,
            output => output_sig
        );

    -- Clock process
    process
    begin
        while now < 100 ns loop  -- Run the clock for 100 ns
            clk <= '0';
            wait for CLK_PERIOD / 2;
            clk <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
        wait;
    end process;

    process
    begin
        -- Apply reset
        reset <= '1';  -- Assert reset
        wait for 10 ns;
        reset <= '0';  -- De-assert reset
        wait for 10 ns;

        -- Test sequence: 10011011
        input_sig <= '1'; wait for CLK_PERIOD;
        input_sig <= '0'; wait for CLK_PERIOD;
        input_sig <= '0'; wait for CLK_PERIOD;
        input_sig <= '1'; wait for CLK_PERIOD;
        input_sig <= '1'; wait for CLK_PERIOD;
        input_sig <= '0'; wait for CLK_PERIOD;
        input_sig <= '1'; wait for CLK_PERIOD;
        input_sig <= '1'; wait for CLK_PERIOD;

        wait for 100 ns;

        wait;
    end process;

end behavioral;
