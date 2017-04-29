onerror {exit -code 1}
vlib work
vlog -work work rnn.vo
vlog -work work VariableInputAdd_test.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.VariableInputAdd_Tester_vlg_vec_tst
vcd file -direction rnn.msim.vcd
vcd add -internal VariableInputAdd_Tester_vlg_vec_tst/*
vcd add -internal VariableInputAdd_Tester_vlg_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
