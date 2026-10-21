v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 610 -70 660 -70 {
lab=Vd_R[0:3]}
N 610 -50 660 -50 {
lab=Vd_P[0:3]}
N 270 -190 270 -160 {
lab=Vsel[0]}
N 290 -190 290 -160 {
lab=VTUN}
N 310 -190 310 -160 {
lab=Vs[0]}
N 290 -210 290 -190 {
lab=VTUN}
N 310 -230 310 -190 {
lab=Vs[0]}
N 250 -170 250 -160 {
lab=VINJ[0]}
N 230 -150 230 -140 {
lab=GND}
N 250 -160 250 -140 {
lab=VINJ[0]}
N 270 -160 270 -140 {
lab=Vsel[0]}
N 290 -160 290 -140 {
lab=VTUN}
N 310 -160 310 -140 {
lab=Vs[0]}
N 330 -230 330 -140 {
lab=Vg[0]}
N 470 -190 470 -160 {
lab=Vsel[1]}
N 490 -190 490 -160 {
lab=VTUN}
N 510 -190 510 -160 {
lab=Vs[1]}
N 490 -210 490 -190 {
lab=VTUN}
N 510 -230 510 -190 {
lab=Vs[1]}
N 450 -170 450 -160 {
lab=VINJ[1]}
N 430 -150 430 -140 {
lab=GND}
N 450 -160 450 -140 {
lab=VINJ[1]}
N 470 -160 470 -140 {
lab=Vsel[1]}
N 490 -160 490 -140 {
lab=VTUN}
N 510 -160 510 -140 {
lab=Vs[1]}
N 530 -230 530 -140 {
lab=Vg[1]}
C {sky130_cells/IndirectVMM_4x1/IndirectVMM_4x1.sym} 310 -70 0 0 {name=x1}
C {sky130_cells/IndirectVMM_4x1/IndirectVMM_4x1.sym} 510 -70 0 0 {name=x2}
C {iopin.sym} 10 -70 0 0 {name=p1 lab=Vd_R[0:3]}
C {iopin.sym} 10 -110 0 0 {name=p2 lab=Vd_P[0:3]}
C {iopin.sym} 10 -50 0 0 {name=p3 lab=Vg[0:1]}
C {iopin.sym} 10 -150 0 0 {name=p4 lab=VTUN}
C {iopin.sym} 10 -130 0 0 {name=p5 lab=Vsel[0:1]}
C {iopin.sym} 10 -190 0 0 {name=p6 lab=GND}
C {iopin.sym} 10 -210 0 0 {name=p7 lab=VINJ[0:1]}
C {iopin.sym} 10 -30 0 0 {name=p8 lab=Vs[0:1]}
C {lab_wire.sym} 660 -70 0 1 {name=p9 sig_type=std_logic lab=Vd_R[0:3]}
C {lab_wire.sym} 660 -50 0 1 {name=p10 sig_type=std_logic lab=Vd_P[0:3]}
C {lab_wire.sym} 270 -190 0 0 {name=p15 sig_type=std_logic lab=Vsel[0]}
C {lab_wire.sym} 290 -210 0 0 {name=p16 sig_type=std_logic lab=VTUN}
C {lab_wire.sym} 310 -230 0 0 {name=p17 sig_type=std_logic lab=Vs[0]}
C {lab_wire.sym} 250 -170 0 0 {name=p11 sig_type=std_logic lab=VINJ[0]}
C {lab_wire.sym} 230 -150 0 0 {name=p12 sig_type=std_logic lab=GND}
C {lab_wire.sym} 330 -230 0 1 {name=p13 sig_type=std_logic lab=Vg[0]}
C {lab_wire.sym} 470 -190 0 0 {name=p14 sig_type=std_logic lab=Vsel[1]}
C {lab_wire.sym} 490 -210 0 0 {name=p18 sig_type=std_logic lab=VTUN}
C {lab_wire.sym} 510 -230 0 0 {name=p19 sig_type=std_logic lab=Vs[1]}
C {lab_wire.sym} 450 -170 0 0 {name=p20 sig_type=std_logic lab=VINJ[1]}
C {lab_wire.sym} 430 -150 0 0 {name=p21 sig_type=std_logic lab=GND}
C {lab_wire.sym} 530 -230 0 1 {name=p22 sig_type=std_logic lab=Vg[1]}
