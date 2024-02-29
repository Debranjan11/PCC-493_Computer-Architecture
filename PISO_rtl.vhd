----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:29:33 04/04/2023 
-- Design Name: 
-- Module Name:    PISO_rtl - Behavioral 
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

entity PISO_rtl is
    Port ( Q : out  STD_LOGIC;
           inp : in  STD_LOGIC_VECTOR (3 downto 0);
           clock : in  STD_LOGIC;
			  shift : in  STD_LOGIC;
           reset : in  STD_LOGIC);
end PISO_rtl;

architecture Behavioral of PISO_rtl is

component D_rtl is
    Port ( D : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           q : out  STD_LOGIC;
           qp : out  STD_LOGIC);
			  
end component;

signal t1,t2,t3,t4,s1,s2,s3,s4: STD_LOGIC:='0';

begin

s1<= (t1 and shift) or ((not shift) and inp(1));
s2<= (t2 and shift) or ((not shift) and inp(2));
s3<= (t3 and shift) or ((not shift) and inp(3));

D1: D_rtl port map(D=>inp(0),clk=>clock,rst=>reset,q=>t1);
D2: D_rtl port map(D=>s1,clk=>clock,rst=>reset,q=>t2);
D3: D_rtl port map(D=>s2,clk=>clock,rst=>reset,q=>t3);
D4: D_rtl port map(D=>s3,clk=>clock,rst=>reset,q=>t4);

Q<=t4;

end Behavioral;

