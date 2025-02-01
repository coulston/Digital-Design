#################################################################################
# File: hiLow_tbWaveSetup.do
#################################################################################
restart -f
delete wave *

add wave -position end  -radix unsigned -color green sim:/hiLow_tb/t_seedSwitch
add wave -position end  -radix unsigned -color green sim:/hiLow_tb/t_guessSwitch
add wave -position end  -radix unsigned -color green  sim:/hiLow_tb/t_playSwitch
add wave -position end  -color green sim:/hiLow_tb/t_randBut
add wave -position end  -color green sim:/hiLow_tb/t_hiLowBut
add wave -position end  -radix unsigned -color yellow sim:/hiLow_tb/uut/randNum
add wave -position end  -radix hex -color red sim:/hiLow_tb/t_randDisp
add wave -position end  -radix hex -color red sim:/hiLow_tb/t_hiLowSeg
add wave -position end  -color red sim:/hiLow_tb/t_greenLEDs
