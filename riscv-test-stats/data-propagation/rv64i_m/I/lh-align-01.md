
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800006a0')]      |
| SIG_REGION                | [('0x80003204', '0x80003310', '33 dwords')]      |
| COV_LABELS                | lh-align      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/lh-align-01.S/lh-align-01.S    |
| Total Number of coverpoints| 77     |
| Total Signature Updates   | 32      |
| Total Coverpoints Covered | 77      |
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

|s.no|            signature             |                                                          coverpoints                                                          |                                                                    code                                                                    |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80003210]<br>0xFFFFFFFFFFFFCAFE|- opcode : lh<br> - rs1 : x21<br> - rd : x21<br> - rs1 == rd<br> - ea_align == 0 and (imm_val % 4) == 0<br> - imm_val == 0<br> |[0x800003a0]:lh s5, 0(s5)<br> [0x800003a4]:addi zero, zero, 0<br> [0x800003a8]:addi zero, zero, 0<br> [0x800003ac]:sd s5, 0(tp)<br>         |
|   2|[0x80003218]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x20<br> - rd : x6<br> - rs1 != rd<br> - ea_align == 0 and (imm_val % 4) == 1<br> - imm_val < 0<br>                     |[0x800003b8]:lh t1, 4093(s4)<br> [0x800003bc]:addi zero, zero, 0<br> [0x800003c0]:addi zero, zero, 0<br> [0x800003c4]:sd t1, 8(tp)<br>      |
|   3|[0x80003220]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x11<br> - rd : x26<br> - ea_align == 0 and (imm_val % 4) == 2<br>                                                      |[0x800003d0]:lh s10, 4090(a1)<br> [0x800003d4]:addi zero, zero, 0<br> [0x800003d8]:addi zero, zero, 0<br> [0x800003dc]:sd s10, 16(tp)<br>   |
|   4|[0x80003228]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x16<br> - rd : x1<br> - ea_align == 0 and (imm_val % 4) == 3<br> - imm_val > 0<br>                                     |[0x800003e8]:lh ra, 7(a6)<br> [0x800003ec]:addi zero, zero, 0<br> [0x800003f0]:addi zero, zero, 0<br> [0x800003f4]:sd ra, 24(tp)<br>        |
|   5|[0x80003230]<br>0xFFFFFFFFFFFFBABE|- rs1 : x25<br> - rd : x10<br> - ea_align == 2 and (imm_val % 4) == 0<br>                                                      |[0x80000400]:lh a0, 4088(s9)<br> [0x80000404]:addi zero, zero, 0<br> [0x80000408]:addi zero, zero, 0<br> [0x8000040c]:sd a0, 32(tp)<br>     |
|   6|[0x80003238]<br>0xFFFFFFFFFFFFBABE|- rs1 : x28<br> - rd : x24<br> - ea_align == 2 and (imm_val % 4) == 1<br>                                                      |[0x80000418]:lh s8, 1365(t3)<br> [0x8000041c]:addi zero, zero, 0<br> [0x80000420]:addi zero, zero, 0<br> [0x80000424]:sd s8, 40(tp)<br>     |
|   7|[0x80003240]<br>0xFFFFFFFFFFFFBABE|- rs1 : x9<br> - rd : x28<br> - ea_align == 2 and (imm_val % 4) == 2<br>                                                       |[0x80000430]:lh t3, 2730(s1)<br> [0x80000434]:addi zero, zero, 0<br> [0x80000438]:addi zero, zero, 0<br> [0x8000043c]:sd t3, 48(tp)<br>     |
|   8|[0x80003248]<br>0xFFFFFFFFFFFFBABE|- rs1 : x12<br> - rd : x13<br> - ea_align == 2 and (imm_val % 4) == 3<br>                                                      |[0x80000448]:lh a3, 3839(a2)<br> [0x8000044c]:addi zero, zero, 0<br> [0x80000450]:addi zero, zero, 0<br> [0x80000454]:sd a3, 56(tp)<br>     |
|   9|[0x80003250]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x22<br> - rd : x18<br>                                                                                                 |[0x80000460]:lh s2, 2048(s6)<br> [0x80000464]:addi zero, zero, 0<br> [0x80000468]:addi zero, zero, 0<br> [0x8000046c]:sd s2, 64(tp)<br>     |
|  10|[0x80003258]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x5<br> - rd : x31<br>                                                                                                  |[0x80000478]:lh t6, 2048(t0)<br> [0x8000047c]:addi zero, zero, 0<br> [0x80000480]:addi zero, zero, 0<br> [0x80000484]:sd t6, 72(tp)<br>     |
|  11|[0x80003260]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x2<br> - rd : x14<br>                                                                                                  |[0x80000490]:lh a4, 2048(sp)<br> [0x80000494]:addi zero, zero, 0<br> [0x80000498]:addi zero, zero, 0<br> [0x8000049c]:sd a4, 80(tp)<br>     |
|  12|[0x80003268]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x19<br> - rd : x3<br>                                                                                                  |[0x800004a8]:lh gp, 2048(s3)<br> [0x800004ac]:addi zero, zero, 0<br> [0x800004b0]:addi zero, zero, 0<br> [0x800004b4]:sd gp, 88(tp)<br>     |
|  13|[0x80003270]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x15<br> - rd : x12<br>                                                                                                 |[0x800004c0]:lh a2, 2048(a5)<br> [0x800004c4]:addi zero, zero, 0<br> [0x800004c8]:addi zero, zero, 0<br> [0x800004cc]:sd a2, 96(tp)<br>     |
|  14|[0x80003278]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x17<br> - rd : x2<br>                                                                                                  |[0x800004d8]:lh sp, 2048(a7)<br> [0x800004dc]:addi zero, zero, 0<br> [0x800004e0]:addi zero, zero, 0<br> [0x800004e4]:sd sp, 104(tp)<br>    |
|  15|[0x80003280]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x6<br> - rd : x30<br>                                                                                                  |[0x800004f0]:lh t5, 2048(t1)<br> [0x800004f4]:addi zero, zero, 0<br> [0x800004f8]:addi zero, zero, 0<br> [0x800004fc]:sd t5, 112(tp)<br>    |
|  16|[0x80003288]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x27<br> - rd : x19<br>                                                                                                 |[0x80000508]:lh s3, 2048(s11)<br> [0x8000050c]:addi zero, zero, 0<br> [0x80000510]:addi zero, zero, 0<br> [0x80000514]:sd s3, 120(tp)<br>   |
|  17|[0x80003290]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x1<br> - rd : x7<br>                                                                                                   |[0x80000520]:lh t2, 2048(ra)<br> [0x80000524]:addi zero, zero, 0<br> [0x80000528]:addi zero, zero, 0<br> [0x8000052c]:sd t2, 128(tp)<br>    |
|  18|[0x80003298]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x26<br> - rd : x11<br>                                                                                                 |[0x80000538]:lh a1, 2048(s10)<br> [0x8000053c]:addi zero, zero, 0<br> [0x80000540]:addi zero, zero, 0<br> [0x80000544]:sd a1, 136(tp)<br>   |
|  19|[0x800032a0]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x18<br> - rd : x8<br>                                                                                                  |[0x80000550]:lh fp, 2048(s2)<br> [0x80000554]:addi zero, zero, 0<br> [0x80000558]:addi zero, zero, 0<br> [0x8000055c]:sd fp, 144(tp)<br>    |
|  20|[0x800032a8]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x23<br> - rd : x25<br>                                                                                                 |[0x80000570]:lh s9, 2048(s7)<br> [0x80000574]:addi zero, zero, 0<br> [0x80000578]:addi zero, zero, 0<br> [0x8000057c]:sd s9, 0(ra)<br>      |
|  21|[0x800032b0]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x13<br> - rd : x15<br>                                                                                                 |[0x80000588]:lh a5, 2048(a3)<br> [0x8000058c]:addi zero, zero, 0<br> [0x80000590]:addi zero, zero, 0<br> [0x80000594]:sd a5, 8(ra)<br>      |
|  22|[0x800032b8]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x31<br> - rd : x29<br>                                                                                                 |[0x800005a0]:lh t4, 2048(t6)<br> [0x800005a4]:addi zero, zero, 0<br> [0x800005a8]:addi zero, zero, 0<br> [0x800005ac]:sd t4, 16(ra)<br>     |
|  23|[0x800032c0]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x14<br> - rd : x22<br>                                                                                                 |[0x800005b8]:lh s6, 2048(a4)<br> [0x800005bc]:addi zero, zero, 0<br> [0x800005c0]:addi zero, zero, 0<br> [0x800005c4]:sd s6, 24(ra)<br>     |
|  24|[0x800032c8]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x30<br> - rd : x17<br>                                                                                                 |[0x800005d0]:lh a7, 2048(t5)<br> [0x800005d4]:addi zero, zero, 0<br> [0x800005d8]:addi zero, zero, 0<br> [0x800005dc]:sd a7, 32(ra)<br>     |
|  25|[0x800032d0]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x29<br> - rd : x20<br>                                                                                                 |[0x800005e8]:lh s4, 2048(t4)<br> [0x800005ec]:addi zero, zero, 0<br> [0x800005f0]:addi zero, zero, 0<br> [0x800005f4]:sd s4, 40(ra)<br>     |
|  26|[0x800032d8]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x7<br> - rd : x16<br>                                                                                                  |[0x80000600]:lh a6, 2048(t2)<br> [0x80000604]:addi zero, zero, 0<br> [0x80000608]:addi zero, zero, 0<br> [0x8000060c]:sd a6, 48(ra)<br>     |
|  27|[0x800032e0]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x24<br> - rd : x23<br>                                                                                                 |[0x80000618]:lh s7, 2048(s8)<br> [0x8000061c]:addi zero, zero, 0<br> [0x80000620]:addi zero, zero, 0<br> [0x80000624]:sd s7, 56(ra)<br>     |
|  28|[0x800032e8]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x8<br> - rd : x5<br>                                                                                                   |[0x80000630]:lh t0, 2048(fp)<br> [0x80000634]:addi zero, zero, 0<br> [0x80000638]:addi zero, zero, 0<br> [0x8000063c]:sd t0, 64(ra)<br>     |
|  29|[0x800032f0]<br>0x0000000000000000|- rs1 : x4<br> - rd : x0<br>                                                                                                   |[0x80000648]:lh zero, 2048(tp)<br> [0x8000064c]:addi zero, zero, 0<br> [0x80000650]:addi zero, zero, 0<br> [0x80000654]:sd zero, 72(ra)<br> |
|  30|[0x800032f8]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x3<br> - rd : x9<br>                                                                                                   |[0x80000660]:lh s1, 2048(gp)<br> [0x80000664]:addi zero, zero, 0<br> [0x80000668]:addi zero, zero, 0<br> [0x8000066c]:sd s1, 80(ra)<br>     |
|  31|[0x80003300]<br>0xFFFFFFFFFFFFCAFE|- rs1 : x10<br> - rd : x27<br>                                                                                                 |[0x80000678]:lh s11, 2048(a0)<br> [0x8000067c]:addi zero, zero, 0<br> [0x80000680]:addi zero, zero, 0<br> [0x80000684]:sd s11, 88(ra)<br>   |
|  32|[0x80003308]<br>0xFFFFFFFFFFFFCAFE|- rd : x4<br>                                                                                                                  |[0x80000690]:lh tp, 2048(s3)<br> [0x80000694]:addi zero, zero, 0<br> [0x80000698]:addi zero, zero, 0<br> [0x8000069c]:sd tp, 96(ra)<br>     |
