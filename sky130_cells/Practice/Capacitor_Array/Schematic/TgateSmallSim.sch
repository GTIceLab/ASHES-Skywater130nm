v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -450 -150 -450 -140 {
lab=Inn}
N 0 -150 30 -150 {
lab=Out}
N -170 -150 -160 -150 {
lab=Inn}
N -270 -150 -170 -150 {
lab=Inn}
N 30 -150 50 -150 {
lab=Out}
N 50 -150 80 -150 {
lab=Out}
N -370 -210 -370 -180 {
lab=GND}
N -370 -370 -370 -270 {
lab=#net1}
N -370 -380 -370 -370 {
lab=#net1}
N -40 -150 0 -150 {
lab=Out}
N -60 -220 -60 -190 {
lab=VDD}
N -60 -220 -40 -220 {
lab=VDD}
N -80 -230 -80 -190 {
lab=Switch}
N -80 -240 -80 -230 {
lab=Switch}
N -160 -150 -120 -150 {
lab=Inn}
N -0 -10 -0 10 {
lab=GND}
N -60 -110 -0 -110 {
lab=#net2}
N -0 -110 -0 -70 {
lab=#net2}
N -370 -460 -370 -440 {
lab=Switch}
N -380 -460 -370 -460 {
lab=Switch}
C {sky130_cells/RDAC/Design/Tgate.sym} 20 -10 0 0 {name=x1}
C {devices/code.sym} 0 -420 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {gnd.sym} -370 -180 0 0 {name=l1 lab=GND}
C {vsource.sym} -370 -410 0 0 {name=V2 value= "pulse 0 5 0 1n 1n 10n 20n" savecurrent=false}
C {gnd.sym} -450 -80 0 0 {name=l4 lab=GND}
C {vsource.sym} -450 -110 0 0 {name=V3 value="pulse 0 5 0 1n 1n 10n 20n" savecurrent=false}
C {vsource.sym} -540 -100 0 0 {name=V1 value=3 savecurrent=false}
C {gnd.sym} -540 -70 0 0 {name=l5 lab=GND}
C {code_shown.sym} 140 -220 0 0 {name= Ngspice tgate sim
simulator = ngspice
only_toplevel=false 


value= "  
.tran 1n 100n
.control
run
plot V(Inn) V(Out) V(Switch)
.endc
"


}
C {vdd.sym} -540 -130 0 0 {name=l3 lab=VDD}
C {lab_pin.sym} -450 -150 1 0 {name=p4 sig_type=std_logic lab=Inn}
C {lab_pin.sym} -270 -150 0 0 {name=p2 sig_type=std_logic lab=Inn}
C {lab_pin.sym} 80 -150 0 1 {name=p1 sig_type=std_logic lab=Out}
C {lab_pin.sym} -80 -240 1 0 {name=p5 sig_type=std_logic lab=Switch}
C {vdd.sym} -40 -220 0 0 {name=l2 lab=VDD}
C {gnd.sym} 0 10 0 0 {name=l6 lab=GND}
C {lab_pin.sym} -380 -460 0 0 {name=p3 sig_type=std_logic lab=Switch}
C {sky130_fd_pr/res_generic_po.sym} -370 -240 0 0 {name=R4
W=1
L=1
model=res_generic_po
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_generic_po.sym} 0 -40 0 0 {name=R1
W=1
L=1
model=res_generic_po
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_generic_po.sym} 50 -120 0 0 {name=R2
W=1
L=1
model=res_generic_po
spiceprefix=X
 mult=1}
C {gnd.sym} 50 -90 0 0 {name=l7 lab=GND}
