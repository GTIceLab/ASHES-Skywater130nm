v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -120 100 -80 100 {
lab=GND}
N -80 100 -80 220 {
lab=GND}
N -120 220 -80 220 {
lab=GND}
N -120 220 -120 240 {
lab=GND}
N -120 -40 -80 -40 {
lab=GND}
N -80 -40 -80 90 {
lab=GND}
N -80 90 -80 100 {
lab=GND}
N -120 -180 -80 -180 {
lab=GND}
N -80 -180 -80 -40 {
lab=GND}
N -100 -220 -20 -220 {
lab=Out}
N -20 -220 -20 -80 {
lab=Out}
N -20 -80 -20 60 {
lab=Out}
N -20 60 -20 180 {
lab=Out}
N -100 180 -20 180 {
lab=Out}
N -100 60 -20 60 {
lab=Out}
N -100 -80 -20 -80 {
lab=Out}
N -20 -40 40 -40 {
lab=Out}
N -120 20 -60 20 {
lab=VDD}
N -60 -380 -60 20 {
lab=VDD}
N -120 -260 -60 -260 {
lab=VDD}
N -120 -120 -60 -120 {
lab=VDD}
N -120 140 -60 140 {
lab=VDD}
N -60 20 -60 140 {
lab=VDD}
N -90 -380 -60 -380 {
lab=VDD}
N -120 240 -120 250 {
lab=GND}
N -680 40 -180 40 {
lab=D2}
N -680 -100 -180 -100 {
lab=D1}
N -680 -240 -180 -240 {
lab=D0}
N -380 20 -360 20 {
lab=VREFout}
N -360 20 -360 80 {
lab=VREFout}
N -380 -20 -360 -20 {
lab=VREFin}
N -360 -80 -360 -20 {
lab=VREFin}
N -380 -0 -280 -0 {
lab=Node[3:0] bus = true}
N -270 -220 -180 -220 {
lab=Node[0]}
N -280 -230 -280 0 {
lab=Node[3:0] bus = true}
N -270 -80 -180 -80 {
lab=Node[1]}
N -270 60 -180 60 {
lab=Node[2]}
N -270 180 -180 180 {
lab=Node[3]}
N -280 -0 -280 170 {
lab=Node[3:0] bus = true}
N -200 140 -140 140 {
lab=D3}
N -180 20 -180 40 {
lab=D2}
N -180 20 -140 20 {
lab=D2}
N -180 -120 -180 -100 {
lab=D1}
N -180 -120 -140 -120 {
lab=D1}
N -180 -260 -180 -240 {
lab=D0}
N -180 -260 -140 -260 {
lab=D0}
N -680 140 -200 140 {
lab=D3}
C {iopin.sym} -90 -380 2 0 {name=p2 lab=VDD

}
C {opin.sym} 40 -40 0 0 {name=p3 lab=Out
}
C {sky130_cells/RDAC/Design/Tgate.sym} -40 -80 0 0 {name=x1}
C {sky130_cells/RDAC/Design/Tgate.sym} -40 60 0 0 {name=x2}
C {sky130_cells/RDAC/Design/Tgate.sym} -40 200 0 0 {name=x3}
C {sky130_cells/RDAC/Design/Tgate.sym} -40 320 0 0 {name=x4}
C {ipin.sym} -680 -240 0 0 {name=p4 lab=D0}
C {ipin.sym} -680 -100 0 0 {name=p5 lab=D1}
C {ipin.sym} -680 40 0 0 {name=p6 lab=D2}
C {ipin.sym} -680 140 0 0 {name=p7 lab=D3}
C {iopin.sym} -120 250 0 0 {name=p9 lab=GND

}
C {iopin.sym} -360 80 0 0 {name=p1 lab=VREFout

}
C {iopin.sym} -360 -80 0 0 {name=p13 lab=VREFin

}
C {sky130_cells/RDAC/Design/sky130_hilas_resistor_string.sym} -530 0 0 0 {name=x5}
C {bus_connect.sym} -280 -230 1 0 {name=l1 lab=Node[0]}
C {bus_connect.sym} -280 -90 1 0 {name=l2 lab=Node[1]}
C {bus_connect.sym} -280 50 1 0 {name=l3 lab=Node[2]}
C {bus_connect.sym} -280 170 1 0 {name=l4 lab=Node[3]}
C {lab_pin.sym} -280 -20 2 0 {name=p8 sig_type=std_logic lab=Node[3:0]}
