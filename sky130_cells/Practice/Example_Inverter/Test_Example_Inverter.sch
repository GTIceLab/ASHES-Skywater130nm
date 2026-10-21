v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 130 -190 130 -150 {
lab=Z}
N 130 -280 130 -250 {
lab=VDD}
N 130 -220 150 -220 {
lab=VDD}
N 150 -260 150 -220 {
lab=VDD}
N 130 -260 150 -260 {
lab=VDD}
N 130 -90 130 -60 {
lab=GND}
N 130 -80 150 -80 {
lab=GND}
N 60 -220 90 -220 {
lab=I}
N 60 -220 60 -120 {
lab=I}
N 60 -120 90 -120 {
lab=I}
N 30 -170 60 -170 {
lab=I}
N 130 -170 210 -170 {
lab=Z}
N 130 -120 150 -120 {
lab=GND}
N 150 -120 150 -80 {
lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 110 -120 0 0 {name=M1
W=1
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 110 -220 0 0 {name=M2
W=1
L=0.15
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {ipin.sym} 30 -170 0 0 {name=p1 lab=I}
C {opin.sym} 210 -170 0 0 {name=p2 lab=Z}
C {iopin.sym} 130 -280 3 0 {name=p4 lab=VDD}
C {iopin.sym} 130 -60 1 0 {name=p5 lab=GND}
C {vsource.sym} -120 -180 0 0 {name=Vdd value=1.8 savecurrent=false}
C {iopin.sym} -120 -150 1 0 {name=p3 lab=GND}
C {iopin.sym} -70 -90 3 0 {name=p6 lab=GND}
C {gnd.sym} -70 -90 0 0 {name=l1 lab=GND}
C {iopin.sym} -120 -210 3 0 {name=p7 lab=VDD}
C {vsource.sym} -240 -200 0 0 {name=Vin value=0 savecurrent=false}
C {iopin.sym} -240 -170 1 0 {name=p8 lab=GND}
C {ipin.sym} -240 -230 1 0 {name=p9 lab=I}
C {code_shown.sym} -130 -340 0 0 {name=SPICE only_toplevel=false value=*.dc Vin 0 1.8 0.01
.save all*
}
