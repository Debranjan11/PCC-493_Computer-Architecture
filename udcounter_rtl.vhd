----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:40:26 03/28/2023 
-- Design Name: 
-- Module Name:    udcounter_rtl - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity udcounter_rtl is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           m : in  STD_LOGIC;
           q : inout  STD_LOGIC_VECTOR (3 downto 0));
end udcounter_rtl;

architecture Behavioral of udcounter_rtl is

begin
process(clk,reset,m,q)
begin
if(reset='1')then
q<=(others=>'0');
elsif(rising_edge(clk))then
if(m='0')then
q<=q+1;
else 
q<=q-1;
end if;
end if;
end process;

end Behavioral;

