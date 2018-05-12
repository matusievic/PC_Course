-- Quartus II VHDL Template
-- Single port RAM with single read/write address 

library ieee;
use ieee.std_logic_1164.all;

entity stack_mem is
	port 
	(
		clk		: in std_logic;
		addr	: in natural range 0 to 3;
		data	: in std_logic_vector(7 downto 0);
		we		: in std_logic := '0';
		q		: out std_logic_vector(7 downto 0)
	);

end entity;

architecture rtl of stack_mem is

	-- Build a 2-D array type for the RAM
	subtype word_t is std_logic_vector(7 downto 0);
	type memory_t is array(3 downto 0) of word_t;

	-- Declare the RAM signal.	
	signal ram : memory_t;
begin

	process(clk)
	begin
	if(rising_edge(clk)) then
		if(we = '1') then
			ram(addr) <= data;
		end if;
	end if;
	end process;
	q <= ram(addr);

end rtl;
