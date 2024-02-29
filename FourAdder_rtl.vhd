----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:50:25 02/28/2023 
-- Design Name: 
-- Module Name:    FourAdder_rtl - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FourAdder_rtl is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           SUM : out  STD_LOGIC_VECTOR (3 downto 0);
           CARRY : out  STD_LOGIC);
end FourAdder_rtl;

architecture Behavioral of FourAdder_rtl is

component FullAdder_rtl is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           z : in  STD_LOGIC;
           S : out  STD_LOGIC;
           CR : out  STD_LOGIC);
end component;
signal c1,c2,c3,c4: STD_LOGIC:='0';

begin

FA0: FullAdder_rtl port map(x=>A(0), y=>B(0),z=>Cin,S=>SUM(0), CR=>c1);
FA1: FullAdder_rtl port map(x=>A(1), y=>B(1),z=>c1, S=>SUM(1), CR=>c2);
FA2: FullAdder_rtl port map(x=>A(2), y=>B(2),z=>c2, S=>SUM(2), CR=>c3);
FA3: FullAdder_rtl port map(x=>A(3), y=>B(3),z=>c3, S=>SUM(3), CR=>c4);

CARRY <= c4;

end Behavioral;

