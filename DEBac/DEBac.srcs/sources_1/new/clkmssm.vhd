library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TickGenerator is
    Port (
        clk       : in  STD_LOGIC;
        reset     : in  STD_LOGIC;
        tick_ms   : out STD_LOGIC;
        tick_s    : out STD_LOGIC;
        tick_min  : out STD_LOGIC
    );
end TickGenerator;

architecture Behavioral of TickGenerator is

    constant CYCLES_PER_MS  : natural := 100_000;       
    constant CYCLES_PER_SEC : natural := 100_000_000;   

    signal counter_ms  : unsigned(16 downto 0) := (others => '0');
    signal counter_s   : unsigned(26 downto 0) := (others => '0');
    signal counter_sec : unsigned(5 downto 0)  := (others => '0');  

    signal tick_ms_i, tick_s_i, tick_min_i : std_logic := '0';

begin

    process(clk, reset)
    begin
        if reset = '1' then
            counter_ms  <= (others => '0');
            counter_s   <= (others => '0');
            counter_sec <= (others => '0');
            tick_ms_i   <= '0';
            tick_s_i    <= '0';
            tick_min_i  <= '0';

        elsif rising_edge(clk) then
       
            if counter_ms = CYCLES_PER_MS - 1 then
                counter_ms <= (others => '0');
                tick_ms_i  <= '1';
            else
                counter_ms <= counter_ms + 1;
                tick_ms_i  <= '0';
            end if;

            
            if counter_s = CYCLES_PER_SEC - 1 then
                counter_s <= (others => '0');
                tick_s_i  <= '1';

             
                if counter_sec = 59 then
                    counter_sec <= (others => '0');
                    tick_min_i  <= '1';
                else
                    counter_sec <= counter_sec + 1;
                    tick_min_i  <= '0';
                end if;

            else
                counter_s   <= counter_s + 1;
                tick_s_i    <= '0';
                tick_min_i  <= '0';
            end if;
        end if;
    end process;

    tick_ms  <= tick_ms_i;
    tick_s   <= tick_s_i;
    tick_min <= tick_min_i;

end Behavioral;
