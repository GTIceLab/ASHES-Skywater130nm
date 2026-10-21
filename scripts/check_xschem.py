#!/usr/bin/env python3
"""Check component paths without starting a GUI or running a simulation."""
import argparse
import json
import os
from pathlib import Path
import re

ROOT = Path(__file__).resolve().parents[1]
# Standard Xschem devices used by the historical sources. Full checks verify
# these against the actual installation; local-only checks defer them.
BUILTINS = {name + '.sym' for name in (
    'bus_connect', 'bus_connect_nolab', 'bus_tap', 'capa', 'code', 'code_shown',
    'gnd', 'iopin', 'ipin', 'lab_pin', 'lab_wire', 'noconn', 'opin', 'vdd', 'vsource')}


def audit(files, pdk_root=None, pdk='sky130A', sharedir=None, local_only=False):
    search = [ROOT]
    if pdk_root:
        search.append(Path(pdk_root) / pdk / 'libs.tech/xschem')
    if sharedir:
        search += [Path(sharedir) / 'xschem_library', Path(sharedir) / 'xschem_library/devices']
    issues, deferred = [], set()
    for path in files:
        for ref in sorted(set(re.findall(r'^C\s+\{([^}]+)\}', path.read_text(), flags=re.M))):
            reason = None
            if not ref.endswith('.sym'):
                reason = 'Component references must be symbols; this historical Tcl/script reference needs source review'
            elif any((directory / ref).is_file() for directory in search):
                continue
            elif local_only and (ref.startswith(('devices/', 'sky130_fd_pr/')) or ref in BUILTINS):
                deferred.add(ref)
                continue
            else:
                reason = 'Symbol not found in repository/PDK/Xschem library paths'
            issues.append({'file': str(path.relative_to(ROOT)), 'reference': ref, 'reason': reason})
    return {'issues': issues, 'deferred_external': sorted(deferred), 'files_checked': len(files)}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--local-only', action='store_true', help='Check repo symbols and defer standard Xschem/PDK devices')
    parser.add_argument('--pdk-root', default=os.environ.get('PDK_ROOT'))
    parser.add_argument('--pdk', default=os.environ.get('PDK', 'sky130A'), choices=('sky130A', 'sky130B'))
    parser.add_argument('--xschem-sharedir', default=os.environ.get('XSCHEM_SHAREDIR'))
    parser.add_argument('--schematic', action='append', type=Path, help='Select a repository-relative schematic; repeat as needed')
    parser.add_argument('--json', action='store_true', help='Print a structured report')
    args = parser.parse_args()
    if not args.local_only:
        if not args.pdk_root or not args.xschem_sharedir:
            parser.error('Set PDK_ROOT and provide --xschem-sharedir (or XSCHEM_SHAREDIR), or use --local-only. See docs/xschem.md.')
        rc = Path(args.pdk_root) / args.pdk / 'libs.tech/xschem/xschemrc'
        if not rc.is_file():
            parser.error(f'Missing PDK configuration: {rc}')
        if not (Path(args.xschem_sharedir) / 'xschem_library/devices').is_dir():
            parser.error('Xschem standard devices directory does not exist')
    if args.schematic:
        files = [(ROOT / path).resolve() for path in args.schematic]
        if any(not f.is_file() or not f.is_relative_to(ROOT) for f in files):
            parser.error('--schematic must select an existing file inside this repository')
    else:
        files = sorted(list((ROOT / 'sky130_cells').rglob('*.sch')) + list((ROOT / 'sky130_dig_cells').rglob('*.sch')) + list(ROOT.rglob('*.sym')))
    result = audit(files, args.pdk_root, args.pdk, args.xschem_sharedir, args.local_only)
    if args.json:
        print(json.dumps(result, indent=2))
    else:
        for issue in result['issues']:
            print(f"{issue['file']}: {issue['reference']}: {issue['reason']}")
        print(f"Checked {result['files_checked']} files; {len(result['issues'])} unresolved references; {len(result['deferred_external'])} external symbols deferred.")
    return 1 if result['issues'] else 0


if __name__ == '__main__':
    raise SystemExit(main())
