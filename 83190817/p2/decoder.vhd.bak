--Steven Miller
--section number
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decoder is
port
(
	inputs : in std_logic_vector(3 downto 0);
	outputs_n: out std_logic_vector(6 downto 0)
);
end decoder;

architecture arch of decoder is
signal outputs : std_logic_vector(6 downto 0);
begin
outputs <= "1111110" when inputs = "0000";
end arch;