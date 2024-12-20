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

-- Generated by Quartus II Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition
-- Created on Wed Nov 06 23:02:01 2024

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY maquina IS
    PORT (
        reset : IN STD_LOGIC := '0';
        SCL : IN STD_LOGIC;
        SDA : IN STD_LOGIC := '0';
        soy : IN STD_LOGIC := '0';
        Fdir : IN STD_LOGIC := '0';
        Fdat : IN STD_LOGIC := '0';
        Hdir : OUT STD_LOGIC;
        Hdat : OUT STD_LOGIC;
        Hack : OUT STD_LOGIC
    );
END maquina;

ARCHITECTURE BEHAVIOR OF maquina IS
    TYPE type_fstate IS (START,DIR,RW,ACK,DAT,IDLE);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
BEGIN
    PROCESS (SCL,reg_fstate)
    BEGIN
        IF (SCL='1' AND SCL'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,reset,SDA,soy,Fdir,Fdat)
    BEGIN
        IF (reset='1') THEN
            reg_fstate <= START;
            Hdir <= '0';
            Hdat <= '0';
            Hack <= '0';
        ELSE
            Hdir <= '0';
            Hdat <= '0';
            Hack <= '0';
            CASE fstate IS
                WHEN START =>
                    reg_fstate <= DIR;

                    Hdir <= '0';

                    Hack <= '0';

                    Hdat <= '0';
                WHEN DIR =>
                    IF ((Fdir = '0')) THEN
                        reg_fstate <= DIR;
                    ELSIF (((Fdir = '1') AND (soy = '0'))) THEN
                        reg_fstate <= IDLE;
                    ELSIF (((Fdir = '1') AND (soy = '1'))) THEN
                        reg_fstate <= RW;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= DIR;
                    END IF;

                    Hdir <= '1';

                    Hack <= '0';

                    Hdat <= '0';
                WHEN RW =>
                    reg_fstate <= ACK;

                    Hdir <= '0';

                    Hack <= '0';

                    Hdat <= '0';
                WHEN ACK =>
                    reg_fstate <= DAT;

                    Hdir <= '0';

                    Hack <= '1';

                    Hdat <= '0';
                WHEN DAT =>
                    IF ((Fdat = '0')) THEN
                        reg_fstate <= DAT;
                    ELSIF ((Fdat = '1')) THEN
                        reg_fstate <= IDLE;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= DAT;
                    END IF;

                    Hdir <= '0';

                    Hack <= '0';

                    Hdat <= '1';
                WHEN IDLE =>
                    IF ((SDA = '1')) THEN
                        reg_fstate <= IDLE;
                    ELSIF ((SDA = '0')) THEN
                        reg_fstate <= START;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= IDLE;
                    END IF;

                    Hdir <= '0';

                    Hack <= '0';

                    Hdat <= '0';
                WHEN OTHERS => 
                    Hdir <= 'X';
                    Hdat <= 'X';
                    Hack <= 'X';
                    report "Reach undefined state";
            END CASE;
        END IF;
    END PROCESS;
END BEHAVIOR;
