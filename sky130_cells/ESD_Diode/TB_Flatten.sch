v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {GND} 380 20 0 0 0.2 0.2 {}
N 200 -210 200 -100 {
lab=Vin}
N 200 -100 370 -100 {
lab=Vin}
N 200 -320 200 -270 {
lab=vout}
N 370 -340 370 -300 {
lab=VDD}
N 370 -240 370 -230 {
lab=#net1}
N 370 -110 370 -100 {
lab=Vin}
N 370 -140 370 -110 {
lab=Vin}
N 370 -230 370 -200 {
lab=#net1}
N -20 -350 -20 -330 {
lab=Vin}
N 60 -350 60 -330 {
lab=VDD}
N 200 -290 260 -290 {
lab=vout}
N 370 -100 370 -90 {
lab=Vin}
N 370 -30 370 -10 {
lab=#net2}
N 370 50 370 70 {
lab=GND}
C {sky130_fd_pr/lvsdiode.sym} 370 -270 0 0 {name=D1
model=diode_pw2nd_05v5
area=1e12
perim=4e6
spiceprefix=X
}
C {sky130_fd_pr/lvsdiode.sym} 370 20 0 0 {name=D2
model=diode_pw2nd_05v5
area=1e12
perim=4e6
spiceprefix=X
}
C {sky130_fd_pr/res_generic_l1.sym} 200 -240 0 0 {name=R2
W=1
L=1
model=res_generic_l1
mult=1}
C {vsource.sym} 370 -170 0 0 {name=VD1 value=0 savecurrent=false}
C {devices/code.sym} -230 -280 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt"}
C {devices/code_shown.sym} -290 -110 0 0 {name=SPICE only_toplevel=false value=".dc V1 1 10 0.01
.options savecurrents
.control

run
plot abs(i(VD1))
plot abs(i(VD2))
plot v(VDD) v(vout)
.endc"}
C {vsource.sym} -20 -300 0 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} -20 -270 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -20 -350 0 0 {name=p5 sig_type=std_logic lab=Vin}
C {gnd.sym} 370 70 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 250 -100 3 0 {name=p6 sig_type=std_logic lab=Vin}
C {vsource.sym} 60 -300 0 0 {name=V2 value=1.8 savecurrent=false}
C {gnd.sym} 60 -270 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 60 -350 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 370 -340 2 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 200 -320 1 0 {name=p10 sig_type=std_logic lab=vout
}
C {devices/parax_cap.sym} 260 -280 0 0 {name=C6 gnd=0 value=100f m=1}
C {vsource.sym} 370 -60 0 0 {name=VD2 value=0 savecurrent=false}
