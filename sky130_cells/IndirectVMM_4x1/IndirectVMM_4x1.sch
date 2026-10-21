v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 250 -630 250 -600 {
lab=Vsel}
N 270 -630 270 -600 {
lab=VTUN}
N 290 -630 290 -600 {
lab=Vg}
N 270 -650 270 -630 {
lab=VTUN}
N 290 -670 290 -630 {
lab=Vg}
N 350 -630 350 -600 {
lab=VINJ}
N 400 -630 400 -600 {
lab=Vs}
N 370 -440 370 -410 {
lab=GND}
N 450 -470 500 -470 {
lab=Vd_R[0:3]}
N 450 -450 500 -450 {
lab=Vd_P[0:3]}
N 250 -440 250 -410 {
lab=Vsel}
C {iopin.sym} 0 -520 0 0 {name=p1 lab=Vd_R[0:3]}
C {iopin.sym} 0 -560 0 0 {name=p2 lab=Vd_P[0:3]}
C {iopin.sym} 0 -500 0 0 {name=p3 lab=Vg}
C {iopin.sym} 0 -600 0 0 {name=p4 lab=VTUN}
C {iopin.sym} 0 -580 0 0 {name=p5 lab=Vsel
}
C {iopin.sym} 0 -640 0 0 {name=p6 lab=GND}
C {iopin.sym} 0 -660 0 0 {name=p7 lab=VINJ}
C {iopin.sym} 0 -480 0 0 {name=p8 lab=Vs}
C {sky130_cells/Floating_Gates/Indirect/FG_Indirect.sym} 340 -500 0 0 {name=x5[0:3]}
C {lab_wire.sym} 250 -630 0 0 {name=p15 sig_type=std_logic lab=Vsel}
C {lab_wire.sym} 270 -650 0 0 {name=p16 sig_type=std_logic lab=VTUN}
C {lab_wire.sym} 290 -670 0 0 {name=p17 sig_type=std_logic lab=Vg}
C {lab_wire.sym} 350 -630 0 0 {name=p18 sig_type=std_logic lab=VINJ}
C {lab_wire.sym} 400 -630 0 0 {name=p19 sig_type=std_logic lab=Vs}
C {lab_wire.sym} 370 -410 0 0 {name=p20 sig_type=std_logic lab=GND}
C {lab_wire.sym} 500 -470 0 1 {name=p9 sig_type=std_logic lab=Vd_R[0:3]}
C {lab_wire.sym} 500 -450 0 1 {name=p10 sig_type=std_logic lab=Vd_P[0:3]}
C {lab_wire.sym} 250 -410 0 0 {name=p11 sig_type=std_logic lab=Vsel
}
