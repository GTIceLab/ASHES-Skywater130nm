v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 480 -200 500 -200 {
lab=VDD}
N 480 -180 500 -180 {
lab=GND}
N 480 -160 560 -160 {
lab=SIGOUT}
N 160 -200 180 -200 {
lab=VGSEL}
N 160 -180 180 -180 {
lab=SELCONTROL}
N 160 -160 180 -160 {
lab=VGUNSEL}
N 160 -140 180 -140 {
lab=PROG}
N 160 -120 180 -120 {
lab=RUN}
N 100 -100 180 -100 {
lab=SIGIN}
N 500 -180 510 -180 {
lab=GND}
N 510 -180 510 -130 {
lab=GND}
N 560 -160 580 -160 {
lab=SIGOUT}
C {sky130_cells/Mux/Design/sky130_hilas_GateMuxSwc.sym} 330 -150 0 0 {name=x1}
C {devices/code.sym} 70 -370 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {lab_pin.sym} 500 -200 2 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 160 -200 0 0 {name=p4 sig_type=std_logic lab=VGSEL}
C {lab_pin.sym} 160 -180 0 0 {name=p5 sig_type=std_logic lab=SELCONTROL}
C {lab_pin.sym} 160 -160 0 0 {name=p6 sig_type=std_logic lab=VGUNSEL}
C {lab_pin.sym} 160 -140 0 0 {name=p7 sig_type=std_logic lab=PROG}
C {lab_pin.sym} 160 -120 0 0 {name=p8 sig_type=std_logic lab=RUN}
C {lab_pin.sym} 100 -100 0 0 {name=p9 sig_type=std_logic lab=SIGIN}
C {vsource.sym} 830 -290 0 0 {name=Ven1 value=5 savecurrent=false}
C {gnd.sym} 830 -260 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 830 -320 0 0 {name=p12 sig_type=std_logic lab=VGSEL}
C {gnd.sym} 910 -260 0 0 {name=Vinj4 lab=GND
value=5}
C {lab_pin.sym} 910 -320 2 0 {name=p10 sig_type=std_logic lab=SELCONTROL}
C {vsource.sym} 830 -170 0 0 {name=Vinj2 value=0 savecurrent=false}
C {gnd.sym} 830 -140 0 0 {name=Vinj3 lab=GND
value=5}
C {lab_pin.sym} 830 -200 0 0 {name=p11 sig_type=std_logic lab=VGUNSEL}
C {gnd.sym} 930 -140 0 0 {name=Vinj6 lab=GND
value=5}
C {lab_pin.sym} 930 -200 0 0 {name=p13 sig_type=std_logic lab=PROG}
C {gnd.sym} 830 -10 0 0 {name=Vinj8 lab=GND
value=5}
C {lab_pin.sym} 830 -70 0 0 {name=p14 sig_type=std_logic lab=RUN}
C {vsource.sym} 1100 -50 0 0 {name=Vinj9 value=3.3 savecurrent=false}
C {gnd.sym} 1100 -20 0 0 {name=Vinj10 lab=GND
value=5}
C {lab_pin.sym} 1100 -80 0 0 {name=p15 sig_type=std_logic lab=SIGIN}
C {gnd.sym} 510 -130 0 0 {name=Vinj11 lab=GND
value=5}
C {vsource.sym} 1100 -290 0 0 {name=Vinj12 value=5 savecurrent=false}
C {gnd.sym} 1100 -260 0 0 {name=Vinj13 lab=GND
value=5}
C {lab_pin.sym} 1100 -320 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {code_shown.sym} 310 -500 0 0 {name=SPICE1 only_toplevel=false value="
.control
	tran 1000n 2000n
	plot V(SIGOUT) title 'GateMuxSwc'
	*plot V(C1) title 'GateMuxSwc'
	*plot V(SELCONTROL) title 'Sel Control Input'
	*plot V(RUN) title 'Run Input'
	*plot V(PROG) title 'Prog Input'
.
.endc

.end"}
C {vsource.sym} 910 -290 0 0 {name=Vin1 value=5 savecurrent=false}
C {vsource.sym} 930 -170 0 0 {name=Vin2 value="pulse 0 5 0 1n 1n 1000n 2000n" savecurrent=false}
C {vsource.sym} 830 -40 0 0 {name=Vin3 value="pulse 5 0 0 1n 1n 1000n 2000n" savecurrent=false}
C {capa.sym} 580 -130 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 580 -100 0 0 {name=Vinj1 lab=GND
value=5}
C {lab_pin.sym} 580 -160 2 0 {name=p16 sig_type=std_logic lab=SIGOUT}
