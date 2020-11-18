
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
| SIG_REGION                | [('0x80002204', '0x80002314', '68 words')]      |
| COV_LABELS                | sw-align      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/sw-align-01.S/sw-align-01.S    |
| Total Number of coverpoints| 141     |
| Total Coverpoints Hit     | 141      |
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

|s.no|        signature         |                                                                                        coverpoints                                                                                         |               code               |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------|
|   1|[0x80002204]<br>0x80000000|- opcode : sw<br> - rs1 : x8<br> - rs2 : x22<br> - rs1 != rs2<br> - rs2_val == (-2**(xlen-1))<br> - ea_align == 0 and (imm_val % 4) == 2<br> - imm_val > 0<br> - rs2_val == -2147483648<br> |[0x80000110]:sw s6, 2(fp)<br>     |
|   2|[0x80002208]<br>0x00000000|- rs1 : x9<br> - rs2 : x5<br> - rs2_val == 0<br> - ea_align == 0 and (imm_val % 4) == 3<br> - imm_val < 0<br>                                                                               |[0x8000012c]:sw t0, 4063(s1)<br>  |
|   3|[0x8000220c]<br>0x7FFFFFFF|- rs1 : x24<br> - rs2 : x29<br> - rs2_val == (2**(xlen-1)-1)<br> - ea_align == 0 and (imm_val % 4) == 1<br> - rs2_val == 2147483647<br>                                                     |[0x8000014c]:sw t4, 4089(s8)<br>  |
|   4|[0x80002210]<br>0x00000001|- rs1 : x27<br> - rs2 : x2<br> - rs2_val == 1<br>                                                                                                                                           |[0x80000168]:sw sp, 6(s11)<br>    |
|   5|[0x80002214]<br>0x00200000|- rs1 : x10<br> - rs2 : x12<br> - ea_align == 0 and (imm_val % 4) == 0<br> - rs2_val == 2097152<br>                                                                                         |[0x80000184]:sw a2, 128(a0)<br>   |
|   6|[0x80002218]<br>0x00000000|- rs1 : x5<br> - rs2 : x0<br> - imm_val == 0<br>                                                                                                                                            |[0x800001a4]:sw zero, 0(t0)<br>   |
|   7|[0x8000221c]<br>0x00000002|- rs1 : x13<br> - rs2 : x3<br> - rs2_val == 2<br>                                                                                                                                           |[0x800001c0]:sw gp, 16(a3)<br>    |
|   8|[0x80002220]<br>0x00000004|- rs1 : x17<br> - rs2 : x19<br> - rs2_val == 4<br>                                                                                                                                          |[0x800001dc]:sw s3, 1(a7)<br>     |
|   9|[0x80002224]<br>0x00000008|- rs1 : x25<br> - rs2 : x31<br> - rs2_val == 8<br>                                                                                                                                          |[0x800001f8]:sw t6, 4089(s9)<br>  |
|  10|[0x80002228]<br>0x00000010|- rs1 : x23<br> - rs2 : x20<br> - rs2_val == 16<br>                                                                                                                                         |[0x80000214]:sw s4, 2048(s7)<br>  |
|  11|[0x8000222c]<br>0x00000020|- rs1 : x11<br> - rs2 : x18<br> - rs2_val == 32<br>                                                                                                                                         |[0x80000230]:sw s2, 1(a1)<br>     |
|  12|[0x80002230]<br>0x00000040|- rs1 : x18<br> - rs2 : x11<br> - rs2_val == 64<br>                                                                                                                                         |[0x8000024c]:sw a1, 9(s2)<br>     |
|  13|[0x80002234]<br>0x00000080|- rs1 : x28<br> - rs2 : x17<br> - rs2_val == 128<br>                                                                                                                                        |[0x80000268]:sw a7, 4093(t3)<br>  |
|  14|[0x80002238]<br>0x00000100|- rs1 : x30<br> - rs2 : x27<br> - rs2_val == 256<br>                                                                                                                                        |[0x80000284]:sw s11, 4086(t5)<br> |
|  15|[0x8000223c]<br>0x00000200|- rs1 : x29<br> - rs2 : x7<br> - rs2_val == 512<br>                                                                                                                                         |[0x800002a0]:sw t2, 6(t4)<br>     |
|  16|[0x80002240]<br>0x00000400|- rs1 : x26<br> - rs2 : x25<br> - rs2_val == 1024<br>                                                                                                                                       |[0x800002bc]:sw s9, 3(s10)<br>    |
|  17|[0x80002244]<br>0x00000800|- rs1 : x31<br> - rs2 : x14<br> - rs2_val == 2048<br>                                                                                                                                       |[0x800002dc]:sw a4, 3(t6)<br>     |
|  18|[0x80002248]<br>0x00001000|- rs1 : x12<br> - rs2 : x6<br> - rs2_val == 4096<br>                                                                                                                                        |[0x800002f8]:sw t1, 4095(a2)<br>  |
|  19|[0x8000224c]<br>0x00002000|- rs1 : x22<br> - rs2 : x10<br> - rs2_val == 8192<br>                                                                                                                                       |[0x80000314]:sw a0, 3583(s6)<br>  |
|  20|[0x80002250]<br>0x00004000|- rs1 : x20<br> - rs2 : x21<br> - rs2_val == 16384<br>                                                                                                                                      |[0x80000330]:sw s5, 4088(s4)<br>  |
|  21|[0x80002254]<br>0x00008000|- rs1 : x16<br> - rs2 : x24<br> - rs2_val == 32768<br>                                                                                                                                      |[0x8000034c]:sw s8, 4091(a6)<br>  |
|  22|[0x80002258]<br>0x00010000|- rs1 : x7<br> - rs2 : x26<br> - rs2_val == 65536<br>                                                                                                                                       |[0x80000370]:sw s10, 128(t2)<br>  |
|  23|[0x8000225c]<br>0x00020000|- rs1 : x19<br> - rs2 : x13<br> - rs2_val == 131072<br>                                                                                                                                     |[0x8000038c]:sw a3, 4031(s3)<br>  |
|  24|[0x80002260]<br>0x00040000|- rs1 : x4<br> - rs2 : x8<br> - rs2_val == 262144<br>                                                                                                                                       |[0x800003a8]:sw fp, 3839(tp)<br>  |
|  25|[0x80002264]<br>0x00080000|- rs1 : x6<br> - rs2 : x30<br> - rs2_val == 524288<br>                                                                                                                                      |[0x800003c4]:sw t5, 4091(t1)<br>  |
|  26|[0x80002268]<br>0x00100000|- rs1 : x2<br> - rs2 : x1<br> - rs2_val == 1048576<br>                                                                                                                                      |[0x800003e0]:sw ra, 4(sp)<br>     |
|  27|[0x8000226c]<br>0x00400000|- rs1 : x3<br> - rs2 : x16<br> - rs2_val == 4194304<br>                                                                                                                                     |[0x800003fc]:sw a6, 9(gp)<br>     |
|  28|[0x80002270]<br>0x00800000|- rs1 : x15<br> - rs2 : x9<br> - rs2_val == 8388608<br>                                                                                                                                     |[0x80000418]:sw s1, 6(a5)<br>     |
|  29|[0x80002274]<br>0x01000000|- rs1 : x1<br> - rs2 : x4<br> - rs2_val == 16777216<br>                                                                                                                                     |[0x80000434]:sw tp, 5(ra)<br>     |
|  30|[0x80002278]<br>0x02000000|- rs1 : x21<br> - rs2 : x28<br> - rs2_val == 33554432<br>                                                                                                                                   |[0x80000450]:sw t3, 16(s5)<br>    |
|  31|[0x8000227c]<br>0x04000000|- rs1 : x14<br> - rs2 : x15<br> - rs2_val == 67108864<br>                                                                                                                                   |[0x8000046c]:sw a5, 16(a4)<br>    |
|  32|[0x80002280]<br>0x08000000|- rs2 : x23<br> - rs2_val == 134217728<br>                                                                                                                                                  |[0x80000488]:sw s7, 3072(t0)<br>  |
|  33|[0x80002284]<br>0x10000000|- rs2_val == 268435456<br>                                                                                                                                                                  |[0x800004a4]:sw a1, 3967(a0)<br>  |
|  34|[0x80002288]<br>0x20000000|- rs2_val == 536870912<br>                                                                                                                                                                  |[0x800004c0]:sw a1, 8(a0)<br>     |
|  35|[0x8000228c]<br>0x40000000|- rs2_val == 1073741824<br>                                                                                                                                                                 |[0x800004dc]:sw a1, 64(a0)<br>    |
|  36|[0x80002290]<br>0xFFFFFFFE|- rs2_val == -2<br>                                                                                                                                                                         |[0x800004f8]:sw a1, 0(a0)<br>     |
|  37|[0x80002294]<br>0xFFBFFFFF|- rs2_val == -4194305<br>                                                                                                                                                                   |[0x80000518]:sw a1, 6(a0)<br>     |
|  38|[0x80002298]<br>0xFF7FFFFF|- rs2_val == -8388609<br>                                                                                                                                                                   |[0x80000538]:sw a1, 3967(a0)<br>  |
|  39|[0x8000229c]<br>0xFEFFFFFF|- rs2_val == -16777217<br>                                                                                                                                                                  |[0x80000558]:sw a1, 0(a0)<br>     |
|  40|[0x800022a0]<br>0xFDFFFFFF|- rs2_val == -33554433<br>                                                                                                                                                                  |[0x80000578]:sw a1, 2730(a0)<br>  |
|  41|[0x800022a4]<br>0xFBFFFFFF|- rs2_val == -67108865<br>                                                                                                                                                                  |[0x80000598]:sw a1, 128(a0)<br>   |
|  42|[0x800022a8]<br>0xF7FFFFFF|- rs2_val == -134217729<br>                                                                                                                                                                 |[0x800005b8]:sw a1, 1023(a0)<br>  |
|  43|[0x800022ac]<br>0xEFFFFFFF|- rs2_val == -268435457<br>                                                                                                                                                                 |[0x800005d8]:sw a1, 16(a0)<br>    |
|  44|[0x800022b0]<br>0xDFFFFFFF|- rs2_val == -536870913<br>                                                                                                                                                                 |[0x800005f8]:sw a1, 4091(a0)<br>  |
|  45|[0x800022b4]<br>0xBFFFFFFF|- rs2_val == -1073741825<br>                                                                                                                                                                |[0x80000618]:sw a1, 4086(a0)<br>  |
|  46|[0x800022b8]<br>0x55555555|- rs2_val == 1431655765<br>                                                                                                                                                                 |[0x80000638]:sw a1, 4(a0)<br>     |
|  47|[0x800022bc]<br>0xAAAAAAAA|- rs2_val == -1431655766<br>                                                                                                                                                                |[0x80000658]:sw a1, 5(a0)<br>     |
|  48|[0x800022c0]<br>0xFFFFFFFD|- rs2_val == -3<br>                                                                                                                                                                         |[0x80000674]:sw a1, 4063(a0)<br>  |
|  49|[0x800022c4]<br>0xFFFFFFFB|- rs2_val == -5<br>                                                                                                                                                                         |[0x80000690]:sw a1, 32(a0)<br>    |
|  50|[0x800022c8]<br>0xFFFFFFF7|- rs2_val == -9<br>                                                                                                                                                                         |[0x800006ac]:sw a1, 3072(a0)<br>  |
|  51|[0x800022cc]<br>0xFFFFFFEF|- rs2_val == -17<br>                                                                                                                                                                        |[0x800006c8]:sw a1, 16(a0)<br>    |
|  52|[0x800022d0]<br>0xFFFFFFDF|- rs2_val == -33<br>                                                                                                                                                                        |[0x800006e4]:sw a1, 2047(a0)<br>  |
|  53|[0x800022d4]<br>0xFFFFFFBF|- rs2_val == -65<br>                                                                                                                                                                        |[0x80000700]:sw a1, 16(a0)<br>    |
|  54|[0x800022d8]<br>0xFFFFFF7F|- rs2_val == -129<br>                                                                                                                                                                       |[0x8000071c]:sw a1, 7(a0)<br>     |
|  55|[0x800022dc]<br>0xFFFFFEFF|- rs2_val == -257<br>                                                                                                                                                                       |[0x80000738]:sw a1, 4088(a0)<br>  |
|  56|[0x800022e0]<br>0xFFFFFDFF|- rs2_val == -513<br>                                                                                                                                                                       |[0x80000754]:sw a1, 4095(a0)<br>  |
|  57|[0x800022e4]<br>0xFFFFFBFF|- rs2_val == -1025<br>                                                                                                                                                                      |[0x80000770]:sw a1, 4092(a0)<br>  |
|  58|[0x800022e8]<br>0xFFFFF7FF|- rs2_val == -2049<br>                                                                                                                                                                      |[0x80000790]:sw a1, 2(a0)<br>     |
|  59|[0x800022ec]<br>0xFFFFEFFF|- rs2_val == -4097<br>                                                                                                                                                                      |[0x800007b0]:sw a1, 4090(a0)<br>  |
|  60|[0x800022f0]<br>0xFFFFBFFF|- rs2_val == -16385<br>                                                                                                                                                                     |[0x800007d0]:sw a1, 5(a0)<br>     |
|  61|[0x800022f4]<br>0xFFFF7FFF|- rs2_val == -32769<br>                                                                                                                                                                     |[0x800007f0]:sw a1, 4095(a0)<br>  |
|  62|[0x800022f8]<br>0xFFFEFFFF|- rs2_val == -65537<br>                                                                                                                                                                     |[0x80000810]:sw a1, 5(a0)<br>     |
|  63|[0x800022fc]<br>0xFFFDFFFF|- rs2_val == -131073<br>                                                                                                                                                                    |[0x80000830]:sw a1, 3839(a0)<br>  |
|  64|[0x80002300]<br>0xFFFBFFFF|- rs2_val == -262145<br>                                                                                                                                                                    |[0x80000850]:sw a1, 1023(a0)<br>  |
|  65|[0x80002304]<br>0xFFF7FFFF|- rs2_val == -524289<br>                                                                                                                                                                    |[0x80000870]:sw a1, 4095(a0)<br>  |
|  66|[0x80002308]<br>0xFFEFFFFF|- rs2_val == -1048577<br>                                                                                                                                                                   |[0x80000890]:sw a1, 128(a0)<br>   |
|  67|[0x8000230c]<br>0xFFDFFFFF|- rs2_val == -2097153<br>                                                                                                                                                                   |[0x800008b0]:sw a1, 4089(a0)<br>  |
|  68|[0x80002310]<br>0xFFFFDFFF|- rs2_val == -8193<br>                                                                                                                                                                      |[0x800008d0]:sw a1, 0(a0)<br>     |
