--*****************************************************************************
-- CENTRO UNIVERSITARIO FEI
-- Sistemas Digitais II  -  Projeto 1  - 2o Semestre de 2025
-- Prof. Dr. Valter F. Avelino - 07/2025
-- Componente VHDL: Decodificador Hexadecimal / 7 Segmentos => DEC_HEX.vhd
-- Rev. 0
-- Especificacoes: Entradas: Q[3..0]
-- 				    Saidas:   H[6..0]
-- Esse codigo eh um exemplo de descricao VHDL de um decodificador de codigos
-- hexadecimais em codigo para ativacao de display de 7 segmentos da 
-- disciplina de Sistemas Digitais II do Centro Universitario FEI.
--****************************************************************************
library ieee;
use ieee.std_logic_1164.all;

entity DEC_HEX is  			  			-- declaracao da entidade DEC_HEX
	port 
	(	Q 	: in std_logic_vector(3 downto 0);-- vetor de entrada Q[3] Q[2] Q[1] Q[0]
		H : out std_logic_vector(6 downto 0)); -- vetor de saída H(6..0)
end DEC_HEX;

architecture SELETOR of DEC_HEX is      	
begin
	with Q select
		H   <="1000000" when "0000",	-- display 0
				"1111001" when "0001",	-- display 1
				"0100100" when "0010",	-- display 2
				"0110000" when "0011",	-- display 3
				"0011001" when "0100",	-- display 4
				"0010010" when "0101",	-- display 5
				"0000010" when "0110",	-- display 6
				"1111000" when "0111",	-- display 7
				"0000000" when "1000",	-- display 8
				"0010000" when "1001",	-- display 9
				"0001000" when "1010",	-- display A
				"0000011" when "1011",	-- display b
				"1000110" when "1100",	-- display C
				"0100001" when "1101",	-- display d
				"0000110" when "1110",	-- display E
				"0001110" when others;	-- display F
end SELETOR;
