
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
| SIG_REGION                | [('0x80002010', '0x80002110', '32 dwords')]      |
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

|s.no|            signature             |                                coverpoints                                |                                                     code                                                     |
|---:|----------------------------------|---------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
|   1|[0x80002010]<br>0xBFDDB7D5BFDDB7D5|- opcode : c.ldsp<br> - rd : x4<br> - imm_val > 0<br> - imm_val == 248<br> |[0x800003a0]:c.ldsp tp, 31<br> [0x800003a2]:c.nop<br> [0x800003a4]:c.nop<br> [0x800003a6]:sd tp, 0(gp)<br>    |
|   2|[0x80002018]<br>0xEADFEEDBEADFEEDB|- rd : x13<br> - imm_val == 0<br>                                          |[0x800003b2]:c.ldsp a3, 0<br> [0x800003b4]:c.nop<br> [0x800003b6]:c.nop<br> [0x800003b8]:sd a3, 8(gp)<br>     |
|   3|[0x80002020]<br>0x0000000080000390|- rd : x5<br> - imm_val == 8<br>                                           |[0x800003c4]:c.ldsp t0, 1<br> [0x800003c6]:c.nop<br> [0x800003c8]:c.nop<br> [0x800003ca]:sd t0, 16(gp)<br>    |
|   4|[0x80002028]<br>0x76DF56FF76DF56FF|- rd : x26<br> - imm_val == 16<br>                                         |[0x800003d6]:c.ldsp s10, 2<br> [0x800003d8]:c.nop<br> [0x800003da]:c.nop<br> [0x800003dc]:sd s10, 24(gp)<br>  |
|   5|[0x80002030]<br>0xADFEEDBEADFEEDBE|- rd : x9<br> - imm_val == 32<br>                                          |[0x800003e8]:c.ldsp s1, 4<br> [0x800003ea]:c.nop<br> [0x800003ec]:c.nop<br> [0x800003ee]:sd s1, 32(gp)<br>    |
|   6|[0x80002038]<br>0x56FF76DF56FF76DF|- rd : x10<br> - imm_val == 64<br>                                         |[0x800003fa]:c.ldsp a0, 8<br> [0x800003fc]:c.nop<br> [0x800003fe]:c.nop<br> [0x80000400]:sd a0, 40(gp)<br>    |
|   7|[0x80002040]<br>0xB7D5BFDDB7D5BFDD|- rd : x20<br> - imm_val == 128<br>                                        |[0x8000040c]:c.ldsp s4, 16<br> [0x8000040e]:c.nop<br> [0x80000410]:c.nop<br> [0x80000412]:sd s4, 48(gp)<br>   |
|   8|[0x80002048]<br>0xEEDBEADFEEDBEADF|- rd : x29<br> - imm_val == 256<br>                                        |[0x8000041e]:c.ldsp t4, 32<br> [0x80000420]:c.nop<br> [0x80000422]:c.nop<br> [0x80000424]:sd t4, 56(gp)<br>   |
|   9|[0x80002050]<br>0x0000000080002000|- rd : x6<br> - imm_val == 496<br>                                         |[0x80000430]:c.ldsp t1, 62<br> [0x80000432]:c.nop<br> [0x80000434]:c.nop<br> [0x80000436]:sd t1, 64(gp)<br>   |
|  10|[0x80002058]<br>0xFAB7FBB6FAB7FBB6|- rd : x15<br> - imm_val == 488<br>                                        |[0x80000442]:c.ldsp a5, 61<br> [0x80000444]:c.nop<br> [0x80000446]:c.nop<br> [0x80000448]:sd a5, 72(gp)<br>   |
|  11|[0x80002060]<br>0xF56FF76DF56FF76D|- rd : x14<br> - imm_val == 472<br>                                        |[0x80000454]:c.ldsp a4, 59<br> [0x80000456]:c.nop<br> [0x80000458]:c.nop<br> [0x8000045a]:sd a4, 80(gp)<br>   |
|  12|[0x80002068]<br>0x5BFDDB7D5BFDDB7D|- rd : x8<br> - imm_val == 440<br>                                         |[0x80000466]:c.ldsp fp, 55<br> [0x80000468]:c.nop<br> [0x8000046a]:c.nop<br> [0x8000046c]:sd fp, 88(gp)<br>   |
|  13|[0x80002070]<br>0xB6FAB7FBB6FAB7FB|- rd : x23<br> - imm_val == 376<br>                                        |[0x80000478]:c.ldsp s7, 47<br> [0x8000047a]:c.nop<br> [0x8000047c]:c.nop<br> [0x8000047e]:sd s7, 96(gp)<br>   |
|  14|[0x80002078]<br>0xB7FBB6FAB7FBB6FA|- rd : x7<br> - imm_val == 168<br>                                         |[0x8000048a]:c.ldsp t2, 21<br> [0x8000048c]:c.nop<br> [0x8000048e]:c.nop<br> [0x80000490]:sd t2, 104(gp)<br>  |
|  15|[0x80002080]<br>0xDBEADFEEDBEADFEE|- rd : x21<br> - imm_val == 336<br>                                        |[0x8000049c]:c.ldsp s5, 42<br> [0x8000049e]:c.nop<br> [0x800004a0]:c.nop<br> [0x800004a2]:sd s5, 112(gp)<br>  |
|  16|[0x80002088]<br>0xDF56FF76DF56FF76|- rd : x18<br>                                                             |[0x800004ae]:c.ldsp s2, 0<br> [0x800004b0]:c.nop<br> [0x800004b2]:c.nop<br> [0x800004b4]:sd s2, 120(gp)<br>   |
|  17|[0x80002090]<br>0x6FAB7FBB6FAB7FBB|- rd : x19<br>                                                             |[0x800004c0]:c.ldsp s3, 0<br> [0x800004c2]:c.nop<br> [0x800004c4]:c.nop<br> [0x800004c6]:sd s3, 128(gp)<br>   |
|  18|[0x80002098]<br>0xFEEDBEADFEEDBEAD|- rd : x1<br>                                                              |[0x800004d2]:c.ldsp ra, 0<br> [0x800004d4]:c.nop<br> [0x800004d6]:c.nop<br> [0x800004d8]:sd ra, 136(gp)<br>   |
|  19|[0x800020a0]<br>0xAB7FBB6FAB7FBB6F|- rd : x11<br>                                                             |[0x800004e4]:c.ldsp a1, 0<br> [0x800004e6]:c.nop<br> [0x800004e8]:c.nop<br> [0x800004ea]:sd a1, 144(gp)<br>   |
|  20|[0x800020a8]<br>0x0000000080002000|- rd : x2<br>                                                              |[0x800004f6]:c.ldsp sp, 0<br> [0x800004f8]:c.nop<br> [0x800004fa]:c.nop<br> [0x800004fc]:sd sp, 152(gp)<br>   |
|  21|[0x800020b0]<br>0xDDB7D5BFDDB7D5BF|- rd : x28<br>                                                             |[0x80000508]:c.ldsp t3, 0<br> [0x8000050a]:c.nop<br> [0x8000050c]:c.nop<br> [0x8000050e]:sd t3, 160(gp)<br>   |
|  22|[0x800020b8]<br>0xBB6FAB7FBB6FAB7F|- rd : x27<br>                                                             |[0x8000051a]:c.ldsp s11, 0<br> [0x8000051c]:c.nop<br> [0x8000051e]:c.nop<br> [0x80000520]:sd s11, 168(gp)<br> |
|  23|[0x800020c0]<br>0x7D5BFDDB7D5BFDDB|- rd : x16<br>                                                             |[0x8000052c]:c.ldsp a6, 0<br> [0x8000052e]:c.nop<br> [0x80000530]:c.nop<br> [0x80000532]:sd a6, 176(gp)<br>   |
|  24|[0x800020c8]<br>0xD5BFDDB7D5BFDDB7|- rd : x12<br>                                                             |[0x8000053e]:c.ldsp a2, 0<br> [0x80000540]:c.nop<br> [0x80000542]:c.nop<br> [0x80000544]:sd a2, 184(gp)<br>   |
|  25|[0x800020d0]<br>0x6DF56FF76DF56FF7|- rd : x22<br>                                                             |[0x80000550]:c.ldsp s6, 0<br> [0x80000552]:c.nop<br> [0x80000554]:c.nop<br> [0x80000556]:sd s6, 192(gp)<br>   |
|  26|[0x800020d8]<br>0xDB7D5BFDDB7D5BFD|- rd : x24<br>                                                             |[0x80000562]:c.ldsp s8, 0<br> [0x80000564]:c.nop<br> [0x80000566]:c.nop<br> [0x80000568]:sd s8, 200(gp)<br>   |
|  27|[0x800020e0]<br>0xEDBEADFEEDBEADFE|- rd : x25<br>                                                             |[0x80000574]:c.ldsp s9, 0<br> [0x80000576]:c.nop<br> [0x80000578]:c.nop<br> [0x8000057a]:sd s9, 208(gp)<br>   |
|  28|[0x800020e8]<br>0xFBB6FAB7FBB6FAB7|- rd : x31<br>                                                             |[0x80000586]:c.ldsp t6, 0<br> [0x80000588]:c.nop<br> [0x8000058a]:c.nop<br> [0x8000058c]:sd t6, 216(gp)<br>   |
|  29|[0x800020f0]<br>0xF76DF56FF76DF56F|- rd : x30<br>                                                             |[0x800005a0]:c.ldsp t5, 0<br> [0x800005a2]:c.nop<br> [0x800005a4]:c.nop<br> [0x800005a6]:sd t5, 0(ra)<br>     |
|  30|[0x800020f8]<br>0xBEADFEEDBEADFEED|- rd : x17<br>                                                             |[0x800005b2]:c.ldsp a7, 0<br> [0x800005b4]:c.nop<br> [0x800005b6]:c.nop<br> [0x800005b8]:sd a7, 8(ra)<br>     |
|  31|[0x80002100]<br>0x0000000080002010|- rd : x3<br>                                                              |[0x800005c4]:c.ldsp gp, 0<br> [0x800005c6]:c.nop<br> [0x800005c8]:c.nop<br> [0x800005ca]:sd gp, 16(ra)<br>    |
