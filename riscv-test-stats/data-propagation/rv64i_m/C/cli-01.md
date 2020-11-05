
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
| SIG_REGION                | [('0x80003204', '0x80003318', '34 dwords')]      |
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
      [0x8000045a]:c.li a0, 32
      [0x8000045c]:c.sdsp a0, 3
 -- Signature Address: 0x80003310 Data: 0xFFFFFFFFFFFFFFE0
 -- Redundant Coverpoints hit by the op
      - opcode : c.li
      - rd : x10
      - imm_val == (-2**(6-1))
      - imm_val == -32






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

|s.no|            signature             |                                    coverpoints                                     |                             code                             |
|---:|----------------------------------|------------------------------------------------------------------------------------|--------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000000000000|- opcode : c.li<br> - rd : x0<br> - imm_val == (-2**(6-1))<br> - imm_val == -32<br> |[0x80000398]:c.li.hint.32<br> [0x8000039a]:sd zero, 0(ra)<br> |
|   2|[0x80003218]<br>0x0000000000000000|- rd : x20<br> - imm_val == 0<br>                                                   |[0x8000039e]:c.li s4, 0<br> [0x800003a0]:sd s4, 8(ra)<br>     |
|   3|[0x80003220]<br>0x000000000000001F|- rd : x12<br> - imm_val == (2**(6-1)-1)<br> - imm_val == 31<br>                    |[0x800003a4]:c.li a2, 31<br> [0x800003a6]:sd a2, 16(ra)<br>   |
|   4|[0x80003228]<br>0x0000000000000001|- rd : x30<br> - imm_val == 1<br>                                                   |[0x800003aa]:c.li t5, 1<br> [0x800003ac]:sd t5, 24(ra)<br>    |
|   5|[0x80003230]<br>0x0000000000000002|- rd : x8<br> - imm_val == 2<br>                                                    |[0x800003b0]:c.li fp, 2<br> [0x800003b2]:sd fp, 32(ra)<br>    |
|   6|[0x80003238]<br>0x0000000000000004|- rd : x21<br> - imm_val == 4<br>                                                   |[0x800003b6]:c.li s5, 4<br> [0x800003b8]:sd s5, 40(ra)<br>    |
|   7|[0x80003240]<br>0x0000000000000008|- rd : x2<br> - imm_val == 8<br>                                                    |[0x800003bc]:c.li sp, 8<br> [0x800003be]:sd sp, 48(ra)<br>    |
|   8|[0x80003248]<br>0x0000000000000010|- rd : x4<br> - imm_val == 16<br>                                                   |[0x800003c2]:c.li tp, 16<br> [0x800003c4]:sd tp, 56(ra)<br>   |
|   9|[0x80003250]<br>0xFFFFFFFFFFFFFFEA|- rd : x16<br> - imm_val == -22<br>                                                 |[0x800003c8]:c.li a6, 42<br> [0x800003ca]:sd a6, 64(ra)<br>   |
|  10|[0x80003258]<br>0xFFFFFFFFFFFFFFFE|- rd : x18<br> - imm_val == -2<br>                                                  |[0x800003ce]:c.li s2, 62<br> [0x800003d0]:sd s2, 72(ra)<br>   |
|  11|[0x80003260]<br>0xFFFFFFFFFFFFFFFD|- rd : x9<br> - imm_val == -3<br>                                                   |[0x800003d4]:c.li s1, 61<br> [0x800003d6]:sd s1, 80(ra)<br>   |
|  12|[0x80003268]<br>0xFFFFFFFFFFFFFFFB|- rd : x15<br> - imm_val == -5<br>                                                  |[0x800003da]:c.li a5, 59<br> [0x800003dc]:sd a5, 88(ra)<br>   |
|  13|[0x80003270]<br>0xFFFFFFFFFFFFFFF7|- rd : x3<br> - imm_val == -9<br>                                                   |[0x800003e0]:c.li gp, 55<br> [0x800003e2]:sd gp, 96(ra)<br>   |
|  14|[0x80003278]<br>0xFFFFFFFFFFFFFFEF|- rd : x11<br> - imm_val == -17<br>                                                 |[0x800003e6]:c.li a1, 47<br> [0x800003e8]:sd a1, 104(ra)<br>  |
|  15|[0x80003280]<br>0x0000000000000015|- rd : x31<br> - imm_val == 21<br>                                                  |[0x800003ec]:c.li t6, 21<br> [0x800003ee]:sd t6, 112(ra)<br>  |
|  16|[0x80003288]<br>0x0000000000000000|- rd : x6<br>                                                                       |[0x800003f2]:c.li t1, 0<br> [0x800003f4]:sd t1, 120(ra)<br>   |
|  17|[0x80003290]<br>0x0000000000000000|- rd : x26<br>                                                                      |[0x800003f8]:c.li s10, 0<br> [0x800003fa]:sd s10, 128(ra)<br> |
|  18|[0x80003298]<br>0x0000000000000000|- rd : x13<br>                                                                      |[0x800003fe]:c.li a3, 0<br> [0x80000400]:sd a3, 136(ra)<br>   |
|  19|[0x800032a0]<br>0x0000000000000000|- rd : x24<br>                                                                      |[0x80000404]:c.li s8, 0<br> [0x80000406]:sd s8, 144(ra)<br>   |
|  20|[0x800032a8]<br>0x0000000000000000|- rd : x23<br>                                                                      |[0x8000040a]:c.li s7, 0<br> [0x8000040c]:sd s7, 152(ra)<br>   |
|  21|[0x800032b0]<br>0x0000000000000000|- rd : x28<br>                                                                      |[0x80000410]:c.li t3, 0<br> [0x80000412]:sd t3, 160(ra)<br>   |
|  22|[0x800032b8]<br>0x0000000000000000|- rd : x19<br>                                                                      |[0x80000416]:c.li s3, 0<br> [0x80000418]:sd s3, 168(ra)<br>   |
|  23|[0x800032c0]<br>0x0000000000000000|- rd : x7<br>                                                                       |[0x8000041c]:c.li t2, 0<br> [0x8000041e]:sd t2, 176(ra)<br>   |
|  24|[0x800032c8]<br>0x0000000000000000|- rd : x5<br>                                                                       |[0x80000422]:c.li t0, 0<br> [0x80000424]:sd t0, 184(ra)<br>   |
|  25|[0x800032d0]<br>0x0000000000000000|- rd : x10<br>                                                                      |[0x80000428]:c.li a0, 0<br> [0x8000042a]:sd a0, 192(ra)<br>   |
|  26|[0x800032d8]<br>0x0000000000000000|- rd : x25<br>                                                                      |[0x8000042e]:c.li s9, 0<br> [0x80000430]:sd s9, 200(ra)<br>   |
|  27|[0x800032e0]<br>0x0000000000000000|- rd : x17<br>                                                                      |[0x80000434]:c.li a7, 0<br> [0x80000436]:sd a7, 208(ra)<br>   |
|  28|[0x800032e8]<br>0x0000000000000000|- rd : x29<br>                                                                      |[0x8000043a]:c.li t4, 0<br> [0x8000043c]:sd t4, 216(ra)<br>   |
|  29|[0x800032f0]<br>0x0000000000000000|- rd : x14<br>                                                                      |[0x80000440]:c.li a4, 0<br> [0x80000442]:sd a4, 224(ra)<br>   |
|  30|[0x800032f8]<br>0x0000000000000000|- rd : x22<br>                                                                      |[0x8000044e]:c.li s6, 0<br> [0x80000450]:c.sdsp s6, 0<br>     |
|  31|[0x80003300]<br>0x0000000000000000|- rd : x1<br>                                                                       |[0x80000452]:c.li ra, 0<br> [0x80000454]:c.sdsp ra, 1<br>     |
|  32|[0x80003308]<br>0x0000000000000000|- rd : x27<br>                                                                      |[0x80000456]:c.li s11, 0<br> [0x80000458]:c.sdsp s11, 2<br>   |
