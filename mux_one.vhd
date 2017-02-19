----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:51:08 02/11/2017 
-- Design Name: 
-- Module Name:    mux_one - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux_one is
Port (     a0 : in STD_LOGIC;
           a1 : in STD_LOGIC;
           a2 : in STD_LOGIC;
           a3 : in STD_LOGIC;
           a4 : in STD_LOGIC;
           a6 : in STD_LOGIC;
           a7 : in STD_LOGIC;
           a8:  in STD_LOGIC;
           s1 : in STD_LOGIC_vector(2 downto 0);
           output : out STD_LOGIC);
end mux_one;

architecture Behavioral of mux_one is

begin
xx:process(s1)
begin
case s1 is
when "000" => output <= a0;
when "001" => output <= a1;
when "010" => output <=a2;
when "011" => output <=a3;
when "100" => output <=a4;
when "101" => output <=a6;
when "110" => output <=a7;
when "111" => output <=a8;
when others=>output<='1';
end case ;
end process;
end Behavioral;



