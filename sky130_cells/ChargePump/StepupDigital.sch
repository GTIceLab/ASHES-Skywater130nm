v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -310 -70 -290 -70 { lab=INPUT}
N -310 -70 -310 50 { lab=INPUT}
N -310 50 -290 50 { lab=INPUT}
N -250 -40 -250 20 { lab=#net1}
N -120 -40 -120 20 { lab=#net2}
N -170 -70 -160 -70 { lab=#net1}
N -170 -70 -170 50 { lab=#net1}
N -170 50 -160 50 { lab=#net1}
N 220 -60 220 -10 { lab=OUTPUT}
N 90 -60 90 -10 { lab=#net3}
N 90 -30 180 -90 { lab=#net3}
N 130 -90 220 -30 { lab=OUTPUT}
N 90 -130 90 -120 { lab=VINJ}
N 90 -130 220 -130 { lab=VINJ}
N 220 -130 220 -120 { lab=VINJ}
N 70 -90 90 -90 { lab=VINJ}
N 70 -130 70 -90 { lab=VINJ}
N 70 -130 90 -130 { lab=VINJ}
N 220 -90 240 -90 { lab=VINJ}
N 240 -130 240 -90 { lab=VINJ}
N 220 -130 240 -130 { lab=VINJ}
N 40 -130 70 -130 { lab=VINJ}
N 90 20 110 20 { lab=VGND}
N 110 20 110 60 { lab=VGND}
N 90 60 110 60 { lab=VGND}
N 90 50 90 60 { lab=VGND}
N 220 20 240 20 { lab=VGND}
N 240 20 240 60 { lab=VGND}
N 220 60 240 60 { lab=VGND}
N 220 50 220 60 { lab=VGND}
N 160 20 180 20 { lab=#net1}
N 160 20 160 120 { lab=#net1}
N 110 60 220 60 { lab=VGND}
N 60 60 90 60 { lab=VGND}
N -250 -10 -170 -10 { lab=#net1}
N -120 -10 -50 -10 { lab=#net2}
N -50 -10 -50 20 { lab=#net2}
N -50 20 50 20 { lab=#net2}
N -200 -10 -200 120 { lab=#net1}
N -200 120 160 120 { lab=#net1}
N -120 50 -100 50 { lab=VGND}
N -100 50 -100 90 { lab=VGND}
N -120 90 -100 90 { lab=VGND}
N -120 80 -120 90 { lab=VGND}
N -250 50 -230 50 { lab=VGND}
N -230 50 -230 90 { lab=VGND}
N -250 90 -230 90 { lab=VGND}
N -250 80 -250 90 { lab=VGND}
N -230 90 -120 90 { lab=VGND}
N 60 60 60 90 { lab=VGND}
N -100 90 60 90 { lab=VGND}
N -250 -70 -230 -70 { lab=VPWR}
N -230 -110 -230 -70 { lab=VPWR}
N -250 -110 -230 -110 { lab=VPWR}
N -250 -110 -250 -100 { lab=VPWR}
N -120 -70 -100 -70 { lab=VPWR}
N -100 -110 -100 -70 { lab=VPWR}
N -120 -110 -100 -110 { lab=VPWR}
N -120 -110 -120 -100 { lab=VPWR}
N -230 -110 -120 -110 { lab=VPWR}
N -250 -120 -250 -110 { lab=VPWR}
N -260 -120 -250 -120 { lab=VPWR}
N 220 -30 240 -30 { lab=OUTPUT}
C {ipin.sym} -310 -10 0 0 {name=p1 lab=INPUT}
C {ipin.sym} -260 -120 0 0 {name=p2 lab=VPWR}
C {ipin.sym} 40 -130 0 0 {name=p3 lab=VINJ}
C {ipin.sym} 60 70 0 0 {name=p4 lab=VGND}
C {opin.sym} 240 -30 0 0 {name=p5 lab=OUTPUT}
C {sky130_fd_pr/pfet_01v8.sym} -270 -70 0 0 {name=M2
L=0.15
W=1
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -140 -70 0 0 {name=M6
L=0.15
W=1
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -270 50 0 0 {name=M1
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -140 50 0 0 {name=M5
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 70 20 0 0 {name=M4
L=0.5
W=1
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 200 20 0 0 {name=M8
L=0.5
W=1
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 110 -90 2 0 {name=M3
L=0.5
W=1
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 200 -90 0 0 {name=M7
L=0.5
W=1
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
