
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000430')]      |
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
      [0x80000426]:c.li a0, 42
      [0x80000428]:sd a0, 24(ra)
 -- Signature Address: 0x80003310 Data: 0xFFFFFFFFFFFFFFEA
 -- Redundant Coverpoints hit by the op
      - opcode : c.li
      - rd : x10
      - imm_val == -22






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
|   1|[0x80003210]<br>0xFFFFFFFFFFFFFFE0|- opcode : c.li<br> - rd : x1<br> - imm_val == (-2**(6-1))<br> - imm_val == -32<br> |[0x80000398]:c.li ra, 32<br> [0x8000039a]:c.sdsp ra, 0<br>    |
|   2|[0x80003218]<br>0x0000000000000000|- rd : x10<br> - imm_val == 0<br>                                                   |[0x8000039c]:c.li a0, 0<br> [0x8000039e]:c.sdsp a0, 1<br>     |
|   3|[0x80003220]<br>0x000000000000001F|- rd : x3<br> - imm_val == (2**(6-1)-1)<br> - imm_val == 31<br>                     |[0x800003a0]:c.li gp, 31<br> [0x800003a2]:c.sdsp gp, 2<br>    |
|   4|[0x80003228]<br>0x0000000000000001|- rd : x23<br> - imm_val == 1<br>                                                   |[0x800003a4]:c.li s7, 1<br> [0x800003a6]:c.sdsp s7, 3<br>     |
|   5|[0x80003230]<br>0x0000000000000002|- rd : x13<br> - imm_val == 2<br>                                                   |[0x800003a8]:c.li a3, 2<br> [0x800003aa]:c.sdsp a3, 4<br>     |
|   6|[0x80003238]<br>0x0000000000000004|- rd : x15<br> - imm_val == 4<br>                                                   |[0x800003ac]:c.li a5, 4<br> [0x800003ae]:c.sdsp a5, 5<br>     |
|   7|[0x80003240]<br>0x0000000000000008|- rd : x30<br> - imm_val == 8<br>                                                   |[0x800003b0]:c.li t5, 8<br> [0x800003b2]:c.sdsp t5, 6<br>     |
|   8|[0x80003248]<br>0x0000000000000010|- rd : x11<br> - imm_val == 16<br>                                                  |[0x800003b4]:c.li a1, 16<br> [0x800003b6]:c.sdsp a1, 7<br>    |
|   9|[0x80003250]<br>0x0000000000000000|- rd : x0<br> - imm_val == -22<br>                                                  |[0x800003b8]:c.li.hint.42<br> [0x800003ba]:c.sdsp zero, 8<br> |
|  10|[0x80003258]<br>0xFFFFFFFFFFFFFFFE|- rd : x28<br> - imm_val == -2<br>                                                  |[0x800003bc]:c.li t3, 62<br> [0x800003be]:c.sdsp t3, 9<br>    |
|  11|[0x80003260]<br>0xFFFFFFFFFFFFFFFD|- rd : x21<br> - imm_val == -3<br>                                                  |[0x800003c0]:c.li s5, 61<br> [0x800003c2]:c.sdsp s5, 10<br>   |
|  12|[0x80003268]<br>0xFFFFFFFFFFFFFFFB|- rd : x8<br> - imm_val == -5<br>                                                   |[0x800003c4]:c.li fp, 59<br> [0x800003c6]:c.sdsp fp, 11<br>   |
|  13|[0x80003270]<br>0xFFFFFFFFFFFFFFF7|- rd : x9<br> - imm_val == -9<br>                                                   |[0x800003c8]:c.li s1, 55<br> [0x800003ca]:c.sdsp s1, 12<br>   |
|  14|[0x80003278]<br>0xFFFFFFFFFFFFFFEF|- rd : x16<br> - imm_val == -17<br>                                                 |[0x800003cc]:c.li a6, 47<br> [0x800003ce]:c.sdsp a6, 13<br>   |
|  15|[0x80003280]<br>0x0000000000000015|- rd : x25<br> - imm_val == 21<br>                                                  |[0x800003d0]:c.li s9, 21<br> [0x800003d2]:c.sdsp s9, 14<br>   |
|  16|[0x80003288]<br>0x0000000000000000|- rd : x26<br>                                                                      |[0x800003d4]:c.li s10, 0<br> [0x800003d6]:c.sdsp s10, 15<br>  |
|  17|[0x80003290]<br>0x0000000000000000|- rd : x27<br>                                                                      |[0x800003d8]:c.li s11, 0<br> [0x800003da]:c.sdsp s11, 16<br>  |
|  18|[0x80003298]<br>0x0000000000000000|- rd : x20<br>                                                                      |[0x800003dc]:c.li s4, 0<br> [0x800003de]:c.sdsp s4, 17<br>    |
|  19|[0x800032a0]<br>0x0000000000000000|- rd : x6<br>                                                                       |[0x800003e0]:c.li t1, 0<br> [0x800003e2]:c.sdsp t1, 18<br>    |
|  20|[0x800032a8]<br>0x0000000000000000|- rd : x19<br>                                                                      |[0x800003e4]:c.li s3, 0<br> [0x800003e6]:c.sdsp s3, 19<br>    |
|  21|[0x800032b0]<br>0x0000000000000000|- rd : x18<br>                                                                      |[0x800003e8]:c.li s2, 0<br> [0x800003ea]:c.sdsp s2, 20<br>    |
|  22|[0x800032b8]<br>0x0000000000000000|- rd : x29<br>                                                                      |[0x800003ec]:c.li t4, 0<br> [0x800003ee]:c.sdsp t4, 21<br>    |
|  23|[0x800032c0]<br>0x0000000000000000|- rd : x5<br>                                                                       |[0x800003f0]:c.li t0, 0<br> [0x800003f2]:c.sdsp t0, 22<br>    |
|  24|[0x800032c8]<br>0x0000000000000000|- rd : x31<br>                                                                      |[0x800003f4]:c.li t6, 0<br> [0x800003f6]:c.sdsp t6, 23<br>    |
|  25|[0x800032d0]<br>0x0000000000000000|- rd : x12<br>                                                                      |[0x800003f8]:c.li a2, 0<br> [0x800003fa]:c.sdsp a2, 24<br>    |
|  26|[0x800032d8]<br>0x0000000000000000|- rd : x7<br>                                                                       |[0x800003fc]:c.li t2, 0<br> [0x800003fe]:c.sdsp t2, 25<br>    |
|  27|[0x800032e0]<br>0x0000000000000000|- rd : x4<br>                                                                       |[0x80000400]:c.li tp, 0<br> [0x80000402]:c.sdsp tp, 26<br>    |
|  28|[0x800032e8]<br>0x0000000000000000|- rd : x14<br>                                                                      |[0x80000404]:c.li a4, 0<br> [0x80000406]:c.sdsp a4, 27<br>    |
|  29|[0x800032f0]<br>0x0000000000000000|- rd : x22<br>                                                                      |[0x80000408]:c.li s6, 0<br> [0x8000040a]:c.sdsp s6, 28<br>    |
|  30|[0x800032f8]<br>0x0000000000000000|- rd : x2<br>                                                                       |[0x80000414]:c.li sp, 0<br> [0x80000416]:sd sp, 0(ra)<br>     |
|  31|[0x80003300]<br>0x0000000000000000|- rd : x24<br>                                                                      |[0x8000041a]:c.li s8, 0<br> [0x8000041c]:sd s8, 8(ra)<br>     |
|  32|[0x80003308]<br>0x0000000000000000|- rd : x17<br>                                                                      |[0x80000420]:c.li a7, 0<br> [0x80000422]:sd a7, 16(ra)<br>    |
