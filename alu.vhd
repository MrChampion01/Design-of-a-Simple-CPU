--Arithmetic Logic Unit Code
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- 8 bit operands and output
ENTITY alu IS
PORT(
A : in std_logic_vector (7 downto 0);
B : in std_logic_vector (7 downto 0);
AluOp : in std_logic_vector (2 downto 0);
output : out std_logic_vector (7 downto 0)
);

end alu;


-- decode op code, perform operation,
architecture behavior of alu is
begin
process(A,B,AluOp)
begin
if(AluOp="000") then output<=(A+B);
elsif(AluOp="001") then output<=(A-B);
elsif(AluOp="010") then output<=(A and B);
elsif(AluOp="011") then output<= (A or B);
elsif(AluOp="100") then output<= B;
elsif(AluOp="101") then output<= A;

end if;
end process;
end;