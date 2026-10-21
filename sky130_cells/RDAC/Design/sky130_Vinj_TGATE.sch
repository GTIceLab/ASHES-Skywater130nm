v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -20 -110 -10 -110 {
lab=in}
N -50 -110 -20 -110 {
lab=in}
N -50 -110 -50 30 {
lab=in}
N -50 30 -20 30 {
lab=in}
N 40 30 70 30 {
lab=out}
N 70 -110 70 30 {
lab=out}
N 40 -110 70 -110 {
lab=out}
N 70 -40 130 -40 {
lab=out}
N -110 -40 -50 -40 {
lab=in}
N 10 20 10 30 {
lab=vdd}
N 10 20 50 20 {
lab=vdd}
N 50 20 60 20 {
lab=vdd}
N 10 -110 10 -100 {
lab=gnd}
N 10 -100 50 -100 {
lab=gnd}
N 10 -180 10 -150 {
lab=enable}
N 10 70 10 110 {
lab=!enable}
N 10 -200 10 -180 {
lab=enable}
N 60 20 90 20 {
lab=vdd}
N 50 -100 90 -100 {
lab=gnd}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 10 50 3 0 {name=M4
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 10 -130 1 0 {name=M3
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
C {ipin.sym} -110 -40 0 0 {name=p1 lab=in}
C {opin.sym} 130 -40 0 0 {name=p2 lab=out
}
C {ipin.sym} 10 -200 1 0 {name=p3 lab=enable}
C {iopin.sym} 90 20 0 0 {name=p4 lab=vdd
}
C {iopin.sym} 90 -100 0 0 {name=p5 lab=gnd
}
C {ipin.sym} 10 110 3 0 {name=p6 lab=!enable}
