onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /TbExecUnit_CSkip/Sstable
add wave -noupdate /TbExecUnit_CSkip/Squiet
add wave -noupdate /TbExecUnit_CSkip/Clock
add wave -noupdate /TbExecUnit_CSkip/Resetn
add wave -noupdate /TbExecUnit_CSkip/STIM/PropTimeDelay
add wave -noupdate /TbExecUnit_CSkip/MeasurementIndex
add wave -noupdate /TbExecUnit_CSkip/STIM/ResultV
add wave -noupdate -divider {DUT Signals}
add wave -noupdate -height 40 -radix hexadecimal /TbExecUnit_CSkip/A
add wave -noupdate -height 40 -radix hexadecimal /TbExecUnit_CSkip/B
add wave -noupdate -height 40 -radix hexadecimal /TbExecUnit_CSkip/Y
add wave -noupdate -height 40 -radix hexadecimal /TbExecUnit_CSkip/TbY
add wave -noupdate -divider {Control Signals}
add wave -noupdate -height 40 -radix hexadecimal /TbExecUnit_CSkip/FuncClass
add wave -noupdate -height 40 -radix hexadecimal /TbExecUnit_CSkip/LogicFN
add wave -noupdate -height 40 -radix hexadecimal /TbExecUnit_CSkip/ShiftFN
add wave -noupdate -height 25 /TbExecUnit_CSkip/AddnSub
add wave -noupdate -height 25 /TbExecUnit_CSkip/ExtWord
add wave -noupdate -divider -height 25 {Status Signals}
add wave -noupdate -height 50 /TbExecUnit_CSkip/Zero
add wave -noupdate -height 50 /TbExecUnit_CSkip/AltB
add wave -noupdate -height 50 /TbExecUnit_CSkip/AltBu
TreeUpdate [SetDefaultTree]
WaveRestoreCursors
quietly wave cursor active 0
configure wave -namecolwidth 191
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {94200 ps}
