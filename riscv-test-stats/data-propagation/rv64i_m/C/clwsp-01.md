
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

|s.no|            signature             |                                coverpoints                                 |                                                     code                                                     |
|---:|----------------------------------|----------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
|   1|[0x80002010]<br>0xFFFFFFFFBABECAFE|- opcode : c.lwsp<br> - rd : x22<br> - imm_val > 0<br> - imm_val == 124<br> |[0x800003a0]:c.lwsp s6, 31<br> [0x800003a2]:c.nop<br> [0x800003a4]:c.nop<br> [0x800003a6]:sd s6, 0(fp)<br>    |
|   2|[0x80002018]<br>0xFFFFFFFFBABECAFE|- rd : x4<br> - imm_val == 0<br>                                            |[0x800003b2]:c.lwsp tp, 0<br> [0x800003b4]:c.nop<br> [0x800003b6]:c.nop<br> [0x800003b8]:sd tp, 8(fp)<br>     |
|   3|[0x80002020]<br>0xFFFFFFFFBABECAFE|- rd : x10<br> - imm_val == 4<br>                                           |[0x800003c4]:c.lwsp a0, 1<br> [0x800003c6]:c.nop<br> [0x800003c8]:c.nop<br> [0x800003ca]:c.sd s0, a0, 16<br>  |
|   4|[0x80002028]<br>0xFFFFFFFFBABECAFE|- rd : x26<br> - imm_val == 8<br>                                           |[0x800003d4]:c.lwsp s10, 2<br> [0x800003d6]:c.nop<br> [0x800003d8]:c.nop<br> [0x800003da]:sd s10, 24(fp)<br>  |
|   5|[0x80002030]<br>0xFFFFFFFFBABECAFE|- rd : x29<br> - imm_val == 16<br>                                          |[0x800003e6]:c.lwsp t4, 4<br> [0x800003e8]:c.nop<br> [0x800003ea]:c.nop<br> [0x800003ec]:sd t4, 32(fp)<br>    |
|   6|[0x80002038]<br>0xFFFFFFFFBABECAFE|- rd : x27<br> - imm_val == 32<br>                                          |[0x800003f8]:c.lwsp s11, 8<br> [0x800003fa]:c.nop<br> [0x800003fc]:c.nop<br> [0x800003fe]:sd s11, 40(fp)<br>  |
|   7|[0x80002040]<br>0xFFFFFFFFBABECAFE|- rd : x25<br> - imm_val == 64<br>                                          |[0x8000040a]:c.lwsp s9, 16<br> [0x8000040c]:c.nop<br> [0x8000040e]:c.nop<br> [0x80000410]:sd s9, 48(fp)<br>   |
|   8|[0x80002048]<br>0xFFFFFFFFBABECAFE|- rd : x17<br> - imm_val == 128<br>                                         |[0x8000041c]:c.lwsp a7, 32<br> [0x8000041e]:c.nop<br> [0x80000420]:c.nop<br> [0x80000422]:sd a7, 56(fp)<br>   |
|   9|[0x80002050]<br>0xFFFFFFFFBABECAFE|- rd : x31<br> - imm_val == 248<br>                                         |[0x8000042e]:c.lwsp t6, 62<br> [0x80000430]:c.nop<br> [0x80000432]:c.nop<br> [0x80000434]:sd t6, 64(fp)<br>   |
|  10|[0x80002058]<br>0xFFFFFFFFBABECAFE|- rd : x16<br> - imm_val == 244<br>                                         |[0x80000440]:c.lwsp a6, 61<br> [0x80000442]:c.nop<br> [0x80000444]:c.nop<br> [0x80000446]:sd a6, 72(fp)<br>   |
|  11|[0x80002060]<br>0xFFFFFFFFBABECAFE|- rd : x23<br> - imm_val == 236<br>                                         |[0x80000452]:c.lwsp s7, 59<br> [0x80000454]:c.nop<br> [0x80000456]:c.nop<br> [0x80000458]:sd s7, 80(fp)<br>   |
|  12|[0x80002068]<br>0xFFFFFFFFBABECAFE|- rd : x18<br> - imm_val == 220<br>                                         |[0x80000464]:c.lwsp s2, 55<br> [0x80000466]:c.nop<br> [0x80000468]:c.nop<br> [0x8000046a]:sd s2, 88(fp)<br>   |
|  13|[0x80002070]<br>0xFFFFFFFFBABECAFE|- rd : x21<br> - imm_val == 188<br>                                         |[0x80000476]:c.lwsp s5, 47<br> [0x80000478]:c.nop<br> [0x8000047a]:c.nop<br> [0x8000047c]:sd s5, 96(fp)<br>   |
|  14|[0x80002078]<br>0xFFFFFFFFBABECAFE|- rd : x20<br> - imm_val == 84<br>                                          |[0x80000488]:c.lwsp s4, 21<br> [0x8000048a]:c.nop<br> [0x8000048c]:c.nop<br> [0x8000048e]:sd s4, 104(fp)<br>  |
|  15|[0x80002080]<br>0xFFFFFFFFBABECAFE|- rd : x5<br> - imm_val == 168<br>                                          |[0x8000049a]:c.lwsp t0, 42<br> [0x8000049c]:c.nop<br> [0x8000049e]:c.nop<br> [0x800004a0]:sd t0, 112(fp)<br>  |
|  16|[0x80002088]<br>0xFFFFFFFFBABECAFE|- rd : x3<br>                                                               |[0x800004ac]:c.lwsp gp, 0<br> [0x800004ae]:c.nop<br> [0x800004b0]:c.nop<br> [0x800004b2]:sd gp, 120(fp)<br>   |
|  17|[0x80002090]<br>0xFFFFFFFFBABECAFE|- rd : x11<br>                                                              |[0x800004be]:c.lwsp a1, 0<br> [0x800004c0]:c.nop<br> [0x800004c2]:c.nop<br> [0x800004c4]:c.sd s0, a1, 128<br> |
|  18|[0x80002098]<br>0xFFFFFFFFBABECAFE|- rd : x2<br>                                                               |[0x800004ce]:c.lwsp sp, 0<br> [0x800004d0]:c.nop<br> [0x800004d2]:c.nop<br> [0x800004d4]:sd sp, 136(fp)<br>   |
|  19|[0x800020a0]<br>0xFFFFFFFFBABECAFE|- rd : x9<br>                                                               |[0x800004e0]:c.lwsp s1, 0<br> [0x800004e2]:c.nop<br> [0x800004e4]:c.nop<br> [0x800004e6]:c.sd s0, s1, 144<br> |
|  20|[0x800020a8]<br>0xFFFFFFFFBABECAFE|- rd : x6<br>                                                               |[0x800004f0]:c.lwsp t1, 0<br> [0x800004f2]:c.nop<br> [0x800004f4]:c.nop<br> [0x800004f6]:sd t1, 152(fp)<br>   |
|  21|[0x800020b0]<br>0xFFFFFFFFBABECAFE|- rd : x30<br>                                                              |[0x80000502]:c.lwsp t5, 0<br> [0x80000504]:c.nop<br> [0x80000506]:c.nop<br> [0x80000508]:sd t5, 160(fp)<br>   |
|  22|[0x800020b8]<br>0xFFFFFFFFBABECAFE|- rd : x14<br>                                                              |[0x80000514]:c.lwsp a4, 0<br> [0x80000516]:c.nop<br> [0x80000518]:c.nop<br> [0x8000051a]:c.sd s0, a4, 168<br> |
|  23|[0x800020c0]<br>0xFFFFFFFFBABECAFE|- rd : x28<br>                                                              |[0x80000524]:c.lwsp t3, 0<br> [0x80000526]:c.nop<br> [0x80000528]:c.nop<br> [0x8000052a]:sd t3, 176(fp)<br>   |
|  24|[0x800020c8]<br>0xFFFFFFFFBABECAFE|- rd : x7<br>                                                               |[0x80000536]:c.lwsp t2, 0<br> [0x80000538]:c.nop<br> [0x8000053a]:c.nop<br> [0x8000053c]:sd t2, 184(fp)<br>   |
|  25|[0x800020d0]<br>0xFFFFFFFFBABECAFE|- rd : x19<br>                                                              |[0x80000548]:c.lwsp s3, 0<br> [0x8000054a]:c.nop<br> [0x8000054c]:c.nop<br> [0x8000054e]:sd s3, 192(fp)<br>   |
|  26|[0x800020d8]<br>0xFFFFFFFFBABECAFE|- rd : x1<br>                                                               |[0x8000055a]:c.lwsp ra, 0<br> [0x8000055c]:c.nop<br> [0x8000055e]:c.nop<br> [0x80000560]:sd ra, 200(fp)<br>   |
|  27|[0x800020e0]<br>0xFFFFFFFFBABECAFE|- rd : x13<br>                                                              |[0x8000056c]:c.lwsp a3, 0<br> [0x8000056e]:c.nop<br> [0x80000570]:c.nop<br> [0x80000572]:c.sd s0, a3, 208<br> |
|  28|[0x800020e8]<br>0xFFFFFFFFBABECAFE|- rd : x12<br>                                                              |[0x8000057c]:c.lwsp a2, 0<br> [0x8000057e]:c.nop<br> [0x80000580]:c.nop<br> [0x80000582]:c.sd s0, a2, 216<br> |
|  29|[0x800020f0]<br>0xFFFFFFFFBABECAFE|- rd : x24<br>                                                              |[0x80000594]:c.lwsp s8, 0<br> [0x80000596]:c.nop<br> [0x80000598]:c.nop<br> [0x8000059a]:sd s8, 0(ra)<br>     |
|  30|[0x800020f8]<br>0xFFFFFFFFBABECAFE|- rd : x8<br>                                                               |[0x800005a6]:c.lwsp fp, 0<br> [0x800005a8]:c.nop<br> [0x800005aa]:c.nop<br> [0x800005ac]:sd fp, 8(ra)<br>     |
|  31|[0x80002100]<br>0xFFFFFFFFBABECAFE|- rd : x15<br>                                                              |[0x800005b8]:c.lwsp a5, 0<br> [0x800005ba]:c.nop<br> [0x800005bc]:c.nop<br> [0x800005be]:sd a5, 16(ra)<br>    |
