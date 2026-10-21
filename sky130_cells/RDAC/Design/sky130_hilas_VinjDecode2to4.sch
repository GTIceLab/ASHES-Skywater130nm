v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -60 -380 -10 -380 {
lab=IN[0]}
N 220 -380 260 -380 {
lab=ENABLE}
N 600 -220 650 -220 {
lab=OUTPUT00}
N 340 -380 380 -380 {
lab=VinjNOR3_3/Input3}
N 380 -380 380 -200 {
lab=VinjNOR3_3/Input3}
N 380 -200 450 -200 {
lab=VinjNOR3_3/Input3}
N 380 -40 450 -40 {
lab=VinjNOR3_3/Input3}
N 380 -200 380 -40 {
lab=VinjNOR3_3/Input3}
N 380 -40 380 120 {
lab=VinjNOR3_3/Input3}
N 380 120 460 120 {
lab=VinjNOR3_3/Input3}
N 380 280 460 280 {
lab=VinjNOR3_3/Input3}
N 380 120 380 280 {
lab=VinjNOR3_3/Input3}
N 70 -380 100 -380 {
lab=VinjNOR3_1/Input1}
N 600 -60 650 -60 {
lab=OUTPUT01}
N 610 100 660 100 {
lab=OUTPUT10}
N 610 260 660 260 {
lab=OUTPUT11}
N 420 -100 520 -100 {
lab=VINJ}
N 520 -280 520 -260 {
lab=VINJ}
N 420 -280 520 -280 {
lab=VINJ}
N 420 -100 420 220 {
lab=VINJ}
N 420 220 530 220 {
lab=VINJ}
N 420 60 530 60 {
lab=VINJ}
N 300 -420 300 -400 {
lab=VINJ}
N 30 -420 30 -400 {
lab=VINJ}
N 30 -420 300 -420 {
lab=VINJ}
N -200 -420 30 -420 {
lab=VINJ}
N -200 -340 300 -340 {
lab=VGND}
N 300 -360 300 -340 {
lab=VGND}
N 30 -360 30 -340 {
lab=VGND}
N 300 -340 340 -340 {
lab=VGND}
N 340 -340 340 300 {
lab=VGND}
N 340 300 530 300 {
lab=VGND}
N 340 140 530 140 {
lab=VGND}
N 340 -20 520 -20 {
lab=VGND}
N 340 -180 520 -180 {
lab=VGND}
N 340 300 340 320 {
lab=VGND}
N 310 320 340 320 {
lab=VGND}
N -40 -380 -40 -220 {
lab=IN[0]}
N -260 -240 450 -240 {
lab=IN[1]}
N -40 -220 450 -220 {
lab=IN[0]}
N -260 -380 -260 -240 {
lab=IN[1]}
N -260 -240 -260 -80 {
lab=IN[1]}
N -260 -80 450 -80 {
lab=IN[1]}
N 100 -60 450 -60 {
lab=VinjNOR3_1/Input1}
N -140 -380 -140 80 {
lab=VinjNOR3_2/Input2}
N -140 80 460 80 {
lab=VinjNOR3_2/Input2}
N -40 -220 -40 100 {
lab=IN[0]}
N -40 100 460 100 {
lab=IN[0]}
N -140 80 -140 240 {
lab=VinjNOR3_2/Input2}
N -140 240 460 240 {
lab=VinjNOR3_2/Input2}
N 100 -60 100 260 {
lab=VinjNOR3_1/Input1}
N 100 260 460 260 {
lab=VinjNOR3_1/Input1}
N -200 -360 -200 -340 {
lab=VGND}
N -160 -380 -140 -380 {
lab=VinjNOR3_2/Input2}
N -260 -380 -240 -380 {
lab=IN[1]}
N -280 -380 -260 -380 {
lab=IN[1]}
N -200 -420 -200 -400 {
lab=VINJ}
N 100 -380 100 -60 {
lab=VinjNOR3_1/Input1
}
N 420 -280 420 -100 {
lab=VINJ}
N 420 -420 420 -280 {
lab=VINJ}
N 300 -460 300 -420 {
lab=VINJ}
N 420 -460 420 -420 {
lab=VINJ}
N 300 -460 420 -460 {
lab=VINJ}
C {ipin.sym} 220 -380 0 0 {name=p4 lab=ENABLE}
C {opin.sym} 650 -220 0 0 {name=p5 lab=OUTPUT00}
C {opin.sym} 650 -60 0 0 {name=p6 lab=OUTPUT01}
C {opin.sym} 660 100 0 0 {name=p7 lab=OUTPUT10}
C {opin.sym} 660 260 0 0 {name=p8 lab=OUTPUT11}
C {iopin.sym} 300 -460 2 0 {name=p1 lab=VINJ
}
C {iopin.sym} 310 320 2 0 {name=p9 lab=VGND}
C {lab_wire.sym} 100 -250 0 0 {name=p10 sig_type=std_logic lab=VinjNOR3_1/Input1}
C {lab_wire.sym} -140 -260 0 0 {name=p11 sig_type=std_logic lab=VinjNOR3_2/Input2}
C {lab_wire.sym} 380 -290 0 0 {name=p12 sig_type=std_logic lab=VinjNOR3_3/Input3 }
C {sky130_cells/RDAC/Design/sky130_hilas_VinjInv2.sym} -240 -320 0 0 {name=x2}
C {sky130_cells/RDAC/Design/sky130_hilas_VinjInv2.sym} -10 -320 0 0 {name=x3}
C {sky130_cells/RDAC/Design/sky130_hilas_VinjInv2.sym} 260 -320 0 0 {name=x4}
C {sky130_cells/RDAC/Design/sky130_hilas_VinjNOR3.sym} 600 -220 0 0 {name=x1}
C {sky130_cells/RDAC/Design/sky130_hilas_VinjNOR3.sym} 600 -60 0 0 {name=x5}
C {sky130_cells/RDAC/Design/sky130_hilas_VinjNOR3.sym} 610 100 0 0 {name=x6}
C {sky130_cells/RDAC/Design/sky130_hilas_VinjNOR3.sym} 610 260 0 0 {name=x7}
C {ipin.sym} -400 -380 0 0 {name=p13 lab=IN[1:0]
}
C {lab_pin.sym} -280 -380 0 0 {name=p14 sig_type=std_logic lab=IN[1]}
C {lab_pin.sym} -60 -380 0 0 {name=p15 sig_type=std_logic lab=IN[0]}
