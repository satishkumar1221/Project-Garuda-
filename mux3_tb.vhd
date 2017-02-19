--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:28:34 02/15/2017
-- Design Name:   
-- Module Name:   C:/.Xilinx/garuda/mux3_tb.vhd
-- Project Name:  garuda
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux_3bit
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
 
ENTITY mux3_tb IS
END mux3_tb;
 
ARCHITECTURE behavior OF mux3_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux_3bit
    PORT(
         a0 : IN  std_logic_vector(2 downto 0);
         a1 : IN  std_logic_vector(2 downto 0);
         a2 : IN  std_logic_vector(2 downto 0);
         a3 : IN  std_logic_vector(2 downto 0);
         a4 : IN  std_logic_vector(2 downto 0);
         a6 : IN  std_logic_vector(2 downto 0);
         a7 : IN  std_logic_vector(2 downto 0);
         a8 : IN  std_logic_vector(2 downto 0);
         s1 : IN  std_logic_vector(2 downto 0);
         output : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a0 : std_logic_vector(2 downto 0) := (others => '0');
   signal a1 : std_logic_vector(2 downto 0) := (others => '0');
   signal a2 : std_logic_vector(2 downto 0) := (others => '0');
   signal a3 : std_logic_vector(2 downto 0) := (others => '0');
   signal a4 : std_logic_vector(2 downto 0) := (others => '0');
   signal a6 : std_logic_vector(2 downto 0) := (others => '0');
   signal a7 : std_logic_vector(2 downto 0) := (others => '0');
   signal a8 : std_logic_vector(2 downto 0) := (others => '0');
   signal s1 : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic_vector(2 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_3bit PORT MAP (
          a0 => a0,
          a1 => a1,
          a2 => a2,
          a3 => a3,
          a4 => a4,
          a6 => a6,
          a7 => a7,
          a8 => a8,
          s1 => s1,
          output => output
        );

   -- Clock process definitions
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
     
     
      -- insert stimulus here 
s1<="000";		
a0 <= "000";
wait for 10 ns;
s1<="001";
a1 <= "001";
wait for 10 ns;
s1<="010";
a2 <= "010";
wait for 10 ns; 
s1<="011";
a3 <= "011";
wait for 10 ns; 
s1<="100";
a4 <= "100";
wait for 10 ns; 
s1<="101";
a6 <= "101";
wait for 10 ns; 
a7 <= "110";
wait for 10 ns; 
s1<="111";
a8 <= "111";
wait ;
   end process;

END;
   


