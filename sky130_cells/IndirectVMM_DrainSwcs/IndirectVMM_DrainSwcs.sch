v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
L 4 220 0 870 0 {}
L 4 180 -400 180 400 {}
L 4 180 -0 220 0 {}
T {When Select<n> = 1, VD_P<n> is tied to Prog_DrLn
When Select<n> = 0, VD_P<n> is tied to VINJ} 530 -400 0 0 0.4 0.4 {}
T {When Select<n> = 1, VD_R<n> is tied to Run_DrLn
When Select<n> = 0, VD_P<n> is disconnected} 510 20 0 0 0.4 0.4 {}
T {Prog_DrLn = Program Drain Rail
VD_P = Program Drain Lines

Run_DrLn = Run Drain Rail
VD_R = Run Drain Lines} -190 170 0 0 0.4 0.4 {}
N -150 -0 -100 -0 {lab=Sel[0:3]}
N -50 -70 -50 -40 {lab=VINJ}
N -50 40 -50 70 {lab=GND}
N 30 0 90 0 {lab=NSel[0:3]}
N 400 -300 410 -300 {lab=Prog_DrLn}
N 360 -300 400 -300 {lab=Prog_DrLn}
N 360 -300 360 -110 {lab=Prog_DrLn}
N 360 -110 410 -110 {lab=Prog_DrLn}
N 470 -110 480 -110 {lab=VD_P[0:3]}
N 480 -110 520 -110 {lab=VD_P[0:3]}
N 520 -300 520 -110 {lab=VD_P[0:3]}
N 470 -300 520 -300 {lab=VD_P[0:3]}
N 440 -70 440 -40 {lab=Sel[0:3]}
N 320 -40 440 -40 {lab=Sel[0:3]}
N 440 -370 440 -340 {lab=NSel[0:3]}
N 320 -370 440 -370 {lab=NSel[0:3]}
N 440 -300 440 -260 {lab=VINJ}
N 440 -150 440 -110 {lab=GND}
N 290 -210 360 -210 {lab=Prog_DrLn}
N 520 -210 590 -210 {lab=VD_P[0:3]}
N 590 -210 590 -110 {lab=VD_P[0:3]}
N 590 -210 660 -210 {lab=VD_P[0:3]}
N 690 -210 690 -190 {lab=VINJ}
N 690 -190 720 -190 {lab=VINJ}
N 720 -210 720 -190 {lab=VINJ}
N 720 -210 790 -210 {lab=VINJ}
N 690 -300 690 -250 {lab=Sel[0:3]}
N 400 110 410 110 {lab=Run_DrLn}
N 360 110 400 110 {lab=Run_DrLn}
N 360 110 360 300 {lab=Run_DrLn}
N 360 300 410 300 {lab=Run_DrLn}
N 470 300 480 300 {lab=VD_R[0:3]}
N 480 300 520 300 {lab=VD_R[0:3]}
N 520 110 520 300 {lab=VD_R[0:3]}
N 470 110 520 110 {lab=VD_R[0:3]}
N 440 340 440 370 {lab=Sel[0:3]}
N 320 370 440 370 {lab=Sel[0:3]}
N 440 40 440 70 {lab=NSel[0:3]}
N 320 40 440 40 {lab=NSel[0:3]}
N 440 110 440 150 {lab=VINJ}
N 440 260 440 300 {lab=GND}
N 290 200 360 200 {lab=Run_DrLn}
N 520 200 590 200 {lab=VD_R[0:3]}
C {sky130_cells/IndirectVMM_DrainSwcs/Inverter.sym} -80 0 0 0 {name=Inverter[0:3]}
C {ipin.sym} 50 -300 0 0 {name=p1 lab=Sel[0:3]}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 440 -90 3 0 {name=M1[0:3]
W=1
L=0.5
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 690 -230 1 0 {name=M2[0:3]
W=2
L=0.5
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 440 -320 1 0 {name=M3[0:3]
W=2
L=0.5
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {lab_wire.sym} -150 0 0 0 {name=p4 sig_type=std_logic lab=Sel[0:3]}
C {lab_wire.sym} 90 0 2 0 {name=p5 sig_type=std_logic lab=NSel[0:3]}
C {lab_wire.sym} -50 70 3 0 {name=p6 sig_type=std_logic lab=GND}
C {lab_wire.sym} -50 -70 1 0 {name=p7 sig_type=std_logic lab=VINJ}
C {lab_wire.sym} 320 -370 0 0 {name=p8 sig_type=std_logic lab=NSel[0:3]}
C {lab_wire.sym} 320 -40 0 0 {name=p9 sig_type=std_logic lab=Sel[0:3]}
C {lab_wire.sym} 440 -260 3 0 {name=p10 sig_type=std_logic lab=VINJ}
C {lab_wire.sym} 440 -150 1 0 {name=p11 sig_type=std_logic lab=GND}
C {lab_wire.sym} 790 -210 2 0 {name=p12 sig_type=std_logic lab=VINJ}
C {lab_wire.sym} 690 -300 0 0 {name=p13 sig_type=std_logic lab=Sel[0:3]}
C {lab_wire.sym} 590 -110 2 0 {name=p14 sig_type=std_logic lab=VD_P[0:3]}
C {lab_wire.sym} 290 -210 0 0 {name=p15 sig_type=std_logic lab=Prog_DrLn}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 440 320 3 0 {name=M4[0:3]
W=1
L=0.5
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 440 90 1 0 {name=M5[0:3]
W=2
L=0.5
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {lab_wire.sym} 320 40 0 0 {name=p16 sig_type=std_logic lab=NSel[0:3]}
C {lab_wire.sym} 320 370 0 0 {name=p17 sig_type=std_logic lab=Sel[0:3]}
C {lab_wire.sym} 440 150 3 0 {name=p18 sig_type=std_logic lab=VINJ}
C {lab_wire.sym} 440 260 1 0 {name=p19 sig_type=std_logic lab=GND}
C {lab_wire.sym} 590 200 2 0 {name=p20 sig_type=std_logic lab=VD_R[0:3]}
C {lab_wire.sym} 290 200 0 0 {name=p21 sig_type=std_logic lab=Run_DrLn}
C {iopin.sym} 50 -260 2 0 {name=p22 lab=Prog_DrLn}
C {iopin.sym} 50 -190 2 0 {name=p23 lab=Run_DrLn}
C {iopin.sym} 50 -230 2 0 {name=p24 lab=VD_P[0:3]}
C {iopin.sym} 50 -160 2 0 {name=p25 lab=VD_R[0:3]}
C {iopin.sym} 50 -370 2 0 {name=p2 lab=VINJ}
C {iopin.sym} 50 -340 2 0 {name=p3 lab=GND}
