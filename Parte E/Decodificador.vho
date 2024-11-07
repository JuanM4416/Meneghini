--IP Functional Simulation Model
--VERSION_BEGIN 13.0 cbx_mgl 2013:06:12:18:04:42:SJ cbx_simgen 2013:06:12:18:03:40:SJ  VERSION_END


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

-- You may only use these simulation model output files for simulation
-- purposes and expressly not for synthesis or any other purposes (in which
-- event Altera disclaims all warranties of any kind).


--synopsys translate_off

 LIBRARY sgate;
 USE sgate.sgate_pack.all;

--synthesis_resources = lut 83 mux21 7 oper_add 7 oper_less_than 2 oper_mux 8 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  Decodificador IS 
	 PORT 
	 ( 
		 clk	:	IN  STD_LOGIC;
		 datain	:	IN  STD_LOGIC_VECTOR (9 DOWNTO 0);
		 dataout	:	OUT  STD_LOGIC_VECTOR (7 DOWNTO 0);
		 ena	:	IN  STD_LOGIC;
		 idle_del	:	IN  STD_LOGIC;
		 kerr	:	OUT  STD_LOGIC;
		 kout	:	OUT  STD_LOGIC;
		 rdcascade	:	OUT  STD_LOGIC;
		 rderr	:	OUT  STD_LOGIC;
		 rdforce	:	IN  STD_LOGIC;
		 rdin	:	IN  STD_LOGIC;
		 rdout	:	OUT  STD_LOGIC;
		 reset_n	:	IN  STD_LOGIC;
		 valid	:	OUT  STD_LOGIC
	 ); 
 END Decodificador;

 ARCHITECTURE RTL OF Decodificador IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
	 SIGNAL	 n00i1O49	:	STD_LOGIC := '0';
	 SIGNAL	 n00i1O50	:	STD_LOGIC := '0';
	 SIGNAL	 n00ili47	:	STD_LOGIC := '0';
	 SIGNAL	 n00ili48	:	STD_LOGIC := '0';
	 SIGNAL	 n00ill45	:	STD_LOGIC := '0';
	 SIGNAL	 n00ill46	:	STD_LOGIC := '0';
	 SIGNAL	 niO00i19	:	STD_LOGIC := '0';
	 SIGNAL	 niO00i20	:	STD_LOGIC := '0';
	 SIGNAL	 niO01i23	:	STD_LOGIC := '0';
	 SIGNAL	 niO01i24	:	STD_LOGIC := '0';
	 SIGNAL  wire_niO01i24_w_lg_w_lg_q162w163w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_niO01i24_w_lg_q162w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 niO01O21	:	STD_LOGIC := '0';
	 SIGNAL	 niO01O22	:	STD_LOGIC := '0';
	 SIGNAL  wire_niO01O22_w_lg_w_lg_q147w148w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_niO01O22_w_lg_q147w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 niO0il17	:	STD_LOGIC := '0';
	 SIGNAL	 niO0il18	:	STD_LOGIC := '0';
	 SIGNAL	 niO0li15	:	STD_LOGIC := '0';
	 SIGNAL	 niO0li16	:	STD_LOGIC := '0';
	 SIGNAL  wire_niO0li16_w_lg_w_lg_q119w120w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_niO0li16_w_lg_q119w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 niO0ll13	:	STD_LOGIC := '0';
	 SIGNAL	 niO0ll14	:	STD_LOGIC := '0';
	 SIGNAL  wire_niO0ll14_w_lg_w_lg_q116w117w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_niO0ll14_w_lg_q116w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 niO0lO11	:	STD_LOGIC := '0';
	 SIGNAL	 niO0lO12	:	STD_LOGIC := '0';
	 SIGNAL  wire_niO0lO12_w_lg_w_lg_q112w113w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_niO0lO12_w_lg_q112w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 niO0Oi10	:	STD_LOGIC := '0';
	 SIGNAL  wire_niO0Oi10_w_lg_w_lg_q91w92w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_niO0Oi10_w_lg_q91w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 niO0Oi9	:	STD_LOGIC := '0';
	 SIGNAL	 niO0Ol7	:	STD_LOGIC := '0';
	 SIGNAL	 niO0Ol8	:	STD_LOGIC := '0';
	 SIGNAL  wire_niO0Ol8_w_lg_w_lg_q76w77w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_niO0Ol8_w_lg_q76w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 niO0OO5	:	STD_LOGIC := '0';
	 SIGNAL	 niO0OO6	:	STD_LOGIC := '0';
	 SIGNAL  wire_niO0OO6_w_lg_w_lg_q49w50w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_niO0OO6_w_lg_q49w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 niO10O43	:	STD_LOGIC := '0';
	 SIGNAL	 niO10O44	:	STD_LOGIC := '0';
	 SIGNAL	 niO1ii41	:	STD_LOGIC := '0';
	 SIGNAL	 niO1ii42	:	STD_LOGIC := '0';
	 SIGNAL	 niO1il39	:	STD_LOGIC := '0';
	 SIGNAL	 niO1il40	:	STD_LOGIC := '0';
	 SIGNAL  wire_niO1il40_w_lg_w_lg_q383w384w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_niO1il40_w_lg_q383w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 niO1iO37	:	STD_LOGIC := '0';
	 SIGNAL	 niO1iO38	:	STD_LOGIC := '0';
	 SIGNAL  wire_niO1iO38_w_lg_w_lg_q366w367w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_niO1iO38_w_lg_q366w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 niO1li35	:	STD_LOGIC := '0';
	 SIGNAL	 niO1li36	:	STD_LOGIC := '0';
	 SIGNAL  wire_niO1li36_w_lg_w_lg_q290w291w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_niO1li36_w_lg_q290w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 niO1ll33	:	STD_LOGIC := '0';
	 SIGNAL	 niO1ll34	:	STD_LOGIC := '0';
	 SIGNAL  wire_niO1ll34_w_lg_w_lg_q259w260w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_niO1ll34_w_lg_q259w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 niO1lO31	:	STD_LOGIC := '0';
	 SIGNAL	 niO1lO32	:	STD_LOGIC := '0';
	 SIGNAL  wire_niO1lO32_w_lg_w_lg_q254w255w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_niO1lO32_w_lg_q254w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 niO1Oi29	:	STD_LOGIC := '0';
	 SIGNAL	 niO1Oi30	:	STD_LOGIC := '0';
	 SIGNAL  wire_niO1Oi30_w_lg_w_lg_q249w250w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_niO1Oi30_w_lg_q249w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 niO1Ol27	:	STD_LOGIC := '0';
	 SIGNAL	 niO1Ol28	:	STD_LOGIC := '0';
	 SIGNAL  wire_niO1Ol28_w_lg_w_lg_q237w238w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_niO1Ol28_w_lg_q237w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 niO1OO25	:	STD_LOGIC := '0';
	 SIGNAL	 niO1OO26	:	STD_LOGIC := '0';
	 SIGNAL  wire_niO1OO26_w_lg_w_lg_q187w188w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_niO1OO26_w_lg_q187w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 niOi1i3	:	STD_LOGIC := '0';
	 SIGNAL	 niOi1i4	:	STD_LOGIC := '0';
	 SIGNAL  wire_niOi1i4_w_lg_w_lg_q39w40w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_niOi1i4_w_lg_q39w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 niOi1l1	:	STD_LOGIC := '0';
	 SIGNAL	 niOi1l2	:	STD_LOGIC := '0';
	 SIGNAL  wire_niOi1l2_w_lg_w_lg_q11w12w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_niOi1l2_w_lg_q11w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	nl00O	:	STD_LOGIC := '0';
	 SIGNAL	nl0ii	:	STD_LOGIC := '0';
	 SIGNAL	nl0iO	:	STD_LOGIC := '0';
	 SIGNAL	nl0li	:	STD_LOGIC := '0';
	 SIGNAL	nl0ll	:	STD_LOGIC := '0';
	 SIGNAL	nl0lO	:	STD_LOGIC := '0';
	 SIGNAL	nl0Oi	:	STD_LOGIC := '0';
	 SIGNAL	nl0Ol	:	STD_LOGIC := '0';
	 SIGNAL	nl0OO	:	STD_LOGIC := '0';
	 SIGNAL	nli1l	:	STD_LOGIC := '0';
	 SIGNAL	wire_nli1i_CLRN	:	STD_LOGIC;
	 SIGNAL	nll0i	:	STD_LOGIC := '0';
	 SIGNAL	nll0O	:	STD_LOGIC := '0';
	 SIGNAL	wire_nll0l_CLRN	:	STD_LOGIC;
	 SIGNAL	wire_nll0l_PRN	:	STD_LOGIC;
	 SIGNAL	nl0il	:	STD_LOGIC := '0';
	 SIGNAL	nli0i	:	STD_LOGIC := '0';
	 SIGNAL	nli0l	:	STD_LOGIC := '0';
	 SIGNAL	nli0O	:	STD_LOGIC := '0';
	 SIGNAL	nli1O	:	STD_LOGIC := '0';
	 SIGNAL	nliii	:	STD_LOGIC := '0';
	 SIGNAL	nliil	:	STD_LOGIC := '0';
	 SIGNAL	nliiO	:	STD_LOGIC := '0';
	 SIGNAL	nlili	:	STD_LOGIC := '0';
	 SIGNAL	nlill	:	STD_LOGIC := '0';
	 SIGNAL	nlilO	:	STD_LOGIC := '0';
	 SIGNAL	nliOi	:	STD_LOGIC := '0';
	 SIGNAL	nliOl	:	STD_LOGIC := '0';
	 SIGNAL	nliOO	:	STD_LOGIC := '0';
	 SIGNAL	nll1i	:	STD_LOGIC := '0';
	 SIGNAL	nll1l	:	STD_LOGIC := '0';
	 SIGNAL	nll1O	:	STD_LOGIC := '0';
	 SIGNAL	nllii	:	STD_LOGIC := '0';
	 SIGNAL	nllil	:	STD_LOGIC := '0';
	 SIGNAL	nlliO	:	STD_LOGIC := '0';
	 SIGNAL	nllOl	:	STD_LOGIC := '0';
	 SIGNAL	wire_nllOi_CLRN	:	STD_LOGIC;
	 SIGNAL	wire_nllOi_PRN	:	STD_LOGIC;
	 SIGNAL  wire_nllOi_w_lg_nli0l1452w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nllOi_w_lg_nli0O1446w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nllOi_w_lg_nliiO1440w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	wire_n00i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n01l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_niOl_dataout	:	STD_LOGIC;
	 SIGNAL  wire_niOl_w_lg_w_lg_dataout1442w1453w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_niOl_w_lg_dataout1447w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_niOl_w_lg_dataout1441w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_niOl_w_lg_dataout1442w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	wire_nllli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllll_dataout	:	STD_LOGIC;
	 SIGNAL  wire_niii_a	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_niii_b	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_gnd	:	STD_LOGIC;
	 SIGNAL  wire_niii_o	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_niii_w_o_range108w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_niii_w_o_range111w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_niii_w_o_range115w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_niil_a	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_niil_b	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_niil_o	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_niil_w_o_range90w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_niiO_a	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_niiO_b	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_niiO_o	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nili_w_lg_w_o_range1505w1513w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nili_w_lg_w_o_range1506w1514w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nili_w_lg_w_o_range1505w1509w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nili_w_lg_w_o_range1506w1510w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nili_a	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nili_b	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nili_o	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nili_w_o_range1505w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nili_w_o_range1506w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nill_a	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nill_b	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nill_o	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nill_w_o_range48w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nilO_w_lg_w_o_range1472w1475w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nilO_w_lg_w_o_range1473w1484w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nilO_w_lg_w_o_range1472w1483w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nilO_w_lg_w_o_range1473w1474w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nilO_a	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nilO_b	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nilO_o	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nilO_w_o_range1472w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nilO_w_o_range1473w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_niOi_a	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_niOi_b	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_niOi_o	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_n00O_a	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_n00O_b	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_n00O_o	:	STD_LOGIC;
	 SIGNAL  wire_n0ii_a	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_n0ii_b	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_n0ii_o	:	STD_LOGIC;
	 SIGNAL  wire_nlO0i_data	:	STD_LOGIC_VECTOR (63 DOWNTO 0);
	 SIGNAL  wire_nlO0i_o	:	STD_LOGIC;
	 SIGNAL  wire_nlO0i_sel	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_nlO0l_data	:	STD_LOGIC_VECTOR (63 DOWNTO 0);
	 SIGNAL  wire_nlO0l_o	:	STD_LOGIC;
	 SIGNAL  wire_nlO0l_sel	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_nlO0O_data	:	STD_LOGIC_VECTOR (63 DOWNTO 0);
	 SIGNAL  wire_nlO0O_o	:	STD_LOGIC;
	 SIGNAL  wire_nlO0O_sel	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_nlO1O_data	:	STD_LOGIC_VECTOR (63 DOWNTO 0);
	 SIGNAL  wire_nlO1O_o	:	STD_LOGIC;
	 SIGNAL  wire_nlO1O_sel	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_nlOii_data	:	STD_LOGIC_VECTOR (63 DOWNTO 0);
	 SIGNAL  wire_nlOii_o	:	STD_LOGIC;
	 SIGNAL  wire_nlOii_sel	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_nlOil_data	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
	 SIGNAL  wire_nlOil_o	:	STD_LOGIC;
	 SIGNAL  wire_nlOil_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_nlOiO_data	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
	 SIGNAL  wire_nlOiO_o	:	STD_LOGIC;
	 SIGNAL  wire_nlOiO_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_nlOli_data	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
	 SIGNAL  wire_nlOli_o	:	STD_LOGIC;
	 SIGNAL  wire_nlOli_sel	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_n00i0O1485w1486w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_n00iil1476w1477w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_n00iii1471w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_n00iiO1482w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datain_range28w1551w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_n00i0O1470w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_n00iil1481w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_niO01l165w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datain_range17w1525w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_n00i0O1485w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_n00iil1476w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_niO00O1454w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_niO0ii1448w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  n00i0i :	STD_LOGIC;
	 SIGNAL  n00i0l :	STD_LOGIC;
	 SIGNAL  n00i0O :	STD_LOGIC;
	 SIGNAL  n00i1i :	STD_LOGIC;
	 SIGNAL  n00i1l :	STD_LOGIC;
	 SIGNAL  n00iii :	STD_LOGIC;
	 SIGNAL  n00iil :	STD_LOGIC;
	 SIGNAL  n00iiO :	STD_LOGIC;
	 SIGNAL  n00ilO :	STD_LOGIC;
	 SIGNAL  n00iOi :	STD_LOGIC;
	 SIGNAL  n00iOl :	STD_LOGIC;
	 SIGNAL  n00iOO :	STD_LOGIC;
	 SIGNAL  n00l0i :	STD_LOGIC;
	 SIGNAL  n00l0l :	STD_LOGIC;
	 SIGNAL  n00l0O :	STD_LOGIC;
	 SIGNAL  n00l1i :	STD_LOGIC;
	 SIGNAL  n00l1l :	STD_LOGIC;
	 SIGNAL  n00l1O :	STD_LOGIC;
	 SIGNAL  n00lii :	STD_LOGIC;
	 SIGNAL  n00lil :	STD_LOGIC;
	 SIGNAL  n00liO :	STD_LOGIC;
	 SIGNAL  n00lli :	STD_LOGIC;
	 SIGNAL  n00lll :	STD_LOGIC;
	 SIGNAL  n00llO :	STD_LOGIC;
	 SIGNAL  n00lOi :	STD_LOGIC;
	 SIGNAL  n00lOl :	STD_LOGIC;
	 SIGNAL  n00lOO :	STD_LOGIC;
	 SIGNAL  n00O0i :	STD_LOGIC;
	 SIGNAL  n00O0l :	STD_LOGIC;
	 SIGNAL  n00O0O :	STD_LOGIC;
	 SIGNAL  n00O1i :	STD_LOGIC;
	 SIGNAL  n00O1l :	STD_LOGIC;
	 SIGNAL  n00O1O :	STD_LOGIC;
	 SIGNAL  n00Oii :	STD_LOGIC;
	 SIGNAL  n00Oil :	STD_LOGIC;
	 SIGNAL  n00OiO :	STD_LOGIC;
	 SIGNAL  n00Oli :	STD_LOGIC;
	 SIGNAL  n00Oll :	STD_LOGIC;
	 SIGNAL  n00OlO :	STD_LOGIC;
	 SIGNAL  n00OOi :	STD_LOGIC;
	 SIGNAL  n00OOl :	STD_LOGIC;
	 SIGNAL  n00OOO :	STD_LOGIC;
	 SIGNAL  n0i00i :	STD_LOGIC;
	 SIGNAL  n0i00l :	STD_LOGIC;
	 SIGNAL  n0i00O :	STD_LOGIC;
	 SIGNAL  n0i01i :	STD_LOGIC;
	 SIGNAL  n0i01l :	STD_LOGIC;
	 SIGNAL  n0i01O :	STD_LOGIC;
	 SIGNAL  n0i0ii :	STD_LOGIC;
	 SIGNAL  n0i0il :	STD_LOGIC;
	 SIGNAL  n0i0iO :	STD_LOGIC;
	 SIGNAL  n0i0li :	STD_LOGIC;
	 SIGNAL  n0i0ll :	STD_LOGIC;
	 SIGNAL  n0i0lO :	STD_LOGIC;
	 SIGNAL  n0i0Oi :	STD_LOGIC;
	 SIGNAL  n0i0Ol :	STD_LOGIC;
	 SIGNAL  n0i0OO :	STD_LOGIC;
	 SIGNAL  n0i10i :	STD_LOGIC;
	 SIGNAL  n0i10l :	STD_LOGIC;
	 SIGNAL  n0i10O :	STD_LOGIC;
	 SIGNAL  n0i11i :	STD_LOGIC;
	 SIGNAL  n0i11l :	STD_LOGIC;
	 SIGNAL  n0i11O :	STD_LOGIC;
	 SIGNAL  n0i1ii :	STD_LOGIC;
	 SIGNAL  n0i1il :	STD_LOGIC;
	 SIGNAL  n0i1iO :	STD_LOGIC;
	 SIGNAL  n0i1li :	STD_LOGIC;
	 SIGNAL  n0i1ll :	STD_LOGIC;
	 SIGNAL  n0i1lO :	STD_LOGIC;
	 SIGNAL  n0i1Oi :	STD_LOGIC;
	 SIGNAL  n0i1Ol :	STD_LOGIC;
	 SIGNAL  n0i1OO :	STD_LOGIC;
	 SIGNAL  n0ii0i :	STD_LOGIC;
	 SIGNAL  n0ii0l :	STD_LOGIC;
	 SIGNAL  n0ii0O :	STD_LOGIC;
	 SIGNAL  n0ii1i :	STD_LOGIC;
	 SIGNAL  n0ii1l :	STD_LOGIC;
	 SIGNAL  n0ii1O :	STD_LOGIC;
	 SIGNAL  n0iiii :	STD_LOGIC;
	 SIGNAL  n0iiil :	STD_LOGIC;
	 SIGNAL  n0iiiO :	STD_LOGIC;
	 SIGNAL  n0iili :	STD_LOGIC;
	 SIGNAL  n0iill :	STD_LOGIC;
	 SIGNAL  n0iilO :	STD_LOGIC;
	 SIGNAL  n0iiOi :	STD_LOGIC;
	 SIGNAL  n0iiOl :	STD_LOGIC;
	 SIGNAL  n0iiOO :	STD_LOGIC;
	 SIGNAL  n0il0i :	STD_LOGIC;
	 SIGNAL  n0il0l :	STD_LOGIC;
	 SIGNAL  n0il0O :	STD_LOGIC;
	 SIGNAL  n0il1i :	STD_LOGIC;
	 SIGNAL  n0il1l :	STD_LOGIC;
	 SIGNAL  n0il1O :	STD_LOGIC;
	 SIGNAL  n0ilii :	STD_LOGIC;
	 SIGNAL  n0ilil :	STD_LOGIC;
	 SIGNAL  n0iliO :	STD_LOGIC;
	 SIGNAL  n0illi :	STD_LOGIC;
	 SIGNAL  n0illl :	STD_LOGIC;
	 SIGNAL  n0illO :	STD_LOGIC;
	 SIGNAL  n0ilOi :	STD_LOGIC;
	 SIGNAL  n0ilOl :	STD_LOGIC;
	 SIGNAL  n0ilOO :	STD_LOGIC;
	 SIGNAL  n0iO0i :	STD_LOGIC;
	 SIGNAL  n0iO0l :	STD_LOGIC;
	 SIGNAL  n0iO0O :	STD_LOGIC;
	 SIGNAL  n0iO1i :	STD_LOGIC;
	 SIGNAL  n0iO1l :	STD_LOGIC;
	 SIGNAL  n0iO1O :	STD_LOGIC;
	 SIGNAL  n0iOii :	STD_LOGIC;
	 SIGNAL  n0iOil :	STD_LOGIC;
	 SIGNAL  n0iOiO :	STD_LOGIC;
	 SIGNAL  n0iOli :	STD_LOGIC;
	 SIGNAL  n0iOll :	STD_LOGIC;
	 SIGNAL  n0iOlO :	STD_LOGIC;
	 SIGNAL  n0iOOi :	STD_LOGIC;
	 SIGNAL  n0iOOl :	STD_LOGIC;
	 SIGNAL  n0iOOO :	STD_LOGIC;
	 SIGNAL  n0l00i :	STD_LOGIC;
	 SIGNAL  n0l00l :	STD_LOGIC;
	 SIGNAL  n0l00O :	STD_LOGIC;
	 SIGNAL  n0l01i :	STD_LOGIC;
	 SIGNAL  n0l01l :	STD_LOGIC;
	 SIGNAL  n0l01O :	STD_LOGIC;
	 SIGNAL  n0l0ii :	STD_LOGIC;
	 SIGNAL  n0l0il :	STD_LOGIC;
	 SIGNAL  n0l0iO :	STD_LOGIC;
	 SIGNAL  n0l0li :	STD_LOGIC;
	 SIGNAL  n0l0ll :	STD_LOGIC;
	 SIGNAL  n0l0lO :	STD_LOGIC;
	 SIGNAL  n0l0Oi :	STD_LOGIC;
	 SIGNAL  n0l0Ol :	STD_LOGIC;
	 SIGNAL  n0l0OO :	STD_LOGIC;
	 SIGNAL  n0l10i :	STD_LOGIC;
	 SIGNAL  n0l10l :	STD_LOGIC;
	 SIGNAL  n0l10O :	STD_LOGIC;
	 SIGNAL  n0l11i :	STD_LOGIC;
	 SIGNAL  n0l11l :	STD_LOGIC;
	 SIGNAL  n0l11O :	STD_LOGIC;
	 SIGNAL  n0l1ii :	STD_LOGIC;
	 SIGNAL  n0l1il :	STD_LOGIC;
	 SIGNAL  n0l1iO :	STD_LOGIC;
	 SIGNAL  n0l1li :	STD_LOGIC;
	 SIGNAL  n0l1ll :	STD_LOGIC;
	 SIGNAL  n0l1lO :	STD_LOGIC;
	 SIGNAL  n0l1Oi :	STD_LOGIC;
	 SIGNAL  n0l1Ol :	STD_LOGIC;
	 SIGNAL  n0l1OO :	STD_LOGIC;
	 SIGNAL  n0li0i :	STD_LOGIC;
	 SIGNAL  n0li0l :	STD_LOGIC;
	 SIGNAL  n0li0O :	STD_LOGIC;
	 SIGNAL  n0li1i :	STD_LOGIC;
	 SIGNAL  n0li1l :	STD_LOGIC;
	 SIGNAL  n0li1O :	STD_LOGIC;
	 SIGNAL  n0liii :	STD_LOGIC;
	 SIGNAL  n0liil :	STD_LOGIC;
	 SIGNAL  n0liiO :	STD_LOGIC;
	 SIGNAL  n0lili :	STD_LOGIC;
	 SIGNAL  n0lill :	STD_LOGIC;
	 SIGNAL  n0lilO :	STD_LOGIC;
	 SIGNAL  n0liOi :	STD_LOGIC;
	 SIGNAL  n0liOl :	STD_LOGIC;
	 SIGNAL  n0liOO :	STD_LOGIC;
	 SIGNAL  n0ll0i :	STD_LOGIC;
	 SIGNAL  n0ll0l :	STD_LOGIC;
	 SIGNAL  n0ll0O :	STD_LOGIC;
	 SIGNAL  n0ll1i :	STD_LOGIC;
	 SIGNAL  n0ll1l :	STD_LOGIC;
	 SIGNAL  n0ll1O :	STD_LOGIC;
	 SIGNAL  n0llii :	STD_LOGIC;
	 SIGNAL  n0llil :	STD_LOGIC;
	 SIGNAL  n0lliO :	STD_LOGIC;
	 SIGNAL  n0llli :	STD_LOGIC;
	 SIGNAL  n0llll :	STD_LOGIC;
	 SIGNAL  n0lllO :	STD_LOGIC;
	 SIGNAL  n0llOi :	STD_LOGIC;
	 SIGNAL  n0llOl :	STD_LOGIC;
	 SIGNAL  n0llOO :	STD_LOGIC;
	 SIGNAL  n0lO0i :	STD_LOGIC;
	 SIGNAL  n0lO0l :	STD_LOGIC;
	 SIGNAL  n0lO0O :	STD_LOGIC;
	 SIGNAL  n0lO1i :	STD_LOGIC;
	 SIGNAL  n0lO1l :	STD_LOGIC;
	 SIGNAL  n0lO1O :	STD_LOGIC;
	 SIGNAL  n0lOii :	STD_LOGIC;
	 SIGNAL  n0lOil :	STD_LOGIC;
	 SIGNAL  n0lOiO :	STD_LOGIC;
	 SIGNAL  n0lOli :	STD_LOGIC;
	 SIGNAL  n0lOll :	STD_LOGIC;
	 SIGNAL  n0lOlO :	STD_LOGIC;
	 SIGNAL  n0lOOi :	STD_LOGIC;
	 SIGNAL  n0lOOl :	STD_LOGIC;
	 SIGNAL  n0lOOO :	STD_LOGIC;
	 SIGNAL  n0O00i :	STD_LOGIC;
	 SIGNAL  n0O00l :	STD_LOGIC;
	 SIGNAL  n0O00O :	STD_LOGIC;
	 SIGNAL  n0O01i :	STD_LOGIC;
	 SIGNAL  n0O01l :	STD_LOGIC;
	 SIGNAL  n0O01O :	STD_LOGIC;
	 SIGNAL  n0O0ii :	STD_LOGIC;
	 SIGNAL  n0O0il :	STD_LOGIC;
	 SIGNAL  n0O0iO :	STD_LOGIC;
	 SIGNAL  n0O0li :	STD_LOGIC;
	 SIGNAL  n0O0ll :	STD_LOGIC;
	 SIGNAL  n0O0lO :	STD_LOGIC;
	 SIGNAL  n0O0Oi :	STD_LOGIC;
	 SIGNAL  n0O0Ol :	STD_LOGIC;
	 SIGNAL  n0O0OO :	STD_LOGIC;
	 SIGNAL  n0O10i :	STD_LOGIC;
	 SIGNAL  n0O10l :	STD_LOGIC;
	 SIGNAL  n0O10O :	STD_LOGIC;
	 SIGNAL  n0O11i :	STD_LOGIC;
	 SIGNAL  n0O11l :	STD_LOGIC;
	 SIGNAL  n0O11O :	STD_LOGIC;
	 SIGNAL  n0O1ii :	STD_LOGIC;
	 SIGNAL  n0O1il :	STD_LOGIC;
	 SIGNAL  n0O1iO :	STD_LOGIC;
	 SIGNAL  n0O1li :	STD_LOGIC;
	 SIGNAL  n0O1ll :	STD_LOGIC;
	 SIGNAL  n0O1lO :	STD_LOGIC;
	 SIGNAL  n0O1Oi :	STD_LOGIC;
	 SIGNAL  n0O1Ol :	STD_LOGIC;
	 SIGNAL  n0O1OO :	STD_LOGIC;
	 SIGNAL  n0Oi0i :	STD_LOGIC;
	 SIGNAL  n0Oi0l :	STD_LOGIC;
	 SIGNAL  n0Oi0O :	STD_LOGIC;
	 SIGNAL  n0Oi1i :	STD_LOGIC;
	 SIGNAL  n0Oi1l :	STD_LOGIC;
	 SIGNAL  n0Oi1O :	STD_LOGIC;
	 SIGNAL  n0Oiii :	STD_LOGIC;
	 SIGNAL  n0Oiil :	STD_LOGIC;
	 SIGNAL  n0OiiO :	STD_LOGIC;
	 SIGNAL  n0Oili :	STD_LOGIC;
	 SIGNAL  n0Oill :	STD_LOGIC;
	 SIGNAL  n0OilO :	STD_LOGIC;
	 SIGNAL  n0OiOi :	STD_LOGIC;
	 SIGNAL  n0OiOl :	STD_LOGIC;
	 SIGNAL  n0OiOO :	STD_LOGIC;
	 SIGNAL  n0Ol0i :	STD_LOGIC;
	 SIGNAL  n0Ol0l :	STD_LOGIC;
	 SIGNAL  n0Ol0O :	STD_LOGIC;
	 SIGNAL  n0Ol1i :	STD_LOGIC;
	 SIGNAL  n0Ol1l :	STD_LOGIC;
	 SIGNAL  n0Ol1O :	STD_LOGIC;
	 SIGNAL  n0Olii :	STD_LOGIC;
	 SIGNAL  n0Olil :	STD_LOGIC;
	 SIGNAL  n0OliO :	STD_LOGIC;
	 SIGNAL  n0Olli :	STD_LOGIC;
	 SIGNAL  n0Olll :	STD_LOGIC;
	 SIGNAL  n0OllO :	STD_LOGIC;
	 SIGNAL  n0OlOi :	STD_LOGIC;
	 SIGNAL  n0OlOl :	STD_LOGIC;
	 SIGNAL  n0OlOO :	STD_LOGIC;
	 SIGNAL  n0OO0i :	STD_LOGIC;
	 SIGNAL  n0OO0l :	STD_LOGIC;
	 SIGNAL  n0OO0O :	STD_LOGIC;
	 SIGNAL  n0OO1i :	STD_LOGIC;
	 SIGNAL  n0OO1l :	STD_LOGIC;
	 SIGNAL  n0OO1O :	STD_LOGIC;
	 SIGNAL  n0OOii :	STD_LOGIC;
	 SIGNAL  n0OOil :	STD_LOGIC;
	 SIGNAL  n0OOiO :	STD_LOGIC;
	 SIGNAL  n0OOli :	STD_LOGIC;
	 SIGNAL  n0OOll :	STD_LOGIC;
	 SIGNAL  n0OOlO :	STD_LOGIC;
	 SIGNAL  n0OOOi :	STD_LOGIC;
	 SIGNAL  n0OOOl :	STD_LOGIC;
	 SIGNAL  n0OOOO :	STD_LOGIC;
	 SIGNAL  ni000i :	STD_LOGIC;
	 SIGNAL  ni000l :	STD_LOGIC;
	 SIGNAL  ni000O :	STD_LOGIC;
	 SIGNAL  ni001i :	STD_LOGIC;
	 SIGNAL  ni001l :	STD_LOGIC;
	 SIGNAL  ni001O :	STD_LOGIC;
	 SIGNAL  ni00ii :	STD_LOGIC;
	 SIGNAL  ni00il :	STD_LOGIC;
	 SIGNAL  ni00iO :	STD_LOGIC;
	 SIGNAL  ni00li :	STD_LOGIC;
	 SIGNAL  ni00ll :	STD_LOGIC;
	 SIGNAL  ni00lO :	STD_LOGIC;
	 SIGNAL  ni00Oi :	STD_LOGIC;
	 SIGNAL  ni00Ol :	STD_LOGIC;
	 SIGNAL  ni00OO :	STD_LOGIC;
	 SIGNAL  ni010i :	STD_LOGIC;
	 SIGNAL  ni010l :	STD_LOGIC;
	 SIGNAL  ni010O :	STD_LOGIC;
	 SIGNAL  ni011i :	STD_LOGIC;
	 SIGNAL  ni011l :	STD_LOGIC;
	 SIGNAL  ni011O :	STD_LOGIC;
	 SIGNAL  ni01ii :	STD_LOGIC;
	 SIGNAL  ni01il :	STD_LOGIC;
	 SIGNAL  ni01iO :	STD_LOGIC;
	 SIGNAL  ni01li :	STD_LOGIC;
	 SIGNAL  ni01ll :	STD_LOGIC;
	 SIGNAL  ni01lO :	STD_LOGIC;
	 SIGNAL  ni01Oi :	STD_LOGIC;
	 SIGNAL  ni01Ol :	STD_LOGIC;
	 SIGNAL  ni01OO :	STD_LOGIC;
	 SIGNAL  ni0i0i :	STD_LOGIC;
	 SIGNAL  ni0i0l :	STD_LOGIC;
	 SIGNAL  ni0i0O :	STD_LOGIC;
	 SIGNAL  ni0i1i :	STD_LOGIC;
	 SIGNAL  ni0i1l :	STD_LOGIC;
	 SIGNAL  ni0i1O :	STD_LOGIC;
	 SIGNAL  ni0iii :	STD_LOGIC;
	 SIGNAL  ni0iil :	STD_LOGIC;
	 SIGNAL  ni0iiO :	STD_LOGIC;
	 SIGNAL  ni0ili :	STD_LOGIC;
	 SIGNAL  ni0ill :	STD_LOGIC;
	 SIGNAL  ni0ilO :	STD_LOGIC;
	 SIGNAL  ni0iOi :	STD_LOGIC;
	 SIGNAL  ni0iOl :	STD_LOGIC;
	 SIGNAL  ni0iOO :	STD_LOGIC;
	 SIGNAL  ni0l0i :	STD_LOGIC;
	 SIGNAL  ni0l0l :	STD_LOGIC;
	 SIGNAL  ni0l0O :	STD_LOGIC;
	 SIGNAL  ni0l1i :	STD_LOGIC;
	 SIGNAL  ni0l1l :	STD_LOGIC;
	 SIGNAL  ni0l1O :	STD_LOGIC;
	 SIGNAL  ni0lii :	STD_LOGIC;
	 SIGNAL  ni0lil :	STD_LOGIC;
	 SIGNAL  ni0liO :	STD_LOGIC;
	 SIGNAL  ni0lli :	STD_LOGIC;
	 SIGNAL  ni0lll :	STD_LOGIC;
	 SIGNAL  ni0llO :	STD_LOGIC;
	 SIGNAL  ni0lOi :	STD_LOGIC;
	 SIGNAL  ni0lOl :	STD_LOGIC;
	 SIGNAL  ni0lOO :	STD_LOGIC;
	 SIGNAL  ni0O0i :	STD_LOGIC;
	 SIGNAL  ni0O0l :	STD_LOGIC;
	 SIGNAL  ni0O0O :	STD_LOGIC;
	 SIGNAL  ni0O1i :	STD_LOGIC;
	 SIGNAL  ni0O1l :	STD_LOGIC;
	 SIGNAL  ni0O1O :	STD_LOGIC;
	 SIGNAL  ni0Oii :	STD_LOGIC;
	 SIGNAL  ni0Oil :	STD_LOGIC;
	 SIGNAL  ni0OiO :	STD_LOGIC;
	 SIGNAL  ni0Oli :	STD_LOGIC;
	 SIGNAL  ni0Oll :	STD_LOGIC;
	 SIGNAL  ni0OlO :	STD_LOGIC;
	 SIGNAL  ni0OOi :	STD_LOGIC;
	 SIGNAL  ni0OOl :	STD_LOGIC;
	 SIGNAL  ni0OOO :	STD_LOGIC;
	 SIGNAL  ni100i :	STD_LOGIC;
	 SIGNAL  ni100l :	STD_LOGIC;
	 SIGNAL  ni100O :	STD_LOGIC;
	 SIGNAL  ni101i :	STD_LOGIC;
	 SIGNAL  ni101l :	STD_LOGIC;
	 SIGNAL  ni101O :	STD_LOGIC;
	 SIGNAL  ni10ii :	STD_LOGIC;
	 SIGNAL  ni10il :	STD_LOGIC;
	 SIGNAL  ni10iO :	STD_LOGIC;
	 SIGNAL  ni10li :	STD_LOGIC;
	 SIGNAL  ni10ll :	STD_LOGIC;
	 SIGNAL  ni10lO :	STD_LOGIC;
	 SIGNAL  ni10Oi :	STD_LOGIC;
	 SIGNAL  ni10Ol :	STD_LOGIC;
	 SIGNAL  ni10OO :	STD_LOGIC;
	 SIGNAL  ni110i :	STD_LOGIC;
	 SIGNAL  ni110l :	STD_LOGIC;
	 SIGNAL  ni110O :	STD_LOGIC;
	 SIGNAL  ni111i :	STD_LOGIC;
	 SIGNAL  ni111l :	STD_LOGIC;
	 SIGNAL  ni111O :	STD_LOGIC;
	 SIGNAL  ni11ii :	STD_LOGIC;
	 SIGNAL  ni11il :	STD_LOGIC;
	 SIGNAL  ni11iO :	STD_LOGIC;
	 SIGNAL  ni11li :	STD_LOGIC;
	 SIGNAL  ni11ll :	STD_LOGIC;
	 SIGNAL  ni11lO :	STD_LOGIC;
	 SIGNAL  ni11Oi :	STD_LOGIC;
	 SIGNAL  ni11Ol :	STD_LOGIC;
	 SIGNAL  ni11OO :	STD_LOGIC;
	 SIGNAL  ni1i0i :	STD_LOGIC;
	 SIGNAL  ni1i0l :	STD_LOGIC;
	 SIGNAL  ni1i0O :	STD_LOGIC;
	 SIGNAL  ni1i1i :	STD_LOGIC;
	 SIGNAL  ni1i1l :	STD_LOGIC;
	 SIGNAL  ni1i1O :	STD_LOGIC;
	 SIGNAL  ni1iii :	STD_LOGIC;
	 SIGNAL  ni1iil :	STD_LOGIC;
	 SIGNAL  ni1iiO :	STD_LOGIC;
	 SIGNAL  ni1ili :	STD_LOGIC;
	 SIGNAL  ni1ill :	STD_LOGIC;
	 SIGNAL  ni1ilO :	STD_LOGIC;
	 SIGNAL  ni1iOi :	STD_LOGIC;
	 SIGNAL  ni1iOl :	STD_LOGIC;
	 SIGNAL  ni1iOO :	STD_LOGIC;
	 SIGNAL  ni1l0i :	STD_LOGIC;
	 SIGNAL  ni1l0l :	STD_LOGIC;
	 SIGNAL  ni1l0O :	STD_LOGIC;
	 SIGNAL  ni1l1i :	STD_LOGIC;
	 SIGNAL  ni1l1l :	STD_LOGIC;
	 SIGNAL  ni1l1O :	STD_LOGIC;
	 SIGNAL  ni1lii :	STD_LOGIC;
	 SIGNAL  ni1lil :	STD_LOGIC;
	 SIGNAL  ni1liO :	STD_LOGIC;
	 SIGNAL  ni1lli :	STD_LOGIC;
	 SIGNAL  ni1lll :	STD_LOGIC;
	 SIGNAL  ni1llO :	STD_LOGIC;
	 SIGNAL  ni1lOi :	STD_LOGIC;
	 SIGNAL  ni1lOl :	STD_LOGIC;
	 SIGNAL  ni1lOO :	STD_LOGIC;
	 SIGNAL  ni1O0i :	STD_LOGIC;
	 SIGNAL  ni1O0l :	STD_LOGIC;
	 SIGNAL  ni1O0O :	STD_LOGIC;
	 SIGNAL  ni1O1i :	STD_LOGIC;
	 SIGNAL  ni1O1l :	STD_LOGIC;
	 SIGNAL  ni1O1O :	STD_LOGIC;
	 SIGNAL  ni1Oii :	STD_LOGIC;
	 SIGNAL  ni1Oil :	STD_LOGIC;
	 SIGNAL  ni1OiO :	STD_LOGIC;
	 SIGNAL  ni1Oli :	STD_LOGIC;
	 SIGNAL  ni1Oll :	STD_LOGIC;
	 SIGNAL  ni1OlO :	STD_LOGIC;
	 SIGNAL  ni1OOi :	STD_LOGIC;
	 SIGNAL  ni1OOl :	STD_LOGIC;
	 SIGNAL  ni1OOO :	STD_LOGIC;
	 SIGNAL  nii00i :	STD_LOGIC;
	 SIGNAL  nii00l :	STD_LOGIC;
	 SIGNAL  nii00O :	STD_LOGIC;
	 SIGNAL  nii01i :	STD_LOGIC;
	 SIGNAL  nii01l :	STD_LOGIC;
	 SIGNAL  nii01O :	STD_LOGIC;
	 SIGNAL  nii0ii :	STD_LOGIC;
	 SIGNAL  nii0il :	STD_LOGIC;
	 SIGNAL  nii0iO :	STD_LOGIC;
	 SIGNAL  nii0li :	STD_LOGIC;
	 SIGNAL  nii0ll :	STD_LOGIC;
	 SIGNAL  nii0lO :	STD_LOGIC;
	 SIGNAL  nii0Oi :	STD_LOGIC;
	 SIGNAL  nii0Ol :	STD_LOGIC;
	 SIGNAL  nii0OO :	STD_LOGIC;
	 SIGNAL  nii10i :	STD_LOGIC;
	 SIGNAL  nii10l :	STD_LOGIC;
	 SIGNAL  nii10O :	STD_LOGIC;
	 SIGNAL  nii11i :	STD_LOGIC;
	 SIGNAL  nii11l :	STD_LOGIC;
	 SIGNAL  nii11O :	STD_LOGIC;
	 SIGNAL  nii1ii :	STD_LOGIC;
	 SIGNAL  nii1il :	STD_LOGIC;
	 SIGNAL  nii1iO :	STD_LOGIC;
	 SIGNAL  nii1li :	STD_LOGIC;
	 SIGNAL  nii1ll :	STD_LOGIC;
	 SIGNAL  nii1lO :	STD_LOGIC;
	 SIGNAL  nii1Oi :	STD_LOGIC;
	 SIGNAL  nii1Ol :	STD_LOGIC;
	 SIGNAL  nii1OO :	STD_LOGIC;
	 SIGNAL  niii0i :	STD_LOGIC;
	 SIGNAL  niii0l :	STD_LOGIC;
	 SIGNAL  niii0O :	STD_LOGIC;
	 SIGNAL  niii1i :	STD_LOGIC;
	 SIGNAL  niii1l :	STD_LOGIC;
	 SIGNAL  niii1O :	STD_LOGIC;
	 SIGNAL  niiiii :	STD_LOGIC;
	 SIGNAL  niiiil :	STD_LOGIC;
	 SIGNAL  niiiiO :	STD_LOGIC;
	 SIGNAL  niiili :	STD_LOGIC;
	 SIGNAL  niiill :	STD_LOGIC;
	 SIGNAL  niiilO :	STD_LOGIC;
	 SIGNAL  niiiOi :	STD_LOGIC;
	 SIGNAL  niiiOl :	STD_LOGIC;
	 SIGNAL  niiiOO :	STD_LOGIC;
	 SIGNAL  niil0i :	STD_LOGIC;
	 SIGNAL  niil0l :	STD_LOGIC;
	 SIGNAL  niil0O :	STD_LOGIC;
	 SIGNAL  niil1i :	STD_LOGIC;
	 SIGNAL  niil1l :	STD_LOGIC;
	 SIGNAL  niil1O :	STD_LOGIC;
	 SIGNAL  niilii :	STD_LOGIC;
	 SIGNAL  niilil :	STD_LOGIC;
	 SIGNAL  niiliO :	STD_LOGIC;
	 SIGNAL  niilli :	STD_LOGIC;
	 SIGNAL  niilll :	STD_LOGIC;
	 SIGNAL  niillO :	STD_LOGIC;
	 SIGNAL  niilOi :	STD_LOGIC;
	 SIGNAL  niilOl :	STD_LOGIC;
	 SIGNAL  niilOO :	STD_LOGIC;
	 SIGNAL  niiO0i :	STD_LOGIC;
	 SIGNAL  niiO0l :	STD_LOGIC;
	 SIGNAL  niiO0O :	STD_LOGIC;
	 SIGNAL  niiO1i :	STD_LOGIC;
	 SIGNAL  niiO1l :	STD_LOGIC;
	 SIGNAL  niiO1O :	STD_LOGIC;
	 SIGNAL  niiOii :	STD_LOGIC;
	 SIGNAL  niiOil :	STD_LOGIC;
	 SIGNAL  niiOiO :	STD_LOGIC;
	 SIGNAL  niiOli :	STD_LOGIC;
	 SIGNAL  niiOll :	STD_LOGIC;
	 SIGNAL  niiOlO :	STD_LOGIC;
	 SIGNAL  niiOOi :	STD_LOGIC;
	 SIGNAL  niiOOl :	STD_LOGIC;
	 SIGNAL  niiOOO :	STD_LOGIC;
	 SIGNAL  nil00i :	STD_LOGIC;
	 SIGNAL  nil00l :	STD_LOGIC;
	 SIGNAL  nil00O :	STD_LOGIC;
	 SIGNAL  nil01i :	STD_LOGIC;
	 SIGNAL  nil01l :	STD_LOGIC;
	 SIGNAL  nil01O :	STD_LOGIC;
	 SIGNAL  nil0ii :	STD_LOGIC;
	 SIGNAL  nil0il :	STD_LOGIC;
	 SIGNAL  nil0iO :	STD_LOGIC;
	 SIGNAL  nil0li :	STD_LOGIC;
	 SIGNAL  nil0ll :	STD_LOGIC;
	 SIGNAL  nil0lO :	STD_LOGIC;
	 SIGNAL  nil0Oi :	STD_LOGIC;
	 SIGNAL  nil0Ol :	STD_LOGIC;
	 SIGNAL  nil0OO :	STD_LOGIC;
	 SIGNAL  nil10i :	STD_LOGIC;
	 SIGNAL  nil10l :	STD_LOGIC;
	 SIGNAL  nil10O :	STD_LOGIC;
	 SIGNAL  nil11i :	STD_LOGIC;
	 SIGNAL  nil11l :	STD_LOGIC;
	 SIGNAL  nil11O :	STD_LOGIC;
	 SIGNAL  nil1ii :	STD_LOGIC;
	 SIGNAL  nil1il :	STD_LOGIC;
	 SIGNAL  nil1iO :	STD_LOGIC;
	 SIGNAL  nil1li :	STD_LOGIC;
	 SIGNAL  nil1ll :	STD_LOGIC;
	 SIGNAL  nil1lO :	STD_LOGIC;
	 SIGNAL  nil1Oi :	STD_LOGIC;
	 SIGNAL  nil1Ol :	STD_LOGIC;
	 SIGNAL  nil1OO :	STD_LOGIC;
	 SIGNAL  nili0i :	STD_LOGIC;
	 SIGNAL  nili0l :	STD_LOGIC;
	 SIGNAL  nili0O :	STD_LOGIC;
	 SIGNAL  nili1i :	STD_LOGIC;
	 SIGNAL  nili1l :	STD_LOGIC;
	 SIGNAL  nili1O :	STD_LOGIC;
	 SIGNAL  niliii :	STD_LOGIC;
	 SIGNAL  niliil :	STD_LOGIC;
	 SIGNAL  niliiO :	STD_LOGIC;
	 SIGNAL  nilili :	STD_LOGIC;
	 SIGNAL  nilill :	STD_LOGIC;
	 SIGNAL  nililO :	STD_LOGIC;
	 SIGNAL  niliOi :	STD_LOGIC;
	 SIGNAL  niliOl :	STD_LOGIC;
	 SIGNAL  niliOO :	STD_LOGIC;
	 SIGNAL  nill0i :	STD_LOGIC;
	 SIGNAL  nill0l :	STD_LOGIC;
	 SIGNAL  nill0O :	STD_LOGIC;
	 SIGNAL  nill1i :	STD_LOGIC;
	 SIGNAL  nill1l :	STD_LOGIC;
	 SIGNAL  nill1O :	STD_LOGIC;
	 SIGNAL  nillii :	STD_LOGIC;
	 SIGNAL  nillil :	STD_LOGIC;
	 SIGNAL  nilliO :	STD_LOGIC;
	 SIGNAL  nillli :	STD_LOGIC;
	 SIGNAL  nillll :	STD_LOGIC;
	 SIGNAL  nilllO :	STD_LOGIC;
	 SIGNAL  nillOi :	STD_LOGIC;
	 SIGNAL  nillOl :	STD_LOGIC;
	 SIGNAL  nillOO :	STD_LOGIC;
	 SIGNAL  nilO0i :	STD_LOGIC;
	 SIGNAL  nilO0l :	STD_LOGIC;
	 SIGNAL  nilO0O :	STD_LOGIC;
	 SIGNAL  nilO1i :	STD_LOGIC;
	 SIGNAL  nilO1l :	STD_LOGIC;
	 SIGNAL  nilO1O :	STD_LOGIC;
	 SIGNAL  nilOii :	STD_LOGIC;
	 SIGNAL  nilOil :	STD_LOGIC;
	 SIGNAL  nilOiO :	STD_LOGIC;
	 SIGNAL  nilOli :	STD_LOGIC;
	 SIGNAL  nilOll :	STD_LOGIC;
	 SIGNAL  nilOlO :	STD_LOGIC;
	 SIGNAL  nilOOi :	STD_LOGIC;
	 SIGNAL  nilOOl :	STD_LOGIC;
	 SIGNAL  nilOOO :	STD_LOGIC;
	 SIGNAL  niO00O :	STD_LOGIC;
	 SIGNAL  niO01l :	STD_LOGIC;
	 SIGNAL  niO0ii :	STD_LOGIC;
	 SIGNAL  niO10i :	STD_LOGIC;
	 SIGNAL  niO10l :	STD_LOGIC;
	 SIGNAL  niO11i :	STD_LOGIC;
	 SIGNAL  niO11l :	STD_LOGIC;
	 SIGNAL  niO11O :	STD_LOGIC;
	 SIGNAL  niOi1O :	STD_LOGIC;
	 SIGNAL  w_nlllO1019w :	STD_LOGIC;
	 SIGNAL  w_nlllO1071w :	STD_LOGIC;
	 SIGNAL  w_nlllO1123w :	STD_LOGIC;
	 SIGNAL  w_nlllO1175w :	STD_LOGIC;
	 SIGNAL  w_nlllO1227w :	STD_LOGIC;
	 SIGNAL  w_nlllO1279w :	STD_LOGIC;
	 SIGNAL  w_nlllO1331w :	STD_LOGIC;
	 SIGNAL  w_nlllO1383w :	STD_LOGIC;
	 SIGNAL  w_nlllO915w :	STD_LOGIC;
	 SIGNAL  w_nlllO967w :	STD_LOGIC;
	 SIGNAL  wire_w_datain_range28w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datain_range17w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datain_range10w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datain_range52w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datain_range38w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datain_range75w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datain_range62w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
 BEGIN

	wire_gnd <= '0';
	wire_w_lg_w_lg_n00i0O1485w1486w(0) <= wire_w_lg_n00i0O1485w(0) AND n00i0i;
	wire_w_lg_w_lg_n00iil1476w1477w(0) <= wire_w_lg_n00iil1476w(0) AND n00i0l;
	wire_w_lg_n00iii1471w(0) <= n00iii AND wire_w_lg_n00i0O1470w(0);
	wire_w_lg_n00iiO1482w(0) <= n00iiO AND wire_w_lg_n00iil1481w(0);
	wire_w_lg_w_datain_range28w1551w(0) <= wire_w_datain_range28w(0) AND wire_w_lg_w_datain_range17w1525w(0);
	wire_w_lg_n00i0O1470w(0) <= NOT n00i0O;
	wire_w_lg_n00iil1481w(0) <= NOT n00iil;
	wire_w_lg_niO01l165w(0) <= NOT niO01l;
	wire_w_lg_w_datain_range17w1525w(0) <= NOT wire_w_datain_range17w(0);
	wire_w_lg_n00i0O1485w(0) <= n00i0O OR wire_nilO_w_lg_w_o_range1473w1484w(0);
	wire_w_lg_n00iil1476w(0) <= n00iil OR wire_nilO_w_lg_w_o_range1472w1475w(0);
	wire_w_lg_niO00O1454w(0) <= niO00O OR wire_niOl_w_lg_w_lg_dataout1442w1453w(0);
	wire_w_lg_niO0ii1448w(0) <= niO0ii OR wire_niOl_w_lg_dataout1447w(0);
	dataout <= ( nll1O & nll1l & nll1i & nliOO & nliOl & nliOi & nlilO & nlill);
	kerr <= nllii;
	kout <= nllil;
	n00i0i <= wire_nili_w_lg_w_o_range1506w1514w(0);
	n00i0l <= wire_nili_w_lg_w_o_range1505w1513w(0);
	n00i0O <= (wire_nilO_o(0) AND wire_nilO_o(1));
	n00i1i <= (((((NOT datain(4)) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n00i1l <= ((((datain(4) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	n00iii <= (wire_nili_w_lg_w_o_range1505w1509w(0) AND wire_nili_w_lg_w_o_range1506w1510w(0));
	n00iil <= (wire_nilO_w_lg_w_o_range1472w1483w(0) AND wire_nilO_w_lg_w_o_range1473w1474w(0));
	n00iiO <= (wire_nili_o(0) AND wire_nili_o(1));
	n00ilO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	n00iOi <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n00iOl <= ((((((((((((((((((((((((((((((((((((((((((((((((((w_nlllO1383w OR n0i00i) OR n0i01O) OR n0i01l) OR n0i01i) OR n0i1OO) OR n0i1Ol) OR n0i1Oi) OR n0i1lO) OR n0i1ll) OR n0i1li) OR n0i1iO) OR n0i1il) OR n0i1ii) OR n0i10O) OR n0i10l) OR n0i10i) OR n0i11O) OR n0i11l) OR n0i11i) OR n00OOO) OR n00OOl) OR n00OOi) OR n00OlO) OR n00Oll) OR n00Oli) OR n00OiO) OR n00Oil) OR n00Oii) OR n00O0O) OR n00O0l) OR n00O0i) OR n00O1O) OR n00O1l) OR n00O1i) OR n00lOO) OR n00lOl) OR n00lOi) OR n00llO) OR n00lll) OR n00lli) OR n00liO) OR n00lil) OR n00lii) OR n00l0O) OR n00l0l) OR n00l0i) OR n00l1O) OR n00l1l) OR n00l1i) OR n00iOO);
	n00iOO <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n00l0i <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n00l0l <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n00l0O <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n00l1i <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n00l1l <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n00l1O <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n00lii <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n00lil <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n00liO <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n00lli <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n00lll <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n00llO <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n00lOi <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n00lOl <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n00lOO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n00O0i <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n00O0l <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n00O0O <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n00O1i <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n00O1l <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n00O1O <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n00Oii <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n00Oil <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n00OiO <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n00Oli <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n00Oll <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n00OlO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n00OOi <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n00OOl <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n00OOO <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n0i00i <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n0i00l <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n0i00O <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n0i01i <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n0i01l <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n0i01O <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n0i0ii <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n0i0il <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n0i0iO <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n0i0li <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n0i0ll <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n0i0lO <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n0i0Oi <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n0i0Ol <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n0i0OO <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n0i10i <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n0i10l <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n0i10O <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n0i11i <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n0i11l <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n0i11O <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n0i1ii <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n0i1il <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n0i1iO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n0i1li <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n0i1ll <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n0i1lO <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n0i1Oi <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n0i1Ol <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n0i1OO <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n0ii0i <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0ii0l <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0ii0O <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0ii1i <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n0ii1l <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n0ii1O <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND datain(9));
	n0iiii <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0iiil <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0iiiO <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0iili <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0iill <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0iilO <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0iiOi <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0iiOl <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0iiOO <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0il0i <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0il0l <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0il0O <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0il1i <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0il1l <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0il1O <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0ilii <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0ilil <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0iliO <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0illi <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0illl <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0illO <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0ilOi <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0ilOl <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0ilOO <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0iO0i <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0iO0l <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0iO0O <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0iO1i <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0iO1l <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0iO1O <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0iOii <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0iOil <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0iOiO <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0iOli <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0iOll <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0iOlO <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0iOOi <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0iOOl <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0iOOO <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0l00i <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0l00l <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0l00O <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0l01i <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0l01l <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0l01O <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0l0ii <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0l0il <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0l0iO <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0l0li <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0l0ll <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0l0lO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0l0Oi <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0l0Ol <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0l0OO <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0l10i <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0l10l <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0l10O <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0l11i <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0l11l <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0l11O <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0l1ii <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0l1il <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0l1iO <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0l1li <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0l1ll <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0l1lO <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0l1Oi <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0l1Ol <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND datain(9));
	n0l1OO <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0li0i <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0li0l <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0li0O <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0li1i <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0li1l <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0li1O <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0liii <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0liil <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0liiO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0lili <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0lill <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0lilO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0liOi <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0liOl <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0liOO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0ll0i <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0ll0l <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0ll0O <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0ll1i <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0ll1l <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0ll1O <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0llii <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0llil <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0lliO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0llli <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0llll <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0lllO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0llOi <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0llOl <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0llOO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0lO0i <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0lO0l <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0lO0O <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0lO1i <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0lO1l <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0lO1O <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0lOii <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0lOil <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0lOiO <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0lOli <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0lOll <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0lOlO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0lOOi <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0lOOl <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0lOOO <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0O00i <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0O00l <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0O00O <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0O01i <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0O01l <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0O01O <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0O0ii <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0O0il <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0O0iO <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0O0li <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0O0ll <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0O0lO <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0O0Oi <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0O0Ol <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0O0OO <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0O10i <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0O10l <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0O10O <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0O11i <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND datain(9));
	n0O11l <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0O11O <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0O1ii <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0O1il <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0O1iO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0O1li <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0O1ll <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0O1lO <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0O1Oi <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0O1Ol <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0O1OO <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0Oi0i <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0Oi0l <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0Oi0O <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0Oi1i <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0Oi1l <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0Oi1O <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0Oiii <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0Oiil <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0OiiO <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0Oili <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0Oill <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0OilO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0OiOi <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0OiOl <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0OiOO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0Ol0i <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	n0Ol0l <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	n0Ol0O <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	n0Ol1i <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0Ol1l <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0Ol1O <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND datain(9));
	n0Olii <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	n0Olil <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	n0OliO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	n0Olli <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	n0Olll <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	n0OllO <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	n0OlOi <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	n0OlOl <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	n0OlOO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	n0OO0i <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	n0OO0l <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	n0OO0O <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	n0OO1i <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	n0OO1l <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	n0OO1O <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	n0OOii <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	n0OOil <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	n0OOiO <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	n0OOli <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	n0OOll <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	n0OOlO <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	n0OOOi <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	n0OOOl <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	n0OOOO <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	ni000i <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni000l <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni000O <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni001i <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni001l <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni001O <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni00ii <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni00il <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni00iO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni00li <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni00ll <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni00lO <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni00Oi <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni00Ol <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni00OO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni010i <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni010l <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni010O <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni011i <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni011l <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni011O <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni01ii <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni01il <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni01iO <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni01li <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni01ll <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni01lO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni01Oi <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni01Ol <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni01OO <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni0i0i <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni0i0l <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni0i0O <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni0i1i <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni0i1l <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni0i1O <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni0iii <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni0iil <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni0iiO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni0ili <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni0ill <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni0ilO <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni0iOi <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni0iOl <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni0iOO <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni0l0i <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	ni0l0l <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	ni0l0O <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	ni0l1i <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni0l1l <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND datain(8)) AND (NOT datain(9)));
	ni0l1O <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	ni0lii <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	ni0lil <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	ni0liO <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	ni0lli <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	ni0lll <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	ni0llO <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	ni0lOi <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	ni0lOl <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	ni0lOO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	ni0O0i <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	ni0O0l <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	ni0O0O <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	ni0O1i <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	ni0O1l <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	ni0O1O <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	ni0Oii <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	ni0Oil <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	ni0OiO <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	ni0Oli <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	ni0Oll <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	ni0OlO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	ni0OOi <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	ni0OOl <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	ni0OOO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	ni100i <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	ni100l <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	ni100O <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	ni101i <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	ni101l <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	ni101O <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	ni10ii <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	ni10il <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	ni10iO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	ni10li <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni10ll <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni10lO <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni10Oi <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni10Ol <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni10OO <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni110i <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	ni110l <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	ni110O <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	ni111i <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	ni111l <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	ni111O <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	ni11ii <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	ni11il <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	ni11iO <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	ni11li <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	ni11ll <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	ni11lO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	ni11Oi <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	ni11Ol <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	ni11OO <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND datain(9));
	ni1i0i <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1i0l <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1i0O <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1i1i <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1i1l <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1i1O <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1iii <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1iil <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1iiO <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1ili <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1ill <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1ilO <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1iOi <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1iOl <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1iOO <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1l0i <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1l0l <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1l0O <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1l1i <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1l1l <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1l1O <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1lii <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1lil <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1liO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1lli <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1lll <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1llO <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1lOi <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1lOl <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1lOO <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1O0i <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1O0l <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1O0O <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1O1i <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1O1l <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1O1O <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1Oii <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1Oil <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1OiO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1Oli <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1Oll <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1OlO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1OOi <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1OOl <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	ni1OOO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND datain(8)) AND (NOT datain(9)));
	nii00i <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	nii00l <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	nii00O <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	nii01i <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	nii01l <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	nii01O <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	nii0ii <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	nii0il <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	nii0iO <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	nii0li <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	nii0ll <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	nii0lO <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	nii0Oi <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	nii0Ol <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	nii0OO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	nii10i <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	nii10l <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	nii10O <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	nii11i <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	nii11l <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	nii11O <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	nii1ii <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	nii1il <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	nii1iO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	nii1li <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	nii1ll <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	nii1lO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	nii1Oi <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	nii1Ol <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	nii1OO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	niii0i <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	niii0l <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niii0O <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niii1i <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	niii1l <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	niii1O <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
	niiiii <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niiiil <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niiiiO <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niiili <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niiill <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niiilO <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niiiOi <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niiiOl <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niiiOO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niil0i <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niil0l <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niil0O <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niil1i <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niil1l <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niil1O <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niilii <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niilil <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niiliO <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niilli <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niilll <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niillO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niilOi <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niilOl <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niilOO <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niiO0i <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niiO0l <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niiO0O <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niiO1i <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niiO1l <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niiO1O <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niiOii <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niiOil <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niiOiO <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niiOli <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niiOll <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niiOlO <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niiOOi <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niiOOl <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niiOOO <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nil00i <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nil00l <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nil00O <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nil01i <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nil01l <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nil01O <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nil0ii <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nil0il <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nil0iO <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nil0li <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nil0ll <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nil0lO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nil0Oi <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nil0Ol <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nil0OO <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nil10i <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nil10l <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nil10O <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nil11i <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nil11l <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nil11O <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nil1ii <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nil1il <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nil1iO <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nil1li <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nil1ll <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nil1lO <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nil1Oi <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nil1Ol <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nil1OO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND datain(6)) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nili0i <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nili0l <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nili0O <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nili1i <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nili1l <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nili1O <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niliii <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niliil <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niliiO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nilili <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nilill <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nililO <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niliOi <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niliOl <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niliOO <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nill0i <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nill0l <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nill0O <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nill1i <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nill1l <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND datain(5)) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nill1O <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nillii <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nillil <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nilliO <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nillli <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND datain(3)) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nillll <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nilllO <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nillOi <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nillOl <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nillOO <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nilO0i <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nilO0l <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nilO0O <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nilO1i <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nilO1l <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nilO1O <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND datain(4)) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nilOii <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nilOil <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nilOiO <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nilOli <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nilOll <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND datain(3)) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nilOlO <= (((((((((datain(0) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nilOOi <= ((((((((((NOT datain(0)) AND datain(1)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nilOOl <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	nilOOO <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niO00O <= (nliiO OR nli0O);
	niO01l <= ((((NOT datain(2)) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5)));
	niO0ii <= ((nlili OR nli0l) OR (NOT (niO0il18 XOR niO0il17)));
	niO10i <= ((((((((((NOT datain(0)) AND wire_w_lg_w_datain_range17w1525w(0)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niO10l <= '1';
	niO11i <= (((((((((datain(0) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niO11l <= ((((((((((NOT datain(0)) AND datain(1)) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niO11O <= ((((((((wire_w_lg_w_datain_range28w1551w(0) AND (NOT datain(2))) AND (NOT datain(3))) AND (NOT datain(4))) AND (NOT datain(5))) AND (NOT datain(6))) AND (NOT datain(7))) AND (NOT datain(8))) AND (NOT datain(9)));
	niOi1O <= '0';
	rdcascade <= wire_n1Oi_dataout;
	rderr <= nll0i;
	rdout <= nll0O;
	valid <= nlliO;
	w_nlllO1019w <= (((((((((((((((((((((((((((((((((((((((((((((((((((w_nlllO967w OR niilii) OR niil0O) OR niil0l) OR niil0i) OR niil1O) OR niil1l) OR niil1i) OR niiiOO) OR niiiOl) OR niiiOi) OR niiilO) OR niiill) OR niiili) OR niiiiO) OR niiiil) OR niiiii) OR niii0O) OR niii0l) OR niii0i) OR niii1O) OR niii1l) OR niii1i) OR nii0OO) OR nii0Ol) OR nii0Oi) OR nii0lO) OR nii0ll) OR nii0li) OR nii0iO) OR nii0il) OR nii0ii) OR nii00O) OR nii00l) OR nii00i) OR nii01O) OR nii01l) OR nii01i) OR nii1OO) OR nii1Ol) OR nii1Oi) OR nii1lO) OR nii1ll) OR nii1li) OR nii1iO) OR nii1il) OR nii1ii) OR nii10O) OR nii10l) OR nii10i) OR nii11O) OR nii11l);
	w_nlllO1071w <= (((((((((((((((((((((((((((((((((((((((((((((((((((w_nlllO1019w OR nii11i) OR ni0OOO) OR ni0OOl) OR ni0OOi) OR ni0OlO) OR ni0Oll) OR ni0Oli) OR ni0OiO) OR ni0Oil) OR ni0Oii) OR ni0O0O) OR ni0O0l) OR ni0O0i) OR ni0O1O) OR ni0O1l) OR ni0O1i) OR ni0lOO) OR ni0lOl) OR ni0lOi) OR ni0llO) OR ni0lll) OR ni0lli) OR ni0liO) OR ni0lil) OR ni0lii) OR ni0l0O) OR ni0l0l) OR ni0l0i) OR ni0l1O) OR ni0l1l) OR ni0l1i) OR ni0iOO) OR ni0iOl) OR ni0iOi) OR ni0ilO) OR ni0ill) OR ni0ili) OR ni0iiO) OR ni0iil) OR ni0iii) OR ni0i0O) OR ni0i0l) OR ni0i0i) OR ni0i1O) OR ni0i1l) OR ni0i1i) OR ni00OO) OR ni00Ol) OR ni00Oi) OR ni00lO) OR ni00ll);
	w_nlllO1123w <= (((((((((((((((((((((((((((((((((((((((((((((((((((w_nlllO1071w OR ni00li) OR ni00iO) OR ni00il) OR ni00ii) OR ni000O) OR ni000l) OR ni000i) OR ni001O) OR ni001l) OR ni001i) OR ni01OO) OR ni01Ol) OR ni01Oi) OR ni01lO) OR ni01ll) OR ni01li) OR ni01iO) OR ni01il) OR ni01ii) OR ni010O) OR ni010l) OR ni010i) OR ni011O) OR ni011l) OR ni011i) OR ni1OOO) OR ni1OOl) OR ni1OOi) OR ni1OlO) OR ni1Oll) OR ni1Oli) OR ni1OiO) OR ni1Oil) OR ni1Oii) OR ni1O0O) OR ni1O0l) OR ni1O0i) OR ni1O1O) OR ni1O1l) OR ni1O1i) OR ni1lOO) OR ni1lOl) OR ni1lOi) OR ni1llO) OR ni1lll) OR ni1lli) OR ni1liO) OR ni1lil) OR ni1lii) OR ni1l0O) OR ni1l0l);
	w_nlllO1175w <= (((((((((((((((((((((((((((((((((((((((((((((((((((w_nlllO1123w OR ni1l0i) OR ni1l1O) OR ni1l1l) OR ni1l1i) OR ni1iOO) OR ni1iOl) OR ni1iOi) OR ni1ilO) OR ni1ill) OR ni1ili) OR ni1iiO) OR ni1iil) OR ni1iii) OR ni1i0O) OR ni1i0l) OR ni1i0i) OR ni1i1O) OR ni1i1l) OR ni1i1i) OR ni10OO) OR ni10Ol) OR ni10Oi) OR ni10lO) OR ni10ll) OR ni10li) OR ni10iO) OR ni10il) OR ni10ii) OR ni100O) OR ni100l) OR ni100i) OR ni101O) OR ni101l) OR ni101i) OR ni11OO) OR ni11Ol) OR ni11Oi) OR ni11lO) OR ni11ll) OR ni11li) OR ni11iO) OR ni11il) OR ni11ii) OR ni110O) OR ni110l) OR ni110i) OR ni111O) OR ni111l) OR ni111i) OR n0OOOO) OR n0OOOl);
	w_nlllO1227w <= (((((((((((((((((((((((((((((((((((((((((((((((((((w_nlllO1175w OR n0OOOi) OR n0OOlO) OR n0OOll) OR n0OOli) OR n0OOiO) OR n0OOil) OR n0OOii) OR n0OO0O) OR n0OO0l) OR n0OO0i) OR n0OO1O) OR n0OO1l) OR n0OO1i) OR n0OlOO) OR n0OlOl) OR n0OlOi) OR n0OllO) OR n0Olll) OR n0Olli) OR n0OliO) OR n0Olil) OR n0Olii) OR n0Ol0O) OR n0Ol0l) OR n0Ol0i) OR n0Ol1O) OR n0Ol1l) OR n0Ol1i) OR n0OiOO) OR n0OiOl) OR n0OiOi) OR n0OilO) OR n0Oill) OR n0Oili) OR n0OiiO) OR n0Oiil) OR n0Oiii) OR n0Oi0O) OR n0Oi0l) OR n0Oi0i) OR n0Oi1O) OR n0Oi1l) OR n0Oi1i) OR n0O0OO) OR n0O0Ol) OR n0O0Oi) OR n0O0lO) OR n0O0ll) OR n0O0li) OR n0O0iO) OR n0O0il);
	w_nlllO1279w <= (((((((((((((((((((((((((((((((((((((((((((((((((((w_nlllO1227w OR n0O0ii) OR n0O00O) OR n0O00l) OR n0O00i) OR n0O01O) OR n0O01l) OR n0O01i) OR n0O1OO) OR n0O1Ol) OR n0O1Oi) OR n0O1lO) OR n0O1ll) OR n0O1li) OR n0O1iO) OR n0O1il) OR n0O1ii) OR n0O10O) OR n0O10l) OR n0O10i) OR n0O11O) OR n0O11l) OR n0O11i) OR n0lOOO) OR n0lOOl) OR n0lOOi) OR n0lOlO) OR n0lOll) OR n0lOli) OR n0lOiO) OR n0lOil) OR n0lOii) OR n0lO0O) OR n0lO0l) OR n0lO0i) OR n0lO1O) OR n0lO1l) OR n0lO1i) OR n0llOO) OR n0llOl) OR n0llOi) OR n0lllO) OR n0llll) OR n0llli) OR n0lliO) OR n0llil) OR n0llii) OR n0ll0O) OR n0ll0l) OR n0ll0i) OR n0ll1O) OR n0ll1l);
	w_nlllO1331w <= (((((((((((((((((((((((((((((((((((((((((((((((((((w_nlllO1279w OR n0ll1i) OR n0liOO) OR n0liOl) OR n0liOi) OR n0lilO) OR n0lill) OR n0lili) OR n0liiO) OR n0liil) OR n0liii) OR n0li0O) OR n0li0l) OR n0li0i) OR n0li1O) OR n0li1l) OR n0li1i) OR n0l0OO) OR n0l0Ol) OR n0l0Oi) OR n0l0lO) OR n0l0ll) OR n0l0li) OR n0l0iO) OR n0l0il) OR n0l0ii) OR n0l00O) OR n0l00l) OR n0l00i) OR n0l01O) OR n0l01l) OR n0l01i) OR n0l1OO) OR n0l1Ol) OR n0l1Oi) OR n0l1lO) OR n0l1ll) OR n0l1li) OR n0l1iO) OR n0l1il) OR n0l1ii) OR n0l10O) OR n0l10l) OR n0l10i) OR n0l11O) OR n0l11l) OR n0l11i) OR n0iOOO) OR n0iOOl) OR n0iOOi) OR n0iOlO) OR n0iOll);
	w_nlllO1383w <= (((((((((((((((((((((((((((((((((((((((((((((((((((w_nlllO1331w OR n0iOli) OR n0iOiO) OR n0iOil) OR n0iOii) OR n0iO0O) OR n0iO0l) OR n0iO0i) OR n0iO1O) OR n0iO1l) OR n0iO1i) OR n0ilOO) OR n0ilOl) OR n0ilOi) OR n0illO) OR n0illl) OR n0illi) OR n0iliO) OR n0ilil) OR n0ilii) OR n0il0O) OR n0il0l) OR n0il0i) OR n0il1O) OR n0il1l) OR n0il1i) OR n0iiOO) OR n0iiOl) OR n0iiOi) OR n0iilO) OR n0iill) OR n0iili) OR n0iiiO) OR n0iiil) OR n0iiii) OR n0ii0O) OR n0ii0l) OR n0ii0i) OR n0ii1O) OR n0ii1l) OR n0ii1i) OR n0i0OO) OR n0i0Ol) OR n0i0Oi) OR n0i0lO) OR n0i0ll) OR n0i0li) OR n0i0iO) OR n0i0il) OR n0i0ii) OR n0i00O) OR n0i00l);
	w_nlllO915w <= ((((((((((((((((((((((((((((((((((((((((((((((((((niO10i OR niO11O) OR niO11l) OR niO11i) OR nilOOO) OR nilOOl) OR nilOOi) OR nilOlO) OR nilOll) OR nilOli) OR nilOiO) OR nilOil) OR nilOii) OR nilO0O) OR nilO0l) OR nilO0i) OR nilO1O) OR nilO1l) OR nilO1i) OR nillOO) OR nillOl) OR nillOi) OR nilllO) OR nillll) OR nillli) OR nilliO) OR nillil) OR nillii) OR nill0O) OR nill0l) OR nill0i) OR nill1O) OR nill1l) OR nill1i) OR niliOO) OR niliOl) OR niliOi) OR nililO) OR nilill) OR nilili) OR niliiO) OR niliil) OR niliii) OR nili0O) OR nili0l) OR nili0i) OR nili1O) OR nili1l) OR nili1i) OR nil0OO) OR nil0Ol);
	w_nlllO967w <= (((((((((((((((((((((((((((((((((((((((((((((((((((w_nlllO915w OR nil0Oi) OR nil0lO) OR nil0ll) OR nil0li) OR nil0iO) OR nil0il) OR nil0ii) OR nil00O) OR nil00l) OR nil00i) OR nil01O) OR nil01l) OR nil01i) OR nil1OO) OR nil1Ol) OR nil1Oi) OR nil1lO) OR nil1ll) OR nil1li) OR nil1iO) OR nil1il) OR nil1ii) OR nil10O) OR nil10l) OR nil10i) OR nil11O) OR nil11l) OR nil11i) OR niiOOO) OR niiOOl) OR niiOOi) OR niiOlO) OR niiOll) OR niiOli) OR niiOiO) OR niiOil) OR niiOii) OR niiO0O) OR niiO0l) OR niiO0i) OR niiO1O) OR niiO1l) OR niiO1i) OR niilOO) OR niilOl) OR niilOi) OR niillO) OR niilll) OR niilli) OR niiliO) OR niilil);
	wire_w_datain_range28w(0) <= datain(0);
	wire_w_datain_range17w(0) <= datain(1);
	wire_w_datain_range10w(0) <= datain(2);
	wire_w_datain_range52w(0) <= datain(3);
	wire_w_datain_range38w(0) <= datain(4);
	wire_w_datain_range75w(0) <= datain(7);
	wire_w_datain_range62w(0) <= datain(8);
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN n00i1O49 <= n00i1O50;
		END IF;
		if (now = 0 ns) then
			n00i1O49 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN n00i1O50 <= n00i1O49;
		END IF;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN n00ili47 <= n00ili48;
		END IF;
		if (now = 0 ns) then
			n00ili47 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN n00ili48 <= n00ili47;
		END IF;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN n00ill45 <= n00ill46;
		END IF;
		if (now = 0 ns) then
			n00ill45 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN n00ill46 <= n00ill45;
		END IF;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO00i19 <= niO00i20;
		END IF;
		if (now = 0 ns) then
			niO00i19 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO00i20 <= niO00i19;
		END IF;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO01i23 <= niO01i24;
		END IF;
		if (now = 0 ns) then
			niO01i23 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO01i24 <= niO01i23;
		END IF;
	END PROCESS;
	wire_niO01i24_w_lg_w_lg_q162w163w(0) <= wire_niO01i24_w_lg_q162w(0) AND niO01l;
	wire_niO01i24_w_lg_q162w(0) <= niO01i24 XOR niO01i23;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO01O21 <= niO01O22;
		END IF;
		if (now = 0 ns) then
			niO01O21 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO01O22 <= niO01O21;
		END IF;
	END PROCESS;
	wire_niO01O22_w_lg_w_lg_q147w148w(0) <= wire_niO01O22_w_lg_q147w(0) AND wire_w_datain_range62w(0);
	wire_niO01O22_w_lg_q147w(0) <= niO01O22 XOR niO01O21;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO0il17 <= niO0il18;
		END IF;
		if (now = 0 ns) then
			niO0il17 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO0il18 <= niO0il17;
		END IF;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO0li15 <= niO0li16;
		END IF;
		if (now = 0 ns) then
			niO0li15 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO0li16 <= niO0li15;
		END IF;
	END PROCESS;
	wire_niO0li16_w_lg_w_lg_q119w120w(0) <= wire_niO0li16_w_lg_q119w(0) AND wire_niii_w_o_range108w(0);
	wire_niO0li16_w_lg_q119w(0) <= niO0li16 XOR niO0li15;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO0ll13 <= niO0ll14;
		END IF;
		if (now = 0 ns) then
			niO0ll13 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO0ll14 <= niO0ll13;
		END IF;
	END PROCESS;
	wire_niO0ll14_w_lg_w_lg_q116w117w(0) <= wire_niO0ll14_w_lg_q116w(0) AND wire_niii_w_o_range115w(0);
	wire_niO0ll14_w_lg_q116w(0) <= niO0ll14 XOR niO0ll13;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO0lO11 <= niO0lO12;
		END IF;
		if (now = 0 ns) then
			niO0lO11 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO0lO12 <= niO0lO11;
		END IF;
	END PROCESS;
	wire_niO0lO12_w_lg_w_lg_q112w113w(0) <= wire_niO0lO12_w_lg_q112w(0) AND wire_niii_w_o_range111w(0);
	wire_niO0lO12_w_lg_q112w(0) <= niO0lO12 XOR niO0lO11;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO0Oi10 <= niO0Oi9;
		END IF;
	END PROCESS;
	wire_niO0Oi10_w_lg_w_lg_q91w92w(0) <= wire_niO0Oi10_w_lg_q91w(0) AND wire_niil_w_o_range90w(0);
	wire_niO0Oi10_w_lg_q91w(0) <= niO0Oi10 XOR niO0Oi9;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO0Oi9 <= niO0Oi10;
		END IF;
		if (now = 0 ns) then
			niO0Oi9 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO0Ol7 <= niO0Ol8;
		END IF;
		if (now = 0 ns) then
			niO0Ol7 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO0Ol8 <= niO0Ol7;
		END IF;
	END PROCESS;
	wire_niO0Ol8_w_lg_w_lg_q76w77w(0) <= wire_niO0Ol8_w_lg_q76w(0) AND wire_w_datain_range75w(0);
	wire_niO0Ol8_w_lg_q76w(0) <= niO0Ol8 XOR niO0Ol7;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO0OO5 <= niO0OO6;
		END IF;
		if (now = 0 ns) then
			niO0OO5 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO0OO6 <= niO0OO5;
		END IF;
	END PROCESS;
	wire_niO0OO6_w_lg_w_lg_q49w50w(0) <= wire_niO0OO6_w_lg_q49w(0) AND wire_nill_w_o_range48w(0);
	wire_niO0OO6_w_lg_q49w(0) <= niO0OO6 XOR niO0OO5;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO10O43 <= niO10O44;
		END IF;
		if (now = 0 ns) then
			niO10O43 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO10O44 <= niO10O43;
		END IF;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO1ii41 <= niO1ii42;
		END IF;
		if (now = 0 ns) then
			niO1ii41 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO1ii42 <= niO1ii41;
		END IF;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO1il39 <= niO1il40;
		END IF;
		if (now = 0 ns) then
			niO1il39 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO1il40 <= niO1il39;
		END IF;
	END PROCESS;
	wire_niO1il40_w_lg_w_lg_q383w384w(0) <= wire_niO1il40_w_lg_q383w(0) AND wire_w_datain_range52w(0);
	wire_niO1il40_w_lg_q383w(0) <= niO1il40 XOR niO1il39;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO1iO37 <= niO1iO38;
		END IF;
		if (now = 0 ns) then
			niO1iO37 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO1iO38 <= niO1iO37;
		END IF;
	END PROCESS;
	wire_niO1iO38_w_lg_w_lg_q366w367w(0) <= wire_niO1iO38_w_lg_q366w(0) AND niOi1O;
	wire_niO1iO38_w_lg_q366w(0) <= niO1iO38 XOR niO1iO37;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO1li35 <= niO1li36;
		END IF;
		if (now = 0 ns) then
			niO1li35 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO1li36 <= niO1li35;
		END IF;
	END PROCESS;
	wire_niO1li36_w_lg_w_lg_q290w291w(0) <= wire_niO1li36_w_lg_q290w(0) AND niOi1O;
	wire_niO1li36_w_lg_q290w(0) <= niO1li36 XOR niO1li35;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO1ll33 <= niO1ll34;
		END IF;
		if (now = 0 ns) then
			niO1ll33 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO1ll34 <= niO1ll33;
		END IF;
	END PROCESS;
	wire_niO1ll34_w_lg_w_lg_q259w260w(0) <= wire_niO1ll34_w_lg_q259w(0) AND wire_w_datain_range17w(0);
	wire_niO1ll34_w_lg_q259w(0) <= niO1ll34 XOR niO1ll33;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO1lO31 <= niO1lO32;
		END IF;
		if (now = 0 ns) then
			niO1lO31 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO1lO32 <= niO1lO31;
		END IF;
	END PROCESS;
	wire_niO1lO32_w_lg_w_lg_q254w255w(0) <= wire_niO1lO32_w_lg_q254w(0) AND wire_w_datain_range38w(0);
	wire_niO1lO32_w_lg_q254w(0) <= niO1lO32 XOR niO1lO31;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO1Oi29 <= niO1Oi30;
		END IF;
		if (now = 0 ns) then
			niO1Oi29 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO1Oi30 <= niO1Oi29;
		END IF;
	END PROCESS;
	wire_niO1Oi30_w_lg_w_lg_q249w250w(0) <= wire_niO1Oi30_w_lg_q249w(0) AND niOi1O;
	wire_niO1Oi30_w_lg_q249w(0) <= niO1Oi30 XOR niO1Oi29;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO1Ol27 <= niO1Ol28;
		END IF;
		if (now = 0 ns) then
			niO1Ol27 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO1Ol28 <= niO1Ol27;
		END IF;
	END PROCESS;
	wire_niO1Ol28_w_lg_w_lg_q237w238w(0) <= wire_niO1Ol28_w_lg_q237w(0) AND wire_w_lg_niO01l165w(0);
	wire_niO1Ol28_w_lg_q237w(0) <= niO1Ol28 XOR niO1Ol27;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO1OO25 <= niO1OO26;
		END IF;
		if (now = 0 ns) then
			niO1OO25 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niO1OO26 <= niO1OO25;
		END IF;
	END PROCESS;
	wire_niO1OO26_w_lg_w_lg_q187w188w(0) <= wire_niO1OO26_w_lg_q187w(0) AND niOi1O;
	wire_niO1OO26_w_lg_q187w(0) <= niO1OO26 XOR niO1OO25;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niOi1i3 <= niOi1i4;
		END IF;
		if (now = 0 ns) then
			niOi1i3 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niOi1i4 <= niOi1i3;
		END IF;
	END PROCESS;
	wire_niOi1i4_w_lg_w_lg_q39w40w(0) <= wire_niOi1i4_w_lg_q39w(0) AND wire_w_datain_range38w(0);
	wire_niOi1i4_w_lg_q39w(0) <= niOi1i4 XOR niOi1i3;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niOi1l1 <= niOi1l2;
		END IF;
		if (now = 0 ns) then
			niOi1l1 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN niOi1l2 <= niOi1l1;
		END IF;
	END PROCESS;
	wire_niOi1l2_w_lg_w_lg_q11w12w(0) <= wire_niOi1l2_w_lg_q11w(0) AND wire_w_datain_range10w(0);
	wire_niOi1l2_w_lg_q11w(0) <= niOi1l2 XOR niOi1l1;
	PROCESS (clk, wire_nli1i_CLRN)
	BEGIN
		IF (wire_nli1i_CLRN = '0') THEN
				nl00O <= '0';
				nl0ii <= '0';
				nl0iO <= '0';
				nl0li <= '0';
				nl0ll <= '0';
				nl0lO <= '0';
				nl0Oi <= '0';
				nl0Ol <= '0';
				nl0OO <= '0';
				nli1l <= '0';
		ELSIF (clk = '1' AND clk'event) THEN
			IF (ena = '1') THEN
				nl00O <= n00iOl;
				nl0ii <= (((niO01l OR (((datain(2) AND datain(3)) AND datain(4)) AND datain(5))) OR n00i1l) OR n00i1i);
				nl0iO <= wire_nlO1O_o;
				nl0li <= wire_nlO0i_o;
				nl0ll <= wire_nlO0l_o;
				nl0lO <= wire_nlO0O_o;
				nl0Oi <= wire_nlOii_o;
				nl0Ol <= wire_nlOil_o;
				nl0OO <= wire_nlOiO_o;
				nli1l <= wire_nlOli_o;
			END IF;
		END IF;
		if (now = 0 ns) then
			nl00O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl0ii <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl0iO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl0li <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl0ll <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl0lO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl0Oi <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl0Ol <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nl0OO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nli1l <= '1' after 1 ps;
		end if;
	END PROCESS;
	wire_nli1i_CLRN <= ((n00i1O50 XOR n00i1O49) AND reset_n);
	PROCESS (clk, wire_nll0l_PRN, wire_nll0l_CLRN)
	BEGIN
		IF (wire_nll0l_PRN = '0') THEN
				nll0i <= '1';
				nll0O <= '1';
		ELSIF (wire_nll0l_CLRN = '0') THEN
				nll0i <= '0';
				nll0O <= '0';
		ELSIF (clk = '1' AND clk'event) THEN
			IF (nllOl = '1') THEN
				nll0i <= (((wire_niOl_w_lg_dataout1441w(0) OR (wire_niOl_w_lg_dataout1442w(0) AND (nlili OR nli0O))) OR (wire_w_lg_niO0ii1448w(0) AND (nliii OR nli1O))) OR (wire_w_lg_niO00O1454w(0) AND (nliil OR nli0i)));
				nll0O <= wire_n1Oi_dataout;
			END IF;
		END IF;
		if (now = 0 ns) then
			nll0i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nll0O <= '1' after 1 ps;
		end if;
	END PROCESS;
	wire_nll0l_CLRN <= ((n00ill46 XOR n00ill45) AND reset_n);
	wire_nll0l_PRN <= (n00ili48 XOR n00ili47);
	PROCESS (clk, wire_nllOi_PRN, wire_nllOi_CLRN)
	BEGIN
		IF (wire_nllOi_PRN = '0') THEN
				nl0il <= '1';
				nli0i <= '1';
				nli0l <= '1';
				nli0O <= '1';
				nli1O <= '1';
				nliii <= '1';
				nliil <= '1';
				nliiO <= '1';
				nlili <= '1';
				nlill <= '1';
				nlilO <= '1';
				nliOi <= '1';
				nliOl <= '1';
				nliOO <= '1';
				nll1i <= '1';
				nll1l <= '1';
				nll1O <= '1';
				nllii <= '1';
				nllil <= '1';
				nlliO <= '1';
				nllOl <= '1';
		ELSIF (wire_nllOi_CLRN = '0') THEN
				nl0il <= '0';
				nli0i <= '0';
				nli0l <= '0';
				nli0O <= '0';
				nli1O <= '0';
				nliii <= '0';
				nliil <= '0';
				nliiO <= '0';
				nlili <= '0';
				nlill <= '0';
				nlilO <= '0';
				nliOi <= '0';
				nliOl <= '0';
				nliOO <= '0';
				nll1i <= '0';
				nll1l <= '0';
				nll1O <= '0';
				nllii <= '0';
				nllil <= '0';
				nlliO <= '0';
				nllOl <= '0';
		ELSIF (clk = '1' AND clk'event) THEN
				nl0il <= wire_nllli_dataout;
				nli0i <= wire_n00O_o;
				nli0l <= ((wire_w_lg_n00iiO1482w(0) OR wire_w_lg_w_lg_n00i0O1485w1486w(0)) OR (n00i0O AND n00i0l));
				nli0O <= ((wire_w_lg_n00iii1471w(0) OR wire_w_lg_w_lg_n00iil1476w1477w(0)) OR (n00iil AND n00i0i));
				nli1O <= wire_n0ii_o;
				nliii <= (((datain(6) AND datain(7)) AND (NOT datain(8))) AND (NOT datain(9)));
				nliil <= ((((NOT datain(6)) AND (NOT datain(7))) AND datain(8)) AND datain(9));
				nliiO <= (n00iii AND n00i0O);
				nlili <= (n00iiO AND n00iil);
				nlill <= nl0iO;
				nlilO <= nl0li;
				nliOi <= nl0ll;
				nliOl <= nl0lO;
				nliOO <= nl0Oi;
				nll1i <= nl0Ol;
				nll1l <= nl0OO;
				nll1O <= nli1l;
				nllii <= nl00O;
				nllil <= nl0ii;
				nlliO <= nl0il;
				nllOl <= ena;
		END IF;
		if (now = 0 ns) then
			nl0il <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nli0i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nli0l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nli0O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nli1O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nliii <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nliil <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nliiO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlili <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlill <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlilO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nliOi <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nliOl <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nliOO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nll1i <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nll1l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nll1O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nllii <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nllil <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nlliO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			nllOl <= '1' after 1 ps;
		end if;
	END PROCESS;
	wire_nllOi_CLRN <= ((niO1ii42 XOR niO1ii41) AND reset_n);
	wire_nllOi_PRN <= (niO10O44 XOR niO10O43);
	wire_nllOi_w_lg_nli0l1452w(0) <= NOT nli0l;
	wire_nllOi_w_lg_nli0O1446w(0) <= NOT nli0O;
	wire_nllOi_w_lg_nliiO1440w(0) <= nliiO OR nli0l;
	wire_n00i_dataout <= wire_niOl_dataout OR niO0ii;
	wire_n01l_dataout <= wire_n00i_dataout AND NOT(niO00O);
	wire_n1Oi_dataout <= wire_n1OO_dataout AND NOT(((nliii OR nli0i) OR (NOT (niO00i20 XOR niO00i19))));
	wire_n1OO_dataout <= wire_n01l_dataout OR (nliil OR nli1O);
	wire_niOl_dataout <= rdin WHEN rdforce = '1'  ELSE nll0O;
	wire_niOl_w_lg_w_lg_dataout1442w1453w(0) <= wire_niOl_w_lg_dataout1442w(0) AND wire_nllOi_w_lg_nli0l1452w(0);
	wire_niOl_w_lg_dataout1447w(0) <= wire_niOl_dataout AND wire_nllOi_w_lg_nli0O1446w(0);
	wire_niOl_w_lg_dataout1441w(0) <= wire_niOl_dataout AND wire_nllOi_w_lg_nliiO1440w(0);
	wire_niOl_w_lg_dataout1442w(0) <= NOT wire_niOl_dataout;
	wire_nllli_dataout <= (NOT (idle_del AND wire_nllll_dataout)) AND ena;
	wire_nllll_dataout <= (n00iOi OR n00ilO) AND ena;
	wire_niii_a <= ( wire_niO0Oi10_w_lg_w_lg_q91w92w & wire_niil_o(1 DOWNTO 0));
	wire_niii_b <= ( "0" & "0" & datain(6));
	wire_niii_w_o_range108w(0) <= wire_niii_o(0);
	wire_niii_w_o_range111w(0) <= wire_niii_o(1);
	wire_niii_w_o_range115w(0) <= wire_niii_o(2);
	niii :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 3,
		width_b => 3,
		width_o => 3
	  )
	  PORT MAP ( 
		a => wire_niii_a,
		b => wire_niii_b,
		cin => wire_gnd,
		o => wire_niii_o
	  );
	wire_niil_a <= ( "0" & wire_niiO_o(1 DOWNTO 0));
	wire_niil_b <= ( "0" & "0" & wire_niO0Ol8_w_lg_w_lg_q76w77w);
	wire_niil_w_o_range90w(0) <= wire_niil_o(2);
	niil :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 3,
		width_b => 3,
		width_o => 3
	  )
	  PORT MAP ( 
		a => wire_niil_a,
		b => wire_niil_b,
		cin => wire_gnd,
		o => wire_niil_o
	  );
	wire_niiO_a <= ( "0" & datain(9));
	wire_niiO_b <= ( "0" & datain(8));
	niiO :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 2,
		width_b => 2,
		width_o => 2
	  )
	  PORT MAP ( 
		a => wire_niiO_a,
		b => wire_niiO_b,
		cin => wire_gnd,
		o => wire_niiO_o
	  );
	wire_nili_w_lg_w_o_range1505w1513w(0) <= wire_nili_w_o_range1505w(0) AND wire_nili_w_lg_w_o_range1506w1510w(0);
	wire_nili_w_lg_w_o_range1506w1514w(0) <= wire_nili_w_o_range1506w(0) AND wire_nili_w_lg_w_o_range1505w1509w(0);
	wire_nili_w_lg_w_o_range1505w1509w(0) <= NOT wire_nili_w_o_range1505w(0);
	wire_nili_w_lg_w_o_range1506w1510w(0) <= NOT wire_nili_w_o_range1506w(0);
	wire_nili_a <= ( wire_niO0OO6_w_lg_w_lg_q49w50w & wire_nill_o(0));
	wire_nili_b <= ( "0" & datain(3));
	wire_nili_w_o_range1505w(0) <= wire_nili_o(0);
	wire_nili_w_o_range1506w(0) <= wire_nili_o(1);
	nili :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 2,
		width_b => 2,
		width_o => 2
	  )
	  PORT MAP ( 
		a => wire_nili_a,
		b => wire_nili_b,
		cin => wire_gnd,
		o => wire_nili_o
	  );
	wire_nill_a <= ( "0" & datain(5));
	wire_nill_b <= ( "0" & wire_niOi1i4_w_lg_w_lg_q39w40w);
	wire_nill_w_o_range48w(0) <= wire_nill_o(1);
	nill :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 2,
		width_b => 2,
		width_o => 2
	  )
	  PORT MAP ( 
		a => wire_nill_a,
		b => wire_nill_b,
		cin => wire_gnd,
		o => wire_nill_o
	  );
	wire_nilO_w_lg_w_o_range1472w1475w(0) <= wire_nilO_w_o_range1472w(0) AND wire_nilO_w_lg_w_o_range1473w1474w(0);
	wire_nilO_w_lg_w_o_range1473w1484w(0) <= wire_nilO_w_o_range1473w(0) AND wire_nilO_w_lg_w_o_range1472w1483w(0);
	wire_nilO_w_lg_w_o_range1472w1483w(0) <= NOT wire_nilO_w_o_range1472w(0);
	wire_nilO_w_lg_w_o_range1473w1474w(0) <= NOT wire_nilO_w_o_range1473w(0);
	wire_nilO_a <= ( wire_niOi_o(1 DOWNTO 0));
	wire_nilO_b <= ( "0" & datain(0));
	wire_nilO_w_o_range1472w(0) <= wire_nilO_o(0);
	wire_nilO_w_o_range1473w(0) <= wire_nilO_o(1);
	nilO :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 2,
		width_b => 2,
		width_o => 2
	  )
	  PORT MAP ( 
		a => wire_nilO_a,
		b => wire_nilO_b,
		cin => wire_gnd,
		o => wire_nilO_o
	  );
	wire_niOi_a <= ( "0" & wire_niOi1l2_w_lg_w_lg_q11w12w);
	wire_niOi_b <= ( "0" & datain(1));
	niOi :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 2,
		width_b => 2,
		width_o => 2
	  )
	  PORT MAP ( 
		a => wire_niOi_a,
		b => wire_niOi_b,
		cin => wire_gnd,
		o => wire_niOi_o
	  );
	wire_n00O_a <= ( wire_niii_o(2 DOWNTO 1) & wire_niO0li16_w_lg_w_lg_q119w120w);
	wire_n00O_b <= ( "0" & "1" & "0");
	n00O :  oper_less_than
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 3,
		width_b => 3
	  )
	  PORT MAP ( 
		a => wire_n00O_a,
		b => wire_n00O_b,
		cin => wire_gnd,
		o => wire_n00O_o
	  );
	wire_n0ii_a <= ( "0" & "1" & "0");
	wire_n0ii_b <= ( wire_niO0ll14_w_lg_w_lg_q116w117w & wire_niO0lO12_w_lg_w_lg_q112w113w & wire_niii_o(0));
	n0ii :  oper_less_than
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 3,
		width_b => 3
	  )
	  PORT MAP ( 
		a => wire_n0ii_a,
		b => wire_n0ii_b,
		cin => wire_gnd,
		o => wire_n0ii_o
	  );
	wire_nlO0i_data <= ( niOi1O & niOi1O & niOi1O & niOi1O & niOi1O & "1" & "0" & "1" & niOi1O & "1" & "0" & "1" & "0" & "1" & "1" & "0" & niOi1O & "0" & "1" & "0" & "1" & "0" & "0" & "1" & "0" & "0" & "0" & "0" & "0" & "0" & "1" & niOi1O & niOi1O & "1" & "0" & "1" & "0" & "1" & "1" & "0" & "1" & "1" & "1" & "1" & "1" & "1" & "0" & niOi1O & "0" & "0" & "0" & "0" & "0" & "0" & "1" & niOi1O & "1" & "0" & "1" & niOi1O & niOi1O & niOi1O & niOi1O & niOi1O);
	wire_nlO0i_sel <= ( datain(0) & datain(1) & datain(2) & datain(3) & datain(4) & datain(5));
	nlO0i :  oper_mux
	  GENERIC MAP (
		width_data => 64,
		width_sel => 6
	  )
	  PORT MAP ( 
		data => wire_nlO0i_data,
		o => wire_nlO0i_o,
		sel => wire_nlO0i_sel
	  );
	wire_nlO0l_data <= ( niOi1O & niOi1O & niOi1O & niOi1O & niOi1O & "1" & "0" & "1" & niOi1O & "0" & "1" & "0" & "0" & "0" & "0" & "1" & niOi1O & "1" & "0" & "1" & "1" & "1" & "1" & "1" & "0" & "0" & "0" & "0" & "0" & "0" & "1" & niOi1O & niOi1O & "1" & "0" & "1" & "0" & "1" & "1" & "0" & "1" & "0" & "0" & "1" & "0" & "0" & "1" & niOi1O & "1" & "1" & "1" & "0" & "1" & "1" & "0" & niOi1O & "1" & "0" & "1" & niOi1O & niOi1O & niOi1O & niOi1O & niOi1O);
	wire_nlO0l_sel <= ( datain(0) & datain(1) & datain(2) & datain(3) & datain(4) & datain(5));
	nlO0l :  oper_mux
	  GENERIC MAP (
		width_data => 64,
		width_sel => 6
	  )
	  PORT MAP ( 
		data => wire_nlO0l_data,
		o => wire_nlO0l_o,
		sel => wire_nlO0l_sel
	  );
	wire_nlO0O_data <= ( niOi1O & niOi1O & niOi1O & niOi1O & niOi1O & "0" & "1" & "0" & niOi1O & "1" & "0" & "1" & "1" & "0" & "0" & "1" & niOi1O & "1" & "0" & "1" & "1" & "0" & "0" & "1" & "0" & "1" & "1" & "0" & "0" & "0" & "1" & niOi1O & niOi1O & "1" & "0" & "1" & "0" & "0" & "0" & "0" & "1" & "1" & "1" & "1" & "0" & "0" & "1" & niOi1O & "1" & "1" & "1" & "1" & "0" & "0" & "1" & niOi1O & "0" & "1" & "0" & niOi1O & niOi1O & niOi1O & niOi1O & niOi1O);
	wire_nlO0O_sel <= ( datain(0) & datain(1) & datain(2) & wire_niO1il40_w_lg_w_lg_q383w384w & datain(4) & datain(5));
	nlO0O :  oper_mux
	  GENERIC MAP (
		width_data => 64,
		width_sel => 6
	  )
	  PORT MAP ( 
		data => wire_nlO0O_data,
		o => wire_nlO0O_o,
		sel => wire_nlO0O_sel
	  );
	wire_nlO1O_data <= ( niOi1O & niOi1O & niOi1O & niOi1O & niOi1O & "1" & "0" & "1" & niOi1O & "1" & "0" & "1" & "0" & "1" & "1" & "0" & niOi1O & "1" & "0" & "1" & "1" & "1" & "1" & "1" & "0" & "1" & "1" & "0" & "1" & "1" & "0" & niOi1O & niOi1O & "0" & "1" & "0" & "0" & "0" & "0" & "0" & "1" & "0" & "0" & "1" & "0" & "0" & "1" & niOi1O & "0" & "0" & "0" & "0" & "0" & "0" & "1" & niOi1O & "1" & "0" & "1" & niOi1O & niOi1O & niOi1O & niOi1O & niOi1O);
	wire_nlO1O_sel <= ( datain(0) & datain(1) & datain(2) & datain(3) & datain(4) & datain(5));
	nlO1O :  oper_mux
	  GENERIC MAP (
		width_data => 64,
		width_sel => 6
	  )
	  PORT MAP ( 
		data => wire_nlO1O_data,
		o => wire_nlO1O_o,
		sel => wire_nlO1O_sel
	  );
	wire_nlOii_data <= ( niOi1O & niOi1O & niOi1O & niOi1O & niOi1O & "1" & "0" & "0" & wire_niO1iO38_w_lg_w_lg_q366w367w & "1" & "0" & "0" & "1" & "1" & "0" & "1" & niOi1O & "1" & "0" & "0" & "1" & "1" & "0" & "0" & "0" & "1" & "0" & "1" & "1" & "0" & "1" & niOi1O & niOi1O & "1" & "0" & "0" & "1" & "1" & "0" & "0" & "0" & "1" & "0" & "1" & "1" & "0" & "1" & wire_niO1li36_w_lg_w_lg_q290w291w & "1" & "1" & "0" & "1" & "1" & "0" & "1" & niOi1O & "0" & "0" & "1" & niOi1O & niOi1O & niOi1O & niOi1O & niOi1O);
	wire_nlOii_sel <= ( datain(0) & wire_niO1ll34_w_lg_w_lg_q259w260w & datain(2) & datain(3) & wire_niO1lO32_w_lg_w_lg_q254w255w & datain(5));
	nlOii :  oper_mux
	  GENERIC MAP (
		width_data => 64,
		width_sel => 6
	  )
	  PORT MAP ( 
		data => wire_nlOii_data,
		o => wire_nlOii_o,
		sel => wire_nlOii_sel
	  );
	wire_nlOil_data <= ( wire_niO1Oi30_w_lg_w_lg_q249w250w & "1" & "0" & "1" & "0" & wire_w_lg_niO01l165w & wire_niO1Ol28_w_lg_w_lg_q237w238w & "1" & "1" & niO01l & niO01l & "0" & "1" & "0" & "1" & niOi1O);
	wire_nlOil_sel <= ( datain(6) & datain(7) & datain(8) & datain(9));
	nlOil :  oper_mux
	  GENERIC MAP (
		width_data => 16,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_nlOil_data,
		o => wire_nlOil_o,
		sel => wire_nlOil_sel
	  );
	wire_nlOiO_data <= ( niOi1O & "1" & "0" & "1" & "0" & niO01l & niO01l & "1" & "1" & wire_w_lg_niO01l165w & wire_w_lg_niO01l165w & "0" & "1" & "0" & "1" & wire_niO1OO26_w_lg_w_lg_q187w188w);
	wire_nlOiO_sel <= ( datain(6) & datain(7) & datain(8) & datain(9));
	nlOiO :  oper_mux
	  GENERIC MAP (
		width_data => 16,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_nlOiO_data,
		o => wire_nlOiO_o,
		sel => wire_nlOiO_sel
	  );
	wire_nlOli_data <= ( niOi1O & "1" & "1" & "0" & "0" & wire_w_lg_niO01l165w & niO01l & "1" & "1" & wire_w_lg_niO01l165w & wire_niO01i24_w_lg_w_lg_q162w163w & "0" & "0" & "1" & "1" & niOi1O);
	wire_nlOli_sel <= ( datain(6) & datain(7) & wire_niO01O22_w_lg_w_lg_q147w148w & datain(9));
	nlOli :  oper_mux
	  GENERIC MAP (
		width_data => 16,
		width_sel => 4
	  )
	  PORT MAP ( 
		data => wire_nlOli_data,
		o => wire_nlOli_o,
		sel => wire_nlOli_sel
	  );

 END RTL; --Decodificador
--synopsys translate_on
--VALID FILE
