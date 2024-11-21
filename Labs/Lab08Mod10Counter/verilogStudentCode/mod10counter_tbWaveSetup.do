#################################################################################
# File: mod10counter_tbWaveSetup.do
#################################################################################
restart -f
delete wave *

add wave -position end  sim:/mod10counter_tb/uut/clk

add wave -position end  -radix unsigned -color greenyellow sim:/mod10counter_tb/uut/currentCount






