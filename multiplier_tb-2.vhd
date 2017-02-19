--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:23:08 02/18/2017
-- Design Name:   
-- Module Name:   C:/.Xilinx/garuda/multiplier_tb-2.vhd
-- Project Name:  garuda
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: multipliertwobit
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
 
ENTITY multiplier_tb-2 IS
END multiplier_tb-2;
 
ARCHITECTURE behavior OF multiplier_tb-2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT multipliertwobit
    PORT(
         x : IN  std_logic_vector(1 downto 0);
         y : IN  std_logic_vector(1 downto 0);
         z : OUT  std_logic_vector(2 downto 0);
         out_put : OUT  std_logic_vector(3 downto 0);
         s : OUT  std_logic_vector(1 downto 0);
         t : OUT  std_logic_vector(2 downto 0);
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic_vector(1 downto 0) := (others => '0');
   signal y : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal z : std_logic_vector(2 downto 0);
   signal out_put : std_logic_vector(3 downto 0);
   signal s : std_logic_vector(1 downto 0);
   signal t : std_logic_vector(2 downto 0);
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: multipliertwobit PORT MAP (
          x => x,
          y => y,
          z => z,
          out_put => out_put,
          s => s,
          t => t,
          cout => cout
        );

   -- Clock process definitions
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
   	x<="11";
		y<="11";
		wait for 100 ns;
		x<= "10";
		y<= "01";
      

      -- insert stimulus here 

      wait;
   end process;

END;
