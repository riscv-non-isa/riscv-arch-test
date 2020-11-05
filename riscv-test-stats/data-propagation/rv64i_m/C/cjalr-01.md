
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000880')]      |
| SIG_REGION                | [('0x80003208', '0x80003300', '31 dwords')]      |
| COV_LABELS                | cjalr      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cjalr-01.S/cjalr-01.S    |
| Total Number of coverpoints| 32     |
| Total Coverpoints Hit     | 32      |
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

|s.no|            signature             |             coverpoints              |                                                                                                             code                                                                                                              |
|---:|----------------------------------|--------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80003208]<br>0x0000000000000009|- opcode : c.jalr<br> - rs1 : x19<br> |[0x800003a0]:c.jalr s3<br> [0x800003a8]:xori ra, ra, 3<br> [0x800003ac]:auipc a7, 0<br> [0x800003b0]:addi a7, a7, 4076<br> [0x800003b4]:andi a7, a7, 4092<br> [0x800003b8]:sub ra, ra, a7<br> [0x800003bc]:sd ra, 0(a0)<br>    |
|   2|[0x80003210]<br>0x0000000000000009|- rs1 : x12<br>                       |[0x800003c8]:c.jalr a2<br> [0x800003d0]:xori ra, ra, 3<br> [0x800003d4]:auipc a7, 0<br> [0x800003d8]:addi a7, a7, 4076<br> [0x800003dc]:andi a7, a7, 4092<br> [0x800003e0]:sub ra, ra, a7<br> [0x800003e4]:sd ra, 8(a0)<br>    |
|   3|[0x80003218]<br>0x0000000000000009|- rs1 : x4<br>                        |[0x800003f0]:c.jalr tp<br> [0x800003f8]:xori ra, ra, 3<br> [0x800003fc]:auipc a7, 0<br> [0x80000400]:addi a7, a7, 4076<br> [0x80000404]:andi a7, a7, 4092<br> [0x80000408]:sub ra, ra, a7<br> [0x8000040c]:sd ra, 16(a0)<br>   |
|   4|[0x80003220]<br>0x0000000000000009|- rs1 : x24<br>                       |[0x80000418]:c.jalr s8<br> [0x80000420]:xori ra, ra, 3<br> [0x80000424]:auipc a7, 0<br> [0x80000428]:addi a7, a7, 4076<br> [0x8000042c]:andi a7, a7, 4092<br> [0x80000430]:sub ra, ra, a7<br> [0x80000434]:sd ra, 24(a0)<br>   |
|   5|[0x80003228]<br>0x0000000000000009|- rs1 : x14<br>                       |[0x80000440]:c.jalr a4<br> [0x80000448]:xori ra, ra, 3<br> [0x8000044c]:auipc a7, 0<br> [0x80000450]:addi a7, a7, 4076<br> [0x80000454]:andi a7, a7, 4092<br> [0x80000458]:sub ra, ra, a7<br> [0x8000045c]:sd ra, 32(a0)<br>   |
|   6|[0x80003230]<br>0x0000000000000009|- rs1 : x21<br>                       |[0x80000468]:c.jalr s5<br> [0x80000470]:xori ra, ra, 3<br> [0x80000474]:auipc a7, 0<br> [0x80000478]:addi a7, a7, 4076<br> [0x8000047c]:andi a7, a7, 4092<br> [0x80000480]:sub ra, ra, a7<br> [0x80000484]:sd ra, 40(a0)<br>   |
|   7|[0x80003238]<br>0x0000000000000009|- rs1 : x8<br>                        |[0x80000490]:c.jalr fp<br> [0x80000498]:xori ra, ra, 3<br> [0x8000049c]:auipc a7, 0<br> [0x800004a0]:addi a7, a7, 4076<br> [0x800004a4]:andi a7, a7, 4092<br> [0x800004a8]:sub ra, ra, a7<br> [0x800004ac]:sd ra, 48(a0)<br>   |
|   8|[0x80003240]<br>0x0000000000000009|- rs1 : x7<br>                        |[0x800004b8]:c.jalr t2<br> [0x800004c0]:xori ra, ra, 3<br> [0x800004c4]:auipc a7, 0<br> [0x800004c8]:addi a7, a7, 4076<br> [0x800004cc]:andi a7, a7, 4092<br> [0x800004d0]:sub ra, ra, a7<br> [0x800004d4]:sd ra, 56(a0)<br>   |
|   9|[0x80003248]<br>0x0000000000000009|- rs1 : x25<br>                       |[0x800004e0]:c.jalr s9<br> [0x800004e8]:xori ra, ra, 3<br> [0x800004ec]:auipc a7, 0<br> [0x800004f0]:addi a7, a7, 4076<br> [0x800004f4]:andi a7, a7, 4092<br> [0x800004f8]:sub ra, ra, a7<br> [0x800004fc]:sd ra, 64(a0)<br>   |
|  10|[0x80003250]<br>0x0000000000000009|- rs1 : x22<br>                       |[0x80000508]:c.jalr s6<br> [0x80000510]:xori ra, ra, 3<br> [0x80000514]:auipc a7, 0<br> [0x80000518]:addi a7, a7, 4076<br> [0x8000051c]:andi a7, a7, 4092<br> [0x80000520]:sub ra, ra, a7<br> [0x80000524]:sd ra, 72(a0)<br>   |
|  11|[0x80003258]<br>0x0000000000000009|- rs1 : x16<br>                       |[0x80000530]:c.jalr a6<br> [0x80000538]:xori ra, ra, 3<br> [0x8000053c]:auipc a7, 0<br> [0x80000540]:addi a7, a7, 4076<br> [0x80000544]:andi a7, a7, 4092<br> [0x80000548]:sub ra, ra, a7<br> [0x8000054c]:sd ra, 80(a0)<br>   |
|  12|[0x80003260]<br>0x0000000000000009|- rs1 : x20<br>                       |[0x80000558]:c.jalr s4<br> [0x80000560]:xori ra, ra, 3<br> [0x80000564]:auipc a7, 0<br> [0x80000568]:addi a7, a7, 4076<br> [0x8000056c]:andi a7, a7, 4092<br> [0x80000570]:sub ra, ra, a7<br> [0x80000574]:sd ra, 88(a0)<br>   |
|  13|[0x80003268]<br>0x0000000000000009|- rs1 : x9<br>                        |[0x80000580]:c.jalr s1<br> [0x80000588]:xori ra, ra, 3<br> [0x8000058c]:auipc a7, 0<br> [0x80000590]:addi a7, a7, 4076<br> [0x80000594]:andi a7, a7, 4092<br> [0x80000598]:sub ra, ra, a7<br> [0x8000059c]:sd ra, 96(a0)<br>   |
|  14|[0x80003270]<br>0x0000000000000009|- rs1 : x6<br>                        |[0x800005a8]:c.jalr t1<br> [0x800005b0]:xori ra, ra, 3<br> [0x800005b4]:auipc a7, 0<br> [0x800005b8]:addi a7, a7, 4076<br> [0x800005bc]:andi a7, a7, 4092<br> [0x800005c0]:sub ra, ra, a7<br> [0x800005c4]:sd ra, 104(a0)<br>  |
|  15|[0x80003278]<br>0x0000000000000009|- rs1 : x13<br>                       |[0x800005d0]:c.jalr a3<br> [0x800005d8]:xori ra, ra, 3<br> [0x800005dc]:auipc a7, 0<br> [0x800005e0]:addi a7, a7, 4076<br> [0x800005e4]:andi a7, a7, 4092<br> [0x800005e8]:sub ra, ra, a7<br> [0x800005ec]:sd ra, 112(a0)<br>  |
|  16|[0x80003280]<br>0x0000000000000009|- rs1 : x30<br>                       |[0x800005f8]:c.jalr t5<br> [0x80000600]:xori ra, ra, 3<br> [0x80000604]:auipc a7, 0<br> [0x80000608]:addi a7, a7, 4076<br> [0x8000060c]:andi a7, a7, 4092<br> [0x80000610]:sub ra, ra, a7<br> [0x80000614]:sd ra, 120(a0)<br>  |
|  17|[0x80003288]<br>0x0000000000000009|- rs1 : x3<br>                        |[0x80000620]:c.jalr gp<br> [0x80000628]:xori ra, ra, 3<br> [0x8000062c]:auipc a7, 0<br> [0x80000630]:addi a7, a7, 4076<br> [0x80000634]:andi a7, a7, 4092<br> [0x80000638]:sub ra, ra, a7<br> [0x8000063c]:sd ra, 128(a0)<br>  |
|  18|[0x80003290]<br>0x0000000000000009|- rs1 : x23<br>                       |[0x80000648]:c.jalr s7<br> [0x80000650]:xori ra, ra, 3<br> [0x80000654]:auipc a7, 0<br> [0x80000658]:addi a7, a7, 4076<br> [0x8000065c]:andi a7, a7, 4092<br> [0x80000660]:sub ra, ra, a7<br> [0x80000664]:sd ra, 136(a0)<br>  |
|  19|[0x80003298]<br>0x0000000000000009|- rs1 : x5<br>                        |[0x80000670]:c.jalr t0<br> [0x80000678]:xori ra, ra, 3<br> [0x8000067c]:auipc a7, 0<br> [0x80000680]:addi a7, a7, 4076<br> [0x80000684]:andi a7, a7, 4092<br> [0x80000688]:sub ra, ra, a7<br> [0x8000068c]:sd ra, 144(a0)<br>  |
|  20|[0x800032a0]<br>0x0000000000000009|- rs1 : x1<br>                        |[0x80000698]:c.jalr ra<br> [0x800006a0]:xori ra, ra, 3<br> [0x800006a4]:auipc a7, 0<br> [0x800006a8]:addi a7, a7, 4076<br> [0x800006ac]:andi a7, a7, 4092<br> [0x800006b0]:sub ra, ra, a7<br> [0x800006b4]:sd ra, 152(a0)<br>  |
|  21|[0x800032a8]<br>0x0000000000000009|- rs1 : x26<br>                       |[0x800006c0]:c.jalr s10<br> [0x800006c8]:xori ra, ra, 3<br> [0x800006cc]:auipc a7, 0<br> [0x800006d0]:addi a7, a7, 4076<br> [0x800006d4]:andi a7, a7, 4092<br> [0x800006d8]:sub ra, ra, a7<br> [0x800006dc]:sd ra, 160(a0)<br> |
|  22|[0x800032b0]<br>0x0000000000000009|- rs1 : x28<br>                       |[0x800006e8]:c.jalr t3<br> [0x800006f0]:xori ra, ra, 3<br> [0x800006f4]:auipc a7, 0<br> [0x800006f8]:addi a7, a7, 4076<br> [0x800006fc]:andi a7, a7, 4092<br> [0x80000700]:sub ra, ra, a7<br> [0x80000704]:sd ra, 168(a0)<br>  |
|  23|[0x800032b8]<br>0x0000000000000009|- rs1 : x15<br>                       |[0x80000710]:c.jalr a5<br> [0x80000718]:xori ra, ra, 3<br> [0x8000071c]:auipc a7, 0<br> [0x80000720]:addi a7, a7, 4076<br> [0x80000724]:andi a7, a7, 4092<br> [0x80000728]:sub ra, ra, a7<br> [0x8000072c]:sd ra, 176(a0)<br>  |
|  24|[0x800032c0]<br>0x0000000000000009|- rs1 : x2<br>                        |[0x80000738]:c.jalr sp<br> [0x80000740]:xori ra, ra, 3<br> [0x80000744]:auipc a7, 0<br> [0x80000748]:addi a7, a7, 4076<br> [0x8000074c]:andi a7, a7, 4092<br> [0x80000750]:sub ra, ra, a7<br> [0x80000754]:sd ra, 184(a0)<br>  |
|  25|[0x800032c8]<br>0x0000000000000009|- rs1 : x31<br>                       |[0x80000760]:c.jalr t6<br> [0x80000768]:xori ra, ra, 3<br> [0x8000076c]:auipc a7, 0<br> [0x80000770]:addi a7, a7, 4076<br> [0x80000774]:andi a7, a7, 4092<br> [0x80000778]:sub ra, ra, a7<br> [0x8000077c]:sd ra, 192(a0)<br>  |
|  26|[0x800032d0]<br>0x0000000000000009|- rs1 : x27<br>                       |[0x80000788]:c.jalr s11<br> [0x80000790]:xori ra, ra, 3<br> [0x80000794]:auipc a7, 0<br> [0x80000798]:addi a7, a7, 4076<br> [0x8000079c]:andi a7, a7, 4092<br> [0x800007a0]:sub ra, ra, a7<br> [0x800007a4]:sd ra, 200(a0)<br> |
|  27|[0x800032d8]<br>0x0000000000000009|- rs1 : x11<br>                       |[0x800007b0]:c.jalr a1<br> [0x800007b8]:xori ra, ra, 3<br> [0x800007bc]:auipc a7, 0<br> [0x800007c0]:addi a7, a7, 4076<br> [0x800007c4]:andi a7, a7, 4092<br> [0x800007c8]:sub ra, ra, a7<br> [0x800007cc]:sd ra, 208(a0)<br>  |
|  28|[0x800032e0]<br>0x0000000000000009|- rs1 : x17<br>                       |[0x800007d8]:c.jalr a7<br> [0x800007e0]:xori ra, ra, 3<br> [0x800007e4]:auipc gp, 0<br> [0x800007e8]:addi gp, gp, 4076<br> [0x800007ec]:andi gp, gp, 4092<br> [0x800007f0]:sub ra, ra, gp<br> [0x800007f4]:sd ra, 216(a0)<br>  |
|  29|[0x800032e8]<br>0x0000000000000009|- rs1 : x29<br>                       |[0x80000808]:c.jalr t4<br> [0x80000810]:xori ra, ra, 3<br> [0x80000814]:auipc gp, 0<br> [0x80000818]:addi gp, gp, 4076<br> [0x8000081c]:andi gp, gp, 4092<br> [0x80000820]:sub ra, ra, gp<br> [0x80000824]:c.sdsp ra, 0<br>    |
|  30|[0x800032f0]<br>0x000000000000000F|- rs1 : x18<br>                       |[0x8000082e]:c.jalr s2<br> [0x80000836]:xori ra, ra, 3<br> [0x8000083a]:auipc gp, 0<br> [0x8000083e]:addi gp, gp, 4076<br> [0x80000842]:andi gp, gp, 4092<br> [0x80000846]:sub ra, ra, gp<br> [0x8000084a]:c.sdsp ra, 1<br>    |
|  31|[0x800032f8]<br>0x0000000000000009|- rs1 : x10<br>                       |[0x80000854]:c.jalr a0<br> [0x8000085c]:xori ra, ra, 3<br> [0x80000860]:auipc gp, 0<br> [0x80000864]:addi gp, gp, 4076<br> [0x80000868]:andi gp, gp, 4092<br> [0x8000086c]:sub ra, ra, gp<br> [0x80000870]:c.sdsp ra, 2<br>    |
