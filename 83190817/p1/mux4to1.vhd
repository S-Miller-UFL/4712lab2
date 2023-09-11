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
	with s select
		mux <= d(0) when "00", d(1) when "01", d(2) when "10", d(3) when "11";
		en <= not(en_n);
		y <= mux and en;
		y_n <= not(y);
end arch;