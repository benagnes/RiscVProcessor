library IEEE;
use ieee.std_logic_1164.all;

entity Cnet is
     generic ( N : natural := 64  );
     port (
          G, P : in std_logic_vector(N-1 downto 0);
          Cin : in std_logic;
          C : out std_logic_vector(N downto 0));
end entity Cnet;

architecture rtl of Cnet is
	signal interC: std_logic_vector(N downto 0);
	signal and4ins: std_logic_vector(3 downto 0);
	signal and4OUT: std_logic;
	signal interCins: std_logic_vector (16 downto 0);
	signal orOUT: std_logic;
begin
	interC(0) <= Cin;
	interCIns(0) <= Cin;
	C <= interC;
	skipNetwork: for i in 0 to 15 generate
			interC((i*4)+1) <= G(i*4) or (P(i*4) and interCins(i)); -- interCins
			interC((4*i)+2) <= G((i*4)+1) or (P(1+(4*i)) and interC(1+(4*i)));	
			interC((4*i)+3) <= G(2+(4*i)) or (P(2+(4*i)) and interC(2+(4*i)));
			interC((4*i)+4) <= G(3+(4*i)) or (P(3+(4*i)) and interC(3+(4*i)));
			and4OUT <= P(4*i) and P(4*i + 1) and P(4*i + 2) and P(4*i + 3);
			--lastCprop5: entity work.cprop port map (interC(4*(1+i)),and4OUT,interCIns(i),interCIns(i+1)); 
			--interCins(i+1) <= interC(4*(1+i)) or (and4OUT and interCins(i));
			orOUT <= and4OUT or interC(4*(i+1));		
			interCIns(i+1) <= orOUT or interCIns(i);
	end generate skipNetwork;
end rtl;