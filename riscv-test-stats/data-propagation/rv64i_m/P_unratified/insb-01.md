
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000550')]      |
| SIG_REGION                | [('0x80002210', '0x80002310', '32 dwords')]      |
| COV_LABELS                | insb      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/insb-01.S    |
| Total Number of coverpoints| 84     |
| Total Coverpoints Hit     | 79      |
| Total Signature Updates   | 32      |
| STAT1                     | 32      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```

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

|s.no|            signature             |                                                     coverpoints                                                      |                                code                                |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80002210]<br>0x8000000000000000|- opcode : insb<br> - rs1 : x30<br> - rd : x30<br> - rs1 == rd<br> - rs1_val == (-2**(xlen-1))<br> - imm_val == 4<br> |[0x800003a0]:INSB t5, t5, 4<br> [0x800003a4]:sd t5, 0(tp)<br>       |
|   2|[0x80002218]<br>0xFF76DF56FF76DF56|- rs1 : x10<br> - rd : x2<br> - rs1 != rd<br> - imm_val == 7<br>                                                      |[0x800003b4]:INSB sp, a0, 7<br> [0x800003b8]:sd sp, 8(tp)<br>       |
|   3|[0x80002220]<br>0x00FF000080000390|- rs1 : x2<br> - rd : x5<br> - imm_val == 6<br>                                                                       |[0x800003c8]:INSB t0, sp, 6<br> [0x800003cc]:sd t0, 16(tp)<br>      |
|   4|[0x80002228]<br>0xFAB7FFB6FAB7FBB6|- rs1 : x12<br> - rd : x15<br> - imm_val == 5<br>                                                                     |[0x800003dc]:INSB a5, a2, 5<br> [0x800003e0]:sd a5, 24(tp)<br>      |
|   5|[0x80002230]<br>0xEEDBEADF00DBEADF|- rs1 : x11<br> - rd : x29<br> - imm_val == 3<br>                                                                     |[0x800003e8]:INSB t4, a1, 3<br> [0x800003ec]:sd t4, 32(tp)<br>      |
|   6|[0x80002238]<br>0x7D5BFDDB7D00FDDB|- rs1 : x3<br> - rd : x16<br> - imm_val == 2<br>                                                                      |[0x800003f4]:INSB a6, gp, 2<br> [0x800003f8]:sd a6, 40(tp)<br>      |
|   7|[0x80002240]<br>0x5BFDDB7D5BFDFF7D|- rs1 : x7<br> - rd : x8<br> - imm_val == 1<br>                                                                       |[0x80000408]:INSB fp, t2, 1<br> [0x8000040c]:sd fp, 48(tp)<br>      |
|   8|[0x80002248]<br>0xFFFFFFFF7FFFFF00|- rs1 : x22<br> - rd : x7<br> - imm_val == 0<br>                                                                      |[0x80000414]:INSB t2, s6, 0<br> [0x80000418]:sd t2, 56(tp)<br>      |
|   9|[0x80002250]<br>0xFFADFEEDBEADFEED|- rs1 : x20<br> - rd : x17<br> - rs1_val == (2**(xlen-1)-1)<br>                                                       |[0x80000428]:INSB a7, s4, 7<br> [0x8000042c]:sd a7, 64(tp)<br>      |
|  10|[0x80002258]<br>0xDB7D5BFDDB7D00FD|- rs1 : x16<br> - rd : x24<br> - rs1_val == 0<br>                                                                     |[0x80000434]:INSB s8, a6, 1<br> [0x80000438]:sd s8, 72(tp)<br>      |
|  11|[0x80002260]<br>0xB6FAB701B6FAB7FB|- rs1 : x28<br> - rd : x23<br> - rs1_val == 1<br>                                                                     |[0x80000440]:INSB s7, t3, 4<br> [0x80000444]:sd s7, 80(tp)<br>      |
|  12|[0x80002268]<br>0x0000000001000000|- rs1 : x29<br> - rd : x11<br>                                                                                        |[0x8000044c]:INSB a1, t4, 0<br> [0x80000450]:sd a1, 88(tp)<br>      |
|  13|[0x80002270]<br>0x0000000004000000|- rs1 : x1<br> - rd : x3<br>                                                                                          |[0x80000458]:INSB gp, ra, 0<br> [0x8000045c]:sd gp, 96(tp)<br>      |
|  14|[0x80002278]<br>0x0000000000000000|- rs1 : x13<br> - rd : x1<br>                                                                                         |[0x80000464]:INSB ra, a3, 0<br> [0x80000468]:sd ra, 104(tp)<br>     |
|  15|[0x80002280]<br>0x0000000000000000|- rs1 : x31<br> - rd : x28<br>                                                                                        |[0x80000470]:INSB t3, t6, 0<br> [0x80000474]:sd t3, 112(tp)<br>     |
|  16|[0x80002288]<br>0xBB6FAB7FBB6FAB00|- rs1 : x8<br> - rd : x27<br>                                                                                         |[0x8000047c]:INSB s11, fp, 0<br> [0x80000480]:sd s11, 120(tp)<br>   |
|  17|[0x80002290]<br>0x0000000000000000|- rs1 : x5<br> - rd : x31<br>                                                                                         |[0x80000488]:INSB t6, t0, 0<br> [0x8000048c]:sd t6, 128(tp)<br>     |
|  18|[0x80002298]<br>0x7FFFFFFFFFFFFF00|- rs1 : x24<br> - rd : x20<br>                                                                                        |[0x80000494]:INSB s4, s8, 0<br> [0x80000498]:sd s4, 136(tp)<br>     |
|  19|[0x800022a0]<br>0xF56FF76DF56FF700|- rs1 : x25<br> - rd : x14<br>                                                                                        |[0x800004a0]:INSB a4, s9, 0<br> [0x800004a4]:sd a4, 144(tp)<br>     |
|  20|[0x800022a8]<br>0x0000000000008000|- rs1 : x23<br> - rd : x22<br>                                                                                        |[0x800004ac]:INSB s6, s7, 0<br> [0x800004b0]:sd s6, 152(tp)<br>     |
|  21|[0x800022b0]<br>0xDF56FF76DF56FF00|- rs1 : x9<br> - rd : x18<br>                                                                                         |[0x800004b8]:INSB s2, s1, 0<br> [0x800004bc]:sd s2, 160(tp)<br>     |
|  22|[0x800022b8]<br>0x0000000000000000|- rs1 : x0<br> - rd : x9<br>                                                                                          |[0x800004c4]:INSB s1, zero, 0<br> [0x800004c8]:sd s1, 168(tp)<br>   |
|  23|[0x800022c0]<br>0x0000000080002000|- rs1 : x17<br> - rd : x6<br>                                                                                         |[0x800004d0]:INSB t1, a7, 0<br> [0x800004d4]:sd t1, 176(tp)<br>     |
|  24|[0x800022c8]<br>0xFFFFFEFFFFFFFF00|- rs1 : x21<br> - rd : x10<br>                                                                                        |[0x800004dc]:INSB a0, s5, 0<br> [0x800004e0]:sd a0, 184(tp)<br>     |
|  25|[0x800022d0]<br>0x76DF56FF76DF5600|- rs1 : x6<br> - rd : x26<br>                                                                                         |[0x800004f0]:INSB s10, t1, 0<br> [0x800004f4]:sd s10, 0(ra)<br>     |
|  26|[0x800022d8]<br>0x0000000000000000|- rs1 : x18<br> - rd : x25<br>                                                                                        |[0x800004fc]:INSB s9, s2, 0<br> [0x80000500]:sd s9, 8(ra)<br>       |
|  27|[0x800022e0]<br>0xFFFFFFFF7FFFFF00|- rs1 : x14<br> - rd : x12<br>                                                                                        |[0x80000508]:INSB a2, a4, 0<br> [0x8000050c]:sd a2, 16(ra)<br>      |
|  28|[0x800022e8]<br>0x0000000000000000|- rs1 : x27<br> - rd : x0<br>                                                                                         |[0x80000514]:INSB zero, s11, 0<br> [0x80000518]:sd zero, 24(ra)<br> |
|  29|[0x800022f0]<br>0x6FAB7FBB6FAB7F00|- rs1 : x15<br> - rd : x19<br>                                                                                        |[0x80000520]:INSB s3, a5, 0<br> [0x80000524]:sd s3, 32(ra)<br>      |
|  30|[0x800022f8]<br>0x0000000000000000|- rs1 : x4<br> - rd : x13<br>                                                                                         |[0x8000052c]:INSB a3, tp, 0<br> [0x80000530]:sd a3, 40(ra)<br>      |
|  31|[0x80002300]<br>0x0000000000000000|- rs1 : x26<br> - rd : x4<br>                                                                                         |[0x80000538]:INSB tp, s10, 0<br> [0x8000053c]:sd tp, 48(ra)<br>     |
|  32|[0x80002308]<br>0x0000000000000000|- rs1 : x19<br> - rd : x21<br>                                                                                        |[0x80000544]:INSB s5, s3, 0<br> [0x80000548]:sd s5, 56(ra)<br>      |
