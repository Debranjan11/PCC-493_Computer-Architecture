----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:03:40 02/28/2023 
-- Design Name: 
-- Module Name:    FullAdder_rtl - Behavioral 
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

entity FullAdder_rtl is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           SUM : out  STD_LOGIC;
           CARRY : out  STD_LOGIC);
end FullAdder_rtl;

architecture Behavioral of FullAdder_rtl is

component HalfAdder_rtl is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           S : out  STD_LOGIC;
           CR : out  STD_LOGIC);
end component;

signal temp: STD_LOGIC:='0';
signal c1,c2: STD_LOGIC:='0';

begin

HA0: HalfAdder_rtl port map(x=>A, y=>B, S=>temp, CR=>c1);
HA1: HalfAdder_rtl port map(x=>temp, y=>C, S=>SUM, CR=>c2);
CARRY <= c1 OR c2;

end Behavioral;

