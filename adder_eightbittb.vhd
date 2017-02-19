--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:38:34 02/12/2017
-- Design Name:   
-- Module Name:   C:/.Xilinx/garuda/adder_eightbittb.vhd
-- Project Name:  garuda
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: adder_8bit
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
 
ENTITY adder_eightbittb IS
END adder_eightbittb;
 
ARCHITECTURE behavior OF adder_eightbittb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT adder_8bit
    PORT(
         a : IN  std_logic_vector(7 downto 0);
         b : IN  std_logic_vector(7 downto 0);
         carry : IN  std_logic;
         cout : OUT  std_logic;
         sum : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(7 downto 0) := (others => '0');
   signal b : std_logic_vector(7 downto 0) := (others => '0');
   signal carry : std_logic := '0';

 	--Outputs
   signal cout : std_logic;
   signal sum : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: adder_8bit PORT MAP (
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
		a<="00000010";
		b<="00000000";
		carry<='0';
		wait for 10 ns;	
      a<="00000010";
		b<="00000000";
		carry<='0';
      wait for 10 ns; 
      a<="11111110";
		b<="00110000";
		carry<='0';
      wait for 10 ns;
      a<="00110010";
		b<="00110010";
		carry<='0';
      wait for 10 ns;
      a<="10000010";
		b<="01110000";
		carry<='0';
      wait for 10 ns;
      a<="00000010";
		b<="00000000";
		carry<='0';
      wait for 10 ns;
      a<="00000010";
		b<="11100111";
		carry<='0';
      wait for 10 ns;
      a<="11100010";
		b<="11111111";
		carry<='0';
      wait for 10 ns;
		a<="00000010";
		b<="11100000";
		carry<='0';
      wait for 10 ns;
		a<="11100000";
		b<="11100000";
		carry<='0';
      wait for 10 ns;
		
		a<="00000010";
		b<="00000000";
		carry<='0';
      wait for 10 ns;
      a<="11111111";
		b<="11111111";
		carry<='0';
      wait for 10 ns;
		a<="00000010";
		b<="00000110";
		carry<='0';
      wait for 10 ns;
		a<="00000000";
		b<="00000000";
		carry<='0';
      wait for 10 ns;      

      wait;
   end process;

END;
