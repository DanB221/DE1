library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Stopky_tb is
end Stopky_tb;

architecture Behavioral of Stopky_tb is
    signal clk      : std_logic := '0';
    signal reset    : std_logic := '0';
    signal BTN_C    : std_logic := '0';
    signal BTN_D    : std_logic := '0';
    signal tick_ms  : std_logic := '0';
    signal ms_out   : std_logic_vector(7 downto 0);
    signal s_out    : std_logic_vector(5 downto 0);
    signal min_out  : std_logic_vector(5 downto 0);

    constant clk_period : time := 10 ns;

begin

    -- Jednotka pod testom
    uut: entity work.Stopky
        port map (
            clk     => clk,
            reset   => reset,
            BTN_C   => BTN_C,
            BTN_D   => BTN_D,
            tick_ms => tick_ms,
            ms_out  => ms_out,
            s_out   => s_out,
            min_out => min_out
        );

    -- Generovanie hodinového signálu (100 MHz)
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for clk_period / 2;
            clk <= '1';
            wait for clk_period / 2;
        end loop;
    end process;

    -- Generovanie tick_ms každých 1 ms (jeden krátky impulz)
    tick_process : process
    begin
        wait for 1 ms;
        while true loop
            tick_ms <= '1';
            wait for 10 ns;       -- krátky impulz (trvanie 1 hodina)
            tick_ms <= '0';
            wait for 990 us;      -- zvyšok do 1 ms
        end loop;
    end process;

    -- Testovacie stimuly
    stim_proc : process
    begin
        -- Reset
        reset <= '1';
        wait for 100 ns;
        reset <= '0';

        -- Počkám krátko, potom spustím stopky
        wait for 500 ns;

        -- Stlačím BTN_C (štart)
        BTN_C <= '1';
        wait for 10 ns;
        BTN_C <= '0';

        -- nechaj bežať 1 sekundu
        wait for 1 sec;

        -- Znova stlačím BTN_C (stop)
        BTN_C <= '1';
        wait for 10 ns;
        BTN_C <= '0';

        -- Počkám chvíľu
        wait for 200 ms;

        -- Reset stopiek
        BTN_D <= '1';
        wait for 10 ns;
        BTN_D <= '0';

        -- nechaj bežať ešte chvíľu na pozorovanie
        wait for 200 ms;

        -- KONIEC SIMULÁCIE
        wait;
    end process;

end Behavioral;
