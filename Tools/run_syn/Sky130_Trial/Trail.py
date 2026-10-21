"""Sky130 VMM/TA trial. Compile with: ashes asic Trail.py."""
import ashes_fg.asic.asic_compile as ac

from pathlib import Path
import sys

# Reference the generated Sky130 library directly, relative to this design.
design_dir = Path(__file__).resolve().parent if "__file__" in globals() else Path.cwd()
cell_def = design_dir.parents[1] / "lib" / "cell_def"
sys.path.insert(0, str(cell_def))
import cells as lib_cells
import ashes_fg.class_lib_mux as lib_mux

Top = ac.Circuit()

VMM_Island = ac.Island(Top)
VMMs = lib_cells.IndirectVMM_4x2(Top,VMM_Island,dim=[4,4])
VMMs.place([0,0])

TA_Island = ac.Island(Top)
TAs = lib_cells.TA_FGbias_1x2(Top,TA_Island,dim=[4,1])
TAs.place([0,0])

outerPins = lib_mux.frame(Top)
outerPins.defaultPinLayer = "METAL3"

Vg_lines = outerPins.createPort("N","Vg", dimension = 9)
Vsel_lines = outerPins.createPort("N","Vsel", dimension = 9)
Vd_P_lines = outerPins.createPort("W","Vd_P", dimension = 16)
Output_lines = outerPins.createPort("N","Output", dimension = 8)
VTUN = outerPins.createPort("N","VTUN", dimension = 1) 

VINJ = ac.Wire(Top)
GND = ac.Wire(Top)
AVDD = ac.Wire(Top)

TA_inp = [ac.Wire(Top) for _ in range(16)]

for i in range(8):
    Vg_lines[i] += VMMs.Vg_n[i]
    Vsel_lines[i] += VMMs.Vsel_n[i]
    VINJ += VMMs.VINJ_n[i]
    AVDD += VMMs.Vs_n[i]

for i in range(4):
    VMMs.VTUN_n[i] += VTUN
    GND += VMMs.GND_n[i]

for i in range(16):
    Vd_P_lines[i] += VMMs.Vd_P_e[i]

for i in range(16):
    TA_inp[i] += VMMs.Vd_R_e[i]

VINJ += TAs.VINJ_n[0]
GND += TAs.GND_n[0]
AVDD += TAs.AVDD_n[0]

Vg_lines[8] += TAs.Vg_n[0]
Vsel_lines[8] += TAs.Vsel_n[0]

for i in range(8):
    Vd_P_lines[i] += TAs.Vd_P_w[i]

for i in range(0,8*2,2):
    TA_inp[i] += TAs.Vin_P_w[i//2]

for i in range(0,8*2,2):
    TA_inp[i+1] += TAs.Vin_M_w[i//2]

for i in range(8):
    Output_lines[i] += TAs.OUTPUT_e[i]
 

design_limits = [150e3, 150e3]
location_islands = [[20e3,42e3],[100e3,42e3]]
