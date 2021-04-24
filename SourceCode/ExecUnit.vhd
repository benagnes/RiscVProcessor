library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity ExecUnit is
	Generic ( N : natural := 64 );
	Port ( A, B : in std_logic_vector( N-1 downto 0 ); -- operands
		NotA : in std_logic := '0'; -- outputs
		-- control signals
		FuncClass, LogicFN, ShiftFN : in std_logic_vector( 1 downto 0 );
		AddnSub, ExtWord : in std_logic := '0';
		-- output. direct adder output is left unconnected, only post sign-ext MUX result is connected
		Y : out std_logic_vector( N-1 downto 0 );
		-- status signals. cout & ovfl are left unconnected
		Zero, AltB, AltBu : out std_logic );
End Entity ExecUnit;

architecture rtl of ExecUnit is
-- include components
	component ShiftUnit is 
		Generic ( N : natural := 64 );
		Port ( A, B, C : in std_logic_vector( N-1 downto 0 );
			Y : out std_logic_vector( N-1 downto 0 );
			ShiftFN : in std_logic_vector( 1 downto 0 );
			ExtWord : in std_logic );
	End component;

	component ArithUnit is
		Generic ( N : natural := 64 );
		Port ( A, B : in std_logic_vector( N-1 downto 0 );
			AddY, Y : out std_logic_vector( N-1 downto 0 );
			-- Control signals
			NotA, AddnSub, ExtWord : in std_logic := '0';
			-- Status signals
			Cout, Ovfl, Zero, AltB, AltBu : out std_logic );
	End component;

	component LogicUnit is
		Generic ( N : natural := 64 );
		Port ( A, B : in std_logic_vector( N-1 downto 0 );
			Y : out std_logic_vector( N-1 downto 0 );
			LogicFN : in std_logic_vector( 1 downto 0 ) ); -- Function select
	End component;
-- throwaway signals
	signal trash_cout,trash_ovfl: std_logic; -- throw away Cout, Ovfl from ArithUnit
	signal throwaway: std_logic_vector(N-1 downto 0); -- throw away AddY from arithunit
-- internal signals
	signal AltBout,AltBuOut: std_logic;
	signal LogicUnitout, ArithUnitSum, ShiftUnitout: std_logic_vector(N-1 downto 0);
begin
-- instantiate components
	LogicUnit64: LogicUnit port map(A,B,LogicUnitout,LogicFN);
	ArithUnit64: ArithUnit port map(A,B,throwaway,ArithUnitSum,NotA,AddnSub,ExtWord,trash_cout,trash_ovfl,Zero, AltBout, AltBuOut);
	ShiftUnit64: ShiftUnit port map(A,B,ArithUnitSum,ShiftUnitout,ShiftFN,ExtWord); -- Adder is fed through shift unit as input C
-- set status signals
	AltB <= AltBout;
	AltBu <= AltBuOut;	
-- 4:1 mux to output result specified by FuncClass control signal
	with FuncClass select Y <= 
		(63 downto 1 => '0') & AltBuOut when "00", -- for SLTU
		(63 downto 1 => '0') & AltBout when "01", -- for SLT
		ShiftUnitout when "10", -- shift / arithmetic (Adder feeds through Shift unit)
		LogicUnitout when others;
end rtl;