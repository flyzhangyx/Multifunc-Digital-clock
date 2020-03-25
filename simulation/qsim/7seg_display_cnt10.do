onerror {exit -code 1}
vlib work
vlog -work work 7seg_display_cnt10.vo
vlog -work work Waveform1.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.m200_vlg_vec_tst -voptargs="+acc"
vcd file -direction 7seg_display_cnt10.msim.vcd
vcd add -internal m200_vlg_vec_tst/*
vcd add -internal m200_vlg_vec_tst/i1/*
run -all
quit -f
