-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Thu Nov 07 09:13:44 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY circuito IS 
	PORT
	(
		SCL :  IN  STD_LOGIC;
		SDA :  IN  STD_LOGIC;
		WSDA :  OUT  STD_LOGIC
	);
END circuito;

ARCHITECTURE bdf_type OF circuito IS 

COMPONENT maquina
	PORT(reset : IN STD_LOGIC;
		 SCL : IN STD_LOGIC;
		 SDA : IN STD_LOGIC;
		 soy : IN STD_LOGIC;
		 Fdir : IN STD_LOGIC;
		 Fdat : IN STD_LOGIC;
		 Hdir : OUT STD_LOGIC;
		 Hdat : OUT STD_LOGIC;
		 Hack : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT comparador7
	PORT(dataa : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 aeb : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT contador16
	PORT(clock : IN STD_LOGIC;
		 q0 : OUT STD_LOGIC;
		 q1 : OUT STD_LOGIC;
		 q2 : OUT STD_LOGIC;
		 q3 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT contador8
	PORT(clock : IN STD_LOGIC;
		 q0 : OUT STD_LOGIC;
		 q1 : OUT STD_LOGIC;
		 q2 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT registro7
	PORT(clock : IN STD_LOGIC;
		 shiftin : IN STD_LOGIC;
		 shiftout : OUT STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

COMPONENT registro8
	PORT(clock : IN STD_LOGIC;
		 shiftin : IN STD_LOGIC;
		 shiftout : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;


BEGIN 



b2v_inst : maquina
PORT MAP(SCL => SCL,
		 SDA => SDA,
		 soy => SYNTHESIZED_WIRE_0,
		 Fdir => SYNTHESIZED_WIRE_1,
		 Fdat => SYNTHESIZED_WIRE_2,
		 Hdir => SYNTHESIZED_WIRE_14,
		 Hdat => SYNTHESIZED_WIRE_18,
		 Hack => WSDA);


b2v_inst13 : comparador7
PORT MAP(dataa => SYNTHESIZED_WIRE_3,
		 datab => SYNTHESIZED_WIRE_4,
		 aeb => SYNTHESIZED_WIRE_0);


b2v_inst17 : contador16
PORT MAP(clock => SYNTHESIZED_WIRE_22,
		 q0 => SYNTHESIZED_WIRE_6,
		 q1 => SYNTHESIZED_WIRE_7,
		 q2 => SYNTHESIZED_WIRE_8,
		 q3 => SYNTHESIZED_WIRE_12);


SYNTHESIZED_WIRE_9 <= NOT(SYNTHESIZED_WIRE_6);



SYNTHESIZED_WIRE_10 <= NOT(SYNTHESIZED_WIRE_7);



SYNTHESIZED_WIRE_11 <= NOT(SYNTHESIZED_WIRE_8);



SYNTHESIZED_WIRE_2 <= SYNTHESIZED_WIRE_9 AND SYNTHESIZED_WIRE_10 AND SYNTHESIZED_WIRE_11 AND SYNTHESIZED_WIRE_12;


b2v_inst6 : contador8
PORT MAP(clock => SYNTHESIZED_WIRE_23,
		 q0 => SYNTHESIZED_WIRE_15,
		 q1 => SYNTHESIZED_WIRE_16,
		 q2 => SYNTHESIZED_WIRE_17);


SYNTHESIZED_WIRE_23 <= SCL AND SYNTHESIZED_WIRE_14;


SYNTHESIZED_WIRE_1 <= SYNTHESIZED_WIRE_15 AND SYNTHESIZED_WIRE_16 AND SYNTHESIZED_WIRE_17;


SYNTHESIZED_WIRE_22 <= SYNTHESIZED_WIRE_18 AND SCL;


b2v_midir : registro7
PORT MAP(clock => SYNTHESIZED_WIRE_23,
		 q => SYNTHESIZED_WIRE_4);


b2v_RXdat : registro8
PORT MAP(clock => SYNTHESIZED_WIRE_22,
		 shiftin => SDA);


b2v_RXdir : registro7
PORT MAP(clock => SYNTHESIZED_WIRE_23,
		 shiftin => SDA,
		 q => SYNTHESIZED_WIRE_3);


END bdf_type;