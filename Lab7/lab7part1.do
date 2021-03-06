vlib work

vlog lab7part1.v
vlog hexDecoder.v
vlog ram32x4.v

vsim -L altera_mf_ver lab7part1

# write to address 0x00000 0111
force {SW[4]} 0
force {SW[5]} 0
force {SW[6]} 0
force {SW[7]} 0
force {SW[8]} 0
force {SW[0]} 1
force {SW[1]} 1
force {SW[2]} 1
force {SW[3]} 0
force {SW[9]} 1
force {KEY[0]} 0
run 10 ns
force {KEY[0]} 1
run 10 ns
# write to address 0x00001 0101
force {SW[4]} 1
force {SW[5]} 0
force {SW[6]} 0
force {SW[7]} 0
force {SW[8]} 0
force {SW[0]} 1
force {SW[1]} 0
force {SW[2]} 1
force {SW[3]} 0
force {SW[9]} 1
force {KEY[0]} 0
run 10 ns
force {KEY[0]} 1
run 10 ns
# read address 0x00000
force {SW[4]} 0
force {SW[5]} 0
force {SW[6]} 0
force {SW[7]} 0
force {SW[8]} 0
force {SW[9]} 0
force {KEY[0]} 0
run 10 ns
force {KEY[0]} 1
run 10 ns
# read address 0x00001
force {SW[4]} 1
force {SW[5]} 0
force {SW[6]} 0
force {SW[7]} 0
force {SW[8]} 0
force {KEY[0]} 0
run 10 ns
force {KEY[0]} 1
run 10 ns