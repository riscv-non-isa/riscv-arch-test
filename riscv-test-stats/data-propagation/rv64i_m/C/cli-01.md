
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
      [0x80000454]:c.li a0, 2
      [0x80000456]:sd a0, 24(ra)
 -- Signature Address: 0x80003308 Data: 0x0000000000000002
 -- Redundant Coverpoints hit by the op
      - opcode : c.li
      - rd : x10
      - imm_val == 2






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

|s.no|            signature             |                                     coverpoints                                     |                             code                             |
|---:|----------------------------------|-------------------------------------------------------------------------------------|--------------------------------------------------------------|
|   1|[0x80003208]<br>0xFFFFFFFFFFFFFFE0|- opcode : c.li<br> - rd : x25<br> - imm_val == (-2**(6-1))<br> - imm_val == -32<br> |[0x80000398]:c.li s9, 32<br> [0x8000039a]:sd s9, 0(a1)<br>    |
|   2|[0x80003210]<br>0x0000000000000000|- rd : x26<br> - imm_val == 0<br>                                                    |[0x8000039e]:c.li s10, 0<br> [0x800003a0]:sd s10, 8(a1)<br>   |
|   3|[0x80003218]<br>0x000000000000001F|- rd : x29<br> - imm_val == (2**(6-1)-1)<br> - imm_val == 31<br>                     |[0x800003a4]:c.li t4, 31<br> [0x800003a6]:sd t4, 16(a1)<br>   |
|   4|[0x80003220]<br>0x0000000000000001|- rd : x17<br> - imm_val == 1<br>                                                    |[0x800003aa]:c.li a7, 1<br> [0x800003ac]:sd a7, 24(a1)<br>    |
|   5|[0x80003228]<br>0x0000000000000000|- rd : x0<br> - imm_val == 2<br>                                                     |[0x800003b0]:c.li.hint.2<br> [0x800003b2]:sd zero, 32(a1)<br> |
|   6|[0x80003230]<br>0x0000000000000004|- rd : x16<br> - imm_val == 4<br>                                                    |[0x800003b6]:c.li a6, 4<br> [0x800003b8]:sd a6, 40(a1)<br>    |
|   7|[0x80003238]<br>0x0000000000000008|- rd : x20<br> - imm_val == 8<br>                                                    |[0x800003bc]:c.li s4, 8<br> [0x800003be]:sd s4, 48(a1)<br>    |
|   8|[0x80003240]<br>0x0000000000000010|- rd : x23<br> - imm_val == 16<br>                                                   |[0x800003c2]:c.li s7, 16<br> [0x800003c4]:sd s7, 56(a1)<br>   |
|   9|[0x80003248]<br>0xFFFFFFFFFFFFFFEA|- rd : x3<br> - imm_val == -22<br>                                                   |[0x800003c8]:c.li gp, 42<br> [0x800003ca]:sd gp, 64(a1)<br>   |
|  10|[0x80003250]<br>0xFFFFFFFFFFFFFFFE|- rd : x31<br> - imm_val == -2<br>                                                   |[0x800003ce]:c.li t6, 62<br> [0x800003d0]:sd t6, 72(a1)<br>   |
|  11|[0x80003258]<br>0xFFFFFFFFFFFFFFFD|- rd : x22<br> - imm_val == -3<br>                                                   |[0x800003d4]:c.li s6, 61<br> [0x800003d6]:sd s6, 80(a1)<br>   |
|  12|[0x80003260]<br>0xFFFFFFFFFFFFFFFB|- rd : x5<br> - imm_val == -5<br>                                                    |[0x800003da]:c.li t0, 59<br> [0x800003dc]:sd t0, 88(a1)<br>   |
|  13|[0x80003268]<br>0xFFFFFFFFFFFFFFF7|- rd : x8<br> - imm_val == -9<br>                                                    |[0x800003e0]:c.li fp, 55<br> [0x800003e2]:c.sd a1, s0, 96<br> |
|  14|[0x80003270]<br>0xFFFFFFFFFFFFFFEF|- rd : x4<br> - imm_val == -17<br>                                                   |[0x800003e4]:c.li tp, 47<br> [0x800003e6]:sd tp, 104(a1)<br>  |
|  15|[0x80003278]<br>0x0000000000000015|- rd : x1<br> - imm_val == 21<br>                                                    |[0x800003ea]:c.li ra, 21<br> [0x800003ec]:sd ra, 112(a1)<br>  |
|  16|[0x80003280]<br>0x0000000000000000|- rd : x10<br>                                                                       |[0x800003f0]:c.li a0, 0<br> [0x800003f2]:c.sd a1, a0, 120<br> |
|  17|[0x80003288]<br>0x0000000000000000|- rd : x24<br>                                                                       |[0x800003f4]:c.li s8, 0<br> [0x800003f6]:sd s8, 128(a1)<br>   |
|  18|[0x80003290]<br>0x0000000000000000|- rd : x12<br>                                                                       |[0x800003fa]:c.li a2, 0<br> [0x800003fc]:c.sd a1, a2, 136<br> |
|  19|[0x80003298]<br>0x0000000000000000|- rd : x30<br>                                                                       |[0x800003fe]:c.li t5, 0<br> [0x80000400]:sd t5, 144(a1)<br>   |
|  20|[0x800032a0]<br>0x0000000000000000|- rd : x13<br>                                                                       |[0x80000404]:c.li a3, 0<br> [0x80000406]:c.sd a1, a3, 152<br> |
|  21|[0x800032a8]<br>0x0000000000000000|- rd : x9<br>                                                                        |[0x80000408]:c.li s1, 0<br> [0x8000040a]:c.sd a1, s1, 160<br> |
|  22|[0x800032b0]<br>0x0000000000000000|- rd : x21<br>                                                                       |[0x8000040c]:c.li s5, 0<br> [0x8000040e]:sd s5, 168(a1)<br>   |
|  23|[0x800032b8]<br>0x0000000000000000|- rd : x27<br>                                                                       |[0x80000412]:c.li s11, 0<br> [0x80000414]:sd s11, 176(a1)<br> |
|  24|[0x800032c0]<br>0x0000000000000000|- rd : x19<br>                                                                       |[0x80000418]:c.li s3, 0<br> [0x8000041a]:sd s3, 184(a1)<br>   |
|  25|[0x800032c8]<br>0x0000000000000000|- rd : x18<br>                                                                       |[0x8000041e]:c.li s2, 0<br> [0x80000420]:sd s2, 192(a1)<br>   |
|  26|[0x800032d0]<br>0x0000000000000000|- rd : x7<br>                                                                        |[0x80000424]:c.li t2, 0<br> [0x80000426]:sd t2, 200(a1)<br>   |
|  27|[0x800032d8]<br>0x0000000000000000|- rd : x2<br>                                                                        |[0x8000042a]:c.li sp, 0<br> [0x8000042c]:sd sp, 208(a1)<br>   |
|  28|[0x800032e0]<br>0x0000000000000000|- rd : x14<br>                                                                       |[0x80000430]:c.li a4, 0<br> [0x80000432]:c.sd a1, a4, 216<br> |
|  29|[0x800032e8]<br>0x0000000000000000|- rd : x6<br>                                                                        |[0x80000434]:c.li t1, 0<br> [0x80000436]:sd t1, 224(a1)<br>   |
|  30|[0x800032f0]<br>0x0000000000000000|- rd : x11<br>                                                                       |[0x80000442]:c.li a1, 0<br> [0x80000444]:sd a1, 0(ra)<br>     |
|  31|[0x800032f8]<br>0x0000000000000000|- rd : x15<br>                                                                       |[0x80000448]:c.li a5, 0<br> [0x8000044a]:sd a5, 8(ra)<br>     |
|  32|[0x80003300]<br>0x0000000000000000|- rd : x28<br>                                                                       |[0x8000044e]:c.li t3, 0<br> [0x80000450]:sd t3, 16(ra)<br>    |
