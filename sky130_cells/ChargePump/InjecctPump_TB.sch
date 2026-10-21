v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -890 -510 -890 -500 {
lab=VCLK}
N -1090 -450 -1090 -420 {
lab=GND}
N -1090 -550 -1090 -510 {
lab=VEnable}
N -750 -390 -710 -380 {
lab=VDD}
N -750 -340 -710 -340 {
lab=VEnable}
N -750 -320 -710 -320 {
lab=VCLK}
N -780 -360 -710 -360 {
lab=GND}
N -410 -380 -370 -380 {
lab=out}
C {devices/code.sym} -980 -200 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {gnd.sym} -890 -440 0 0 {name=l4 lab=GND}
C {vsource.sym} -890 -470 0 0 {name=V3 value= "PULSE(0 1.8 0 0.1n 0.1n 1n 2n)"
    savecurrent=false}
C {vsource.sym} -970 -470 0 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} -970 -440 0 0 {name=l5 lab=GND}
C {code_shown.sym} -840 -210 0 0 {name= Ngspice tgate sim
simulator = ngspice
only_toplevel=false 


value= "
.tran 0.1n 10n
.save
.control
run
//wrdata     .txt V(out)
plot V(VCLK)  V(out)

.endc
//V(Switch1)+1 V(Switch2)+1 V(Switch3)+1 V(Inn)+1.8 
"


}
C {vdd.sym} -970 -500 0 0 {name=l3 lab=VDD}
C {lab_pin.sym} -890 -510 2 0 {name=p4 sig_type=std_logic lab=VCLK}
C {lab_pin.sym} -370 -380 1 0 {name=p2 sig_type=std_logic lab=out}
C {gnd.sym} -1090 -420 0 0 {name=l8 lab=GND}
C {vsource.sym} -1090 -480 0 0 {name=V5 value=1.8  savecurrent=false}
C {lab_pin.sym} -1090 -550 0 0 {name=p6 sig_type=std_logic lab=VEnable}
C {lab_pin.sym} -750 -340 0 0 {name=p7 sig_type=std_logic lab=VEnable}
C {lab_pin.sym} -750 -320 0 0 {name=p8 sig_type=std_logic lab=VCLK}
C {vdd.sym} -750 -390 0 0 {name=l9 lab=VDD}
C {gnd.sym} -780 -360 1 0 {name=l1 lab=GND}
C {sky130_cells/ChargePump/TunnelingPump.sym} -560 -350 0 0 {name=x1}
