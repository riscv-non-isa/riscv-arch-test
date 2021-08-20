
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000078', '0x800002d0')]      |
| SIG_REGION                | [('0x80002204', '0x80002240', '15 words')]      |
| COV_LABELS                | cjalr      |
| TEST_NAME                 | /home/bilalsakhawat/riscof_work/src/cjalr-01.S/cjalr-01.S    |
| Total Number of coverpoints| 18     |
| Total Coverpoints Hit     | 16      |
| Total Signature Updates   | 15      |
| STAT1                     | 15      |
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

|s.no|        signature         |             coverpoints             |                                                                                                            code                                                                                                             |
|---:|--------------------------|-------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002204]<br>0x00000009|- opcode : c.jalr<br> - rs1 : x6<br> |[0x80000088]:c.jalr t1<br> [0x80000090]:xori ra, ra, 3<br> [0x80000094]:auipc a1, 0<br> [0x80000098]:addi a1, a1, 4076<br> [0x8000009c]:c.andi a1, 60<br> [0x8000009e]:sub ra, ra, a1<br> [0x800000a2]:sw ra, 0(a0)<br>      |
|   2|[0x80002208]<br>0x0000000F|- rs1 : x4<br>                       |[0x800000ae]:c.jalr tp<br> [0x800000b6]:xori ra, ra, 3<br> [0x800000ba]:auipc a1, 0<br> [0x800000be]:addi a1, a1, 4076<br> [0x800000c2]:c.andi a1, 60<br> [0x800000c4]:sub ra, ra, a1<br> [0x800000c8]:sw ra, 4(a0)<br>      |
|   3|[0x8000220c]<br>0x00000009|- rs1 : x3<br>                       |[0x800000d4]:c.jalr gp<br> [0x800000dc]:xori ra, ra, 3<br> [0x800000e0]:auipc a1, 0<br> [0x800000e4]:addi a1, a1, 4076<br> [0x800000e8]:c.andi a1, 60<br> [0x800000ea]:sub ra, ra, a1<br> [0x800000ee]:sw ra, 8(a0)<br>      |
|   4|[0x80002210]<br>0x0000000F|- rs1 : x1<br>                       |[0x800000fa]:c.jalr ra<br> [0x80000102]:xori ra, ra, 3<br> [0x80000106]:auipc a1, 0<br> [0x8000010a]:addi a1, a1, 4076<br> [0x8000010e]:c.andi a1, 60<br> [0x80000110]:sub ra, ra, a1<br> [0x80000114]:sw ra, 12(a0)<br>     |
|   5|[0x80002214]<br>0x00000009|- rs1 : x12<br>                      |[0x80000120]:c.jalr a2<br> [0x80000128]:xori ra, ra, 3<br> [0x8000012c]:auipc a1, 0<br> [0x80000130]:addi a1, a1, 4076<br> [0x80000134]:c.andi a1, 60<br> [0x80000136]:sub ra, ra, a1<br> [0x8000013a]:sw ra, 16(a0)<br>     |
|   6|[0x80002218]<br>0x0000000F|- rs1 : x2<br>                       |[0x80000146]:c.jalr sp<br> [0x8000014e]:xori ra, ra, 3<br> [0x80000152]:auipc a1, 0<br> [0x80000156]:addi a1, a1, 4076<br> [0x8000015a]:c.andi a1, 60<br> [0x8000015c]:sub ra, ra, a1<br> [0x80000160]:sw ra, 20(a0)<br>     |
|   7|[0x8000221c]<br>0x00000009|- rs1 : x8<br>                       |[0x8000016c]:c.jalr fp<br> [0x80000174]:xori ra, ra, 3<br> [0x80000178]:auipc a1, 0<br> [0x8000017c]:addi a1, a1, 4076<br> [0x80000180]:c.andi a1, 60<br> [0x80000182]:sub ra, ra, a1<br> [0x80000186]:sw ra, 24(a0)<br>     |
|   8|[0x80002220]<br>0x0000000F|- rs1 : x7<br>                       |[0x80000192]:c.jalr t2<br> [0x8000019a]:xori ra, ra, 3<br> [0x8000019e]:auipc a1, 0<br> [0x800001a2]:addi a1, a1, 4076<br> [0x800001a6]:c.andi a1, 60<br> [0x800001a8]:sub ra, ra, a1<br> [0x800001ac]:sw ra, 28(a0)<br>     |
|   9|[0x80002224]<br>0x00000009|- rs1 : x15<br>                      |[0x800001b8]:c.jalr a5<br> [0x800001c0]:xori ra, ra, 3<br> [0x800001c4]:auipc a1, 0<br> [0x800001c8]:addi a1, a1, 4076<br> [0x800001cc]:c.andi a1, 60<br> [0x800001ce]:sub ra, ra, a1<br> [0x800001d2]:sw ra, 32(a0)<br>     |
|  10|[0x80002228]<br>0x0000000F|- rs1 : x5<br>                       |[0x800001de]:c.jalr t0<br> [0x800001e6]:xori ra, ra, 3<br> [0x800001ea]:auipc a1, 0<br> [0x800001ee]:addi a1, a1, 4076<br> [0x800001f2]:c.andi a1, 60<br> [0x800001f4]:sub ra, ra, a1<br> [0x800001f8]:sw ra, 36(a0)<br>     |
|  11|[0x8000222c]<br>0x00000009|- rs1 : x9<br>                       |[0x80000204]:c.jalr s1<br> [0x8000020c]:xori ra, ra, 3<br> [0x80000210]:auipc a1, 0<br> [0x80000214]:addi a1, a1, 4076<br> [0x80000218]:c.andi a1, 60<br> [0x8000021a]:sub ra, ra, a1<br> [0x8000021e]:sw ra, 40(a0)<br>     |
|  12|[0x80002230]<br>0x0000000F|- rs1 : x14<br>                      |[0x8000022a]:c.jalr a4<br> [0x80000232]:xori ra, ra, 3<br> [0x80000236]:auipc gp, 0<br> [0x8000023a]:addi gp, gp, 4076<br> [0x8000023e]:andi gp, gp, 4092<br> [0x80000242]:sub ra, ra, gp<br> [0x80000246]:sw ra, 44(a0)<br> |
|  13|[0x80002234]<br>0x0000000F|- rs1 : x11<br>                      |[0x8000025a]:c.jalr a1<br> [0x80000262]:xori ra, ra, 3<br> [0x80000266]:auipc gp, 0<br> [0x8000026a]:addi gp, gp, 4076<br> [0x8000026e]:andi gp, gp, 4092<br> [0x80000272]:sub ra, ra, gp<br> [0x80000276]:c.swsp ra, 0<br>  |
|  14|[0x80002238]<br>0x00000009|- rs1 : x13<br>                      |[0x80000280]:c.jalr a3<br> [0x80000288]:xori ra, ra, 3<br> [0x8000028c]:auipc gp, 0<br> [0x80000290]:addi gp, gp, 4076<br> [0x80000294]:andi gp, gp, 4092<br> [0x80000298]:sub ra, ra, gp<br> [0x8000029c]:c.swsp ra, 1<br>  |
|  15|[0x8000223c]<br>0x0000000F|- rs1 : x10<br>                      |[0x800002a6]:c.jalr a0<br> [0x800002ae]:xori ra, ra, 3<br> [0x800002b2]:auipc gp, 0<br> [0x800002b6]:addi gp, gp, 4076<br> [0x800002ba]:andi gp, gp, 4092<br> [0x800002be]:sub ra, ra, gp<br> [0x800002c2]:c.swsp ra, 2<br>  |
