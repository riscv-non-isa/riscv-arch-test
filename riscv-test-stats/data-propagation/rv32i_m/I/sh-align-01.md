
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800008e0')]      |
| SIG_REGION                | [('0x80002010', '0x80002120', '68 words')]      |
| COV_LABELS                | sh-align      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/sh-align-01.S/sh-align-01.S    |
| Total Number of coverpoints| 145     |
| Total Coverpoints Hit     | 145      |
| Total Signature Updates   | 68      |
| STAT1                     | 68      |
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

|s.no|        signature         |                                                                                         coverpoints                                                                                         |               code                |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------|
|   1|[0x80002010]<br>0x80000000|- opcode : sh<br> - rs1 : x20<br> - rs2 : x22<br> - rs1 != rs2<br> - rs2_val == (-2**(xlen-1))<br> - ea_align == 0 and (imm_val % 4) == 1<br> - imm_val > 0<br> - rs2_val == -2147483648<br> |[0x80000110]:sh s6, 5(s4)<br>      |
|   2|[0x80002014]<br>0x00000000|- rs1 : x13<br> - rs2 : x30<br> - rs2_val == 0<br> - ea_align == 0 and (imm_val % 4) == 3<br> - imm_val < 0<br>                                                                              |[0x8000012c]:sh t5, 4095(a3)<br>   |
|   3|[0x80002018]<br>0x7FFFFFFF|- rs1 : x10<br> - rs2 : x26<br> - rs2_val == (2**(xlen-1)-1)<br> - ea_align == 0 and (imm_val % 4) == 0<br> - rs2_val == 2147483647<br>                                                      |[0x8000014c]:sh s10, 4088(a0)<br>  |
|   4|[0x8000201c]<br>0x00000001|- rs1 : x22<br> - rs2 : x25<br> - rs2_val == 1<br>                                                                                                                                           |[0x80000168]:sh s9, 1(s6)<br>      |
|   5|[0x80002020]<br>0x00000000|- rs1 : x11<br> - rs2 : x0<br> - ea_align == 0 and (imm_val % 4) == 2<br>                                                                                                                    |[0x80000188]:sh zero, 2730(a1)<br> |
|   6|[0x80002026]<br>0xFFFFFFEF|- rs1 : x25<br> - rs2 : x5<br> - ea_align == 2 and (imm_val % 4) == 0<br> - rs2_val == -17<br>                                                                                               |[0x800001a4]:sh t0, 1024(s9)<br>   |
|   7|[0x8000202a]<br>0xFFFFBFFF|- rs1 : x14<br> - rs2 : x15<br> - ea_align == 2 and (imm_val % 4) == 1<br> - rs2_val == -16385<br>                                                                                           |[0x800001c4]:sh a5, 1(a4)<br>      |
|   8|[0x8000202e]<br>0x00000008|- rs1 : x8<br> - rs2 : x18<br> - ea_align == 2 and (imm_val % 4) == 2<br> - rs2_val == 8<br>                                                                                                 |[0x800001e0]:sh s2, 4086(fp)<br>   |
|   9|[0x80002032]<br>0xFF7FFFFF|- rs1 : x4<br> - rs2 : x6<br> - ea_align == 2 and (imm_val % 4) == 3<br> - rs2_val == -8388609<br>                                                                                           |[0x80000200]:sh t1, 4087(tp)<br>   |
|  10|[0x80002034]<br>0xFFFF7FFF|- rs1 : x19<br> - rs2 : x28<br> - imm_val == 0<br> - rs2_val == -32769<br>                                                                                                                   |[0x80000220]:sh t3, 0(s3)<br>      |
|  11|[0x80002038]<br>0x00000002|- rs1 : x18<br> - rs2 : x24<br> - rs2_val == 2<br>                                                                                                                                           |[0x8000023c]:sh s8, 4093(s2)<br>   |
|  12|[0x8000203c]<br>0x00000004|- rs1 : x16<br> - rs2 : x11<br> - rs2_val == 4<br>                                                                                                                                           |[0x80000258]:sh a1, 3583(a6)<br>   |
|  13|[0x80002040]<br>0x00000010|- rs1 : x24<br> - rs2 : x31<br> - rs2_val == 16<br>                                                                                                                                          |[0x80000274]:sh t6, 7(s8)<br>      |
|  14|[0x80002044]<br>0x00000020|- rs1 : x31<br> - rs2 : x12<br> - rs2_val == 32<br>                                                                                                                                          |[0x80000290]:sh a2, 1024(t6)<br>   |
|  15|[0x80002048]<br>0x00000040|- rs1 : x28<br> - rs2 : x17<br> - rs2_val == 64<br>                                                                                                                                          |[0x800002ac]:sh a7, 4086(t3)<br>   |
|  16|[0x8000204c]<br>0x00000080|- rs1 : x1<br> - rs2 : x10<br> - rs2_val == 128<br>                                                                                                                                          |[0x800002c8]:sh a0, 32(ra)<br>     |
|  17|[0x80002050]<br>0x00000100|- rs1 : x6<br> - rs2 : x7<br> - rs2_val == 256<br>                                                                                                                                           |[0x800002e4]:sh t2, 1024(t1)<br>   |
|  18|[0x80002054]<br>0x00000200|- rs1 : x3<br> - rs2 : x8<br> - rs2_val == 512<br>                                                                                                                                           |[0x80000300]:sh fp, 256(gp)<br>    |
|  19|[0x80002058]<br>0x00000400|- rs1 : x17<br> - rs2 : x21<br> - rs2_val == 1024<br>                                                                                                                                        |[0x8000031c]:sh s5, 4094(a7)<br>   |
|  20|[0x8000205c]<br>0x00000800|- rs1 : x26<br> - rs2 : x20<br> - rs2_val == 2048<br>                                                                                                                                        |[0x8000033c]:sh s4, 4031(s10)<br>  |
|  21|[0x80002060]<br>0x00001000|- rs1 : x5<br> - rs2 : x1<br> - rs2_val == 4096<br>                                                                                                                                          |[0x80000358]:sh ra, 4088(t0)<br>   |
|  22|[0x80002064]<br>0x00002000|- rs1 : x7<br> - rs2 : x13<br> - rs2_val == 8192<br>                                                                                                                                         |[0x80000374]:sh a3, 16(t2)<br>     |
|  23|[0x80002068]<br>0x00004000|- rs1 : x27<br> - rs2 : x14<br> - rs2_val == 16384<br>                                                                                                                                       |[0x80000390]:sh a4, 3839(s11)<br>  |
|  24|[0x8000206c]<br>0x00008000|- rs1 : x9<br> - rs2 : x4<br> - rs2_val == 32768<br>                                                                                                                                         |[0x800003ac]:sh tp, 2730(s1)<br>   |
|  25|[0x80002070]<br>0x00010000|- rs1 : x23<br> - rs2 : x27<br> - rs2_val == 65536<br>                                                                                                                                       |[0x800003d0]:sh s11, 4086(s7)<br>  |
|  26|[0x80002074]<br>0x00020000|- rs1 : x15<br> - rs2 : x3<br> - rs2_val == 131072<br>                                                                                                                                       |[0x800003ec]:sh gp, 64(a5)<br>     |
|  27|[0x80002078]<br>0x00040000|- rs1 : x29<br> - rs2 : x9<br> - rs2_val == 262144<br>                                                                                                                                       |[0x80000408]:sh s1, 3(t4)<br>      |
|  28|[0x8000207c]<br>0x00080000|- rs1 : x30<br> - rs2 : x2<br> - rs2_val == 524288<br>                                                                                                                                       |[0x80000424]:sh sp, 2(t5)<br>      |
|  29|[0x80002080]<br>0x00100000|- rs1 : x2<br> - rs2 : x29<br> - rs2_val == 1048576<br>                                                                                                                                      |[0x80000440]:sh t4, 1023(sp)<br>   |
|  30|[0x80002084]<br>0x00200000|- rs1 : x21<br> - rs2 : x19<br> - rs2_val == 2097152<br>                                                                                                                                     |[0x8000045c]:sh s3, 7(s5)<br>      |
|  31|[0x80002088]<br>0x00400000|- rs1 : x12<br> - rs2 : x23<br> - rs2_val == 4194304<br>                                                                                                                                     |[0x80000478]:sh s7, 1365(a2)<br>   |
|  32|[0x8000208c]<br>0x00800000|- rs2 : x16<br> - rs2_val == 8388608<br>                                                                                                                                                     |[0x80000494]:sh a6, 32(t2)<br>     |
|  33|[0x80002090]<br>0x01000000|- rs2_val == 16777216<br>                                                                                                                                                                    |[0x800004b0]:sh a1, 4079(a0)<br>   |
|  34|[0x80002094]<br>0x02000000|- rs2_val == 33554432<br>                                                                                                                                                                    |[0x800004cc]:sh a1, 4090(a0)<br>   |
|  35|[0x80002098]<br>0x04000000|- rs2_val == 67108864<br>                                                                                                                                                                    |[0x800004e8]:sh a1, 6(a0)<br>      |
|  36|[0x8000209c]<br>0x08000000|- rs2_val == 134217728<br>                                                                                                                                                                   |[0x80000504]:sh a1, 5(a0)<br>      |
|  37|[0x800020a0]<br>0xFFFBFFFF|- rs2_val == -262145<br>                                                                                                                                                                     |[0x80000524]:sh a1, 3071(a0)<br>   |
|  38|[0x800020a4]<br>0xFFF7FFFF|- rs2_val == -524289<br>                                                                                                                                                                     |[0x80000544]:sh a1, 1(a0)<br>      |
|  39|[0x800020a8]<br>0xFFEFFFFF|- rs2_val == -1048577<br>                                                                                                                                                                    |[0x80000564]:sh a1, 5(a0)<br>      |
|  40|[0x800020ac]<br>0xFFDFFFFF|- rs2_val == -2097153<br>                                                                                                                                                                    |[0x80000584]:sh a1, 16(a0)<br>     |
|  41|[0x800020b0]<br>0xFFBFFFFF|- rs2_val == -4194305<br>                                                                                                                                                                    |[0x800005a4]:sh a1, 0(a0)<br>      |
|  42|[0x800020b4]<br>0xFEFFFFFF|- rs2_val == -16777217<br>                                                                                                                                                                   |[0x800005c4]:sh a1, 4095(a0)<br>   |
|  43|[0x800020b8]<br>0xFDFFFFFF|- rs2_val == -33554433<br>                                                                                                                                                                   |[0x800005e4]:sh a1, 64(a0)<br>     |
|  44|[0x800020bc]<br>0xFBFFFFFF|- rs2_val == -67108865<br>                                                                                                                                                                   |[0x80000604]:sh a1, 256(a0)<br>    |
|  45|[0x800020c0]<br>0xF7FFFFFF|- rs2_val == -134217729<br>                                                                                                                                                                  |[0x80000624]:sh a1, 4094(a0)<br>   |
|  46|[0x800020c4]<br>0xEFFFFFFF|- rs2_val == -268435457<br>                                                                                                                                                                  |[0x80000644]:sh a1, 4063(a0)<br>   |
|  47|[0x800020c8]<br>0xDFFFFFFF|- rs2_val == -536870913<br>                                                                                                                                                                  |[0x80000664]:sh a1, 4093(a0)<br>   |
|  48|[0x800020cc]<br>0xBFFFFFFF|- rs2_val == -1073741825<br>                                                                                                                                                                 |[0x80000684]:sh a1, 6(a0)<br>      |
|  49|[0x800020d0]<br>0x55555555|- rs2_val == 1431655765<br>                                                                                                                                                                  |[0x800006a4]:sh a1, 4079(a0)<br>   |
|  50|[0x800020d4]<br>0xAAAAAAAA|- rs2_val == -1431655766<br>                                                                                                                                                                 |[0x800006c4]:sh a1, 6(a0)<br>      |
|  51|[0x800020d8]<br>0x10000000|- rs2_val == 268435456<br>                                                                                                                                                                   |[0x800006e0]:sh a1, 3071(a0)<br>   |
|  52|[0x800020dc]<br>0x40000000|- rs2_val == 1073741824<br>                                                                                                                                                                  |[0x800006fc]:sh a1, 9(a0)<br>      |
|  53|[0x800020e0]<br>0xFFFFFFFE|- rs2_val == -2<br>                                                                                                                                                                          |[0x80000718]:sh a1, 64(a0)<br>     |
|  54|[0x800020e4]<br>0xFFFFFFFD|- rs2_val == -3<br>                                                                                                                                                                          |[0x80000734]:sh a1, 1(a0)<br>      |
|  55|[0x800020e8]<br>0xFFFFFFFB|- rs2_val == -5<br>                                                                                                                                                                          |[0x80000750]:sh a1, 4092(a0)<br>   |
|  56|[0x800020ec]<br>0xFFFFFFF7|- rs2_val == -9<br>                                                                                                                                                                          |[0x8000076c]:sh a1, 1024(a0)<br>   |
|  57|[0x800020f0]<br>0xFFFFFFDF|- rs2_val == -33<br>                                                                                                                                                                         |[0x80000788]:sh a1, 64(a0)<br>     |
|  58|[0x800020f4]<br>0xFFFFFFBF|- rs2_val == -65<br>                                                                                                                                                                         |[0x800007a4]:sh a1, 8(a0)<br>      |
|  59|[0x800020f8]<br>0xFFFFFF7F|- rs2_val == -129<br>                                                                                                                                                                        |[0x800007c0]:sh a1, 4092(a0)<br>   |
|  60|[0x800020fc]<br>0xFFFFFEFF|- rs2_val == -257<br>                                                                                                                                                                        |[0x800007dc]:sh a1, 6(a0)<br>      |
|  61|[0x80002100]<br>0xFFFFFDFF|- rs2_val == -513<br>                                                                                                                                                                        |[0x800007f8]:sh a1, 128(a0)<br>    |
|  62|[0x80002104]<br>0xFFFFFBFF|- rs2_val == -1025<br>                                                                                                                                                                       |[0x80000814]:sh a1, 3967(a0)<br>   |
|  63|[0x80002108]<br>0xFFFFF7FF|- rs2_val == -2049<br>                                                                                                                                                                       |[0x80000834]:sh a1, 3072(a0)<br>   |
|  64|[0x8000210c]<br>0xFFFFEFFF|- rs2_val == -4097<br>                                                                                                                                                                       |[0x80000854]:sh a1, 4093(a0)<br>   |
|  65|[0x80002110]<br>0xFFFFDFFF|- rs2_val == -8193<br>                                                                                                                                                                       |[0x80000874]:sh a1, 0(a0)<br>      |
|  66|[0x80002114]<br>0xFFFEFFFF|- rs2_val == -65537<br>                                                                                                                                                                      |[0x80000894]:sh a1, 8(a0)<br>      |
|  67|[0x80002118]<br>0xFFFDFFFF|- rs2_val == -131073<br>                                                                                                                                                                     |[0x800008b4]:sh a1, 2(a0)<br>      |
|  68|[0x8000211c]<br>0x20000000|- rs2_val == 536870912<br>                                                                                                                                                                   |[0x800008d0]:sh a1, 2730(a0)<br>   |
