# ASHES to OpenROAD

## 1. Use the included example

Activate the ASHES environment, then change to:

```bash
cd ASHES-Skywater130nm/Tools/run_syn/Sky130_Trial
ashes asic Trail.py
```

The design defines `Top`, `design_limits`, and `location_islands`. The two
settings files beside it control synthesis and physical design. The generated
project is `openroad/Trail/`; the name comes from `Trail.py`.

## 2. Understand the settings

`synthesis_settings.json` selects `sky_130nm`, `../../lib`, and
`pd_tool: "openroad"`. On the documented ASHES revision, native coordinates are
the default; `process_coordinates` is not a supported compile argument.

`pd_settings.json` contains:

| Section | Role |
| --- | --- |
| `init` | Technology LEF, supply names, and ANALOG/DEFAULT_ROUTE/CLOCK_ROUTE NDR definitions. |
| `pins` | The `unithd` CORE site, side-based pin placement, sizes, and METAL3/METAL4 choices. |
| `power` | AVDD/VINJ/GND global connection declarations. |
| `route` | Signal routing from METAL2 through METAL5, with 10 detailed-routing iterations. |
| `signoff` | Saved outputs and KLayout DEF-to-GDS settings. |

The power configuration does not specify ring or stripe shapes and therefore
does not generate a PDN ring. The inherited circuit uses internal VINJ/AVDD/GND
wires; supply access must be reviewed before adopting it as a complete chip.
ASHES currently supports only one power/ground pair for PDN shape generation.
The compiler maps default net rules to `ANALOG`, so that NDR must exist.

## 3. Run OpenROAD

```bash
openroad -threads 8 -exit -log openroad.log openroad/Trail/main.tcl
```

For all available threads or an interactive GUI:

```bash
openroad -threads max -exit openroad/Trail/main.tcl
openroad -gui -threads 8 openroad/Trail/main.tcl
```

The main script enters its `run/` directory and sources `init.tcl`, `pins.tcl`,
`power.tcl`, `route.tcl`, and `signoff.tcl` from `tcl/`. Multithreaded stages use
the chosen thread count; not every stage scales across all cores.

Outputs under `openroad/Trail/outputs/` include the ODB, DEF, Verilog, abstract
LEF, route guide, DRC report, and (when stream conversion succeeds) GDS.

```bash
openroad -gui -db openroad/Trail/outputs/Trail.odb
```

## 4. Export routed GDS

The included signoff settings invoke KLayout automatically. Relative paths have
two different bases in the documented ASHES implementation:

| Setting | Path base |
| --- | --- |
| synthesis `lib_path` | Directory where `ashes` is invoked. |
| PD `tlef_path`, stream `tech_lef`, stream `layer_map` | Generated `openroad/Trail/run/` directory. |
| stream `in_files` | Resolved by ASHES from its invocation directory. |

Keep the example's directory layout or use absolute paths. Set `def_units` to
match DEF units; this example uses 1000 units per micron. An empty signoff list
still writes non-GDS outputs but skips KLayout stream conversion.

The three map files serve different jobs:

- `sky130.json`: GDS-to-library interpretation inside ASHES.
- `sky130_EDA.layermap`: KLayout LEF/DEF-to-GDS purpose mapping.
- `sky130nm.lyp`: KLayout display colors.

The stream map uses the exact `METAL1`-`METAL5` names in this project's LEF.
Drawing/pin/label/blockage datatypes are 20/16/5/10, respectively; cut layers use
44. Sources are linked in the map header. See the
[SkyWater layer table](https://skywater-pdk.readthedocs.io/en/main/rules/layers.html)
and [KLayout parser](https://github.com/KLayout/klayout/blob/master/src/plugins/streamers/lefdef/db_plugin/dbLEFDEFImporter.cc).

## Troubleshooting

- Missing NDR target: inspect earlier port-not-found warnings, then verify names,
  bus widths, and actual endpoints. Do not hide the error by ignoring the net.
- Missing layer mapping: check both the layer name and the requested purpose.
  Ignored routing shapes produce incomplete GDS.
- Unsupported compile keyword: verify the ASHES revision and editable install.
- Python library syntax error: validate `cells.py` before synthesis. Full-library
  generation reports unsupported sparse/conflicting interfaces and hierarchical
  labels; see the library README and recorded per-cell results.
- Unexpected dimensions or sides: generation selects only the GDS cell matching
  the filename and preserves explicit direction suffixes. A bounding box is not
  a proof that the layout satisfies the intended abutment pitch.
