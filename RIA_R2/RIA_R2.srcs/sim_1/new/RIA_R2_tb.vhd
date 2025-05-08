-- Testbench pre RIA_R2
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_RIA_R2 is
end entity;

architecture Behavioral of tb_RIA_R2 is
    -- Signály pre pripojenie k testovanému modulu
    signal minuty             : std_logic_vector(5 downto 0) := (others => '0');
    signal hodiny             : std_logic_vector(4 downto 0) := (others => '0');
    signal stopky_sekundy     : std_logic_vector(5 downto 0) := (others => '0');
    signal stopky_milisekundy : std_logic_vector(6 downto 0) := (others => '0');
    signal stopky_minuty      : std_logic_vector(5 downto 0) := (others => '0');
    signal alarm_minuty       : std_logic_vector(5 downto 0) := (others => '0');
    signal alarm_sekundy      : std_logic_vector(5 downto 0) := (others => '0');
    signal SW15               : std_logic := '0';
    signal SW14               : std_logic := '0';
    signal vystup_A           : std_logic_vector(7 downto 0);
    signal vystup_B           : std_logic_vector(7 downto 0);
    signal vystup_C           : std_logic_vector(7 downto 0);

begin
    -- Inštancia DUT
    DUT: entity work.RIA_R2
        port map (
            minuty             => minuty,
            hodiny             => hodiny,
            stopky_sekundy     => stopky_sekundy,
            stopky_milisekundy => stopky_milisekundy,
            stopky_minuty      => stopky_minuty,
            alarm_minuty       => alarm_minuty,
            alarm_sekundy      => alarm_sekundy,
            SW15               => SW15,
            SW14               => SW14,
            vystup_A           => vystup_A,
            vystup_B           => vystup_B,
            vystup_C           => vystup_C
        );

    -- Simulácia
    stim_proc: process
    begin
        -- Inicializácia údajov
        hodiny <= "10100";        -- 20
        minuty <= "111100";       -- 60
        alarm_minuty <= "001010"; -- 10
        alarm_sekundy <= "000101";-- 5
        stopky_minuty <= "000111";-- 7
        stopky_sekundy <= "001000";-- 8
        stopky_milisekundy <= "1000000"; -- 64

        -- Časový režim: hodiny/minúty
        SW15 <= '0'; SW14 <= '0';
        wait for 50 ns;

        -- Alarm režim
        SW15 <= '0'; SW14 <= '1';
        wait for 50 ns;

        -- Stopky režim
        SW15 <= '1'; SW14 <= '0';
        wait for 50 ns;

        -- Späť na režim hodiny/minúty
        SW15 <= '1'; SW14 <= '1';
        wait for 50 ns;

        wait;
    end process;

end architecture;
