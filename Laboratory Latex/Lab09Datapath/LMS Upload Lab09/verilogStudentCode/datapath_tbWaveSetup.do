#################################################################################
# File:	datapath_tbWaveSetup.do
#################################################################################
restart -f
delete wave *

add wave -position end  sim:/datapath_tb/uut/clk

add wave -position end             -color gold sim:/datapath_tb/uut/tenth


add wave -position end  -radix hex -color green sim:/datapath_tb/uut/tenthDigitToDisplay

add wave -position end  -radix hex -color greenyellow sim:/datapath_tb/uut/unitDigit





