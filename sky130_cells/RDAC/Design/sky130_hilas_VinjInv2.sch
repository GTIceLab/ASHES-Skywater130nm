v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 130 -190 130 -150 {
lab=Output}
N 130 -280 130 -250 {
lab=Vinj}
N 130 -220 150 -220 {
lab=Vinj}
N 150 -260 150 -220 {
lab=Vinj}
N 130 -260 150 -260 {
lab=Vinj}
N 130 -90 130 -60 {
lab=GND}
N 130 -80 150 -80 {
lab=GND}
N 60 -220 90 -220 {
lab=Input}
N 60 -220 60 -120 {
lab=Input}
N 60 -120 90 -120 {
lab=Input}
N 30 -170 60 -170 {
lab=Input}
N 130 -170 210 -170 {
lab=Output}
N 130 -120 150 -120 {
lab=GND}
N 150 -120 150 -80 {
lab=GND}
C {ipin.sym} 30 -170 0 0 {name=p1 lab=Input
}
C {opin.sym} 210 -170 0 0 {name=p2 lab=Output
}
C {iopin.sym} 130 -280 3 0 {name=p4 lab=Vinj}
C {iopin.sym} 130 -60 1 0 {name=p5 lab=GND}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 110 -220 0 0 {name=M4
L=0.53
W=0.42
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 110 -120 0 0 {name=M3
L=0.52
W=0.42
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
