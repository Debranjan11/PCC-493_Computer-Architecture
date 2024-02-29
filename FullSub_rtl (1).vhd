----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:49:56 02/28/2023 
-- Design Name: 
-- Module Name:    FullSub_rtl - Behavioral 
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

entity FullSub_rtl is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           DIFF : out  STD_LOGIC;
           BORROW : out  STD_LOGIC);
end FullSub_rtl;

architecture Behavioral of FullSub_rtl is

component HalfSub_rtl is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           D : out  STD_LOGIC;
           BR : out  STD_LOGIC);
end component;

signal temp: STD_LOGIC:='0';
signal c1,c2: STD_LOGIC:='0';

begin

HS0: HalfSub_rtl port map(x=>A, y=>B, D=>temp, BR=>c1);
HS1: HalfSub_rtl port map(x=>temp, y=>C, D=>DIFF, BR=>c2);
BORROW <= c1 OR c2;

end Behavioral;

