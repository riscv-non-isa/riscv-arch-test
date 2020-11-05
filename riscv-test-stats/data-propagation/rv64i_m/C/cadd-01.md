
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001390')]      |
| SIG_REGION                | [('0x80004204', '0x800047d0', '185 dwords')]      |
| COV_LABELS                | cadd      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cadd-01.S/cadd-01.S    |
| Total Number of coverpoints| 334     |
| Total Coverpoints Hit     | 334      |
| Total Signature Updates   | 184      |
| STAT1                     | 183      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001086]:c.add a0, a1
      [0x80001088]:sd a0, 1040(tp)
 -- Signature Address: 0x800046b8 Data: 0xFFFFFFFFFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : c.add
      - rs1 : x10
      - rs2 : x11
      - rs1 != rs2
      - rs2_val > 0
      - rs2_val == 68719476736
      - rs1_val == -68719476737






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

|s.no|            signature             |                                                                  coverpoints                                                                   |                              code                              |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------|
|   1|[0x80004210]<br>0x000000000000000E|- opcode : c.add<br> - rs1 : x6<br> - rs2 : x23<br> - rs1 != rs2<br> - rs2_val > 0<br> - rs2_val == 8<br>                                       |[0x800003a0]:c.add t1, s7<br> [0x800003a2]:sd t1, 0(ra)<br>     |
|   2|[0x80004218]<br>0x0000002000000000|- rs1 : x4<br> - rs2 : x4<br> - rs1 == rs2<br> - rs2_val == 68719476736<br> - rs1_val == 68719476736<br>                                        |[0x800003ba]:c.add tp, tp<br> [0x800003bc]:sd tp, 8(ra)<br>     |
|   3|[0x80004220]<br>0x8000000000004000|- rs1 : x18<br> - rs2 : x2<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == 16384<br> - rs1_val == -9223372036854775808<br>                     |[0x800003cc]:c.add s2, sp<br> [0x800003ce]:sd s2, 16(ra)<br>    |
|   4|[0x80004228]<br>0x0000000000000002|- rs1 : x22<br> - rs2 : x27<br> - rs1_val == 0<br> - rs2_val == 2<br>                                                                           |[0x800003da]:c.add s6, s11<br> [0x800003dc]:sd s6, 24(ra)<br>   |
|   5|[0x80004230]<br>0x7FFFFFFFFFFFBFFE|- rs1 : x10<br> - rs2 : x26<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val < 0<br> - rs2_val == -16385<br> - rs1_val == 9223372036854775807<br> |[0x800003f4]:c.add a0, s10<br> [0x800003f6]:sd a0, 32(ra)<br>   |
|   6|[0x80004238]<br>0xFFFFFFFF80000000|- rs1 : x17<br> - rs2 : x13<br> - rs1_val == 1<br> - rs2_val == -2147483649<br>                                                                 |[0x8000040a]:c.add a7, a3<br> [0x8000040c]:sd a7, 40(ra)<br>    |
|   7|[0x80004240]<br>0x8000000000000001|- rs1 : x19<br> - rs2 : x20<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -9223372036854775808<br>                                           |[0x8000041c]:c.add s3, s4<br> [0x8000041e]:sd s3, 48(ra)<br>    |
|   8|[0x80004248]<br>0x0800000000000000|- rs1 : x7<br> - rs2 : x10<br> - rs2_val == 0<br> - rs1_val == 576460752303423488<br>                                                           |[0x8000042e]:c.add t2, a0<br> [0x80000430]:sd t2, 56(ra)<br>    |
|   9|[0x80004250]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x17<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 9223372036854775807<br>                                            |[0x80000448]:c.add.hint.a7<br> [0x8000044a]:sd zero, 64(ra)<br> |
|  10|[0x80004258]<br>0xFFFE000000000000|- rs1 : x20<br> - rs2 : x9<br> - rs2_val == 1<br> - rs1_val == -562949953421313<br>                                                             |[0x8000045e]:c.add s4, s1<br> [0x80000460]:sd s4, 72(ra)<br>    |
|  11|[0x80004260]<br>0xFC00000000000001|- rs1 : x15<br> - rs2 : x8<br> - rs2_val == -288230376151711745<br> - rs1_val == 2<br>                                                          |[0x80000474]:c.add a5, fp<br> [0x80000476]:sd a5, 80(ra)<br>    |
|  12|[0x80004268]<br>0x0000000200000004|- rs1 : x16<br> - rs2 : x15<br> - rs2_val == 8589934592<br> - rs1_val == 4<br>                                                                  |[0x80000486]:c.add a6, a5<br> [0x80000488]:sd a6, 88(ra)<br>    |
|  13|[0x80004270]<br>0x0000000000000010|- rs1 : x9<br> - rs2 : x5<br> - rs1_val == 8<br>                                                                                                |[0x80000494]:c.add s1, t0<br> [0x80000496]:sd s1, 96(ra)<br>    |
|  14|[0x80004278]<br>0x0008000000000010|- rs1 : x31<br> - rs2 : x29<br> - rs2_val == 2251799813685248<br> - rs1_val == 16<br>                                                           |[0x800004a6]:c.add t6, t4<br> [0x800004a8]:sd t6, 104(ra)<br>   |
|  15|[0x80004280]<br>0xF80000000000001F|- rs1 : x14<br> - rs2 : x30<br> - rs2_val == -576460752303423489<br> - rs1_val == 32<br>                                                        |[0x800004bc]:c.add a4, t5<br> [0x800004be]:sd a4, 112(ra)<br>   |
|  16|[0x80004288]<br>0xFFFFFFF00000003F|- rs1 : x11<br> - rs2 : x22<br> - rs2_val == -68719476737<br> - rs1_val == 64<br>                                                               |[0x800004d2]:c.add a1, s6<br> [0x800004d4]:sd a1, 120(ra)<br>   |
|  17|[0x80004290]<br>0x0000080000000080|- rs1 : x25<br> - rs2 : x24<br> - rs2_val == 8796093022208<br> - rs1_val == 128<br>                                                             |[0x800004e4]:c.add s9, s8<br> [0x800004e6]:sd s9, 128(ra)<br>   |
|  18|[0x80004298]<br>0x80000000000000FF|- rs1 : x13<br> - rs2 : x16<br> - rs1_val == 256<br>                                                                                            |[0x800004fa]:c.add a3, a6<br> [0x800004fc]:sd a3, 136(ra)<br>   |
|  19|[0x800042a0]<br>0xFFFFFFFFFFC001FF|- rs1 : x12<br> - rs2 : x21<br> - rs2_val == -4194305<br> - rs1_val == 512<br>                                                                  |[0x8000050c]:c.add a2, s5<br> [0x8000050e]:sd a2, 144(ra)<br>   |
|  20|[0x800042a8]<br>0xFFFFF000000003FF|- rs1 : x30<br> - rs2 : x31<br> - rs2_val == -17592186044417<br> - rs1_val == 1024<br>                                                          |[0x8000052a]:c.add t5, t6<br> [0x8000052c]:sd t5, 0(tp)<br>     |
|  21|[0x800042b0]<br>0x0000000000000801|- rs1 : x2<br> - rs2 : x19<br> - rs1_val == 2048<br>                                                                                            |[0x8000053c]:c.add sp, s3<br> [0x8000053e]:sd sp, 8(tp)<br>     |
|  22|[0x800042b8]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x23<br> - rs2 : x7<br> - rs2_val == -4097<br> - rs1_val == 4096<br>                                                                     |[0x8000054e]:c.add s7, t2<br> [0x80000550]:sd s7, 16(tp)<br>    |
|  23|[0x800042c0]<br>0xF800000000001FFF|- rs1 : x27<br> - rs2 : x14<br> - rs1_val == 8192<br>                                                                                           |[0x80000564]:c.add s11, a4<br> [0x80000566]:sd s11, 24(tp)<br>  |
|  24|[0x800042c8]<br>0x0000000000003FEF|- rs1 : x26<br> - rs2 : x12<br> - rs2_val == -17<br> - rs1_val == 16384<br>                                                                     |[0x80000572]:c.add s10, a2<br> [0x80000574]:sd s10, 32(tp)<br>  |
|  25|[0x800042d0]<br>0x0000000000007FEF|- rs1 : x5<br> - rs2 : x28<br> - rs1_val == 32768<br>                                                                                           |[0x80000580]:c.add t0, t3<br> [0x80000582]:sd t0, 40(tp)<br>    |
|  26|[0x800042d8]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x29<br> - rs2 : x3<br> - rs2_val == -65537<br> - rs1_val == 65536<br>                                                                   |[0x80000592]:c.add t4, gp<br> [0x80000594]:sd t4, 48(tp)<br>    |
|  27|[0x800042e0]<br>0xFFFFFFFF8001FFFF|- rs1 : x3<br> - rs2 : x25<br> - rs1_val == 131072<br>                                                                                          |[0x800005a8]:c.add gp, s9<br> [0x800005aa]:sd gp, 56(tp)<br>    |
|  28|[0x800042e8]<br>0x800000000003FFFF|- rs1 : x8<br> - rs2 : x1<br> - rs1_val == 262144<br>                                                                                           |[0x800005be]:c.add fp, ra<br> [0x800005c0]:sd fp, 64(tp)<br>    |
|  29|[0x800042f0]<br>0x0000080000080000|- rs1 : x24<br> - rs2 : x11<br> - rs1_val == 524288<br>                                                                                         |[0x800005d0]:c.add s8, a1<br> [0x800005d2]:sd s8, 72(tp)<br>    |
|  30|[0x800042f8]<br>0xFFFFFFF0000FFFFF|- rs1 : x1<br> - rs2 : x18<br> - rs1_val == 1048576<br>                                                                                         |[0x800005e6]:c.add ra, s2<br> [0x800005e8]:sd ra, 80(tp)<br>    |
|  31|[0x80004300]<br>0xC0000000001FFFFF|- rs1 : x21<br> - rs2 : x6<br> - rs2_val == -4611686018427387905<br> - rs1_val == 2097152<br>                                                   |[0x800005fc]:c.add s5, t1<br> [0x800005fe]:sd s5, 88(tp)<br>    |
|  32|[0x80004308]<br>0x00000000003F7FFF|- rs1 : x28<br> - rs2_val == -32769<br> - rs1_val == 4194304<br>                                                                                |[0x8000060e]:c.add t3, t1<br> [0x80000610]:sd t3, 96(tp)<br>    |
|  33|[0x80004310]<br>0x0004000000800000|- rs2_val == 1125899906842624<br> - rs1_val == 8388608<br>                                                                                      |[0x80000620]:c.add a0, a1<br> [0x80000622]:sd a0, 104(tp)<br>   |
|  34|[0x80004318]<br>0x0000000001EFFFFF|- rs2_val == -1048577<br> - rs1_val == 33554432<br>                                                                                             |[0x80000632]:c.add a0, a1<br> [0x80000634]:sd a0, 112(tp)<br>   |
|  35|[0x80004320]<br>0x0000000006000000|- rs2_val == 33554432<br> - rs1_val == 67108864<br>                                                                                             |[0x80000640]:c.add a0, a1<br> [0x80000642]:sd a0, 120(tp)<br>   |
|  36|[0x80004328]<br>0x0000000007FFFFDF|- rs2_val == -33<br> - rs1_val == 134217728<br>                                                                                                 |[0x8000064e]:c.add a0, a1<br> [0x80000650]:sd a0, 128(tp)<br>   |
|  37|[0x80004330]<br>0x0020000010000000|- rs2_val == 9007199254740992<br> - rs1_val == 268435456<br>                                                                                    |[0x80000660]:c.add a0, a1<br> [0x80000662]:sd a0, 136(tp)<br>   |
|  38|[0x80004338]<br>0x0000000020080000|- rs2_val == 524288<br> - rs1_val == 536870912<br>                                                                                              |[0x8000066e]:c.add a0, a1<br> [0x80000670]:sd a0, 144(tp)<br>   |
|  39|[0x80004340]<br>0xFFFFFFFE3FFFFFFF|- rs2_val == -8589934593<br> - rs1_val == 1073741824<br>                                                                                        |[0x80000684]:c.add a0, a1<br> [0x80000686]:sd a0, 152(tp)<br>   |
|  40|[0x80004348]<br>0x0000000080000200|- rs2_val == 512<br> - rs1_val == 2147483648<br>                                                                                                |[0x80000696]:c.add a0, a1<br> [0x80000698]:sd a0, 160(tp)<br>   |
|  41|[0x80004350]<br>0xFFFFF800FFFFFFFF|- rs2_val == -8796093022209<br> - rs1_val == 4294967296<br>                                                                                     |[0x800006b0]:c.add a0, a1<br> [0x800006b2]:sd a0, 168(tp)<br>   |
|  42|[0x80004358]<br>0x0800000200000000|- rs2_val == 576460752303423488<br> - rs1_val == 8589934592<br>                                                                                 |[0x800006c6]:c.add a0, a1<br> [0x800006c8]:sd a0, 176(tp)<br>   |
|  43|[0x80004360]<br>0x0000000408000000|- rs2_val == 134217728<br> - rs1_val == 17179869184<br>                                                                                         |[0x800006d8]:c.add a0, a1<br> [0x800006da]:sd a0, 184(tp)<br>   |
|  44|[0x80004368]<br>0x0000100800000000|- rs2_val == 17592186044416<br> - rs1_val == 34359738368<br>                                                                                    |[0x800006ee]:c.add a0, a1<br> [0x800006f0]:sd a0, 192(tp)<br>   |
|  45|[0x80004370]<br>0x0000001FBFFFFFFF|- rs2_val == -1073741825<br> - rs1_val == 137438953472<br>                                                                                      |[0x80000704]:c.add a0, a1<br> [0x80000706]:sd a0, 200(tp)<br>   |
|  46|[0x80004378]<br>0xFFFC003FFFFFFFFF|- rs2_val == -1125899906842625<br> - rs1_val == 274877906944<br>                                                                                |[0x8000071e]:c.add a0, a1<br> [0x80000720]:sd a0, 208(tp)<br>   |
|  47|[0x80004380]<br>0x0000008000000003|- rs1_val == 549755813888<br>                                                                                                                   |[0x80000730]:c.add a0, a1<br> [0x80000732]:sd a0, 216(tp)<br>   |
|  48|[0x80004388]<br>0x000000FFFFFFFFFF|- rs1_val == 1099511627776<br>                                                                                                                  |[0x80000742]:c.add a0, a1<br> [0x80000744]:sd a0, 224(tp)<br>   |
|  49|[0x80004390]<br>0x0001020000000000|- rs2_val == 281474976710656<br> - rs1_val == 2199023255552<br>                                                                                 |[0x80000758]:c.add a0, a1<br> [0x8000075a]:sd a0, 232(tp)<br>   |
|  50|[0x80004398]<br>0x000003FFFFF7FFFF|- rs2_val == -524289<br> - rs1_val == 4398046511104<br>                                                                                         |[0x8000076e]:c.add a0, a1<br> [0x80000770]:sd a0, 240(tp)<br>   |
|  51|[0x800043a0]<br>0x8000080000000000|- rs1_val == 8796093022208<br>                                                                                                                  |[0x80000784]:c.add a0, a1<br> [0x80000786]:sd a0, 248(tp)<br>   |
|  52|[0x800043a8]<br>0xF8000FFFFFFFFFFF|- rs1_val == 17592186044416<br>                                                                                                                 |[0x8000079e]:c.add a0, a1<br> [0x800007a0]:sd a0, 256(tp)<br>   |
|  53|[0x800043b0]<br>0x00001FFFBFFFFFFF|- rs1_val == 35184372088832<br>                                                                                                                 |[0x800007b4]:c.add a0, a1<br> [0x800007b6]:sd a0, 264(tp)<br>   |
|  54|[0x800043b8]<br>0x00003FFFFF7FFFFF|- rs2_val == -8388609<br> - rs1_val == 70368744177664<br>                                                                                       |[0x800007ca]:c.add a0, a1<br> [0x800007cc]:sd a0, 272(tp)<br>   |
|  55|[0x800043c0]<br>0x00007FFFDFFFFFFF|- rs2_val == -536870913<br> - rs1_val == 140737488355328<br>                                                                                    |[0x800007e0]:c.add a0, a1<br> [0x800007e2]:sd a0, 280(tp)<br>   |
|  56|[0x800043c8]<br>0x2001000000000000|- rs2_val == 2305843009213693952<br> - rs1_val == 281474976710656<br>                                                                           |[0x800007f6]:c.add a0, a1<br> [0x800007f8]:sd a0, 288(tp)<br>   |
|  57|[0x800043d0]<br>0x4002000000000000|- rs2_val == 4611686018427387904<br> - rs1_val == 562949953421312<br>                                                                           |[0x8000080c]:c.add a0, a1<br> [0x8000080e]:sd a0, 296(tp)<br>   |
|  58|[0x800043d8]<br>0x0004000040000000|- rs2_val == 1073741824<br> - rs1_val == 1125899906842624<br>                                                                                   |[0x8000081e]:c.add a0, a1<br> [0x80000820]:sd a0, 304(tp)<br>   |
|  59|[0x800043e0]<br>0x0008100000000000|- rs1_val == 2251799813685248<br>                                                                                                               |[0x80000834]:c.add a0, a1<br> [0x80000836]:sd a0, 312(tp)<br>   |
|  60|[0x800043e8]<br>0x000FFFFFFFFFFFFF|- rs1_val == 4503599627370496<br>                                                                                                               |[0x80000846]:c.add a0, a1<br> [0x80000848]:sd a0, 320(tp)<br>   |
|  61|[0x800043f0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -9007199254740993<br> - rs1_val == 9007199254740992<br>                                                                            |[0x80000860]:c.add a0, a1<br> [0x80000862]:sd a0, 328(tp)<br>   |
|  62|[0x800043f8]<br>0x003FFFFFEFFFFFFF|- rs2_val == -268435457<br> - rs1_val == 18014398509481984<br>                                                                                  |[0x80000876]:c.add a0, a1<br> [0x80000878]:sd a0, 336(tp)<br>   |
|  63|[0x80004400]<br>0x0080100000000000|- rs1_val == 36028797018963968<br>                                                                                                              |[0x8000088c]:c.add a0, a1<br> [0x8000088e]:sd a0, 344(tp)<br>   |
|  64|[0x80004408]<br>0x00FFFFFEFFFFFFFF|- rs2_val == -4294967297<br> - rs1_val == 72057594037927936<br>                                                                                 |[0x800008a6]:c.add a0, a1<br> [0x800008a8]:sd a0, 352(tp)<br>   |
|  65|[0x80004410]<br>0x01FFFFFFFFFFFFF9|- rs1_val == 144115188075855872<br>                                                                                                             |[0x800008b8]:c.add a0, a1<br> [0x800008ba]:sd a0, 360(tp)<br>   |
|  66|[0x80004418]<br>0x03FFFFFFFFFFEFFF|- rs1_val == 288230376151711744<br>                                                                                                             |[0x800008ce]:c.add a0, a1<br> [0x800008d0]:sd a0, 368(tp)<br>   |
|  67|[0x80004420]<br>0x1008000000000000|- rs1_val == 1152921504606846976<br>                                                                                                            |[0x800008e4]:c.add a0, a1<br> [0x800008e6]:sd a0, 376(tp)<br>   |
|  68|[0x80004428]<br>0x1FFFFFFFFFFFFFDF|- rs1_val == 2305843009213693952<br>                                                                                                            |[0x800008f6]:c.add a0, a1<br> [0x800008f8]:sd a0, 384(tp)<br>   |
|  69|[0x80004430]<br>0x4000000000100000|- rs2_val == 1048576<br> - rs1_val == 4611686018427387904<br>                                                                                   |[0x80000908]:c.add a0, a1<br> [0x8000090a]:sd a0, 392(tp)<br>   |
|  70|[0x80004438]<br>0xFFFF7FFFFFFFFFFD|- rs2_val == -140737488355329<br> - rs1_val == -2<br>                                                                                           |[0x8000091e]:c.add a0, a1<br> [0x80000920]:sd a0, 400(tp)<br>   |
|  71|[0x80004440]<br>0x00000000003FFFFD|- rs2_val == 4194304<br> - rs1_val == -3<br>                                                                                                    |[0x8000092c]:c.add a0, a1<br> [0x8000092e]:sd a0, 408(tp)<br>   |
|  72|[0x80004448]<br>0x0000007FFFFFFFFB|- rs2_val == 549755813888<br> - rs1_val == -5<br>                                                                                               |[0x8000093e]:c.add a0, a1<br> [0x80000940]:sd a0, 416(tp)<br>   |
|  73|[0x80004450]<br>0x007FFFFFFFFFFFF7|- rs2_val == 36028797018963968<br> - rs1_val == -9<br>                                                                                          |[0x80000950]:c.add a0, a1<br> [0x80000952]:sd a0, 424(tp)<br>   |
|  74|[0x80004458]<br>0xFFFFFFFDFFFFFFEE|- rs1_val == -17<br>                                                                                                                            |[0x80000966]:c.add a0, a1<br> [0x80000968]:sd a0, 432(tp)<br>   |
|  75|[0x80004460]<br>0x00000000000000DF|- rs2_val == 256<br> - rs1_val == -33<br>                                                                                                       |[0x80000974]:c.add a0, a1<br> [0x80000976]:sd a0, 440(tp)<br>   |
|  76|[0x80004468]<br>0x000001FFFFFFFFBF|- rs2_val == 2199023255552<br> - rs1_val == -65<br>                                                                                             |[0x80000986]:c.add a0, a1<br> [0x80000988]:sd a0, 448(tp)<br>   |
|  77|[0x80004470]<br>0x0000000000001F7F|- rs2_val == 8192<br> - rs1_val == -129<br>                                                                                                     |[0x80000994]:c.add a0, a1<br> [0x80000996]:sd a0, 456(tp)<br>   |
|  78|[0x80004478]<br>0xFFFFFFFDFFFFFEFE|- rs1_val == -257<br>                                                                                                                           |[0x800009aa]:c.add a0, a1<br> [0x800009ac]:sd a0, 464(tp)<br>   |
|  79|[0x80004480]<br>0x000000003FFFFDFF|- rs1_val == -513<br>                                                                                                                           |[0x800009b8]:c.add a0, a1<br> [0x800009ba]:sd a0, 472(tp)<br>   |
|  80|[0x80004488]<br>0x0000FFFFFFFFFBFF|- rs1_val == -1025<br>                                                                                                                          |[0x800009ca]:c.add a0, a1<br> [0x800009cc]:sd a0, 480(tp)<br>   |
|  81|[0x80004490]<br>0xFFFFFFFFFFFFF7BE|- rs2_val == -65<br> - rs1_val == -2049<br>                                                                                                     |[0x800009dc]:c.add a0, a1<br> [0x800009de]:sd a0, 488(tp)<br>   |
|  82|[0x80004498]<br>0x3FFFFFFFFFFFEFFF|- rs1_val == -4097<br>                                                                                                                          |[0x800009f2]:c.add a0, a1<br> [0x800009f4]:sd a0, 496(tp)<br>   |
|  83|[0x800044a0]<br>0xFFBFFFFFFFEFFFFE|- rs2_val == -18014398509481985<br> - rs1_val == -1048577<br>                                                                                   |[0x80000a0c]:c.add a0, a1<br> [0x80000a0e]:sd a0, 504(tp)<br>   |
|  84|[0x800044a8]<br>0xFF80000000000006|- rs2_val == -36028797018963969<br>                                                                                                             |[0x80000a22]:c.add a0, a1<br> [0x80000a24]:sd a0, 512(tp)<br>   |
|  85|[0x800044b0]<br>0xFF00000000007FFF|- rs2_val == -72057594037927937<br>                                                                                                             |[0x80000a38]:c.add a0, a1<br> [0x80000a3a]:sd a0, 520(tp)<br>   |
|  86|[0x800044b8]<br>0xFE000001FFFFFFFF|- rs2_val == -144115188075855873<br>                                                                                                            |[0x80000a52]:c.add a0, a1<br> [0x80000a54]:sd a0, 528(tp)<br>   |
|  87|[0x800044c0]<br>0xEFFDFFFFFFFFFFFE|- rs2_val == -1152921504606846977<br>                                                                                                           |[0x80000a70]:c.add a0, a1<br> [0x80000a72]:sd a0, 536(tp)<br>   |
|  88|[0x800044c8]<br>0xE0000003FFFFFFFF|- rs2_val == -2305843009213693953<br>                                                                                                           |[0x80000a8a]:c.add a0, a1<br> [0x80000a8c]:sd a0, 544(tp)<br>   |
|  89|[0x800044d0]<br>0x5555551555555554|- rs2_val == 6148914691236517205<br> - rs1_val == -274877906945<br>                                                                             |[0x80000abc]:c.add a0, a1<br> [0x80000abe]:sd a0, 552(tp)<br>   |
|  90|[0x800044d8]<br>0xAAAAAAAAAA6AAAA9|- rs2_val == -6148914691236517206<br> - rs1_val == -4194305<br>                                                                                 |[0x80000aea]:c.add a0, a1<br> [0x80000aec]:sd a0, 560(tp)<br>   |
|  91|[0x800044e0]<br>0x07FFFFFFFFFFDFFF|- rs1_val == -8193<br>                                                                                                                          |[0x80000b00]:c.add a0, a1<br> [0x80000b02]:sd a0, 568(tp)<br>   |
|  92|[0x800044e8]<br>0xFFFFFEFFFFFFBFFE|- rs2_val == -1099511627777<br> - rs1_val == -16385<br>                                                                                         |[0x80000b1a]:c.add a0, a1<br> [0x80000b1c]:sd a0, 576(tp)<br>   |
|  93|[0x800044f0]<br>0x0000000000017FFF|- rs2_val == 131072<br> - rs1_val == -32769<br>                                                                                                 |[0x80000b2c]:c.add a0, a1<br> [0x80000b2e]:sd a0, 584(tp)<br>   |
|  94|[0x800044f8]<br>0xFFFFFFFFFFFF07FF|- rs2_val == 2048<br> - rs1_val == -65537<br>                                                                                                   |[0x80000b42]:c.add a0, a1<br> [0x80000b44]:sd a0, 592(tp)<br>   |
|  95|[0x80004500]<br>0x00FFFFFFFFFDFFFF|- rs2_val == 72057594037927936<br> - rs1_val == -131073<br>                                                                                     |[0x80000b58]:c.add a0, a1<br> [0x80000b5a]:sd a0, 600(tp)<br>   |
|  96|[0x80004508]<br>0xFFFFFFFFFFFBF7FE|- rs2_val == -2049<br> - rs1_val == -262145<br>                                                                                                 |[0x80000b6e]:c.add a0, a1<br> [0x80000b70]:sd a0, 608(tp)<br>   |
|  97|[0x80004510]<br>0xFFFFFFFFFFF7FFFC|- rs2_val == -3<br> - rs1_val == -524289<br>                                                                                                    |[0x80000b80]:c.add a0, a1<br> [0x80000b82]:sd a0, 616(tp)<br>   |
|  98|[0x80004518]<br>0xFFFFFFFFFFE00005|- rs1_val == -2097153<br>                                                                                                                       |[0x80000b92]:c.add a0, a1<br> [0x80000b94]:sd a0, 624(tp)<br>   |
|  99|[0x80004520]<br>0x0FFFFFFFFF7FFFFF|- rs2_val == 1152921504606846976<br> - rs1_val == -8388609<br>                                                                                  |[0x80000ba8]:c.add a0, a1<br> [0x80000baa]:sd a0, 632(tp)<br>   |
| 100|[0x80004528]<br>0xFFFFFFFFFEFFFFFD|- rs2_val == -2<br> - rs1_val == -16777217<br>                                                                                                  |[0x80000bba]:c.add a0, a1<br> [0x80000bbc]:sd a0, 640(tp)<br>   |
| 101|[0x80004530]<br>0xFFFFFFFFFE00007F|- rs2_val == 128<br> - rs1_val == -33554433<br>                                                                                                 |[0x80000bcc]:c.add a0, a1<br> [0x80000bce]:sd a0, 648(tp)<br>   |
| 102|[0x80004538]<br>0xFFFFFFFFFC07FFFF|- rs1_val == -67108865<br>                                                                                                                      |[0x80000bde]:c.add a0, a1<br> [0x80000be0]:sd a0, 656(tp)<br>   |
| 103|[0x80004540]<br>0x07FFFFFFF7FFFFFF|- rs1_val == -134217729<br>                                                                                                                     |[0x80000bf4]:c.add a0, a1<br> [0x80000bf6]:sd a0, 664(tp)<br>   |
| 104|[0x80004548]<br>0x03FFFFFFEFFFFFFF|- rs2_val == 288230376151711744<br> - rs1_val == -268435457<br>                                                                                 |[0x80000c0a]:c.add a0, a1<br> [0x80000c0c]:sd a0, 672(tp)<br>   |
| 105|[0x80004550]<br>0xFFFFFFFFDFFFFFFA|- rs2_val == -5<br> - rs1_val == -536870913<br>                                                                                                 |[0x80000c1c]:c.add a0, a1<br> [0x80000c1e]:sd a0, 680(tp)<br>   |
| 106|[0x80004558]<br>0xFFFFFFFFCFFFFFFF|- rs2_val == 268435456<br> - rs1_val == -1073741825<br>                                                                                         |[0x80000c2e]:c.add a0, a1<br> [0x80000c30]:sd a0, 688(tp)<br>   |
| 107|[0x80004560]<br>0xFFFFFFFF800003FF|- rs2_val == 1024<br> - rs1_val == -2147483649<br>                                                                                              |[0x80000c44]:c.add a0, a1<br> [0x80000c46]:sd a0, 696(tp)<br>   |
| 108|[0x80004568]<br>0xFFFFFFFF7FFFFFFF|- rs2_val == 2147483648<br> - rs1_val == -4294967297<br>                                                                                        |[0x80000c5e]:c.add a0, a1<br> [0x80000c60]:sd a0, 704(tp)<br>   |
| 109|[0x80004570]<br>0x000000FDFFFFFFFF|- rs2_val == 1099511627776<br> - rs1_val == -8589934593<br>                                                                                     |[0x80000c78]:c.add a0, a1<br> [0x80000c7a]:sd a0, 712(tp)<br>   |
| 110|[0x80004578]<br>0xFFFBFFFBFFFFFFFE|- rs1_val == -17179869185<br>                                                                                                                   |[0x80000c96]:c.add a0, a1<br> [0x80000c98]:sd a0, 720(tp)<br>   |
| 111|[0x80004580]<br>0x000007F7FFFFFFFF|- rs1_val == -34359738369<br>                                                                                                                   |[0x80000cb0]:c.add a0, a1<br> [0x80000cb2]:sd a0, 728(tp)<br>   |
| 112|[0x80004588]<br>0x07FFFFEFFFFFFFFF|- rs1_val == -68719476737<br>                                                                                                                   |[0x80000cca]:c.add a0, a1<br> [0x80000ccc]:sd a0, 736(tp)<br>   |
| 113|[0x80004590]<br>0xFFFFFFDFFFFFEFFE|- rs1_val == -137438953473<br>                                                                                                                  |[0x80000ce4]:c.add a0, a1<br> [0x80000ce6]:sd a0, 744(tp)<br>   |
| 114|[0x80004598]<br>0xFFFFFF7FFFFFFFDE|- rs1_val == -549755813889<br>                                                                                                                  |[0x80000cfa]:c.add a0, a1<br> [0x80000cfc]:sd a0, 752(tp)<br>   |
| 115|[0x800045a0]<br>0xFFFFFEFFFFFFFFF9|- rs1_val == -1099511627777<br>                                                                                                                 |[0x80000d10]:c.add a0, a1<br> [0x80000d12]:sd a0, 760(tp)<br>   |
| 116|[0x800045a8]<br>0xFFFFFDFFFFFBFFFE|- rs2_val == -262145<br> - rs1_val == -2199023255553<br>                                                                                        |[0x80000d2a]:c.add a0, a1<br> [0x80000d2c]:sd a0, 768(tp)<br>   |
| 117|[0x800045b0]<br>0xFFFFFC000000001F|- rs2_val == 32<br> - rs1_val == -4398046511105<br>                                                                                             |[0x80000d40]:c.add a0, a1<br> [0x80000d42]:sd a0, 776(tp)<br>   |
| 118|[0x800045b8]<br>0x000077FFFFFFFFFF|- rs2_val == 140737488355328<br> - rs1_val == -8796093022209<br>                                                                                |[0x80000d5a]:c.add a0, a1<br> [0x80000d5c]:sd a0, 784(tp)<br>   |
| 119|[0x800045c0]<br>0xFFFFEFFFFF7FFFFE|- rs1_val == -17592186044417<br>                                                                                                                |[0x80000d74]:c.add a0, a1<br> [0x80000d76]:sd a0, 792(tp)<br>   |
| 120|[0x800045c8]<br>0xFFFFE000000000FF|- rs1_val == -35184372088833<br>                                                                                                                |[0x80000d8a]:c.add a0, a1<br> [0x80000d8c]:sd a0, 800(tp)<br>   |
| 121|[0x800045d0]<br>0xFFFFC7FFFFFFFFFF|- rs1_val == -70368744177665<br>                                                                                                                |[0x80000da4]:c.add a0, a1<br> [0x80000da6]:sd a0, 808(tp)<br>   |
| 122|[0x800045d8]<br>0xFFFF8000003FFFFF|- rs1_val == -140737488355329<br>                                                                                                               |[0x80000dba]:c.add a0, a1<br> [0x80000dbc]:sd a0, 816(tp)<br>   |
| 123|[0x800045e0]<br>0xFFFF0000000001FF|- rs1_val == -281474976710657<br>                                                                                                               |[0x80000dd0]:c.add a0, a1<br> [0x80000dd2]:sd a0, 824(tp)<br>   |
| 124|[0x800045e8]<br>0xFFFC00007FFFFFFF|- rs1_val == -1125899906842625<br>                                                                                                              |[0x80000dea]:c.add a0, a1<br> [0x80000dec]:sd a0, 832(tp)<br>   |
| 125|[0x800045f0]<br>0xFF7FFFFFFFFFEFFE|- rs1_val == -36028797018963969<br>                                                                                                             |[0x80000e04]:c.add a0, a1<br> [0x80000e06]:sd a0, 840(tp)<br>   |
| 126|[0x800045f8]<br>0xFEFFFFFFFFFFFBFE|- rs2_val == -1025<br> - rs1_val == -72057594037927937<br>                                                                                      |[0x80000e1a]:c.add a0, a1<br> [0x80000e1c]:sd a0, 848(tp)<br>   |
| 127|[0x80004600]<br>0xFDFFFFBFFFFFFFFE|- rs2_val == -274877906945<br> - rs1_val == -144115188075855873<br>                                                                             |[0x80000e38]:c.add a0, a1<br> [0x80000e3a]:sd a0, 856(tp)<br>   |
| 128|[0x80004608]<br>0xDBFFFFFFFFFFFFFE|- rs1_val == -288230376151711745<br>                                                                                                            |[0x80000e56]:c.add a0, a1<br> [0x80000e58]:sd a0, 864(tp)<br>   |
| 129|[0x80004610]<br>0xF7FFFF7FFFFFFFFE|- rs2_val == -549755813889<br> - rs1_val == -576460752303423489<br>                                                                             |[0x80000e74]:c.add a0, a1<br> [0x80000e76]:sd a0, 872(tp)<br>   |
| 130|[0x80004618]<br>0xEBFFFFFFFFFFFFFE|- rs1_val == -1152921504606846977<br>                                                                                                           |[0x80000e92]:c.add a0, a1<br> [0x80000e94]:sd a0, 880(tp)<br>   |
| 131|[0x80004620]<br>0xDDFFFFFFFFFFFFFE|- rs1_val == -2305843009213693953<br>                                                                                                           |[0x80000eb0]:c.add a0, a1<br> [0x80000eb2]:sd a0, 888(tp)<br>   |
| 132|[0x80004628]<br>0xBFFFFFFFFFF7FFFE|- rs1_val == -4611686018427387905<br>                                                                                                           |[0x80000eca]:c.add a0, a1<br> [0x80000ecc]:sd a0, 896(tp)<br>   |
| 133|[0x80004630]<br>0x5555555355555554|- rs1_val == 6148914691236517205<br>                                                                                                            |[0x80000efc]:c.add a0, a1<br> [0x80000efe]:sd a0, 904(tp)<br>   |
| 134|[0x80004638]<br>0xAAAAAAAAA2AAAAA9|- rs2_val == -134217729<br> - rs1_val == -6148914691236517206<br>                                                                               |[0x80000f2a]:c.add a0, a1<br> [0x80000f2c]:sd a0, 912(tp)<br>   |
| 135|[0x80004640]<br>0xFFFFFFFFC0000003|- rs2_val == 4<br>                                                                                                                              |[0x80000f3c]:c.add a0, a1<br> [0x80000f3e]:sd a0, 920(tp)<br>   |
| 136|[0x80004648]<br>0x0000000000000007|- rs2_val == 16<br>                                                                                                                             |[0x80000f4a]:c.add a0, a1<br> [0x80000f4c]:sd a0, 928(tp)<br>   |
| 137|[0x80004650]<br>0xFFFC00000000003F|- rs2_val == 64<br>                                                                                                                             |[0x80000f60]:c.add a0, a1<br> [0x80000f62]:sd a0, 936(tp)<br>   |
| 138|[0x80004658]<br>0x0004000000001000|- rs2_val == 4096<br>                                                                                                                           |[0x80000f72]:c.add a0, a1<br> [0x80000f74]:sd a0, 944(tp)<br>   |
| 139|[0x80004660]<br>0xAAAAAAAAAAAB2AAA|- rs2_val == 32768<br>                                                                                                                          |[0x80000f9c]:c.add a0, a1<br> [0x80000f9e]:sd a0, 952(tp)<br>   |
| 140|[0x80004668]<br>0x000000000000F7FF|- rs2_val == 65536<br>                                                                                                                          |[0x80000fae]:c.add a0, a1<br> [0x80000fb0]:sd a0, 960(tp)<br>   |
| 141|[0x80004670]<br>0x5555555555595555|- rs2_val == 262144<br>                                                                                                                         |[0x80000fd8]:c.add a0, a1<br> [0x80000fda]:sd a0, 968(tp)<br>   |
| 142|[0x80004678]<br>0xC000000000200000|- rs2_val == 2097152<br>                                                                                                                        |[0x80000fea]:c.add a0, a1<br> [0x80000fec]:sd a0, 976(tp)<br>   |
| 143|[0x80004680]<br>0x00000000007F7FFF|- rs2_val == 8388608<br>                                                                                                                        |[0x80000ffc]:c.add a0, a1<br> [0x80000ffe]:sd a0, 984(tp)<br>   |
| 144|[0x80004688]<br>0x0000000001000001|- rs2_val == 16777216<br>                                                                                                                       |[0x8000100a]:c.add a0, a1<br> [0x8000100c]:sd a0, 992(tp)<br>   |
| 145|[0x80004690]<br>0xFFF8000003FFFFFF|- rs2_val == 67108864<br> - rs1_val == -2251799813685249<br>                                                                                    |[0x80001020]:c.add a0, a1<br> [0x80001022]:sd a0, 1000(tp)<br>  |
| 146|[0x80004698]<br>0x0000000060000000|- rs2_val == 536870912<br>                                                                                                                      |[0x8000102e]:c.add a0, a1<br> [0x80001030]:sd a0, 1008(tp)<br>  |
| 147|[0x800046a0]<br>0x0000010100000000|- rs2_val == 4294967296<br>                                                                                                                     |[0x80001044]:c.add a0, a1<br> [0x80001046]:sd a0, 1016(tp)<br>  |
| 148|[0x800046a8]<br>0x00000003F7FFFFFF|- rs2_val == 17179869184<br>                                                                                                                    |[0x8000105a]:c.add a0, a1<br> [0x8000105c]:sd a0, 1024(tp)<br>  |
| 149|[0x800046b0]<br>0x0000000800000100|- rs2_val == 34359738368<br>                                                                                                                    |[0x8000106c]:c.add a0, a1<br> [0x8000106e]:sd a0, 1032(tp)<br>  |
| 150|[0x800046c0]<br>0x0000001FFFEFFFFF|- rs2_val == 137438953472<br>                                                                                                                   |[0x8000109c]:c.add a0, a1<br> [0x8000109e]:sd a0, 1048(tp)<br>  |
| 151|[0x800046c8]<br>0x0040000000800000|- rs2_val == 18014398509481984<br>                                                                                                              |[0x800010ae]:c.add a0, a1<br> [0x800010b0]:sd a0, 1056(tp)<br>  |
| 152|[0x800046d0]<br>0x0200000040000000|- rs2_val == 144115188075855872<br>                                                                                                             |[0x800010c0]:c.add a0, a1<br> [0x800010c2]:sd a0, 1064(tp)<br>  |
| 153|[0x800046d8]<br>0x0FFFFFFFFFFFFFF7|- rs2_val == -9<br>                                                                                                                             |[0x800010d2]:c.add a0, a1<br> [0x800010d4]:sd a0, 1072(tp)<br>  |
| 154|[0x800046e0]<br>0x0FFFFFFFFFFFFF7F|- rs2_val == -129<br>                                                                                                                           |[0x800010e4]:c.add a0, a1<br> [0x800010e6]:sd a0, 1080(tp)<br>  |
| 155|[0x800046e8]<br>0x0000000000000EFF|- rs2_val == -257<br>                                                                                                                           |[0x800010f2]:c.add a0, a1<br> [0x800010f4]:sd a0, 1088(tp)<br>  |
| 156|[0x800046f0]<br>0x0003FFFFFFFFFDFF|- rs2_val == -513<br>                                                                                                                           |[0x80001104]:c.add a0, a1<br> [0x80001106]:sd a0, 1096(tp)<br>  |
| 157|[0x800046f8]<br>0xFFF000000007FFFF|- rs2_val == -4503599627370497<br>                                                                                                              |[0x8000111a]:c.add a0, a1<br> [0x8000111c]:sd a0, 1104(tp)<br>  |
| 158|[0x80004700]<br>0xFFFFF7FFFFFFDFFE|- rs2_val == -8193<br>                                                                                                                          |[0x80001134]:c.add a0, a1<br> [0x80001136]:sd a0, 1112(tp)<br>  |
| 159|[0x80004708]<br>0xFFFFFEFFFFFDFFFE|- rs2_val == -131073<br>                                                                                                                        |[0x8000114e]:c.add a0, a1<br> [0x80001150]:sd a0, 1120(tp)<br>  |
| 160|[0x80004710]<br>0x0000200000000020|- rs2_val == 35184372088832<br>                                                                                                                 |[0x80001160]:c.add a0, a1<br> [0x80001162]:sd a0, 1128(tp)<br>  |
| 161|[0x80004718]<br>0xFFFFFFFFFFE0001F|- rs2_val == -2097153<br>                                                                                                                       |[0x80001172]:c.add a0, a1<br> [0x80001174]:sd a0, 1136(tp)<br>  |
| 162|[0x80004720]<br>0x0000420000000000|- rs2_val == 70368744177664<br>                                                                                                                 |[0x80001188]:c.add a0, a1<br> [0x8000118a]:sd a0, 1144(tp)<br>  |
| 163|[0x80004728]<br>0xFFFFFFFFFEEFFFFE|- rs2_val == -16777217<br>                                                                                                                      |[0x8000119e]:c.add a0, a1<br> [0x800011a0]:sd a0, 1152(tp)<br>  |
| 164|[0x80004730]<br>0xFFFFFFFFF5FFFFFE|- rs2_val == -33554433<br>                                                                                                                      |[0x800011b4]:c.add a0, a1<br> [0x800011b6]:sd a0, 1160(tp)<br>  |
| 165|[0x80004738]<br>0x0000007FFBFFFFFF|- rs2_val == -67108865<br>                                                                                                                      |[0x800011ca]:c.add a0, a1<br> [0x800011cc]:sd a0, 1168(tp)<br>  |
| 166|[0x80004740]<br>0xFFDFFFBFFFFFFFFE|- rs1_val == -9007199254740993<br>                                                                                                              |[0x800011e8]:c.add a0, a1<br> [0x800011ea]:sd a0, 1176(tp)<br>  |
| 167|[0x80004748]<br>0xFFFFFFFBFFFFFFFB|- rs2_val == -17179869185<br>                                                                                                                   |[0x800011fe]:c.add a0, a1<br> [0x80001200]:sd a0, 1184(tp)<br>  |
| 168|[0x80004750]<br>0xFFFFFFF800000008|- rs2_val == -34359738369<br>                                                                                                                   |[0x80001214]:c.add a0, a1<br> [0x80001216]:sd a0, 1192(tp)<br>  |
| 169|[0x80004758]<br>0xFFFFFFDFFFFF7FFE|- rs2_val == -137438953473<br>                                                                                                                  |[0x8000122e]:c.add a0, a1<br> [0x80001230]:sd a0, 1200(tp)<br>  |
| 170|[0x80004760]<br>0x2002000000000000|- rs2_val == 562949953421312<br>                                                                                                                |[0x80001244]:c.add a0, a1<br> [0x80001246]:sd a0, 1208(tp)<br>  |
| 171|[0x80004768]<br>0x0000004040000000|- rs2_val == 274877906944<br>                                                                                                                   |[0x80001256]:c.add a0, a1<br> [0x80001258]:sd a0, 1216(tp)<br>  |
| 172|[0x80004770]<br>0x0000040000020000|- rs2_val == 4398046511104<br>                                                                                                                  |[0x80001268]:c.add a0, a1<br> [0x8000126a]:sd a0, 1224(tp)<br>  |
| 173|[0x80004778]<br>0x003FFBFFFFFFFFFF|- rs2_val == -4398046511105<br>                                                                                                                 |[0x80001282]:c.add a0, a1<br> [0x80001284]:sd a0, 1232(tp)<br>  |
| 174|[0x80004780]<br>0xFEFFDFFFFFFFFFFE|- rs2_val == -35184372088833<br>                                                                                                                |[0x800012a0]:c.add a0, a1<br> [0x800012a2]:sd a0, 1240(tp)<br>  |
| 175|[0x80004788]<br>0xFFF000FFFFFFFFFF|- rs1_val == -4503599627370497<br>                                                                                                              |[0x800012ba]:c.add a0, a1<br> [0x800012bc]:sd a0, 1248(tp)<br>  |
| 176|[0x80004790]<br>0xFFFFC001FFFFFFFF|- rs2_val == -70368744177665<br>                                                                                                                |[0x800012d4]:c.add a0, a1<br> [0x800012d6]:sd a0, 1256(tp)<br>  |
| 177|[0x80004798]<br>0xFFFEFFFFFFFFFFFA|- rs2_val == -281474976710657<br>                                                                                                               |[0x800012ea]:c.add a0, a1<br> [0x800012ec]:sd a0, 1264(tp)<br>  |
| 178|[0x800047a0]<br>0xFFFE000000000006|- rs2_val == -562949953421313<br>                                                                                                               |[0x80001300]:c.add a0, a1<br> [0x80001302]:sd a0, 1272(tp)<br>  |
| 179|[0x800047a8]<br>0xF7F7FFFFFFFFFFFE|- rs2_val == -2251799813685249<br>                                                                                                              |[0x8000131e]:c.add a0, a1<br> [0x80001320]:sd a0, 1280(tp)<br>  |
| 180|[0x800047b0]<br>0x000FFFEFFFFFFFFF|- rs2_val == 4503599627370496<br>                                                                                                               |[0x80001338]:c.add a0, a1<br> [0x8000133a]:sd a0, 1288(tp)<br>  |
| 181|[0x800047b8]<br>0xFF9FFFFFFFFFFFFE|- rs1_val == -18014398509481985<br>                                                                                                             |[0x80001356]:c.add a0, a1<br> [0x80001358]:sd a0, 1296(tp)<br>  |
| 182|[0x800047c0]<br>0xFFFFFE0FFFFFFFFF|- rs2_val == -2199023255553<br>                                                                                                                 |[0x80001370]:c.add a0, a1<br> [0x80001372]:sd a0, 1304(tp)<br>  |
| 183|[0x800047c8]<br>0x8000000000FFFFFF|- rs1_val == 16777216<br>                                                                                                                       |[0x80001386]:c.add a0, a1<br> [0x80001388]:sd a0, 1312(tp)<br>  |
