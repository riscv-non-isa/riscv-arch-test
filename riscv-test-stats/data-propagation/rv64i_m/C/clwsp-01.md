
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800005d0')]      |
| SIG_REGION                | [('0x80003204', '0x80003308', '32 dwords')]      |
| COV_LABELS                | clwsp      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/clwsp-01.S/clwsp-01.S    |
| Total Number of coverpoints| 48     |
| Total Signature Updates   | 31      |
| Total Coverpoints Covered | 48      |
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

|s.no|            signature             |                      coverpoints                      |                                                     code                                                      |
|---:|----------------------------------|-------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|
|   1|[0x80003210]<br>0xFFFFFFFFBABECAFE|- opcode : c.lwsp<br> - rd : x11<br> - imm_val > 0<br> |[0x800003a0]:c.lwsp a1, 18<br> [0x800003a2]:c.nop<br> [0x800003a4]:c.nop<br> [0x800003a6]:sd a1, 0(t1)<br>     |
|   2|[0x80003218]<br>0xFFFFFFFFBABECAFE|- rd : x12<br> - imm_val == 0<br>                      |[0x800003b2]:c.lwsp a2, 0<br> [0x800003b4]:c.nop<br> [0x800003b6]:c.nop<br> [0x800003b8]:sd a2, 8(t1)<br>      |
|   3|[0x80003220]<br>0xFFFFFFFFBABECAFE|- rd : x7<br> - imm_val == 4<br>                       |[0x800003c4]:c.lwsp t2, 1<br> [0x800003c6]:c.nop<br> [0x800003c8]:c.nop<br> [0x800003ca]:sd t2, 16(t1)<br>     |
|   4|[0x80003228]<br>0xFFFFFFFFBABECAFE|- rd : x22<br> - imm_val == 8<br>                      |[0x800003d6]:c.lwsp s6, 2<br> [0x800003d8]:c.nop<br> [0x800003da]:c.nop<br> [0x800003dc]:sd s6, 24(t1)<br>     |
|   5|[0x80003230]<br>0xFFFFFFFFBABECAFE|- rd : x16<br> - imm_val == 16<br>                     |[0x800003e8]:c.lwsp a6, 4<br> [0x800003ea]:c.nop<br> [0x800003ec]:c.nop<br> [0x800003ee]:sd a6, 32(t1)<br>     |
|   6|[0x80003238]<br>0xFFFFFFFFBABECAFE|- rd : x20<br> - imm_val == 32<br>                     |[0x800003fa]:c.lwsp s4, 8<br> [0x800003fc]:c.nop<br> [0x800003fe]:c.nop<br> [0x80000400]:sd s4, 40(t1)<br>     |
|   7|[0x80003240]<br>0xFFFFFFFFBABECAFE|- rd : x19<br> - imm_val == 64<br>                     |[0x8000040c]:c.lwsp s3, 16<br> [0x8000040e]:c.nop<br> [0x80000410]:c.nop<br> [0x80000412]:sd s3, 48(t1)<br>    |
|   8|[0x80003248]<br>0xFFFFFFFFBABECAFE|- rd : x30<br> - imm_val == 128<br>                    |[0x8000041e]:c.lwsp t5, 32<br> [0x80000420]:c.nop<br> [0x80000422]:c.nop<br> [0x80000424]:sd t5, 56(t1)<br>    |
|   9|[0x80003250]<br>0xFFFFFFFFBABECAFE|- rd : x2<br> - imm_val == 248<br>                     |[0x80000430]:c.lwsp sp, 62<br> [0x80000432]:c.nop<br> [0x80000434]:c.nop<br> [0x80000436]:sd sp, 64(t1)<br>    |
|  10|[0x80003258]<br>0xFFFFFFFFBABECAFE|- rd : x25<br> - imm_val == 244<br>                    |[0x80000442]:c.lwsp s9, 61<br> [0x80000444]:c.nop<br> [0x80000446]:c.nop<br> [0x80000448]:sd s9, 72(t1)<br>    |
|  11|[0x80003260]<br>0xFFFFFFFFBABECAFE|- rd : x18<br> - imm_val == 236<br>                    |[0x80000454]:c.lwsp s2, 59<br> [0x80000456]:c.nop<br> [0x80000458]:c.nop<br> [0x8000045a]:sd s2, 80(t1)<br>    |
|  12|[0x80003268]<br>0xFFFFFFFFBABECAFE|- rd : x31<br> - imm_val == 220<br>                    |[0x80000466]:c.lwsp t6, 55<br> [0x80000468]:c.nop<br> [0x8000046a]:c.nop<br> [0x8000046c]:sd t6, 88(t1)<br>    |
|  13|[0x80003270]<br>0xFFFFFFFFBABECAFE|- rd : x26<br> - imm_val == 188<br>                    |[0x80000478]:c.lwsp s10, 47<br> [0x8000047a]:c.nop<br> [0x8000047c]:c.nop<br> [0x8000047e]:sd s10, 96(t1)<br>  |
|  14|[0x80003278]<br>0xFFFFFFFFBABECAFE|- rd : x4<br> - imm_val == 124<br>                     |[0x8000048a]:c.lwsp tp, 31<br> [0x8000048c]:c.nop<br> [0x8000048e]:c.nop<br> [0x80000490]:sd tp, 104(t1)<br>   |
|  15|[0x80003280]<br>0xFFFFFFFFBABECAFE|- rd : x10<br> - imm_val == 84<br>                     |[0x8000049c]:c.lwsp a0, 21<br> [0x8000049e]:c.nop<br> [0x800004a0]:c.nop<br> [0x800004a2]:sd a0, 112(t1)<br>   |
|  16|[0x80003288]<br>0xFFFFFFFFBABECAFE|- rd : x27<br> - imm_val == 168<br>                    |[0x800004ae]:c.lwsp s11, 42<br> [0x800004b0]:c.nop<br> [0x800004b2]:c.nop<br> [0x800004b4]:sd s11, 120(t1)<br> |
|  17|[0x80003290]<br>0xFFFFFFFFBABECAFE|- rd : x14<br>                                         |[0x800004c0]:c.lwsp a4, 0<br> [0x800004c2]:c.nop<br> [0x800004c4]:c.nop<br> [0x800004c6]:sd a4, 128(t1)<br>    |
|  18|[0x80003298]<br>0xFFFFFFFFBABECAFE|- rd : x28<br>                                         |[0x800004d2]:c.lwsp t3, 0<br> [0x800004d4]:c.nop<br> [0x800004d6]:c.nop<br> [0x800004d8]:sd t3, 136(t1)<br>    |
|  19|[0x800032a0]<br>0xFFFFFFFFBABECAFE|- rd : x29<br>                                         |[0x800004e4]:c.lwsp t4, 0<br> [0x800004e6]:c.nop<br> [0x800004e8]:c.nop<br> [0x800004ea]:sd t4, 144(t1)<br>    |
|  20|[0x800032a8]<br>0xFFFFFFFFBABECAFE|- rd : x9<br>                                          |[0x800004f6]:c.lwsp s1, 0<br> [0x800004f8]:c.nop<br> [0x800004fa]:c.nop<br> [0x800004fc]:sd s1, 152(t1)<br>    |
|  21|[0x800032b0]<br>0xFFFFFFFFBABECAFE|- rd : x5<br>                                          |[0x80000508]:c.lwsp t0, 0<br> [0x8000050a]:c.nop<br> [0x8000050c]:c.nop<br> [0x8000050e]:sd t0, 160(t1)<br>    |
|  22|[0x800032b8]<br>0xFFFFFFFFBABECAFE|- rd : x15<br>                                         |[0x8000051a]:c.lwsp a5, 0<br> [0x8000051c]:c.nop<br> [0x8000051e]:c.nop<br> [0x80000520]:sd a5, 168(t1)<br>    |
|  23|[0x800032c0]<br>0xFFFFFFFFBABECAFE|- rd : x17<br>                                         |[0x8000052c]:c.lwsp a7, 0<br> [0x8000052e]:c.nop<br> [0x80000530]:c.nop<br> [0x80000532]:sd a7, 176(t1)<br>    |
|  24|[0x800032c8]<br>0xFFFFFFFFBABECAFE|- rd : x3<br>                                          |[0x8000053e]:c.lwsp gp, 0<br> [0x80000540]:c.nop<br> [0x80000542]:c.nop<br> [0x80000544]:sd gp, 184(t1)<br>    |
|  25|[0x800032d0]<br>0xFFFFFFFFBABECAFE|- rd : x23<br>                                         |[0x80000550]:c.lwsp s7, 0<br> [0x80000552]:c.nop<br> [0x80000554]:c.nop<br> [0x80000556]:sd s7, 192(t1)<br>    |
|  26|[0x800032d8]<br>0xFFFFFFFFBABECAFE|- rd : x13<br>                                         |[0x80000562]:c.lwsp a3, 0<br> [0x80000564]:c.nop<br> [0x80000566]:c.nop<br> [0x80000568]:sd a3, 200(t1)<br>    |
|  27|[0x800032e0]<br>0xFFFFFFFFBABECAFE|- rd : x1<br>                                          |[0x80000574]:c.lwsp ra, 0<br> [0x80000576]:c.nop<br> [0x80000578]:c.nop<br> [0x8000057a]:sd ra, 208(t1)<br>    |
|  28|[0x800032e8]<br>0xFFFFFFFFBABECAFE|- rd : x21<br>                                         |[0x80000586]:c.lwsp s5, 0<br> [0x80000588]:c.nop<br> [0x8000058a]:c.nop<br> [0x8000058c]:sd s5, 216(t1)<br>    |
|  29|[0x800032f0]<br>0xFFFFFFFFBABECAFE|- rd : x24<br>                                         |[0x800005a0]:c.lwsp s8, 0<br> [0x800005a2]:c.nop<br> [0x800005a4]:c.nop<br> [0x800005a6]:sd s8, 0(ra)<br>      |
|  30|[0x800032f8]<br>0xFFFFFFFFBABECAFE|- rd : x8<br>                                          |[0x800005b2]:c.lwsp fp, 0<br> [0x800005b4]:c.nop<br> [0x800005b6]:c.nop<br> [0x800005b8]:sd fp, 8(ra)<br>      |
|  31|[0x80003300]<br>0xFFFFFFFFBABECAFE|- rd : x6<br>                                          |[0x800005c4]:c.lwsp t1, 0<br> [0x800005c6]:c.nop<br> [0x800005c8]:c.nop<br> [0x800005ca]:sd t1, 16(ra)<br>     |
