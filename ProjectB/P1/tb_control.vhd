library IEEE;
use IEEE.std_logic_1164.all;

entity tb_control is
  generic(gCLK_HPER   : time := 50 ns);
end tb_control;

architecture behavior of tb_control is
  
  -- Calculate the clock period as twice the half-period
  constant cCLK_PER  : time := gCLK_HPER * 2;


  component controlS
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
  end component;


  signal s_CLK              : std_logic;
  signal s_funct, s_opCode  : std_logic_vector(5 downto 0);
  signal s_rt               : std_logic_vector(4 downto 0);
  signal s_RegDst, s_ALUSrc, s_MemtoReg, s_RegWrite, s_MemWrite, s_Branch, s_Jump, s_BAluSel, s_BZero, s_AndLinkR31  : std_logic;
  signal s_ALUOp              : std_logic_vector(2 downto 0);
  signal s_RegDataSel, s_LSel, s_SWSel, s_ShiftSel, s_OutSel  : std_logic_vector(1 downto 0);
  signal s_ReturnSel, s_ZSel, s_ShamtSel : std_logic; 


  
begin
  
  DUT: controlS 
  port map(s_opCode, s_funct, s_rt, s_RegDst, s_ALUSrc, s_MemtoReg, s_RegWrite, s_MemWrite,
  s_Branch, s_Jump, s_ALUOp, s_BAluSel, s_BZero, s_AndLinkR31, s_RegDataSel, s_ReturnSel, s_ZSel,
  s_LSel, s_SWSel, s_ShamtSel, s_ShiftSel, s_OutSel);

  
  
  P_CLK: process
  begin
    s_CLK <= '0';
    wait for gCLK_HPER;
    s_CLK <= '1';
    wait for gCLK_HPER;
  end process;
  
  -- Testbench process  
  P_TB: process
  begin
    --wait for gCLK_HPER;
    wait for gCLK_HPER;
    
    s_opCode     <= "000000";
    s_funct      <= "100000";
    s_rt         <= "XXXXX";
    wait for cCLK_PER;
    
    s_opCode     <= "000000";
    s_funct      <= "100001";
    s_rt         <= "XXXXX";
    wait for cCLK_PER;

    s_opCode     <= "000000";
    s_funct      <= "100010";
    s_rt         <= "XXXXX";
    wait for cCLK_PER;

    s_opCode     <= "000000";
    s_funct      <= "100011";
    s_rt         <= "XXXXX";
    wait for cCLK_PER;

    s_opCode     <= "000000";
    s_funct      <= "100100";
    s_rt         <= "XXXXX";
    wait for cCLK_PER;

    s_opCode     <= "000000";
    s_funct      <= "100101";
    s_rt         <= "XXXXX";
    wait for cCLK_PER;

    s_opCode     <= "000000";
    s_funct      <= "100110";
    s_rt         <= "XXXXX";
    wait for cCLK_PER;

    s_opCode     <= "000000";
    s_funct      <= "100111";
    s_rt         <= "XXXXX";
    wait for cCLK_PER;

    s_opCode     <= "000000";
    s_funct      <= "101010";
    s_rt         <= "XXXXX";
    wait for cCLK_PER;

    s_opCode     <= "000000";
    s_funct      <= "101011";
    s_rt         <= "XXXXX";
    wait for cCLK_PER;

    --mul
    s_opCode     <= "011100";
    s_funct      <= "000010";
    s_rt         <= "XXXXX";
    wait for cCLK_PER;
    --sra
    s_opCode     <= "000000";
    s_funct      <= "000011";
    s_rt         <= "XXXXX";
    wait for cCLK_PER;

    s_opCode     <= "000000";
    s_funct      <= "000010";
    s_rt         <= "XXXXX";
    wait for cCLK_PER;

    s_opCode     <= "000000";
    s_funct      <= "000000";
    s_rt         <= "XXXXX";
    wait for cCLK_PER;

    s_opCode     <= "000000";
    s_funct      <= "000100";
    s_rt         <= "XXXXX";
    wait for cCLK_PER;

    s_opCode     <= "000000";
    s_funct      <= "000111";
    s_rt         <= "XXXXX";
    wait for cCLK_PER;
    --srlv
    s_opCode     <= "000000";
    s_funct      <= "000110";
    s_rt         <= "XXXXX";
    wait for cCLK_PER;

    s_opCode     <= "000000";
    s_funct      <= "001000";
    s_rt         <= "00000";
    wait for cCLK_PER;
    --jalr
    s_opCode     <= "000000";
    s_funct      <= "001001";
    s_rt         <= "00000";
    wait for cCLK_PER;
    --addi
    s_opCode     <= "001000";
    s_funct      <= "XXXXXX";
    s_rt         <= "XXXXX";
    wait for cCLK_PER;
    --addiu
    s_opCode     <= "001001";
    s_funct      <= "XXXXXX";
    s_rt         <= "XXXXX";
    wait for cCLK_PER;
    --andi
    s_opCode     <= "001100";
    s_funct      <= "XXXXXX";
    s_rt         <= "XXXXX";
    wait for cCLK_PER;
    --ori
    s_opCode     <= "001101";
    s_funct      <= "XXXXXX";
    s_rt         <= "XXXXX";
    wait for cCLK_PER;
    --xori
    s_opCode     <= "001110";
    s_funct      <= "XXXXXX";
    s_rt         <= "XXXXX";
    wait for cCLK_PER;
    --lui
    s_opCode     <= "001111";
    s_funct      <= "XXXXXX";
    s_rt         <= "XXXXX";
    wait for cCLK_PER;
    --slti
    s_opCode     <= "001010";
    s_funct      <= "XXXXXX";
    s_rt         <= "XXXXX";
    wait for cCLK_PER;
    --sltiu
    s_opCode     <= "001011";
    s_funct      <= "XXXXXX";
    s_rt         <= "XXXXX";
    wait for cCLK_PER;
    --beq
    s_opCode     <= "000100";
    s_funct      <= "XXXXXX";
    s_rt         <= "XXXXX";
    wait for cCLK_PER;
    --bne
    s_opCode     <= "000101";
    s_funct      <= "XXXXXX";
    s_rt         <= "XXXXX";
    wait for cCLK_PER;
    --bgez
    s_opCode     <= "000001";
    s_funct      <= "XXXXXX";
    s_rt         <= "00001";
    wait for cCLK_PER;
    --bgezal
    s_opCode     <= "000001";
    s_funct      <= "XXXXXX";
    s_rt         <= "10001";
    wait for cCLK_PER;
    --bgtz
    s_opCode     <= "000111";
    s_funct      <= "XXXXXX";
    s_rt         <= "00000";
    wait for cCLK_PER;
    --blez
    s_opCode     <= "000110";
    s_funct      <= "XXXXXX";
    s_rt         <= "00000";
    wait for cCLK_PER;
    --bltzal
    s_opCode     <= "000001";
    s_funct      <= "XXXXXX";
    s_rt         <= "10000";
    wait for cCLK_PER;
    --bltz
    s_opCode     <= "000001";
    s_funct      <= "XXXXXX";
    s_rt         <= "00000";
    wait for cCLK_PER;
    --lw
    s_opCode     <= "100011";
    s_funct      <= "XXXXXX";
    s_rt         <= "XXXXX";
    wait for cCLK_PER;

    s_opCode     <= "100000";
    s_funct      <= "XXXXXX";
    s_rt         <= "XXXXX";
    wait for cCLK_PER;

    s_opCode     <= "100001";
    s_funct      <= "XXXXXX";
    s_rt         <= "XXXXX";
    wait for cCLK_PER;

    s_opCode     <= "100100";
    s_funct      <= "XXXXXX";
    s_rt         <= "XXXXX";
    wait for cCLK_PER;

    s_opCode     <= "100101";
    s_funct      <= "XXXXXX";
    s_rt         <= "XXXXX";
    wait for cCLK_PER;
    --sw
    s_opCode     <= "101011";
    s_funct      <= "XXXXXX";
    s_rt         <= "XXXXX";
    wait for cCLK_PER;
    --sb
    s_opCode     <= "101000";
    s_funct      <= "XXXXXX";
    s_rt         <= "XXXXX";
    wait for cCLK_PER;
    --sh
    s_opCode     <= "101001";
    s_funct      <= "XXXXXX";
    s_rt         <= "XXXXX";
    wait for cCLK_PER;
    --j
    s_opCode     <= "000010";
    s_funct      <= "XXXXXX";
    s_rt         <= "XXXXX";
    wait for cCLK_PER;
    --jal
    s_opCode     <= "000011";
    s_funct      <= "XXXXXX";
    s_rt         <= "XXXXX";
    wait for cCLK_PER;



    wait;
  end process;
  
end behavior;