v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 380 -420 440 -420 {
lab=select}
N 300 -600 310 -600 {
lab=In}
N 300 -480 310 -480 {
lab=In}
N 400 -420 400 -400 {
lab=select}
N 300 -600 300 -480 {
lab=In}
N 370 -600 370 -480 {
lab=Out}
N 370 -540 420 -540 {
lab=Out}
N 440 -600 450 -600 {
lab=In}
N 440 -480 450 -480 {
lab=In}
N 440 -600 440 -480 {
lab=In}
N 420 -540 510 -540 {
lab=Out}
N 440 -420 480 -420 {
lab=select}
N 480 -440 480 -420 {
lab=select}
N 340 -440 340 -420 {
lab=select}
N 340 -420 380 -420 {
lab=select}
N 340 -660 340 -640 {
lab=!select}
N 340 -660 480 -660 {
lab=!select}
N 480 -660 480 -640 {
lab=!select}
N 400 -680 400 -660 {
lab=!select}
N 240 -560 300 -560 {
lab=In}
N 300 -560 440 -560 {
lab=In}
N 340 -600 340 -590 {
lab=VDD}
N 340 -590 340 -580 {
lab=VDD}
N 340 -580 480 -580 {
lab=VDD}
N 480 -600 480 -580 {
lab=VDD}
N 170 -580 340 -580 {
lab=VDD}
N 340 -500 340 -480 {
lab=GND}
N 340 -500 480 -500 {
lab=GND}
N 480 -500 480 -480 {
lab=GND}
N 170 -500 340 -500 {
lab=GND}
N 510 -600 520 -600 {
lab=Out}
N 520 -600 520 -480 {
lab=Out}
N 510 -480 520 -480 {
lab=Out}
N 510 -540 520 -540 {
lab=Out}
N 520 -540 580 -540 {
lab=Out}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 340 -460 3 0 {name=M4
W=2.25
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 340 -620 1 0 {name=M2
W=2.25
L=0.5
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
C {ipin.sym} 240 -560 0 0 {name=p1 lab=In}
C {ipin.sym} 400 -400 3 0 {name=p2 lab=select}
C {ipin.sym} 400 -680 1 0 {name=p3 lab=!select}
C {iopin.sym} 170 -580 2 0 {name=p4 lab=VDD}
C {iopin.sym} 170 -500 2 0 {name=p5 lab=GND}
C {opin.sym} 580 -540 0 0 {name=p6 lab=Out}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 480 -460 3 0 {name=M5
W=2.25
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 480 -620 1 0 {name=M6
W=2.25
L=0.5
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
