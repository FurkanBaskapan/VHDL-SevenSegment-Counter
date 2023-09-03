library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity fuykaninproje is
  Port ( reset : in std_logic;
         clock : in std_logic;
         A : out std_logic_vector(7 downto 0);
         B : out std_logic_vector(7 downto 0)
  );
end fuykaninproje;

architecture Behavioral of fuykaninproje is

signal counter : integer :=0;
signal counter_b : integer :=0;


  begin
    
   process(clock,reset)
     begin
       A <= "11111110";
       if(reset='1') then
       
       elsif (rising_edge(clock)) then
       counter_b <= counter_b + 1;
       if(counter_b = 2000000)then
           counter_b <= 0;
          counter <= counter + 1;
          
         
             end if;
              if (counter = 9) then
             counter <= 0;
         end if;
        
  
      case counter is
       when  0 => B <= "00000011";
       when  1 => B <= "10011111";
       when  2 => B <= "00100101";
       when  3 => B <= "00001101";
       when  4 => B <= "10011001";
       when  5 => B <= "01001001";
       when  6 => B <= "01000001";
       when  7 => B <= "00011111";
       when  8 => B <= "00000001";
       when  9 => B <= "00001001";
       when others => B <= "11111111";
       end case;
       end if;
       end process;
       
end Behavioral;
