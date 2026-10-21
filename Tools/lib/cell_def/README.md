# Sky130 cell definitions from ASHES

Library generation is installed with ASHES on `ashes_2p0`; this repository no
longer carries its own generator implementation. Activate the ASHES environment
and verify `ashes cells generate --help` works. An older ASHES installation
without the `cells` command must be updated before using these instructions.

## Layout

Run generation from `Tools/lib`, one directory above this README:

- `gds_source/`: original editor exports, without directional pin suffixes.
- `gds/`: prepared physical GDS used by synthesis.
- `cell_def/`: generated `cells.py`, `cells.json`, and ignored class histories.

The original-export folder was renamed from `gds_cadence` to `gds_source`.
ASHES also supports the old folder name in other projects. Directory names and
output locations can be overridden; see `ashes cells build --help`.

## Generate the trial library

```bash
cd /path/to/ASHES-Skywater130nm/Tools/lib
ashes cells generate --cells IndirectVMM_4x2 TA_FGbias_1x2 \
  --process-node 130 --foundry sky --process-coordinates xy
python -m py_compile cell_def/cells.py
```

These two selected cells are the library committed for the VMM/TA trial.
The trial imports `cell_def/cells.py` directly. Update the physical GDS and
regenerate synthesis outputs together when changing an interface.

## Prepare original GDS

```bash
ashes cells prepare
```

This reads `gds_source/` and writes directional GDS into `gds/`. Original exports
remain unchanged. Existing direction suffixes are preserved. Regenerating all
original layouts may alter prepared labels; review the GDS changes before use.

To prepare and generate the selected trial cells in one validated batch:

```bash
ashes cells build --cells IndirectVMM_4x2 TA_FGbias_1x2 \
  --process-node 130 --foundry sky --process-coordinates xy
```

## Attempt every included cell

```bash
ashes cells generate --process-node 130 --foundry sky --process-coordinates xy
```

Nothing is implicitly skipped. The current full library contains interfaces that
the shared generator rejects: sparse or mixed scalar/bus labels and hierarchical
annotation names. Generation stops with an error and leaves existing outputs
unchanged. See [individual results](../../../docs/cell-generation-validation.json).
This does not affect the explicitly selected two-cell trial library.

These cells have no explicit placement boundary, so the shared generator uses
the matching cell's bounding box. Explicit suffixes determine native pin sides.
Process-specific boundary layers and label filters are optional arguments, not
hardcoded assumptions. See `ashes cells generate --help` and the
[ASHES library guide](https://github.com/GTIceLab/ashes/blob/ashes_2p0/docs/cell-library.md).
