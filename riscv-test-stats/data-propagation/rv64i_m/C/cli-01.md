
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000460')]      |
| SIG_REGION                | [('0x80003208', '0x80003310', '33 dwords')]      |
| COV_LABELS                | cli      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cli-01.S/cli-01.S    |
| Total Number of coverpoints| 50     |
| Total Coverpoints Hit     | 50      |
| Total Signature Updates   | 33      |
| STAT1                     | 32      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000452]:c.li a0, 61
      [0x80000454]:sd a0, 24(ra)
 -- Signature Address: 0x80003308 Data: 0xFFFFFFFFFFFFFFFD
 -- Redundant Coverpoints hit by the op
      - opcode : c.li
      - rd : x10
      - imm_val == -3






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

|s.no|            signature             |                                     coverpoints                                     |                             code                              |
|---:|----------------------------------|-------------------------------------------------------------------------------------|---------------------------------------------------------------|
|   1|[0x80003208]<br>0xFFFFFFFFFFFFFFE0|- opcode : c.li<br> - rd : x28<br> - imm_val == (-2**(6-1))<br> - imm_val == -32<br> |[0x80000398]:c.li t3, 32<br> [0x8000039a]:sd t3, 0(a0)<br>     |
|   2|[0x80003210]<br>0x0000000000000000|- rd : x8<br> - imm_val == 0<br>                                                     |[0x8000039e]:c.li fp, 0<br> [0x800003a0]:c.sd a0, s0, 8<br>    |
|   3|[0x80003218]<br>0x000000000000001F|- rd : x31<br> - imm_val == (2**(6-1)-1)<br> - imm_val == 31<br>                     |[0x800003a2]:c.li t6, 31<br> [0x800003a4]:sd t6, 16(a0)<br>    |
|   4|[0x80003220]<br>0x0000000000000001|- rd : x24<br> - imm_val == 1<br>                                                    |[0x800003a8]:c.li s8, 1<br> [0x800003aa]:sd s8, 24(a0)<br>     |
|   5|[0x80003228]<br>0x0000000000000002|- rd : x21<br> - imm_val == 2<br>                                                    |[0x800003ae]:c.li s5, 2<br> [0x800003b0]:sd s5, 32(a0)<br>     |
|   6|[0x80003230]<br>0x0000000000000004|- rd : x2<br> - imm_val == 4<br>                                                     |[0x800003b4]:c.li sp, 4<br> [0x800003b6]:sd sp, 40(a0)<br>     |
|   7|[0x80003238]<br>0x0000000000000008|- rd : x18<br> - imm_val == 8<br>                                                    |[0x800003ba]:c.li s2, 8<br> [0x800003bc]:sd s2, 48(a0)<br>     |
|   8|[0x80003240]<br>0x0000000000000010|- rd : x4<br> - imm_val == 16<br>                                                    |[0x800003c0]:c.li tp, 16<br> [0x800003c2]:sd tp, 56(a0)<br>    |
|   9|[0x80003248]<br>0xFFFFFFFFFFFFFFEA|- rd : x17<br> - imm_val == -22<br>                                                  |[0x800003c6]:c.li a7, 42<br> [0x800003c8]:sd a7, 64(a0)<br>    |
|  10|[0x80003250]<br>0xFFFFFFFFFFFFFFFE|- rd : x13<br> - imm_val == -2<br>                                                   |[0x800003cc]:c.li a3, 62<br> [0x800003ce]:c.sd a0, a3, 72<br>  |
|  11|[0x80003258]<br>0x0000000000000000|- rd : x0<br> - imm_val == -3<br>                                                    |[0x800003d0]:c.li.hint.61<br> [0x800003d2]:sd zero, 80(a0)<br> |
|  12|[0x80003260]<br>0xFFFFFFFFFFFFFFFB|- rd : x3<br> - imm_val == -5<br>                                                    |[0x800003d6]:c.li gp, 59<br> [0x800003d8]:sd gp, 88(a0)<br>    |
|  13|[0x80003268]<br>0xFFFFFFFFFFFFFFF7|- rd : x29<br> - imm_val == -9<br>                                                   |[0x800003dc]:c.li t4, 55<br> [0x800003de]:sd t4, 96(a0)<br>    |
|  14|[0x80003270]<br>0xFFFFFFFFFFFFFFEF|- rd : x14<br> - imm_val == -17<br>                                                  |[0x800003e2]:c.li a4, 47<br> [0x800003e4]:c.sd a0, a4, 104<br> |
|  15|[0x80003278]<br>0x0000000000000015|- rd : x27<br> - imm_val == 21<br>                                                   |[0x800003e6]:c.li s11, 21<br> [0x800003e8]:sd s11, 112(a0)<br> |
|  16|[0x80003280]<br>0x0000000000000000|- rd : x30<br>                                                                       |[0x800003ec]:c.li t5, 0<br> [0x800003ee]:sd t5, 120(a0)<br>    |
|  17|[0x80003288]<br>0x0000000000000000|- rd : x16<br>                                                                       |[0x800003f2]:c.li a6, 0<br> [0x800003f4]:sd a6, 128(a0)<br>    |
|  18|[0x80003290]<br>0x0000000000000000|- rd : x5<br>                                                                        |[0x800003f8]:c.li t0, 0<br> [0x800003fa]:sd t0, 136(a0)<br>    |
|  19|[0x80003298]<br>0x0000000000000000|- rd : x23<br>                                                                       |[0x800003fe]:c.li s7, 0<br> [0x80000400]:sd s7, 144(a0)<br>    |
|  20|[0x800032a0]<br>0x0000000000000000|- rd : x7<br>                                                                        |[0x80000404]:c.li t2, 0<br> [0x80000406]:sd t2, 152(a0)<br>    |
|  21|[0x800032a8]<br>0x0000000000000000|- rd : x20<br>                                                                       |[0x8000040a]:c.li s4, 0<br> [0x8000040c]:sd s4, 160(a0)<br>    |
|  22|[0x800032b0]<br>0x0000000000000000|- rd : x11<br>                                                                       |[0x80000410]:c.li a1, 0<br> [0x80000412]:c.sd a0, a1, 168<br>  |
|  23|[0x800032b8]<br>0x0000000000000000|- rd : x9<br>                                                                        |[0x80000414]:c.li s1, 0<br> [0x80000416]:c.sd a0, s1, 176<br>  |
|  24|[0x800032c0]<br>0x0000000000000000|- rd : x1<br>                                                                        |[0x80000418]:c.li ra, 0<br> [0x8000041a]:sd ra, 184(a0)<br>    |
|  25|[0x800032c8]<br>0x0000000000000000|- rd : x19<br>                                                                       |[0x8000041e]:c.li s3, 0<br> [0x80000420]:sd s3, 192(a0)<br>    |
|  26|[0x800032d0]<br>0x0000000000000000|- rd : x15<br>                                                                       |[0x80000424]:c.li a5, 0<br> [0x80000426]:c.sd a0, a5, 200<br>  |
|  27|[0x800032d8]<br>0x0000000000000000|- rd : x12<br>                                                                       |[0x80000428]:c.li a2, 0<br> [0x8000042a]:c.sd a0, a2, 208<br>  |
|  28|[0x800032e0]<br>0x0000000000000000|- rd : x6<br>                                                                        |[0x8000042c]:c.li t1, 0<br> [0x8000042e]:sd t1, 216(a0)<br>    |
|  29|[0x800032e8]<br>0x0000000000000000|- rd : x25<br>                                                                       |[0x80000432]:c.li s9, 0<br> [0x80000434]:sd s9, 224(a0)<br>    |
|  30|[0x800032f0]<br>0x0000000000000000|- rd : x26<br>                                                                       |[0x80000440]:c.li s10, 0<br> [0x80000442]:sd s10, 0(ra)<br>    |
|  31|[0x800032f8]<br>0x0000000000000000|- rd : x10<br>                                                                       |[0x80000446]:c.li a0, 0<br> [0x80000448]:sd a0, 8(ra)<br>      |
|  32|[0x80003300]<br>0x0000000000000000|- rd : x22<br>                                                                       |[0x8000044c]:c.li s6, 0<br> [0x8000044e]:sd s6, 16(ra)<br>     |
