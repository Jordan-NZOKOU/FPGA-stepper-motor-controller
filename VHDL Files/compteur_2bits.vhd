
library IEEE;
use ieee.std_logic_1164.all; 
use ieee.std_logic_arith.all; 
use ieee.std_logic_unsigned.all; 

entity compteur_2bits is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           enable : in  STD_LOGIC;
           sortie_compteur : out  STD_LOGIC_VECTOR (1 downto 0));
end compteur_2bits;

architecture Behavioral of compteur_2bits is
signal compte : std_logic_vector(1 downto 0);
begin

process(CLK,reset)
BEGIN 
if reset ='1' then
   compte <="00";
elsif rising_edge(CLK) then
    if enable ='1' then
       compte <= compte + 1; 
    end if;
end if;
END PROCESS; 
Sortie_compteur <= compte;

end Behavioral;

