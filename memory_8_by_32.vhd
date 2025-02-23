-- 8 By 32 Memory Array
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity memory_8_by_32 is

Port(
clk: in std_logic;
Write_Enable: in std_logic;
Read_Addr: in std_logic_vector (4 downto 0);
Data_in: in std_logic_vector (7 downto 0);
Data_out: out std_logic_vector(7 downto 0));
end memory_8_by_32;

architecture behavior of memory_8_by_32 is
type ram_type is array(0 to 31) of std_logic_vector(7 downto 0);
--instructions / data go into memory here
signal Z: ram_type:=("00000101","00100011","01000111","00000111","00101000","00000110","00010100","00001101","00000001","10110100","10001010","10101010","10101001","00000000","10100101","01010101","10101110","10110100","10001010","10101010","10101001","00000000","10100101","01010101","10101110","10110100","10001010","10101010","10101001","00000000","10100101","01010101");
Begin
Process(clk,Read_Addr, Data_in, Write_Enable)
Begin
--Read from memory
if(clk'event and clk='1' and Write_Enable='0') then
Data_out<=Z(conv_integer(Read_Addr));
--Write to Memory
elsif(clk'event and clk='1' and Write_Enable='1') then
Z(conv_integer(Read_Addr))<=Data_in;
end if;
end process;
end;