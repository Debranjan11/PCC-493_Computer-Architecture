--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:13:15 03/28/2023
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000121011/D_FF/D_test.vhd
-- Project Name:  D_FF
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: D_rtl
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
 
ENTITY D_test IS
END D_test;
 
ARCHITECTURE behavior OF D_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT D_rtl
    PORT(
         D : IN  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic;
         Q : OUT  std_logic;
         Qp : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal Qp : std_logic;

   -- Clock period definitions
   constant clk_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: D_rtl PORT MAP (
          D => D,
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
	
	D<='0';
	rst<='1';
	wait for 2 ps;
	D<='1';
	rst<='1';
	wait for 2 ps;
	D<='0';
	rst<='0';
	wait for 2 ps;
	D<='1';
	rst<='0';
	wait for 2 ps;
 
   end process;

END;
