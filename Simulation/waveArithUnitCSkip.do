onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /TbArithUnit_CSkip/Sstable
add wave -noupdate /TbArithUnit_CSkip/Squiet
add wave -noupdate /TbArithUnit_CSkip/Clock
add wave -noupdate /TbArithUnit_CSkip/Resetn
add wave -noupdate /TbArithUnit_CSkip/STIM/PropTimeDelay
add wave -noupdate /TbArithUnit_CSkip/MeasurementIndex
add wave -noupdate /TbArithUnit_CSkip/STIM/ResultV
add wave -noupdate -divider {DUT Signals}
add wave -noupdate -height 40 -radix hexadecimal /TbArithUnit_CSkip/A
add wave -noupdate -height 40 -radix hexadecimal /TbArithUnit_CSkip/B
add wave -noupdate -height 40 -radix hexadecimal /TbArithUnit_CSkip/Y
add wave -noupdate -height 40 -radix hexadecimal /TbArithUnit_CSkip/TbY
add wave -noupdate -divider {Control Signals}
add wave -noupdate -height 25 /TbArithUnit_CSkip/AddnSub
add wave -noupdate -height 25 /TbArithUnit_CSkip/ExtWord
add wave -noupdate -divider -height 25 {Status Signals}
add wave -noupdate -height 50 /TbArithUnit_CSkip/Cout
add wave -noupdate -height 50 /TbArithUnit_CSkip/Ovfl
add wave -noupdate -height 50 /TbArithUnit_CSkip/Zero
add wave -noupdate -height 50 /TbArithUnit_CSkip/AltB
add wave -noupdate -height 50 /TbArithUnit_CSkip/AltBu
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 3} {16000 ps} 0} {{Cursor 4} {41600 ps} 0}
quietly wave cursor active 1
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
WaveRestoreZoom {0 ps} {43800 ps}
