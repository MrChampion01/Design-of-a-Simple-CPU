--Program Counter Code
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
--Increments the program counter by 1 if there is a positive edge clock and increment =1
entity ProgramCounter is
port (
output : out std_logic_vector(7 downto 0);
clk : in std_logic;
increment : in std_logic
);
end;

architecture behavior of ProgramCounter is



begin

process(clk,increment)
--Define a counter variable as an integer and initialize it to 0 (use variable counter: integer:=) and fill in the value
--INSERT CODE HERE
variable counter : integer := 0;

begin
--Create an if statement to check for the condition of a positive edge clock and increment =1
if (clk'event and clk = '1' and increment = '1') then
--Increment counter variable by 1

counter := (counter + 1);
--Output the counter variable as a std logic vector of 8 bits,
--Use function conv_std_logic_vector(counter,8)

output <= conv_std_logic_vector(counter,8);

end if;
end process;
end behavior;