## Failing Tests

- rv32i_m/C/cebreak.S: There has been update to the spec where ebreak now stores pc in mtval
- rv32i_m/I/jal-01.S : reason not known. Needs more debug
- misalign-lh-01.S, misalign-lhu-01.S, misalign-lw-01.S, misalign-sh-01.S, misalign-sw-01.S: grift
  seems to support miasligned accesses. The references are uploaded for targets without misaligned
  support
