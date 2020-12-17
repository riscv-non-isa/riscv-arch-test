
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
|   1|[0x80002010]<br>0x0000000080000390|- opcode : c.ldsp<br> - rd : x5<br> - imm_val > 0<br> - imm_val == 128<br> |[0x800003a0]:c.ldsp t0, 16<br> [0x800003a2]:c.nop<br> [0x800003a4]:c.nop<br> [0x800003a6]:sd t0, 0(a3)<br>    |
|   2|[0x80002018]<br>0xFEEDBEADFEEDBEAD|- rd : x1<br> - imm_val == 0<br>                                           |[0x800003b2]:c.ldsp ra, 0<br> [0x800003b4]:c.nop<br> [0x800003b6]:c.nop<br> [0x800003b8]:sd ra, 8(a3)<br>     |
|   3|[0x80002020]<br>0xBB6FAB7FBB6FAB7F|- rd : x27<br> - imm_val == 8<br>                                          |[0x800003c4]:c.ldsp s11, 1<br> [0x800003c6]:c.nop<br> [0x800003c8]:c.nop<br> [0x800003ca]:sd s11, 16(a3)<br>  |
|   4|[0x80002028]<br>0x5BFDDB7D5BFDDB7D|- rd : x8<br> - imm_val == 16<br>                                          |[0x800003d6]:c.ldsp fp, 2<br> [0x800003d8]:c.nop<br> [0x800003da]:c.nop<br> [0x800003dc]:c.sd a3, s0, 24<br>  |
|   5|[0x80002030]<br>0x6DF56FF76DF56FF7|- rd : x22<br> - imm_val == 32<br>                                         |[0x800003e6]:c.ldsp s6, 4<br> [0x800003e8]:c.nop<br> [0x800003ea]:c.nop<br> [0x800003ec]:sd s6, 32(a3)<br>    |
|   6|[0x80002038]<br>0x6FAB7FBB6FAB7FBB|- rd : x19<br> - imm_val == 64<br>                                         |[0x800003f8]:c.ldsp s3, 8<br> [0x800003fa]:c.nop<br> [0x800003fc]:c.nop<br> [0x800003fe]:sd s3, 40(a3)<br>    |
|   7|[0x80002040]<br>0x56FF76DF56FF76DF|- rd : x10<br> - imm_val == 256<br>                                        |[0x8000040a]:c.ldsp a0, 32<br> [0x8000040c]:c.nop<br> [0x8000040e]:c.nop<br> [0x80000410]:c.sd a3, a0, 48<br> |
|   8|[0x80002048]<br>0xDB7D5BFDDB7D5BFD|- rd : x24<br> - imm_val == 496<br>                                        |[0x8000041a]:c.ldsp s8, 62<br> [0x8000041c]:c.nop<br> [0x8000041e]:c.nop<br> [0x80000420]:sd s8, 56(a3)<br>   |
|   9|[0x80002050]<br>0xF56FF76DF56FF76D|- rd : x14<br> - imm_val == 488<br>                                        |[0x8000042c]:c.ldsp a4, 61<br> [0x8000042e]:c.nop<br> [0x80000430]:c.nop<br> [0x80000432]:c.sd a3, a4, 64<br> |
|  10|[0x80002058]<br>0x7FBB6FAB7FBB6FAB|- rd : x3<br> - imm_val == 472<br>                                         |[0x8000043c]:c.ldsp gp, 59<br> [0x8000043e]:c.nop<br> [0x80000440]:c.nop<br> [0x80000442]:sd gp, 72(a3)<br>   |
|  11|[0x80002060]<br>0xFAB7FBB6FAB7FBB6|- rd : x15<br> - imm_val == 440<br>                                        |[0x8000044e]:c.ldsp a5, 55<br> [0x80000450]:c.nop<br> [0x80000452]:c.nop<br> [0x80000454]:c.sd a3, a5, 80<br> |
|  12|[0x80002068]<br>0xDBEADFEEDBEADFEE|- rd : x21<br> - imm_val == 376<br>                                        |[0x8000045e]:c.ldsp s5, 47<br> [0x80000460]:c.nop<br> [0x80000462]:c.nop<br> [0x80000464]:sd s5, 88(a3)<br>   |
|  13|[0x80002070]<br>0xDDB7D5BFDDB7D5BF|- rd : x28<br> - imm_val == 248<br>                                        |[0x80000470]:c.ldsp t3, 31<br> [0x80000472]:c.nop<br> [0x80000474]:c.nop<br> [0x80000476]:sd t3, 96(a3)<br>   |
|  14|[0x80002078]<br>0x0000000080001F58|- rd : x2<br> - imm_val == 168<br>                                         |[0x80000482]:c.ldsp sp, 21<br> [0x80000484]:c.nop<br> [0x80000486]:c.nop<br> [0x80000488]:sd sp, 104(a3)<br>  |
|  15|[0x80002080]<br>0x0000000080002000|- rd : x6<br> - imm_val == 336<br>                                         |[0x80000494]:c.ldsp t1, 42<br> [0x80000496]:c.nop<br> [0x80000498]:c.nop<br> [0x8000049a]:sd t1, 112(a3)<br>  |
|  16|[0x80002088]<br>0xB6FAB7FBB6FAB7FB|- rd : x23<br>                                                             |[0x800004a6]:c.ldsp s7, 0<br> [0x800004a8]:c.nop<br> [0x800004aa]:c.nop<br> [0x800004ac]:sd s7, 120(a3)<br>   |
|  17|[0x80002090]<br>0xDF56FF76DF56FF76|- rd : x18<br>                                                             |[0x800004b8]:c.ldsp s2, 0<br> [0x800004ba]:c.nop<br> [0x800004bc]:c.nop<br> [0x800004be]:sd s2, 128(a3)<br>   |
|  18|[0x80002098]<br>0xB7D5BFDDB7D5BFDD|- rd : x20<br>                                                             |[0x800004ca]:c.ldsp s4, 0<br> [0x800004cc]:c.nop<br> [0x800004ce]:c.nop<br> [0x800004d0]:sd s4, 136(a3)<br>   |
|  19|[0x800020a0]<br>0xAB7FBB6FAB7FBB6F|- rd : x11<br>                                                             |[0x800004dc]:c.ldsp a1, 0<br> [0x800004de]:c.nop<br> [0x800004e0]:c.nop<br> [0x800004e2]:c.sd a3, a1, 144<br> |
|  20|[0x800020a8]<br>0x7D5BFDDB7D5BFDDB|- rd : x16<br>                                                             |[0x800004ec]:c.ldsp a6, 0<br> [0x800004ee]:c.nop<br> [0x800004f0]:c.nop<br> [0x800004f2]:sd a6, 152(a3)<br>   |
|  21|[0x800020b0]<br>0xADFEEDBEADFEEDBE|- rd : x9<br>                                                              |[0x800004fe]:c.ldsp s1, 0<br> [0x80000500]:c.nop<br> [0x80000502]:c.nop<br> [0x80000504]:c.sd a3, s1, 160<br> |
|  22|[0x800020b8]<br>0xEEDBEADFEEDBEADF|- rd : x29<br>                                                             |[0x8000050e]:c.ldsp t4, 0<br> [0x80000510]:c.nop<br> [0x80000512]:c.nop<br> [0x80000514]:sd t4, 168(a3)<br>   |
|  23|[0x800020c0]<br>0xFBB6FAB7FBB6FAB7|- rd : x31<br>                                                             |[0x80000520]:c.ldsp t6, 0<br> [0x80000522]:c.nop<br> [0x80000524]:c.nop<br> [0x80000526]:sd t6, 176(a3)<br>   |
|  24|[0x800020c8]<br>0xD5BFDDB7D5BFDDB7|- rd : x12<br>                                                             |[0x80000532]:c.ldsp a2, 0<br> [0x80000534]:c.nop<br> [0x80000536]:c.nop<br> [0x80000538]:c.sd a3, a2, 184<br> |
|  25|[0x800020d0]<br>0xB7FBB6FAB7FBB6FA|- rd : x7<br>                                                              |[0x80000542]:c.ldsp t2, 0<br> [0x80000544]:c.nop<br> [0x80000546]:c.nop<br> [0x80000548]:sd t2, 192(a3)<br>   |
|  26|[0x800020d8]<br>0xBFDDB7D5BFDDB7D5|- rd : x4<br>                                                              |[0x80000554]:c.ldsp tp, 0<br> [0x80000556]:c.nop<br> [0x80000558]:c.nop<br> [0x8000055a]:sd tp, 200(a3)<br>   |
|  27|[0x800020e0]<br>0x76DF56FF76DF56FF|- rd : x26<br>                                                             |[0x80000566]:c.ldsp s10, 0<br> [0x80000568]:c.nop<br> [0x8000056a]:c.nop<br> [0x8000056c]:sd s10, 208(a3)<br> |
|  28|[0x800020e8]<br>0xBEADFEEDBEADFEED|- rd : x17<br>                                                             |[0x80000578]:c.ldsp a7, 0<br> [0x8000057a]:c.nop<br> [0x8000057c]:c.nop<br> [0x8000057e]:sd a7, 216(a3)<br>   |
|  29|[0x800020f0]<br>0xEDBEADFEEDBEADFE|- rd : x25<br>                                                             |[0x80000592]:c.ldsp s9, 0<br> [0x80000594]:c.nop<br> [0x80000596]:c.nop<br> [0x80000598]:sd s9, 0(ra)<br>     |
|  30|[0x800020f8]<br>0x0000000080002010|- rd : x13<br>                                                             |[0x800005a4]:c.ldsp a3, 0<br> [0x800005a6]:c.nop<br> [0x800005a8]:c.nop<br> [0x800005aa]:sd a3, 8(ra)<br>     |
|  31|[0x80002100]<br>0xF76DF56FF76DF56F|- rd : x30<br>                                                             |[0x800005b6]:c.ldsp t5, 0<br> [0x800005b8]:c.nop<br> [0x800005ba]:c.nop<br> [0x800005bc]:sd t5, 16(ra)<br>    |
