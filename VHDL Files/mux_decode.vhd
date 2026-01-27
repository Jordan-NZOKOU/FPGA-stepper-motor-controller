
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_decode is
   Port (  A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           C : in  STD_LOGIC_VECTOR (3 downto 0);
           D : in  STD_LOGIC_VECTOR (3 downto 0);
           SEL : in  STD_LOGIC_VECTOR (1 downto 0);
           afficheur_0 : out  STD_LOGIC;
           afficheur_1 : out  STD_LOGIC;
           afficheur_2 : out  STD_LOGIC;
           afficheur_3 : out  STD_LOGIC;
           sortie_mux : out  STD_LOGIC_VECTOR (3 downto 0)
         );
end mux_decode;

architecture Behavioral of mux_decode is

begin
process(sel,A,B,C,D)
begin
case  sel is
	  when "00" =>  Sortie_Mux <= A; afficheur_0 <='0';afficheur_1 <='1'; afficheur_2 <='1'; afficheur_3 <='1';
	  when "01" =>  Sortie_Mux <= B; afficheur_0 <='1';afficheur_1 <='0'; afficheur_2 <='1'; afficheur_3 <='1';
	  when "10" =>  Sortie_Mux <= C; afficheur_0 <='1';afficheur_1 <='1'; afficheur_2 <='0'; afficheur_3 <='1';
	  when others => Sortie_Mux <= D; afficheur_0 <='1';afficheur_1 <='1'; afficheur_2 <='1'; afficheur_3 <='0';
end case;
end process;


end Behavioral;
