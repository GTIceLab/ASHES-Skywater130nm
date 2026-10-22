# Validation status

Validation run: 2026-10-21, Linux/WSL, Python 3.14.
ASHES: updated `ashes_2p0` working tree with the shared `ashes cells` CLI.
The shared flow was subsequently merged into ASHES `main` in commit `47ca6e6`
(PR #52); current installation instructions use `main`. This record describes
the original validation, not a rerun against the merged revision.
The earlier routing run used commit `94d01a0`; that commit alone does not include
the newly shared generator.
OpenROAD reports `bazel-nostamp` rather than a version hash; that build cannot be
identified more precisely from its version string. KLayout: 0.30.6.

## Completed checks

- All public Python sources parse; all included JSON metadata/settings parse.
- Both shell wrappers pass `bash -n`.
- `python scripts/validate.py` passes: both trial classes have the exact GDS pin
  names and widths, including scalar VTUN/GND interfaces.
- Shared individual generation passes for 10 of 19 GDS interfaces. The other
  nine report sparse/conflicting buses or unsupported hierarchical annotations.
  See `cell-generation-validation.json`. No requested cell is silently skipped.
- The two trial classes regenerate using `ashes cells generate` from `Tools/lib`.
- Xschem Tcl setup/launcher tests pass against mock PDK/share installations;
  actual Xschem and the PDK are not installed in this validation environment.
- The repository-wide local symbol check reports four absent RDAC symbols across
  five schematics. The checked VMM and TA sources have no unresolved local symbols.
- `ashes asic Trail.py` completes synthesis/placement and generates OpenROAD
  input files and all five Tcl stages on the ASHES revision recorded above.
- The public source set contains only Sky130 cell trees and selected helper,
  technology-map, and example content. Original import-source hashes were checked
  to confirm that the source repository was not changed.

## Routing result

The earlier complete OpenROAD/KLayout run produced `Trail.gds` and reported
231 remaining DRC violations. It was not clean physical signoff. This migration
rechecks source generation and ASHES integration; it does not repeat the lengthy
routing run or claim that the remaining violations were fixed.

## Not established

This preparation does not establish chip-level DRC/LVS, electrical correctness,
power-grid completion, antenna-rule compliance, or fabrication readiness.
Schematic/PDK setup and some missing historical symbols still require review.
See `source-status.md`. The example retains the source circuit's internal
supply wiring and does not provide a completed multi-supply PDN.

## Reproduce

```bash
# From repository root, with the documented ASHES environment active:
python scripts/validate.py
cd Tools/run_syn/Sky130_Trial
ashes asic Trail.py
openroad -threads 4 -exit -log openroad.log openroad/Trail/main.tcl
```

Generated logs, databases, and stream outputs are ignored by Git. Inspect the
OpenROAD log and `openroad/Trail/outputs/route_drc.rpt` for your own run; output
existence alone is not evidence that those reports are clean.
