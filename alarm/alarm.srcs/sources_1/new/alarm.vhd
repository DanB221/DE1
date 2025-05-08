library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alarm is
    port (
        clk            : in  std_logic; 
        alarm_SW1      : in  std_logic;  
        alarm_SW2      : in  std_logic;  
        alarm_BTN_U    : in  std_logic;  
        alarm_BTN_D    : in  std_logic;  
        alarm_BTN_C    : in  std_logic;  
        tick_s         : in  std_logic;  
        alarm_minuty   : out std_logic_vector(5 downto 0); 
        alarm_sekundy  : out std_logic_vector(5 downto 0)  
    );
end entity alarm;

architecture behavioral of alarm is
    signal minuty        : integer range 0 to 59 := 0;
    signal sekundy       : integer range 0 to 59 := 0;
    signal setting_mode  : std_logic := '0'; 
    signal alarm_running : std_logic := '0';  
begin

    process (clk)
    begin
        if rising_edge(clk) then
            
            if alarm_SW1 = '1' then
                setting_mode <= '0';  
            elsif alarm_SW2 = '1' then
                setting_mode <= '1';  
            end if;

            -- nastavovanie
            if alarm_BTN_U = '1' then
                if setting_mode = '0' then
                    if sekundy < 59 then
                        sekundy <= sekundy + 1;
                    end if;
                else
                    if minuty < 59 then
                        minuty <= minuty + 1;
                    end if;
                end if;
            elsif alarm_BTN_D = '1' then
                if setting_mode = '0' then
                    if sekundy > 0 then
                        sekundy <= sekundy - 1;
                    end if;
                else
                    if minuty > 0 then
                        minuty <= minuty - 1;
                    end if;
                end if;
            end if;

          
            if alarm_BTN_C = '1' then
                alarm_running <= not alarm_running;
            end if;

            
            if alarm_running = '1' and tick_s = '1' then
                if sekundy > 0 then
                    sekundy <= sekundy - 1;
                elsif sekundy = 0 then
                    if minuty > 0 then
                        minuty  <= minuty - 1;
                        sekundy <= 59;  
                    else
                        alarm_running <= '0';  
                    end if;
                end if;
            end if;

           
            alarm_minuty  <= std_logic_vector(to_unsigned(minuty, 6));
            alarm_sekundy <= std_logic_vector(to_unsigned(sekundy, 6));
        end if;
    end process;

end architecture behavioral;
