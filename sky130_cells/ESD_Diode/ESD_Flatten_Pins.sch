v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {GND} 60 280 0 0 0.2 0.2 {}
N -120 50 -120 160 {
lab=CIRCUIT}
N -120 160 50 160 {
lab=CIRCUIT}
N -120 -60 -120 -10 {
lab=PAD}
N 50 -80 50 -40 {
lab=VESD}
N 50 20 50 30 {
lab=CIRCUIT}
N 50 150 50 160 {
lab=CIRCUIT}
N 50 120 50 150 {
lab=CIRCUIT}
N 50 30 50 60 {
lab=CIRCUIT}
N 50 160 50 170 {
lab=CIRCUIT}
N 50 230 50 250 {
lab=CIRCUIT}
N 50 310 50 330 {
lab=GND}
N 50 60 50 120 {
lab=CIRCUIT}
N 50 170 50 220 {
lab=CIRCUIT}
N 50 220 50 230 {
lab=CIRCUIT}
C {sky130_fd_pr/lvsdiode.sym} 50 -10 0 0 {name=D3
model=diode_pd2nw_11v0
area=4.40146e13
perim=2.93e07
spiceprefix=X
}
C {sky130_fd_pr/lvsdiode.sym} 50 280 0 0 {name=D4
model=diode_pw2nd_11v0
area=2.59996e13
perim=2.294e07
spiceprefix=X
}
C {iopin.sym} 50 330 1 0 {name=p5 lab=GND}
C {iopin.sym} 50 -80 3 0 {name=p6 lab=VESD}
C {ipin.sym} -70 160 1 0 {name=p7 lab=CIRCUIT}
C {ipin.sym} -120 -60 2 0 {name=p8 lab=PAD}
C {sky130_fd_pr/res_generic_po.sym} -120 20 0 0 {name=R2
W=1.02
L=5.81
model=res_generic_po
spiceprefix=X
mult=1}
