
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000770')]      |
| SIG_REGION                | [('0x80002210', '0x80002340', '76 words')]      |
| COV_LABELS                | smdrs      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/smdrs-01.S    |
| Total Number of coverpoints| 264     |
| Total Coverpoints Hit     | 258      |
| Total Signature Updates   | 73      |
| STAT1                     | 69      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000071c]:SMDRS t6, t5, t4
      [0x80000720]:sw t6, 212(t2)
 -- Signature Address: 0x80002324 Data: 0x20008009
 -- Redundant Coverpoints hit by the op
      - opcode : smdrs
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val == -32768
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h1_val == -3
      - rs2_h0_val == -16385




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000734]:SMDRS t6, t5, t4
      [0x80000738]:sw t6, 216(t2)
 -- Signature Address: 0x80002328 Data: 0xFEFFDDFE
 -- Redundant Coverpoints hit by the op
      - opcode : smdrs
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h1_val == -4097
      - rs2_h0_val == -513
      - rs1_h1_val == -4097
      - rs1_h0_val == 1




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000748]:SMDRS t6, t5, t4
      [0x8000074c]:sw t6, 220(t2)
 -- Signature Address: 0x8000232c Data: 0xE0005FFF
 -- Redundant Coverpoints hit by the op
      - opcode : smdrs
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h1_val == -8193
      - rs2_h0_val == -32768
      - rs1_h1_val == -1




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000075c]:SMDRS t6, t5, t4
      [0x80000760]:sw t6, 224(t2)
 -- Signature Address: 0x80002330 Data: 0xFFFFBDFE
 -- Redundant Coverpoints hit by the op
      - opcode : smdrs
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h1_val == -2
      - rs1_h1_val == -257
      - rs1_h0_val == 1






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

|s.no|        signature         |                                                                                                                                                                 coverpoints                                                                                                                                                                 |                                code                                 |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80002210]<br>0x10007FF8|- opcode : smdrs<br> - rs1 : x11<br> - rs2 : x11<br> - rd : x11<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h1_val == -3<br> - rs2_h0_val == -16385<br> - rs1_h1_val == -3<br> - rs1_h0_val == -16385<br> |[0x8000010c]:SMDRS a1, a1, a1<br> [0x80000110]:sw a1, 0(t0)<br>      |
|   2|[0x80002214]<br>0xFF03E400|- rs1 : x19<br> - rs2 : x19<br> - rd : x9<br> - rs1 == rs2 != rd<br> - rs2_h1_val == -4097<br> - rs2_h0_val == -513<br> - rs1_h1_val == -4097<br> - rs1_h0_val == -513<br>                                                                                                                                                                   |[0x80000124]:SMDRS s1, s3, s3<br> [0x80000128]:sw s1, 4(t0)<br>      |
|   3|[0x80002218]<br>0x00000831|- rs1 : x2<br> - rs2 : x9<br> - rd : x17<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h0_val == 2048<br> - rs1_h0_val == 1<br>                                                      |[0x8000013c]:SMDRS a7, sp, s1<br> [0x80000140]:sw a7, 8(t0)<br>      |
|   4|[0x8000221c]<br>0xFFFFFFD8|- rs1 : x4<br> - rs2 : x14<br> - rd : x14<br> - rs2 == rd != rs1<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs2_h0_val == -129<br> - rs1_h1_val == 8<br> - rs1_h0_val == 0<br>                                                                                                                                                            |[0x80000150]:SMDRS a4, tp, a4<br> [0x80000154]:sw a4, 12(t0)<br>     |
|   5|[0x80002220]<br>0x04105001|- rs1 : x25<br> - rs2 : x26<br> - rd : x25<br> - rs1 == rd != rs2<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs2_h1_val == -257<br> - rs2_h0_val == -8193<br> - rs1_h1_val == 4096<br> - rs1_h0_val == -8193<br>                                                                                                                          |[0x80000168]:SMDRS s9, s9, s10<br> [0x8000016c]:sw s9, 16(t0)<br>    |
|   6|[0x80002224]<br>0xFFFF7C20|- rs1 : x23<br> - rs2 : x20<br> - rd : x2<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h1_val == 32<br> - rs2_h0_val == 1024<br> - rs1_h1_val == -1025<br> - rs1_h0_val == -65<br>                                                                                                                                                      |[0x80000180]:SMDRS sp, s7, s4<br> [0x80000184]:sw sp, 20(t0)<br>     |
|   7|[0x80002228]<br>0x015557E0|- rs1 : x7<br> - rs2 : x25<br> - rd : x29<br> - rs2_h1_val == -21846<br> - rs2_h0_val == 16<br> - rs1_h1_val == 1024<br> - rs1_h0_val == -2<br>                                                                                                                                                                                              |[0x80000198]:SMDRS t4, t2, s9<br> [0x8000019c]:sw t4, 24(t0)<br>     |
|   8|[0x8000222c]<br>0x0021BCAA|- rs1 : x21<br> - rs2 : x29<br> - rd : x22<br> - rs2_h1_val == 21845<br> - rs2_h0_val == -4097<br> - rs1_h1_val == -5<br>                                                                                                                                                                                                                    |[0x800001b0]:SMDRS s6, s5, t4<br> [0x800001b4]:sw s6, 28(t0)<br>     |
|   9|[0x80002230]<br>0x00107FDB|- rs1 : x9<br> - rs2 : x7<br> - rd : x6<br> - rs2_h1_val == 32767<br> - rs2_h0_val == 1<br> - rs1_h1_val == -33<br>                                                                                                                                                                                                                          |[0x800001c8]:SMDRS t1, s1, t2<br> [0x800001cc]:sw t1, 32(t0)<br>     |
|  10|[0x80002234]<br>0x15559155|- rs1 : x1<br> - rs2 : x31<br> - rd : x20<br> - rs2_h1_val == -16385<br> - rs2_h0_val == 128<br> - rs1_h1_val == 21845<br>                                                                                                                                                                                                                   |[0x800001e0]:SMDRS s4, ra, t6<br> [0x800001e4]:sw s4, 36(t0)<br>     |
|  11|[0x80002238]<br>0x00000000|- rs1 : x0<br> - rs2 : x8<br> - rd : x28<br> - rs2_h1_val == -8193<br> - rs2_h0_val == -32768<br> - rs1_h1_val == 0<br>                                                                                                                                                                                                                      |[0x800001f4]:SMDRS t3, zero, fp<br> [0x800001f8]:sw t3, 40(t0)<br>   |
|  12|[0x8000223c]<br>0x020077FF|- rs1 : x27<br> - rs2 : x17<br> - rd : x21<br> - rs2_h1_val == -2049<br> - rs2_h0_val == 4<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                      |[0x80000208]:SMDRS s5, s11, a7<br> [0x8000020c]:sw s5, 44(t0)<br>    |
|  13|[0x80002240]<br>0xFFFFD835|- rs1 : x16<br> - rs2 : x1<br> - rd : x7<br> - rs2_h1_val == -1025<br>                                                                                                                                                                                                                                                                       |[0x80000220]:SMDRS t2, a6, ra<br> [0x80000224]:sw t2, 48(t0)<br>     |
|  14|[0x80002244]<br>0xFFF00002|- rs1 : x20<br> - rs2 : x6<br> - rd : x26<br> - rs2_h1_val == -513<br> - rs1_h1_val == 2<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                       |[0x80000238]:SMDRS s10, s4, t1<br> [0x8000023c]:sw s10, 52(t0)<br>   |
|  15|[0x80002248]<br>0xFFFFBF1F|- rs1 : x18<br> - rs2 : x30<br> - rd : x15<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h1_val == -129<br> - rs2_h0_val == -257<br> - rs1_h1_val == -65<br> - rs1_h0_val == 32<br>                                                                                                                                                      |[0x80000250]:SMDRS a5, s2, t5<br> [0x80000254]:sw a5, 56(t0)<br>     |
|  16|[0x8000224c]<br>0x000441C7|- rs1 : x3<br> - rs2 : x13<br> - rd : x27<br> - rs2_h1_val == -65<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                |[0x80000264]:SMDRS s11, gp, a3<br> [0x80000268]:sw s11, 60(t0)<br>   |
|  17|[0x80002250]<br>0x00080084|- rs1 : x13<br> - rs2 : x21<br> - rd : x1<br> - rs2_h1_val == -33<br> - rs2_h0_val == 4096<br> - rs1_h1_val == 4<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                 |[0x80000280]:SMDRS ra, a3, s5<br> [0x80000284]:sw ra, 0(t2)<br>      |
|  18|[0x80002254]<br>0xEAAAC022|- rs1 : x6<br> - rs2 : x4<br> - rd : x12<br> - rs2_h1_val == -17<br> - rs2_h0_val == 21845<br>                                                                                                                                                                                                                                               |[0x80000294]:SMDRS a2, t1, tp<br> [0x80000298]:sw a2, 4(t2)<br>      |
|  19|[0x80002258]<br>0xFFFF4012|- rs1 : x10<br> - rs2 : x28<br> - rd : x24<br> - rs2_h1_val == -9<br>                                                                                                                                                                                                                                                                        |[0x800002a8]:SMDRS s8, a0, t3<br> [0x800002ac]:sw s8, 8(t2)<br>      |
|  20|[0x8000225c]<br>0xFFFB001E|- rs1 : x17<br> - rs2 : x18<br> - rd : x10<br> - rs2_h1_val == -5<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                              |[0x800002c0]:SMDRS a0, a7, s2<br> [0x800002c4]:sw a0, 12(t2)<br>     |
|  21|[0x80002260]<br>0x00000000|- rs1 : x8<br> - rs2 : x12<br> - rd : x0<br> - rs2_h1_val == -2<br> - rs1_h1_val == -257<br>                                                                                                                                                                                                                                                 |[0x800002d4]:SMDRS zero, fp, a2<br> [0x800002d8]:sw zero, 16(t2)<br> |
|  22|[0x80002264]<br>0x0FFF0000|- rs1 : x29<br> - rs2 : x3<br> - rd : x13<br> - rs2_h1_val == -32768<br> - rs1_h1_val == -2<br>                                                                                                                                                                                                                                              |[0x800002e4]:SMDRS a3, t4, gp<br> [0x800002e8]:sw a3, 20(t2)<br>     |
|  23|[0x80002268]<br>0x00000000|- rs1 : x5<br> - rs2 : x0<br> - rd : x19<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                              |[0x800002fc]:SMDRS s3, t0, zero<br> [0x80000300]:sw s3, 24(t2)<br>   |
|  24|[0x8000226c]<br>0xFFFF9FCA|- rs1 : x22<br> - rs2 : x5<br> - rd : x23<br> - rs2_h1_val == 8192<br>                                                                                                                                                                                                                                                                       |[0x80000314]:SMDRS s7, s6, t0<br> [0x80000318]:sw s7, 28(t2)<br>     |
|  25|[0x80002270]<br>0x003FAF00|- rs1 : x24<br> - rs2 : x15<br> - rd : x8<br> - rs2_h1_val == 4096<br> - rs2_h0_val == 256<br>                                                                                                                                                                                                                                               |[0x8000032c]:SMDRS fp, s8, a5<br> [0x80000330]:sw fp, 32(t2)<br>     |
|  26|[0x80002274]<br>0x00000030|- rs1 : x31<br> - rs2 : x10<br> - rd : x30<br> - rs2_h1_val == 2048<br> - rs2_h0_val == 8<br>                                                                                                                                                                                                                                                |[0x80000340]:SMDRS t5, t6, a0<br> [0x80000344]:sw t5, 36(t2)<br>     |
|  27|[0x80002278]<br>0x00000000|- rs1 : x30<br> - rs2 : x2<br> - rd : x4<br> - rs1_h0_val == -32768<br> - rs2_h1_val == 1024<br> - rs2_h0_val == -2<br> - rs1_h1_val == 64<br>                                                                                                                                                                                               |[0x80000354]:SMDRS tp, t5, sp<br> [0x80000358]:sw tp, 40(t2)<br>     |
|  28|[0x8000227c]<br>0x00000600|- rs1 : x26<br> - rs2 : x16<br> - rd : x18<br> - rs2_h1_val == 512<br>                                                                                                                                                                                                                                                                       |[0x80000368]:SMDRS s2, s10, a6<br> [0x8000036c]:sw s2, 44(t2)<br>    |
|  29|[0x80002280]<br>0x00001807|- rs1 : x28<br> - rs2 : x24<br> - rd : x3<br> - rs2_h1_val == 256<br> - rs1_h1_val == -17<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                       |[0x80000380]:SMDRS gp, t3, s8<br> [0x80000384]:sw gp, 48(t2)<br>     |
|  30|[0x80002284]<br>0x00002000|- rs1 : x14<br> - rs2 : x22<br> - rd : x31<br> - rs2_h1_val == 128<br> - rs2_h0_val == 64<br>                                                                                                                                                                                                                                                |[0x80000394]:SMDRS t6, a4, s6<br> [0x80000398]:sw t6, 52(t2)<br>     |
|  31|[0x80002288]<br>0x0000804F|- rs1 : x12<br> - rs2 : x27<br> - rd : x16<br> - rs2_h1_val == 64<br> - rs1_h1_val == -513<br>                                                                                                                                                                                                                                               |[0x800003ac]:SMDRS a6, a2, s11<br> [0x800003b0]:sw a6, 56(t2)<br>    |
|  32|[0x8000228c]<br>0x000120D1|- rs1 : x15<br> - rs2 : x23<br> - rd : x5<br> - rs2_h0_val == -65<br> - rs1_h1_val == 16<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                        |[0x800003c4]:SMDRS t0, a5, s7<br> [0x800003c8]:sw t0, 60(t2)<br>     |
|  33|[0x80002290]<br>0x0005AAA5|- rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                      |[0x800003d8]:SMDRS t6, t5, t4<br> [0x800003dc]:sw t6, 64(t2)<br>     |
|  34|[0x80002294]<br>0xFFD85586|- rs2_h0_val == -21846<br> - rs1_h1_val == 128<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                    |[0x800003f0]:SMDRS t6, t5, t4<br> [0x800003f4]:sw t6, 68(t2)<br>     |
|  35|[0x80002298]<br>0xFFFEDD77|- rs1_h1_val == -9<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                                |[0x80000408]:SMDRS t6, t5, t4<br> [0x8000040c]:sw t6, 72(t2)<br>     |
|  36|[0x8000229c]<br>0xEFFFFFEB|- rs2_h1_val == 16384<br> - rs1_h1_val == 16384<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                   |[0x80000420]:SMDRS t6, t5, t4<br> [0x80000424]:sw t6, 76(t2)<br>     |
|  37|[0x800022a0]<br>0xFDFFC909|- rs2_h0_val == -2049<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                          |[0x80000434]:SMDRS t6, t5, t4<br> [0x80000438]:sw t6, 80(t2)<br>     |
|  38|[0x800022a4]<br>0x00000080|- rs2_h1_val == -1<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                              |[0x80000444]:SMDRS t6, t5, t4<br> [0x80000448]:sw t6, 84(t2)<br>     |
|  39|[0x800022a8]<br>0x00097FFD|- rs1_h1_val == 32767<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                           |[0x8000045c]:SMDRS t6, t5, t4<br> [0x80000460]:sw t6, 88(t2)<br>     |
|  40|[0x800022ac]<br>0x007F7E00|- rs2_h0_val == -33<br> - rs1_h1_val == -16385<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                  |[0x80000474]:SMDRS t6, t5, t4<br> [0x80000478]:sw t6, 92(t2)<br>     |
|  41|[0x800022b0]<br>0x000C0200|- rs1_h1_val == 512<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                              |[0x8000048c]:SMDRS t6, t5, t4<br> [0x80000490]:sw t6, 96(t2)<br>     |
|  42|[0x800022b4]<br>0x0001DF00|- rs2_h1_val == 4<br> - rs1_h1_val == -32768<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                     |[0x800004a4]:SMDRS t6, t5, t4<br> [0x800004a8]:sw t6, 100(t2)<br>    |
|  43|[0x800022b8]<br>0xFFFFC240|- rs1_h1_val == -1<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                |[0x800004bc]:SMDRS t6, t5, t4<br> [0x800004c0]:sw t6, 104(t2)<br>    |
|  44|[0x800022bc]<br>0x00084000|- rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                        |[0x800004d0]:SMDRS t6, t5, t4<br> [0x800004d4]:sw t6, 108(t2)<br>    |
|  45|[0x800022c0]<br>0xFFFFDFEB|- rs2_h0_val == -5<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                 |[0x800004e8]:SMDRS t6, t5, t4<br> [0x800004ec]:sw t6, 112(t2)<br>    |
|  46|[0x800022c4]<br>0xFFFFFDFE|- rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                        |[0x800004fc]:SMDRS t6, t5, t4<br> [0x80000500]:sw t6, 116(t2)<br>    |
|  47|[0x800022c8]<br>0x0000BD03|- rs2_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                       |[0x80000514]:SMDRS t6, t5, t4<br> [0x80000518]:sw t6, 120(t2)<br>    |
|  48|[0x800022cc]<br>0xEFFFBAF6|- rs2_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                    |[0x80000528]:SMDRS t6, t5, t4<br> [0x8000052c]:sw t6, 124(t2)<br>    |
|  49|[0x800022d0]<br>0xFFFDE000|- rs2_h0_val == 8192<br> - rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                                                           |[0x8000053c]:SMDRS t6, t5, t4<br> [0x80000540]:sw t6, 128(t2)<br>    |
|  50|[0x800022d4]<br>0xFFFDB809|- rs2_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                      |[0x80000554]:SMDRS t6, t5, t4<br> [0x80000558]:sw t6, 132(t2)<br>    |
|  51|[0x800022d8]<br>0x000800E0|- rs2_h0_val == 32<br> - rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                                                |[0x8000056c]:SMDRS t6, t5, t4<br> [0x80000570]:sw t6, 136(t2)<br>    |
|  52|[0x800022dc]<br>0x2AAAAABC|- rs2_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                        |[0x80000584]:SMDRS t6, t5, t4<br> [0x80000588]:sw t6, 140(t2)<br>    |
|  53|[0x800022e0]<br>0xFFFF4000|- rs2_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                       |[0x80000598]:SMDRS t6, t5, t4<br> [0x8000059c]:sw t6, 144(t2)<br>    |
|  54|[0x800022e4]<br>0x0AAAC400|- rs1_h1_val == -21846<br>                                                                                                                                                                                                                                                                                                                   |[0x800005b0]:SMDRS t6, t5, t4<br> [0x800005b4]:sw t6, 148(t2)<br>    |
|  55|[0x800022e8]<br>0xF5555FF0|- rs1_h1_val == 8192<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                              |[0x800005c8]:SMDRS t6, t5, t4<br> [0x800005cc]:sw t6, 152(t2)<br>    |
|  56|[0x800022ec]<br>0x0000BBC6|- rs2_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                      |[0x800005e0]:SMDRS t6, t5, t4<br> [0x800005e4]:sw t6, 156(t2)<br>    |
|  57|[0x800022f0]<br>0x00407006|- rs1_h1_val == -2049<br>                                                                                                                                                                                                                                                                                                                    |[0x800005f4]:SMDRS t6, t5, t4<br> [0x800005f8]:sw t6, 160(t2)<br>    |
|  58|[0x800022f4]<br>0xFFFABFFB|- rs2_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                       |[0x8000060c]:SMDRS t6, t5, t4<br> [0x80000610]:sw t6, 164(t2)<br>    |
|  59|[0x800022f8]<br>0x000003FC|- rs2_h1_val == 8<br> - rs1_h1_val == -129<br>                                                                                                                                                                                                                                                                                               |[0x80000624]:SMDRS t6, t5, t4<br> [0x80000628]:sw t6, 168(t2)<br>    |
|  60|[0x800022fc]<br>0xEDFFA001|- rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                                     |[0x8000063c]:SMDRS t6, t5, t4<br> [0x80000640]:sw t6, 172(t2)<br>    |
|  61|[0x80002300]<br>0xFFFC0002|- rs2_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                        |[0x80000654]:SMDRS t6, t5, t4<br> [0x80000658]:sw t6, 176(t2)<br>    |
|  62|[0x80002304]<br>0xFF7FD000|- rs2_h1_val == 1<br> - rs2_h0_val == -1025<br>                                                                                                                                                                                                                                                                                              |[0x80000668]:SMDRS t6, t5, t4<br> [0x8000066c]:sw t6, 180(t2)<br>    |
|  63|[0x80002308]<br>0xFFA90052|- rs1_h1_val == 256<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                           |[0x80000680]:SMDRS t6, t5, t4<br> [0x80000684]:sw t6, 184(t2)<br>    |
|  64|[0x8000230c]<br>0x0003CFF8|- rs2_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                    |[0x80000698]:SMDRS t6, t5, t4<br> [0x8000069c]:sw t6, 188(t2)<br>    |
|  65|[0x80002310]<br>0xFFFFFEE8|- rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                        |[0x800006b0]:SMDRS t6, t5, t4<br> [0x800006b4]:sw t6, 192(t2)<br>    |
|  66|[0x80002314]<br>0x40017FFE|- rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                    |[0x800006c8]:SMDRS t6, t5, t4<br> [0x800006cc]:sw t6, 196(t2)<br>    |
|  67|[0x80002318]<br>0x0000001B|- rs2_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                       |[0x800006e0]:SMDRS t6, t5, t4<br> [0x800006e4]:sw t6, 200(t2)<br>    |
|  68|[0x8000231c]<br>0x04003E7D|- rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                    |[0x800006f4]:SMDRS t6, t5, t4<br> [0x800006f8]:sw t6, 204(t2)<br>    |
|  69|[0x80002320]<br>0x14552000|- rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                    |[0x80000708]:SMDRS t6, t5, t4<br> [0x8000070c]:sw t6, 208(t2)<br>    |
