v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 150 -730 290 -730 {
lab=Node[0]}
N 150 -530 290 -530 {
lab=Node[1]}
N 150 -330 290 -330 {
lab=Node[2]}
N 150 -130 290 -130 {
lab=Node[3]}
N 150 -830 150 -810 {
lab=VREFin}
N 110 -830 150 -830 {
lab=VREFin}
N 150 -750 150 -710 {
lab=Node[0]}
N 150 -650 150 -610 {
lab=#net1}
N 150 -550 150 -510 {
lab=Node[1]}
N 150 -450 150 -410 {
lab=#net2}
N 150 -350 150 -310 {
lab=Node[2]}
N 150 -250 150 -210 {
lab=#net3}
N 150 -150 150 -110 {
lab=Node[3]}
N 150 -50 150 -30 {
lab=VREFout}
N 230 -30 250 -30 {
lab=VREFout}
N 150 -30 230 -30 {
lab=VREFout}
C {iopin.sym} 250 -30 0 0 {name=p1 lab=VREFout

}
C {iopin.sym} 110 -830 2 0 {name=p8 lab=VREFin

}
C {opin.sym} 470 -430 0 0 {name=p2 lab=Node[3:0]}
C {lab_pin.sym} 290 -730 2 0 {name=p59 sig_type=std_logic lab=Node[0]}
C {lab_pin.sym} 290 -530 2 0 {name=p3 sig_type=std_logic lab=Node[1]}
C {lab_pin.sym} 290 -330 2 0 {name=p4 sig_type=std_logic lab=Node[2]}
C {lab_pin.sym} 290 -130 2 0 {name=p5 sig_type=std_logic lab=Node[3]}
C {sky130_fd_pr/res_generic_po.sym} 150 -780 0 0 {name=R1
W=0.33
L=10.19
model=res_generic_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_generic_po.sym} 150 -680 0 0 {name=R2
W=0.33
L=10.19
model=res_generic_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_generic_po.sym} 150 -580 0 0 {name=R3
W=0.33
L=10.19
model=res_generic_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_generic_po.sym} 150 -480 0 0 {name=R4
W=0.33
L=10.19
model=res_generic_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_generic_po.sym} 150 -380 0 0 {name=R5
W=0.33
L=10.19
model=res_generic_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_generic_po.sym} 150 -280 0 0 {name=R6
W=0.33
L=10.19
model=res_generic_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_generic_po.sym} 150 -180 0 0 {name=R7
W=0.33
L=10.19
model=res_generic_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_generic_po.sym} 150 -80 0 0 {name=R8
W=0.33
L=10.19
model=res_generic_po
spiceprefix=X
mult=1}
