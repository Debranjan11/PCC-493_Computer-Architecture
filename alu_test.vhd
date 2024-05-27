
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity alu_rtl_tb is
end alu_rtl_tb;

architecture Behavioral of alu_rtl_tb is
    -- Constants for ALU operation codes
    constant ADD : std_logic_vector(2 downto 0) := "000";
    constant SUB : std_logic_vector(2 downto 0) := "001";
    constant AND_OP : std_logic_vector(2 downto 0) := "100";
    constant OR_OP : std_logic_vector(2 downto 0) := "101";
    constant XOR_OP : std_logic_vector(2 downto 0) := "110";
	 
	  -- Signals for test bench
    signal A : std_logic_vector(3 downto 0) := "0011";  -- Input A (decimal 3)
    signal B : std_logic_vector(3 downto 0) := "0001";  -- Input B (decimal 1)
    signal ALUop : std_logic_vector(2 downto 0);  -- ALU operation code
    signal Result : std_logic_vector(3 downto 0);  -- Output Result
	 
	signal Zero : std_logic;  -- Output Zero flag

begin
    -- Instantiate the ALU unit
    uut : entity work.alu_rtl
        port map (
            A => A,
            B => B,
            ALUop => ALUop,
            Result => Result,
            Zero => Zero
        );
		  
		   -- Stimulus process
    stimulus : process
    begin
        -- Test addition (A + B)
        ALUop <= ADD;
        wait for 10 ns;
        assert Result = "0100" report "Addition test failed" severity error;
        wait for 10 ns;

        -- Test subtraction (A - B)
        ALUop <= SUB;
        wait for 10 ns;
        assert Result = "0010" report "Subtraction test failed" severity error;
        wait for 10 ns;
		  
		          -- Test bitwise AND (A AND B)
        ALUop <= AND_OP;
        wait for 10 ns;
        assert Result = "0001" report "Bitwise AND test failed" severity error;
        wait for 10 ns;

        -- Test bitwise OR (A OR B)
        ALUop <= OR_OP;
        wait for 10 ns;
        assert Result = "0011" report "Bitwise OR test failed" severity error;
        wait for 10 ns;
		  
		  -- Test bitwise XOR (A XOR B)
        ALUop <= XOR_OP;
        wait for 10 ns;
        assert Result = "0010" report "Bitwise XOR test failed" severity error;
        wait for 10 ns;

        -- Test ALU operation with A + 1
        A <= "0110";  -- Change A to decimal 6
        ALUop <= ADD;
        wait for 10 ns;
        assert Result = "0111" report "ALU operation (A + 1) test failed" severity error;
        wait for 10 ns;
		   -- Test ALU operation with A - 1
        ALUop <= SUB;
        wait for 10 ns;
        assert Result = "0110" report "ALU operation (A - 1) test failed" severity error;
        wait for 10 ns;

        -- Test ALU operation with NOT A
        ALUop <= XOR_OP;
        wait for 10 ns;
        assert Result = "1000" report "ALU operation (NOT A) test failed" severity error;
        wait for 10 ns;
		  
		  -- Test ALU operation with A XOR B
        ALUop <= XOR_OP;
        wait for 10 ns;
        assert Result = "1001" report "ALU operation (A XOR B) test failed" severity error;
        wait for 10 ns;

		  -- Test Zero flag (result zero)
        A <= "0000";  -- Change A to zero
        B <= "0000";  -- Change B to zero
        ALUop <= ADD;  -- Any operation that can result in zero
        wait for 10 ns;
        assert Zero = '1' report "Zero flag test failed" severity error;
        wait;

    end process stimulus;

end Behavioral;
