
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x800001a8', '0x80000660')]      |
| SIG_REGION                | [('0x80002210', '0x800024f0', '92 dwords')]      |
| COV_LABELS                | fcvt.l.s_b23      |
| TEST_NAME                 | /home/riscv/Documents/FloatingResults/ArchTests/fcvt.l.s/riscof_work/fcvt.l.s_b23-01.S/ref.S    |
| Total Number of coverpoints| 114     |
| Total Coverpoints Hit     | 110      |
| Total Signature Updates   | 99      |
| STAT1                     | 32      |
| STAT2                     | 14      |
| STAT3                     | 0     |
| STAT4                     | 46     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000518]:fcvt.l.s t6, ft11, dyn
      [0x8000051c]:csrrs a7, fflags, zero
      [0x80000520]:sw t6, 192(a5)
 -- Signature Address: 0x80002410 Data: 0x000000007FFFFF00
 -- Redundant Coverpoints hit by the op
      - opcode : fcvt.l.s
      - rd : x31
      - rs1 : f31
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 1  #nosat




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000530]:fcvt.l.s t6, ft11, dyn
      [0x80000534]:csrrs a7, fflags, zero
      [0x80000538]:sw t6, 208(a5)
 -- Signature Address: 0x80002420 Data: 0x000000007FFFFF00
 -- Redundant Coverpoints hit by the op
      - opcode : fcvt.l.s
      - rd : x31
      - rs1 : f31
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 1  #nosat




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000548]:fcvt.l.s t6, ft11, dyn
      [0x8000054c]:csrrs a7, fflags, zero
      [0x80000550]:sw t6, 224(a5)
 -- Signature Address: 0x80002430 Data: 0x000000007FFFFF00
 -- Redundant Coverpoints hit by the op
      - opcode : fcvt.l.s
      - rd : x31
      - rs1 : f31
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 1  #nosat




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000560]:fcvt.l.s t6, ft11, dyn
      [0x80000564]:csrrs a7, fflags, zero
      [0x80000568]:sw t6, 240(a5)
 -- Signature Address: 0x80002440 Data: 0x000000007FFFFF00
 -- Redundant Coverpoints hit by the op
      - opcode : fcvt.l.s
      - rd : x31
      - rs1 : f31
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 1  #nosat




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000578]:fcvt.l.s t6, ft11, dyn
      [0x8000057c]:csrrs a7, fflags, zero
      [0x80000580]:sw t6, 256(a5)
 -- Signature Address: 0x80002450 Data: 0x000000007FFFFE80
 -- Redundant Coverpoints hit by the op
      - opcode : fcvt.l.s
      - rd : x31
      - rs1 : f31
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 1  #nosat




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000590]:fcvt.l.s t6, ft11, dyn
      [0x80000594]:csrrs a7, fflags, zero
      [0x80000598]:sw t6, 272(a5)
 -- Signature Address: 0x80002460 Data: 0x000000007FFFFE80
 -- Redundant Coverpoints hit by the op
      - opcode : fcvt.l.s
      - rd : x31
      - rs1 : f31
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 1  #nosat




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005a8]:fcvt.l.s t6, ft11, dyn
      [0x800005ac]:csrrs a7, fflags, zero
      [0x800005b0]:sw t6, 288(a5)
 -- Signature Address: 0x80002470 Data: 0x000000007FFFFE80
 -- Redundant Coverpoints hit by the op
      - opcode : fcvt.l.s
      - rd : x31
      - rs1 : f31
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 1  #nosat




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005c0]:fcvt.l.s t6, ft11, dyn
      [0x800005c4]:csrrs a7, fflags, zero
      [0x800005c8]:sw t6, 304(a5)
 -- Signature Address: 0x80002480 Data: 0x000000007FFFFE80
 -- Redundant Coverpoints hit by the op
      - opcode : fcvt.l.s
      - rd : x31
      - rs1 : f31
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 1  #nosat




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005d8]:fcvt.l.s t6, ft11, dyn
      [0x800005dc]:csrrs a7, fflags, zero
      [0x800005e0]:sw t6, 320(a5)
 -- Signature Address: 0x80002490 Data: 0x000000007FFFFE80
 -- Redundant Coverpoints hit by the op
      - opcode : fcvt.l.s
      - rd : x31
      - rs1 : f31
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 1  #nosat




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005f0]:fcvt.l.s t6, ft11, dyn
      [0x800005f4]:csrrs a7, fflags, zero
      [0x800005f8]:sw t6, 336(a5)
 -- Signature Address: 0x800024a0 Data: 0x000000007FFFFE00
 -- Redundant Coverpoints hit by the op
      - opcode : fcvt.l.s
      - rd : x31
      - rs1 : f31
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 1  #nosat




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000608]:fcvt.l.s t6, ft11, dyn
      [0x8000060c]:csrrs a7, fflags, zero
      [0x80000610]:sw t6, 352(a5)
 -- Signature Address: 0x800024b0 Data: 0x000000007FFFFE00
 -- Redundant Coverpoints hit by the op
      - opcode : fcvt.l.s
      - rd : x31
      - rs1 : f31
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 1  #nosat




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000620]:fcvt.l.s t6, ft11, dyn
      [0x80000624]:csrrs a7, fflags, zero
      [0x80000628]:sw t6, 368(a5)
 -- Signature Address: 0x800024c0 Data: 0x000000007FFFFE00
 -- Redundant Coverpoints hit by the op
      - opcode : fcvt.l.s
      - rd : x31
      - rs1 : f31
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 1  #nosat




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000638]:fcvt.l.s t6, ft11, dyn
      [0x8000063c]:csrrs a7, fflags, zero
      [0x80000640]:sw t6, 384(a5)
 -- Signature Address: 0x800024d0 Data: 0x000000007FFFFE00
 -- Redundant Coverpoints hit by the op
      - opcode : fcvt.l.s
      - rd : x31
      - rs1 : f31
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 1  #nosat




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000650]:fcvt.l.s t6, ft11, dyn
      [0x80000654]:csrrs a7, fflags, zero
      [0x80000658]:sw t6, 400(a5)
 -- Signature Address: 0x800024e0 Data: 0x000000007FFFFE00
 -- Redundant Coverpoints hit by the op
      - opcode : fcvt.l.s
      - rd : x31
      - rs1 : f31
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 1  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 0  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 4  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 3  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 2  #nosat
      - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 1  #nosat






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fcvt.l.s', 'rd : x0', 'rs1 : f8', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800001d0]:fcvt.l.s zero, fs0, dyn
	-[0x800001d4]:csrrs a7, fflags, zero
	-[0x800001d8]:sw zero, 0(a5)
Current Store : [0x800001dc] : sw a7, 4(a5) -- Store: [0x80002214]:0x0000000000000000




Last Coverpoint : ['rd : x9', 'rs1 : f9']
Last Code Sequence : 
	-[0x800001e8]:fcvt.l.s s1, fs1, dyn
	-[0x800001ec]:csrrs a7, fflags, zero
	-[0x800001f0]:sw s1, 16(a5)
Current Store : [0x800001f4] : sw a7, 20(a5) -- Store: [0x80002224]:0x0000000000000000




Last Coverpoint : ['rd : x23', 'rs1 : f31']
Last Code Sequence : 
	-[0x80000200]:fcvt.l.s s7, ft11, dyn
	-[0x80000204]:csrrs a7, fflags, zero
	-[0x80000208]:sw s7, 32(a5)
Current Store : [0x8000020c] : sw a7, 36(a5) -- Store: [0x80002234]:0x0000000000000000




Last Coverpoint : ['rd : x17', 'rs1 : f15']
Last Code Sequence : 
	-[0x80000224]:fcvt.l.s a7, fa5, dyn
	-[0x80000228]:csrrs s5, fflags, zero
	-[0x8000022c]:sw a7, 0(s3)
Current Store : [0x80000230] : sw s5, 4(s3) -- Store: [0x80002244]:0x0000000000000000




Last Coverpoint : ['rd : x3', 'rs1 : f25']
Last Code Sequence : 
	-[0x80000248]:fcvt.l.s gp, fs9, dyn
	-[0x8000024c]:csrrs a7, fflags, zero
	-[0x80000250]:sw gp, 0(a5)
Current Store : [0x80000254] : sw a7, 4(a5) -- Store: [0x80002254]:0x0000000000000000




Last Coverpoint : ['rd : x1', 'rs1 : f19']
Last Code Sequence : 
	-[0x80000260]:fcvt.l.s ra, fs3, dyn
	-[0x80000264]:csrrs a7, fflags, zero
	-[0x80000268]:sw ra, 16(a5)
Current Store : [0x8000026c] : sw a7, 20(a5) -- Store: [0x80002264]:0x0000000000000000




Last Coverpoint : ['rd : x4', 'rs1 : f27']
Last Code Sequence : 
	-[0x80000278]:fcvt.l.s tp, fs11, dyn
	-[0x8000027c]:csrrs a7, fflags, zero
	-[0x80000280]:sw tp, 32(a5)
Current Store : [0x80000284] : sw a7, 36(a5) -- Store: [0x80002274]:0x0000000000000000




Last Coverpoint : ['rd : x22', 'rs1 : f14']
Last Code Sequence : 
	-[0x80000290]:fcvt.l.s s6, fa4, dyn
	-[0x80000294]:csrrs a7, fflags, zero
	-[0x80000298]:sw s6, 48(a5)
Current Store : [0x8000029c] : sw a7, 52(a5) -- Store: [0x80002284]:0x0000000000000000




Last Coverpoint : ['rd : x8', 'rs1 : f23']
Last Code Sequence : 
	-[0x800002a8]:fcvt.l.s fp, fs7, dyn
	-[0x800002ac]:csrrs a7, fflags, zero
	-[0x800002b0]:sw fp, 64(a5)
Current Store : [0x800002b4] : sw a7, 68(a5) -- Store: [0x80002294]:0x0000000000000000




Last Coverpoint : ['rd : x31', 'rs1 : f17']
Last Code Sequence : 
	-[0x800002c0]:fcvt.l.s t6, fa7, dyn
	-[0x800002c4]:csrrs a7, fflags, zero
	-[0x800002c8]:sw t6, 80(a5)
Current Store : [0x800002cc] : sw a7, 84(a5) -- Store: [0x800022a4]:0x0000000000000000




Last Coverpoint : ['rd : x29', 'rs1 : f1']
Last Code Sequence : 
	-[0x800002d8]:fcvt.l.s t4, ft1, dyn
	-[0x800002dc]:csrrs a7, fflags, zero
	-[0x800002e0]:sw t4, 96(a5)
Current Store : [0x800002e4] : sw a7, 100(a5) -- Store: [0x800022b4]:0x0000000000000000




Last Coverpoint : ['rd : x19', 'rs1 : f20']
Last Code Sequence : 
	-[0x800002f0]:fcvt.l.s s3, fs4, dyn
	-[0x800002f4]:csrrs a7, fflags, zero
	-[0x800002f8]:sw s3, 112(a5)
Current Store : [0x800002fc] : sw a7, 116(a5) -- Store: [0x800022c4]:0x0000000000000000




Last Coverpoint : ['rd : x5', 'rs1 : f16']
Last Code Sequence : 
	-[0x80000308]:fcvt.l.s t0, fa6, dyn
	-[0x8000030c]:csrrs a7, fflags, zero
	-[0x80000310]:sw t0, 128(a5)
Current Store : [0x80000314] : sw a7, 132(a5) -- Store: [0x800022d4]:0x0000000000000000




Last Coverpoint : ['rd : x20', 'rs1 : f3']
Last Code Sequence : 
	-[0x80000320]:fcvt.l.s s4, ft3, dyn
	-[0x80000324]:csrrs a7, fflags, zero
	-[0x80000328]:sw s4, 144(a5)
Current Store : [0x8000032c] : sw a7, 148(a5) -- Store: [0x800022e4]:0x0000000000000000




Last Coverpoint : ['rd : x12', 'rs1 : f22']
Last Code Sequence : 
	-[0x80000338]:fcvt.l.s a2, fs6, dyn
	-[0x8000033c]:csrrs a7, fflags, zero
	-[0x80000340]:sw a2, 160(a5)
Current Store : [0x80000344] : sw a7, 164(a5) -- Store: [0x800022f4]:0x0000000000000000




Last Coverpoint : ['rd : x25', 'rs1 : f0']
Last Code Sequence : 
	-[0x80000350]:fcvt.l.s s9, ft0, dyn
	-[0x80000354]:csrrs a7, fflags, zero
	-[0x80000358]:sw s9, 176(a5)
Current Store : [0x8000035c] : sw a7, 180(a5) -- Store: [0x80002304]:0x0000000000000000




Last Coverpoint : ['rd : x6', 'rs1 : f4']
Last Code Sequence : 
	-[0x80000368]:fcvt.l.s t1, ft4, dyn
	-[0x8000036c]:csrrs a7, fflags, zero
	-[0x80000370]:sw t1, 192(a5)
Current Store : [0x80000374] : sw a7, 196(a5) -- Store: [0x80002314]:0x0000000000000000




Last Coverpoint : ['rd : x16', 'rs1 : f13']
Last Code Sequence : 
	-[0x8000038c]:fcvt.l.s a6, fa3, dyn
	-[0x80000390]:csrrs s5, fflags, zero
	-[0x80000394]:sw a6, 0(s3)
Current Store : [0x80000398] : sw s5, 4(s3) -- Store: [0x80002324]:0x0000000000000000




Last Coverpoint : ['rd : x7', 'rs1 : f29']
Last Code Sequence : 
	-[0x800003b0]:fcvt.l.s t2, ft9, dyn
	-[0x800003b4]:csrrs a7, fflags, zero
	-[0x800003b8]:sw t2, 0(a5)
Current Store : [0x800003bc] : sw a7, 4(a5) -- Store: [0x80002334]:0x0000000000000000




Last Coverpoint : ['rd : x15', 'rs1 : f12']
Last Code Sequence : 
	-[0x800003d4]:fcvt.l.s a5, fa2, dyn
	-[0x800003d8]:csrrs s5, fflags, zero
	-[0x800003dc]:sw a5, 0(s3)
Current Store : [0x800003e0] : sw s5, 4(s3) -- Store: [0x80002344]:0x0000000000000000




Last Coverpoint : ['rd : x30', 'rs1 : f5']
Last Code Sequence : 
	-[0x800003f8]:fcvt.l.s t5, ft5, dyn
	-[0x800003fc]:csrrs a7, fflags, zero
	-[0x80000400]:sw t5, 0(a5)
Current Store : [0x80000404] : sw a7, 4(a5) -- Store: [0x80002354]:0x0000000000000000




Last Coverpoint : ['rd : x24', 'rs1 : f11']
Last Code Sequence : 
	-[0x80000410]:fcvt.l.s s8, fa1, dyn
	-[0x80000414]:csrrs a7, fflags, zero
	-[0x80000418]:sw s8, 16(a5)
Current Store : [0x8000041c] : sw a7, 20(a5) -- Store: [0x80002364]:0x0000000000000000




Last Coverpoint : ['rd : x13', 'rs1 : f21']
Last Code Sequence : 
	-[0x80000428]:fcvt.l.s a3, fs5, dyn
	-[0x8000042c]:csrrs a7, fflags, zero
	-[0x80000430]:sw a3, 32(a5)
Current Store : [0x80000434] : sw a7, 36(a5) -- Store: [0x80002374]:0x0000000000000000




Last Coverpoint : ['rd : x2', 'rs1 : f30']
Last Code Sequence : 
	-[0x80000440]:fcvt.l.s sp, ft10, dyn
	-[0x80000444]:csrrs a7, fflags, zero
	-[0x80000448]:sw sp, 48(a5)
Current Store : [0x8000044c] : sw a7, 52(a5) -- Store: [0x80002384]:0x0000000000000000




Last Coverpoint : ['rd : x14', 'rs1 : f2']
Last Code Sequence : 
	-[0x80000458]:fcvt.l.s a4, ft2, dyn
	-[0x8000045c]:csrrs a7, fflags, zero
	-[0x80000460]:sw a4, 64(a5)
Current Store : [0x80000464] : sw a7, 68(a5) -- Store: [0x80002394]:0x0000000000000000




Last Coverpoint : ['rd : x18', 'rs1 : f10']
Last Code Sequence : 
	-[0x80000470]:fcvt.l.s s2, fa0, dyn
	-[0x80000474]:csrrs a7, fflags, zero
	-[0x80000478]:sw s2, 80(a5)
Current Store : [0x8000047c] : sw a7, 84(a5) -- Store: [0x800023a4]:0x0000000000000000




Last Coverpoint : ['rd : x21', 'rs1 : f7']
Last Code Sequence : 
	-[0x80000488]:fcvt.l.s s5, ft7, dyn
	-[0x8000048c]:csrrs a7, fflags, zero
	-[0x80000490]:sw s5, 96(a5)
Current Store : [0x80000494] : sw a7, 100(a5) -- Store: [0x800023b4]:0x0000000000000000




Last Coverpoint : ['rd : x26', 'rs1 : f24']
Last Code Sequence : 
	-[0x800004a0]:fcvt.l.s s10, fs8, dyn
	-[0x800004a4]:csrrs a7, fflags, zero
	-[0x800004a8]:sw s10, 112(a5)
Current Store : [0x800004ac] : sw a7, 116(a5) -- Store: [0x800023c4]:0x0000000000000000




Last Coverpoint : ['rd : x11', 'rs1 : f18']
Last Code Sequence : 
	-[0x800004b8]:fcvt.l.s a1, fs2, dyn
	-[0x800004bc]:csrrs a7, fflags, zero
	-[0x800004c0]:sw a1, 128(a5)
Current Store : [0x800004c4] : sw a7, 132(a5) -- Store: [0x800023d4]:0x0000000000000000




Last Coverpoint : ['rd : x10', 'rs1 : f28']
Last Code Sequence : 
	-[0x800004d0]:fcvt.l.s a0, ft8, dyn
	-[0x800004d4]:csrrs a7, fflags, zero
	-[0x800004d8]:sw a0, 144(a5)
Current Store : [0x800004dc] : sw a7, 148(a5) -- Store: [0x800023e4]:0x0000000000000000




Last Coverpoint : ['rd : x27', 'rs1 : f26']
Last Code Sequence : 
	-[0x800004e8]:fcvt.l.s s11, fs10, dyn
	-[0x800004ec]:csrrs a7, fflags, zero
	-[0x800004f0]:sw s11, 160(a5)
Current Store : [0x800004f4] : sw a7, 164(a5) -- Store: [0x800023f4]:0x0000000000000000




Last Coverpoint : ['rd : x28', 'rs1 : f6']
Last Code Sequence : 
	-[0x80000500]:fcvt.l.s t3, ft6, dyn
	-[0x80000504]:csrrs a7, fflags, zero
	-[0x80000508]:sw t3, 176(a5)
Current Store : [0x8000050c] : sw a7, 180(a5) -- Store: [0x80002404]:0x0000000000000000




Last Coverpoint : ['opcode : fcvt.l.s', 'rd : x31', 'rs1 : f31', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000518]:fcvt.l.s t6, ft11, dyn
	-[0x8000051c]:csrrs a7, fflags, zero
	-[0x80000520]:sw t6, 192(a5)
Current Store : [0x80000524] : sw a7, 196(a5) -- Store: [0x80002414]:0x0000000000000000




Last Coverpoint : ['opcode : fcvt.l.s', 'rd : x31', 'rs1 : f31', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000530]:fcvt.l.s t6, ft11, dyn
	-[0x80000534]:csrrs a7, fflags, zero
	-[0x80000538]:sw t6, 208(a5)
Current Store : [0x8000053c] : sw a7, 212(a5) -- Store: [0x80002424]:0x0000000000000000




Last Coverpoint : ['opcode : fcvt.l.s', 'rd : x31', 'rs1 : f31', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000548]:fcvt.l.s t6, ft11, dyn
	-[0x8000054c]:csrrs a7, fflags, zero
	-[0x80000550]:sw t6, 224(a5)
Current Store : [0x80000554] : sw a7, 228(a5) -- Store: [0x80002434]:0x0000000000000000




Last Coverpoint : ['opcode : fcvt.l.s', 'rd : x31', 'rs1 : f31', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000560]:fcvt.l.s t6, ft11, dyn
	-[0x80000564]:csrrs a7, fflags, zero
	-[0x80000568]:sw t6, 240(a5)
Current Store : [0x8000056c] : sw a7, 244(a5) -- Store: [0x80002444]:0x0000000000000000




Last Coverpoint : ['opcode : fcvt.l.s', 'rd : x31', 'rs1 : f31', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000578]:fcvt.l.s t6, ft11, dyn
	-[0x8000057c]:csrrs a7, fflags, zero
	-[0x80000580]:sw t6, 256(a5)
Current Store : [0x80000584] : sw a7, 260(a5) -- Store: [0x80002454]:0x0000000000000000




Last Coverpoint : ['opcode : fcvt.l.s', 'rd : x31', 'rs1 : f31', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000590]:fcvt.l.s t6, ft11, dyn
	-[0x80000594]:csrrs a7, fflags, zero
	-[0x80000598]:sw t6, 272(a5)
Current Store : [0x8000059c] : sw a7, 276(a5) -- Store: [0x80002464]:0x0000000000000000




Last Coverpoint : ['opcode : fcvt.l.s', 'rd : x31', 'rs1 : f31', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800005a8]:fcvt.l.s t6, ft11, dyn
	-[0x800005ac]:csrrs a7, fflags, zero
	-[0x800005b0]:sw t6, 288(a5)
Current Store : [0x800005b4] : sw a7, 292(a5) -- Store: [0x80002474]:0x0000000000000000




Last Coverpoint : ['opcode : fcvt.l.s', 'rd : x31', 'rs1 : f31', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800005c0]:fcvt.l.s t6, ft11, dyn
	-[0x800005c4]:csrrs a7, fflags, zero
	-[0x800005c8]:sw t6, 304(a5)
Current Store : [0x800005cc] : sw a7, 308(a5) -- Store: [0x80002484]:0x0000000000000000




Last Coverpoint : ['opcode : fcvt.l.s', 'rd : x31', 'rs1 : f31', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800005d8]:fcvt.l.s t6, ft11, dyn
	-[0x800005dc]:csrrs a7, fflags, zero
	-[0x800005e0]:sw t6, 320(a5)
Current Store : [0x800005e4] : sw a7, 324(a5) -- Store: [0x80002494]:0x0000000000000000




Last Coverpoint : ['opcode : fcvt.l.s', 'rd : x31', 'rs1 : f31', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800005f0]:fcvt.l.s t6, ft11, dyn
	-[0x800005f4]:csrrs a7, fflags, zero
	-[0x800005f8]:sw t6, 336(a5)
Current Store : [0x800005fc] : sw a7, 340(a5) -- Store: [0x800024a4]:0x0000000000000000




Last Coverpoint : ['opcode : fcvt.l.s', 'rd : x31', 'rs1 : f31', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000608]:fcvt.l.s t6, ft11, dyn
	-[0x8000060c]:csrrs a7, fflags, zero
	-[0x80000610]:sw t6, 352(a5)
Current Store : [0x80000614] : sw a7, 356(a5) -- Store: [0x800024b4]:0x0000000000000000




Last Coverpoint : ['opcode : fcvt.l.s', 'rd : x31', 'rs1 : f31', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000620]:fcvt.l.s t6, ft11, dyn
	-[0x80000624]:csrrs a7, fflags, zero
	-[0x80000628]:sw t6, 368(a5)
Current Store : [0x8000062c] : sw a7, 372(a5) -- Store: [0x800024c4]:0x0000000000000000




Last Coverpoint : ['opcode : fcvt.l.s', 'rd : x31', 'rs1 : f31', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000638]:fcvt.l.s t6, ft11, dyn
	-[0x8000063c]:csrrs a7, fflags, zero
	-[0x80000640]:sw t6, 384(a5)
Current Store : [0x80000644] : sw a7, 388(a5) -- Store: [0x800024d4]:0x0000000000000000




Last Coverpoint : ['opcode : fcvt.l.s', 'rd : x31', 'rs1 : f31', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 1  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 0  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 4  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 3  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 2  #nosat', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000650]:fcvt.l.s t6, ft11, dyn
	-[0x80000654]:csrrs a7, fflags, zero
	-[0x80000658]:sw t6, 400(a5)
Current Store : [0x8000065c] : sw a7, 404(a5) -- Store: [0x800024e4]:0x0000000000000000





```

## Details of STAT5:



## Details of STAT1:

- The first column indicates the signature address and the data at that location in hexadecimal in the following format: 
  ```
  [Address]
  Data
  ```

- The second column captures all the coverpoints which have been captured by that particular signature location

- The third column captures all the insrtuctions since the time a coverpoint was
  hit to the point when a store to the signature was performed. Each line has
  the following format:
  ```
  [PC of instruction] : mnemonic
  ```
- The order in the table is based on the order of signatures occuring in the
  test. These need not necessarily be in increasing or decreasing order of the
  address in the signature region.

|s.no|            signature             |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            coverpoints                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |                                                       code                                                       |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0000000000000000|- opcode : fcvt.l.s<br> - rd : x0<br> - rs1 : f8<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 0  #nosat<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 4  #nosat<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 3  #nosat<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 2  #nosat<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 1  #nosat<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000004 and rm_val == 0  #nosat<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 4  #nosat<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 3  #nosat<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 2  #nosat<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 1  #nosat<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000003 and rm_val == 0  #nosat<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 4  #nosat<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 3  #nosat<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 2  #nosat<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 1  #nosat<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000002 and rm_val == 0  #nosat<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 4  #nosat<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 3  #nosat<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 2  #nosat<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 1  #nosat<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000001 and rm_val == 0  #nosat<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 4  #nosat<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 3  #nosat<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 2  #nosat<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 1  #nosat<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 4  #nosat<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 3  #nosat<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 2  #nosat<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 1  #nosat<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 4  #nosat<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 3  #nosat<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 2  #nosat<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 1  #nosat<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffe and rm_val == 0  #nosat<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 4  #nosat<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 3  #nosat<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 2  #nosat<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 1  #nosat<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffd and rm_val == 0  #nosat<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 4  #nosat<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 3  #nosat<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 2  #nosat<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7ffffc and rm_val == 1  #nosat<br> |[0x800001d0]:fcvt.l.s zero, fs0, dyn<br> [0x800001d4]:csrrs a7, fflags, zero<br> [0x800001d8]:sw zero, 0(a5)<br>  |
|   2|[0x80002220]<br>0x0000000080000400|- rd : x9<br> - rs1 : f9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800001e8]:fcvt.l.s s1, fs1, dyn<br> [0x800001ec]:csrrs a7, fflags, zero<br> [0x800001f0]:sw s1, 16(a5)<br>     |
|   3|[0x80002230]<br>0x0000000080000400|- rd : x23<br> - rs1 : f31<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000200]:fcvt.l.s s7, ft11, dyn<br> [0x80000204]:csrrs a7, fflags, zero<br> [0x80000208]:sw s7, 32(a5)<br>    |
|   4|[0x80002240]<br>0x0000000080000400|- rd : x17<br> - rs1 : f15<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000224]:fcvt.l.s a7, fa5, dyn<br> [0x80000228]:csrrs s5, fflags, zero<br> [0x8000022c]:sw a7, 0(s3)<br>      |
|   5|[0x80002250]<br>0x0000000080000400|- rd : x3<br> - rs1 : f25<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000248]:fcvt.l.s gp, fs9, dyn<br> [0x8000024c]:csrrs a7, fflags, zero<br> [0x80000250]:sw gp, 0(a5)<br>      |
|   6|[0x80002260]<br>0x0000000080000400|- rd : x1<br> - rs1 : f19<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000260]:fcvt.l.s ra, fs3, dyn<br> [0x80000264]:csrrs a7, fflags, zero<br> [0x80000268]:sw ra, 16(a5)<br>     |
|   7|[0x80002270]<br>0x0000000080000300|- rd : x4<br> - rs1 : f27<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000278]:fcvt.l.s tp, fs11, dyn<br> [0x8000027c]:csrrs a7, fflags, zero<br> [0x80000280]:sw tp, 32(a5)<br>    |
|   8|[0x80002280]<br>0x0000000080000300|- rd : x22<br> - rs1 : f14<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000290]:fcvt.l.s s6, fa4, dyn<br> [0x80000294]:csrrs a7, fflags, zero<br> [0x80000298]:sw s6, 48(a5)<br>     |
|   9|[0x80002290]<br>0x0000000080000300|- rd : x8<br> - rs1 : f23<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800002a8]:fcvt.l.s fp, fs7, dyn<br> [0x800002ac]:csrrs a7, fflags, zero<br> [0x800002b0]:sw fp, 64(a5)<br>     |
|  10|[0x800022a0]<br>0x0000000080000300|- rd : x31<br> - rs1 : f17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800002c0]:fcvt.l.s t6, fa7, dyn<br> [0x800002c4]:csrrs a7, fflags, zero<br> [0x800002c8]:sw t6, 80(a5)<br>     |
|  11|[0x800022b0]<br>0x0000000080000300|- rd : x29<br> - rs1 : f1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800002d8]:fcvt.l.s t4, ft1, dyn<br> [0x800002dc]:csrrs a7, fflags, zero<br> [0x800002e0]:sw t4, 96(a5)<br>     |
|  12|[0x800022c0]<br>0x0000000080000200|- rd : x19<br> - rs1 : f20<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800002f0]:fcvt.l.s s3, fs4, dyn<br> [0x800002f4]:csrrs a7, fflags, zero<br> [0x800002f8]:sw s3, 112(a5)<br>    |
|  13|[0x800022d0]<br>0x0000000080000200|- rd : x5<br> - rs1 : f16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000308]:fcvt.l.s t0, fa6, dyn<br> [0x8000030c]:csrrs a7, fflags, zero<br> [0x80000310]:sw t0, 128(a5)<br>    |
|  14|[0x800022e0]<br>0x0000000080000200|- rd : x20<br> - rs1 : f3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000320]:fcvt.l.s s4, ft3, dyn<br> [0x80000324]:csrrs a7, fflags, zero<br> [0x80000328]:sw s4, 144(a5)<br>    |
|  15|[0x800022f0]<br>0x0000000080000200|- rd : x12<br> - rs1 : f22<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000338]:fcvt.l.s a2, fs6, dyn<br> [0x8000033c]:csrrs a7, fflags, zero<br> [0x80000340]:sw a2, 160(a5)<br>    |
|  16|[0x80002300]<br>0x0000000080000200|- rd : x25<br> - rs1 : f0<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000350]:fcvt.l.s s9, ft0, dyn<br> [0x80000354]:csrrs a7, fflags, zero<br> [0x80000358]:sw s9, 176(a5)<br>    |
|  17|[0x80002310]<br>0x0000000080000100|- rd : x6<br> - rs1 : f4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000368]:fcvt.l.s t1, ft4, dyn<br> [0x8000036c]:csrrs a7, fflags, zero<br> [0x80000370]:sw t1, 192(a5)<br>    |
|  18|[0x80002320]<br>0x0000000080000100|- rd : x16<br> - rs1 : f13<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x8000038c]:fcvt.l.s a6, fa3, dyn<br> [0x80000390]:csrrs s5, fflags, zero<br> [0x80000394]:sw a6, 0(s3)<br>      |
|  19|[0x80002330]<br>0x0000000080000100|- rd : x7<br> - rs1 : f29<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800003b0]:fcvt.l.s t2, ft9, dyn<br> [0x800003b4]:csrrs a7, fflags, zero<br> [0x800003b8]:sw t2, 0(a5)<br>      |
|  20|[0x80002340]<br>0x0000000080000100|- rd : x15<br> - rs1 : f12<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800003d4]:fcvt.l.s a5, fa2, dyn<br> [0x800003d8]:csrrs s5, fflags, zero<br> [0x800003dc]:sw a5, 0(s3)<br>      |
|  21|[0x80002350]<br>0x0000000080000100|- rd : x30<br> - rs1 : f5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800003f8]:fcvt.l.s t5, ft5, dyn<br> [0x800003fc]:csrrs a7, fflags, zero<br> [0x80000400]:sw t5, 0(a5)<br>      |
|  22|[0x80002360]<br>0x0000000080000000|- rd : x24<br> - rs1 : f11<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000410]:fcvt.l.s s8, fa1, dyn<br> [0x80000414]:csrrs a7, fflags, zero<br> [0x80000418]:sw s8, 16(a5)<br>     |
|  23|[0x80002370]<br>0x0000000080000000|- rd : x13<br> - rs1 : f21<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000428]:fcvt.l.s a3, fs5, dyn<br> [0x8000042c]:csrrs a7, fflags, zero<br> [0x80000430]:sw a3, 32(a5)<br>     |
|  24|[0x80002380]<br>0x0000000080000000|- rd : x2<br> - rs1 : f30<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000440]:fcvt.l.s sp, ft10, dyn<br> [0x80000444]:csrrs a7, fflags, zero<br> [0x80000448]:sw sp, 48(a5)<br>    |
|  25|[0x80002390]<br>0x0000000080000000|- rd : x14<br> - rs1 : f2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000458]:fcvt.l.s a4, ft2, dyn<br> [0x8000045c]:csrrs a7, fflags, zero<br> [0x80000460]:sw a4, 64(a5)<br>     |
|  26|[0x800023a0]<br>0x0000000080000000|- rd : x18<br> - rs1 : f10<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000470]:fcvt.l.s s2, fa0, dyn<br> [0x80000474]:csrrs a7, fflags, zero<br> [0x80000478]:sw s2, 80(a5)<br>     |
|  27|[0x800023b0]<br>0x000000007FFFFF80|- rd : x21<br> - rs1 : f7<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000488]:fcvt.l.s s5, ft7, dyn<br> [0x8000048c]:csrrs a7, fflags, zero<br> [0x80000490]:sw s5, 96(a5)<br>     |
|  28|[0x800023c0]<br>0x000000007FFFFF80|- rd : x26<br> - rs1 : f24<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800004a0]:fcvt.l.s s10, fs8, dyn<br> [0x800004a4]:csrrs a7, fflags, zero<br> [0x800004a8]:sw s10, 112(a5)<br>  |
|  29|[0x800023d0]<br>0x000000007FFFFF80|- rd : x11<br> - rs1 : f18<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800004b8]:fcvt.l.s a1, fs2, dyn<br> [0x800004bc]:csrrs a7, fflags, zero<br> [0x800004c0]:sw a1, 128(a5)<br>    |
|  30|[0x800023e0]<br>0x000000007FFFFF80|- rd : x10<br> - rs1 : f28<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800004d0]:fcvt.l.s a0, ft8, dyn<br> [0x800004d4]:csrrs a7, fflags, zero<br> [0x800004d8]:sw a0, 144(a5)<br>    |
|  31|[0x800023f0]<br>0x000000007FFFFF80|- rd : x27<br> - rs1 : f26<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800004e8]:fcvt.l.s s11, fs10, dyn<br> [0x800004ec]:csrrs a7, fflags, zero<br> [0x800004f0]:sw s11, 160(a5)<br> |
|  32|[0x80002400]<br>0x000000007FFFFF00|- rd : x28<br> - rs1 : f6<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000500]:fcvt.l.s t3, ft6, dyn<br> [0x80000504]:csrrs a7, fflags, zero<br> [0x80000508]:sw t3, 176(a5)<br>    |
