transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Laboratiorio1FPGA_7_1200mv_85c_slow.vho}

vcom -93 -work work {C:/Users/juanm/Documents/Quartus/Lab 1 TyDD2 Meneghini/Parte A/testbench_circuito1.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /uut=Laboratiorio1FPGA_7_1200mv_85c_vhd_slow.sdo -L altera -L cycloneiii -L gate_work -L work -voptargs="+acc"  testbench_circuito1

add wave *
view structure
view signals
run -all
