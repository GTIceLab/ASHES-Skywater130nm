v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 440 -100 440 -60 {
lab=GND}
N 440 -120 500 -120 {
lab=Vout3}
N 440 -140 500 -140 {
lab=Vout2}
N 440 -160 500 -160 {
lab=Vout1}
N 440 -180 500 -180 {
lab=Vout0}
N -220 -10 -220 10 {
lab=GND}
N -220 -100 -220 -70 {
lab=IN[0]}
N 60 -200 140 -200 {
lab=IN[1:0] bus=true}
N 60 -200 60 -170 {
lab=IN[1:0] bus=true}
N 50 -170 60 -170 {
lab=IN[1:0]}
N 60 -170 60 -130 {
lab=IN[1:0] bus=true}
N 50 -130 60 -130 {
lab=IN[1:0]}
N 0 -120 40 -120 {
lab=IN[0]}
N 0 -160 40 -160 {
lab=IN[1]}
N 610 -200 690 -200 {
lab=VINJ[1:0] bus=true}
N 690 -200 690 -170 {
lab=VINJ[1:0] bus=true}
N 690 -130 700 -130 {
lab=VINJ[1:0]}
N 690 -170 690 -130 {
lab=VINJ[1:0] bus=true}
N 690 -170 700 -170 {
lab=VINJ[1:0]}
N 720 -160 760 -160 {
lab=VINJ[1]}
N 710 -120 750 -120 {
lab=VINJ[0]}
N 710 -160 720 -160 {
lab=VINJ[1]}
N 440 -200 610 -200 {
lab=VINJ[1:0] bus=true}
C {code_shown.sym} 400 -480 0 0 {name=SPICE only_toplevel=false value="
.control
	tran 0.1n 2000n
	plot V(Vin1) V(Vin2) title 'Decoder Inputs'
	plot V(Vout0) title 'Decoder Output 00'
	plot V(Vout1) title 'Decoder Output 01'
	plot V(Vout2) title 'Decoder Output 10'
	plot V(Vout3) title 'Decoder Output 11'
	*plot V(x1.net2) title 'Inverter IN1'
	*plot V(x1.net3) title 'Inverter IN2'
	*plot V(x1.net1) title 'Inverter Enable'
.
.endc

.end"}
C {gnd.sym} 440 -60 0 0 {name=l1 lab=GND}
C {vsource.sym} -220 -40 0 0 {name=Vin1 value="pulse 5 0 0 1n 1n 500n 1000n" savecurrent=false}
C {gnd.sym} -220 10 0 0 {name=l2 lab=GND}
C {vsource.sym} -220 -170 0 0 {name=Vin2 value="pulse 5 0 0 1n 1n 1000n 2000n" savecurrent=false}
C {gnd.sym} -220 -140 0 0 {name=l4 lab=GND}
C {vsource.sym} 220 50 0 0 {name=Vinj value=5 savecurrent=false}
C {gnd.sym} 220 80 0 0 {name=Vinj1 lab=GND
value=5}
C {lab_pin.sym} 140 -180 0 0 {name=p4 sig_type=std_logic lab=Ven}
C {lab_pin.sym} 500 -180 2 0 {name=p5 sig_type=std_logic lab=Vout0}
C {lab_pin.sym} 500 -160 2 0 {name=p6 sig_type=std_logic lab=Vout1}
C {lab_pin.sym} 500 -140 2 0 {name=p7 sig_type=std_logic lab=Vout2}
C {lab_pin.sym} 500 -120 2 0 {name=p8 sig_type=std_logic lab=Vout3}
C {lab_pin.sym} 220 20 2 0 {name=p9 sig_type=std_logic lab=VINJ[0]}
C {vsource.sym} 330 50 0 0 {name=Ven value=5 savecurrent=false}
C {gnd.sym} 330 80 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 330 20 0 0 {name=p13 sig_type=std_logic lab=Ven}
C {devices/code.sym} 50 -370 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {sky130_cells/RDAC/Design/sky130_hilas_VinjDecode2to4.sym} 290 -150 0 0 {name=x1}
C {lab_pin.sym} -220 -200 2 0 {name=p2 sig_type=std_logic lab=In[1]}
C {lab_pin.sym} 0 -120 0 0 {name=p3 sig_type=std_logic lab=IN[0]}
C {lab_pin.sym} 0 -160 0 0 {name=p10 sig_type=std_logic lab=IN[1]}
C {bus_connect_nolab.sym} 40 -160 0 0 {name=r3}
C {bus_connect_nolab.sym} 40 -120 0 0 {name=r1}
C {lab_pin.sym} 80 -200 1 0 {name=IN[1:0] sig_type=std_logic lab=IN[1:0]}
C {lab_pin.sym} -220 -100 0 0 {name=p11 sig_type=std_logic lab=IN[0]}
C {lab_pin.sym} 750 -120 2 0 {name=p12 sig_type=std_logic lab=VINJ[0]}
C {lab_pin.sym} 760 -160 2 0 {name=p14 sig_type=std_logic lab=VINJ[1]}
C {bus_connect_nolab.sym} 710 -120 3 0 {name=r2}
C {bus_connect_nolab.sym} 710 -160 3 0 {name=r4}
C {lab_pin.sym} 690 -200 2 0 {name=IN1[1:0] sig_type=std_logic lab=VINJ[1:0]}
C {vsource.sym} 130 50 0 0 {name=Vinj2 value=5 savecurrent=false}
C {gnd.sym} 130 80 0 0 {name=Vinj3 lab=GND
value=5}
C {lab_pin.sym} 130 20 2 0 {name=p1 sig_type=std_logic lab=VINJ[1]}
