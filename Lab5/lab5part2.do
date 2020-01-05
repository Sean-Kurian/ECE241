# set the working dir, where all compiled verilog goes
vlib work

# compile all verilog modules in mux.v to working dir
# could also have multiple verilog files
vlog lab5part2.v
vlog hexDecoder.v


#load simulation using mux as the top level simulation module
vsim lab5part2

#log all signals and add some signals to waveform window
log {/*}
# add wave {/*} would add all items in top level simulation module
add wave {/*}

force {CLOCK_50} 0 0ns , 1 {5ns} -r 10ns
run 10ns
# The first commands sets clk to after 0ns, then sets it to 1 after 5ns. This cycle repeats after 10ns.

force {SW[0]} 0
force {SW[1]} 0

force {KEY[0]} 0
run 10ns

force {KEY[0]} 1
run 150ns
