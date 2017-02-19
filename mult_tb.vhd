--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:56:54 02/18/2017
-- Design Name:   
-- Module Name:   C:/.Xilinx/garuda/mult_tb.vhd
-- Project Name:  garuda
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: multiplier_2bit
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
 
ENTITY mult_tb IS
END mult_tb;
 
ARCHITECTURE behavior OF mult_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT multiplier_2bit
    PORT(
         x : IN  std_logic_vector(1 downto 0);
         y : IN  std_logic_vector(1 downto 0);
         z : OUT  std_logic_vector(2 downto 0);
         r : OUT  std_logic_vector(2 downto 0);
         s : OUT  std_logic_vector(1 downto 0);
         cwe : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic_vector(1 downto 0) := (others => '0');
   signal y : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal z : std_logic_vector(2 downto 0);
   signal r : std_logic_vector(2 downto 0);
   signal s : std_logic_vector(1 downto 0);
   signal cwe : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: multiplier_2bit PORT MAP (
          x => x,
          y => y,
          z => z,
          r => r,
          s => s,
          cwe => cwe
        );

   -- Clock process definitions
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      x<="10";
		y<="11";
		wait for 10ns; 
		 x<="11";
		y<="11";
		wait for 10ns;
		

      -- insert stimulus here 

      wait;
   end process;

END;
