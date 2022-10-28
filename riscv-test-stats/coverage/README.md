# Coverage Statistic

The coverpoints used to create tests and capture the quality of the tests is available in the YAML
files in this folder:

- [dataset.yaml](dataset.yaml): this file includes all the common datasets that can be used across multiple instructions
- [rv32ic.yaml      ](rv32ic.yaml): this file includes the coverpoints for 32-bit compressed extension
- [rv32i_fencei.yaml](rv32i_fencei.yaml): this file includes the coverpoints for the fencei extension
- [rv32im.yaml      ](rv32im.yaml): this file includes the coverpoints for 32-bit mul-div extension
- [rv32ik.yaml      ](rv32ik.yaml): this file includes the coverpoints for 32-bit K crypto extension
- [rv32ip.yaml      ](rv32ip.yaml): this file includes the coverpoints for 32-bit packed-SIMD extension
- [rv32i_priv.yaml  ](rv32i_priv.yaml): this file includes the coverpoints for 32-bit privilege cases
- [rv32i.yaml       ](rv32i.yaml): this file includes the coverpoints for 32-bit base extension
- [rv32ib.yaml       ](rv64i.yaml): this file includes the coverpoints for 32-bit bitmanip extension
- [rv64ic.yaml      ](rv64ic.yaml): this file includes the coverpoints for 64-bit compressed extension
- [rv64i_fencei.yaml](rv64i_fencei.yaml): this file includes the coverpoints for the fencei extension
- [rv64im.yaml      ](rv64im.yaml): this file includes the coverpoints for 64-bit mul-div extension
- [rv64ik.yaml      ](rv64ik.yaml): this file includes the coverpoints for 64-bit K crypto extension
- [rv64ip.yaml      ](rv64ip.yaml): this file includes the coverpoints for 64-bit packed-SIMD extension
- [rv64i_priv.yaml  ](rv64i_priv.yaml): this file includes the coverpoints for 64-bit privilege cases
- [rv64i.yaml       ](rv64i.yaml): this file includes the coverpoints for 64-bit base extension
- [rv64ib.yaml       ](rv64i.yaml): this file includes the coverpoints for 64-bit bitmanip extension



## Directory structure
The rest of the directory is structured similar to how the riscv-test-suite directory is structured.
Each leaf folder contains the following 3 files:
1. ``suite_coverage.rpt`` : This is a YAML file contains nodes relevant to the current extension and the count of how many times a particular coverpoint was encountered.
2. ``coverage.html``: A HTML view of the report
4. ``style.css``: A style sheet for HTML file.

## Reports

HTML preview of the reports can be accessed directly through the following links:

- [rv32i_m/I](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv32i_m/I/coverage.html)
- [rv32i_m/M](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv32i_m/M/coverage.html)
- [rv32i_m/C](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv32i_m/C/coverage.html)
- [rv32i_m/privilege](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv32i_m/privilege/coverage.html)
- [rv32i_m/Zifencei](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv32i_m/Zifencei/coverage.html)
- [rv32i_m/K_unratified](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv32i_m/K_unratified/coverage.html)
- [rv32i_m/P_unratified](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv32i_m/P_unratified/coverage.html)
- [rv64i_m/I](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv64i_m/I/coverage.html)
- [rv64i_m/M](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv64i_m/M/coverage.html)
- [rv64i_m/C](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv64i_m/C/coverage.html)
- [rv64i_m/privilege](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv64i_m/privilege/coverage.html)
- [rv64i_m/Zifencei](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv64i_m/Zifencei/coverage.html)
- [rv64i_m/K_unratified](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv64i_m/K_unratified/coverage.html)
- [rv64i_m/P_unratified](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv64i_m/P_unratified/coverage.html)
- RV64D
  
  - [fadd  ](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv64i_m/D/rv64d_fadd/coverage.html)
  - [fclass](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv64i_m/D/rv64d_fclass/coverage.html)
  - [fcvt  ](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv64i_m/D/rv64d_fcvt/coverage.html)
  - [fdiv  ](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv64i_m/D/rv64d_fdiv/coverage.html)
  - [feq   ](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv64i_m/D/rv64d_feq/coverage.html)
  - [fld   ](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv64i_m/D/rv64d_fld/coverage.html)
  - [fle   ](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv64i_m/D/rv64d_fle/coverage.html)
  - [flt   ](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv64i_m/D/rv64d_flt/coverage.html)
  - [fmadd ](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv64i_m/D/rv64d_fmadd/coverage.html)
  - [fmax  ](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv64i_m/D/rv64d_fmax/coverage.html)
  - [fmin  ](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv64i_m/D/rv64d_fmin/coverage.html)
  - [fmsub ](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv64i_m/D/rv64d_fmsub/coverage.html)
  - [fmul  ](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv64i_m/D/rv64d_fmul/coverage.html)
  - [fmv   ](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv64i_m/D/rv64d_fmv/coverage.html)
  - [fnmadd](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv64i_m/D/rv64d_fnmadd/coverage.html)
  - [fnmsub](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv64i_m/D/rv64d_fnmsub/coverage.html)
  - [fsd   ](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv64i_m/D/rv64d_fsd/coverage.html)
  - [fsgn  ](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv64i_m/D/rv64d_fsgn/coverage.html)
  - [fsqrt ](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv64i_m/D/rv64d_fsqrt/coverage.html)
  - [fsub  ](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv64i_m/D/rv64d_fsub/coverage.html)
- RV32F
  
  - [fadd](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv32i_m/F/rv32f_fadd/coverage.html)
  - [fclass](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv32i_m/F/rv32f_fclass/coverage.html)
  - [fcvt](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv32i_m/F/rv32f_fcvt/coverage.html)
  - [fdiv](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv32i_m/F/rv32f_fdiv/coverage.html)
  - [feq](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv32i_m/F/rv32f_feq/coverage.html)
  - [fle](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv32i_m/F/rv32f_fle/coverage.html)
  - [flt](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv32i_m/F/rv32f_flt/coverage.html)
  - [flw](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv32i_m/F/rv32f_flw/coverage.html)
  - [fmadd](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv32i_m/F/rv32f_fmadd/coverage.html)
  - [fmax](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv32i_m/F/rv32f_fmax/coverage.html)
  - [fmin](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv32i_m/F/rv32f_fmin/coverage.html)
  - [fmsub](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv32i_m/F/rv32f_fmsub/coverage.html)
  - [fmul](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv32i_m/F/rv32f_fmul/coverage.html)
  - [fmv](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv32i_m/F/rv32f_fmv/coverage.html)
  - [fnmadd](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv32i_m/F/rv32f_fnmadd/coverage.html)
  - [fnmsub](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv32i_m/F/rv32f_fnmsub/coverage.html)
  - [fsgn](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv32i_m/F/rv32f_fsgn/coverage.html)
  - [fsqrt](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv32i_m/F/rv32f_fsqrt/coverage.html)
  - [fsub](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv32i_m/F/rv32f_fsub/coverage.html)
  - [fsw](https://htmlpreview.github.io/?https://github.com/riscv-non-isa/riscv-arch-test/blob/master/riscv-test-stats/coverage/rv32i_m/F/rv32f_fsw/coverage.html)
