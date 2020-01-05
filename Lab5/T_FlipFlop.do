# set the working dir, where all compiled verilog goes
vlib work

# compile all verilog modules in mux.v to working dir
# could also have multiple verilog files
vlog T_FlipFlop.v
vlog D_FlipFlop.v

#load simulation using mux as the top level simulation module
vsim T_FlipFlop

#log all signals and add some signals to waveform window
log {/*}
# add wave {/*} would add all items in top level simulation module
add wave {/*}

# first test case
#set input values using the force command, signal names need to be in {} brackets
force {clear} 1
force {clk} 0
#run simulation for a few ns
run 10ns


force {clk} 1
#run simulation for a few ns
run 10ns

force {clk} 0
#run simulation for a few ns
run 10ns

force {clk} 1
#run simulation for a few ns
run 10ns

force {enable} 1
force {clear} 0
force {clk} 1
#run simulation for a few ns
run 10ns


force {clk} 0
#run simulation for a few ns
run 10ns

force {clk} 1
#run simulation for a few ns
run 10ns

force {clk} 0
#run simulation for a few ns
run 10ns

force {clk} 1
#run simulation for a few ns
run 10ns

