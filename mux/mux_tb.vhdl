LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY Multiplexer_Tf IS
END Multiplexer_Tf;
 
ARCHITECTURE behavior OF Multiplexer_Tf IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Multiplexer
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         Y : OUT  std_logic;
         S : IN  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal S : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Y : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Multiplexer PORT MAP (
          A => A,
          Y => Y,
          S => S
        );

   -- Clock process definitions -- <clock>_process :process
   -- begin
		 --<clock> <= '0';
		--wait for <clock>_period/2;
		--<clock> <= '1';
		--wait for <clock>_period/2;
   --end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

     -- wait for <clock>_period*10;

      -- insert stimulus here 
		A<="1010";
		S<="00";
		wait for 100 ns;
		S<="01";
		wait for 100 ns;
		S<="10";
		wait for 100 ns;
		S<="11";

      wait;
   end process;

END;
