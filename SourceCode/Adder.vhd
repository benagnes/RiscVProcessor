library IEEE;
use ieee.std_logic_1164.all;

Entity Adder is
Generic ( N : natural := 64 );
Port ( A, B : in std_logic_vector( N-1 downto 0 ); -- operands
	Y : out std_logic_vector( N-1 downto 0 ); -- output
	-- Control signals
	Cin : in std_logic;
	-- Status signals
	Cout, Ovfl : out std_logic );
End Entity Adder;

Architecture rtl of Adder is
	signal Carry : std_logic_vector(N downto 0); -- carry network signal
begin
	Carry(0) <= Cin;
	Cout <= Carry(N);
	Ovfl <= Carry(N-1) xor Carry(N);
	result: for i in 0 to N-1 generate -- loop for ripple-carry network and sum calculation
		Y(i) <= A(i) xor B(i) xor Carry(i);
		Carry(i+1) <= ((A(i) xor B(i)) and Carry(i)) or (A(i) and B(i));
	end generate result;
end rtl;