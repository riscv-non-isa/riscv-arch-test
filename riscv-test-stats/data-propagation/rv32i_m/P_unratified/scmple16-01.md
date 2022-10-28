
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000850')]      |
| SIG_REGION                | [('0x80002210', '0x80002360', '84 words')]      |
| COV_LABELS                | scmple16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/scmple16-01.S    |
| Total Number of coverpoints| 264     |
| Total Coverpoints Hit     | 258      |
| Total Signature Updates   | 82      |
| STAT1                     | 78      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000400]:SCMPLE16 t6, t5, t4
      [0x80000404]:sw t6, 60(sp)
 -- Signature Address: 0x80002290 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : scmple16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h1_val == 16384
      - rs1_h1_val == 0
      - rs1_h0_val == -513




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000053c]:SCMPLE16 t6, t5, t4
      [0x80000540]:sw t6, 116(sp)
 -- Signature Address: 0x800022c8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : scmple16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h1_val == 0
      - rs1_h1_val == 1024
      - rs1_h0_val == 16




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000674]:SCMPLE16 t6, t5, t4
      [0x80000678]:sw t6, 172(sp)
 -- Signature Address: 0x80002300 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : scmple16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h1_val == 512
      - rs2_h0_val == 0
      - rs1_h1_val == -65
      - rs1_h0_val == -65




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000830]:SCMPLE16 t6, t5, t4
      [0x80000834]:sw t6, 252(sp)
 -- Signature Address: 0x80002350 Data: 0xFFFF0000
 -- Redundant Coverpoints hit by the op
      - opcode : scmple16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h1_val == 4
      - rs2_h0_val == -513
      - rs1_h1_val == 4
      - rs1_h0_val == -1






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

|s.no|        signature         |                                                                                                                                                      coverpoints                                                                                                                                                      |                                  code                                  |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80002210]<br>0xFFFFFFFF|- opcode : scmple16<br> - rs1 : x8<br> - rs2 : x8<br> - rd : x8<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h0_val == -65<br> - rs1_h0_val == -65<br>                               |[0x8000010c]:SCMPLE16 fp, fp, fp<br> [0x80000110]:sw fp, 0(ra)<br>      |
|   2|[0x80002214]<br>0xFFFFFFFF|- rs1 : x11<br> - rs2 : x11<br> - rd : x10<br> - rs1 == rs2 != rd<br> - rs2_h1_val == 4<br> - rs2_h0_val == -513<br> - rs1_h1_val == 4<br> - rs1_h0_val == -513<br>                                                                                                                                                    |[0x80000124]:SCMPLE16 a0, a1, a1<br> [0x80000128]:sw a0, 4(ra)<br>      |
|   3|[0x80002218]<br>0xFFFFFFFF|- rs1 : x18<br> - rs2 : x22<br> - rd : x23<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h0_val == 8192<br> - rs1_h1_val == -4097<br> - rs1_h0_val == 2048<br> |[0x80000138]:SCMPLE16 s7, s2, s6<br> [0x8000013c]:sw s7, 8(ra)<br>      |
|   4|[0x8000221c]<br>0x0000FFFF|- rs1 : x10<br> - rs2 : x12<br> - rd : x12<br> - rs2 == rd != rs1<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs2_h1_val == -5<br> - rs2_h0_val == 64<br> - rs1_h0_val == 2<br>                                                                                                                                      |[0x80000150]:SCMPLE16 a2, a0, a2<br> [0x80000154]:sw a2, 12(ra)<br>     |
|   5|[0x80002220]<br>0xFFFFFFFF|- rs1 : x2<br> - rs2 : x5<br> - rd : x2<br> - rs1 == rd != rs2<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs2_h1_val == 128<br> - rs2_h0_val == 1024<br> - rs1_h1_val == -17<br> - rs1_h0_val == 1024<br>                                                                                                           |[0x80000168]:SCMPLE16 sp, sp, t0<br> [0x8000016c]:sw sp, 16(ra)<br>     |
|   6|[0x80002224]<br>0x00000000|- rs1 : x30<br> - rs2 : x10<br> - rd : x0<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h1_val == 8<br> - rs1_h1_val == 32767<br> - rs1_h0_val == -1025<br>                                                                                                                                                        |[0x80000180]:SCMPLE16 zero, t5, a0<br> [0x80000184]:sw zero, 20(ra)<br> |
|   7|[0x80002228]<br>0x00000000|- rs1 : x28<br> - rs2 : x2<br> - rd : x20<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h1_val == 8192<br> - rs1_h0_val == 128<br>                                                                                                                                                                                 |[0x80000198]:SCMPLE16 s4, t3, sp<br> [0x8000019c]:sw s4, 24(ra)<br>     |
|   8|[0x8000222c]<br>0x0000FFFF|- rs1 : x7<br> - rs2 : x25<br> - rd : x6<br> - rs2_h1_val == -21846<br> - rs2_h0_val == 21845<br> - rs1_h1_val == -257<br> - rs1_h0_val == 8192<br>                                                                                                                                                                    |[0x800001ac]:SCMPLE16 t1, t2, s9<br> [0x800001b0]:sw t1, 28(ra)<br>     |
|   9|[0x80002230]<br>0xFFFF0000|- rs1 : x26<br> - rs2 : x20<br> - rd : x30<br> - rs2_h1_val == 21845<br> - rs1_h1_val == 512<br>                                                                                                                                                                                                                       |[0x800001c4]:SCMPLE16 t5, s10, s4<br> [0x800001c8]:sw t5, 32(ra)<br>    |
|  10|[0x80002234]<br>0xFFFFFFFF|- rs1 : x16<br> - rs2 : x24<br> - rd : x29<br> - rs2_h1_val == 32767<br> - rs2_h0_val == 512<br> - rs1_h1_val == 128<br>                                                                                                                                                                                               |[0x800001dc]:SCMPLE16 t4, a6, s8<br> [0x800001e0]:sw t4, 36(ra)<br>     |
|  11|[0x80002238]<br>0x00000000|- rs1 : x5<br> - rs2 : x16<br> - rd : x19<br> - rs2_h1_val == -16385<br> - rs1_h1_val == -5<br>                                                                                                                                                                                                                        |[0x800001f4]:SCMPLE16 s3, t0, a6<br> [0x800001f8]:sw s3, 40(ra)<br>     |
|  12|[0x8000223c]<br>0x0000FFFF|- rs1 : x14<br> - rs2 : x23<br> - rd : x13<br> - rs2_h1_val == -8193<br> - rs2_h0_val == 8<br> - rs1_h1_val == 1024<br> - rs1_h0_val == -2<br>                                                                                                                                                                         |[0x8000020c]:SCMPLE16 a3, a4, s7<br> [0x80000210]:sw a3, 44(ra)<br>     |
|  13|[0x80002240]<br>0x00000000|- rs1 : x21<br> - rs2 : x28<br> - rd : x11<br> - rs2_h1_val == -4097<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                        |[0x80000224]:SCMPLE16 a1, s5, t3<br> [0x80000228]:sw a1, 48(ra)<br>     |
|  14|[0x80002244]<br>0x0000FFFF|- rs1 : x4<br> - rs2 : x14<br> - rd : x22<br> - rs2_h1_val == -2049<br> - rs2_h0_val == 128<br> - rs1_h1_val == -3<br>                                                                                                                                                                                                 |[0x8000023c]:SCMPLE16 s6, tp, a4<br> [0x80000240]:sw s6, 52(ra)<br>     |
|  15|[0x80002248]<br>0xFFFFFFFF|- rs1 : x15<br> - rs2 : x13<br> - rd : x4<br> - rs2_h1_val == -1025<br> - rs2_h0_val == 1<br> - rs1_h1_val == -8193<br>                                                                                                                                                                                                |[0x80000250]:SCMPLE16 tp, a5, a3<br> [0x80000254]:sw tp, 56(ra)<br>     |
|  16|[0x8000224c]<br>0x0000FFFF|- rs1 : x23<br> - rs2 : x17<br> - rd : x26<br> - rs2_h1_val == -513<br>                                                                                                                                                                                                                                                |[0x80000268]:SCMPLE16 s10, s7, a7<br> [0x8000026c]:sw s10, 60(ra)<br>   |
|  17|[0x80002250]<br>0x0000FFFF|- rs1 : x27<br> - rs2 : x4<br> - rd : x31<br> - rs2_h1_val == -257<br>                                                                                                                                                                                                                                                 |[0x80000280]:SCMPLE16 t6, s11, tp<br> [0x80000284]:sw t6, 64(ra)<br>    |
|  18|[0x80002254]<br>0x0000FFFF|- rs1 : x9<br> - rs2 : x1<br> - rd : x28<br> - rs2_h1_val == -129<br> - rs1_h1_val == 8192<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                 |[0x800002a0]:SCMPLE16 t3, s1, ra<br> [0x800002a4]:sw t3, 0(sp)<br>      |
|  19|[0x80002258]<br>0xFFFFFFFF|- rs1 : x24<br> - rs2 : x6<br> - rd : x7<br> - rs2_h1_val == -65<br> - rs2_h0_val == -17<br> - rs1_h1_val == -1025<br> - rs1_h0_val == -2049<br>                                                                                                                                                                       |[0x800002b8]:SCMPLE16 t2, s8, t1<br> [0x800002bc]:sw t2, 4(sp)<br>      |
|  20|[0x8000225c]<br>0xFFFF0000|- rs1 : x31<br> - rs2 : x3<br> - rd : x5<br> - rs2_h1_val == -33<br> - rs1_h1_val == -2049<br>                                                                                                                                                                                                                         |[0x800002d0]:SCMPLE16 t0, t6, gp<br> [0x800002d4]:sw t0, 8(sp)<br>      |
|  21|[0x80002260]<br>0xFFFFFFFF|- rs1 : x6<br> - rs2 : x18<br> - rd : x15<br> - rs2_h1_val == -17<br> - rs2_h0_val == 4<br> - rs1_h1_val == -33<br>                                                                                                                                                                                                    |[0x800002e4]:SCMPLE16 a5, t1, s2<br> [0x800002e8]:sw a5, 12(sp)<br>     |
|  22|[0x80002264]<br>0x00000000|- rs1 : x22<br> - rs2 : x31<br> - rd : x18<br> - rs2_h1_val == -9<br>                                                                                                                                                                                                                                                  |[0x800002fc]:SCMPLE16 s2, s6, t6<br> [0x80000300]:sw s2, 16(sp)<br>     |
|  23|[0x80002268]<br>0xFFFFFFFF|- rs1 : x25<br> - rs2 : x9<br> - rd : x21<br> - rs2_h1_val == -3<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                           |[0x80000314]:SCMPLE16 s5, s9, s1<br> [0x80000318]:sw s5, 20(sp)<br>     |
|  24|[0x8000226c]<br>0xFFFFFFFF|- rs1 : x17<br> - rs2 : x27<br> - rd : x14<br> - rs2_h1_val == -2<br> - rs2_h0_val == 16<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                     |[0x8000032c]:SCMPLE16 a4, a7, s11<br> [0x80000330]:sw a4, 24(sp)<br>    |
|  25|[0x80002270]<br>0x00000000|- rs1 : x29<br> - rs2 : x19<br> - rd : x25<br> - rs2_h1_val == -32768<br>                                                                                                                                                                                                                                              |[0x80000344]:SCMPLE16 s9, t4, s3<br> [0x80000348]:sw s9, 28(sp)<br>     |
|  26|[0x80002274]<br>0xFFFFFFFF|- rs1 : x3<br> - rs2 : x30<br> - rd : x27<br> - rs2_h1_val == 16384<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                         |[0x8000035c]:SCMPLE16 s11, gp, t5<br> [0x80000360]:sw s11, 32(sp)<br>   |
|  27|[0x80002278]<br>0xFFFF0000|- rs1 : x19<br> - rs2 : x29<br> - rd : x1<br> - rs2_h1_val == 4096<br> - rs2_h0_val == -8193<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                 |[0x80000370]:SCMPLE16 ra, s3, t4<br> [0x80000374]:sw ra, 36(sp)<br>     |
|  28|[0x8000227c]<br>0xFFFF0000|- rs1 : x1<br> - rs2 : x0<br> - rd : x24<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h1_val == -65<br> - rs1_h0_val == 32<br>                                                                                                                                                                                |[0x80000388]:SCMPLE16 s8, ra, zero<br> [0x8000038c]:sw s8, 40(sp)<br>   |
|  29|[0x80002280]<br>0xFFFFFFFF|- rs1 : x0<br> - rs2 : x21<br> - rd : x3<br> - rs2_h1_val == 1024<br> - rs1_h1_val == 0<br>                                                                                                                                                                                                                            |[0x800003a0]:SCMPLE16 gp, zero, s5<br> [0x800003a4]:sw gp, 44(sp)<br>   |
|  30|[0x80002284]<br>0xFFFFFFFF|- rs1 : x12<br> - rs2 : x15<br> - rd : x9<br> - rs2_h1_val == 512<br> - rs2_h0_val == -9<br> - rs1_h1_val == -16385<br> - rs1_h0_val == -17<br>                                                                                                                                                                        |[0x800003b8]:SCMPLE16 s1, a2, a5<br> [0x800003bc]:sw s1, 48(sp)<br>     |
|  31|[0x80002288]<br>0xFFFF0000|- rs1 : x20<br> - rs2 : x26<br> - rd : x17<br> - rs2_h1_val == 256<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                       |[0x800003d0]:SCMPLE16 a7, s4, s10<br> [0x800003d4]:sw a7, 52(sp)<br>    |
|  32|[0x8000228c]<br>0xFFFFFFFF|- rs1 : x13<br> - rs2 : x7<br> - rd : x16<br> - rs2_h1_val == 64<br> - rs2_h0_val == -5<br>                                                                                                                                                                                                                            |[0x800003e8]:SCMPLE16 a6, a3, t2<br> [0x800003ec]:sw a6, 56(sp)<br>     |
|  33|[0x80002294]<br>0xFFFFFFFF|- rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                                               |[0x80000418]:SCMPLE16 t6, t5, t4<br> [0x8000041c]:sw t6, 64(sp)<br>     |
|  34|[0x80002298]<br>0xFFFF0000|- rs2_h1_val == 2<br> - rs1_h1_val == -513<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                |[0x8000042c]:SCMPLE16 t6, t5, t4<br> [0x80000430]:sw t6, 68(sp)<br>     |
|  35|[0x8000229c]<br>0xFFFF0000|- rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                                 |[0x80000444]:SCMPLE16 t6, t5, t4<br> [0x80000448]:sw t6, 72(sp)<br>     |
|  36|[0x800022a0]<br>0xFFFFFFFF|- rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                                                 |[0x80000458]:SCMPLE16 t6, t5, t4<br> [0x8000045c]:sw t6, 76(sp)<br>     |
|  37|[0x800022a4]<br>0xFFFF0000|- rs2_h0_val == -257<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                     |[0x8000046c]:SCMPLE16 t6, t5, t4<br> [0x80000470]:sw t6, 80(sp)<br>     |
|  38|[0x800022a8]<br>0xFFFF0000|- rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                               |[0x80000480]:SCMPLE16 t6, t5, t4<br> [0x80000484]:sw t6, 84(sp)<br>     |
|  39|[0x800022ac]<br>0xFFFF0000|- rs1_h1_val == -21846<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                     |[0x80000498]:SCMPLE16 t6, t5, t4<br> [0x8000049c]:sw t6, 88(sp)<br>     |
|  40|[0x800022b0]<br>0x00000000|- rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                 |[0x800004b0]:SCMPLE16 t6, t5, t4<br> [0x800004b4]:sw t6, 92(sp)<br>     |
|  41|[0x800022b4]<br>0xFFFFFFFF|- rs2_h0_val == 32767<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                        |[0x800004c8]:SCMPLE16 t6, t5, t4<br> [0x800004cc]:sw t6, 96(sp)<br>     |
|  42|[0x800022b8]<br>0x00000000|- rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                  |[0x800004e0]:SCMPLE16 t6, t5, t4<br> [0x800004e4]:sw t6, 100(sp)<br>    |
|  43|[0x800022bc]<br>0xFFFF0000|- rs2_h1_val == 32<br> - rs2_h0_val == -32768<br> - rs1_h1_val == -129<br>                                                                                                                                                                                                                                             |[0x800004f4]:SCMPLE16 t6, t5, t4<br> [0x800004f8]:sw t6, 104(sp)<br>    |
|  44|[0x800022c0]<br>0xFFFFFFFF|- rs2_h1_val == 16<br> - rs2_h0_val == 256<br>                                                                                                                                                                                                                                                                         |[0x8000050c]:SCMPLE16 t6, t5, t4<br> [0x80000510]:sw t6, 108(sp)<br>    |
|  45|[0x800022c4]<br>0xFFFFFFFF|- rs2_h1_val == 1<br>                                                                                                                                                                                                                                                                                                  |[0x80000524]:SCMPLE16 t6, t5, t4<br> [0x80000528]:sw t6, 112(sp)<br>    |
|  46|[0x800022cc]<br>0xFFFFFFFF|- rs2_h1_val == -1<br>                                                                                                                                                                                                                                                                                                 |[0x80000554]:SCMPLE16 t6, t5, t4<br> [0x80000558]:sw t6, 120(sp)<br>    |
|  47|[0x800022d0]<br>0xFFFF0000|- rs2_h0_val == -21846<br>                                                                                                                                                                                                                                                                                             |[0x8000056c]:SCMPLE16 t6, t5, t4<br> [0x80000570]:sw t6, 124(sp)<br>    |
|  48|[0x800022d4]<br>0xFFFF0000|- rs2_h0_val == -16385<br>                                                                                                                                                                                                                                                                                             |[0x80000580]:SCMPLE16 t6, t5, t4<br> [0x80000584]:sw t6, 128(sp)<br>    |
|  49|[0x800022d8]<br>0x00000000|- rs2_h0_val == -4097<br>                                                                                                                                                                                                                                                                                              |[0x80000598]:SCMPLE16 t6, t5, t4<br> [0x8000059c]:sw t6, 132(sp)<br>    |
|  50|[0x800022dc]<br>0x00000000|- rs2_h0_val == -2049<br>                                                                                                                                                                                                                                                                                              |[0x800005b0]:SCMPLE16 t6, t5, t4<br> [0x800005b4]:sw t6, 136(sp)<br>    |
|  51|[0x800022e0]<br>0xFFFF0000|- rs2_h0_val == -1025<br>                                                                                                                                                                                                                                                                                              |[0x800005c8]:SCMPLE16 t6, t5, t4<br> [0x800005cc]:sw t6, 140(sp)<br>    |
|  52|[0x800022e4]<br>0x00000000|- rs2_h0_val == -3<br>                                                                                                                                                                                                                                                                                                 |[0x800005e0]:SCMPLE16 t6, t5, t4<br> [0x800005e4]:sw t6, 144(sp)<br>    |
|  53|[0x800022e8]<br>0x0000FFFF|- rs2_h0_val == -2<br>                                                                                                                                                                                                                                                                                                 |[0x800005f8]:SCMPLE16 t6, t5, t4<br> [0x800005fc]:sw t6, 148(sp)<br>    |
|  54|[0x800022ec]<br>0x0000FFFF|- rs2_h0_val == 16384<br>                                                                                                                                                                                                                                                                                              |[0x80000608]:SCMPLE16 t6, t5, t4<br> [0x8000060c]:sw t6, 152(sp)<br>    |
|  55|[0x800022f0]<br>0xFFFFFFFF|- rs2_h0_val == 4096<br>                                                                                                                                                                                                                                                                                               |[0x8000061c]:SCMPLE16 t6, t5, t4<br> [0x80000620]:sw t6, 156(sp)<br>    |
|  56|[0x800022f4]<br>0x0000FFFF|- rs2_h0_val == 2048<br> - rs1_h1_val == 21845<br>                                                                                                                                                                                                                                                                     |[0x80000634]:SCMPLE16 t6, t5, t4<br> [0x80000638]:sw t6, 160(sp)<br>    |
|  57|[0x800022f8]<br>0x00000000|- rs2_h0_val == 32<br>                                                                                                                                                                                                                                                                                                 |[0x80000648]:SCMPLE16 t6, t5, t4<br> [0x8000064c]:sw t6, 164(sp)<br>    |
|  58|[0x800022fc]<br>0x0000FFFF|- rs2_h0_val == 2<br>                                                                                                                                                                                                                                                                                                  |[0x80000660]:SCMPLE16 t6, t5, t4<br> [0x80000664]:sw t6, 168(sp)<br>    |
|  59|[0x80002304]<br>0x0000FFFF|- rs2_h0_val == -1<br> - rs1_h1_val == 4096<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                 |[0x8000068c]:SCMPLE16 t6, t5, t4<br> [0x80000690]:sw t6, 176(sp)<br>    |
|  60|[0x80002308]<br>0xFFFF0000|- rs1_h1_val == -9<br>                                                                                                                                                                                                                                                                                                 |[0x800006a0]:SCMPLE16 t6, t5, t4<br> [0x800006a4]:sw t6, 180(sp)<br>    |
|  61|[0x8000230c]<br>0xFFFFFFFF|- rs1_h1_val == -2<br>                                                                                                                                                                                                                                                                                                 |[0x800006b4]:SCMPLE16 t6, t5, t4<br> [0x800006b8]:sw t6, 184(sp)<br>    |
|  62|[0x80002310]<br>0xFFFF0000|- rs1_h1_val == -32768<br>                                                                                                                                                                                                                                                                                             |[0x800006c8]:SCMPLE16 t6, t5, t4<br> [0x800006cc]:sw t6, 188(sp)<br>    |
|  63|[0x80002314]<br>0x0000FFFF|- rs1_h1_val == 16384<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                    |[0x800006e0]:SCMPLE16 t6, t5, t4<br> [0x800006e4]:sw t6, 192(sp)<br>    |
|  64|[0x80002318]<br>0xFFFF0000|- rs2_h0_val == -129<br>                                                                                                                                                                                                                                                                                               |[0x800006f8]:SCMPLE16 t6, t5, t4<br> [0x800006fc]:sw t6, 196(sp)<br>    |
|  65|[0x8000231c]<br>0x0000FFFF|- rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                                               |[0x8000070c]:SCMPLE16 t6, t5, t4<br> [0x80000710]:sw t6, 200(sp)<br>    |
|  66|[0x80002320]<br>0x00000000|- rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                                |[0x80000724]:SCMPLE16 t6, t5, t4<br> [0x80000728]:sw t6, 204(sp)<br>    |
|  67|[0x80002324]<br>0x0000FFFF|- rs1_h1_val == 64<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                      |[0x8000073c]:SCMPLE16 t6, t5, t4<br> [0x80000740]:sw t6, 208(sp)<br>    |
|  68|[0x80002328]<br>0xFFFF0000|- rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                                                 |[0x80000754]:SCMPLE16 t6, t5, t4<br> [0x80000758]:sw t6, 212(sp)<br>    |
|  69|[0x8000232c]<br>0xFFFF0000|- rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                                                 |[0x80000768]:SCMPLE16 t6, t5, t4<br> [0x8000076c]:sw t6, 216(sp)<br>    |
|  70|[0x80002330]<br>0x0000FFFF|- rs1_h1_val == 8<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                                                                       |[0x80000780]:SCMPLE16 t6, t5, t4<br> [0x80000784]:sw t6, 220(sp)<br>    |
|  71|[0x80002334]<br>0xFFFF0000|- rs1_h1_val == 2<br>                                                                                                                                                                                                                                                                                                  |[0x80000798]:SCMPLE16 t6, t5, t4<br> [0x8000079c]:sw t6, 224(sp)<br>    |
|  72|[0x80002338]<br>0x00000000|- rs2_h0_val == -33<br>                                                                                                                                                                                                                                                                                                |[0x800007b0]:SCMPLE16 t6, t5, t4<br> [0x800007b4]:sw t6, 228(sp)<br>    |
|  73|[0x8000233c]<br>0x0000FFFF|- rs1_h1_val == -1<br>                                                                                                                                                                                                                                                                                                 |[0x800007c4]:SCMPLE16 t6, t5, t4<br> [0x800007c8]:sw t6, 232(sp)<br>    |
|  74|[0x80002340]<br>0x00000000|- rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                              |[0x800007dc]:SCMPLE16 t6, t5, t4<br> [0x800007e0]:sw t6, 236(sp)<br>    |
|  75|[0x80002344]<br>0xFFFFFFFF|- rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                              |[0x800007f0]:SCMPLE16 t6, t5, t4<br> [0x800007f4]:sw t6, 240(sp)<br>    |
|  76|[0x80002348]<br>0xFFFFFFFF|- rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                                                  |[0x80000804]:SCMPLE16 t6, t5, t4<br> [0x80000808]:sw t6, 244(sp)<br>    |
|  77|[0x8000234c]<br>0xFFFFFFFF|- rs1_h0_val == -32768<br>                                                                                                                                                                                                                                                                                             |[0x80000818]:SCMPLE16 t6, t5, t4<br> [0x8000081c]:sw t6, 248(sp)<br>    |
|  78|[0x80002354]<br>0xFFFF0000|- rs2_h1_val == 2048<br>                                                                                                                                                                                                                                                                                               |[0x80000848]:SCMPLE16 t6, t5, t4<br> [0x8000084c]:sw t6, 256(sp)<br>    |
