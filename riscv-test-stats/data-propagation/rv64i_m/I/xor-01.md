
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800014b0')]      |
| SIG_REGION                | [('0x80004208', '0x800047b8', '182 dwords')]      |
| COV_LABELS                | xor      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/xor-01.S/xor-01.S    |
| Total Number of coverpoints| 374     |
| Total Coverpoints Hit     | 374      |
| Total Signature Updates   | 182      |
| STAT1                     | 177      |
| STAT2                     | 5      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b2c]:xor a2, a0, a1
      [0x80000b30]:sd a2, 416(ra)
 -- Signature Address: 0x800044a8 Data: 0x0000000000002200
 -- Redundant Coverpoints hit by the op
      - opcode : xor
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == -8193
      - rs1_val == -513




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000edc]:xor a2, a0, a1
      [0x80000ee0]:sd a2, 712(ra)
 -- Signature Address: 0x800045d0 Data: 0xFFCFFFFFFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : xor
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs2_val == 9007199254740992
      - rs1_val == -4503599627370497




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001470]:xor a2, a0, a1
      [0x80001474]:sd a2, 1176(ra)
 -- Signature Address: 0x800047a0 Data: 0x5555555555555555
 -- Redundant Coverpoints hit by the op
      - opcode : xor
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs2_val == 0
      - rs1_val == 6148914691236517205




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001490]:xor a2, a0, a1
      [0x80001494]:sd a2, 1184(ra)
 -- Signature Address: 0x800047a8 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : xor
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val < 0
      - rs1_val == rs2_val
      - rs2_val == -4611686018427387905
      - rs1_val == -4611686018427387905




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800014a8]:xor a2, a0, a1
      [0x800014ac]:sd a2, 1192(ra)
 -- Signature Address: 0x800047b0 Data: 0xFFFBFFFFFFFBFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : xor
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == -1125899906842625
      - rs1_val == 262144






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

|s.no|            signature             |                                                                                                       coverpoints                                                                                                       |                               code                                |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80004208]<br>0x0000000000000000|- opcode : xor<br> - rs1 : x26<br> - rs2 : x26<br> - rd : x9<br> - rs1 == rs2 != rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val == rs2_val<br> - rs2_val == -4503599627370497<br> - rs1_val == -4503599627370497<br> |[0x800003ac]:xor s1, s10, s10<br> [0x800003b0]:sd s1, 0(a0)<br>    |
|   2|[0x80004210]<br>0xFFFFFFFFFFFBFFFF|- rs1 : x2<br> - rs2 : x24<br> - rd : x31<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val != rs2_val<br> - rs1_val == 0<br> - rs2_val == -262145<br>                                                         |[0x800003c0]:xor t6, sp, s8<br> [0x800003c4]:sd t6, 8(a0)<br>      |
|   3|[0x80004218]<br>0x0000000000000000|- rs1 : x5<br> - rs2 : x5<br> - rd : x5<br> - rs1 == rs2 == rd<br> - rs2_val == -513<br> - rs1_val == -513<br>                                                                                                           |[0x800003d8]:xor t0, t0, t0<br> [0x800003dc]:sd t0, 16(a0)<br>     |
|   4|[0x80004220]<br>0xFFFFFFFFFFFEFFFE|- rs1 : x17<br> - rs2 : x13<br> - rd : x17<br> - rs1 == rd != rs2<br> - rs1_val > 0 and rs2_val < 0<br> - rs1_val == 1<br> - rs2_val == -65537<br>                                                                       |[0x800003ec]:xor a7, a7, a3<br> [0x800003f0]:sd a7, 24(a0)<br>     |
|   5|[0x80004228]<br>0x7F7FFFFFFFFFFFFF|- rs1 : x14<br> - rs2 : x23<br> - rd : x23<br> - rs2 == rd != rs1<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -9223372036854775808<br> - rs1_val == -36028797018963969<br>                                          |[0x80000408]:xor s7, a4, s7<br> [0x8000040c]:sd s7, 32(a0)<br>     |
|   6|[0x80004230]<br>0x5555555555555555|- rs1 : x12<br> - rs2 : x0<br> - rd : x7<br> - rs2_val == 0<br> - rs1_val == 6148914691236517205<br>                                                                                                                     |[0x80000434]:xor t2, a2, zero<br> [0x80000438]:sd t2, 40(a0)<br>   |
|   7|[0x80004238]<br>0x7FFDFFFFFFFFFFFF|- rs1 : x3<br> - rs2 : x6<br> - rd : x19<br> - rs1_val > 0 and rs2_val > 0<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 9223372036854775807<br> - rs1_val == 562949953421312<br>                                    |[0x80000450]:xor s3, gp, t1<br> [0x80000454]:sd s3, 48(a0)<br>     |
|   8|[0x80004240]<br>0x0000000040000001|- rs1 : x8<br> - rs2 : x19<br> - rd : x12<br> - rs2_val == 1<br> - rs1_val == 1073741824<br>                                                                                                                             |[0x80000460]:xor a2, fp, s3<br> [0x80000464]:sd a2, 56(a0)<br>     |
|   9|[0x80004248]<br>0xFFDFFFFFFFFFFFDF|- rs1 : x1<br> - rs2 : x28<br> - rd : x18<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == 9007199254740992<br> - rs1_val == -33<br>                                                                                   |[0x80000474]:xor s2, ra, t3<br> [0x80000478]:sd s2, 64(a0)<br>     |
|  10|[0x80004250]<br>0xBFFFFFFFFFFFFFFF|- rs1 : x0<br> - rs2 : x29<br> - rd : x16<br> - rs2_val == -4611686018427387905<br>                                                                                                                                      |[0x80000494]:xor a6, zero, t4<br> [0x80000498]:sd a6, 72(a0)<br>   |
|  11|[0x80004258]<br>0x0000020000000002|- rs1 : x25<br> - rs2 : x14<br> - rd : x29<br> - rs2_val == 2199023255552<br> - rs1_val == 2<br>                                                                                                                         |[0x800004a8]:xor t4, s9, a4<br> [0x800004ac]:sd t4, 80(a0)<br>     |
|  12|[0x80004260]<br>0x0000000000004004|- rs1 : x30<br> - rs2 : x8<br> - rd : x25<br> - rs2_val == 16384<br> - rs1_val == 4<br>                                                                                                                                  |[0x800004b8]:xor s9, t5, fp<br> [0x800004bc]:sd s9, 88(a0)<br>     |
|  13|[0x80004268]<br>0xDFFFFFFFFFFFFFF7|- rs1 : x4<br> - rs2 : x22<br> - rd : x21<br> - rs2_val == -2305843009213693953<br> - rs1_val == 8<br>                                                                                                                   |[0x800004d0]:xor s5, tp, s6<br> [0x800004d4]:sd s5, 96(a0)<br>     |
|  14|[0x80004270]<br>0x0000000000400010|- rs1 : x27<br> - rs2 : x18<br> - rd : x24<br> - rs2_val == 4194304<br> - rs1_val == 16<br>                                                                                                                              |[0x800004e0]:xor s8, s11, s2<br> [0x800004e4]:sd s8, 104(a0)<br>   |
|  15|[0x80004278]<br>0x0000004000000020|- rs1 : x24<br> - rs2 : x15<br> - rd : x3<br> - rs2_val == 274877906944<br> - rs1_val == 32<br>                                                                                                                          |[0x800004f4]:xor gp, s8, a5<br> [0x800004f8]:sd gp, 112(a0)<br>    |
|  16|[0x80004280]<br>0xFFFFFFFFFFFFFFBA|- rs1 : x20<br> - rs2 : x27<br> - rd : x13<br> - rs1_val == 64<br>                                                                                                                                                       |[0x8000050c]:xor a3, s4, s11<br> [0x80000510]:sd a3, 0(t0)<br>     |
|  17|[0x80004288]<br>0xFFFFFFFFFFFFF77F|- rs1 : x13<br> - rs2 : x30<br> - rd : x27<br> - rs2_val == -2049<br> - rs1_val == 128<br>                                                                                                                               |[0x80000520]:xor s11, a3, t5<br> [0x80000524]:sd s11, 8(t0)<br>    |
|  18|[0x80004290]<br>0x0000000000020100|- rs1 : x6<br> - rs2 : x31<br> - rd : x4<br> - rs2_val == 131072<br> - rs1_val == 256<br>                                                                                                                                |[0x80000530]:xor tp, t1, t6<br> [0x80000534]:sd tp, 16(t0)<br>     |
|  19|[0x80004298]<br>0x0000000000000210|- rs1 : x10<br> - rs2 : x9<br> - rd : x6<br> - rs2_val == 16<br> - rs1_val == 512<br>                                                                                                                                    |[0x80000540]:xor t1, a0, s1<br> [0x80000544]:sd t1, 24(t0)<br>     |
|  20|[0x800042a0]<br>0x0008000000000400|- rs1 : x9<br> - rs2 : x7<br> - rd : x20<br> - rs2_val == 2251799813685248<br> - rs1_val == 1024<br>                                                                                                                     |[0x80000554]:xor s4, s1, t2<br> [0x80000558]:sd s4, 32(t0)<br>     |
|  21|[0x800042a8]<br>0x0000000008000800|- rs1 : x22<br> - rs2 : x10<br> - rd : x15<br> - rs2_val == 134217728<br> - rs1_val == 2048<br>                                                                                                                          |[0x80000568]:xor a5, s6, a0<br> [0x8000056c]:sd a5, 40(t0)<br>     |
|  22|[0x800042b0]<br>0x0000000000001800|- rs1 : x21<br> - rs2 : x2<br> - rd : x28<br> - rs2_val == 2048<br> - rs1_val == 4096<br>                                                                                                                                |[0x8000057c]:xor t3, s5, sp<br> [0x80000580]:sd t3, 48(t0)<br>     |
|  23|[0x800042b8]<br>0xFFFFFFFFDFFFDFFF|- rs1 : x18<br> - rs2 : x21<br> - rd : x10<br> - rs2_val == -536870913<br> - rs1_val == 8192<br>                                                                                                                         |[0x80000590]:xor a0, s2, s5<br> [0x80000594]:sd a0, 56(t0)<br>     |
|  24|[0x800042c0]<br>0xFFFFFFFFFFBFBFFF|- rs1 : x28<br> - rs2 : x4<br> - rd : x2<br> - rs2_val == -4194305<br> - rs1_val == 16384<br>                                                                                                                            |[0x800005a4]:xor sp, t3, tp<br> [0x800005a8]:sd sp, 64(t0)<br>     |
|  25|[0x800042c8]<br>0xFFFFFFFDFFFF7FFF|- rs1 : x19<br> - rs2 : x25<br> - rd : x11<br> - rs2_val == -8589934593<br> - rs1_val == 32768<br>                                                                                                                       |[0x800005bc]:xor a1, s3, s9<br> [0x800005c0]:sd a1, 72(t0)<br>     |
|  26|[0x800042d0]<br>0x0000200000010000|- rs1 : x23<br> - rs2 : x12<br> - rd : x30<br> - rs2_val == 35184372088832<br> - rs1_val == 65536<br>                                                                                                                    |[0x800005d0]:xor t5, s7, a2<br> [0x800005d4]:sd t5, 80(t0)<br>     |
|  27|[0x800042d8]<br>0x0010000000020000|- rs1 : x11<br> - rs2 : x1<br> - rd : x8<br> - rs2_val == 4503599627370496<br> - rs1_val == 131072<br>                                                                                                                   |[0x800005e4]:xor fp, a1, ra<br> [0x800005e8]:sd fp, 88(t0)<br>     |
|  28|[0x800042e0]<br>0x0000000000000000|- rs1 : x15<br> - rs2 : x16<br> - rd : x0<br> - rs2_val == -1125899906842625<br> - rs1_val == 262144<br>                                                                                                                 |[0x800005fc]:xor zero, a5, a6<br> [0x80000600]:sd zero, 96(t0)<br> |
|  29|[0x800042e8]<br>0x0000000020080000|- rs1 : x29<br> - rs2 : x17<br> - rd : x1<br> - rs2_val == 536870912<br> - rs1_val == 524288<br>                                                                                                                         |[0x8000060c]:xor ra, t4, a7<br> [0x80000610]:sd ra, 104(t0)<br>    |
|  30|[0x800042f0]<br>0x0040000000100000|- rs1 : x16<br> - rs2 : x20<br> - rd : x14<br> - rs2_val == 18014398509481984<br> - rs1_val == 1048576<br>                                                                                                               |[0x80000620]:xor a4, a6, s4<br> [0x80000624]:sd a4, 112(t0)<br>    |
|  31|[0x800042f8]<br>0x0000000002200000|- rs1 : x31<br> - rs2 : x11<br> - rd : x22<br> - rs2_val == 33554432<br> - rs1_val == 2097152<br>                                                                                                                        |[0x80000630]:xor s6, t6, a1<br> [0x80000634]:sd s6, 120(t0)<br>    |
|  32|[0x80004300]<br>0xFFFFFFFFFDBFFFFF|- rs1 : x7<br> - rs2 : x3<br> - rd : x26<br> - rs2_val == -33554433<br> - rs1_val == 4194304<br>                                                                                                                         |[0x80000644]:xor s10, t2, gp<br> [0x80000648]:sd s10, 128(t0)<br>  |
|  33|[0x80004308]<br>0xFDFFFFFFFF7FFFFF|- rs2_val == -144115188075855873<br> - rs1_val == 8388608<br>                                                                                                                                                            |[0x80000664]:xor a2, a0, a1<br> [0x80000668]:sd a2, 0(ra)<br>      |
|  34|[0x80004310]<br>0xFFFFFFFFFEFBFFFF|- rs1_val == 16777216<br>                                                                                                                                                                                                |[0x80000678]:xor a2, a0, a1<br> [0x8000067c]:sd a2, 8(ra)<br>      |
|  35|[0x80004318]<br>0x0000000002000400|- rs2_val == 1024<br> - rs1_val == 33554432<br>                                                                                                                                                                          |[0x80000688]:xor a2, a0, a1<br> [0x8000068c]:sd a2, 16(ra)<br>     |
|  36|[0x80004320]<br>0xFFFFFFFFFBF7FFFF|- rs2_val == -524289<br> - rs1_val == 67108864<br>                                                                                                                                                                       |[0x8000069c]:xor a2, a0, a1<br> [0x800006a0]:sd a2, 24(ra)<br>     |
|  37|[0x80004328]<br>0x0000800008000000|- rs2_val == 140737488355328<br> - rs1_val == 134217728<br>                                                                                                                                                              |[0x800006b0]:xor a2, a0, a1<br> [0x800006b4]:sd a2, 32(ra)<br>     |
|  38|[0x80004330]<br>0x7FFFFFFFEFFFFFFF|- rs1_val == 268435456<br>                                                                                                                                                                                               |[0x800006c8]:xor a2, a0, a1<br> [0x800006cc]:sd a2, 40(ra)<br>     |
|  39|[0x80004338]<br>0x0000000020000008|- rs2_val == 8<br> - rs1_val == 536870912<br>                                                                                                                                                                            |[0x800006d8]:xor a2, a0, a1<br> [0x800006dc]:sd a2, 48(ra)<br>     |
|  40|[0x80004340]<br>0xFFDFFFFF7FFFFFFF|- rs2_val == -9007199254740993<br> - rs1_val == 2147483648<br>                                                                                                                                                           |[0x800006f4]:xor a2, a0, a1<br> [0x800006f8]:sd a2, 56(ra)<br>     |
|  41|[0x80004348]<br>0x0004000100000000|- rs2_val == 1125899906842624<br> - rs1_val == 4294967296<br>                                                                                                                                                            |[0x8000070c]:xor a2, a0, a1<br> [0x80000710]:sd a2, 64(ra)<br>     |
|  42|[0x80004350]<br>0xFFFF7FFDFFFFFFFF|- rs2_val == -140737488355329<br> - rs1_val == 8589934592<br>                                                                                                                                                            |[0x80000728]:xor a2, a0, a1<br> [0x8000072c]:sd a2, 72(ra)<br>     |
|  43|[0x80004358]<br>0xFFFFFFFBFFFFFFFB|- rs2_val == -5<br> - rs1_val == 17179869184<br>                                                                                                                                                                         |[0x8000073c]:xor a2, a0, a1<br> [0x80000740]:sd a2, 80(ra)<br>     |
|  44|[0x80004360]<br>0x0000020800000000|- rs1_val == 34359738368<br>                                                                                                                                                                                             |[0x80000754]:xor a2, a0, a1<br> [0x80000758]:sd a2, 88(ra)<br>     |
|  45|[0x80004368]<br>0x2000001000000000|- rs2_val == 2305843009213693952<br> - rs1_val == 68719476736<br>                                                                                                                                                        |[0x8000076c]:xor a2, a0, a1<br> [0x80000770]:sd a2, 96(ra)<br>     |
|  46|[0x80004370]<br>0xFFFFFFDFFFFDFFFF|- rs2_val == -131073<br> - rs1_val == 137438953472<br>                                                                                                                                                                   |[0x80000784]:xor a2, a0, a1<br> [0x80000788]:sd a2, 104(ra)<br>    |
|  47|[0x80004378]<br>0x0020004000000000|- rs1_val == 274877906944<br>                                                                                                                                                                                            |[0x8000079c]:xor a2, a0, a1<br> [0x800007a0]:sd a2, 112(ra)<br>    |
|  48|[0x80004380]<br>0x0000008000000020|- rs2_val == 32<br> - rs1_val == 549755813888<br>                                                                                                                                                                        |[0x800007b0]:xor a2, a0, a1<br> [0x800007b4]:sd a2, 120(ra)<br>    |
|  49|[0x80004388]<br>0xAAAAABAAAAAAAAAA|- rs2_val == -6148914691236517206<br> - rs1_val == 1099511627776<br>                                                                                                                                                     |[0x800007e0]:xor a2, a0, a1<br> [0x800007e4]:sd a2, 128(ra)<br>    |
|  50|[0x80004390]<br>0xFFFFFDFFFFFFFFEF|- rs2_val == -17<br> - rs1_val == 2199023255552<br>                                                                                                                                                                      |[0x800007f4]:xor a2, a0, a1<br> [0x800007f8]:sd a2, 136(ra)<br>    |
|  51|[0x80004398]<br>0x0000060000000000|- rs1_val == 4398046511104<br>                                                                                                                                                                                           |[0x8000080c]:xor a2, a0, a1<br> [0x80000810]:sd a2, 144(ra)<br>    |
|  52|[0x800043a0]<br>0xFBFFF7FFFFFFFFFF|- rs2_val == -288230376151711745<br> - rs1_val == 8796093022208<br>                                                                                                                                                      |[0x80000828]:xor a2, a0, a1<br> [0x8000082c]:sd a2, 152(ra)<br>    |
|  53|[0x800043a8]<br>0xFFFFEFFFBFFFFFFF|- rs2_val == -1073741825<br> - rs1_val == 17592186044416<br>                                                                                                                                                             |[0x80000840]:xor a2, a0, a1<br> [0x80000844]:sd a2, 160(ra)<br>    |
|  54|[0x800043b0]<br>0xFFFFDFFFFFFFFFFA|- rs1_val == 35184372088832<br>                                                                                                                                                                                          |[0x80000854]:xor a2, a0, a1<br> [0x80000858]:sd a2, 168(ra)<br>    |
|  55|[0x800043b8]<br>0x0200400000000000|- rs2_val == 144115188075855872<br> - rs1_val == 70368744177664<br>                                                                                                                                                      |[0x8000086c]:xor a2, a0, a1<br> [0x80000870]:sd a2, 176(ra)<br>    |
|  56|[0x800043c0]<br>0xBFFF7FFFFFFFFFFF|- rs1_val == 140737488355328<br>                                                                                                                                                                                         |[0x80000888]:xor a2, a0, a1<br> [0x8000088c]:sd a2, 184(ra)<br>    |
|  57|[0x800043c8]<br>0xFFFEFFFFFFFFFFF9|- rs1_val == 281474976710656<br>                                                                                                                                                                                         |[0x8000089c]:xor a2, a0, a1<br> [0x800008a0]:sd a2, 192(ra)<br>    |
|  58|[0x800043d0]<br>0x0404000000000000|- rs2_val == 288230376151711744<br> - rs1_val == 1125899906842624<br>                                                                                                                                                    |[0x800008b4]:xor a2, a0, a1<br> [0x800008b8]:sd a2, 200(ra)<br>    |
|  59|[0x800043d8]<br>0x0008000000000002|- rs2_val == 2<br> - rs1_val == 2251799813685248<br>                                                                                                                                                                     |[0x800008c8]:xor a2, a0, a1<br> [0x800008cc]:sd a2, 208(ra)<br>    |
|  60|[0x800043e0]<br>0x0010000000200000|- rs2_val == 2097152<br> - rs1_val == 4503599627370496<br>                                                                                                                                                               |[0x800008dc]:xor a2, a0, a1<br> [0x800008e0]:sd a2, 216(ra)<br>    |
|  61|[0x800043e8]<br>0xFFDFFFFFFFFF7FFF|- rs2_val == -32769<br> - rs1_val == 9007199254740992<br>                                                                                                                                                                |[0x800008f4]:xor a2, a0, a1<br> [0x800008f8]:sd a2, 224(ra)<br>    |
|  62|[0x800043f0]<br>0xFFBFFFFFFFFFFFBF|- rs2_val == -65<br> - rs1_val == 18014398509481984<br>                                                                                                                                                                  |[0x80000908]:xor a2, a0, a1<br> [0x8000090c]:sd a2, 232(ra)<br>    |
|  63|[0x800043f8]<br>0xFF7FFFFBFFFFFFFF|- rs2_val == -17179869185<br> - rs1_val == 36028797018963968<br>                                                                                                                                                         |[0x80000924]:xor a2, a0, a1<br> [0x80000928]:sd a2, 240(ra)<br>    |
|  64|[0x80004400]<br>0x0100000000040000|- rs2_val == 262144<br> - rs1_val == 72057594037927936<br>                                                                                                                                                               |[0x80000938]:xor a2, a0, a1<br> [0x8000093c]:sd a2, 248(ra)<br>    |
|  65|[0x80004408]<br>0xFDFFFFFFFFFFFFF9|- rs1_val == 144115188075855872<br>                                                                                                                                                                                      |[0x8000094c]:xor a2, a0, a1<br> [0x80000950]:sd a2, 256(ra)<br>    |
|  66|[0x80004410]<br>0x0400400000000000|- rs2_val == 70368744177664<br> - rs1_val == 288230376151711744<br>                                                                                                                                                      |[0x80000964]:xor a2, a0, a1<br> [0x80000968]:sd a2, 264(ra)<br>    |
|  67|[0x80004418]<br>0x0800000020000000|- rs1_val == 576460752303423488<br>                                                                                                                                                                                      |[0x80000978]:xor a2, a0, a1<br> [0x8000097c]:sd a2, 272(ra)<br>    |
|  68|[0x80004420]<br>0x1000000000000006|- rs1_val == 1152921504606846976<br>                                                                                                                                                                                     |[0x8000098c]:xor a2, a0, a1<br> [0x80000990]:sd a2, 280(ra)<br>    |
|  69|[0x80004428]<br>0xDFFFFFFFFDFFFFFF|- rs1_val == 2305843009213693952<br>                                                                                                                                                                                     |[0x800009a4]:xor a2, a0, a1<br> [0x800009a8]:sd a2, 288(ra)<br>    |
|  70|[0x80004430]<br>0xBFFFFFFFFFFFFFFD|- rs2_val == -3<br> - rs1_val == 4611686018427387904<br>                                                                                                                                                                 |[0x800009b8]:xor a2, a0, a1<br> [0x800009bc]:sd a2, 296(ra)<br>    |
|  71|[0x80004438]<br>0x0000000000002001|- rs2_val == -8193<br> - rs1_val == -2<br>                                                                                                                                                                               |[0x800009cc]:xor a2, a0, a1<br> [0x800009d0]:sd a2, 304(ra)<br>    |
|  72|[0x80004440]<br>0xFFFFFFFFFFF7FFFD|- rs2_val == 524288<br> - rs1_val == -3<br>                                                                                                                                                                              |[0x800009dc]:xor a2, a0, a1<br> [0x800009e0]:sd a2, 312(ra)<br>    |
|  73|[0x80004448]<br>0x0000002000000004|- rs2_val == -137438953473<br> - rs1_val == -5<br>                                                                                                                                                                       |[0x800009f4]:xor a2, a0, a1<br> [0x800009f8]:sd a2, 320(ra)<br>    |
|  74|[0x80004450]<br>0x0000000080000008|- rs2_val == -2147483649<br> - rs1_val == -9<br>                                                                                                                                                                         |[0x80000a0c]:xor a2, a0, a1<br> [0x80000a10]:sd a2, 328(ra)<br>    |
|  75|[0x80004458]<br>0x0008000000000010|- rs2_val == -2251799813685249<br> - rs1_val == -17<br>                                                                                                                                                                  |[0x80000a24]:xor a2, a0, a1<br> [0x80000a28]:sd a2, 336(ra)<br>    |
|  76|[0x80004460]<br>0xFFBFEFFFFFFFFFFF|- rs2_val == -18014398509481985<br>                                                                                                                                                                                      |[0x80000a40]:xor a2, a0, a1<br> [0x80000a44]:sd a2, 344(ra)<br>    |
|  77|[0x80004468]<br>0x0080000000100000|- rs2_val == -36028797018963969<br> - rs1_val == -1048577<br>                                                                                                                                                            |[0x80000a5c]:xor a2, a0, a1<br> [0x80000a60]:sd a2, 352(ra)<br>    |
|  78|[0x80004470]<br>0x0100004000000000|- rs2_val == -72057594037927937<br> - rs1_val == -274877906945<br>                                                                                                                                                       |[0x80000a7c]:xor a2, a0, a1<br> [0x80000a80]:sd a2, 360(ra)<br>    |
|  79|[0x80004478]<br>0x0800020000000000|- rs2_val == -576460752303423489<br> - rs1_val == -2199023255553<br>                                                                                                                                                     |[0x80000a9c]:xor a2, a0, a1<br> [0x80000aa0]:sd a2, 368(ra)<br>    |
|  80|[0x80004480]<br>0x2FFFFFFFFFFFFFFF|- rs2_val == -1152921504606846977<br>                                                                                                                                                                                    |[0x80000ab8]:xor a2, a0, a1<br> [0x80000abc]:sd a2, 376(ra)<br>    |
|  81|[0x80004488]<br>0xAAAAAAAAAAAAAEAA|- rs2_val == 6148914691236517205<br> - rs1_val == -1025<br>                                                                                                                                                              |[0x80000ae4]:xor a2, a0, a1<br> [0x80000ae8]:sd a2, 384(ra)<br>    |
|  82|[0x80004490]<br>0xFFFFFFFFFFFFFFB6|- rs1_val == -65<br>                                                                                                                                                                                                     |[0x80000af4]:xor a2, a0, a1<br> [0x80000af8]:sd a2, 392(ra)<br>    |
|  83|[0x80004498]<br>0x0000000000400080|- rs1_val == -129<br>                                                                                                                                                                                                    |[0x80000b08]:xor a2, a0, a1<br> [0x80000b0c]:sd a2, 400(ra)<br>    |
|  84|[0x800044a0]<br>0xFFFFFFFFFFF7FEFF|- rs1_val == -257<br>                                                                                                                                                                                                    |[0x80000b18]:xor a2, a0, a1<br> [0x80000b1c]:sd a2, 408(ra)<br>    |
|  85|[0x800044b0]<br>0x0200000000000800|- rs1_val == -2049<br>                                                                                                                                                                                                   |[0x80000b48]:xor a2, a0, a1<br> [0x80000b4c]:sd a2, 424(ra)<br>    |
|  86|[0x800044b8]<br>0x0000002000001000|- rs1_val == -4097<br>                                                                                                                                                                                                   |[0x80000b64]:xor a2, a0, a1<br> [0x80000b68]:sd a2, 432(ra)<br>    |
|  87|[0x800044c0]<br>0xAAAAAAAAAAAA8AAA|- rs1_val == -8193<br>                                                                                                                                                                                                   |[0x80000b94]:xor a2, a0, a1<br> [0x80000b98]:sd a2, 440(ra)<br>    |
|  88|[0x800044c8]<br>0x0000000000004020|- rs2_val == -33<br> - rs1_val == -16385<br>                                                                                                                                                                             |[0x80000ba8]:xor a2, a0, a1<br> [0x80000bac]:sd a2, 448(ra)<br>    |
|  89|[0x800044d0]<br>0x0000040000008000|- rs2_val == -4398046511105<br> - rs1_val == -32769<br>                                                                                                                                                                  |[0x80000bc4]:xor a2, a0, a1<br> [0x80000bc8]:sd a2, 456(ra)<br>    |
|  90|[0x800044d8]<br>0xFFFFFFFBFFFEFFFF|- rs2_val == 17179869184<br> - rs1_val == -65537<br>                                                                                                                                                                     |[0x80000bdc]:xor a2, a0, a1<br> [0x80000be0]:sd a2, 464(ra)<br>    |
|  91|[0x800044e0]<br>0xFFFFFFFFFFFDFEFF|- rs2_val == 256<br> - rs1_val == -131073<br>                                                                                                                                                                            |[0x80000bf0]:xor a2, a0, a1<br> [0x80000bf4]:sd a2, 472(ra)<br>    |
|  92|[0x800044e8]<br>0x0000000000040005|- rs1_val == -262145<br>                                                                                                                                                                                                 |[0x80000c04]:xor a2, a0, a1<br> [0x80000c08]:sd a2, 480(ra)<br>    |
|  93|[0x800044f0]<br>0xFFFFFFFFFFF7FFDF|- rs1_val == -524289<br>                                                                                                                                                                                                 |[0x80000c18]:xor a2, a0, a1<br> [0x80000c1c]:sd a2, 488(ra)<br>    |
|  94|[0x800044f8]<br>0x0001000000200000|- rs2_val == -281474976710657<br> - rs1_val == -2097153<br>                                                                                                                                                              |[0x80000c34]:xor a2, a0, a1<br> [0x80000c38]:sd a2, 496(ra)<br>    |
|  95|[0x80004500]<br>0xFFFFFFFFFFBDFFFF|- rs1_val == -4194305<br>                                                                                                                                                                                                |[0x80000c48]:xor a2, a0, a1<br> [0x80000c4c]:sd a2, 504(ra)<br>    |
|  96|[0x80004508]<br>0x0000010000800000|- rs2_val == -1099511627777<br> - rs1_val == -8388609<br>                                                                                                                                                                |[0x80000c64]:xor a2, a0, a1<br> [0x80000c68]:sd a2, 512(ra)<br>    |
|  97|[0x80004510]<br>0x0000000009000000|- rs2_val == -134217729<br> - rs1_val == -16777217<br>                                                                                                                                                                   |[0x80000c7c]:xor a2, a0, a1<br> [0x80000c80]:sd a2, 520(ra)<br>    |
|  98|[0x80004518]<br>0x0200000002000000|- rs1_val == -33554433<br>                                                                                                                                                                                               |[0x80000c98]:xor a2, a0, a1<br> [0x80000c9c]:sd a2, 528(ra)<br>    |
|  99|[0x80004520]<br>0xFFFFFFFFFBFF7FFF|- rs2_val == 32768<br> - rs1_val == -67108865<br>                                                                                                                                                                        |[0x80000cac]:xor a2, a0, a1<br> [0x80000cb0]:sd a2, 536(ra)<br>    |
| 100|[0x80004528]<br>0xFFFFFFFFF7FFFFF9|- rs1_val == -134217729<br>                                                                                                                                                                                              |[0x80000cc0]:xor a2, a0, a1<br> [0x80000cc4]:sd a2, 544(ra)<br>    |
| 101|[0x80004530]<br>0xFFFFFFFFEFFFEFFF|- rs2_val == 4096<br> - rs1_val == -268435457<br>                                                                                                                                                                        |[0x80000cd4]:xor a2, a0, a1<br> [0x80000cd8]:sd a2, 552(ra)<br>    |
| 102|[0x80004538]<br>0xFFFFFFFFDFFDFFFF|- rs1_val == -536870913<br>                                                                                                                                                                                              |[0x80000ce8]:xor a2, a0, a1<br> [0x80000cec]:sd a2, 560(ra)<br>    |
| 103|[0x80004540]<br>0x0000000040000002|- rs1_val == -1073741825<br>                                                                                                                                                                                             |[0x80000cfc]:xor a2, a0, a1<br> [0x80000d00]:sd a2, 568(ra)<br>    |
| 104|[0x80004548]<br>0x0000000080080000|- rs1_val == -2147483649<br>                                                                                                                                                                                             |[0x80000d18]:xor a2, a0, a1<br> [0x80000d1c]:sd a2, 576(ra)<br>    |
| 105|[0x80004550]<br>0x0000000100000005|- rs1_val == -4294967297<br>                                                                                                                                                                                             |[0x80000d30]:xor a2, a0, a1<br> [0x80000d34]:sd a2, 584(ra)<br>    |
| 106|[0x80004558]<br>0x0000000200000008|- rs2_val == -9<br> - rs1_val == -8589934593<br>                                                                                                                                                                         |[0x80000d48]:xor a2, a0, a1<br> [0x80000d4c]:sd a2, 592(ra)<br>    |
| 107|[0x80004560]<br>0x0000000400000009|- rs1_val == -17179869185<br>                                                                                                                                                                                            |[0x80000d60]:xor a2, a0, a1<br> [0x80000d64]:sd a2, 600(ra)<br>    |
| 108|[0x80004568]<br>0x0000000C00000000|- rs1_val == -34359738369<br>                                                                                                                                                                                            |[0x80000d80]:xor a2, a0, a1<br> [0x80000d84]:sd a2, 608(ra)<br>    |
| 109|[0x80004570]<br>0xFFFFFFEFFDFFFFFF|- rs1_val == -68719476737<br>                                                                                                                                                                                            |[0x80000d98]:xor a2, a0, a1<br> [0x80000d9c]:sd a2, 616(ra)<br>    |
| 110|[0x80004578]<br>0xFFFBFFDFFFFFFFFF|- rs1_val == -137438953473<br>                                                                                                                                                                                           |[0x80000db4]:xor a2, a0, a1<br> [0x80000db8]:sd a2, 624(ra)<br>    |
| 111|[0x80004580]<br>0x0000008000000000|- rs1_val == -549755813889<br>                                                                                                                                                                                           |[0x80000dcc]:xor a2, a0, a1<br> [0x80000dd0]:sd a2, 632(ra)<br>    |
| 112|[0x80004588]<br>0x0000010000004000|- rs2_val == -16385<br> - rs1_val == -1099511627777<br>                                                                                                                                                                  |[0x80000de8]:xor a2, a0, a1<br> [0x80000dec]:sd a2, 640(ra)<br>    |
| 113|[0x80004590]<br>0x0002040000000000|- rs2_val == -562949953421313<br> - rs1_val == -4398046511105<br>                                                                                                                                                        |[0x80000e08]:xor a2, a0, a1<br> [0x80000e0c]:sd a2, 648(ra)<br>    |
| 114|[0x80004598]<br>0xFFFFF7FFFFFBFFFF|- rs1_val == -8796093022209<br>                                                                                                                                                                                          |[0x80000e20]:xor a2, a0, a1<br> [0x80000e24]:sd a2, 656(ra)<br>    |
| 115|[0x800045a0]<br>0x0000100000000400|- rs2_val == -1025<br> - rs1_val == -17592186044417<br>                                                                                                                                                                  |[0x80000e38]:xor a2, a0, a1<br> [0x80000e3c]:sd a2, 664(ra)<br>    |
| 116|[0x800045a8]<br>0xFFFFDFFFFFFFFFFA|- rs1_val == -35184372088833<br>                                                                                                                                                                                         |[0x80000e50]:xor a2, a0, a1<br> [0x80000e54]:sd a2, 672(ra)<br>    |
| 117|[0x800045b0]<br>0x0000400002000000|- rs1_val == -70368744177665<br>                                                                                                                                                                                         |[0x80000e6c]:xor a2, a0, a1<br> [0x80000e70]:sd a2, 680(ra)<br>    |
| 118|[0x800045b8]<br>0x0000800800000000|- rs2_val == -34359738369<br> - rs1_val == -140737488355329<br>                                                                                                                                                          |[0x80000e8c]:xor a2, a0, a1<br> [0x80000e90]:sd a2, 688(ra)<br>    |
| 119|[0x800045c0]<br>0xFFFEFFFFFFFF7FFF|- rs1_val == -281474976710657<br>                                                                                                                                                                                        |[0x80000ea4]:xor a2, a0, a1<br> [0x80000ea8]:sd a2, 696(ra)<br>    |
| 120|[0x800045c8]<br>0x0008000000020000|- rs1_val == -2251799813685249<br>                                                                                                                                                                                       |[0x80000ec0]:xor a2, a0, a1<br> [0x80000ec4]:sd a2, 704(ra)<br>    |
| 121|[0x800045d8]<br>0xFFDFFEFFFFFFFFFF|- rs2_val == 1099511627776<br> - rs1_val == -9007199254740993<br>                                                                                                                                                        |[0x80000ef8]:xor a2, a0, a1<br> [0x80000efc]:sd a2, 720(ra)<br>    |
| 122|[0x800045e0]<br>0x0040000000000006|- rs1_val == -18014398509481985<br>                                                                                                                                                                                      |[0x80000f10]:xor a2, a0, a1<br> [0x80000f14]:sd a2, 728(ra)<br>    |
| 123|[0x800045e8]<br>0x0100040000000000|- rs1_val == -72057594037927937<br>                                                                                                                                                                                      |[0x80000f30]:xor a2, a0, a1<br> [0x80000f34]:sd a2, 736(ra)<br>    |
| 124|[0x800045f0]<br>0x0200000002000000|- rs1_val == -144115188075855873<br>                                                                                                                                                                                     |[0x80000f4c]:xor a2, a0, a1<br> [0x80000f50]:sd a2, 744(ra)<br>    |
| 125|[0x800045f8]<br>0xFBFEFFFFFFFFFFFF|- rs2_val == 281474976710656<br> - rs1_val == -288230376151711745<br>                                                                                                                                                    |[0x80000f68]:xor a2, a0, a1<br> [0x80000f6c]:sd a2, 752(ra)<br>    |
| 126|[0x80004600]<br>0x0800000000000100|- rs2_val == -257<br> - rs1_val == -576460752303423489<br>                                                                                                                                                               |[0x80000f80]:xor a2, a0, a1<br> [0x80000f84]:sd a2, 760(ra)<br>    |
| 127|[0x80004608]<br>0xEFFFFFFFF7FFFFFF|- rs1_val == -1152921504606846977<br>                                                                                                                                                                                    |[0x80000f98]:xor a2, a0, a1<br> [0x80000f9c]:sd a2, 768(ra)<br>    |
| 128|[0x80004610]<br>0xCFFFFFFFFFFFFFFF|- rs2_val == 1152921504606846976<br> - rs1_val == -2305843009213693953<br>                                                                                                                                               |[0x80000fb4]:xor a2, a0, a1<br> [0x80000fb8]:sd a2, 776(ra)<br>    |
| 129|[0x80004618]<br>0xAAAAA8AAAAAAAAAA|- rs1_val == -6148914691236517206<br>                                                                                                                                                                                    |[0x80000fe4]:xor a2, a0, a1<br> [0x80000fe8]:sd a2, 784(ra)<br>    |
| 130|[0x80004620]<br>0xBFFFFFFFFFFFFFFB|- rs2_val == 4<br> - rs1_val == -4611686018427387905<br>                                                                                                                                                                 |[0x80000ffc]:xor a2, a0, a1<br> [0x80001000]:sd a2, 792(ra)<br>    |
| 131|[0x80004628]<br>0xF7FFFFFFFFFFFFBF|- rs2_val == 64<br>                                                                                                                                                                                                      |[0x80001014]:xor a2, a0, a1<br> [0x80001018]:sd a2, 800(ra)<br>    |
| 132|[0x80004630]<br>0x00000000000000A0|- rs2_val == 128<br>                                                                                                                                                                                                     |[0x80001024]:xor a2, a0, a1<br> [0x80001028]:sd a2, 808(ra)<br>    |
| 133|[0x80004638]<br>0x0000000000800200|- rs2_val == 512<br>                                                                                                                                                                                                     |[0x80001034]:xor a2, a0, a1<br> [0x80001038]:sd a2, 816(ra)<br>    |
| 134|[0x80004640]<br>0xFEFFFFFFFFFFDFFF|- rs2_val == 8192<br>                                                                                                                                                                                                    |[0x8000104c]:xor a2, a0, a1<br> [0x80001050]:sd a2, 824(ra)<br>    |
| 135|[0x80004648]<br>0xF7FFFFFFFFFEFFFF|- rs2_val == 65536<br>                                                                                                                                                                                                   |[0x80001064]:xor a2, a0, a1<br> [0x80001068]:sd a2, 832(ra)<br>    |
| 136|[0x80004650]<br>0xFFFFFFFFFFEF7FFF|- rs2_val == 1048576<br>                                                                                                                                                                                                 |[0x80001078]:xor a2, a0, a1<br> [0x8000107c]:sd a2, 840(ra)<br>    |
| 137|[0x80004658]<br>0x0040000000800000|- rs2_val == 8388608<br>                                                                                                                                                                                                 |[0x8000108c]:xor a2, a0, a1<br> [0x80001090]:sd a2, 848(ra)<br>    |
| 138|[0x80004660]<br>0xFFFFFF7FFEFFFFFF|- rs2_val == 16777216<br>                                                                                                                                                                                                |[0x800010a4]:xor a2, a0, a1<br> [0x800010a8]:sd a2, 856(ra)<br>    |
| 139|[0x80004668]<br>0x0000000004000400|- rs2_val == 67108864<br>                                                                                                                                                                                                |[0x800010b4]:xor a2, a0, a1<br> [0x800010b8]:sd a2, 864(ra)<br>    |
| 140|[0x80004670]<br>0x0000000090000000|- rs2_val == 268435456<br>                                                                                                                                                                                               |[0x800010c8]:xor a2, a0, a1<br> [0x800010cc]:sd a2, 872(ra)<br>    |
| 141|[0x80004678]<br>0xFFFFFEFFBFFFFFFF|- rs2_val == 1073741824<br>                                                                                                                                                                                              |[0x800010e0]:xor a2, a0, a1<br> [0x800010e4]:sd a2, 880(ra)<br>    |
| 142|[0x80004680]<br>0x0000000080100000|- rs2_val == 2147483648<br>                                                                                                                                                                                              |[0x800010f4]:xor a2, a0, a1<br> [0x800010f8]:sd a2, 888(ra)<br>    |
| 143|[0x80004688]<br>0x0000000100000100|- rs2_val == 4294967296<br>                                                                                                                                                                                              |[0x80001108]:xor a2, a0, a1<br> [0x8000110c]:sd a2, 896(ra)<br>    |
| 144|[0x80004690]<br>0xFFFFFFFDF7FFFFFF|- rs2_val == 8589934592<br>                                                                                                                                                                                              |[0x80001120]:xor a2, a0, a1<br> [0x80001124]:sd a2, 904(ra)<br>    |
| 145|[0x80004698]<br>0x0000000800000008|- rs2_val == 34359738368<br>                                                                                                                                                                                             |[0x80001134]:xor a2, a0, a1<br> [0x80001138]:sd a2, 912(ra)<br>    |
| 146|[0x800046a0]<br>0xFF7FFFFFBFFFFFFF|- rs2_val == 36028797018963968<br>                                                                                                                                                                                       |[0x8000114c]:xor a2, a0, a1<br> [0x80001150]:sd a2, 920(ra)<br>    |
| 147|[0x800046a8]<br>0xF7FDFFFFFFFFFFFF|- rs2_val == 562949953421312<br>                                                                                                                                                                                         |[0x80001168]:xor a2, a0, a1<br> [0x8000116c]:sd a2, 928(ra)<br>    |
| 148|[0x800046b0]<br>0xFEFFFFBFFFFFFFFF|- rs2_val == 72057594037927936<br>                                                                                                                                                                                       |[0x80001184]:xor a2, a0, a1<br> [0x80001188]:sd a2, 936(ra)<br>    |
| 149|[0x800046b8]<br>0x0800000000000001|- rs2_val == 576460752303423488<br>                                                                                                                                                                                      |[0x80001198]:xor a2, a0, a1<br> [0x8000119c]:sd a2, 944(ra)<br>    |
| 150|[0x800046c0]<br>0x4000000000000004|- rs2_val == 4611686018427387904<br>                                                                                                                                                                                     |[0x800011ac]:xor a2, a0, a1<br> [0x800011b0]:sd a2, 952(ra)<br>    |
| 151|[0x800046c8]<br>0x0000000000000021|- rs2_val == -2<br>                                                                                                                                                                                                      |[0x800011bc]:xor a2, a0, a1<br> [0x800011c0]:sd a2, 960(ra)<br>    |
| 152|[0x800046d0]<br>0xDFFFFFFFFFFFFF7F|- rs2_val == -129<br>                                                                                                                                                                                                    |[0x800011d0]:xor a2, a0, a1<br> [0x800011d4]:sd a2, 968(ra)<br>    |
| 153|[0x800046d8]<br>0x0000000000001004|- rs2_val == -4097<br>                                                                                                                                                                                                   |[0x800011e4]:xor a2, a0, a1<br> [0x800011e8]:sd a2, 976(ra)<br>    |
| 154|[0x800046e0]<br>0xFFBFFFFFFFEFFFFF|- rs2_val == -1048577<br>                                                                                                                                                                                                |[0x800011fc]:xor a2, a0, a1<br> [0x80001200]:sd a2, 984(ra)<br>    |
| 155|[0x800046e8]<br>0x0000000000200002|- rs2_val == -2097153<br>                                                                                                                                                                                                |[0x80001210]:xor a2, a0, a1<br> [0x80001214]:sd a2, 992(ra)<br>    |
| 156|[0x800046f0]<br>0xFFFFFBFFFF7FFFFF|- rs2_val == -8388609<br>                                                                                                                                                                                                |[0x80001228]:xor a2, a0, a1<br> [0x8000122c]:sd a2, 1000(ra)<br>   |
| 157|[0x800046f8]<br>0x0000080000400000|- rs2_val == 8796093022208<br>                                                                                                                                                                                           |[0x8000123c]:xor a2, a0, a1<br> [0x80001240]:sd a2, 1008(ra)<br>   |
| 158|[0x80004700]<br>0xFFFFFFFFFEDFFFFF|- rs2_val == -16777217<br>                                                                                                                                                                                               |[0x80001250]:xor a2, a0, a1<br> [0x80001254]:sd a2, 1016(ra)<br>   |
| 159|[0x80004708]<br>0xFFFFBFFFFBFFFFFF|- rs2_val == -67108865<br>                                                                                                                                                                                               |[0x80001268]:xor a2, a0, a1<br> [0x8000126c]:sd a2, 1024(ra)<br>   |
| 160|[0x80004710]<br>0xFFFBFFFFEFFFFFFF|- rs2_val == -268435457<br>                                                                                                                                                                                              |[0x80001280]:xor a2, a0, a1<br> [0x80001284]:sd a2, 1032(ra)<br>   |
| 161|[0x80004718]<br>0xFFFFEFFFEFFFFFFF|- rs2_val == 17592186044416<br>                                                                                                                                                                                          |[0x80001298]:xor a2, a0, a1<br> [0x8000129c]:sd a2, 1040(ra)<br>   |
| 162|[0x80004720]<br>0x4000000100000000|- rs2_val == -4294967297<br>                                                                                                                                                                                             |[0x800012b8]:xor a2, a0, a1<br> [0x800012bc]:sd a2, 1048(ra)<br>   |
| 163|[0x80004728]<br>0x0000001400000000|- rs2_val == 68719476736<br>                                                                                                                                                                                             |[0x800012d0]:xor a2, a0, a1<br> [0x800012d4]:sd a2, 1056(ra)<br>   |
| 164|[0x80004730]<br>0x0000009000000000|- rs2_val == -68719476737<br>                                                                                                                                                                                            |[0x800012f0]:xor a2, a0, a1<br> [0x800012f4]:sd a2, 1064(ra)<br>   |
| 165|[0x80004738]<br>0x0000002400000000|- rs2_val == 137438953472<br>                                                                                                                                                                                            |[0x80001308]:xor a2, a0, a1<br> [0x8000130c]:sd a2, 1072(ra)<br>   |
| 166|[0x80004740]<br>0x0000004000020000|- rs2_val == -274877906945<br>                                                                                                                                                                                           |[0x80001324]:xor a2, a0, a1<br> [0x80001328]:sd a2, 1080(ra)<br>   |
| 167|[0x80004748]<br>0xFFFFFF7FFFFFEFFF|- rs2_val == 549755813888<br>                                                                                                                                                                                            |[0x8000133c]:xor a2, a0, a1<br> [0x80001340]:sd a2, 1088(ra)<br>   |
| 168|[0x80004750]<br>0xFFBFFF7FFFFFFFFF|- rs2_val == -549755813889<br>                                                                                                                                                                                           |[0x80001358]:xor a2, a0, a1<br> [0x8000135c]:sd a2, 1096(ra)<br>   |
| 169|[0x80004758]<br>0x0400020000000000|- rs2_val == -2199023255553<br>                                                                                                                                                                                          |[0x80001378]:xor a2, a0, a1<br> [0x8000137c]:sd a2, 1104(ra)<br>   |
| 170|[0x80004760]<br>0xFFFFFBFFFFFFFFFA|- rs2_val == 4398046511104<br>                                                                                                                                                                                           |[0x8000138c]:xor a2, a0, a1<br> [0x80001390]:sd a2, 1112(ra)<br>   |
| 171|[0x80004768]<br>0xFFFFF7FFFFFFFFEF|- rs2_val == -8796093022209<br>                                                                                                                                                                                          |[0x800013a4]:xor a2, a0, a1<br> [0x800013a8]:sd a2, 1120(ra)<br>   |
| 172|[0x80004770]<br>0xFFFFEFFFFFFFFFF6|- rs2_val == -17592186044417<br>                                                                                                                                                                                         |[0x800013bc]:xor a2, a0, a1<br> [0x800013c0]:sd a2, 1128(ra)<br>   |
| 173|[0x80004778]<br>0x0004200000000000|- rs2_val == -35184372088833<br> - rs1_val == -1125899906842625<br>                                                                                                                                                      |[0x800013dc]:xor a2, a0, a1<br> [0x800013e0]:sd a2, 1136(ra)<br>   |
| 174|[0x80004780]<br>0xFBFFBFFFFFFFFFFF|- rs2_val == -70368744177665<br>                                                                                                                                                                                         |[0x800013f8]:xor a2, a0, a1<br> [0x800013fc]:sd a2, 1144(ra)<br>   |
| 175|[0x80004788]<br>0x0002000000000000|- rs1_val == -562949953421313<br>                                                                                                                                                                                        |[0x80001410]:xor a2, a0, a1<br> [0x80001414]:sd a2, 1152(ra)<br>   |
| 176|[0x80004790]<br>0x7FEFFFFFFFFFFFFF|- rs1_val == (-2**(xlen-1))<br> - rs1_val == -9223372036854775808<br>                                                                                                                                                    |[0x8000142c]:xor a2, a0, a1<br> [0x80001430]:sd a2, 1160(ra)<br>   |
| 177|[0x80004798]<br>0x8000000000000200|- rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 9223372036854775807<br>                                                                                                                                                    |[0x80001444]:xor a2, a0, a1<br> [0x80001448]:sd a2, 1168(ra)<br>   |
