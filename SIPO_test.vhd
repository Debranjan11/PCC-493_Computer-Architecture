--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:01:02 04/04/2023
-- Design Name:   
-- Module Name:   /home/student/Desktop/1300012011/SIPO/SIPO_test.vhd
-- Project Name:  SIPO
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SIPO_rtl
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
 
ENTITY SIPO_test IS
END SIPO_test;
 
ARCHITECTURE behavior OF SIPO_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SIPO_rtl
    PORT(
         inp : IN  std_logic;
         clock : IN  std_logic;
         Q : OUT  std_logic_vector(3 downto 0);
         reset : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal inp : std_logic := '0';
   signal clock : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clock_period : time := 1 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SIPO_rtl PORT MAP (
          inp => inp,
          clock => clock,
          Q => Q,
          reset => reset
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period;
		clock <= '1';
		wait for clock_period;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
	
		inp<='0';
		reset<='0';
		wait for 1 ps;
		inp<='1';
		reset<='0';
		wait for 1 ps;
		inp<='1';
		reset<='0';
		wait for 1 ps;
		inp<='0';
		reset<='0';
		wait for 1 ps;

   end process;

END;
