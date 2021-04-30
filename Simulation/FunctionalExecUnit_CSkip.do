quit -sim
transcript file FuncExecUnitTranscriptCSKIP.txt
transcript on
#----------------------------------------------------------------------------------------------------------
# compile
#----------------------------------------------------------------------------------------------------------
vcom -work work -2008 -explicit -stats=none ../SourceCode/LogicUnit.vhd

vcom -work work -2008 -explicit -stats=none ../SourceCode/Full_Adder.vhd

vcom -work work -2008 -explicit -stats=none ../SourceCode/Carry_Skip_Block.vhd

vcom -work work -2008 -explicit -stats=none ../SourceCode/Adder_Skip.vhd

vcom -work work -2008 -explicit -stats=none ../SourceCode/ArithUnit_CSkip.vhd

vcom -work work -2008 -explicit -stats=none ../SourceCode/SLL64.vhd

vcom -work work -2008 -explicit -stats=none ../SourceCode/SRL64.vhd

vcom -work work -2008 -explicit -stats=none ../SourceCode/SRA64.vhd

vcom -work work -2008 -explicit -stats=none ../SourceCode/ShiftUnit.vhd

vcom -work work -2008 -explicit -stats=none ../SourceCode/ExecUnit_CSkip.vhd

vcom -work work -2008 -explicit -stats=none TBExecUnit_CSkip.vhd

#----------------------------------------------------------------------------------------------------------
# Start the simulation
#----------------------------------------------------------------------------------------------------------
vsim -gui work.TbExecUnit_CSkip -t 100ps
transcript off
do waveExecUnit_CSkip.do
transcript on
#----------------------------------------------------------------------------------------------------------
# Simulation Run
#----------------------------------------------------------------------------------------------------------
restart -f
run 4120 ns
transcript off
transcript file ""
