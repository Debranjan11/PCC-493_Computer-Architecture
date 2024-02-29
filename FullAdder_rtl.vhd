----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:36:30 02/21/2023 
-- Design Name: 
-- Module Name:    FullAdder_rtl - Behavioral 
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

entity FullAdder_rtl is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           SUM : out  STD_LOGIC;
           CARRY : out  STD_LOGIC);
end FullAdder_rtl;

architecture Behavioral of FullAdder_rtl is

signal temp: STD_LOGIC:='0';

begin

	temp <= (A AND (NOT B)) OR (B AND (NOT A));
	SUM <= (temp AND (NOT C)) OR ((NOT temp) AND C);
	CARRY <= (A AND B) OR (B AND C) OR (A AND C);

end Behavioral;

