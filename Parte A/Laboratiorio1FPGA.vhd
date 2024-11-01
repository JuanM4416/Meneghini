library IEEE;


use EE.STD_LOGIC_1164.ALL;

entity circuito1 is


port (SW1 : in std_logic;
		SW2 : in std_logic;
		SW3 : in std_logic;
		LED : out std_logic;)
		
end circuito1;

architecture arquitectura1 of circuito1 is
begin
	
	LED <= (SW1 xnor (not SW2)) or ((not SW2) and SW3);
	
end arquitectura1;
	
