v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -70 -130 -70 -100 {
lab=ColSel}
N -50 -130 -50 -100 {
lab=VTUN}
N -30 -130 -30 -100 {
lab=Vg}
N -50 -150 -50 -130 {
lab=VTUN}
N -30 -170 -30 -130 {
lab=Vg}
N 30 -130 30 -100 {
lab=VINJ}
N 80 -130 80 -100 {
lab=Vs}
N 50 60 50 90 {
lab=GND}
N -70 60 -70 90 {
lab=ColSel}
N 230 -130 230 -100 {
lab=ColSel}
N 250 -130 250 -100 {
lab=VTUN}
N 270 -130 270 -100 {
lab=Vg}
N 250 -150 250 -130 {
lab=VTUN}
N 270 -170 270 -130 {
lab=Vg}
N 330 -130 330 -100 {
lab=VINJ}
N 380 -130 380 -100 {
lab=Vs}
N 350 60 350 90 {
lab=GND}
N 230 60 230 90 {
lab=ColSel}
N -70 190 -70 220 {
lab=ColSel}
N -50 190 -50 220 {
lab=VTUN}
N -30 190 -30 220 {
lab=Vg}
N -50 170 -50 190 {
lab=VTUN}
N -30 150 -30 190 {
lab=Vg}
N 30 190 30 220 {
lab=VINJ}
N 80 190 80 220 {
lab=Vs}
N 50 380 50 410 {
lab=GND}
N -70 380 -70 410 {
lab=ColSel}
N 230 190 230 220 {
lab=ColSel}
N 250 190 250 220 {
lab=VTUN}
N 270 190 270 220 {
lab=Vg}
N 250 170 250 190 {
lab=VTUN}
N 270 150 270 190 {
lab=Vg}
N 330 190 330 220 {
lab=VINJ}
N 380 190 380 220 {
lab=Vs}
N 350 380 350 410 {
lab=GND}
N 230 380 230 410 {
lab=ColSel}
N -70 490 -70 520 {
lab=ColSel}
N -50 490 -50 520 {
lab=VTUN}
N -30 490 -30 520 {
lab=Vg}
N -50 470 -50 490 {
lab=VTUN}
N -30 450 -30 490 {
lab=Vg}
N 30 490 30 520 {
lab=VINJ}
N 80 490 80 520 {
lab=Vs}
N 50 680 50 710 {
lab=GND}
N -70 680 -70 710 {
lab=ColSel}
N 230 490 230 520 {
lab=ColSel}
N 250 490 250 520 {
lab=VTUN}
N 270 490 270 520 {
lab=Vg}
N 250 470 250 490 {
lab=VTUN}
N 270 450 270 490 {
lab=Vg}
N 330 490 330 520 {
lab=VINJ}
N 380 490 380 520 {
lab=Vs}
N 350 680 350 710 {
lab=GND}
N 230 680 230 710 {
lab=ColSel}
N -80 810 -80 840 {
lab=ColSel}
N -60 810 -60 840 {
lab=VTUN}
N -40 810 -40 840 {
lab=fgmem_Vg[0]}
N -60 790 -60 810 {
lab=VTUN}
N -40 770 -40 810 {
lab=fgmem_Vg[0]}
N 20 810 20 840 {
lab=VINJ}
N 70 810 70 840 {
lab=fgmem_Vs_R[0]}
N 40 1000 40 1030 {
lab=GND}
N -80 1000 -80 1030 {
lab=ColSel}
N 220 810 220 840 {
lab=ColSel}
N 240 810 240 840 {
lab=VTUN}
N 260 810 260 840 {
lab=fgmem_Vg[1]}
N 240 790 240 810 {
lab=VTUN}
N 260 770 260 810 {
lab=fgmem_Vg[1]}
N 320 810 320 840 {
lab=VINJ}
N 370 810 370 840 {
lab=fgmem_Vs_R[1]}
N 340 1000 340 1030 {
lab=GND}
N 220 1000 220 1030 {
lab=ColSel}
N 120 990 200 990 {lab=Vd_Prog[3]}
N 130 650 210 650 {lab=Vd_Run[2]}
N 130 670 210 670 {lab=Vd_Prog[2]}
N 130 350 210 350 {lab=Vd_Run[1]}
N 130 370 210 370 {lab=Vd_Prog[1]}
N 130 50 210 50 {lab=Vd_Prog[0]}
N 420 990 470 990 {
lab=Vd_Prog[3]}
N 430 650 480 650 {
lab=Vd_Run[2]}
N 430 670 480 670 {
lab=Vd_Prog[2]}
N 430 350 480 350 {
lab=Vd_Run[1]}
N 430 370 480 370 {
lab=Vd_Prog[1]}
N 420 970 470 970 {
lab=fgmem[1]}
N 430 50 480 50 {
lab=Vd_Prog[0]}
N -150 970 -100 970 {
lab=fgmem[0]}
N 130 30 210 30 {lab=Vd_Run[0]}
N 430 30 480 30 {
lab=Vd_Run[0]}
N 370 780 370 810 {lab=fgmem_Vs_R[1]}
N 70 780 70 810 {lab=fgmem_Vs_R[0]}
C {iopin.sym} -320 -20 0 0 {name=p1 lab=Vd_Run[0:2]}
C {iopin.sym} -320 -60 0 0 {name=p2 lab=Vd_Prog[0:3]}
C {iopin.sym} -320 0 0 0 {name=p3 lab=Vg}
C {iopin.sym} -320 -100 0 0 {name=p4 lab=VTUN}
C {iopin.sym} -320 -80 0 0 {name=p5 lab=ColSel}
C {iopin.sym} -320 -140 0 0 {name=p6 lab=GND}
C {iopin.sym} -320 -160 0 0 {name=p7 lab=VINJ}
C {iopin.sym} -320 20 0 0 {name=p8 lab=Vs}
C {sky130_cells/Floating_Gates/Indirect/FG_Indirect.sym} 20 0 0 0 {name=FG_Indrct1}
C {lab_wire.sym} -70 -130 0 0 {name=p15 sig_type=std_logic lab=ColSel}
C {lab_wire.sym} -50 -150 0 0 {name=p16 sig_type=std_logic lab=VTUN}
C {lab_wire.sym} -30 -170 0 0 {name=p17 sig_type=std_logic lab=Vg}
C {lab_wire.sym} 30 -130 0 0 {name=p18 sig_type=std_logic lab=VINJ}
C {lab_wire.sym} 80 -130 0 0 {name=p19 sig_type=std_logic lab=Vs}
C {lab_wire.sym} 50 90 0 0 {name=p20 sig_type=std_logic lab=GND}
C {lab_wire.sym} -70 90 0 0 {name=p11 sig_type=std_logic lab=ColSel}
C {sky130_cells/Floating_Gates/Indirect/FG_Indirect.sym} 320 0 0 0 {name=FG_Indrct}
C {lab_wire.sym} 230 -130 0 0 {name=p12 sig_type=std_logic lab=ColSel}
C {lab_wire.sym} 250 -150 0 0 {name=p13 sig_type=std_logic lab=VTUN}
C {lab_wire.sym} 270 -170 0 0 {name=p14 sig_type=std_logic lab=Vg}
C {lab_wire.sym} 330 -130 0 0 {name=p21 sig_type=std_logic lab=VINJ}
C {lab_wire.sym} 380 -130 0 0 {name=p22 sig_type=std_logic lab=Vs}
C {lab_wire.sym} 350 90 0 0 {name=p23 sig_type=std_logic lab=GND}
C {lab_wire.sym} 230 90 0 0 {name=p24 sig_type=std_logic lab=ColSel}
C {lab_wire.sym} -70 190 0 0 {name=p25 sig_type=std_logic lab=ColSel}
C {lab_wire.sym} -50 170 0 0 {name=p26 sig_type=std_logic lab=VTUN}
C {lab_wire.sym} -30 150 0 0 {name=p27 sig_type=std_logic lab=Vg}
C {lab_wire.sym} 30 190 0 0 {name=p28 sig_type=std_logic lab=VINJ}
C {lab_wire.sym} 80 190 0 0 {name=p29 sig_type=std_logic lab=Vs}
C {lab_wire.sym} 50 410 0 0 {name=p30 sig_type=std_logic lab=GND}
C {lab_wire.sym} -70 410 0 0 {name=p31 sig_type=std_logic lab=ColSel}
C {lab_wire.sym} 230 190 0 0 {name=p32 sig_type=std_logic lab=ColSel}
C {lab_wire.sym} 250 170 0 0 {name=p33 sig_type=std_logic lab=VTUN}
C {lab_wire.sym} 270 150 0 0 {name=p34 sig_type=std_logic lab=Vg}
C {lab_wire.sym} 330 190 0 0 {name=p35 sig_type=std_logic lab=VINJ}
C {lab_wire.sym} 380 190 0 0 {name=p36 sig_type=std_logic lab=Vs}
C {lab_wire.sym} 350 410 0 0 {name=p37 sig_type=std_logic lab=GND}
C {lab_wire.sym} 230 410 0 0 {name=p38 sig_type=std_logic lab=ColSel}
C {lab_wire.sym} -70 490 0 0 {name=p39 sig_type=std_logic lab=ColSel}
C {lab_wire.sym} -50 470 0 0 {name=p40 sig_type=std_logic lab=VTUN}
C {lab_wire.sym} -30 450 0 0 {name=p41 sig_type=std_logic lab=Vg}
C {lab_wire.sym} 30 490 0 0 {name=p42 sig_type=std_logic lab=VINJ}
C {lab_wire.sym} 80 490 0 0 {name=p43 sig_type=std_logic lab=Vs}
C {lab_wire.sym} 50 710 0 0 {name=p44 sig_type=std_logic lab=GND}
C {lab_wire.sym} -70 710 0 0 {name=p45 sig_type=std_logic lab=ColSel}
C {lab_wire.sym} 230 490 0 0 {name=p46 sig_type=std_logic lab=ColSel}
C {lab_wire.sym} 250 470 0 0 {name=p47 sig_type=std_logic lab=VTUN}
C {lab_wire.sym} 270 450 0 0 {name=p48 sig_type=std_logic lab=Vg}
C {lab_wire.sym} 330 490 0 0 {name=p49 sig_type=std_logic lab=VINJ}
C {lab_wire.sym} 380 490 0 0 {name=p50 sig_type=std_logic lab=Vs}
C {lab_wire.sym} 350 710 0 0 {name=p51 sig_type=std_logic lab=GND}
C {lab_wire.sym} 230 710 0 0 {name=p52 sig_type=std_logic lab=ColSel}
C {lab_wire.sym} -80 810 0 0 {name=p53 sig_type=std_logic lab=ColSel}
C {lab_wire.sym} -60 790 0 0 {name=p54 sig_type=std_logic lab=VTUN}
C {lab_wire.sym} -40 770 0 0 {name=p55 sig_type=std_logic lab=fgmem_Vg[0]}
C {lab_wire.sym} 20 810 0 0 {name=p56 sig_type=std_logic lab=VINJ}
C {lab_wire.sym} 70 780 0 0 {name=p57 sig_type=std_logic lab=fgmem_Vs_R[0]}
C {lab_wire.sym} 40 1030 0 0 {name=p58 sig_type=std_logic lab=GND}
C {lab_wire.sym} -80 1030 0 0 {name=p59 sig_type=std_logic lab=ColSel}
C {lab_wire.sym} 220 810 0 0 {name=p60 sig_type=std_logic lab=ColSel}
C {lab_wire.sym} 240 790 0 0 {name=p61 sig_type=std_logic lab=VTUN}
C {lab_wire.sym} 260 770 0 0 {name=p62 sig_type=std_logic lab=fgmem_Vg[1]}
C {lab_wire.sym} 320 810 0 0 {name=p63 sig_type=std_logic lab=VINJ}
C {lab_wire.sym} 370 780 0 0 {name=p64 sig_type=std_logic lab=fgmem_Vs_R[1]}
C {lab_wire.sym} 340 1030 0 0 {name=p65 sig_type=std_logic lab=GND}
C {lab_wire.sym} 220 1030 0 0 {name=p66 sig_type=std_logic lab=ColSel}
C {sky130_cells/Floating_Gates/Indirect/FG_Indirect.sym} 20 320 0 0 {name=FG_Indrct2}
C {sky130_cells/Floating_Gates/Indirect/FG_Indirect.sym} 320 320 0 0 {name=FG_Indrct3}
C {sky130_cells/Floating_Gates/Indirect/FG_Indirect.sym} 20 620 0 0 {name=FG_Indrct4}
C {sky130_cells/Floating_Gates/Indirect/FG_Indirect.sym} 320 620 0 0 {name=FG_Indrct5}
C {sky130_cells/Floating_Gates/Indirect/FG_Indirect.sym} 10 940 0 0 {name=FG_Indrct6}
C {sky130_cells/Floating_Gates/Indirect/FG_Indirect.sym} 310 940 0 0 {name=FG_Indrct7}
C {lab_wire.sym} 470 990 0 1 {name=p68 sig_type=std_logic lab=Vd_Prog[3]}
C {lab_wire.sym} 480 650 0 1 {name=p69 sig_type=std_logic lab=Vd_Run[2]}
C {lab_wire.sym} 480 670 0 1 {name=p70 sig_type=std_logic lab=Vd_Prog[2]}
C {lab_wire.sym} 480 350 0 1 {name=p71 sig_type=std_logic lab=Vd_Run[1]}
C {lab_wire.sym} 480 370 0 1 {name=p72 sig_type=std_logic lab=Vd_Prog[1]}
C {lab_wire.sym} 470 970 0 1 {name=p73 sig_type=std_logic lab=fgmem[1]}
C {lab_wire.sym} 480 50 0 1 {name=p74 sig_type=std_logic lab=Vd_Prog[0]}
C {lab_wire.sym} -150 970 2 1 {name=p75 sig_type=std_logic lab=fgmem[0]}
C {iopin.sym} -320 -40 0 0 {name=p76 lab=fgmem[0:1]}
C {lab_wire.sym} 480 30 0 1 {name=p9 sig_type=std_logic lab=Vd_Run[0]}
C {iopin.sym} -320 40 0 0 {name=p10 lab=fgmem_Vg[0:1]}
C {iopin.sym} -320 60 0 0 {name=p67 lab=fgmem_Vs_R[0:1]}
