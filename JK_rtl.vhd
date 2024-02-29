----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:36:05 03/28/2023 
-- Design Name: 
-- Module Name:    JK_rtl - Behavioral 
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

entity JK_rtl is
    Port ( J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qp : out  STD_LOGIC);
end JK_rtl;

architecture Behavioral of JK_rtl is
signal t1,t2: std_logic :='0';

begin
	Q<=t1;
	Qp<=t2;
	process(clk,rst)
	
	begin
		if(rst = '1') then
			t1<='0';
			t2<='1';
		elsif(rising_edge(clk)) then
			if(J='0' and K='0') then
					NULL;
				elsif(J='0' and K='1') then
					t1<='0';
					t2<='1';
				elsif(J='1' and K='0') then 
					t1<='1';
					t2<='0';
				else 
					t1 <= not t1;
					t2 <= not t2;
			end if;
		end if;
	end process;
end Behavioral;

