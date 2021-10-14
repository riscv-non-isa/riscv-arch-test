
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
| COV_LABELS                | sm4ks      |
| TEST_NAME                 | /scratch/git-repo/github/riscof/riscof_work/rv32i_m/K_unratified/src/sm4ks-rwp1.S/ref.S    |
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
[0x80000128]:sm4ks t0, t0, ra, 0

[0x8000012c]:sm4ks t0, t0, sp, 1

[0x80000130]:sm4ks t0, t0, gp, 2

[0x80000164]:sm4ks t1, t1, sp, 0

[0x80000168]:sm4ks t1, t1, gp, 1

[0x8000016c]:sm4ks t1, t1, tp, 2

[0x800001a0]:sm4ks t2, t2, gp, 0

[0x800001a4]:sm4ks t2, t2, tp, 1

[0x800001a8]:sm4ks t2, t2, t0, 2

[0x800001dc]:sm4ks fp, fp, tp, 0

[0x800001e0]:sm4ks fp, fp, t0, 1

[0x800001e4]:sm4ks fp, fp, t1, 2

[0x80000218]:sm4ks s1, s1, t0, 0

[0x8000021c]:sm4ks s1, s1, t1, 1

[0x80000220]:sm4ks s1, s1, t2, 2

[0x80000254]:sm4ks a0, a0, t1, 0

[0x80000258]:sm4ks a0, a0, t2, 1

[0x8000025c]:sm4ks a0, a0, fp, 2

[0x80000290]:sm4ks a1, a1, t2, 0

[0x80000294]:sm4ks a1, a1, fp, 1

[0x80000298]:sm4ks a1, a1, s1, 2

[0x800002cc]:sm4ks a2, a2, fp, 0

[0x800002d0]:sm4ks a2, a2, s1, 1

[0x800002d4]:sm4ks a2, a2, a0, 2

[0x80000308]:sm4ks a3, a3, s1, 0

[0x8000030c]:sm4ks a3, a3, a0, 1

[0x80000310]:sm4ks a3, a3, a1, 2

[0x80000344]:sm4ks a4, a4, a0, 0

[0x80000348]:sm4ks a4, a4, a1, 1

[0x8000034c]:sm4ks a4, a4, a2, 2

[0x80000380]:sm4ks a5, a5, a1, 0

[0x80000384]:sm4ks a5, a5, a2, 1

[0x80000388]:sm4ks a5, a5, a3, 2

[0x800003bc]:sm4ks a6, a6, a2, 0

[0x800003c0]:sm4ks a6, a6, a3, 1

[0x800003c4]:sm4ks a6, a6, a4, 2

[0x800003f8]:sm4ks a7, a7, a3, 0

[0x800003fc]:sm4ks a7, a7, a4, 1

[0x80000400]:sm4ks a7, a7, a5, 2

[0x80000434]:sm4ks s2, s2, a4, 0

[0x80000438]:sm4ks s2, s2, a5, 1

[0x8000043c]:sm4ks s2, s2, a6, 2

[0x80000470]:sm4ks s3, s3, a5, 0

[0x80000474]:sm4ks s3, s3, a6, 1

[0x80000478]:sm4ks s3, s3, a7, 2

[0x800004ac]:sm4ks s4, s4, a6, 0

[0x800004b0]:sm4ks s4, s4, a7, 1

[0x800004b4]:sm4ks s4, s4, s2, 2

[0x800004e8]:sm4ks s5, s5, a7, 0

[0x800004ec]:sm4ks s5, s5, s2, 1

[0x800004f0]:sm4ks s5, s5, s3, 2

[0x80000524]:sm4ks s6, s6, s2, 0

[0x80000528]:sm4ks s6, s6, s3, 1

[0x8000052c]:sm4ks s6, s6, s4, 2

[0x80000560]:sm4ks s7, s7, s3, 0

[0x80000564]:sm4ks s7, s7, s4, 1

[0x80000568]:sm4ks s7, s7, s5, 2

[0x8000059c]:sm4ks s8, s8, s4, 0

[0x800005a0]:sm4ks s8, s8, s5, 1

[0x800005a4]:sm4ks s8, s8, s6, 2

[0x800005d8]:sm4ks s9, s9, s5, 0

[0x800005dc]:sm4ks s9, s9, s6, 1

[0x800005e0]:sm4ks s9, s9, s7, 2

[0x80000614]:sm4ks s10, s10, s6, 0

[0x80000618]:sm4ks s10, s10, s7, 1

[0x8000061c]:sm4ks s10, s10, s8, 2

[0x80000650]:sm4ks s11, s11, s7, 0

[0x80000654]:sm4ks s11, s11, s8, 1

[0x80000658]:sm4ks s11, s11, s9, 2

[0x8000068c]:sm4ks t3, t3, s8, 0

[0x80000690]:sm4ks t3, t3, s9, 1

[0x80000694]:sm4ks t3, t3, s10, 2

[0x800006c8]:sm4ks t4, t4, s9, 0

[0x800006cc]:sm4ks t4, t4, s10, 1

[0x800006d0]:sm4ks t4, t4, s11, 2

[0x80000704]:sm4ks t5, t5, s10, 0

[0x80000708]:sm4ks t5, t5, s11, 1

[0x8000070c]:sm4ks t5, t5, t3, 2



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

|s.no|        signature         |  coverpoints   |                                  code                                  |
|---:|--------------------------|----------------|------------------------------------------------------------------------|
|   1|[0x80002204]<br>0xFDC9628C|- rs2 : x4<br>  |[0x80000134]:sm4ks t0, t0, tp, 3<br> [0x80000138]:sw t0, 0(t6)<br>      |
|   2|[0x80002208]<br>0x1160F4E3|- rs2 : x5<br>  |[0x80000170]:sm4ks t1, t1, t0, 3<br> [0x80000174]:sw t1, 4(t6)<br>      |
|   3|[0x8000220c]<br>0x8CD60D19|- rs2 : x6<br>  |[0x800001ac]:sm4ks t2, t2, t1, 3<br> [0x800001b0]:sw t2, 8(t6)<br>      |
|   4|[0x80002210]<br>0xC152E334|- rs2 : x7<br>  |[0x800001e8]:sm4ks fp, fp, t2, 3<br> [0x800001ec]:sw fp, 12(t6)<br>     |
|   5|[0x80002214]<br>0x14B15C43|- rs2 : x8<br>  |[0x80000224]:sm4ks s1, s1, fp, 3<br> [0x80000228]:sw s1, 16(t6)<br>     |
|   6|[0x80002218]<br>0x1548484A|- rs2 : x9<br>  |[0x80000260]:sm4ks a0, a0, s1, 3<br> [0x80000264]:sw a0, 20(t6)<br>     |
|   7|[0x8000221c]<br>0x4325F19C|- rs2 : x10<br> |[0x8000029c]:sm4ks a1, a1, a0, 3<br> [0x800002a0]:sw a1, 24(t6)<br>     |
|   8|[0x80002220]<br>0xE7AE3894|- rs2 : x11<br> |[0x800002d8]:sm4ks a2, a2, a1, 3<br> [0x800002dc]:sw a2, 28(t6)<br>     |
|   9|[0x80002224]<br>0xB7612210|- rs2 : x12<br> |[0x80000314]:sm4ks a3, a3, a2, 3<br> [0x80000318]:sw a3, 32(t6)<br>     |
|  10|[0x80002228]<br>0x15A27A14|- rs2 : x13<br> |[0x80000350]:sm4ks a4, a4, a3, 3<br> [0x80000354]:sw a4, 36(t6)<br>     |
|  11|[0x8000222c]<br>0xB69B80B5|- rs2 : x14<br> |[0x8000038c]:sm4ks a5, a5, a4, 3<br> [0x80000390]:sw a5, 40(t6)<br>     |
|  12|[0x80002230]<br>0x627FCD12|- rs2 : x15<br> |[0x800003c8]:sm4ks a6, a6, a5, 3<br> [0x800003cc]:sw a6, 44(t6)<br>     |
|  13|[0x80002234]<br>0xCD19A909|- rs2 : x16<br> |[0x80000404]:sm4ks a7, a7, a6, 3<br> [0x80000408]:sw a7, 48(t6)<br>     |
|  14|[0x80002238]<br>0x7C532DE8|- rs2 : x17<br> |[0x80000440]:sm4ks s2, s2, a7, 3<br> [0x80000444]:sw s2, 52(t6)<br>     |
|  15|[0x8000223c]<br>0x8882E392|- rs2 : x18<br> |[0x8000047c]:sm4ks s3, s3, s2, 3<br> [0x80000480]:sw s3, 56(t6)<br>     |
|  16|[0x80002240]<br>0xFF6816C5|- rs2 : x19<br> |[0x800004b8]:sm4ks s4, s4, s3, 3<br> [0x800004bc]:sw s4, 60(t6)<br>     |
|  17|[0x80002244]<br>0xA04D65A7|- rs2 : x20<br> |[0x800004f4]:sm4ks s5, s5, s4, 3<br> [0x800004f8]:sw s5, 64(t6)<br>     |
|  18|[0x80002248]<br>0xBC5F643C|- rs2 : x21<br> |[0x80000530]:sm4ks s6, s6, s5, 3<br> [0x80000534]:sw s6, 68(t6)<br>     |
|  19|[0x8000224c]<br>0x6C94F8E3|- rs2 : x22<br> |[0x8000056c]:sm4ks s7, s7, s6, 3<br> [0x80000570]:sw s7, 72(t6)<br>     |
|  20|[0x80002250]<br>0x0A0B36D2|- rs2 : x23<br> |[0x800005a8]:sm4ks s8, s8, s7, 3<br> [0x800005ac]:sw s8, 76(t6)<br>     |
|  21|[0x80002254]<br>0x94F48C11|- rs2 : x24<br> |[0x800005e4]:sm4ks s9, s9, s8, 3<br> [0x800005e8]:sw s9, 80(t6)<br>     |
|  22|[0x80002258]<br>0x4797C780|- rs2 : x25<br> |[0x80000620]:sm4ks s10, s10, s9, 3<br> [0x80000624]:sw s10, 84(t6)<br>  |
|  23|[0x8000225c]<br>0x101951A0|- rs2 : x26<br> |[0x8000065c]:sm4ks s11, s11, s10, 3<br> [0x80000660]:sw s11, 88(t6)<br> |
|  24|[0x80002260]<br>0xA6281314|- rs2 : x27<br> |[0x80000698]:sm4ks t3, t3, s11, 3<br> [0x8000069c]:sw t3, 92(t6)<br>    |
|  25|[0x80002264]<br>0x1F88FDD3|- rs2 : x28<br> |[0x800006d4]:sm4ks t4, t4, t3, 3<br> [0x800006d8]:sw t4, 96(t6)<br>     |
|  26|[0x80002268]<br>0x469BFFA0|- rs2 : x29<br> |[0x80000710]:sm4ks t5, t5, t4, 3<br> [0x80000714]:sw t5, 100(t6)<br>    |
