# Contributing

Use Sky130 sources and public tool interfaces. Do not add unrelated foundry data,
PDK installations, machine-specific absolute paths, credentials, or generated
routing/build output. Keep editable cell sources alongside layout changes.

For interface changes, regenerate affected cell definitions and run the trial.
Report tool revisions, commands, DRC/LVS status, and remaining limitations.
Preserve third-party notices and submit original contributions under Apache-2.0.

Generation commands include every requested cell and stop on errors. Do not
silently filter problematic labels or cells to make validation appear to pass.
