#################################################################################
# File: controlUnit_tbWaveSetup.do
#################################################################################
restart -f
delete wave *

radix define States {


    4'b0010 "STOP"    -color red,

    4'b1110 "LS2LR"   -color green,
    -default hex
    -defaultcolor white
}

add wave -position end  sim:/controlUnit_tb/uut/clk


add wave -position end  -radix States sim:/controlUnit_tb/uut/state


