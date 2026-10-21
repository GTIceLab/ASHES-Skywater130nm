v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -520 -340 -520 -330 {
lab=Inn}
N -610 50 -610 80 {
lab=GND}
N -610 -50 -610 -10 {
lab=Switch3}
N -360 -40 -360 -20 {
lab=VDD}
N -510 -120 -510 -90 {
lab=GND}
N -510 -220 -510 -180 {
lab=Switch2}
N -610 -110 -610 -80 {
lab=GND}
N -610 -210 -610 -170 {
lab=Switch1}
N -310 -40 -230 -40 {lab=GND}
N -390 -0 -230 0 {lab=out}
N -400 -0 -390 0 {lab=out}
N -510 0 -460 0 {lab=GND}
N -250 20 -230 20 {lab=Inn}
N -250 80 -230 80 {lab=Switch3}
N -250 60 -230 60 {lab=Switch2}
N -250 40 -230 40 {lab=Switch1}
N -360 -20 -230 -20 {lab=VDD}
C {sky130_cells/Practice/Capacitor_Array/LVS/CapArrayxsch.sym} -80 20 0 0 {name=x1}
C {devices/code.sym} 280 -140 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {gnd.sym} -610 80 0 0 {name=l1 lab=GND}
C {vsource.sym} -610 20 0 0 {name=V2 value=1 savecurrent=false
}
C {gnd.sym} -520 -270 0 0 {name=l4 lab=GND}
C {vsource.sym} -520 -300 0 0 {name=V3 value= " ac 1"   savecurrent=false}
C {vsource.sym} -600 -300 0 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} -600 -270 0 0 {name=l5 lab=GND}
C {code_shown.sym} 0 -330 0 0 {name= Ngspice CapArray sim
simulator = ngspice
only_toplevel=false 


value= "
.ac dec 20 0.1 1e2
.save
.control
run
plot V(out) loglog
.endc
//V(Switch1)+1 V(Switch2)+1 V(Switch3)+1 V(Inn)+1.8 
"


}
C {vdd.sym} -600 -330 0 0 {name=l3 lab=VDD}
C {lab_pin.sym} -520 -340 1 0 {name=p4 sig_type=std_logic lab=Inn}
C {lab_pin.sym} -610 -50 0 0 {name=p3 sig_type=std_logic lab=Switch3}
C {vdd.sym} -360 -40 0 0 {name=l2 lab=VDD}
C {gnd.sym} -310 -40 2 0 {name=l6 lab=GND}
C {lab_pin.sym} -250 20 0 0 {name=p1 sig_type=std_logic lab=Inn}
C {lab_pin.sym} -390 0 1 0 {name=p2 sig_type=std_logic lab=out}
C {gnd.sym} -510 -90 0 0 {name=l7 lab=GND}
C {vsource.sym} -510 -150 0 0 {name=V4 value=1 savecurrent=false
}
C {lab_pin.sym} -510 -220 0 0 {name=p5 sig_type=std_logic lab=Switch2}
C {gnd.sym} -610 -80 0 0 {name=l8 lab=GND}
C {vsource.sym} -610 -140 0 0 {name=V5 value=1  savecurrent=false}
C {lab_pin.sym} -610 -210 0 0 {name=p6 sig_type=std_logic lab=Switch1}
C {lab_pin.sym} -250 40 0 0 {name=p7 sig_type=std_logic lab=Switch1}
C {lab_pin.sym} -250 60 0 0 {name=p8 sig_type=std_logic lab=Switch2}
C {lab_pin.sym} -250 80 0 0 {name=p9 sig_type=std_logic lab=Switch3}
C {sky130_fd_pr/res_generic_po.sym} -430 0 1 0 {name=R1
W=.5
L=1000000000
model=res_generic_po
spiceprefix=X
mult=1}
C {gnd.sym} -510 0 0 0 {name=l10 lab=GND}
