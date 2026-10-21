v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 40 -80 50 -80 { lab=VINJ}
N 40 -80 40 30 { lab=VINJ}
N 40 30 60 30 { lab=VINJ}
N 110 -80 140 -80 { lab=VPWR}
N 140 -80 140 30 { lab=VPWR}
N 120 30 140 30 { lab=VPWR}
N -70 -40 -70 10 { lab=#net1}
N -140 -70 -110 -70 { lab=SELECT}
N -140 -70 -140 40 { lab=SELECT}
N -140 40 -110 40 { lab=SELECT}
N -70 -70 -50 -70 { lab=VINJ}
N -70 -110 -70 -100 { lab=VINJ}
N 80 -80 80 -70 { lab=VINJ}
N -70 40 -50 40 { lab=VGND}
N -50 40 -50 80 { lab=VGND}
N -70 80 -50 80 { lab=VGND}
N -70 70 -70 80 { lab=VGND}
N 90 20 90 30 { lab=VGND}
N -50 20 90 20 { lab=VGND}
N -50 20 -50 40 { lab=VGND}
N -70 -10 0 -10 { lab=#net1}
N 0 -10 0 80 { lab=#net1}
N 0 80 90 80 { lab=#net1}
N 90 70 90 80 { lab=#net1}
N -140 -130 -140 -70 { lab=SELECT}
N -140 -130 80 -130 { lab=SELECT}
N 80 -130 80 -120 { lab=SELECT}
N 40 -70 80 -70 { lab=VINJ}
N -50 -70 -50 -60 { lab=VINJ}
N -50 -60 40 -60 { lab=VINJ}
N -70 -110 -50 -110 { lab=VINJ}
N -50 -110 -50 -70 { lab=VINJ}
C {ipin.sym} -140 -10 0 0 {name=p1 lab=SELECT}
C {ipin.sym} -70 80 0 0 {name=p3 lab=VGND}
C {ipin.sym} 40 -30 0 0 {name=p4 lab=VINJ}
C {opin.sym} 140 -30 0 0 {name=p5 lab=VPWR}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -90 -70 0 0 {name=M4
L=0.5
W=5
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 80 -100 1 0 {name=M2
L=0.5
W=50
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -90 40 0 0 {name=M3
L=0.5
W=5
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 90 50 3 0 {name=M1
L=0.5
W=50
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
