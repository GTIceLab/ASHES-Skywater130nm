# Sky130 VMM/TA trial

See the repository [setup guide](../../../docs/setup.md) and
[OpenROAD guide](../../../docs/openroad.md). Run from this directory in Linux,
WSL2, or a Linux VM with the ASHES environment active:

```bash
ashes asic Trail.py
openroad -threads 8 -exit -log openroad.log openroad/Trail/main.tcl
```

The example imports the two generated cell classes from
`../../lib/cell_def/cells.py`. The physical library is `../../lib/gds`.
Do not replace only one of these interfaces after relabelling pins.

Circuit: a 4x4 VMM array, a 4x1 TA array, 9 Vg ports, 9 Vsel ports, 16 Vd_P
ports, 8 outputs, and a VTUN frame port. The original supply wiring is internal;
external supply access and PDN completion are not provided as a signoff claim.
Die dimensions: 150x150 microns. Island origins: (20,42) and (100,42) microns.

`ashes_2p0` does not define `__file__` while executing the design. The trial uses
the invocation directory in that case, so keep the working directory here.
No shared ASHES compiler changes are required by this repository.

Generated outputs under `syn/`, `pd/`, and `openroad/` are ignored by Git.
See [validation status](../../../docs/validation.md) before interpreting results.
