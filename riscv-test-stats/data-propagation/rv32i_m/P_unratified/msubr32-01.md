
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000890')]      |
| SIG_REGION                | [('0x80002210', '0x800023b0', '104 words')]      |
| COV_LABELS                | msubr32      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/msubr32-01.S    |
| Total Number of coverpoints| 244     |
| Total Coverpoints Hit     | 238      |
| Total Signature Updates   | 102      |
| STAT1                     | 99      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000640]:MSUBR32 t6, t5, t4
      [0x80000644]:sw t6, 224(gp)
 -- Signature Address: 0x8000232c Data: 0xB8EBB80C
 -- Redundant Coverpoints hit by the op
      - opcode : msubr32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == 0
      - rs1_w0_val == 4194304




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000085c]:MSUBR32 t6, t5, t4
      [0x80000860]:sw t6, 336(gp)
 -- Signature Address: 0x8000239c Data: 0xA68FAAE5
 -- Redundant Coverpoints hit by the op
      - opcode : msubr32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == -1431655766
      - rs1_w0_val == -268435457




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000880]:MSUBR32 t6, t5, t4
      [0x80000884]:sw t6, 344(gp)
 -- Signature Address: 0x800023a4 Data: 0x27AFAB65
 -- Redundant Coverpoints hit by the op
      - opcode : msubr32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == -1025
      - rs1_w0_val == 2097152






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

|s.no|        signature         |                                                                        coverpoints                                                                        |                                 code                                  |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80002210]<br>0xE7FFFFFE|- opcode : msubr32<br> - rs1 : x27<br> - rs2 : x27<br> - rd : x27<br> - rs1 == rs2 == rd<br> - rs2_w0_val == -134217729<br> - rs1_w0_val == -134217729<br> |[0x8000010c]:MSUBR32 s11, s11, s11<br> [0x80000110]:sw s11, 0(s1)<br>  |
|   2|[0x80002214]<br>0x0751B5F7|- rs1 : x12<br> - rs2 : x12<br> - rd : x13<br> - rs1 == rs2 != rd<br> - rs2_w0_val == -1431655766<br> - rs1_w0_val == -1431655766<br>                      |[0x80000124]:MSUBR32 a3, a2, a2<br> [0x80000128]:sw a3, 4(s1)<br>      |
|   3|[0x80002218]<br>0x5556AAAA|- rs1 : x29<br> - rs2 : x24<br> - rd : x12<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_w0_val == 1431655765<br> - rs1_w0_val == 262144<br>     |[0x80000138]:MSUBR32 a2, t4, s8<br> [0x8000013c]:sw a2, 8(s1)<br>      |
|   4|[0x8000221c]<br>0x55555554|- rs1 : x20<br> - rs2 : x5<br> - rd : x5<br> - rs2 == rd != rs1<br> - rs2_w0_val == 2147483647<br> - rs1_w0_val == 1431655765<br>                          |[0x80000150]:MSUBR32 t0, s4, t0<br> [0x80000154]:sw t0, 12(s1)<br>     |
|   5|[0x80002220]<br>0x00010000|- rs1 : x3<br> - rs2 : x17<br> - rd : x3<br> - rs1 == rd != rs2<br> - rs2_w0_val == -1073741825<br> - rs1_w0_val == 32768<br>                              |[0x80000164]:MSUBR32 gp, gp, a7<br> [0x80000168]:sw gp, 16(s1)<br>     |
|   6|[0x80002224]<br>0xB5555558|- rs1 : x15<br> - rs2 : x26<br> - rd : x20<br> - rs2_w0_val == -536870913<br>                                                                              |[0x80000178]:MSUBR32 s4, a5, s10<br> [0x8000017c]:sw s4, 20(s1)<br>    |
|   7|[0x80002228]<br>0x7BFDDB7D|- rs1 : x18<br> - rs2 : x7<br> - rd : x8<br> - rs2_w0_val == -268435457<br> - rs1_w0_val == 536870912<br>                                                  |[0x8000018c]:MSUBR32 fp, s2, t2<br> [0x80000190]:sw fp, 24(s1)<br>     |
|   8|[0x8000222c]<br>0x54D510C4|- rs1 : x28<br> - rs2 : x10<br> - rd : x11<br> - rs2_w0_val == -67108865<br>                                                                               |[0x800001a4]:MSUBR32 a1, t3, a0<br> [0x800001a8]:sw a1, 28(s1)<br>     |
|   9|[0x80002230]<br>0x0776DF5A|- rs1 : x17<br> - rs2 : x18<br> - rd : x2<br> - rs2_w0_val == -33554433<br> - rs1_w0_val == 4<br>                                                          |[0x800001b8]:MSUBR32 sp, a7, s2<br> [0x800001bc]:sw sp, 32(s1)<br>     |
|  10|[0x80002234]<br>0x1EEDBEAD|- rs1 : x8<br> - rs2 : x3<br> - rd : x1<br> - rs2_w0_val == -16777217<br>                                                                                  |[0x800001cc]:MSUBR32 ra, fp, gp<br> [0x800001d0]:sw ra, 36(s1)<br>     |
|  11|[0x80002238]<br>0xFF7C0003|- rs1 : x19<br> - rs2 : x16<br> - rd : x17<br> - rs2_w0_val == -8388609<br> - rs1_w0_val == -262145<br>                                                    |[0x800001e4]:MSUBR32 a7, s3, a6<br> [0x800001e8]:sw a7, 40(s1)<br>     |
|  12|[0x8000223c]<br>0xFE1FFFFF|- rs1 : x11<br> - rs2 : x30<br> - rd : x18<br> - rs2_w0_val == -4194305<br> - rs1_w0_val == 2097152<br>                                                    |[0x800001f8]:MSUBR32 s2, a1, t5<br> [0x800001fc]:sw s2, 44(s1)<br>     |
|  13|[0x80002240]<br>0xFA96FAAE|- rs1 : x16<br> - rs2 : x14<br> - rd : x31<br> - rs2_w0_val == -2097153<br> - rs1_w0_val == -9<br>                                                         |[0x8000020c]:MSUBR32 t6, a6, a4<br> [0x80000210]:sw t6, 48(s1)<br>     |
|  14|[0x80002244]<br>0xBFEFFFF6|- rs1 : x6<br> - rs2 : x22<br> - rd : x16<br> - rs2_w0_val == -1048577<br> - rs1_w0_val == -1073741825<br>                                                 |[0x80000224]:MSUBR32 a6, t1, s6<br> [0x80000228]:sw a6, 52(s1)<br>     |
|  15|[0x80002248]<br>0xED8EADF8|- rs1 : x4<br> - rs2 : x8<br> - rd : x25<br> - rs2_w0_val == -524289<br>                                                                                   |[0x80000238]:MSUBR32 s9, tp, fp<br> [0x8000023c]:sw s9, 56(s1)<br>     |
|  16|[0x8000224c]<br>0x55455551|- rs1 : x13<br> - rs2 : x4<br> - rd : x24<br> - rs2_w0_val == -262145<br>                                                                                  |[0x80000254]:MSUBR32 s8, a3, tp<br> [0x80000258]:sw s8, 0(gp)<br>      |
|  17|[0x80002250]<br>0xBFFFFFFF|- rs1 : x1<br> - rs2 : x0<br> - rd : x6<br> - rs2_w0_val == 0<br> - rs1_w0_val == 128<br>                                                                  |[0x80000268]:MSUBR32 t1, ra, zero<br> [0x8000026c]:sw t1, 4(gp)<br>    |
|  18|[0x80002254]<br>0x55D55555|- rs1 : x26<br> - rs2 : x21<br> - rd : x28<br> - rs2_w0_val == -65537<br> - rs1_w0_val == 8388608<br>                                                      |[0x8000027c]:MSUBR32 t3, s10, s5<br> [0x80000280]:sw t3, 8(gp)<br>     |
|  19|[0x80002258]<br>0xFFFCFFFB|- rs1 : x31<br> - rs2 : x25<br> - rd : x21<br> - rs2_w0_val == -32769<br>                                                                                  |[0x80000290]:MSUBR32 s5, t6, s9<br> [0x80000294]:sw s5, 12(gp)<br>     |
|  20|[0x8000225c]<br>0xFFFFFFFF|- rs1 : x9<br> - rs2 : x13<br> - rd : x7<br> - rs2_w0_val == -16385<br> - rs1_w0_val == 268435456<br>                                                      |[0x800002a4]:MSUBR32 t2, s1, a3<br> [0x800002a8]:sw t2, 16(gp)<br>     |
|  21|[0x80002260]<br>0xFFEFF554|- rs1 : x2<br> - rs2 : x20<br> - rd : x22<br> - rs2_w0_val == -8193<br>                                                                                    |[0x800002bc]:MSUBR32 s6, sp, s4<br> [0x800002c0]:sw s6, 20(gp)<br>     |
|  22|[0x80002264]<br>0xEFDFEFFE|- rs1 : x30<br> - rs2 : x15<br> - rd : x14<br> - rs2_w0_val == -4097<br> - rs1_w0_val == -268435457<br>                                                    |[0x800002d4]:MSUBR32 a4, t5, a5<br> [0x800002d8]:sw a4, 24(gp)<br>     |
|  23|[0x80002268]<br>0x003BFFFF|- rs1 : x7<br> - rs2 : x2<br> - rd : x19<br> - rs2_w0_val == -2049<br> - rs1_w0_val == 4194304<br>                                                         |[0x800002e8]:MSUBR32 s3, t2, sp<br> [0x800002ec]:sw s3, 28(gp)<br>     |
|  24|[0x8000226c]<br>0xFFFBFFFF|- rs1 : x0<br> - rs2 : x6<br> - rd : x4<br> - rs2_w0_val == -1025<br> - rs1_w0_val == 0<br>                                                                |[0x800002fc]:MSUBR32 tp, zero, t1<br> [0x80000300]:sw tp, 32(gp)<br>   |
|  25|[0x80002270]<br>0x14000000|- rs1 : x14<br> - rs2 : x11<br> - rd : x9<br> - rs2_w0_val == -513<br> - rs1_w0_val == 67108864<br>                                                        |[0x8000030c]:MSUBR32 s1, a4, a1<br> [0x80000310]:sw s1, 36(gp)<br>     |
|  26|[0x80002274]<br>0xEFDFDEFE|- rs1 : x24<br> - rs2 : x28<br> - rd : x30<br> - rs2_w0_val == -257<br> - rs1_w0_val == -8193<br>                                                          |[0x80000320]:MSUBR32 t5, s8, t3<br> [0x80000324]:sw t5, 40(gp)<br>     |
|  27|[0x80002278]<br>0xFBFFFCF9|- rs1 : x25<br> - rs2 : x29<br> - rd : x10<br> - rs2_w0_val == -129<br>                                                                                    |[0x80000330]:MSUBR32 a0, s9, t4<br> [0x80000334]:sw a0, 44(gp)<br>     |
|  28|[0x8000227c]<br>0x00000000|- rs1 : x10<br> - rs2 : x19<br> - rd : x0<br> - rs2_w0_val == -65<br>                                                                                      |[0x80000340]:MSUBR32 zero, a0, s3<br> [0x80000344]:sw zero, 48(gp)<br> |
|  29|[0x80002280]<br>0xFFFF7B5E|- rs1 : x23<br> - rs2 : x1<br> - rd : x29<br> - rs2_w0_val == -33<br> - rs1_w0_val == -1025<br>                                                            |[0x80000350]:MSUBR32 t4, s7, ra<br> [0x80000354]:sw t4, 52(gp)<br>     |
|  30|[0x80002284]<br>0x77FFEFEE|- rs1 : x22<br> - rs2 : x23<br> - rd : x15<br> - rs2_w0_val == -17<br>                                                                                     |[0x80000364]:MSUBR32 a5, s6, s7<br> [0x80000368]:sw a5, 56(gp)<br>     |
|  31|[0x80002288]<br>0x007FFB77|- rs1 : x21<br> - rs2 : x9<br> - rd : x26<br> - rs2_w0_val == -9<br> - rs1_w0_val == -129<br>                                                              |[0x80000374]:MSUBR32 s10, s5, s1<br> [0x80000378]:sw s10, 60(gp)<br>   |
|  32|[0x8000228c]<br>0xFFFFFFE0|- rs1 : x5<br> - rs2 : x31<br> - rd : x23<br> - rs2_w0_val == -5<br> - rs1_w0_val == -3<br>                                                                |[0x80000384]:MSUBR32 s7, t0, t6<br> [0x80000388]:sw s7, 64(gp)<br>     |
|  33|[0x80002290]<br>0xFFFFFFF5|- rs2_w0_val == -3<br> - rs1_w0_val == -2<br>                                                                                                              |[0x80000394]:MSUBR32 t6, t5, t4<br> [0x80000398]:sw t6, 68(gp)<br>     |
|  34|[0x80002294]<br>0x000FFFF5|- rs2_w0_val == -2<br> - rs1_w0_val == 524288<br>                                                                                                          |[0x800003a4]:MSUBR32 t6, t5, t4<br> [0x800003a8]:sw t6, 72(gp)<br>     |
|  35|[0x80002298]<br>0x000FFFF5|- rs2_w0_val == -2147483648<br>                                                                                                                            |[0x800003b4]:MSUBR32 t6, t5, t4<br> [0x800003b8]:sw t6, 76(gp)<br>     |
|  36|[0x8000229c]<br>0x800FFFF5|- rs2_w0_val == 1073741824<br>                                                                                                                             |[0x800003c8]:MSUBR32 t6, t5, t4<br> [0x800003cc]:sw t6, 80(gp)<br>     |
|  37|[0x800022a0]<br>0xA00FFFF5|- rs2_w0_val == 536870912<br> - rs1_w0_val == -33<br>                                                                                                      |[0x800003d8]:MSUBR32 t6, t5, t4<br> [0x800003dc]:sw t6, 84(gp)<br>     |
|  38|[0x800022a4]<br>0xB00FFFF5|- rs2_w0_val == 268435456<br> - rs1_w0_val == -33554433<br>                                                                                                |[0x800003ec]:MSUBR32 t6, t5, t4<br> [0x800003f0]:sw t6, 88(gp)<br>     |
|  39|[0x800022a8]<br>0xB00FFFF5|- rs2_w0_val == 134217728<br> - rs1_w0_val == 512<br>                                                                                                      |[0x800003fc]:MSUBR32 t6, t5, t4<br> [0x80000400]:sw t6, 92(gp)<br>     |
|  40|[0x800022ac]<br>0xB40FFFF5|- rs2_w0_val == 67108864<br>                                                                                                                               |[0x80000410]:MSUBR32 t6, t5, t4<br> [0x80000414]:sw t6, 96(gp)<br>     |
|  41|[0x800022b0]<br>0xB40FFFF5|- rs2_w0_val == 33554432<br>                                                                                                                               |[0x80000420]:MSUBR32 t6, t5, t4<br> [0x80000424]:sw t6, 100(gp)<br>    |
|  42|[0x800022b4]<br>0xBA0FFFF5|- rs2_w0_val == 16777216<br>                                                                                                                               |[0x80000430]:MSUBR32 t6, t5, t4<br> [0x80000434]:sw t6, 104(gp)<br>    |
|  43|[0x800022b8]<br>0xC28FFFF5|- rs2_w0_val == 8388608<br> - rs1_w0_val == -17<br>                                                                                                        |[0x80000440]:MSUBR32 t6, t5, t4<br> [0x80000444]:sw t6, 108(gp)<br>    |
|  44|[0x800022bc]<br>0xC28FFFF5|- rs2_w0_val == 4194304<br> - rs1_w0_val == 1024<br>                                                                                                       |[0x80000450]:MSUBR32 t6, t5, t4<br> [0x80000454]:sw t6, 112(gp)<br>    |
|  45|[0x800022c0]<br>0xC2AFFFF5|- rs2_w0_val == 2097152<br> - rs1_w0_val == -4194305<br>                                                                                                   |[0x80000464]:MSUBR32 t6, t5, t4<br> [0x80000468]:sw t6, 116(gp)<br>    |
|  46|[0x800022c4]<br>0xC2B00015|- rs1_w0_val == 32<br>                                                                                                                                     |[0x80000478]:MSUBR32 t6, t5, t4<br> [0x8000047c]:sw t6, 120(gp)<br>    |
|  47|[0x800022c8]<br>0xC2B00015|- rs1_w0_val == 16<br>                                                                                                                                     |[0x80000488]:MSUBR32 t6, t5, t4<br> [0x8000048c]:sw t6, 124(gp)<br>    |
|  48|[0x800022cc]<br>0xCAB0001D|- rs1_w0_val == 8<br>                                                                                                                                      |[0x8000049c]:MSUBR32 t6, t5, t4<br> [0x800004a0]:sw t6, 128(gp)<br>    |
|  49|[0x800022d0]<br>0xCAB0011F|- rs1_w0_val == 2<br>                                                                                                                                      |[0x800004ac]:MSUBR32 t6, t5, t4<br> [0x800004b0]:sw t6, 132(gp)<br>    |
|  50|[0x800022d4]<br>0xC8B0011F|- rs1_w0_val == 1<br>                                                                                                                                      |[0x800004bc]:MSUBR32 t6, t5, t4<br> [0x800004c0]:sw t6, 136(gp)<br>    |
|  51|[0x800022d8]<br>0xC8B0011F|- rs2_w0_val == 2048<br>                                                                                                                                   |[0x800004d0]:MSUBR32 t6, t5, t4<br> [0x800004d4]:sw t6, 140(gp)<br>    |
|  52|[0x800022dc]<br>0xC8B0011A|- rs1_w0_val == -1<br>                                                                                                                                     |[0x800004e0]:MSUBR32 t6, t5, t4<br> [0x800004e4]:sw t6, 144(gp)<br>    |
|  53|[0x800022e0]<br>0xC8B0011A|- rs2_w0_val == 1048576<br>                                                                                                                                |[0x800004f0]:MSUBR32 t6, t5, t4<br> [0x800004f4]:sw t6, 148(gp)<br>    |
|  54|[0x800022e4]<br>0xD0B8011A|- rs2_w0_val == 524288<br> - rs1_w0_val == -257<br>                                                                                                        |[0x80000500]:MSUBR32 t6, t5, t4<br> [0x80000504]:sw t6, 152(gp)<br>    |
|  55|[0x800022e8]<br>0xB0B8011A|- rs2_w0_val == 262144<br> - rs1_w0_val == 2048<br>                                                                                                        |[0x80000514]:MSUBR32 t6, t5, t4<br> [0x80000518]:sw t6, 156(gp)<br>    |
|  56|[0x800022ec]<br>0xB0AC011A|- rs2_w0_val == 131072<br>                                                                                                                                 |[0x80000524]:MSUBR32 t6, t5, t4<br> [0x80000528]:sw t6, 160(gp)<br>    |
|  57|[0x800022f0]<br>0xB0AD011A|- rs2_w0_val == 65536<br>                                                                                                                                  |[0x80000538]:MSUBR32 t6, t5, t4<br> [0x8000053c]:sw t6, 164(gp)<br>    |
|  58|[0x800022f4]<br>0xB0A9811A|- rs2_w0_val == 32768<br>                                                                                                                                  |[0x80000548]:MSUBR32 t6, t5, t4<br> [0x8000054c]:sw t6, 168(gp)<br>    |
|  59|[0x800022f8]<br>0xB0AAC11A|- rs2_w0_val == 16384<br> - rs1_w0_val == -5<br>                                                                                                           |[0x80000558]:MSUBR32 t6, t5, t4<br> [0x8000055c]:sw t6, 172(gp)<br>    |
|  60|[0x800022fc]<br>0xB0AB611A|- rs2_w0_val == 8192<br>                                                                                                                                   |[0x80000568]:MSUBR32 t6, t5, t4<br> [0x8000056c]:sw t6, 176(gp)<br>    |
|  61|[0x80002300]<br>0xB0AB711A|- rs2_w0_val == 4096<br>                                                                                                                                   |[0x80000578]:MSUBR32 t6, t5, t4<br> [0x8000057c]:sw t6, 180(gp)<br>    |
|  62|[0x80002304]<br>0xB8AB751A|- rs2_w0_val == 1024<br> - rs1_w0_val == -131073<br>                                                                                                       |[0x8000058c]:MSUBR32 t6, t5, t4<br> [0x80000590]:sw t6, 184(gp)<br>    |
|  63|[0x80002308]<br>0xB8AB771A|- rs2_w0_val == 512<br> - rs1_w0_val == -8388609<br>                                                                                                       |[0x800005a0]:MSUBR32 t6, t5, t4<br> [0x800005a4]:sw t6, 188(gp)<br>    |
|  64|[0x8000230c]<br>0xB8CB781A|- rs2_w0_val == 256<br>                                                                                                                                    |[0x800005b4]:MSUBR32 t6, t5, t4<br> [0x800005b8]:sw t6, 192(gp)<br>    |
|  65|[0x80002310]<br>0xB8CB759A|- rs2_w0_val == 128<br>                                                                                                                                    |[0x800005c4]:MSUBR32 t6, t5, t4<br> [0x800005c8]:sw t6, 196(gp)<br>    |
|  66|[0x80002314]<br>0xB8CB77DA|- rs2_w0_val == 64<br>                                                                                                                                     |[0x800005d4]:MSUBR32 t6, t5, t4<br> [0x800005d8]:sw t6, 200(gp)<br>    |
|  67|[0x80002318]<br>0xB8EB77FA|- rs2_w0_val == 32<br> - rs1_w0_val == -65537<br>                                                                                                          |[0x800005e8]:MSUBR32 t6, t5, t4<br> [0x800005ec]:sw t6, 204(gp)<br>    |
|  68|[0x8000231c]<br>0xB8EB780A|- rs2_w0_val == 16<br>                                                                                                                                     |[0x800005fc]:MSUBR32 t6, t5, t4<br> [0x80000600]:sw t6, 208(gp)<br>    |
|  69|[0x80002320]<br>0xB8EB780A|- rs2_w0_val == 4<br>                                                                                                                                      |[0x8000060c]:MSUBR32 t6, t5, t4<br> [0x80000610]:sw t6, 212(gp)<br>    |
|  70|[0x80002324]<br>0xB8EBB80C|- rs2_w0_val == 2<br>                                                                                                                                      |[0x80000620]:MSUBR32 t6, t5, t4<br> [0x80000624]:sw t6, 216(gp)<br>    |
|  71|[0x80002328]<br>0xB8EBB80C|- rs2_w0_val == 1<br>                                                                                                                                      |[0x80000630]:MSUBR32 t6, t5, t4<br> [0x80000634]:sw t6, 220(gp)<br>    |
|  72|[0x80002330]<br>0xB4EBB80B|- rs2_w0_val == -1<br> - rs1_w0_val == -67108865<br>                                                                                                       |[0x80000654]:MSUBR32 t6, t5, t4<br> [0x80000658]:sw t6, 228(gp)<br>    |
|  73|[0x80002334]<br>0x30EBB80A|- rs1_w0_val == 2147483647<br>                                                                                                                             |[0x8000066c]:MSUBR32 t6, t5, t4<br> [0x80000670]:sw t6, 232(gp)<br>    |
|  74|[0x80002338]<br>0x10ABB809|- rs1_w0_val == -536870913<br>                                                                                                                             |[0x80000684]:MSUBR32 t6, t5, t4<br> [0x80000688]:sw t6, 236(gp)<br>    |
|  75|[0x8000233c]<br>0x0FAB7808|- rs1_w0_val == -16777217<br>                                                                                                                              |[0x8000069c]:MSUBR32 t6, t5, t4<br> [0x800006a0]:sw t6, 240(gp)<br>    |
|  76|[0x80002340]<br>0x0F6B7806|- rs1_w0_val == -2097153<br>                                                                                                                               |[0x800006b0]:MSUBR32 t6, t5, t4<br> [0x800006b4]:sw t6, 244(gp)<br>    |
|  77|[0x80002344]<br>0x0B5B7805|- rs1_w0_val == -1048577<br>                                                                                                                               |[0x800006c8]:MSUBR32 t6, t5, t4<br> [0x800006cc]:sw t6, 248(gp)<br>    |
|  78|[0x80002348]<br>0x09537804|- rs1_w0_val == -524289<br>                                                                                                                                |[0x800006e0]:MSUBR32 t6, t5, t4<br> [0x800006e4]:sw t6, 252(gp)<br>    |
|  79|[0x8000234c]<br>0x094EF7FB|- rs1_w0_val == -32769<br>                                                                                                                                 |[0x800006f4]:MSUBR32 t6, t5, t4<br> [0x800006f8]:sw t6, 256(gp)<br>    |
|  80|[0x80002350]<br>0x894EF7FB|- rs1_w0_val == -16385<br>                                                                                                                                 |[0x80000708]:MSUBR32 t6, t5, t4<br> [0x8000070c]:sw t6, 260(gp)<br>    |
|  81|[0x80002354]<br>0x894AE7BA|- rs1_w0_val == -4097<br>                                                                                                                                  |[0x8000071c]:MSUBR32 t6, t5, t4<br> [0x80000720]:sw t6, 264(gp)<br>    |
|  82|[0x80002358]<br>0x8D4AE7BA|- rs1_w0_val == -2049<br>                                                                                                                                  |[0x80000730]:MSUBR32 t6, t5, t4<br> [0x80000734]:sw t6, 268(gp)<br>    |
|  83|[0x8000235c]<br>0x8D4AE6F7|- rs1_w0_val == -65<br>                                                                                                                                    |[0x80000740]:MSUBR32 t6, t5, t4<br> [0x80000744]:sw t6, 272(gp)<br>    |
|  84|[0x80002360]<br>0xCD4AE6F7|- rs1_w0_val == 1073741824<br>                                                                                                                             |[0x80000750]:MSUBR32 t6, t5, t4<br> [0x80000754]:sw t6, 276(gp)<br>    |
|  85|[0x80002364]<br>0xCD4AE6F7|- rs1_w0_val == 134217728<br>                                                                                                                              |[0x80000760]:MSUBR32 t6, t5, t4<br> [0x80000764]:sw t6, 280(gp)<br>    |
|  86|[0x80002368]<br>0xCD4AE6F7|- rs1_w0_val == 33554432<br>                                                                                                                               |[0x80000770]:MSUBR32 t6, t5, t4<br> [0x80000774]:sw t6, 284(gp)<br>    |
|  87|[0x8000236c]<br>0xD44AE6F7|- rs1_w0_val == 16777216<br>                                                                                                                               |[0x80000780]:MSUBR32 t6, t5, t4<br> [0x80000784]:sw t6, 288(gp)<br>    |
|  88|[0x80002370]<br>0xD46AE6F7|- rs1_w0_val == 1048576<br>                                                                                                                                |[0x80000790]:MSUBR32 t6, t5, t4<br> [0x80000794]:sw t6, 292(gp)<br>    |
|  89|[0x80002374]<br>0xD4EAE6FF|- rs2_w0_val == 8<br>                                                                                                                                      |[0x800007a4]:MSUBR32 t6, t5, t4<br> [0x800007a8]:sw t6, 296(gp)<br>    |
|  90|[0x80002378]<br>0xD3EAE6FF|- rs1_w0_val == 131072<br>                                                                                                                                 |[0x800007b4]:MSUBR32 t6, t5, t4<br> [0x800007b8]:sw t6, 300(gp)<br>    |
|  91|[0x8000237c]<br>0xD3EBE6FF|- rs1_w0_val == 65536<br>                                                                                                                                  |[0x800007c8]:MSUBR32 t6, t5, t4<br> [0x800007cc]:sw t6, 304(gp)<br>    |
|  92|[0x80002380]<br>0xD3EBDEFB|- rs1_w0_val == -513<br>                                                                                                                                   |[0x800007d8]:MSUBR32 t6, t5, t4<br> [0x800007dc]:sw t6, 308(gp)<br>    |
|  93|[0x80002384]<br>0xD3E99EFB|- rs1_w0_val == 16384<br>                                                                                                                                  |[0x800007e8]:MSUBR32 t6, t5, t4<br> [0x800007ec]:sw t6, 312(gp)<br>    |
|  94|[0x80002388]<br>0xD3E8FEFB|- rs1_w0_val == 8192<br>                                                                                                                                   |[0x800007f8]:MSUBR32 t6, t5, t4<br> [0x800007fc]:sw t6, 316(gp)<br>    |
|  95|[0x8000238c]<br>0xD3E4FEFB|- rs1_w0_val == 4096<br>                                                                                                                                   |[0x80000808]:MSUBR32 t6, t5, t4<br> [0x8000080c]:sw t6, 320(gp)<br>    |
|  96|[0x80002390]<br>0xD3E4FFFB|- rs1_w0_val == 256<br>                                                                                                                                    |[0x8000081c]:MSUBR32 t6, t5, t4<br> [0x80000820]:sw t6, 324(gp)<br>    |
|  97|[0x80002394]<br>0xDBE5003B|- rs1_w0_val == 64<br>                                                                                                                                     |[0x80000830]:MSUBR32 t6, t5, t4<br> [0x80000834]:sw t6, 328(gp)<br>    |
|  98|[0x80002398]<br>0x5BE5003B|- rs1_w0_val == -2147483648<br>                                                                                                                            |[0x80000844]:MSUBR32 t6, t5, t4<br> [0x80000848]:sw t6, 332(gp)<br>    |
|  99|[0x800023a0]<br>0xA78FAB65|- rs2_w0_val == -131073<br>                                                                                                                                |[0x80000870]:MSUBR32 t6, t5, t4<br> [0x80000874]:sw t6, 340(gp)<br>    |
