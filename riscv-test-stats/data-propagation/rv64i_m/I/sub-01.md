
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001500')]      |
| SIG_REGION                | [('0x80004208', '0x800047d8', '186 dwords')]      |
| COV_LABELS                | sub      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/sub-01.S/sub-01.S    |
| Total Number of coverpoints| 374     |
| Total Coverpoints Hit     | 374      |
| Total Signature Updates   | 186      |
| STAT1                     | 182      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007f8]:sub a2, a0, a1
      [0x800007fc]:sd a2, 248(t0)
 -- Signature Address: 0x80004390 Data: 0x000003FFFFFFFFFB
 -- Redundant Coverpoints hit by the op
      - opcode : sub
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs1_val == 4398046511104




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800014d0]:sub a2, a0, a1
      [0x800014d4]:sd a2, 1320(t0)
 -- Signature Address: 0x800047c0 Data: 0x2AAAAAAAAAAAAAAA
 -- Redundant Coverpoints hit by the op
      - opcode : sub
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs1_val == (2**(xlen-1)-1)
      - rs2_val == 6148914691236517205
      - rs1_val == 9223372036854775807




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800014e0]:sub a2, a0, a1
      [0x800014e4]:sd a2, 1328(t0)
 -- Signature Address: 0x800047c8 Data: 0xFFFFFFFFF0000400
 -- Redundant Coverpoints hit by the op
      - opcode : sub
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs2_val == 268435456
      - rs1_val == 1024




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800014f4]:sub a2, a0, a1
      [0x800014f8]:sd a2, 1336(t0)
 -- Signature Address: 0x800047d0 Data: 0x0000000020040001
 -- Redundant Coverpoints hit by the op
      - opcode : sub
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == -536870913
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

|s.no|            signature             |                                                                                                   coverpoints                                                                                                    |                               code                               |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------|
|   1|[0x80004208]<br>0x0000000000000000|- opcode : sub<br> - rs1 : x28<br> - rs2 : x28<br> - rd : x22<br> - rs1 == rs2 != rd<br> - rs1_val > 0 and rs2_val > 0<br> - rs1_val == rs2_val<br> - rs2_val == 4398046511104<br> - rs1_val == 4398046511104<br> |[0x800003a8]:sub s6, t3, t3<br> [0x800003ac]:sd s6, 0(s2)<br>     |
|   2|[0x80004210]<br>0x0004000000000001|- rs1 : x22<br> - rs2 : x4<br> - rd : x16<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val != rs2_val<br> - rs1_val == 0<br> - rs2_val == -1125899906842625<br>                                        |[0x800003c0]:sub a6, s6, tp<br> [0x800003c4]:sd a6, 8(s2)<br>     |
|   3|[0x80004218]<br>0x0000000000000000|- rs1 : x29<br> - rs2 : x29<br> - rd : x29<br> - rs1 == rs2 == rd<br> - rs2_val == 6148914691236517205<br> - rs1_val == 6148914691236517205<br>                                                                   |[0x800003f4]:sub t4, t4, t4<br> [0x800003f8]:sd t4, 16(s2)<br>    |
|   4|[0x80004220]<br>0xFFFFFFFFFFFFFFF1|- rs1 : x20<br> - rs2 : x27<br> - rd : x20<br> - rs1 == rd != rs2<br> - rs1_val == 1<br> - rs2_val == 16<br>                                                                                                      |[0x80000404]:sub s4, s4, s11<br> [0x80000408]:sd s4, 24(s2)<br>   |
|   5|[0x80004228]<br>0x7FFFFFFF7FFFFFFF|- rs1 : x8<br> - rs2 : x30<br> - rd : x30<br> - rs2 == rd != rs1<br> - rs1_val < 0 and rs2_val < 0<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -9223372036854775808<br> - rs1_val == -2147483649<br>         |[0x80000420]:sub t5, fp, t5<br> [0x80000424]:sd t5, 32(s2)<br>    |
|   6|[0x80004230]<br>0xFFFFFFFFFFFFBFFF|- rs1 : x15<br> - rs2 : x9<br> - rd : x17<br> - rs2_val == 0<br> - rs1_val == -16385<br>                                                                                                                          |[0x80000434]:sub a7, a5, s1<br> [0x80000438]:sd a7, 40(s2)<br>    |
|   7|[0x80004238]<br>0x8000000000000201|- rs1 : x19<br> - rs2 : x11<br> - rd : x26<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 9223372036854775807<br> - rs1_val == 512<br>                                                                         |[0x8000044c]:sub s10, s3, a1<br> [0x80000450]:sd s10, 48(s2)<br>  |
|   8|[0x80004240]<br>0x00000007FFFFFFFF|- rs1 : x5<br> - rs2 : x26<br> - rd : x12<br> - rs2_val == 1<br> - rs1_val == 34359738368<br>                                                                                                                     |[0x80000460]:sub a2, t0, s10<br> [0x80000464]:sd a2, 56(s2)<br>   |
|   9|[0x80004248]<br>0x0000400000000001|- rs1 : x0<br> - rs2 : x20<br> - rd : x2<br> - rs2_val == -70368744177665<br>                                                                                                                                     |[0x80000478]:sub sp, zero, s4<br> [0x8000047c]:sd sp, 64(s2)<br>  |
|  10|[0x80004250]<br>0x0000000000000000|- rs1 : x1<br> - rs2 : x24<br> - rd : x6<br> - rs2_val == 72057594037927936<br> - rs1_val == 72057594037927936<br>                                                                                                |[0x80000490]:sub t1, ra, s8<br> [0x80000494]:sd t1, 72(s2)<br>    |
|  11|[0x80004258]<br>0xFFFFFF0000000002|- rs1 : x11<br> - rs2 : x21<br> - rd : x5<br> - rs2_val == 1099511627776<br> - rs1_val == 2<br>                                                                                                                   |[0x800004a4]:sub t0, a1, s5<br> [0x800004a8]:sd t0, 80(s2)<br>    |
|  12|[0x80004260]<br>0x0010000000000005|- rs1 : x26<br> - rs2 : x15<br> - rd : x11<br> - rs1_val > 0 and rs2_val < 0<br> - rs2_val == -4503599627370497<br> - rs1_val == 4<br>                                                                            |[0x800004bc]:sub a1, s10, a5<br> [0x800004c0]:sd a1, 88(s2)<br>   |
|  13|[0x80004268]<br>0x0000000000040009|- rs1 : x10<br> - rs2 : x31<br> - rd : x15<br> - rs2_val == -262145<br> - rs1_val == 8<br>                                                                                                                        |[0x800004d0]:sub a5, a0, t6<br> [0x800004d4]:sd a5, 96(s2)<br>    |
|  14|[0x80004270]<br>0x0000000040000011|- rs1 : x16<br> - rs2 : x2<br> - rd : x3<br> - rs2_val == -1073741825<br> - rs1_val == 16<br>                                                                                                                     |[0x800004e4]:sub gp, a6, sp<br> [0x800004e8]:sd gp, 104(s2)<br>   |
|  15|[0x80004278]<br>0x0008000000000021|- rs1 : x24<br> - rs2 : x8<br> - rd : x27<br> - rs2_val == -2251799813685249<br> - rs1_val == 32<br>                                                                                                              |[0x800004fc]:sub s11, s8, fp<br> [0x80000500]:sd s11, 112(s2)<br> |
|  16|[0x80004280]<br>0xFFFFFFFFC0000040|- rs1 : x14<br> - rs2 : x5<br> - rd : x13<br> - rs2_val == 1073741824<br> - rs1_val == 64<br>                                                                                                                     |[0x8000050c]:sub a3, a4, t0<br> [0x80000510]:sd a3, 120(s2)<br>   |
|  17|[0x80004288]<br>0xFFFFF80000000080|- rs1 : x4<br> - rs2 : x22<br> - rd : x31<br> - rs2_val == 8796093022208<br> - rs1_val == 128<br>                                                                                                                 |[0x80000520]:sub t6, tp, s6<br> [0x80000524]:sd t6, 128(s2)<br>   |
|  18|[0x80004290]<br>0xFFFFFFFFFFF80100|- rs1 : x21<br> - rs2 : x14<br> - rd : x7<br> - rs2_val == 524288<br> - rs1_val == 256<br>                                                                                                                        |[0x80000530]:sub t2, s5, a4<br> [0x80000534]:sd t2, 136(s2)<br>   |
|  19|[0x80004298]<br>0x0000000000000000|- rs1 : x7<br> - rs2 : x17<br> - rd : x0<br> - rs2_val == 268435456<br> - rs1_val == 1024<br>                                                                                                                     |[0x80000548]:sub zero, t2, a7<br> [0x8000054c]:sd zero, 0(t0)<br> |
|  20|[0x800042a0]<br>0xFFFFFFFFC0000800|- rs1 : x31<br> - rs2 : x23<br> - rd : x8<br> - rs1_val == 2048<br>                                                                                                                                               |[0x8000055c]:sub fp, t6, s7<br> [0x80000560]:sd fp, 8(t0)<br>     |
|  21|[0x800042a8]<br>0x0000000400001001|- rs1 : x2<br> - rs2 : x1<br> - rd : x18<br> - rs2_val == -17179869185<br> - rs1_val == 4096<br>                                                                                                                  |[0x80000574]:sub s2, sp, ra<br> [0x80000578]:sd s2, 16(t0)<br>    |
|  22|[0x800042b0]<br>0x0000100000002001|- rs1 : x25<br> - rs2 : x13<br> - rd : x24<br> - rs2_val == -17592186044417<br> - rs1_val == 8192<br>                                                                                                             |[0x8000058c]:sub s8, s9, a3<br> [0x80000590]:sd s8, 24(t0)<br>    |
|  23|[0x800042b8]<br>0x0000040000004001|- rs1 : x18<br> - rs2 : x7<br> - rd : x9<br> - rs2_val == -4398046511105<br> - rs1_val == 16384<br>                                                                                                               |[0x800005a4]:sub s1, s2, t2<br> [0x800005a8]:sd s1, 32(t0)<br>    |
|  24|[0x800042c0]<br>0xFFFFFFFC00008000|- rs1 : x23<br> - rs2 : x19<br> - rd : x1<br> - rs2_val == 17179869184<br> - rs1_val == 32768<br>                                                                                                                 |[0x800005b8]:sub ra, s7, s3<br> [0x800005bc]:sd ra, 40(t0)<br>    |
|  25|[0x800042c8]<br>0x0000000000011001|- rs1 : x9<br> - rs2 : x16<br> - rd : x19<br> - rs2_val == -4097<br> - rs1_val == 65536<br>                                                                                                                       |[0x800005cc]:sub s3, s1, a6<br> [0x800005d0]:sd s3, 48(t0)<br>    |
|  26|[0x800042d0]<br>0x000000000002000A|- rs1 : x6<br> - rs2 : x12<br> - rd : x10<br> - rs1_val == 131072<br>                                                                                                                                             |[0x800005dc]:sub a0, t1, a2<br> [0x800005e0]:sd a0, 56(t0)<br>    |
|  27|[0x800042d8]<br>0x0000000000040000|- rs1 : x30<br> - rs2 : x0<br> - rd : x14<br> - rs1_val == 262144<br>                                                                                                                                             |[0x800005f0]:sub a4, t5, zero<br> [0x800005f4]:sd a4, 64(t0)<br>  |
|  28|[0x800042e0]<br>0xFF80000000080000|- rs1 : x12<br> - rs2 : x18<br> - rd : x21<br> - rs2_val == 36028797018963968<br> - rs1_val == 524288<br>                                                                                                         |[0x80000604]:sub s5, a2, s2<br> [0x80000608]:sd s5, 72(t0)<br>    |
|  29|[0x800042e8]<br>0x0000000400100001|- rs1 : x27<br> - rs2 : x3<br> - rd : x28<br> - rs1_val == 1048576<br>                                                                                                                                            |[0x8000061c]:sub t3, s11, gp<br> [0x80000620]:sd t3, 80(t0)<br>   |
|  30|[0x800042f0]<br>0xFFFFE00000200000|- rs1 : x17<br> - rs2 : x6<br> - rd : x4<br> - rs2_val == 35184372088832<br> - rs1_val == 2097152<br>                                                                                                             |[0x80000630]:sub tp, a7, t1<br> [0x80000634]:sd tp, 88(t0)<br>    |
|  31|[0x800042f8]<br>0xFE00000000400000|- rs1 : x3<br> - rs2 : x10<br> - rd : x23<br> - rs2_val == 144115188075855872<br> - rs1_val == 4194304<br>                                                                                                        |[0x80000644]:sub s7, gp, a0<br> [0x80000648]:sd s7, 96(t0)<br>    |
|  32|[0x80004300]<br>0x0000000000820001|- rs1 : x13<br> - rs2_val == -131073<br> - rs1_val == 8388608<br>                                                                                                                                                 |[0x80000658]:sub fp, a3, a5<br> [0x8000065c]:sd fp, 104(t0)<br>   |
|  33|[0x80004308]<br>0x0000020001000001|- rs2 : x25<br> - rs2_val == -2199023255553<br> - rs1_val == 16777216<br>                                                                                                                                         |[0x80000670]:sub s4, tp, s9<br> [0x80000674]:sd s4, 112(t0)<br>   |
|  34|[0x80004310]<br>0x0000008002000001|- rd : x25<br> - rs2_val == -549755813889<br> - rs1_val == 33554432<br>                                                                                                                                           |[0x80000688]:sub s9, fp, t2<br> [0x8000068c]:sd s9, 120(t0)<br>   |
|  35|[0x80004318]<br>0x0000020004000001|- rs1_val == 67108864<br>                                                                                                                                                                                         |[0x800006a0]:sub a2, a0, a1<br> [0x800006a4]:sd a2, 128(t0)<br>   |
|  36|[0x80004320]<br>0x0000000008080001|- rs2_val == -524289<br> - rs1_val == 134217728<br>                                                                                                                                                               |[0x800006b4]:sub a2, a0, a1<br> [0x800006b8]:sd a2, 136(t0)<br>   |
|  37|[0x80004328]<br>0xF000000010000000|- rs2_val == 1152921504606846976<br> - rs1_val == 268435456<br>                                                                                                                                                   |[0x800006c8]:sub a2, a0, a1<br> [0x800006cc]:sd a2, 144(t0)<br>   |
|  38|[0x80004330]<br>0xFFFFFFFF20000000|- rs2_val == 4294967296<br> - rs1_val == 536870912<br>                                                                                                                                                            |[0x800006dc]:sub a2, a0, a1<br> [0x800006e0]:sd a2, 152(t0)<br>   |
|  39|[0x80004338]<br>0xFFE0000040000000|- rs2_val == 9007199254740992<br> - rs1_val == 1073741824<br>                                                                                                                                                     |[0x800006f0]:sub a2, a0, a1<br> [0x800006f4]:sd a2, 160(t0)<br>   |
|  40|[0x80004340]<br>0x0000000070000000|- rs1_val == 2147483648<br>                                                                                                                                                                                       |[0x80000704]:sub a2, a0, a1<br> [0x80000708]:sd a2, 168(t0)<br>   |
|  41|[0x80004348]<br>0x4000000100000001|- rs2_val == -4611686018427387905<br> - rs1_val == 4294967296<br>                                                                                                                                                 |[0x80000720]:sub a2, a0, a1<br> [0x80000724]:sd a2, 176(t0)<br>   |
|  42|[0x80004350]<br>0x0000000200001001|- rs1_val == 8589934592<br>                                                                                                                                                                                       |[0x80000738]:sub a2, a0, a1<br> [0x8000073c]:sd a2, 184(t0)<br>   |
|  43|[0x80004358]<br>0xFFFFF00400000000|- rs2_val == 17592186044416<br> - rs1_val == 17179869184<br>                                                                                                                                                      |[0x80000750]:sub a2, a0, a1<br> [0x80000754]:sd a2, 192(t0)<br>   |
|  44|[0x80004360]<br>0x0000011000000001|- rs2_val == -1099511627777<br> - rs1_val == 68719476736<br>                                                                                                                                                      |[0x8000076c]:sub a2, a0, a1<br> [0x80000770]:sd a2, 200(t0)<br>   |
|  45|[0x80004368]<br>0x1000002000000001|- rs2_val == -1152921504606846977<br> - rs1_val == 137438953472<br>                                                                                                                                               |[0x80000788]:sub a2, a0, a1<br> [0x8000078c]:sd a2, 208(t0)<br>   |
|  46|[0x80004370]<br>0x000000400000000A|- rs1_val == 274877906944<br>                                                                                                                                                                                     |[0x8000079c]:sub a2, a0, a1<br> [0x800007a0]:sd a2, 216(t0)<br>   |
|  47|[0x80004378]<br>0x0000007FFE000000|- rs2_val == 33554432<br> - rs1_val == 549755813888<br>                                                                                                                                                           |[0x800007b0]:sub a2, a0, a1<br> [0x800007b4]:sd a2, 224(t0)<br>   |
|  48|[0x80004380]<br>0x0020010000000001|- rs2_val == -9007199254740993<br> - rs1_val == 1099511627776<br>                                                                                                                                                 |[0x800007cc]:sub a2, a0, a1<br> [0x800007d0]:sd a2, 232(t0)<br>   |
|  49|[0x80004388]<br>0xF800020000000000|- rs2_val == 576460752303423488<br> - rs1_val == 2199023255552<br>                                                                                                                                                |[0x800007e4]:sub a2, a0, a1<br> [0x800007e8]:sd a2, 240(t0)<br>   |
|  50|[0x80004398]<br>0x0000080100000001|- rs2_val == -4294967297<br> - rs1_val == 8796093022208<br>                                                                                                                                                       |[0x80000814]:sub a2, a0, a1<br> [0x80000818]:sd a2, 256(t0)<br>   |
|  51|[0x800043a0]<br>0x0000100000000007|- rs1_val == 17592186044416<br>                                                                                                                                                                                   |[0x80000828]:sub a2, a0, a1<br> [0x8000082c]:sd a2, 264(t0)<br>   |
|  52|[0x800043a8]<br>0x0000200200000001|- rs2_val == -8589934593<br> - rs1_val == 35184372088832<br>                                                                                                                                                      |[0x80000844]:sub a2, a0, a1<br> [0x80000848]:sd a2, 272(t0)<br>   |
|  53|[0x800043b0]<br>0x0000400000400001|- rs2_val == -4194305<br> - rs1_val == 70368744177664<br>                                                                                                                                                         |[0x8000085c]:sub a2, a0, a1<br> [0x80000860]:sd a2, 280(t0)<br>   |
|  54|[0x800043b8]<br>0x0100800000000001|- rs2_val == -72057594037927937<br> - rs1_val == 140737488355328<br>                                                                                                                                              |[0x80000878]:sub a2, a0, a1<br> [0x8000087c]:sd a2, 288(t0)<br>   |
|  55|[0x800043c0]<br>0x0001010000000001|- rs1_val == 281474976710656<br>                                                                                                                                                                                  |[0x80000894]:sub a2, a0, a1<br> [0x80000898]:sd a2, 296(t0)<br>   |
|  56|[0x800043c8]<br>0x0001FFFFFFFFFFF7|- rs1_val == 562949953421312<br>                                                                                                                                                                                  |[0x800008a8]:sub a2, a0, a1<br> [0x800008ac]:sd a2, 304(t0)<br>   |
|  57|[0x800043d0]<br>0x0004000001000001|- rs2_val == -16777217<br> - rs1_val == 1125899906842624<br>                                                                                                                                                      |[0x800008c0]:sub a2, a0, a1<br> [0x800008c4]:sd a2, 312(t0)<br>   |
|  58|[0x800043d8]<br>0x0008001000000001|- rs2_val == -68719476737<br> - rs1_val == 2251799813685248<br>                                                                                                                                                   |[0x800008dc]:sub a2, a0, a1<br> [0x800008e0]:sd a2, 320(t0)<br>   |
|  59|[0x800043e0]<br>0x000FFFFE00000000|- rs2_val == 8589934592<br> - rs1_val == 4503599627370496<br>                                                                                                                                                     |[0x800008f4]:sub a2, a0, a1<br> [0x800008f8]:sd a2, 328(t0)<br>   |
|  60|[0x800043e8]<br>0x1020000000000001|- rs1_val == 9007199254740992<br>                                                                                                                                                                                 |[0x80000910]:sub a2, a0, a1<br> [0x80000914]:sd a2, 336(t0)<br>   |
|  61|[0x800043f0]<br>0x003FFFFFFFFFFFF9|- rs1_val == 18014398509481984<br>                                                                                                                                                                                |[0x80000924]:sub a2, a0, a1<br> [0x80000928]:sd a2, 344(t0)<br>   |
|  62|[0x800043f8]<br>0x0080001000000001|- rs1_val == 36028797018963968<br>                                                                                                                                                                                |[0x80000940]:sub a2, a0, a1<br> [0x80000944]:sd a2, 352(t0)<br>   |
|  63|[0x80004400]<br>0x01FFF00000000000|- rs1_val == 144115188075855872<br>                                                                                                                                                                               |[0x80000958]:sub a2, a0, a1<br> [0x8000095c]:sd a2, 360(t0)<br>   |
|  64|[0x80004408]<br>0x03FFFE0000000000|- rs2_val == 2199023255552<br> - rs1_val == 288230376151711744<br>                                                                                                                                                |[0x80000970]:sub a2, a0, a1<br> [0x80000974]:sd a2, 368(t0)<br>   |
|  65|[0x80004410]<br>0x0810000000000001|- rs1_val == 576460752303423488<br>                                                                                                                                                                               |[0x8000098c]:sub a2, a0, a1<br> [0x80000990]:sd a2, 376(t0)<br>   |
|  66|[0x80004418]<br>0x0F80000000000000|- rs1_val == 1152921504606846976<br>                                                                                                                                                                              |[0x800009a4]:sub a2, a0, a1<br> [0x800009a8]:sd a2, 384(t0)<br>   |
|  67|[0x80004420]<br>0x1FFFFE0000000000|- rs1_val == 2305843009213693952<br>                                                                                                                                                                              |[0x800009bc]:sub a2, a0, a1<br> [0x800009c0]:sd a2, 392(t0)<br>   |
|  68|[0x80004428]<br>0x3FFFFFFFFFFFFFE0|- rs2_val == 32<br> - rs1_val == 4611686018427387904<br>                                                                                                                                                          |[0x800009d0]:sub a2, a0, a1<br> [0x800009d4]:sd a2, 400(t0)<br>   |
|  69|[0x80004430]<br>0xFFFFFFFFFFFFFFFB|- rs1_val < 0 and rs2_val > 0<br> - rs1_val == -2<br>                                                                                                                                                             |[0x800009e0]:sub a2, a0, a1<br> [0x800009e4]:sd a2, 408(t0)<br>   |
|  70|[0x80004438]<br>0x0000000000000000|- rs2_val == -3<br> - rs1_val == -3<br>                                                                                                                                                                           |[0x800009f0]:sub a2, a0, a1<br> [0x800009f4]:sd a2, 416(t0)<br>   |
|  71|[0x80004440]<br>0x00001FFFFFFFFFFC|- rs2_val == -35184372088833<br> - rs1_val == -5<br>                                                                                                                                                              |[0x80000a08]:sub a2, a0, a1<br> [0x80000a0c]:sd a2, 424(t0)<br>   |
|  72|[0x80004448]<br>0xFFFFFFFFFFFFF7F7|- rs2_val == 2048<br> - rs1_val == -9<br>                                                                                                                                                                         |[0x80000a1c]:sub a2, a0, a1<br> [0x80000a20]:sd a2, 432(t0)<br>   |
|  73|[0x80004450]<br>0xFFFFFFFFFFFFFFEB|- rs2_val == 4<br> - rs1_val == -17<br>                                                                                                                                                                           |[0x80000a2c]:sub a2, a0, a1<br> [0x80000a30]:sd a2, 440(t0)<br>   |
|  74|[0x80004458]<br>0x01FFFFFFFFFFFFE0|- rs2_val == -144115188075855873<br> - rs1_val == -33<br>                                                                                                                                                         |[0x80000a44]:sub a2, a0, a1<br> [0x80000a48]:sd a2, 448(t0)<br>   |
|  75|[0x80004460]<br>0x00000000007FFFC0|- rs2_val == -8388609<br> - rs1_val == -65<br>                                                                                                                                                                    |[0x80000a58]:sub a2, a0, a1<br> [0x80000a5c]:sd a2, 456(t0)<br>   |
|  76|[0x80004468]<br>0xFFFFFFFFFFFFFF81|- rs2_val == -2<br> - rs1_val == -129<br>                                                                                                                                                                         |[0x80000a68]:sub a2, a0, a1<br> [0x80000a6c]:sd a2, 464(t0)<br>   |
|  77|[0x80004470]<br>0xFFFFFFFFFFFFFEFE|- rs1_val == -257<br>                                                                                                                                                                                             |[0x80000a78]:sub a2, a0, a1<br> [0x80000a7c]:sd a2, 472(t0)<br>   |
|  78|[0x80004478]<br>0x0060000000000001|- rs2_val == -18014398509481985<br>                                                                                                                                                                               |[0x80000a94]:sub a2, a0, a1<br> [0x80000a98]:sd a2, 480(t0)<br>   |
|  79|[0x80004480]<br>0x0080040000000001|- rs2_val == -36028797018963969<br>                                                                                                                                                                               |[0x80000ab0]:sub a2, a0, a1<br> [0x80000ab4]:sd a2, 488(t0)<br>   |
|  80|[0x80004488]<br>0x2400000000000001|- rs2_val == -288230376151711745<br>                                                                                                                                                                              |[0x80000acc]:sub a2, a0, a1<br> [0x80000ad0]:sd a2, 496(t0)<br>   |
|  81|[0x80004490]<br>0x080000000000000A|- rs2_val == -576460752303423489<br>                                                                                                                                                                              |[0x80000ae4]:sub a2, a0, a1<br> [0x80000ae8]:sd a2, 504(t0)<br>   |
|  82|[0x80004498]<br>0x1FFFFFFFFFF00000|- rs2_val == -2305843009213693953<br> - rs1_val == -1048577<br>                                                                                                                                                   |[0x80000b00]:sub a2, a0, a1<br> [0x80000b04]:sd a2, 512(t0)<br>   |
|  83|[0x800044a0]<br>0x5755555555555556|- rs2_val == -6148914691236517206<br>                                                                                                                                                                             |[0x80000b30]:sub a2, a0, a1<br> [0x80000b34]:sd a2, 520(t0)<br>   |
|  84|[0x800044a8]<br>0x7FFFFFFFFFFFFE00|- rs1_val == -513<br>                                                                                                                                                                                             |[0x80000b48]:sub a2, a0, a1<br> [0x80000b4c]:sd a2, 528(t0)<br>   |
|  85|[0x800044b0]<br>0xFF7FFFFFFFFFFBFF|- rs1_val == -1025<br>                                                                                                                                                                                            |[0x80000b5c]:sub a2, a0, a1<br> [0x80000b60]:sd a2, 536(t0)<br>   |
|  86|[0x800044b8]<br>0xFFFFFFFFFFFFF6FF|- rs2_val == 256<br> - rs1_val == -2049<br>                                                                                                                                                                       |[0x80000b70]:sub a2, a0, a1<br> [0x80000b74]:sd a2, 544(t0)<br>   |
|  87|[0x800044c0]<br>0xFFFFFFFFFFFFDFFF|- rs2_val == 4096<br> - rs1_val == -4097<br>                                                                                                                                                                      |[0x80000b84]:sub a2, a0, a1<br> [0x80000b88]:sd a2, 552(t0)<br>   |
|  88|[0x800044c8]<br>0xFFFFFFFFFFFFE008|- rs2_val == -9<br> - rs1_val == -8193<br>                                                                                                                                                                        |[0x80000b98]:sub a2, a0, a1<br> [0x80000b9c]:sd a2, 560(t0)<br>   |
|  89|[0x800044d0]<br>0xFFFFFFFFFFFEFFFF|- rs2_val == 32768<br> - rs1_val == -32769<br>                                                                                                                                                                    |[0x80000bac]:sub a2, a0, a1<br> [0x80000bb0]:sd a2, 568(t0)<br>   |
|  90|[0x800044d8]<br>0xFFFFFFFFFFFEFFFD|- rs2_val == 2<br> - rs1_val == -65537<br>                                                                                                                                                                        |[0x80000bc0]:sub a2, a0, a1<br> [0x80000bc4]:sd a2, 576(t0)<br>   |
|  91|[0x800044e0]<br>0xFFFFFFFFFFFDFFEF|- rs1_val == -131073<br>                                                                                                                                                                                          |[0x80000bd4]:sub a2, a0, a1<br> [0x80000bd8]:sd a2, 584(t0)<br>   |
|  92|[0x800044e8]<br>0x0FFFFFFFFFFC0000|- rs1_val == -262145<br>                                                                                                                                                                                          |[0x80000bf0]:sub a2, a0, a1<br> [0x80000bf4]:sd a2, 592(t0)<br>   |
|  93|[0x800044f0]<br>0x000000001FF80000|- rs2_val == -536870913<br> - rs1_val == -524289<br>                                                                                                                                                              |[0x80000c08]:sub a2, a0, a1<br> [0x80000c0c]:sd a2, 600(t0)<br>   |
|  94|[0x800044f8]<br>0x00000001FFE00000|- rs1_val == -2097153<br>                                                                                                                                                                                         |[0x80000c24]:sub a2, a0, a1<br> [0x80000c28]:sd a2, 608(t0)<br>   |
|  95|[0x80004500]<br>0xFFFFFFFFFFC04000|- rs2_val == -16385<br> - rs1_val == -4194305<br>                                                                                                                                                                 |[0x80000c3c]:sub a2, a0, a1<br> [0x80000c40]:sd a2, 616(t0)<br>   |
|  96|[0x80004508]<br>0xFFFFFEFFFF7FFFFF|- rs1_val == -8388609<br>                                                                                                                                                                                         |[0x80000c54]:sub a2, a0, a1<br> [0x80000c58]:sd a2, 624(t0)<br>   |
|  97|[0x80004510]<br>0xFFFFFFFFFEFFFFFE|- rs1_val == -16777217<br>                                                                                                                                                                                        |[0x80000c68]:sub a2, a0, a1<br> [0x80000c6c]:sd a2, 632(t0)<br>   |
|  98|[0x80004518]<br>0xFFFFFFFFFDFFFBFF|- rs2_val == 1024<br> - rs1_val == -33554433<br>                                                                                                                                                                  |[0x80000c7c]:sub a2, a0, a1<br> [0x80000c80]:sd a2, 640(t0)<br>   |
|  99|[0x80004520]<br>0x00000003FC000000|- rs1_val == -67108865<br>                                                                                                                                                                                        |[0x80000c98]:sub a2, a0, a1<br> [0x80000c9c]:sd a2, 648(t0)<br>   |
| 100|[0x80004528]<br>0xFFFFFFFFF7FFBFFF|- rs2_val == 16384<br> - rs1_val == -134217729<br>                                                                                                                                                                |[0x80000cac]:sub a2, a0, a1<br> [0x80000cb0]:sd a2, 656(t0)<br>   |
| 101|[0x80004530]<br>0xFFFFFFFBEFFFFFFF|- rs1_val == -268435457<br>                                                                                                                                                                                       |[0x80000cc4]:sub a2, a0, a1<br> [0x80000cc8]:sd a2, 664(t0)<br>   |
| 102|[0x80004538]<br>0x7FFFFFFFE0000000|- rs1_val == -536870913<br>                                                                                                                                                                                       |[0x80000ce0]:sub a2, a0, a1<br> [0x80000ce4]:sd a2, 672(t0)<br>   |
| 103|[0x80004540]<br>0x000000FFC0000000|- rs1_val == -1073741825<br>                                                                                                                                                                                      |[0x80000cfc]:sub a2, a0, a1<br> [0x80000d00]:sd a2, 680(t0)<br>   |
| 104|[0x80004548]<br>0x0000FFFF00000000|- rs2_val == -281474976710657<br> - rs1_val == -4294967297<br>                                                                                                                                                    |[0x80000d1c]:sub a2, a0, a1<br> [0x80000d20]:sd a2, 688(t0)<br>   |
| 105|[0x80004550]<br>0xFFFFFFFE00000007|- rs1_val == -8589934593<br>                                                                                                                                                                                      |[0x80000d34]:sub a2, a0, a1<br> [0x80000d38]:sd a2, 696(t0)<br>   |
| 106|[0x80004558]<br>0x03FFFFFC00000000|- rs1_val == -17179869185<br>                                                                                                                                                                                     |[0x80000d54]:sub a2, a0, a1<br> [0x80000d58]:sd a2, 704(t0)<br>   |
| 107|[0x80004560]<br>0xFFFFFFF7DFFFFFFF|- rs2_val == 536870912<br> - rs1_val == -34359738369<br>                                                                                                                                                          |[0x80000d6c]:sub a2, a0, a1<br> [0x80000d70]:sd a2, 712(t0)<br>   |
| 108|[0x80004568]<br>0x000000F000000000|- rs1_val == -68719476737<br>                                                                                                                                                                                     |[0x80000d8c]:sub a2, a0, a1<br> [0x80000d90]:sd a2, 720(t0)<br>   |
| 109|[0x80004570]<br>0x0000000000000000|- rs2_val == -137438953473<br> - rs1_val == -137438953473<br>                                                                                                                                                     |[0x80000dac]:sub a2, a0, a1<br> [0x80000db0]:sd a2, 728(t0)<br>   |
| 110|[0x80004578]<br>0x00003FC000000000|- rs1_val == -274877906945<br>                                                                                                                                                                                    |[0x80000dcc]:sub a2, a0, a1<br> [0x80000dd0]:sd a2, 736(t0)<br>   |
| 111|[0x80004580]<br>0xFFFFFF7FFFFFFDFF|- rs2_val == 512<br> - rs1_val == -549755813889<br>                                                                                                                                                               |[0x80000de4]:sub a2, a0, a1<br> [0x80000de8]:sd a2, 744(t0)<br>   |
| 112|[0x80004588]<br>0xFFFFFEFFFFBFFFFF|- rs2_val == 4194304<br> - rs1_val == -1099511627777<br>                                                                                                                                                          |[0x80000dfc]:sub a2, a0, a1<br> [0x80000e00]:sd a2, 752(t0)<br>   |
| 113|[0x80004590]<br>0xFFFFFDFFFFFF7FFF|- rs1_val == -2199023255553<br>                                                                                                                                                                                   |[0x80000e14]:sub a2, a0, a1<br> [0x80000e18]:sd a2, 760(t0)<br>   |
| 114|[0x80004598]<br>0xFFFFFC0004000000|- rs2_val == -67108865<br> - rs1_val == -4398046511105<br>                                                                                                                                                        |[0x80000e30]:sub a2, a0, a1<br> [0x80000e34]:sd a2, 768(t0)<br>   |
| 115|[0x800045a0]<br>0xFFF7F7FFFFFFFFFF|- rs2_val == 2251799813685248<br> - rs1_val == -8796093022209<br>                                                                                                                                                 |[0x80000e4c]:sub a2, a0, a1<br> [0x80000e50]:sd a2, 776(t0)<br>   |
| 116|[0x800045a8]<br>0xFFFFEEFFFFFFFFFF|- rs1_val == -17592186044417<br>                                                                                                                                                                                  |[0x80000e68]:sub a2, a0, a1<br> [0x80000e6c]:sd a2, 784(t0)<br>   |
| 117|[0x800045b0]<br>0xFFFFDFFFFFFFFFFF|- rs1_val == -35184372088833<br>                                                                                                                                                                                  |[0x80000e80]:sub a2, a0, a1<br> [0x80000e84]:sd a2, 792(t0)<br>   |
| 118|[0x800045b8]<br>0xFFFFBFFF7FFFFFFF|- rs2_val == 2147483648<br> - rs1_val == -70368744177665<br>                                                                                                                                                      |[0x80000e9c]:sub a2, a0, a1<br> [0x80000ea0]:sd a2, 800(t0)<br>   |
| 119|[0x800045c0]<br>0xFFFF804000000000|- rs2_val == -274877906945<br> - rs1_val == -140737488355329<br>                                                                                                                                                  |[0x80000ebc]:sub a2, a0, a1<br> [0x80000ec0]:sd a2, 808(t0)<br>   |
| 120|[0x800045c8]<br>0xFFFEFFFFFFFFEFFF|- rs1_val == -281474976710657<br>                                                                                                                                                                                 |[0x80000ed4]:sub a2, a0, a1<br> [0x80000ed8]:sd a2, 816(t0)<br>   |
| 121|[0x800045d0]<br>0x7FFDFFFFFFFFFFFF|- rs1_val == -562949953421313<br>                                                                                                                                                                                 |[0x80000ef0]:sub a2, a0, a1<br> [0x80000ef4]:sd a2, 824(t0)<br>   |
| 122|[0x800045d8]<br>0xFFFBFFFFFF7FFFFF|- rs2_val == 8388608<br> - rs1_val == -1125899906842625<br>                                                                                                                                                       |[0x80000f08]:sub a2, a0, a1<br> [0x80000f0c]:sd a2, 832(t0)<br>   |
| 123|[0x800045e0]<br>0xFFF7FFFFFFFFFFFA|- rs1_val == -2251799813685249<br>                                                                                                                                                                                |[0x80000f20]:sub a2, a0, a1<br> [0x80000f24]:sd a2, 840(t0)<br>   |
| 124|[0x800045e8]<br>0xFFEFFFFFFFFFFFF8|- rs1_val == -4503599627370497<br>                                                                                                                                                                                |[0x80000f38]:sub a2, a0, a1<br> [0x80000f3c]:sd a2, 848(t0)<br>   |
| 125|[0x800045f0]<br>0xFFDEFFFFFFFFFFFF|- rs2_val == 281474976710656<br> - rs1_val == -9007199254740993<br>                                                                                                                                               |[0x80000f54]:sub a2, a0, a1<br> [0x80000f58]:sd a2, 856(t0)<br>   |
| 126|[0x800045f8]<br>0x01C0000000000000|- rs1_val == -18014398509481985<br>                                                                                                                                                                               |[0x80000f74]:sub a2, a0, a1<br> [0x80000f78]:sd a2, 864(t0)<br>   |
| 127|[0x80004600]<br>0xFF7FBFFFFFFFFFFF|- rs2_val == 70368744177664<br> - rs1_val == -36028797018963969<br>                                                                                                                                               |[0x80000f90]:sub a2, a0, a1<br> [0x80000f94]:sd a2, 872(t0)<br>   |
| 128|[0x80004608]<br>0xFEFFFFFFFFFFF7FF|- rs1_val == -72057594037927937<br>                                                                                                                                                                               |[0x80000fac]:sub a2, a0, a1<br> [0x80000fb0]:sd a2, 880(t0)<br>   |
| 129|[0x80004610]<br>0xFE40000000000000|- rs1_val == -144115188075855873<br>                                                                                                                                                                              |[0x80000fcc]:sub a2, a0, a1<br> [0x80000fd0]:sd a2, 888(t0)<br>   |
| 130|[0x80004618]<br>0xFBFFFFFFFFFFFFF9|- rs1_val == -288230376151711745<br>                                                                                                                                                                              |[0x80000fe4]:sub a2, a0, a1<br> [0x80000fe8]:sd a2, 896(t0)<br>   |
| 131|[0x80004620]<br>0xF800000000000006|- rs1_val == -576460752303423489<br>                                                                                                                                                                              |[0x80000ffc]:sub a2, a0, a1<br> [0x80001000]:sd a2, 904(t0)<br>   |
| 132|[0x80004628]<br>0xF000000400000000|- rs1_val == -1152921504606846977<br>                                                                                                                                                                             |[0x8000101c]:sub a2, a0, a1<br> [0x80001020]:sd a2, 912(t0)<br>   |
| 133|[0x80004630]<br>0xE000000000000004|- rs2_val == -5<br> - rs1_val == -2305843009213693953<br>                                                                                                                                                         |[0x80001034]:sub a2, a0, a1<br> [0x80001038]:sd a2, 920(t0)<br>   |
| 134|[0x80004638]<br>0xBFFFFFFFFFFF7FFF|- rs1_val == -4611686018427387905<br>                                                                                                                                                                             |[0x8000104c]:sub a2, a0, a1<br> [0x80001050]:sd a2, 928(t0)<br>   |
| 135|[0x80004640]<br>0x5555555554555555|- rs2_val == 16777216<br>                                                                                                                                                                                         |[0x80001078]:sub a2, a0, a1<br> [0x8000107c]:sd a2, 936(t0)<br>   |
| 136|[0x80004648]<br>0xAAAAAAAAAAAAA2AA|- rs1_val == -6148914691236517206<br>                                                                                                                                                                             |[0x800010a8]:sub a2, a0, a1<br> [0x800010ac]:sd a2, 944(t0)<br>   |
| 137|[0x80004650]<br>0x3FFFFFFFFFFFFFF8|- rs2_val == 8<br>                                                                                                                                                                                                |[0x800010bc]:sub a2, a0, a1<br> [0x800010c0]:sd a2, 952(t0)<br>   |
| 138|[0x80004658]<br>0x000000003FFFFFC0|- rs2_val == 64<br>                                                                                                                                                                                               |[0x800010cc]:sub a2, a0, a1<br> [0x800010d0]:sd a2, 960(t0)<br>   |
| 139|[0x80004660]<br>0xFFFFFFFFFFFFFF7A|- rs2_val == 128<br>                                                                                                                                                                                              |[0x800010dc]:sub a2, a0, a1<br> [0x800010e0]:sd a2, 968(t0)<br>   |
| 140|[0x80004668]<br>0x3FFFFFFFFFFFE000|- rs2_val == 8192<br>                                                                                                                                                                                             |[0x800010f0]:sub a2, a0, a1<br> [0x800010f4]:sd a2, 976(t0)<br>   |
| 141|[0x80004670]<br>0xEFFFFFFFFFFEFFFF|- rs2_val == 65536<br>                                                                                                                                                                                            |[0x80001108]:sub a2, a0, a1<br> [0x8000110c]:sd a2, 984(t0)<br>   |
| 142|[0x80004678]<br>0xFFFFDFFFFFFDFFFF|- rs2_val == 131072<br>                                                                                                                                                                                           |[0x80001120]:sub a2, a0, a1<br> [0x80001124]:sd a2, 992(t0)<br>   |
| 143|[0x80004680]<br>0xFFFFFEFFFFFBFFFF|- rs2_val == 262144<br>                                                                                                                                                                                           |[0x80001138]:sub a2, a0, a1<br> [0x8000113c]:sd a2, 1000(t0)<br>  |
| 144|[0x80004688]<br>0xFFFFEFFFFFEFFFFF|- rs2_val == 1048576<br>                                                                                                                                                                                          |[0x80001150]:sub a2, a0, a1<br> [0x80001154]:sd a2, 1008(t0)<br>  |
| 145|[0x80004690]<br>0x0000000000E00000|- rs2_val == 2097152<br>                                                                                                                                                                                          |[0x80001160]:sub a2, a0, a1<br> [0x80001164]:sd a2, 1016(t0)<br>  |
| 146|[0x80004698]<br>0xFFFFFFFFFD000000|- rs2_val == 67108864<br>                                                                                                                                                                                         |[0x80001170]:sub a2, a0, a1<br> [0x80001174]:sd a2, 1024(t0)<br>  |
| 147|[0x800046a0]<br>0xFFFFFFFFF7FFFFFF|- rs2_val == 134217728<br>                                                                                                                                                                                        |[0x80001180]:sub a2, a0, a1<br> [0x80001184]:sd a2, 1032(t0)<br>  |
| 148|[0x800046a8]<br>0xFFFFFFF7FFFFFFEF|- rs2_val == 34359738368<br>                                                                                                                                                                                      |[0x80001194]:sub a2, a0, a1<br> [0x80001198]:sd a2, 1040(t0)<br>  |
| 149|[0x800046b0]<br>0xFFFFFFEFFFFFFFFA|- rs2_val == 68719476736<br>                                                                                                                                                                                      |[0x800011a8]:sub a2, a0, a1<br> [0x800011ac]:sd a2, 1048(t0)<br>  |
| 150|[0x800046b8]<br>0xFFFFFFE000800000|- rs2_val == 137438953472<br>                                                                                                                                                                                     |[0x800011bc]:sub a2, a0, a1<br> [0x800011c0]:sd a2, 1056(t0)<br>  |
| 151|[0x800046c0]<br>0xFFFC000000000080|- rs2_val == 1125899906842624<br>                                                                                                                                                                                 |[0x800011d0]:sub a2, a0, a1<br> [0x800011d4]:sd a2, 1064(t0)<br>  |
| 152|[0x800046c8]<br>0xFFF5FFFFFFFFFFFF|- rs2_val == 562949953421312<br>                                                                                                                                                                                  |[0x800011ec]:sub a2, a0, a1<br> [0x800011f0]:sd a2, 1072(t0)<br>  |
| 153|[0x800046d0]<br>0xFFF8000000000000|- rs2_val == 4503599627370496<br>                                                                                                                                                                                 |[0x80001204]:sub a2, a0, a1<br> [0x80001208]:sd a2, 1080(t0)<br>  |
| 154|[0x800046d8]<br>0xFFC0000080000000|- rs2_val == 18014398509481984<br>                                                                                                                                                                                |[0x8000121c]:sub a2, a0, a1<br> [0x80001220]:sd a2, 1088(t0)<br>  |
| 155|[0x800046e0]<br>0xFC00001000000000|- rs2_val == 288230376151711744<br>                                                                                                                                                                               |[0x80001234]:sub a2, a0, a1<br> [0x80001238]:sd a2, 1096(t0)<br>  |
| 156|[0x800046e8]<br>0xE000000000020000|- rs2_val == 2305843009213693952<br>                                                                                                                                                                              |[0x80001248]:sub a2, a0, a1<br> [0x8000124c]:sd a2, 1104(t0)<br>  |
| 157|[0x800046f0]<br>0xC000000040000000|- rs2_val == 4611686018427387904<br>                                                                                                                                                                              |[0x8000125c]:sub a2, a0, a1<br> [0x80001260]:sd a2, 1112(t0)<br>  |
| 158|[0x800046f8]<br>0x0000000000000091|- rs2_val == -17<br>                                                                                                                                                                                              |[0x8000126c]:sub a2, a0, a1<br> [0x80001270]:sd a2, 1120(t0)<br>  |
| 159|[0x80004700]<br>0x0000000000000026|- rs2_val == -33<br>                                                                                                                                                                                              |[0x8000127c]:sub a2, a0, a1<br> [0x80001280]:sd a2, 1128(t0)<br>  |
| 160|[0x80004708]<br>0xFFFFFFFFFFFFFC40|- rs2_val == -65<br>                                                                                                                                                                                              |[0x8000128c]:sub a2, a0, a1<br> [0x80001290]:sd a2, 1136(t0)<br>  |
| 161|[0x80004710]<br>0x0000000000000101|- rs2_val == -129<br>                                                                                                                                                                                             |[0x8000129c]:sub a2, a0, a1<br> [0x800012a0]:sd a2, 1144(t0)<br>  |
| 162|[0x80004718]<br>0x0000800000000101|- rs2_val == -257<br>                                                                                                                                                                                             |[0x800012b0]:sub a2, a0, a1<br> [0x800012b4]:sd a2, 1152(t0)<br>  |
| 163|[0x80004720]<br>0x0000000000000A01|- rs2_val == -513<br>                                                                                                                                                                                             |[0x800012c4]:sub a2, a0, a1<br> [0x800012c8]:sd a2, 1160(t0)<br>  |
| 164|[0x80004728]<br>0x0000000000000441|- rs2_val == -1025<br>                                                                                                                                                                                            |[0x800012d4]:sub a2, a0, a1<br> [0x800012d8]:sd a2, 1168(t0)<br>  |
| 165|[0x80004730]<br>0xF800000000000800|- rs2_val == -2049<br>                                                                                                                                                                                            |[0x800012f0]:sub a2, a0, a1<br> [0x800012f4]:sd a2, 1176(t0)<br>  |
| 166|[0x80004738]<br>0xF000000000002000|- rs2_val == -8193<br>                                                                                                                                                                                            |[0x8000130c]:sub a2, a0, a1<br> [0x80001310]:sd a2, 1184(t0)<br>  |
| 167|[0x80004740]<br>0x00000000000FFFF7|- rs2_val == -1048577<br>                                                                                                                                                                                         |[0x80001320]:sub a2, a0, a1<br> [0x80001324]:sd a2, 1192(t0)<br>  |
| 168|[0x80004748]<br>0x0000000000200003|- rs2_val == -2097153<br>                                                                                                                                                                                         |[0x80001334]:sub a2, a0, a1<br> [0x80001338]:sd a2, 1200(t0)<br>  |
| 169|[0x80004750]<br>0x0000000002200001|- rs2_val == -33554433<br>                                                                                                                                                                                        |[0x80001348]:sub a2, a0, a1<br> [0x8000134c]:sd a2, 1208(t0)<br>  |
| 170|[0x80004758]<br>0xC000000008000000|- rs2_val == -134217729<br>                                                                                                                                                                                       |[0x80001364]:sub a2, a0, a1<br> [0x80001368]:sd a2, 1216(t0)<br>  |
| 171|[0x80004760]<br>0x0000001010000001|- rs2_val == -268435457<br>                                                                                                                                                                                       |[0x8000137c]:sub a2, a0, a1<br> [0x80001380]:sd a2, 1224(t0)<br>  |
| 172|[0x80004768]<br>0xFFC0000080000000|- rs2_val == -2147483649<br>                                                                                                                                                                                      |[0x8000139c]:sub a2, a0, a1<br> [0x800013a0]:sd a2, 1232(t0)<br>  |
| 173|[0x80004770]<br>0x0000004800000001|- rs2_val == -34359738369<br>                                                                                                                                                                                     |[0x800013b8]:sub a2, a0, a1<br> [0x800013bc]:sd a2, 1240(t0)<br>  |
| 174|[0x80004778]<br>0x001FFFC000000000|- rs2_val == 274877906944<br>                                                                                                                                                                                     |[0x800013d0]:sub a2, a0, a1<br> [0x800013d4]:sd a2, 1248(t0)<br>  |
| 175|[0x80004780]<br>0xFFFFFFFFFE010000|- rs2_val == -65537<br>                                                                                                                                                                                           |[0x800013e8]:sub a2, a0, a1<br> [0x800013ec]:sd a2, 1256(t0)<br>  |
| 176|[0x80004788]<br>0xFFFFFF8100000000|- rs2_val == 549755813888<br>                                                                                                                                                                                     |[0x80001400]:sub a2, a0, a1<br> [0x80001404]:sd a2, 1264(t0)<br>  |
| 177|[0x80004790]<br>0xFF80000000008000|- rs2_val == -32769<br>                                                                                                                                                                                           |[0x8000141c]:sub a2, a0, a1<br> [0x80001420]:sd a2, 1272(t0)<br>  |
| 178|[0x80004798]<br>0x000007FFF8000000|- rs2_val == -8796093022209<br>                                                                                                                                                                                   |[0x80001438]:sub a2, a0, a1<br> [0x8000143c]:sd a2, 1280(t0)<br>  |
| 179|[0x800047a0]<br>0x0000800000000005|- rs2_val == -140737488355329<br>                                                                                                                                                                                 |[0x80001450]:sub a2, a0, a1<br> [0x80001454]:sd a2, 1288(t0)<br>  |
| 180|[0x800047a8]<br>0x7FFF7FFFFFFFFFFF|- rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 140737488355328<br> - rs1_val == 9223372036854775807<br>                                                                                                            |[0x8000146c]:sub a2, a0, a1<br> [0x80001470]:sd a2, 1296(t0)<br>  |
| 181|[0x800047b0]<br>0x0002000000002001|- rs2_val == -562949953421313<br>                                                                                                                                                                                 |[0x80001484]:sub a2, a0, a1<br> [0x80001488]:sd a2, 1304(t0)<br>  |
| 182|[0x800047b8]<br>0x7FFFFC0000000000|- rs1_val == (-2**(xlen-1))<br> - rs1_val == -9223372036854775808<br>                                                                                                                                             |[0x8000149c]:sub a2, a0, a1<br> [0x800014a0]:sd a2, 1312(t0)<br>  |
