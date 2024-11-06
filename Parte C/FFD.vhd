library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity FFD is

port (D   : in  std_logic;
      clk : in  std_logic;
      Q   : out std_logic);
		
end FFD;


architecture behavioral of FFD is

begin
   
	process(clk)
   begin
		if rising_edge(clk) then
			Q <= D; 
      end if;
   end process;
	 
end behavioral;
