-- Sequence Detector: Detects the sequence "1011"

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Sequence_Detector is
    Port (
        clk: in STD_LOGIC;
        reset: in STD_LOGIC;
        input_bit: in STD_LOGIC;
        sequence_detected: out STD_LOGIC
    );
end Sequence_Detector;

architecture Behavioral of Sequence_Detector is
    -- State type definition
    type state_type is (S0, S1, S2, S3);
    signal current_state, next_state: state_type;
begin
    -- State transition process
    process(clk, reset)
    begin
        if reset = '1' then
            current_state <= S0;
        elsif rising_edge(clk) then
            current_state <= next_state;
        end if;
    end process;

    -- Next state logic and sequence detection
    process(current_state, input_bit)
    begin
        next_state <= current_state;
        sequence_detected <= '0';

        case current_state is
            when S0 =>
                if input_bit = '1' then
                    next_state <= S1;
                end if;
            when S1 =>
                if input_bit = '0' then
                    next_state <= S2;
                end if;
            when S2 =>
                if input_bit = '1' then
                    next_state <= S3;
                else
                    next_state <= S0;
                end if;
            when S3 =>
                if input_bit = '1' then
                    sequence_detected <= '1';
                    next_state <= S1;
                else
                    next_state <= S0;
                end if;
            when others =>
                next_state <= S0;
        end case;
    end process;
end Behavioral;

