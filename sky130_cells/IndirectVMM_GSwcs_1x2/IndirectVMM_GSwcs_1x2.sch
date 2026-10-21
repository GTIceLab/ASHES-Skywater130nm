v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -10 110 -10 150 {lab=GND}
N -10 -100 -10 -50 {lab=VINJ}
N -90 30 -70 30 {lab=Vsel[0:1]}
N -70 -20 -70 30 {lab=Vsel[0:1]}
N -70 -20 -50 -20 {lab=Vsel[0:1]}
N -70 30 -70 80 {lab=Vsel[0:1]}
N -70 80 -50 80 {lab=Vsel[0:1]}
N -10 10 -10 50 {lab=Vsel_B[0:1]}
N -10 30 190 30 {lab=Vsel_B[0:1]}
N -90 250 -90 320 {lab=Vgsel}
N -90 250 -50 250 {lab=Vgsel}
N -90 320 -90 400 {lab=Vgsel}
N -90 400 -50 400 {lab=Vgsel}
N -130 320 -90 320 {lab=Vgsel}
N -20 440 -20 480 {lab=#net1}
N 130 30 130 210 {lab=Vsel_B[0:1]}
N -20 210 130 210 {lab=Vsel_B[0:1]}
N 240 440 240 480 {lab=PROG}
N 240 170 240 210 {lab=RUN}
N 10 250 50 250 {lab=#net2}
N 50 250 50 400 {lab=#net2}
N 10 400 50 400 {lab=#net2}
N 170 250 210 250 {lab=#net2}
N 170 250 170 400 {lab=#net2}
N 170 400 210 400 {lab=#net2}
N 50 320 170 320 {lab=#net2}
N 110 320 110 570 {lab=#net2}
N 60 570 110 570 {lab=#net2}
N -20 250 -20 290 {lab=VINJ}
N -30 570 0 570 {lab=VINJ}
N -30 550 -30 570 {lab=VINJ}
N -30 550 30 550 {lab=VINJ}
N 30 550 30 570 {lab=VINJ}
N -20 360 -20 400 {lab=GND}
N 30 610 30 660 {lab=Vsel[0:1]}
N 240 250 240 290 {lab=VINJ}
N 240 360 240 400 {lab=GND}
N 270 250 310 250 {lab=Vg[0:1]}
N 310 250 310 400 {lab=Vg[0:1]}
N 270 400 310 400 {lab=Vg[0:1]}
N 400 250 450 250 {lab=Vg[0:1]}
N 400 250 400 400 {lab=Vg[0:1]}
N 400 400 450 400 {lab=Vg[0:1]}
N 310 320 400 320 {lab=Vg[0:1]}
N 360 290 360 320 {lab=Vg[0:1]}
N 480 440 480 480 {lab=RUN}
N 480 250 480 290 {lab=VINJ}
N 480 360 480 400 {lab=GND}
N 510 250 560 250 {lab=Vgrun[0:1]}
N 560 250 560 400 {lab=Vgrun[0:1]}
N 510 400 560 400 {lab=Vgrun[0:1]}
N 560 320 660 320 {lab=Vgrun[0:1]}
N -10 80 0 80 {lab=GND}
N -10 110 0 110 {lab=GND}
N 0 80 -0 110 {lab=GND}
N -10 -20 -0 -20 {lab=VINJ}
N 0 -50 0 -20 {lab=VINJ}
N -10 -50 0 -50 {lab=VINJ}
N 480 170 480 210 {
lab=PROG}
N 800 460 820 460 {
lab=VTUN}
N 800 420 820 420 {
lab=Vs[0:1]}
C {iopin.sym} 490 -50 2 0 {name=p3 lab=GND
}
C {ipin.sym} 660 320 2 0 {name=p1 lab=Vgrun[0:1]
}
C {opin.sym} 360 290 3 0 {name=p4 lab=Vg[0:1]
}
C {iopin.sym} -90 30 2 0 {name=p5 lab=Vsel[0:1]
}
C {iopin.sym} 190 30 0 0 {name=p6 lab=Vsel_B[0:1]}
C {iopin.sym} -130 320 2 0 {name=p7 lab=Vgsel
}
C {iopin.sym} 490 0 2 0 {name=p9 lab=RUN}
C {iopin.sym} 490 30 2 0 {name=p15 lab=VINJ}
C {iopin.sym} 490 -30 2 0 {name=p19 lab=PROG
}
C {iopin.sym} 800 420 2 0 {name=p17 lab=Vs[0:1]

}
C {iopin.sym} 800 460 2 0 {name=p22 lab=VTUN

}
C {noconn.sym} 820 420 2 0 {name=l1}
C {noconn.sym} 820 460 2 0 {name=l2}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -30 -20 0 0 {name=M2[0:1]
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -20 230 1 0 {name=M1[0:1]
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 240 230 1 0 {name=M3[0:1]
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 480 230 1 0 {name=M4[0:1]
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 30 590 3 0 {name=M5[0:1]
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -30 80 0 0 {name=M6[0:1]
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -20 420 3 0 {name=M7[0:1]
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 240 420 3 0 {name=M8[0:1]
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 480 420 3 0 {name=M9[0:1]
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
C {lab_pin.sym} -10 150 0 0 {name=p23 sig_type=std_logic lab=GND}
C {lab_pin.sym} -20 360 0 0 {name=p13 sig_type=std_logic lab=GND}
C {lab_pin.sym} 240 360 0 0 {name=p16 sig_type=std_logic lab=GND}
C {lab_pin.sym} 480 360 0 0 {name=p21 sig_type=std_logic lab=GND}
C {lab_pin.sym} 480 170 0 0 {name=p24 sig_type=std_logic lab=PROG}
C {lab_pin.sym} 240 480 0 0 {name=p10 sig_type=std_logic lab=PROG}
C {lab_pin.sym} 240 170 0 0 {name=p25 sig_type=std_logic lab=RUN}
C {lab_pin.sym} 480 480 0 0 {name=p18 sig_type=std_logic lab=RUN}
C {lab_pin.sym} 240 290 0 0 {name=p26 sig_type=std_logic lab=VINJ}
C {lab_pin.sym} 480 290 0 0 {name=p20 sig_type=std_logic lab=VINJ}
C {lab_pin.sym} -20 290 0 0 {name=p11 sig_type=std_logic lab=VINJ}
C {lab_pin.sym} -30 570 0 0 {name=p12 sig_type=std_logic lab=VINJ}
C {lab_pin.sym} 30 660 0 0 {name=p14 sig_type=std_logic lab=Vsel[0:1]}
C {lab_pin.sym} -10 -100 0 0 {name=p2 sig_type=std_logic lab=VINJ}
C {lab_pin.sym} -20 480 0 0 {name=p8 sig_type=std_logic lab=Vsel[0:1]}
