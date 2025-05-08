library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RIA_R2 is
    Port (
        minuty             : in  STD_LOGIC_VECTOR(5 downto 0);
        hodiny             : in  STD_LOGIC_VECTOR(4 downto 0);
        stopky_sekundy     : in  STD_LOGIC_VECTOR(5 downto 0);
        stopky_milisekundy : in  STD_LOGIC_VECTOR(7 downto 0);
        stopky_minuty      : in  STD_LOGIC_VECTOR(5 downto 0);
        alarm_minuty       : in  STD_LOGIC_VECTOR(5 downto 0);
        alarm_sekundy      : in  STD_LOGIC_VECTOR(5 downto 0);
        SW15               : in  STD_LOGIC;
        SW14               : in  STD_LOGIC;
        vystup_A           : out STD_LOGIC_VECTOR(7 downto 0);
        vystup_B           : out STD_LOGIC_VECTOR(7 downto 0);
        vystup_C           : out STD_LOGIC_VECTOR(7 downto 0)
    );
end RIA_R2;

architecture Behavioral of RIA_R2 is
    signal mode : STD_LOGIC_VECTOR(1 downto 0);  
begin

    mode <= SW15 & SW14; 

    process(mode, minuty, hodiny, stopky_sekundy, stopky_milisekundy, stopky_minuty, alarm_minuty, alarm_sekundy)
    begin
        case mode is
            when "00" | "11" =>
                vystup_A <= "000" & hodiny;        
                vystup_B <= "00" & minuty;        
                vystup_C <= (others => '0');

            when "01" =>
                vystup_A <= "00" & alarm_minuty;    
                vystup_B <= "00" & alarm_sekundy;
                vystup_C <= (others => '0');

            when "10" =>
                vystup_A <= "00" & stopky_minuty;
                vystup_B <= "00" & stopky_sekundy;
                vystup_C <= stopky_milisekundy(7 downto 0);  

            when others =>
                vystup_A <= (others => '0');
                vystup_B <= (others => '0');
                vystup_C <= (others => '0');
        end case;
    end process;

end Behavioral;
