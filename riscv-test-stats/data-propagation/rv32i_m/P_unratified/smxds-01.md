
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800007a0')]      |
| SIG_REGION                | [('0x80002210', '0x80002340', '76 words')]      |
| COV_LABELS                | smxds      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/smxds-01.S    |
| Total Number of coverpoints| 264     |
| Total Coverpoints Hit     | 258      |
| Total Signature Updates   | 74      |
| STAT1                     | 71      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000047c]:SMXDS t6, t5, t4
      [0x80000480]:sw t6, 88(ra)
 -- Signature Address: 0x800022ac Data: 0x00155580
 -- Redundant Coverpoints hit by the op
      - opcode : smxds
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs2_h1_val == -21846
      - rs2_h0_val == 0
      - rs1_h1_val == 0
      - rs1_h0_val == 64




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000074c]:SMXDS t6, t5, t4
      [0x80000750]:sw t6, 212(ra)
 -- Signature Address: 0x80002328 Data: 0x017FC201
 -- Redundant Coverpoints hit by the op
      - opcode : smxds
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val == -32768
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h1_val == 1024
      - rs2_h0_val == -513




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000077c]:SMXDS t6, t5, t4
      [0x80000780]:sw t6, 220(ra)
 -- Signature Address: 0x80002330 Data: 0x00000050
 -- Redundant Coverpoints hit by the op
      - opcode : smxds
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h0_val == 4






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
|   1|[0x80002210]<br>0x00000000|- opcode : smxds<br> - rs1 : x20<br> - rs2 : x20<br> - rd : x20<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h1_val == 1024<br> - rs2_h0_val == -513<br> - rs1_h1_val == 1024<br> - rs1_h0_val == -513<br> |[0x8000010c]:SMXDS s4, s4, s4<br> [0x80000110]:sw s4, 0(t0)<br>      |
|   2|[0x80002214]<br>0x00000000|- rs1 : x26<br> - rs2 : x26<br> - rd : x24<br> - rs1 == rs2 != rd<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == -1025<br> - rs2_h0_val == 64<br> - rs1_h1_val == -1025<br> - rs1_h0_val == 64<br>                                                                                      |[0x80000124]:SMXDS s8, s10, s10<br> [0x80000128]:sw s8, 4(t0)<br>    |
|   3|[0x80002218]<br>0x000001F0|- rs1 : x17<br> - rs2 : x22<br> - rd : x25<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h1_val == 512<br> - rs2_h0_val == 16<br> - rs1_h1_val == -513<br> - rs1_h0_val == -17<br>   |[0x8000013c]:SMXDS s9, a7, s6<br> [0x80000140]:sw s9, 8(t0)<br>      |
|   4|[0x8000221c]<br>0x00000000|- rs1 : x0<br> - rs2 : x6<br> - rd : x6<br> - rs2 == rd != rs1<br> - rs2_h0_val == 4<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                         |[0x80000154]:SMXDS t1, zero, t1<br> [0x80000158]:sw t1, 12(t0)<br>   |
|   5|[0x80002220]<br>0x02001FFC|- rs1 : x2<br> - rs2 : x21<br> - rd : x2<br> - rs1 == rd != rs2<br> - rs2_h0_val == -2049<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                      |[0x8000016c]:SMXDS sp, sp, s5<br> [0x80000170]:sw sp, 16(t0)<br>     |
|   6|[0x80002224]<br>0xFFE03006|- rs1 : x14<br> - rs2 : x11<br> - rd : x12<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h1_val == 4096<br> - rs1_h1_val == -2049<br> - rs1_h0_val == 512<br>                                                                                                                                                                            |[0x80000184]:SMXDS a2, a4, a1<br> [0x80000188]:sw a2, 20(t0)<br>     |
|   7|[0x80002228]<br>0x0000000C|- rs1 : x11<br> - rs2 : x1<br> - rd : x13<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs2_h1_val == -21846<br> - rs1_h1_val == 4<br>                                                                                                                                                                                                       |[0x80000198]:SMXDS a3, a1, ra<br> [0x8000019c]:sw a3, 24(t0)<br>     |
|   8|[0x8000222c]<br>0x0555A655|- rs1 : x4<br> - rs2 : x13<br> - rd : x26<br> - rs2_h1_val == 21845<br> - rs2_h0_val == 256<br> - rs1_h1_val == 1<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                              |[0x800001b0]:SMXDS s10, tp, a3<br> [0x800001b4]:sw s10, 28(t0)<br>   |
|   9|[0x80002230]<br>0xFFF79009|- rs1 : x27<br> - rs2 : x19<br> - rd : x21<br> - rs2_h1_val == 32767<br> - rs1_h1_val == -4097<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                    |[0x800001c8]:SMXDS s5, s11, s3<br> [0x800001cc]:sw s5, 32(t0)<br>    |
|  10|[0x80002234]<br>0x00240080|- rs1 : x25<br> - rs2 : x15<br> - rd : x11<br> - rs2_h1_val == -16385<br> - rs2_h0_val == -32768<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                 |[0x800001dc]:SMXDS a1, s9, a5<br> [0x800001e0]:sw a1, 36(t0)<br>     |
|  11|[0x80002238]<br>0x00000000|- rs1 : x23<br> - rs2 : x0<br> - rd : x22<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h1_val == 4096<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                   |[0x800001f4]:SMXDS s6, s7, zero<br> [0x800001f8]:sw s6, 40(t0)<br>   |
|  12|[0x8000223c]<br>0x05575003|- rs1 : x31<br> - rs2 : x25<br> - rd : x9<br> - rs2_h1_val == -4097<br> - rs2_h0_val == -5<br> - rs1_h1_val == -21846<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                          |[0x8000020c]:SMXDS s1, t6, s9<br> [0x80000210]:sw s1, 44(t0)<br>     |
|  13|[0x80002240]<br>0x04007821|- rs1 : x3<br> - rs2 : x23<br> - rd : x1<br> - rs2_h1_val == -2049<br> - rs2_h0_val == -2<br> - rs1_h1_val == -17<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                              |[0x80000224]:SMXDS ra, gp, s7<br> [0x80000228]:sw ra, 48(t0)<br>     |
|  14|[0x80002244]<br>0x00000000|- rs1 : x29<br> - rs2 : x9<br> - rd : x0<br> - rs2_h1_val == -513<br> - rs1_h1_val == -5<br>                                                                                                                                                                                                                                                 |[0x8000023c]:SMXDS zero, t4, s1<br> [0x80000240]:sw zero, 52(t0)<br> |
|  15|[0x80002248]<br>0xFFFFFD18|- rs1 : x24<br> - rs2 : x28<br> - rd : x31<br> - rs2_h1_val == -257<br> - rs2_h0_val == -3<br> - rs1_h1_val == -9<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                 |[0x80000254]:SMXDS t6, s8, t3<br> [0x80000258]:sw t6, 56(t0)<br>     |
|  16|[0x8000224c]<br>0x00000243|- rs1 : x1<br> - rs2 : x8<br> - rd : x18<br> - rs2_h1_val == -129<br> - rs1_h1_val == 32<br>                                                                                                                                                                                                                                                 |[0x8000026c]:SMXDS s2, ra, fp<br> [0x80000270]:sw s2, 60(t0)<br>     |
|  17|[0x80002250]<br>0x00030C41|- rs1 : x19<br> - rs2 : x30<br> - rd : x7<br> - rs2_h1_val == -65<br> - rs2_h0_val == -65<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                       |[0x80000284]:SMXDS t2, s3, t5<br> [0x80000288]:sw t2, 64(t0)<br>     |
|  18|[0x80002254]<br>0xFFBFF021|- rs1 : x22<br> - rs2 : x12<br> - rd : x27<br> - rs2_h1_val == -33<br> - rs2_h0_val == -1025<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                       |[0x800002a4]:SMXDS s11, s6, a2<br> [0x800002a8]:sw s11, 0(ra)<br>    |
|  19|[0x80002258]<br>0xFF7FF088|- rs1 : x16<br> - rs2 : x14<br> - rd : x4<br> - rs2_h1_val == -17<br> - rs2_h0_val == 4096<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                         |[0x800002b8]:SMXDS tp, a6, a4<br> [0x800002bc]:sw tp, 4(ra)<br>      |
|  20|[0x8000225c]<br>0xFFFEFC51|- rs1 : x5<br> - rs2 : x7<br> - rd : x23<br> - rs2_h1_val == -9<br>                                                                                                                                                                                                                                                                          |[0x800002d0]:SMXDS s7, t0, t2<br> [0x800002d4]:sw s7, 8(ra)<br>      |
|  21|[0x80002260]<br>0xFFBD7000|- rs1 : x28<br> - rs2 : x4<br> - rd : x16<br> - rs1_h0_val == -32768<br> - rs2_h1_val == -5<br>                                                                                                                                                                                                                                              |[0x800002e4]:SMXDS a6, t3, tp<br> [0x800002e8]:sw a6, 12(ra)<br>     |
|  22|[0x80002264]<br>0xFFF56D40|- rs1 : x6<br> - rs2 : x3<br> - rd : x8<br> - rs2_h1_val == -3<br> - rs2_h0_val == -21846<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                       |[0x800002fc]:SMXDS fp, t1, gp<br> [0x80000300]:sw fp, 16(ra)<br>     |
|  23|[0x80002268]<br>0xFFFFFFFE|- rs1 : x10<br> - rs2 : x16<br> - rd : x28<br> - rs2_h1_val == -2<br> - rs2_h0_val == -1<br> - rs1_h1_val == -32768<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                           |[0x80000314]:SMXDS t3, a0, a6<br> [0x80000318]:sw t3, 20(ra)<br>     |
|  24|[0x8000226c]<br>0x2AA9A000|- rs1 : x7<br> - rs2 : x27<br> - rd : x29<br> - rs2_h1_val == -32768<br> - rs2_h0_val == 8192<br>                                                                                                                                                                                                                                            |[0x80000328]:SMXDS t4, t2, s11<br> [0x8000032c]:sw t4, 24(ra)<br>    |
|  25|[0x80002270]<br>0xFC00000C|- rs1 : x18<br> - rs2 : x2<br> - rd : x10<br> - rs2_h1_val == 16384<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                             |[0x8000033c]:SMXDS a0, s2, sp<br> [0x80000340]:sw a0, 28(ra)<br>     |
|  26|[0x80002274]<br>0x00020011|- rs1 : x9<br> - rs2 : x31<br> - rd : x3<br> - rs2_h1_val == 8192<br> - rs2_h0_val == -17<br> - rs1_h1_val == -8193<br>                                                                                                                                                                                                                      |[0x80000354]:SMXDS gp, s1, t6<br> [0x80000358]:sw gp, 32(ra)<br>     |
|  27|[0x80002278]<br>0x03FFBF00|- rs1 : x21<br> - rs2 : x29<br> - rd : x14<br> - rs2_h1_val == 2048<br> - rs1_h1_val == -65<br>                                                                                                                                                                                                                                              |[0x80000368]:SMXDS a4, s5, t4<br> [0x8000036c]:sw a4, 36(ra)<br>     |
|  28|[0x8000227c]<br>0xFFF02000|- rs1 : x15<br> - rs2 : x17<br> - rd : x19<br> - rs2_h1_val == 256<br>                                                                                                                                                                                                                                                                       |[0x8000037c]:SMXDS s3, a5, a7<br> [0x80000380]:sw s3, 40(ra)<br>     |
|  29|[0x80002280]<br>0xFFFFFD60|- rs1 : x8<br> - rs2 : x18<br> - rd : x17<br> - rs2_h1_val == 128<br> - rs1_h1_val == 8<br>                                                                                                                                                                                                                                                  |[0x80000394]:SMXDS a7, fp, s2<br> [0x80000398]:sw a7, 44(ra)<br>     |
|  30|[0x80002284]<br>0x0000F040|- rs1 : x30<br> - rs2 : x24<br> - rd : x15<br> - rs2_h1_val == 64<br> - rs1_h1_val == -1<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                       |[0x800003a4]:SMXDS a5, t5, s8<br> [0x800003a8]:sw a5, 48(ra)<br>     |
|  31|[0x80002288]<br>0x0001006E|- rs1 : x12<br> - rs2 : x10<br> - rd : x5<br> - rs1_h1_val == -2<br>                                                                                                                                                                                                                                                                         |[0x800003bc]:SMXDS t0, a2, a0<br> [0x800003c0]:sw t0, 52(ra)<br>     |
|  32|[0x8000228c]<br>0x00808306|- rs1 : x13<br> - rs2 : x5<br> - rd : x30<br> - rs2_h0_val == -257<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                              |[0x800003d4]:SMXDS t5, a3, t0<br> [0x800003d8]:sw t5, 56(ra)<br>     |
|  33|[0x80002290]<br>0xFFFC01BF|- rs2_h0_val == 512<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                              |[0x800003ec]:SMXDS t6, t5, t4<br> [0x800003f0]:sw t6, 60(ra)<br>     |
|  34|[0x80002294]<br>0x00000063|- rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                      |[0x80000400]:SMXDS t6, t5, t4<br> [0x80000404]:sw t6, 64(ra)<br>     |
|  35|[0x80002298]<br>0x0001403F|- rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                       |[0x80000414]:SMXDS t6, t5, t4<br> [0x80000418]:sw t6, 68(ra)<br>     |
|  36|[0x8000229c]<br>0x0000007E|- rs2_h1_val == 32<br> - rs1_h1_val == 2<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                          |[0x8000042c]:SMXDS t6, t5, t4<br> [0x80000430]:sw t6, 72(ra)<br>     |
|  37|[0x800022a0]<br>0x0000A009|- rs2_h1_val == 2<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                 |[0x80000444]:SMXDS t6, t5, t4<br> [0x80000448]:sw t6, 76(ra)<br>     |
|  38|[0x800022a4]<br>0x00028007|- rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                    |[0x80000458]:SMXDS t6, t5, t4<br> [0x8000045c]:sw t6, 80(ra)<br>     |
|  39|[0x800022a8]<br>0x0AAD6AA8|- rs2_h0_val == 21845<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                           |[0x8000046c]:SMXDS t6, t5, t4<br> [0x80000470]:sw t6, 84(ra)<br>     |
|  40|[0x800022b0]<br>0xFFFF0104|- rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                       |[0x80000494]:SMXDS t6, t5, t4<br> [0x80000498]:sw t6, 92(ra)<br>     |
|  41|[0x800022b4]<br>0x00202004|- rs2_h0_val == 16384<br> - rs1_h1_val == 128<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                      |[0x800004a8]:SMXDS t6, t5, t4<br> [0x800004ac]:sw t6, 96(ra)<br>     |
|  42|[0x800022b8]<br>0xFFFEFFEF|- rs1_h1_val == -3<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                 |[0x800004c0]:SMXDS t6, t5, t4<br> [0x800004c4]:sw t6, 100(ra)<br>    |
|  43|[0x800022bc]<br>0x0003FDEF|- rs1_h1_val == 16<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                                |[0x800004d8]:SMXDS t6, t5, t4<br> [0x800004dc]:sw t6, 104(ra)<br>    |
|  44|[0x800022c0]<br>0x00090004|- rs2_h1_val == 16<br> - rs1_h1_val == -16385<br>                                                                                                                                                                                                                                                                                            |[0x800004ec]:SMXDS t6, t5, t4<br> [0x800004f0]:sw t6, 108(ra)<br>    |
|  45|[0x800022c4]<br>0x0001FE00|- rs2_h1_val == 8<br> - rs2_h0_val == 128<br>                                                                                                                                                                                                                                                                                                |[0x80000504]:SMXDS t6, t5, t4<br> [0x80000508]:sw t6, 112(ra)<br>    |
|  46|[0x800022c8]<br>0xFEFFF81B|- rs2_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                     |[0x8000051c]:SMXDS t6, t5, t4<br> [0x80000520]:sw t6, 116(ra)<br>    |
|  47|[0x800022cc]<br>0xFFFFBFFC|- rs2_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                     |[0x80000534]:SMXDS t6, t5, t4<br> [0x80000538]:sw t6, 120(ra)<br>    |
|  48|[0x800022d0]<br>0xFFFF8121|- rs2_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                       |[0x8000054c]:SMXDS t6, t5, t4<br> [0x80000550]:sw t6, 124(ra)<br>    |
|  49|[0x800022d4]<br>0xFFE2AAA8|- rs2_h0_val == 8<br> - rs1_h1_val == 21845<br>                                                                                                                                                                                                                                                                                              |[0x80000560]:SMXDS t6, t5, t4<br> [0x80000564]:sw t6, 128(ra)<br>    |
|  50|[0x800022d8]<br>0xFFFFFF8E|- rs2_h0_val == 2<br> - rs1_h1_val == -33<br>                                                                                                                                                                                                                                                                                                |[0x80000578]:SMXDS t6, t5, t4<br> [0x8000057c]:sw t6, 132(ra)<br>    |
|  51|[0x800022dc]<br>0x00003005|- rs2_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                        |[0x80000590]:SMXDS t6, t5, t4<br> [0x80000594]:sw t6, 136(ra)<br>    |
|  52|[0x800022e0]<br>0x002001C8|- rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                    |[0x800005a8]:SMXDS t6, t5, t4<br> [0x800005ac]:sw t6, 140(ra)<br>    |
|  53|[0x800022e4]<br>0x00101101|- rs2_h0_val == -4097<br> - rs1_h1_val == -257<br>                                                                                                                                                                                                                                                                                           |[0x800005c0]:SMXDS t6, t5, t4<br> [0x800005c4]:sw t6, 144(ra)<br>    |
|  54|[0x800022e8]<br>0x000000A3|- rs1_h1_val == -129<br>                                                                                                                                                                                                                                                                                                                     |[0x800005d8]:SMXDS t6, t5, t4<br> [0x800005dc]:sw t6, 148(ra)<br>    |
|  55|[0x800022ec]<br>0xFFFD8008|- rs2_h1_val == -1<br> - rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                                             |[0x800005ec]:SMXDS t6, t5, t4<br> [0x800005f0]:sw t6, 152(ra)<br>    |
|  56|[0x800022f0]<br>0x1C71638E|- rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                                                     |[0x80000604]:SMXDS t6, t5, t4<br> [0x80000608]:sw t6, 156(ra)<br>    |
|  57|[0x800022f4]<br>0x00104C00|- rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                                     |[0x8000061c]:SMXDS t6, t5, t4<br> [0x80000620]:sw t6, 160(ra)<br>    |
|  58|[0x800022f8]<br>0x00005FE7|- rs2_h1_val == 4<br> - rs2_h0_val == -8193<br>                                                                                                                                                                                                                                                                                              |[0x80000634]:SMXDS t6, t5, t4<br> [0x80000638]:sw t6, 164(ra)<br>    |
|  59|[0x800022fc]<br>0xFFFFA400|- rs1_h1_val == 512<br>                                                                                                                                                                                                                                                                                                                      |[0x8000064c]:SMXDS t6, t5, t4<br> [0x80000650]:sw t6, 168(ra)<br>    |
|  60|[0x80002300]<br>0xFFBFBC00|- rs2_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                        |[0x80000664]:SMXDS t6, t5, t4<br> [0x80000668]:sw t6, 172(ra)<br>    |
|  61|[0x80002304]<br>0x00140400|- rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                      |[0x8000067c]:SMXDS t6, t5, t4<br> [0x80000680]:sw t6, 176(ra)<br>    |
|  62|[0x80002308]<br>0x00000489|- rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                       |[0x80000694]:SMXDS t6, t5, t4<br> [0x80000698]:sw t6, 180(ra)<br>    |
|  63|[0x8000230c]<br>0xE0001FFE|- rs2_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                    |[0x800006ac]:SMXDS t6, t5, t4<br> [0x800006b0]:sw t6, 184(ra)<br>    |
|  64|[0x80002310]<br>0x00087828|- rs2_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                                   |[0x800006c4]:SMXDS t6, t5, t4<br> [0x800006c8]:sw t6, 188(ra)<br>    |
|  65|[0x80002314]<br>0x00008C23|- rs2_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                      |[0x800006dc]:SMXDS t6, t5, t4<br> [0x800006e0]:sw t6, 192(ra)<br>    |
|  66|[0x80002318]<br>0x00015458|- rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                   |[0x800006f4]:SMXDS t6, t5, t4<br> [0x800006f8]:sw t6, 196(ra)<br>    |
|  67|[0x8000231c]<br>0x07F00000|- rs2_h0_val == -129<br>                                                                                                                                                                                                                                                                                                                     |[0x80000708]:SMXDS t6, t5, t4<br> [0x8000070c]:sw t6, 200(ra)<br>    |
|  68|[0x80002320]<br>0x0AAB0556|- rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                    |[0x80000720]:SMXDS t6, t5, t4<br> [0x80000724]:sw t6, 204(ra)<br>    |
|  69|[0x80002324]<br>0xFFFF3000|- rs2_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                       |[0x80000738]:SMXDS t6, t5, t4<br> [0x8000073c]:sw t6, 208(ra)<br>    |
|  70|[0x8000232c]<br>0xFFFAFABF|- rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                     |[0x80000764]:SMXDS t6, t5, t4<br> [0x80000768]:sw t6, 216(ra)<br>    |
|  71|[0x80002334]<br>0x001FD100|- rs2_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                                    |[0x80000794]:SMXDS t6, t5, t4<br> [0x80000798]:sw t6, 224(ra)<br>    |
