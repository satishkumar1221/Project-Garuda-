----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Satish Kumar B.B.
-- 
-- Create Date:    11:20:04 02/12/2017 
-- Design Name: 
-- Module Name:    adder - Behavioral 
-- Project Name:  GARUDA
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

entity adder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           carry : in  STD_LOGIC;
           sum : out  STD_LOGIC;
			  c_out : out std_logic);
end adder;

architecture Behavioral of adder is

begin
process(a,b,carry)
begin
sum <= a xor b xor carry;
c_out <= (a and b) or (b and carry) or (carry and a);
end process;
end Behavioral;

