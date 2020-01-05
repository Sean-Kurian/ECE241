# set the working dir, where all compiled verilog goes
vlib work

# compile all verilog modules in mux.v to working dir
# could also have multiple verilog files
vlog lab5part3.v


#load simulation using mux as the top level simulation module
vsim lab5part3

#log all signals and add some signals to waveform window
log {/*}
# add wave {/*} would add all items in top level simulation module
add wave {/*}

#first cycle
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

#reset
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 1
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 1
run 10ns

#load
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 1
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 1
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 1
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 1
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 1
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 1
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 1
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 1
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 1
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 1
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 1
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 1
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 1
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 1
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 1
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 1
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 1
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 1
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 1
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 1
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 1
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 1
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 1
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 1
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 1
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 1
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 1
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 1
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 1
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 1
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 1
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 1
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 1
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 1
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 1
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 1
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 1
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 1
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 1
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 1
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 1
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 1
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 1
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 1
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 1
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 1
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 1
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 1
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 1
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 1
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 1
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 1
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 1
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 1
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 1
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 1
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 1
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 1
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 1
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 1
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 1
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 1
force {KEY[0]} 1
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

#shift
force {CLOCK_50} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns

force {CLOCK_50} 1
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
force {KEY[1]} 0
force {KEY[0]} 0
run 10ns