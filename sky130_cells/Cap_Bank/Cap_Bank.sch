v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 200 -650 200 -630 {lab=GND}
N 200 -660 200 -650 {lab=GND}
N 220 -660 220 -630 {lab=VINJ}
N 260 -660 260 -630 {lab=VTUN}
N 240 -660 240 -630 {lab=Vsel}
N 280 -660 280 -630 {lab=VIN}
N 300 -660 300 -630 {lab=Vg}
N 430 -560 470 -560 {lab=Vd_Run[0:3]}
N 140 -540 180 -540 {lab=VD_P[0:3]}
N 710 -570 760 -570 {lab=OUT}
N 500 -470 500 -370 {lab=#net1}
N 650 -870 710 -870 {lab=OUT}
N 710 -870 710 -110 {lab=OUT}
N 650 -520 690 -520 {lab=OUT}
N 650 -280 710 -280 {lab=OUT}
N 650 -100 690 -100 {lab=OUT}
N 500 -610 500 -470 {lab=#net1}
N 500 -650 500 -610 {lab=#net1}
N 510 -870 590 -870 {lab=Vd_Run[0]}
N 500 -660 500 -650 {lab=#net1}
N 510 -520 590 -520 {lab=Vd_Run[1]}
N 510 -280 590 -280 {lab=Vd_Run[2]}
N 510 -100 590 -100 {lab=Vd_Run[3]}
N 590 -340 590 -230 {lab=Vd_Run[2]}
N 650 -340 650 -230 {lab=OUT}
N 650 -580 650 -470 {lab=OUT}
N 590 -580 590 -470 {lab=Vd_Run[1]}
N 500 -370 500 -220 {lab=#net1}
N 650 -1040 650 -710 {lab=OUT}
N 590 -1040 590 -710 {lab=Vd_Run[0]}
N 500 -220 500 -120 {lab=#net1}
N 500 -120 500 -110 {lab=#net1}
N 500 -880 500 -660 {lab=#net1}
N 690 -100 710 -100 {lab=OUT}
N 710 -110 710 -100 {lab=OUT}
N 690 -520 710 -520 {lab=OUT}
N 470 -560 490 -560 {lab=Vd_Run[0:3]}
N 380 -560 430 -560 {lab=Vd_Run[0:3]}
C {iopin.sym} 260 -660 3 0 {name=p9 lab=VTUN}
C {iopin.sym} 200 -660 3 0 {name=p10 lab=GND}
C {iopin.sym} 220 -660 3 0 {name=p11 lab=VINJ}
C {iopin.sym} 280 -660 3 0 {name=p12 lab=VIN}
C {iopin.sym} 240 -660 3 0 {name=p13 lab=Vsel}
C {iopin.sym} 300 -660 3 0 {name=p14 lab=Vg}
C {iopin.sym} 140 -540 2 0 {name=p15 lab=VD_P[0:3]}
C {sky130_cells/IndirectVMM_4x1/IndirectVMM_4x1.sym} 280 -560 0 0 {name=x2}
C {iopin.sym} 760 -570 0 0 {name=p23 lab=OUT}
C {bus_connect_nolab.sym} 490 -560 0 0 {name=r1}
C {sky130_fd_pr/cap_mim_m3_1.sym} 620 -100 1 0 {name=C3 model=cap_mim_m3_1 W=2.9 L=5 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 620 -230 1 0 {name=C2 model=cap_mim_m3_1 W=2.9 L=5 MF=1 spiceprefix=X}
C {bus_tap.sym} 500 -880 1 0 {name=l1 lab=Vd_Run[0]}
C {bus_tap.sym} 500 -530 1 0 {name=l2 lab=Vd_Run[1]}
C {bus_tap.sym} 500 -290 1 0 {name=l3 lab=Vd_Run[2]}
C {bus_tap.sym} 500 -110 1 0 {name=l4 lab=Vd_Run[3]}
C {sky130_fd_pr/cap_mim_m3_1.sym} 620 -340 1 0 {name=C4 model=cap_mim_m3_1 W=2.9 L=5 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 620 -470 1 0 {name=C5 model=cap_mim_m3_1 W=2.9 L=5 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 620 -580 1 0 {name=C6 model=cap_mim_m3_1 W=2.9 L=5 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 620 -710 1 0 {name=C1 model=cap_mim_m3_1 W=2.9 L=5 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 620 -820 1 0 {name=C7 model=cap_mim_m3_1 W=2.9 L=5 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 620 -930 1 0 {name=C8 model=cap_mim_m3_1 W=2.9 L=5 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 620 -1040 1 0 {name=C9 model=cap_mim_m3_1 W=2.9 L=5 MF=1 spiceprefix=X}
C {devices/lab_wire.sym} 490 -560 0 0 {name=l5 sig_type=std_logic lab=Vd_Run[0:3]}
