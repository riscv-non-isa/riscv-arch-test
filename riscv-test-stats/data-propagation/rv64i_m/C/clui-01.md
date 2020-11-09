
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000510')]      |
| SIG_REGION                | [('0x80003208', '0x80003300', '31 dwords')]      |
| COV_LABELS                | clui      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/clui-01.S/clui-01.S    |
| Total Number of coverpoints| 50     |
| Total Coverpoints Hit     | 50      |
| Total Signature Updates   | 31      |
| STAT1                     | 31      |
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

|s.no|            signature             |                                     coverpoints                                      |                              code                               |
|---:|----------------------------------|--------------------------------------------------------------------------------------|-----------------------------------------------------------------|
|   1|[0x80003208]<br>0xFFFFFFFFFFFFF000|- opcode : c.lui<br> - rd : x23<br> - rs1_val > 0 and imm_val > 32<br>                |[0x8000039c]:c.lui s7, 63<br> [0x8000039e]:sd s7, 0(ra)<br>      |
|   2|[0x80003210]<br>0x000000000000D000|- rd : x17<br> - rs1_val > 0 and imm_val < 32 and imm_val !=0 <br>                    |[0x800003a6]:c.lui a7, 13<br> [0x800003a8]:sd a7, 8(ra)<br>      |
|   3|[0x80003218]<br>0xFFFFFFFFFFFF7000|- rd : x15<br> - rs1_val < 0 and imm_val > 32<br> - imm_val == 55<br>                 |[0x800003b0]:c.lui a5, 55<br> [0x800003b2]:sd a5, 16(ra)<br>     |
|   4|[0x80003220]<br>0x0000000000001000|- rd : x19<br> - rs1_val < 0 and imm_val < 32 and imm_val !=0 <br> - imm_val == 1<br> |[0x800003c2]:c.lui s3, 1<br> [0x800003c4]:sd s3, 24(ra)<br>      |
|   5|[0x80003228]<br>0x0000000000002000|- rd : x3<br> - imm_val == 2<br>                                                      |[0x800003d4]:c.lui gp, 2<br> [0x800003d6]:sd gp, 32(ra)<br>      |
|   6|[0x80003230]<br>0x0000000000004000|- rd : x27<br> - imm_val == 4<br>                                                     |[0x800003e2]:c.lui s11, 4<br> [0x800003e4]:sd s11, 40(ra)<br>    |
|   7|[0x80003238]<br>0x0000000000008000|- rd : x8<br> - imm_val == 8<br>                                                      |[0x800003ec]:c.lui fp, 8<br> [0x800003ee]:sd fp, 48(ra)<br>      |
|   8|[0x80003240]<br>0x0000000000010000|- rd : x24<br> - imm_val == 16<br>                                                    |[0x800003f6]:c.lui s8, 16<br> [0x800003f8]:sd s8, 56(ra)<br>     |
|   9|[0x80003248]<br>0xFFFFFFFFFFFE0000|- rd : x26<br> - imm_val == 32<br>                                                    |[0x80000408]:c.lui s10, 32<br> [0x8000040a]:sd s10, 64(ra)<br>   |
|  10|[0x80003250]<br>0x0000000000015000|- rd : x4<br> - imm_val == 21<br>                                                     |[0x80000412]:c.lui tp, 21<br> [0x80000414]:sd tp, 72(ra)<br>     |
|  11|[0x80003258]<br>0xFFFFFFFFFFFEA000|- rd : x31<br> - imm_val == 42<br>                                                    |[0x80000420]:c.lui t6, 42<br> [0x80000422]:sd t6, 80(ra)<br>     |
|  12|[0x80003260]<br>0xFFFFFFFFFFFFE000|- rd : x20<br> - imm_val == 62<br>                                                    |[0x8000042e]:c.lui s4, 62<br> [0x80000430]:sd s4, 88(ra)<br>     |
|  13|[0x80003268]<br>0xFFFFFFFFFFFFD000|- rd : x25<br> - imm_val == 61<br>                                                    |[0x80000440]:c.lui s9, 61<br> [0x80000442]:sd s9, 96(ra)<br>     |
|  14|[0x80003270]<br>0xFFFFFFFFFFFFB000|- rd : x5<br> - imm_val == 59<br>                                                     |[0x8000044a]:c.lui t0, 59<br> [0x8000044c]:sd t0, 104(ra)<br>    |
|  15|[0x80003278]<br>0xFFFFFFFFFFFEF000|- rd : x12<br> - imm_val == 47<br>                                                    |[0x80000458]:c.lui a2, 47<br> [0x8000045a]:sd a2, 112(ra)<br>    |
|  16|[0x80003280]<br>0x000000000001F000|- rd : x11<br> - imm_val == 31<br>                                                    |[0x8000046a]:c.lui a1, 31<br> [0x8000046c]:sd a1, 120(ra)<br>    |
|  17|[0x80003288]<br>0x0000000000010000|- rd : x10<br>                                                                        |[0x80000474]:c.lui a0, 16<br> [0x80000476]:sd a0, 128(ra)<br>    |
|  18|[0x80003290]<br>0x0000000000010000|- rd : x9<br>                                                                         |[0x8000047e]:c.lui s1, 16<br> [0x80000480]:sd s1, 136(ra)<br>    |
|  19|[0x80003298]<br>0x0000000000010000|- rd : x13<br>                                                                        |[0x80000488]:c.lui a3, 16<br> [0x8000048a]:sd a3, 144(ra)<br>    |
|  20|[0x800032a0]<br>0x0000000000010000|- rd : x18<br>                                                                        |[0x80000492]:c.lui s2, 16<br> [0x80000494]:sd s2, 152(ra)<br>    |
|  21|[0x800032a8]<br>0x0000000000010000|- rd : x29<br>                                                                        |[0x8000049c]:c.lui t4, 16<br> [0x8000049e]:sd t4, 160(ra)<br>    |
|  22|[0x800032b0]<br>0x0000000000010000|- rd : x16<br>                                                                        |[0x800004a6]:c.lui a6, 16<br> [0x800004a8]:sd a6, 168(ra)<br>    |
|  23|[0x800032b8]<br>0x0000000000010000|- rd : x30<br>                                                                        |[0x800004b0]:c.lui t5, 16<br> [0x800004b2]:sd t5, 176(ra)<br>    |
|  24|[0x800032c0]<br>0x0000000000010000|- rd : x22<br>                                                                        |[0x800004ba]:c.lui s6, 16<br> [0x800004bc]:sd s6, 184(ra)<br>    |
|  25|[0x800032c8]<br>0x0000000000010000|- rd : x28<br>                                                                        |[0x800004c4]:c.lui t3, 16<br> [0x800004c6]:sd t3, 192(ra)<br>    |
|  26|[0x800032d0]<br>0x0000000000000000|- rd : x0<br>                                                                         |[0x800004ce]:c.lui.hint.16<br> [0x800004d0]:sd zero, 200(ra)<br> |
|  27|[0x800032d8]<br>0x0000000000010000|- rd : x6<br>                                                                         |[0x800004d8]:c.lui t1, 16<br> [0x800004da]:sd t1, 208(ra)<br>    |
|  28|[0x800032e0]<br>0x0000000000010000|- rd : x21<br>                                                                        |[0x800004e2]:c.lui s5, 16<br> [0x800004e4]:sd s5, 216(ra)<br>    |
|  29|[0x800032e8]<br>0x0000000000010000|- rd : x14<br>                                                                        |[0x800004ec]:c.lui a4, 16<br> [0x800004ee]:sd a4, 224(ra)<br>    |
|  30|[0x800032f0]<br>0x0000000000010000|- rd : x1<br>                                                                         |[0x800004fe]:c.lui ra, 16<br> [0x80000500]:c.sdsp ra, 0<br>      |
|  31|[0x800032f8]<br>0x0000000000010000|- rd : x7<br>                                                                         |[0x80000506]:c.lui t2, 16<br> [0x80000508]:c.sdsp t2, 1<br>      |
