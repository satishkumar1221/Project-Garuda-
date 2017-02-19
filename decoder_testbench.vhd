--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:57:19 02/12/2017
-- Design Name:   
-- Module Name:   C:/.Xilinx/garuda/decoder_testbench.vhd
-- Project Name:  garuda
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: decoder
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
 
ENTITY decoder_testbench IS
END decoder_testbench;
 
ARCHITECTURE behavior OF decoder_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT decoder
    PORT(
         input : IN  std_logic_vector(3 downto 0);
         a : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal a : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: decoder PORT MAP (
          input => input,
          a => a
        );

   -- Clock process definitions
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      
      

      -- insert stimulus here 
input<= "0000" ;a<="0000000000000001";
wait for 10 ns;
input<= "0001" ;a<="0000000000000010";
wait for 10 ns;
input<= "0010" ;a<="0000000000000100";
wait for 10 ns; 
input<= "0011" ;a<="0000000000001000";
wait for 10 ns;
input<=  "0100";a<="0000000000001000";
wait for 10 ns;
input<=  "0101";a<="0000000000010000";
wait for 10 ns;
input<=  "0110";a<="0000000000100000";
wait for 10 ns;
input<=  "0111";a<="0000000001000000";
wait for 10 ns;
input<= "1000";a<="0000000001000000";
wait for 10 ns;
input<= "1001";a<="0000000100000000";
wait for 10 ns;
input<=  "1010";a<="0000010000000000";
wait for 10 ns;
input<= "1011" ;a<="0000100000000000";
wait for 10 ns;
input<= "1100" ;a<="0001000000000000";
wait for 10 ns;
input<= "1101" ;a<="0010000000000000";
wait for 10 ns;
input<=  "1110";a<="0100000000000000";
wait for 10 ns;
input<=  "1111";a<="1000000000000000";
      wait;
   end process;

END;
