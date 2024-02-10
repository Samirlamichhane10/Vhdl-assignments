library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity GCD is
    Port (
        NUM1, NUM2 : in  std_logic_vector(7 downto  0);
        CLK         : in  std_logic;
        RESET       : in  std_logic;
        START       : in  std_logic;
        DONE        : out std_logic;
        RESULT      : out std_logic_vector(7 downto  0)
    );
end GCD;

architecture Behavioral of GCD is
    -- Signals for internal operations
    signal a, b : unsigned(7 downto  0);
    signal temp : unsigned(7 downto  0);
    signal done_internal : std_logic;
begin
    -- Main process for GCD calculation
    process(CLK)
    begin
        if rising_edge(CLK) then
            if RESET = '1' then
                done_internal <= '0';
                a <= (others => '0');
                b <= (others => '0');
            elsif START = '1' then
                a <= unsigned(NUM1);
                b <= unsigned(NUM2);
                done_internal <= '0';
            elsif done_internal = '0' then
                if a = b then
                    RESULT <= std_logic_vector(a);
                    done_internal <= '1';
                elsif a < b then
                    b <= b - a;
                else
                    a <= a - b;
                end if;
            end if;
        end if;
	DONE <= done_internal;
    end process;
end Behavioral;

