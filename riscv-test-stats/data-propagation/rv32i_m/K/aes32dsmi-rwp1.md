
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000720')]      |
| SIG_REGION                | [('0x80002204', '0x8000226c', '26 words')]      |
| COV_LABELS                | aes32dsmi      |
| TEST_NAME                 | /scratch/git-repo/github/riscof/riscof_work/rv32i_m/K_unratified/src/aes32dsmi-rwp1.S/ref.S    |
| Total Number of coverpoints| 384     |
| Total Coverpoints Hit     | 80      |
| Total Signature Updates   | 26      |
| STAT1                     | 26      |
| STAT2                     | 0      |
| STAT3                     | 78     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```
[0x80000128]:aes32dsmi t0, t0, ra, 0

[0x8000012c]:aes32dsmi t0, t0, sp, 1

[0x80000130]:aes32dsmi t0, t0, gp, 2

[0x80000164]:aes32dsmi t1, t1, sp, 0

[0x80000168]:aes32dsmi t1, t1, gp, 1

[0x8000016c]:aes32dsmi t1, t1, tp, 2

[0x800001a0]:aes32dsmi t2, t2, gp, 0

[0x800001a4]:aes32dsmi t2, t2, tp, 1

[0x800001a8]:aes32dsmi t2, t2, t0, 2

[0x800001dc]:aes32dsmi fp, fp, tp, 0

[0x800001e0]:aes32dsmi fp, fp, t0, 1

[0x800001e4]:aes32dsmi fp, fp, t1, 2

[0x80000218]:aes32dsmi s1, s1, t0, 0

[0x8000021c]:aes32dsmi s1, s1, t1, 1

[0x80000220]:aes32dsmi s1, s1, t2, 2

[0x80000254]:aes32dsmi a0, a0, t1, 0

[0x80000258]:aes32dsmi a0, a0, t2, 1

[0x8000025c]:aes32dsmi a0, a0, fp, 2

[0x80000290]:aes32dsmi a1, a1, t2, 0

[0x80000294]:aes32dsmi a1, a1, fp, 1

[0x80000298]:aes32dsmi a1, a1, s1, 2

[0x800002cc]:aes32dsmi a2, a2, fp, 0

[0x800002d0]:aes32dsmi a2, a2, s1, 1

[0x800002d4]:aes32dsmi a2, a2, a0, 2

[0x80000308]:aes32dsmi a3, a3, s1, 0

[0x8000030c]:aes32dsmi a3, a3, a0, 1

[0x80000310]:aes32dsmi a3, a3, a1, 2

[0x80000344]:aes32dsmi a4, a4, a0, 0

[0x80000348]:aes32dsmi a4, a4, a1, 1

[0x8000034c]:aes32dsmi a4, a4, a2, 2

[0x80000380]:aes32dsmi a5, a5, a1, 0

[0x80000384]:aes32dsmi a5, a5, a2, 1

[0x80000388]:aes32dsmi a5, a5, a3, 2

[0x800003bc]:aes32dsmi a6, a6, a2, 0

[0x800003c0]:aes32dsmi a6, a6, a3, 1

[0x800003c4]:aes32dsmi a6, a6, a4, 2

[0x800003f8]:aes32dsmi a7, a7, a3, 0

[0x800003fc]:aes32dsmi a7, a7, a4, 1

[0x80000400]:aes32dsmi a7, a7, a5, 2

[0x80000434]:aes32dsmi s2, s2, a4, 0

[0x80000438]:aes32dsmi s2, s2, a5, 1

[0x8000043c]:aes32dsmi s2, s2, a6, 2

[0x80000470]:aes32dsmi s3, s3, a5, 0

[0x80000474]:aes32dsmi s3, s3, a6, 1

[0x80000478]:aes32dsmi s3, s3, a7, 2

[0x800004ac]:aes32dsmi s4, s4, a6, 0

[0x800004b0]:aes32dsmi s4, s4, a7, 1

[0x800004b4]:aes32dsmi s4, s4, s2, 2

[0x800004e8]:aes32dsmi s5, s5, a7, 0

[0x800004ec]:aes32dsmi s5, s5, s2, 1

[0x800004f0]:aes32dsmi s5, s5, s3, 2

[0x80000524]:aes32dsmi s6, s6, s2, 0

[0x80000528]:aes32dsmi s6, s6, s3, 1

[0x8000052c]:aes32dsmi s6, s6, s4, 2

[0x80000560]:aes32dsmi s7, s7, s3, 0

[0x80000564]:aes32dsmi s7, s7, s4, 1

[0x80000568]:aes32dsmi s7, s7, s5, 2

[0x8000059c]:aes32dsmi s8, s8, s4, 0

[0x800005a0]:aes32dsmi s8, s8, s5, 1

[0x800005a4]:aes32dsmi s8, s8, s6, 2

[0x800005d8]:aes32dsmi s9, s9, s5, 0

[0x800005dc]:aes32dsmi s9, s9, s6, 1

[0x800005e0]:aes32dsmi s9, s9, s7, 2

[0x80000614]:aes32dsmi s10, s10, s6, 0

[0x80000618]:aes32dsmi s10, s10, s7, 1

[0x8000061c]:aes32dsmi s10, s10, s8, 2

[0x80000650]:aes32dsmi s11, s11, s7, 0

[0x80000654]:aes32dsmi s11, s11, s8, 1

[0x80000658]:aes32dsmi s11, s11, s9, 2

[0x8000068c]:aes32dsmi t3, t3, s8, 0

[0x80000690]:aes32dsmi t3, t3, s9, 1

[0x80000694]:aes32dsmi t3, t3, s10, 2

[0x800006c8]:aes32dsmi t4, t4, s9, 0

[0x800006cc]:aes32dsmi t4, t4, s10, 1

[0x800006d0]:aes32dsmi t4, t4, s11, 2

[0x80000704]:aes32dsmi t5, t5, s10, 0

[0x80000708]:aes32dsmi t5, t5, s11, 1

[0x8000070c]:aes32dsmi t5, t5, t3, 2



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

|s.no|        signature         |  coverpoints   |                                    code                                    |
|---:|--------------------------|----------------|----------------------------------------------------------------------------|
|   1|[0x80002204]<br>0x854A11BA|- rs2 : x4<br>  |[0x80000134]:aes32dsmi t0, t0, tp, 3<br> [0x80000138]:sw t0, 0(t6)<br>      |
|   2|[0x80002208]<br>0xF4AB8703|- rs2 : x5<br>  |[0x80000170]:aes32dsmi t1, t1, t0, 3<br> [0x80000174]:sw t1, 4(t6)<br>      |
|   3|[0x8000220c]<br>0x33E273B3|- rs2 : x6<br>  |[0x800001ac]:aes32dsmi t2, t2, t1, 3<br> [0x800001b0]:sw t2, 8(t6)<br>      |
|   4|[0x80002210]<br>0x4E582BD6|- rs2 : x7<br>  |[0x800001e8]:aes32dsmi fp, fp, t2, 3<br> [0x800001ec]:sw fp, 12(t6)<br>     |
|   5|[0x80002214]<br>0x616DB008|- rs2 : x8<br>  |[0x80000224]:aes32dsmi s1, s1, fp, 3<br> [0x80000228]:sw s1, 16(t6)<br>     |
|   6|[0x80002218]<br>0x42F7A403|- rs2 : x9<br>  |[0x80000260]:aes32dsmi a0, a0, s1, 3<br> [0x80000264]:sw a0, 20(t6)<br>     |
|   7|[0x8000221c]<br>0x350F65F5|- rs2 : x10<br> |[0x8000029c]:aes32dsmi a1, a1, a0, 3<br> [0x800002a0]:sw a1, 24(t6)<br>     |
|   8|[0x80002220]<br>0xE06DB9F1|- rs2 : x11<br> |[0x800002d8]:aes32dsmi a2, a2, a1, 3<br> [0x800002dc]:sw a2, 28(t6)<br>     |
|   9|[0x80002224]<br>0x878F47AD|- rs2 : x12<br> |[0x80000314]:aes32dsmi a3, a3, a2, 3<br> [0x80000318]:sw a3, 32(t6)<br>     |
|  10|[0x80002228]<br>0xD5F955F4|- rs2 : x13<br> |[0x80000350]:aes32dsmi a4, a4, a3, 3<br> [0x80000354]:sw a4, 36(t6)<br>     |
|  11|[0x8000222c]<br>0xA23CEC4F|- rs2 : x14<br> |[0x8000038c]:aes32dsmi a5, a5, a4, 3<br> [0x80000390]:sw a5, 40(t6)<br>     |
|  12|[0x80002230]<br>0xAA76CC0A|- rs2 : x15<br> |[0x800003c8]:aes32dsmi a6, a6, a5, 3<br> [0x800003cc]:sw a6, 44(t6)<br>     |
|  13|[0x80002234]<br>0x3E540DC4|- rs2 : x16<br> |[0x80000404]:aes32dsmi a7, a7, a6, 3<br> [0x80000408]:sw a7, 48(t6)<br>     |
|  14|[0x80002238]<br>0xAD25C4FA|- rs2 : x17<br> |[0x80000440]:aes32dsmi s2, s2, a7, 3<br> [0x80000444]:sw s2, 52(t6)<br>     |
|  15|[0x8000223c]<br>0x5F6B61F3|- rs2 : x18<br> |[0x8000047c]:aes32dsmi s3, s3, s2, 3<br> [0x80000480]:sw s3, 56(t6)<br>     |
|  16|[0x80002240]<br>0x57B35446|- rs2 : x19<br> |[0x800004b8]:aes32dsmi s4, s4, s3, 3<br> [0x800004bc]:sw s4, 60(t6)<br>     |
|  17|[0x80002244]<br>0x700DE239|- rs2 : x20<br> |[0x800004f4]:aes32dsmi s5, s5, s4, 3<br> [0x800004f8]:sw s5, 64(t6)<br>     |
|  18|[0x80002248]<br>0x1D84ED7C|- rs2 : x21<br> |[0x80000530]:aes32dsmi s6, s6, s5, 3<br> [0x80000534]:sw s6, 68(t6)<br>     |
|  19|[0x8000224c]<br>0xABB1A112|- rs2 : x22<br> |[0x8000056c]:aes32dsmi s7, s7, s6, 3<br> [0x80000570]:sw s7, 72(t6)<br>     |
|  20|[0x80002250]<br>0x4C1956B5|- rs2 : x23<br> |[0x800005a8]:aes32dsmi s8, s8, s7, 3<br> [0x800005ac]:sw s8, 76(t6)<br>     |
|  21|[0x80002254]<br>0xE332DA52|- rs2 : x24<br> |[0x800005e4]:aes32dsmi s9, s9, s8, 3<br> [0x800005e8]:sw s9, 80(t6)<br>     |
|  22|[0x80002258]<br>0x437213D9|- rs2 : x25<br> |[0x80000620]:aes32dsmi s10, s10, s9, 3<br> [0x80000624]:sw s10, 84(t6)<br>  |
|  23|[0x8000225c]<br>0x28E3E41A|- rs2 : x26<br> |[0x8000065c]:aes32dsmi s11, s11, s10, 3<br> [0x80000660]:sw s11, 88(t6)<br> |
|  24|[0x80002260]<br>0x3396EC80|- rs2 : x27<br> |[0x80000698]:aes32dsmi t3, t3, s11, 3<br> [0x8000069c]:sw t3, 92(t6)<br>    |
|  25|[0x80002264]<br>0xD4689CA6|- rs2 : x28<br> |[0x800006d4]:aes32dsmi t4, t4, t3, 3<br> [0x800006d8]:sw t4, 96(t6)<br>     |
|  26|[0x80002268]<br>0x13DD8186|- rs2 : x29<br> |[0x80000710]:aes32dsmi t5, t5, t4, 3<br> [0x80000714]:sw t5, 100(t6)<br>    |
