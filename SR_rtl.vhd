----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:48:22 03/28/2023 
-- Design Name: 
-- Module Name:    SR_rtl - Behavioral 
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

entity SR_rtl is
    Port ( S : in  STD_LOGIC;
           R : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qp : out  STD_LOGIC);
end SR_rtl;

architecture Behavioral of SR_rtl is
signal t1,t2: STD_LOGIC:='0';

begin
	Q<=t1;
	Qp<=t2;
	process(clk,rst)
	
	begin
		if(rst='1')then
			t1<='0';
			t2<='1';
			
		elsif(rising_edge(clk)) then
			if(S='0' and R='0') then
				NULL;
				elsif(S='0' and R='1') then
					t1<='0';
					t2<='1';
				elsif(S='1' and R='0') then
					t1<='1';
					t2<='0';
				else
					t1<='Z';
					t2<='Z';
			end if;
		end if;
	end process;
end Behavioral;

