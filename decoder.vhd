----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:57:36 02/11/2017 
-- Design Name: 
-- Module Name:    decoder - Behavioral 
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

entity decoder is
    Port ( input : in  STD_LOGIC_vector(3 downto 0);
           a : out  STD_LOGIC_vector(15 downto 0));
           end decoder;

architecture Behavioral of decoder is
begin
process(input)
begin
case input is
when "0000" =>  a<="0000000000000000";
when "0001" =>  a<="0000000000000000";
when "0010" =>  a<="0000000000000000"; 
when "0011" =>  a<="0000000000000000";
when "0100" =>  a<="0000000000000000";
when "0101" =>  a<="0000000000000000";
when "0110" =>  a<="0000000000000000";
when "0111" =>  a<="0000000000000000";
when "1000" =>  a<="0000000000000000";
when "1001" =>  a<="0000000000000000";
when "1010"  => a<="0000000000000000";
when "1011" =>  a<="0000000000000000";
when "1100" =>  a<="0000000000000000";
when "1101" =>  a<="0000000000000000";
when "1110" =>  a<="0000000000000000";
when "1111" =>  a<="0000000000000000";
when others =>  a<="1111111111111111";
end case;
end process;
end Behavioral;

