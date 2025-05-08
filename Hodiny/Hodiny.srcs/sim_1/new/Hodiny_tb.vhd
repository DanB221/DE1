library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Hodiny_tb is
end Hodiny_tb;

architecture Behavioral of Hodiny_tb is
    signal clk     : std_logic := '0';
    signal reset   : std_logic := '0';
    signal SW1     : std_logic := '0';
    signal SW2     : std_logic := '0';
    signal BTN_U   : std_logic := '0';
    signal BTN_D   : std_logic := '0';
    signal tick_s  : std_logic := '0';

    signal minuty  : std_logic_vector(5 downto 0);
    signal hodiny  : std_logic_vector(4 downto 0);

    constant clk_period : time := 10 ns;
begin
    -- Pripojenie testovanej jednotky
    uut: entity work.Hodiny
        port map (
            clk     => clk,
            reset   => reset,
            SW1     => SW1,
            SW2     => SW2,
            BTN_U   => BTN_U,
            BTN_D   => BTN_D,
            tick_s  => tick_s,
            minuty  => minuty,
            hodiny  => hodiny
        );

    -- Generovanie hodinového signálu
    clk_process: process
    begin
        while now < 3000 ns loop
            clk <= '0';
            wait for clk_period / 2;
            clk <= '1';
            wait for clk_period / 2;
        end loop;
        wait;
    end process;

    -- Stimuly
    stim_proc: process
    begin
        -- RESET
        reset <= '1';
        wait for 20 ns;
        reset <= '0';
        wait for 20 ns;

        -- Automatický režim: tick_s = '1' => minúta sa zvýši
        SW1 <= '0'; SW2 <= '0'; -- mode = "00"
        tick_s <= '1';
        wait for clk_period;
        tick_s <= '0';
        wait for clk_period * 2;

        -- Nastavovanie minút: BTN_U = '1'
        SW1 <= '1'; SW2 <= '0'; -- mode = "01"
        BTN_U <= '1';
        wait for clk_period;
        BTN_U <= '0';
        wait for clk_period * 2;

        -- Nastavovanie minút: BTN_D = '1'
        BTN_D <= '1';
        wait for clk_period;
        BTN_D <= '0';
        wait for clk_period * 2;

        -- Nastavovanie hodín: BTN_U = '1'
        SW1 <= '0'; SW2 <= '1'; -- mode = "10"
        BTN_U <= '1';
        wait for clk_period;
        BTN_U <= '0';
        wait for clk_period * 2;

        -- Nastavovanie hodín: BTN_D = '1'
        BTN_D <= '1';
        wait for clk_period;
        BTN_D <= '0';
        wait for clk_period * 2;

        wait;
    end process;
end Behavioral;
