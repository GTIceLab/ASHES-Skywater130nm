v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -840 -20 -810 -20 { lab=VPWR}
N -750 -20 -730 -20 { lab=#net1}
N -690 -20 -660 -20 { lab=#net1}
N -730 -20 -690 -20 { lab=#net1}
N -660 -20 -640 -20 { lab=#net1}
N -640 -20 -640 10 { lab=#net1}
N -520 -20 -490 -20 { lab=#net1}
N -320 -20 -320 10 { lab=#net2}
N -640 -20 -520 -20 { lab=#net1}
N -130 -20 -110 -20 { lab=#net3}
N -70 -20 -40 -20 { lab=#net3}
N -110 -20 -70 -20 { lab=#net3}
N -40 -20 -20 -20 { lab=#net3}
N -20 -20 -20 10 { lab=#net3}
N -320 -20 -190 -20 { lab=#net2}
N 170 -20 190 -20 { lab=#net4}
N 230 -20 260 -20 { lab=#net4}
N 190 -20 230 -20 { lab=#net4}
N 260 -20 280 -20 { lab=#net4}
N 280 -20 280 10 { lab=#net4}
N -20 -20 110 -20 { lab=#net3}
N -320 -20 -320 10 { lab=#net2}
N -430 -20 -320 -20 { lab=#net2}
N 440 -20 460 -20 { lab=VINJ}
N 500 -20 530 -20 { lab=VINJ}
N 460 -20 500 -20 { lab=VINJ}
N 530 -20 550 -20 { lab=VINJ}
N 280 -20 380 -20 { lab=#net4}
N 550 -20 580 -20 { lab=VINJ}
N -850 -20 -840 -20 { lab=VPWR}
N -630 100 -600 100 { lab=CLK1}
N -20 100 20 100 { lab=CLK1}
N 280 110 310 110 { lab=CLK2}
N -640 100 -630 100 { lab=CLK1}
N -320 100 -300 100 { lab=CLK2}
N -300 100 -270 100 { lab=CLK2}
N -730 10 -730 20 { lab=#net1}
N -730 10 -530 10 { lab=#net1}
N -530 10 -530 20 { lab=#net1}
N -730 80 -730 90 { lab=CLK1}
N -730 90 -530 90 { lab=CLK1}
N -530 80 -530 90 { lab=CLK1}
N -640 90 -640 100 { lab=CLK1}
N -420 10 -420 20 { lab=#net2}
N -420 10 -220 10 { lab=#net2}
N -220 10 -220 20 { lab=#net2}
N -420 80 -420 90 { lab=CLK2}
N -420 90 -220 90 { lab=CLK2}
N -220 80 -220 90 { lab=CLK2}
N -320 90 -320 100 { lab=CLK2}
N -110 10 -110 20 { lab=#net3}
N -110 10 90 10 { lab=#net3}
N 90 10 90 20 { lab=#net3}
N -110 80 -110 90 { lab=CLK1}
N -110 90 90 90 { lab=CLK1}
N 90 80 90 90 { lab=CLK1}
N -20 90 -20 100 { lab=CLK1}
N 180 10 180 20 { lab=#net4}
N 180 10 380 10 { lab=#net4}
N 380 10 380 20 { lab=#net4}
N 180 80 180 90 { lab=CLK2}
N 180 90 380 90 { lab=CLK2}
N 380 80 380 90 { lab=CLK2}
N 280 90 280 110 { lab=CLK2}
N -880 -20 -850 -20 { lab=VPWR}
N 550 -20 550 10 { lab=VINJ}
N 550 110 580 110 { lab=VGND}
N 450 10 650 10 { lab=VINJ}
N 650 10 650 20 { lab=VINJ}
N 450 90 650 90 { lab=VGND}
N 650 80 650 90 { lab=VGND}
N 550 90 550 110 { lab=VGND}
N 450 10 450 20 {
lab=VINJ}
C {opin.sym} 570 -20 0 0 {name=p1 lab=VINJ}
C {ipin.sym} -880 -20 0 0 {name=p2 lab=VPWR}
C {ipin.sym} -600 100 2 0 {name=p3 lab=CLK1}
C {ipin.sym} -270 100 2 0 {name=p5 lab=CLK2}
C {sky130_fd_pr/lvsdiode.sym} -780 -20 1 0 {name=D1
model=diode_pw2nd_11v0


area=50}
C {sky130_fd_pr/lvsdiode.sym} -460 -20 1 0 {name=D2
model=diode_pw2nd_11v0


area=50}
C {sky130_fd_pr/lvsdiode.sym} -160 -20 1 0 {name=D3
model=diode_pw2nd_11v0


area=50}
C {sky130_fd_pr/lvsdiode.sym} 140 -20 1 0 {name=D4
model=diode_pw2nd_11v0


area=50}
C {sky130_fd_pr/lvsdiode.sym} 410 -20 1 0 {name=D5
model=diode_pw2nd_11v0


area=50}
C {sky130_fd_pr/cap_mim_m3_1.sym} -730 50 0 0 {name=C1 model=cap_mim_m3_1 W=15 L=5 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} -530 50 2 0 {name=C2 model=cap_mim_m3_2 W=15 L=5 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} -420 50 0 0 {name=C3 model=cap_mim_m3_1 W=15 L=5 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} -220 50 2 0 {name=C4 model=cap_mim_m3_2 W=15 L=5 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} -110 50 0 0 {name=C5 model=cap_mim_m3_1 W=15 L=5 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 90 50 2 0 {name=C6 model=cap_mim_m3_2 W=15 L=5 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 180 50 0 0 {name=C7 model=cap_mim_m3_1 W=15 L=5 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 380 50 2 0 {name=C8 model=cap_mim_m3_2 W=15 L=5 MF=1 spiceprefix=X}
C {ipin.sym} 580 110 2 0 {name=p7 lab=VGND}
C {sky130_fd_pr/cap_mim_m3_1.sym} 450 50 0 0 {name=C9 model=cap_mim_m3_1 W=80 L=5 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 650 50 2 0 {name=C10 model=cap_mim_m3_2 W=80 L=5 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 20 100 2 0 {name=p4 sig_type=std_logic lab=CLK1}
C {devices/lab_pin.sym} 310 110 2 0 {name=p6 sig_type=std_logic lab=CLK2}
