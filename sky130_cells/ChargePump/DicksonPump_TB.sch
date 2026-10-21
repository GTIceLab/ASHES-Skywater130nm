v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -890 -510 -890 -500 {
lab=VCLK}
N 110 -340 140 -340 {
lab=out}
N 90 -340 110 -340 {
lab=out}
N -340 -410 -340 -380 {
lab=VDD}
N -40 -340 90 -340 {
lab=out}
N -650 -510 -650 -500 {
lab=VCLK2}
N -340 -380 -340 -360 {
lab=VDD}
N -410 -320 -340 -320 {
lab=VCLK}
N -410 -300 -340 -300 {
lab=VCLK2}
N -340 -360 -340 -340 {
lab=VDD}
C {devices/code.sym} -980 -200 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {vsource.sym} -890 -470 0 0 {name=V3 value= "PULSE(0 1.8 0 0.1n 0.1n 0.025u 0.05u)"
    savecurrent=false}
C {vsource.sym} -970 -470 0 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} -970 -440 0 0 {name=l5 lab=GND}
C {code_shown.sym} -840 -210 0 0 {name= Ngspice tgate sim
simulator = ngspice
only_toplevel=false 


value= "
.tran 100n 20u
.save
.control
run
//wrdata     .txt V(out)
plot V(out) V(VCLK) V(VCLK2)  

.endc
//V(Switch1)+1 V(Switch2)+1 V(Switch3)+1 V(Inn)+1.8 
"


}
C {vdd.sym} -970 -500 0 0 {name=l3 lab=VDD}
C {lab_pin.sym} -890 -510 2 0 {name=p4 sig_type=std_logic lab=VCLK}
C {vdd.sym} -340 -410 0 0 {name=l2 lab=VDD}
C {gnd.sym} -340 -280 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 140 -340 1 0 {name=p2 sig_type=std_logic lab=out}
C {lab_pin.sym} -410 -320 0 0 {name=p8 sig_type=std_logic lab=VCLK}
C {gnd.sym} -650 -440 0 0 {name=l7 lab=GND}
C {vsource.sym} -650 -470 0 0 {name=V2 value= "PULSE(0 1.8 0.025u 0.1n 0.1n 0.025u 0.05u)"
    savecurrent=false}
C {lab_pin.sym} -650 -510 2 0 {name=p1 sig_type=std_logic lab=VCLK2}
C {lab_pin.sym} -410 -300 0 0 {name=p3 sig_type=std_logic lab=VCLK2}
C {gnd.sym} -890 -440 0 0 {name=l1 lab=GND}
C {sky130_cells/ChargePump/dicksonpump.sym} -190 -310 0 0 {name=x1}
