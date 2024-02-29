----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:11:35 03/28/2023 
-- Design Name: 
-- Module Name:    DEMUX_rtl - Behavioral 
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

entity DEMUX_rtl is
    Port ( I : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR (2 downto 0);
           O : out  STD_LOGIC_VECTOR (7 downto 0));
end DEMUX_rtl;

architecture Behavioral of DEMUX_rtl is

begin
process(S)

		begin
			if(S="000") then
			O(0)<=I;
			elsif(S="001") then
			O(1)<=I;
			elsif(S="010") then
			O(2)<=I;
			elsif(S="011") then
			O(3)<=I;
			elsif(S="100") then
			O(4)<=I;
			elsif(S="101") then
			O(5)<=I;
			elsif(S="110") then
			O(6)<=I;
			else
			O(7)<=I;
		
		end if;
end process;

end Behavioral;

