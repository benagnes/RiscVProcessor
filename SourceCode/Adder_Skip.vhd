library IEEE;
use ieee.std_logic_1164.all;

Entity Adder_Skip is
Generic ( N : natural := 64 );
Port ( A, B : in std_logic_vector( N-1 downto 0 ); -- operands
	Y : out std_logic_vector( N-1 downto 0 ); -- output
	-- Control signals
	Cin : in std_logic;
	-- Status signals
	Cout, Ovfl : out std_logic );
End Entity Adder_Skip;

Architecture rtl of Adder_Skip is
	-- internal signals
	
	signal Carry : std_logic_vector(N/4 downto 0);
	signal Overflow : std_logic_vector((N/4 - 1) downto 0); -- probably don't need this but??????

	-- components
	component Carry_Skip_Block is
	Port ( A, B : in std_logic_vector(3 downto 0); -- operands
		Cin : in std_logic;
		Y : out std_logic_vector(3 downto 0);
		Cout, Ovfl : out std_logic); -- output
	End component;
begin
	Carry(0) <= Cin;
	Cout <= Carry(N/4);
	Ovfl <= Overflow(N/4 - 1); -- overflow == carry(64) xor carry(63)

	result: for i in 0 to ((N/4) - 1) generate -- loop for Carry-skip network and Sum calculation
		CSB: Carry_Skip_Block port map (A((4*i + 3) downto 4*i),
			B((4*i + 3) downto 4*i), 
			Carry(i),
			Y((4*i + 3) downto 4*i),
			Carry(i+1),
			Overflow(i));
	end generate result;
end rtl;
