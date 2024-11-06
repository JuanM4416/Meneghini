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
-- CREATED		"Wed Nov 06 09:39:22 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY restador4bits IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		A3 :  IN  STD_LOGIC;
		A2 :  IN  STD_LOGIC;
		A1 :  IN  STD_LOGIC;
		A0 :  IN  STD_LOGIC;
		B3 :  IN  STD_LOGIC;
		B2 :  IN  STD_LOGIC;
		B1 :  IN  STD_LOGIC;
		B0 :  IN  STD_LOGIC;
		Bin :  IN  STD_LOGIC;
		Bout :  OUT  STD_LOGIC;
		dif3 :  OUT  STD_LOGIC;
		dif2 :  OUT  STD_LOGIC;
		dif1 :  OUT  STD_LOGIC;
		dif0 :  OUT  STD_LOGIC
	);
END restador4bits;

ARCHITECTURE bdf_type OF restador4bits IS 

COMPONENT restador
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 Bin : IN STD_LOGIC;
		 Bout : OUT STD_LOGIC;
		 dif : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT ffd
	PORT(D : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 Q : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;


BEGIN 



b2v_inst : restador
PORT MAP(A => SYNTHESIZED_WIRE_0,
		 B => SYNTHESIZED_WIRE_1,
		 Bin => SYNTHESIZED_WIRE_2,
		 Bout => Bout,
		 dif => SYNTHESIZED_WIRE_11);


b2v_inst10 : restador
PORT MAP(A => SYNTHESIZED_WIRE_3,
		 B => SYNTHESIZED_WIRE_4,
		 Bin => SYNTHESIZED_WIRE_5,
		 Bout => SYNTHESIZED_WIRE_14,
		 dif => SYNTHESIZED_WIRE_9);


b2v_inst11 : restador
PORT MAP(A => SYNTHESIZED_WIRE_6,
		 B => SYNTHESIZED_WIRE_7,
		 Bin => Bin,
		 Bout => SYNTHESIZED_WIRE_5,
		 dif => SYNTHESIZED_WIRE_8);


b2v_inst17 : ffd
PORT MAP(D => B0,
		 clk => clk,
		 Q => SYNTHESIZED_WIRE_7);


b2v_inst18 : ffd
PORT MAP(D => B1,
		 clk => clk,
		 Q => SYNTHESIZED_WIRE_4);


b2v_inst19 : ffd
PORT MAP(D => B2,
		 clk => clk,
		 Q => SYNTHESIZED_WIRE_13);


b2v_inst20 : ffd
PORT MAP(D => B3,
		 clk => clk,
		 Q => SYNTHESIZED_WIRE_1);


b2v_inst21 : ffd
PORT MAP(D => SYNTHESIZED_WIRE_8,
		 clk => clk,
		 Q => dif0);


b2v_inst22 : ffd
PORT MAP(D => SYNTHESIZED_WIRE_9,
		 clk => clk,
		 Q => dif1);


b2v_inst23 : ffd
PORT MAP(D => SYNTHESIZED_WIRE_10,
		 clk => clk,
		 Q => dif2);


b2v_inst24 : ffd
PORT MAP(D => SYNTHESIZED_WIRE_11,
		 clk => clk,
		 Q => dif3);


b2v_inst5 : ffd
PORT MAP(D => A0,
		 clk => clk,
		 Q => SYNTHESIZED_WIRE_6);


b2v_inst6 : ffd
PORT MAP(D => A1,
		 clk => clk,
		 Q => SYNTHESIZED_WIRE_3);


b2v_inst7 : ffd
PORT MAP(D => A2,
		 clk => clk,
		 Q => SYNTHESIZED_WIRE_12);


b2v_inst8 : ffd
PORT MAP(D => A3,
		 clk => clk,
		 Q => SYNTHESIZED_WIRE_0);


b2v_inst9 : restador
PORT MAP(A => SYNTHESIZED_WIRE_12,
		 B => SYNTHESIZED_WIRE_13,
		 Bin => SYNTHESIZED_WIRE_14,
		 Bout => SYNTHESIZED_WIRE_2,
		 dif => SYNTHESIZED_WIRE_10);


END bdf_type;