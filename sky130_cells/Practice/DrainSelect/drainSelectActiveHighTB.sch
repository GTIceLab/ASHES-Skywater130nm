v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -480 -110 -480 -90 {
lab=GND}
N -630 -190 -630 -160 {
lab=Vinj}
N -690 -20 -690 20 {
lab=Select2}
N -480 -200 -480 -170 {
lab=Select1}
N -170 -30 -80 -30 {
lab=Vinj}
N -170 -10 -80 -10 {
lab=Select1}
N -220 -10 -170 -10 {
lab=Select1}
N -160 10 -80 10 {
lab=Select2}
N -210 30 -80 30 {
lab=Select3}
N -220 50 -80 50 {
lab=Select4}
N 220 -10 330 -10 {
lab=Drain1}
N 220 70 260 70 {
lab=GND}
N 220 -30 470 -30 {
lab=DrainMux}
N 470 -30 470 -10 {
lab=DrainMux}
N 220 10 330 10 {
lab=Drain2}
N 220 30 330 30 {
lab=Drain3}
N 220 50 330 50 {
lab=Drain4}
C {vsource.sym} -630 -130 0 0 {name=Vinj1 value=5 savecurrent=false}
C {gnd.sym} -630 -100 0 0 {name=Vinj4 lab=GND
value=5}
C {lab_pin.sym} -630 -190 2 0 {name=p1 sig_type=std_logic lab=Vinj}
C {vsource.sym} -480 -140 0 0 {name=Vin3 value=0 savecurrent=false}
C {gnd.sym} -480 -90 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -480 -200 0 0 {name=p4 sig_type=std_logic lab=Select1}
C {vsource.sym} -690 50 0 0 {name=Vinj5 value=0 savecurrent=false}
C {gnd.sym} -690 80 0 0 {name=Vinj6 lab=GND
value=5}
C {lab_pin.sym} -690 -20 2 0 {name=p5 sig_type=std_logic lab=Select2}
C {vsource.sym} -580 50 0 0 {name=Vinj7 value=0 savecurrent=false}
C {gnd.sym} -580 80 0 0 {name=Vinj8 lab=GND
value=5}
C {lab_pin.sym} -580 20 2 0 {name=p6 sig_type=std_logic lab=Select3}
C {vsource.sym} -470 50 0 0 {name=Vinj9 value=5 savecurrent=false}
C {gnd.sym} -470 80 0 0 {name=Vinj10 lab=GND
value=5}
C {lab_pin.sym} -470 20 2 0 {name=p7 sig_type=std_logic lab=Select4}
C {vsource.sym} 130 180 0 0 {name=Vinj11 value=4 savecurrent=false}
C {gnd.sym} 130 210 0 0 {name=Vinj12 lab=GND
value=5}
C {lab_pin.sym} 130 150 2 0 {name=p13 sig_type=std_logic lab=Drain1}
C {sky130_cells/Practice/DrainSelect/sky130_hilas_drainSelect01d3ActiveHigh.sym} 70 20 0 0 {name=x1}
C {lab_pin.sym} -170 -30 0 0 {name=p15 sig_type=std_logic lab=Vinj}
C {lab_pin.sym} -220 -10 0 0 {name=p16 sig_type=std_logic lab=Select1}
C {lab_pin.sym} -160 10 0 0 {name=p17 sig_type=std_logic lab=Select2}
C {lab_pin.sym} -210 30 0 0 {name=p18 sig_type=std_logic lab=Select3}
C {lab_pin.sym} -220 50 0 0 {name=p19 sig_type=std_logic lab=Select4}
C {lab_pin.sym} 330 -10 2 0 {name=p20 sig_type=std_logic lab=Drain1}
C {gnd.sym} 260 70 0 0 {name=l3 lab=GND}
C {devices/parax_cap.sym} 470 0 0 0 {name=C1 gnd=0 value=100f m=1}
C {lab_pin.sym} 470 -30 2 0 {name=p21 sig_type=std_logic lab=DrainMux}
C {devices/code.sym} -630 180 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt"}
C {devices/simulator_commands_shown.sym} -490 200 0 0 {name=NGSPICE_Sim
simulator=ngspice
only_toplevel=false 
value=" 
.tran 10p 40n
.control
run
plot v(Select1) v(Select2) v(Select3) v(Select4) v(DrainMux)
.endc
"}
C {lab_pin.sym} 330 10 2 0 {name=p2 sig_type=std_logic lab=Drain2}
C {vsource.sym} 220 180 0 0 {name=Vinj2 value=3 savecurrent=false}
C {gnd.sym} 220 210 0 0 {name=Vinj3 lab=GND
value=5}
C {lab_pin.sym} 220 150 2 0 {name=p3 sig_type=std_logic lab=Drain2}
C {lab_pin.sym} 330 30 2 0 {name=p8 sig_type=std_logic lab=Drain3}
C {lab_pin.sym} 330 50 2 0 {name=p9 sig_type=std_logic lab=Drain4}
C {vsource.sym} 310 180 0 0 {name=Vinj13 value=2 savecurrent=false}
C {gnd.sym} 310 210 0 0 {name=Vinj14 lab=GND
value=5}
C {lab_pin.sym} 310 150 2 0 {name=p10 sig_type=std_logic lab=Drain3}
C {vsource.sym} 400 180 0 0 {name=Vinj15 value=1 savecurrent=false}
C {gnd.sym} 400 210 0 0 {name=Vinj16 lab=GND
value=5}
C {lab_pin.sym} 400 150 2 0 {name=p11 sig_type=std_logic lab=Drain4}
