library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RIA_R1_tb is
end RIA_R1_tb;

architecture Behavioral of RIA_R1_tb is
  -- Signály pre vstupy a výstupy
  signal SW14, SW15      : std_logic := '0';
  signal SW1, SW2        : std_logic := '0';
  signal BTN_U, BTN_C, BTN_D : std_logic := '0';

  signal hod_SW1, hod_SW2       : std_logic;
  signal hod_BTN_U, hod_BTN_D   : std_logic;

  signal stop_BTN_C, stop_BTN_D : std_logic;

  signal alarm_SW1, alarm_SW2       : std_logic;
  signal alarm_BTN_U, alarm_BTN_C, alarm_BTN_D : std_logic;
begin
  -- Inštancia testovanej jednotky
  uut: entity work.RIA_R1
    port map (
      SW14 => SW14,
      SW15 => SW15,
      SW1 => SW1,
      SW2 => SW2,
      BTN_U => BTN_U,
      BTN_C => BTN_C,
      BTN_D => BTN_D,

      hod_SW1 => hod_SW1,
      hod_SW2 => hod_SW2,
      hod_BTN_U => hod_BTN_U,
      hod_BTN_D => hod_BTN_D,

      stop_BTN_C => stop_BTN_C,
      stop_BTN_D => stop_BTN_D,

      alarm_SW1 => alarm_SW1,
      alarm_SW2 => alarm_SW2,
      alarm_BTN_U => alarm_BTN_U,
      alarm_BTN_C => alarm_BTN_C,
      alarm_BTN_D => alarm_BTN_D
    );

  -- Testovací proces
  stim_proc: process
  begin
    -- Test 00: nič sa nepripojí
    SW15 <= '0'; SW14 <= '0';
    SW1 <= '1'; SW2 <= '1'; BTN_U <= '1'; BTN_C <= '1'; BTN_D <= '1';
    wait for 10 ns;

    -- Test 01: pripoj alarm výstupy
    SW15 <= '0'; SW14 <= '1';
    wait for 10 ns;

    -- Test 10: pripoj stop výstupy
    SW15 <= '1'; SW14 <= '0';
    wait for 10 ns;

    -- Test 11: pripoj hod výstupy
    SW15 <= '1'; SW14 <= '1';
    wait for 10 ns;

    wait;
  end process;
end Behavioral;
