
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
| SIG_REGION                | [('0x80003208', '0x80003300', '31 dwords')]      |
| COV_LABELS                | clwsp      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/clwsp-01.S/clwsp-01.S    |
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

|s.no|            signature             |                                coverpoints                                |                                                     code                                                     |
|---:|----------------------------------|---------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
|   1|[0x80003208]<br>0xFFFFFFFFBABECAFE|- opcode : c.lwsp<br> - rd : x13<br> - imm_val > 0<br> - imm_val == 16<br> |[0x800003a0]:c.lwsp a3, 4<br> [0x800003a2]:c.nop<br> [0x800003a4]:c.nop<br> [0x800003a6]:sd a3, 0(a7)<br>     |
|   2|[0x80003210]<br>0xFFFFFFFFBABECAFE|- rd : x18<br> - imm_val == 0<br>                                          |[0x800003b2]:c.lwsp s2, 0<br> [0x800003b4]:c.nop<br> [0x800003b6]:c.nop<br> [0x800003b8]:sd s2, 8(a7)<br>     |
|   3|[0x80003218]<br>0xFFFFFFFFBABECAFE|- rd : x29<br> - imm_val == 4<br>                                          |[0x800003c4]:c.lwsp t4, 1<br> [0x800003c6]:c.nop<br> [0x800003c8]:c.nop<br> [0x800003ca]:sd t4, 16(a7)<br>    |
|   4|[0x80003220]<br>0xFFFFFFFFBABECAFE|- rd : x10<br> - imm_val == 8<br>                                          |[0x800003d6]:c.lwsp a0, 2<br> [0x800003d8]:c.nop<br> [0x800003da]:c.nop<br> [0x800003dc]:sd a0, 24(a7)<br>    |
|   5|[0x80003228]<br>0xFFFFFFFFBABECAFE|- rd : x11<br> - imm_val == 32<br>                                         |[0x800003e8]:c.lwsp a1, 8<br> [0x800003ea]:c.nop<br> [0x800003ec]:c.nop<br> [0x800003ee]:sd a1, 32(a7)<br>    |
|   6|[0x80003230]<br>0xFFFFFFFFBABECAFE|- rd : x16<br> - imm_val == 64<br>                                         |[0x800003fa]:c.lwsp a6, 16<br> [0x800003fc]:c.nop<br> [0x800003fe]:c.nop<br> [0x80000400]:sd a6, 40(a7)<br>   |
|   7|[0x80003238]<br>0xFFFFFFFFBABECAFE|- rd : x6<br> - imm_val == 128<br>                                         |[0x8000040c]:c.lwsp t1, 32<br> [0x8000040e]:c.nop<br> [0x80000410]:c.nop<br> [0x80000412]:sd t1, 48(a7)<br>   |
|   8|[0x80003240]<br>0xFFFFFFFFBABECAFE|- rd : x28<br> - imm_val == 248<br>                                        |[0x8000041e]:c.lwsp t3, 62<br> [0x80000420]:c.nop<br> [0x80000422]:c.nop<br> [0x80000424]:sd t3, 56(a7)<br>   |
|   9|[0x80003248]<br>0xFFFFFFFFBABECAFE|- rd : x31<br> - imm_val == 244<br>                                        |[0x80000430]:c.lwsp t6, 61<br> [0x80000432]:c.nop<br> [0x80000434]:c.nop<br> [0x80000436]:sd t6, 64(a7)<br>   |
|  10|[0x80003250]<br>0xFFFFFFFFBABECAFE|- rd : x24<br> - imm_val == 236<br>                                        |[0x80000442]:c.lwsp s8, 59<br> [0x80000444]:c.nop<br> [0x80000446]:c.nop<br> [0x80000448]:sd s8, 72(a7)<br>   |
|  11|[0x80003258]<br>0xFFFFFFFFBABECAFE|- rd : x1<br> - imm_val == 220<br>                                         |[0x80000454]:c.lwsp ra, 55<br> [0x80000456]:c.nop<br> [0x80000458]:c.nop<br> [0x8000045a]:sd ra, 80(a7)<br>   |
|  12|[0x80003260]<br>0xFFFFFFFFBABECAFE|- rd : x21<br> - imm_val == 188<br>                                        |[0x80000466]:c.lwsp s5, 47<br> [0x80000468]:c.nop<br> [0x8000046a]:c.nop<br> [0x8000046c]:sd s5, 88(a7)<br>   |
|  13|[0x80003268]<br>0xFFFFFFFFBABECAFE|- rd : x2<br> - imm_val == 124<br>                                         |[0x80000478]:c.lwsp sp, 31<br> [0x8000047a]:c.nop<br> [0x8000047c]:c.nop<br> [0x8000047e]:sd sp, 96(a7)<br>   |
|  14|[0x80003270]<br>0xFFFFFFFFBABECAFE|- rd : x14<br> - imm_val == 84<br>                                         |[0x8000048a]:c.lwsp a4, 21<br> [0x8000048c]:c.nop<br> [0x8000048e]:c.nop<br> [0x80000490]:sd a4, 104(a7)<br>  |
|  15|[0x80003278]<br>0xFFFFFFFFBABECAFE|- rd : x3<br> - imm_val == 168<br>                                         |[0x8000049c]:c.lwsp gp, 42<br> [0x8000049e]:c.nop<br> [0x800004a0]:c.nop<br> [0x800004a2]:sd gp, 112(a7)<br>  |
|  16|[0x80003280]<br>0xFFFFFFFFBABECAFE|- rd : x20<br>                                                             |[0x800004ae]:c.lwsp s4, 0<br> [0x800004b0]:c.nop<br> [0x800004b2]:c.nop<br> [0x800004b4]:sd s4, 120(a7)<br>   |
|  17|[0x80003288]<br>0xFFFFFFFFBABECAFE|- rd : x19<br>                                                             |[0x800004c0]:c.lwsp s3, 0<br> [0x800004c2]:c.nop<br> [0x800004c4]:c.nop<br> [0x800004c6]:sd s3, 128(a7)<br>   |
|  18|[0x80003290]<br>0xFFFFFFFFBABECAFE|- rd : x8<br>                                                              |[0x800004d2]:c.lwsp fp, 0<br> [0x800004d4]:c.nop<br> [0x800004d6]:c.nop<br> [0x800004d8]:sd fp, 136(a7)<br>   |
|  19|[0x80003298]<br>0xFFFFFFFFBABECAFE|- rd : x12<br>                                                             |[0x800004e4]:c.lwsp a2, 0<br> [0x800004e6]:c.nop<br> [0x800004e8]:c.nop<br> [0x800004ea]:sd a2, 144(a7)<br>   |
|  20|[0x800032a0]<br>0xFFFFFFFFBABECAFE|- rd : x7<br>                                                              |[0x800004f6]:c.lwsp t2, 0<br> [0x800004f8]:c.nop<br> [0x800004fa]:c.nop<br> [0x800004fc]:sd t2, 152(a7)<br>   |
|  21|[0x800032a8]<br>0xFFFFFFFFBABECAFE|- rd : x15<br>                                                             |[0x80000508]:c.lwsp a5, 0<br> [0x8000050a]:c.nop<br> [0x8000050c]:c.nop<br> [0x8000050e]:sd a5, 160(a7)<br>   |
|  22|[0x800032b0]<br>0xFFFFFFFFBABECAFE|- rd : x26<br>                                                             |[0x8000051a]:c.lwsp s10, 0<br> [0x8000051c]:c.nop<br> [0x8000051e]:c.nop<br> [0x80000520]:sd s10, 168(a7)<br> |
|  23|[0x800032b8]<br>0xFFFFFFFFBABECAFE|- rd : x23<br>                                                             |[0x8000052c]:c.lwsp s7, 0<br> [0x8000052e]:c.nop<br> [0x80000530]:c.nop<br> [0x80000532]:sd s7, 176(a7)<br>   |
|  24|[0x800032c0]<br>0xFFFFFFFFBABECAFE|- rd : x9<br>                                                              |[0x8000053e]:c.lwsp s1, 0<br> [0x80000540]:c.nop<br> [0x80000542]:c.nop<br> [0x80000544]:sd s1, 184(a7)<br>   |
|  25|[0x800032c8]<br>0xFFFFFFFFBABECAFE|- rd : x5<br>                                                              |[0x80000550]:c.lwsp t0, 0<br> [0x80000552]:c.nop<br> [0x80000554]:c.nop<br> [0x80000556]:sd t0, 192(a7)<br>   |
|  26|[0x800032d0]<br>0xFFFFFFFFBABECAFE|- rd : x22<br>                                                             |[0x80000562]:c.lwsp s6, 0<br> [0x80000564]:c.nop<br> [0x80000566]:c.nop<br> [0x80000568]:sd s6, 200(a7)<br>   |
|  27|[0x800032d8]<br>0xFFFFFFFFBABECAFE|- rd : x4<br>                                                              |[0x80000574]:c.lwsp tp, 0<br> [0x80000576]:c.nop<br> [0x80000578]:c.nop<br> [0x8000057a]:sd tp, 208(a7)<br>   |
|  28|[0x800032e0]<br>0xFFFFFFFFBABECAFE|- rd : x30<br>                                                             |[0x80000586]:c.lwsp t5, 0<br> [0x80000588]:c.nop<br> [0x8000058a]:c.nop<br> [0x8000058c]:sd t5, 216(a7)<br>   |
|  29|[0x800032e8]<br>0xFFFFFFFFBABECAFE|- rd : x25<br>                                                             |[0x800005a0]:c.lwsp s9, 0<br> [0x800005a2]:c.nop<br> [0x800005a4]:c.nop<br> [0x800005a6]:sd s9, 0(ra)<br>     |
|  30|[0x800032f0]<br>0xFFFFFFFFBABECAFE|- rd : x27<br>                                                             |[0x800005b2]:c.lwsp s11, 0<br> [0x800005b4]:c.nop<br> [0x800005b6]:c.nop<br> [0x800005b8]:sd s11, 8(ra)<br>   |
|  31|[0x800032f8]<br>0xFFFFFFFFBABECAFE|- rd : x17<br>                                                             |[0x800005c4]:c.lwsp a7, 0<br> [0x800005c6]:c.nop<br> [0x800005c8]:c.nop<br> [0x800005ca]:sd a7, 16(ra)<br>    |
