v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {D Flip Flop w/ LOW RESET} 180 -630 0 0 0.4 0.4 {}
T {D Flip Flop w/ LOW RESET} 980 -620 0 0 0.4 0.4 {}
T {IMPORTANT NOTE: Changed flip flop FETs with W = 0.36um from 
"sky130_fd_pr__nfet_01v8" to "sky130_fd_pr__special_nfet_01v8"
in SPICE netlist} -340 -290 0 0 0.4 0.4 {}
T {IMPORTANT NOTE: Changed cap_var names to all be 
"sky130_fd_pr__cap_var" in SPICE netlist} -340 -170 0 0 0.4 0.4 {}
N 670 60 670 70 {lab=#net1}
N 670 70 670 110 {lab=#net1}
N 670 110 860 110 {lab=#net1}
N 860 60 860 110 {lab=#net1}
N 860 -10 860 0 {lab=Scan_Vout}
N 860 -50 860 -10 {lab=Scan_Vout}
N 670 -50 860 -50 {lab=Scan_Vout}
N 670 -50 670 0 {lab=Scan_Vout}
N 670 30 710 30 {lab=VDD}
N 820 30 860 30 {lab=GND}
N 560 290 760 290 {lab=#net1}
N 770 110 770 290 {lab=#net1}
N 760 290 770 290 {lab=#net1}
N 770 -190 770 -50 {lab=Scan_Vout}
N 1340 60 1340 70 {lab=#net2}
N 1340 70 1340 110 {lab=#net2}
N 1340 110 1530 110 {lab=#net2}
N 1530 60 1530 110 {lab=#net2}
N 1530 -10 1530 0 {lab=Scan_Vout}
N 1530 -50 1530 -10 {lab=Scan_Vout}
N 1340 -50 1530 -50 {lab=Scan_Vout}
N 1340 -50 1340 0 {lab=Scan_Vout}
N 1340 30 1380 30 {lab=VDD}
N 1490 30 1530 30 {lab=GND}
N 1230 290 1430 290 {lab=#net2}
N 1440 110 1440 290 {lab=#net2}
N 1430 290 1440 290 {lab=#net2}
N 1440 -190 1440 -50 {lab=Scan_Vout}
N 770 -190 1440 -190 {lab=Scan_Vout}
N 470 -190 770 -190 {lab=Scan_Vout}
N 480 120 480 160 {lab=GND}
N 460 120 460 160 {lab=VINJ}
N 400 120 400 160 {lab=Vg[0]}
N 380 120 380 160 {lab=VTUN}
N 360 120 360 160 {lab=Vsel[0]}
N 560 310 600 310 {lab=Vd_P}
N 600 310 1010 310 {lab=Vd_P}
N 300 310 340 310 {lab=Vd_P}
N 1150 120 1150 160 {lab=GND}
N 1130 120 1130 160 {lab=VINJ}
N 1070 120 1070 160 {lab=Vg[1]}
N 1050 120 1050 160 {lab=VTUN}
N 1030 120 1030 160 {lab=Vsel[1]}
N 630 -330 630 30 {lab=#net3}
N 900 -330 900 30 {lab=#net4}
N 1300 -330 1300 30 {lab=#net5}
N 1570 -330 1570 30 {lab=Q}
N 200 -420 230 -420 {lab=VDD}
N 190 -420 200 -420 {lab=VDD}
N 390 -420 430 -420 {lab=GND}
N 210 -420 210 -400 {lab=VDD}
N 410 -420 410 -400 {lab=GND}
N 80 -520 150 -520 {lab=D}
N 80 -550 150 -550 {lab=CLK}
N 80 -490 150 -490 {lab=RST_b}
N 1000 -420 1030 -420 {lab=VDD}
N 990 -420 1000 -420 {lab=VDD}
N 1190 -420 1230 -420 {lab=GND}
N 1010 -420 1010 -400 {lab=VDD}
N 1210 -420 1210 -400 {lab=GND}
N 880 -520 950 -520 {lab=#net4}
N 880 -550 950 -550 {lab=CLK}
N 880 -490 950 -490 {lab=RST_b}
N 470 -540 830 -540 {lab=#net4}
N 830 -540 830 -520 {lab=#net4}
N 830 -520 880 -520 {lab=#net4}
N 470 -470 630 -470 {lab=#net3}
N 630 -470 630 -330 {lab=#net3}
N 690 -540 690 -330 {lab=#net4}
N 690 -330 900 -330 {lab=#net4}
N 1300 -470 1300 -340 {lab=#net5}
N 1270 -470 1300 -470 {lab=#net5}
N 1300 -340 1300 -330 {lab=#net5}
N 1270 -540 1570 -540 {lab=Q}
N 1570 -540 1570 -330 {lab=Q}
N 510 120 510 160 {lab=Vin[0]}
N 1180 120 1180 160 {lab=Vin[1]}
N 1570 -540 1670 -540 {lab=Q}
C {iopin.sym} -480 -40 2 0 {name=p1 lab=GND}
C {iopin.sym} -480 -70 2 0 {name=p2 lab=VDD}
C {ipin.sym} -480 -260 0 0 {name=p3 lab=RST_b}
C {ipin.sym} -480 -290 0 0 {name=p4 lab=CLK}
C {ipin.sym} -480 -230 0 0 {name=p5 lab=D}
C {opin.sym} -500 -200 0 0 {name=p6 lab=Q}
C {iopin.sym} -480 -130 2 0 {name=p7 lab=Scan_Vout}
C {ipin.sym} -480 -10 0 0 {name=p8 lab=VTUN}
C {ipin.sym} -480 20 0 0 {name=p9 lab=VINJ}
C {ipin.sym} -480 50 0 0 {name=p10 lab=Vsel[0:1]}
C {iopin.sym} -480 80 2 0 {name=p11 lab=Vin[0:1]}
C {ipin.sym} -480 110 0 0 {name=p12 lab=Vg[0:1]}
C {iopin.sym} -480 140 2 0 {name=p13 lab=Vd_P}
C {sky130_cells/Floating_Gates/Indirect/FG_Indirect.sym} 450 260 0 0 {name=x3}
C {lab_wire.sym} 710 30 2 0 {name=M3 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 820 30 0 0 {name=M4 sig_type=std_logic lab=GND}
C {sky130_cells/Floating_Gates/Indirect/FG_Indirect.sym} 1120 260 0 0 {name=x2}
C {lab_wire.sym} 1380 30 2 0 {name=M7 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1490 30 0 0 {name=M8 sig_type=std_logic lab=GND}
C {lab_wire.sym} 300 310 0 0 {name=p14 sig_type=std_logic lab=Vd_P}
C {lab_wire.sym} 380 120 1 0 {name=p15 sig_type=std_logic lab=VTUN}
C {lab_wire.sym} 1050 120 1 0 {name=p16 sig_type=std_logic lab=VTUN}
C {lab_wire.sym} 480 120 1 0 {name=p17 sig_type=std_logic lab=GND}
C {lab_wire.sym} 1150 120 1 0 {name=p18 sig_type=std_logic lab=GND}
C {lab_wire.sym} 400 120 1 0 {name=p19 sig_type=std_logic lab=Vg[0]}
C {lab_wire.sym} 1070 120 1 0 {name=p20 sig_type=std_logic lab=Vg[1]}
C {lab_wire.sym} 460 120 1 0 {name=p21 sig_type=std_logic lab=VINJ}
C {lab_wire.sym} 1130 120 1 0 {name=p22 sig_type=std_logic lab=VINJ}
C {lab_wire.sym} 360 120 1 0 {name=p23 sig_type=std_logic lab=Vsel[0]}
C {lab_wire.sym} 1030 120 1 0 {name=p24 sig_type=std_logic lab=Vsel[1]}
C {sky130_fd_pr/nfet_01v8.sym} 880 30 2 0 {name=M9
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 650 30 0 0 {name=M10
L=0.15
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1550 30 2 0 {name=M1
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 1320 30 0 0 {name=M2
L=0.15
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_dig_cells/flipflop/sky130_fd_sc_hd__dfrbp_1.sym} 310 -550 0 0 {name=x1}
C {lab_wire.sym} 210 -400 3 0 {name=p25 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 410 -400 3 0 {name=p26 sig_type=std_logic lab=GND}
C {lab_wire.sym} 80 -520 0 0 {name=p27 sig_type=std_logic lab=D}
C {lab_wire.sym} 80 -550 0 0 {name=p28 sig_type=std_logic lab=CLK}
C {lab_wire.sym} 80 -490 0 0 {name=p29 sig_type=std_logic lab=RST_b}
C {sky130_dig_cells/flipflop/sky130_fd_sc_hd__dfrbp_1.sym} 1110 -550 0 0 {name=x4}
C {lab_wire.sym} 1010 -400 3 0 {name=p30 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1210 -400 3 0 {name=p31 sig_type=std_logic lab=GND}
C {lab_wire.sym} 880 -550 0 0 {name=p33 sig_type=std_logic lab=CLK}
C {lab_wire.sym} 880 -490 0 0 {name=p34 sig_type=std_logic lab=RST_b}
C {lab_wire.sym} 470 -190 0 0 {name=p32 sig_type=std_logic lab=Scan_Vout}
C {code.sym} -550 -450 0 0 {name=FlipFlop_Include
only_toplevel=true
value=".include ../../sky130_dig_cells/flipflop/sky130_fd_sc_hd__dfrbp_1.spice"
}
C {lab_wire.sym} 1180 120 1 0 {name=p35 sig_type=std_logic lab=Vin[1]}
C {lab_wire.sym} 510 120 1 0 {name=p36 sig_type=std_logic lab=Vin[0]}
C {lab_wire.sym} 1670 -540 0 0 {name=p37 sig_type=std_logic lab=Q}
