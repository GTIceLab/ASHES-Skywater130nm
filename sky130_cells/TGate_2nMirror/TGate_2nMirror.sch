v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -260 0 -200 -0 {lab=SelN}
N -200 -70 -200 0 {lab=SelN}
N -200 -70 -160 -70 {lab=SelN}
N -200 0 -200 70 {lab=SelN}
N -200 70 -160 70 {lab=SelN}
N -120 100 -120 140 {lab=GND}
N -120 120 -100 120 {lab=GND}
N -100 70 -100 120 {lab=GND}
N -120 70 -100 70 {lab=GND}
N -120 -140 -120 -100 {lab=AVDD}
N -120 -120 -100 -120 {lab=AVDD}
N -100 -120 -100 -70 {lab=AVDD}
N -120 -70 -100 -70 {lab=AVDD}
N -120 -40 -120 40 {lab=#net1}
N -120 -0 -60 0 {lab=#net1}
N 210 140 210 180 {lab=#net1}
N 210 -100 210 -40 {lab=AVDD}
N 100 0 120 0 {lab=IN_TG}
N 120 -100 120 0 {lab=IN_TG}
N 120 -100 180 -100 {lab=IN_TG}
N 120 -0 120 100 {lab=IN_TG}
N 120 100 180 100 {lab=IN_TG}
N 300 -0 320 0 {lab=OUT_TG}
N 300 -100 300 -0 {lab=OUT_TG}
N 240 -100 300 -100 {lab=OUT_TG}
N 240 100 300 100 {lab=OUT_TG}
N 300 -0 300 100 {lab=OUT_TG}
N -80 -380 80 -380 {lab=IN_CM[0:1]}
N -120 -480 -120 -410 {lab=IN_CM[0:1]}
N -120 -440 -0 -440 {lab=IN_CM[0:1]}
N 0 -440 0 -380 {lab=IN_CM[0:1]}
N -0 -320 -0 -300 {lab=GND}
N 120 -350 120 -320 {lab=GND}
N 120 -320 140 -320 {lab=GND}
N 140 -380 140 -320 {lab=GND}
N 120 -380 140 -380 {lab=GND}
N -120 -350 -120 -320 {lab=GND}
N -140 -320 -120 -320 {lab=GND}
N -140 -380 -140 -320 {lab=GND}
N -140 -380 -120 -380 {lab=GND}
N 120 -480 120 -410 {lab=OUT_CM[0:1]}
N -240 -180 -240 0 {lab=SelN}
N -240 -180 210 -180 {lab=SelN}
N 210 -180 210 -140 {lab=SelN}
N -60 -0 -0 -0 {lab=#net1}
N 0 -0 -0 180 {lab=#net1}
N 0 180 210 180 {lab=#net1}
N -0 -320 120 -320 {lab=GND}
N -120 -320 0 -320 {lab=GND}
N 210 50 210 100 {lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 210 120 3 0 {name=M1
W=1.9
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 210 -120 1 0 {name=M2
W=2.3
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {ipin.sym} -440 -260 0 0 {name=p1 lab=SelN}
C {sky130_fd_pr/pfet_01v8.sym} -140 -70 0 0 {name=M3
W=2.3
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -140 70 0 0 {name=M4
W=1.9
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {iopin.sym} -440 -340 2 0 {name=p3 lab=AVDD}
C {ipin.sym} -440 -220 0 0 {name=p9 lab=IN_TG}
C {opin.sym} -440 -180 0 0 {name=p10 lab=OUT_TG}
C {sky130_fd_pr/nfet_01v8.sym} -100 -380 2 0 {name=M5[0:1]
W=4
L=2
nf=4 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 100 -380 0 0 {name=M6[0:1]
W=4
L=2
nf=4 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {ipin.sym} -440 -380 0 0 {name=p11 lab=IN_CM[0:1]}
C {opin.sym} -440 -140 0 0 {name=p13 lab=OUT_CM[0:1]}
C {devices/lab_wire.sym} -120 140 0 0 {name=l1 sig_type=std_logic lab=GND}
C {devices/lab_wire.sym} 210 50 0 0 {name=l2 sig_type=std_logic lab=GND}
C {devices/lab_wire.sym} 210 -40 0 0 {name=l3 sig_type=std_logic lab=AVDD}
C {devices/lab_wire.sym} -260 0 0 0 {name=l4 sig_type=std_logic lab=SelN}
C {devices/lab_wire.sym} 100 0 0 0 {name=l5 sig_type=std_logic lab=IN_TG}
C {devices/lab_wire.sym} 320 0 0 1 {name=l6 sig_type=std_logic lab=OUT_TG}
C {devices/lab_wire.sym} -120 -140 0 0 {name=l7 sig_type=std_logic lab=AVDD}
C {devices/lab_wire.sym} 0 -300 2 1 {name=l8 sig_type=std_logic lab=GND}
C {devices/lab_wire.sym} -120 -480 0 0 {name=l9 sig_type=std_logic lab=IN_CM[0:1]}
C {devices/lab_wire.sym} 120 -480 0 1 {name=l10 sig_type=std_logic lab=OUT_CM[0:1]}
C {iopin.sym} -440 -300 2 0 {name=p2 lab=GND}
