----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:59:38 02/21/2023 
-- Design Name: 
-- Module Name:    HalfSub_rtl - Behavioral 
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

entity HalfSub_rtl is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           DIFFERENCE : out  STD_LOGIC;
           BORROW : out  STD_LOGIC);
end HalfSub_rtl;

architecture Behavioral of HalfSub_rtl is

begin

DIFFERENCE <= (A AND (NOT B)) OR ((NOT A) AND B);
BORROW <= ((NOT A) AND B);

end Behavioral;

