library ieee;
Use ieee.std_logic_1164.all;
Use std.TEXTIO.all;
Use ieee.numeric_std.all;
Use std.env.stop;


Entity TbCarrySkip is
Generic ( N : natural := 64 );
End Entity TbCarrySkip;

Architecture behavioural of TbCarrySkip is
	Constant ClockPeriod : time := 2 ns;
	Constant ResetPeriod : time := 5 ns;

	Signal Clock, Resetn : std_logic := '0';
	Signal A, B, Y, TbY : std_logic_vector( N-1 downto 0 );
	Signal Cin, Cout, Ovfl : std_logic;

-- use a component for the DUT. Use the same Entityname and Port Spec
-- use default binding rules.
	component Adder_Skip is
	Generic ( N : natural := 64 );
	Port ( A, B : in std_logic_vector( N-1 downto 0 ); -- operands
		Y : out std_logic_vector( N-1 downto 0 ); -- output
		-- Control signals
		Cin : in std_logic;
		-- Status signals
		Cout, Ovfl : out std_logic );
	End component;
	
Begin
-- Some useful signals for monitoring and timing.
	Clock <= not clock after ClockPeriod/2;
	Resetn <= '0', '1' after ResetPeriod;

DUT: component Adder_Skip generic map( N => N )
		port map ( A=>A, B=>B, Y=>Y, Cin=>Cin, Cout=>Cout, Ovfl=>Ovfl );
-- *****************************************************************************
-- Now the main process for generating stimulii and response.	
-- *****************************************************************************
STIM:	Process is	
	Begin
		Wait until Resetn = '1';
		Wait for 10 ns;

		A <= x"0000000000000001";
		B <= x"0000000000000001";
		Cin <= '0';
		TbY <= x"0000000000000002";
		Wait for 10 ns;

		If Y /= TbY then		
			assert Y = TbY
				Report
				"  Y = " & to_hstring(Y) & CR &
				"TbY = " & to_hstring(TbY)
				Severity error;
		End If;


		A <= x"0000000000000011";
		B <= x"0000000000000001";
		Cin <= '0';
		TbY <= x"0000000000000012";
		Wait for 10 ns;

		If Y /= TbY then		
			assert Y = TbY
				Report
				"  Y = " & to_hstring(Y) & CR &
				"TbY = " & to_hstring(TbY)
				Severity error;
		End If;

		A <= x"0000000000000001";
		B <= x"0000000000000001";
		Cin <= '1';
		TbY <= x"0000000000000003";
		Wait for 10 ns;

		If Y /= TbY then		
			assert Y = TbY
				Report
				"  Y = " & to_hstring(Y) & CR &
				"TbY = " & to_hstring(TbY)
				Severity error;
		End If;

		A <= x"1111111111111111";
		B <= x"1111111111111111";
		Cin <= '0';
		TbY <= x"2222222222222222";
		Wait for 10 ns;

		If Y /= TbY then		
			assert Y = TbY
				Report
				"  Y = " & to_hstring(Y) & CR &
				"TbY = " & to_hstring(TbY)
				Severity error;
		End If;

		-- should see Cout == 1 and Ovfl == 1 here
		A <= x"8000000000000000";
		B <= x"8000000000000000";
		Cin <= '1';
		TbY <= x"0000000000000001";
		Wait for 10 ns;

		If Y /= TbY then		
			assert Y = TbY
				Report
				"  Y = " & to_hstring(Y) & CR &
				"TbY = " & to_hstring(TbY)
				Severity error;
		End If;

		-- should see Cout == 1 and Overflow == 0
		A <= x"C000000000000000";
		B <= x"C000000000000000";
		Cin <= '0';
		TbY <= x"8000000000000000";
		Wait for 10 ns;

		If Y /= TbY then		
			assert Y = TbY
				Report
				"  Y = " & to_hstring(Y) & CR &
				"TbY = " & to_hstring(TbY)
				Severity error;
		End If;

		-- should see Cout == 1 and Overflow == 0
		A <= x"FF00000000000000";
		B <= x"FF00000000000000";
		Cin <= '0';
		TbY <= x"FE00000000000000";
		Wait for 10 ns;

		If Y /= TbY then		
			assert Y = TbY
				Report
				"  Y = " & to_hstring(Y) & CR &
				"TbY = " & to_hstring(TbY)
				Severity error;
		End If;

		Report "Simulation Completed";
		stop;
	End Process STIM;
		
End Architecture behavioural;

