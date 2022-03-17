
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
| COV_LABELS                | rstas16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/rstas16-01.S    |
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
      [0x80000778]:RSTAS16 t6, t5, t4
      [0x8000077c]:sw t6, 156(ra)
 -- Signature Address: 0x80002330 Data: 0x00080003
 -- Redundant Coverpoints hit by the op
      - opcode : rstas16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 16
      - rs1_h1_val == 0
      - rs1_h0_val == 16




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000814]:RSTAS16 t6, t5, t4
      [0x80000818]:sw t6, 184(ra)
 -- Signature Address: 0x8000234c Data: 0xFFE4C005
 -- Redundant Coverpoints hit by the op
      - opcode : rstas16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val == -32768
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h1_val == -65




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000082c]:RSTAS16 t6, t5, t4
      [0x80000830]:sw t6, 188(ra)
 -- Signature Address: 0x80002350 Data: 0x00400008
 -- Redundant Coverpoints hit by the op
      - opcode : rstas16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h1_val == 64
      - rs2_h0_val == -9
      - rs1_h1_val == 64




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000844]:RSTAS16 t6, t5, t4
      [0x80000848]:sw t6, 192(ra)
 -- Signature Address: 0x80002354 Data: 0xC400FFF4
 -- Redundant Coverpoints hit by the op
      - opcode : rstas16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h1_val == -32768
      - rs1_h1_val == 2048
      - rs1_h0_val == -17






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

|s.no|        signature         |                                                                                                                                                    coverpoints                                                                                                                                                    |                                 code                                  |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80002210]<br>0xFFBF0000|- opcode : rstas16<br> - rs1 : x6<br> - rs2 : x6<br> - rd : x6<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h1_val == -65<br> - rs1_h1_val == -65<br>                            |[0x8000010c]:RSTAS16 t1, t1, t1<br> [0x80000110]:sw t1, 0(gp)<br>      |
|   2|[0x80002214]<br>0x00400000|- rs1 : x31<br> - rs2 : x31<br> - rd : x25<br> - rs1 == rs2 != rd<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs2_h1_val == 64<br> - rs2_h0_val == -9<br> - rs1_h1_val == 64<br> - rs1_h0_val == -9<br>                                                                                                          |[0x80000124]:RSTAS16 s9, t6, t6<br> [0x80000128]:sw s9, 4(gp)<br>      |
|   3|[0x80002218]<br>0x003B1005|- rs1 : x23<br> - rs2 : x20<br> - rd : x19<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h1_val == 128<br> - rs1_h1_val == -9<br> - rs1_h0_val == 8192<br> |[0x80000138]:RSTAS16 s3, s7, s4<br> [0x8000013c]:sw s3, 8(gp)<br>      |
|   4|[0x8000221c]<br>0xBFFFFE03|- rs1 : x11<br> - rs2 : x23<br> - rd : x23<br> - rs2 == rd != rs1<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == -16385<br> - rs2_h0_val == 1024<br> - rs1_h1_val == -16385<br>                                                                                                                       |[0x80000150]:RSTAS16 s7, a1, s7<br> [0x80000154]:sw s7, 12(gp)<br>     |
|   5|[0x80002220]<br>0xD7FF0000|- rs1 : x26<br> - rs2 : x4<br> - rd : x26<br> - rs1 == rd != rs2<br> - rs2_h0_val == 1<br> - rs1_h1_val == -4097<br> - rs1_h0_val == 1<br>                                                                                                                                                                         |[0x80000168]:RSTAS16 s10, s10, tp<br> [0x8000016c]:sw s10, 16(gp)<br>  |
|   6|[0x80002224]<br>0x3F7FF7FB|- rs1 : x5<br> - rs2 : x2<br> - rd : x13<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h1_val == 32767<br> - rs2_h0_val == 4096<br> - rs1_h1_val == -257<br>                                                                                                                                                   |[0x8000017c]:RSTAS16 a3, t0, sp<br> [0x80000180]:sw a3, 20(gp)<br>     |
|   7|[0x80002228]<br>0xD5560000|- rs1 : x13<br> - rs2 : x1<br> - rd : x12<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs2_h1_val == -21846<br> - rs2_h0_val == -1<br> - rs1_h0_val == 0<br>                                                                                                                                                      |[0x80000190]:RSTAS16 a2, a3, ra<br> [0x80000194]:sw a2, 24(gp)<br>     |
|   8|[0x8000222c]<br>0x2AAD0084|- rs1 : x24<br> - rs2 : x25<br> - rd : x27<br> - rs2_h1_val == 21845<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                   |[0x800001a8]:RSTAS16 s11, s8, s9<br> [0x800001ac]:sw s11, 28(gp)<br>   |
|   9|[0x80002230]<br>0xEFFD3000|- rs1 : x18<br> - rs2 : x7<br> - rd : x16<br> - rs2_h1_val == -8193<br> - rs2_h0_val == -8193<br> - rs1_h1_val == -5<br>                                                                                                                                                                                           |[0x800001c0]:RSTAS16 a6, s2, t2<br> [0x800001c4]:sw a6, 32(gp)<br>     |
|  10|[0x80002234]<br>0x37FFE800|- rs1 : x30<br> - rs2 : x8<br> - rd : x4<br> - rs2_h1_val == -4097<br> - rs2_h0_val == -4097<br> - rs1_h1_val == 32767<br>                                                                                                                                                                                         |[0x800001d4]:RSTAS16 tp, t5, fp<br> [0x800001d8]:sw tp, 36(gp)<br>     |
|  11|[0x80002238]<br>0xFBDF0006|- rs1 : x21<br> - rs2 : x19<br> - rd : x31<br> - rs2_h1_val == -2049<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                     |[0x800001ec]:RSTAS16 t6, s5, s3<br> [0x800001f0]:sw t6, 40(gp)<br>     |
|  12|[0x8000223c]<br>0xFDEFF900|- rs1 : x4<br> - rs2 : x15<br> - rd : x9<br> - rs2_h1_val == -1025<br> - rs2_h0_val == -513<br> - rs1_h1_val == -33<br> - rs1_h0_val == -4097<br>                                                                                                                                                                  |[0x80000204]:RSTAS16 s1, tp, a5<br> [0x80000208]:sw s1, 44(gp)<br>     |
|  13|[0x80002240]<br>0xFEFBFFEC|- rs1 : x7<br> - rs2 : x24<br> - rd : x15<br> - rs2_h1_val == -513<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                     |[0x8000021c]:RSTAS16 a5, t2, s8<br> [0x80000220]:sw a5, 48(gp)<br>     |
|  14|[0x80002244]<br>0xFD7F2AA7|- rs1 : x27<br> - rs2 : x16<br> - rd : x7<br> - rs2_h1_val == -257<br> - rs2_h0_val == -21846<br> - rs1_h1_val == -1025<br>                                                                                                                                                                                        |[0x80000234]:RSTAS16 t2, s11, a6<br> [0x80000238]:sw t2, 52(gp)<br>    |
|  15|[0x80002248]<br>0x003FF000|- rs1 : x28<br> - rs2 : x29<br> - rd : x8<br> - rs2_h1_val == -129<br> - rs1_h1_val == 256<br>                                                                                                                                                                                                                     |[0x80000248]:RSTAS16 fp, t3, t4<br> [0x8000024c]:sw fp, 56(gp)<br>     |
|  16|[0x8000224c]<br>0xFFEF0003|- rs1 : x0<br> - rs2 : x14<br> - rd : x30<br> - rs2_h1_val == -33<br> - rs1_h1_val == 0<br>                                                                                                                                                                                                                        |[0x80000260]:RSTAS16 t5, zero, a4<br> [0x80000264]:sw t5, 60(gp)<br>   |
|  17|[0x80002250]<br>0xFFD70800|- rs1 : x15<br> - rs2 : x17<br> - rd : x14<br> - rs2_h1_val == -17<br>                                                                                                                                                                                                                                             |[0x80000278]:RSTAS16 a4, a5, a7<br> [0x8000027c]:sw a4, 0(tp)<br>      |
|  18|[0x80002254]<br>0x0003FF3F|- rs1 : x25<br> - rs2 : x5<br> - rd : x10<br> - rs2_h1_val == -9<br> - rs2_h0_val == 256<br> - rs1_h1_val == 16<br> - rs1_h0_val == -129<br>                                                                                                                                                                       |[0x80000290]:RSTAS16 a0, s9, t0<br> [0x80000294]:sw a0, 4(tp)<br>      |
|  19|[0x80002258]<br>0xFF7DBFFD|- rs1 : x22<br> - rs2 : x27<br> - rd : x17<br> - rs1_h0_val == -32768<br> - rs2_h1_val == -5<br>                                                                                                                                                                                                                   |[0x800002a4]:RSTAS16 a7, s6, s11<br> [0x800002a8]:sw a7, 8(tp)<br>     |
|  20|[0x8000225c]<br>0xBFFECFFF|- rs1 : x29<br> - rs2 : x13<br> - rd : x21<br> - rs2_h1_val == -3<br> - rs2_h0_val == 8192<br> - rs1_h1_val == -32768<br> - rs1_h0_val == -16385<br>                                                                                                                                                               |[0x800002b8]:RSTAS16 s5, t4, a3<br> [0x800002bc]:sw s5, 12(tp)<br>     |
|  21|[0x80002260]<br>0xF7FEFFFB|- rs1 : x9<br> - rs2 : x11<br> - rd : x18<br> - rs2_h1_val == -2<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                        |[0x800002d0]:RSTAS16 s2, s1, a1<br> [0x800002d4]:sw s2, 16(tp)<br>     |
|  22|[0x80002264]<br>0x00000000|- rs1 : x19<br> - rs2 : x3<br> - rd : x0<br> - rs2_h1_val == -32768<br> - rs1_h1_val == 2048<br> - rs1_h0_val == -17<br>                                                                                                                                                                                           |[0x800002e8]:RSTAS16 zero, s3, gp<br> [0x800002ec]:sw zero, 20(tp)<br> |
|  23|[0x80002268]<br>0x1FFDDEFF|- rs1 : x8<br> - rs2 : x9<br> - rd : x1<br> - rs2_h1_val == 16384<br> - rs2_h0_val == 512<br>                                                                                                                                                                                                                      |[0x80000300]:RSTAS16 ra, fp, s1<br> [0x80000304]:sw ra, 24(tp)<br>     |
|  24|[0x8000226c]<br>0x10022000|- rs1 : x16<br> - rs2 : x28<br> - rd : x29<br> - rs2_h1_val == 8192<br> - rs2_h0_val == -16385<br> - rs1_h1_val == 4<br>                                                                                                                                                                                           |[0x80000318]:RSTAS16 t4, a6, t3<br> [0x8000031c]:sw t4, 28(tp)<br>     |
|  25|[0x80002270]<br>0x47FF0081|- rs1 : x1<br> - rs2 : x12<br> - rd : x28<br> - rs2_h1_val == 4096<br> - rs2_h0_val == -2<br>                                                                                                                                                                                                                      |[0x80000330]:RSTAS16 t3, ra, a2<br> [0x80000334]:sw t3, 32(tp)<br>     |
|  26|[0x80002274]<br>0x00030080|- rs1 : x12<br> - rs2 : x0<br> - rd : x11<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br>                                                                                                                                                                                                                          |[0x80000348]:RSTAS16 a1, a2, zero<br> [0x8000034c]:sw a1, 36(tp)<br>   |
|  27|[0x80002278]<br>0x0208FFEF|- rs1 : x14<br> - rs2 : x26<br> - rd : x24<br> - rs2_h1_val == 1024<br> - rs2_h0_val == 32<br> - rs1_h0_val == -2<br>                                                                                                                                                                                              |[0x80000360]:RSTAS16 s8, a4, s10<br> [0x80000364]:sw s8, 40(tp)<br>    |
|  28|[0x8000227c]<br>0xF0FFFFFC|- rs1 : x2<br> - rs2 : x18<br> - rd : x3<br> - rs2_h1_val == 512<br> - rs2_h0_val == 4<br> - rs1_h1_val == -8193<br> - rs1_h0_val == -3<br>                                                                                                                                                                        |[0x80000378]:RSTAS16 gp, sp, s2<br> [0x8000037c]:sw gp, 44(tp)<br>     |
|  29|[0x80002280]<br>0x007BFFFB|- rs1 : x3<br> - rs2 : x22<br> - rd : x2<br> - rs2_h1_val == 256<br>                                                                                                                                                                                                                                               |[0x80000390]:RSTAS16 sp, gp, s6<br> [0x80000394]:sw sp, 48(tp)<br>     |
|  30|[0x80002284]<br>0xFFFFE010|- rs1 : x17<br> - rs2 : x10<br> - rd : x5<br> - rs2_h1_val == 32<br> - rs2_h0_val == -33<br>                                                                                                                                                                                                                       |[0x800003a4]:RSTAS16 t0, a7, a0<br> [0x800003a8]:sw t0, 52(tp)<br>     |
|  31|[0x80002288]<br>0xFFF70480|- rs1 : x10<br> - rs2 : x21<br> - rd : x20<br> - rs2_h1_val == 16<br> - rs2_h0_val == -2049<br>                                                                                                                                                                                                                    |[0x800003bc]:RSTAS16 s4, a0, s5<br> [0x800003c0]:sw s4, 56(tp)<br>     |
|  32|[0x8000228c]<br>0x10040003|- rs1 : x20<br> - rs2 : x30<br> - rd : x22<br> - rs2_h1_val == 8<br> - rs2_h0_val == -5<br> - rs1_h1_val == 8192<br> - rs1_h0_val == 2<br>                                                                                                                                                                         |[0x800003d4]:RSTAS16 s6, s4, t5<br> [0x800003d8]:sw s6, 60(tp)<br>     |
|  33|[0x80002290]<br>0xFC7F0200|- rs1_h1_val == -2049<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                                                                |[0x800003ec]:RSTAS16 t6, t5, t4<br> [0x800003f0]:sw t6, 64(tp)<br>     |
|  34|[0x80002294]<br>0x2003FEF7|- rs2_h0_val == 16<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                                                    |[0x8000040c]:RSTAS16 t6, t5, t4<br> [0x80000410]:sw t6, 0(ra)<br>      |
|  35|[0x80002298]<br>0x0004FFA0|- rs2_h0_val == -65<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                   |[0x80000424]:RSTAS16 t6, t5, t4<br> [0x80000428]:sw t6, 4(ra)<br>      |
|  36|[0x8000229c]<br>0x007C1FE0|- rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                            |[0x8000043c]:RSTAS16 t6, t5, t4<br> [0x80000440]:sw t6, 8(ra)<br>      |
|  37|[0x800022a0]<br>0xE008003E|- rs2_h0_val == -129<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                    |[0x80000454]:RSTAS16 t6, t5, t4<br> [0x80000458]:sw t6, 12(ra)<br>     |
|  38|[0x800022a4]<br>0xFFFE2004|- rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                          |[0x80000468]:RSTAS16 t6, t5, t4<br> [0x8000046c]:sw t6, 16(ra)<br>     |
|  39|[0x800022a8]<br>0xFFFF0880|- rs2_h0_val == -257<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                  |[0x8000047c]:RSTAS16 t6, t5, t4<br> [0x80000480]:sw t6, 20(ra)<br>     |
|  40|[0x800022ac]<br>0xF8030000|- rs2_h0_val == 2048<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                  |[0x80000494]:RSTAS16 t6, t5, t4<br> [0x80000498]:sw t6, 24(ra)<br>     |
|  41|[0x800022b0]<br>0x32AA01FE|- rs1_h1_val == 21845<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                 |[0x800004ac]:RSTAS16 t6, t5, t4<br> [0x800004b0]:sw t6, 28(ra)<br>     |
|  42|[0x800022b4]<br>0x037F00FB|- rs2_h1_val == 2048<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                   |[0x800004c4]:RSTAS16 t6, t5, t4<br> [0x800004c8]:sw t6, 32(ra)<br>     |
|  43|[0x800022b8]<br>0xEFFD00C0|- rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                            |[0x800004dc]:RSTAS16 t6, t5, t4<br> [0x800004e0]:sw t6, 36(ra)<br>     |
|  44|[0x800022bc]<br>0xFFFB0021|- rs1_h1_val == -2<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                      |[0x800004f4]:RSTAS16 t6, t5, t4<br> [0x800004f8]:sw t6, 40(ra)<br>     |
|  45|[0x800022c0]<br>0xFFEB000B|- rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                             |[0x8000050c]:RSTAS16 t6, t5, t4<br> [0x80000510]:sw t6, 44(ra)<br>     |
|  46|[0x800022c4]<br>0xF7FC0808|- rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                             |[0x80000524]:RSTAS16 t6, t5, t4<br> [0x80000528]:sw t6, 48(ra)<br>     |
|  47|[0x800022c8]<br>0x0BFF0006|- rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                              |[0x8000053c]:RSTAS16 t6, t5, t4<br> [0x80000540]:sw t6, 52(ra)<br>     |
|  48|[0x800022cc]<br>0x00061FFD|- rs2_h1_val == 4<br>                                                                                                                                                                                                                                                                                              |[0x80000550]:RSTAS16 t6, t5, t4<br> [0x80000554]:sw t6, 56(ra)<br>     |
|  49|[0x800022d0]<br>0xFFE0E001|- rs2_h1_val == 2<br>                                                                                                                                                                                                                                                                                              |[0x80000568]:RSTAS16 t6, t5, t4<br> [0x8000056c]:sw t6, 60(ra)<br>     |
|  50|[0x800022d4]<br>0x2AAB0805|- rs2_h1_val == 1<br>                                                                                                                                                                                                                                                                                              |[0x80000580]:RSTAS16 t6, t5, t4<br> [0x80000584]:sw t6, 64(ra)<br>     |
|  51|[0x800022d8]<br>0x040001E0|- rs2_h0_val == 64<br>                                                                                                                                                                                                                                                                                             |[0x80000594]:RSTAS16 t6, t5, t4<br> [0x80000598]:sw t6, 68(ra)<br>     |
|  52|[0x800022dc]<br>0x00030004|- rs2_h1_val == -1<br> - rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                       |[0x800005a8]:RSTAS16 t6, t5, t4<br> [0x800005ac]:sw t6, 72(ra)<br>     |
|  53|[0x800022e0]<br>0x00030401|- rs2_h0_val == -3<br>                                                                                                                                                                                                                                                                                             |[0x800005c0]:RSTAS16 t6, t5, t4<br> [0x800005c4]:sw t6, 76(ra)<br>     |
|  54|[0x800022e4]<br>0x007C3FFF|- rs2_h0_val == -32768<br>                                                                                                                                                                                                                                                                                         |[0x800005d4]:RSTAS16 t6, t5, t4<br> [0x800005d8]:sw t6, 80(ra)<br>     |
|  55|[0x800022e8]<br>0xFFBF1FFF|- rs2_h0_val == 16384<br> - rs1_h1_val == -129<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                       |[0x800005e8]:RSTAS16 t6, t5, t4<br> [0x800005ec]:sw t6, 84(ra)<br>     |
|  56|[0x800022ec]<br>0x0041FFC4|- rs2_h0_val == 128<br> - rs1_h1_val == 128<br>                                                                                                                                                                                                                                                                    |[0x80000600]:RSTAS16 t6, t5, t4<br> [0x80000604]:sw t6, 88(ra)<br>     |
|  57|[0x800022f0]<br>0xFFFFFFFA|- rs2_h0_val == 8<br>                                                                                                                                                                                                                                                                                              |[0x80000618]:RSTAS16 t6, t5, t4<br> [0x8000061c]:sw t6, 92(ra)<br>     |
|  58|[0x800022f4]<br>0x155400FF|- rs2_h0_val == 2<br>                                                                                                                                                                                                                                                                                              |[0x80000630]:RSTAS16 t6, t5, t4<br> [0x80000634]:sw t6, 96(ra)<br>     |
|  59|[0x800022f8]<br>0xFFC0FFFF|- rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                                              |[0x80000644]:RSTAS16 t6, t5, t4<br> [0x80000648]:sw t6, 100(ra)<br>    |
|  60|[0x800022fc]<br>0xAAAAFFFD|- rs1_h1_val == -21846<br>                                                                                                                                                                                                                                                                                         |[0x8000065c]:RSTAS16 t6, t5, t4<br> [0x80000660]:sw t6, 104(ra)<br>    |
|  61|[0x80002300]<br>0xFEFF2000|- rs1_h1_val == -1<br>                                                                                                                                                                                                                                                                                             |[0x8000066c]:RSTAS16 t6, t5, t4<br> [0x80000670]:sw t6, 108(ra)<br>    |
|  62|[0x80002304]<br>0xBEFF0005|- rs1_h1_val == -513<br>                                                                                                                                                                                                                                                                                           |[0x80000684]:RSTAS16 t6, t5, t4<br> [0x80000688]:sw t6, 112(ra)<br>    |
|  63|[0x80002308]<br>0xFFFF2020|- rs1_h1_val == -17<br>                                                                                                                                                                                                                                                                                            |[0x80000698]:RSTAS16 t6, t5, t4<br> [0x8000069c]:sw t6, 116(ra)<br>    |
|  64|[0x8000230c]<br>0xF7FEFFFB|- rs1_h1_val == -3<br>                                                                                                                                                                                                                                                                                             |[0x800006b0]:RSTAS16 t6, t5, t4<br> [0x800006b4]:sw t6, 120(ra)<br>    |
|  65|[0x80002310]<br>0x17FF0001|- rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                                          |[0x800006c8]:RSTAS16 t6, t5, t4<br> [0x800006cc]:sw t6, 124(ra)<br>    |
|  66|[0x80002314]<br>0x07BF0003|- rs1_h1_val == 4096<br>                                                                                                                                                                                                                                                                                           |[0x800006e0]:RSTAS16 t6, t5, t4<br> [0x800006e4]:sw t6, 128(ra)<br>    |
|  67|[0x80002318]<br>0xD755E003|- rs1_h1_val == 1024<br>                                                                                                                                                                                                                                                                                           |[0x800006f4]:RSTAS16 t6, t5, t4<br> [0x800006f8]:sw t6, 132(ra)<br>    |
|  68|[0x8000231c]<br>0x2100FFFA|- rs1_h1_val == 512<br>                                                                                                                                                                                                                                                                                            |[0x8000070c]:RSTAS16 t6, t5, t4<br> [0x80000710]:sw t6, 136(ra)<br>    |
|  69|[0x80002320]<br>0x00104008|- rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                                             |[0x80000720]:RSTAS16 t6, t5, t4<br> [0x80000724]:sw t6, 140(ra)<br>    |
|  70|[0x80002324]<br>0xFF7DD5D5|- rs2_h0_val == 21845<br>                                                                                                                                                                                                                                                                                          |[0x80000738]:RSTAS16 t6, t5, t4<br> [0x8000073c]:sw t6, 144(ra)<br>    |
|  71|[0x80002328]<br>0xFF7FC004|- rs2_h0_val == 32767<br>                                                                                                                                                                                                                                                                                          |[0x80000750]:RSTAS16 t6, t5, t4<br> [0x80000754]:sw t6, 148(ra)<br>    |
|  72|[0x8000232c]<br>0x2AAB1FFC|- rs1_h1_val == 2<br>                                                                                                                                                                                                                                                                                              |[0x80000764]:RSTAS16 t6, t5, t4<br> [0x80000768]:sw t6, 152(ra)<br>    |
|  73|[0x80002334]<br>0xFE0701FE|- rs2_h0_val == -1025<br>                                                                                                                                                                                                                                                                                          |[0x80000790]:RSTAS16 t6, t5, t4<br> [0x80000794]:sw t6, 160(ra)<br>    |
|  74|[0x80002338]<br>0x2002D5D5|- rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                         |[0x800007a8]:RSTAS16 t6, t5, t4<br> [0x800007ac]:sw t6, 164(ra)<br>    |
|  75|[0x8000233c]<br>0xFDFF2ABB|- rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                          |[0x800007bc]:RSTAS16 t6, t5, t4<br> [0x800007c0]:sw t6, 168(ra)<br>    |
|  76|[0x80002340]<br>0xFBBFD000|- rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                          |[0x800007d4]:RSTAS16 t6, t5, t4<br> [0x800007d8]:sw t6, 172(ra)<br>    |
|  77|[0x80002344]<br>0xE010D55D|- rs2_h0_val == -17<br>                                                                                                                                                                                                                                                                                            |[0x800007ec]:RSTAS16 t6, t5, t4<br> [0x800007f0]:sw t6, 176(ra)<br>    |
|  78|[0x80002348]<br>0x00053BFF|- rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                                          |[0x80000800]:RSTAS16 t6, t5, t4<br> [0x80000804]:sw t6, 180(ra)<br>    |
