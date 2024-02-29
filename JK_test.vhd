--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:42:36 03/28/2023
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000121011/JK_FF/JK_test.vhd
-- Project Name:  JK_FF
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: JK_rtl
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
 
ENTITY JK_test IS
END JK_test;
 
ARCHITECTURE behavior OF JK_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT JK_rtl
    PORT(
         J : IN  std_logic;
         K : IN  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic;
         Q : OUT  std_logic;
         Qp : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal J : std_logic := '0';
   signal K : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal Qp : std_logic;

   -- Clock period definitions
   constant clk_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: JK_rtl PORT MAP (
          J => J,
          K => K,
          clk => clk,
          rst => rst,
          Q => Q,
          Qp => Qp
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
			J<='0';
			K<='0';
			rst<='0';
      wait for 2ps;	
			J<='0';
			K<='1';
			rst<='0';
      wait for 2ps;	
			J<='1';
			K<='0';
			rst<='0';
      wait for 2ps;	
			J<='1';
			K<='1';
			rst<='0';
      wait for 2ps;

   end process;

END;
