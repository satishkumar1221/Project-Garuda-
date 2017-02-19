----------------------------------------------------------------------------------
-- Company:
-- Engineer:  SATISH KUMAR B.B.
-- 
-- Create Date:    17:50:47 02/12/2017 
-- Design Name: 
-- Module Name:    adder_32bit - Behavioral 
-- Project Name:GARUDA 
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

entity adder_32bit is
    Port ( a1 : in  STD_LOGIC_vector(31 downto 0);
           b1 : in  STD_LOGIC_vector(31 downto 0);
           carry : in  STD_LOGIC;
           cout : out  STD_LOGIC;
			  sum : out std_logic_vector(31 downto 0));
end adder_32bit;

architecture Behavioral of adder_32bit is

component adder_8bit is
Port (  a : in  STD_LOGIC_vector(7 downto 0);
        b : in  STD_LOGIC_vector(7 downto 0);
        carry : in  STD_LOGIC;
        cout : out  STD_LOGIC;
        sum : out  STD_LOGIC_vector(7 downto 0));
end component;
signal p : std_logic_vector(3 downto 1):= (others => '0');
begin
uut4: adder_8bit port map (a(7 downto 0)=>a1(7 downto 0),b(7 downto 0)=>b1(7 downto 0),carry=>carry,cout=>p(1),sum(7 downto 0)=>sum(7 downto 0));
uut5: adder_8bit port map (a(7 downto 0)=>a1(15 downto 8),b(7 downto 0)=>b1(15 downto 8),carry=>p(1),cout=>p(2),sum(7 downto 0)=>sum(15 downto 8));
uut6: adder_8bit port map (a(7 downto 0)=>a1(23 downto 16),b(7 downto 0)=>b1(23 downto 16),carry=>p(2),cout=>p(3),sum(7 downto 0)=>sum(23 downto 16));
uut7: adder_8bit port map (a(7 downto 0)=>a1(31 downto 24),b(7 downto 0)=>b1(31 downto 24),carry=>p(3),cout=>cout,sum(7 downto 0)=>sum(31 downto 24));

end Behavioral;

