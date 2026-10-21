v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {*Varactor used is actually cap_var. However, there is no
xschem model/symbol so cap_var_hvt is used as placeholder.
Change this in netlist to pass LVS} 0 -430 0 0 0.4 0.4 {}
N 190 -130 290 -130 {
lab=Vfg}
N 150 -100 150 -70 {
lab=Vd_Prog}
N 150 -200 150 -160 {
lab=#net1}
N 150 -290 150 -260 {
lab=VINJ}
N 140 -130 150 -130 {
lab=VINJ}
N 140 -230 140 -130 {
lab=VINJ}
N 140 -230 150 -230 {
lab=VINJ}
N 140 -270 140 -230 {
lab=VINJ}
N 140 -270 150 -270 {
lab=VINJ}
N 290 -130 290 -100 {
lab=Vfg}
N 290 -40 290 -20 {
lab=Vg}
N 320 -160 320 -130 {
lab=Vfg}
N 320 -230 320 -220 {
lab=VTUN}
N 190 -230 200 -230 {
lab=ColSel}
N 130 -70 150 -70 {
lab=Vd_Prog}
N 230 -50 250 -50 {
lab=GND}
N 260 -210 280 -210 {
lab=GND}
N 290 -130 320 -130 {lab=Vfg}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 170 -230 0 1 {name=M2
W=0.42
L=0.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 170 -130 0 1 {name=M3
W=0.42
L=0.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/cap_var_hvt.sym} 320 -190 2 1 {name=C1 model=cap_var_hvt W=0.29 L=0.5 VM=1 spiceprefix=X}
C {sky130_fd_pr/cap_var_hvt.sym} 290 -70 0 0 {name=C2 model=cap_var_hvt W=0.54 L=0.65 VM=1 spiceprefix=X}
C {lab_wire.sym} 150 -290 0 0 {name=p4 sig_type=std_logic lab=VINJ}
C {lab_wire.sym} 200 -230 0 1 {name=p3 sig_type=std_logic lab=ColSel}
C {iopin.sym} -80 -290 0 0 {name=p5 lab=VINJ}
C {lab_wire.sym} 130 -70 0 0 {name=p11 sig_type=std_logic lab=Vd_Prog}
C {iopin.sym} -80 -270 0 0 {name=p12 lab=ColSel}
C {iopin.sym} -80 -250 0 0 {name=p1 lab=Vg}
C {iopin.sym} -80 -230 0 0 {name=p6 lab=Vs}
C {iopin.sym} -80 -210 0 0 {name=p7 lab=Vfg}
C {iopin.sym} -80 -190 0 0 {name=p8 lab=Vd_Prog}
C {iopin.sym} -80 -170 0 0 {name=p9 lab=VTUN}
C {lab_wire.sym} 320 -230 0 0 {name=p10 sig_type=std_logic lab=VTUN}
C {lab_wire.sym} 290 -20 2 1 {name=p13 sig_type=std_logic lab=Vg}
C {lab_wire.sym} 260 -130 0 0 {name=p16 sig_type=std_logic lab=Vfg}
C {iopin.sym} -80 -150 0 0 {name=p17 lab=GND}
C {lab_wire.sym} 230 -50 2 1 {name=p18 sig_type=std_logic lab=GND}
C {lab_wire.sym} 260 -210 2 1 {name=p19 sig_type=std_logic lab=GND}
