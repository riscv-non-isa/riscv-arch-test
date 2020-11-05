
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800004e0')]      |
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

|s.no|            signature             |                                        coverpoints                                        |                              code                              |
|---:|----------------------------------|-------------------------------------------------------------------------------------------|----------------------------------------------------------------|
|   1|[0x80003208]<br>0xFFFFFFFFFFFFB000|- opcode : c.lui<br> - rd : x16<br> - rs1_val > 0 and imm_val > 32<br> - imm_val == 59<br> |[0x800003a0]:c.lui a6, 59<br> [0x800003a2]:c.sdsp a6, 0<br>     |
|   2|[0x80003210]<br>0x0000000000010000|- rd : x11<br> - rs1_val > 0 and imm_val < 32 and imm_val !=0 <br> - imm_val == 16<br>     |[0x800003a8]:c.lui a1, 16<br> [0x800003aa]:c.sdsp a1, 1<br>     |
|   3|[0x80003218]<br>0xFFFFFFFFFFFF7000|- rd : x26<br> - rs1_val < 0 and imm_val > 32<br> - imm_val == 55<br>                      |[0x800003b4]:c.lui s10, 55<br> [0x800003b6]:c.sdsp s10, 2<br>   |
|   4|[0x80003220]<br>0x0000000000001000|- rd : x29<br> - rs1_val < 0 and imm_val < 32 and imm_val !=0 <br> - imm_val == 1<br>      |[0x800003c0]:c.lui t4, 1<br> [0x800003c2]:c.sdsp t4, 3<br>      |
|   5|[0x80003228]<br>0x0000000000002000|- rd : x12<br> - imm_val == 2<br>                                                          |[0x800003d0]:c.lui a2, 2<br> [0x800003d2]:c.sdsp a2, 4<br>      |
|   6|[0x80003230]<br>0x0000000000004000|- rd : x19<br> - imm_val == 4<br>                                                          |[0x800003e0]:c.lui s3, 4<br> [0x800003e2]:c.sdsp s3, 5<br>      |
|   7|[0x80003238]<br>0x0000000000008000|- rd : x23<br> - imm_val == 8<br>                                                          |[0x800003f0]:c.lui s7, 8<br> [0x800003f2]:c.sdsp s7, 6<br>      |
|   8|[0x80003240]<br>0x0000000000015000|- rd : x17<br> - imm_val == 21<br>                                                         |[0x800003f8]:c.lui a7, 21<br> [0x800003fa]:c.sdsp a7, 7<br>     |
|   9|[0x80003248]<br>0xFFFFFFFFFFFEA000|- rd : x20<br> - imm_val == 42<br>                                                         |[0x80000408]:c.lui s4, 42<br> [0x8000040a]:c.sdsp s4, 8<br>     |
|  10|[0x80003250]<br>0xFFFFFFFFFFFE0000|- rd : x8<br> - imm_val == 32<br>                                                          |[0x80000414]:c.lui fp, 32<br> [0x80000416]:c.sdsp fp, 9<br>     |
|  11|[0x80003258]<br>0xFFFFFFFFFFFFE000|- rd : x4<br> - imm_val == 62<br>                                                          |[0x8000041c]:c.lui tp, 62<br> [0x8000041e]:c.sdsp tp, 10<br>    |
|  12|[0x80003260]<br>0xFFFFFFFFFFFFD000|- rd : x3<br> - imm_val == 61<br>                                                          |[0x8000042c]:c.lui gp, 61<br> [0x8000042e]:c.sdsp gp, 11<br>    |
|  13|[0x80003268]<br>0x0000000000000000|- rd : x0<br> - imm_val == 47<br>                                                          |[0x80000438]:c.lui.hint.47<br> [0x8000043a]:c.sdsp zero, 12<br> |
|  14|[0x80003270]<br>0x000000000001F000|- rd : x13<br> - imm_val == 31<br>                                                         |[0x80000444]:c.lui a3, 31<br> [0x80000446]:c.sdsp a3, 13<br>    |
|  15|[0x80003278]<br>0x0000000000010000|- rd : x31<br>                                                                             |[0x8000044c]:c.lui t6, 16<br> [0x8000044e]:c.sdsp t6, 14<br>    |
|  16|[0x80003280]<br>0x0000000000010000|- rd : x9<br>                                                                              |[0x80000454]:c.lui s1, 16<br> [0x80000456]:c.sdsp s1, 15<br>    |
|  17|[0x80003288]<br>0x0000000000010000|- rd : x7<br>                                                                              |[0x8000045c]:c.lui t2, 16<br> [0x8000045e]:c.sdsp t2, 16<br>    |
|  18|[0x80003290]<br>0x0000000000010000|- rd : x18<br>                                                                             |[0x80000464]:c.lui s2, 16<br> [0x80000466]:c.sdsp s2, 17<br>    |
|  19|[0x80003298]<br>0x0000000000010000|- rd : x10<br>                                                                             |[0x8000046c]:c.lui a0, 16<br> [0x8000046e]:c.sdsp a0, 18<br>    |
|  20|[0x800032a0]<br>0x0000000000010000|- rd : x24<br>                                                                             |[0x80000474]:c.lui s8, 16<br> [0x80000476]:c.sdsp s8, 19<br>    |
|  21|[0x800032a8]<br>0x0000000000010000|- rd : x5<br>                                                                              |[0x8000047c]:c.lui t0, 16<br> [0x8000047e]:c.sdsp t0, 20<br>    |
|  22|[0x800032b0]<br>0x0000000000010000|- rd : x14<br>                                                                             |[0x80000484]:c.lui a4, 16<br> [0x80000486]:c.sdsp a4, 21<br>    |
|  23|[0x800032b8]<br>0x0000000000010000|- rd : x30<br>                                                                             |[0x8000048c]:c.lui t5, 16<br> [0x8000048e]:c.sdsp t5, 22<br>    |
|  24|[0x800032c0]<br>0x0000000000010000|- rd : x22<br>                                                                             |[0x80000494]:c.lui s6, 16<br> [0x80000496]:c.sdsp s6, 23<br>    |
|  25|[0x800032c8]<br>0x0000000000010000|- rd : x27<br>                                                                             |[0x8000049c]:c.lui s11, 16<br> [0x8000049e]:c.sdsp s11, 24<br>  |
|  26|[0x800032d0]<br>0x0000000000010000|- rd : x28<br>                                                                             |[0x800004a4]:c.lui t3, 16<br> [0x800004a6]:c.sdsp t3, 25<br>    |
|  27|[0x800032d8]<br>0x0000000000010000|- rd : x1<br>                                                                              |[0x800004ac]:c.lui ra, 16<br> [0x800004ae]:c.sdsp ra, 26<br>    |
|  28|[0x800032e0]<br>0x0000000000010000|- rd : x6<br>                                                                              |[0x800004b4]:c.lui t1, 16<br> [0x800004b6]:c.sdsp t1, 27<br>    |
|  29|[0x800032e8]<br>0x0000000000010000|- rd : x25<br>                                                                             |[0x800004bc]:c.lui s9, 16<br> [0x800004be]:c.sdsp s9, 28<br>    |
|  30|[0x800032f0]<br>0x0000000000010000|- rd : x15<br>                                                                             |[0x800004cc]:c.lui a5, 16<br> [0x800004ce]:sd a5, 0(ra)<br>     |
|  31|[0x800032f8]<br>0x0000000000010000|- rd : x21<br>                                                                             |[0x800004d6]:c.lui s5, 16<br> [0x800004d8]:sd s5, 8(ra)<br>     |
