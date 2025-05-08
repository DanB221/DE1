library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity selektor_tb is
end entity selektor_tb;

architecture Behavioral of selektor_tb is
    signal clk       : std_logic := '0';
    signal reset     : std_logic := '0';
    signal tick_ms   : std_logic := '0';
    signal digit0    : std_logic_vector(3 downto 0) := "0000";  -- 0
    signal digit1    : std_logic_vector(3 downto 0) := "0001";  -- 1
    signal digit2    : std_logic_vector(3 downto 0) := "0010";  -- 2
    signal digit3    : std_logic_vector(3 downto 0) := "0011";  -- 3
    signal digit4    : std_logic_vector(3 downto 0) := "0100";  -- 4
    signal digit5    : std_logic_vector(3 downto 0) := "1001";  -- 9
    signal selected_digit : std_logic_vector(3 downto 0);
    signal an_select : std_logic_vector(5 downto 0);

begin
    -- Inštancia DUT (Device Under Test)
    uut: entity work.selektor
        port map (
            clk            => clk,
            reset          => reset,
            tick_ms        => tick_ms,
            digit0         => digit0,
            digit1         => digit1,
            digit2         => digit2,
            digit3         => digit3,
            digit4         => digit4,
            digit5         => digit5,
            selected_digit => selected_digit,
            an_select      => an_select
        );

    -- Generovanie hodinového signálu s frekvenciou 100 MHz (perióda 10 ns)
    clk_process: process
    begin
        while true loop
            clk <= not clk;
            wait for 5 ns;
        end loop;
    end process clk_process;

    -- Simulácia procesu výberu digitov
    stim_proc: process
    begin
        -- Reset systému
        reset <= '1';
        wait for 20 ns;
        reset <= '0';

        -- Aktivovanie impulzu tick_ms
        tick_ms <= '1';
        wait for 10 ns;
        tick_ms <= '0';

        wait for 10 ns;
        
        -- Cyklické prepínanie digitov
        for i in 0 to 6 loop
            tick_ms <= '1';
            wait for 10 ns;
            tick_ms <= '0';
            wait for 10 ns;
        end loop;

        -- Koniec simulácie
        wait;
    end process stim_proc;
end architecture Behavioral;
