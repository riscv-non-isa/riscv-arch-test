
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000820')]      |
| SIG_REGION                | [('0x80002210', '0x80002390', '96 words')]      |
| COV_LABELS                | rsubw      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/rsubw-01.S    |
| Total Number of coverpoints| 244     |
| Total Coverpoints Hit     | 238      |
| Total Signature Updates   | 96      |
| STAT1                     | 94      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004b0]:RSUBW t6, t5, t4
      [0x800004b4]:sw t6, 116(tp)
 -- Signature Address: 0x800022d0 Data: 0xC0000000
 -- Redundant Coverpoints hit by the op
      - opcode : rsubw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == 2147483647
      - rs1_w0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000604]:RSUBW t6, t5, t4
      [0x80000608]:sw t6, 196(tp)
 -- Signature Address: 0x80002320 Data: 0xD5555555
 -- Redundant Coverpoints hit by the op
      - opcode : rsubw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == 0
      - rs1_w0_val == -1431655766






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

|s.no|        signature         |                                                                       coverpoints                                                                        |                                  code                                  |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : rsubw<br> - rs1 : x0<br> - rs2 : x0<br> - rd : x0<br> - rs1 == rs2 == rd<br> - rs2_w0_val == 0<br> - rs1_w0_val == 0<br>                       |[0x80000110]:RSUBW zero, zero, zero<br> [0x80000114]:sw zero, 0(ra)<br> |
|   2|[0x80002214]<br>0x00000000|- rs1 : x19<br> - rs2 : x19<br> - rd : x29<br> - rs1 == rs2 != rd<br> - rs2_w0_val == -1431655766<br> - rs1_w0_val == -1431655766<br>                     |[0x80000124]:RSUBW t4, s3, s3<br> [0x80000128]:sw t4, 4(ra)<br>         |
|   3|[0x80002218]<br>0xD9555555|- rs1 : x10<br> - rs2 : x26<br> - rd : x15<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_w0_val == 1431655765<br> - rs1_w0_val == 134217728<br> |[0x80000138]:RSUBW a5, a0, s10<br> [0x8000013c]:sw a5, 8(ra)<br>        |
|   4|[0x8000221c]<br>0x00000000|- rs1 : x3<br> - rs2 : x9<br> - rd : x9<br> - rs2 == rd != rs1<br> - rs2_w0_val == 2147483647<br> - rs1_w0_val == 2147483647<br>                          |[0x80000150]:RSUBW s1, gp, s1<br> [0x80000154]:sw s1, 12(ra)<br>        |
|   5|[0x80002220]<br>0x20002000|- rs1 : x14<br> - rs2 : x28<br> - rd : x14<br> - rs1 == rd != rs2<br> - rs2_w0_val == -1073741825<br> - rs1_w0_val == 16384<br>                           |[0x80000164]:RSUBW a4, a4, t3<br> [0x80000168]:sw a4, 16(ra)<br>        |
|   6|[0x80002224]<br>0x10000080|- rs1 : x4<br> - rs2 : x25<br> - rd : x20<br> - rs2_w0_val == -536870913<br> - rs1_w0_val == 256<br>                                                      |[0x80000178]:RSUBW s4, tp, s9<br> [0x8000017c]:sw s4, 20(ra)<br>        |
|   7|[0x80002228]<br>0x08000400|- rs1 : x9<br> - rs2 : x23<br> - rd : x10<br> - rs2_w0_val == -268435457<br> - rs1_w0_val == 2048<br>                                                     |[0x80000190]:RSUBW a0, s1, s7<br> [0x80000194]:sw a0, 24(ra)<br>        |
|   8|[0x8000222c]<br>0x03FFC000|- rs1 : x18<br> - rs2 : x12<br> - rd : x26<br> - rs2_w0_val == -134217729<br> - rs1_w0_val == -32769<br>                                                  |[0x800001a8]:RSUBW s10, s2, a2<br> [0x800001ac]:sw s10, 28(ra)<br>      |
|   9|[0x80002230]<br>0x02008000|- rs1 : x22<br> - rs2 : x10<br> - rd : x24<br> - rs2_w0_val == -67108865<br> - rs1_w0_val == 65536<br>                                                    |[0x800001bc]:RSUBW s8, s6, a0<br> [0x800001c0]:sw s8, 32(ra)<br>        |
|  10|[0x80002234]<br>0x00FF8000|- rs1 : x24<br> - rs2 : x11<br> - rd : x16<br> - rs2_w0_val == -33554433<br> - rs1_w0_val == -65537<br>                                                   |[0x800001d4]:RSUBW a6, s8, a1<br> [0x800001d8]:sw a6, 36(ra)<br>        |
|  11|[0x80002238]<br>0x00800100|- rs1 : x5<br> - rs2 : x4<br> - rd : x7<br> - rs2_w0_val == -16777217<br> - rs1_w0_val == 512<br>                                                         |[0x800001e8]:RSUBW t2, t0, tp<br> [0x800001ec]:sw t2, 40(ra)<br>        |
|  12|[0x8000223c]<br>0x003FFFFB|- rs1 : x23<br> - rs2 : x16<br> - rd : x19<br> - rs2_w0_val == -8388609<br>                                                                               |[0x800001fc]:RSUBW s3, s7, a6<br> [0x80000200]:sw s3, 44(ra)<br>        |
|  13|[0x80002240]<br>0x00200003|- rs1 : x30<br> - rs2 : x31<br> - rd : x5<br> - rs2_w0_val == -4194305<br>                                                                                |[0x80000210]:RSUBW t0, t5, t6<br> [0x80000214]:sw t0, 48(ra)<br>        |
|  14|[0x80002244]<br>0x000FFFF0|- rs1 : x16<br> - rs2 : x15<br> - rd : x23<br> - rs2_w0_val == -2097153<br> - rs1_w0_val == -33<br>                                                       |[0x80000224]:RSUBW s7, a6, a5<br> [0x80000228]:sw s7, 52(ra)<br>        |
|  15|[0x80002248]<br>0x00880000|- rs1 : x15<br> - rs2 : x5<br> - rd : x2<br> - rs2_w0_val == -1048577<br> - rs1_w0_val == 16777216<br>                                                    |[0x80000238]:RSUBW sp, a5, t0<br> [0x8000023c]:sw sp, 56(ra)<br>        |
|  16|[0x8000224c]<br>0xF0040000|- rs1 : x29<br> - rs2 : x2<br> - rd : x4<br> - rs2_w0_val == -524289<br> - rs1_w0_val == -536870913<br>                                                   |[0x80000250]:RSUBW tp, t4, sp<br> [0x80000254]:sw tp, 60(ra)<br>        |
|  17|[0x80002250]<br>0x00010200|- rs1 : x13<br> - rs2 : x30<br> - rd : x25<br> - rs2_w0_val == -131073<br> - rs1_w0_val == 1024<br>                                                       |[0x80000264]:RSUBW s9, a3, t5<br> [0x80000268]:sw s9, 64(ra)<br>        |
|  18|[0x80002254]<br>0x20008000|- rs1 : x21<br> - rs2 : x3<br> - rd : x30<br> - rs2_w0_val == -65537<br> - rs1_w0_val == 1073741824<br>                                                   |[0x80000278]:RSUBW t5, s5, gp<br> [0x8000027c]:sw t5, 68(ra)<br>        |
|  19|[0x80002258]<br>0x00004001|- rs1 : x12<br> - rs2 : x21<br> - rd : x27<br> - rs2_w0_val == -32769<br> - rs1_w0_val == 1<br>                                                           |[0x8000028c]:RSUBW s11, a2, s5<br> [0x80000290]:sw s11, 72(ra)<br>      |
|  20|[0x8000225c]<br>0xFFF02000|- rs1 : x8<br> - rs2 : x22<br> - rd : x3<br> - rs2_w0_val == -16385<br> - rs1_w0_val == -2097153<br>                                                      |[0x800002ac]:RSUBW gp, fp, s6<br> [0x800002b0]:sw gp, 0(tp)<br>         |
|  21|[0x80002260]<br>0xFFFFF000|- rs1 : x7<br> - rs2 : x24<br> - rd : x22<br> - rs2_w0_val == -8193<br> - rs1_w0_val == -16385<br>                                                        |[0x800002c4]:RSUBW s6, t2, s8<br> [0x800002c8]:sw s6, 4(tp)<br>         |
|  22|[0x80002264]<br>0xFFE00800|- rs1 : x31<br> - rs2 : x27<br> - rd : x21<br> - rs2_w0_val == -4097<br> - rs1_w0_val == -4194305<br>                                                     |[0x800002dc]:RSUBW s5, t6, s11<br> [0x800002e0]:sw s5, 8(tp)<br>        |
|  23|[0x80002268]<br>0x00000440|- rs1 : x11<br> - rs2 : x18<br> - rd : x17<br> - rs2_w0_val == -2049<br> - rs1_w0_val == 128<br>                                                          |[0x800002f0]:RSUBW a7, a1, s2<br> [0x800002f4]:sw a7, 12(tp)<br>        |
|  24|[0x8000226c]<br>0xF0000200|- rs1 : x20<br> - rs2 : x7<br> - rd : x11<br> - rs2_w0_val == -1025<br>                                                                                   |[0x80000304]:RSUBW a1, s4, t2<br> [0x80000308]:sw a1, 16(tp)<br>        |
|  25|[0x80002270]<br>0x00040100|- rs1 : x28<br> - rs2 : x8<br> - rd : x13<br> - rs2_w0_val == -513<br> - rs1_w0_val == 524288<br>                                                         |[0x80000314]:RSUBW a3, t3, fp<br> [0x80000318]:sw a3, 20(tp)<br>        |
|  26|[0x80002274]<br>0x0000007E|- rs1 : x17<br> - rs2 : x29<br> - rd : x6<br> - rs2_w0_val == -257<br>                                                                                    |[0x80000324]:RSUBW t1, a7, t4<br> [0x80000328]:sw t1, 24(tp)<br>        |
|  27|[0x80002278]<br>0xD5555595|- rs1 : x1<br> - rs2 : x20<br> - rd : x8<br> - rs2_w0_val == -129<br>                                                                                     |[0x80000338]:RSUBW fp, ra, s4<br> [0x8000033c]:sw fp, 28(tp)<br>        |
|  28|[0x8000227c]<br>0x10000020|- rs1 : x2<br> - rs2 : x13<br> - rd : x12<br> - rs2_w0_val == -65<br> - rs1_w0_val == 536870912<br>                                                       |[0x80000348]:RSUBW a2, sp, a3<br> [0x8000034c]:sw a2, 32(tp)<br>        |
|  29|[0x80002280]<br>0x2AAAAABB|- rs1 : x26<br> - rs2 : x14<br> - rd : x1<br> - rs2_w0_val == -33<br> - rs1_w0_val == 1431655765<br>                                                      |[0x8000035c]:RSUBW ra, s10, a4<br> [0x80000360]:sw ra, 36(tp)<br>       |
|  30|[0x80002284]<br>0x00000000|- rs1 : x27<br> - rs2 : x6<br> - rd : x31<br> - rs2_w0_val == -17<br> - rs1_w0_val == -17<br>                                                             |[0x8000036c]:RSUBW t6, s11, t1<br> [0x80000370]:sw t6, 40(tp)<br>       |
|  31|[0x80002288]<br>0x00000000|- rs1 : x6<br> - rs2 : x17<br> - rd : x18<br> - rs2_w0_val == -9<br> - rs1_w0_val == -9<br>                                                               |[0x8000037c]:RSUBW s2, t1, a7<br> [0x80000380]:sw s2, 44(tp)<br>        |
|  32|[0x8000228c]<br>0x00002002|- rs1 : x25<br> - rs2 : x1<br> - rd : x28<br> - rs2_w0_val == -5<br>                                                                                      |[0x8000038c]:RSUBW t3, s9, ra<br> [0x80000390]:sw t3, 48(tp)<br>        |
|  33|[0x80002290]<br>0xFFFFFFFC|- rs2_w0_val == -3<br>                                                                                                                                    |[0x8000039c]:RSUBW t6, t5, t4<br> [0x800003a0]:sw t6, 52(tp)<br>        |
|  34|[0x80002294]<br>0xFFFF8000|- rs2_w0_val == -2<br>                                                                                                                                    |[0x800003b0]:RSUBW t6, t5, t4<br> [0x800003b4]:sw t6, 56(tp)<br>        |
|  35|[0x80002298]<br>0x40000000|- rs2_w0_val == -2147483648<br>                                                                                                                           |[0x800003c0]:RSUBW t6, t5, t4<br> [0x800003c4]:sw t6, 60(tp)<br>        |
|  36|[0x8000229c]<br>0xBFFFFFFF|- rs2_w0_val == 1073741824<br> - rs1_w0_val == -1073741825<br>                                                                                            |[0x800003d4]:RSUBW t6, t5, t4<br> [0x800003d8]:sw t6, 64(tp)<br>        |
|  37|[0x800022a0]<br>0xCFFFFFFF|- rs2_w0_val == 536870912<br>                                                                                                                             |[0x800003e8]:RSUBW t6, t5, t4<br> [0x800003ec]:sw t6, 68(tp)<br>        |
|  38|[0x800022a4]<br>0xF8000000|- rs2_w0_val == 268435456<br>                                                                                                                             |[0x800003f8]:RSUBW t6, t5, t4<br> [0x800003fc]:sw t6, 72(tp)<br>        |
|  39|[0x800022a8]<br>0xFBFFFF7F|- rs2_w0_val == 134217728<br> - rs1_w0_val == -257<br>                                                                                                    |[0x80000408]:RSUBW t6, t5, t4<br> [0x8000040c]:sw t6, 76(tp)<br>        |
|  40|[0x800022ac]<br>0xBE000000|- rs1_w0_val == -2147483648<br> - rs2_w0_val == 67108864<br>                                                                                              |[0x80000418]:RSUBW t6, t5, t4<br> [0x8000041c]:sw t6, 80(tp)<br>        |
|  41|[0x800022b0]<br>0xFEDFFFFF|- rs2_w0_val == 33554432<br>                                                                                                                              |[0x8000042c]:RSUBW t6, t5, t4<br> [0x80000430]:sw t6, 84(tp)<br>        |
|  42|[0x800022b4]<br>0xFF7FFFFC|- rs2_w0_val == 16777216<br>                                                                                                                              |[0x8000043c]:RSUBW t6, t5, t4<br> [0x80000440]:sw t6, 88(tp)<br>        |
|  43|[0x800022b8]<br>0xFFC00002|- rs2_w0_val == 8388608<br> - rs1_w0_val == 4<br>                                                                                                         |[0x8000044c]:RSUBW t6, t5, t4<br> [0x80000450]:sw t6, 92(tp)<br>        |
|  44|[0x800022bc]<br>0x00000000|- rs2_w0_val == 4194304<br> - rs1_w0_val == 4194304<br>                                                                                                   |[0x8000045c]:RSUBW t6, t5, t4<br> [0x80000460]:sw t6, 96(tp)<br>        |
|  45|[0x800022c0]<br>0x00000110|- rs1_w0_val == 32<br>                                                                                                                                    |[0x8000046c]:RSUBW t6, t5, t4<br> [0x80000470]:sw t6, 100(tp)<br>       |
|  46|[0x800022c4]<br>0xF0000008|- rs1_w0_val == 16<br>                                                                                                                                    |[0x8000047c]:RSUBW t6, t5, t4<br> [0x80000480]:sw t6, 104(tp)<br>       |
|  47|[0x800022c8]<br>0x00000003|- rs2_w0_val == 1<br> - rs1_w0_val == 8<br>                                                                                                               |[0x8000048c]:RSUBW t6, t5, t4<br> [0x80000490]:sw t6, 108(tp)<br>       |
|  48|[0x800022cc]<br>0xFFFC0001|- rs2_w0_val == 524288<br> - rs1_w0_val == 2<br>                                                                                                          |[0x8000049c]:RSUBW t6, t5, t4<br> [0x800004a0]:sw t6, 112(tp)<br>       |
|  49|[0x800022d4]<br>0xDFF00000|- rs2_w0_val == 2097152<br>                                                                                                                               |[0x800004c0]:RSUBW t6, t5, t4<br> [0x800004c4]:sw t6, 120(tp)<br>       |
|  50|[0x800022d8]<br>0xFFF80003|- rs2_w0_val == 1048576<br>                                                                                                                               |[0x800004d0]:RSUBW t6, t5, t4<br> [0x800004d4]:sw t6, 124(tp)<br>       |
|  51|[0x800022dc]<br>0xDFFE0000|- rs2_w0_val == 262144<br>                                                                                                                                |[0x800004e0]:RSUBW t6, t5, t4<br> [0x800004e4]:sw t6, 128(tp)<br>       |
|  52|[0x800022e0]<br>0x2AA9AAAA|- rs2_w0_val == 131072<br>                                                                                                                                |[0x800004f4]:RSUBW t6, t5, t4<br> [0x800004f8]:sw t6, 132(tp)<br>       |
|  53|[0x800022e4]<br>0xFFFF7FFD|- rs2_w0_val == 65536<br> - rs1_w0_val == -5<br>                                                                                                          |[0x80000504]:RSUBW t6, t5, t4<br> [0x80000508]:sw t6, 136(tp)<br>       |
|  54|[0x800022e8]<br>0x1FFFC000|- rs2_w0_val == 32768<br>                                                                                                                                 |[0x80000514]:RSUBW t6, t5, t4<br> [0x80000518]:sw t6, 140(tp)<br>       |
|  55|[0x800022ec]<br>0xFFFFDDFF|- rs2_w0_val == 16384<br> - rs1_w0_val == -1025<br>                                                                                                       |[0x80000524]:RSUBW t6, t5, t4<br> [0x80000528]:sw t6, 144(tp)<br>       |
|  56|[0x800022f0]<br>0xFFFFF001|- rs2_w0_val == 8192<br>                                                                                                                                  |[0x80000534]:RSUBW t6, t5, t4<br> [0x80000538]:sw t6, 148(tp)<br>       |
|  57|[0x800022f4]<br>0xFFFFF900|- rs2_w0_val == 4096<br>                                                                                                                                  |[0x80000544]:RSUBW t6, t5, t4<br> [0x80000548]:sw t6, 152(tp)<br>       |
|  58|[0x800022f8]<br>0xFFBFFBFF|- rs2_w0_val == 2048<br> - rs1_w0_val == -8388609<br>                                                                                                     |[0x8000055c]:RSUBW t6, t5, t4<br> [0x80000560]:sw t6, 156(tp)<br>       |
|  59|[0x800022fc]<br>0x07FFFE00|- rs2_w0_val == 1024<br> - rs1_w0_val == 268435456<br>                                                                                                    |[0x8000056c]:RSUBW t6, t5, t4<br> [0x80000570]:sw t6, 160(tp)<br>       |
|  60|[0x80002300]<br>0xFFFFF6FF|- rs2_w0_val == 512<br> - rs1_w0_val == -4097<br>                                                                                                         |[0x80000580]:RSUBW t6, t5, t4<br> [0x80000584]:sw t6, 164(tp)<br>       |
|  61|[0x80002304]<br>0x00000780|- rs2_w0_val == 256<br> - rs1_w0_val == 4096<br>                                                                                                          |[0x80000590]:RSUBW t6, t5, t4<br> [0x80000594]:sw t6, 168(tp)<br>       |
|  62|[0x80002308]<br>0xFFFFFFBB|- rs2_w0_val == 128<br>                                                                                                                                   |[0x800005a0]:RSUBW t6, t5, t4<br> [0x800005a4]:sw t6, 172(tp)<br>       |
|  63|[0x8000230c]<br>0x07FFFFE0|- rs2_w0_val == 64<br>                                                                                                                                    |[0x800005b0]:RSUBW t6, t5, t4<br> [0x800005b4]:sw t6, 176(tp)<br>       |
|  64|[0x80002310]<br>0x003FFFF0|- rs2_w0_val == 32<br> - rs1_w0_val == 8388608<br>                                                                                                        |[0x800005c0]:RSUBW t6, t5, t4<br> [0x800005c4]:sw t6, 180(tp)<br>       |
|  65|[0x80002314]<br>0x000007F8|- rs2_w0_val == 16<br>                                                                                                                                    |[0x800005d0]:RSUBW t6, t5, t4<br> [0x800005d4]:sw t6, 184(tp)<br>       |
|  66|[0x80002318]<br>0xFFFFFFF9|- rs2_w0_val == 4<br>                                                                                                                                     |[0x800005e0]:RSUBW t6, t5, t4<br> [0x800005e4]:sw t6, 188(tp)<br>       |
|  67|[0x8000231c]<br>0xFFFFFFFD|- rs2_w0_val == 2<br>                                                                                                                                     |[0x800005f0]:RSUBW t6, t5, t4<br> [0x800005f4]:sw t6, 192(tp)<br>       |
|  68|[0x80002324]<br>0xFFF80000|- rs2_w0_val == -1<br> - rs1_w0_val == -1048577<br>                                                                                                       |[0x80000618]:RSUBW t6, t5, t4<br> [0x8000061c]:sw t6, 200(tp)<br>       |
|  69|[0x80002328]<br>0xF7FFFFEF|- rs1_w0_val == -268435457<br>                                                                                                                            |[0x8000062c]:RSUBW t6, t5, t4<br> [0x80000630]:sw t6, 204(tp)<br>       |
|  70|[0x8000232c]<br>0xFC040000|- rs1_w0_val == -134217729<br>                                                                                                                            |[0x80000644]:RSUBW t6, t5, t4<br> [0x80000648]:sw t6, 208(tp)<br>       |
|  71|[0x80002330]<br>0xFE000400|- rs1_w0_val == -67108865<br>                                                                                                                             |[0x8000065c]:RSUBW t6, t5, t4<br> [0x80000660]:sw t6, 212(tp)<br>       |
|  72|[0x80002334]<br>0xFDFFFFFF|- rs1_w0_val == -33554433<br>                                                                                                                             |[0x80000670]:RSUBW t6, t5, t4<br> [0x80000674]:sw t6, 216(tp)<br>       |
|  73|[0x80002338]<br>0xFF800002|- rs1_w0_val == -16777217<br>                                                                                                                             |[0x80000684]:RSUBW t6, t5, t4<br> [0x80000688]:sw t6, 220(tp)<br>       |
|  74|[0x8000233c]<br>0xFFFC0002|- rs1_w0_val == -524289<br>                                                                                                                               |[0x80000698]:RSUBW t6, t5, t4<br> [0x8000069c]:sw t6, 224(tp)<br>       |
|  75|[0x80002340]<br>0xFFFDFFEF|- rs1_w0_val == -262145<br>                                                                                                                               |[0x800006ac]:RSUBW t6, t5, t4<br> [0x800006b0]:sw t6, 228(tp)<br>       |
|  76|[0x80002344]<br>0x00010000|- rs2_w0_val == -262145<br> - rs1_w0_val == -131073<br>                                                                                                   |[0x800006c4]:RSUBW t6, t5, t4<br> [0x800006c8]:sw t6, 232(tp)<br>       |
|  77|[0x80002348]<br>0xFFFFEFFE|- rs1_w0_val == -8193<br>                                                                                                                                 |[0x800006d8]:RSUBW t6, t5, t4<br> [0x800006dc]:sw t6, 236(tp)<br>       |
|  78|[0x8000234c]<br>0x0000FC00|- rs1_w0_val == -2049<br>                                                                                                                                 |[0x800006f0]:RSUBW t6, t5, t4<br> [0x800006f4]:sw t6, 240(tp)<br>       |
|  79|[0x80002350]<br>0xFFFFBFDF|- rs1_w0_val == -65<br>                                                                                                                                   |[0x80000700]:RSUBW t6, t5, t4<br> [0x80000704]:sw t6, 244(tp)<br>       |
|  80|[0x80002354]<br>0x0000003F|- rs1_w0_val == -3<br>                                                                                                                                    |[0x80000710]:RSUBW t6, t5, t4<br> [0x80000714]:sw t6, 248(tp)<br>       |
|  81|[0x80002358]<br>0xFFFFFFFA|- rs1_w0_val == -2<br>                                                                                                                                    |[0x80000720]:RSUBW t6, t5, t4<br> [0x80000724]:sw t6, 252(tp)<br>       |
|  82|[0x8000235c]<br>0xC2000000|- rs1_w0_val == 67108864<br>                                                                                                                              |[0x80000734]:RSUBW t6, t5, t4<br> [0x80000738]:sw t6, 256(tp)<br>       |
|  83|[0x80002360]<br>0x01000080|- rs1_w0_val == 33554432<br>                                                                                                                              |[0x80000744]:RSUBW t6, t5, t4<br> [0x80000748]:sw t6, 260(tp)<br>       |
|  84|[0x80002364]<br>0x000FFFC0|- rs1_w0_val == 2097152<br>                                                                                                                               |[0x80000754]:RSUBW t6, t5, t4<br> [0x80000758]:sw t6, 264(tp)<br>       |
|  85|[0x80002368]<br>0x00880000|- rs1_w0_val == 1048576<br>                                                                                                                               |[0x80000768]:RSUBW t6, t5, t4<br> [0x8000076c]:sw t6, 268(tp)<br>       |
|  86|[0x8000236c]<br>0x00021000|- rs1_w0_val == 262144<br>                                                                                                                                |[0x8000077c]:RSUBW t6, t5, t4<br> [0x80000780]:sw t6, 272(tp)<br>       |
|  87|[0x80002370]<br>0xEFFFFFFB|- rs2_w0_val == 8<br>                                                                                                                                     |[0x80000790]:RSUBW t6, t5, t4<br> [0x80000794]:sw t6, 276(tp)<br>       |
|  88|[0x80002374]<br>0xFFF10000|- rs1_w0_val == 131072<br>                                                                                                                                |[0x800007a0]:RSUBW t6, t5, t4<br> [0x800007a4]:sw t6, 280(tp)<br>       |
|  89|[0x80002378]<br>0x00003C00|- rs1_w0_val == 32768<br>                                                                                                                                 |[0x800007b4]:RSUBW t6, t5, t4<br> [0x800007b8]:sw t6, 284(tp)<br>       |
|  90|[0x8000237c]<br>0x00000FFB|- rs1_w0_val == 8192<br>                                                                                                                                  |[0x800007c4]:RSUBW t6, t5, t4<br> [0x800007c8]:sw t6, 288(tp)<br>       |
|  91|[0x80002380]<br>0xEFFFFEFF|- rs1_w0_val == -513<br>                                                                                                                                  |[0x800007d4]:RSUBW t6, t5, t4<br> [0x800007d8]:sw t6, 292(tp)<br>       |
|  92|[0x80002384]<br>0x20000020|- rs1_w0_val == 64<br>                                                                                                                                    |[0x800007e4]:RSUBW t6, t5, t4<br> [0x800007e8]:sw t6, 296(tp)<br>       |
|  93|[0x80002388]<br>0xD5555515|- rs1_w0_val == -129<br>                                                                                                                                  |[0x800007f8]:RSUBW t6, t5, t4<br> [0x800007fc]:sw t6, 300(tp)<br>       |
|  94|[0x8000238c]<br>0x2AAAAAAA|- rs1_w0_val == -1<br>                                                                                                                                    |[0x8000080c]:RSUBW t6, t5, t4<br> [0x80000810]:sw t6, 304(tp)<br>       |
