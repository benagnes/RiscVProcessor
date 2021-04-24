library IEEE;
use ieee.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;

Entity ShiftUnit is 
	Generic ( N : natural := 64 );
	Port ( A, B, C : in std_logic_vector( N-1 downto 0 ); -- operands
		Y : out std_logic_vector( N-1 downto 0 ); -- output
		-- control signals
		ShiftFN : in std_logic_vector( 1 downto 0 ); 
		ExtWord : in std_logic );
End Entity ShiftUnit;

Architecture rtl of ShiftUnit is
-- instantiate barrel shifters
	component SLL64 is
			Generic ( N : natural := 64 );
			Port ( X : in std_logic_vector( N-1 downto 0 );
				Y : out std_logic_vector( N-1 downto 0 );
				ShiftCount : in unsigned( integer(ceil(log2(real(N))))-1 downto 0 ) );
	End component;

	component SRL64 is
		Generic ( N : natural := 64 );
		Port ( X : in std_logic_vector( N-1 downto 0 );
			Y : out std_logic_vector( N-1 downto 0 );
			ShiftCount : in unsigned( integer(ceil(log2(real(N))))-1 downto 0 ) );
	End component;

	component SRA64 is
		Generic ( N : natural := 64 );
		Port ( X : in std_logic_vector( N-1 downto 0 );
			Y : out std_logic_vector( N-1 downto 0 );
			ShiftCount : in unsigned( integer(ceil(log2(real(N))))-1 downto 0 ) );
	End component;
-- internal signals
	signal Amuxselect: std_logic;
	signal ShiftCount: std_logic_vector(5 downto 0);
	signal AmuxOut,SLLout,SRLout,SRAout: std_logic_vector(N-1 downto 0);
	signal CorSLLout,CorSLLoutEXT,SRLorSRAout,SRLorSRAoutEXT: std_logic_vector(N-1 downto 0);
begin
-- MUX selector to swap wordx of input A
	Amuxselect <= ShiftFN(1) and ExtWord;
-- 2:1 MUX to swap lower and upper words if SRLW or SRAW instruction
	with Amuxselect select AmuxOut <= 
		A when '0', 
		A(31 downto 0) & A(63 downto 32) when others; -- swap words
-- extract shift count from B, if ExtWord == '1' only take bits 4 downto 0, make bit 5 '0'
	with ExtWord select ShiftCount <=
		B(5 downto 0) when '0',
		(5 => '0') & B(4 downto 0) when others;
-- instantiate components
	SLL64unit: SLL64 port map(AmuxOut,SLLout,unsigned(ShiftCount));
	SRL64unit: SRL64 port map(AmuxOut,SRLout,unsigned(ShiftCount));
	SRA64unit: SRA64 port map(AmuxOut,SRAout,unsigned(ShiftCount));
-- 2:1 MUX, select input C or SLL unit output
	with ShiftFN(0) select CorSLLout <= C when '0', SLLout when others;
-- 2:1 MUX, select SRL or SRA unit output
	with ShiftFN(0) select SRLorSRAout <= SRLout when '0', SRAout when others;
-- 2:1 MUX, sign extend lower word if select bit '1'
	with ExtWord select CorSLLoutEXT <=
		CorSLLout when '0',
		(63 downto 32 => CorSLLout(31)) & CorSLLout(31 downto 0) when others; -- sign extend lower
-- 2:1 MUX, sign extend upper word if select bit '1'
	with ExtWord select SRLorSRAoutEXT <=
		SRLorSRAout when '0',
		(63 downto 32 => SRLorSRAout(63)) & SRLorSRAout(63 downto 32) when others; -- sign extend upper
-- 2:1 MUX select C/SLL signal or SRL/SRA output
	with ShiftFN(1) select Y <= CorSLLoutEXT when '0', SRLorSRAoutEXT when others;
end rtl;