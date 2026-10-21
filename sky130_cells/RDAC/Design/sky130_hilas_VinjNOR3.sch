v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 100 -400 160 -400 {
lab=#net1}
N 160 -340 220 -340 {
lab=#net2}
N 100 -500 100 -460 {
lab=Vinj}
N 100 -430 120 -430 {
lab=Vinj}
N 120 -460 120 -430 {
lab=Vinj}
N 100 -460 120 -460 {
lab=Vinj}
N 120 -430 160 -430 {
lab=Vinj}
N 160 -430 180 -430 {
lab=Vinj}
N 180 -430 180 -370 {
lab=Vinj}
N 160 -370 180 -370 {
lab=Vinj}
N 180 -370 240 -370 {
lab=Vinj}
N 240 -370 240 -310 {
lab=Vinj}
N 220 -310 240 -310 {
lab=Vinj}
N 220 -280 220 -260 {
lab=OUTPUT}
N 220 -260 320 -260 {
lab=OUTPUT}
N 120 -180 120 -160 {
lab=GND}
N 120 -160 320 -160 {
lab=GND}
N 320 -170 320 -160 {
lab=GND}
N 320 -180 320 -170 {
lab=GND}
N 220 -180 220 -160 {
lab=GND}
N 220 -160 220 -120 {
lab=GND}
N 120 -210 140 -210 {
lab=GND}
N 140 -210 140 -160 {
lab=GND}
N 220 -210 240 -210 {
lab=GND}
N 240 -210 240 -160 {
lab=GND}
N 320 -210 340 -210 {
lab=GND}
N 340 -210 340 -160 {
lab=GND}
N 320 -160 340 -160 {
lab=GND}
N -40 -430 60 -430 {
lab=Input3}
N 0 -430 0 -210 {
lab=Input3}
N 0 -210 80 -210 {
lab=Input3}
N 40 -370 120 -370 {
lab=Input1}
N 80 -370 80 -280 {
lab=Input1}
N 80 -280 180 -280 {
lab=Input1}
N 180 -280 180 -210 {
lab=Input1}
N 70 -310 180 -310 {
lab=Input2}
N 160 -310 160 -250 {
lab=Input2}
N 160 -250 280 -250 {
lab=Input2}
N 280 -250 280 -210 {
lab=Input2}
N 120 -260 220 -260 {
lab=OUTPUT}
N 120 -260 120 -240 {
lab=OUTPUT}
N 220 -260 220 -240 {
lab=OUTPUT}
N 320 -260 320 -240 {
lab=OUTPUT}
N 220 -270 320 -270 {
lab=OUTPUT}
C {ipin.sym} -40 -430 0 0 {name=p1 lab=Input3}
C {ipin.sym} 40 -370 0 0 {name=p2 lab=Input1
}
C {ipin.sym} 70 -310 0 0 {name=p3 lab=Input2

}
C {iopin.sym} 100 -500 3 0 {name=p4 lab=Vinj}
C {iopin.sym} 220 -120 1 0 {name=p5 lab=GND}
C {opin.sym} 320 -270 0 0 {name=p6 lab=OUTPUT}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 100 -210 0 0 {name=M1
W=0.42
L=0.5
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 200 -210 0 0 {name=M2
W=0.43
L=0.51
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 300 -210 0 0 {name=M3
W=0.42
L=0.5
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 200 -310 0 0 {name=M6
W=0.43
L=0.52
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 140 -370 0 0 {name=M4
W=0.42
L=0.52
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 80 -430 0 0 {name=M5
W=0.42
L=0.53
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
