--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:49:12 02/12/2017
-- Design Name:   
-- Module Name:   C:/.Xilinx/garuda/adder_tb.vhd
-- Project Name:  garuda
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: adder
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
 
ENTITY adder_tb IS
END adder_tb;
 
ARCHITECTURE behavior OF adder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT adder
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         carry : IN  std_logic;
         sum : OUT  std_logic;
         c_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal carry : std_logic := '0';

 	--Outputs
   signal sum : std_logic;
   signal c_out : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: adder PORT MAP (
          a => a,
          b => b,
          carry => carry,
          sum => sum,
          c_out => c_out
        );

   -- Clock process definitions
    

   -- Stimulus process
   stim_proc:
	process
   begin	
	wait for 100 ns;
     a<='0';
	  b<='1';
	  carry<='0';
	  -- hold reset state for 100 ns.
    wait for 100 ns;
a<='1';
b<='0';
carry<='0';
wait for 100 ns;
a<='1';
b<='1';
carry<='0';
wait for 100 ns;
a<='0';
b<='0';
carry<='0';
    
wait;
      -- insert stimulus here 
end process;

END;
