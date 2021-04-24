library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.math_real.all;
use ieee.numeric_std.all;

Entity SLL64 is
	Generic ( N : natural := 64 );
	Port ( X : in std_logic_vector( N-1 downto 0 ); -- operand
		Y : out std_logic_vector( N-1 downto 0 ); -- output
		ShiftCount : in unsigned( integer(ceil(log2(real(N))))-1 downto 0 ) ); -- control signal
End Entity SLL64;

Architecture rtl of SLL64 is
-- internal signals
	signal mux1out,mux2out: unsigned(63 downto 0);
begin
-- break down shifts into 4:1 MUX stages
-- 4:1 mux 1 can do SLL 0,16,32,48
	with ShiftCount(5 downto 4) select mux1out <=
		unsigned(X) when "00",
		shift_left(unsigned(X),16) when "01",
		shift_left(unsigned(X),32) when "10",
		shift_left(unsigned(X),48) when others;
-- 4:1 mux 2 can do SLL 0,,4,8,12
	with ShiftCount(3 downto 2) select mux2out <= 
		mux1out when "00",
		shift_left(unsigned(mux1out),4) when "01",
		shift_left(unsigned(mux1out),8) when "10",
		shift_left(unsigned(mux1out),12) when others;
-- 4:1 mux 3 can do SLL 0,1,2,3
	with Shiftcount(1 downto 0) select Y <= -- tempresult
		std_logic_vector(mux2out) when "00", -- convert back to std_logic_vector for output
		std_logic_vector(shift_left(unsigned(mux2out),1)) when "01",
		std_logic_vector(shift_left(unsigned(mux2out),2)) when "10",
		std_logic_vector(shift_left(unsigned(mux2out),3)) when others;
end rtl;