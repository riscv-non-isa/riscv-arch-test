
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000900')]      |
| SIG_REGION                | [('0x80002210', '0x800023c0', '108 words')]      |
| COV_LABELS                | ave      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/ave-01.S    |
| Total Number of coverpoints| 252     |
| Total Coverpoints Hit     | 246      |
| Total Signature Updates   | 107      |
| STAT1                     | 102      |
| STAT2                     | 5      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000754]:AVE t6, t5, t4
      [0x80000758]:sw t6, 212(ra)
 -- Signature Address: 0x8000235c Data: 0xFFF00010
 -- Redundant Coverpoints hit by the op
      - opcode : ave
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val == -2097153
      - rs2_val == 32
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008a4]:AVE t6, t5, t4
      [0x800008a8]:sw t6, 288(ra)
 -- Signature Address: 0x800023a8 Data: 0xFFFFDFFC
 -- Redundant Coverpoints hit by the op
      - opcode : ave
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val == -16385
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008b8]:AVE t6, t5, t4
      [0x800008bc]:sw t6, 292(ra)
 -- Signature Address: 0x800023ac Data: 0x40000010
 -- Redundant Coverpoints hit by the op
      - opcode : ave
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs2_val == 2147483647
      - rs1_val == 32
      - rs1_val > 0 and rs2_val > 0
      - rs2_val == (2**(xlen-1)-1)




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008cc]:AVE t6, t5, t4
      [0x800008d0]:sw t6, 296(ra)
 -- Signature Address: 0x800023b0 Data: 0xFFFF7DFF
 -- Redundant Coverpoints hit by the op
      - opcode : ave
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs2_val == -65537
      - rs1_val == -1025
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008f4]:AVE t6, t5, t4
      [0x800008f8]:sw t6, 304(ra)
 -- Signature Address: 0x800023b8 Data: 0xFFFFFFF0
 -- Redundant Coverpoints hit by the op
      - opcode : ave
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs2_val == -33
      - rs1_val == 0






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

|s.no|        signature         |                                                                                                  coverpoints                                                                                                   |                               code                               |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------|
|   1|[0x80002210]<br>0xFFFFBFFF|- opcode : ave<br> - rs1 : x11<br> - rs2 : x11<br> - rd : x11<br> - rs1 == rs2 == rd<br> - rs2_val == -16385<br> - rs1_val == -16385<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val == rs2_val<br>             |[0x80000110]:AVE a1, a1, a1<br> [0x80000114]:sw a1, 0(t1)<br>     |
|   2|[0x80002214]<br>0x00000020|- rs1 : x18<br> - rs2 : x18<br> - rd : x2<br> - rs1 == rs2 != rd<br> - rs2_val == 32<br> - rs1_val == 32<br> - rs1_val > 0 and rs2_val > 0<br>                                                                  |[0x80000120]:AVE sp, s2, s2<br> [0x80000124]:sw sp, 4(t1)<br>     |
|   3|[0x80002218]<br>0x00000000|- rs1 : x16<br> - rs2 : x9<br> - rd : x23<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val != rs2_val<br> - rs2_val == -1073741825<br> - rs1_val == 1073741824<br> - rs1_val > 0 and rs2_val < 0<br> |[0x80000134]:AVE s7, a6, s1<br> [0x80000138]:sw s7, 8(t1)<br>     |
|   4|[0x8000221c]<br>0xF8000000|- rs1 : x10<br> - rs2 : x1<br> - rd : x1<br> - rs2 == rd != rs1<br> - rs2_val == -536870913<br> - rs1_val == 268435456<br>                                                                                      |[0x80000148]:AVE ra, a0, ra<br> [0x8000014c]:sw ra, 12(t1)<br>    |
|   5|[0x80002220]<br>0xF8000800|- rs1 : x17<br> - rs2 : x7<br> - rd : x17<br> - rs1 == rd != rs2<br> - rs2_val == -268435457<br> - rs1_val == 4096<br>                                                                                          |[0x8000015c]:AVE a7, a7, t2<br> [0x80000160]:sw a7, 16(t1)<br>    |
|   6|[0x80002224]<br>0x0C000000|- rs1 : x30<br> - rs2 : x14<br> - rd : x15<br> - rs2_val == -134217729<br> - rs1_val == 536870912<br>                                                                                                           |[0x80000170]:AVE a5, t5, a4<br> [0x80000174]:sw a5, 20(t1)<br>    |
|   7|[0x80002228]<br>0x31333333|- rs1 : x22<br> - rs2 : x31<br> - rd : x7<br> - rs2_val == -67108865<br>                                                                                                                                        |[0x80000188]:AVE t2, s6, t6<br> [0x8000018c]:sw t2, 24(t1)<br>    |
|   8|[0x8000222c]<br>0xFF000000|- rs1 : x9<br> - rs2 : x12<br> - rd : x20<br> - rs2_val == -33554433<br> - rs1_val == 0<br>                                                                                                                     |[0x8000019c]:AVE s4, s1, a2<br> [0x800001a0]:sw s4, 28(t1)<br>    |
|   9|[0x80002230]<br>0x2A2AAAAB|- rs1 : x2<br> - rs2 : x16<br> - rd : x27<br> - rs2_val == -16777217<br>                                                                                                                                        |[0x800001b4]:AVE s11, sp, a6<br> [0x800001b8]:sw s11, 32(t1)<br>  |
|  10|[0x80002234]<br>0xFFBFFFFD|- rs1 : x13<br> - rs2 : x30<br> - rd : x9<br> - rs2_val == -8388609<br>                                                                                                                                         |[0x800001c8]:AVE s1, a3, t5<br> [0x800001cc]:sw s1, 36(t1)<br>    |
|  11|[0x80002238]<br>0xFFE00001|- rs1 : x14<br> - rs2 : x8<br> - rd : x19<br> - rs2_val == -4194305<br>                                                                                                                                         |[0x800001dc]:AVE s3, a4, fp<br> [0x800001e0]:sw s3, 40(t1)<br>    |
|  12|[0x8000223c]<br>0xFFEFA57E|- rs1 : x28<br> - rs2 : x21<br> - rd : x5<br> - rs2_val == -2097153<br>                                                                                                                                         |[0x800001f4]:AVE t0, t3, s5<br> [0x800001f8]:sw t0, 44(t1)<br>    |
|  13|[0x80002240]<br>0xFFF80020|- rs1 : x15<br> - rs2 : x5<br> - rd : x26<br> - rs2_val == -1048577<br> - rs1_val == 64<br>                                                                                                                     |[0x80000208]:AVE s10, a5, t0<br> [0x8000020c]:sw s10, 48(t1)<br>  |
|  14|[0x80002244]<br>0xFFFBFFFF|- rs1 : x31<br> - rs2 : x4<br> - rd : x18<br> - rs2_val == -524289<br>                                                                                                                                          |[0x8000021c]:AVE s2, t6, tp<br> [0x80000220]:sw s2, 52(t1)<br>    |
|  15|[0x80002248]<br>0xFFFE0008|- rs1 : x27<br> - rs2 : x3<br> - rd : x22<br> - rs2_val == -262145<br> - rs1_val == 16<br>                                                                                                                      |[0x80000230]:AVE s6, s11, gp<br> [0x80000234]:sw s6, 56(t1)<br>   |
|  16|[0x8000224c]<br>0xFFFEBFFF|- rs1 : x8<br> - rs2 : x26<br> - rd : x25<br> - rs2_val == -131073<br> - rs1_val == -32769<br>                                                                                                                  |[0x80000250]:AVE s9, fp, s10<br> [0x80000254]:sw s9, 0(s1)<br>    |
|  17|[0x80002250]<br>0x00000000|- rs1 : x24<br> - rs2 : x19<br> - rd : x0<br> - rs2_val == -65537<br> - rs1_val == -1025<br>                                                                                                                    |[0x80000264]:AVE zero, s8, s3<br> [0x80000268]:sw zero, 4(s1)<br> |
|  18|[0x80002254]<br>0xFFFFFC00|- rs1 : x20<br> - rs2 : x0<br> - rd : x12<br> - rs1_val == -2049<br> - rs2_val == 0<br>                                                                                                                         |[0x80000278]:AVE a2, s4, zero<br> [0x8000027c]:sw a2, 8(s1)<br>   |
|  19|[0x80002258]<br>0x001FE000|- rs1 : x19<br> - rs2 : x13<br> - rd : x4<br> - rs1_val == 4194304<br>                                                                                                                                          |[0x8000028c]:AVE tp, s3, a3<br> [0x80000290]:sw tp, 12(s1)<br>    |
|  20|[0x8000225c]<br>0x0003F000|- rs1 : x23<br> - rs2 : x10<br> - rd : x29<br> - rs2_val == -8193<br> - rs1_val == 524288<br>                                                                                                                   |[0x800002a0]:AVE t4, s7, a0<br> [0x800002a4]:sw t4, 16(s1)<br>    |
|  21|[0x80002260]<br>0x19999199|- rs1 : x29<br> - rs2 : x15<br> - rd : x31<br> - rs2_val == -4097<br>                                                                                                                                           |[0x800002b8]:AVE t6, t4, a5<br> [0x800002bc]:sw t6, 20(s1)<br>    |
|  22|[0x80002264]<br>0xFFFDFBFF|- rs1 : x21<br> - rs2 : x29<br> - rd : x14<br> - rs2_val == -2049<br> - rs1_val == -262145<br>                                                                                                                  |[0x800002d0]:AVE a4, s5, t4<br> [0x800002d4]:sw a4, 24(s1)<br>    |
|  23|[0x80002268]<br>0xFFFFFDFC|- rs1 : x26<br> - rs2 : x27<br> - rd : x28<br> - rs2_val == -1025<br>                                                                                                                                           |[0x800002e0]:AVE t3, s10, s11<br> [0x800002e4]:sw t3, 28(s1)<br>  |
|  24|[0x8000226c]<br>0x2AAAA9AA|- rs1 : x12<br> - rs2 : x2<br> - rd : x24<br> - rs2_val == -513<br> - rs1_val == 1431655765<br>                                                                                                                 |[0x800002f4]:AVE s8, a2, sp<br> [0x800002f8]:sw s8, 32(s1)<br>    |
|  25|[0x80002270]<br>0xFFDFFF7F|- rs1 : x25<br> - rs2 : x22<br> - rd : x13<br> - rs2_val == -257<br> - rs1_val == -4194305<br>                                                                                                                  |[0x80000308]:AVE a3, s9, s6<br> [0x8000030c]:sw a3, 36(s1)<br>    |
|  26|[0x80002274]<br>0xFFFFEFBF|- rs1 : x5<br> - rs2 : x17<br> - rd : x8<br> - rs2_val == -129<br> - rs1_val == -8193<br>                                                                                                                       |[0x8000031c]:AVE fp, t0, a7<br> [0x80000320]:sw fp, 40(s1)<br>    |
|  27|[0x80002278]<br>0x2AAAAA8A|- rs1 : x3<br> - rs2 : x6<br> - rd : x10<br> - rs2_val == -65<br>                                                                                                                                               |[0x80000330]:AVE a0, gp, t1<br> [0x80000334]:sw a0, 44(s1)<br>    |
|  28|[0x8000227c]<br>0xFFFFFFF0|- rs1 : x0<br> - rs2 : x24<br> - rd : x6<br> - rs2_val == -33<br>                                                                                                                                               |[0x80000340]:AVE t1, zero, s8<br> [0x80000344]:sw t1, 48(s1)<br>  |
|  29|[0x80002280]<br>0xFFFFFFFA|- rs1 : x1<br> - rs2 : x28<br> - rd : x30<br> - rs2_val == -17<br>                                                                                                                                              |[0x80000350]:AVE t5, ra, t3<br> [0x80000354]:sw t5, 52(s1)<br>    |
|  30|[0x80002284]<br>0x19999995|- rs1 : x7<br> - rs2 : x23<br> - rd : x21<br> - rs2_val == -9<br>                                                                                                                                               |[0x80000364]:AVE s5, t2, s7<br> [0x80000368]:sw s5, 56(s1)<br>    |
|  31|[0x80002288]<br>0x03FFFFFE|- rs1 : x4<br> - rs2 : x25<br> - rd : x16<br> - rs2_val == -5<br> - rs1_val == 134217728<br>                                                                                                                    |[0x8000037c]:AVE a6, tp, s9<br> [0x80000380]:sw a6, 0(ra)<br>     |
|  32|[0x8000228c]<br>0x00000001|- rs1 : x6<br> - rs2 : x20<br> - rd : x3<br> - rs2_val == -3<br>                                                                                                                                                |[0x8000038c]:AVE gp, t1, s4<br> [0x80000390]:sw gp, 4(ra)<br>     |
|  33|[0x80002290]<br>0x000007FF|- rs2_val == -2<br>                                                                                                                                                                                             |[0x8000039c]:AVE t6, t5, t4<br> [0x800003a0]:sw t6, 8(ra)<br>     |
|  34|[0x80002294]<br>0x40000008|- rs1_val == 2147483647<br> - rs2_val == 16<br> - rs1_val == (2**(xlen-1)-1)<br>                                                                                                                                |[0x800003b0]:AVE t6, t5, t4<br> [0x800003b4]:sw t6, 12(ra)<br>    |
|  35|[0x80002298]<br>0x0AAAAAAB|- rs1_val == -1073741825<br> - rs1_val < 0 and rs2_val > 0<br>                                                                                                                                                  |[0x800003c8]:AVE t6, t5, t4<br> [0x800003cc]:sw t6, 16(ra)<br>    |
|  36|[0x8000229c]<br>0xF0000000|- rs1_val == -536870913<br>                                                                                                                                                                                     |[0x800003dc]:AVE t6, t5, t4<br> [0x800003e0]:sw t6, 20(ra)<br>    |
|  37|[0x800022a0]<br>0xF7FFFBFF|- rs1_val == -268435457<br>                                                                                                                                                                                     |[0x800003f4]:AVE t6, t5, t4<br> [0x800003f8]:sw t6, 24(ra)<br>    |
|  38|[0x800022a4]<br>0xFBFFFFFC|- rs1_val == -134217729<br>                                                                                                                                                                                     |[0x80000408]:AVE t6, t5, t4<br> [0x8000040c]:sw t6, 28(ra)<br>    |
|  39|[0x800022a8]<br>0xFE000001|- rs1_val == -67108865<br> - rs2_val == 2<br>                                                                                                                                                                   |[0x8000041c]:AVE t6, t5, t4<br> [0x80000420]:sw t6, 32(ra)<br>    |
|  40|[0x800022ac]<br>0xFF000040|- rs1_val == -33554433<br> - rs2_val == 128<br>                                                                                                                                                                 |[0x80000430]:AVE t6, t5, t4<br> [0x80000434]:sw t6, 36(ra)<br>    |
|  41|[0x800022b0]<br>0xFF800200|- rs1_val == -16777217<br> - rs2_val == 1024<br>                                                                                                                                                                |[0x80000444]:AVE t6, t5, t4<br> [0x80000448]:sw t6, 40(ra)<br>    |
|  42|[0x800022b4]<br>0xFFC00008|- rs1_val == -8388609<br>                                                                                                                                                                                       |[0x80000458]:AVE t6, t5, t4<br> [0x8000045c]:sw t6, 44(ra)<br>    |
|  43|[0x800022b8]<br>0xFFF00003|- rs1_val == -2097153<br>                                                                                                                                                                                       |[0x8000046c]:AVE t6, t5, t4<br> [0x80000470]:sw t6, 48(ra)<br>    |
|  44|[0x800022bc]<br>0xDFF80000|- rs1_val == -1048577<br>                                                                                                                                                                                       |[0x80000480]:AVE t6, t5, t4<br> [0x80000484]:sw t6, 52(ra)<br>    |
|  45|[0x800022c0]<br>0xFF7BFFFF|- rs1_val == -524289<br>                                                                                                                                                                                        |[0x80000498]:AVE t6, t5, t4<br> [0x8000049c]:sw t6, 56(ra)<br>    |
|  46|[0x800022c4]<br>0xEFFEFFFF|- rs1_val == -131073<br>                                                                                                                                                                                        |[0x800004b0]:AVE t6, t5, t4<br> [0x800004b4]:sw t6, 60(ra)<br>    |
|  47|[0x800022c8]<br>0x2AAA2AAA|- rs1_val == -65537<br> - rs2_val == 1431655765<br>                                                                                                                                                             |[0x800004c8]:AVE t6, t5, t4<br> [0x800004cc]:sw t6, 64(ra)<br>    |
|  48|[0x800022cc]<br>0xFFFF9D7E|- rs1_val == -4097<br>                                                                                                                                                                                          |[0x800004e0]:AVE t6, t5, t4<br> [0x800004e4]:sw t6, 68(ra)<br>    |
|  49|[0x800022d0]<br>0xFFFFFEBF|- rs1_val == -513<br>                                                                                                                                                                                           |[0x800004f0]:AVE t6, t5, t4<br> [0x800004f4]:sw t6, 72(ra)<br>    |
|  50|[0x800022d4]<br>0xD55554D5|- rs1_val == -257<br> - rs2_val == -1431655766<br>                                                                                                                                                              |[0x80000504]:AVE t6, t5, t4<br> [0x80000508]:sw t6, 76(ra)<br>    |
|  51|[0x800022d8]<br>0x01000001|- rs2_val == 33554432<br> - rs1_val == 1<br>                                                                                                                                                                    |[0x80000514]:AVE t6, t5, t4<br> [0x80000518]:sw t6, 80(ra)<br>    |
|  52|[0x800022dc]<br>0x08888889|- rs1_val == -1431655766<br>                                                                                                                                                                                    |[0x8000052c]:AVE t6, t5, t4<br> [0x80000530]:sw t6, 84(ra)<br>    |
|  53|[0x800022e0]<br>0xC0008000|- rs2_val == 65536<br> - rs1_val == -2147483648<br> - rs1_val == (-2**(xlen-1))<br>                                                                                                                             |[0x8000053c]:AVE t6, t5, t4<br> [0x80000540]:sw t6, 88(ra)<br>    |
|  54|[0x800022e4]<br>0xFFFFFF7F|- rs1_val == -129<br>                                                                                                                                                                                           |[0x8000054c]:AVE t6, t5, t4<br> [0x80000550]:sw t6, 92(ra)<br>    |
|  55|[0x800022e8]<br>0xE0000000|- rs2_val == -2147483648<br> - rs2_val == (-2**(xlen-1))<br>                                                                                                                                                    |[0x80000560]:AVE t6, t5, t4<br> [0x80000564]:sw t6, 96(ra)<br>    |
|  56|[0x800022ec]<br>0xFFFFFFE2|- rs1_val == -65<br> - rs2_val == 4<br>                                                                                                                                                                         |[0x80000570]:AVE t6, t5, t4<br> [0x80000574]:sw t6, 100(ra)<br>   |
|  57|[0x800022f0]<br>0xEFFFFFEF|- rs1_val == -33<br>                                                                                                                                                                                            |[0x80000584]:AVE t6, t5, t4<br> [0x80000588]:sw t6, 104(ra)<br>   |
|  58|[0x800022f4]<br>0x00FFFFF8|- rs1_val == -17<br>                                                                                                                                                                                            |[0x80000594]:AVE t6, t5, t4<br> [0x80000598]:sw t6, 108(ra)<br>   |
|  59|[0x800022f8]<br>0xFFFFFFFC|- rs1_val == -9<br>                                                                                                                                                                                             |[0x800005a4]:AVE t6, t5, t4<br> [0x800005a8]:sw t6, 112(ra)<br>   |
|  60|[0x800022fc]<br>0xFFFFFFFC|- rs1_val == -5<br>                                                                                                                                                                                             |[0x800005b4]:AVE t6, t5, t4<br> [0x800005b8]:sw t6, 116(ra)<br>   |
|  61|[0x80002300]<br>0xFFFFFFFC|- rs1_val == -3<br>                                                                                                                                                                                             |[0x800005c4]:AVE t6, t5, t4<br> [0x800005c8]:sw t6, 120(ra)<br>   |
|  62|[0x80002304]<br>0x3FFFFFFF|- rs2_val == 2147483647<br> - rs1_val == -2<br> - rs2_val == (2**(xlen-1)-1)<br>                                                                                                                                |[0x800005d8]:AVE t6, t5, t4<br> [0x800005dc]:sw t6, 124(ra)<br>   |
|  63|[0x80002308]<br>0x1FC00000|- rs2_val == 1073741824<br>                                                                                                                                                                                     |[0x800005ec]:AVE t6, t5, t4<br> [0x800005f0]:sw t6, 128(ra)<br>   |
|  64|[0x8000230c]<br>0x10002000|- rs2_val == 536870912<br> - rs1_val == 16384<br>                                                                                                                                                               |[0x800005fc]:AVE t6, t5, t4<br> [0x80000600]:sw t6, 132(ra)<br>   |
|  65|[0x80002310]<br>0x09000000|- rs2_val == 268435456<br> - rs1_val == 33554432<br>                                                                                                                                                            |[0x8000060c]:AVE t6, t5, t4<br> [0x80000610]:sw t6, 136(ra)<br>   |
|  66|[0x80002314]<br>0x04000004|- rs2_val == 134217728<br>                                                                                                                                                                                      |[0x8000061c]:AVE t6, t5, t4<br> [0x80000620]:sw t6, 140(ra)<br>   |
|  67|[0x80002318]<br>0x02000008|- rs2_val == 67108864<br>                                                                                                                                                                                       |[0x8000062c]:AVE t6, t5, t4<br> [0x80000630]:sw t6, 144(ra)<br>   |
|  68|[0x8000231c]<br>0x007FFFF0|- rs2_val == 16777216<br>                                                                                                                                                                                       |[0x8000063c]:AVE t6, t5, t4<br> [0x80000640]:sw t6, 148(ra)<br>   |
|  69|[0x80002320]<br>0x003FFFF0|- rs2_val == 8388608<br>                                                                                                                                                                                        |[0x8000064c]:AVE t6, t5, t4<br> [0x80000650]:sw t6, 152(ra)<br>   |
|  70|[0x80002324]<br>0x20200000|- rs2_val == 4194304<br>                                                                                                                                                                                        |[0x8000065c]:AVE t6, t5, t4<br> [0x80000660]:sw t6, 156(ra)<br>   |
|  71|[0x80002328]<br>0x000FA57F|- rs2_val == 2097152<br>                                                                                                                                                                                        |[0x80000670]:AVE t6, t5, t4<br> [0x80000674]:sw t6, 160(ra)<br>   |
|  72|[0x8000232c]<br>0x00080100|- rs2_val == 1048576<br> - rs1_val == 512<br>                                                                                                                                                                   |[0x80000680]:AVE t6, t5, t4<br> [0x80000684]:sw t6, 164(ra)<br>   |
|  73|[0x80002330]<br>0xFFE40000|- rs2_val == 524288<br>                                                                                                                                                                                         |[0x80000694]:AVE t6, t5, t4<br> [0x80000698]:sw t6, 168(ra)<br>   |
|  74|[0x80002334]<br>0x00018000|- rs2_val == 262144<br>                                                                                                                                                                                         |[0x800006a8]:AVE t6, t5, t4<br> [0x800006ac]:sw t6, 172(ra)<br>   |
|  75|[0x80002338]<br>0x0000FFFE|- rs2_val == 131072<br>                                                                                                                                                                                         |[0x800006b8]:AVE t6, t5, t4<br> [0x800006bc]:sw t6, 176(ra)<br>   |
|  76|[0x8000233c]<br>0x00003FFF|- rs2_val == 32768<br>                                                                                                                                                                                          |[0x800006c8]:AVE t6, t5, t4<br> [0x800006cc]:sw t6, 180(ra)<br>   |
|  77|[0x80002340]<br>0x10002000|- rs2_val == 16384<br>                                                                                                                                                                                          |[0x800006d8]:AVE t6, t5, t4<br> [0x800006dc]:sw t6, 184(ra)<br>   |
|  78|[0x80002344]<br>0x00001003|- rs2_val == 8192<br>                                                                                                                                                                                           |[0x800006e8]:AVE t6, t5, t4<br> [0x800006ec]:sw t6, 188(ra)<br>   |
|  79|[0x80002348]<br>0x000007FD|- rs2_val == 4096<br>                                                                                                                                                                                           |[0x800006f8]:AVE t6, t5, t4<br> [0x800006fc]:sw t6, 192(ra)<br>   |
|  80|[0x8000234c]<br>0x000003FC|- rs2_val == 2048<br>                                                                                                                                                                                           |[0x8000070c]:AVE t6, t5, t4<br> [0x80000710]:sw t6, 196(ra)<br>   |
|  81|[0x80002350]<br>0x00000103|- rs2_val == 512<br>                                                                                                                                                                                            |[0x8000071c]:AVE t6, t5, t4<br> [0x80000720]:sw t6, 200(ra)<br>   |
|  82|[0x80002354]<br>0x02000080|- rs2_val == 256<br> - rs1_val == 67108864<br>                                                                                                                                                                  |[0x8000072c]:AVE t6, t5, t4<br> [0x80000730]:sw t6, 204(ra)<br>   |
|  83|[0x80002358]<br>0xD5555576|- rs2_val == 64<br>                                                                                                                                                                                             |[0x80000740]:AVE t6, t5, t4<br> [0x80000744]:sw t6, 208(ra)<br>   |
|  84|[0x80002360]<br>0xFFFFC004|- rs2_val == 8<br>                                                                                                                                                                                              |[0x80000768]:AVE t6, t5, t4<br> [0x8000076c]:sw t6, 216(ra)<br>   |
|  85|[0x80002364]<br>0x40000000|- rs2_val == 1<br>                                                                                                                                                                                              |[0x8000077c]:AVE t6, t5, t4<br> [0x80000780]:sw t6, 220(ra)<br>   |
|  86|[0x80002368]<br>0x00820000|- rs1_val == 16777216<br>                                                                                                                                                                                       |[0x8000078c]:AVE t6, t5, t4<br> [0x80000790]:sw t6, 224(ra)<br>   |
|  87|[0x8000236c]<br>0x003FFFFF|- rs1_val == 8388608<br>                                                                                                                                                                                        |[0x8000079c]:AVE t6, t5, t4<br> [0x800007a0]:sw t6, 228(ra)<br>   |
|  88|[0x80002370]<br>0x000FFE00|- rs1_val == 2097152<br>                                                                                                                                                                                        |[0x800007ac]:AVE t6, t5, t4<br> [0x800007b0]:sw t6, 232(ra)<br>   |
|  89|[0x80002374]<br>0x00070000|- rs1_val == 1048576<br>                                                                                                                                                                                        |[0x800007c0]:AVE t6, t5, t4<br> [0x800007c4]:sw t6, 236(ra)<br>   |
|  90|[0x80002378]<br>0x0001FC00|- rs1_val == 262144<br>                                                                                                                                                                                         |[0x800007d4]:AVE t6, t5, t4<br> [0x800007d8]:sw t6, 240(ra)<br>   |
|  91|[0x8000237c]<br>0x00020000|- rs1_val == 131072<br>                                                                                                                                                                                         |[0x800007e4]:AVE t6, t5, t4<br> [0x800007e8]:sw t6, 244(ra)<br>   |
|  92|[0x80002380]<br>0x00008000|- rs1_val == 65536<br>                                                                                                                                                                                          |[0x800007f4]:AVE t6, t5, t4<br> [0x800007f8]:sw t6, 248(ra)<br>   |
|  93|[0x80002384]<br>0x00003FE0|- rs1_val == 32768<br>                                                                                                                                                                                          |[0x80000804]:AVE t6, t5, t4<br> [0x80000808]:sw t6, 252(ra)<br>   |
|  94|[0x80002388]<br>0x00000800|- rs1_val == 8192<br>                                                                                                                                                                                           |[0x80000818]:AVE t6, t5, t4<br> [0x8000081c]:sw t6, 256(ra)<br>   |
|  95|[0x8000238c]<br>0x00000403|- rs1_val == 2048<br>                                                                                                                                                                                           |[0x8000082c]:AVE t6, t5, t4<br> [0x80000830]:sw t6, 260(ra)<br>   |
|  96|[0x80002390]<br>0x00000220|- rs1_val == 1024<br>                                                                                                                                                                                           |[0x8000083c]:AVE t6, t5, t4<br> [0x80000840]:sw t6, 264(ra)<br>   |
|  97|[0x80002394]<br>0x00008080|- rs1_val == 256<br>                                                                                                                                                                                            |[0x8000084c]:AVE t6, t5, t4<br> [0x80000850]:sw t6, 268(ra)<br>   |
|  98|[0x80002398]<br>0x00000042|- rs1_val == 128<br>                                                                                                                                                                                            |[0x8000085c]:AVE t6, t5, t4<br> [0x80000860]:sw t6, 272(ra)<br>   |
|  99|[0x8000239c]<br>0x00000004|- rs1_val == 8<br>                                                                                                                                                                                              |[0x8000086c]:AVE t6, t5, t4<br> [0x80000870]:sw t6, 276(ra)<br>   |
| 100|[0x800023a0]<br>0x00080002|- rs1_val == 4<br>                                                                                                                                                                                              |[0x8000087c]:AVE t6, t5, t4<br> [0x80000880]:sw t6, 280(ra)<br>   |
| 101|[0x800023a4]<br>0xFFFF8001|- rs1_val == 2<br>                                                                                                                                                                                              |[0x80000890]:AVE t6, t5, t4<br> [0x80000894]:sw t6, 284(ra)<br>   |
| 102|[0x800023b4]<br>0xFFFFBBFF|- rs2_val == -32769<br>                                                                                                                                                                                         |[0x800008e4]:AVE t6, t5, t4<br> [0x800008e8]:sw t6, 300(ra)<br>   |
