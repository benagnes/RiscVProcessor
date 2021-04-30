library IEEE;
use ieee.std_logic_1164.all;

Entity Carry_Skip_Block is
Port ( A, B : in std_logic_vector(3 downto 0); -- operands
	Cin : in std_logic;
	Y : out std_logic_vector(3 downto 0);
	Cout, Ovfl: out std_logic); -- output
End Entity Carry_Skip_Block;

Architecture rtl of Carry_Skip_Block is
	signal Prop_Out : std_logic_vector(3 downto 0);
	signal Carry : std_logic_vector(3 downto 0);
	signal P_and4 : std_logic;
	signal carry_mux_out : std_logic;

	-- component definitions
	component Full_Adder is
	Port ( A, B, Cin : in std_logic; -- operands
		Y, P, Cout: out std_logic); -- output
	End component;
begin

	fa0: Full_Adder port map (A(0),B(0),Cin,Y(0),Prop_Out(0),Carry(0)); -- instantiate Full Adder
	fa1: Full_Adder port map (A(1),B(1),Carry(0),Y(1),Prop_Out(1),Carry(1)); -- instantiate Full Adder
	fa2: Full_Adder port map (A(2),B(2),Carry(1),Y(2),Prop_Out(2),Carry(2)); -- instantiate Full Adder
	fa3: Full_Adder port map (A(3),B(3),Carry(2),Y(3),Prop_Out(3),Carry(3)); -- instantiate Full Adder

	P_and4 <= Prop_Out(0) and Prop_Out(1) and Prop_Out(2) and Prop_Out(3);

	with P_and4 select Cout <= Carry(3) when '0', Cin when others; -- 2:1 operand inversion MUX for input A

	Ovfl <= Carry(3) xor Carry(2); -- need this for overall carry skip adder

end rtl;
