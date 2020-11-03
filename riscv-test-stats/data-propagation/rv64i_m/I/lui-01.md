
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000510')]      |
| SIG_REGION                | [('0x80003204', '0x80003378', '46 dwords')]      |
| COV_LABELS                | lui      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/lui-01.S/lui-01.S    |
| Total Number of coverpoints| 78     |
| Total Signature Updates   | 45      |
| Total Coverpoints Covered | 78      |
| STAT1                     | 44      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000500]:lui a0, 4096
      [0x80000504]:sd a0, 120(ra)
 -- Signature Address: 0x80003370 Data: 0x0000000001000000
 -- Redundant Coverpoints hit by the op
      - opcode : lui
      - rd : x10
      - imm_val > 0
      - imm_val == 4096






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

|s.no|            signature             |                     coverpoints                      |                               code                                |
|---:|----------------------------------|------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000000000000|- opcode : lui<br> - rd : x30<br> - imm_val == 0<br>  |[0x80000398]:lui t5, 0<br> [0x8000039c]:sd t5, 0(t1)<br>           |
|   2|[0x80003218]<br>0x0000000000100000|- rd : x24<br> - imm_val > 0<br> - imm_val == 256<br> |[0x800003a0]:lui s8, 256<br> [0x800003a4]:sd s8, 8(t1)<br>         |
|   3|[0x80003220]<br>0xFFFFFFFFFFFFF000|- rd : x5<br> - imm_val == ((2**20)-1)<br>            |[0x800003a8]:lui t0, 1048575<br> [0x800003ac]:sd t0, 16(t1)<br>    |
|   4|[0x80003228]<br>0x0000000000001000|- rd : x12<br> - imm_val == 1<br>                     |[0x800003b0]:lui a2, 1<br> [0x800003b4]:sd a2, 24(t1)<br>          |
|   5|[0x80003230]<br>0x0000000000002000|- rd : x29<br> - imm_val == 2<br>                     |[0x800003b8]:lui t4, 2<br> [0x800003bc]:sd t4, 32(t1)<br>          |
|   6|[0x80003238]<br>0x0000000000004000|- rd : x1<br> - imm_val == 4<br>                      |[0x800003c0]:lui ra, 4<br> [0x800003c4]:sd ra, 40(t1)<br>          |
|   7|[0x80003240]<br>0x0000000000008000|- rd : x28<br> - imm_val == 8<br>                     |[0x800003c8]:lui t3, 8<br> [0x800003cc]:sd t3, 48(t1)<br>          |
|   8|[0x80003248]<br>0x0000000000010000|- rd : x9<br> - imm_val == 16<br>                     |[0x800003d0]:lui s1, 16<br> [0x800003d4]:sd s1, 56(t1)<br>         |
|   9|[0x80003250]<br>0x0000000000020000|- rd : x27<br> - imm_val == 32<br>                    |[0x800003d8]:lui s11, 32<br> [0x800003dc]:sd s11, 64(t1)<br>       |
|  10|[0x80003258]<br>0x0000000000040000|- rd : x23<br> - imm_val == 64<br>                    |[0x800003e0]:lui s7, 64<br> [0x800003e4]:sd s7, 72(t1)<br>         |
|  11|[0x80003260]<br>0x0000000000080000|- rd : x7<br> - imm_val == 128<br>                    |[0x800003e8]:lui t2, 128<br> [0x800003ec]:sd t2, 80(t1)<br>        |
|  12|[0x80003268]<br>0x0000000000200000|- rd : x22<br> - imm_val == 512<br>                   |[0x800003f0]:lui s6, 512<br> [0x800003f4]:sd s6, 88(t1)<br>        |
|  13|[0x80003270]<br>0x0000000000400000|- rd : x2<br> - imm_val == 1024<br>                   |[0x800003f8]:lui sp, 1024<br> [0x800003fc]:sd sp, 96(t1)<br>       |
|  14|[0x80003278]<br>0x0000000000800000|- rd : x21<br> - imm_val == 2048<br>                  |[0x80000400]:lui s5, 2048<br> [0x80000404]:sd s5, 104(t1)<br>      |
|  15|[0x80003280]<br>0x0000000000000000|- rd : x0<br> - imm_val == 4096<br>                   |[0x80000408]:lui zero, 4096<br> [0x8000040c]:sd zero, 112(t1)<br>  |
|  16|[0x80003288]<br>0x0000000002000000|- rd : x20<br> - imm_val == 8192<br>                  |[0x80000410]:lui s4, 8192<br> [0x80000414]:sd s4, 120(t1)<br>      |
|  17|[0x80003290]<br>0x0000000004000000|- rd : x15<br> - imm_val == 16384<br>                 |[0x80000418]:lui a5, 16384<br> [0x8000041c]:sd a5, 128(t1)<br>     |
|  18|[0x80003298]<br>0x0000000008000000|- rd : x14<br> - imm_val == 32768<br>                 |[0x80000420]:lui a4, 32768<br> [0x80000424]:sd a4, 136(t1)<br>     |
|  19|[0x800032a0]<br>0x0000000010000000|- rd : x8<br> - imm_val == 65536<br>                  |[0x80000428]:lui fp, 65536<br> [0x8000042c]:sd fp, 144(t1)<br>     |
|  20|[0x800032a8]<br>0x0000000020000000|- rd : x11<br> - imm_val == 131072<br>                |[0x80000430]:lui a1, 131072<br> [0x80000434]:sd a1, 152(t1)<br>    |
|  21|[0x800032b0]<br>0x0000000040000000|- rd : x13<br> - imm_val == 262144<br>                |[0x80000438]:lui a3, 262144<br> [0x8000043c]:sd a3, 160(t1)<br>    |
|  22|[0x800032b8]<br>0xFFFFFFFF80000000|- rd : x18<br> - imm_val == 524288<br>                |[0x80000440]:lui s2, 524288<br> [0x80000444]:sd s2, 168(t1)<br>    |
|  23|[0x800032c0]<br>0xFFFFFFFFFFFFE000|- rd : x31<br> - imm_val == 1048574<br>               |[0x80000448]:lui t6, 1048574<br> [0x8000044c]:sd t6, 176(t1)<br>   |
|  24|[0x800032c8]<br>0xFFFFFFFFFFFFD000|- rd : x4<br> - imm_val == 1048573<br>                |[0x80000450]:lui tp, 1048573<br> [0x80000454]:sd tp, 184(t1)<br>   |
|  25|[0x800032d0]<br>0xFFFFFFFFFFFFB000|- rd : x19<br> - imm_val == 1048571<br>               |[0x80000458]:lui s3, 1048571<br> [0x8000045c]:sd s3, 192(t1)<br>   |
|  26|[0x800032d8]<br>0xFFFFFFFFFFFF7000|- rd : x10<br> - imm_val == 1048567<br>               |[0x80000460]:lui a0, 1048567<br> [0x80000464]:sd a0, 200(t1)<br>   |
|  27|[0x800032e0]<br>0xFFFFFFFFFFFEF000|- rd : x25<br> - imm_val == 1048559<br>               |[0x80000468]:lui s9, 1048559<br> [0x8000046c]:sd s9, 208(t1)<br>   |
|  28|[0x800032e8]<br>0xFFFFFFFFFFFDF000|- rd : x3<br> - imm_val == 1048543<br>                |[0x80000470]:lui gp, 1048543<br> [0x80000474]:sd gp, 216(t1)<br>   |
|  29|[0x800032f0]<br>0xFFFFFFFFFFFBF000|- rd : x26<br> - imm_val == 1048511<br>               |[0x80000478]:lui s10, 1048511<br> [0x8000047c]:sd s10, 224(t1)<br> |
|  30|[0x800032f8]<br>0xFFFFFFFFFFDFF000|- rd : x6<br> - imm_val == 1048063<br>                |[0x80000488]:lui t1, 1048063<br> [0x8000048c]:sd t1, 0(ra)<br>     |
|  31|[0x80003300]<br>0xFFFFFFFFFFBFF000|- rd : x17<br> - imm_val == 1047551<br>               |[0x80000490]:lui a7, 1047551<br> [0x80000494]:sd a7, 8(ra)<br>     |
|  32|[0x80003308]<br>0xFFFFFFFFFF7FF000|- rd : x16<br> - imm_val == 1046527<br>               |[0x80000498]:lui a6, 1046527<br> [0x8000049c]:sd a6, 16(ra)<br>    |
|  33|[0x80003310]<br>0xFFFFFFFFFEFFF000|- imm_val == 1044479<br>                              |[0x800004a0]:lui a0, 1044479<br> [0x800004a4]:sd a0, 24(ra)<br>    |
|  34|[0x80003318]<br>0xFFFFFFFFFDFFF000|- imm_val == 1040383<br>                              |[0x800004a8]:lui a0, 1040383<br> [0x800004ac]:sd a0, 32(ra)<br>    |
|  35|[0x80003320]<br>0xFFFFFFFFFBFFF000|- imm_val == 1032191<br>                              |[0x800004b0]:lui a0, 1032191<br> [0x800004b4]:sd a0, 40(ra)<br>    |
|  36|[0x80003328]<br>0xFFFFFFFFF7FFF000|- imm_val == 1015807<br>                              |[0x800004b8]:lui a0, 1015807<br> [0x800004bc]:sd a0, 48(ra)<br>    |
|  37|[0x80003330]<br>0xFFFFFFFFEFFFF000|- imm_val == 983039<br>                               |[0x800004c0]:lui a0, 983039<br> [0x800004c4]:sd a0, 56(ra)<br>     |
|  38|[0x80003338]<br>0xFFFFFFFFDFFFF000|- imm_val == 917503<br>                               |[0x800004c8]:lui a0, 917503<br> [0x800004cc]:sd a0, 64(ra)<br>     |
|  39|[0x80003340]<br>0xFFFFFFFFBFFFF000|- imm_val == 786431<br>                               |[0x800004d0]:lui a0, 786431<br> [0x800004d4]:sd a0, 72(ra)<br>     |
|  40|[0x80003348]<br>0x000000007FFFF000|- imm_val == 524287<br>                               |[0x800004d8]:lui a0, 524287<br> [0x800004dc]:sd a0, 80(ra)<br>     |
|  41|[0x80003350]<br>0x0000000055555000|- imm_val == 349525<br>                               |[0x800004e0]:lui a0, 349525<br> [0x800004e4]:sd a0, 88(ra)<br>     |
|  42|[0x80003358]<br>0xFFFFFFFFAAAAA000|- imm_val == 699050<br>                               |[0x800004e8]:lui a0, 699050<br> [0x800004ec]:sd a0, 96(ra)<br>     |
|  43|[0x80003360]<br>0xFFFFFFFFFFF7F000|- imm_val == 1048447<br>                              |[0x800004f0]:lui a0, 1048447<br> [0x800004f4]:sd a0, 104(ra)<br>   |
|  44|[0x80003368]<br>0xFFFFFFFFFFEFF000|- imm_val == 1048319<br>                              |[0x800004f8]:lui a0, 1048319<br> [0x800004fc]:sd a0, 112(ra)<br>   |
