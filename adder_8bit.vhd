----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Satish Kumar B.B.
-- 
-- Create Date:    12:02:37 02/12/2017 
-- Design Name: FUll Adder 8 bit 
-- Module Name:    adder_8bit - Behavioral 
-- Project Name: Garuda 
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
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder_8bit is
    Port ( a : in  STD_LOGIC_vector(7 downto 0);
           b : in  STD_LOGIC_vector(7 downto 0);
           carry : in  STD_LOGIC;
           cout : out  STD_LOGIC;
           sum : out  STD_LOGIC_vector(7 downto 0));
end adder_8bit;

architecture Behavioral of adder_8bit is
component adder is 
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           carry : in  STD_LOGIC;
           sum : out  STD_LOGIC;
			  c_out : out std_logic);
end component;
signal c: std_logic_vector(7 downto 1) := (others => '0');
begin
uut: adder  port map(a=>a(0),b=>b(0),carry=>carry,c_out=>c(1),sum=>sum(0));
uut1: adder port map(a=>a(1),b=>b(1),carry=>c(1),c_out=>c(2),sum=>sum(1));
uut2: adder port map(a=>a(2),b=>b(2),carry=>c(2),c_out=>c(3),sum=>sum(2));
uut3: adder port map(a=>a(3),b=>b(3),carry=>c(3),c_out=>c(4),sum=>sum(3));
uut4: adder port map(a=>a(4),b=>b(4),carry=>c(4),c_out=>c(5),sum=>sum(4));
uut5: adder port map(a=>a(5),b=>b(5),carry=>c(5),c_out=>c(6),sum=>sum(5));
uut6: adder port map(a=>a(6),b=>b(6),carry=>c(6),c_out=>c(7),sum=>sum(6));
uut7: adder port map(a=>a(7),b=>b(7),carry=>c(7),c_out=>cout,sum=>sum(7));
end Behavioral;

