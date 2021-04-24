library IEEE;
use ieee.std_logic_1164.all;

Entity LogicUnit is
Generic ( N : natural := 64 );
Port ( A, B : in std_logic_vector( N-1 downto 0 ); -- operands
	Y : out std_logic_vector( N-1 downto 0 ); -- output
	LogicFN : in std_logic_vector( 1 downto 0 ) ); -- control signal
End Entity LogicUnit;

architecture rtl of LogicUnit is
-- internal signals
	signal AxorB, AorB, AandB : std_logic_vector(N-1 downto 0);
begin
-- compute xor, or, and operations
	AxorB <= A xor B;
	AorB <= A or B;
	AandB <= A and B;
-- 4:1 MUX to select result with LogicFN control signal
	with LogicFN select Y <=
		B when "00",
		AxorB when "01",
		AorB when "10",
		AandB when others;
end rtl;