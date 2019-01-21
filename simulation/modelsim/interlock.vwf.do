vcom -work work interlock.vwf.vht
vsim -novopt -c -t 1ps -L maxii -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.interlock_vhd_vec_tst -voptargs="+acc"
add wave /*
run -all
