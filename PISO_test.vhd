--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:46:40 04/04/2023
-- Design Name:   
-- Module Name:   /home/student/Desktop/1300012011/PISO/PISO_test.vhd
-- Project Name:  PISO
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PISO_rtl
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
 
ENTITY PISO_test IS
END PISO_test;
 
ARCHITECTURE behavior OF PISO_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PISO_rtl
    PORT(
         Q : OUT  std_logic;
         inp : IN  std_logic_vector(3 downto 0);
         clock : IN  std_logic;
         shift : IN  std_logic;
         reset : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal inp : std_logic_vector(3 downto 0) := (others => '0');
   signal clock : std_logic := '0';
   signal shift : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal Q : std_logic;

   -- Clock period definitions
   constant clock_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PISO_rtl PORT MAP (
          Q => Q,
          inp => inp,
          clock => clock,
          shift => shift,
          reset => reset
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin	

		inp<="0001";
		reset<='0';
		shift<='0';
		wait for 1 ps;
		inp<="0010";
		reset<='0';
		shift<='1';
		wait for 1 ps;
		inp<="0100";
		reset<='0';
		shift<='1';
		wait for 1 ps;
		inp<="1000";
		reset<='0';
		shift<='1';
		wait for 1 ps;	

   end process;

END;
