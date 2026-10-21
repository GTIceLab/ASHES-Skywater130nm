#!/usr/bin/env bash
set -euo pipefail
repo_root="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
if [[ "${1:-}" == --help || "${1:-}" == -h ]]; then
    echo "Usage: bash scripts/open_xschem.sh [repository-relative schematic.sch] [Xschem options]"
    echo "Set PDK_ROOT to the directory containing sky130A; PDK defaults to sky130A."
    exit 0
fi
command -v xschem >/dev/null || { echo "Xschem is not installed or is not on PATH. See docs/xschem.md." >&2; exit 1; }
: "${PDK_ROOT:?Set PDK_ROOT to the directory containing sky130A; see docs/xschem.md}"
cd "$repo_root"
exec xschem --rcfile="$repo_root/xschemrc" "$@"
