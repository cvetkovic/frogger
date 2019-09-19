library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CD4 is
	port 
	(
		IN0	: in std_logic;
		IN1	: in std_logic;
		IN2	: in std_logic;
		IN3	: in std_logic;
		OUT0  : out std_logic;
		OUT1  : out std_logic		
	);
end entity;

architecture rtl of CD4 is
begin

	process (IN0,IN1,IN2,IN3)
	begin
		if (IN3 = '1') then
			OUT0 <= '1';
			OUT1 <= '1';
		elsif (IN2 = '1') then
			OUT0 <= '0';
			OUT1 <= '1';
		elsif (IN1 = '1') then
			OUT0 <= '1';
			OUT1 <= '0';
		else
			OUT0 <= '0';
			OUT1 <= '0';
		end if;
	end process;
end rtl;