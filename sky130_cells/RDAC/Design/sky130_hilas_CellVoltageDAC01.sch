v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -720 -120 -700 -120 {
lab=VINJ}
N -700 -140 -700 -120 {
lab=VINJ}
N -1060 -100 -1020 -100 {
lab=ENABLE}
N -1060 -120 -1020 -120 {
lab=IN[1:0] bus=true}
N -420 -100 -380 -100 {
lab=VINJ}
N -420 -80 -380 -80 {
lab=Out}
N -420 -60 -380 -60 {
lab=VREFin}
N -420 -40 -380 -40 {
lab=VREFout}
N -420 -20 -380 -20 {
lab=VGND}
N -720 -20 -720 20 {
lab=VGND}
C {iopin.sym} -690 -230 0 0 {name=p2 lab=VINJ}
C {opin.sym} -380 -80 0 0 {name=p3 lab=Out
}
C {iopin.sym} -380 -40 0 0 {name=p1 lab=VREFout

}
C {ipin.sym} -1060 -100 0 0 {name=p4 lab=ENABLE}
C {ipin.sym} -1060 -120 0 0 {name=p7 lab=IN[1:0]}
C {iopin.sym} -380 -60 0 0 {name=p8 lab=VREFin

}
C {iopin.sym} -380 -20 0 0 {name=p9 lab=VGND

}
C {lab_pin.sym} -720 20 0 0 {name=p23 sig_type=std_logic lab=VGND}
C {lab_pin.sym} -700 -140 2 0 {name=p5 sig_type=std_logic lab=VINJ}
C {sky130_cells/RDAC/Design/sky130_hilas_dac_cell.sym} -570 -60 0 0 {name=x1}
C {sky130_cells/RDAC/Design/sky130_hilas_VinjDecode2to4.sym} -870 -70 0 0 {name=x2}
C {lab_pin.sym} -380 -100 2 0 {name=p6 sig_type=std_logic lab=VINJ}
