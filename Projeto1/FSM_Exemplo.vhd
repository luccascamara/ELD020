--****************************************************************************
-- CENTRO UNIVERSITARIO FEI
-- Sistemas Digitais II  -  Projeto 1  - 2o Semestre de 2025
-- Prof. Dr. Valter F. Avelino - 07/2025
-- Componente VHDL: FSM_Exemplo.vhd
-- Rev. 0
-- Especificacoes: 
--			Entradas: INI, CK, CK_EN, BP, SF, ST
-- 		Saidas: BPR, VDP, TVA[3..0], TVB[3..0], TVP[3..0], LD[5..0]
-- Esse codigo eh um exemplo de descricao VHDL de uma maquina de estados
-- finitos (FSM) de um controlador de semaforo adaptativo para o Projeto 1 da 
-- disciplina de Sistemas Digitais II do Centro Universitario FEI.
-- Parametros: TVA=N3; TVB=N2; TAA=TAB=N1; TVP=(N2+N1); TVAR=N2
--**************************************************************************** 
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.ALL;

ENTITY FSM_EXEMPLO IS
    PORT (INI, CK, CK_EN, BP, SF, ST: IN STD_LOGIC;		-- sinais de entrada
			BPR, VDP: OUT STD_LOGIC;				        	 	-- sinais de saida
			TVA, TVB, TVP: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);-- vetores de saida
			LD: OUT STD_LOGIC_VECTOR(5 DOWNTO 0));  	 		-- leds de saida
END FSM_EXEMPLO;

ARCHITECTURE BEHAVIOR OF FSM_EXEMPLO IS
    TYPE ESTADOS IS ( INICIO, TVA_I
	 
													);	-- declaracao de tipos enumerados		
    SIGNAL E: ESTADOS;							-- declaracao de variavel de estado
	 SIGNAL VA,VB,VP, AA, AB: INTEGER RANGE 0 TO 15;-- declaracao de variaveis de contagem
	 CONSTANT N3: INTEGER := 0;   -- declaracao de parametro
	 CONSTANT N2: INTEGER := 0;   -- declaracao de parametro
	 CONSTANT N1: INTEGER := 0;   -- declaracao de parametro
	 
BEGIN
    PROCESS (INI, CK, CK_EN) 	-- processo para definir transicoes dos estados
    BEGIN
        IF (INI='0') THEN  E <= INICIO; VA <= 0; VB <= 0; VP <= 0;  -- estado inicial 
        ELSIF (CK'event and CK='1' and CK_EN='1') THEN -- sincronismo com CK_EN
				CASE E IS
					WHEN INICIO => 
						E <= TVA_I; 
						IF ST='0' THEN VA<=N3-1;  -- sensor de trafego
						ELSE VA<=N2-1;
						END IF;
					
					
										
           		WHEN OTHERS => NULL;
				END CASE;
        END IF;
    END PROCESS;
    
    PROCESS (E)							-- processo para definir variaveis de saida
    BEGIN
				CASE E IS								  
					WHEN INICIO =>	LD <= "100100"; VDP<= '0'; BPR<= '1';
               WHEN TVA_I =>	LD <= "001100"; VDP<= '0'; BPR<= '0';
             	
										
					
					WHEN OTHERS => NULL;
				END CASE;
     END PROCESS;	  
	  -- Atualizacao das saidas dos temporizadores:
	  TVA <= CONV_STD_LOGIC_VECTOR(VA, TVA'length);
	  TVB <= CONV_STD_LOGIC_VECTOR(VB, TVB'length);
	  TVP <= CONV_STD_LOGIC_VECTOR(VP, TVP'length);
END BEHAVIOR;
