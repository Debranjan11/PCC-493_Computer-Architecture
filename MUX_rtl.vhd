----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:35:22 03/28/2023 
-- Design Name: 
-- Module Name:    MUX_rtl - Behavioral 
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

entity MUX_rtl is
    Port ( I : in  STD_LOGIC_VECTOR (7 downto 0);
           S : in  STD_LOGIC_VECTOR (2 downto 0);
           O : out  STD_LOGIC);
end MUX_rtl;

architecture Behavioral of MUX_rtl is

begin
process(S)

	begin
		if(S="000") then
		O<=I(0);
		elsif(S="001") then
		O<=I(1);
		elsif(S="010") then
		O<=I(2);
		elsif(S="011") then
		O<=I(3);
		elsif(S="100") then
		O<=I(4);
		elsif(S="101") then
		O<=I(5);
		elsif(S="110") then
		O<=I(6);
		else
		O<=I(7);
	
	end if;
end process;
end Behavioral;

