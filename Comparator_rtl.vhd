----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:23:04 03/14/2023 
-- Design Name: 
-- Module Name:    Comparator_rtl - Behavioral 
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

entity Comparator_rtl is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           AgtB : out  STD_LOGIC;
           AltB : out  STD_LOGIC;
           AeqB : out  STD_LOGIC);
end Comparator_rtl;

architecture Behavioral of Comparator_rtl is
signal t1,t2,t3,t4: STD_LOGIC:='0';

begin

t1<=((not A(3)) AND (not B(3))) OR (A(3) AND B(3));
t2<=((not A(2)) AND (not B(2))) OR (A(2) AND B(2)); 
t3<=((not A(1)) AND (not B(1))) OR (A(1) AND B(1)); 
t4<=((not A(0)) AND (not B(0))) OR (A(0) AND B(0));

AeqB<=(t1 AND t2) AND (t3 AND t4);
AgtB<=(A(3) and (not B(3))) or (t3 and A(2) and (not B(2))) or (t3 and t2 and A(1) and (not B(1))) or (t3 and t2 and t1 and A(0) and (not B(0)));
AltB<=((NOT A(3)) AND B(3)) OR (t3 and (NOT A(2)) AND B(2)) OR (t3 AND t2 AND (NOT A(1)) AND B(1)) OR (t3 AND t2 AND t1 AND (NOT A(0) AND B(0)));
end Behavioral;

