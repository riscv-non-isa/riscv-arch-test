
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800004d0')]      |
| SIG_REGION                | [('0x80002010', '0x80002110', '32 dwords')]      |
| COV_LABELS                | clui      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/clui-01.S/clui-01.S    |
| Total Number of coverpoints| 50     |
| Total Coverpoints Hit     | 50      |
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

|s.no|            signature             |                                        coverpoints                                        |                             code                              |
|---:|----------------------------------|-------------------------------------------------------------------------------------------|---------------------------------------------------------------|
|   1|[0x80002010]<br>0xFFFFFFFFFFFEF000|- opcode : c.lui<br> - rd : x12<br> - rs1_val > 0 and imm_val > 32<br> - imm_val == 47<br> |[0x800003a0]:c.lui a2, 47<br> [0x800003a2]:c.sdsp a2, 0<br>    |
|   2|[0x80002018]<br>0x000000000001F000|- rd : x27<br> - rs1_val > 0 and imm_val < 32 and imm_val !=0 <br> - imm_val == 31<br>     |[0x800003ac]:c.lui s11, 31<br> [0x800003ae]:c.sdsp s11, 1<br>  |
|   3|[0x80002020]<br>0xFFFFFFFFFFFF7000|- rd : x14<br> - rs1_val < 0 and imm_val > 32<br> - imm_val == 55<br>                      |[0x800003b4]:c.lui a4, 55<br> [0x800003b6]:c.sdsp a4, 2<br>    |
|   4|[0x80002028]<br>0x0000000000011000|- rd : x23<br> - rs1_val < 0 and imm_val < 32 and imm_val !=0 <br>                         |[0x800003bc]:c.lui s7, 17<br> [0x800003be]:c.sdsp s7, 3<br>    |
|   5|[0x80002030]<br>0x0000000000001000|- rd : x3<br> - imm_val == 1<br>                                                           |[0x800003c8]:c.lui gp, 1<br> [0x800003ca]:c.sdsp gp, 4<br>     |
|   6|[0x80002038]<br>0x0000000000002000|- rd : x5<br> - imm_val == 2<br>                                                           |[0x800003d4]:c.lui t0, 2<br> [0x800003d6]:c.sdsp t0, 5<br>     |
|   7|[0x80002040]<br>0x0000000000004000|- rd : x1<br> - imm_val == 4<br>                                                           |[0x800003dc]:c.lui ra, 4<br> [0x800003de]:c.sdsp ra, 6<br>     |
|   8|[0x80002048]<br>0x0000000000008000|- rd : x17<br> - imm_val == 8<br>                                                          |[0x800003e8]:c.lui a7, 8<br> [0x800003ea]:c.sdsp a7, 7<br>     |
|   9|[0x80002050]<br>0x0000000000015000|- rd : x24<br> - imm_val == 21<br>                                                         |[0x800003f8]:c.lui s8, 21<br> [0x800003fa]:c.sdsp s8, 8<br>    |
|  10|[0x80002058]<br>0xFFFFFFFFFFFEA000|- rd : x10<br> - imm_val == 42<br>                                                         |[0x80000404]:c.lui a0, 42<br> [0x80000406]:c.sdsp a0, 9<br>    |
|  11|[0x80002060]<br>0x0000000000010000|- rd : x30<br> - imm_val == 16<br>                                                         |[0x80000410]:c.lui t5, 16<br> [0x80000412]:c.sdsp t5, 10<br>   |
|  12|[0x80002068]<br>0xFFFFFFFFFFFE0000|- rd : x21<br> - imm_val == 32<br>                                                         |[0x8000041c]:c.lui s5, 32<br> [0x8000041e]:c.sdsp s5, 11<br>   |
|  13|[0x80002070]<br>0xFFFFFFFFFFFFE000|- rd : x9<br> - imm_val == 62<br>                                                          |[0x80000428]:c.lui s1, 62<br> [0x8000042a]:c.sdsp s1, 12<br>   |
|  14|[0x80002078]<br>0xFFFFFFFFFFFFD000|- rd : x16<br> - imm_val == 61<br>                                                         |[0x80000434]:c.lui a6, 61<br> [0x80000436]:c.sdsp a6, 13<br>   |
|  15|[0x80002080]<br>0xFFFFFFFFFFFFB000|- rd : x19<br> - imm_val == 59<br>                                                         |[0x80000440]:c.lui s3, 59<br> [0x80000442]:c.sdsp s3, 14<br>   |
|  16|[0x80002088]<br>0x0000000000001000|- rd : x18<br>                                                                             |[0x80000448]:c.lui s2, 1<br> [0x8000044a]:c.sdsp s2, 15<br>    |
|  17|[0x80002090]<br>0x0000000000001000|- rd : x13<br>                                                                             |[0x80000450]:c.lui a3, 1<br> [0x80000452]:c.sdsp a3, 16<br>    |
|  18|[0x80002098]<br>0x0000000000001000|- rd : x31<br>                                                                             |[0x80000458]:c.lui t6, 1<br> [0x8000045a]:c.sdsp t6, 17<br>    |
|  19|[0x800020a0]<br>0x0000000000000000|- rd : x0<br>                                                                              |[0x80000460]:c.lui.hint.1<br> [0x80000462]:c.sdsp zero, 18<br> |
|  20|[0x800020a8]<br>0x0000000000001000|- rd : x8<br>                                                                              |[0x80000468]:c.lui fp, 1<br> [0x8000046a]:c.sdsp fp, 19<br>    |
|  21|[0x800020b0]<br>0x0000000000001000|- rd : x25<br>                                                                             |[0x80000470]:c.lui s9, 1<br> [0x80000472]:c.sdsp s9, 20<br>    |
|  22|[0x800020b8]<br>0x0000000000001000|- rd : x26<br>                                                                             |[0x80000478]:c.lui s10, 1<br> [0x8000047a]:c.sdsp s10, 21<br>  |
|  23|[0x800020c0]<br>0x0000000000001000|- rd : x7<br>                                                                              |[0x80000480]:c.lui t2, 1<br> [0x80000482]:c.sdsp t2, 22<br>    |
|  24|[0x800020c8]<br>0x0000000000001000|- rd : x11<br>                                                                             |[0x80000488]:c.lui a1, 1<br> [0x8000048a]:c.sdsp a1, 23<br>    |
|  25|[0x800020d0]<br>0x0000000000001000|- rd : x6<br>                                                                              |[0x80000490]:c.lui t1, 1<br> [0x80000492]:c.sdsp t1, 24<br>    |
|  26|[0x800020d8]<br>0x0000000000001000|- rd : x4<br>                                                                              |[0x80000498]:c.lui tp, 1<br> [0x8000049a]:c.sdsp tp, 25<br>    |
|  27|[0x800020e0]<br>0x0000000000001000|- rd : x20<br>                                                                             |[0x800004a0]:c.lui s4, 1<br> [0x800004a2]:c.sdsp s4, 26<br>    |
|  28|[0x800020e8]<br>0x0000000000001000|- rd : x22<br>                                                                             |[0x800004a8]:c.lui s6, 1<br> [0x800004aa]:c.sdsp s6, 27<br>    |
|  29|[0x800020f0]<br>0x0000000000001000|- rd : x29<br>                                                                             |[0x800004b0]:c.lui t4, 1<br> [0x800004b2]:c.sdsp t4, 28<br>    |
|  30|[0x800020f8]<br>0x0000000000001000|- rd : x15<br>                                                                             |[0x800004c0]:c.lui a5, 1<br> [0x800004c2]:sd a5, 0(ra)<br>     |
|  31|[0x80002100]<br>0x0000000000001000|- rd : x28<br>                                                                             |[0x800004ca]:c.lui t3, 1<br> [0x800004cc]:sd t3, 8(ra)<br>     |
