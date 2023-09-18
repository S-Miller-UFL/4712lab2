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
outputs <= "1111110" when inputs = "0000" else
			  "0110000" when inputs = "0001" else
			  "1101101" when inputs = "0010" else
			  "1111001" when inputs = "0011" else
			  "0110011" when inputs = "0100" else
			  "1011011" when inputs = "0101" else
			  "1011111" when inputs = "0110" else
			  "1110000" when inputs = "0111" else
			  "1111111" when inputs = "1000" else
			  "1110011" when inputs = "1001" else
			  "1110111" when inputs = "1010" else
			  "0011111" when inputs = "1011" else
			  "1001110" when inputs = "1100" else
			  "0111101" when inputs = "1101" else
			  "1001111" when inputs = "1110" else
			  "1000111" when inputs = "1111";
outputs_n <= not(outputs);
end arch;