--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:24:20 02/28/2023
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000121011/FourBitAdder/FourBit_test.vhd
-- Project Name:  FourBitAdder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FourAdder_rtl
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
 
ENTITY FourBit_test IS
END FourBit_test;
 
ARCHITECTURE behavior OF FourBit_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FourAdder_rtl
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Cin : IN  std_logic;
         SUM : OUT  std_logic_vector(3 downto 0);
         CARRY : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

 	--Outputs
   signal SUM : std_logic_vector(3 downto 0);
   signal CARRY : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FourAdder_rtl PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          SUM => SUM,
          CARRY => CARRY
        );

   -- Clock process definitions

   -- Stimulus process
   stim_proc: process
   begin	

		A<="0111";
		B<="1000";
		Cin<='0';
		wait for 1 ps;
		A<="0111";
		B<="1000";
		Cin<='1';
		wait for 1 ps;
		A<="0000";
		B<="1111";
		Cin<='0';
		wait for 1 ps;
		A<="0000";
		B<="1111";
		Cin<='1';
		wait for 1 ps;
		
		
   end process;

END;
