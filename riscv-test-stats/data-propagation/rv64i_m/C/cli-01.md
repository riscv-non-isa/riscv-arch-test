
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
| SIG_REGION                | [('0x80002208', '0x80002310', '33 dwords')]      |
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
      [0x80000460]:c.li a0, 1
      [0x80000462]:sd a0, 24(gp)
 -- Signature Address: 0x80002308 Data: 0x0000000000000001
 -- Redundant Coverpoints hit by the op
      - opcode : c.li
      - rd : x10
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

|s.no|            signature             |                                    coverpoints                                     |                             code                              |
|---:|----------------------------------|------------------------------------------------------------------------------------|---------------------------------------------------------------|
|   1|[0x80002208]<br>0xFFFFFFFFFFFFFFE0|- opcode : c.li<br> - rd : x4<br> - imm_val == (-2**(6-1))<br> - imm_val == -32<br> |[0x80000398]:c.li tp, 32<br> [0x8000039a]:sd tp, 0(ra)<br>     |
|   2|[0x80002210]<br>0x0000000000000000|- rd : x21<br> - imm_val == 0<br>                                                   |[0x8000039e]:c.li s5, 0<br> [0x800003a0]:sd s5, 8(ra)<br>      |
|   3|[0x80002218]<br>0x000000000000001F|- rd : x25<br> - imm_val == (2**(6-1)-1)<br> - imm_val == 31<br>                    |[0x800003a4]:c.li s9, 31<br> [0x800003a6]:sd s9, 16(ra)<br>    |
|   4|[0x80002220]<br>0x0000000000000000|- rd : x0<br> - imm_val == 1<br>                                                    |[0x800003aa]:c.li.hint.1<br> [0x800003ac]:sd zero, 24(ra)<br>  |
|   5|[0x80002228]<br>0x0000000000000002|- rd : x22<br> - imm_val == 2<br>                                                   |[0x800003b0]:c.li s6, 2<br> [0x800003b2]:sd s6, 32(ra)<br>     |
|   6|[0x80002230]<br>0x0000000000000004|- rd : x14<br> - imm_val == 4<br>                                                   |[0x800003b6]:c.li a4, 4<br> [0x800003b8]:sd a4, 40(ra)<br>     |
|   7|[0x80002238]<br>0x0000000000000008|- rd : x30<br> - imm_val == 8<br>                                                   |[0x800003bc]:c.li t5, 8<br> [0x800003be]:sd t5, 48(ra)<br>     |
|   8|[0x80002240]<br>0x0000000000000010|- rd : x20<br> - imm_val == 16<br>                                                  |[0x800003c2]:c.li s4, 16<br> [0x800003c4]:sd s4, 56(ra)<br>    |
|   9|[0x80002248]<br>0xFFFFFFFFFFFFFFEA|- rd : x23<br> - imm_val == -22<br>                                                 |[0x800003c8]:c.li s7, 42<br> [0x800003ca]:sd s7, 64(ra)<br>    |
|  10|[0x80002250]<br>0xFFFFFFFFFFFFFFFE|- rd : x16<br> - imm_val == -2<br>                                                  |[0x800003ce]:c.li a6, 62<br> [0x800003d0]:sd a6, 72(ra)<br>    |
|  11|[0x80002258]<br>0xFFFFFFFFFFFFFFFD|- rd : x28<br> - imm_val == -3<br>                                                  |[0x800003d4]:c.li t3, 61<br> [0x800003d6]:sd t3, 80(ra)<br>    |
|  12|[0x80002260]<br>0xFFFFFFFFFFFFFFFB|- rd : x17<br> - imm_val == -5<br>                                                  |[0x800003da]:c.li a7, 59<br> [0x800003dc]:sd a7, 88(ra)<br>    |
|  13|[0x80002268]<br>0xFFFFFFFFFFFFFFF7|- rd : x12<br> - imm_val == -9<br>                                                  |[0x800003e0]:c.li a2, 55<br> [0x800003e2]:sd a2, 96(ra)<br>    |
|  14|[0x80002270]<br>0xFFFFFFFFFFFFFFEF|- rd : x29<br> - imm_val == -17<br>                                                 |[0x800003e6]:c.li t4, 47<br> [0x800003e8]:sd t4, 104(ra)<br>   |
|  15|[0x80002278]<br>0x0000000000000015|- rd : x27<br> - imm_val == 21<br>                                                  |[0x800003ec]:c.li s11, 21<br> [0x800003ee]:sd s11, 112(ra)<br> |
|  16|[0x80002280]<br>0x0000000000000000|- rd : x18<br>                                                                      |[0x800003f2]:c.li s2, 0<br> [0x800003f4]:sd s2, 120(ra)<br>    |
|  17|[0x80002288]<br>0x0000000000000000|- rd : x19<br>                                                                      |[0x800003f8]:c.li s3, 0<br> [0x800003fa]:sd s3, 128(ra)<br>    |
|  18|[0x80002290]<br>0x0000000000000000|- rd : x9<br>                                                                       |[0x800003fe]:c.li s1, 0<br> [0x80000400]:sd s1, 136(ra)<br>    |
|  19|[0x80002298]<br>0x0000000000000000|- rd : x24<br>                                                                      |[0x80000404]:c.li s8, 0<br> [0x80000406]:sd s8, 144(ra)<br>    |
|  20|[0x800022a0]<br>0x0000000000000000|- rd : x5<br>                                                                       |[0x8000040a]:c.li t0, 0<br> [0x8000040c]:sd t0, 152(ra)<br>    |
|  21|[0x800022a8]<br>0x0000000000000000|- rd : x31<br>                                                                      |[0x80000410]:c.li t6, 0<br> [0x80000412]:sd t6, 160(ra)<br>    |
|  22|[0x800022b0]<br>0x0000000000000000|- rd : x15<br>                                                                      |[0x80000416]:c.li a5, 0<br> [0x80000418]:sd a5, 168(ra)<br>    |
|  23|[0x800022b8]<br>0x0000000000000000|- rd : x11<br>                                                                      |[0x8000041c]:c.li a1, 0<br> [0x8000041e]:sd a1, 176(ra)<br>    |
|  24|[0x800022c0]<br>0x0000000000000000|- rd : x3<br>                                                                       |[0x80000422]:c.li gp, 0<br> [0x80000424]:sd gp, 184(ra)<br>    |
|  25|[0x800022c8]<br>0x0000000000000000|- rd : x13<br>                                                                      |[0x80000428]:c.li a3, 0<br> [0x8000042a]:sd a3, 192(ra)<br>    |
|  26|[0x800022d0]<br>0x0000000000000000|- rd : x6<br>                                                                       |[0x8000042e]:c.li t1, 0<br> [0x80000430]:sd t1, 200(ra)<br>    |
|  27|[0x800022d8]<br>0x0000000000000000|- rd : x8<br>                                                                       |[0x80000434]:c.li fp, 0<br> [0x80000436]:sd fp, 208(ra)<br>    |
|  28|[0x800022e0]<br>0x0000000000000000|- rd : x26<br>                                                                      |[0x8000043a]:c.li s10, 0<br> [0x8000043c]:sd s10, 216(ra)<br>  |
|  29|[0x800022e8]<br>0x0000000000000000|- rd : x7<br>                                                                       |[0x80000440]:c.li t2, 0<br> [0x80000442]:sd t2, 224(ra)<br>    |
|  30|[0x800022f0]<br>0x0000000000000000|- rd : x1<br>                                                                       |[0x8000044e]:c.li ra, 0<br> [0x80000450]:sd ra, 0(gp)<br>      |
|  31|[0x800022f8]<br>0x0000000000000000|- rd : x10<br>                                                                      |[0x80000454]:c.li a0, 0<br> [0x80000456]:sd a0, 8(gp)<br>      |
|  32|[0x80002300]<br>0x0000000000000000|- rd : x2<br>                                                                       |[0x8000045a]:c.li sp, 0<br> [0x8000045c]:sd sp, 16(gp)<br>     |
