----------------------------------------------------------------------------------
-- Company: GARUDA
-- Engineer: SATISH KUMAR B.B.
-- 
-- Create Date:    21:51:36 02/18/2017 
-- Design Name: ARTHEMATIC AND LOGIC UNIT 
-- Module Name:    Arthematiclogicunit - Behavioral 
-- Project Name: PROJECT GARUDA
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Arthematiclogicunit is
port(
a : in std_logic_vector(31 downto 0);
b : in  std_logic_vector(31 downto 0);
sum : inout std_logic_vector(31 downto 0);
out_put : out std_logic_vector(31 downto 0);
out_put_mul : out std_logic_vector(63 downto 0);
sub : inout std_logic_vector(31 downto 0);
carry : in std_logic;
c_out1 : out std_logic;
c_out2 : out std_logic;
sel : in std_logic_vector(2 downto 0));

end Arthematiclogicunit;

architecture Behavioral of Arthematiclogicunit is
component adder_32bit is
    Port ( a1 : in  STD_LOGIC_vector(31 downto 0);
           b1 : in  STD_LOGIC_vector(31 downto 0);
           carry : in  STD_LOGIC;
           cout : out  STD_LOGIC;
			  sum : out std_logic_vector(31 downto 0));
			  end component;
component comparator is 
Port ( a : in  STD_LOGIC_vector(31 downto 0);
           b : in  STD_LOGIC_vector(31 downto 0);
           output : out  STD_LOGIC_vector(31 downto 0));
			  end component;
signal b1,b2 : std_logic_vector(31 downto 0);

begin
b2 <= not b +1;
uut : adder_32bit port map(a1=>a,b1=>b,carry=>carry,cout=>c_out1,sum=>sum);
ut1 : adder_32bit port map(a1=>a,b1=>b2,carry=>carry,cout=>c_out2,sum=>sub);
ut3 : comparator port map(a=>a,b=>b,output=>b1);
xx:process(sel,sum,sub)
begin
case sel is 
when "000" =>
out_put<=sum;
when "001" =>
out_put<=sub;
when "010" =>
out_put <= a(30 downto 0) & '0';
when "011" =>
out_put <= a(31 downto 1) & '0';
when "100" =>
out_put_mul <= a*b;
when "101" =>
out_put <= b(30 downto 0) & '0';
when "110" =>
out_put <= b(31 downto 1) & '0';
when "111" =>
out_put<=b1;
when others =>
out_put <= "11111111111111111111111111111111";
end case;
end process;
end Behavioral;

