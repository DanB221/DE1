library ieee;
use ieee.std_logic_1164.all;

entity bin2seg is
    port (
        clear : in    std_logic;                    
        bin   : in    std_logic_vector(3 downto 0); 
        seg   : out   std_logic_vector(6 downto 0) 
    );
end entity bin2seg;

architecture behavioral of bin2seg is
begin

    process (bin, clear)
    begin
        if (clear = '1') then
            seg <= "1111111";  
        else
            case bin is
                when "0000" => seg <= "0000001"; -- 0
                when "0001" => seg <= "1001111"; -- 1
                when "0010" => seg <= "0010010"; -- 2
                when "0011" => seg <= "0000110"; -- 3
                when "0100" => seg <= "1001100"; -- 4
                when "0101" => seg <= "0100100"; -- 5
                when "0110" => seg <= "0100000"; -- 6
                when "0111" => seg <= "0001111"; -- 7
                when "1000" => seg <= "0000000"; -- 8
                when "1001" => seg <= "0000100"; -- 9
                when "1010" => seg <= "0001000"; -- A
                when "1011" => seg <= "1100000"; -- b
                when "1100" => seg <= "0110001"; -- C
                when "1101" => seg <= "1000010"; -- d
                when "1110" => seg <= "0110000"; -- E
                when "1111" => seg <= "0111000"; -- F
                when others => seg <= "1111111"; 
            end case;
        end if;
    end process;

end architecture behavioral;
