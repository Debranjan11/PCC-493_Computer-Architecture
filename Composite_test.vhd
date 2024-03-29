--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:58:27 03/14/2023
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000121011/Composite/Composite_test.vhd
-- Project Name:  Composite
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Composite_rtl
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
 
ENTITY Composite_test IS
END Composite_test;
 
ARCHITECTURE behavior OF Composite_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Composite_rtl
    PORT(
         X : IN  std_logic_vector(3 downto 0);
         Y : IN  std_logic_vector(3 downto 0);
         M : IN  std_logic;
         Sum : OUT  std_logic_vector(3 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(3 downto 0) := (others => '0');
   signal Y : std_logic_vector(3 downto 0) := (others => '0');
   signal M : std_logic := '0';

 	--Outputs
   signal Sum : std_logic_vector(3 downto 0);
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Composite_rtl PORT MAP (
          X => X,
          Y => Y,
          M => M,
          Sum => Sum,
          Cout => Cout
        );

   -- Clock process definitions

   -- Stimulus process
   stim_proc: process
   begin		
	
		X<="1001";Y<="0011";M<='0';
		wait for 1 ps;
		X<="1001";Y<="0011";M<='1';
		wait for 1 ps;
		X<="1001";Y<="1111";M<='0';
		wait for 1 ps;
		X<="1001";Y<="1111";M<='1';
		wait for 1 ps;

   end process;

END;
