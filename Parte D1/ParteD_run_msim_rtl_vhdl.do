transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/juanm/Documents/Quartus/Lab 1 TyDD2 Meneghini/Parte D/ParteD.vhd}

vcom -93 -work work {C:/Users/juanm/Documents/Quartus/Lab 1 TyDD2 Meneghini/Parte D/ParteD_testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  testbench_ParteD

add wave *
view structure
view signals
run 100 us
