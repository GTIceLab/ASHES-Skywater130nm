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

x2=1.9534701
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
x1=-0.046530021}
N -40 -110 -40 -90 {
lab=VDD}
N 240 -160 240 -140 {
lab=VDD}
N 90 -100 90 -80 {
lab=I}
N 120 -110 120 -100 {lab=I}
N 310 -100 320 -100 {lab=Z}
N 90 -110 90 -100 {lab=I}
N 90 -110 140 -110 {lab=I}
N -40 -140 -40 -110 {lab=VDD}
N -40 -140 240 -140 {lab=VDD}
C {gnd.sym} -40 -30 0 0 {name=l1 lab=GND}
C {vsource.sym} -40 -60 0 0 {name=V1 value= 1.8
  savecurrent=false}
C {gnd.sym} 240 -60 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -40 -110 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 240 -160 2 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 320 -100 0 1 {name=p3 sig_type=std_logic lab=Z}
C {gnd.sym} 90 -20 0 0 {name=l3 lab=GND}
C {vsource.sym} 90 -50 0 0 {name=V2 value= 0  savecurrent=false}
C {devices/code.sym} -110 -280 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt"}
C {lab_pin.sym} 120 -110 2 0 {name=p4 sig_type=std_logic lab=I}
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
C {sky130_cells/Practice/Example_Inverter/buffer_Test.sym} 290 -90 0 0 {name=x1}
C {code_shown.sym} 620 -200 0 0 {name=NGSPICE_Sim
simulator=ngspice
only_toplevel=false
value="
.dc V2 0 1.8 0.01
.control
run
plot v(I) v(Z)
write testing_buffer.raw
quit 0
.endc
"}
