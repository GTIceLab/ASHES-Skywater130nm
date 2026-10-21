v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 80 -20 80 20 {
lab=GND}
N -40 -80 10 -80 {
lab=A}
N -40 -60 10 -60 {
lab=B}
N -40 -40 10 -40 {
lab=C}
N 160 -60 200 -60 {
lab=Z}
N 80 -140 80 -100 {
lab=VDD}
N -330 -230 -330 -210 {
lab=A}
N -330 -230 -290 -230 {
lab=A}
N -380 -60 -380 -40 {
lab=B}
N -380 -60 -340 -60 {
lab=B}
N -180 -50 -180 -30 {
lab=C}
N -180 -50 -140 -50 {
lab=C}
N -130 -220 -130 -200 {
lab=VDD}
N -130 -220 -90 -220 {
lab=VDD}
C {sky130_Vinj_NOR.sym} 160 -60 0 0 {name=x1}
C {gnd.sym} 80 20 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 200 -60 2 0 {name=p1 sig_type=std_logic lab=Z}
C {lab_pin.sym} -40 -80 0 0 {name=p2 sig_type=std_logic lab=A}
C {lab_pin.sym} -40 -60 0 0 {name=p3 sig_type=std_logic lab=B}
C {lab_pin.sym} -40 -40 0 0 {name=p4 sig_type=std_logic lab=C}
C {vsource.sym} -330 -180 0 0 {name=V2 value="pulse 0 5 0 1n 1n 500n 1000n" savecurrent=false}
C {gnd.sym} -330 -150 0 0 {name=l6 lab=GND}
C {vsource.sym} -380 -10 0 0 {name=V1 value="pulse 0 5 0 1n 1n 1000n 2000n" savecurrent=false}
C {gnd.sym} -380 20 0 0 {name=l3 lab=GND}
C {vsource.sym} -180 0 0 0 {name=V3 value="pulse 0 5 0 1n 1n 2000n 4000n" savecurrent=false}
C {gnd.sym} -180 30 0 0 {name=l4 lab=GND
value="pulse 0 5 0 1n 1n 2000n 4000n"}
C {vsource.sym} -130 -170 0 0 {name=V4 value=5 savecurrent=false}
C {gnd.sym} -130 -140 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 80 -140 1 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -90 -220 2 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -140 -50 2 0 {name=p7 sig_type=std_logic lab=C
value="pulse 0 5 0 1n 1n 2000n 4000n"}
C {lab_pin.sym} -290 -230 2 0 {name=p8 sig_type=std_logic lab=A}
C {lab_pin.sym} -340 -60 2 0 {name=p9 sig_type=std_logic lab=B}
C {devices/code.sym} 255 -342 0 0 {name=TT_MODELS1
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {code_shown.sym} 265 -92 0 0 {name=SPICE only_toplevel=false value="
.control
	tran 0.1n 4000n
	plot V(A) V(B) V(C) title 'Inputs'
	plot V(Z) title 'Outputs'
.endc

.end"}
