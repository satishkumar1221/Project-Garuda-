----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:28:09 02/18/2017 
-- Design Name: 
-- Module Name:    adder_3bit - Behavioral 
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

entity adder_3bit is
 Port (    a : in  STD_LOGIC_vector(1 downto 0);
           b : in  STD_LOGIC_vector(2 downto 0);
           carry : in  STD_LOGIC;
           cout : out  STD_LOGIC;
           sum : out  STD_LOGIC_vector(3 downto 0));
			  
end adder_3bit;

architecture Behavioral of adder_3bit is
component adder is 
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           carry : in  STD_LOGIC;
           sum : out  STD_LOGIC;
			  c_out : out std_logic);
			  end component;
signal c: std_logic_vector(3 downto 1) := (others => '0');

begin
uut: adder  port map(a=>a(0),b=>b(0),carry=>carry,c_out=>c(1),sum=>sum(0));
uut1: adder port map(a=>a(1),b=>b(1),carry=>c(1),c_out=>c(2),sum=>sum(1));
uut2: adder port map(a=>'0',b=>b(2),carry=>c(2),c_out=>c(3),sum=>sum(2));
uut3: adder port map(a=>'0',b=>'0',carry=>c(3),c_out=>cout,sum=>sum(3));
	

end Behavioral;

