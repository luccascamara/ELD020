--*****************************************************************************
-- CENTRO UNIVERSITARIO FEI
-- Sistemas Digitais II  -  Projeto 1  - 2o Semestre de 2025
-- Prof. Dr. Valter F. Avelino - 07/2025
-- Componente VHDL: Maquina de Estados Divisor de frequencia => ME_DIVISOR.vhd
-- Rev. 0
-- Especificacoes: Entradas: CK, INI             (INI eh ativo em zero)
-- 				    Saidas:   CK_EN
-- Esse codigo eh um exemplo de descricao VHDL de uma maquina de estados finitos
-- (FSM) para um divisor de frequencia para geracao de referencia de tempo para o
-- Projeto 1 da disciplina de Sistemas Digitais II do Centro Universitario FEI.
--**************************************************************************** 
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

ENTITY ME_DIVISOR IS
    PORT (CK, INI: IN STD_LOGIC; 		-- declaracao dos sinais de entrada
		    CK_EN: OUT STD_LOGIC );	 	-- declaracao dos sinais de saida
END ME_DIVISOR;

ARCHITECTURE BEHAVIOR OF ME_DIVISOR IS
	TYPE NOMES IS (INICIO, A, B);	
    SIGNAL E: NOMES;			-- declaracao dos nomes das variaveis de Estado    
    SIGNAL CNT: INTEGER RANGE 0 TO 50000000;-- declaracao da variavel de contagem
BEGIN
    PROCESS (CK,INI)				-- declaracao das variaveis sensiveis do processo
    BEGIN
        IF (INI= '0') THEN E<= INICIO; CNT<= 0; CK_EN<= '0'; -- reinicia o divisor
        ELSIF (CK'event and CK='1') THEN  -- deteccao de borda de subida do CK
            CASE E IS
                WHEN INICIO => E<= A; CNT<= 0; CK_EN<= '0';-- zera pulso de saida
                WHEN A =>
						IF CNT= 49999998 THEN		-- condicao utilizada para projeto final
--						IF CNT= 18 THEN   			-- condicao utilizada para simulacao
							E<= B; CNT<= 0; CK_EN<= '1'; 	-- gera pulso de um periodo do CK
                  ELSE CNT<= CNT+1; CK_EN<= '0'; 	-- incrementa contagem do divisor
                  END IF;
                WHEN B => E<= A; CK_EN<= '0';		-- zera pulso de saida
				END CASE;
        END IF;
    END PROCESS;
END BEHAVIOR;
