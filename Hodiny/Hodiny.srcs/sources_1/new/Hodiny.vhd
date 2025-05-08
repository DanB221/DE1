library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Hodiny is
    Port (
        clk       : in  STD_LOGIC;
        reset     : in  STD_LOGIC;
        SW1       : in  STD_LOGIC;
        SW2       : in  STD_LOGIC;
        BTN_U     : in  STD_LOGIC;
        tick_s    : in  STD_LOGIC;
        BTN_D     : in  STD_LOGIC;
        minuty    : out STD_LOGIC_VECTOR(5 downto 0);
        hodiny    : out STD_LOGIC_VECTOR(4 downto 0)  
    );
end Hodiny;

architecture Behavioral of Hodiny is
    signal min_reg : unsigned(5 downto 0) := (others => '0'); 
    signal hod_reg : unsigned(4 downto 0) := (others => '0'); 

    signal mode : STD_LOGIC_VECTOR(1 downto 0);
begin

    mode <= SW2 & SW1;

    process(clk, reset)
    begin
        if reset = '1' then
            min_reg <= (others => '0');
            hod_reg <= (others => '0');

        elsif rising_edge(clk) then

          
            if tick_s = '1' and mode = "00" then
                if min_reg = 59 then
                    min_reg <= (others => '0');
                    if hod_reg = 23 then
                        hod_reg <= (others => '0');
                    else
                        hod_reg <= hod_reg + 1;
                    end if;
                else
                    min_reg <= min_reg + 1;
                end if;
            end if;

            -- nastavovanie
            case mode is
                when "01" =>  -- minút
                    if BTN_U = '1' then
                        if min_reg = 59 then
                            min_reg <= (others => '0');
                        else
                            min_reg <= min_reg + 1;
                        end if;
                    elsif BTN_D = '1' then
                        if min_reg = 0 then
                            min_reg <= to_unsigned(59, 6);
                        else
                            min_reg <= min_reg - 1;
                        end if;
                    end if;

                when "10" =>  -- hodín
                    if BTN_U = '1' then
                        if hod_reg = 23 then
                            hod_reg <= (others => '0');
                        else
                            hod_reg <= hod_reg + 1;
                        end if;
                    elsif BTN_D = '1' then
                        if hod_reg = 0 then
                            hod_reg <= to_unsigned(23, 5);
                        else
                            hod_reg <= hod_reg - 1;
                        end if;
                    end if;

                when others =>
                    null;
            end case;
        end if;
    end process;


    minuty <= std_logic_vector(min_reg);
    hodiny <= std_logic_vector(hod_reg);

end Behavioral;
