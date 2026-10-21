v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 360 -360 360 -340 {
lab=GND}
N 80 -320 80 -300 {
lab=GND}
N 1000 -270 1030 -270 {
lab=Vinj}
N 1000 -230 1000 -200 {
lab=GND}
N 1000 -250 1110 -250 {
lab=Out}
N 670 -230 700 -230 {
lab=Ven}
N 670 -270 700 -270 {
lab=Vin1}
N 670 -250 700 -250 {
lab=Vin2}
N 670 -210 700 -210 {
lab=Vin3}
N 670 -190 700 -190 {
lab=Vin4}
N 670 -170 700 -170 {
lab=Vin5}
N 670 -150 700 -150 {
lab=Vin6}
C {sky130_cells/RDAC/Design/6bit_RDAC.sym} 850 -210 0 0 {name=x1}
C {vsource.sym} 360 -390 0 0 {name=Vin3 value="pulse 5 0 0 1n 1n 500n 1000n" savecurrent=false}
C {gnd.sym} 360 -340 0 0 {name=l1 lab=GND}
C {vsource.sym} 350 -260 0 0 {name=Vin4 value="pulse 5 0 0 1n 1n 1000n 2000n" savecurrent=false}
C {gnd.sym} 350 -230 0 0 {name=l5 lab=GND}
C {vsource.sym} 90 -490 0 0 {name=Vinj2 value=5 savecurrent=false}
C {gnd.sym} 90 -460 0 0 {name=Vinj3 lab=GND
value=5}
C {lab_pin.sym} 90 -520 2 0 {name=p2 sig_type=std_logic lab=Vinj}
C {lab_pin.sym} 360 -420 0 0 {name=p3 sig_type=std_logic lab=Vin1}
C {lab_pin.sym} 350 -290 0 0 {name=p4 sig_type=std_logic lab=Vin2}
C {vsource.sym} 260 -490 0 0 {name=Ven1 value=5 savecurrent=false}
C {gnd.sym} 260 -460 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 260 -520 0 0 {name=p5 sig_type=std_logic lab=Ven}
C {vsource.sym} 80 -350 0 0 {name=Vin5 value="pulse 5 0 0 1n 1n 2000n 4000n" savecurrent=false}
C {gnd.sym} 80 -300 0 0 {name=Vin7 lab=GND}
C {vsource.sym} 80 -240 0 0 {name=Vin8 value="pulse 5 0 0 1n 1n 4000n 8000n" savecurrent=false}
C {gnd.sym} 80 -210 0 0 {name=Vin9 lab=GND}
C {lab_pin.sym} 80 -380 0 0 {name=Vin6 sig_type=std_logic lab=Vin3}
C {lab_pin.sym} 80 -270 0 0 {name=Vin10 sig_type=std_logic lab=Vin4}
C {lab_pin.sym} 1030 -270 2 0 {name=p1 sig_type=std_logic lab=Vinj}
C {gnd.sym} 1000 -200 0 0 {name=l2 lab=GND}
C {vsource.sym} 350 -100 0 0 {name=Vin11 value="pulse 5 0 0 1n 1n 16000n 32000n" savecurrent=false}
C {gnd.sym} 350 -70 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 80 -110 0 0 {name=p11 sig_type=std_logic lab=Vin5}
C {vsource.sym} 80 -80 0 0 {name=Vin13 value="pulse 5 0 0 1n 1n 8000n 16000n" savecurrent=false}
C {gnd.sym} 80 -50 0 0 {name=Vin14 lab=GND}
C {lab_pin.sym} 350 -130 0 0 {name=Vin15 sig_type=std_logic lab=Vin6}
C {lab_pin.sym} 670 -270 0 0 {name=p7 sig_type=std_logic lab=Vin1}
C {lab_pin.sym} 670 -250 0 0 {name=p8 sig_type=std_logic lab=Vin2}
C {lab_pin.sym} 670 -210 0 0 {name=Vin1 sig_type=std_logic lab=Vin3}
C {lab_pin.sym} 670 -190 0 0 {name=Vin2 sig_type=std_logic lab=Vin4}
C {lab_pin.sym} 670 -170 0 0 {name=p9 sig_type=std_logic lab=Vin5}
C {lab_pin.sym} 670 -150 0 0 {name=Vin12 sig_type=std_logic lab=Vin6}
C {lab_pin.sym} 670 -230 0 0 {name=p10 sig_type=std_logic lab=Ven}
C {lab_pin.sym} 1110 -250 2 0 {name=p6 sig_type=std_logic lab=Out}
C {devices/code.sym} 560 -560 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {code_shown.sym} 720 -580 0 0 {name=SPICE only_toplevel=false value="
.control
	tran 10n 32000n
	plot V(Vin1) V(Vin2) V(Vin3) V(Vin4) V(Vin5) V(Vin6) title 'Decoder Inputs'
	plot V(Out) title 'DAC Outputs'
	
.
.endc

.end"}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1110 -220 0 0 {name=C1 model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
C {gnd.sym} 1110 -190 0 0 {name=l4 lab=GND}
