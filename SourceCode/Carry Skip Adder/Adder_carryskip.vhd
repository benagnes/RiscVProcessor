library IEEE;
use ieee.std_logic_1164.all;

Entity Adder is
Generic ( N : natural := 64 );
Port ( A, B : in std_logic_vector( N-1 downto 0 );
	Y : out std_logic_vector( N-1 downto 0 );
	-- Control signals
	Cin : in std_logic;
	-- Status signals
	Cout, Ovfl : out std_logic );
End Entity Adder;

Architecture rtl of Adder is
-- instantiate carry network
	component Cnet is
     		generic (N : natural := 64 );
     		port (G, P : in std_logic_vector(N-1 downto 0);
     	    	 	Cin : in std_logic;
     	     		C : out std_logic_vector(N downto 0));
	end component;
-- ripple adder carry signal
	signal carry : std_logic_vector(N downto 0); -- carry network signal
-- new stuff for carry skip
	signal G, P: std_logic_vector(N-1 downto 0);
begin
	G <= A and B;
	P <= A xor B;
	Cout <= carry(64);
	Ovfl <= carry(63) xor carry(64);
	CarryNetwork: Cnet port map(G,P,Cin,carry);
	Y <= A xor B xor carry(63 downto 0);
-- ripple adder code
--	Cout <= Carry(N);
--	Ovfl <= Carry(N-1) xor Carry(N);
--	result: for i in 0 to N-1 generate
--		Y(i) <= A(i) xor B(i) xor Carry(i);
--		Carry(i+1) <= ((A(i) xor B(i)) and Carry(i)) or (A(i) and B(i));
--	end generate result;
end rtl;