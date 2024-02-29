--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:42:21 03/28/2023
-- Design Name:   
-- Module Name:   /home/student/13000121052/UDCOUNTER/ud_test.vhd
-- Project Name:  UDCOUNTER
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: udcounter_rtl
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
 
ENTITY ud_test IS
END ud_test;
 
ARCHITECTURE behavior OF ud_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT udcounter_rtl
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         m : IN  std_logic;
         q : INOUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal m : std_logic := '0';

	--BiDirs
   signal q : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: udcounter_rtl PORT MAP (
          clk => clk,
          reset => reset,
          m => m,
          q => q
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
     reset<='0';
		m<='0';
		wait for clk_period*15;
		m<='1';
		wait for clk_period*15;
   end process;

   

END;
