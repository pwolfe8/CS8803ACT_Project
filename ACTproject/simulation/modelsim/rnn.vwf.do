vlog -work work rnn.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.rnn_vlg_vec_tst -voptargs="+acc"
add wave /*
run -all
