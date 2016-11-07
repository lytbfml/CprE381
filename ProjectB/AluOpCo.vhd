-- control.vhd: CprE 381 F13 template file
-- 
-- The main control unit of MIPS
-- 
-- Note: This is a partial example, with nine control signals (no Jump
-- singal)

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;



entity AluOpCo is
  port (
        ALUOpIn	    : in std_logic_vector(2 downto 0);
	    funct		: in std_logic_vector(5 downto 0);
        ALUOpOut    : out std_logic_vector(2 downto 0)
		);
end AluOpCo;

architecture mix of AluOpCo is

begin
    process(ALUOpIn, funct)
    begin
        if ALUOpIn = "000" then
                if (funct = "100000") then
                    ALUOpOut <= "101";
                elsif (funct = "100001") then
                    ALUOpOut <= "101";
                elsif (funct = "100010") then
                    ALUOpOut <= "110";
                elsif (funct = "100011") then
                    ALUOpOut <= "110";
                elsif (funct = "100100") then
                    ALUOpOut <= "001";
                elsif (funct = "100101") then
                    ALUOpOut <= "011";
                elsif (funct = "100111") then
                    ALUOpOut <= "010";
                elsif (funct = "100110") then
                    ALUOpOut <= "100";
                elsif (funct = "101010") then
                    ALUOpOut <= "111";
                elsif (funct = "101011") then
                    ALUOpOut <= "111";
                end if;
        else
                ALUOpOut <= ALUOpIn;
        end if;
    end process;
end mix;