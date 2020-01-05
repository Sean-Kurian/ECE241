vlib work


vlog lab5part1.v
vlog D_FlipFlop.v
vlog T_FlipFlop.v
vlog hexDecoder.V

vsim lab5part1

log {/*}
add wave {/*}

# SW[1] = enable;
# KEY[0] = clock;
# SW[0] = reset

# test case 0
force {SW[1]} 1
force {SW[0]} 1
force {KEY[0]} 0
run 10 ns

force {KEY[0]} 1
run 10 ns

force {KEY[0]} 0
run 10 ns

force {KEY[0]} 1
run 10 ns

force {KEY[0]} 0
run 10 ns

force {KEY[0]} 1
run 10 ns

force {SW[1]} 1
force {SW[0]} 0
force {KEY[0]} 0
run 10 ns

force {KEY[0]} 1
run 10 ns

force {KEY[0]} 0
run 10 ns

force {KEY[0]} 1
run 10 ns

force {KEY[0]} 0
run 10 ns

force {KEY[0]} 1
run 10 ns

force {KEY[1]} 0
run 10 ns

force {SW[0]} 0
force {KEY[0]} 0
run 10 ns

force {KEY[0]} 1
run 10 ns

force {SW[1]} 0
force {KEY[0]} 0
run 10 ns

force {KEY[0]} 1
run 10 ns
