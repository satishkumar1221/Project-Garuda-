----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:02:44 02/27/2017 
-- Design Name: 
-- Module Name:    multiplier_8bit_real - Behavioral 
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

entity multiplier_8bit_real is
port(
x : in std_logic_vector(7 downto 0);
y : in std_logic_vector(7 downto 0);
z : out std_logic_vector(15 downto 0));
end multiplier_8bit_real;

architecture Behavioral of multiplier_8bit_real is


component  adder_16bit is
port(
a : in std_logic_vector(15 downto 0);
b : in std_logic_vector(15 downto 0);
c : out std_logic_vector(15 downto 0);
carry : in std_logic;
cout : out std_logic) ;
end component;


component adder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           carry : in  STD_LOGIC;
           sum : out  STD_LOGIC;
			  c_out : out std_logic);
end component;


component adder_12bit is
port(
a : in std_logic_vector(11 downto 0);
b : in std_logic_vector(11 downto 0);
carry :in std_logic;
cout :out std_logic; 
sum : out  std_logic_vector(11 downto 0));
end component;

signal c: std_logic_vector(2 downto 0) ;
signal c2,c3,c5,c7,c8,c9,c10,c11: std_logic_vector(7 downto 0);
signal step_two,c6 : std_logic_vector(3 downto 0);
signal r1: std_logic_vector(4 downto 0);
signal r2: std_logic_vector(5 downto 0);
signal r3: std_logic_vector(7 downto 0);
signal r4,r5,r6,r7,r11,r12,r13,r9,r10,out1,out2,out3,out4,out5,out6 : std_logic_vector(15 downto 0);
signal lol,lol2 : std_logic_vector(7 downto 0);

begin
CC : for i in 0 to 7 generate
c2(i)<= y(0) and x(i);
c3(i)<= y(1) and x(i);
c5(i)<= y(2) and x(i);
c7(i)<= y(3) and x(i);
c8(i)<= y(4) and x(i);
c9(i)<=y(5) and x(i);
c10(i)<=y(6) and x(i);
c11(i)<=y(7) and x(i);
end generate CC; 
r4 (7 downto 0)<= c2;--
r4(15 downto 8)<="00000000";
r7(8 downto 1)<=c3;--
r7(15 downto 9)<="0000000";
r7(0)<='0';
r5(9 downto 2)<=c5;--
r5(15 downto 10)<="000000";
r5(1 downto 0)<="00";
r6(10 downto 3)<= c7;---
r6(15 downto 11)<="00000";
r6(2 downto 0)<="000";
r9(11 downto 4)<= c8;---
r9(15 downto 12)<="0000";
r9(3 downto 0)<="0000";
r10(12 downto 5)<=c9;---
r10(15 downto 13)<="000";
r10(4 downto 0)<="00000";
r11(13 downto 6)<=c10;---- 
r11(15 downto 14)<="00";
r11(5 downto 0)<="000000";
r12(14 downto 7)<=c11; 
r12(15)<='0';
r12(6 downto 0)<="0000000";
--r13(15 downto 8)<=c10; 
--r13(7 downto 0)<="00000000";
lol6: adder_16bit  port map(a=>r4,b=>r7,c=>out1,carry=>'0');
lol7: adder_16bit  port map(a=>r5,b=>r6,carry=>'0',c=>out2);
xxx1 : adder_16bit  port map(a=>r9,b=>r10,carry=>'0',c=>out3);
xxx2 : adder_16bit  port map(a=>r11,b=>r12,carry=>'0',c=>out4);
xxx3 : adder_16bit  port map(a=>out1,b=>out2,carry=>'0',c=>out5);
xxx4 : adder_16bit  port map(a=>out3,b=>out4,carry=>'0',c=>out6);
xxx5 : adder_16bit  port map(a=>out5,b=>out6,carry=>'0',c=>z);
End Behavioral;