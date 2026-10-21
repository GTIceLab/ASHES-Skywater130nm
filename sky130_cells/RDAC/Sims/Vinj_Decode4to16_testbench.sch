v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -350 -200 -350 -180 {
lab=GND}
N 50 -310 110 -310 {
lab=Vin1}
N 30 -330 110 -330 {
lab=Vin2}
N 30 -350 110 -350 {
lab=Ven}
N 30 -310 50 -310 {
lab=Vin1}
N -580 -190 -580 -170 {
lab=GND}
N 30 -390 110 -390 {
lab=Vin3}
N 30 -370 110 -370 {
lab=Vin4}
N 410 -30 410 -10 {
lab=GND}
N 410 -370 500 -370 {
lab=Vout0}
N 410 -350 500 -350 {
lab=Vout1}
N 410 -330 500 -330 {
lab=Vout2}
N 410 -310 500 -310 {
lab=Vout3}
N 410 -290 500 -290 {
lab=Vout4}
N 410 -270 500 -270 {
lab=Vout5}
N 410 -250 500 -250 {
lab=Vout6}
N 410 -230 500 -230 {
lab=Vout7}
N 410 -210 500 -210 {
lab=Vout8}
N 410 -190 500 -190 {
lab=Vout9}
N 410 -170 500 -170 {
lab=Vout10}
N 410 -150 500 -150 {
lab=Vout11}
N 410 -130 500 -130 {
lab=Vout12}
N 410 -110 500 -110 {
lab=Vout13}
N 410 -90 500 -90 {
lab=Vout14}
N 410 -70 500 -70 {
lab=Vout15}
N 410 -50 410 -30 {
lab=GND}
N 410 -390 420 -390 {
lab=Vinj}
N 420 -440 420 -390 {
lab=Vinj}
C {vsource.sym} -350 -230 0 0 {name=Vin3 value="pulse 5 0 0 1n 1n 500n 1000n" savecurrent=false}
C {gnd.sym} -350 -180 0 0 {name=l1 lab=GND}
C {vsource.sym} -350 -120 0 0 {name=Vin4 value="pulse 5 0 0 1n 1n 1000n 2000n" savecurrent=false}
C {gnd.sym} -350 -90 0 0 {name=l5 lab=GND}
C {vsource.sym} -370 -350 0 0 {name=Vinj2 value=5 savecurrent=false}
C {gnd.sym} -370 -320 0 0 {name=Vinj3 lab=GND
value=5}
C {lab_pin.sym} -370 -380 2 0 {name=p1 sig_type=std_logic lab=Vinj}
C {lab_pin.sym} -350 -260 0 0 {name=p2 sig_type=std_logic lab=Vin1}
C {lab_pin.sym} -350 -150 0 0 {name=p3 sig_type=std_logic lab=Vin2}
C {vsource.sym} -260 -350 0 0 {name=Ven1 value=5 savecurrent=false}
C {gnd.sym} -260 -320 0 0 {name=l6 lab=GND}
C {lab_pin.sym} -260 -380 0 0 {name=p4 sig_type=std_logic lab=Ven}
C {devices/code.sym} 690 -480 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {code_shown.sym} 880 -490 0 0 {name=SPICE only_toplevel=false value="
.control
	tran 0.5n 8000n
	plot V(Vin1) V(Vin2) title 'Decoder Inputs'
	plot V(Vout0) V(Vout2) V(Vout4) V(Vout6) V(Vout8) V(Vout10) V(Vout12) V(Vout14) title 'Decoder Output'
	plot V(Vout1) V(Vout3) V(Vout5) V(Vout7) V(Vout9) V(Vout11) V(Vout13) V(Vout15) title 'Decoder Output'
.endc

.end"}
C {lab_pin.sym} 30 -310 0 0 {name=p5 sig_type=std_logic lab=Vin1}
C {lab_pin.sym} 30 -330 0 0 {name=p6 sig_type=std_logic lab=Vin2}
C {lab_pin.sym} 30 -350 0 0 {name=p7 sig_type=std_logic lab=Ven}
C {vsource.sym} -580 -220 0 0 {name=Vin5 value="pulse 5 0 0 1n 1n 2000n 4000n" savecurrent=false}
C {gnd.sym} -580 -170 0 0 {name=Vin7 lab=GND}
C {vsource.sym} -580 -110 0 0 {name=Vin8 value="pulse 5 0 0 1n 1n 4000n 8000n" savecurrent=false}
C {gnd.sym} -580 -80 0 0 {name=Vin9 lab=GND}
C {lab_pin.sym} -580 -250 0 0 {name=Vin6 sig_type=std_logic lab=Vin3}
C {lab_pin.sym} -580 -140 0 0 {name=Vin10 sig_type=std_logic lab=Vin4}
C {lab_pin.sym} 30 -390 0 0 {name=Vin11 sig_type=std_logic lab=Vin3}
C {lab_pin.sym} 30 -370 0 0 {name=Vin12 sig_type=std_logic lab=Vin4}
C {lab_pin.sym} 420 -440 2 0 {name=p8 sig_type=std_logic lab=Vinj}
C {gnd.sym} 410 -10 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 500 -370 2 0 {name=p10 sig_type=std_logic lab=Vout0}
C {lab_pin.sym} 500 -350 2 0 {name=p14 sig_type=std_logic lab=Vout1}
C {lab_pin.sym} 500 -330 2 0 {name=p15 sig_type=std_logic lab=Vout2}
C {lab_pin.sym} 500 -310 2 0 {name=p16 sig_type=std_logic lab=Vout3}
C {lab_pin.sym} 500 -290 2 0 {name=p17 sig_type=std_logic lab=Vout4
}
C {lab_pin.sym} 500 -270 2 0 {name=p18 sig_type=std_logic lab=Vout5}
C {lab_pin.sym} 500 -250 2 0 {name=p19 sig_type=std_logic lab=Vout6}
C {lab_pin.sym} 500 -230 2 0 {name=p20 sig_type=std_logic lab=Vout7}
C {lab_pin.sym} 500 -210 2 0 {name=p21 sig_type=std_logic lab=Vout8}
C {lab_pin.sym} 500 -190 2 0 {name=p22 sig_type=std_logic lab=Vout9}
C {lab_pin.sym} 500 -170 2 0 {name=p23 sig_type=std_logic lab=Vout10}
C {lab_pin.sym} 500 -150 2 0 {name=p24 sig_type=std_logic lab=Vout11}
C {lab_pin.sym} 500 -130 2 0 {name=p25 sig_type=std_logic lab=Vout12}
C {lab_pin.sym} 500 -110 2 0 {name=p26 sig_type=std_logic lab=Vout13}
C {lab_pin.sym} 500 -90 2 0 {name=p27 sig_type=std_logic lab=Vout14}
C {lab_pin.sym} 500 -70 2 0 {name=p28 sig_type=std_logic lab=Vout15}
C {sky130_cells/RDAC/Design/sky130_hilas_Vinj_Decode_4to16.sym} 250 -230 0 0 {name=x1}
