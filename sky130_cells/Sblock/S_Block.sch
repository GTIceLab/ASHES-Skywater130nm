v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
L 4 -110 -80 -65 -80 {}
N 10 -350 330 -350 {lab=s}
N 180 -390 180 -350 {lab=s}
N 180 -350 180 -300 {lab=s}
N -50 -650 -50 -500 {lab=w}
N -50 -500 -50 -350 {lab=w}
N -120 -500 -50 -500 {lab=w}
N -50 -500 -30 -500 {lab=w}
N 10 -650 330 -650 {lab=n}
N 390 -650 390 -350 {lab=e}
N 180 -680 180 -650 {lab=n}
N 180 -650 180 -450 {lab=n}
N 30 -500 390 -500 {lab=e}
N 390 -500 430 -500 {lab=e}
N -20 -650 -20 -610 {lab=VINJ}
N 360 -650 360 -610 {lab=VINJ}
N 360 -350 360 -310 {lab=VINJ}
N -20 -350 -20 -310 {lab=VINJ}
N 0 -500 0 -460 {lab=VINJ}
N 180 -420 220 -420 {lab=VINJ}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 160 -420 0 0 {name=M1
W=0.5
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 360 -370 1 0 {name=M2
W=0.5
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -20 -370 1 0 {name=M3
W=0.5
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 0 -520 1 0 {name=M4
W=0.5
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -20 -670 1 0 {name=M5
W=0.5
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 360 -670 1 0 {name=M6
W=0.5
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
C {iopin.sym} 180 -300 1 0 {name=p1 lab=s}
C {iopin.sym} -120 -500 2 0 {name=p2 lab=w}
C {iopin.sym} 180 -680 3 0 {name=p3 lab=n}
C {iopin.sym} 430 -500 0 0 {name=p4 lab=e}
C {lab_pin.sym} -20 -610 3 0 {name=p5 sig_type=std_logic lab=VINJ}
C {lab_pin.sym} 360 -610 3 0 {name=p6 sig_type=std_logic lab=VINJ}
C {lab_pin.sym} 360 -310 3 0 {name=p7 sig_type=std_logic lab=VINJ}
C {lab_pin.sym} -20 -310 3 0 {name=p8 sig_type=std_logic lab=VINJ}
C {lab_pin.sym} 0 -460 3 0 {name=p9 sig_type=std_logic lab=VINJ}
C {lab_pin.sym} 220 -420 2 0 {name=p10 sig_type=std_logic lab=VINJ}
C {iopin.sym} -110 -160 0 0 {name=p11 lab=VINJ}
C {iopin.sym} -110 -140 0 0 {name=p12 lab=ColSel[0:5]}
C {iopin.sym} -110 -120 0 0 {name=p13 lab=Vg[0:5]}
C {iopin.sym} -110 -100 0 0 {name=p14 lab=Vs}
C {iopin.sym} -110 -60 0 0 {name=p16 lab=Vd_Prog}
C {iopin.sym} -110 -40 0 0 {name=p17 lab=VTUN}
C {iopin.sym} -110 -20 0 0 {name=p18 lab=GND}
C {sky130_cells/Sblock/S_Block_FG_Indirect.sym} -260 -90 0 0 {name=x1[0:5]}
C {lab_pin.sym} -20 -390 2 0 {name=p19 sig_type=std_logic lab=Vfg[0]}
C {lab_pin.sym} -20 -690 2 0 {name=p20 sig_type=std_logic lab=Vfg[1]}
C {lab_pin.sym} 360 -690 2 0 {name=p21 sig_type=std_logic lab=Vfg[2]}
C {lab_pin.sym} 360 -390 0 0 {name=p22 sig_type=std_logic lab=Vfg[4]}
C {lab_pin.sym} 140 -420 0 0 {name=p23 sig_type=std_logic lab=Vfg[5]}
C {lab_pin.sym} 0 -540 2 0 {name=p24 sig_type=std_logic lab=Vfg[3]}
C {lab_pin.sym} -65 -80 2 0 {name=p25 sig_type=std_logic lab=Vfg[0:5]}
