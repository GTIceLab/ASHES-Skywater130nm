v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 30 -400 560 -210 {flags=graph
y1=-.1
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1

x2=2.5498118e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="4 5"
node="z
I"
x1=7.5278665e-09}
N -40 -110 -40 -90 {
lab=VDD}
N 240 -190 240 -170 {
lab=VDD}
N 340 -110 370 -110 {
lab=Z}
N 60 -110 60 -90 {
lab=I}
N 60 -110 140 -110 {
lab=I}
N 360 -110 360 -90 {
lab=Z}
N 200 -70 210 -70 {lab=GND}
N 270 -110 350 -110 {lab=Z}
N 210 -150 240 -150 {lab=VDD}
N 240 -170 240 -150 {lab=VDD}
C {gnd.sym} -40 -30 0 0 {name=l1 lab=GND}
C {vsource.sym} -40 -60 0 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} 200 -70 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -40 -110 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 240 -190 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 370 -110 0 1 {name=p3 sig_type=std_logic lab=Z}
C {gnd.sym} 60 -30 0 0 {name=l3 lab=GND}
C {vsource.sym} 60 -60 0 0 {name=Vin value= 0 savecurrent=false}
C {devices/code.sym} -110 -280 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt"}
C {devices/simulator_commands_shown.sym} 610 -250 0 0 {name=NGSPICE_Sim
simulator=ngspice
only_toplevel=false 
value=" 

.dc Vin 0 1.8 0.01

.control
run
plot v(out) v(in)
write test_exampleinv_vtc.raw
quit
.endc
"}
C {lab_pin.sym} 80 -110 1 0 {name=p4 sig_type=std_logic lab=I}
C {devices/launcher.sym} 215 -425 0 0 {name=h3 
descr="Ctrl-click to load ngspice data" 
tclcommand="

  if \{ [sim_is_xyce] \} \{ ;# using an if \{\} allows to differentiate file names
    xschem raw_read $netlist_dir/test_inv.raw tran
  \} else \{
    xschem raw_read $netlist_dir/test_exampleinv.raw tran
  \}
"
}
C {devices/parax_cap.sym} 360 -80 0 0 {name=C6 gnd=0 value=100f m=1}
C {sky130_cells/Practice/Example_Inverter/Example_Inverter.sym} 260 -100 0 0 {name=x1}
