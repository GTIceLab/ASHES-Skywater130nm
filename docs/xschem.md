# Open schematics with Xschem

Use Linux, WSL2/Ubuntu with WSLg, or a Linux VM with a display. Install Xschem
and a public open_pdks Sky130 installation with its Xschem symbols. Cloning this
repository alone does not install either dependency.

The setup follows the upstream [Sky130 integration guide](https://xschem.sourceforge.io/stefan/xschem_man/tutorial_xschem_sky130.html)
and [symbol-library documentation](https://xschem.sourceforge.io/stefan/xschem_man/tutorial_xschem_libraries.html).

## Set the installed PDK location

`PDK_ROOT` is the directory containing `sky130A`, not the `sky130A` directory
itself. Set these in the Linux shell before starting Xschem:

```bash
export PDK_ROOT=/path/to/installed/pdks
export PDK=sky130A

test -f "$PDK_ROOT/$PDK/libs.tech/xschem/xschemrc"
```

`sky130A` is the default; `sky130B` is accepted when installed. A compatible
open_pdks installation should contain the following structure:

```text
$PDK_ROOT/
  sky130A/
    libs.tech/xschem/xschemrc
    libs.tech/xschem/sky130_fd_pr/
    libs.tech/ngspice/          # actual model configuration comes from PDK rc
    libs.ref/
```

Install the PDK's Xschem integration if the rc file or primitive symbols are
absent. A raw PDK source checkout is not necessarily an installed open_pdks tree.
Do not commit an installed PDK or machine-specific paths to this repository.

## Open from this repository

```bash
cd /path/to/ASHES-Skywater130nm
bash scripts/open_xschem.sh sky130_cells/IndirectVMM_4x2/IndirectVMM_4x2.sch
```

The launcher can be called by absolute path from any directory. Its schematic
argument is repository-relative or absolute. It explicitly passes this repo's
`xschemrc`, so opening a nested schematic cannot accidentally select another
project's configuration. Running plain `xschem` from the repository root also
loads the project rc through Xschem's normal startup rules.

The rc file:

1. Resolves this checkout from its own filename, with no fixed username/path.
2. Sources `$PDK_ROOT/$PDK/libs.tech/xschem/xschemrc` for the installed process.
3. Keeps the PDK paths and adds the standard Xschem device libraries and repo root.
4. Uses ignored `.xschem/netlists/` for generated netlists.

Repository components use paths such as
`sky130_cells/Floating_Gates/Indirect/FG_Indirect.sym`, resolved from the repo
root. Obsolete `Archive/xschem/...` references to standard devices were replaced
with their installed `devices/` or `sky130_fd_pr/` names. Avoid returning to
machine-specific absolute component paths or ambiguous basename-only references.

Xschem normally knows its installation share directory. If standard devices are
not found, check the installation. For a custom install, explicitly set:

```bash
export XSCHEM_SHAREDIR=/path/to/xschem/share/xschem
test -d "$XSCHEM_SHAREDIR/xschem_library/devices"
```

This variable points to Xschem's share directory, not the PDK. Optional local
preferences can go in ignored `xschemrc.local`; no user home configuration is
required for this project. The launcher uses `--rcfile`, so unrelated user rc
files are not relied upon.

## Diagnose missing symbols

With only the checkout available, check repository references:

```bash
python scripts/check_xschem.py --local-only
```

This defers external PDK and standard device files; it does not certify that
they are installed. To check one supported schematic's local references:

```bash
python scripts/check_xschem.py --local-only \
  --schematic sky130_cells/IndirectVMM_4x2/IndirectVMM_4x2.sch
```

For a complete path-existence check, provide both installed locations:

```bash
python scripts/check_xschem.py \
  --pdk-root "$PDK_ROOT" --pdk "$PDK" \
  --xschem-sharedir "$XSCHEM_SHAREDIR"
```

In Xschem's Tcl console, `puts $XSCHEM_LIBRARY_PATH` and
`puts $XSCHEM_SHAREDIR` show the active paths. The checker does not start a GUI,
netlist, or simulate; it reports unresolved component references and exits
nonzero when any remain.

## Missing source files versus a setup problem

The repository-wide check still reports four genuinely absent custom RDAC
symbol names across five schematics. See [source status](source-status.md).
A correct search path cannot supply files that are absent. The complete local
history of the internal source repository was searched: the references appear
in commit `4416dec`, but the exact missing filenames are not present in any
available commit. Related symbols were not substituted without a verified pin
interface match.

Two empty placements of `scripts/sky130_models.tcl` were removed from the TA
schematic because Tcl startup code is not a schematic symbol. PDK startup is
loaded by `xschemrc`; no electrical wires, device properties, or pin labels were
changed by that cleanup. If a testbench needs a SPICE model section, configure
it using the installed PDK's model mechanism and desired corner. Resolving
symbols alone does not establish simulation correctness or LVS.

The Tcl setup and launcher were tested using mock PDK/share directories. Xschem
and a real PDK are not installed in the validation environment, so actual GUI
loading and simulation have not been certified here.
