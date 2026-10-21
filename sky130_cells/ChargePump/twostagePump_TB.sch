v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -890 -510 -890 -500 {
lab=VCLK}
N -650 -510 -650 -500 {
lab=VCLK2}
N 390 -370 410 -370 { lab=#net1}
N 450 -370 480 -370 { lab=#net1}
N 410 -370 450 -370 { lab=#net1}
N 480 -370 500 -370 { lab=#net1}
N 500 -370 500 -340 { lab=#net1}
N 200 -370 330 -370 { lab=VDD}
N 690 -370 710 -370 { lab=#net2}
N 750 -370 780 -370 { lab=#net2}
N 710 -370 750 -370 { lab=#net2}
N 780 -370 800 -370 { lab=#net2}
N 800 -370 800 -340 { lab=#net2}
N 500 -370 630 -370 { lab=#net1}
N 960 -370 980 -370 { lab=OUT}
N 1020 -370 1050 -370 { lab=OUT}
N 980 -370 1020 -370 { lab=OUT}
N 1050 -370 1070 -370 { lab=OUT}
N 800 -370 900 -370 { lab=#net2}
N 1070 -370 1100 -370 { lab=OUT}
N 500 -250 540 -250 { lab=VCLK}
N 800 -240 830 -240 { lab=VCLK2}
N 410 -340 410 -330 { lab=#net1}
N 410 -340 610 -340 { lab=#net1}
N 610 -340 610 -330 { lab=#net1}
N 410 -270 410 -260 { lab=VCLK}
N 410 -260 610 -260 { lab=VCLK}
N 610 -270 610 -260 { lab=VCLK}
N 500 -260 500 -250 { lab=VCLK}
N 700 -340 700 -330 { lab=#net2}
N 700 -340 900 -340 { lab=#net2}
N 900 -340 900 -330 { lab=#net2}
N 700 -270 700 -260 { lab=VCLK2}
N 700 -260 900 -260 { lab=VCLK2}
N 900 -270 900 -260 { lab=VCLK2}
N 800 -260 800 -240 { lab=VCLK2}
N 1090 -240 1130 -240 { lab=GND}
N 1000 -330 1000 -320 { lab=OUT}
N 1000 -330 1200 -330 { lab=OUT}
N 1200 -330 1200 -320 { lab=OUT}
N 1000 -260 1000 -250 { lab=GND}
N 1000 -250 1200 -250 { lab=GND}
N 1200 -260 1200 -250 { lab=GND}
N 1090 -250 1090 -240 { lab=GND}
N 1020 -370 1020 -330 {
lab=OUT}
C {devices/code.sym} -980 -200 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {vsource.sym} -890 -470 0 0 {name=V3 value= "PULSE(0 1.8 0n 0.1n 0.1n 2n 4n)"
    savecurrent=false}
C {vsource.sym} -970 -470 0 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} -970 -440 0 0 {name=l5 lab=GND}
C {code_shown.sym} -840 -210 0 0 {name= Ngspice tgate sim
simulator = ngspice
only_toplevel=false 


value= "
.tran 100p 60n
.save
.control
run
//wrdata     .txt V(out)
plot V(out) V(VCLK) V(VCLK2)  

.endc
//V(Switch1)+1 V(Switch2)+1 V(Switch3)+1 V(Inn)+1.8 
"


}
C {vdd.sym} -970 -500 0 0 {name=l3 lab=VDD}
C {lab_pin.sym} -890 -510 2 0 {name=p4 sig_type=std_logic lab=VCLK}
C {vdd.sym} 200 -370 0 0 {name=l2 lab=VDD}
C {gnd.sym} -650 -440 0 0 {name=l7 lab=GND}
C {vsource.sym} -650 -470 0 0 {name=V2 value= "PULSE(0 1.8 2n 0.1n 0.1n 2n 4n)"
    savecurrent=false}
C {lab_pin.sym} -650 -510 2 0 {name=p1 sig_type=std_logic lab=VCLK2}
C {gnd.sym} -890 -440 0 0 {name=l1 lab=GND}
C {opin.sym} 1090 -370 0 0 {name=p2 lab=OUT}
C {sky130_fd_pr/lvsdiode.sym} 360 -370 1 0 {name=D3
model=diode_pw2nd_11v0


area=50}
C {sky130_fd_pr/lvsdiode.sym} 660 -370 1 0 {name=D4
model=diode_pw2nd_11v0


area=50}
C {sky130_fd_pr/lvsdiode.sym} 930 -370 1 0 {name=D5
model=diode_pw2nd_11v0


area=50}
C {sky130_fd_pr/cap_mim_m3_1.sym} 410 -300 0 0 {name=C5 model=cap_mim_m3_1 W=50 L=5 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 610 -300 2 0 {name=C6 model=cap_mim_m3_2 W=50 L=5 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 700 -300 0 0 {name=C7 model=cap_mim_m3_1 W=50 L=5 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 900 -300 2 0 {name=C8 model=cap_mim_m3_2 W=50 L=5 MF=1 spiceprefix=X}
C {lab_pin.sym} 800 -240 0 0 {name=p6 sig_type=std_logic lab=VCLK2}
C {lab_pin.sym} 500 -250 0 0 {name=p7 sig_type=std_logic lab=VCLK}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1000 -290 0 0 {name=C1 model=cap_mim_m3_1 W=30 L=20 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 1200 -290 2 0 {name=C2 model=cap_mim_m3_2 W=30 L=20 MF=1 spiceprefix=X}
C {gnd.sym} 1130 -240 0 0 {name=l4 lab=GND}
