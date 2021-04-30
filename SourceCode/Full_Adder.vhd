library IEEE;
use ieee.std_logic_1164.all;

Entity Full_Adder is
Port ( A, B, Cin : in std_logic; -- operands
	Y, P, Cout: out std_logic); -- output
End Entity Full_Adder;

Architecture rtl of Full_Adder is
	signal gen : std_logic; -- generate == A or B
	signal prop : std_logic; -- propogate == A or B
	signal prop_half_adder : std_logic; -- prop half adder == A xor B
begin
	gen <= A and B;
	prop <= A or  B;

	prop_half_adder <= A xor B;

	P <= prop_half_adder;
	Y <= prop_half_adder xor Cin; -- Sum = A xor B xor Cin;
	Cout <= gen or (prop and Cin); -- Carry out = A*B + (A+B)*Cin
end rtl;
