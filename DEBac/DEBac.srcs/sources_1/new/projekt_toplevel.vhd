library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_level is
    port (
     
        CLK100MHZ   : in  std_logic;
        SW1         : in  std_logic;
        SW2         : in  std_logic;
        SW14        : in  std_logic;
        SW15        : in  std_logic;
        BTN_U       : in  std_logic;
        BTN_D       : in  std_logic;
        BTN_C       : in  std_logic;
        
        CA          : out std_logic;
        CB          : out std_logic;
        CC          : out std_logic;
        CD          : out std_logic;
        CE          : out std_logic;
        CF          : out std_logic;
        CG          : out std_logic;
        AN   : out std_logic_vector(7 downto 0)

    );
end entity top_level;




architecture Behavioral of top_level is

    
    signal hodSW1   : std_logic;
    signal hodSW2   : std_logic;
    signal hodBTN_U : std_logic;
    signal hodBTN_D : std_logic;

    signal stopBTN_C : std_logic;
    signal stopBTN_D : std_logic;

    signal alarmSW1   : std_logic;
    signal alarmSW2   : std_logic;
    signal alarmBTN_U : std_logic;
    signal alarmBTN_C : std_logic;
    signal alarmBTN_D : std_logic;

    signal alarm_minuty       : std_logic_vector(5 downto 0);
    signal alarm_sekundy      : std_logic_vector(5 downto 0);
    signal hodiny_minuty      : std_logic_vector(5 downto 0);
    signal hodiny_hodiny      : std_logic_vector(4 downto 0);
    signal stopky_minuty      : std_logic_vector(5 downto 0);
    signal stopky_sekundy     : std_logic_vector(5 downto 0);
    signal stopky_milisekundy : std_logic_vector(7 downto 0);

    signal tick_ms  : std_logic;
    signal tick_s   : std_logic;
    signal tick_min : std_logic;

    signal A : std_logic_vector(7 downto 0);
    signal B : std_logic_vector(7 downto 0);
    signal C : std_logic_vector(7 downto 0);

    signal digitAdes : std_logic_vector(3 downto 0);
    signal digitAjed : std_logic_vector(3 downto 0);
    signal digitBdes : std_logic_vector(3 downto 0);
    signal digitBjed : std_logic_vector(3 downto 0);
    signal digitCdes : std_logic_vector(3 downto 0);
    signal digitCjed : std_logic_vector(3 downto 0);

    signal selected_digit : std_logic_vector(3 downto 0);

    signal BTN_U_deb : std_logic;
    signal BTN_D_deb : std_logic;
    signal BTN_C_deb : std_logic;

    component debouncer is
        Port ( inp  : in STD_LOGIC;
               clk  : in STD_LOGIC;
               outp : out STD_LOGIC;
               rst  : in STD_LOGIC
               );
    end component;

    component TickGenerator is
        Port (
            clk       : in  STD_LOGIC;
            reset     : in  STD_LOGIC;
            tick_ms   : out STD_LOGIC;
            tick_s    : out STD_LOGIC;
            tick_min  : out STD_LOGIC
        );
    end component;

    component bin2seg is
        port (
            clear : in    std_logic;                    
            bin   : in    std_logic_vector(3 downto 0); 
            seg   : out   std_logic_vector(6 downto 0)  
        );
    end component;

    component RIA_R1 is
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
      end component;

      component RIA_R2 is
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
    end component;

    component delic is
        port (
            clk        : in  std_logic;  
            A          : in  std_logic_vector(7 downto 0);
            B          : in  std_logic_vector(7 downto 0);
            C          : in  std_logic_vector(7 downto 0);
            digitAdes  : out std_logic_vector(3 downto 0);
            digitAjed  : out std_logic_vector(3 downto 0);
            digitBdes  : out std_logic_vector(3 downto 0);
            digitBjed  : out std_logic_vector(3 downto 0);
            digitCdes  : out std_logic_vector(3 downto 0);
            digitCjed  : out std_logic_vector(3 downto 0)
        );
    end component;

    component selektor is
        port (
            clk             : in  std_logic;
            reset           : in  std_logic;
            tick_ms         : in  std_logic;  
            digit0		    : in  std_logic_vector(3 downto 0);
            digit1		    : in  std_logic_vector(3 downto 0);
            digit2	    	: in  std_logic_vector(3 downto 0);
            digit3		    : in  std_logic_vector(3 downto 0);
            digit4	    	: in  std_logic_vector(3 downto 0);
            digit5		    : in  std_logic_vector(3 downto 0);
            selected_digit 	: out std_logic_vector(3 downto 0);
            an_select      	: out std_logic_vector(7 downto 0) 
        );
    end component;

    component alarm is
        port (
            clk           : in  std_logic; 
            alarm_SW1     : in  std_logic;  
            alarm_SW2     : in  std_logic;  
            alarm_BTN_U   : in  std_logic; 
            alarm_BTN_D   : in  std_logic;  
            alarm_BTN_C   : in  std_logic;  
            tick_s        : in  std_logic;  
            alarm_minuty  : out std_logic_vector(5 downto 0); 
            alarm_sekundy : out std_logic_vector(5 downto 0)  
        );
    end component;

    component Hodiny is
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
    end component;

    component Stopky is
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
    end component;

    begin

    RIA1 : component RIA_R1
        port map (
            SW1          => SW1,
            SW2          => SW2,
            SW14         => SW14,
            SW15         => SW15,
            BTN_U        => BTN_U_deb,
            BTN_D        => BTN_D_deb,
            BTN_C        => BTN_C_deb,
            hod_SW1      => hodSW1,
            hod_SW2      => hodSW2,
            hod_BTN_U    => hodBTN_U,
            hod_BTN_D    => hodBTN_D,
            stop_BTN_C   => stopBTN_C,
            stop_BTN_D   => stopBTN_D,
            alarm_SW1    => alarmSW1,
            alarm_SW2    => alarmSW2,
            alarm_BTN_U  => alarmBTN_U,
            alarm_BTN_C  => alarmBTN_C,
            alarm_BTN_D  => alarmBTN_D
        );

    CLK : component TickGenerator
        port map (
            clk       => CLK100MHZ,
            reset     => '0',
            tick_ms   => tick_ms,
            tick_s    => tick_s,
            tick_min  => tick_min
        );

    HOD : component Hodiny
        port map (
            clk       => CLK100MHZ,
            reset     => '0',
            SW1       => hodSW1,
            SW2       => hodSW2,
            BTN_U     => hodBTN_U,
            tick_s    => tick_min,
            BTN_D     => hodBTN_D,
            minuty    => hodiny_minuty,
            hodiny    => hodiny_hodiny
        );

    STOPKYx : component Stopky
        port map (
            clk      => CLK100MHZ,
            reset    => '0',
            BTN_C    => stopBTN_C,
            BTN_D    => stopBTN_D,
            tick_ms  => tick_ms,
            ms_out   => stopky_milisekundy,
            s_out    => stopky_sekundy,
            min_out  => stopky_minuty
        );

    ALARMx : component alarm
        port map (
            clk           => CLK100MHZ,
            alarm_SW1     => alarmSW1,
            alarm_SW2     => alarmSW2,
            alarm_BTN_U   => alarmBTN_U,
            alarm_BTN_D   => alarmBTN_D,
            alarm_BTN_C   => alarmBTN_C,
            tick_s        => tick_s,
            alarm_minuty  => alarm_minuty,
            alarm_sekundy => alarm_sekundy
        );

    RIA2 : component RIA_R2
        port map (
            minuty             => hodiny_minuty,
            hodiny             => hodiny_hodiny,
            stopky_sekundy     => stopky_sekundy,
            stopky_milisekundy => stopky_milisekundy,
            stopky_minuty      => stopky_minuty,
            alarm_minuty       => alarm_minuty,
            alarm_sekundy      => alarm_sekundy,
            SW15               => SW15,
            SW14               => SW14,
            vystup_A           => A,
            vystup_B           => B,
            vystup_C           => C
        );

    DELICx : component delic
        port map (
            clk        => CLK100MHZ,
            A          => A,
            B          => B,
            C          => C,
            digitAdes  => digitAdes,
            digitAjed  => digitAjed,
            digitBdes  => digitBdes,
            digitBjed  => digitBjed,
            digitCdes  => digitCdes,
            digitCjed  => digitCjed
        );
    SELEKTORx : component selektor
        port map (
            clk             => CLK100MHZ,
            reset           => '0',
            tick_ms         => tick_ms,
            digit5          => digitAdes,
            digit4          => digitAjed,
            digit3          => digitBdes,
            digit2          => digitBjed,
            digit1          => digitCdes,
            digit0          => digitCjed,
            selected_digit  => selected_digit,
            an_select       => AN
        );
    BIN2SEGx : component bin2seg
        port map (
            clear => '0',
            bin   => selected_digit,
            seg(6)   => CA,
            seg(5)   => CB,
            seg(4)   => CC,
            seg(3)   => CD,
            seg(2)   => CE,
            seg(1)   => CF,
            seg(0)   => CG
        );

    DEB1 : component debouncer
        port map (
            inp  => BTN_U,
            clk  => CLK100MHZ,
            outp => BTN_U_deb,
            rst  => '0'
        );

    DEB2 : component debouncer
        port map (
            inp  => BTN_D,
            clk  => CLK100MHZ,
            outp => BTN_D_deb,
            rst  => '0'
        );

    DEB3 : component debouncer  
        port map (
            inp  => BTN_C,
            clk  => CLK100MHZ,
            outp => BTN_C_deb,
            rst  => '0'
        );
   


end architecture Behavioral;
