quit -sim
transcript file TimeExecUnitTranscriptCSKIP.txt
transcript on
#----------------------------------------------------------------------------------------------------------
# compile
#----------------------------------------------------------------------------------------------------------
vcom -work work -2008 -explicit -stats=time,-cmd,msg ModelSim/ExU_slow.vho

vcom -work work -2008 -explicit -stats=time,-cmd,msg TBExecUnit_CSkip.vhd

vcom -work work -2008 -explicit -stats=time,-cmd,msg ConfigExU.vhd
#----------------------------------------------------------------------------------------------------------
# Start the simulation
#----------------------------------------------------------------------------------------------------------
vsim -t 100ps -gui work.TimeXUSim -sdftyp ../DUT=ModelSim/ExU_slow.sdo
transcript off
do waveExecUnit_CSkip.do
transcript on
#----------------------------------------------------------------------------------------------------------
# Simulation Run
# default was 7570ns
#----------------------------------------------------------------------------------------------------------
restart -f
run 7200 ns 
transcript off
transcript file ""

