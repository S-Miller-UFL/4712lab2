--Steven Miller
--section number
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux4to1 is
port
(
	d : in std_logic_vector(3 downto 0);
	s : in std_logic_vector(1 downto 0);
	en_n : in std_logic;
	y_n : out std_logic
);
end mux4to1;

architecture arch of mux4to1 is
	signal y : std_logic;
	signal mux : std_logic;
	signal en: std_logic;
begin
	en <=not(en_n);

			y <= d(0) when (s="00" AND en = '1') else
				  d(1) when (s="01" and en = '1') else
				  d(2) when (s="10" and en ='1') else
				  d(3) when (s="11" and en ='1') else
				   '0' when en ='0';
	y_n <= not(y);
end arch;