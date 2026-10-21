v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 50 130 50 150 {
lab=#net1}
N 50 210 50 220 {
lab=Vgnd}
N 50 40 50 70 {
lab=Y}
N -130 180 10 180 {
lab=B}
N -140 20 -140 100 {
lab=A}
N -140 100 10 100 {
lab=A}
N -40 -40 120 -40 {
lab=Y}
N 120 -50 120 -40 {
lab=Y}
N -40 -150 -40 -100 {
lab=Vdd}
N -40 -150 120 -150 {
lab=Vdd}
N 120 -150 120 -110 {
lab=Vdd}
N 40 -190 40 -150 {
lab=Vdd}
N 40 -190 70 -190 {
lab=Vdd}
N 50 -40 50 40 {
lab=Y}
N -140 -70 -140 20 {
lab=A}
N -140 -70 -80 -70 {
lab=A}
N -20 -20 -20 180 {
lab=B}
N -20 -20 80 -20 {
lab=B}
N 80 -80 80 -20 {
lab=B}
N 50 30 180 30 {
lab=Y}
N -40 -70 -0 -70 {
lab=Vdd}
N -0 -150 0 -70 {
lab=Vdd}
N 120 -80 180 -80 {
lab=Vdd}
N 180 -150 180 -80 {
lab=Vdd}
N 120 -150 180 -150 {
lab=Vdd}
N 50 220 120 220 {
lab=Vgnd}
N 120 180 120 220 {
lab=Vgnd}
N 50 180 120 180 {
lab=Vgnd}
N 120 100 120 180 {
lab=Vgnd}
N 50 100 120 100 {
lab=Vgnd}
C {iopin.sym} 50 220 1 0 {name=p1 lab=Vgnd}
C {iopin.sym} 70 -190 0 0 {name=p2 lab=Vdd}
C {ipin.sym} -140 20 0 0 {name=p3 lab=A}
C {ipin.sym} -130 180 0 0 {name=p4 lab=B
}
C {opin.sym} 180 30 0 0 {name=p5 lab=Y}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -60 -70 0 0 {name=M1
L=0.5
W=2.5
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 30 100 0 0 {name=M2
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 30 180 0 0 {name=M3
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 100 -80 0 0 {name=M4
L=0.5
W=2.5
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
