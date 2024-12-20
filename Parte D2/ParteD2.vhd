-- Quartus II VHDL Template
-- Four-State Moore State Machine

-- A Moore machine's outputs are dependent only on the current state.
-- The output is written only when the state changes.  (State
-- transitions are synchronous.)

library ieee;
use ieee.std_logic_1164.all;

entity ParteD2 is

	port(
		clk		: in	std_logic;
		x	 	   : in	std_logic;
		reset	 	: in	std_logic;
		output	: out	std_logic_vector(3 downto 0));

end entity;

architecture behavioral of ParteD2 is

	-- Build an enumerated type for the state machine
	type state_type is (A, B, C, D, E, F, G);

	-- Register to hold the current state
	signal state  : state_type;

begin

	-- Logic to advance to the next state
	process (clk, reset)
	begin
		if reset = '1' then
			state <= A;
			
		elsif (rising_edge(clk)) then
		
			case state is
			
				when A=>
					if x = '1' then
						state <= G;
					else
						state <= B;
					end if;
					
				when B=> state <= C;
					
				when C=>
					if x = '1' then
						state <= E;
					else
						state <= D;
					end if;
					
				when D => state <= A;
				
				when E => state <= A;
				
				when F => state <= C;	
				
				when G => state <= F;		
					
			end case;
		end if;
	end process;

	-- Output depends solely on the current state
	process (state)
	begin
		case state is
			when A =>
				output <= "0000";
			when B =>
				output <= "0110";
			when C =>
				output <= "1111";
			when D =>
				output <= "1001";
			when E =>
				output <= "1110";
			when F =>
				output <= "1100";
			when G =>
				output <= "1000";
		end case;
	end process;

end behavioral;
