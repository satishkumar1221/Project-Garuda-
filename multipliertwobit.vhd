----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:32:55 02/18/2017 
-- Design Name: 
-- Module Name:    multipliertwobit - Behavioral 
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

entity multipliertwobit is
    Port ( x : in  STD_LOGIC_vector(1 downto 0);
           y : in  STD_LOGIC_vector(1 downto 0);
           z : out STD_LOGIC_vector(2 downto 0);
           out_put : out  STD_LOGIC_vector(3 downto 0);
           s : out  STD_LOGIC_vector(1 downto 0);
           t : out  STD_LOGIC_vector(2 downto 0);
			  cout : out 	STD_LOGIC		  );
end multipliertwobit;

architecture Behavioral of multipliertwobit is
component adder_3bit is
 Port (    a : in  STD_LOGIC_vector(1 downto 0);
           b : in  STD_LOGIC_vector(2 downto 0);
           carry : in  STD_LOGIC;
           cout : out  STD_LOGIC;
           sum : out  STD_LOGIC_vector(3 downto 0)
			  );
			  end component; 
signal r1 : std_logic_vector(1 downto 0);
signal e1 : std_logic_vector(1 downto 0);
signal y1 : std_logic_vector(2 downto 0);

signal a1,b1,c1,d1 : std_logic;

begin
a1 <= y(0) and x(0);
b1<= y(0) and x(1);
r1<= b1 & a1;
c1<= y(1) and x(0);
d1<= y(1) and x(1);
e1<= d1 & c1;
y1<= e1(1 downto 0) & '0';
z<=y1;
uut7: adder_3bit port map(a=>r1,b=>y1,carry=>'0',sum=>out_put);
end Behavioral;

