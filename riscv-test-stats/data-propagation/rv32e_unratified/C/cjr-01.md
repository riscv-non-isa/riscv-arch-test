
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000078', '0x800002e0')]      |
| SIG_REGION                | [('0x80002204', '0x80002240', '15 words')]      |
| COV_LABELS                | cjr      |
| TEST_NAME                 | /home/bilalsakhawat/riscof_work/src/cjr-01.S/cjr-01.S    |
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

|s.no|        signature         |            coverpoints            |                                                                                                           code                                                                                                            |
|---:|--------------------------|-----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002204]<br>0x00000013|- opcode : c.jr<br> - rs1 : x6<br> |[0x80000088]:c.jr t1<br> [0x80000090]:xori t1, t1, 3<br> [0x80000094]:auipc t2, 0<br> [0x80000098]:addi t2, t2, 4076<br> [0x8000009c]:andi t2, t2, 4092<br> [0x800000a0]:sub t1, t1, t2<br> [0x800000a4]:sw t1, 0(ra)<br>  |
|   2|[0x80002208]<br>0x00000013|- rs1 : x15<br>                    |[0x800000b0]:c.jr a5<br> [0x800000b8]:xori a5, a5, 3<br> [0x800000bc]:auipc t2, 0<br> [0x800000c0]:addi t2, t2, 4076<br> [0x800000c4]:andi t2, t2, 4092<br> [0x800000c8]:sub a5, a5, t2<br> [0x800000cc]:sw a5, 4(ra)<br>  |
|   3|[0x8000220c]<br>0x00000013|- rs1 : x14<br>                    |[0x800000d8]:c.jr a4<br> [0x800000e0]:xori a4, a4, 3<br> [0x800000e4]:auipc t2, 0<br> [0x800000e8]:addi t2, t2, 4076<br> [0x800000ec]:andi t2, t2, 4092<br> [0x800000f0]:sub a4, a4, t2<br> [0x800000f4]:sw a4, 8(ra)<br>  |
|   4|[0x80002210]<br>0x00000013|- rs1 : x13<br>                    |[0x80000100]:c.jr a3<br> [0x80000108]:xori a3, a3, 3<br> [0x8000010c]:auipc t2, 0<br> [0x80000110]:addi t2, t2, 4076<br> [0x80000114]:andi t2, t2, 4092<br> [0x80000118]:sub a3, a3, t2<br> [0x8000011c]:sw a3, 12(ra)<br> |
|   5|[0x80002214]<br>0x00000013|- rs1 : x3<br>                     |[0x80000128]:c.jr gp<br> [0x80000130]:xori gp, gp, 3<br> [0x80000134]:auipc t2, 0<br> [0x80000138]:addi t2, t2, 4076<br> [0x8000013c]:andi t2, t2, 4092<br> [0x80000140]:sub gp, gp, t2<br> [0x80000144]:sw gp, 16(ra)<br> |
|   6|[0x80002218]<br>0x00000013|- rs1 : x8<br>                     |[0x80000150]:c.jr fp<br> [0x80000158]:xori fp, fp, 3<br> [0x8000015c]:auipc t2, 0<br> [0x80000160]:addi t2, t2, 4076<br> [0x80000164]:andi t2, t2, 4092<br> [0x80000168]:sub fp, fp, t2<br> [0x8000016c]:sw fp, 20(ra)<br> |
|   7|[0x8000221c]<br>0x00000013|- rs1 : x2<br>                     |[0x80000178]:c.jr sp<br> [0x80000180]:xori sp, sp, 3<br> [0x80000184]:auipc t2, 0<br> [0x80000188]:addi t2, t2, 4076<br> [0x8000018c]:andi t2, t2, 4092<br> [0x80000190]:sub sp, sp, t2<br> [0x80000194]:sw sp, 24(ra)<br> |
|   8|[0x80002220]<br>0x00000013|- rs1 : x4<br>                     |[0x800001a0]:c.jr tp<br> [0x800001a8]:xori tp, tp, 3<br> [0x800001ac]:auipc t2, 0<br> [0x800001b0]:addi t2, t2, 4076<br> [0x800001b4]:andi t2, t2, 4092<br> [0x800001b8]:sub tp, tp, t2<br> [0x800001bc]:sw tp, 28(ra)<br> |
|   9|[0x80002224]<br>0x00000013|- rs1 : x12<br>                    |[0x800001c8]:c.jr a2<br> [0x800001d0]:xori a2, a2, 3<br> [0x800001d4]:auipc t2, 0<br> [0x800001d8]:addi t2, t2, 4076<br> [0x800001dc]:andi t2, t2, 4092<br> [0x800001e0]:sub a2, a2, t2<br> [0x800001e4]:sw a2, 32(ra)<br> |
|  10|[0x80002228]<br>0x00000013|- rs1 : x5<br>                     |[0x800001f0]:c.jr t0<br> [0x800001f8]:xori t0, t0, 3<br> [0x800001fc]:auipc t2, 0<br> [0x80000200]:addi t2, t2, 4076<br> [0x80000204]:andi t2, t2, 4092<br> [0x80000208]:sub t0, t0, t2<br> [0x8000020c]:sw t0, 36(ra)<br> |
|  11|[0x8000222c]<br>0x00000013|- rs1 : x7<br>                     |[0x80000218]:c.jr t2<br> [0x80000220]:xori t2, t2, 3<br> [0x80000224]:auipc gp, 0<br> [0x80000228]:addi gp, gp, 4076<br> [0x8000022c]:andi gp, gp, 4092<br> [0x80000230]:sub t2, t2, gp<br> [0x80000234]:sw t2, 40(ra)<br> |
|  12|[0x80002230]<br>0x00000013|- rs1 : x9<br>                     |[0x80000248]:c.jr s1<br> [0x80000250]:xori s1, s1, 3<br> [0x80000254]:auipc gp, 0<br> [0x80000258]:addi gp, gp, 4076<br> [0x8000025c]:andi gp, gp, 4092<br> [0x80000260]:sub s1, s1, gp<br> [0x80000264]:c.swsp s1, 0<br>  |
|  13|[0x80002234]<br>0x00000011|- rs1 : x1<br>                     |[0x8000026e]:c.jr ra<br> [0x80000276]:xori ra, ra, 3<br> [0x8000027a]:auipc gp, 0<br> [0x8000027e]:addi gp, gp, 4076<br> [0x80000282]:andi gp, gp, 4092<br> [0x80000286]:sub ra, ra, gp<br> [0x8000028a]:c.swsp ra, 1<br>  |
|  14|[0x80002238]<br>0x00000013|- rs1 : x11<br>                    |[0x80000294]:c.jr a1<br> [0x8000029c]:xori a1, a1, 3<br> [0x800002a0]:auipc gp, 0<br> [0x800002a4]:addi gp, gp, 4076<br> [0x800002a8]:andi gp, gp, 4092<br> [0x800002ac]:sub a1, a1, gp<br> [0x800002b0]:c.swsp a1, 2<br>  |
|  15|[0x8000223c]<br>0x00000011|- rs1 : x10<br>                    |[0x800002ba]:c.jr a0<br> [0x800002c2]:xori a0, a0, 3<br> [0x800002c6]:auipc gp, 0<br> [0x800002ca]:addi gp, gp, 4076<br> [0x800002ce]:andi gp, gp, 4092<br> [0x800002d2]:sub a0, a0, gp<br> [0x800002d6]:c.swsp a0, 3<br>  |
