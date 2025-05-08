library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RIA_R1 is
  port (
    SW14  : in std_logic;
    SW15  : in std_logic;
    SW1   : in std_logic;
    SW2   : in std_logic;
    BTN_U : in std_logic;
    BTN_C : in std_logic;
    BTN_D : in std_logic;

    hod_SW1   : out std_logic;
    hod_SW2   : out std_logic;
    hod_BTN_U : out std_logic;
    hod_BTN_D : out std_logic;

    stop_BTN_C : out std_logic;
    stop_BTN_D : out std_logic;

    alarm_SW1   : out std_logic;
    alarm_SW2   : out std_logic;
    alarm_BTN_U : out std_logic;
    alarm_BTN_C : out std_logic;
    alarm_BTN_D : out std_logic
  );
end RIA_R1;

architecture Behavioral of RIA_R1 is
  signal mode : std_logic_vector(1 downto 0);
begin

  mode <= SW15 & SW14;

  process (mode, SW1, SW2, BTN_U, BTN_C, BTN_D)
  begin
    
    hod_SW1   <= '0';
    hod_SW2   <= '0';
    hod_BTN_U <= '0';
    hod_BTN_D <= '0';

    stop_BTN_C <= '0';
    stop_BTN_D <= '0';

    alarm_SW1   <= '0';
    alarm_SW2   <= '0';
    alarm_BTN_U <= '0';
    alarm_BTN_C <= '0';
    alarm_BTN_D <= '0';

    case mode is
      when "00" => 
        null;
      when "01" => -- pripoj alarm výstupy
        alarm_SW1   <= SW1;
        alarm_SW2   <= SW2;
        alarm_BTN_U <= BTN_U;
        alarm_BTN_C <= BTN_C;
        alarm_BTN_D <= BTN_D;
      when "10" => -- pripoj stop výstupy
        stop_BTN_C <= BTN_C;
        stop_BTN_D <= BTN_D;
      when "11" => -- pripoj hod výstupy
        hod_SW1   <= SW1;
        hod_SW2   <= SW2;
        hod_BTN_U <= BTN_U;
        hod_BTN_D <= BTN_D;
      when others =>
        null;
    end case;
  end process;

end Behavioral;