----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:33:39 03/14/2023 
-- Design Name: 
-- Module Name:    Composite_rtl - Behavioral 
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

entity Composite_rtl is
    Port ( X : in  STD_LOGIC_VECTOR (3 downto 0);
           Y : in  STD_LOGIC_VECTOR (3 downto 0);
           M : in  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  STD_LOGIC);
end Composite_rtl;

architecture Behavioral of Composite_rtl is

component FullAdder_rtl is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           S : out  STD_LOGIC;
           Cr : out  STD_LOGIC);
end component;

component XOR_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end component;

signal o1,o2,o3,o4,t1,t2,t3,t4: STD_LOGIC:='0';

begin

X0: XOR_rtl port map(a=>Y(0),b=>M,Y=>o1);
X1: XOR_rtl port map(a=>Y(1),b=>M,Y=>o2);
X2: XOR_rtl port map(a=>Y(2),b=>M,Y=>o3);
X3: XOR_rtl port map(a=>Y(3),b=>M,Y=>o4);
FA0: FullAdder_rtl port map(A=>X(0),B=>o1,C=>M,S=>SUM(0),Cr=>t1);
FA1: FullAdder_rtl port map(A=>X(1),B=>o2,C=>t1,S=>SUM(1),Cr=>t2);
FA2: FullAdder_rtl port map(A=>X(2),B=>o3,C=>t2,S=>SUM(2),Cr=>t3);
FA3: FullAdder_rtl port map(A=>X(3),B=>o4,C=>t3,S=>SUM(3),Cr=>Cout);

end Behavioral;

