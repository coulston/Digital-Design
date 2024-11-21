#################################################################################
#Useful manual: https://www.microsemi.com/document-portal/doc_view/136364-modelsim-me-10-4c-command-reference-manual-for-libero-soc-v11-7
#Students should modify as needed.
#################################################################################
vsim work.datapath_tb
restart -f
delete wave *

add wave -position end  sim:/datapath_tb/uut/clk

add wave -position end             -color gold sim:/datapath_tb/uut/tenth


add wave -position end  -radix hex -color green sim:/datapath_tb/uut/tenthDigitToDisplay

add wave -position end  -radix hex -color greenyellow sim:/datapath_tb/uut/unitDigit





