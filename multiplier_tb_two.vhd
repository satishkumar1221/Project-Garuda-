-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF testbench IS 

  -- Component Declaration
          COMPONENT multiplier_2bit
          PORT(
                 port(
x : in std_logic_vector(1 downto 0);
y : in std_logic_vector(1 downto 0);
z : out std_logic_vector(2 downto 0);
cout : out std_logic; 
carry : in std_logic;
out_put : out std_logic_vecotor(3 downto 0));
END COMPONENT;

          SIGNAL <signal1> :  std_logic;
          SIGNAL <signal2> :  std_logic_vector(3 downto 0);
          

  BEGIN

  -- Component Instantiation
          uut: <component name> PORT MAP(
                  <port1> => <signal1>,
                  <port3> => <signal2>
          );


  --  Test Bench Statements
     tb : PROCESS
     BEGIN

      x<="11";
		y<="11";
		wait for 100 ns;
		x<= "10";
		y<= "01";
 -- wait until global set/reset completes

        -- Add user defined stimulus here

        wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

  END;
