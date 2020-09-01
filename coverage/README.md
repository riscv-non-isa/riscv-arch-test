# Coverage Reports

The coverpoints used to create tests and capture the quality of the tests is available in the YAML
file: [coverpoint.yaml](coverpoint.yaml)

The rest of the directory is structured similar to how the riscv-test-suite directory is structured.
Each leaf folder contains the following 3 files:
1. ``suite_coverage.rpt`` : This is a YAML file which is a subset of the coverpoint.yaml. It
   contains nodes relevant to the current extension and the count of how many times a particular
   coverpoint was encountered.
2. ``coverage.html``: A HTML view of the report
4. ``style.css``: A style sheet for HTML file.
