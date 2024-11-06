LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY testbench_ParteD IS
END testbench_ParteD;

ARCHITECTURE behavior OF testbench_ParteD IS

    -- Componente a probar
    COMPONENT ParteD
        PORT(
            reset : IN STD_LOGIC;
            clock : IN STD_LOGIC;
            x     : IN STD_LOGIC;
            Q3    : OUT STD_LOGIC;
            Q2    : OUT STD_LOGIC;
            Q1    : OUT STD_LOGIC;
            Q0    : OUT STD_LOGIC
        );
    END COMPONENT;

    -- Señales internas para conectar al componente
    SIGNAL reset : STD_LOGIC := '0';
    SIGNAL clock : STD_LOGIC := '0';
    SIGNAL x     : STD_LOGIC := '0';
    SIGNAL Q3    : STD_LOGIC;
    SIGNAL Q2    : STD_LOGIC;
    SIGNAL Q1    : STD_LOGIC;
    SIGNAL Q0    : STD_LOGIC;

BEGIN

    -- Instancia del diseño a probar
    uut: ParteD PORT MAP (
        reset => reset,
        clock => clock,
        x     => x,
        Q3    => Q3,
        Q2    => Q2,
        Q1    => Q1,
        Q0    => Q0
    );

    -- Generador de reloj
    clock_process : PROCESS
    BEGIN
        clock <= '0';
        WAIT FOR 10 ns;
        clock <= '1';
        WAIT FOR 10 ns;
    END PROCESS;

    -- Proceso de prueba
    stim_proc: PROCESS
    BEGIN
        -- Prueba 1: Resetear y verificar que el sistema vuelva al estado inicial
        reset <= '1';
        WAIT FOR 20 ns;
        reset <= '0';

        -- Prueba 2: Cambiar el valor de 'x' y verificar transición de estados
        x <= '0';
        WAIT FOR 20 ns;
        x <= '1';
        WAIT FOR 20 ns;
        x <= '0';
        WAIT FOR 20 ns;

        -- Prueba 3: Cambiar 'x' para forzar otra transición de estados
        x <= '1';
        WAIT FOR 20 ns;
        x <= '0';
        WAIT FOR 20 ns;

        -- Prueba 4: Activar reset en medio de la operación
        reset <= '1';
        WAIT FOR 20 ns;
        reset <= '0';

        -- Detener la simulación
        WAIT;
    END PROCESS;

END behavior;
