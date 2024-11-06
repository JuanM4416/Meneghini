transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/juanm/Documents/Quartus/Lab 1 TyDD2 Meneghini/Parte C/FFD.vhd}
vcom -93 -work work {C:/Users/juanm/Documents/Quartus/Lab 1 TyDD2 Meneghini/Parte C/restador.vhd}

