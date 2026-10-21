v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 120 -40 160 -40 {
lab=Vout}
N -20 -40 30 -40 {
lab=Vin}
N -140 0 -140 10 {
lab=Vin}
N 80 -90 80 -60 {
lab=#net1}
N 60 -90 80 -90 {
lab=#net1}
N 30 -40 40 -40 {
lab=Vin}
N 80 -20 80 10 {
lab=GND}
C {sky130_hilas_Vinj_inverter.sym} 40 20 0 0 {name=x1}
C {gnd.sym} 80 10 0 0 {name=l1 lab=GND}
C {vsource.sym} 30 -90 1 0 {name=V1 value=5 savecurrent=false}
C {gnd.sym} 0 -90 1 0 {name=l2 lab=GND}
C {lab_pin.sym} -20 -40 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 160 -40 2 0 {name=p2 sig_type=std_logic lab=Vout}
C {vsource.sym} -140 40 0 0 {name=Vin value="pulse 0 5 0 1n 1n 500n 1000n" savecurrent=false}
C {gnd.sym} -140 70 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -140 0 0 0 {name=p3 sig_type=std_logic lab=Vin}
C {devices/code.sym} 250 -200 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {code_shown.sym} 130 20 0 0 {name=SPICE only_toplevel=false value="
.control
	tran 0.1n 2000n
	plot V(Vin) V(Vout) title 'Inverter'
.endc

.end"}
