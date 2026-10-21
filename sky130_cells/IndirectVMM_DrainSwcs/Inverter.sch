v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 -20 -0 20 {lab=Out}
N 0 0 120 0 {lab=Out}
N -60 -50 -40 -50 {lab=In}
N -60 -50 -60 50 {lab=In}
N -60 50 -40 50 {lab=In}
N -110 -0 -60 -0 {lab=In}
N -0 -50 20 -50 {lab=VInject}
N 20 -80 20 -50 {lab=VInject}
N 0 -80 20 -80 {lab=VInject}
N 0 -120 -0 -80 {lab=VInject}
N 0 50 20 50 {lab=GND}
N 20 50 20 80 {lab=GND}
N 0 80 20 80 {lab=GND}
N -0 80 -0 120 {lab=GND}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -20 50 0 0 {name=M1
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
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -20 -50 0 0 {name=M2
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
model=pfet_g5v0d10v5
spiceprefix=X
}
C {ipin.sym} -110 0 0 0 {name=p1 lab=In}
C {ipin.sym} 0 -120 1 0 {name=p2 lab=VInject}
C {ipin.sym} 0 120 3 0 {name=p3 lab=GND}
C {opin.sym} 120 0 0 0 {name=p4 lab=Out}
