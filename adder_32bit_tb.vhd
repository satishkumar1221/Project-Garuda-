--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:18:28 02/12/2017
-- Design Name:   
-- Module Name:   C:/.Xilinx/garuda/adder_32bit_tb.vhd
-- Project Name:  garuda
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: adder_32bit
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
 
ENTITY adder_32bit_tb IS
END adder_32bit_tb;
 
ARCHITECTURE behavior OF adder_32bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT adder_32bit
    PORT(
         a1 : IN  std_logic_vector(31 downto 0);
         b1 : IN  std_logic_vector(31 downto 0);
         carry : IN  std_logic;
         cout : OUT  std_logic;
         sum : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a1 : std_logic_vector(31 downto 0) := (others => '0');
   signal b1 : std_logic_vector(31 downto 0) := (others => '0');
   signal carry : std_logic := '0';

 	--Outputs
   signal cout : std_logic;
   signal sum : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: adder_32bit PORT MAP (
          a1 => a1,
          b1 => b1,
          carry => carry,
          cout => cout,
          sum => sum
        );

   -- Clock process definitions
  
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
     a1<="11111111000011110000111100001111";
	  b1<="11111111111111111111111111111111";
	  carry<='0';
	  wait for 10 ns;
	  a1<="11001100111100001111000011111000";
	  b1<="10000000000000000000000000000000";
	  carry<='0';
	  wait for 10 ns;
	   a1<="11001100111100001111000011111000";
	  b1<="10000000011100000000000000000000";
	  carry<='0';
	  wait for 10 ns;
	  wait for 10 ns;
	   a1<="11001100111100001111000011111000";
	  b1<="10000000011100000000000000111111";
	  carry<='0';
      -- insert stimulus here 

      wait;
   end process;

END;
