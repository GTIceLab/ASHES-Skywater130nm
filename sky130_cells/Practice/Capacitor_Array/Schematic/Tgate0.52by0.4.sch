v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 70 -370 410 -370 { lab=INPUT}
N 280 -530 280 -430 { lab=OUTPUT}
N 70 -530 70 -430 { lab=OUTPUT}
N 70 -530 280 -530 { lab=OUTPUT}
N 280 -530 480 -530 { lab=OUTPUT}
N 30 -450 30 -400 { lab=#net1}
N 190 -400 240 -400 { lab=SELECT}
N 190 -500 190 -400 { lab=SELECT}
N 70 -400 100 -400 { lab=VPWR}
N 100 -610 100 -400 { lab=VPWR}
N -60 -610 100 -610 { lab=VPWR}
N -130 -500 190 -500 { lab=SELECT}
N -90 -450 30 -450 { lab=#net1}
N -90 -550 -90 -450 { lab=#net1}
N -90 -420 -70 -420 { lab=GND}
N -90 -390 -90 -370 { lab=GND}
N -130 -500 -130 -420 { lab=SELECT}
N -130 -580 -130 -500 { lab=SELECT}
N -400 -610 -60 -610 { lab=VPWR}
N -90 -580 -60 -580 { lab=VPWR}
N -60 -610 -60 -580 { lab=VPWR}
N 280 -400 300 -400 { lab=GND}
N -410 -640 -400 -640 { lab=VPWR}
N -400 -640 -400 -610 { lab=VPWR}
N -150 -500 -130 -500 {
lab=SELECT}
C {devices/iopin.sym} -410 -640 0 1 {name=VPWR lab=VPWR}
C {devices/ipin.sym} -150 -500 0 0 {name=SELECT1 lab=SELECT}
C {devices/iopin.sym} 410 -370 0 0 {name=INPUT1_1 lab=INPUT}
C {devices/iopin.sym} 480 -530 0 0 {name=OUTPUT1 lab=OUTPUT}
C {ipin.sym} -330 -330 0 0 {name=p1 lab=GND}
C {lab_pin.sym} -90 -370 0 0 {name=p2 sig_type=std_logic lab=GND}
C {lab_pin.sym} 300 -400 0 1 {name=p3 sig_type=std_logic lab=GND}
C {lab_pin.sym} -71.25 -420 0 1 {name=p4 sig_type=std_logic lab=GND}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -110 -420 0 0 {name=M5
L=0.5
W=0.42
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -110 -580 0 0 {name=M1
L=0.5
W=0.42
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 50 -400 0 0 {name=M2
L=0.5
W=0.42
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 260 -400 0 0 {name=M3
L=0.5
W=0.42
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
