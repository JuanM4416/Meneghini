library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity restador is

port (A    : in  std_logic;
      B    : in  std_logic;
      Bin  : in  std_logic;
      Bout : out std_logic;
      dif  : out std_logic);
		  
end restador;

architecture behavioral of restador is

begin
   
    dif <= (A xor B) xor Bin;
    Bout <= ((not A) and B) or ((not (A xor B)) and Bin);

end behavioral;
