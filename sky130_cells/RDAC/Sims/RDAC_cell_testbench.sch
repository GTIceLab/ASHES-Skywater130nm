v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 780 -150 780 -130 {
lab=GND}
N 780 -160 780 -150 {
lab=GND}
N 760 -160 780 -160 {
lab=GND}
N 760 -180 780 -180 {
lab=GND}
N 780 -180 780 -160 {
lab=GND}
N 720 -220 780 -220 {
lab=Out}
N 720 -200 760 -200 {
lab=Vinj[0]}
N 720 -180 760 -180 {
lab=GND}
N 720 -160 760 -160 {
lab=GND}
N 320 -220 400 -220 {
lab=IN[1:0] bus=true}
N 400 -240 400 -220 {
lab=IN[1:0] bus=true}
N 400 -240 420 -240 {
lab=IN[1:0] bus=true}
N 320 -220 320 -190 {
lab=IN[1:0] bus=true}
N 310 -190 320 -190 {
lab=IN[1:0]}
N 320 -190 320 -150 {
lab=IN[1:0] bus=true}
N 310 -150 320 -150 {
lab=IN[1:0]}
N 260 -140 300 -140 {
lab=IN[0]}
N 260 -180 300 -180 {
lab=IN[1]}
N 1360 -20 1360 0 {
lab=GND}
N 1360 -110 1360 -80 {
lab=IN[0]}
N 420 -220 420 -180 {
lab=Ven}
N 380 -180 420 -180 {
lab=Ven}
N 870 -240 870 -210 {
lab=Vinj[2:0] bus=true}
N 870 -170 880 -170 {
lab=Vinj[2:0]}
N 870 -210 870 -170 {
lab=Vinj[2:0] bus=true}
N 870 -210 880 -210 {
lab=Vinj[2:0]}
N 890 -200 930 -200 {
lab=Vinj[1]}
N 890 -160 930 -160 {
lab=Vinj[0]}
N 720 -240 800 -240 {
lab=Vinj[2:0] bus=true}
N 800 -240 870 -240 {
lab=Vinj[2:0] bus = true}
C {gnd.sym} 780 -130 0 0 {name=l1 lab=GND}
C {vsource.sym} 1080 -130 0 0 {name=Vinj value=5 savecurrent=false}
C {gnd.sym} 1080 -100 0 0 {name=Vinj1 lab=GND
value=5}
C {lab_pin.sym} 1080 -160 2 0 {name=p9 sig_type=std_logic lab=Vinj[0]}
C {vsource.sym} 1080 -270 0 0 {name=Ven value=5 savecurrent=false}
C {gnd.sym} 1080 -240 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 1080 -300 0 0 {name=p13 sig_type=std_logic lab=Ven}
C {code_shown.sym} 1170 -570 0 0 {name=SPICE only_toplevel=false value="
.control
	tran 0.1n 2000n
	plot V(net1) title 'Decoder Inputs'
	plot V(Out) title 'DAC Out'
	plot V(x1e.net1) title 'OUT00'
	plot V(x1e.net2) title 'OUT01'
	plot V(x1e.net3) title 'OUT10'
	plot V(x1e.net4) title 'OUT11'
.
.endc

.end"
}
C {lab_pin.sym} 780 -220 2 0 {name=p1 sig_type=std_logic lab=Out}
C {lab_pin.sym} 260 -140 0 0 {name=p4 sig_type=std_logic lab=IN[0]}
C {lab_pin.sym} 260 -180 0 0 {name=p8 sig_type=std_logic lab=IN[1]}
C {lab_pin.sym} 380 -180 0 0 {name=p10 sig_type=std_logic lab=Ven}
C {bus_connect_nolab.sym} 300 -180 0 0 {name=r3}
C {bus_connect_nolab.sym} 300 -140 0 0 {name=r1}
C {lab_pin.sym} 340 -220 1 0 {name=IN[1:0] sig_type=std_logic lab=IN[1:0]}
C {vsource.sym} 1360 -50 0 0 {name=Vin1 value="pulse 5 0 0 1n 1n 500n 1000n" savecurrent=false}
C {gnd.sym} 1360 0 0 0 {name=l2 lab=GND}
C {vsource.sym} 1360 -180 0 0 {name=Vin4 value="pulse 5 0 0 1n 1n 1000n 2000n" savecurrent=false}
C {gnd.sym} 1360 -150 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 1360 -210 2 0 {name=p5 sig_type=std_logic lab=In[1]}
C {lab_pin.sym} 1360 -110 0 0 {name=p11 sig_type=std_logic lab=IN[0]}
C {devices/code.sym} 880 -510 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {lab_pin.sym} 930 -160 2 0 {name=p3 sig_type=std_logic lab=Vinj[0]}
C {lab_pin.sym} 930 -200 2 0 {name=p6 sig_type=std_logic lab=Vinj[1]}
C {bus_connect_nolab.sym} 890 -160 3 0 {name=r2}
C {bus_connect_nolab.sym} 890 -200 3 0 {name=r4}
C {lab_pin.sym} 760 -200 2 0 {name=p7 sig_type=std_logic lab=Vinj[0]}
C {lab_pin.sym} 870 -240 0 1 {name=IN1[1:0] sig_type=std_logic lab=Vinj[2:0]}
C {vsource.sym} 1170 -130 0 0 {name=Vinj2 value=5 savecurrent=false}
C {gnd.sym} 1170 -100 0 0 {name=Vinj3 lab=GND
value=5}
C {lab_pin.sym} 1170 -160 2 0 {name=p2 sig_type=std_logic lab=Vinj[1]}
C {sky130_cells/RDAC/Design/sky130_hilas_CellVoltageDAC01.sym} 570 -200 0 0 {name=x1}
