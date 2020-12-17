
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
| SIG_REGION                | [('0x80002010', '0x80002110', '32 dwords')]      |
| COV_LABELS                | cli      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cli-01.S/cli-01.S    |
| Total Number of coverpoints| 50     |
| Total Coverpoints Hit     | 50      |
| Total Signature Updates   | 32      |
| STAT1                     | 32      |
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

|s.no|            signature             |                                     coverpoints                                     |                             code                              |
|---:|----------------------------------|-------------------------------------------------------------------------------------|---------------------------------------------------------------|
|   1|[0x80002010]<br>0xFFFFFFFFFFFFFFE0|- opcode : c.li<br> - rd : x15<br> - imm_val == (-2**(6-1))<br> - imm_val == -32<br> |[0x80000398]:c.li a5, 32<br> [0x8000039a]:c.sd a1, a5, 0<br>   |
|   2|[0x80002018]<br>0x0000000000000000|- rd : x14<br> - imm_val == 0<br>                                                    |[0x8000039c]:c.li a4, 0<br> [0x8000039e]:c.sd a1, a4, 8<br>    |
|   3|[0x80002020]<br>0x000000000000001F|- rd : x30<br> - imm_val == (2**(6-1)-1)<br> - imm_val == 31<br>                     |[0x800003a0]:c.li t5, 31<br> [0x800003a2]:sd t5, 16(a1)<br>    |
|   4|[0x80002028]<br>0x0000000000000001|- rd : x6<br> - imm_val == 1<br>                                                     |[0x800003a6]:c.li t1, 1<br> [0x800003a8]:sd t1, 24(a1)<br>     |
|   5|[0x80002030]<br>0x0000000000000002|- rd : x8<br> - imm_val == 2<br>                                                     |[0x800003ac]:c.li fp, 2<br> [0x800003ae]:c.sd a1, s0, 32<br>   |
|   6|[0x80002038]<br>0x0000000000000004|- rd : x3<br> - imm_val == 4<br>                                                     |[0x800003b0]:c.li gp, 4<br> [0x800003b2]:sd gp, 40(a1)<br>     |
|   7|[0x80002040]<br>0x0000000000000008|- rd : x22<br> - imm_val == 8<br>                                                    |[0x800003b6]:c.li s6, 8<br> [0x800003b8]:sd s6, 48(a1)<br>     |
|   8|[0x80002048]<br>0x0000000000000010|- rd : x9<br> - imm_val == 16<br>                                                    |[0x800003bc]:c.li s1, 16<br> [0x800003be]:c.sd a1, s1, 56<br>  |
|   9|[0x80002050]<br>0xFFFFFFFFFFFFFFEA|- rd : x10<br> - imm_val == -22<br>                                                  |[0x800003c0]:c.li a0, 42<br> [0x800003c2]:c.sd a1, a0, 64<br>  |
|  10|[0x80002058]<br>0xFFFFFFFFFFFFFFFE|- rd : x25<br> - imm_val == -2<br>                                                   |[0x800003c4]:c.li s9, 62<br> [0x800003c6]:sd s9, 72(a1)<br>    |
|  11|[0x80002060]<br>0xFFFFFFFFFFFFFFFD|- rd : x24<br> - imm_val == -3<br>                                                   |[0x800003ca]:c.li s8, 61<br> [0x800003cc]:sd s8, 80(a1)<br>    |
|  12|[0x80002068]<br>0xFFFFFFFFFFFFFFFB|- rd : x7<br> - imm_val == -5<br>                                                    |[0x800003d0]:c.li t2, 59<br> [0x800003d2]:sd t2, 88(a1)<br>    |
|  13|[0x80002070]<br>0xFFFFFFFFFFFFFFF7|- rd : x4<br> - imm_val == -9<br>                                                    |[0x800003d6]:c.li tp, 55<br> [0x800003d8]:sd tp, 96(a1)<br>    |
|  14|[0x80002078]<br>0xFFFFFFFFFFFFFFEF|- rd : x17<br> - imm_val == -17<br>                                                  |[0x800003dc]:c.li a7, 47<br> [0x800003de]:sd a7, 104(a1)<br>   |
|  15|[0x80002080]<br>0x0000000000000015|- rd : x27<br> - imm_val == 21<br>                                                   |[0x800003e2]:c.li s11, 21<br> [0x800003e4]:sd s11, 112(a1)<br> |
|  16|[0x80002088]<br>0x0000000000000000|- rd : x18<br>                                                                       |[0x800003e8]:c.li s2, 0<br> [0x800003ea]:sd s2, 120(a1)<br>    |
|  17|[0x80002090]<br>0x0000000000000000|- rd : x16<br>                                                                       |[0x800003ee]:c.li a6, 0<br> [0x800003f0]:sd a6, 128(a1)<br>    |
|  18|[0x80002098]<br>0x0000000000000000|- rd : x28<br>                                                                       |[0x800003f4]:c.li t3, 0<br> [0x800003f6]:sd t3, 136(a1)<br>    |
|  19|[0x800020a0]<br>0x0000000000000000|- rd : x5<br>                                                                        |[0x800003fa]:c.li t0, 0<br> [0x800003fc]:sd t0, 144(a1)<br>    |
|  20|[0x800020a8]<br>0x0000000000000000|- rd : x20<br>                                                                       |[0x80000400]:c.li s4, 0<br> [0x80000402]:sd s4, 152(a1)<br>    |
|  21|[0x800020b0]<br>0x0000000000000000|- rd : x21<br>                                                                       |[0x80000406]:c.li s5, 0<br> [0x80000408]:sd s5, 160(a1)<br>    |
|  22|[0x800020b8]<br>0x0000000000000000|- rd : x26<br>                                                                       |[0x8000040c]:c.li s10, 0<br> [0x8000040e]:sd s10, 168(a1)<br>  |
|  23|[0x800020c0]<br>0x0000000000000000|- rd : x2<br>                                                                        |[0x80000412]:c.li sp, 0<br> [0x80000414]:sd sp, 176(a1)<br>    |
|  24|[0x800020c8]<br>0x0000000000000000|- rd : x31<br>                                                                       |[0x80000418]:c.li t6, 0<br> [0x8000041a]:sd t6, 184(a1)<br>    |
|  25|[0x800020d0]<br>0x0000000000000000|- rd : x23<br>                                                                       |[0x8000041e]:c.li s7, 0<br> [0x80000420]:sd s7, 192(a1)<br>    |
|  26|[0x800020d8]<br>0x0000000000000000|- rd : x29<br>                                                                       |[0x80000424]:c.li t4, 0<br> [0x80000426]:sd t4, 200(a1)<br>    |
|  27|[0x800020e0]<br>0x0000000000000000|- rd : x19<br>                                                                       |[0x8000042a]:c.li s3, 0<br> [0x8000042c]:sd s3, 208(a1)<br>    |
|  28|[0x800020e8]<br>0x0000000000000000|- rd : x1<br>                                                                        |[0x80000430]:c.li ra, 0<br> [0x80000432]:sd ra, 216(a1)<br>    |
|  29|[0x800020f0]<br>0x0000000000000000|- rd : x0<br>                                                                        |[0x8000043e]:c.li.hint.0<br> [0x80000440]:sd zero, 0(ra)<br>   |
|  30|[0x800020f8]<br>0x0000000000000000|- rd : x11<br>                                                                       |[0x80000444]:c.li a1, 0<br> [0x80000446]:sd a1, 8(ra)<br>      |
|  31|[0x80002100]<br>0x0000000000000000|- rd : x12<br>                                                                       |[0x8000044a]:c.li a2, 0<br> [0x8000044c]:sd a2, 16(ra)<br>     |
|  32|[0x80002108]<br>0x0000000000000000|- rd : x13<br>                                                                       |[0x80000450]:c.li a3, 0<br> [0x80000452]:sd a3, 24(ra)<br>     |
