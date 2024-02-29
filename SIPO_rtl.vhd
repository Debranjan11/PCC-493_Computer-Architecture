----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:36:27 04/04/2023 
-- Design Name: 
-- Module Name:    SIPO_rtl - Behavioral 
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

entity SIPO_rtl is
    Port ( inp : in  STD_LOGIC;
           clock : in  STD_LOGIC;
			  Q : out  STD_LOGIC_VECTOR (3 downto 0);
           reset : in  STD_LOGIC);
          
end SIPO_rtl;

architecture Behavioral of SIPO_rtl is

component D_rtl is
    Port ( D : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           q : out  STD_LOGIC;
           qp : out  STD_LOGIC);
end component;

signal t1,t2,t3,t4: STD_LOGIC:='0';

begin

D1: D_rtl port map(D=>inp,clk=>clock,rst=>reset,q=>t1);
D2: D_rtl port map(D=>t1,clk=>clock,rst=>reset,q=>t2);
D3: D_rtl port map(D=>t2,clk=>clock,rst=>reset,q=>t3);
D4: D_rtl port map(D=>t3,clk=>clock,rst=>reset,q=>t4);

Q(0)<=t1;
Q(1)<=t2;
Q(2)<=t3;
Q(3)<=t4;

end Behavioral;

