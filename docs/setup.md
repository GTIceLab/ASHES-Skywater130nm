# Linux setup

Use Linux, WSL2/Ubuntu, or a Linux VM. Execute these commands inside Linux, not
Windows PowerShell. Use a Python 3.12+ interpreter. A display is required only
for interactive GUI use; WSLg can supply one on supported Windows systems.

## ASHES

```bash
git clone https://github.com/GTIceLab/ashes.git
cd ashes
git switch main
python3 -m venv venv
source venv/bin/activate
python -m pip install -e .
```

Use ASHES `main`, which includes the cell generator and OpenROAD flow merged
in commit `47ca6e6` (PR #52). For an existing checkout, update `main` with
`git pull --ff-only` and reinstall with `python -m pip install -e .`.
Verify `ashes cells generate --help` after installation. Activate the same
environment before running library generation and synthesis. The original
validation used the pre-merge working tree; see [validation status](validation.md).

The model import for this flow is `ashes_fg.asic.asic_compile`. Its compile API
selects OpenROAD through `pd_tool`; do not add settings from newer ASHES APIs
without checking the installed revision. RASP30/Scilab are not required for this
ASIC example. Do not install a second unrelated package named `ashes` from PyPI.

## OpenROAD

Use the [official installation guide](https://openroad.readthedocs.io/en/latest/user/Build.html)
for current supported systems and binary packages. Its source-build procedure is:

```bash
git clone --recursive https://github.com/The-OpenROAD-Project/OpenROAD.git
cd OpenROAD
sudo ./etc/DependencyInstaller.sh
bazelisk run --//:platform=gui //:install
export PATH="$(realpath ../install/OpenROAD/bin):$PATH"
openroad -version
```

Persist the resulting absolute bin path in your shell configuration if needed.
Keep installed runtime files alongside the binary. See upstream instructions
for a CLI-only build. This project uses the OpenROAD application directly with
ASHES-generated Tcl; it does not require OpenROAD-flow-scripts.

## KLayout

On Ubuntu, install KLayout for viewing and routed GDS export:

```bash
sudo apt update
sudo apt install klayout
klayout -v
```

## Optional circuit-editing tools and PDK

Xschem, Magic, ngspice, and a public Sky130 PDK installation are needed for source
editing, extraction, simulation, and independent cell verification. Follow the
[SkyWater PDK documentation](https://skywater-pdk.readthedocs.io/) and your
installed tool integration. PDK root paths and model corners are installation
specific. Do not copy a complete PDK into this repository.

The included `sky130.lef` uses `METAL1` through `METAL5` and CORE sites including
`unithd`; stock PDK installations may use different layer aliases. The example's
LEF, synthesis JSON map, and stream map must be used together.

## Open repository schematics

See [the project Xschem guide](xschem.md) for PDK_ROOT, project rc loading,
standard device paths, and the missing-symbol checker.
