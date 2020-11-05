
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800005b0')]      |
| SIG_REGION                | [('0x80003204', '0x8000328c', '34 words')]      |
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

|s.no|        signature         |             coverpoints              |                                                                                                             code                                                                                                             |
|---:|--------------------------|--------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80003210]<br>0x00000009|- opcode : c.jalr<br> - rs1 : x18<br> |[0x80000108]:c.jalr s2<br> [0x80000110]:xori ra, ra, 3<br> [0x80000114]:auipc a0, 0<br> [0x80000118]:addi a0, a0, 4076<br> [0x8000011c]:c.andi a0, 60<br> [0x8000011e]:sub ra, ra, a0<br> [0x80000122]:sw ra, 0(s1)<br>       |
|   2|[0x80003214]<br>0x0000000F|- rs1 : x17<br>                       |[0x8000012e]:c.jalr a7<br> [0x80000136]:xori ra, ra, 3<br> [0x8000013a]:auipc a0, 0<br> [0x8000013e]:addi a0, a0, 4076<br> [0x80000142]:c.andi a0, 60<br> [0x80000144]:sub ra, ra, a0<br> [0x80000148]:sw ra, 4(s1)<br>       |
|   3|[0x80003218]<br>0x00000009|- rs1 : x1<br>                        |[0x80000154]:c.jalr ra<br> [0x8000015c]:xori ra, ra, 3<br> [0x80000160]:auipc a0, 0<br> [0x80000164]:addi a0, a0, 4076<br> [0x80000168]:c.andi a0, 60<br> [0x8000016a]:sub ra, ra, a0<br> [0x8000016e]:sw ra, 8(s1)<br>       |
|   4|[0x8000321c]<br>0x0000000F|- rs1 : x3<br>                        |[0x8000017a]:c.jalr gp<br> [0x80000182]:xori ra, ra, 3<br> [0x80000186]:auipc a0, 0<br> [0x8000018a]:addi a0, a0, 4076<br> [0x8000018e]:c.andi a0, 60<br> [0x80000190]:sub ra, ra, a0<br> [0x80000194]:sw ra, 12(s1)<br>      |
|   5|[0x80003220]<br>0x00000009|- rs1 : x24<br>                       |[0x800001a0]:c.jalr s8<br> [0x800001a8]:xori ra, ra, 3<br> [0x800001ac]:auipc a0, 0<br> [0x800001b0]:addi a0, a0, 4076<br> [0x800001b4]:c.andi a0, 60<br> [0x800001b6]:sub ra, ra, a0<br> [0x800001ba]:sw ra, 16(s1)<br>      |
|   6|[0x80003224]<br>0x0000000F|- rs1 : x19<br>                       |[0x800001c6]:c.jalr s3<br> [0x800001ce]:xori ra, ra, 3<br> [0x800001d2]:auipc a0, 0<br> [0x800001d6]:addi a0, a0, 4076<br> [0x800001da]:c.andi a0, 60<br> [0x800001dc]:sub ra, ra, a0<br> [0x800001e0]:sw ra, 20(s1)<br>      |
|   7|[0x80003228]<br>0x00000009|- rs1 : x28<br>                       |[0x800001ec]:c.jalr t3<br> [0x800001f4]:xori ra, ra, 3<br> [0x800001f8]:auipc a0, 0<br> [0x800001fc]:addi a0, a0, 4076<br> [0x80000200]:c.andi a0, 60<br> [0x80000202]:sub ra, ra, a0<br> [0x80000206]:sw ra, 24(s1)<br>      |
|   8|[0x8000322c]<br>0x0000000F|- rs1 : x26<br>                       |[0x80000212]:c.jalr s10<br> [0x8000021a]:xori ra, ra, 3<br> [0x8000021e]:auipc a0, 0<br> [0x80000222]:addi a0, a0, 4076<br> [0x80000226]:c.andi a0, 60<br> [0x80000228]:sub ra, ra, a0<br> [0x8000022c]:sw ra, 28(s1)<br>     |
|   9|[0x80003230]<br>0x00000009|- rs1 : x23<br>                       |[0x80000238]:c.jalr s7<br> [0x80000240]:xori ra, ra, 3<br> [0x80000244]:auipc a0, 0<br> [0x80000248]:addi a0, a0, 4076<br> [0x8000024c]:c.andi a0, 60<br> [0x8000024e]:sub ra, ra, a0<br> [0x80000252]:sw ra, 32(s1)<br>      |
|  10|[0x80003234]<br>0x0000000F|- rs1 : x14<br>                       |[0x8000025e]:c.jalr a4<br> [0x80000266]:xori ra, ra, 3<br> [0x8000026a]:auipc a0, 0<br> [0x8000026e]:addi a0, a0, 4076<br> [0x80000272]:c.andi a0, 60<br> [0x80000274]:sub ra, ra, a0<br> [0x80000278]:sw ra, 36(s1)<br>      |
|  11|[0x80003238]<br>0x00000009|- rs1 : x6<br>                        |[0x80000284]:c.jalr t1<br> [0x8000028c]:xori ra, ra, 3<br> [0x80000290]:auipc a0, 0<br> [0x80000294]:addi a0, a0, 4076<br> [0x80000298]:c.andi a0, 60<br> [0x8000029a]:sub ra, ra, a0<br> [0x8000029e]:sw ra, 40(s1)<br>      |
|  12|[0x8000323c]<br>0x0000000F|- rs1 : x31<br>                       |[0x800002aa]:c.jalr t6<br> [0x800002b2]:xori ra, ra, 3<br> [0x800002b6]:auipc a0, 0<br> [0x800002ba]:addi a0, a0, 4076<br> [0x800002be]:c.andi a0, 60<br> [0x800002c0]:sub ra, ra, a0<br> [0x800002c4]:sw ra, 44(s1)<br>      |
|  13|[0x80003240]<br>0x00000009|- rs1 : x30<br>                       |[0x800002d0]:c.jalr t5<br> [0x800002d8]:xori ra, ra, 3<br> [0x800002dc]:auipc a0, 0<br> [0x800002e0]:addi a0, a0, 4076<br> [0x800002e4]:c.andi a0, 60<br> [0x800002e6]:sub ra, ra, a0<br> [0x800002ea]:sw ra, 48(s1)<br>      |
|  14|[0x80003244]<br>0x0000000F|- rs1 : x21<br>                       |[0x800002f6]:c.jalr s5<br> [0x800002fe]:xori ra, ra, 3<br> [0x80000302]:auipc a0, 0<br> [0x80000306]:addi a0, a0, 4076<br> [0x8000030a]:c.andi a0, 60<br> [0x8000030c]:sub ra, ra, a0<br> [0x80000310]:sw ra, 52(s1)<br>      |
|  15|[0x80003248]<br>0x00000009|- rs1 : x4<br>                        |[0x8000031c]:c.jalr tp<br> [0x80000324]:xori ra, ra, 3<br> [0x80000328]:auipc a0, 0<br> [0x8000032c]:addi a0, a0, 4076<br> [0x80000330]:c.andi a0, 60<br> [0x80000332]:sub ra, ra, a0<br> [0x80000336]:sw ra, 56(s1)<br>      |
|  16|[0x8000324c]<br>0x0000000F|- rs1 : x25<br>                       |[0x80000342]:c.jalr s9<br> [0x8000034a]:xori ra, ra, 3<br> [0x8000034e]:auipc a0, 0<br> [0x80000352]:addi a0, a0, 4076<br> [0x80000356]:c.andi a0, 60<br> [0x80000358]:sub ra, ra, a0<br> [0x8000035c]:sw ra, 60(s1)<br>      |
|  17|[0x80003250]<br>0x00000009|- rs1 : x29<br>                       |[0x80000368]:c.jalr t4<br> [0x80000370]:xori ra, ra, 3<br> [0x80000374]:auipc a0, 0<br> [0x80000378]:addi a0, a0, 4076<br> [0x8000037c]:c.andi a0, 60<br> [0x8000037e]:sub ra, ra, a0<br> [0x80000382]:sw ra, 64(s1)<br>      |
|  18|[0x80003254]<br>0x0000000F|- rs1 : x7<br>                        |[0x8000038e]:c.jalr t2<br> [0x80000396]:xori ra, ra, 3<br> [0x8000039a]:auipc a0, 0<br> [0x8000039e]:addi a0, a0, 4076<br> [0x800003a2]:c.andi a0, 60<br> [0x800003a4]:sub ra, ra, a0<br> [0x800003a8]:sw ra, 68(s1)<br>      |
|  19|[0x80003258]<br>0x00000009|- rs1 : x15<br>                       |[0x800003b4]:c.jalr a5<br> [0x800003bc]:xori ra, ra, 3<br> [0x800003c0]:auipc a0, 0<br> [0x800003c4]:addi a0, a0, 4076<br> [0x800003c8]:c.andi a0, 60<br> [0x800003ca]:sub ra, ra, a0<br> [0x800003ce]:sw ra, 72(s1)<br>      |
|  20|[0x8000325c]<br>0x0000000F|- rs1 : x8<br>                        |[0x800003da]:c.jalr fp<br> [0x800003e2]:xori ra, ra, 3<br> [0x800003e6]:auipc a0, 0<br> [0x800003ea]:addi a0, a0, 4076<br> [0x800003ee]:c.andi a0, 60<br> [0x800003f0]:sub ra, ra, a0<br> [0x800003f4]:sw ra, 76(s1)<br>      |
|  21|[0x80003260]<br>0x00000009|- rs1 : x2<br>                        |[0x80000400]:c.jalr sp<br> [0x80000408]:xori ra, ra, 3<br> [0x8000040c]:auipc a0, 0<br> [0x80000410]:addi a0, a0, 4076<br> [0x80000414]:c.andi a0, 60<br> [0x80000416]:sub ra, ra, a0<br> [0x8000041a]:sw ra, 80(s1)<br>      |
|  22|[0x80003264]<br>0x0000000F|- rs1 : x11<br>                       |[0x80000426]:c.jalr a1<br> [0x8000042e]:xori ra, ra, 3<br> [0x80000432]:auipc a0, 0<br> [0x80000436]:addi a0, a0, 4076<br> [0x8000043a]:c.andi a0, 60<br> [0x8000043c]:sub ra, ra, a0<br> [0x80000440]:sw ra, 84(s1)<br>      |
|  23|[0x80003268]<br>0x00000009|- rs1 : x20<br>                       |[0x8000044c]:c.jalr s4<br> [0x80000454]:xori ra, ra, 3<br> [0x80000458]:auipc a0, 0<br> [0x8000045c]:addi a0, a0, 4076<br> [0x80000460]:c.andi a0, 60<br> [0x80000462]:sub ra, ra, a0<br> [0x80000466]:sw ra, 88(s1)<br>      |
|  24|[0x8000326c]<br>0x0000000F|- rs1 : x16<br>                       |[0x80000472]:c.jalr a6<br> [0x8000047a]:xori ra, ra, 3<br> [0x8000047e]:auipc a0, 0<br> [0x80000482]:addi a0, a0, 4076<br> [0x80000486]:c.andi a0, 60<br> [0x80000488]:sub ra, ra, a0<br> [0x8000048c]:sw ra, 92(s1)<br>      |
|  25|[0x80003270]<br>0x00000009|- rs1 : x5<br>                        |[0x80000498]:c.jalr t0<br> [0x800004a0]:xori ra, ra, 3<br> [0x800004a4]:auipc a0, 0<br> [0x800004a8]:addi a0, a0, 4076<br> [0x800004ac]:c.andi a0, 60<br> [0x800004ae]:sub ra, ra, a0<br> [0x800004b2]:sw ra, 96(s1)<br>      |
|  26|[0x80003274]<br>0x0000000F|- rs1 : x27<br>                       |[0x800004be]:c.jalr s11<br> [0x800004c6]:xori ra, ra, 3<br> [0x800004ca]:auipc a0, 0<br> [0x800004ce]:addi a0, a0, 4076<br> [0x800004d2]:c.andi a0, 60<br> [0x800004d4]:sub ra, ra, a0<br> [0x800004d8]:sw ra, 100(s1)<br>    |
|  27|[0x80003278]<br>0x00000009|- rs1 : x13<br>                       |[0x800004e4]:c.jalr a3<br> [0x800004ec]:xori ra, ra, 3<br> [0x800004f0]:auipc a0, 0<br> [0x800004f4]:addi a0, a0, 4076<br> [0x800004f8]:c.andi a0, 60<br> [0x800004fa]:sub ra, ra, a0<br> [0x800004fe]:sw ra, 104(s1)<br>     |
|  28|[0x8000327c]<br>0x0000000F|- rs1 : x12<br>                       |[0x8000050a]:c.jalr a2<br> [0x80000512]:xori ra, ra, 3<br> [0x80000516]:auipc gp, 0<br> [0x8000051a]:addi gp, gp, 4076<br> [0x8000051e]:andi gp, gp, 4092<br> [0x80000522]:sub ra, ra, gp<br> [0x80000526]:sw ra, 108(s1)<br> |
|  29|[0x80003280]<br>0x0000000F|- rs1 : x9<br>                        |[0x8000053a]:c.jalr s1<br> [0x80000542]:xori ra, ra, 3<br> [0x80000546]:auipc gp, 0<br> [0x8000054a]:addi gp, gp, 4076<br> [0x8000054e]:andi gp, gp, 4092<br> [0x80000552]:sub ra, ra, gp<br> [0x80000556]:c.swsp ra, 0<br>   |
|  30|[0x80003284]<br>0x00000009|- rs1 : x22<br>                       |[0x80000560]:c.jalr s6<br> [0x80000568]:xori ra, ra, 3<br> [0x8000056c]:auipc gp, 0<br> [0x80000570]:addi gp, gp, 4076<br> [0x80000574]:andi gp, gp, 4092<br> [0x80000578]:sub ra, ra, gp<br> [0x8000057c]:c.swsp ra, 1<br>   |
|  31|[0x80003288]<br>0x0000000F|- rs1 : x10<br>                       |[0x80000586]:c.jalr a0<br> [0x8000058e]:xori ra, ra, 3<br> [0x80000592]:auipc gp, 0<br> [0x80000596]:addi gp, gp, 4076<br> [0x8000059a]:andi gp, gp, 4092<br> [0x8000059e]:sub ra, ra, gp<br> [0x800005a2]:c.swsp ra, 2<br>   |
