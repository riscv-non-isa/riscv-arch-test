
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000810')]      |
| SIG_REGION                | [('0x80003204', '0x80003308', '32 dwords')]      |
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

|s.no|            signature             |             coverpoints              |                                                                                                             code                                                                                                             |
|---:|----------------------------------|--------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000000000009|- opcode : c.jalr<br> - rs1 : x29<br> |[0x800003a0]:c.jalr t4<br> [0x800003a8]:xori ra, ra, 3<br> [0x800003ac]:auipc fp, 0<br> [0x800003b0]:addi fp, fp, 4076<br> [0x800003b4]:c.andi s0, 60<br> [0x800003b6]:sub ra, ra, fp<br> [0x800003ba]:c.sdsp ra, 0<br>       |
|   2|[0x80003218]<br>0x0000000000000009|- rs1 : x21<br>                       |[0x800003c4]:c.jalr s5<br> [0x800003cc]:xori ra, ra, 3<br> [0x800003d0]:auipc fp, 0<br> [0x800003d4]:addi fp, fp, 4076<br> [0x800003d8]:c.andi s0, 60<br> [0x800003da]:sub ra, ra, fp<br> [0x800003de]:c.sdsp ra, 1<br>       |
|   3|[0x80003220]<br>0x0000000000000009|- rs1 : x5<br>                        |[0x800003e8]:c.jalr t0<br> [0x800003f0]:xori ra, ra, 3<br> [0x800003f4]:auipc fp, 0<br> [0x800003f8]:addi fp, fp, 4076<br> [0x800003fc]:c.andi s0, 60<br> [0x800003fe]:sub ra, ra, fp<br> [0x80000402]:c.sdsp ra, 2<br>       |
|   4|[0x80003228]<br>0x0000000000000009|- rs1 : x26<br>                       |[0x8000040c]:c.jalr s10<br> [0x80000414]:xori ra, ra, 3<br> [0x80000418]:auipc fp, 0<br> [0x8000041c]:addi fp, fp, 4076<br> [0x80000420]:c.andi s0, 60<br> [0x80000422]:sub ra, ra, fp<br> [0x80000426]:c.sdsp ra, 3<br>      |
|   5|[0x80003230]<br>0x0000000000000009|- rs1 : x18<br>                       |[0x80000430]:c.jalr s2<br> [0x80000438]:xori ra, ra, 3<br> [0x8000043c]:auipc fp, 0<br> [0x80000440]:addi fp, fp, 4076<br> [0x80000444]:c.andi s0, 60<br> [0x80000446]:sub ra, ra, fp<br> [0x8000044a]:c.sdsp ra, 4<br>       |
|   6|[0x80003238]<br>0x0000000000000009|- rs1 : x16<br>                       |[0x80000454]:c.jalr a6<br> [0x8000045c]:xori ra, ra, 3<br> [0x80000460]:auipc fp, 0<br> [0x80000464]:addi fp, fp, 4076<br> [0x80000468]:c.andi s0, 60<br> [0x8000046a]:sub ra, ra, fp<br> [0x8000046e]:c.sdsp ra, 5<br>       |
|   7|[0x80003240]<br>0x0000000000000009|- rs1 : x1<br>                        |[0x80000478]:c.jalr ra<br> [0x80000480]:xori ra, ra, 3<br> [0x80000484]:auipc fp, 0<br> [0x80000488]:addi fp, fp, 4076<br> [0x8000048c]:c.andi s0, 60<br> [0x8000048e]:sub ra, ra, fp<br> [0x80000492]:c.sdsp ra, 6<br>       |
|   8|[0x80003248]<br>0x0000000000000009|- rs1 : x15<br>                       |[0x8000049c]:c.jalr a5<br> [0x800004a4]:xori ra, ra, 3<br> [0x800004a8]:auipc fp, 0<br> [0x800004ac]:addi fp, fp, 4076<br> [0x800004b0]:c.andi s0, 60<br> [0x800004b2]:sub ra, ra, fp<br> [0x800004b6]:c.sdsp ra, 7<br>       |
|   9|[0x80003250]<br>0x0000000000000009|- rs1 : x30<br>                       |[0x800004c0]:c.jalr t5<br> [0x800004c8]:xori ra, ra, 3<br> [0x800004cc]:auipc fp, 0<br> [0x800004d0]:addi fp, fp, 4076<br> [0x800004d4]:c.andi s0, 60<br> [0x800004d6]:sub ra, ra, fp<br> [0x800004da]:c.sdsp ra, 8<br>       |
|  10|[0x80003258]<br>0x0000000000000009|- rs1 : x31<br>                       |[0x800004e4]:c.jalr t6<br> [0x800004ec]:xori ra, ra, 3<br> [0x800004f0]:auipc fp, 0<br> [0x800004f4]:addi fp, fp, 4076<br> [0x800004f8]:c.andi s0, 60<br> [0x800004fa]:sub ra, ra, fp<br> [0x800004fe]:c.sdsp ra, 9<br>       |
|  11|[0x80003260]<br>0x0000000000000009|- rs1 : x3<br>                        |[0x80000508]:c.jalr gp<br> [0x80000510]:xori ra, ra, 3<br> [0x80000514]:auipc fp, 0<br> [0x80000518]:addi fp, fp, 4076<br> [0x8000051c]:c.andi s0, 60<br> [0x8000051e]:sub ra, ra, fp<br> [0x80000522]:c.sdsp ra, 10<br>      |
|  12|[0x80003268]<br>0x0000000000000009|- rs1 : x13<br>                       |[0x8000052c]:c.jalr a3<br> [0x80000534]:xori ra, ra, 3<br> [0x80000538]:auipc fp, 0<br> [0x8000053c]:addi fp, fp, 4076<br> [0x80000540]:c.andi s0, 60<br> [0x80000542]:sub ra, ra, fp<br> [0x80000546]:c.sdsp ra, 11<br>      |
|  13|[0x80003270]<br>0x0000000000000009|- rs1 : x24<br>                       |[0x80000550]:c.jalr s8<br> [0x80000558]:xori ra, ra, 3<br> [0x8000055c]:auipc fp, 0<br> [0x80000560]:addi fp, fp, 4076<br> [0x80000564]:c.andi s0, 60<br> [0x80000566]:sub ra, ra, fp<br> [0x8000056a]:c.sdsp ra, 12<br>      |
|  14|[0x80003278]<br>0x0000000000000009|- rs1 : x25<br>                       |[0x80000574]:c.jalr s9<br> [0x8000057c]:xori ra, ra, 3<br> [0x80000580]:auipc fp, 0<br> [0x80000584]:addi fp, fp, 4076<br> [0x80000588]:c.andi s0, 60<br> [0x8000058a]:sub ra, ra, fp<br> [0x8000058e]:c.sdsp ra, 13<br>      |
|  15|[0x80003280]<br>0x0000000000000009|- rs1 : x4<br>                        |[0x80000598]:c.jalr tp<br> [0x800005a0]:xori ra, ra, 3<br> [0x800005a4]:auipc fp, 0<br> [0x800005a8]:addi fp, fp, 4076<br> [0x800005ac]:c.andi s0, 60<br> [0x800005ae]:sub ra, ra, fp<br> [0x800005b2]:c.sdsp ra, 14<br>      |
|  16|[0x80003288]<br>0x0000000000000009|- rs1 : x7<br>                        |[0x800005bc]:c.jalr t2<br> [0x800005c4]:xori ra, ra, 3<br> [0x800005c8]:auipc fp, 0<br> [0x800005cc]:addi fp, fp, 4076<br> [0x800005d0]:c.andi s0, 60<br> [0x800005d2]:sub ra, ra, fp<br> [0x800005d6]:c.sdsp ra, 15<br>      |
|  17|[0x80003290]<br>0x0000000000000009|- rs1 : x20<br>                       |[0x800005e0]:c.jalr s4<br> [0x800005e8]:xori ra, ra, 3<br> [0x800005ec]:auipc fp, 0<br> [0x800005f0]:addi fp, fp, 4076<br> [0x800005f4]:c.andi s0, 60<br> [0x800005f6]:sub ra, ra, fp<br> [0x800005fa]:c.sdsp ra, 16<br>      |
|  18|[0x80003298]<br>0x0000000000000009|- rs1 : x12<br>                       |[0x80000604]:c.jalr a2<br> [0x8000060c]:xori ra, ra, 3<br> [0x80000610]:auipc fp, 0<br> [0x80000614]:addi fp, fp, 4076<br> [0x80000618]:c.andi s0, 60<br> [0x8000061a]:sub ra, ra, fp<br> [0x8000061e]:c.sdsp ra, 17<br>      |
|  19|[0x800032a0]<br>0x0000000000000009|- rs1 : x9<br>                        |[0x80000628]:c.jalr s1<br> [0x80000630]:xori ra, ra, 3<br> [0x80000634]:auipc fp, 0<br> [0x80000638]:addi fp, fp, 4076<br> [0x8000063c]:c.andi s0, 60<br> [0x8000063e]:sub ra, ra, fp<br> [0x80000642]:c.sdsp ra, 18<br>      |
|  20|[0x800032a8]<br>0x0000000000000009|- rs1 : x19<br>                       |[0x8000064c]:c.jalr s3<br> [0x80000654]:xori ra, ra, 3<br> [0x80000658]:auipc fp, 0<br> [0x8000065c]:addi fp, fp, 4076<br> [0x80000660]:c.andi s0, 60<br> [0x80000662]:sub ra, ra, fp<br> [0x80000666]:c.sdsp ra, 19<br>      |
|  21|[0x800032b0]<br>0x0000000000000009|- rs1 : x6<br>                        |[0x80000670]:c.jalr t1<br> [0x80000678]:xori ra, ra, 3<br> [0x8000067c]:auipc fp, 0<br> [0x80000680]:addi fp, fp, 4076<br> [0x80000684]:c.andi s0, 60<br> [0x80000686]:sub ra, ra, fp<br> [0x8000068a]:c.sdsp ra, 20<br>      |
|  22|[0x800032b8]<br>0x0000000000000009|- rs1 : x14<br>                       |[0x80000694]:c.jalr a4<br> [0x8000069c]:xori ra, ra, 3<br> [0x800006a0]:auipc fp, 0<br> [0x800006a4]:addi fp, fp, 4076<br> [0x800006a8]:c.andi s0, 60<br> [0x800006aa]:sub ra, ra, fp<br> [0x800006ae]:c.sdsp ra, 21<br>      |
|  23|[0x800032c0]<br>0x0000000000000009|- rs1 : x11<br>                       |[0x800006b8]:c.jalr a1<br> [0x800006c0]:xori ra, ra, 3<br> [0x800006c4]:auipc fp, 0<br> [0x800006c8]:addi fp, fp, 4076<br> [0x800006cc]:c.andi s0, 60<br> [0x800006ce]:sub ra, ra, fp<br> [0x800006d2]:c.sdsp ra, 22<br>      |
|  24|[0x800032c8]<br>0x0000000000000009|- rs1 : x22<br>                       |[0x800006dc]:c.jalr s6<br> [0x800006e4]:xori ra, ra, 3<br> [0x800006e8]:auipc fp, 0<br> [0x800006ec]:addi fp, fp, 4076<br> [0x800006f0]:c.andi s0, 60<br> [0x800006f2]:sub ra, ra, fp<br> [0x800006f6]:c.sdsp ra, 23<br>      |
|  25|[0x800032d0]<br>0x0000000000000009|- rs1 : x17<br>                       |[0x80000700]:c.jalr a7<br> [0x80000708]:xori ra, ra, 3<br> [0x8000070c]:auipc fp, 0<br> [0x80000710]:addi fp, fp, 4076<br> [0x80000714]:c.andi s0, 60<br> [0x80000716]:sub ra, ra, fp<br> [0x8000071a]:c.sdsp ra, 24<br>      |
|  26|[0x800032d8]<br>0x0000000000000009|- rs1 : x28<br>                       |[0x80000724]:c.jalr t3<br> [0x8000072c]:xori ra, ra, 3<br> [0x80000730]:auipc fp, 0<br> [0x80000734]:addi fp, fp, 4076<br> [0x80000738]:c.andi s0, 60<br> [0x8000073a]:sub ra, ra, fp<br> [0x8000073e]:c.sdsp ra, 25<br>      |
|  27|[0x800032e0]<br>0x0000000000000009|- rs1 : x23<br>                       |[0x80000748]:c.jalr s7<br> [0x80000750]:xori ra, ra, 3<br> [0x80000754]:auipc fp, 0<br> [0x80000758]:addi fp, fp, 4076<br> [0x8000075c]:c.andi s0, 60<br> [0x8000075e]:sub ra, ra, fp<br> [0x80000762]:c.sdsp ra, 26<br>      |
|  28|[0x800032e8]<br>0x0000000000000009|- rs1 : x27<br>                       |[0x8000076c]:c.jalr s11<br> [0x80000774]:xori ra, ra, 3<br> [0x80000778]:auipc tp, 0<br> [0x8000077c]:addi tp, tp, 4076<br> [0x80000780]:andi tp, tp, 4092<br> [0x80000784]:sub ra, ra, tp<br> [0x80000788]:c.sdsp ra, 27<br> |
|  29|[0x800032f0]<br>0x000000000000000F|- rs1 : x2<br>                        |[0x8000079a]:c.jalr sp<br> [0x800007a2]:xori ra, ra, 3<br> [0x800007a6]:auipc tp, 0<br> [0x800007aa]:addi tp, tp, 4076<br> [0x800007ae]:andi tp, tp, 4092<br> [0x800007b2]:sub ra, ra, tp<br> [0x800007b6]:sd ra, 0(gp)<br>   |
|  30|[0x800032f8]<br>0x000000000000000F|- rs1 : x8<br>                        |[0x800007c2]:c.jalr fp<br> [0x800007ca]:xori ra, ra, 3<br> [0x800007ce]:auipc tp, 0<br> [0x800007d2]:addi tp, tp, 4076<br> [0x800007d6]:andi tp, tp, 4092<br> [0x800007da]:sub ra, ra, tp<br> [0x800007de]:sd ra, 8(gp)<br>   |
|  31|[0x80003300]<br>0x000000000000000F|- rs1 : x10<br>                       |[0x800007ea]:c.jalr a0<br> [0x800007f2]:xori ra, ra, 3<br> [0x800007f6]:auipc tp, 0<br> [0x800007fa]:addi tp, tp, 4076<br> [0x800007fe]:andi tp, tp, 4092<br> [0x80000802]:sub ra, ra, tp<br> [0x80000806]:sd ra, 16(gp)<br>  |
