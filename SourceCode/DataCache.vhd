library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DataCache is
	Generic ( N : natural := 64 );
	Port ( datain : in std_logic_vector( N-1 downto 0 ); -- input data
		address : in std_logic_vector( N-1 downto 0 ); -- memory location to write to
		-- control signals
		dataInSize : in std_logic_vector(2 downto 0);
		datawrite, dataread: in std_logic;
		clock : in std_logic;
		-- output
		dataout : out std_logic_vector( N-1 downto 0 ) ); -- data out always 64 bit, sign-extended
end entity DataCache;

architecture rtl of DataCache is
	-- will have to make any load/store instruction be base 0 + immediate offset (12 bits)
	type cache is array(0 to (2**11)-1) of std_logic_vector(63 downto 0);
	--type cache is array(0 to 63) of std_logic_vector(63 downto 0);
	signal data_cache : cache;
	signal read_address : std_logic_vector(63 downto 0);
	--signal pre_extend_dataout : std_logic_vector(63 downto 0);
	signal dataSize : integer;
	--signal isSigned : std_logic; -- sign extend data from memory when reading
begin
	--memory_loc_start <= to_integer(unsigned(address));
	
	-- MUX word size
	with dataInSize select dataSize <= 
		8 when "000",
		16 when "001",
		32 when "010",
		64 when "011",
		8 when "100",
		16 when "101",
		32 when "110",
		64 when others;
	
	process(clock) is
	begin
		if rising_edge(clock) then		
			
			if datawrite = '1' then
				data_cache(to_integer(unsigned(address))) <= datain;
				--cache(to_integer(unsigned(address)))(dataSize-1 downto 0) <= datain(dataSize-1 downto 0);
			end if;
			
			if dataread = '1' then
				--if (dataInSize = "100" or dataInSize = "101" or dataInSize = "110") then
				--	isSigned <= '1';
				--else
				--	isSigned <= '0';
				--end if;
				
				read_address <= address;
				dataout <= data_cache(to_integer(unsigned(read_address)));
				--pre_extend_dataout <= cache(to_integer(unsigned(read_address)));
				--if isSigned = '1' and dataSize /= 64 then
				--	dataout <= (63 downto (dataSize + 1) => pre_extend_dataout(dataSize - 1)) & pre_extend_dataout(datasize - 1 downto 0); 
				--else
				--	dataout <= pre_extend_dataout;
				--end if;
				
	      end if;
			
		end if;
	end process;
end rtl;