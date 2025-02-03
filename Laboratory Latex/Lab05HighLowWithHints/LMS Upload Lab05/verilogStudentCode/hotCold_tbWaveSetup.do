#################################################################################
# File: hotCold_tbWaveSetup.do
#################################################################################
restart -f
delete wave *

add wave -position end  -radix unsigned -color green sim:/hotCold_tb/uut/seedSwitch
add wave -position end  -radix unsigned -color limegreen sim:/hotCold_tb/uut/randNum
add wave -position end  -radix unsigned -color limegreen sim:/hotCold_tb/uut/guessSwitch
add wave -position end  -radix unsigned -color cyan sim:/hotCold_tb/uut/biggerValue
add wave -position end  -radix unsigned -color cyan sim:/hotCold_tb/uut/smallerValue
add wave -position end  -radix unsigned -color blue sim:/hotCold_tb/uut/diffRandGuess
add wave -position end  -color orange sim:/hotCold_tb/uut/hotWire
add wave -position end  -color orange sim:/hotCold_tb/uut/warmWire
add wave -position end  -color orange sim:/hotCold_tb/uut/coldWire
add wave -position end  -radix hex -color red sim:/hotCold_tb/uut/hotColdSeg
