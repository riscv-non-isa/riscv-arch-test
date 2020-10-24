# Coverage Statistic

The coverpoints used to create tests and capture the quality of the tests is available in the YAML
file: [coverpoint.yaml](coverpoint.yaml)

## Directory structure
The rest of the directory is structured similar to how the riscv-test-suite directory is structured.
Each leaf folder contains the following 3 files:
1. ``suite_coverage.rpt`` : This is a YAML file which is a subset of the coverpoint.yaml. It
   contains nodes relevant to the current extension and the count of how many times a particular
   coverpoint was encountered.
2. ``coverage.html``: A HTML view of the report
4. ``style.css``: A style sheet for HTML file.

## Reports

HTML preview of the reports can be accessed directly through the following links:

- [rv32i_m/I](https://htmlpreview.github.io/?https://github.com/incoresemi/riscv-compliance/blob/dev/coverage/rv32i_m/I/coverage.html)
- [rv32i_m/M](https://htmlpreview.github.io/?https://github.com/incoresemi/riscv-compliance/blob/dev/coverage/rv32i_m/M/coverage.html)
- [rv32i_m/C](https://htmlpreview.github.io/?https://github.com/incoresemi/riscv-compliance/blob/dev/coverage/rv32i_m/C/coverage.html)
- [rv32i_m/privilege](https://htmlpreview.github.io/?https://github.com/incoresemi/riscv-compliance/blob/dev/coverage/rv32i_m/privilege/coverage.html)
- [rv32i_m/Zifencei](https://htmlpreview.github.io/?https://github.com/incoresemi/riscv-compliance/blob/dev/coverage/rv32i_m/Zifencei/coverage.html)
- [rv64i_m/I](https://htmlpreview.github.io/?https://github.com/incoresemi/riscv-compliance/blob/dev/coverage/rv64i_m/I/coverage.html)
- [rv64i_m/M](https://htmlpreview.github.io/?https://github.com/incoresemi/riscv-compliance/blob/dev/coverage/rv64i_m/M/coverage.html)
- [rv64i_m/C](https://htmlpreview.github.io/?https://github.com/incoresemi/riscv-compliance/blob/dev/coverage/rv64i_m/C/coverage.html)
- [rv64i_m/privilege](https://htmlpreview.github.io/?https://github.com/incoresemi/riscv-compliance/blob/dev/coverage/rv64i_m/privilege/coverage.html)
- [rv64i_m/Zifencei](https://htmlpreview.github.io/?https://github.com/incoresemi/riscv-compliance/blob/dev/coverage/rv64i_m/Zifencei/coverage.html)
