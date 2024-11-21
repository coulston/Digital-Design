#################################################################################
#Useful manual: https://www.microsemi.com/document-portal/doc_view/136364-modelsim-me-10-4c-command-reference-manual-for-libero-soc-v11-7
#Students should modify and add to this file as needed
#################################################################################
vsim work.controlUnit_tb
restart -f
delete wave *

radix define States {


    4'b0010 "STOP"    -color red,

    4'b1110 "LS2LR"   -color green,
    -default hex
    -defaultcolor white
}

restart -f
delete wave *
add wave -position end  sim:/controlUnit_tb/uut/clk


add wave -position end  -radix States sim:/controlUnit_tb/uut/state


