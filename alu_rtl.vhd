library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- Include numeric_std library for arithmetic operations

entity alu_rtl is
    Port (
        A : in  STD_LOGIC_VECTOR (3 downto 0);
        B : in  STD_LOGIC_VECTOR (3 downto 0);
        ALUop : in  STD_LOGIC_VECTOR (2 downto 0);
        Result : inout  STD_LOGIC_VECTOR (3 downto 0);
        Zero : out  STD_LOGIC
    );
end alu_rtl;


architecture Behavioral of alu_rtl is
    signal A_unsigned : unsigned(3 downto 0);  -- Declare unsigned signal for A
    signal B_unsigned : unsigned(3 downto 0);  -- Declare unsigned signal for B
    signal Result_unsigned : unsigned(3 downto 0);  -- Declare unsigned signal for Result
begin
    A_unsigned <= unsigned(A);  -- Convert A to unsigned
    B_unsigned <= unsigned(B);  -- Convert B to unsigned
	 
	     process(A_unsigned, B_unsigned, ALUop)
    begin
        case ALUop is
            when "000" => Result_unsigned <= A_unsigned + B_unsigned; -- Addition
            when "001" => Result_unsigned <= A_unsigned - B_unsigned; -- Subtraction
            when "010" => Result_unsigned <= A_unsigned + 1; -- Addition by 1
				
				  when "011" => Result_unsigned <= A_unsigned - 1; -- Subtraction by 1
            when "100" => Result_unsigned <= A_unsigned and B_unsigned; -- And
            when "101" => Result_unsigned <= A_unsigned or B_unsigned; -- Or
            when "110" => Result_unsigned <= not A_unsigned; -- Xor
				 when "111" => Result_unsigned <= A_unsigned xor B_unsigned; -- Not
            when others => Result_unsigned <= (others => '0'); -- Default to all zeros
        end case;

        Result <= std_logic_vector(Result_unsigned);  -- Convert Result_unsigned back to std_logic_vector
    end process;
end Behavioral;