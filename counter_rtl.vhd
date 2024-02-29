----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:58:08 04/11/2023 
-- Design Name: 
-- Module Name:    counter_rtl - Behavioral 
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

entity counter_rtl is
    Port ( Clk : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Count : out  STD_LOGIC_VECTOR (3 downto 0));
end counter_rtl;

architecture Behavioral of counter_rtl is
signal q0,q1,q2,qp0,qp1,qp2,QA,QPA,QB,QPB,QC,QPC,I1,I2,I3:STD_LOGIC:='0';
component JK_rtl is
    Port ( J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           C : in  STD_LOGIC;
			  reset: in STD_LOGIC;
           Q : out  STD_LOGIC;
           Qp : out  STD_LOGIC);
end component;
begin
JK0: JK_rtl port map(J=>'1',K=>'1',C=>Clk,reset=>'0',Q=>q0,Qp=>qp0);
Count(0)<=q0; QA<= q0 and D; QPA <= not qp0 and not D; I1 <= QA or QPA;

JK1: JK_rtl port map(J=> I1,K=> I1,C=>Clk,reset=>'0',Q=>q1,Qp=>qp1);
Count(1)<=q1; QB<= QA and q1; QPB <= QPA and not qp1; I2<= QB or QPB;

JK2: JK_rtl port map(J=> I2,K=> I2,C=>Clk,reset=>'0',Q=>q2,Qp=>qp2);
Count(2)<=q2; QC<= q2 and QB; QPC <= not qp2 and QPB; I3 <= QC or QPC;

JK3: JK_rtl port map(J=> I3,K=> I3,C=>Clk,reset=>'0',Q=>Count(3));

end Behavioral;


