library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity selektor is
    port (
        clk             : in  std_logic;
        reset           : in  std_logic;
        tick_ms         : in  std_logic; 
        digit0		: in  std_logic_vector(3 downto 0);
        digit1		: in  std_logic_vector(3 downto 0);
        digit2		: in  std_logic_vector(3 downto 0);
        digit3		: in  std_logic_vector(3 downto 0);
        digit4		: in  std_logic_vector(3 downto 0);
        digit5		: in  std_logic_vector(3 downto 0);
        selected_digit 	: out std_logic_vector(3 downto 0);
        an_select      	: out std_logic_vector(7 downto 0) 
    );
end entity;

architecture Behavioral of selektor is
    signal selector : unsigned(2 downto 0) := (others => '0');
begin

    process(clk, reset)
    begin
        if reset = '1' then
            selector <= (others => '0');
        elsif rising_edge(clk) then
            if tick_ms = '1' then
                if selector = 5 then
                    selector <= (others => '0');
                else
                    selector <= selector + 1;
                end if;
            end if;
        end if;
    end process;

process(selector, digit0, digit1, digit2, digit3, digit4, digit5)
begin
    case selector is
        when "000" =>
            selected_digit <= digit0;
            an_select <= "11111011"; -- AN2 
        when "001" =>
            selected_digit <= digit1;
            an_select <= "11110111"; -- AN3 
        when "010" =>
            selected_digit <= digit2;
            an_select <= "11101111"; -- AN4 
        when "011" =>
            selected_digit <= digit3;
            an_select <= "11011111"; -- AN5 
        when "100" =>
            selected_digit <= digit4;
            an_select <= "10111111"; -- AN6 
        when "101" =>
            selected_digit <= digit5;
            an_select <= "01111111"; -- AN7 
        when others =>
            selected_digit <= "0000";
            an_select <= "11111111"; -- všetko vypnuté
    end case;
end process;

end architecture;