--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:50:31 03/28/2023
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000121011/MUX/MUX_test.vhd
-- Project Name:  MUX
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX_rtl
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
 
ENTITY MUX_test IS
END MUX_test;
 
ARCHITECTURE behavior OF MUX_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX_rtl
    PORT(
         I : IN  std_logic_vector(7 downto 0);
         S : IN  std_logic_vector(2 downto 0);
         O : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal I : std_logic_vector(7 downto 0) := (others => '0');
   signal S : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal O : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX_rtl PORT MAP (
          I => I,
          S => S,
          O => O
        );

   -- Stimulus process
   stim_proc: process
   begin		
	
	S<="000";
	I<="00000001";
	wait for 2 ps;
	S<="001";
	I<="00000010";
	wait for 2 ps;
	S<="010";
	I<="00000100";
	wait for 2 ps;
	S<="011";
	I<="00001000";
	wait for 2 ps;
	S<="100";
	I<="00010000";
	wait for 2 ps;
	S<="101";
	I<="00100000";
	wait for 2 ps;
	S<="110";
	I<="01000000";
	wait for 2 ps;
	S<="111";
	I<="10000000";
	wait for 2 ps;

   end process;

END;
