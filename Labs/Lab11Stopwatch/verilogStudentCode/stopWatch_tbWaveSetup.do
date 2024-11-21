#################################################################################
# File: stopWatch_tbWaveSetup.do 
#################################################################################
restart -f
delete wave *

radix define States {
    4'b0000 "RESET"   -color red,

    4'b1110 "LS2LR"   -color green,
    -default hex
    -defaultcolor white
}

restart -f
delete wave *

add wave -position end  sim:/stopWatch_tb/uut/clk
add wave -position end  sim:/stopWatch_tb/uut/resetn

add wave -position end  -radix States sim:/stopWatch_tb/uut/cpsw/state

add wave -position end  -radix hex -color yellow sim:/stopWatch_tb/uut/cw
add wave -position end 		   -color yellow  sim:/stopWatch_tb/uut/dpsw/tenth
add wave -position end 		   -color yellow  sim:/stopWatch_tb/uut/S1
add wave -position end 		   -color yellow sim:/stopWatch_tb/uut/S2

add wave -position end  -radix hex -color red sim:/stopWatch_tb/uut/dpsw/clkCount

add wave -position end  -radix hex -color orange sim:/stopWatch_tb/uut/dpsw/tenthDigit
add wave -position end  -radix hex -color orange sim:/stopWatch_tb/uut/dpsw/unitDigit
add wave -position end  -radix hex -color orange sim:/stopWatch_tb/uut/dpsw/tenDigit
add wave -position end  -radix hex -color green sim:/stopWatch_tb/uut/dpsw/tenthDigitToDisplay
add wave -position end  -radix hex -color green sim:/stopWatch_tb/uut/dpsw/unitDigitToDisplay
add wave -position end  -radix hex -color green sim:/stopWatch_tb/uut/dpsw/tenDigitToDisplay






