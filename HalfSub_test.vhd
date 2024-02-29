--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:02:01 02/21/2023
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000121011/HALF_SUBTRACTOR/HalfSub_test.vhd
-- Project Name:  HALF_SUBTRACTOR
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: HalfSub_rtl
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
 
ENTITY HalfSub_test IS
END HalfSub_test;
 
ARCHITECTURE behavior OF HalfSub_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT HalfSub_rtl
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         DIFFERENCE : OUT  std_logic;
         BORROW : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';

 	--Outputs
   signal DIFFERENCE : std_logic;
   signal BORROW : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: HalfSub_rtl PORT MAP (
          A => A,
          B => B,
          DIFFERENCE => DIFFERENCE,
          BORROW => BORROW
        );

   -- Clock process definitions

   -- Stimulus process
   stim_proc: process
   begin		
		
		A<='0';
		B<='0';
		wait for 1 ps;
		A<='0';
		B<='1';
		wait for 1 ps;
		A<='1';
		B<='0';
		wait for 1 ps;
		A<='1';
		B<='1';
		wait for 1 ps;
	
      wait;
   end process;

END;
