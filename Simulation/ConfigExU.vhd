-- Logic Unit Configurations
--Configuration FuncLUSim of TbLogicUnit is
--	for behavioural
--		for DUT : LogicUnit use entity work.LogicUnit(rtl); end for;
--	end for;
--End Configuration FuncLUSim;


--Configuration TimeLUSim of TbLogicUnit is
--	for behavioural
--		for DUT : LogicUnit use entity work.LogicUnit(structure); end for;
--	end for;
--End Configuration TimeLUSim;

-- Arithmetic Unit Configurations
--Configuration FuncAUSim of TbArithUnit is
--	for behavioural
--		for DUT : ArithUnit use entity work.ArithUnit(rtl); end for;
--	end for;
--End Configuration FuncAUSim;

--Configuration TimeAUSim of TbArithUnit is
--	for behavioural
--		for DUT : ArithUnit use entity work.ArithUnit(structure); end for;
--	end for;
--End Configuration TimeAUSim;

-- Shift Unit Configurations
--Configuration FuncSUSim of TbShiftUnit is
--	for behavioural
--		for DUT : ShiftUnit use entity work.ShiftUnit(rtl); end for;
--	end for;
--End Configuration FuncSUSim;

--Configuration TimeSUSim of TbShiftUnit is
--	for behavioural
--		for DUT : ShiftUnit use entity work.ShiftUnit(structure); end for;
--	end for;
--End Configuration TimeSUSim;


-- Execution Unit Configurations
--Configuration FuncXUSim of TbExecUnit is
--	for behavioural
--		for DUT : ExecUnit use entity work.ExecUnit(rtl); end for;
--	end for;
--End Configuration FuncXUSim;


--Configuration TimeXUSim of TbExecUnit is
--	for behavioural
--		for DUT : ExecUnit use entity work.ExecUnit(structure); end for;
--	end for;
--End Configuration TimeXUSim;

-- for carry-skip adder w/ ExU
Configuration TimeXUSim of TBExecUnit_CSkip is
	for behavioural
		for DUT : ExecUnit use entity work.ExecUnit_CSkip(structure); end for;
	end for;
End Configuration TimeXUSim;
