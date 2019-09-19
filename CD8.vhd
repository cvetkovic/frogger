library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CD8 is
	port 
	(
		IN0	: in std_logic;
		IN1	: in std_logic;
		IN2	: in std_logic;
		IN3	: in std_logic;
		IN4	: in std_logic;
		IN5	: in std_logic;
		IN6	: in std_logic;
		IN7	: in std_logic;
		W  : out std_logic;
		OUT0  : out std_logic;
		OUT1  : out std_logic;
		OUT2  : out std_logic		
	);
end entity;

architecture rtl of CD8 is
begin

	process (IN0,IN1,IN2,IN3,IN4,IN5,IN6,IN7)
	begin
		if (IN7 = '1') then
			OUT0 <= '1';
			OUT1 <= '1';
			OUT2 <= '1';
			W <= '1';
		elsif (IN6 = '1') then
			OUT0 <= '0';
			OUT1 <= '1';
			OUT2 <= '1';
			W <= '1';
		elsif (IN5 = '1') then
			OUT0 <= '1';
			OUT1 <= '0';
			OUT2 <= '1';
			W <= '1';
		elsif (IN4 = '1') then
			OUT0 <= '0';
			OUT1 <= '0';
			OUT2 <= '1';
			W <= '1';
		elsif (IN3 = '1') then
			OUT0 <= '1';
			OUT1 <= '1';
			OUT2 <= '0';
			W <= '1';
		elsif (IN2 = '1') then
			OUT0 <= '0';
			OUT1 <= '1';
			OUT2 <= '0';
			W <= '1';
		elsif (IN1 = '1') then
			OUT0 <= '1';
			OUT1 <= '0';
			OUT2 <= '0';
			W <= '1';
		elsif (IN0 = '1') then
			OUT0 <= '0';
			OUT1 <= '0';
			OUT2 <= '0';
			W <= '1';
		else
			OUT0 <= '0';
			OUT1 <= '0';
			OUT2 <= '0';
			W <= '0';
		end if;
	end process;
end rtl;