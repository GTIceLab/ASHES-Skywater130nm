# Sky130 cell inventory

The prepared physical library contains 19 GDS files. Each row describes the cell
matching its filename. Bounding-box sizes are in microns and include referenced
geometry; they are not a verified placement pitch or abutment guarantee.

| GDS cell | Bounding-box size (um) | Individual Python generation | Shipped trial class |
| --- | --- | --- | --- |
| [Cap_Bank](../Tools/lib/gds/Cap_Bank.gds) | 39.050 x 6.550 | passed | no |
| [G_or_S_IndrctSwcs](../Tools/lib/gds/G_or_S_IndrctSwcs.gds) | 17.110 x 13.000 | passed | no |
| [IndirectGswc_OutMat](../Tools/lib/gds/IndirectGswc_OutMat.gds) | 17.110 x 13.000 | failed | no |
| [IndirectVMM_4x2](../Tools/lib/gds/IndirectVMM_4x2.gds) | 17.110 x 6.550 | passed | yes |
| [IndirectVMM_Bot_Bmat_4x2](../Tools/lib/gds/IndirectVMM_Bot_Bmat_4x2.gds) | 17.110 x 6.550 | failed | no |
| [IndirectVMM_DrainSwcs](../Tools/lib/gds/IndirectVMM_DrainSwcs.gds) | 42.800 x 6.435 | failed | no |
| [IndirectVMM_GSwcs_1x2](../Tools/lib/gds/IndirectVMM_GSwcs_1x2.gds) | 17.235 x 6.500 | passed | no |
| [IndirectVMM_Top_AorBmat_4x2](../Tools/lib/gds/IndirectVMM_Top_AorBmat_4x2.gds) | 17.110 x 6.550 | failed | no |
| [S_Block](../Tools/lib/gds/S_Block.gds) | 67.710 x 6.550 | failed | no |
| [S_Block_NS_routing_diagonal](../Tools/lib/gds/S_Block_NS_routing_diagonal.gds) | 3.500 x 6.500 | passed | no |
| [S_Block_east](../Tools/lib/gds/S_Block_east.gds) | 42.710 x 6.550 | failed | no |
| [S_Block_filler_off_diagonal](../Tools/lib/gds/S_Block_filler_off_diagonal.gds) | 3.500 x 6.500 | passed | no |
| [S_Block_west](../Tools/lib/gds/S_Block_west.gds) | 20.710 x 6.550 | failed | no |
| [TA_FGbias_1x2](../Tools/lib/gds/TA_FGbias_1x2.gds) | 27.600 x 6.500 | passed | yes |
| [TGate_2nMirror](../Tools/lib/gds/TGate_2nMirror.gds) | 16.300 x 6.500 | passed | no |
| [Volatile_Swcs](../Tools/lib/gds/Volatile_Swcs.gds) | 32.450 x 6.425 | failed | no |
| [alexpmos](../Tools/lib/gds/alexpmos.gds) | 12.600 x 5.650 | passed | no |
| [level_shifter_horizontal](../Tools/lib/gds/level_shifter_horizontal.gds) | 49.410 x 6.385 | failed | no |
| [level_shifter_vertical](../Tools/lib/gds/level_shifter_vertical.gds) | 17.100 x 8.100 | passed | no |

Only the two trial classes are committed in `cells.py`. Other cells can be
requested by name using the documented generator command. Sparse/conflicting bus interfaces and the Volatile_Swcs hierarchical labels
are reported explicitly by the shared generator and require interface review.

## Editable source groups

`sky130_cells/` contains VMM variants, floating-gate cells, programming switches,
S-blocks, TA cells, capacitor banks, transmission gates/mirrors, level shifters,
RDAC/multiplexer sources, charge pumps, device studies, ESD sources, and practice
examples. `sky130_dig_cells/` contains digital support material. Source names do
not imply that every design has a generated GDS, completed LVS, or a working
standalone simulation. See [source status](source-status.md).
