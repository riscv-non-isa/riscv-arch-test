
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000870')]      |
| SIG_REGION                | [('0x80002210', '0x80002360', '84 words')]      |
| COV_LABELS                | rstsa16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/rstsa16-01.S    |
| Total Number of coverpoints| 264     |
| Total Coverpoints Hit     | 258      |
| Total Signature Updates   | 82      |
| STAT1                     | 75      |
| STAT2                     | 7      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000524]:RSTSA16 t6, t5, t4
      [0x80000528]:sw t6, 72(ra)
 -- Signature Address: 0x800022c4 Data: 0xDFFFFFDD
 -- Redundant Coverpoints hit by the op
      - opcode : rstsa16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h1_val == 0
      - rs2_h0_val == -65
      - rs1_h1_val == -16385
      - rs1_h0_val == -5




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000634]:RSTSA16 t6, t5, t4
      [0x80000638]:sw t6, 120(ra)
 -- Signature Address: 0x800022f4 Data: 0x04050020
 -- Redundant Coverpoints hit by the op
      - opcode : rstsa16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h1_val == -2049
      - rs2_h0_val == 0
      - rs1_h0_val == 64




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007dc]:RSTSA16 t6, t5, t4
      [0x800007e0]:sw t6, 192(ra)
 -- Signature Address: 0x8000233c Data: 0xFFF1EFFD
 -- Redundant Coverpoints hit by the op
      - opcode : rstsa16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h0_val == -5
      - rs1_h1_val == -33
      - rs1_h0_val == -8193




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000808]:RSTSA16 t6, t5, t4
      [0x8000080c]:sw t6, 200(ra)
 -- Signature Address: 0x80002344 Data: 0x0080BFEF
 -- Redundant Coverpoints hit by the op
      - opcode : rstsa16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val == -32768
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h1_val == -257
      - rs2_h0_val == -33
      - rs1_h1_val == -1




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000838]:RSTSA16 t6, t5, t4
      [0x8000083c]:sw t6, 208(ra)
 -- Signature Address: 0x8000234c Data: 0xFFF90008
 -- Redundant Coverpoints hit by the op
      - opcode : rstsa16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h0_val == 1
      - rs1_h1_val == -5
      - rs1_h0_val == 16




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000850]:RSTSA16 t6, t5, t4
      [0x80000854]:sw t6, 212(ra)
 -- Signature Address: 0x80002350 Data: 0x00380102
 -- Redundant Coverpoints hit by the op
      - opcode : rstsa16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == -129
      - rs2_h0_val == 512
      - rs1_h1_val == -17
      - rs1_h0_val == 4




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000864]:RSTSA16 t6, t5, t4
      [0x80000868]:sw t6, 216(ra)
 -- Signature Address: 0x80002354 Data: 0xFFE8DFFF
 -- Redundant Coverpoints hit by the op
      - opcode : rstsa16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h1_val == -17
      - rs2_h0_val == -16385
      - rs1_h1_val == -65
      - rs1_h0_val == 0






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

|s.no|        signature         |                                                                                                                                                                 coverpoints                                                                                                                                                                 |                                 code                                  |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0000FFDF|- opcode : rstsa16<br> - rs1 : x29<br> - rs2 : x29<br> - rd : x29<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h1_val == -257<br> - rs2_h0_val == -33<br> - rs1_h1_val == -257<br> - rs1_h0_val == -33<br> |[0x8000010c]:RSTSA16 t4, t4, t4<br> [0x80000110]:sw t4, 0(fp)<br>      |
|   2|[0x80002214]<br>0x0000DFFF|- rs1 : x5<br> - rs2 : x5<br> - rd : x16<br> - rs1 == rs2 != rd<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs2_h0_val == -8193<br> - rs1_h0_val == -8193<br>                                                                                                                                                                              |[0x80000124]:RSTSA16 a6, t0, t0<br> [0x80000128]:sw a6, 4(fp)<br>      |
|   3|[0x80002218]<br>0xFFFD0008|- rs1 : x21<br> - rs2 : x0<br> - rd : x25<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h0_val != rs2_h0_val<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h1_val == -5<br> - rs1_h0_val == 16<br>                                                                                          |[0x8000013c]:RSTSA16 s9, s5, zero<br> [0x80000140]:sw s9, 8(fp)<br>    |
|   4|[0x8000221c]<br>0x48000004|- rs1 : x12<br> - rs2 : x19<br> - rd : x19<br> - rs2 == rd != rs1<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == -32768<br> - rs1_h1_val == 4096<br>                                                                                                                                    |[0x80000154]:RSTSA16 s3, a2, s3<br> [0x80000158]:sw s3, 12(fp)<br>     |
|   5|[0x80002220]<br>0xFF7E0004|- rs1 : x4<br> - rs2 : x2<br> - rd : x4<br> - rs1 == rd != rs2<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs2_h1_val == 2<br> - rs2_h0_val == 4<br> - rs1_h0_val == 4<br>                                                                                                                                                                 |[0x8000016c]:RSTSA16 tp, tp, sp<br> [0x80000170]:sw tp, 16(fp)<br>     |
|   6|[0x80002224]<br>0x0805E003|- rs1 : x15<br> - rs2 : x7<br> - rd : x11<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h1_val == -4097<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                   |[0x80000184]:RSTSA16 a1, a5, t2<br> [0x80000188]:sw a1, 20(fp)<br>     |
|   7|[0x80002228]<br>0xC10000FF|- rs1 : x20<br> - rs2 : x3<br> - rd : x7<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h1_val == 32767<br> - rs2_h0_val == -1<br> - rs1_h1_val == 512<br> - rs1_h0_val == 512<br>                                                                                                                                                        |[0x8000019c]:RSTSA16 t2, s4, gp<br> [0x800001a0]:sw t2, 24(fp)<br>     |
|   8|[0x8000222c]<br>0x2AAC0402|- rs1 : x31<br> - rs2 : x10<br> - rd : x6<br> - rs2_h1_val == -21846<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                            |[0x800001b4]:RSTSA16 t1, t6, a0<br> [0x800001b8]:sw t1, 28(fp)<br>     |
|   9|[0x80002230]<br>0xD575C400|- rs1 : x26<br> - rs2 : x1<br> - rd : x24<br> - rs1_h0_val == -32768<br> - rs2_h1_val == 21845<br> - rs2_h0_val == 2048<br> - rs1_h1_val == 64<br>                                                                                                                                                                                           |[0x800001c8]:RSTSA16 s8, s10, ra<br> [0x800001cc]:sw s8, 32(fp)<br>    |
|  10|[0x80002234]<br>0x20082010|- rs1 : x6<br> - rs2 : x18<br> - rd : x31<br> - rs2_h1_val == -16385<br> - rs2_h0_val == 16384<br> - rs1_h1_val == 16<br> - rs1_h0_val == 32<br>                                                                                                                                                                                             |[0x800001dc]:RSTSA16 t6, t1, s2<br> [0x800001e0]:sw t6, 36(fp)<br>     |
|  11|[0x80002238]<br>0x0F80FFFE|- rs1 : x18<br> - rs2 : x27<br> - rd : x28<br> - rs2_h1_val == -8193<br>                                                                                                                                                                                                                                                                     |[0x800001f4]:RSTSA16 t3, s2, s11<br> [0x800001f8]:sw t3, 40(fp)<br>    |
|  12|[0x8000223c]<br>0x03FF0006|- rs1 : x17<br> - rs2 : x14<br> - rd : x30<br> - rs2_h1_val == -2049<br> - rs2_h0_val == 16<br> - rs1_h1_val == -3<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                |[0x8000020c]:RSTSA16 t5, a7, a4<br> [0x80000210]:sw t5, 44(fp)<br>     |
|  13|[0x80002240]<br>0xC20001FD|- rs1 : x22<br> - rs2 : x11<br> - rd : x20<br> - rs2_h1_val == -1025<br> - rs2_h0_val == 1024<br> - rs1_h1_val == -32768<br> - rs1_h0_val == -5<br>                                                                                                                                                                                          |[0x80000224]:RSTSA16 s4, s6, a1<br> [0x80000228]:sw s4, 48(fp)<br>     |
|  14|[0x80002244]<br>0x05001DFF|- rs1 : x8<br> - rs2 : x23<br> - rd : x13<br> - rs2_h1_val == -513<br> - rs2_h0_val == -1025<br> - rs1_h1_val == 2048<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                          |[0x80000240]:RSTSA16 a3, fp, s7<br> [0x80000244]:sw a3, 0(a2)<br>      |
|  15|[0x80002248]<br>0x00400100|- rs1 : x0<br> - rs2 : x4<br> - rd : x26<br> - rs2_h1_val == -129<br> - rs2_h0_val == 512<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                    |[0x80000258]:RSTSA16 s10, zero, tp<br> [0x8000025c]:sw s10, 4(a2)<br>  |
|  16|[0x8000224c]<br>0x0024FBFB|- rs1 : x7<br> - rs2 : x16<br> - rd : x5<br> - rs2_h1_val == -65<br> - rs2_h0_val == -9<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                        |[0x80000270]:RSTSA16 t0, t2, a6<br> [0x80000274]:sw t0, 8(a2)<br>      |
|  17|[0x80002250]<br>0x000EDFFF|- rs1 : x3<br> - rs2 : x21<br> - rd : x1<br> - rs2_h1_val == -33<br> - rs2_h0_val == -32768<br>                                                                                                                                                                                                                                              |[0x80000284]:RSTSA16 ra, gp, s5<br> [0x80000288]:sw ra, 12(a2)<br>     |
|  18|[0x80002254]<br>0x00000000|- rs1 : x1<br> - rs2 : x17<br> - rd : x0<br> - rs2_h1_val == -17<br> - rs2_h0_val == -16385<br> - rs1_h1_val == -65<br>                                                                                                                                                                                                                      |[0x80000298]:RSTSA16 zero, ra, a7<br> [0x8000029c]:sw zero, 16(a2)<br> |
|  19|[0x80002258]<br>0x2004FFFB|- rs1 : x25<br> - rs2 : x6<br> - rd : x15<br> - rs2_h1_val == -9<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                  |[0x800002b0]:RSTSA16 a5, s9, t1<br> [0x800002b4]:sw a5, 20(a2)<br>     |
|  20|[0x8000225c]<br>0xFF82FE0F|- rs1 : x11<br> - rs2 : x30<br> - rd : x8<br> - rs2_h1_val == -5<br> - rs2_h0_val == 32<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                        |[0x800002c8]:RSTSA16 fp, a1, t5<br> [0x800002cc]:sw fp, 24(a2)<br>     |
|  21|[0x80002260]<br>0x00112AA6|- rs1 : x16<br> - rs2 : x20<br> - rd : x18<br> - rs2_h1_val == -3<br> - rs2_h0_val == 21845<br> - rs1_h1_val == 32<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                |[0x800002e0]:RSTSA16 s2, a6, s4<br> [0x800002e4]:sw s2, 28(a2)<br>     |
|  22|[0x80002264]<br>0x0004C001|- rs1 : x9<br> - rs2 : x25<br> - rd : x3<br> - rs2_h1_val == -2<br> - rs2_h0_val == 2<br>                                                                                                                                                                                                                                                    |[0x800002f4]:RSTSA16 gp, s1, s9<br> [0x800002f8]:sw gp, 32(a2)<br>     |
|  23|[0x80002268]<br>0xDFFDFFFF|- rs1 : x27<br> - rs2 : x22<br> - rd : x23<br> - rs2_h1_val == 16384<br>                                                                                                                                                                                                                                                                     |[0x8000030c]:RSTSA16 s7, s11, s6<br> [0x80000310]:sw s7, 36(a2)<br>    |
|  24|[0x8000226c]<br>0xB000BFFC|- rs1 : x24<br> - rs2 : x28<br> - rd : x14<br> - rs2_h1_val == 8192<br>                                                                                                                                                                                                                                                                      |[0x80000320]:RSTSA16 a4, s8, t3<br> [0x80000324]:sw a4, 40(a2)<br>     |
|  25|[0x80002270]<br>0xFC00FFEA|- rs1 : x13<br> - rs2 : x26<br> - rd : x2<br> - rs2_h1_val == 4096<br>                                                                                                                                                                                                                                                                       |[0x80000338]:RSTSA16 sp, a3, s10<br> [0x8000033c]:sw sp, 44(a2)<br>    |
|  26|[0x80002274]<br>0xFC02FF82|- rs1 : x28<br> - rs2 : x9<br> - rd : x21<br> - rs2_h1_val == 2048<br> - rs1_h1_val == 4<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                        |[0x80000350]:RSTSA16 s5, t3, s1<br> [0x80000354]:sw s5, 48(a2)<br>     |
|  27|[0x80002278]<br>0xFDFF17FF|- rs1 : x19<br> - rs2 : x15<br> - rd : x10<br> - rs2_h1_val == 1024<br> - rs1_h1_val == -1<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                     |[0x80000368]:RSTSA16 a0, s3, a5<br> [0x8000036c]:sw a0, 52(a2)<br>     |
|  28|[0x8000227c]<br>0x0100BBFF|- rs1 : x2<br> - rs2 : x12<br> - rd : x17<br> - rs2_h1_val == 512<br> - rs1_h1_val == 1024<br>                                                                                                                                                                                                                                               |[0x80000384]:RSTSA16 a7, sp, a2<br> [0x80000388]:sw a7, 0(ra)<br>      |
|  29|[0x80002280]<br>0xFF5FFC04|- rs1 : x30<br> - rs2 : x24<br> - rd : x9<br> - rs2_h1_val == 256<br> - rs2_h0_val == -2049<br>                                                                                                                                                                                                                                              |[0x8000039c]:RSTSA16 s1, t5, s8<br> [0x800003a0]:sw s1, 4(ra)<br>      |
|  30|[0x80002284]<br>0xFF7FC010|- rs1 : x23<br> - rs2 : x31<br> - rd : x27<br> - rs2_h1_val == 128<br> - rs1_h1_val == -129<br>                                                                                                                                                                                                                                              |[0x800003b0]:RSTSA16 s11, s7, t6<br> [0x800003b4]:sw s11, 8(ra)<br>    |
|  31|[0x80002288]<br>0x3FDF403F|- rs1 : x10<br> - rs2 : x13<br> - rd : x12<br> - rs2_h1_val == 64<br> - rs2_h0_val == 32767<br> - rs1_h1_val == 32767<br> - rs1_h0_val == 128<br>                                                                                                                                                                                            |[0x800003c8]:RSTSA16 a2, a0, a3<br> [0x800003cc]:sw a2, 12(ra)<br>     |
|  32|[0x8000228c]<br>0x000FFF04|- rs1 : x14<br> - rs2 : x8<br> - rd : x22<br> - rs2_h1_val == 1<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                                 |[0x800003e0]:RSTSA16 s6, a4, fp<br> [0x800003e4]:sw s6, 16(ra)<br>     |
|  33|[0x80002290]<br>0x0804FFBD|- rs2_h0_val == -5<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                                              |[0x800003f8]:RSTSA16 t6, t5, t4<br> [0x800003fc]:sw t6, 20(ra)<br>     |
|  34|[0x80002294]<br>0x0001FFFB|- rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                      |[0x80000410]:RSTSA16 t6, t5, t4<br> [0x80000414]:sw t6, 24(ra)<br>     |
|  35|[0x80002298]<br>0x0001EFFF|- rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                     |[0x80000424]:RSTSA16 t6, t5, t4<br> [0x80000428]:sw t6, 28(ra)<br>     |
|  36|[0x8000229c]<br>0x00000802|- rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                     |[0x80000438]:RSTSA16 t6, t5, t4<br> [0x8000043c]:sw t6, 32(ra)<br>     |
|  37|[0x800022a0]<br>0xEFFB01FC|- rs2_h1_val == 8<br> - rs1_h1_val == -8193<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                     |[0x80000450]:RSTSA16 t6, t5, t4<br> [0x80000454]:sw t6, 36(ra)<br>     |
|  38|[0x800022a4]<br>0xFFF0007D|- rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                      |[0x80000468]:RSTSA16 t6, t5, t4<br> [0x8000046c]:sw t6, 40(ra)<br>     |
|  39|[0x800022a8]<br>0xDFFF001D|- rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                       |[0x80000480]:RSTSA16 t6, t5, t4<br> [0x80000484]:sw t6, 44(ra)<br>     |
|  40|[0x800022ac]<br>0xFFF90104|- rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                        |[0x80000498]:RSTSA16 t6, t5, t4<br> [0x8000049c]:sw t6, 48(ra)<br>     |
|  41|[0x800022b0]<br>0x0042FFFC|- rs1_h1_val == 128<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                |[0x800004b0]:RSTSA16 t6, t5, t4<br> [0x800004b4]:sw t6, 52(ra)<br>     |
|  42|[0x800022b4]<br>0x00F8FFE0|- rs2_h1_val == 16<br> - rs2_h0_val == -65<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                         |[0x800004c8]:RSTSA16 t6, t5, t4<br> [0x800004cc]:sw t6, 56(ra)<br>     |
|  43|[0x800022b8]<br>0xE0003FFF|- rs1_h1_val == -16385<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                            |[0x800004e0]:RSTSA16 t6, t5, t4<br> [0x800004e4]:sw t6, 60(ra)<br>     |
|  44|[0x800022bc]<br>0xFFEC07FD|- rs2_h1_val == 32<br>                                                                                                                                                                                                                                                                                                                       |[0x800004f4]:RSTSA16 t6, t5, t4<br> [0x800004f8]:sw t6, 64(ra)<br>     |
|  45|[0x800022c0]<br>0x3FFD0044|- rs2_h1_val == 4<br>                                                                                                                                                                                                                                                                                                                        |[0x8000050c]:RSTSA16 t6, t5, t4<br> [0x80000510]:sw t6, 68(ra)<br>     |
|  46|[0x800022c8]<br>0x10002AAD|- rs2_h1_val == -1<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                              |[0x8000053c]:RSTSA16 t6, t5, t4<br> [0x80000540]:sw t6, 76(ra)<br>     |
|  47|[0x800022cc]<br>0x1AAAD551|- rs2_h0_val == -21846<br> - rs1_h1_val == 21845<br>                                                                                                                                                                                                                                                                                         |[0x80000554]:RSTSA16 t6, t5, t4<br> [0x80000558]:sw t6, 80(ra)<br>     |
|  48|[0x800022d0]<br>0xDFFDF801|- rs2_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                    |[0x8000056c]:RSTSA16 t6, t5, t4<br> [0x80000570]:sw t6, 84(ra)<br>     |
|  49|[0x800022d4]<br>0x4001FFFD|- rs2_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                       |[0x80000584]:RSTSA16 t6, t5, t4<br> [0x80000588]:sw t6, 88(ra)<br>     |
|  50|[0x800022d8]<br>0xDFFBFFBE|- rs2_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                       |[0x8000059c]:RSTSA16 t6, t5, t4<br> [0x800005a0]:sw t6, 92(ra)<br>     |
|  51|[0x800022dc]<br>0x20000BFF|- rs2_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                     |[0x800005b0]:RSTSA16 t6, t5, t4<br> [0x800005b4]:sw t6, 96(ra)<br>     |
|  52|[0x800022e0]<br>0x00082800|- rs2_h0_val == 4096<br> - rs1_h1_val == -17<br>                                                                                                                                                                                                                                                                                             |[0x800005c0]:RSTSA16 t6, t5, t4<br> [0x800005c4]:sw t6, 100(ra)<br>    |
|  53|[0x800022e4]<br>0x1FFE00A0|- rs2_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                      |[0x800005d8]:RSTSA16 t6, t5, t4<br> [0x800005dc]:sw t6, 104(ra)<br>    |
|  54|[0x800022e8]<br>0xFFF00050|- rs2_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                      |[0x800005f0]:RSTSA16 t6, t5, t4<br> [0x800005f4]:sw t6, 108(ra)<br>    |
|  55|[0x800022ec]<br>0x4AAA001C|- rs2_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                       |[0x80000608]:RSTSA16 t6, t5, t4<br> [0x8000060c]:sw t6, 112(ra)<br>    |
|  56|[0x800022f0]<br>0x0000FE03|- rs2_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                        |[0x80000620]:RSTSA16 t6, t5, t4<br> [0x80000624]:sw t6, 116(ra)<br>    |
|  57|[0x800022f8]<br>0xD5520011|- rs1_h1_val == -21846<br>                                                                                                                                                                                                                                                                                                                   |[0x8000064c]:RSTSA16 t6, t5, t4<br> [0x80000650]:sw t6, 124(ra)<br>    |
|  58|[0x800022fc]<br>0xF80101BF|- rs2_h0_val == -129<br> - rs1_h1_val == -4097<br>                                                                                                                                                                                                                                                                                           |[0x80000664]:RSTSA16 t6, t5, t4<br> [0x80000668]:sw t6, 128(ra)<br>    |
|  59|[0x80002300]<br>0xFAFFFFFB|- rs2_h0_val == 1<br> - rs1_h1_val == -2049<br>                                                                                                                                                                                                                                                                                              |[0x8000067c]:RSTSA16 t6, t5, t4<br> [0x80000680]:sw t6, 132(ra)<br>    |
|  60|[0x80002304]<br>0xFE022002|- rs1_h1_val == -1025<br>                                                                                                                                                                                                                                                                                                                    |[0x80000690]:RSTSA16 t6, t5, t4<br> [0x80000694]:sw t6, 136(ra)<br>    |
|  61|[0x80002308]<br>0xFEFC03FB|- rs1_h1_val == -513<br>                                                                                                                                                                                                                                                                                                                     |[0x800006a8]:RSTSA16 t6, t5, t4<br> [0x800006ac]:sw t6, 140(ra)<br>    |
|  62|[0x8000230c]<br>0xFFCF0041|- rs1_h1_val == -33<br>                                                                                                                                                                                                                                                                                                                      |[0x800006c0]:RSTSA16 t6, t5, t4<br> [0x800006c4]:sw t6, 144(ra)<br>    |
|  63|[0x80002310]<br>0xBFFC00C0|- rs1_h1_val == -9<br>                                                                                                                                                                                                                                                                                                                       |[0x800006d8]:RSTSA16 t6, t5, t4<br> [0x800006dc]:sw t6, 148(ra)<br>    |
|  64|[0x80002314]<br>0xBFFF01FC|- rs1_h1_val == -2<br>                                                                                                                                                                                                                                                                                                                       |[0x800006f0]:RSTSA16 t6, t5, t4<br> [0x800006f4]:sw t6, 152(ra)<br>    |
|  65|[0x80002318]<br>0xFFF9FF7C|- rs2_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                     |[0x80000708]:RSTSA16 t6, t5, t4<br> [0x8000070c]:sw t6, 156(ra)<br>    |
|  66|[0x8000231c]<br>0x20054003|- rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                                                                    |[0x80000720]:RSTSA16 t6, t5, t4<br> [0x80000724]:sw t6, 160(ra)<br>    |
|  67|[0x80002320]<br>0xE08003FB|- rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                      |[0x80000738]:RSTSA16 t6, t5, t4<br> [0x8000073c]:sw t6, 164(ra)<br>    |
|  68|[0x80002324]<br>0x0005F7FD|- rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                        |[0x80000750]:RSTSA16 t6, t5, t4<br> [0x80000754]:sw t6, 168(ra)<br>    |
|  69|[0x80002328]<br>0xFF01FFF0|- rs1_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                        |[0x80000768]:RSTSA16 t6, t5, t4<br> [0x8000076c]:sw t6, 172(ra)<br>    |
|  70|[0x8000232c]<br>0xE000FF7C|- rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                        |[0x80000780]:RSTSA16 t6, t5, t4<br> [0x80000784]:sw t6, 176(ra)<br>    |
|  71|[0x80002330]<br>0x0103B555|- rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                   |[0x80000794]:RSTSA16 t6, t5, t4<br> [0x80000798]:sw t6, 180(ra)<br>    |
|  72|[0x80002334]<br>0x002129AA|- rs2_h0_val == -513<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                           |[0x800007ac]:RSTSA16 t6, t5, t4<br> [0x800007b0]:sw t6, 184(ra)<br>    |
|  73|[0x80002338]<br>0x00003FFB|- rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                    |[0x800007c4]:RSTSA16 t6, t5, t4<br> [0x800007c8]:sw t6, 188(ra)<br>    |
|  74|[0x80002340]<br>0x28AA00F7|- rs2_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                      |[0x800007f4]:RSTSA16 t6, t5, t4<br> [0x800007f8]:sw t6, 196(ra)<br>    |
|  75|[0x80002348]<br>0x0000EFDF|- rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                      |[0x80000820]:RSTSA16 t6, t5, t4<br> [0x80000824]:sw t6, 204(ra)<br>    |
