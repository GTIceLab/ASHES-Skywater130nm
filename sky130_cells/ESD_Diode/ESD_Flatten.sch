v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {GND} 60 280 0 0 0.2 0.2 {}
N -120 50 -120 160 {
lab=Vin}
N -120 160 50 160 {
lab=Vin}
N -120 -60 -120 -10 {
lab=vout}
N 50 -80 50 -40 {
lab=VDD}
N 50 20 50 30 {
lab=#net1}
N 50 150 50 160 {
lab=Vin}
N 50 120 50 150 {
lab=Vin}
N 50 30 50 60 {
lab=#net1}
N -120 -30 -60 -30 {
lab=vout}
N 50 160 50 170 {
lab=Vin}
N 50 230 50 250 {
lab=#net2}
N 50 310 50 330 {
lab=GND}
C {sky130_fd_pr/lvsdiode.sym} 50 -10 0 0 {name=D3
model=diode_pw2nd_05v5
area=1e12
perim=4e6
spiceprefix=X
}
C {sky130_fd_pr/lvsdiode.sym} 50 280 0 0 {name=D4
model=diode_pw2nd_05v5
area=1e12
perim=4e6
spiceprefix=X
}
C {sky130_fd_pr/res_generic_l1.sym} -120 20 0 0 {name=R1
W=1
L=1
model=res_generic_l1
mult=1}
C {vsource.sym} 50 90 0 0 {name=VD3 value=0 savecurrent=false}
C {gnd.sym} 50 330 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -70 160 3 0 {name=p1 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 50 -80 2 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -120 -60 1 0 {name=p3 sig_type=std_logic lab=vout
}
C {devices/parax_cap.sym} -60 -20 0 0 {name=C1 gnd=0 value=100f m=1}
C {vsource.sym} 50 200 0 0 {name=VD4 value=0 savecurrent=false}
