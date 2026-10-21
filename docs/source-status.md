# Source status and public-copy scope

Only Sky130 sources and portable library/example tooling were carried into this
new repository. The previous repository's Git history, mixed archives,
unrelated-process cells/maps, old backups, and generated synthesis/simulation
outputs were not copied. Historical CAB notes and incomplete TeX build outputs
were replaced with the maintained guides here.

The original GDS bytes and applicable source notices are retained. Local absolute
schematic paths were replaced with relative references where resolution was
unambiguous; machine-path-only netlist metadata comments were removed. The import
manifest records source hashes and final hashes, not private Git history.

Some source designs refer to resources not supplied at an unambiguous location.
These files remain research sources, not verified standalone simulations. The
following references need source-author review or external PDK symbol setup:

| Source file | Resource |
| --- | --- |
| `sky130_cells/RDAC/Design/6bit_RDAC.sch` | `RDAC_4bit_cell.sym` |
| `sky130_cells/RDAC/Sims/4b_rdac_testbench.sch` | `RDAC_4bit_cell.sym` |
| `sky130_cells/RDAC/Sims/6to64_decoder_testbench.sch` | `sky130_hilas_hirach_VinjDecode2to4.sym` |
| `sky130_cells/RDAC/Sims/Vinj_NOR_testbench.sch` | `sky130_Vinj_NOR.sym` |
| `sky130_cells/RDAC/Sims/Vinj_inverter_testbench.sch` | `sky130_hilas_Vinj_inverter.sym` |

## Current shared workflow and symbol setup

Library-generation implementations now live in ASHES, not this repository.
`Tools/lib/cell_def` contains only generated definitions and instructions.
Original exports use `gds_source`; prepared synthesis layouts use `gds`.

Local component references were normalized to repo-root names, and obsolete
Archive references to standard devices use the installed PDK/Xschem libraries.
The path migration is recorded in `xschem-path-migration.json`. Two empty startup
Tcl-script placements were removed from the TA schematic; no electrical wiring
was changed. See [Xschem setup](xschem.md).

A full local Git-history search found no exact versions of the four missing
RDAC symbols listed above. References were introduced in commit `4416dec`.
The source history is not shallow. Related differently named symbols were not
aliased without evidence that their terminal interfaces match.
