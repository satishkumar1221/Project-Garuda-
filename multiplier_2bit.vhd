----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:29:21 02/18/2017 
-- Design Name: 
-- Module Name:    multiplier_2bit - Behavioral 
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
use IEEE.NUMERIC_STD.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity multiplier_2bit is
port(
x : in std_logic_vector(1 downto 0);
y : in std_logic_vector(1 downto 0);
z : out std_logic_vector(2 downto 0);
s : out std_logic; 
t : out std_logic;
out_put : out std_logic_vecotor(3 downto 0));

end multiplier_2bit;

architecture Behavioral of multiplier_2bit is

component adder_3bit is
    Port ( a : in  STD_LOGIC_vector(1 downto 0);
           b : in  STD_LOGIC_vector(2 downto 0);
           carry : in  STD_LOGIC;
           cout : out  STD_LOGIC;
           sum : out  STD_LOGIC_vector(2 downto 0);
			  sum1 : out  STD_LOGIC_vector(3 downto 0));
			  end component;

signal c1,c4 : std_logic_vector(1 downto 0) ;
signal c2,c3,c5,c7: std_logic;
signal step_two,c6 : std_logic_vector(2 downto 0);

begin
--variable c2,c3 : std_logic_vector(2 downto 0);
c3 <= y(0) and x(0);
c2 <= y(0) and x(1);
c1<= c2 & c3;
c5<= y(1) and x(0);
c7<= y(1) and x(1);
c4<= c5 & c7;
--c6<= 0 & c4; 
step_two <=c4(1 downto 0) & '0'; 
--(x(0) and y(1)) & (x(1) and y(1));
uut1 : adder_3bit port map( a(1 downto 0)=>c4, b(2 downto 0)=> step_two, sum=>z,carry=>carry,cout=>cout,sum1=>out_put);

--uuut2: adder port map(a=>p(1), b=>q(1), carry=>c1, c_out=>cout, sum=>r(1));

--start the function of the multiplier 
 end Behavioral;

