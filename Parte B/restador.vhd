library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity restador is

port (A    : in  std_logic;
      B    : in  std_logic;
      Bin  : in  std_logic;
      clk  : in  std_logic;
      Bout : out std_logic;
      dif  : out std_logic);
		  
end restador;

architecture behavioral of restador is

    component FFD
    port (D   : in  std_logic;
              clk : in  std_logic;
              Q   : out std_logic);
    end component;

    signal A_int, B_int, Bin_int, Bout_int, dif_int : std_logic;  --señales que vinculan FFD con restador

begin
   
    dif_int <= (A_int xor B_int) xor Bin_int;
    Bout_int <= ((not A_int) and B_int) or ((not (A_int xor B_int)) and Bin_int);

    D1 : FFD port map (A, clk, A_int);
    D2 : FFD port map (B, clk, B_int);
    D3 : FFD port map (Bin, clk, Bin_int);
    D4 : FFD port map (Bout_int, clk, Bout);
    D5 : FFD port map (dif_int, clk, dif);

end behavioral;
