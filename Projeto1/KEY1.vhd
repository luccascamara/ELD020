LIBRARY IEEE;				
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY KEY1 IS                			
	PORT(
		KEY1	: in std_logic;              
		CK  	: in std_logic;
		INI	: in std_logic;
		BPR 	: in std_logic;
		BP 	: buffer std_logic
	);
END KEY1;

ARCHITECTURE comportamental OF  KEY1	  IS 
BEGIN
	PROCESS (CK, INI, BPR)
	BEGIN
	
		if (BPR='1') then 
			 BP <='0'; 
		elsif (INI='0') then 
			 BP <='0';
		elsif (KEY1='0') then
			BP <= not(KEY1); 
			
		end if;
	END PROCESS;
END comportamental;
