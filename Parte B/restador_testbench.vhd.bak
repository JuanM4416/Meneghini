library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity restador_testbench is 

end restador_testbench;

architecture behavioral of restador_testbench is 

	component restador 
	
	port (A    : in  std_logic;
			B    : in  std_logic;
			Bin  : in  std_logic;
			clk  : in  std_logic;
			Bout : out std_logic;
			dif  : out std_logic);

	end component;
	
	signal A : std_logic := '0';
	signal B : std_logic := '0';
	signal Bin : std_logic := '0';
	signal clk : std_logic := '0';
	
	signal Bout : std_logic;
	signal dif : std_logic;
	
	constant Tclk : time := 20ns;

begin

	uut : restador port map (A=>A, B=>B, Bin=>Bin, clk=>clk, Bout=>Bout, dif=>dif);
	
	clk_process : process
	begin
		clk <= '0';
		wait for Tclk/2;
		clk <= '1';
		wait for Tclk/2;
	end process;

end;