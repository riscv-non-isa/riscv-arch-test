
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000470')]      |
| SIG_REGION                | [('0x80002010', '0x80002120', '34 dwords')]      |
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
      [0x80000460]:c.li a0, 21
      [0x80000462]:sd a0, 24(ra)
 -- Signature Address: 0x80002110 Data: 0x0000000000000015
 -- Redundant Coverpoints hit by the op
      - opcode : c.li
      - rd : x10
      - imm_val == 21






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

|s.no|            signature             |                                     coverpoints                                     |                              code                              |
|---:|----------------------------------|-------------------------------------------------------------------------------------|----------------------------------------------------------------|
|   1|[0x80002010]<br>0xFFFFFFFFFFFFFFE0|- opcode : c.li<br> - rd : x27<br> - imm_val == (-2**(6-1))<br> - imm_val == -32<br> |[0x80000398]:c.li s11, 32<br> [0x8000039a]:sd s11, 0(s4)<br>    |
|   2|[0x80002018]<br>0x0000000000000000|- rd : x2<br> - imm_val == 0<br>                                                     |[0x8000039e]:c.li sp, 0<br> [0x800003a0]:sd sp, 8(s4)<br>       |
|   3|[0x80002020]<br>0x000000000000001F|- rd : x19<br> - imm_val == (2**(6-1)-1)<br> - imm_val == 31<br>                     |[0x800003a4]:c.li s3, 31<br> [0x800003a6]:sd s3, 16(s4)<br>     |
|   4|[0x80002028]<br>0x0000000000000001|- rd : x23<br> - imm_val == 1<br>                                                    |[0x800003aa]:c.li s7, 1<br> [0x800003ac]:sd s7, 24(s4)<br>      |
|   5|[0x80002030]<br>0x0000000000000002|- rd : x5<br> - imm_val == 2<br>                                                     |[0x800003b0]:c.li t0, 2<br> [0x800003b2]:sd t0, 32(s4)<br>      |
|   6|[0x80002038]<br>0x0000000000000004|- rd : x15<br> - imm_val == 4<br>                                                    |[0x800003b6]:c.li a5, 4<br> [0x800003b8]:sd a5, 40(s4)<br>      |
|   7|[0x80002040]<br>0x0000000000000008|- rd : x4<br> - imm_val == 8<br>                                                     |[0x800003bc]:c.li tp, 8<br> [0x800003be]:sd tp, 48(s4)<br>      |
|   8|[0x80002048]<br>0x0000000000000010|- rd : x11<br> - imm_val == 16<br>                                                   |[0x800003c2]:c.li a1, 16<br> [0x800003c4]:sd a1, 56(s4)<br>     |
|   9|[0x80002050]<br>0xFFFFFFFFFFFFFFEA|- rd : x6<br> - imm_val == -22<br>                                                   |[0x800003c8]:c.li t1, 42<br> [0x800003ca]:sd t1, 64(s4)<br>     |
|  10|[0x80002058]<br>0xFFFFFFFFFFFFFFFE|- rd : x1<br> - imm_val == -2<br>                                                    |[0x800003ce]:c.li ra, 62<br> [0x800003d0]:sd ra, 72(s4)<br>     |
|  11|[0x80002060]<br>0xFFFFFFFFFFFFFFFD|- rd : x14<br> - imm_val == -3<br>                                                   |[0x800003d4]:c.li a4, 61<br> [0x800003d6]:sd a4, 80(s4)<br>     |
|  12|[0x80002068]<br>0xFFFFFFFFFFFFFFFB|- rd : x22<br> - imm_val == -5<br>                                                   |[0x800003da]:c.li s6, 59<br> [0x800003dc]:sd s6, 88(s4)<br>     |
|  13|[0x80002070]<br>0xFFFFFFFFFFFFFFF7|- rd : x10<br> - imm_val == -9<br>                                                   |[0x800003e0]:c.li a0, 55<br> [0x800003e2]:sd a0, 96(s4)<br>     |
|  14|[0x80002078]<br>0xFFFFFFFFFFFFFFEF|- rd : x3<br> - imm_val == -17<br>                                                   |[0x800003e6]:c.li gp, 47<br> [0x800003e8]:sd gp, 104(s4)<br>    |
|  15|[0x80002080]<br>0x0000000000000000|- rd : x0<br> - imm_val == 21<br>                                                    |[0x800003ec]:c.li.hint.21<br> [0x800003ee]:sd zero, 112(s4)<br> |
|  16|[0x80002088]<br>0x0000000000000000|- rd : x25<br>                                                                       |[0x800003f2]:c.li s9, 0<br> [0x800003f4]:sd s9, 120(s4)<br>     |
|  17|[0x80002090]<br>0x0000000000000000|- rd : x17<br>                                                                       |[0x800003f8]:c.li a7, 0<br> [0x800003fa]:sd a7, 128(s4)<br>     |
|  18|[0x80002098]<br>0x0000000000000000|- rd : x8<br>                                                                        |[0x800003fe]:c.li fp, 0<br> [0x80000400]:sd fp, 136(s4)<br>     |
|  19|[0x800020a0]<br>0x0000000000000000|- rd : x18<br>                                                                       |[0x80000404]:c.li s2, 0<br> [0x80000406]:sd s2, 144(s4)<br>     |
|  20|[0x800020a8]<br>0x0000000000000000|- rd : x29<br>                                                                       |[0x8000040a]:c.li t4, 0<br> [0x8000040c]:sd t4, 152(s4)<br>     |
|  21|[0x800020b0]<br>0x0000000000000000|- rd : x16<br>                                                                       |[0x80000410]:c.li a6, 0<br> [0x80000412]:sd a6, 160(s4)<br>     |
|  22|[0x800020b8]<br>0x0000000000000000|- rd : x7<br>                                                                        |[0x80000416]:c.li t2, 0<br> [0x80000418]:sd t2, 168(s4)<br>     |
|  23|[0x800020c0]<br>0x0000000000000000|- rd : x21<br>                                                                       |[0x8000041c]:c.li s5, 0<br> [0x8000041e]:sd s5, 176(s4)<br>     |
|  24|[0x800020c8]<br>0x0000000000000000|- rd : x13<br>                                                                       |[0x80000422]:c.li a3, 0<br> [0x80000424]:sd a3, 184(s4)<br>     |
|  25|[0x800020d0]<br>0x0000000000000000|- rd : x28<br>                                                                       |[0x80000428]:c.li t3, 0<br> [0x8000042a]:sd t3, 192(s4)<br>     |
|  26|[0x800020d8]<br>0x0000000000000000|- rd : x26<br>                                                                       |[0x8000042e]:c.li s10, 0<br> [0x80000430]:sd s10, 200(s4)<br>   |
|  27|[0x800020e0]<br>0x0000000000000000|- rd : x31<br>                                                                       |[0x80000434]:c.li t6, 0<br> [0x80000436]:sd t6, 208(s4)<br>     |
|  28|[0x800020e8]<br>0x0000000000000000|- rd : x12<br>                                                                       |[0x8000043a]:c.li a2, 0<br> [0x8000043c]:sd a2, 216(s4)<br>     |
|  29|[0x800020f0]<br>0x0000000000000000|- rd : x9<br>                                                                        |[0x80000440]:c.li s1, 0<br> [0x80000442]:sd s1, 224(s4)<br>     |
|  30|[0x800020f8]<br>0x0000000000000000|- rd : x24<br>                                                                       |[0x8000044e]:c.li s8, 0<br> [0x80000450]:sd s8, 0(ra)<br>       |
|  31|[0x80002100]<br>0x0000000000000000|- rd : x20<br>                                                                       |[0x80000454]:c.li s4, 0<br> [0x80000456]:sd s4, 8(ra)<br>       |
|  32|[0x80002108]<br>0x0000000000000000|- rd : x30<br>                                                                       |[0x8000045a]:c.li t5, 0<br> [0x8000045c]:sd t5, 16(ra)<br>      |
