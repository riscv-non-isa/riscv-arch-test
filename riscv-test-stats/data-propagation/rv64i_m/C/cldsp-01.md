
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800005c0')]      |
| SIG_REGION                | [('0x80003208', '0x80003300', '31 dwords')]      |
| COV_LABELS                | cldsp      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cldsp-01.S/cldsp-01.S    |
| Total Number of coverpoints| 48     |
| Total Coverpoints Hit     | 48      |
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

|s.no|            signature             |                      coverpoints                      |                                                     code                                                     |
|---:|----------------------------------|-------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
|   1|[0x80003208]<br>0x00000000BABECAFE|- opcode : c.ldsp<br> - rd : x12<br> - imm_val > 0<br> |[0x800003a0]:c.ldsp a2, 5<br> [0x800003a2]:c.nop<br> [0x800003a4]:c.nop<br> [0x800003a6]:c.sd a5, a2, 0<br>   |
|   2|[0x80003210]<br>0x00000000BABECAFE|- rd : x30<br> - imm_val == 0<br>                      |[0x800003b0]:c.ldsp t5, 0<br> [0x800003b2]:c.nop<br> [0x800003b4]:c.nop<br> [0x800003b6]:sd t5, 8(a5)<br>     |
|   3|[0x80003218]<br>0x00000000BABECAFE|- rd : x1<br> - imm_val == 8<br>                       |[0x800003c2]:c.ldsp ra, 1<br> [0x800003c4]:c.nop<br> [0x800003c6]:c.nop<br> [0x800003c8]:sd ra, 16(a5)<br>    |
|   4|[0x80003220]<br>0x00000000BABECAFE|- rd : x5<br> - imm_val == 16<br>                      |[0x800003d4]:c.ldsp t0, 2<br> [0x800003d6]:c.nop<br> [0x800003d8]:c.nop<br> [0x800003da]:sd t0, 24(a5)<br>    |
|   5|[0x80003228]<br>0x00000000BABECAFE|- rd : x19<br> - imm_val == 32<br>                     |[0x800003e6]:c.ldsp s3, 4<br> [0x800003e8]:c.nop<br> [0x800003ea]:c.nop<br> [0x800003ec]:sd s3, 32(a5)<br>    |
|   6|[0x80003230]<br>0x00000000BABECAFE|- rd : x3<br> - imm_val == 64<br>                      |[0x800003f8]:c.ldsp gp, 8<br> [0x800003fa]:c.nop<br> [0x800003fc]:c.nop<br> [0x800003fe]:sd gp, 40(a5)<br>    |
|   7|[0x80003238]<br>0x00000000BABECAFE|- rd : x25<br> - imm_val == 128<br>                    |[0x8000040a]:c.ldsp s9, 16<br> [0x8000040c]:c.nop<br> [0x8000040e]:c.nop<br> [0x80000410]:sd s9, 48(a5)<br>   |
|   8|[0x80003240]<br>0x00000000BABECAFE|- rd : x13<br> - imm_val == 256<br>                    |[0x8000041c]:c.ldsp a3, 32<br> [0x8000041e]:c.nop<br> [0x80000420]:c.nop<br> [0x80000422]:c.sd a5, a3, 56<br> |
|   9|[0x80003248]<br>0x00000000BABECAFE|- rd : x11<br> - imm_val == 496<br>                    |[0x8000042c]:c.ldsp a1, 62<br> [0x8000042e]:c.nop<br> [0x80000430]:c.nop<br> [0x80000432]:c.sd a5, a1, 64<br> |
|  10|[0x80003250]<br>0x00000000BABECAFE|- rd : x8<br> - imm_val == 488<br>                     |[0x8000043c]:c.ldsp fp, 61<br> [0x8000043e]:c.nop<br> [0x80000440]:c.nop<br> [0x80000442]:c.sd a5, s0, 72<br> |
|  11|[0x80003258]<br>0x00000000BABECAFE|- rd : x23<br> - imm_val == 472<br>                    |[0x8000044c]:c.ldsp s7, 59<br> [0x8000044e]:c.nop<br> [0x80000450]:c.nop<br> [0x80000452]:sd s7, 80(a5)<br>   |
|  12|[0x80003260]<br>0x00000000BABECAFE|- rd : x9<br> - imm_val == 440<br>                     |[0x8000045e]:c.ldsp s1, 55<br> [0x80000460]:c.nop<br> [0x80000462]:c.nop<br> [0x80000464]:c.sd a5, s1, 88<br> |
|  13|[0x80003268]<br>0x00000000BABECAFE|- rd : x7<br> - imm_val == 376<br>                     |[0x8000046e]:c.ldsp t2, 47<br> [0x80000470]:c.nop<br> [0x80000472]:c.nop<br> [0x80000474]:sd t2, 96(a5)<br>   |
|  14|[0x80003270]<br>0x00000000BABECAFE|- rd : x22<br> - imm_val == 248<br>                    |[0x80000480]:c.ldsp s6, 31<br> [0x80000482]:c.nop<br> [0x80000484]:c.nop<br> [0x80000486]:sd s6, 104(a5)<br>  |
|  15|[0x80003278]<br>0x00000000BABECAFE|- rd : x6<br> - imm_val == 168<br>                     |[0x80000492]:c.ldsp t1, 21<br> [0x80000494]:c.nop<br> [0x80000496]:c.nop<br> [0x80000498]:sd t1, 112(a5)<br>  |
|  16|[0x80003280]<br>0x00000000BABECAFE|- rd : x29<br> - imm_val == 336<br>                    |[0x800004a4]:c.ldsp t4, 42<br> [0x800004a6]:c.nop<br> [0x800004a8]:c.nop<br> [0x800004aa]:sd t4, 120(a5)<br>  |
|  17|[0x80003288]<br>0x00000000BABECAFE|- rd : x26<br>                                         |[0x800004b6]:c.ldsp s10, 0<br> [0x800004b8]:c.nop<br> [0x800004ba]:c.nop<br> [0x800004bc]:sd s10, 128(a5)<br> |
|  18|[0x80003290]<br>0x00000000BABECAFE|- rd : x18<br>                                         |[0x800004c8]:c.ldsp s2, 0<br> [0x800004ca]:c.nop<br> [0x800004cc]:c.nop<br> [0x800004ce]:sd s2, 136(a5)<br>   |
|  19|[0x80003298]<br>0x00000000BABECAFE|- rd : x16<br>                                         |[0x800004da]:c.ldsp a6, 0<br> [0x800004dc]:c.nop<br> [0x800004de]:c.nop<br> [0x800004e0]:sd a6, 144(a5)<br>   |
|  20|[0x800032a0]<br>0x00000000BABECAFE|- rd : x28<br>                                         |[0x800004ec]:c.ldsp t3, 0<br> [0x800004ee]:c.nop<br> [0x800004f0]:c.nop<br> [0x800004f2]:sd t3, 152(a5)<br>   |
|  21|[0x800032a8]<br>0x00000000BABECAFE|- rd : x2<br>                                          |[0x800004fe]:c.ldsp sp, 0<br> [0x80000500]:c.nop<br> [0x80000502]:c.nop<br> [0x80000504]:sd sp, 160(a5)<br>   |
|  22|[0x800032b0]<br>0x00000000BABECAFE|- rd : x21<br>                                         |[0x80000510]:c.ldsp s5, 0<br> [0x80000512]:c.nop<br> [0x80000514]:c.nop<br> [0x80000516]:sd s5, 168(a5)<br>   |
|  23|[0x800032b8]<br>0x00000000BABECAFE|- rd : x4<br>                                          |[0x80000522]:c.ldsp tp, 0<br> [0x80000524]:c.nop<br> [0x80000526]:c.nop<br> [0x80000528]:sd tp, 176(a5)<br>   |
|  24|[0x800032c0]<br>0x00000000BABECAFE|- rd : x17<br>                                         |[0x80000534]:c.ldsp a7, 0<br> [0x80000536]:c.nop<br> [0x80000538]:c.nop<br> [0x8000053a]:sd a7, 184(a5)<br>   |
|  25|[0x800032c8]<br>0x00000000BABECAFE|- rd : x10<br>                                         |[0x80000546]:c.ldsp a0, 0<br> [0x80000548]:c.nop<br> [0x8000054a]:c.nop<br> [0x8000054c]:c.sd a5, a0, 192<br> |
|  26|[0x800032d0]<br>0x00000000BABECAFE|- rd : x14<br>                                         |[0x80000556]:c.ldsp a4, 0<br> [0x80000558]:c.nop<br> [0x8000055a]:c.nop<br> [0x8000055c]:c.sd a5, a4, 200<br> |
|  27|[0x800032d8]<br>0x00000000BABECAFE|- rd : x24<br>                                         |[0x80000566]:c.ldsp s8, 0<br> [0x80000568]:c.nop<br> [0x8000056a]:c.nop<br> [0x8000056c]:sd s8, 208(a5)<br>   |
|  28|[0x800032e0]<br>0x00000000BABECAFE|- rd : x27<br>                                         |[0x80000578]:c.ldsp s11, 0<br> [0x8000057a]:c.nop<br> [0x8000057c]:c.nop<br> [0x8000057e]:sd s11, 216(a5)<br> |
|  29|[0x800032e8]<br>0x00000000BABECAFE|- rd : x15<br>                                         |[0x80000592]:c.ldsp a5, 0<br> [0x80000594]:c.nop<br> [0x80000596]:c.nop<br> [0x80000598]:sd a5, 0(ra)<br>     |
|  30|[0x800032f0]<br>0x00000000BABECAFE|- rd : x31<br>                                         |[0x800005a4]:c.ldsp t6, 0<br> [0x800005a6]:c.nop<br> [0x800005a8]:c.nop<br> [0x800005aa]:sd t6, 8(ra)<br>     |
|  31|[0x800032f8]<br>0x00000000BABECAFE|- rd : x20<br>                                         |[0x800005b6]:c.ldsp s4, 0<br> [0x800005b8]:c.nop<br> [0x800005ba]:c.nop<br> [0x800005bc]:sd s4, 16(ra)<br>    |
