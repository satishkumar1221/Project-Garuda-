----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:48:51 02/19/2017 
-- Design Name: 
-- Module Name:    comparator - Behavioral 
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

entity comparator is
    Port ( a : in  STD_LOGIC_vector(31 downto 0);
           b : in  STD_LOGIC_vector(31 downto 0);
           output : out  STD_LOGIC_vector(31 downto 0));
end comparator;

architecture Behavioral of comparator is
begin
process(a,b)
begin 
if a>b then 
output<="00000000000000000000000000000001";
elsif a<b then 
output<="00000000000000000000000000000010";
elsif b=a then
output<="00000000000000000000000000000011";
else 
output<="00000000000000000000000000000000";
end if;
end process; 


end Behavioral;

