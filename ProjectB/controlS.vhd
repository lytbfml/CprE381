-- control.vhd: CprE 381 F13 template file
-- 
-- The main control unit of MIPS
-- 
-- Note: This is a partial example, with nine control signals (no Jump
-- singal)

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;



entity controlS is
  port (
        opCode     	: in std_logic_vector(5 downto 0);
		funct		: in std_logic_vector(5 downto 0);
		rt			: in std_logic_vector(4 downto 0);
        RegDst     	: out std_logic;
		ALUSrc		: out std_logic;
        MemtoReg    : out std_logic;
        RegWrite   	: out std_logic;
        MemWrite   	: out std_logic;
        Branch      : out std_logic;
		Jump		: out std_logic;
        ALUOp	    : out std_logic_vector(2 downto 0);
		BAluSel		: out std_logic;
		BZero		: out std_logic;
		AndLinkR31	: out std_logic;
		RegDataSel	: out std_logic_vector(1 downto 0);
		ReturnSel	: out std_logic;
		ZSel		: out std_logic;
		LSel		: out std_logic_vector(1 downto 0);
		SWSel		: out std_logic_vector(1 downto 0);
		ShamtSel	: out std_logic;
		ShiftSel	: out std_logic_vector(1 downto 0);
        OutSel      : out std_logic_vector(1 downto 0)
		);
end controlS;

architecture mix of controlS is
	
begin
    process(opCode, funct, rt)
    begin
    case opCode is
			when "011100" => -- mul
					RegDst     	<= '1';
					ALUSrc		<= '0';
					MemtoReg    <= '0';
					RegWrite   	<= '1';
					MemWrite   	<= '0';
					Branch      <= '0';
					Jump		<= '0';
					ALUOp	    <= "000";
					BAluSel		<= '0';
					BZero		<= '0';
					AndLinkR31	<= '0';
					RegDataSel	<= "00";
					ReturnSel	<= '0';
					ZSel		<= '0';
					LSel		<= "10";
					SWSel		<= "00";
					ShamtSel	<= '0';
					ShiftSel	<= "10";
					OutSel      <= "01";
			when "000000" =>		--    R type
					if (funct(5) = '1') then 
							RegDst     	<= '1';
							ALUSrc		<= '0';
							MemtoReg    <= '0';
							RegWrite   	<= '1';
							MemWrite   	<= '0';
							Branch      <= '0';
							Jump		<= '0';
							ALUOp	    <= "000";
							BAluSel		<= '0';
							BZero		<= '0';
							AndLinkR31	<= '0';
							RegDataSel	<= "00";
							ReturnSel	<= '0';
							ZSel		<= '0';
							LSel		<= "10";
							SWSel		<= "00";
							ShamtSel	<= '0';
							ShiftSel	<= "10";
							OutSel      <= "00";
					elsif (funct = "001000") then -- jr
							RegDst     	<= '1';
							ALUSrc		<= '0';
							MemtoReg    <= '0';
							RegWrite   	<= '1';
							MemWrite   	<= '0';
							Branch      <= '0';
							Jump		<= '1';
							ALUOp	    <= "000";
							BAluSel		<= '0';
							BZero		<= '0';
							AndLinkR31	<= '0';
							RegDataSel	<= "00";
							ReturnSel	<= '1';
							ZSel		<= '0';
							LSel		<= "10";
							SWSel		<= "00";
							ShamtSel	<= '0';
							ShiftSel	<= "10";
							OutSel      <= "00";
					elsif (funct = "001001") then -- jalr
							RegDst     	<= '1';
							ALUSrc		<= '0';
							MemtoReg    <= '0';
							RegWrite   	<= '1';
							MemWrite   	<= '0';
							Branch      <= '0';
							Jump		<= '1';
							ALUOp	    <= "000";
							BAluSel		<= '0';
							BZero		<= '0';
							AndLinkR31	<= '0';
							RegDataSel	<= "01";
							ReturnSel	<= '1';
							ZSel		<= '0';
							LSel		<= "10";
							SWSel		<= "00";
							ShamtSel	<= '0';
							ShiftSel	<= "10";
							OutSel      <= "00";
					elsif (funct = "000100") then -- sllv
							RegDst     	<= '1';
							ALUSrc		<= '0';
							MemtoReg    <= '0';
							RegWrite   	<= '1';
							MemWrite   	<= '0';
							Branch      <= '0';
							Jump		<= '0';
							ALUOp	    <= "000";
							BAluSel		<= '0';
							BZero		<= '0';
							AndLinkR31	<= '0';
							RegDataSel	<= "00";
							ReturnSel	<= '0';
							ZSel		<= '0';
							LSel		<= "10";
							SWSel		<= "00";
							ShamtSel	<= '1';
							ShiftSel	<= "10";
							OutSel      <= "10";
					elsif (funct = "000111") then -- srav
							RegDst     	<= '1';
							ALUSrc		<= '0';
							MemtoReg    <= '0';
							RegWrite   	<= '1';
							MemWrite   	<= '0';
							Branch      <= '0';
							Jump		<= '0';
							ALUOp	    <= "000";
							BAluSel		<= '0';
							BZero		<= '0';
							AndLinkR31	<= '0';
							RegDataSel	<= "00";
							ReturnSel	<= '0';
							ZSel		<= '0';
							LSel		<= "10";
							SWSel		<= "00";
							ShamtSel	<= '1';
							ShiftSel	<= "01";
							OutSel      <= "10";
					elsif (funct = "000110") then -- srlv
							RegDst     	<= '1';
							ALUSrc		<= '0';
							MemtoReg    <= '0';
							RegWrite   	<= '1';
							MemWrite   	<= '0';
							Branch      <= '0';
							Jump		<= '0';
							ALUOp	    <= "000";
							BAluSel		<= '0';
							BZero		<= '0';
							AndLinkR31	<= '0';
							RegDataSel	<= "00";
							ReturnSel	<= '0';
							ZSel		<= '0';
							LSel		<= "10";
							SWSel		<= "00";
							ShamtSel	<= '1';
							ShiftSel	<= "00";
							OutSel      <= "10";
					elsif (funct = "000011") then -- sra
							RegDst     	<= '1';
							ALUSrc		<= '0';
							MemtoReg    <= '0';
							RegWrite   	<= '1';
							MemWrite   	<= '0';
							Branch      <= '0';
							Jump		<= '0';
							ALUOp	    <= "000";
							BAluSel		<= '0';
							BZero		<= '0';
							AndLinkR31	<= '0';
							RegDataSel	<= "00";
							ReturnSel	<= '0';
							ZSel		<= '0';
							LSel		<= "10";
							SWSel		<= "00";
							ShamtSel	<= '0';
							ShiftSel	<= "01";
							OutSel      <= "10";
					elsif (funct = "000010") then -- srl
							RegDst     	<= '1';
							ALUSrc		<= '0';
							MemtoReg    <= '0';
							RegWrite   	<= '1';
							MemWrite   	<= '0';
							Branch      <= '0';
							Jump		<= '0';
							ALUOp	    <= "000";
							BAluSel		<= '0';
							BZero		<= '0';
							AndLinkR31	<= '0';
							RegDataSel	<= "00";
							ReturnSel	<= '0';
							ZSel		<= '0';
							LSel		<= "10";
							SWSel		<= "00";
							ShamtSel	<= '0';
							ShiftSel	<= "00";
							OutSel      <= "10";
					elsif (funct = "000000") then -- sll
							RegDst     	<= '1';
							ALUSrc		<= '0';
							MemtoReg    <= '0';
							RegWrite   	<= '1';
							MemWrite   	<= '0';
							Branch      <= '0';
							Jump		<= '0';
							ALUOp	    <= "000";
							BAluSel		<= '0';
							BZero		<= '0';
							AndLinkR31	<= '0';
							RegDataSel	<= "00";
							ReturnSel	<= '0';
							ZSel		<= '0';
							LSel		<= "10";
							SWSel		<= "00";
							ShamtSel	<= '0';
							ShiftSel	<= "10";
							OutSel      <= "10";
					end if;
           when "001000" =>	--addi
							RegDst     	<= '0';
							ALUSrc		<= '1';
							MemtoReg    <= '0';
							RegWrite   	<= '1';
							MemWrite   	<= '0';
							Branch      <= '0';
							Jump		<= '0';
							ALUOp	    <= "101";
							BAluSel		<= '0';
							BZero		<= '0';
							AndLinkR31	<= '0';
							RegDataSel	<= "00";
							ReturnSel	<= '0';
							ZSel		<= '0';
							LSel		<= "10";
							SWSel		<= "00";
							ShamtSel	<= '0';
							ShiftSel	<= "10";
							OutSel      <= "00";
           when "001001" => -- addiu
							RegDst     	<= '0';
							ALUSrc		<= '1';
							MemtoReg    <= '0';
							RegWrite   	<= '1';
							MemWrite   	<= '0';
							Branch      <= '0';
							Jump		<= '0';
							ALUOp	    <= "101";
							BAluSel		<= '0';
							BZero		<= '0';
							AndLinkR31	<= '0';
							RegDataSel	<= "00";
							ReturnSel	<= '0';
							ZSel		<= '0';
							LSel		<= "10";
							SWSel		<= "00";
							ShamtSel	<= '0';
							ShiftSel	<= "10";
							OutSel      <= "00";
           when "001100" => -- andi
							RegDst     	<= '0';
							ALUSrc		<= '1';
							MemtoReg    <= '0';
							RegWrite   	<= '1';
							MemWrite   	<= '0';
							Branch      <= '0';
							Jump		<= '0';
							ALUOp	    <= "001";
							BAluSel		<= '0';
							BZero		<= '0';
							AndLinkR31	<= '0';
							RegDataSel	<= "00";
							ReturnSel	<= '0';
							ZSel		<= '0';
							LSel		<= "10";
							SWSel		<= "00";
							ShamtSel	<= '0';
							ShiftSel	<= "10";
							OutSel      <= "00";
           when "001101" => -- ori
							RegDst     	<= '0';
							ALUSrc		<= '1';
							MemtoReg    <= '0';
							RegWrite   	<= '1';
							MemWrite   	<= '0';
							Branch      <= '0';
							Jump		<= '0';
							ALUOp	    <= "011";
							BAluSel		<= '0';
							BZero		<= '0';
							AndLinkR31	<= '0';
							RegDataSel	<= "00";
							ReturnSel	<= '0';
							ZSel		<= '0';
							LSel		<= "10";
							SWSel		<= "00";
							ShamtSel	<= '0';
							ShiftSel	<= "10";
							OutSel      <= "00";
           when "001110" => -- 0ori
							RegDst     	<= '0';
							ALUSrc		<= '1';
							MemtoReg    <= '0';
							RegWrite   	<= '1';
							MemWrite   	<= '0';
							Branch      <= '0';
							Jump		<= '0';
							ALUOp	    <= "100";
							BAluSel		<= '0';
							BZero		<= '0';
							AndLinkR31	<= '0';
							RegDataSel	<= "00";
							ReturnSel	<= '0';
							ZSel		<= '0';
							LSel		<= "10";
							SWSel		<= "00";
							ShamtSel	<= '0';
							ShiftSel	<= "10";
							OutSel      <= "00";
           when "001111" => -- lui
							RegDst     	<= '0';
							ALUSrc		<= '1';
							MemtoReg    <= '0';
							RegWrite   	<= '1';
							MemWrite   	<= '0';
							Branch      <= '0';
							Jump		<= '0';
							ALUOp	    <= "000";
							BAluSel		<= '0';
							BZero		<= '0';
							AndLinkR31	<= '0';
							RegDataSel	<= "11";
							ReturnSel	<= '0';
							ZSel		<= '0';
							LSel		<= "10";
							SWSel		<= "00";
							ShamtSel	<= '0';
							ShiftSel	<= "10";
							OutSel      <= "00";
           when "001010" => -- slti
							RegDst     	<= '0';
							ALUSrc		<= '1';
							MemtoReg    <= '0';
							RegWrite   	<= '1';
							MemWrite   	<= '0';
							Branch      <= '0';
							Jump		<= '0';
							ALUOp	    <= "111";
							BAluSel		<= '0';
							BZero		<= '0';
							AndLinkR31	<= '0';
							RegDataSel	<= "00";
							ReturnSel	<= '0';
							ZSel		<= '0';
							LSel		<= "10";
							SWSel		<= "00";
							ShamtSel	<= '0';
							ShiftSel	<= "10";
							OutSel      <= "00";
           when "001011" => -- sltiu
							RegDst     	<= '0';
							ALUSrc		<= '1';
							MemtoReg    <= '0';
							RegWrite   	<= '1';
							MemWrite   	<= '0';
							Branch      <= '0';
							Jump		<= '0';
							ALUOp	    <= "111";
							BAluSel		<= '0';
							BZero		<= '0';
							AndLinkR31	<= '0';
							RegDataSel	<= "00";
							ReturnSel	<= '0';
							ZSel		<= '0';
							LSel		<= "10";
							SWSel		<= "00";
							ShamtSel	<= '0';
							ShiftSel	<= "10";
							OutSel      <= "00";
           when "000100" => -- beq
							RegDst     	<= '0';
							ALUSrc		<= '0';
							MemtoReg    <= '0';
							RegWrite   	<= '0';
							MemWrite   	<= '0';
							Branch      <= '1';
							Jump		<= '0';
							ALUOp	    <= "100";
							BAluSel		<= '0';
							BZero		<= '0';
							AndLinkR31	<= '0';
							RegDataSel	<= "00";
							ReturnSel	<= '0';
							ZSel		<= '0';
							LSel		<= "10";
							SWSel		<= "00";
							ShamtSel	<= '0';
							ShiftSel	<= "10";
							OutSel      <= "00";
           when "000101" => -- bne
							RegDst     	<= '0';
							ALUSrc		<= '0';
							MemtoReg    <= '0';
							RegWrite   	<= '0';
							MemWrite   	<= '0';
							Branch      <= '1';
							Jump		<= '0';
							ALUOp	    <= "100";
							BAluSel		<= '1';
							BZero		<= '0';
							AndLinkR31	<= '0';
							RegDataSel	<= "00";
							ReturnSel	<= '0';
							ZSel		<= '0';
							LSel		<= "10";
							SWSel		<= "00";
							ShamtSel	<= '0';
							ShiftSel	<= "10";
							OutSel      <= "00";
           when "000001" => 
		   			if (rt = "00001") then -- bgez
							RegDst     	<= '0';
							ALUSrc		<= '0';
							MemtoReg    <= '0';
							RegWrite   	<= '0';
							MemWrite   	<= '0';
							Branch      <= '1';
							Jump		<= '0';
							ALUOp	    <= "111";
							BAluSel		<= '0';
							BZero		<= '1';
							AndLinkR31	<= '0';
							RegDataSel	<= "00";
							ReturnSel	<= '0';
							ZSel		<= '0';
							LSel		<= "10";
							SWSel		<= "00";
							ShamtSel	<= '0';
							ShiftSel	<= "10";
							OutSel      <= "00";
					elsif (rt = "10001") then -- bgezal
							RegDst     	<= '0';
							ALUSrc		<= '0';
							MemtoReg    <= '0';
							RegWrite   	<= '1';
							MemWrite   	<= '0';
							Branch      <= '1';
							Jump		<= '0';
							ALUOp	    <= "111";
							BAluSel		<= '0';
							BZero		<= '1';
							AndLinkR31	<= '1';
							RegDataSel	<= "01";
							ReturnSel	<= '0';
							ZSel		<= '0';
							LSel		<= "10";
							SWSel		<= "00";
							ShamtSel	<= '0';
							ShiftSel	<= "10";
							OutSel      <= "00";
					elsif (rt = "10000") then -- bltzal
							RegDst     	<= '0';
							ALUSrc		<= '0';
							MemtoReg    <= '0';
							RegWrite   	<= '1';
							MemWrite   	<= '0';
							Branch      <= '1';
							Jump		<= '0';
							ALUOp	    <= "111";
							BAluSel		<= '1';
							BZero		<= '1';
							AndLinkR31	<= '1';
							RegDataSel	<= "01";
							ReturnSel	<= '0';
							ZSel		<= '0';
							LSel		<= "10";
							SWSel		<= "00";
							ShamtSel	<= '0';
							ShiftSel	<= "10";
							OutSel      <= "00";
					elsif (rt = "00000") then -- bltz
							RegDst     	<= '0';
							ALUSrc		<= '0';
							MemtoReg    <= '0';
							RegWrite   	<= '0';
							MemWrite   	<= '0';
							Branch      <= '1';
							Jump		<= '0';
							ALUOp	    <= "111";
							BAluSel		<= '1';
							BZero		<= '1';
							AndLinkR31	<= '0';
							RegDataSel	<= "00";
							ReturnSel	<= '0';
							ZSel		<= '0';
							LSel		<= "10";
							SWSel		<= "00";
							ShamtSel	<= '0';
							ShiftSel	<= "10";
							OutSel      <= "00";
					end if;
           when "000111" => -- bgtz
							RegDst     	<= '0';
							ALUSrc		<= '0';
							MemtoReg    <= '0';
							RegWrite   	<= '0';
							MemWrite   	<= '0';
							Branch      <= '1';
							Jump		<= '0';
							ALUOp	    <= "101";
							BAluSel		<= '1';
							BZero		<= '1';
							AndLinkR31	<= '0';
							RegDataSel	<= "00";
							ReturnSel	<= '0';
							ZSel		<= '0';
							LSel		<= "10";
							SWSel		<= "00";
							ShamtSel	<= '0';
							ShiftSel	<= "10";
							OutSel      <= "00";
           when "000110" => -- blez
							RegDst     	<= '0';
							ALUSrc		<= '0';
							MemtoReg    <= '0';
							RegWrite   	<= '0';
							MemWrite   	<= '0';
							Branch      <= '1';
							Jump		<= '0';
							ALUOp	    <= "101";
							BAluSel		<= '0';
							BZero		<= '1';
							AndLinkR31	<= '0';
							RegDataSel	<= "00";
							ReturnSel	<= '0';
							ZSel		<= '0';
							LSel		<= "10";
							SWSel		<= "00";
							ShamtSel	<= '0';
							ShiftSel	<= "10";
							OutSel      <= "00";
           when "100011" => -- lw
							RegDst     	<= '0';
							ALUSrc		<= '1';
							MemtoReg    <= '1';
							RegWrite   	<= '1';
							MemWrite   	<= '0';
							Branch      <= '0';
							Jump		<= '0';
							ALUOp	    <= "101";
							BAluSel		<= '0';
							BZero		<= '0';
							AndLinkR31	<= '0';
							RegDataSel	<= "00";
							ReturnSel	<= '0';
							ZSel		<= '0';
							LSel		<= "10";
							SWSel		<= "00";
							ShamtSel	<= '0';
							ShiftSel	<= "10";
							OutSel      <= "00";
           when "100000" => -- lb
							RegDst     	<= '0';
							ALUSrc		<= '1';
							MemtoReg    <= '1';
							RegWrite   	<= '1';
							MemWrite   	<= '0';
							Branch      <= '0';
							Jump		<= '0';
							ALUOp	    <= "101";
							BAluSel		<= '0';
							BZero		<= '0';
							AndLinkR31	<= '0';
							RegDataSel	<= "00";
							ReturnSel	<= '0';
							ZSel		<= '1';
							LSel		<= "01";
							SWSel		<= "00";
							ShamtSel	<= '0';
							ShiftSel	<= "10";
							OutSel      <= "00";
           when "100001" => -- lh
							RegDst     	<= '0';
							ALUSrc		<= '1';
							MemtoReg    <= '1';
							RegWrite   	<= '1';
							MemWrite   	<= '0';
							Branch      <= '0';
							Jump		<= '0';
							ALUOp	    <= "101";
							BAluSel		<= '0';
							BZero		<= '0';
							AndLinkR31	<= '0';
							RegDataSel	<= "00";
							ReturnSel	<= '0';
							ZSel		<= '1';
							LSel		<= "00";
							SWSel		<= "00";
							ShamtSel	<= '0';
							ShiftSel	<= "10";
							OutSel      <= "00";
           when "100100" => -- lbu
							RegDst     	<= '0';
							ALUSrc		<= '1';
							MemtoReg    <= '1';
							RegWrite   	<= '1';
							MemWrite   	<= '0';
							Branch      <= '0';
							Jump		<= '0';
							ALUOp	    <= "101";
							BAluSel		<= '0';
							BZero		<= '0';
							AndLinkR31	<= '0';
							RegDataSel	<= "00";
							ReturnSel	<= '0';
							ZSel		<= '0';
							LSel		<= "01";
							SWSel		<= "00";
							ShamtSel	<= '0';
							ShiftSel	<= "10";
							OutSel      <= "00";
           when "100101" => -- lhu
							RegDst     	<= '0';
							ALUSrc		<= '1';
							MemtoReg    <= '1';
							RegWrite   	<= '1';
							MemWrite   	<= '0';
							Branch      <= '0';
							Jump		<= '0';
							ALUOp	    <= "101";
							BAluSel		<= '0';
							BZero		<= '0';
							AndLinkR31	<= '0';
							RegDataSel	<= "00";
							ReturnSel	<= '0';
							ZSel		<= '0';
							LSel		<= "00";
							SWSel		<= "00";
							ShamtSel	<= '0';
							ShiftSel	<= "10";
							OutSel      <= "00";
           when "101011" => -- sw
							RegDst     	<= '0';
							ALUSrc		<= '1';
							MemtoReg    <= '0';
							RegWrite   	<= '0';
							MemWrite   	<= '1';
							Branch      <= '0';
							Jump		<= '0';
							ALUOp	    <= "101";
							BAluSel		<= '0';
							BZero		<= '0';
							AndLinkR31	<= '0';
							RegDataSel	<= "00";
							ReturnSel	<= '0';
							ZSel		<= '0';
							LSel		<= "10";
							SWSel		<= "00";
							ShamtSel	<= '0';
							ShiftSel	<= "10";
							OutSel      <= "00";
           when "101000" => -- sb
							RegDst     	<= '0';
							ALUSrc		<= '1';
							MemtoReg    <= '0';
							RegWrite   	<= '0';
							MemWrite   	<= '1';
							Branch      <= '0';
							Jump		<= '0';
							ALUOp	    <= "101";
							BAluSel		<= '0';
							BZero		<= '0';
							AndLinkR31	<= '0';
							RegDataSel	<= "00";
							ReturnSel	<= '0';
							ZSel		<= '0';
							LSel		<= "10";
							SWSel		<= "10";
							ShamtSel	<= '0';
							ShiftSel	<= "10";
							OutSel      <= "00";
           when "101001" => -- sh
							RegDst     	<= '0';
							ALUSrc		<= '1';
							MemtoReg    <= '0';
							RegWrite   	<= '0';
							MemWrite   	<= '1';
							Branch      <= '0';
							Jump		<= '0';
							ALUOp	    <= "101";
							BAluSel		<= '0';
							BZero		<= '0';
							AndLinkR31	<= '0';
							RegDataSel	<= "00";
							ReturnSel	<= '0';
							ZSel		<= '0';
							LSel		<= "10";
							SWSel		<= "11";
							ShamtSel	<= '0';
							ShiftSel	<= "10";
							OutSel      <= "00";
           when "000010" => -- j
							RegDst     	<= '0';
							ALUSrc		<= '0';
							MemtoReg    <= '0';
							RegWrite   	<= '0';
							MemWrite   	<= '0';
							Branch      <= '0';
							Jump		<= '1';
							ALUOp	    <= "000";
							BAluSel		<= '0';
							BZero		<= '0';
							AndLinkR31	<= '0';
							RegDataSel	<= "00";
							ReturnSel	<= '0';
							ZSel		<= '0';
							LSel		<= "10";
							SWSel		<= "00";
							ShamtSel	<= '0';
							ShiftSel	<= "10";
							OutSel      <= "00";
           when "000011" => -- jal
							RegDst     	<= '0';
							ALUSrc		<= '0';
							MemtoReg    <= '0';
							RegWrite   	<= '1';
							MemWrite   	<= '0';
							Branch      <= '0';
							Jump		<= '1';
							ALUOp	    <= "000";
							BAluSel		<= '0';
							BZero		<= '0';
							AndLinkR31	<= '1';
							RegDataSel	<= "01";
							ReturnSel	<= '0';
							ZSel		<= '0';
							LSel		<= "10";
							SWSel		<= "00";
							ShamtSel	<= '0';
							ShiftSel	<= "10";
							OutSel      <= "00";
           when others => null;
        end case;
    end process;
end mix;