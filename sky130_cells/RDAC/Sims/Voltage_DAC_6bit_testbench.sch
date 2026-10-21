v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 160 -300 240 -300 {
lab=IN[5:0] bus=true}
N 160 -300 160 -270 {
lab=IN[5:0] bus=true}
N 150 -270 160 -270 {
lab=IN[5:0]}
N 160 -270 160 -230 {
lab=IN[5:0] bus=true}
N 150 -230 160 -230 {
lab=IN[5:0]}
N 100 -220 140 -220 {
lab=IN[4]}
N 100 -260 140 -260 {
lab=IN[5]}
N 220 -320 240 -320 {
lab=Ven}
N 160 -230 160 -200 {
lab=IN[5:0] bus=true}
N 150 -200 160 -200 {
lab=IN[5:0]}
N 160 -200 160 -160 {
lab=IN[5:0] bus=true}
N 150 -160 160 -160 {
lab=IN[5:0]}
N 100 -150 140 -150 {
lab=IN[2]}
N 100 -190 140 -190 {
lab=IN[3]}
N 160 -160 160 -130 {
lab=IN[5:0] bus=true}
N 150 -130 160 -130 {
lab=IN[5:0]}
N 160 -130 160 -90 {
lab=IN[5:0] bus=true}
N 100 -80 140 -80 {
lab=IN[0]}
N 100 -120 140 -120 {
lab=IN[1]}
N 540 -280 580 -280 {
lab=GND}
N 140 -80 150 -80 {
lab=IN[0]}
N 540 -300 620 -300 {
lab=VINJ}
N 540 -320 600 -320 {
lab=Vout}
C {lab_pin.sym} 100 -220 0 0 {name=p4 sig_type=std_logic lab=IN[4]}
C {lab_pin.sym} 100 -260 0 0 {name=p8 sig_type=std_logic lab=IN[5]}
C {lab_pin.sym} 220 -320 0 0 {name=p10 sig_type=std_logic lab=Ven}
C {bus_connect_nolab.sym} 140 -260 0 0 {name=r3}
C {bus_connect_nolab.sym} 140 -220 0 0 {name=r1}
C {lab_pin.sym} 160 -290 0 0 {name=IN[1:0] sig_type=std_logic lab=IN[5:0]}
C {vsource.sym} 960 -370 0 0 {name=Vin1 value="pulse 5 0 0 1n 1n 500n 1000n" savecurrent=false}
C {gnd.sym} 960 -340 0 0 {name=l2 lab=GND}
C {vsource.sym} 960 -250 0 0 {name=Vin4 value="pulse 5 0 0 1n 1n 1000n 2000n" savecurrent=false}
C {gnd.sym} 960 -220 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 960 -400 0 0 {name=p6 sig_type=std_logic lab=IN[0]}
C {lab_pin.sym} 960 -280 0 0 {name=p7 sig_type=std_logic lab=IN[1]}
C {vsource.sym} 1200 -490 0 0 {name=Ven1 value=5 savecurrent=false}
C {gnd.sym} 1200 -460 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 1200 -520 0 0 {name=p11 sig_type=std_logic lab=Ven}
C {vsource.sym} 960 -130 0 0 {name=Vin5 value="pulse 5 0 0 1n 1n 2000n 4000n" savecurrent=false}
C {gnd.sym} 960 -100 0 0 {name=Vin7 lab=GND}
C {vsource.sym} 1200 -370 0 0 {name=Vin8 value="pulse 5 0 0 1n 1n 4000n 8000n" savecurrent=false}
C {gnd.sym} 1200 -340 0 0 {name=Vin9 lab=GND}
C {lab_pin.sym} 960 -160 0 0 {name=Vin6 sig_type=std_logic lab=IN[2]}
C {lab_pin.sym} 1200 -400 0 0 {name=Vin10 sig_type=std_logic lab=IN[3]}
C {gnd.sym} 580 -280 0 0 {name=l8 lab=GND}
C {vsource.sym} 1200 -130 0 0 {name=Vin11 value="pulse 5 0 0 1n 1n 16000n 32000n" savecurrent=false}
C {gnd.sym} 1200 -100 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 1200 -280 0 0 {name=p15 sig_type=std_logic lab=IN[4]}
C {vsource.sym} 1200 -250 0 0 {name=Vin13 value="pulse 5 0 0 1n 1n 8000n 16000n" savecurrent=false}
C {gnd.sym} 1200 -220 0 0 {name=Vin14 lab=GND}
C {lab_pin.sym} 1200 -160 0 0 {name=Vin15 sig_type=std_logic lab=IN[5]}
C {code_shown.sym} 450 -680 0 0 {name=SPICE1 only_toplevel=false value="
.control
	tran 100n 32000n
	plot V(Vout) title 'DAC Outputs'
	wrdata dacout.csv time v(Vout)
	
.
.endc

.end"}
C {lab_pin.sym} 100 -150 0 0 {name=p1 sig_type=std_logic lab=IN[2]}
C {lab_pin.sym} 100 -190 0 0 {name=p2 sig_type=std_logic lab=IN[3]}
C {bus_connect_nolab.sym} 140 -190 0 0 {name=r2}
C {bus_connect_nolab.sym} 140 -150 0 0 {name=r4}
C {lab_pin.sym} 100 -80 0 0 {name=p3 sig_type=std_logic lab=IN[0]}
C {lab_pin.sym} 100 -120 0 0 {name=p9 sig_type=std_logic lab=IN[1]}
C {bus_connect_nolab.sym} 140 -120 0 0 {name=r5}
C {bus_connect_nolab.sym} 150 -80 0 0 {name=r6}
C {vsource.sym} 1440 -120 0 0 {name=Vinj1 value=5 savecurrent=false}
C {gnd.sym} 1440 -90 0 0 {name=Vinj4 lab=GND
value=5}
C {lab_pin.sym} 1440 -150 2 0 {name=p16 sig_type=std_logic lab=VINJ}
C {devices/code.sym} 170 -650 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {lab_pin.sym} 1440 -150 2 0 {name=p5 sig_type=std_logic lab=VINJ}
C {lab_pin.sym} 620 -300 2 0 {name=p12 sig_type=std_logic lab=VINJ}
C {sky130_cells/RDAC/Design/sky130_hilas_Voltage_DAC_6bit.sym} 390 -300 0 0 {name=x1}
C {lab_pin.sym} 600 -320 2 0 {name=p13 sig_type=std_logic lab=Vout}
