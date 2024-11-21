#################################################################################
#run this file by typing the following in the modelSim command window
#Useful manual: https://www.microsemi.com/document-portal/doc_view/136364-modelsim-me-10-4c-command-reference-manual-for-libero-soc-v11-7
#################################################################################
vsim work.hotCold_tb
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


