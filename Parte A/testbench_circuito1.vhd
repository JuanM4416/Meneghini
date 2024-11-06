library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testbench_circuito1 is
end testbench_circuito1;

architecture behavior of testbench_circuito1 is
    -- Declaración del componente que vamos a probar
    component circuito1
        port (
            SW1 : in std_logic;
            SW2 : in std_logic;
            SW3 : in std_logic;
            LED : out std_logic
        );
    end component;
    
    -- Declaración de señales internas para conectar al circuito
    signal SW1 : std_logic := '0';
    signal SW2 : std_logic := '0';
    signal SW3 : std_logic := '0';
    signal LED : std_logic;

begin
    -- Instanciación del componente
    UUT: circuito1 port map (
        SW1 => SW1,
        SW2 => SW2,
        SW3 => SW3,
        LED => LED
    );

    -- Proceso de generación de estímulos para las señales de entrada
    stim_proc: process
    begin
        -- Prueba con diferentes combinaciones de entradas
        SW1 <= '0'; SW2 <= '0'; SW3 <= '0';
        wait for 10 ns;
        
        SW1 <= '0'; SW2 <= '0'; SW3 <= '1';
        wait for 10 ns;
        
        SW1 <= '0'; SW2 <= '1'; SW3 <= '0';
        wait for 10 ns;
        
        SW1 <= '0'; SW2 <= '1'; SW3 <= '1';
        wait for 10 ns;
        
        SW1 <= '1'; SW2 <= '0'; SW3 <= '0';
        wait for 10 ns;
        
        SW1 <= '1'; SW2 <= '0'; SW3 <= '1';
        wait for 10 ns;
        
        SW1 <= '1'; SW2 <= '1'; SW3 <= '0';
        wait for 10 ns;
        
        SW1 <= '1'; SW2 <= '1'; SW3 <= '1';
        wait for 10 ns;

        -- Finaliza la simulación
        wait;
    end process;
end behavior;
