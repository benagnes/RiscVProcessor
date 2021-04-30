library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

Entity ArithUnit_CSkip is
Generic ( N : natural := 64 );
Port ( A, B : in std_logic_vector( N-1 downto 0 ); -- operands
	AddY, Y : out std_logic_vector( N-1 downto 0 ); -- outputs. AddY comes directly from Adder, Y is post sign-ext MUX
	-- Control signals
	NotA, AddnSub, ExtWord : in std_logic := '0';
	-- Status signals
	Cout, Ovfl, Zero, AltB, AltBu : out std_logic );
End Entity ArithUnit_CSkip;

Architecture rtl of ArithUnit_CSkip is
	component Adder_Skip is
	Generic ( N : natural := 64 );
	Port ( A, B : in std_logic_vector( N-1 downto 0 ); -- operands
		Y : out std_logic_vector( N-1 downto 0 ); -- output
		-- Control signals
		Cin : in std_logic;
		-- Status signals
		Cout, Ovfl : out std_logic );
	End component;
-- internal signals
	signal Ain,Bin,AdderOut : std_logic_vector(N-1 downto 0);
	signal carryout,overflow : std_logic;
begin
	Adder64: Adder_Skip port map (Ain,Bin,AdderOut,AddnSub,carryout,overflow); -- instantiate Adder
	AddY <= AdderOut; -- adder output
	-- status signal calculations
	Zero <= nor_reduce(AdderOut);
	Cout <= carryout;
	Ovfl <= overflow;
	AltBu <= not(carryout);
	AltB <= overflow xor AdderOut(N-1);
	-- MUXes
	with NotA select Ain <= A when '0', not(A) when others; -- 2:1 operand inversion MUX for input A
	with AddnSub select Bin <= B when '0', not(B) when others; -- 2:1 operand inversion MUX for input B
	with ExtWord select Y <= -- 2:1 sign-extension MUX
		(63 downto 32 => AdderOut(31)) & AdderOut(31 downto 0) when '1', AdderOut when others; -- to or downto?
end rtl;

