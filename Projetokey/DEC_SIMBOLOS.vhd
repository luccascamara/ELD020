library ieee;
use ieee.std_logic_1164.all;

entity DEC_SIMBOLOS is  			  			-- declaracao da entidade DEC_SIMBOLOS
	port 
	(	Q 	: in std_logic_vector(3 downto 0);-- vetor de entrada Q[3] Q[2] Q[1] Q[0]
		H : out std_logic_vector(6 downto 0)); -- vetor de saÃ­da H(6..0)
end DEC_SIMBOLOS;

architecture SELETOR of DEC_SIMBOLOS is      	
begin
	with Q select
		H   <="1101101" when "0001",	-- display 1
				"1011011" when "0010",	-- display 2
				"1101101" when "0011",	-- display 3
				"1011011" when "0100",	-- display 4
				"1101101" when "0101",	-- display 5
				"1011011" when "0110",	-- display 6
				"1101101" when "0111",	-- display 7
				"1011011" when "1000",	-- display 8
				"0001100" when others;	-- display P
end SELETOR;
