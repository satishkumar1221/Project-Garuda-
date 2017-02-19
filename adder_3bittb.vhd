--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:52:04 02/18/2017
-- Design Name:   
-- Module Name:   C:/.Xilinx/garuda/adder_3bittb.vhd
-- Project Name:  garuda
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: adder_3bit
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY adder_3bittb IS
END adder_3bittb;
 
ARCHITECTURE behavior OF adder_3bittb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT adder_3bit
    PORT(
         a : IN  std_logic_vector(2 downto 0);
         b : IN  std_logic_vector(2 downto 0);
         carry : IN  std_logic;
         cout : OUT  std_logic;
         sum : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(2 downto 0) := (others => '0');
   signal b : std_logic_vector(2 downto 0) := (others => '0');
   signal carry : std_logic := '0';

 	--Outputs
   signal cout : std_logic;
   signal sum : std_logic_vector(2 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: adder_3bit PORT MAP (
          a => a,
          b => b,
          carry => carry,
          cout => cout,
          sum => sum
        );

   -- Clock process definitions
  
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
     	
a<="000";
b<="010";
carry<='0';
 wait for 100 ns;
 a<="100";
b<="110";
carry<='0';
      

      -- insert stimulus here 

      wait;
   end process;

END;
