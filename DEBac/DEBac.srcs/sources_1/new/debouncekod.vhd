library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity debouncer is
    Port ( inp : in STD_LOGIC;
           clk : in STD_LOGIC;
           outp : out STD_LOGIC;
           rst : in STD_LOGIC);
end debouncer;

architecture Behavioral of debouncer is
    signal q1, q2, q3, q4, q5, q6 : std_logic;
begin

    p_clk: process(clk) is
    begin
        if (rising_edge(clk)) then
            if (rst = '1') then
                q1 <= '0';
                q2 <= '0';
                q3 <= '0';
                q4 <= '0';
                q5 <= '0';
                q6 <= '0';
            else 
                q1 <= inp;
                q2 <= q1;
                q3 <= q2;
                q4 <= q3;
                q5 <= q4;
                q6 <= q5;
                
            end if;
            outp <= q5 and not q6;
        end if;
        
    end process;
    
end Behavioral;