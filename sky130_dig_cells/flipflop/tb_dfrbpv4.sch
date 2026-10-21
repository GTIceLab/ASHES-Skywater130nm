v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 440 -200 970 -10 {flags=graph
y1=-.1
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1

x2=1.8552215e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="12 4"
node="q


q_n"
x1=-1.4477852e-08}
N -140 130 -40 130 {lab=VPWR}
N -140 60 -140 130 {lab=VPWR}
N 20 130 100 130 {lab=GND}
N 100 60 100 130 {lab=GND}
N -140 60 -100 60 {lab=VPWR}
N 60 60 100 60 {lab=GND}
N -210 -10 -180 -10 {lab=RESET_B}
N -210 50 -210 160 {lab=GND}
N -210 160 20 160 {lab=GND}
N 20 130 20 160 {lab=GND}
N -210 -40 -180 -40 {lab=D}
N -290 -70 -180 -70 {lab=CLK}
N -290 50 -210 50 {lab=GND}
N 140 10 170 10 {lab=Q_N}
N 170 10 170 30 {lab=Q_N}
N 140 -60 250 -60 {lab=Q}
N 250 -60 250 30 {lab=Q}
N 170 90 170 130 {lab=GND}
N 100 130 170 130 {lab=GND}
N 170 130 250 130 {lab=GND}
N 250 90 250 130 {lab=GND}
N -250 -40 -210 -40 {lab=D}
N 170 30 170 40 {lab=Q_N}
N 100 130 100 160 {lab=GND}
N -470 50 -290 50 {lab=GND}
N -470 -10 -470 50 {lab=GND}
N -470 -70 -290 -70 {lab=CLK}
N -450 -40 -250 -40 {lab=D}
N -450 -40 -450 -10 {lab=D}
N -220 -10 -210 -10 {lab=RESET_B}
N -300 -10 -220 -10 {lab=RESET_B}
C {sky130_dig_cells/flipflop/sky130_fd_sc_hd__dfrbp_1.sym} -20 -70 0 0 {name=x1}
C {vsource.sym} -10 130 3 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} -450 20 0 0 {name=V2 value="PULSE(1.8 0 0 1p 1p 50n 100n)" savecurrent=false}
C {vsource.sym} -470 -40 0 0 {name=V3 value="PULSE(0 1.8 0 50p 50p 5n 10n)" savecurrent=false}
C {vsource.sym} -300 20 0 0 {name=V4 value="PULSE(0 1.8 70n 1p 1p 1 2)" savecurrent=false}
C {lab_wire.sym} -240 -70 0 0 {name=p1 sig_type=std_logic lab=CLK}
C {lab_wire.sym} -210 -40 0 0 {name=p3 sig_type=std_logic lab=D}
C {lab_wire.sym} -200 -10 0 0 {name=p4 sig_type=std_logic lab=RESET_B}
C {lab_wire.sym} -90 130 0 0 {name=p5 sig_type=std_logic lab=VPWR}
C {lab_wire.sym} 190 -60 0 0 {name=p6 sig_type=std_logic lab=Q}
C {lab_wire.sym} 160 10 0 0 {name=p7 sig_type=std_logic lab=Q_N}
C {devices/launcher.sym} 605 -245 0 0 {name=h3 
descr="Ctrl-click to load ngspice data" 
tclcommand="

  if \{ [sim_is_xyce] \} \{ ;# using an if \{\} allows to differentiate file names
    xschem raw_read $netlist_dir/tb_dfrbp.raw tran
  \} else \{
    xschem raw_read $netlist_dir/tb_dfrbp.raw tran
  \}
"
}
C {devices/simulator_commands_shown.sym} -610 -400 0 0 {name=NGSPICE_Sim
simulator=ngspice
only_toplevel=false
value="
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include sky130_fd_sc_hd__dfrbp_1.spice

.tran 0.1n 200n
.control
save all
run
write tb_dfrbp.raw
quit 0
.endc
"}
C {gnd.sym} 100 160 0 0 {name=l1 lab=GND}
