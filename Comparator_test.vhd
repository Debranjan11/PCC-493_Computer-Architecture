--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:06:52 03/14/2023
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000121011/Comparator/Comparator_test.vhd
-- Project Name:  Comparator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Comparator_rtl
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
 
ENTITY Comparator_test IS
END Comparator_test;
 
ARCHITECTURE behavior OF Comparator_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Comparator_rtl
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         AgtB : OUT  std_logic;
         AltB : OUT  std_logic;
         AeqB : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal AgtB : std_logic;
   signal AltB : std_logic;
   signal AeqB : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Comparator_rtl PORT MAP (
          A => A,
          B => B,
          AgtB => AgtB,
          AltB => AltB,
          AeqB => AeqB
        );

   -- Clock process definitions
 
 

   -- Stimulus process
   stim_proc: process
   begin		
	
		A<="1111";
		B<="1100";
		wait for 1 ps;
		A<="1011";
		B<="1011";
		wait for 1 ps;
		A<="0000";
		B<="1100";
		wait for 1 ps;
		
   end process;

END;
