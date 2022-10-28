
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001860')]      |
| SIG_REGION                | [('0x80003210', '0x80003530', '100 dwords')]      |
| COV_LABELS                | smdrs      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/smdrs-01.S    |
| Total Number of coverpoints| 420     |
| Total Coverpoints Hit     | 414      |
| Total Signature Updates   | 100      |
| STAT1                     | 93      |
| STAT2                     | 7      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800011dc]:SMDRS t6, t5, t4
      [0x800011e0]:sd t6, 296(ra)
 -- Signature Address: 0x80003430 Data: 0xFFFFDE720001AAAE
 -- Redundant Coverpoints hit by the op
      - opcode : smdrs
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h3_val == -1025
      - rs2_h2_val == -65
      - rs2_h0_val == 0
      - rs1_h1_val == -21846
      - rs1_h0_val == 8192




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000160c]:SMDRS t6, t5, t4
      [0x80001610]:sd t6, 456(ra)
 -- Signature Address: 0x800034d0 Data: 0x0000001EF8001010
 -- Redundant Coverpoints hit by the op
      - opcode : smdrs
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h3_val == -5
      - rs2_h1_val == 32767
      - rs2_h0_val == 2
      - rs1_h2_val == 0
      - rs1_h1_val == 4096
      - rs1_h0_val == 8




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800016dc]:SMDRS t6, t5, t4
      [0x800016e0]:sd t6, 488(ra)
 -- Signature Address: 0x800034f0 Data: 0xFFFEC000000000A5
 -- Redundant Coverpoints hit by the op
      - opcode : smdrs
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h3_val == 0
      - rs2_h1_val == -9
      - rs1_h1_val == 16




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000177c]:SMDRS t6, t5, t4
      [0x80001780]:sd t6, 512(ra)
 -- Signature Address: 0x80003508 Data: 0x0040005103F03FBF
 -- Redundant Coverpoints hit by the op
      - opcode : smdrs
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val == -32768
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val < 0
      - rs1_h2_val == rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h2_val == -9
      - rs2_h1_val == -65
      - rs2_h0_val == -2049
      - rs1_h3_val == 256
      - rs1_h2_val == -9
      - rs1_h1_val == -16385




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800017b0]:SMDRS t6, t5, t4
      [0x800017b4]:sd t6, 520(ra)
 -- Signature Address: 0x80003510 Data: 0xE38DC71CFFBFE000
 -- Redundant Coverpoints hit by the op
      - opcode : smdrs
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val == rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h3_val == -21846
      - rs2_h2_val == 0
      - rs2_h1_val == 0
      - rs2_h0_val == -513
      - rs1_h3_val == -21846
      - rs1_h2_val == 8192
      - rs1_h1_val == 32
      - rs1_h0_val == 8192




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800017f0]:SMDRS t6, t5, t4
      [0x800017f4]:sd t6, 528(ra)
 -- Signature Address: 0x80003518 Data: 0x08100000FFFEE400
 -- Redundant Coverpoints hit by the op
      - opcode : smdrs
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h3_val == 4096
      - rs2_h2_val == 8192
      - rs2_h1_val == 2048
      - rs2_h0_val == -65
      - rs1_h3_val == -32768
      - rs1_h2_val == 128
      - rs1_h0_val == 1024




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001824]:SMDRS t6, t5, t4
      [0x80001828]:sd t6, 536(ra)
 -- Signature Address: 0x80003520 Data: 0xFFBC400700003003
 -- Redundant Coverpoints hit by the op
      - opcode : smdrs
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h3_val == 32767
      - rs2_h2_val == -257
      - rs2_h0_val == 21845
      - rs1_h2_val == 16384
      - rs1_h1_val == -4097
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

|s.no|            signature             |                                                                                                                                                                                                                                                                             coverpoints                                                                                                                                                                                                                                                                              |                                code                                 |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80003210]<br>0xF0000051003FFF80|- opcode : smdrs<br> - rs1 : x12<br> - rs2 : x12<br> - rd : x28<br> - rs1 == rs2 != rd<br> - rs1_h3_val == rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val < 0<br> - rs1_h2_val == rs2_h2_val<br> - rs1_h2_val < 0 and rs2_h2_val < 0<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h2_val == -9<br> - rs2_h1_val == -65<br> - rs2_h0_val == -2049<br> - rs1_h2_val == -9<br> - rs1_h1_val == -65<br> - rs1_h0_val == -2049<br>                              |[0x800003c4]:SMDRS t3, a2, a2<br> [0x800003c8]:sd t3, 0(t1)<br>      |
|   2|[0x80003218]<br>0xE38DC71C00040401|- rs1 : x14<br> - rs2 : x14<br> - rd : x14<br> - rs1 == rs2 == rd<br> - rs2_h3_val == -21846<br> - rs2_h2_val == 0<br> - rs2_h1_val == 0<br> - rs2_h0_val == -513<br> - rs1_h3_val == -21846<br> - rs1_h2_val == 0<br> - rs1_h1_val == 0<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                                                                                 |[0x800003f8]:SMDRS a4, a4, a4<br> [0x800003fc]:sd a4, 8(t1)<br>      |
|   3|[0x80003220]<br>0x0000000000000000|- rs1 : x7<br> - rs2 : x19<br> - rd : x0<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h3_val != rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val > 0<br> - rs1_h2_val != rs2_h2_val<br> - rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h3_val == 4096<br> - rs2_h2_val == 8192<br> - rs2_h1_val == 2048<br> - rs2_h0_val == -65<br> - rs1_h3_val == -32768<br> - rs1_h2_val == 128<br> - rs1_h0_val == 1024<br> |[0x80000438]:SMDRS zero, t2, s3<br> [0x8000043c]:sd zero, 16(t1)<br> |
|   4|[0x80003228]<br>0x0001FE0001023BF7|- rs1 : x24<br> - rs2 : x17<br> - rd : x24<br> - rs1 == rd != rs2<br> - rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h3_val == 2<br> - rs2_h2_val == 512<br> - rs2_h1_val == -9<br> - rs1_h3_val == 256<br> - rs1_h2_val == 256<br>                                                                                                                                                                                                                                                    |[0x80000470]:SMDRS s8, s8, a7<br> [0x80000474]:sd s8, 24(t1)<br>     |
|   5|[0x80003230]<br>0xFFFFF386000007FE|- rs1 : x1<br> - rs2 : x22<br> - rd : x22<br> - rs2 == rd != rs1<br> - rs1_h2_val < 0 and rs2_h2_val > 0<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h3_val == -1025<br> - rs2_h1_val == 1024<br> - rs2_h0_val == 2<br> - rs1_h3_val == -3<br> - rs1_h2_val == -17<br>                                                                                                                                                                                                                                                  |[0x800004a4]:SMDRS s6, ra, s6<br> [0x800004a8]:sd s6, 32(t1)<br>     |
|   6|[0x80003238]<br>0x00024D59FDF00000|- rs1 : x19<br> - rs2 : x9<br> - rd : x2<br> - rs1_h0_val == -32768<br> - rs1_h2_val > 0 and rs2_h2_val < 0<br> - rs2_h2_val == -2049<br> - rs2_h0_val == 32<br> - rs1_h2_val == 1<br> - rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                      |[0x800004d8]:SMDRS sp, s3, s1<br> [0x800004dc]:sd sp, 40(t1)<br>     |
|   7|[0x80003240]<br>0x0005000AEFF7FF80|- rs1 : x5<br> - rs2 : x4<br> - rd : x7<br> - rs2_h3_val == 16<br> - rs2_h0_val == 128<br> - rs1_h3_val == -8193<br> - rs1_h2_val == 32767<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000510]:SMDRS t2, t0, tp<br> [0x80000514]:sd t2, 48(t1)<br>     |
|   8|[0x80003248]<br>0xFFFEFF7800041010|- rs1 : x15<br> - rs2 : x5<br> - rd : x13<br> - rs2_h3_val == 1024<br> - rs2_h2_val == -17<br> - rs2_h1_val == 4096<br> - rs2_h0_val == 4<br> - rs1_h3_val == 64<br> - rs1_h2_val == 8<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                      |[0x80000540]:SMDRS a3, a5, t0<br> [0x80000544]:sd a3, 56(t1)<br>     |
|   9|[0x80003250]<br>0x00166A9508003FE8|- rs1 : x23<br> - rs2 : x8<br> - rd : x16<br> - rs2_h3_val == 21845<br> - rs2_h2_val == -3<br> - rs2_h1_val == -8193<br> - rs2_h0_val == 8<br> - rs1_h3_val == -65<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                         |[0x80000580]:SMDRS a6, s7, fp<br> [0x80000584]:sd a6, 64(t1)<br>     |
|  10|[0x80003258]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x16<br> - rd : x4<br> - rs2_h3_val == 32767<br> - rs2_h2_val == -257<br> - rs2_h0_val == 21845<br> - rs1_h3_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800005b4]:SMDRS tp, zero, a6<br> [0x800005b8]:sd tp, 72(t1)<br>   |
|  11|[0x80003260]<br>0x0000000000000000|- rs1 : x2<br> - rs2 : x0<br> - rd : x27<br> - rs2_h3_val == 0<br> - rs2_h0_val == 0<br> - rs1_h3_val == -9<br> - rs1_h2_val == -65<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800005e8]:SMDRS s11, sp, zero<br> [0x800005ec]:sd s11, 80(t1)<br> |
|  12|[0x80003268]<br>0xFF002001FFFEC000|- rs1 : x31<br> - rs2 : x27<br> - rd : x20<br> - rs1_h3_val > 0 and rs2_h3_val < 0<br> - rs2_h3_val == -8193<br> - rs2_h1_val == 512<br> - rs2_h0_val == -3<br> - rs1_h3_val == 1<br> - rs1_h2_val == -32768<br> - rs1_h1_val == 64<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                     |[0x80000618]:SMDRS s4, t6, s11<br> [0x8000061c]:sd s4, 88(t1)<br>    |
|  13|[0x80003270]<br>0xFFFFABDBFFFFEF74|- rs1 : x9<br> - rs2 : x3<br> - rd : x18<br> - rs2_h3_val == -4097<br> - rs2_h2_val == -33<br> - rs1_h3_val == -5<br> - rs1_h2_val == 32<br> - rs1_h1_val == -2<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                           |[0x80000650]:SMDRS s2, s1, gp<br> [0x80000654]:sd s2, 96(t1)<br>     |
|  14|[0x80003278]<br>0x007FC7F90000C00F|- rs1 : x18<br> - rs2 : x11<br> - rd : x10<br> - rs2_h3_val == -2049<br> - rs2_h2_val == 1024<br> - rs1_h2_val == 8192<br> - rs1_h1_val == -3<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000684]:SMDRS a0, s2, a1<br> [0x80000688]:sd a0, 104(t1)<br>    |
|  15|[0x80003280]<br>0xFFFFF9FF01FD0006|- rs1 : x26<br> - rs2 : x25<br> - rd : x9<br> - rs2_h3_val == -513<br> - rs2_h2_val == 256<br> - rs2_h0_val == 16384<br> - rs1_h3_val == -1<br> - rs1_h1_val == 32767<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                    |[0x800006b0]:SMDRS s1, s10, s9<br> [0x800006b4]:sd s1, 112(t1)<br>   |
|  16|[0x80003288]<br>0xFFFF1EF8D5559553|- rs1 : x22<br> - rs2 : x20<br> - rd : x3<br> - rs2_h3_val == -257<br> - rs2_h2_val == -8193<br> - rs2_h1_val == 21845<br> - rs2_h0_val == -8193<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                            |[0x800006f8]:SMDRS gp, s6, s4<br> [0x800006fc]:sd gp, 0(t0)<br>      |
|  17|[0x80003290]<br>0x002A7BD5FFEFC451|- rs1 : x6<br> - rs2 : x29<br> - rd : x19<br> - rs2_h3_val == -129<br> - rs2_h1_val == 16<br> - rs1_h3_val == 21845<br> - rs1_h2_val == 1024<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000730]:SMDRS s3, t1, t4<br> [0x80000734]:sd s3, 8(t0)<br>      |
|  18|[0x80003298]<br>0xFF020800FFFFFDF9|- rs1 : x20<br> - rs2 : x28<br> - rd : x12<br> - rs2_h3_val == -65<br> - rs1_h3_val == 2048<br> - rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000768]:SMDRS a2, s4, t3<br> [0x8000076c]:sd a2, 16(t0)<br>     |
|  19|[0x800032a0]<br>0x00000120FFFF3FC8|- rs1 : x4<br> - rs2 : x23<br> - rd : x1<br> - rs2_h3_val == -33<br> - rs2_h2_val == 4<br> - rs1_h3_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x8000079c]:SMDRS ra, tp, s7<br> [0x800007a0]:sd ra, 24(t0)<br>     |
|  20|[0x800032a8]<br>0x0007FFBCFFFEFFEC|- rs1 : x10<br> - rs2 : x30<br> - rd : x23<br> - rs2_h3_val == -17<br> - rs1_h1_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800007cc]:SMDRS s7, a0, t5<br> [0x800007d0]:sd s7, 32(t0)<br>     |
|  21|[0x800032b0]<br>0xFFFBFF5C00068501|- rs1 : x3<br> - rs2 : x15<br> - rd : x21<br> - rs2_h3_val == -9<br> - rs2_h1_val == -32768<br> - rs2_h0_val == -1025<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000800]:SMDRS s5, gp, a5<br> [0x80000804]:sd s5, 40(t0)<br>     |
|  22|[0x800032b8]<br>0x00003004FFF00800|- rs1 : x27<br> - rs2 : x24<br> - rd : x17<br> - rs2_h3_val == -5<br> - rs1_h2_val == -513<br> - rs1_h1_val == 512<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000830]:SMDRS a7, s11, s8<br> [0x80000834]:sd a7, 48(t0)<br>    |
|  23|[0x800032c0]<br>0x0000BFDDFFFEF7F8|- rs1 : x21<br> - rs2 : x6<br> - rd : x25<br> - rs2_h3_val == -3<br> - rs2_h2_val == 16<br> - rs1_h2_val == -2<br> - rs1_h1_val == -513<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                |[0x8000086c]:SMDRS s9, s5, t1<br> [0x80000870]:sd s9, 56(t0)<br>     |
|  24|[0x800032c8]<br>0xFEFF820708006FC3|- rs1 : x16<br> - rs2 : x13<br> - rd : x11<br> - rs2_h3_val == -2<br> - rs2_h2_val == 32767<br> - rs2_h1_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x8000089c]:SMDRS a1, a6, a3<br> [0x800008a0]:sd a1, 64(t0)<br>     |
|  25|[0x800032d0]<br>0xFFED800000003FF9|- rs1 : x30<br> - rs2 : x10<br> - rd : x29<br> - rs2_h3_val == -32768<br> - rs2_h1_val == -1<br> - rs1_h3_val == -33<br> - rs1_h2_val == 16384<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                             |[0x800008d0]:SMDRS t4, t5, a0<br> [0x800008d4]:sd t4, 72(t0)<br>     |
|  26|[0x800032d8]<br>0xFFFF3000000002FE|- rs1 : x17<br> - rs2 : x18<br> - rd : x31<br> - rs2_h3_val == 16384<br> - rs1_h2_val == 4096<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000908]:SMDRS t6, a7, s2<br> [0x8000090c]:sd t6, 80(t0)<br>     |
|  27|[0x800032e0]<br>0x01201FC0FFFFFEF1|- rs1 : x13<br> - rs2 : x31<br> - rd : x15<br> - rs2_h3_val == 8192<br> - rs2_h2_val == 64<br> - rs2_h0_val == -9<br> - rs1_h3_val == -2049<br> - rs1_h1_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000940]:SMDRS a5, a3, t6<br> [0x80000944]:sd a5, 88(t0)<br>     |
|  28|[0x800032e8]<br>0xFF800800000FBDBF|- rs1 : x29<br> - rs2 : x1<br> - rd : x6<br> - rs2_h3_val == 2048<br> - rs2_h2_val == 128<br> - rs2_h1_val == -33<br> - rs2_h0_val == 32767<br> - rs1_h3_val == 4096<br> - rs1_h2_val == 16<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                |[0x80000978]:SMDRS t1, t4, ra<br> [0x8000097c]:sd t1, 96(t0)<br>     |
|  29|[0x800032f0]<br>0xFF80020000003000|- rs1 : x28<br> - rs2 : x21<br> - rd : x8<br> - rs2_h3_val == 512<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800009b0]:SMDRS fp, t3, s5<br> [0x800009b4]:sd fp, 104(t0)<br>    |
|  30|[0x800032f8]<br>0x1FFBC00015554A00|- rs1 : x8<br> - rs2 : x26<br> - rd : x30<br> - rs2_h3_val == 256<br> - rs1_h3_val == 1024<br> - rs1_h1_val == 21845<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800009e0]:SMDRS t5, fp, s10<br> [0x800009e4]:sd t5, 112(t0)<br>   |
|  31|[0x80003300]<br>0xFFFDEFF80002AD30|- rs1 : x25<br> - rs2 : x2<br> - rd : x26<br> - rs2_h3_val == 128<br> - rs2_h2_val == -513<br> - rs2_h1_val == 64<br> - rs2_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000a18]:SMDRS s10, s9, sp<br> [0x80000a1c]:sd s10, 120(t0)<br>  |
|  32|[0x80003308]<br>0x001FFF80FFFE3800|- rs1 : x11<br> - rs2 : x7<br> - rd : x5<br> - rs2_h3_val == 64<br> - rs2_h0_val == 4096<br> - rs1_h2_val == -1<br> - rs1_h1_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000a54]:SMDRS t0, a1, t2<br> [0x80000a58]:sd t0, 0(ra)<br>      |
|  33|[0x80003310]<br>0xFF77C22100000009|- rs2_h3_val == 32<br> - rs2_h1_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000a88]:SMDRS t6, t5, t4<br> [0x80000a8c]:sd t6, 8(ra)<br>      |
|  34|[0x80003318]<br>0x00008209FFFFCE09|- rs2_h3_val == 8<br> - rs2_h2_val == -1<br> - rs2_h1_val == -513<br> - rs2_h0_val == 1024<br> - rs1_h3_val == -4097<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000abc]:SMDRS t6, t5, t4<br> [0x80000ac0]:sd t6, 16(ra)<br>     |
|  35|[0x80003320]<br>0x0002000B00009000|- rs2_h3_val == 4<br> - rs2_h2_val == -16385<br> - rs2_h0_val == 64<br> - rs1_h1_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000af0]:SMDRS t6, t5, t4<br> [0x80000af4]:sd t6, 24(ra)<br>     |
|  36|[0x80003328]<br>0x10003C00FFDF8800|- rs2_h3_val == -16385<br> - rs1_h3_val == 16384<br> - rs1_h1_val == -32768<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000b28]:SMDRS t6, t5, t4<br> [0x80000b2c]:sd t6, 32(ra)<br>     |
|  37|[0x80003330]<br>0x005351FF000006C0|- rs1_h3_val == -513<br> - rs1_h2_val == 21845<br> - rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000b60]:SMDRS t6, t5, t4<br> [0x80000b64]:sd t6, 40(ra)<br>     |
|  38|[0x80003338]<br>0xFFF83807FEAAB401|- rs2_h0_val == -1<br> - rs1_h1_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000ba0]:SMDRS t6, t5, t4<br> [0x80000ba4]:sd t6, 48(ra)<br>     |
|  39|[0x80003340]<br>0xFFFEC0760001440A|- rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000bd8]:SMDRS t6, t5, t4<br> [0x80000bdc]:sd t6, 56(ra)<br>     |
|  40|[0x80003348]<br>0xFFE02001FFFFFB78|- rs1_h2_val == -257<br> - rs1_h1_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000c10]:SMDRS t6, t5, t4<br> [0x80000c14]:sd t6, 64(ra)<br>     |
|  41|[0x80003350]<br>0xFFFDD800FFFFFF4A|- rs2_h1_val == 8<br> - rs1_h1_val == 16<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000c48]:SMDRS t6, t5, t4<br> [0x80000c4c]:sd t6, 72(ra)<br>     |
|  42|[0x80003358]<br>0xFFFF0004FFFEFFDC|- rs2_h1_val == 4<br> - rs2_h0_val == -16385<br> - rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000c78]:SMDRS t6, t5, t4<br> [0x80000c7c]:sd t6, 80(ra)<br>     |
|  43|[0x80003360]<br>0xFFFFFFD5000808E1|- rs1_h1_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000cb0]:SMDRS t6, t5, t4<br> [0x80000cb4]:sd t6, 88(ra)<br>     |
|  44|[0x80003368]<br>0xFFFF0103FDFFEFF6|- rs2_h2_val == 21845<br> - rs1_h3_val == -129<br> - rs1_h2_val == -3<br> - rs1_h1_val == 2<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000ce4]:SMDRS t6, t5, t4<br> [0x80000ce8]:sd t6, 96(ra)<br>     |
|  45|[0x80003370]<br>0xFFFC0060FFFC0809|- rs2_h3_val == -1<br> - rs2_h1_val == -2049<br> - rs1_h3_val == 128<br> - rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000d14]:SMDRS t6, t5, t4<br> [0x80000d18]:sd t6, 104(ra)<br>    |
|  46|[0x80003378]<br>0xFFFFFFD3C0008000|- rs2_h2_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000d48]:SMDRS t6, t5, t4<br> [0x80000d4c]:sd t6, 112(ra)<br>    |
|  47|[0x80003380]<br>0xFFFBF9FD000FFFE2|- rs2_h2_val == -32768<br> - rs2_h1_val == 2<br> - rs1_h1_val == -1<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000d7c]:SMDRS t6, t5, t4<br> [0x80000d80]:sd t6, 120(ra)<br>    |
|  48|[0x80003388]<br>0xFFFE4019FFFAAAD3|- rs2_h1_val == -17<br> - rs2_h0_val == 16<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000db0]:SMDRS t6, t5, t4<br> [0x80000db4]:sd t6, 128(ra)<br>    |
|  49|[0x80003390]<br>0xFFFFFFFBFFF00687|- rs2_h1_val == -257<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000de8]:SMDRS t6, t5, t4<br> [0x80000dec]:sd t6, 136(ra)<br>    |
|  50|[0x80003398]<br>0x00000DE2FFFFA3FE|- rs2_h0_val == -5<br> - rs1_h1_val == -4097<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000e18]:SMDRS t6, t5, t4<br> [0x80000e1c]:sd t6, 144(ra)<br>    |
|  51|[0x800033a0]<br>0xFFFFC01CFFBFE600|- rs2_h0_val == 8192<br> - rs1_h3_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000e4c]:SMDRS t6, t5, t4<br> [0x80000e50]:sd t6, 152(ra)<br>    |
|  52|[0x800033a8]<br>0x00008436000D9A95|- rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000e88]:SMDRS t6, t5, t4<br> [0x80000e8c]:sd t6, 160(ra)<br>    |
|  53|[0x800033b0]<br>0x0001C00000040FD3|- rs2_h2_val == 4096<br> - rs1_h3_val == 8192<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000eb8]:SMDRS t6, t5, t4<br> [0x80000ebc]:sd t6, 168(ra)<br>    |
|  54|[0x800033b8]<br>0xFF7DD6580000EAAC|- rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000ef0]:SMDRS t6, t5, t4<br> [0x80000ef4]:sd t6, 176(ra)<br>    |
|  55|[0x800033c0]<br>0x0000F40000000990|- rs2_h1_val == 256<br> - rs1_h3_val == 512<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000f20]:SMDRS t6, t5, t4<br> [0x80000f24]:sd t6, 184(ra)<br>    |
|  56|[0x800033c8]<br>0x00006141FFFC00E7|- rs2_h2_val == -65<br> - rs2_h0_val == -32768<br> - rs1_h1_val == -33<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000f54]:SMDRS t6, t5, t4<br> [0x80000f58]:sd t6, 192(ra)<br>    |
|  57|[0x800033d0]<br>0x0000200620003FF8|- rs2_h2_val == -4097<br> - rs2_h1_val == 32767<br> - rs1_h3_val == 2<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000f84]:SMDRS t6, t5, t4<br> [0x80000f88]:sd t6, 200(ra)<br>    |
|  58|[0x800033d8]<br>0x00030017FE400400|- rs2_h3_val == 1<br> - rs2_h2_val == -21846<br> - rs2_h0_val == 256<br> - rs1_h3_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000fb0]:SMDRS t6, t5, t4<br> [0x80000fb4]:sd t6, 208(ra)<br>    |
|  59|[0x800033e0]<br>0xFFFFFC000001B2AF|- rs2_h1_val == 1<br> - rs1_h1_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000fe0]:SMDRS t6, t5, t4<br> [0x80000fe4]:sd t6, 216(ra)<br>    |
|  60|[0x800033e8]<br>0x00004030F9FFD401|- rs2_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001018]:SMDRS t6, t5, t4<br> [0x8000101c]:sd t6, 224(ra)<br>    |
|  61|[0x800033f0]<br>0x000000850000F160|- rs2_h0_val == -257<br> - rs1_h2_val == -5<br> - rs1_h1_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001044]:SMDRS t6, t5, t4<br> [0x80001048]:sd t6, 232(ra)<br>    |
|  62|[0x800033f8]<br>0x000887EF00001EBF|- rs2_h0_val == -129<br> - rs1_h2_val == 2048<br> - rs1_h1_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001074]:SMDRS t6, t5, t4<br> [0x80001078]:sd t6, 240(ra)<br>    |
|  63|[0x80003400]<br>0xFFFF6F61FFFDFC45|- rs2_h2_val == -2<br> - rs2_h1_val == -129<br> - rs2_h0_val == -33<br> - rs1_h1_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x8000109c]:SMDRS t6, t5, t4<br> [0x800010a0]:sd t6, 248(ra)<br>    |
|  64|[0x80003408]<br>0x002B0045FFFF5FD4|- rs2_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800010cc]:SMDRS t6, t5, t4<br> [0x800010d0]:sd t6, 256(ra)<br>    |
|  65|[0x80003410]<br>0xFFFF3FF00000FF02|- rs2_h2_val == 8<br> - rs2_h0_val == -2<br> - rs1_h2_val == -4097<br> - rs1_h1_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001104]:SMDRS t6, t5, t4<br> [0x80001108]:sd t6, 264(ra)<br>    |
|  66|[0x80003418]<br>0x0559B57603FDF800|- rs2_h0_val == 2048<br> - rs1_h2_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001144]:SMDRS t6, t5, t4<br> [0x80001148]:sd t6, 272(ra)<br>    |
|  67|[0x80003420]<br>0xFFFDFDAB00000DCA|- rs2_h0_val == 512<br> - rs1_h2_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001178]:SMDRS t6, t5, t4<br> [0x8000117c]:sd t6, 280(ra)<br>    |
|  68|[0x80003428]<br>0x0001200800014008|- rs2_h1_val == -5<br> - rs2_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800011ac]:SMDRS t6, t5, t4<br> [0x800011b0]:sd t6, 288(ra)<br>    |
|  69|[0x80003438]<br>0x0080827F00011209|- rs1_h3_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001214]:SMDRS t6, t5, t4<br> [0x80001218]:sd t6, 304(ra)<br>    |
|  70|[0x80003440]<br>0x10003FE000021003|- rs2_h2_val == 32<br> - rs1_h3_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001248]:SMDRS t6, t5, t4<br> [0x8000124c]:sd t6, 312(ra)<br>    |
|  71|[0x80003448]<br>0xFFFDFBFF0000815A|- rs1_h3_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001280]:SMDRS t6, t5, t4<br> [0x80001284]:sd t6, 320(ra)<br>    |
|  72|[0x80003450]<br>0x00400F01F0012000|- rs2_h2_val == -1025<br> - rs2_h1_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800012b0]:SMDRS t6, t5, t4<br> [0x800012b4]:sd t6, 328(ra)<br>    |
|  73|[0x80003458]<br>0xFFFFDC20FFFFBE00|- rs1_h3_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800012e8]:SMDRS t6, t5, t4<br> [0x800012ec]:sd t6, 336(ra)<br>    |
|  74|[0x80003460]<br>0x00001C15FFFFFBA1|- rs2_h2_val == -5<br> - rs1_h3_val == 16<br> - rs1_h2_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001320]:SMDRS t6, t5, t4<br> [0x80001324]:sd t6, 344(ra)<br>    |
|  75|[0x80003468]<br>0xFE000408FFFF5FF8|- rs2_h2_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001360]:SMDRS t6, t5, t4<br> [0x80001364]:sd t6, 352(ra)<br>    |
|  76|[0x80003470]<br>0xFFDDC000E0005FFF|- rs2_h2_val == 16384<br> - rs1_h2_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x8000138c]:SMDRS t6, t5, t4<br> [0x80001390]:sd t6, 360(ra)<br>    |
|  77|[0x80003478]<br>0x0001E00BFFFF7FF2|- rs1_h2_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800013bc]:SMDRS t6, t5, t4<br> [0x800013c0]:sd t6, 368(ra)<br>    |
|  78|[0x80003480]<br>0xF7BFC000FFFFFFE8|- rs1_h2_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800013f4]:SMDRS t6, t5, t4<br> [0x800013f8]:sd t6, 376(ra)<br>    |
|  79|[0x80003488]<br>0xFEFFF7E4002C0FE6|- rs2_h2_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x8000142c]:SMDRS t6, t5, t4<br> [0x80001430]:sd t6, 384(ra)<br>    |
|  80|[0x80003490]<br>0xFFDC7C07000154F2|- rs1_h2_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001464]:SMDRS t6, t5, t4<br> [0x80001468]:sd t6, 392(ra)<br>    |
|  81|[0x80003498]<br>0xFFFFFF22FFFBF900|- rs1_h2_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001494]:SMDRS t6, t5, t4<br> [0x80001498]:sd t6, 400(ra)<br>    |
|  82|[0x800034a0]<br>0xFFFFF624FD951CAB|- rs2_h1_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800014c8]:SMDRS t6, t5, t4<br> [0x800014cc]:sd t6, 408(ra)<br>    |
|  83|[0x800034a8]<br>0xFFFE200000138040|- rs2_h1_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001504]:SMDRS t6, t5, t4<br> [0x80001508]:sd t6, 416(ra)<br>    |
|  84|[0x800034b0]<br>0x00011E86FF000C07|- rs2_h1_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001540]:SMDRS t6, t5, t4<br> [0x80001544]:sd t6, 424(ra)<br>    |
|  85|[0x800034b8]<br>0xFFFFFE8CFFC00084|- rs2_h1_val == 128<br> - rs1_h3_val == -2<br> - rs1_h2_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001570]:SMDRS t6, t5, t4<br> [0x80001574]:sd t6, 432(ra)<br>    |
|  86|[0x800034c0]<br>0x000120022AAB0081|- rs1_h2_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800015a4]:SMDRS t6, t5, t4<br> [0x800015a8]:sd t6, 440(ra)<br>    |
|  87|[0x800034c8]<br>0x0000FFF200002011|- rs1_h2_val == 2<br> - rs1_h1_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800015dc]:SMDRS t6, t5, t4<br> [0x800015e0]:sd t6, 448(ra)<br>    |
|  88|[0x800034d8]<br>0x0000520000000BF0|- rs2_h1_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x8000163c]:SMDRS t6, t5, t4<br> [0x80001640]:sd t6, 464(ra)<br>    |
|  89|[0x800034e0]<br>0x00000A090AAB15C6|- rs1_h3_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001674]:SMDRS t6, t5, t4<br> [0x80001678]:sd t6, 472(ra)<br>    |
|  90|[0x800034e8]<br>0x01200080FFEFFC40|- rs2_h1_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800016ac]:SMDRS t6, t5, t4<br> [0x800016b0]:sd t6, 480(ra)<br>    |
|  91|[0x800034f8]<br>0x00003000FFFEFFCA|- rs2_h1_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001710]:SMDRS t6, t5, t4<br> [0x80001714]:sd t6, 496(ra)<br>    |
|  92|[0x80003500]<br>0xFFFEE019EFFE7FF8|- rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001748]:SMDRS t6, t5, t4<br> [0x8000174c]:sd t6, 504(ra)<br>    |
|  93|[0x80003528]<br>0xFFFDBF7505555036|- rs2_h2_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001858]:SMDRS t6, t5, t4<br> [0x8000185c]:sd t6, 544(ra)<br>    |
