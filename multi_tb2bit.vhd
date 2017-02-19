--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:49:40 02/18/2017
-- Design Name:   
-- Module Name:   C:/.Xilinx/garuda/multi_tb2bit.vhd
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
 
ENTITY multi_tb2bit IS
END multi_tb2bit;
 
ARCHITECTURE behavior OF multi_tb2bit IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT multiplier_2bit
    PORT(
         x : IN  std_logic_vector(1 downto 0);
         y : IN  std_logic_vector(1 downto 0);
         z : OUT  std_logic_vector(2 downto 0);
         r : out std_logic_vector(2 downto 0);
         s : out std_logic_vector(1 downto 0));
        
    END COMPONENT;
    

   --Inputs
   signal x : std_logic_vector(1 downto 0) := (others => '0');
   signal y : std_logic_vector(1 downto 0) := (others => '0');
   signal carry : std_logic := '0';

 	--Outputs
   signal z : std_logic_vector(2 downto 0);
   signal cout : std_logic;
	signal r : out std_logic_vector(2 downto 0);
   signal s : out std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: multiplier_2bit PORT MAP (
          x => x,
          y => y,
          z => z,
          
        );

   -- Clock process definitions
  
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      x<="11";
		y<="10";
		
		wait for 10 ns;
		x<="10";
		y<="11";
		
      -- insert stimulus here 

      wait;
   end process;

END;
