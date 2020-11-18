
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
| SIG_REGION                | [('0x80002208', '0x80002300', '31 dwords')]      |
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

|s.no|            signature             |                      coverpoints                      |                                                     code                                                     |
|---:|----------------------------------|-------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
|   1|[0x80002208]<br>0xFFFFFFFFBABECAFE|- opcode : c.lwsp<br> - rd : x28<br> - imm_val > 0<br> |[0x800003a0]:c.lwsp t3, 3<br> [0x800003a2]:c.nop<br> [0x800003a4]:c.nop<br> [0x800003a6]:sd t3, 0(s9)<br>     |
|   2|[0x80002210]<br>0xFFFFFFFFBABECAFE|- rd : x5<br> - imm_val == 0<br>                       |[0x800003b2]:c.lwsp t0, 0<br> [0x800003b4]:c.nop<br> [0x800003b6]:c.nop<br> [0x800003b8]:sd t0, 8(s9)<br>     |
|   3|[0x80002218]<br>0xFFFFFFFFBABECAFE|- rd : x14<br> - imm_val == 4<br>                      |[0x800003c4]:c.lwsp a4, 1<br> [0x800003c6]:c.nop<br> [0x800003c8]:c.nop<br> [0x800003ca]:sd a4, 16(s9)<br>    |
|   4|[0x80002220]<br>0xFFFFFFFFBABECAFE|- rd : x19<br> - imm_val == 8<br>                      |[0x800003d6]:c.lwsp s3, 2<br> [0x800003d8]:c.nop<br> [0x800003da]:c.nop<br> [0x800003dc]:sd s3, 24(s9)<br>    |
|   5|[0x80002228]<br>0xFFFFFFFFBABECAFE|- rd : x15<br> - imm_val == 16<br>                     |[0x800003e8]:c.lwsp a5, 4<br> [0x800003ea]:c.nop<br> [0x800003ec]:c.nop<br> [0x800003ee]:sd a5, 32(s9)<br>    |
|   6|[0x80002230]<br>0xFFFFFFFFBABECAFE|- rd : x8<br> - imm_val == 32<br>                      |[0x800003fa]:c.lwsp fp, 8<br> [0x800003fc]:c.nop<br> [0x800003fe]:c.nop<br> [0x80000400]:sd fp, 40(s9)<br>    |
|   7|[0x80002238]<br>0xFFFFFFFFBABECAFE|- rd : x1<br> - imm_val == 64<br>                      |[0x8000040c]:c.lwsp ra, 16<br> [0x8000040e]:c.nop<br> [0x80000410]:c.nop<br> [0x80000412]:sd ra, 48(s9)<br>   |
|   8|[0x80002240]<br>0xFFFFFFFFBABECAFE|- rd : x24<br> - imm_val == 128<br>                    |[0x8000041e]:c.lwsp s8, 32<br> [0x80000420]:c.nop<br> [0x80000422]:c.nop<br> [0x80000424]:sd s8, 56(s9)<br>   |
|   9|[0x80002248]<br>0xFFFFFFFFBABECAFE|- rd : x26<br> - imm_val == 248<br>                    |[0x80000430]:c.lwsp s10, 62<br> [0x80000432]:c.nop<br> [0x80000434]:c.nop<br> [0x80000436]:sd s10, 64(s9)<br> |
|  10|[0x80002250]<br>0xFFFFFFFFBABECAFE|- rd : x7<br> - imm_val == 244<br>                     |[0x80000442]:c.lwsp t2, 61<br> [0x80000444]:c.nop<br> [0x80000446]:c.nop<br> [0x80000448]:sd t2, 72(s9)<br>   |
|  11|[0x80002258]<br>0xFFFFFFFFBABECAFE|- rd : x21<br> - imm_val == 236<br>                    |[0x80000454]:c.lwsp s5, 59<br> [0x80000456]:c.nop<br> [0x80000458]:c.nop<br> [0x8000045a]:sd s5, 80(s9)<br>   |
|  12|[0x80002260]<br>0xFFFFFFFFBABECAFE|- rd : x4<br> - imm_val == 220<br>                     |[0x80000466]:c.lwsp tp, 55<br> [0x80000468]:c.nop<br> [0x8000046a]:c.nop<br> [0x8000046c]:sd tp, 88(s9)<br>   |
|  13|[0x80002268]<br>0xFFFFFFFFBABECAFE|- rd : x23<br> - imm_val == 188<br>                    |[0x80000478]:c.lwsp s7, 47<br> [0x8000047a]:c.nop<br> [0x8000047c]:c.nop<br> [0x8000047e]:sd s7, 96(s9)<br>   |
|  14|[0x80002270]<br>0xFFFFFFFFBABECAFE|- rd : x17<br> - imm_val == 124<br>                    |[0x8000048a]:c.lwsp a7, 31<br> [0x8000048c]:c.nop<br> [0x8000048e]:c.nop<br> [0x80000490]:sd a7, 104(s9)<br>  |
|  15|[0x80002278]<br>0xFFFFFFFFBABECAFE|- rd : x20<br> - imm_val == 84<br>                     |[0x8000049c]:c.lwsp s4, 21<br> [0x8000049e]:c.nop<br> [0x800004a0]:c.nop<br> [0x800004a2]:sd s4, 112(s9)<br>  |
|  16|[0x80002280]<br>0xFFFFFFFFBABECAFE|- rd : x10<br> - imm_val == 168<br>                    |[0x800004ae]:c.lwsp a0, 42<br> [0x800004b0]:c.nop<br> [0x800004b2]:c.nop<br> [0x800004b4]:sd a0, 120(s9)<br>  |
|  17|[0x80002288]<br>0xFFFFFFFFBABECAFE|- rd : x11<br>                                         |[0x800004c0]:c.lwsp a1, 0<br> [0x800004c2]:c.nop<br> [0x800004c4]:c.nop<br> [0x800004c6]:sd a1, 128(s9)<br>   |
|  18|[0x80002290]<br>0xFFFFFFFFBABECAFE|- rd : x6<br>                                          |[0x800004d2]:c.lwsp t1, 0<br> [0x800004d4]:c.nop<br> [0x800004d6]:c.nop<br> [0x800004d8]:sd t1, 136(s9)<br>   |
|  19|[0x80002298]<br>0xFFFFFFFFBABECAFE|- rd : x31<br>                                         |[0x800004e4]:c.lwsp t6, 0<br> [0x800004e6]:c.nop<br> [0x800004e8]:c.nop<br> [0x800004ea]:sd t6, 144(s9)<br>   |
|  20|[0x800022a0]<br>0xFFFFFFFFBABECAFE|- rd : x2<br>                                          |[0x800004f6]:c.lwsp sp, 0<br> [0x800004f8]:c.nop<br> [0x800004fa]:c.nop<br> [0x800004fc]:sd sp, 152(s9)<br>   |
|  21|[0x800022a8]<br>0xFFFFFFFFBABECAFE|- rd : x16<br>                                         |[0x80000508]:c.lwsp a6, 0<br> [0x8000050a]:c.nop<br> [0x8000050c]:c.nop<br> [0x8000050e]:sd a6, 160(s9)<br>   |
|  22|[0x800022b0]<br>0xFFFFFFFFBABECAFE|- rd : x13<br>                                         |[0x8000051a]:c.lwsp a3, 0<br> [0x8000051c]:c.nop<br> [0x8000051e]:c.nop<br> [0x80000520]:sd a3, 168(s9)<br>   |
|  23|[0x800022b8]<br>0xFFFFFFFFBABECAFE|- rd : x12<br>                                         |[0x8000052c]:c.lwsp a2, 0<br> [0x8000052e]:c.nop<br> [0x80000530]:c.nop<br> [0x80000532]:sd a2, 176(s9)<br>   |
|  24|[0x800022c0]<br>0xFFFFFFFFBABECAFE|- rd : x22<br>                                         |[0x8000053e]:c.lwsp s6, 0<br> [0x80000540]:c.nop<br> [0x80000542]:c.nop<br> [0x80000544]:sd s6, 184(s9)<br>   |
|  25|[0x800022c8]<br>0xFFFFFFFFBABECAFE|- rd : x3<br>                                          |[0x80000550]:c.lwsp gp, 0<br> [0x80000552]:c.nop<br> [0x80000554]:c.nop<br> [0x80000556]:sd gp, 192(s9)<br>   |
|  26|[0x800022d0]<br>0xFFFFFFFFBABECAFE|- rd : x27<br>                                         |[0x80000562]:c.lwsp s11, 0<br> [0x80000564]:c.nop<br> [0x80000566]:c.nop<br> [0x80000568]:sd s11, 200(s9)<br> |
|  27|[0x800022d8]<br>0xFFFFFFFFBABECAFE|- rd : x18<br>                                         |[0x80000574]:c.lwsp s2, 0<br> [0x80000576]:c.nop<br> [0x80000578]:c.nop<br> [0x8000057a]:sd s2, 208(s9)<br>   |
|  28|[0x800022e0]<br>0xFFFFFFFFBABECAFE|- rd : x9<br>                                          |[0x80000586]:c.lwsp s1, 0<br> [0x80000588]:c.nop<br> [0x8000058a]:c.nop<br> [0x8000058c]:sd s1, 216(s9)<br>   |
|  29|[0x800022e8]<br>0xFFFFFFFFBABECAFE|- rd : x30<br>                                         |[0x800005a0]:c.lwsp t5, 0<br> [0x800005a2]:c.nop<br> [0x800005a4]:c.nop<br> [0x800005a6]:sd t5, 0(ra)<br>     |
|  30|[0x800022f0]<br>0xFFFFFFFFBABECAFE|- rd : x25<br>                                         |[0x800005b2]:c.lwsp s9, 0<br> [0x800005b4]:c.nop<br> [0x800005b6]:c.nop<br> [0x800005b8]:sd s9, 8(ra)<br>     |
|  31|[0x800022f8]<br>0xFFFFFFFFBABECAFE|- rd : x29<br>                                         |[0x800005c4]:c.lwsp t4, 0<br> [0x800005c6]:c.nop<br> [0x800005c8]:c.nop<br> [0x800005ca]:sd t4, 16(ra)<br>    |
