#################################################################################
#Useful manual: https://www.microsemi.com/document-portal/doc_view/136364-modelsim-me-10-4c-command-reference-manual-for-libero-soc-v11-7
#################################################################################
vsim work.mod10counter_tb
restart -f
delete wave *

add wave -position end  sim:/mod10counter_tb/uut/clk

add wave -position end  -radix unsigned -color greenyellow sim:/mod10counter_tb/uut/currentCount






