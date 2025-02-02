library ieee;
use ieee.std_logic_1164.all;

entity eightbitadder is
  port (
    input1    : in  std_logic_vector(7 downto 0);
    input2    : in  std_logic_vector(7 downto 0);
    carry_in  : in  std_logic;
    sum       : out std_logic_vector(7 downto 0);
    carry_out : out std_logic);
end eightbitadder;

architecture arch of eightbitadder is
component adder
port
(
	input1:   in std_logic_vector(3 downto 0);
	input2:   in std_logic_vector(3 downto 0);
	carry_in: in std_logic;
	sum:      out std_logic_vector (3 downto 0);
	carry_out:out std_logic
);
end component;

signal carry1: std_logic;

begin

adder0: adder port map(input1(0) => input1(0),input2(0)=>input2(0),input1(1)=>input1(1),input2(1)=>input2(1),

							  input1(2)=>input1(2),input2(2)=>input2(2),input1(3)=>input1(3),input2(3)=>input2(3),
							  
								sum(0)=>sum(0),sum(1)=>sum(1), sum(2)=>sum(2), sum(3)=>sum(3), carry_in=>carry_in,
								
								carry_out=>carry1);
								
adder1: adder port map (input1(0) => input1(4),input2(0)=>input2(4),input1(1)=>input1(5),input2(1)=>input2(5),

							  input1(2)=>input1(6),input2(2)=>input2(6),input1(3)=>input1(7),input2(3)=>input2(7),
							  
								sum(0)=>sum(4),sum(1)=>sum(5), sum(2)=>sum(6), sum(3)=>sum(7), carry_in=>carry1,
								
								carry_out=>carry_out);

end arch;