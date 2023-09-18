library ieee;
use ieee.std_logic_1164.all;

entity Top_Level is
port
(
	adder_inputs1: in std_logic_vector (7 downto 0);
	adder_inputs2: in std_logic_vector (7 downto 0);
	decoder_outputs1: out std_logic_vector(6 downto 0);
	decoder_outputs2: out std_logic_vector(6 downto 0);
	carry_in : in std_logic;
	carry_out : out std_logic
);
end Top_Level;

architecture arch of Top_Level is

signal adder_out: std_logic_vector(7 downto 0);
signal decoder_out: std_logic_vector(7 downto 0);

component eightbitadder 
port
(
	input1: in std_logic_vector (7 downto 0);
	input2: in std_logic_vector (7 downto 0);
	carry_in: in std_logic;
	sum : out std_logic_vector(7 downto 0);
	carry_out : out std_logic
);
end component;
component decoder
port
(
	inputs: in std_logic_vector (3 downto 0);
	outputs_n: out std_logic_vector(6 downto 0)
);
end component;
begin
adder: eightbitadder 
							port map(input1(0)=>adder_inputs1(0), input2(0)=>adder_inputs2(0),
										input1(1)=>adder_inputs1(1), input2(1)=>adder_inputs2(1),
										input1(2)=>adder_inputs1(2), input2(2)=>adder_inputs2(2),
										input1(3)=>adder_inputs1(3), input2(3)=>adder_inputs2(3),
										input1(4)=>adder_inputs1(4), input2(4)=>adder_inputs2(4),
										input1(5)=>adder_inputs1(5), input2(5)=>adder_inputs2(5),
										input1(6)=>adder_inputs1(6), input2(6)=>adder_inputs2(6),
										input1(7)=>adder_inputs1(7), input2(7)=>adder_inputs2(7),
										carry_in => carry_in, 
										carry_out => carry_out,
										sum(0)=>adder_out(0),
										sum(1)=>adder_out(1),
										sum(2)=>adder_out(2),
										sum(3)=>adder_out(3),
										sum(4)=>adder_out(4),
										sum(5)=>adder_out(5),
										sum(6)=>adder_out(6),
										sum(7)=>adder_out(7));

decoder0: decoder 
						port map(inputs(0)=>adder_out(0),
									inputs(1)=>adder_out(1),
									inputs(2)=>adder_out(2),
									inputs(3)=>adder_out(3),
									outputs_n(0)=>decoder_outputs1(0),
									outputs_n(1)=>decoder_outputs1(1),
									outputs_n(2)=>decoder_outputs1(2),
									outputs_n(3)=>decoder_outputs1(3),
									outputs_n(4)=>decoder_outputs1(4),
									outputs_n(5)=>decoder_outputs1(5),
									outputs_n(6)=>decoder_outputs1(6)
									);
decoder1: decoder
						port map(inputs(0)=>adder_out(4),
									inputs(1)=>adder_out(5),
									inputs(2)=>adder_out(6),
									inputs(3)=>adder_out(7),
									outputs_n(0)=>decoder_outputs2(0),
									outputs_n(1)=>decoder_outputs2(1),
									outputs_n(2)=>decoder_outputs2(2),
									outputs_n(3)=>decoder_outputs2(3),
									outputs_n(4)=>decoder_outputs2(4),
									outputs_n(5)=>decoder_outputs2(5),
									outputs_n(6)=>decoder_outputs2(6)
									);
end arch;
