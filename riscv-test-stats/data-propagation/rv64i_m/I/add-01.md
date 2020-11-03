
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001500')]      |
| SIG_REGION                | [('0x80004204', '0x80004810', '193 dwords')]      |
| COV_LABELS                | add      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/add-01.S/add-01.S    |
| Total Number of coverpoints| 374     |
| Total Signature Updates   | 192      |
| Total Coverpoints Covered | 374      |
| STAT1                     | 189      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800014b8]:add a2, a0, a1
      [0x800014bc]:sd a2, 1352(sp)
 -- Signature Address: 0x800047f0 Data: 0x0020000000000001
 -- Redundant Coverpoints hit by the op
      - opcode : add
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs1_val == 1
      - rs2_val == 9007199254740992




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800014cc]:add a2, a0, a1
      [0x800014d0]:sd a2, 1360(sp)
 -- Signature Address: 0x800047f8 Data: 0xFFFFFFFFF7FFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : add
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs2_val == 0
      - rs1_val == -134217729




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800014f4]:add a2, a0, a1
      [0x800014f8]:sd a2, 1376(sp)
 -- Signature Address: 0x80004808 Data: 0x0000000000000FF7
 -- Redundant Coverpoints hit by the op
      - opcode : add
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == -9
      - rs1_val == 4096






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

|s.no|            signature             |                                                                                        coverpoints                                                                                         |                               code                               |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------|
|   1|[0x80004210]<br>0xFFFFFFFFFFFFFFEE|- opcode : add<br> - rs1 : x30<br> - rs2 : x30<br> - rd : x30<br> - rs1 == rs2 == rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val == rs2_val<br> - rs2_val == -9<br> - rs1_val == -9<br> |[0x800003a4]:add t5, t5, t5<br> [0x800003a8]:sd t5, 0(t1)<br>     |
|   2|[0x80004218]<br>0x0000000000000002|- rs1 : x23<br> - rs2 : x27<br> - rd : x23<br> - rs1 == rd != rs2<br> - rs1_val != rs2_val<br> - rs1_val == 0<br> - rs2_val == 2<br>                                                        |[0x800003b4]:add s7, s7, s11<br> [0x800003b8]:sd s7, 8(t1)<br>    |
|   3|[0x80004220]<br>0x7FFFFFFFFFFFFFF9|- rs1 : x1<br> - rs2 : x2<br> - rd : x2<br> - rs2 == rd != rs1<br> - rs1_val > 0 and rs2_val < 0<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 9223372036854775807<br>                  |[0x800003cc]:add sp, ra, sp<br> [0x800003d0]:sd sp, 16(t1)<br>    |
|   4|[0x80004228]<br>0x0040000000000000|- rs1 : x4<br> - rs2 : x4<br> - rd : x22<br> - rs1 == rs2 != rd<br> - rs1_val > 0 and rs2_val > 0<br> - rs2_val == 9007199254740992<br> - rs1_val == 9007199254740992<br>                   |[0x800003e0]:add s6, tp, tp<br> [0x800003e4]:sd s6, 24(t1)<br>    |
|   5|[0x80004230]<br>0x7FFFFFFFFFDFFFFF|- rs1 : x20<br> - rs2 : x1<br> - rd : x25<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -9223372036854775808<br> - rs1_val == -2097153<br> |[0x800003f8]:add s9, s4, ra<br> [0x800003fc]:sd s9, 32(t1)<br>    |
|   6|[0x80004238]<br>0xFFFFFFFFF7FFFFFF|- rs1 : x26<br> - rs2 : x0<br> - rd : x28<br> - rs2_val == 0<br> - rs1_val == -134217729<br>                                                                                                |[0x8000040c]:add t3, s10, zero<br> [0x80000410]:sd t3, 40(t1)<br> |
|   7|[0x80004240]<br>0x7FFFFFFFFFFFFFF6|- rs1 : x7<br> - rs2 : x25<br> - rd : x8<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 9223372036854775807<br>                                        |[0x80000424]:add fp, t2, s9<br> [0x80000428]:sd fp, 48(t1)<br>    |
|   8|[0x80004248]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x27<br> - rs2 : x10<br> - rd : x9<br> - rs2_val == 1<br> - rs1_val == -2<br>                                                                                                        |[0x80000434]:add s1, s11, a0<br> [0x80000438]:sd s1, 56(t1)<br>   |
|   9|[0x80004250]<br>0x0020000000000000|- rs1 : x9<br> - rs2 : x28<br> - rd : x17<br> - rs2_val == 4503599627370496<br> - rs1_val == 4503599627370496<br>                                                                           |[0x8000044c]:add a7, s1, t3<br> [0x80000450]:sd a7, 64(t1)<br>    |
|  10|[0x80004258]<br>0xFE00000000000001|- rs1 : x14<br> - rs2 : x3<br> - rd : x18<br> - rs2_val == -144115188075855873<br> - rs1_val == 2<br>                                                                                       |[0x80000464]:add s2, a4, gp<br> [0x80000468]:sd s2, 72(t1)<br>    |
|  11|[0x80004260]<br>0x0000080000000004|- rs1 : x19<br> - rs2 : x23<br> - rd : x14<br> - rs2_val == 8796093022208<br> - rs1_val == 4<br>                                                                                            |[0x80000478]:add a4, s3, s7<br> [0x8000047c]:sd a4, 80(t1)<br>    |
|  12|[0x80004268]<br>0x0000000002000008|- rs1 : x18<br> - rs2 : x19<br> - rd : x12<br> - rs2_val == 33554432<br> - rs1_val == 8<br>                                                                                                 |[0x80000488]:add a2, s2, s3<br> [0x8000048c]:sd a2, 88(t1)<br>    |
|  13|[0x80004270]<br>0xFF0000000000000F|- rs1 : x25<br> - rs2 : x26<br> - rd : x27<br> - rs2_val == -72057594037927937<br> - rs1_val == 16<br>                                                                                      |[0x800004a0]:add s11, s9, s10<br> [0x800004a4]:sd s11, 96(t1)<br> |
|  14|[0x80004278]<br>0x0000000002000020|- rs1 : x2<br> - rs2 : x16<br> - rd : x4<br> - rs1_val == 32<br>                                                                                                                            |[0x800004b0]:add tp, sp, a6<br> [0x800004b4]:sd tp, 104(t1)<br>   |
|  15|[0x80004280]<br>0x0000000000040040|- rs1 : x17<br> - rs2 : x11<br> - rd : x29<br> - rs2_val == 262144<br> - rs1_val == 64<br>                                                                                                  |[0x800004c0]:add t4, a7, a1<br> [0x800004c4]:sd t4, 112(t1)<br>   |
|  16|[0x80004288]<br>0xF00000000000007F|- rs1 : x22<br> - rs2 : x20<br> - rd : x24<br> - rs2_val == -1152921504606846977<br> - rs1_val == 128<br>                                                                                   |[0x800004d8]:add s8, s6, s4<br> [0x800004dc]:sd s8, 120(t1)<br>   |
|  17|[0x80004290]<br>0x00000000000000F9|- rs1 : x8<br> - rs2 : x5<br> - rd : x31<br> - rs1_val == 256<br>                                                                                                                           |[0x800004e8]:add t6, fp, t0<br> [0x800004ec]:sd t6, 128(t1)<br>   |
|  18|[0x80004298]<br>0x00000000000001FE|- rs1 : x12<br> - rs2 : x29<br> - rd : x7<br> - rs2_val == -2<br> - rs1_val == 512<br>                                                                                                      |[0x800004f8]:add t2, a2, t4<br> [0x800004fc]:sd t2, 136(t1)<br>   |
|  19|[0x800042a0]<br>0x00000000000003F7|- rs1 : x16<br> - rs2 : x31<br> - rd : x21<br> - rs1_val == 1024<br>                                                                                                                        |[0x80000508]:add s5, a6, t6<br> [0x8000050c]:sd s5, 144(t1)<br>   |
|  20|[0x800042a8]<br>0xFFFFFFFFFBFFFFFF|- rs1 : x0<br> - rs2 : x6<br> - rd : x11<br> - rs2_val == -67108865<br>                                                                                                                     |[0x80000528]:add a1, zero, t1<br> [0x8000052c]:sd a1, 0(sp)<br>   |
|  21|[0x800042b0]<br>0x0000000000000000|- rs1 : x31<br> - rs2 : x15<br> - rd : x0<br> - rs1_val == 4096<br>                                                                                                                         |[0x80000538]:add zero, t6, a5<br> [0x8000053c]:sd zero, 8(sp)<br> |
|  22|[0x800042b8]<br>0xFFFFFFFFFC001FFF|- rs1 : x29<br> - rs2 : x12<br> - rd : x26<br> - rs1_val == 8192<br>                                                                                                                        |[0x8000054c]:add s10, t4, a2<br> [0x80000550]:sd s10, 16(sp)<br>  |
|  23|[0x800042c0]<br>0xFFE0000000003FFF|- rs1 : x10<br> - rs2 : x14<br> - rd : x3<br> - rs2_val == -9007199254740993<br> - rs1_val == 16384<br>                                                                                     |[0x80000564]:add gp, a0, a4<br> [0x80000568]:sd gp, 24(sp)<br>    |
|  24|[0x800042c8]<br>0x0400000000008000|- rs1 : x3<br> - rs2 : x22<br> - rd : x5<br> - rs2_val == 288230376151711744<br> - rs1_val == 32768<br>                                                                                     |[0x80000578]:add t0, gp, s6<br> [0x8000057c]:sd t0, 32(sp)<br>    |
|  25|[0x800042d0]<br>0xE00000000000FFFF|- rs1 : x6<br> - rs2 : x21<br> - rd : x1<br> - rs2_val == -2305843009213693953<br> - rs1_val == 65536<br>                                                                                   |[0x80000590]:add ra, t1, s5<br> [0x80000594]:sd ra, 40(sp)<br>    |
|  26|[0x800042d8]<br>0xFFFFFFFFFF81FFFF|- rs1 : x13<br> - rs2 : x18<br> - rd : x16<br> - rs2_val == -8388609<br> - rs1_val == 131072<br>                                                                                            |[0x800005a4]:add a6, a3, s2<br> [0x800005a8]:sd a6, 48(sp)<br>    |
|  27|[0x800042e0]<br>0xAAAAAAAAAAAEAAAA|- rs1 : x21<br> - rs2 : x13<br> - rd : x19<br> - rs2_val == -6148914691236517206<br> - rs1_val == 262144<br>                                                                                |[0x800005d0]:add s3, s5, a3<br> [0x800005d4]:sd s3, 56(sp)<br>    |
|  28|[0x800042e8]<br>0x0000000002080000|- rs1 : x5<br> - rs2 : x8<br> - rd : x15<br> - rs1_val == 524288<br>                                                                                                                        |[0x800005e0]:add a5, t0, fp<br> [0x800005e4]:sd a5, 64(sp)<br>    |
|  29|[0x800042f0]<br>0x0040000000100000|- rs1 : x28<br> - rs2 : x24<br> - rd : x13<br> - rs2_val == 18014398509481984<br> - rs1_val == 1048576<br>                                                                                  |[0x800005f4]:add a3, t3, s8<br> [0x800005f8]:sd a3, 72(sp)<br>    |
|  30|[0x800042f8]<br>0x0008000000200000|- rs1 : x15<br> - rs2 : x17<br> - rd : x20<br> - rs2_val == 2251799813685248<br> - rs1_val == 2097152<br>                                                                                   |[0x80000608]:add s4, a5, a7<br> [0x8000060c]:sd s4, 80(sp)<br>    |
|  31|[0x80004300]<br>0x0400000000400000|- rs1 : x24<br> - rs2 : x9<br> - rd : x10<br> - rs1_val == 4194304<br>                                                                                                                      |[0x8000061c]:add a0, s8, s1<br> [0x80000620]:sd a0, 88(sp)<br>    |
|  32|[0x80004308]<br>0x0000001000800000|- rs1 : x11<br> - rs2 : x7<br> - rd : x6<br> - rs2_val == 68719476736<br> - rs1_val == 8388608<br>                                                                                          |[0x80000630]:add t1, a1, t2<br> [0x80000634]:sd t1, 96(sp)<br>    |
|  33|[0x80004310]<br>0x0000000000FFFFF8|- rs1_val == 16777216<br>                                                                                                                                                                   |[0x80000640]:add a2, a0, a1<br> [0x80000644]:sd a2, 104(sp)<br>   |
|  34|[0x80004318]<br>0x0000000002400000|- rs2_val == 4194304<br> - rs1_val == 33554432<br>                                                                                                                                          |[0x80000650]:add a2, a0, a1<br> [0x80000654]:sd a2, 112(sp)<br>   |
|  35|[0x80004320]<br>0x0000000003FFFFF8|- rs1_val == 67108864<br>                                                                                                                                                                   |[0x80000660]:add a2, a0, a1<br> [0x80000664]:sd a2, 120(sp)<br>   |
|  36|[0x80004328]<br>0x0000000008000010|- rs2_val == 16<br> - rs1_val == 134217728<br>                                                                                                                                              |[0x80000670]:add a2, a0, a1<br> [0x80000674]:sd a2, 128(sp)<br>   |
|  37|[0x80004330]<br>0xFFFFFFFE0FFFFFFF|- rs2_val == -8589934593<br> - rs1_val == 268435456<br>                                                                                                                                     |[0x80000688]:add a2, a0, a1<br> [0x8000068c]:sd a2, 136(sp)<br>   |
|  38|[0x80004338]<br>0x000000001EFFFFFF|- rs2_val == -16777217<br> - rs1_val == 536870912<br>                                                                                                                                       |[0x8000069c]:add a2, a0, a1<br> [0x800006a0]:sd a2, 144(sp)<br>   |
|  39|[0x80004340]<br>0x000000003FFFFFFC|- rs1_val == 1073741824<br>                                                                                                                                                                 |[0x800006ac]:add a2, a0, a1<br> [0x800006b0]:sd a2, 152(sp)<br>   |
|  40|[0x80004348]<br>0x0008000080000000|- rs1_val == 2147483648<br>                                                                                                                                                                 |[0x800006c4]:add a2, a0, a1<br> [0x800006c8]:sd a2, 160(sp)<br>   |
|  41|[0x80004350]<br>0x0002000100000000|- rs2_val == 562949953421312<br> - rs1_val == 4294967296<br>                                                                                                                                |[0x800006dc]:add a2, a0, a1<br> [0x800006e0]:sd a2, 168(sp)<br>   |
|  42|[0x80004358]<br>0x00000001FFFFFFF9|- rs1_val == 8589934592<br>                                                                                                                                                                 |[0x800006f0]:add a2, a0, a1<br> [0x800006f4]:sd a2, 176(sp)<br>   |
|  43|[0x80004360]<br>0x00000003EFFFFFFF|- rs2_val == -268435457<br> - rs1_val == 17179869184<br>                                                                                                                                    |[0x80000708]:add a2, a0, a1<br> [0x8000070c]:sd a2, 184(sp)<br>   |
|  44|[0x80004368]<br>0x00000007FFFFFFFA|- rs1_val == 34359738368<br>                                                                                                                                                                |[0x8000071c]:add a2, a0, a1<br> [0x80000720]:sd a2, 192(sp)<br>   |
|  45|[0x80004370]<br>0x0000001000004000|- rs2_val == 16384<br> - rs1_val == 68719476736<br>                                                                                                                                         |[0x80000730]:add a2, a0, a1<br> [0x80000734]:sd a2, 200(sp)<br>   |
|  46|[0x80004378]<br>0xFFFFF01FFFFFFFFF|- rs2_val == -17592186044417<br> - rs1_val == 137438953472<br>                                                                                                                              |[0x8000074c]:add a2, a0, a1<br> [0x80000750]:sd a2, 208(sp)<br>   |
|  47|[0x80004380]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -274877906945<br> - rs1_val == 274877906944<br>                                                                                                                                |[0x80000768]:add a2, a0, a1<br> [0x8000076c]:sd a2, 216(sp)<br>   |
|  48|[0x80004388]<br>0x0000007FFFBFFFFF|- rs2_val == -4194305<br> - rs1_val == 549755813888<br>                                                                                                                                     |[0x80000780]:add a2, a0, a1<br> [0x80000784]:sd a2, 224(sp)<br>   |
|  49|[0x80004390]<br>0x000000FEFFFFFFFF|- rs2_val == -4294967297<br> - rs1_val == 1099511627776<br>                                                                                                                                 |[0x8000079c]:add a2, a0, a1<br> [0x800007a0]:sd a2, 232(sp)<br>   |
|  50|[0x80004398]<br>0x0000060000000000|- rs2_val == 4398046511104<br> - rs1_val == 2199023255552<br>                                                                                                                               |[0x800007b4]:add a2, a0, a1<br> [0x800007b8]:sd a2, 240(sp)<br>   |
|  51|[0x800043a0]<br>0xFFF003FFFFFFFFFF|- rs2_val == -4503599627370497<br> - rs1_val == 4398046511104<br>                                                                                                                           |[0x800007d0]:add a2, a0, a1<br> [0x800007d4]:sd a2, 248(sp)<br>   |
|  52|[0x800043a8]<br>0x000007FFFFFFFFFA|- rs1_val == 8796093022208<br>                                                                                                                                                              |[0x800007e4]:add a2, a0, a1<br> [0x800007e8]:sd a2, 256(sp)<br>   |
|  53|[0x800043b0]<br>0x4000100000000000|- rs2_val == 4611686018427387904<br> - rs1_val == 17592186044416<br>                                                                                                                        |[0x800007fc]:add a2, a0, a1<br> [0x80000800]:sd a2, 264(sp)<br>   |
|  54|[0x800043b8]<br>0x0080200000000000|- rs2_val == 36028797018963968<br> - rs1_val == 35184372088832<br>                                                                                                                          |[0x80000814]:add a2, a0, a1<br> [0x80000818]:sd a2, 272(sp)<br>   |
|  55|[0x800043c0]<br>0x00003FFFFF7FFFFF|- rs1_val == 70368744177664<br>                                                                                                                                                             |[0x8000082c]:add a2, a0, a1<br> [0x80000830]:sd a2, 280(sp)<br>   |
|  56|[0x800043c8]<br>0x0002800000000000|- rs1_val == 140737488355328<br>                                                                                                                                                            |[0x80000844]:add a2, a0, a1<br> [0x80000848]:sd a2, 288(sp)<br>   |
|  57|[0x800043d0]<br>0x0001000000000010|- rs1_val == 281474976710656<br>                                                                                                                                                            |[0x80000858]:add a2, a0, a1<br> [0x8000085c]:sd a2, 296(sp)<br>   |
|  58|[0x800043d8]<br>0x0002001000000000|- rs1_val == 562949953421312<br>                                                                                                                                                            |[0x80000870]:add a2, a0, a1<br> [0x80000874]:sd a2, 304(sp)<br>   |
|  59|[0x800043e0]<br>0x0004000000000001|- rs1_val == 1125899906842624<br>                                                                                                                                                           |[0x80000884]:add a2, a0, a1<br> [0x80000888]:sd a2, 312(sp)<br>   |
|  60|[0x800043e8]<br>0x0007FEFFFFFFFFFF|- rs2_val == -1099511627777<br> - rs1_val == 2251799813685248<br>                                                                                                                           |[0x800008a0]:add a2, a0, a1<br> [0x800008a4]:sd a2, 320(sp)<br>   |
|  61|[0x800043f0]<br>0x001FFFFFFFFFFFBF|- rs2_val == -65<br>                                                                                                                                                                        |[0x800008b4]:add a2, a0, a1<br> [0x800008b8]:sd a2, 328(sp)<br>   |
|  62|[0x800043f8]<br>0x0040080000000000|- rs1_val == 18014398509481984<br>                                                                                                                                                          |[0x800008cc]:add a2, a0, a1<br> [0x800008d0]:sd a2, 336(sp)<br>   |
|  63|[0x80004400]<br>0x0080000000001000|- rs2_val == 4096<br> - rs1_val == 36028797018963968<br>                                                                                                                                    |[0x800008e0]:add a2, a0, a1<br> [0x800008e4]:sd a2, 344(sp)<br>   |
|  64|[0x80004408]<br>0x00DFFFFFFFFFFFFF|- rs1_val == 72057594037927936<br>                                                                                                                                                          |[0x800008fc]:add a2, a0, a1<br> [0x80000900]:sd a2, 352(sp)<br>   |
|  65|[0x80004410]<br>0x0200000100000000|- rs2_val == 4294967296<br> - rs1_val == 144115188075855872<br>                                                                                                                             |[0x80000914]:add a2, a0, a1<br> [0x80000918]:sd a2, 360(sp)<br>   |
|  66|[0x80004418]<br>0x03FFFDFFFFFFFFFF|- rs2_val == -2199023255553<br> - rs1_val == 288230376151711744<br>                                                                                                                         |[0x80000930]:add a2, a0, a1<br> [0x80000934]:sd a2, 368(sp)<br>   |
|  67|[0x80004420]<br>0x07FFFFFFFFFDFFFF|- rs2_val == -131073<br> - rs1_val == 576460752303423488<br>                                                                                                                                |[0x80000948]:add a2, a0, a1<br> [0x8000094c]:sd a2, 376(sp)<br>   |
|  68|[0x80004428]<br>0x0FFFFEFFFFFFFFFF|- rs1_val == 1152921504606846976<br>                                                                                                                                                        |[0x80000964]:add a2, a0, a1<br> [0x80000968]:sd a2, 384(sp)<br>   |
|  69|[0x80004430]<br>0x1FFFF7FFFFFFFFFF|- rs2_val == -8796093022209<br> - rs1_val == 2305843009213693952<br>                                                                                                                        |[0x80000980]:add a2, a0, a1<br> [0x80000984]:sd a2, 392(sp)<br>   |
|  70|[0x80004438]<br>0x3FFFFDFFFFFFFFFF|- rs1_val == 4611686018427387904<br>                                                                                                                                                        |[0x8000099c]:add a2, a0, a1<br> [0x800009a0]:sd a2, 400(sp)<br>   |
|  71|[0x80004440]<br>0x0000000000000006|- rs1_val == -3<br>                                                                                                                                                                         |[0x800009ac]:add a2, a0, a1<br> [0x800009b0]:sd a2, 408(sp)<br>   |
|  72|[0x80004448]<br>0x000000000000003B|- rs2_val == 64<br> - rs1_val == -5<br>                                                                                                                                                     |[0x800009bc]:add a2, a0, a1<br> [0x800009c0]:sd a2, 416(sp)<br>   |
|  73|[0x80004450]<br>0xFFFFFFEFFFFFFFEE|- rs2_val == -68719476737<br> - rs1_val == -17<br>                                                                                                                                          |[0x800009d4]:add a2, a0, a1<br> [0x800009d8]:sd a2, 424(sp)<br>   |
|  74|[0x80004458]<br>0xFBFFFFFFFFFFFFDE|- rs2_val == -288230376151711745<br> - rs1_val == -33<br>                                                                                                                                   |[0x800009ec]:add a2, a0, a1<br> [0x800009f0]:sd a2, 432(sp)<br>   |
|  75|[0x80004460]<br>0xFFFFFFFFFFFFFFC3|- rs2_val == 4<br> - rs1_val == -65<br>                                                                                                                                                     |[0x800009fc]:add a2, a0, a1<br> [0x80000a00]:sd a2, 440(sp)<br>   |
|  76|[0x80004468]<br>0xFDFFFFFFFFFFFF7E|- rs1_val == -129<br>                                                                                                                                                                       |[0x80000a14]:add a2, a0, a1<br> [0x80000a18]:sd a2, 448(sp)<br>   |
|  77|[0x80004470]<br>0xFFFFFFFFFFFFFCFE|- rs2_val == -513<br> - rs1_val == -257<br>                                                                                                                                                 |[0x80000a24]:add a2, a0, a1<br> [0x80000a28]:sd a2, 456(sp)<br>   |
|  78|[0x80004478]<br>0xFFFFFFFFFFFFFE07|- rs2_val == 8<br> - rs1_val == -513<br>                                                                                                                                                    |[0x80000a34]:add a2, a0, a1<br> [0x80000a38]:sd a2, 464(sp)<br>   |
|  79|[0x80004480]<br>0xFDFFFFFFFFFFFBFE|- rs1_val == -1025<br>                                                                                                                                                                      |[0x80000a4c]:add a2, a0, a1<br> [0x80000a50]:sd a2, 472(sp)<br>   |
|  80|[0x80004488]<br>0xFFFFFFFFDFFFF7FE|- rs2_val == -536870913<br> - rs1_val == -2049<br>                                                                                                                                          |[0x80000a64]:add a2, a0, a1<br> [0x80000a68]:sd a2, 480(sp)<br>   |
|  81|[0x80004490]<br>0xFF7FFFFFFFFFEFFE|- rs2_val == -36028797018963969<br> - rs1_val == -4097<br>                                                                                                                                  |[0x80000a80]:add a2, a0, a1<br> [0x80000a84]:sd a2, 488(sp)<br>   |
|  82|[0x80004498]<br>0x0000000000001FFF|- rs1_val == -8193<br>                                                                                                                                                                      |[0x80000a94]:add a2, a0, a1<br> [0x80000a98]:sd a2, 496(sp)<br>   |
|  83|[0x800044a0]<br>0xFFFBFFFFFFFEFFFE|- rs2_val == -1125899906842625<br> - rs1_val == -65537<br>                                                                                                                                  |[0x80000ab0]:add a2, a0, a1<br> [0x80000ab4]:sd a2, 504(sp)<br>   |
|  84|[0x800044a8]<br>0xFFB7FFFFFFFFFFFE|- rs2_val == -2251799813685249<br> - rs1_val == -18014398509481985<br>                                                                                                                      |[0x80000ad0]:add a2, a0, a1<br> [0x80000ad4]:sd a2, 512(sp)<br>   |
|  85|[0x800044b0]<br>0xFFC000000000003F|- rs2_val == -18014398509481985<br>                                                                                                                                                         |[0x80000ae8]:add a2, a0, a1<br> [0x80000aec]:sd a2, 520(sp)<br>   |
|  86|[0x800044b8]<br>0xF7FEFFFFFFFFFFFE|- rs2_val == -576460752303423489<br> - rs1_val == -281474976710657<br>                                                                                                                      |[0x80000b08]:add a2, a0, a1<br> [0x80000b0c]:sd a2, 528(sp)<br>   |
|  87|[0x800044c0]<br>0xC00000000000001F|- rs2_val == -4611686018427387905<br>                                                                                                                                                       |[0x80000b20]:add a2, a0, a1<br> [0x80000b24]:sd a2, 536(sp)<br>   |
|  88|[0x800044c8]<br>0x5555555555557555|- rs2_val == 6148914691236517205<br>                                                                                                                                                        |[0x80000b4c]:add a2, a0, a1<br> [0x80000b50]:sd a2, 544(sp)<br>   |
|  89|[0x800044d0]<br>0x1FFFFFFFFFFFBFFF|- rs2_val == 2305843009213693952<br> - rs1_val == -16385<br>                                                                                                                                |[0x80000b64]:add a2, a0, a1<br> [0x80000b68]:sd a2, 552(sp)<br>   |
|  90|[0x800044d8]<br>0x000000003FFF7FFF|- rs2_val == 1073741824<br> - rs1_val == -32769<br>                                                                                                                                         |[0x80000b78]:add a2, a0, a1<br> [0x80000b7c]:sd a2, 560(sp)<br>   |
|  91|[0x800044e0]<br>0xFFFFFFFFFFFE7FFF|- rs2_val == 32768<br> - rs1_val == -131073<br>                                                                                                                                             |[0x80000b8c]:add a2, a0, a1<br> [0x80000b90]:sd a2, 568(sp)<br>   |
|  92|[0x800044e8]<br>0xFFFFFFF7FFFBFFFE|- rs2_val == -34359738369<br> - rs1_val == -262145<br>                                                                                                                                      |[0x80000ba8]:add a2, a0, a1<br> [0x80000bac]:sd a2, 576(sp)<br>   |
|  93|[0x800044f0]<br>0xFFFFFFFFFF77FFFE|- rs1_val == -524289<br>                                                                                                                                                                    |[0x80000bc0]:add a2, a0, a1<br> [0x80000bc4]:sd a2, 584(sp)<br>   |
|  94|[0x800044f8]<br>0xFFFFBFFFFFEFFFFE|- rs2_val == -70368744177665<br> - rs1_val == -1048577<br>                                                                                                                                  |[0x80000bdc]:add a2, a0, a1<br> [0x80000be0]:sd a2, 592(sp)<br>   |
|  95|[0x80004500]<br>0xFFFFFFFFFFBFFFFC|- rs2_val == -3<br> - rs1_val == -4194305<br>                                                                                                                                               |[0x80000bf0]:add a2, a0, a1<br> [0x80000bf4]:sd a2, 600(sp)<br>   |
|  96|[0x80004508]<br>0xFFFFFFFFFF800001|- rs1_val == -8388609<br>                                                                                                                                                                   |[0x80000c04]:add a2, a0, a1<br> [0x80000c08]:sd a2, 608(sp)<br>   |
|  97|[0x80004510]<br>0xFFFFFFFFFDFFFFFE|- rs1_val == -16777217<br>                                                                                                                                                                  |[0x80000c1c]:add a2, a0, a1<br> [0x80000c20]:sd a2, 616(sp)<br>   |
|  98|[0x80004518]<br>0x0000001FFDFFFFFF|- rs2_val == 137438953472<br> - rs1_val == -33554433<br>                                                                                                                                    |[0x80000c34]:add a2, a0, a1<br> [0x80000c38]:sd a2, 624(sp)<br>   |
|  99|[0x80004520]<br>0x0007FFFFFBFFFFFF|- rs1_val == -67108865<br>                                                                                                                                                                  |[0x80000c4c]:add a2, a0, a1<br> [0x80000c50]:sd a2, 632(sp)<br>   |
| 100|[0x80004528]<br>0xFFFFFFFFF0000004|- rs1_val == -268435457<br>                                                                                                                                                                 |[0x80000c60]:add a2, a0, a1<br> [0x80000c64]:sd a2, 640(sp)<br>   |
| 101|[0x80004530]<br>0xFFFFFFFFE000FFFF|- rs2_val == 65536<br> - rs1_val == -536870913<br>                                                                                                                                          |[0x80000c74]:add a2, a0, a1<br> [0x80000c78]:sd a2, 648(sp)<br>   |
| 102|[0x80004538]<br>0xFFFFFFFEBFFFFFFE|- rs1_val == -1073741825<br>                                                                                                                                                                |[0x80000c90]:add a2, a0, a1<br> [0x80000c94]:sd a2, 656(sp)<br>   |
| 103|[0x80004540]<br>0xFFFFFFFF800000FF|- rs2_val == 256<br> - rs1_val == -2147483649<br>                                                                                                                                           |[0x80000ca8]:add a2, a0, a1<br> [0x80000cac]:sd a2, 664(sp)<br>   |
| 104|[0x80004548]<br>0xFFFFFFFEFFFFFEFE|- rs2_val == -257<br> - rs1_val == -4294967297<br>                                                                                                                                          |[0x80000cc0]:add a2, a0, a1<br> [0x80000cc4]:sd a2, 672(sp)<br>   |
| 105|[0x80004550]<br>0xBFFFFFFDFFFFFFFE|- rs1_val == -8589934593<br>                                                                                                                                                                |[0x80000ce0]:add a2, a0, a1<br> [0x80000ce4]:sd a2, 680(sp)<br>   |
| 106|[0x80004558]<br>0x7FFFFFFBFFFFFFFE|- rs1_val == -17179869185<br>                                                                                                                                                               |[0x80000d00]:add a2, a0, a1<br> [0x80000d04]:sd a2, 688(sp)<br>   |
| 107|[0x80004560]<br>0xFFFFFFF801FFFFFF|- rs1_val == -34359738369<br>                                                                                                                                                               |[0x80000d18]:add a2, a0, a1<br> [0x80000d1c]:sd a2, 696(sp)<br>   |
| 108|[0x80004568]<br>0xFFFF7FEFFFFFFFFE|- rs2_val == -140737488355329<br> - rs1_val == -68719476737<br>                                                                                                                             |[0x80000d38]:add a2, a0, a1<br> [0x80000d3c]:sd a2, 704(sp)<br>   |
| 109|[0x80004570]<br>0x000001DFFFFFFFFF|- rs2_val == 2199023255552<br> - rs1_val == -137438953473<br>                                                                                                                               |[0x80000d54]:add a2, a0, a1<br> [0x80000d58]:sd a2, 712(sp)<br>   |
| 110|[0x80004578]<br>0xFFFFFFBFFFFDFFFE|- rs1_val == -274877906945<br>                                                                                                                                                              |[0x80000d70]:add a2, a0, a1<br> [0x80000d74]:sd a2, 720(sp)<br>   |
| 111|[0x80004580]<br>0xFF7FFF7FFFFFFFFE|- rs1_val == -549755813889<br>                                                                                                                                                              |[0x80000d90]:add a2, a0, a1<br> [0x80000d94]:sd a2, 728(sp)<br>   |
| 112|[0x80004588]<br>0xFFDFFEFFFFFFFFFE|- rs1_val == -1099511627777<br>                                                                                                                                                             |[0x80000db0]:add a2, a0, a1<br> [0x80000db4]:sd a2, 736(sp)<br>   |
| 113|[0x80004590]<br>0x0FFFFDFFFFFFFFFF|- rs2_val == 1152921504606846976<br> - rs1_val == -2199023255553<br>                                                                                                                        |[0x80000dcc]:add a2, a0, a1<br> [0x80000dd0]:sd a2, 744(sp)<br>   |
| 114|[0x80004598]<br>0x007FFBFFFFFFFFFF|- rs1_val == -4398046511105<br>                                                                                                                                                             |[0x80000de8]:add a2, a0, a1<br> [0x80000dec]:sd a2, 752(sp)<br>   |
| 115|[0x800045a0]<br>0xFFFFF7FFFFFFFFFF|- rs1_val == -8796093022209<br>                                                                                                                                                             |[0x80000e00]:add a2, a0, a1<br> [0x80000e04]:sd a2, 760(sp)<br>   |
| 116|[0x800045a8]<br>0xFFFFEFFFFFFFFDFE|- rs1_val == -17592186044417<br>                                                                                                                                                            |[0x80000e18]:add a2, a0, a1<br> [0x80000e1c]:sd a2, 768(sp)<br>   |
| 117|[0x800045b0]<br>0xFFFFE00000000006|- rs1_val == -35184372088833<br>                                                                                                                                                            |[0x80000e30]:add a2, a0, a1<br> [0x80000e34]:sd a2, 776(sp)<br>   |
| 118|[0x800045b8]<br>0xFFFEBFFFFFFFFFFE|- rs2_val == -281474976710657<br> - rs1_val == -70368744177665<br>                                                                                                                          |[0x80000e50]:add a2, a0, a1<br> [0x80000e54]:sd a2, 784(sp)<br>   |
| 119|[0x800045c0]<br>0xFFFF80000000FFFF|- rs1_val == -140737488355329<br>                                                                                                                                                           |[0x80000e68]:add a2, a0, a1<br> [0x80000e6c]:sd a2, 792(sp)<br>   |
| 120|[0x800045c8]<br>0xFFFDFFFFFFFFEFFE|- rs2_val == -4097<br> - rs1_val == -562949953421313<br>                                                                                                                                    |[0x80000e84]:add a2, a0, a1<br> [0x80000e88]:sd a2, 800(sp)<br>   |
| 121|[0x800045d0]<br>0xFFFC00003FFFFFFF|- rs1_val == -1125899906842625<br>                                                                                                                                                          |[0x80000e9c]:add a2, a0, a1<br> [0x80000ea0]:sd a2, 808(sp)<br>   |
| 122|[0x800045d8]<br>0xF7F7FFFFFFFFFFFE|- rs1_val == -2251799813685249<br>                                                                                                                                                          |[0x80000ebc]:add a2, a0, a1<br> [0x80000ec0]:sd a2, 816(sp)<br>   |
| 123|[0x800045e0]<br>0xFFF0000007FFFFFF|- rs2_val == 134217728<br> - rs1_val == -4503599627370497<br>                                                                                                                               |[0x80000ed4]:add a2, a0, a1<br> [0x80000ed8]:sd a2, 824(sp)<br>   |
| 124|[0x800045e8]<br>0xFFE0000000000001|- rs1_val == -9007199254740993<br>                                                                                                                                                          |[0x80000eec]:add a2, a0, a1<br> [0x80000ef0]:sd a2, 832(sp)<br>   |
| 125|[0x800045f0]<br>0xFF8000000000FFFF|- rs1_val == -36028797018963969<br>                                                                                                                                                         |[0x80000f04]:add a2, a0, a1<br> [0x80000f08]:sd a2, 840(sp)<br>   |
| 126|[0x800045f8]<br>0xFEFFFFFFFFFFFFF7|- rs1_val == -72057594037927937<br>                                                                                                                                                         |[0x80000f1c]:add a2, a0, a1<br> [0x80000f20]:sd a2, 848(sp)<br>   |
| 127|[0x80004600]<br>0xFDFFFFBFFFFFFFFE|- rs1_val == -144115188075855873<br>                                                                                                                                                        |[0x80000f3c]:add a2, a0, a1<br> [0x80000f40]:sd a2, 856(sp)<br>   |
| 128|[0x80004608]<br>0xFBFFEFFFFFFFFFFE|- rs1_val == -288230376151711745<br>                                                                                                                                                        |[0x80000f5c]:add a2, a0, a1<br> [0x80000f60]:sd a2, 864(sp)<br>   |
| 129|[0x80004610]<br>0xF7FFFFFFFFFFFFF7|- rs1_val == -576460752303423489<br>                                                                                                                                                        |[0x80000f74]:add a2, a0, a1<br> [0x80000f78]:sd a2, 872(sp)<br>   |
| 130|[0x80004618]<br>0xEFFFFFFFFFFFFFFA|- rs2_val == -5<br> - rs1_val == -1152921504606846977<br>                                                                                                                                   |[0x80000f8c]:add a2, a0, a1<br> [0x80000f90]:sd a2, 880(sp)<br>   |
| 131|[0x80004620]<br>0xE0000003FFFFFFFF|- rs2_val == 17179869184<br> - rs1_val == -2305843009213693953<br>                                                                                                                          |[0x80000fa8]:add a2, a0, a1<br> [0x80000fac]:sd a2, 888(sp)<br>   |
| 132|[0x80004628]<br>0xBFDFFFFFFFFFFFFE|- rs1_val == -4611686018427387905<br>                                                                                                                                                       |[0x80000fc8]:add a2, a0, a1<br> [0x80000fcc]:sd a2, 896(sp)<br>   |
| 133|[0x80004630]<br>0x555D555555555555|- rs1_val == 6148914691236517205<br>                                                                                                                                                        |[0x80000ff8]:add a2, a0, a1<br> [0x80000ffc]:sd a2, 904(sp)<br>   |
| 134|[0x80004638]<br>0xAAAAAAAAAAAAAAA8|- rs1_val == -6148914691236517206<br>                                                                                                                                                       |[0x80001024]:add a2, a0, a1<br> [0x80001028]:sd a2, 912(sp)<br>   |
| 135|[0x80004640]<br>0x000000000000001B|- rs2_val == 32<br>                                                                                                                                                                         |[0x80001034]:add a2, a0, a1<br> [0x80001038]:sd a2, 920(sp)<br>   |
| 136|[0x80004648]<br>0x0000000000000081|- rs1_val == 1<br> - rs2_val == 128<br>                                                                                                                                                     |[0x80001044]:add a2, a0, a1<br> [0x80001048]:sd a2, 928(sp)<br>   |
| 137|[0x80004650]<br>0x0000002000000200|- rs2_val == 512<br>                                                                                                                                                                        |[0x80001058]:add a2, a0, a1<br> [0x8000105c]:sd a2, 936(sp)<br>   |
| 138|[0x80004658]<br>0xFFFFFFFFFFE003FF|- rs2_val == 1024<br>                                                                                                                                                                       |[0x8000106c]:add a2, a0, a1<br> [0x80001070]:sd a2, 944(sp)<br>   |
| 139|[0x80004660]<br>0x0000000000002800|- rs2_val == 2048<br>                                                                                                                                                                       |[0x80001080]:add a2, a0, a1<br> [0x80001084]:sd a2, 952(sp)<br>   |
| 140|[0x80004668]<br>0x0000000000202000|- rs2_val == 8192<br>                                                                                                                                                                       |[0x80001090]:add a2, a0, a1<br> [0x80001094]:sd a2, 960(sp)<br>   |
| 141|[0x80004670]<br>0x0000020000020000|- rs2_val == 131072<br>                                                                                                                                                                     |[0x800010a4]:add a2, a0, a1<br> [0x800010a8]:sd a2, 968(sp)<br>   |
| 142|[0x80004678]<br>0x000000000007BFFF|- rs2_val == 524288<br>                                                                                                                                                                     |[0x800010b8]:add a2, a0, a1<br> [0x800010bc]:sd a2, 976(sp)<br>   |
| 143|[0x80004680]<br>0x0000000000100004|- rs2_val == 1048576<br>                                                                                                                                                                    |[0x800010c8]:add a2, a0, a1<br> [0x800010cc]:sd a2, 984(sp)<br>   |
| 144|[0x80004688]<br>0x0000000000200009|- rs2_val == 2097152<br>                                                                                                                                                                    |[0x800010d8]:add a2, a0, a1<br> [0x800010dc]:sd a2, 992(sp)<br>   |
| 145|[0x80004690]<br>0x0200000000800000|- rs2_val == 8388608<br>                                                                                                                                                                    |[0x800010ec]:add a2, a0, a1<br> [0x800010f0]:sd a2, 1000(sp)<br>  |
| 146|[0x80004698]<br>0x0004000001000000|- rs2_val == 16777216<br>                                                                                                                                                                   |[0x80001100]:add a2, a0, a1<br> [0x80001104]:sd a2, 1008(sp)<br>  |
| 147|[0x800046a0]<br>0x0000000004002000|- rs2_val == 67108864<br>                                                                                                                                                                   |[0x80001110]:add a2, a0, a1<br> [0x80001114]:sd a2, 1016(sp)<br>  |
| 148|[0x800046a8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 268435456<br>                                                                                                                                                                  |[0x80001124]:add a2, a0, a1<br> [0x80001128]:sd a2, 1024(sp)<br>  |
| 149|[0x800046b0]<br>0x0000040020000000|- rs2_val == 536870912<br>                                                                                                                                                                  |[0x80001138]:add a2, a0, a1<br> [0x8000113c]:sd a2, 1032(sp)<br>  |
| 150|[0x800046b8]<br>0x000000007FFFFDFF|- rs2_val == 2147483648<br>                                                                                                                                                                 |[0x8000114c]:add a2, a0, a1<br> [0x80001150]:sd a2, 1040(sp)<br>  |
| 151|[0x800046c0]<br>0x0080000200000000|- rs2_val == 8589934592<br>                                                                                                                                                                 |[0x80001164]:add a2, a0, a1<br> [0x80001168]:sd a2, 1048(sp)<br>  |
| 152|[0x800046c8]<br>0xFFFFFE07FFFFFFFF|- rs2_val == 34359738368<br>                                                                                                                                                                |[0x80001180]:add a2, a0, a1<br> [0x80001184]:sd a2, 1056(sp)<br>  |
| 153|[0x800046d0]<br>0x0000004020000000|- rs2_val == 274877906944<br>                                                                                                                                                               |[0x80001194]:add a2, a0, a1<br> [0x80001198]:sd a2, 1064(sp)<br>  |
| 154|[0x800046d8]<br>0x0000008000020000|- rs2_val == 549755813888<br>                                                                                                                                                               |[0x800011a8]:add a2, a0, a1<br> [0x800011ac]:sd a2, 1072(sp)<br>  |
| 155|[0x800046e0]<br>0x0000210000000000|- rs2_val == 1099511627776<br>                                                                                                                                                              |[0x800011c0]:add a2, a0, a1<br> [0x800011c4]:sd a2, 1080(sp)<br>  |
| 156|[0x800046e8]<br>0x0000500000000000|- rs2_val == 17592186044416<br>                                                                                                                                                             |[0x800011d8]:add a2, a0, a1<br> [0x800011dc]:sd a2, 1088(sp)<br>  |
| 157|[0x800046f0]<br>0x0004010000000000|- rs2_val == 1125899906842624<br>                                                                                                                                                           |[0x800011f0]:add a2, a0, a1<br> [0x800011f4]:sd a2, 1096(sp)<br>  |
| 158|[0x800046f8]<br>0x00FFFFFFFDFFFFFF|- rs2_val == 72057594037927936<br>                                                                                                                                                          |[0x80001208]:add a2, a0, a1<br> [0x8000120c]:sd a2, 1104(sp)<br>  |
| 159|[0x80004700]<br>0x01FFFFFFFFFFFFDF|- rs2_val == 144115188075855872<br>                                                                                                                                                         |[0x8000121c]:add a2, a0, a1<br> [0x80001220]:sd a2, 1112(sp)<br>  |
| 160|[0x80004708]<br>0x0810000000000000|- rs2_val == 576460752303423488<br>                                                                                                                                                         |[0x80001234]:add a2, a0, a1<br> [0x80001238]:sd a2, 1120(sp)<br>  |
| 161|[0x80004710]<br>0x0000000000007FEF|- rs2_val == -17<br>                                                                                                                                                                        |[0x80001244]:add a2, a0, a1<br> [0x80001248]:sd a2, 1128(sp)<br>  |
| 162|[0x80004718]<br>0x000000000FFFFFDF|- rs2_val == -33<br>                                                                                                                                                                        |[0x80001254]:add a2, a0, a1<br> [0x80001258]:sd a2, 1136(sp)<br>  |
| 163|[0x80004720]<br>0xFFFFFF7FFFFFFF7E|- rs2_val == -129<br>                                                                                                                                                                       |[0x8000126c]:add a2, a0, a1<br> [0x80001270]:sd a2, 1144(sp)<br>  |
| 164|[0x80004728]<br>0x00003FFFFFFFFBFF|- rs2_val == -1025<br>                                                                                                                                                                      |[0x80001280]:add a2, a0, a1<br> [0x80001284]:sd a2, 1152(sp)<br>  |
| 165|[0x80004730]<br>0x000000001FFFF7FF|- rs2_val == -2049<br>                                                                                                                                                                      |[0x80001294]:add a2, a0, a1<br> [0x80001298]:sd a2, 1160(sp)<br>  |
| 166|[0x80004738]<br>0x00003FFFFFFFDFFF|- rs2_val == -8193<br>                                                                                                                                                                      |[0x800012ac]:add a2, a0, a1<br> [0x800012b0]:sd a2, 1168(sp)<br>  |
| 167|[0x80004740]<br>0xFFFFFFFFFFFFBFFF|- rs2_val == -16385<br>                                                                                                                                                                     |[0x800012c0]:add a2, a0, a1<br> [0x800012c4]:sd a2, 1176(sp)<br>  |
| 168|[0x80004748]<br>0x00000000000F7FFF|- rs2_val == -32769<br>                                                                                                                                                                     |[0x800012d4]:add a2, a0, a1<br> [0x800012d8]:sd a2, 1184(sp)<br>  |
| 169|[0x80004750]<br>0x0003FFFFFFFEFFFF|- rs2_val == -65537<br>                                                                                                                                                                     |[0x800012ec]:add a2, a0, a1<br> [0x800012f0]:sd a2, 1192(sp)<br>  |
| 170|[0x80004758]<br>0xFFFFFFFFFFFBFFFF|- rs2_val == -262145<br>                                                                                                                                                                    |[0x80001300]:add a2, a0, a1<br> [0x80001304]:sd a2, 1200(sp)<br>  |
| 171|[0x80004760]<br>0xFFFFFFFFFFF7FFF9|- rs2_val == -524289<br>                                                                                                                                                                    |[0x80001314]:add a2, a0, a1<br> [0x80001318]:sd a2, 1208(sp)<br>  |
| 172|[0x80004768]<br>0xFFFFFFFF7FEFFFFE|- rs2_val == -1048577<br>                                                                                                                                                                   |[0x80001330]:add a2, a0, a1<br> [0x80001334]:sd a2, 1216(sp)<br>  |
| 173|[0x80004770]<br>0x000000001FDFFFFF|- rs2_val == -2097153<br>                                                                                                                                                                   |[0x80001344]:add a2, a0, a1<br> [0x80001348]:sd a2, 1224(sp)<br>  |
| 174|[0x80004778]<br>0xFFFFFFFFFDEFFFFE|- rs2_val == -33554433<br>                                                                                                                                                                  |[0x8000135c]:add a2, a0, a1<br> [0x80001360]:sd a2, 1232(sp)<br>  |
| 175|[0x80004780]<br>0xFFFFFFFFF8000003|- rs2_val == -134217729<br>                                                                                                                                                                 |[0x80001370]:add a2, a0, a1<br> [0x80001374]:sd a2, 1240(sp)<br>  |
| 176|[0x80004788]<br>0x000FFFFFBFFFFFFF|- rs2_val == -1073741825<br>                                                                                                                                                                |[0x80001388]:add a2, a0, a1<br> [0x8000138c]:sd a2, 1248(sp)<br>  |
| 177|[0x80004790]<br>0xFFFFFFFF7FBFFFFE|- rs2_val == -2147483649<br>                                                                                                                                                                |[0x800013a4]:add a2, a0, a1<br> [0x800013a8]:sd a2, 1256(sp)<br>  |
| 178|[0x80004798]<br>0x00001FFFFBFFFFFF|- rs2_val == 35184372088832<br>                                                                                                                                                             |[0x800013bc]:add a2, a0, a1<br> [0x800013c0]:sd a2, 1264(sp)<br>  |
| 179|[0x800047a0]<br>0xFFFFFFFBFFFFFFEE|- rs2_val == -17179869185<br>                                                                                                                                                               |[0x800013d4]:add a2, a0, a1<br> [0x800013d8]:sd a2, 1272(sp)<br>  |
| 180|[0x800047a8]<br>0xFFFFFFDFFFFFFDFE|- rs2_val == -137438953473<br>                                                                                                                                                              |[0x800013ec]:add a2, a0, a1<br> [0x800013f0]:sd a2, 1280(sp)<br>  |
| 181|[0x800047b0]<br>0xFFFFFF80007FFFFF|- rs2_val == -549755813889<br>                                                                                                                                                              |[0x80001404]:add a2, a0, a1<br> [0x80001408]:sd a2, 1288(sp)<br>  |
| 182|[0x800047b8]<br>0xFFFFFC0000000005|- rs2_val == -4398046511105<br>                                                                                                                                                             |[0x8000141c]:add a2, a0, a1<br> [0x80001420]:sd a2, 1296(sp)<br>  |
| 183|[0x800047c0]<br>0xFFFFE0001FFFFFFF|- rs2_val == -35184372088833<br>                                                                                                                                                            |[0x80001434]:add a2, a0, a1<br> [0x80001438]:sd a2, 1304(sp)<br>  |
| 184|[0x800047c8]<br>0x0000400000002000|- rs2_val == 70368744177664<br>                                                                                                                                                             |[0x80001448]:add a2, a0, a1<br> [0x8000144c]:sd a2, 1312(sp)<br>  |
| 185|[0x800047d0]<br>0xFF807FFFFFFFFFFF|- rs2_val == 140737488355328<br>                                                                                                                                                            |[0x80001464]:add a2, a0, a1<br> [0x80001468]:sd a2, 1320(sp)<br>  |
| 186|[0x800047d8]<br>0x0001000000000004|- rs2_val == 281474976710656<br>                                                                                                                                                            |[0x80001478]:add a2, a0, a1<br> [0x8000147c]:sd a2, 1328(sp)<br>  |
| 187|[0x800047e0]<br>0xFFFDFFFFFFFFFFFB|- rs2_val == -562949953421313<br>                                                                                                                                                           |[0x80001490]:add a2, a0, a1<br> [0x80001494]:sd a2, 1336(sp)<br>  |
| 188|[0x800047e8]<br>0x7FFFFFFFFFFFFFF7|- rs1_val == (-2**(xlen-1))<br> - rs1_val == -9223372036854775808<br>                                                                                                                       |[0x800014a4]:add a2, a0, a1<br> [0x800014a8]:sd a2, 1344(sp)<br>  |
| 189|[0x80004800]<br>0xFFFFFFFFFC0007FF|- rs1_val == 2048<br>                                                                                                                                                                       |[0x800014e4]:add a2, a0, a1<br> [0x800014e8]:sd a2, 1368(sp)<br>  |
