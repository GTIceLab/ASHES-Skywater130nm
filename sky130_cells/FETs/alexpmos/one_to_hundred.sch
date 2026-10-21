v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -150 -0 -80 0 {
lab=VDD}
N -80 -140 -80 0 {
lab=VDD}
N -80 -120 80 -120 {
lab=VDD}
N 80 -120 80 0 {
lab=VDD}
N 0 0 80 -0 {
lab=VDD}
N 80 -120 220 -120 {
lab=VDD}
N 220 -120 220 0 {
lab=VDD}
N 150 0 220 -0 {
lab=VDD}
N -150 -30 -0 -30 {
lab=VS}
N -0 -30 150 -30 {
lab=VS}
N 0 -150 -0 -30 {
lab=VS}
N -150 30 -150 60 {
lab=D1}
N 150 30 150 60 {
lab=D3}
N -190 -80 -190 0 {
lab=VG}
N -40 -80 -40 0 {
lab=VG}
N 110 -80 110 0 {
lab=VG}
N -190 -80 -40 -80 {
lab=VG}
N -40 -80 110 -80 {
lab=VG}
N 0 30 -0 60 {
lab=D2}
C {sky130_fd_pr/pfet_01v8.sym} -170 0 0 0 {name=M1
W=0.45
L=0.45
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
C {sky130_fd_pr/pfet_01v8.sym} -20 0 0 0 {name=M2
W=4.5
L=0.45
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
C {sky130_fd_pr/pfet_01v8.sym} 130 0 0 0 {name=M3
W=45
L=0.45
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
C {ipin.sym} 0 -150 0 0 {name=p1 lab=VS}
C {opin.sym} -150 60 0 0 {name=p6 lab=D1}
C {opin.sym} 0 60 0 0 {name=p3 lab=D2}
C {opin.sym} 150 60 0 0 {name=p4 lab=D3
}
C {ipin.sym} -80 -140 2 1 {name=p2 lab=VDD
}
C {ipin.sym} -190 -80 0 0 {name=p5 lab=VG
}
