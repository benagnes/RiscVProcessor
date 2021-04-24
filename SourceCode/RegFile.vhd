library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RegFile is
	Generic ( N : natural := 64 );
	Port ( datain : in std_logic_vector( N-1 downto 0 ); -- inputs
		-- control signals
		regwrite, clock : in std_logic;
		regwritesel, reg1sel, reg2sel : in std_logic_vector(4 downto 0);
		-- outputs
		reg1out, reg2out : out std_logic_vector( N-1 downto 0 ));
End Entity RegFile;

architecture rtl of Regfile is
	type registerFile is array(0 to 31) of std_logic_vector(63 downto 0);
	signal registers : registerFile;
begin
	process(clock) is
	begin
		if rising_edge(clock) then
			-- Read A and B before bypass
			reg1out <= registers(to_integer(unsigned(reg1sel)));
			reg2out <= registers(to_integer(unsigned(reg2sel)));
			-- Write and bypass
			if regwrite = '1' then
				registers(to_integer(unsigned(regwritesel))) <= datain;  -- Write
				if reg1sel = regwritesel then  -- Bypass for read A
					reg1out <= datain;
				end if;
				if reg2sel = regwritesel then  -- Bypass for read B
					reg2out <= datain;
				end if;
			end if;
		end if;
	end process;
end rtl;