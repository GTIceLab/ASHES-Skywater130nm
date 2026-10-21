# Attribution

- Sky130 process definitions and digital-cell material: [SkyWater PDK](https://github.com/google/skywater-pdk), Apache-2.0. The copied flip-flop SPICE file retains its SkyWater notice.
- Level-shifter schematic material: Stefan Frederik Schippers, copyright 2021, Apache-2.0 as stated in the included horizontal/vertical schematics. Notices are preserved.
- ASHES library helpers and project examples: derived from Georgia Tech ICE Lab project material. The shared generation implementation is maintained in ASHES. This repository retains generated definitions and its Sky130 source material.
- Layer-number reference: [SkyWater layer documentation](https://skywater-pdk.readthedocs.io/en/main/rules/layers.html).
- LEF/DEF mapping syntax: [KLayout implementation](https://github.com/KLayout/klayout/blob/master/src/plugins/streamers/lefdef/db_plugin/dbLEFDEFImporter.cc).

OpenROAD, KLayout, Magic, Xschem, ngspice, ASHES, and an installed PDK are external
dependencies. Their binaries and complete source trees are not redistributed by
this repository. Their licenses remain their own.

The root Apache-2.0 license does not erase notices on individual files. Preserve
those notices in copies and derivatives.
