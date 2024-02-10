LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY JK_Flip_Flop_TB IS
END JK_Flip_Flop_TB;
 
ARCHITECTURE behavior OF JK_Flip_Flop_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT JK_Flip_Flop
    PORT(
         J : IN  std_logic;
         K : IN  std_logic;
         CLK : IN  std_logic;
         RST : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal J : std_logic := '0';
   signal K : std_logic := '0';
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';

 	--Outputs
   signal Q : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: JK_Flip_Flop PORT MAP (
          J => J,
          K => K,
          CLK => CLK,
          RST => RST,
          Q => Q
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      --wait for CLK_period*10;

      -- insert stimulus here 
		
		RST<='0';
		CLK<='0';
		wait for 100 ns;
		
		RST<='1';
		CLK<='1';
		J<='0';
		K<='1';
		wait for 100 ns;
		
		J<='0';
		K<='0';
		wait for 100 ns;
		
		J<='1';
		K<='0';
		wait for 100 ns;
		J<='1';
		K<='1';

      wait;
   end process;

END;
