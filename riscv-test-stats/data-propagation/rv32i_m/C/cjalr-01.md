
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800005e0')]      |
| SIG_REGION                | [('0x80003204', '0x80003280', '31 words')]      |
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

|s.no|        signature         |             coverpoints              |                                                                                                             code                                                                                                              |
|---:|--------------------------|--------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80003204]<br>0x00000009|- opcode : c.jalr<br> - rs1 : x30<br> |[0x80000108]:c.jalr t5<br> [0x80000110]:xori ra, ra, 3<br> [0x80000114]:auipc a6, 0<br> [0x80000118]:addi a6, a6, 4076<br> [0x8000011c]:andi a6, a6, 4092<br> [0x80000120]:sub ra, ra, a6<br> [0x80000124]:sw ra, 0(a0)<br>    |
|   2|[0x80003208]<br>0x00000009|- rs1 : x5<br>                        |[0x80000130]:c.jalr t0<br> [0x80000138]:xori ra, ra, 3<br> [0x8000013c]:auipc a6, 0<br> [0x80000140]:addi a6, a6, 4076<br> [0x80000144]:andi a6, a6, 4092<br> [0x80000148]:sub ra, ra, a6<br> [0x8000014c]:sw ra, 4(a0)<br>    |
|   3|[0x8000320c]<br>0x00000009|- rs1 : x29<br>                       |[0x80000158]:c.jalr t4<br> [0x80000160]:xori ra, ra, 3<br> [0x80000164]:auipc a6, 0<br> [0x80000168]:addi a6, a6, 4076<br> [0x8000016c]:andi a6, a6, 4092<br> [0x80000170]:sub ra, ra, a6<br> [0x80000174]:sw ra, 8(a0)<br>    |
|   4|[0x80003210]<br>0x00000009|- rs1 : x28<br>                       |[0x80000180]:c.jalr t3<br> [0x80000188]:xori ra, ra, 3<br> [0x8000018c]:auipc a6, 0<br> [0x80000190]:addi a6, a6, 4076<br> [0x80000194]:andi a6, a6, 4092<br> [0x80000198]:sub ra, ra, a6<br> [0x8000019c]:sw ra, 12(a0)<br>   |
|   5|[0x80003214]<br>0x00000009|- rs1 : x14<br>                       |[0x800001a8]:c.jalr a4<br> [0x800001b0]:xori ra, ra, 3<br> [0x800001b4]:auipc a6, 0<br> [0x800001b8]:addi a6, a6, 4076<br> [0x800001bc]:andi a6, a6, 4092<br> [0x800001c0]:sub ra, ra, a6<br> [0x800001c4]:sw ra, 16(a0)<br>   |
|   6|[0x80003218]<br>0x00000009|- rs1 : x25<br>                       |[0x800001d0]:c.jalr s9<br> [0x800001d8]:xori ra, ra, 3<br> [0x800001dc]:auipc a6, 0<br> [0x800001e0]:addi a6, a6, 4076<br> [0x800001e4]:andi a6, a6, 4092<br> [0x800001e8]:sub ra, ra, a6<br> [0x800001ec]:sw ra, 20(a0)<br>   |
|   7|[0x8000321c]<br>0x00000009|- rs1 : x12<br>                       |[0x800001f8]:c.jalr a2<br> [0x80000200]:xori ra, ra, 3<br> [0x80000204]:auipc a6, 0<br> [0x80000208]:addi a6, a6, 4076<br> [0x8000020c]:andi a6, a6, 4092<br> [0x80000210]:sub ra, ra, a6<br> [0x80000214]:sw ra, 24(a0)<br>   |
|   8|[0x80003220]<br>0x00000009|- rs1 : x13<br>                       |[0x80000220]:c.jalr a3<br> [0x80000228]:xori ra, ra, 3<br> [0x8000022c]:auipc a6, 0<br> [0x80000230]:addi a6, a6, 4076<br> [0x80000234]:andi a6, a6, 4092<br> [0x80000238]:sub ra, ra, a6<br> [0x8000023c]:sw ra, 28(a0)<br>   |
|   9|[0x80003224]<br>0x00000009|- rs1 : x26<br>                       |[0x80000248]:c.jalr s10<br> [0x80000250]:xori ra, ra, 3<br> [0x80000254]:auipc a6, 0<br> [0x80000258]:addi a6, a6, 4076<br> [0x8000025c]:andi a6, a6, 4092<br> [0x80000260]:sub ra, ra, a6<br> [0x80000264]:sw ra, 32(a0)<br>  |
|  10|[0x80003228]<br>0x00000009|- rs1 : x11<br>                       |[0x80000270]:c.jalr a1<br> [0x80000278]:xori ra, ra, 3<br> [0x8000027c]:auipc a6, 0<br> [0x80000280]:addi a6, a6, 4076<br> [0x80000284]:andi a6, a6, 4092<br> [0x80000288]:sub ra, ra, a6<br> [0x8000028c]:sw ra, 36(a0)<br>   |
|  11|[0x8000322c]<br>0x00000009|- rs1 : x24<br>                       |[0x80000298]:c.jalr s8<br> [0x800002a0]:xori ra, ra, 3<br> [0x800002a4]:auipc a6, 0<br> [0x800002a8]:addi a6, a6, 4076<br> [0x800002ac]:andi a6, a6, 4092<br> [0x800002b0]:sub ra, ra, a6<br> [0x800002b4]:sw ra, 40(a0)<br>   |
|  12|[0x80003230]<br>0x00000009|- rs1 : x22<br>                       |[0x800002c0]:c.jalr s6<br> [0x800002c8]:xori ra, ra, 3<br> [0x800002cc]:auipc a6, 0<br> [0x800002d0]:addi a6, a6, 4076<br> [0x800002d4]:andi a6, a6, 4092<br> [0x800002d8]:sub ra, ra, a6<br> [0x800002dc]:sw ra, 44(a0)<br>   |
|  13|[0x80003234]<br>0x00000009|- rs1 : x6<br>                        |[0x800002e8]:c.jalr t1<br> [0x800002f0]:xori ra, ra, 3<br> [0x800002f4]:auipc a6, 0<br> [0x800002f8]:addi a6, a6, 4076<br> [0x800002fc]:andi a6, a6, 4092<br> [0x80000300]:sub ra, ra, a6<br> [0x80000304]:sw ra, 48(a0)<br>   |
|  14|[0x80003238]<br>0x00000009|- rs1 : x15<br>                       |[0x80000310]:c.jalr a5<br> [0x80000318]:xori ra, ra, 3<br> [0x8000031c]:auipc a6, 0<br> [0x80000320]:addi a6, a6, 4076<br> [0x80000324]:andi a6, a6, 4092<br> [0x80000328]:sub ra, ra, a6<br> [0x8000032c]:sw ra, 52(a0)<br>   |
|  15|[0x8000323c]<br>0x00000009|- rs1 : x17<br>                       |[0x80000338]:c.jalr a7<br> [0x80000340]:xori ra, ra, 3<br> [0x80000344]:auipc a6, 0<br> [0x80000348]:addi a6, a6, 4076<br> [0x8000034c]:andi a6, a6, 4092<br> [0x80000350]:sub ra, ra, a6<br> [0x80000354]:sw ra, 56(a0)<br>   |
|  16|[0x80003240]<br>0x00000009|- rs1 : x2<br>                        |[0x80000360]:c.jalr sp<br> [0x80000368]:xori ra, ra, 3<br> [0x8000036c]:auipc a6, 0<br> [0x80000370]:addi a6, a6, 4076<br> [0x80000374]:andi a6, a6, 4092<br> [0x80000378]:sub ra, ra, a6<br> [0x8000037c]:sw ra, 60(a0)<br>   |
|  17|[0x80003244]<br>0x00000009|- rs1 : x19<br>                       |[0x80000388]:c.jalr s3<br> [0x80000390]:xori ra, ra, 3<br> [0x80000394]:auipc a6, 0<br> [0x80000398]:addi a6, a6, 4076<br> [0x8000039c]:andi a6, a6, 4092<br> [0x800003a0]:sub ra, ra, a6<br> [0x800003a4]:sw ra, 64(a0)<br>   |
|  18|[0x80003248]<br>0x00000009|- rs1 : x1<br>                        |[0x800003b0]:c.jalr ra<br> [0x800003b8]:xori ra, ra, 3<br> [0x800003bc]:auipc a6, 0<br> [0x800003c0]:addi a6, a6, 4076<br> [0x800003c4]:andi a6, a6, 4092<br> [0x800003c8]:sub ra, ra, a6<br> [0x800003cc]:sw ra, 68(a0)<br>   |
|  19|[0x8000324c]<br>0x00000009|- rs1 : x23<br>                       |[0x800003d8]:c.jalr s7<br> [0x800003e0]:xori ra, ra, 3<br> [0x800003e4]:auipc a6, 0<br> [0x800003e8]:addi a6, a6, 4076<br> [0x800003ec]:andi a6, a6, 4092<br> [0x800003f0]:sub ra, ra, a6<br> [0x800003f4]:sw ra, 72(a0)<br>   |
|  20|[0x80003250]<br>0x00000009|- rs1 : x8<br>                        |[0x80000400]:c.jalr fp<br> [0x80000408]:xori ra, ra, 3<br> [0x8000040c]:auipc a6, 0<br> [0x80000410]:addi a6, a6, 4076<br> [0x80000414]:andi a6, a6, 4092<br> [0x80000418]:sub ra, ra, a6<br> [0x8000041c]:sw ra, 76(a0)<br>   |
|  21|[0x80003254]<br>0x00000009|- rs1 : x4<br>                        |[0x80000428]:c.jalr tp<br> [0x80000430]:xori ra, ra, 3<br> [0x80000434]:auipc a6, 0<br> [0x80000438]:addi a6, a6, 4076<br> [0x8000043c]:andi a6, a6, 4092<br> [0x80000440]:sub ra, ra, a6<br> [0x80000444]:sw ra, 80(a0)<br>   |
|  22|[0x80003258]<br>0x00000009|- rs1 : x9<br>                        |[0x80000450]:c.jalr s1<br> [0x80000458]:xori ra, ra, 3<br> [0x8000045c]:auipc a6, 0<br> [0x80000460]:addi a6, a6, 4076<br> [0x80000464]:andi a6, a6, 4092<br> [0x80000468]:sub ra, ra, a6<br> [0x8000046c]:sw ra, 84(a0)<br>   |
|  23|[0x8000325c]<br>0x00000009|- rs1 : x3<br>                        |[0x80000478]:c.jalr gp<br> [0x80000480]:xori ra, ra, 3<br> [0x80000484]:auipc a6, 0<br> [0x80000488]:addi a6, a6, 4076<br> [0x8000048c]:andi a6, a6, 4092<br> [0x80000490]:sub ra, ra, a6<br> [0x80000494]:sw ra, 88(a0)<br>   |
|  24|[0x80003260]<br>0x00000009|- rs1 : x20<br>                       |[0x800004a0]:c.jalr s4<br> [0x800004a8]:xori ra, ra, 3<br> [0x800004ac]:auipc a6, 0<br> [0x800004b0]:addi a6, a6, 4076<br> [0x800004b4]:andi a6, a6, 4092<br> [0x800004b8]:sub ra, ra, a6<br> [0x800004bc]:sw ra, 92(a0)<br>   |
|  25|[0x80003264]<br>0x00000009|- rs1 : x7<br>                        |[0x800004c8]:c.jalr t2<br> [0x800004d0]:xori ra, ra, 3<br> [0x800004d4]:auipc a6, 0<br> [0x800004d8]:addi a6, a6, 4076<br> [0x800004dc]:andi a6, a6, 4092<br> [0x800004e0]:sub ra, ra, a6<br> [0x800004e4]:sw ra, 96(a0)<br>   |
|  26|[0x80003268]<br>0x00000009|- rs1 : x27<br>                       |[0x800004f0]:c.jalr s11<br> [0x800004f8]:xori ra, ra, 3<br> [0x800004fc]:auipc a6, 0<br> [0x80000500]:addi a6, a6, 4076<br> [0x80000504]:andi a6, a6, 4092<br> [0x80000508]:sub ra, ra, a6<br> [0x8000050c]:sw ra, 100(a0)<br> |
|  27|[0x8000326c]<br>0x00000009|- rs1 : x21<br>                       |[0x80000518]:c.jalr s5<br> [0x80000520]:xori ra, ra, 3<br> [0x80000524]:auipc a6, 0<br> [0x80000528]:addi a6, a6, 4076<br> [0x8000052c]:andi a6, a6, 4092<br> [0x80000530]:sub ra, ra, a6<br> [0x80000534]:sw ra, 104(a0)<br>  |
|  28|[0x80003270]<br>0x00000009|- rs1 : x31<br>                       |[0x80000540]:c.jalr t6<br> [0x80000548]:xori ra, ra, 3<br> [0x8000054c]:auipc gp, 0<br> [0x80000550]:addi gp, gp, 4076<br> [0x80000554]:andi gp, gp, 4092<br> [0x80000558]:sub ra, ra, gp<br> [0x8000055c]:sw ra, 108(a0)<br>  |
|  29|[0x80003274]<br>0x00000009|- rs1 : x16<br>                       |[0x80000570]:c.jalr a6<br> [0x80000578]:xori ra, ra, 3<br> [0x8000057c]:auipc gp, 0<br> [0x80000580]:addi gp, gp, 4076<br> [0x80000584]:andi gp, gp, 4092<br> [0x80000588]:sub ra, ra, gp<br> [0x8000058c]:c.swsp ra, 0<br>    |
|  30|[0x80003278]<br>0x0000000F|- rs1 : x18<br>                       |[0x80000596]:c.jalr s2<br> [0x8000059e]:xori ra, ra, 3<br> [0x800005a2]:auipc gp, 0<br> [0x800005a6]:addi gp, gp, 4076<br> [0x800005aa]:andi gp, gp, 4092<br> [0x800005ae]:sub ra, ra, gp<br> [0x800005b2]:c.swsp ra, 1<br>    |
|  31|[0x8000327c]<br>0x00000009|- rs1 : x10<br>                       |[0x800005bc]:c.jalr a0<br> [0x800005c4]:xori ra, ra, 3<br> [0x800005c8]:auipc gp, 0<br> [0x800005cc]:addi gp, gp, 4076<br> [0x800005d0]:andi gp, gp, 4092<br> [0x800005d4]:sub ra, ra, gp<br> [0x800005d8]:c.swsp ra, 2<br>    |
