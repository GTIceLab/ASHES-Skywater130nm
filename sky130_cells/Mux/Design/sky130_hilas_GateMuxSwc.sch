v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 280 -140 320 -140 {
lab=#net1}
N 320 -300 320 -140 {
lab=#net1}
N 280 -300 320 -300 {
lab=#net1}
N 320 -220 400 -220 {
lab=#net1}
N 260 -20 400 -20 {
lab=SIGIN}
N 40 -140 140 -140 {
lab=VGUNSEL}
N 40 -300 140 -300 {
lab=VGSEL}
N 540 -220 600 -220 {
lab=SIGOUT}
N 540 -20 600 -20 {
lab=SIGOUT}
N 600 -220 600 -20 {
lab=SIGOUT}
N 600 -120 660 -120 {
lab=SIGOUT}
N 470 30 470 60 {
lab=RUN}
N 460 60 470 60 {
lab=RUN}
N 470 -320 470 -260 {
lab=RUN}
N 460 -320 470 -320 {
lab=RUN}
N 470 -60 480 -60 {
lab=PROG}
N 480 -170 480 -60 {
lab=PROG}
N 470 -170 480 -170 {
lab=PROG}
N 400 -120 480 -120 {
lab=PROG}
N 200 -250 210 -250 {
lab=SELCONTROL}
N 200 -250 200 -180 {
lab=SELCONTROL}
N 200 -180 210 -180 {
lab=SELCONTROL}
N 80 -220 200 -220 {
lab=SELCONTROL}
N 210 -90 210 -80 {
lab=SELCONTROLB}
N 210 -80 210 -60 {
lab=SELCONTROLB}
N 200 -60 210 -60 {
lab=SELCONTROLB}
N 210 -400 210 -340 {
lab=SELCONTROLB}
N -60 -220 50 -220 {
lab=SELCONTROL}
N 50 -220 80 -220 {
lab=SELCONTROL}
N -60 -420 -60 -400 {
lab=VDD}
N -60 -360 -60 -340 {
lab=GND}
N -20 -380 40 -380 {
lab=SELCONTROLB}
N -140 -380 -100 -380 {
lab=SELCONTROL}
N 210 -400 220 -400 {
lab=SELCONTROLB}
N 180 -60 200 -60 {
lab=SELCONTROLB}
C {opin.sym} 660 -120 0 0 {name=p1 lab=SIGOUT}
C {ipin.sym} 260 -20 0 0 {name=p2 lab=SIGIN}
C {ipin.sym} 400 -120 0 0 {name=p3 lab=PROG}
C {ipin.sym} 390 -90 0 0 {name=p4 lab=RUN}
C {iopin.sym} -180 -320 2 0 {name=p5 lab=VDD}
C {lab_pin.sym} 460 -320 0 0 {name=p6 sig_type=std_logic lab=RUN}
C {lab_pin.sym} 460 60 0 0 {name=p7 sig_type=std_logic lab=RUN}
C {iopin.sym} -180 -300 2 0 {name=p8 lab=GND}
C {lab_pin.sym} 400 -240 0 0 {name=p9 sig_type=std_logic lab=VDD

}
C {lab_pin.sym} 400 -200 0 0 {name=p10 sig_type=std_logic lab=GND}
C {lab_pin.sym} 400 -40 0 0 {name=p11 sig_type=std_logic lab=VDD

}
C {lab_pin.sym} 400 0 0 0 {name=p12 sig_type=std_logic lab=GND}
C {lab_pin.sym} 140 -160 0 0 {name=p13 sig_type=std_logic lab=VDD

}
C {lab_pin.sym} 140 -120 0 0 {name=p14 sig_type=std_logic lab=GND}
C {lab_pin.sym} 140 -320 0 0 {name=p15 sig_type=std_logic lab=VDD

}
C {lab_pin.sym} 140 -280 0 0 {name=p16 sig_type=std_logic lab=GND}
C {ipin.sym} 40 -140 0 0 {name=p17 lab=VGUNSEL}
C {ipin.sym} 40 -300 0 0 {name=p18 lab=VGSEL}
C {ipin.sym} -60 -220 0 0 {name=p19 lab=SELCONTROL}
C {sky130_cells/RDAC/Design/sky130_hilas_VinjInv2.sym} -100 -320 0 0 {name=x5}
C {lab_pin.sym} -60 -420 0 0 {name=p20 sig_type=std_logic lab=VDD

}
C {lab_pin.sym} -60 -340 0 0 {name=p21 sig_type=std_logic lab=GND}
C {lab_pin.sym} 40 -380 2 0 {name=p22 sig_type=std_logic lab=SELCONTROLB}
C {lab_pin.sym} -140 -380 0 0 {name=p23 sig_type=std_logic lab=SELCONTROL}
C {lab_pin.sym} 220 -400 2 0 {name=p24 sig_type=std_logic lab=SELCONTROLB}
C {lab_pin.sym} 180 -60 0 0 {name=p25 sig_type=std_logic lab=SELCONTROLB}
C {sky130_cells/Mux/Design/sky130_hilas_Tgate.sym} 290 -300 0 0 {name=x1}
C {sky130_cells/Mux/Design/sky130_hilas_Tgate.sym} 290 -140 0 0 {name=x2}
C {sky130_cells/Mux/Design/sky130_hilas_Tgate.sym} 550 -220 0 0 {name=x3}
C {sky130_cells/Mux/Design/sky130_hilas_Tgate.sym} 550 -20 0 0 {name=x4}
