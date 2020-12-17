
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000840')]      |
| SIG_REGION                | [('0x80002010', '0x80002110', '32 dwords')]      |
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
|   1|[0x80002010]<br>0x0000000000000009|- opcode : c.jalr<br> - rs1 : x17<br> |[0x800003a0]:c.jalr a7<br> [0x800003a8]:xori ra, ra, 3<br> [0x800003ac]:auipc a2, 0<br> [0x800003b0]:addi a2, a2, 4076<br> [0x800003b4]:c.andi a2, 60<br> [0x800003b6]:sub ra, ra, a2<br> [0x800003ba]:sd ra, 0(a0)<br>       |
|   2|[0x80002018]<br>0x000000000000000F|- rs1 : x3<br>                        |[0x800003c6]:c.jalr gp<br> [0x800003ce]:xori ra, ra, 3<br> [0x800003d2]:auipc a2, 0<br> [0x800003d6]:addi a2, a2, 4076<br> [0x800003da]:c.andi a2, 60<br> [0x800003dc]:sub ra, ra, a2<br> [0x800003e0]:sd ra, 8(a0)<br>       |
|   3|[0x80002020]<br>0x0000000000000009|- rs1 : x20<br>                       |[0x800003ec]:c.jalr s4<br> [0x800003f4]:xori ra, ra, 3<br> [0x800003f8]:auipc a2, 0<br> [0x800003fc]:addi a2, a2, 4076<br> [0x80000400]:c.andi a2, 60<br> [0x80000402]:sub ra, ra, a2<br> [0x80000406]:sd ra, 16(a0)<br>      |
|   4|[0x80002028]<br>0x000000000000000F|- rs1 : x4<br>                        |[0x80000412]:c.jalr tp<br> [0x8000041a]:xori ra, ra, 3<br> [0x8000041e]:auipc a2, 0<br> [0x80000422]:addi a2, a2, 4076<br> [0x80000426]:c.andi a2, 60<br> [0x80000428]:sub ra, ra, a2<br> [0x8000042c]:sd ra, 24(a0)<br>      |
|   5|[0x80002030]<br>0x0000000000000009|- rs1 : x29<br>                       |[0x80000438]:c.jalr t4<br> [0x80000440]:xori ra, ra, 3<br> [0x80000444]:auipc a2, 0<br> [0x80000448]:addi a2, a2, 4076<br> [0x8000044c]:c.andi a2, 60<br> [0x8000044e]:sub ra, ra, a2<br> [0x80000452]:sd ra, 32(a0)<br>      |
|   6|[0x80002038]<br>0x000000000000000F|- rs1 : x5<br>                        |[0x8000045e]:c.jalr t0<br> [0x80000466]:xori ra, ra, 3<br> [0x8000046a]:auipc a2, 0<br> [0x8000046e]:addi a2, a2, 4076<br> [0x80000472]:c.andi a2, 60<br> [0x80000474]:sub ra, ra, a2<br> [0x80000478]:sd ra, 40(a0)<br>      |
|   7|[0x80002040]<br>0x0000000000000009|- rs1 : x26<br>                       |[0x80000484]:c.jalr s10<br> [0x8000048c]:xori ra, ra, 3<br> [0x80000490]:auipc a2, 0<br> [0x80000494]:addi a2, a2, 4076<br> [0x80000498]:c.andi a2, 60<br> [0x8000049a]:sub ra, ra, a2<br> [0x8000049e]:sd ra, 48(a0)<br>     |
|   8|[0x80002048]<br>0x000000000000000F|- rs1 : x23<br>                       |[0x800004aa]:c.jalr s7<br> [0x800004b2]:xori ra, ra, 3<br> [0x800004b6]:auipc a2, 0<br> [0x800004ba]:addi a2, a2, 4076<br> [0x800004be]:c.andi a2, 60<br> [0x800004c0]:sub ra, ra, a2<br> [0x800004c4]:sd ra, 56(a0)<br>      |
|   9|[0x80002050]<br>0x0000000000000009|- rs1 : x30<br>                       |[0x800004d0]:c.jalr t5<br> [0x800004d8]:xori ra, ra, 3<br> [0x800004dc]:auipc a2, 0<br> [0x800004e0]:addi a2, a2, 4076<br> [0x800004e4]:c.andi a2, 60<br> [0x800004e6]:sub ra, ra, a2<br> [0x800004ea]:sd ra, 64(a0)<br>      |
|  10|[0x80002058]<br>0x000000000000000F|- rs1 : x13<br>                       |[0x800004f6]:c.jalr a3<br> [0x800004fe]:xori ra, ra, 3<br> [0x80000502]:auipc a2, 0<br> [0x80000506]:addi a2, a2, 4076<br> [0x8000050a]:c.andi a2, 60<br> [0x8000050c]:sub ra, ra, a2<br> [0x80000510]:sd ra, 72(a0)<br>      |
|  11|[0x80002060]<br>0x0000000000000009|- rs1 : x9<br>                        |[0x8000051c]:c.jalr s1<br> [0x80000524]:xori ra, ra, 3<br> [0x80000528]:auipc a2, 0<br> [0x8000052c]:addi a2, a2, 4076<br> [0x80000530]:c.andi a2, 60<br> [0x80000532]:sub ra, ra, a2<br> [0x80000536]:sd ra, 80(a0)<br>      |
|  12|[0x80002068]<br>0x000000000000000F|- rs1 : x16<br>                       |[0x80000542]:c.jalr a6<br> [0x8000054a]:xori ra, ra, 3<br> [0x8000054e]:auipc a2, 0<br> [0x80000552]:addi a2, a2, 4076<br> [0x80000556]:c.andi a2, 60<br> [0x80000558]:sub ra, ra, a2<br> [0x8000055c]:sd ra, 88(a0)<br>      |
|  13|[0x80002070]<br>0x0000000000000009|- rs1 : x15<br>                       |[0x80000568]:c.jalr a5<br> [0x80000570]:xori ra, ra, 3<br> [0x80000574]:auipc a2, 0<br> [0x80000578]:addi a2, a2, 4076<br> [0x8000057c]:c.andi a2, 60<br> [0x8000057e]:sub ra, ra, a2<br> [0x80000582]:sd ra, 96(a0)<br>      |
|  14|[0x80002078]<br>0x000000000000000F|- rs1 : x8<br>                        |[0x8000058e]:c.jalr fp<br> [0x80000596]:xori ra, ra, 3<br> [0x8000059a]:auipc a2, 0<br> [0x8000059e]:addi a2, a2, 4076<br> [0x800005a2]:c.andi a2, 60<br> [0x800005a4]:sub ra, ra, a2<br> [0x800005a8]:sd ra, 104(a0)<br>     |
|  15|[0x80002080]<br>0x0000000000000009|- rs1 : x22<br>                       |[0x800005b4]:c.jalr s6<br> [0x800005bc]:xori ra, ra, 3<br> [0x800005c0]:auipc a2, 0<br> [0x800005c4]:addi a2, a2, 4076<br> [0x800005c8]:c.andi a2, 60<br> [0x800005ca]:sub ra, ra, a2<br> [0x800005ce]:sd ra, 112(a0)<br>     |
|  16|[0x80002088]<br>0x000000000000000F|- rs1 : x31<br>                       |[0x800005da]:c.jalr t6<br> [0x800005e2]:xori ra, ra, 3<br> [0x800005e6]:auipc a2, 0<br> [0x800005ea]:addi a2, a2, 4076<br> [0x800005ee]:c.andi a2, 60<br> [0x800005f0]:sub ra, ra, a2<br> [0x800005f4]:sd ra, 120(a0)<br>     |
|  17|[0x80002090]<br>0x0000000000000009|- rs1 : x24<br>                       |[0x80000600]:c.jalr s8<br> [0x80000608]:xori ra, ra, 3<br> [0x8000060c]:auipc a2, 0<br> [0x80000610]:addi a2, a2, 4076<br> [0x80000614]:c.andi a2, 60<br> [0x80000616]:sub ra, ra, a2<br> [0x8000061a]:sd ra, 128(a0)<br>     |
|  18|[0x80002098]<br>0x000000000000000F|- rs1 : x25<br>                       |[0x80000626]:c.jalr s9<br> [0x8000062e]:xori ra, ra, 3<br> [0x80000632]:auipc a2, 0<br> [0x80000636]:addi a2, a2, 4076<br> [0x8000063a]:c.andi a2, 60<br> [0x8000063c]:sub ra, ra, a2<br> [0x80000640]:sd ra, 136(a0)<br>     |
|  19|[0x800020a0]<br>0x0000000000000009|- rs1 : x27<br>                       |[0x8000064c]:c.jalr s11<br> [0x80000654]:xori ra, ra, 3<br> [0x80000658]:auipc a2, 0<br> [0x8000065c]:addi a2, a2, 4076<br> [0x80000660]:c.andi a2, 60<br> [0x80000662]:sub ra, ra, a2<br> [0x80000666]:sd ra, 144(a0)<br>    |
|  20|[0x800020a8]<br>0x000000000000000F|- rs1 : x2<br>                        |[0x80000672]:c.jalr sp<br> [0x8000067a]:xori ra, ra, 3<br> [0x8000067e]:auipc a2, 0<br> [0x80000682]:addi a2, a2, 4076<br> [0x80000686]:c.andi a2, 60<br> [0x80000688]:sub ra, ra, a2<br> [0x8000068c]:sd ra, 152(a0)<br>     |
|  21|[0x800020b0]<br>0x0000000000000009|- rs1 : x6<br>                        |[0x80000698]:c.jalr t1<br> [0x800006a0]:xori ra, ra, 3<br> [0x800006a4]:auipc a2, 0<br> [0x800006a8]:addi a2, a2, 4076<br> [0x800006ac]:c.andi a2, 60<br> [0x800006ae]:sub ra, ra, a2<br> [0x800006b2]:sd ra, 160(a0)<br>     |
|  22|[0x800020b8]<br>0x000000000000000F|- rs1 : x18<br>                       |[0x800006be]:c.jalr s2<br> [0x800006c6]:xori ra, ra, 3<br> [0x800006ca]:auipc a2, 0<br> [0x800006ce]:addi a2, a2, 4076<br> [0x800006d2]:c.andi a2, 60<br> [0x800006d4]:sub ra, ra, a2<br> [0x800006d8]:sd ra, 168(a0)<br>     |
|  23|[0x800020c0]<br>0x0000000000000009|- rs1 : x14<br>                       |[0x800006e4]:c.jalr a4<br> [0x800006ec]:xori ra, ra, 3<br> [0x800006f0]:auipc a2, 0<br> [0x800006f4]:addi a2, a2, 4076<br> [0x800006f8]:c.andi a2, 60<br> [0x800006fa]:sub ra, ra, a2<br> [0x800006fe]:sd ra, 176(a0)<br>     |
|  24|[0x800020c8]<br>0x000000000000000F|- rs1 : x11<br>                       |[0x8000070a]:c.jalr a1<br> [0x80000712]:xori ra, ra, 3<br> [0x80000716]:auipc a2, 0<br> [0x8000071a]:addi a2, a2, 4076<br> [0x8000071e]:c.andi a2, 60<br> [0x80000720]:sub ra, ra, a2<br> [0x80000724]:sd ra, 184(a0)<br>     |
|  25|[0x800020d0]<br>0x0000000000000009|- rs1 : x1<br>                        |[0x80000730]:c.jalr ra<br> [0x80000738]:xori ra, ra, 3<br> [0x8000073c]:auipc a2, 0<br> [0x80000740]:addi a2, a2, 4076<br> [0x80000744]:c.andi a2, 60<br> [0x80000746]:sub ra, ra, a2<br> [0x8000074a]:sd ra, 192(a0)<br>     |
|  26|[0x800020d8]<br>0x000000000000000F|- rs1 : x7<br>                        |[0x80000756]:c.jalr t2<br> [0x8000075e]:xori ra, ra, 3<br> [0x80000762]:auipc a2, 0<br> [0x80000766]:addi a2, a2, 4076<br> [0x8000076a]:c.andi a2, 60<br> [0x8000076c]:sub ra, ra, a2<br> [0x80000770]:sd ra, 200(a0)<br>     |
|  27|[0x800020e0]<br>0x0000000000000009|- rs1 : x19<br>                       |[0x8000077c]:c.jalr s3<br> [0x80000784]:xori ra, ra, 3<br> [0x80000788]:auipc a2, 0<br> [0x8000078c]:addi a2, a2, 4076<br> [0x80000790]:c.andi a2, 60<br> [0x80000792]:sub ra, ra, a2<br> [0x80000796]:sd ra, 208(a0)<br>     |
|  28|[0x800020e8]<br>0x000000000000000F|- rs1 : x12<br>                       |[0x800007a2]:c.jalr a2<br> [0x800007aa]:xori ra, ra, 3<br> [0x800007ae]:auipc gp, 0<br> [0x800007b2]:addi gp, gp, 4076<br> [0x800007b6]:andi gp, gp, 4092<br> [0x800007ba]:sub ra, ra, gp<br> [0x800007be]:sd ra, 216(a0)<br> |
|  29|[0x800020f0]<br>0x000000000000000F|- rs1 : x21<br>                       |[0x800007d2]:c.jalr s5<br> [0x800007da]:xori ra, ra, 3<br> [0x800007de]:auipc gp, 0<br> [0x800007e2]:addi gp, gp, 4076<br> [0x800007e6]:andi gp, gp, 4092<br> [0x800007ea]:sub ra, ra, gp<br> [0x800007ee]:c.sdsp ra, 0<br>   |
|  30|[0x800020f8]<br>0x0000000000000009|- rs1 : x28<br>                       |[0x800007f8]:c.jalr t3<br> [0x80000800]:xori ra, ra, 3<br> [0x80000804]:auipc gp, 0<br> [0x80000808]:addi gp, gp, 4076<br> [0x8000080c]:andi gp, gp, 4092<br> [0x80000810]:sub ra, ra, gp<br> [0x80000814]:c.sdsp ra, 1<br>   |
|  31|[0x80002100]<br>0x000000000000000F|- rs1 : x10<br>                       |[0x8000081e]:c.jalr a0<br> [0x80000826]:xori ra, ra, 3<br> [0x8000082a]:auipc gp, 0<br> [0x8000082e]:addi gp, gp, 4076<br> [0x80000832]:andi gp, gp, 4092<br> [0x80000836]:sub ra, ra, gp<br> [0x8000083a]:c.sdsp ra, 2<br>   |
