-- N1 = 1
-- N2 = 2
-- N3 = 4
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

ENTITY FSM IS
    PORT (
        INI, CK, CK_EN, BP, SF, ST : IN  STD_LOGIC;
        BPR, VDP                   : OUT STD_LOGIC;
        TVA, TVB, TVP              : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        LD                         : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
    );
END FSM;

ARCHITECTURE BEHAVIOR OF FSM IS
    TYPE ESTADOS IS (INICIO, TVA_I, TAA_I, TVB_I, TAB, TVP_I, FALHA);
    SIGNAL E : ESTADOS;

    SIGNAL VA, VB, VP, AA, AB : INTEGER RANGE 0 TO 15;

    CONSTANT N3 : INTEGER := 4;  -- TVA
    CONSTANT N2 : INTEGER := 2;  -- TVB (e TVAR)
    CONSTANT N1 : INTEGER := 1;  -- TAA/TAB
BEGIN
    ------------------------------------------------------------------
    -- Transições / contadores (reset assíncrono por INI='0')
    ------------------------------------------------------------------
    PROCESS (INI, CK, CK_EN)
    BEGIN
        IF (INI = '0') THEN
            E  <= INICIO;
            VA <= 0; VB <= 0; VP <= 0; AA <= 0; AB <= 0;

        ELSIF (CK'EVENT AND CK = '1' AND CK_EN = '1') THEN
            CASE E IS
                WHEN INICIO =>
                    E <= TVA_I;
                    IF ST = '0' THEN
                        VA <= N3 - 1;  -- carrega 8
                    ELSE
                        VA <= N2 - 1;  -- carrega 7
                    END IF;

                WHEN TVA_I =>
                    IF SF = '1' THEN
                        E <= FALHA;VA <= 0; VB <= 0; VP <= 0; AA <= 0; AB <= 0;
                    ELSIF VA = 0 THEN
                        AA <= N1 - 1;  -- carrega 0
                        E  <= TAA_I;
                    ELSE
                        VA <= VA - 1;
                    END IF;

                WHEN TAA_I =>
                    IF SF = '1' THEN
                        E <= FALHA; VA <= 0; VB <= 0; VP <= 0; AA <= 0; AB <= 0;
                    ELSIF AA = 0 THEN
                        IF BP = '1' THEN
                            VP <= (N2 + N1) - 1;  -- 8+1=9 → carrega 8
                            E  <= TVP_I;
                        ELSE
                            VB <= N2 - 1;         -- carrega 7
                            E  <= TVB_I;
                        END IF;
                    ELSE
                        AA <= AA - 1;
                    END IF;

                WHEN TVB_I =>
                    IF SF = '1' THEN
                        E <= FALHA;VA <= 0; VB <= 0; VP <= 0; AA <= 0; AB <= 0;
                    ELSIF VB = 0 THEN
                        AB <= N1 - 1;   -- carrega 0
                        E  <= TAB;
                    ELSE
                        VB <= VB - 1;
                    END IF;

                WHEN TAB =>
                    IF SF = '1' THEN
                        E <= FALHA;VA <= 0; VB <= 0; VP <= 0; AA <= 0; AB <= 0;
                    ELSIF AB = 0 THEN
                        E <= TVA_I;    -- agora volta para TVA_I
                        IF ST = '0' THEN
                        VA <= N3 - 1;  -- carrega 8
								ELSE
                        VA <= N2 - 1;  -- carrega 7
								END IF;
                    ELSE
                        AB <= AB - 1;
                    END IF;

                WHEN TVP_I =>
                    IF VP = 0 THEN
                        VB <= N2 - 1;  -- carrega 7
                        E  <= TVB_I;
                    ELSE
                        VP <= VP - 1;
                    END IF;

                WHEN FALHA =>
                    -- agora só sai de falha com reset (INI='0')
                    E <= FALHA;VA <= 0; VB <= 0; VP <= 0; AA <= 0; AB <= 0;

                WHEN OTHERS =>
                    E <= INICIO;
            END CASE;
        END IF;
    END PROCESS;

    ------------------------------------------------------------------
    -- Saídas (LEDs/flags por estado)
    ------------------------------------------------------------------
    PROCESS (E)
    BEGIN
        CASE E IS
            WHEN INICIO =>  LD <= "100100"; VDP <= '0'; BPR <= '1';
            WHEN TVA_I  =>  LD <= "001100"; VDP <= '0'; BPR <= '0';
            WHEN TAA_I  =>  LD <= "010100"; VDP <= '0'; BPR <= '0';
            WHEN TVB_I  =>  LD <= "100001"; VDP <= '0'; BPR <= '0';
            WHEN TAB    =>  LD <= "100010"; VDP <= '0'; BPR <= '0';
            WHEN TVP_I  =>  LD <= "010100"; VDP <= '1'; BPR <= '1'; -- pedestre
            WHEN FALHA  =>  LD <= "010010"; VDP <= '0'; BPR <= '0';
            WHEN OTHERS =>  LD <= (OTHERS => '0'); VDP <= '0'; BPR <= '0';
        END CASE;
    END PROCESS;

    -- Contadores nas saídas (4 bits)
    TVA <= CONV_STD_LOGIC_VECTOR(VA, TVA'length);
    TVB <= CONV_STD_LOGIC_VECTOR(VB, TVB'length);
    TVP <= CONV_STD_LOGIC_VECTOR(VP, TVP'length);
END BEHAVIOR;
