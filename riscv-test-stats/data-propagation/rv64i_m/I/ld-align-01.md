
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800006c0')]      |
| SIG_REGION                | [('0x80002010', '0x80002120', '34 dwords')]      |
| COV_LABELS                | ld-align      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/ld-align-01.S/ld-align-01.S    |
| Total Number of coverpoints| 77     |
| Total Coverpoints Hit     | 77      |
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
      [0x800006a8]:ld a1, 3071(a0)
      [0x800006ac]:addi zero, zero, 0
      [0x800006b0]:addi zero, zero, 0
      [0x800006b4]:sd a1, 88(ra)
 -- Signature Address: 0x80002110 Data: 0x00000000BABECAFE
 -- Redundant Coverpoints hit by the op
      - opcode : ld
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - ea_align == 0 and (imm_val % 8) == 7
      - imm_val < 0






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

|s.no|            signature             |                                                         coverpoints                                                          |                                                                    code                                                                     |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002010]<br>0x00000000BABECAFE|- opcode : ld<br> - rs1 : x12<br> - rd : x12<br> - rs1 == rd<br> - ea_align == 0 and (imm_val % 8) == 0<br> - imm_val > 0<br> |[0x800003a0]:ld a2, 512(a2)<br> [0x800003a4]:addi zero, zero, 0<br> [0x800003a8]:addi zero, zero, 0<br> [0x800003ac]:sd a2, 0(sp)<br>        |
|   2|[0x80002018]<br>0x00000000BABECAFE|- rs1 : x30<br> - rd : x15<br> - rs1 != rd<br> - ea_align == 0 and (imm_val % 8) == 1<br> - imm_val < 0<br>                   |[0x800003b8]:ld a5, 4089(t5)<br> [0x800003bc]:addi zero, zero, 0<br> [0x800003c0]:addi zero, zero, 0<br> [0x800003c4]:sd a5, 8(sp)<br>       |
|   3|[0x80002020]<br>0x00000000BABECAFE|- rs1 : x11<br> - rd : x31<br> - ea_align == 0 and (imm_val % 8) == 2<br>                                                     |[0x800003d0]:ld t6, 2(a1)<br> [0x800003d4]:addi zero, zero, 0<br> [0x800003d8]:addi zero, zero, 0<br> [0x800003dc]:sd t6, 16(sp)<br>         |
|   4|[0x80002028]<br>0x00000000BABECAFE|- rs1 : x14<br> - rd : x3<br> - ea_align == 0 and (imm_val % 8) == 3<br>                                                      |[0x800003e8]:ld gp, 4091(a4)<br> [0x800003ec]:addi zero, zero, 0<br> [0x800003f0]:addi zero, zero, 0<br> [0x800003f4]:sd gp, 24(sp)<br>      |
|   5|[0x80002030]<br>0x00000000BABECAFE|- rs1 : x3<br> - rd : x19<br> - ea_align == 0 and (imm_val % 8) == 4<br>                                                      |[0x80000400]:ld s3, 4(gp)<br> [0x80000404]:addi zero, zero, 0<br> [0x80000408]:addi zero, zero, 0<br> [0x8000040c]:sd s3, 32(sp)<br>         |
|   6|[0x80002038]<br>0x00000000BABECAFE|- rs1 : x7<br> - rd : x18<br> - imm_val == 0<br>                                                                              |[0x80000418]:ld s2, 0(t2)<br> [0x8000041c]:addi zero, zero, 0<br> [0x80000420]:addi zero, zero, 0<br> [0x80000424]:sd s2, 40(sp)<br>         |
|   7|[0x80002040]<br>0x00000000BABECAFE|- rs1 : x6<br> - rd : x1<br> - ea_align == 0 and (imm_val % 8) == 5<br>                                                       |[0x80000430]:ld ra, 5(t1)<br> [0x80000434]:addi zero, zero, 0<br> [0x80000438]:addi zero, zero, 0<br> [0x8000043c]:sd ra, 48(sp)<br>         |
|   8|[0x80002048]<br>0x00000000BABECAFE|- rs1 : x25<br> - rd : x21<br> - ea_align == 0 and (imm_val % 8) == 6<br>                                                     |[0x80000448]:ld s5, 4094(s9)<br> [0x8000044c]:addi zero, zero, 0<br> [0x80000450]:addi zero, zero, 0<br> [0x80000454]:sd s5, 56(sp)<br>      |
|   9|[0x80002050]<br>0x0000000000000000|- rs1 : x27<br> - rd : x0<br> - ea_align == 0 and (imm_val % 8) == 7<br>                                                      |[0x80000460]:ld zero, 3071(s11)<br> [0x80000464]:addi zero, zero, 0<br> [0x80000468]:addi zero, zero, 0<br> [0x8000046c]:sd zero, 64(sp)<br> |
|  10|[0x80002058]<br>0x00000000BABECAFE|- rs1 : x15<br> - rd : x5<br>                                                                                                 |[0x80000478]:ld t0, 2048(a5)<br> [0x8000047c]:addi zero, zero, 0<br> [0x80000480]:addi zero, zero, 0<br> [0x80000484]:sd t0, 72(sp)<br>      |
|  11|[0x80002060]<br>0x00000000BABECAFE|- rs1 : x16<br> - rd : x23<br>                                                                                                |[0x80000490]:ld s7, 2048(a6)<br> [0x80000494]:addi zero, zero, 0<br> [0x80000498]:addi zero, zero, 0<br> [0x8000049c]:sd s7, 80(sp)<br>      |
|  12|[0x80002068]<br>0x00000000BABECAFE|- rs1 : x5<br> - rd : x16<br>                                                                                                 |[0x800004a8]:ld a6, 2048(t0)<br> [0x800004ac]:addi zero, zero, 0<br> [0x800004b0]:addi zero, zero, 0<br> [0x800004b4]:sd a6, 88(sp)<br>      |
|  13|[0x80002070]<br>0x00000000BABECAFE|- rs1 : x4<br> - rd : x6<br>                                                                                                  |[0x800004c0]:ld t1, 2048(tp)<br> [0x800004c4]:addi zero, zero, 0<br> [0x800004c8]:addi zero, zero, 0<br> [0x800004cc]:sd t1, 96(sp)<br>      |
|  14|[0x80002078]<br>0x00000000BABECAFE|- rs1 : x1<br> - rd : x26<br>                                                                                                 |[0x800004d8]:ld s10, 2048(ra)<br> [0x800004dc]:addi zero, zero, 0<br> [0x800004e0]:addi zero, zero, 0<br> [0x800004e4]:sd s10, 104(sp)<br>   |
|  15|[0x80002080]<br>0x00000000BABECAFE|- rs1 : x28<br> - rd : x24<br>                                                                                                |[0x800004f0]:ld s8, 2048(t3)<br> [0x800004f4]:addi zero, zero, 0<br> [0x800004f8]:addi zero, zero, 0<br> [0x800004fc]:sd s8, 112(sp)<br>     |
|  16|[0x80002088]<br>0x00000000BABECAFE|- rs1 : x19<br> - rd : x8<br>                                                                                                 |[0x80000508]:ld fp, 2048(s3)<br> [0x8000050c]:addi zero, zero, 0<br> [0x80000510]:addi zero, zero, 0<br> [0x80000514]:sd fp, 120(sp)<br>     |
|  17|[0x80002090]<br>0x00000000BABECAFE|- rs1 : x17<br> - rd : x22<br>                                                                                                |[0x80000520]:ld s6, 2048(a7)<br> [0x80000524]:addi zero, zero, 0<br> [0x80000528]:addi zero, zero, 0<br> [0x8000052c]:sd s6, 128(sp)<br>     |
|  18|[0x80002098]<br>0x00000000BABECAFE|- rs1 : x9<br> - rd : x27<br>                                                                                                 |[0x80000538]:ld s11, 2048(s1)<br> [0x8000053c]:addi zero, zero, 0<br> [0x80000540]:addi zero, zero, 0<br> [0x80000544]:sd s11, 136(sp)<br>   |
|  19|[0x800020a0]<br>0x00000000BABECAFE|- rs1 : x8<br> - rd : x25<br>                                                                                                 |[0x80000550]:ld s9, 2048(fp)<br> [0x80000554]:addi zero, zero, 0<br> [0x80000558]:addi zero, zero, 0<br> [0x8000055c]:sd s9, 144(sp)<br>     |
|  20|[0x800020a8]<br>0x00000000BABECAFE|- rs1 : x10<br> - rd : x7<br>                                                                                                 |[0x80000568]:ld t2, 2048(a0)<br> [0x8000056c]:addi zero, zero, 0<br> [0x80000570]:addi zero, zero, 0<br> [0x80000574]:sd t2, 152(sp)<br>     |
|  21|[0x800020b0]<br>0x00000000BABECAFE|- rs1 : x29<br> - rd : x14<br>                                                                                                |[0x80000580]:ld a4, 2048(t4)<br> [0x80000584]:addi zero, zero, 0<br> [0x80000588]:addi zero, zero, 0<br> [0x8000058c]:sd a4, 160(sp)<br>     |
|  22|[0x800020b8]<br>0x00000000BABECAFE|- rs1 : x23<br> - rd : x17<br>                                                                                                |[0x800005a0]:ld a7, 2048(s7)<br> [0x800005a4]:addi zero, zero, 0<br> [0x800005a8]:addi zero, zero, 0<br> [0x800005ac]:sd a7, 0(ra)<br>       |
|  23|[0x800020c0]<br>0x00000000BABECAFE|- rs1 : x2<br> - rd : x29<br>                                                                                                 |[0x800005b8]:ld t4, 2048(sp)<br> [0x800005bc]:addi zero, zero, 0<br> [0x800005c0]:addi zero, zero, 0<br> [0x800005c4]:sd t4, 8(ra)<br>       |
|  24|[0x800020c8]<br>0x00000000BABECAFE|- rs1 : x31<br> - rd : x28<br>                                                                                                |[0x800005d0]:ld t3, 2048(t6)<br> [0x800005d4]:addi zero, zero, 0<br> [0x800005d8]:addi zero, zero, 0<br> [0x800005dc]:sd t3, 16(ra)<br>      |
|  25|[0x800020d0]<br>0x00000000BABECAFE|- rs1 : x13<br> - rd : x20<br>                                                                                                |[0x800005e8]:ld s4, 2048(a3)<br> [0x800005ec]:addi zero, zero, 0<br> [0x800005f0]:addi zero, zero, 0<br> [0x800005f4]:sd s4, 24(ra)<br>      |
|  26|[0x800020d8]<br>0x00000000BABECAFE|- rs1 : x18<br> - rd : x11<br>                                                                                                |[0x80000600]:ld a1, 2048(s2)<br> [0x80000604]:addi zero, zero, 0<br> [0x80000608]:addi zero, zero, 0<br> [0x8000060c]:sd a1, 32(ra)<br>      |
|  27|[0x800020e0]<br>0x00000000BABECAFE|- rs1 : x20<br> - rd : x10<br>                                                                                                |[0x80000618]:ld a0, 2048(s4)<br> [0x8000061c]:addi zero, zero, 0<br> [0x80000620]:addi zero, zero, 0<br> [0x80000624]:sd a0, 40(ra)<br>      |
|  28|[0x800020e8]<br>0x00000000BABECAFE|- rs1 : x22<br> - rd : x9<br>                                                                                                 |[0x80000630]:ld s1, 2048(s6)<br> [0x80000634]:addi zero, zero, 0<br> [0x80000638]:addi zero, zero, 0<br> [0x8000063c]:sd s1, 48(ra)<br>      |
|  29|[0x800020f0]<br>0x00000000BABECAFE|- rs1 : x21<br> - rd : x30<br>                                                                                                |[0x80000648]:ld t5, 2048(s5)<br> [0x8000064c]:addi zero, zero, 0<br> [0x80000650]:addi zero, zero, 0<br> [0x80000654]:sd t5, 56(ra)<br>      |
|  30|[0x800020f8]<br>0x00000000BABECAFE|- rs1 : x26<br> - rd : x2<br>                                                                                                 |[0x80000660]:ld sp, 2048(s10)<br> [0x80000664]:addi zero, zero, 0<br> [0x80000668]:addi zero, zero, 0<br> [0x8000066c]:sd sp, 64(ra)<br>     |
|  31|[0x80002100]<br>0x00000000BABECAFE|- rs1 : x24<br> - rd : x13<br>                                                                                                |[0x80000678]:ld a3, 2048(s8)<br> [0x8000067c]:addi zero, zero, 0<br> [0x80000680]:addi zero, zero, 0<br> [0x80000684]:sd a3, 72(ra)<br>      |
|  32|[0x80002108]<br>0x00000000BABECAFE|- rd : x4<br>                                                                                                                 |[0x80000690]:ld tp, 2048(a6)<br> [0x80000694]:addi zero, zero, 0<br> [0x80000698]:addi zero, zero, 0<br> [0x8000069c]:sd tp, 80(ra)<br>      |
