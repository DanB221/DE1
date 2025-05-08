library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Stopky is
    Port (
        clk      : in  STD_LOGIC;
        reset    : in  STD_LOGIC;
        BTN_C    : in  STD_LOGIC;  
        BTN_D    : in  STD_LOGIC;  
        tick_ms  : in  STD_LOGIC;   
        ms_out   : out STD_LOGIC_VECTOR(7 downto 0); 
        s_out    : out STD_LOGIC_VECTOR(5 downto 0);
        min_out  : out STD_LOGIC_VECTOR(5 downto 0)  
    );
end Stopky;

architecture Behavioral of Stopky is

    signal ms_cnt   : unsigned(9 downto 0) := (others => '0');
    signal sec_cnt  : unsigned(5 downto 0) := (others => '0');
    signal min_cnt  : unsigned(5 downto 0) := (others => '0');

    signal running  : std_logic := '0';
    signal btn_c_last : std_logic := '0'; 

begin

    process(clk, reset)
    begin
        if reset = '1' then
            ms_cnt  <= (others => '0');
            sec_cnt <= (others => '0');
            min_cnt <= (others => '0');
            running <= '0';
            btn_c_last <= '0';

        elsif rising_edge(clk) then

          
            if BTN_C = '1' and btn_c_last = '0' then
                running <= not running;
            end if;
            btn_c_last <= BTN_C;

           
            if BTN_D = '1' then
                ms_cnt  <= (others => '0');
                sec_cnt <= (others => '0');
                min_cnt <= (others => '0');
            elsif tick_ms = '1' and running = '1' then
           
                if ms_cnt = 999 then
                    ms_cnt <= (others => '0');
                    if sec_cnt = 59 then
                        sec_cnt <= (others => '0');
                        if min_cnt = 59 then
                            min_cnt <= (others => '0');
                        else
                            min_cnt <= min_cnt + 1;
                        end if;
                    else
                        sec_cnt <= sec_cnt + 1;
                    end if;
                else
                    ms_cnt <= ms_cnt + 1;
                end if;
            end if;
        end if;
    end process;

    
    ms_out <= std_logic_vector(to_unsigned(to_integer(ms_cnt) / 10, 8));
    s_out   <= std_logic_vector(sec_cnt);
    min_out <= std_logic_vector(min_cnt);

end Behavioral;