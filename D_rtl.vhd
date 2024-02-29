----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:59:46 03/28/2023 
-- Design Name: 
-- Module Name:    D_rtl - Behavioral 
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

entity D_rtl is
    Port ( D : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qp : out  STD_LOGIC);
end D_rtl;

architecture Behavioral of D_rtl is
signal temp:std_logic:='0';

begin

process(D,clk,rst)
begin
     if(rst='1')then
	      temp<='0';
	 elsif(rising_edge(clk))then
			temp<=D;
	end if;
end process;

Q<=temp;
Qp<= not temp;

end Behavioral;

