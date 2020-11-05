
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800005d0')]      |
| SIG_REGION                | [('0x80003204', '0x80003308', '32 dwords')]      |
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
|   1|[0x80003210]<br>0x00000000BABECAFE|- opcode : c.ldsp<br> - rd : x18<br> - imm_val > 0<br> |[0x800003a0]:c.ldsp s2, 15<br> [0x800003a2]:c.nop<br> [0x800003a4]:c.nop<br> [0x800003a6]:sd s2, 0(ra)<br>    |
|   2|[0x80003218]<br>0x00000000BABECAFE|- rd : x8<br> - imm_val == 0<br>                       |[0x800003b2]:c.ldsp fp, 0<br> [0x800003b4]:c.nop<br> [0x800003b6]:c.nop<br> [0x800003b8]:sd fp, 8(ra)<br>     |
|   3|[0x80003220]<br>0x00000000BABECAFE|- rd : x17<br> - imm_val == 8<br>                      |[0x800003c4]:c.ldsp a7, 1<br> [0x800003c6]:c.nop<br> [0x800003c8]:c.nop<br> [0x800003ca]:sd a7, 16(ra)<br>    |
|   4|[0x80003228]<br>0x00000000BABECAFE|- rd : x9<br> - imm_val == 16<br>                      |[0x800003d6]:c.ldsp s1, 2<br> [0x800003d8]:c.nop<br> [0x800003da]:c.nop<br> [0x800003dc]:sd s1, 24(ra)<br>    |
|   5|[0x80003230]<br>0x00000000BABECAFE|- rd : x10<br> - imm_val == 32<br>                     |[0x800003e8]:c.ldsp a0, 4<br> [0x800003ea]:c.nop<br> [0x800003ec]:c.nop<br> [0x800003ee]:sd a0, 32(ra)<br>    |
|   6|[0x80003238]<br>0x00000000BABECAFE|- rd : x22<br> - imm_val == 64<br>                     |[0x800003fa]:c.ldsp s6, 8<br> [0x800003fc]:c.nop<br> [0x800003fe]:c.nop<br> [0x80000400]:sd s6, 40(ra)<br>    |
|   7|[0x80003240]<br>0x00000000BABECAFE|- rd : x31<br> - imm_val == 128<br>                    |[0x8000040c]:c.ldsp t6, 16<br> [0x8000040e]:c.nop<br> [0x80000410]:c.nop<br> [0x80000412]:sd t6, 48(ra)<br>   |
|   8|[0x80003248]<br>0x00000000BABECAFE|- rd : x23<br> - imm_val == 256<br>                    |[0x8000041e]:c.ldsp s7, 32<br> [0x80000420]:c.nop<br> [0x80000422]:c.nop<br> [0x80000424]:sd s7, 56(ra)<br>   |
|   9|[0x80003250]<br>0x00000000BABECAFE|- rd : x11<br> - imm_val == 496<br>                    |[0x80000430]:c.ldsp a1, 62<br> [0x80000432]:c.nop<br> [0x80000434]:c.nop<br> [0x80000436]:sd a1, 64(ra)<br>   |
|  10|[0x80003258]<br>0x00000000BABECAFE|- rd : x27<br> - imm_val == 488<br>                    |[0x80000442]:c.ldsp s11, 61<br> [0x80000444]:c.nop<br> [0x80000446]:c.nop<br> [0x80000448]:sd s11, 72(ra)<br> |
|  11|[0x80003260]<br>0x00000000BABECAFE|- rd : x12<br> - imm_val == 472<br>                    |[0x80000454]:c.ldsp a2, 59<br> [0x80000456]:c.nop<br> [0x80000458]:c.nop<br> [0x8000045a]:sd a2, 80(ra)<br>   |
|  12|[0x80003268]<br>0x00000000BABECAFE|- rd : x4<br> - imm_val == 440<br>                     |[0x80000466]:c.ldsp tp, 55<br> [0x80000468]:c.nop<br> [0x8000046a]:c.nop<br> [0x8000046c]:sd tp, 88(ra)<br>   |
|  13|[0x80003270]<br>0x00000000BABECAFE|- rd : x7<br> - imm_val == 376<br>                     |[0x80000478]:c.ldsp t2, 47<br> [0x8000047a]:c.nop<br> [0x8000047c]:c.nop<br> [0x8000047e]:sd t2, 96(ra)<br>   |
|  14|[0x80003278]<br>0x00000000BABECAFE|- rd : x19<br> - imm_val == 248<br>                    |[0x8000048a]:c.ldsp s3, 31<br> [0x8000048c]:c.nop<br> [0x8000048e]:c.nop<br> [0x80000490]:sd s3, 104(ra)<br>  |
|  15|[0x80003280]<br>0x00000000BABECAFE|- rd : x14<br> - imm_val == 168<br>                    |[0x8000049c]:c.ldsp a4, 21<br> [0x8000049e]:c.nop<br> [0x800004a0]:c.nop<br> [0x800004a2]:sd a4, 112(ra)<br>  |
|  16|[0x80003288]<br>0x00000000BABECAFE|- rd : x30<br> - imm_val == 336<br>                    |[0x800004ae]:c.ldsp t5, 42<br> [0x800004b0]:c.nop<br> [0x800004b2]:c.nop<br> [0x800004b4]:sd t5, 120(ra)<br>  |
|  17|[0x80003290]<br>0x00000000BABECAFE|- rd : x2<br>                                          |[0x800004c0]:c.ldsp sp, 0<br> [0x800004c2]:c.nop<br> [0x800004c4]:c.nop<br> [0x800004c6]:sd sp, 128(ra)<br>   |
|  18|[0x80003298]<br>0x00000000BABECAFE|- rd : x5<br>                                          |[0x800004d2]:c.ldsp t0, 0<br> [0x800004d4]:c.nop<br> [0x800004d6]:c.nop<br> [0x800004d8]:sd t0, 136(ra)<br>   |
|  19|[0x800032a0]<br>0x00000000BABECAFE|- rd : x28<br>                                         |[0x800004e4]:c.ldsp t3, 0<br> [0x800004e6]:c.nop<br> [0x800004e8]:c.nop<br> [0x800004ea]:sd t3, 144(ra)<br>   |
|  20|[0x800032a8]<br>0x00000000BABECAFE|- rd : x21<br>                                         |[0x800004f6]:c.ldsp s5, 0<br> [0x800004f8]:c.nop<br> [0x800004fa]:c.nop<br> [0x800004fc]:sd s5, 152(ra)<br>   |
|  21|[0x800032b0]<br>0x00000000BABECAFE|- rd : x16<br>                                         |[0x80000508]:c.ldsp a6, 0<br> [0x8000050a]:c.nop<br> [0x8000050c]:c.nop<br> [0x8000050e]:sd a6, 160(ra)<br>   |
|  22|[0x800032b8]<br>0x00000000BABECAFE|- rd : x13<br>                                         |[0x8000051a]:c.ldsp a3, 0<br> [0x8000051c]:c.nop<br> [0x8000051e]:c.nop<br> [0x80000520]:sd a3, 168(ra)<br>   |
|  23|[0x800032c0]<br>0x00000000BABECAFE|- rd : x3<br>                                          |[0x8000052c]:c.ldsp gp, 0<br> [0x8000052e]:c.nop<br> [0x80000530]:c.nop<br> [0x80000532]:sd gp, 176(ra)<br>   |
|  24|[0x800032c8]<br>0x00000000BABECAFE|- rd : x29<br>                                         |[0x8000053e]:c.ldsp t4, 0<br> [0x80000540]:c.nop<br> [0x80000542]:c.nop<br> [0x80000544]:sd t4, 184(ra)<br>   |
|  25|[0x800032d0]<br>0x00000000BABECAFE|- rd : x20<br>                                         |[0x80000550]:c.ldsp s4, 0<br> [0x80000552]:c.nop<br> [0x80000554]:c.nop<br> [0x80000556]:sd s4, 192(ra)<br>   |
|  26|[0x800032d8]<br>0x00000000BABECAFE|- rd : x6<br>                                          |[0x80000562]:c.ldsp t1, 0<br> [0x80000564]:c.nop<br> [0x80000566]:c.nop<br> [0x80000568]:sd t1, 200(ra)<br>   |
|  27|[0x800032e0]<br>0x00000000BABECAFE|- rd : x26<br>                                         |[0x80000574]:c.ldsp s10, 0<br> [0x80000576]:c.nop<br> [0x80000578]:c.nop<br> [0x8000057a]:sd s10, 208(ra)<br> |
|  28|[0x800032e8]<br>0x00000000BABECAFE|- rd : x15<br>                                         |[0x80000586]:c.ldsp a5, 0<br> [0x80000588]:c.nop<br> [0x8000058a]:c.nop<br> [0x8000058c]:sd a5, 216(ra)<br>   |
|  29|[0x800032f0]<br>0x00000000BABECAFE|- rd : x1<br>                                          |[0x800005a0]:c.ldsp ra, 0<br> [0x800005a2]:c.nop<br> [0x800005a4]:c.nop<br> [0x800005a6]:sd ra, 0(gp)<br>     |
|  30|[0x800032f8]<br>0x00000000BABECAFE|- rd : x25<br>                                         |[0x800005b2]:c.ldsp s9, 0<br> [0x800005b4]:c.nop<br> [0x800005b6]:c.nop<br> [0x800005b8]:sd s9, 8(gp)<br>     |
|  31|[0x80003300]<br>0x00000000BABECAFE|- rd : x24<br>                                         |[0x800005c4]:c.ldsp s8, 0<br> [0x800005c6]:c.nop<br> [0x800005c8]:c.nop<br> [0x800005ca]:sd s8, 16(gp)<br>    |
