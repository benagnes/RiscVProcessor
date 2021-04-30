onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /TbCarrySkip/Clock
add wave -noupdate /TbCarrySkip/Resetn
add wave -noupdate -divider {DUT Signals}
add wave -noupdate -height 40 -radix hexadecimal /TbCarrySkip/A
add wave -noupdate -height 40 -radix hexadecimal /TbCarrySkip/B
add wave -noupdate -height 40 /TbCarrySkip/Cin
add wave -noupdate -height 40 -radix hexadecimal /TbCarrySkip/Y
add wave -noupdate -height 40 -radix hexadecimal /TbCarrySkip/TbY
add wave -noupdate -divider -height 25 {Status Signals}
add wave -noupdate -height 40 /TbCarrySkip/Cout
add wave -noupdate -height 40 /TbCarrySkip/Ovfl
add wave -noupdate -divider -height 25 {Adder Signals}
add wave -noupdate -height 40 -radix hexadecimal /TbCarrySkip/DUT/Carry
add wave -noupdate -height 40 -radix hexadecimal /TbCarrySkip/DUT/Overflow
TreeUpdate [SetDefaultTree]
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
WaveRestoreZoom {0 ps} {100 ns}
