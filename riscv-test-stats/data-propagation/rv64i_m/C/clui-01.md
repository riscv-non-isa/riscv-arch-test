
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800004f0')]      |
| SIG_REGION                | [('0x80003204', '0x80003310', '33 dwords')]      |
| COV_LABELS                | clui      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/clui-01.S/clui-01.S    |
| Total Number of coverpoints| 50     |
| Total Coverpoints Hit     | 50      |
| Total Signature Updates   | 32      |
| STAT1                     | 31      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004dc]:c.lui a0, 1
      [0x800004de]:sd a0, 16(ra)
 -- Signature Address: 0x80003308 Data: 0x0000000000001000
 -- Redundant Coverpoints hit by the op
      - opcode : c.lui
      - rd : x10
      - rs1_val > 0 and imm_val < 32 and imm_val !=0 
      - imm_val == 1






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

|s.no|            signature             |                             coverpoints                              |                             code                              |
|---:|----------------------------------|----------------------------------------------------------------------|---------------------------------------------------------------|
|   1|[0x80003210]<br>0xFFFFFFFFFFFFF000|- opcode : c.lui<br> - rd : x7<br> - rs1_val > 0 and imm_val > 32<br> |[0x800003a0]:c.lui t2, 63<br> [0x800003a2]:c.sdsp t2, 0<br>    |
|   2|[0x80003218]<br>0x000000000000A000|- rd : x5<br> - rs1_val > 0 and imm_val < 32 and imm_val !=0 <br>     |[0x800003ac]:c.lui t0, 10<br> [0x800003ae]:c.sdsp t0, 1<br>    |
|   3|[0x80003220]<br>0xFFFFFFFFFFFF7000|- rd : x9<br> - rs1_val < 0 and imm_val > 32<br> - imm_val == 55<br>  |[0x800003b8]:c.lui s1, 55<br> [0x800003ba]:c.sdsp s1, 2<br>    |
|   4|[0x80003228]<br>0x0000000000009000|- rd : x24<br> - rs1_val < 0 and imm_val < 32 and imm_val !=0 <br>    |[0x800003c4]:c.lui s8, 9<br> [0x800003c6]:c.sdsp s8, 3<br>     |
|   5|[0x80003230]<br>0x0000000000000000|- rd : x0<br> - imm_val == 1<br>                                      |[0x800003d0]:c.lui.hint.1<br> [0x800003d2]:c.sdsp zero, 4<br>  |
|   6|[0x80003238]<br>0x0000000000002000|- rd : x27<br> - imm_val == 2<br>                                     |[0x800003e0]:c.lui s11, 2<br> [0x800003e2]:c.sdsp s11, 5<br>   |
|   7|[0x80003240]<br>0x0000000000004000|- rd : x1<br> - imm_val == 4<br>                                      |[0x800003ec]:c.lui ra, 4<br> [0x800003ee]:c.sdsp ra, 6<br>     |
|   8|[0x80003248]<br>0x0000000000008000|- rd : x21<br> - imm_val == 8<br>                                     |[0x800003f8]:c.lui s5, 8<br> [0x800003fa]:c.sdsp s5, 7<br>     |
|   9|[0x80003250]<br>0x0000000000010000|- rd : x25<br> - imm_val == 16<br>                                    |[0x80000400]:c.lui s9, 16<br> [0x80000402]:c.sdsp s9, 8<br>    |
|  10|[0x80003258]<br>0xFFFFFFFFFFFE0000|- rd : x11<br> - imm_val == 32<br>                                    |[0x8000040c]:c.lui a1, 32<br> [0x8000040e]:c.sdsp a1, 9<br>    |
|  11|[0x80003260]<br>0x0000000000015000|- rd : x20<br> - imm_val == 21<br>                                    |[0x80000418]:c.lui s4, 21<br> [0x8000041a]:c.sdsp s4, 10<br>   |
|  12|[0x80003268]<br>0xFFFFFFFFFFFEA000|- rd : x13<br> - imm_val == 42<br>                                    |[0x80000420]:c.lui a3, 42<br> [0x80000422]:c.sdsp a3, 11<br>   |
|  13|[0x80003270]<br>0xFFFFFFFFFFFFE000|- rd : x19<br> - imm_val == 62<br>                                    |[0x80000428]:c.lui s3, 62<br> [0x8000042a]:c.sdsp s3, 12<br>   |
|  14|[0x80003278]<br>0xFFFFFFFFFFFFD000|- rd : x30<br> - imm_val == 61<br>                                    |[0x80000438]:c.lui t5, 61<br> [0x8000043a]:c.sdsp t5, 13<br>   |
|  15|[0x80003280]<br>0xFFFFFFFFFFFFB000|- rd : x15<br> - imm_val == 59<br>                                    |[0x80000440]:c.lui a5, 59<br> [0x80000442]:c.sdsp a5, 14<br>   |
|  16|[0x80003288]<br>0xFFFFFFFFFFFEF000|- rd : x29<br> - imm_val == 47<br>                                    |[0x8000044c]:c.lui t4, 47<br> [0x8000044e]:c.sdsp t4, 15<br>   |
|  17|[0x80003290]<br>0x000000000001F000|- rd : x4<br> - imm_val == 31<br>                                     |[0x80000454]:c.lui tp, 31<br> [0x80000456]:c.sdsp tp, 16<br>   |
|  18|[0x80003298]<br>0x0000000000010000|- rd : x23<br>                                                        |[0x8000045c]:c.lui s7, 16<br> [0x8000045e]:c.sdsp s7, 17<br>   |
|  19|[0x800032a0]<br>0x0000000000010000|- rd : x17<br>                                                        |[0x80000464]:c.lui a7, 16<br> [0x80000466]:c.sdsp a7, 18<br>   |
|  20|[0x800032a8]<br>0x0000000000010000|- rd : x6<br>                                                         |[0x8000046c]:c.lui t1, 16<br> [0x8000046e]:c.sdsp t1, 19<br>   |
|  21|[0x800032b0]<br>0x0000000000010000|- rd : x12<br>                                                        |[0x80000474]:c.lui a2, 16<br> [0x80000476]:c.sdsp a2, 20<br>   |
|  22|[0x800032b8]<br>0x0000000000010000|- rd : x3<br>                                                         |[0x8000047c]:c.lui gp, 16<br> [0x8000047e]:c.sdsp gp, 21<br>   |
|  23|[0x800032c0]<br>0x0000000000010000|- rd : x22<br>                                                        |[0x80000484]:c.lui s6, 16<br> [0x80000486]:c.sdsp s6, 22<br>   |
|  24|[0x800032c8]<br>0x0000000000010000|- rd : x16<br>                                                        |[0x8000048c]:c.lui a6, 16<br> [0x8000048e]:c.sdsp a6, 23<br>   |
|  25|[0x800032d0]<br>0x0000000000010000|- rd : x8<br>                                                         |[0x80000494]:c.lui fp, 16<br> [0x80000496]:c.sdsp fp, 24<br>   |
|  26|[0x800032d8]<br>0x0000000000010000|- rd : x10<br>                                                        |[0x8000049c]:c.lui a0, 16<br> [0x8000049e]:c.sdsp a0, 25<br>   |
|  27|[0x800032e0]<br>0x0000000000010000|- rd : x26<br>                                                        |[0x800004a4]:c.lui s10, 16<br> [0x800004a6]:c.sdsp s10, 26<br> |
|  28|[0x800032e8]<br>0x0000000000010000|- rd : x31<br>                                                        |[0x800004ac]:c.lui t6, 16<br> [0x800004ae]:c.sdsp t6, 27<br>   |
|  29|[0x800032f0]<br>0x0000000000010000|- rd : x14<br>                                                        |[0x800004b4]:c.lui a4, 16<br> [0x800004b6]:c.sdsp a4, 28<br>   |
|  30|[0x800032f8]<br>0x0000000000010000|- rd : x18<br>                                                        |[0x800004c4]:c.lui s2, 16<br> [0x800004c6]:sd s2, 0(ra)<br>    |
|  31|[0x80003300]<br>0x0000000000010000|- rd : x28<br>                                                        |[0x800004ce]:c.lui t3, 16<br> [0x800004d0]:sd t3, 8(ra)<br>    |
