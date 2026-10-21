"""Tcl configuration checks with mock installations; no GUI/PDK bundled."""
import os
from pathlib import Path
import subprocess
import tempfile
import unittest

ROOT = Path(__file__).resolve().parents[1]


class XschemSetupTests(unittest.TestCase):
    def run_tcl(self, script, env):
        return subprocess.run(['tclsh'], input='if {[catch {\n' + script + '\n} message]} {puts stderr $message; exit 1}\n',
                              env=env, capture_output=True, text=True)

    def test_config_loads_pdk_then_retains_standard_and_repo_paths(self):
        with tempfile.TemporaryDirectory(prefix='xschem setup ') as td:
            directory = Path(td)
            pdk = directory / 'pdks/sky130A/libs.tech/xschem'
            pdk.mkdir(parents=True)
            (pdk / 'xschemrc').write_text('set XSCHEM_LIBRARY_PATH [file dirname [info script]]\nset mock_pdk_loaded 1\n')
            shared = directory / 'share/xschem'
            (shared / 'xschem_library/devices').mkdir(parents=True)
            env = dict(os.environ, PDK_ROOT=str(directory / 'pdks'), PDK='sky130A', XSCHEM_SHAREDIR=str(shared))
            rc = str(ROOT / 'xschemrc')
            script = 'source {' + rc + '}\n'
            script += 'if {$mock_pdk_loaded != 1} {error "PDK not loaded"}\n'
            for expected in (ROOT, pdk, shared / 'xschem_library', shared / 'xschem_library/devices'):
                script += 'if {{' + str(expected) + '} ni [split $XSCHEM_LIBRARY_PATH :]} {error "Missing library path"}\n'
            script += 'if {$XSCHEM_START_WINDOW ne ""} {error "Unexpected startup schematic"}\n'
            result = self.run_tcl(script, env)
            self.assertEqual(result.returncode, 0, result.stderr)

    def test_missing_pdk_root_has_actionable_error(self):
        env = dict(os.environ)
        env.pop('PDK_ROOT', None)
        result = self.run_tcl('source {' + str(ROOT / 'xschemrc') + '}', env)
        self.assertNotEqual(result.returncode, 0)
        self.assertIn('Set PDK_ROOT', result.stderr)

    def test_missing_pdk_configuration_has_actionable_error(self):
        with tempfile.TemporaryDirectory() as td:
            env = dict(os.environ, PDK_ROOT=td, PDK='sky130A')
            result = self.run_tcl('source {' + str(ROOT / 'xschemrc') + '}', env)
            self.assertNotEqual(result.returncode, 0)
            self.assertIn('Missing', result.stderr)

    def test_launcher_help_needs_no_gui(self):
        result = subprocess.run(['bash', str(ROOT / 'scripts/open_xschem.sh'), '--help'], capture_output=True, text=True)
        self.assertEqual(result.returncode, 0)
        self.assertIn('PDK_ROOT', result.stdout)


if __name__ == '__main__':
    unittest.main()
