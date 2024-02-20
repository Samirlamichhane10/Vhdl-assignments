library IEEE;
use IEEE.std_logic_1164.all;

entity sequence is 
    Port(clk : in std_logic; 
    reset : in std_logic; 
    input : in  std_logic;
    output : out std_logic);
end sequence;

architecture behavioral of sequence is 
    type state_type is (s0 , s1 , s2 , s3);
    signal current_state , next_state : state_type;

begin 
    process(clk , reset)
    begin
        if reset = '1' then 
            current_state <= s0;
        elsif rising_edge (clk) then
            current_state <= next_state;
        end if ;
    end process;

    process(current_state , input)
        begin 
            case current_state is
                when s0 =>
                    if input ='1' then
                        output <= '0';
                        next_state <= s1;
                    else 
                        output <='0';
                        next_state <= s0;
                    end if;
                    when s1 =>
                        if input = '0' then
                            output <= '0';
                            next_state <= s2;
                        else
                            next_state <= s1;
                            output <= '0';
                        end if;
                        
                    when s2 =>
                        if input = '1' then
                            output <= '0';
                            next_state <= s3;
                        else
                            output <= '0';
                            next_state <= s0;
                        end if;
                        
                    when s3 =>
                        if input = '1' then
                            output <= '1';
                            next_state <= s3;
                        else
                            output <= '0';
                            next_state <= s2;
                        end if;
                        
                    when others =>
                        next_state <= s0;
                        output <= '0';
                end case;
            end process;
        end behavioral;
