library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alarm_tb is
end alarm_tb;

architecture behavior of alarm_tb is

    -- Signály na pripojenie k entite alarm
    signal alarm_SW1     : std_logic := '0';
    signal alarm_SW2     : std_logic := '0';
    signal alarm_BTN_U   : std_logic := '0';
    signal alarm_BTN_D   : std_logic := '0';
    signal alarm_BTN_C   : std_logic := '0';
    signal tick_s        : std_logic := '0';
    signal alarm_minuty  : std_logic_vector(5 downto 0);
    signal alarm_sekundy : std_logic_vector(5 downto 0);

    -- Konstanty
    constant clk_period : time := 10 ns;
    constant tick_period : time := 1 sec;

begin

    -- Jednotka pod testom
    uut: entity work.alarm
        port map (
            alarm_SW1     => alarm_SW1,
            alarm_SW2     => alarm_SW2,
            alarm_BTN_U   => alarm_BTN_U,
            alarm_BTN_D   => alarm_BTN_D,
            alarm_BTN_C   => alarm_BTN_C,
            tick_s        => tick_s,
            alarm_minuty  => alarm_minuty,
            alarm_sekundy => alarm_sekundy
        );

    -- Generovanie hodinového signálu (100 MHz)
    clk_process : process
    begin
        while true loop
            tick_s <= '1';
            wait for tick_period / 2;
            tick_s <= '0';
            wait for tick_period / 2;
        end loop;
    end process;

    -- Testovacie stimuly
    stim_proc : process
    begin
        -- Počiatočný reset
        wait for 10 ns;
        -- Testovanie zvyšovania a znižovania sekúnd
        -- Nastavovanie sekúnd
        alarm_SW1 <= '1';  -- Nastavujeme sekundy
        wait for 10 ns;

        -- Zvýšenie sekúnd
        alarm_BTN_U <= '1';
        wait for 20 ns;
        alarm_BTN_U <= '0';
        wait for 100 ns;

        -- Zníženie sekúnd
        alarm_BTN_D <= '1';
        wait for 20 ns;
        alarm_BTN_D <= '0';
        wait for 100 ns;

        -- Testovanie nastavenia minút
        alarm_SW1 <= '0';  -- Prepneme na minúty
        alarm_SW2 <= '1';  -- Nastavujeme minúty
        wait for 10 ns;

        -- Zvýšenie minút
        alarm_BTN_U <= '1';
        wait for 20 ns;
        alarm_BTN_U <= '0';
        wait for 100 ns;

        -- Zníženie minút
        alarm_BTN_D <= '1';
        wait for 20 ns;
        alarm_BTN_D <= '0';
        wait for 100 ns;

        -- Testovanie alarmu
        alarm_SW1 <= '1';  -- Nastavujeme sekundy
        alarm_SW2 <= '0';
        alarm_BTN_U <= '1';  -- Zvýšenie sekúnd na 59
        wait for 20 ns;
        alarm_BTN_U <= '0';
        wait for 100 ns;

        -- Spustenie alarmu
        alarm_BTN_C <= '1';
        wait for 10 ns;
        alarm_BTN_C <= '0';
        wait for 2 sec;  -- Necháme alarm bežať 2 sekundy

        -- Pozastavenie alarmu
        alarm_BTN_C <= '1';
        wait for 10 ns;
        alarm_BTN_C <= '0';
        wait for 1 sec;

        -- KONIEC SIMULÁCIE
        wait;
    end process;

end behavior;
