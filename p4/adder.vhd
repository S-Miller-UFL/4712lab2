library ieee;
use ieee.std_logic_1164.all;

-- DO NOT CHANGE ANYTHING IN THE ENTITY

entity adder is
  port (
    input1    : in  std_logic_vector(3 downto 0);
    input2    : in  std_logic_vector(3 downto 0);
    carry_in  : in  std_logic;
    sum       : out std_logic_vector(3 downto 0);
    carry_out : out std_logic);
end adder;

-- DEFINE A RIPPLE-CARRY ADDER USING A STRUCTURE DESCRIPTION THAT CONSISTS OF 4
-- FULL ADDERS

architecture STR of adder is   -- STR

component fa
port
(
carry_in, input1,input2: in std_logic;
sum,carry_out : out std_logic
);
end component;

signal carry1,carry2,carry3: std_logic;

begin

fa0: fa port map(carry_in=>carry_in,input1=>input1(0),input2=>input2(0),sum=>sum(0),carry_out=>carry1);
fa1: fa port map (carry_in=>carry1,input1=>input1(1),input2=>input2(1),sum => sum(1),carry_out => carry2);
fa2: fa port map(carry_in=>carry2,input1=>input1(2),input2=>input2(2),sum =>sum(2),carry_out=>carry3);
fa3: fa port map (carry_in=>carry3,input1=>input1(3),input2=>input2(3),sum => sum(3),carry_out => carry_out);

end STR;
