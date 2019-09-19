library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--Operacije ALU jedinice:
-- 	op	|		Rezultat		|
--		0	|		 a + b	   |
--		1	|	    a - b    	|

entity ALU is
	generic
	(
		size : natural := 10
	);
	
	port 
	(
		a	   : in std_logic_vector(size - 1 downto 0);
		b	   : in std_logic_vector(size - 1 downto 0);
		op		: in std_logic;
		result: out std_logic_vector(size - 1 downto 0)
	);

end entity;

architecture rtl of ALU is
begin

	process(a,b,op) is 
	begin 
	
		if op='0' then
			result <= std_logic_vector(unsigned(a) + unsigned(b));
		else
			result <= std_logic_vector(unsigned(a) - unsigned(b));
		end if;
		
	end process; 
end rtl;
