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
        opCode     	: in  std_logic_vector(5 downto 0);
        RegDst     	: out std_logic;
        MemtoReg    : out std_logic;
        RegWrite   	: out std_logic;
        MemRead   	: out std_logic;
        MemWrite   	: out std_logic;
        Branch      : out std_logic;
		Jump		: out std_logic;
        ALUOp	    : out std_logic_vector(2 downto 0);
		BAluSel		: out std_logic;
		BZero		: out std_logic;
		AndLinkR31	: out std_logic;
		NJmpLuiSel	: out std_logic;
		WriteSel	: out std_logic;
		ReturnSel	: out std_logic;
		ZSel		: out std_logic;
		HWSel		: out std_logic;
		BSel		: out std_logic_vector(1 downto 0);
		LSel		: out std_logic_vector(1 downto 0);
        OutSel      : out std_logic_vector(1 downto 0)
		);
end controlS;

architecture mix of controlS is

    process(i_CLK)
    begin
    case funct is
           when "0000" => -- lw
				RegDst     	<=;
				MemtoReg    <=
				RegWrite   	<=
				MemRead   	<=
				MemWrite   	<=
				Branch      <=
				Jump		<=
				ALUOp	    <=
				BAluSel		<=
				BZero		<=
				AndLinkR31	<=
				NJmpLuiSel	<=
				ReturnSel	<=
				WriteSel	<=
				ZSel		<=
				HWSel		<=
				BSel		<=
				LSel		<=
				OutSel      <=
           when "0001" => -- lb
				RegDst     	<=;
				MemtoReg    <=
				RegWrite   	<=
				MemRead   	<=
				MemWrite   	<=
				Branch      <=
				Jump		<=
				ALUOp	    <=
				BAluSel		<=
				BZero		<=
				AndLinkR31	<=
				NJmpLuiSel	<=
				ReturnSel	<=
				WriteSel	<=
				ZSel		<=
				HWSel		<=
				BSel		<=
				LSel		<=
				OutSel      <=
           when "0010" => -- lbu
				RegDst     	<=;
				MemtoReg    <=
				RegWrite   	<=
				MemRead   	<=
				MemWrite   	<=
				Branch      <=
				Jump		<=
				ALUOp	    <=
				BAluSel		<=
				BZero		<=
				AndLinkR31	<=
				NJmpLuiSel	<=
				ReturnSel	<=
				WriteSel	<=
				ZSel		<=
				HWSel		<=
				BSel		<=
				LSel		<=
				OutSel      <=
           when "0011" => -- lh
				RegDst     	<=;
				MemtoReg    <=
				RegWrite   	<=
				MemRead   	<=
				MemWrite   	<=
				Branch      <=
				Jump		<=
				ALUOp	    <=
				BAluSel		<=
				BZero		<=
				AndLinkR31	<=
				NJmpLuiSel	<=
				ReturnSel	<=
				WriteSel	<=
				ZSel		<=
				HWSel		<=
				BSel		<=
				LSel		<=
				OutSel      <=
           when "0100" => -- lhu
				RegDst     	<=;
				MemtoReg    <=
				RegWrite   	<=
				MemRead   	<=
				MemWrite   	<=
				Branch      <=
				Jump		<=
				ALUOp	    <=
				BAluSel		<=
				BZero		<=
				AndLinkR31	<=
				NJmpLuiSel	<=
				ReturnSel	<=
				WriteSel	<=
				ZSel		<=
				HWSel		<=
				BSel		<=
				LSel		<=
				OutSel      <=
           when "0101" => -- sw
				RegDst     	<=;
				MemtoReg    <=
				RegWrite   	<=
				MemRead   	<=
				MemWrite   	<=
				Branch      <=
				Jump		<=
				ALUOp	    <=
				BAluSel		<=
				BZero		<=
				AndLinkR31	<=
				NJmpLuiSel	<=
				ReturnSel	<=
				WriteSel	<=
				ZSel		<=
				HWSel		<=
				BSel		<=
				LSel		<=
				OutSel      <=
           when "0110" => -- addi
				RegDst     	<=;
				MemtoReg    <=
				RegWrite   	<=
				MemRead   	<=
				MemWrite   	<=
				Branch      <=
				Jump		<=
				ALUOp	    <=
				BAluSel		<=
				BZero		<=
				AndLinkR31	<=
				NJmpLuiSel	<=
				ReturnSel	<=
				WriteSel	<=
				ZSel		<=
				HWSel		<=
				BSel		<=
				LSel		<=
				OutSel      <=
           when "0111" => -- add
				RegDst     	<=;
				MemtoReg    <=
				RegWrite   	<=
				MemRead   	<=
				MemWrite   	<=
				Branch      <=
				Jump		<=
				ALUOp	    <=
				BAluSel		<=
				BZero		<=
				AndLinkR31	<=
				NJmpLuiSel	<=
				ReturnSel	<=
				WriteSel	<=
				ZSel		<=
				HWSel		<=
				BSel		<=
				LSel		<=
				OutSel      <=
           when "1000" => -- sub
				RegDst     	<=;
				MemtoReg    <=
				RegWrite   	<=
				MemRead   	<=
				MemWrite   	<=
				Branch      <=
				Jump		<=
				ALUOp	    <=
				BAluSel		<=
				BZero		<=
				AndLinkR31	<=
				NJmpLuiSel	<=
				ReturnSel	<=
				WriteSel	<=
				ZSel		<=
				HWSel		<=
				BSel		<=
				LSel		<=
				OutSel      <=
           when others => null;
        end case;
    end process;
    


begin
     
     
     
     

      
 
end mix;