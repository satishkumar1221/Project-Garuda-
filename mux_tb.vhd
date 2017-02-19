--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:11:42 02/11/2017
-- Design Name:   
-- Module Name:   C:/.Xilinx/garuda/mux_tb.vhd
-- Project Name:  garuda
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux_behav
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
 
ENTITY mux_tb IS
END mux_tb;
 
ARCHITECTURE behavior OF mux_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux_behav
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
   uut: mux_behav PORT MAP (
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
      wait for 100 ns;	



      -- insert stimulus here
s1<="000";		
a0 <= "000";
a1 <= "111";
a2 <= "111";
a3<="111";
a4<="111";
a6<="111";
a7<="111";
a8<="111";
wait for 10 ns;
s1<="001";
a0 <= "111";
a1 <= "001";
a2 <= "111";
a3<="111";
a4<="111";
a6<="111";
a7<="111";
a8<="111";wait for 10 ns;
s1<="010";
a0 <= "111";
a1 <= "111";
a2 <= "010";
a3<="111";
a4<="111";
a6<="111";
a7<="111";
a8<="111";
wait for 10 ns; 
s1<="011";
a0 <= "111";
a1 <= "111";
a2 <= "111";
a3<="011";
a4<="111";
a6<="111";
a7<="111";
a8<="111";
s1<="100";
a0 <= "000";
a1 <= "111";
a2 <= "111";
a3<="111";
a4<="100";
a6<="111";
a7<="111";
a8<="111";
wait for 10 ns; 
s1<="101";
a0 <= "000";
a1 <= "111";
a2 <= "111";
a3<="111";
a4<="111";
a6<="101";
a7<="111";
a8<="111";
wait for 10 ns; 
a0 <= "000";
a1 <= "111";
a2 <= "111";
a3<="111";
a4<="111";
a6<="111";
a7<="110";
a8<="111";
wait for 10 ns; 
s1<="111";
a0 <= "000";
a1 <= "000";
a2 <= "000";
a3<="000";
a4<="000";
a6<="000";
a7<="000";
a8<="111";
wait ;
   end process;

END;
