quit -sim
transcript file FuncArithUnitCSKIPTranscript.txt
transcript on
#----------------------------------------------------------------------------------------------------------
# compile
#----------------------------------------------------------------------------------------------------------
vcom -work work -2008 -explicit -stats=none ../SourceCode/Full_Adder.vhd

vcom -work work -2008 -explicit -stats=none ../SourceCode/Carry_Skip_Block.vhd

vcom -work work -2008 -explicit -stats=none ../SourceCode/Adder_Skip.vhd

vcom -work work -2008 -explicit -stats=none ../SourceCode/ArithUnit_CSkip.vhd

vcom -work work -2008 -explicit -stats=none TBArithUnit_CSkip.vhd

#----------------------------------------------------------------------------------------------------------
# Start the simulation
#----------------------------------------------------------------------------------------------------------
vsim -gui work.TbArithUnit_CSkip -t 100ps
transcript off
do waveArithUnitCSkip.do
transcript on
#----------------------------------------------------------------------------------------------------------
# Simulation Run
#----------------------------------------------------------------------------------------------------------
restart -f
run 1220 ns
transcript off
transcript file ""
