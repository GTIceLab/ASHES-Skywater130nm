#!/usr/bin/env python3
"""Validate source syntax, settings, and the two physical trial interfaces."""
from pathlib import Path
import ast
import importlib.util
import json
import re

ROOT = Path(__file__).resolve().parents[1]
for path in ROOT.rglob("*.py"):
    if not any(part in path.parts for part in (".git", "__pycache__", "openroad", "cell_histories")):
        ast.parse(path.read_text(), filename=str(path))
for path in ROOT.rglob("*.json"):
    if "openroad" not in path.parts:
        json.loads(path.read_text())

import gdstk
import ashes_fg.asic.asic_compile as ac
path = ROOT / "Tools/lib/cell_def/cells.py"
spec = importlib.util.spec_from_file_location("sky130_cells_validation", path)
cells = importlib.util.module_from_spec(spec)
spec.loader.exec_module(cells)
for name in ("IndirectVMM_4x2", "TA_FGbias_1x2"):
    circuit = ac.Circuit()
    cell = getattr(cells, name)(circuit, ac.Island(circuit), dim=(1, 1))
    library = gdstk.read_gds(str(ROOT / "Tools/lib/gds" / (name + ".gds")))
    physical = next(item for item in library.cells if item.name == name)
    physical_names = {re.sub(r"\[\d+\]$", "", label.text) for label in physical.labels}
    assert {port.name for port in cell.ports} == physical_names, name
    assert len(cell.GND_n.pins) == len(cell.VTUN_n.pins) == 1, name
    for port in cell.ports:
        labels = {label.text for label in physical.labels
                  if re.sub(r"\[\d+\]$", "", label.text) == port.name}
        assert len(port.pins) == len(labels), (name, port.name)
print("PASS: Python syntax, JSON settings, and trial pin names/widths match GDS.")
