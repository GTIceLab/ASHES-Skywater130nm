v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -140 -400 -90 -400 {
lab=#net1}
N -20 -100 20 -100 {
lab=#net2}
N -140 -100 -80 -100 {
lab=#net3}
N -140 -250 -80 -250 {
lab=#net4}
N -20 -250 20 -250 {
lab=#net5}
N -30 -400 20 -400 {
lab=#net6}
N 160 -250 340 -250 {
lab=Output}
N 100 -400 160 -400 {
lab=Output}
N 160 -400 160 -250 {
lab=Output}
N 100 -250 160 -250 {
lab=Output}
N 100 -100 160 -100 {
lab=Output}
N 160 -250 160 -100 {
lab=Output}
N -280 -400 -220 -400 {
lab=Input}
N -280 -400 -280 -250 {
lab=Input}
N -280 -250 -220 -250 {
lab=Input}
N -280 -100 -220 -100 {
lab=Input}
N -280 -250 -280 -100 {
lab=Input}
N -320 -250 -280 -250 {
lab=Input}
N -70 -520 -70 -480 {
lab=VCC}
N -160 -480 -70 -480 {
lab=VCC}
N -160 -480 -160 -440 {
lab=VCC}
N -70 -480 80 -480 {
lab=VCC}
N 80 -480 80 -440 {
lab=VCC}
N -40 -550 -40 -460 {
lab=SELECT1}
N -40 -460 60 -460 {
lab=SELECT1}
N 60 -460 60 -440 {
lab=SELECT1}
N -180 -460 -40 -460 {
lab=SELECT1}
N -180 -460 -180 -440 {
lab=SELECT1}
N -10 -190 60 -190 {
lab=SELECT3}
N 60 -190 60 -140 {
lab=SELECT3}
N -180 -190 -10 -190 {
lab=SELECT3}
N -180 -190 -180 -140 {
lab=SELECT3}
N -60 -200 -60 -190 {
lab=SELECT3}
N -180 -310 -60 -310 {
lab=SELECT2}
N -180 -310 -180 -290 {
lab=SELECT2}
N -60 -310 60 -310 {
lab=SELECT2}
N 60 -310 60 -290 {
lab=SELECT2}
N 80 -340 80 -290 {
lab=VCC}
N -160 -340 -160 -290 {
lab=VCC}
N -10 -360 -10 -340 {
lab=VCC}
N -60 -330 -60 -310 {
lab=SELECT2}
N -10 -340 80 -340 {
lab=VCC}
N -160 -340 -10 -340 {
lab=VCC}
N -50 -170 -50 -150 {
lab=VCC}
N -160 -150 -50 -150 {
lab=VCC}
N -160 -150 -160 -140 {
lab=VCC}
N -50 -150 80 -150 {
lab=VCC}
N 80 -150 80 -140 {
lab=VCC}
N -90 -420 -90 -400 {
lab=#net1}
N -90 -400 -90 -380 {
lab=#net1}
N -30 -420 -30 -400 {
lab=#net6}
N -30 -400 -30 -390 {
lab=#net6}
N -30 -390 -30 -380 {
lab=#net6}
N -80 -280 -80 -250 {
lab=#net4}
N -80 -250 -80 -230 {
lab=#net4}
N -20 -280 -20 -250 {
lab=#net5}
N -20 -250 -20 -230 {
lab=#net5}
N -80 -130 -80 -100 {
lab=#net3}
N -80 -100 -80 -70 {
lab=#net3}
N -20 -130 -20 -100 {
lab=#net2}
N -20 -100 -20 -70 {
lab=#net2}
C {sky130_cells/RDAC/Design/Tgate.sym} -80 40 0 0 {name=x1}
C {sky130_cells/RDAC/Design/Tgate.sym} -80 -110 0 0 {name=x2}
C {sky130_cells/RDAC/Design/Tgate.sym} -80 -260 0 0 {name=x3}
C {sky130_cells/RDAC/Design/Tgate.sym} 160 -260 0 0 {name=x4}
C {sky130_cells/RDAC/Design/Tgate.sym} 160 -110 0 0 {name=x5}
C {sky130_cells/RDAC/Design/Tgate.sym} 160 40 0 0 {name=x6}
C {ipin.sym} -410 -400 0 0 {name=p1 lab=GND}
C {ipin.sym} -400 -220 0 0 {name=p2 lab=SELECT1}
C {ipin.sym} -410 -420 0 0 {name=p3 lab=VCC}
C {ipin.sym} -400 -200 0 0 {name=p4 lab=SELECT2}
C {ipin.sym} -400 -180 0 0 {name=p5 lab=SELECT3}
C {ipin.sym} -410 -350 0 0 {name=p6 lab=Output}
C {ipin.sym} -410 -310 0 0 {name=p7 lab=Input}
C {lab_pin.sym} 340 -250 2 0 {name=p8 sig_type=std_logic lab=Output
}
C {lab_pin.sym} -320 -250 0 0 {name=p9 sig_type=std_logic lab=Input
}
C {lab_pin.sym} -70 -520 0 0 {name=p10 sig_type=std_logic lab=VCC
}
C {lab_pin.sym} -40 -550 0 0 {name=p11 sig_type=std_logic lab=SELECT1}
C {lab_pin.sym} -60 -330 0 0 {name=p12 sig_type=std_logic lab=SELECT2}
C {lab_pin.sym} -60 -200 0 0 {name=p13 sig_type=std_logic lab=SELECT3}
C {lab_pin.sym} -10 -360 0 0 {name=p14 sig_type=std_logic lab=VCC
}
C {lab_pin.sym} -160 -360 0 0 {name=p15 sig_type=std_logic lab=GND}
C {lab_pin.sym} 80 -360 0 0 {name=p16 sig_type=std_logic lab=GND}
C {lab_pin.sym} 80 -60 0 0 {name=p17 sig_type=std_logic lab=GND}
C {lab_pin.sym} -160 -60 0 0 {name=p18 sig_type=std_logic lab=GND}
C {lab_pin.sym} -160 -210 0 0 {name=p19 sig_type=std_logic lab=GND}
C {lab_pin.sym} 80 -210 0 0 {name=p20 sig_type=std_logic lab=GND}
C {lab_pin.sym} -50 -170 0 0 {name=p21 sig_type=std_logic lab=VCC
}
C {sky130_fd_pr/cap_mim_m3_1.sym} -60 -420 1 0 {name=C1[1:2] model=cap_mim_m3_1 W=1.4 L=5 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} -60 -380 3 0 {name=C3[1:2] model=cap_mim_m3_2 W=1.4 L=5 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} -50 -280 1 0 {name=C2[1:4] model=cap_mim_m3_1 W=1.4 L=5 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} -50 -230 3 0 {name=C4[1:4] model=cap_mim_m3_2 W=1.4 L=5 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} -50 -70 3 0 {name=C5[1:2] model=cap_mim_m3_2 W=1.4 L=5 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} -50 -130 1 0 {name=C6[1:8] model=cap_mim_m3_1 W=1.4 L=5 MF=1 spiceprefix=X}
