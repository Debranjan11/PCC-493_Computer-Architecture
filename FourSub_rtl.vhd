----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:20:44 02/28/2023 
-- Design Name: 
-- Module Name:    FourSub_rtl - Behavioral 
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

entity FourSub_rtl is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           DIFF : out  STD_LOGIC_VECTOR (3 downto 0);
           BORROW : out  STD_LOGIC);
end FourSub_rtl;

architecture Behavioral of FourSub_rtl is

component FullSub_rtl is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           z : in  STD_LOGIC;
           D : out  STD_LOGIC;
           BR : out  STD_LOGIC);
end component;
signal c1,c2,c3,c4: STD_LOGIC:='0';

begin

FS0: FullSub_rtl port map(x=>A(0), y=>B(0),z=>Cin,D=>DIFF(0), BR=>c1);
FS1: FullSub_rtl port map(x=>A(1), y=>B(1),z=>c1, D=>DIFF(1), BR=>c2);
FS2: FullSub_rtl port map(x=>A(2), y=>B(2),z=>c2, D=>DIFF(2), BR=>c3);
FS3: FullSub_rtl port map(x=>A(3), y=>B(3),z=>c3, D=>DIFF(3), BR=>c4);

BORROW <= c4;

end Behavioral;

