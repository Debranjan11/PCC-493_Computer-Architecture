--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:35:40 02/28/2023
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000121011/FourBitSub/FourSub_test.vhd
-- Project Name:  FourBitSub
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FourSub_rtl
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY FourSub_test IS
END FourSub_test;
 
ARCHITECTURE behavior OF FourSub_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FourSub_rtl
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Cin : IN  std_logic;
         DIFF : OUT  std_logic_vector(3 downto 0);
         BORROW : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

 	--Outputs
   signal DIFF : std_logic_vector(3 downto 0);
   signal BORROW : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FourSub_rtl PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          DIFF => DIFF,
          BORROW => BORROW
        );

   -- Clock process definitions

   -- Stimulus process
   stim_proc: process
   begin		
	
		A<="1000";
		B<="0111";
		Cin<='0';
		wait for 1 ps;
		A<="1000";
		B<="0111";
		Cin<='1';
		wait for 1 ps;
		A<="1111";
		B<="0000";
		Cin<='0';
		wait for 1 ps;
		A<="1111";
		B<="0000";
		Cin<='1';
		wait for 1 ps;
	
   end process;

END;
