
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000c50')]      |
| SIG_REGION                | [('0x80002010', '0x800024c0', '150 dwords')]      |
| COV_LABELS                | cmv      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cmv-01.S/cmv-01.S    |
| Total Number of coverpoints| 221     |
| Total Coverpoints Hit     | 221      |
| Total Signature Updates   | 149      |
| STAT1                     | 148      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c3c]:c.mv a0, a1
      [0x80000c3e]:sd a0, 1032(sp)
 -- Signature Address: 0x800024b0 Data: 0x0000000000000010
 -- Redundant Coverpoints hit by the op
      - opcode : c.mv
      - rs2 : x11
      - rd : x10
      - rs2 != rd and rs2 != 0
      - rs2_val == 16






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

|s.no|            signature             |                                                                     coverpoints                                                                      |                             code                              |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------|
|   1|[0x80002010]<br>0x8000000000000000|- opcode : c.mv<br> - rs2 : x21<br> - rd : x21<br> - rs2 == rd and rs2 != 0<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -9223372036854775808<br> |[0x800003a0]:c.mv s5, s5<br> [0x800003a2]:sd s5, 0(s7)<br>     |
|   2|[0x80002018]<br>0x0000000000000000|- rs2 : x2<br> - rd : x8<br> - rs2 != rd and rs2 != 0<br> - rs2_val == 0<br> - rs2_val==0<br>                                                         |[0x800003aa]:c.mv fp, sp<br> [0x800003ac]:sd fp, 8(s7)<br>     |
|   3|[0x80002020]<br>0x7FFFFFFFFFFFFFFF|- rs2 : x15<br> - rd : x16<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 9223372036854775807<br>                                                  |[0x800003bc]:c.mv a6, a5<br> [0x800003be]:sd a6, 16(s7)<br>    |
|   4|[0x80002028]<br>0x0000000000000001|- rs2 : x17<br> - rd : x26<br> - rs2_val == 1<br>                                                                                                     |[0x800003c6]:c.mv s10, a7<br> [0x800003c8]:sd s10, 24(s7)<br>  |
|   5|[0x80002030]<br>0x0000000000000002|- rs2 : x20<br> - rd : x7<br> - rs2_val == 2<br> - rs2_val==2<br>                                                                                     |[0x800003d0]:c.mv t2, s4<br> [0x800003d2]:sd t2, 32(s7)<br>    |
|   6|[0x80002038]<br>0x0000000000000004|- rs2 : x19<br> - rd : x6<br> - rs2_val == 4<br> - rs2_val==4<br>                                                                                     |[0x800003da]:c.mv t1, s3<br> [0x800003dc]:sd t1, 40(s7)<br>    |
|   7|[0x80002040]<br>0x0000000000000008|- rs2 : x10<br> - rd : x25<br> - rs2_val == 8<br>                                                                                                     |[0x800003e4]:c.mv s9, a0<br> [0x800003e6]:sd s9, 48(s7)<br>    |
|   8|[0x80002048]<br>0x0000000000000000|- rs2 : x12<br> - rd : x0<br> - rs2_val == 16<br>                                                                                                     |[0x800003ee]:c.mv.hint.a2<br> [0x800003f0]:sd zero, 56(s7)<br> |
|   9|[0x80002050]<br>0x0000000000000020|- rs2 : x3<br> - rd : x13<br> - rs2_val == 32<br>                                                                                                     |[0x800003f8]:c.mv a3, gp<br> [0x800003fa]:sd a3, 64(s7)<br>    |
|  10|[0x80002058]<br>0x0000000000000040|- rs2 : x18<br> - rd : x27<br> - rs2_val == 64<br>                                                                                                    |[0x80000402]:c.mv s11, s2<br> [0x80000404]:sd s11, 72(s7)<br>  |
|  11|[0x80002060]<br>0x0000000000000080|- rs2 : x26<br> - rd : x2<br> - rs2_val == 128<br>                                                                                                    |[0x8000040c]:c.mv sp, s10<br> [0x8000040e]:sd sp, 80(s7)<br>   |
|  12|[0x80002068]<br>0x0000000000000100|- rs2 : x4<br> - rd : x22<br> - rs2_val == 256<br>                                                                                                    |[0x80000416]:c.mv s6, tp<br> [0x80000418]:sd s6, 88(s7)<br>    |
|  13|[0x80002070]<br>0x0000000000000200|- rs2 : x13<br> - rd : x12<br> - rs2_val == 512<br>                                                                                                   |[0x80000420]:c.mv a2, a3<br> [0x80000422]:sd a2, 96(s7)<br>    |
|  14|[0x80002078]<br>0x0000000000000400|- rs2 : x1<br> - rd : x5<br> - rs2_val == 1024<br>                                                                                                    |[0x8000042a]:c.mv t0, ra<br> [0x8000042c]:sd t0, 104(s7)<br>   |
|  15|[0x80002080]<br>0x0000000000000800|- rs2 : x25<br> - rd : x17<br> - rs2_val == 2048<br>                                                                                                  |[0x80000438]:c.mv a7, s9<br> [0x8000043a]:sd a7, 112(s7)<br>   |
|  16|[0x80002088]<br>0x0000000000001000|- rs2 : x31<br> - rd : x3<br> - rs2_val == 4096<br>                                                                                                   |[0x80000442]:c.mv gp, t6<br> [0x80000444]:sd gp, 120(s7)<br>   |
|  17|[0x80002090]<br>0x0000000000002000|- rs2 : x29<br> - rd : x14<br> - rs2_val == 8192<br>                                                                                                  |[0x8000044c]:c.mv a4, t4<br> [0x8000044e]:sd a4, 128(s7)<br>   |
|  18|[0x80002098]<br>0x0000000000004000|- rs2 : x24<br> - rd : x9<br> - rs2_val == 16384<br>                                                                                                  |[0x80000456]:c.mv s1, s8<br> [0x80000458]:sd s1, 136(s7)<br>   |
|  19|[0x800020a0]<br>0x0000000000008000|- rs2 : x11<br> - rd : x29<br> - rs2_val == 32768<br>                                                                                                 |[0x80000460]:c.mv t4, a1<br> [0x80000462]:sd t4, 144(s7)<br>   |
|  20|[0x800020a8]<br>0x0000000000010000|- rs2 : x16<br> - rd : x15<br> - rs2_val == 65536<br>                                                                                                 |[0x80000472]:c.mv a5, a6<br> [0x80000474]:c.sdsp a5, 0<br>     |
|  21|[0x800020b0]<br>0x0000000000020000|- rs2 : x22<br> - rd : x30<br> - rs2_val == 131072<br>                                                                                                |[0x8000047a]:c.mv t5, s6<br> [0x8000047c]:c.sdsp t5, 1<br>     |
|  22|[0x800020b8]<br>0x0000000000040000|- rs2 : x5<br> - rd : x4<br> - rs2_val == 262144<br>                                                                                                  |[0x80000482]:c.mv tp, t0<br> [0x80000484]:c.sdsp tp, 2<br>     |
|  23|[0x800020c0]<br>0x0000000000080000|- rs2 : x6<br> - rd : x1<br> - rs2_val == 524288<br>                                                                                                  |[0x8000048a]:c.mv ra, t1<br> [0x8000048c]:c.sdsp ra, 3<br>     |
|  24|[0x800020c8]<br>0x0000000000100000|- rs2 : x28<br> - rd : x24<br> - rs2_val == 1048576<br>                                                                                               |[0x80000492]:c.mv s8, t3<br> [0x80000494]:c.sdsp s8, 4<br>     |
|  25|[0x800020d0]<br>0x0000000000200000|- rs2 : x30<br> - rd : x23<br> - rs2_val == 2097152<br>                                                                                               |[0x8000049a]:c.mv s7, t5<br> [0x8000049c]:c.sdsp s7, 5<br>     |
|  26|[0x800020d8]<br>0x0000000000400000|- rs2 : x23<br> - rd : x28<br> - rs2_val == 4194304<br>                                                                                               |[0x800004a2]:c.mv t3, s7<br> [0x800004a4]:c.sdsp t3, 6<br>     |
|  27|[0x800020e0]<br>0x0000000000800000|- rs2 : x8<br> - rd : x31<br> - rs2_val == 8388608<br>                                                                                                |[0x800004aa]:c.mv t6, fp<br> [0x800004ac]:c.sdsp t6, 7<br>     |
|  28|[0x800020e8]<br>0x0000000001000000|- rs2 : x14<br> - rd : x11<br> - rs2_val == 16777216<br>                                                                                              |[0x800004b2]:c.mv a1, a4<br> [0x800004b4]:c.sdsp a1, 8<br>     |
|  29|[0x800020f0]<br>0x0000000002000000|- rs2 : x7<br> - rd : x10<br> - rs2_val == 33554432<br>                                                                                               |[0x800004ba]:c.mv a0, t2<br> [0x800004bc]:c.sdsp a0, 9<br>     |
|  30|[0x800020f8]<br>0x0000000004000000|- rs2 : x9<br> - rd : x19<br> - rs2_val == 67108864<br>                                                                                               |[0x800004c2]:c.mv s3, s1<br> [0x800004c4]:c.sdsp s3, 10<br>    |
|  31|[0x80002100]<br>0x0000000008000000|- rs2 : x27<br> - rd : x20<br> - rs2_val == 134217728<br>                                                                                             |[0x800004ca]:c.mv s4, s11<br> [0x800004cc]:c.sdsp s4, 11<br>   |
|  32|[0x80002108]<br>0x0000000010000000|- rd : x18<br> - rs2_val == 268435456<br>                                                                                                             |[0x800004d2]:c.mv s2, s9<br> [0x800004d4]:c.sdsp s2, 12<br>    |
|  33|[0x80002110]<br>0x0000000020000000|- rs2_val == 536870912<br>                                                                                                                            |[0x800004da]:c.mv a0, a1<br> [0x800004dc]:c.sdsp a0, 13<br>    |
|  34|[0x80002118]<br>0x0000000040000000|- rs2_val == 1073741824<br>                                                                                                                           |[0x800004e2]:c.mv a0, a1<br> [0x800004e4]:c.sdsp a0, 14<br>    |
|  35|[0x80002120]<br>0x0000000080000000|- rs2_val == 2147483648<br>                                                                                                                           |[0x800004ee]:c.mv a0, a1<br> [0x800004f0]:c.sdsp a0, 15<br>    |
|  36|[0x80002128]<br>0x0000000100000000|- rs2_val == 4294967296<br>                                                                                                                           |[0x800004fa]:c.mv a0, a1<br> [0x800004fc]:c.sdsp a0, 16<br>    |
|  37|[0x80002130]<br>0x0000000200000000|- rs2_val == 8589934592<br>                                                                                                                           |[0x80000506]:c.mv a0, a1<br> [0x80000508]:c.sdsp a0, 17<br>    |
|  38|[0x80002138]<br>0x0000000400000000|- rs2_val == 17179869184<br>                                                                                                                          |[0x80000512]:c.mv a0, a1<br> [0x80000514]:c.sdsp a0, 18<br>    |
|  39|[0x80002140]<br>0x0000000800000000|- rs2_val == 34359738368<br>                                                                                                                          |[0x8000051e]:c.mv a0, a1<br> [0x80000520]:c.sdsp a0, 19<br>    |
|  40|[0x80002148]<br>0x0000001000000000|- rs2_val == 68719476736<br>                                                                                                                          |[0x8000052a]:c.mv a0, a1<br> [0x8000052c]:c.sdsp a0, 20<br>    |
|  41|[0x80002150]<br>0x0000002000000000|- rs2_val == 137438953472<br>                                                                                                                         |[0x80000536]:c.mv a0, a1<br> [0x80000538]:c.sdsp a0, 21<br>    |
|  42|[0x80002158]<br>0x0000004000000000|- rs2_val == 274877906944<br>                                                                                                                         |[0x80000542]:c.mv a0, a1<br> [0x80000544]:c.sdsp a0, 22<br>    |
|  43|[0x80002160]<br>0x0000008000000000|- rs2_val == 549755813888<br>                                                                                                                         |[0x8000054e]:c.mv a0, a1<br> [0x80000550]:c.sdsp a0, 23<br>    |
|  44|[0x80002168]<br>0x0000010000000000|- rs2_val == 1099511627776<br>                                                                                                                        |[0x8000055a]:c.mv a0, a1<br> [0x8000055c]:c.sdsp a0, 24<br>    |
|  45|[0x80002170]<br>0x0000020000000000|- rs2_val == 2199023255552<br>                                                                                                                        |[0x80000566]:c.mv a0, a1<br> [0x80000568]:c.sdsp a0, 25<br>    |
|  46|[0x80002178]<br>0x0000040000000000|- rs2_val == 4398046511104<br>                                                                                                                        |[0x80000572]:c.mv a0, a1<br> [0x80000574]:c.sdsp a0, 26<br>    |
|  47|[0x80002180]<br>0x0000080000000000|- rs2_val == 8796093022208<br>                                                                                                                        |[0x8000057e]:c.mv a0, a1<br> [0x80000580]:c.sdsp a0, 27<br>    |
|  48|[0x80002188]<br>0x0000100000000000|- rs2_val == 17592186044416<br>                                                                                                                       |[0x8000058a]:c.mv a0, a1<br> [0x8000058c]:c.sdsp a0, 28<br>    |
|  49|[0x80002190]<br>0x0000200000000000|- rs2_val == 35184372088832<br>                                                                                                                       |[0x80000596]:c.mv a0, a1<br> [0x80000598]:c.sdsp a0, 29<br>    |
|  50|[0x80002198]<br>0x0000400000000000|- rs2_val == 70368744177664<br>                                                                                                                       |[0x800005a2]:c.mv a0, a1<br> [0x800005a4]:c.sdsp a0, 30<br>    |
|  51|[0x800021a0]<br>0x0000800000000000|- rs2_val == 140737488355328<br>                                                                                                                      |[0x800005ae]:c.mv a0, a1<br> [0x800005b0]:c.sdsp a0, 31<br>    |
|  52|[0x800021a8]<br>0x0001000000000000|- rs2_val == 281474976710656<br>                                                                                                                      |[0x800005ba]:c.mv a0, a1<br> [0x800005bc]:c.sdsp a0, 32<br>    |
|  53|[0x800021b0]<br>0x0002000000000000|- rs2_val == 562949953421312<br>                                                                                                                      |[0x800005c6]:c.mv a0, a1<br> [0x800005c8]:c.sdsp a0, 33<br>    |
|  54|[0x800021b8]<br>0x0004000000000000|- rs2_val == 1125899906842624<br>                                                                                                                     |[0x800005d2]:c.mv a0, a1<br> [0x800005d4]:c.sdsp a0, 34<br>    |
|  55|[0x800021c0]<br>0x0008000000000000|- rs2_val == 2251799813685248<br>                                                                                                                     |[0x800005de]:c.mv a0, a1<br> [0x800005e0]:c.sdsp a0, 35<br>    |
|  56|[0x800021c8]<br>0x0010000000000000|- rs2_val == 4503599627370496<br>                                                                                                                     |[0x800005ea]:c.mv a0, a1<br> [0x800005ec]:c.sdsp a0, 36<br>    |
|  57|[0x800021d0]<br>0x0020000000000000|- rs2_val == 9007199254740992<br>                                                                                                                     |[0x800005f6]:c.mv a0, a1<br> [0x800005f8]:c.sdsp a0, 37<br>    |
|  58|[0x800021d8]<br>0x0040000000000000|- rs2_val == 18014398509481984<br>                                                                                                                    |[0x80000602]:c.mv a0, a1<br> [0x80000604]:c.sdsp a0, 38<br>    |
|  59|[0x800021e0]<br>0x0080000000000000|- rs2_val == 36028797018963968<br>                                                                                                                    |[0x8000060e]:c.mv a0, a1<br> [0x80000610]:c.sdsp a0, 39<br>    |
|  60|[0x800021e8]<br>0x0100000000000000|- rs2_val == 72057594037927936<br>                                                                                                                    |[0x8000061a]:c.mv a0, a1<br> [0x8000061c]:c.sdsp a0, 40<br>    |
|  61|[0x800021f0]<br>0x0200000000000000|- rs2_val == 144115188075855872<br>                                                                                                                   |[0x80000626]:c.mv a0, a1<br> [0x80000628]:c.sdsp a0, 41<br>    |
|  62|[0x800021f8]<br>0x0400000000000000|- rs2_val == 288230376151711744<br>                                                                                                                   |[0x80000632]:c.mv a0, a1<br> [0x80000634]:c.sdsp a0, 42<br>    |
|  63|[0x80002200]<br>0x0800000000000000|- rs2_val == 576460752303423488<br>                                                                                                                   |[0x8000063e]:c.mv a0, a1<br> [0x80000640]:c.sdsp a0, 43<br>    |
|  64|[0x80002208]<br>0x1000000000000000|- rs2_val == 1152921504606846976<br>                                                                                                                  |[0x8000064a]:c.mv a0, a1<br> [0x8000064c]:c.sdsp a0, 44<br>    |
|  65|[0x80002210]<br>0x2000000000000000|- rs2_val == 2305843009213693952<br>                                                                                                                  |[0x80000656]:c.mv a0, a1<br> [0x80000658]:c.sdsp a0, 45<br>    |
|  66|[0x80002218]<br>0x4000000000000000|- rs2_val == 4611686018427387904<br>                                                                                                                  |[0x80000662]:c.mv a0, a1<br> [0x80000664]:c.sdsp a0, 46<br>    |
|  67|[0x80002220]<br>0xFFFFFFFFFFFFFFFE|- rs2_val == -2<br>                                                                                                                                   |[0x8000066a]:c.mv a0, a1<br> [0x8000066c]:c.sdsp a0, 47<br>    |
|  68|[0x80002228]<br>0xFFFFFFFFFFFFFFFD|- rs2_val == -3<br>                                                                                                                                   |[0x80000672]:c.mv a0, a1<br> [0x80000674]:c.sdsp a0, 48<br>    |
|  69|[0x80002230]<br>0xFFFFFFFFFFFFFFFB|- rs2_val == -5<br>                                                                                                                                   |[0x8000067a]:c.mv a0, a1<br> [0x8000067c]:c.sdsp a0, 49<br>    |
|  70|[0x80002238]<br>0xFFFFFFFFFFFFFFF7|- rs2_val == -9<br>                                                                                                                                   |[0x80000682]:c.mv a0, a1<br> [0x80000684]:c.sdsp a0, 50<br>    |
|  71|[0x80002240]<br>0xFFFFFFFFFFFFFFEF|- rs2_val == -17<br>                                                                                                                                  |[0x8000068a]:c.mv a0, a1<br> [0x8000068c]:c.sdsp a0, 51<br>    |
|  72|[0x80002248]<br>0xFFFFFFFFFFFFFFDF|- rs2_val == -33<br>                                                                                                                                  |[0x80000692]:c.mv a0, a1<br> [0x80000694]:c.sdsp a0, 52<br>    |
|  73|[0x80002250]<br>0xFFFFFFFFFFFFFFBF|- rs2_val == -65<br>                                                                                                                                  |[0x8000069a]:c.mv a0, a1<br> [0x8000069c]:c.sdsp a0, 53<br>    |
|  74|[0x80002258]<br>0xFFFFFFFFFFFFFF7F|- rs2_val == -129<br>                                                                                                                                 |[0x800006a2]:c.mv a0, a1<br> [0x800006a4]:c.sdsp a0, 54<br>    |
|  75|[0x80002260]<br>0xFFFFFFFFFFFFFEFF|- rs2_val == -257<br>                                                                                                                                 |[0x800006aa]:c.mv a0, a1<br> [0x800006ac]:c.sdsp a0, 55<br>    |
|  76|[0x80002268]<br>0xFFFFFFFFFFFFFDFF|- rs2_val == -513<br>                                                                                                                                 |[0x800006b2]:c.mv a0, a1<br> [0x800006b4]:c.sdsp a0, 56<br>    |
|  77|[0x80002270]<br>0xFFFFFFFFFFFFFBFF|- rs2_val == -1025<br>                                                                                                                                |[0x800006ba]:c.mv a0, a1<br> [0x800006bc]:c.sdsp a0, 57<br>    |
|  78|[0x80002278]<br>0xFFFFFFFFFFFFF7FF|- rs2_val == -2049<br>                                                                                                                                |[0x800006c6]:c.mv a0, a1<br> [0x800006c8]:c.sdsp a0, 58<br>    |
|  79|[0x80002280]<br>0xFFFFFFFFFFFFEFFF|- rs2_val == -4097<br>                                                                                                                                |[0x800006d2]:c.mv a0, a1<br> [0x800006d4]:c.sdsp a0, 59<br>    |
|  80|[0x80002288]<br>0xFFFFFFFFFFFFDFFF|- rs2_val == -8193<br>                                                                                                                                |[0x800006de]:c.mv a0, a1<br> [0x800006e0]:c.sdsp a0, 60<br>    |
|  81|[0x80002290]<br>0xFFFFFFFFFFFFBFFF|- rs2_val == -16385<br>                                                                                                                               |[0x800006ea]:c.mv a0, a1<br> [0x800006ec]:c.sdsp a0, 61<br>    |
|  82|[0x80002298]<br>0xFFFFFFFFFFFF7FFF|- rs2_val == -32769<br>                                                                                                                               |[0x800006f6]:c.mv a0, a1<br> [0x800006f8]:c.sdsp a0, 62<br>    |
|  83|[0x800022a0]<br>0xFFFFFFFFFFFEFFFF|- rs2_val == -65537<br>                                                                                                                               |[0x80000702]:c.mv a0, a1<br> [0x80000704]:c.sdsp a0, 63<br>    |
|  84|[0x800022a8]<br>0xFFFFFFFFFFFDFFFF|- rs2_val == -131073<br>                                                                                                                              |[0x8000070e]:c.mv a0, a1<br> [0x80000710]:sd a0, 512(sp)<br>   |
|  85|[0x800022b0]<br>0xFFFFFFFFFFFBFFFF|- rs2_val == -262145<br>                                                                                                                              |[0x8000071c]:c.mv a0, a1<br> [0x8000071e]:sd a0, 520(sp)<br>   |
|  86|[0x800022b8]<br>0xFFFFFFFFFFF7FFFF|- rs2_val == -524289<br>                                                                                                                              |[0x8000072a]:c.mv a0, a1<br> [0x8000072c]:sd a0, 528(sp)<br>   |
|  87|[0x800022c0]<br>0xFFFFFFFFFFEFFFFF|- rs2_val == -1048577<br>                                                                                                                             |[0x80000738]:c.mv a0, a1<br> [0x8000073a]:sd a0, 536(sp)<br>   |
|  88|[0x800022c8]<br>0xDFFFFFFFFFFFFFFF|- rs2_val == -2305843009213693953<br>                                                                                                                 |[0x8000074a]:c.mv a0, a1<br> [0x8000074c]:sd a0, 544(sp)<br>   |
|  89|[0x800022d0]<br>0xBFFFFFFFFFFFFFFF|- rs2_val == -4611686018427387905<br>                                                                                                                 |[0x8000075c]:c.mv a0, a1<br> [0x8000075e]:sd a0, 552(sp)<br>   |
|  90|[0x800022d8]<br>0x5555555555555555|- rs2_val == 6148914691236517205<br> - rs2_val==6148914691236517205<br>                                                                               |[0x80000782]:c.mv a0, a1<br> [0x80000784]:sd a0, 560(sp)<br>   |
|  91|[0x800022e0]<br>0xAAAAAAAAAAAAAAAA|- rs2_val == -6148914691236517206<br> - rs2_val==-6148914691236517206<br>                                                                             |[0x800007a8]:c.mv a0, a1<br> [0x800007aa]:sd a0, 568(sp)<br>   |
|  92|[0x800022e8]<br>0x0000000000000003|- rs2_val==3<br>                                                                                                                                      |[0x800007b2]:c.mv a0, a1<br> [0x800007b4]:sd a0, 576(sp)<br>   |
|  93|[0x800022f0]<br>0x0000000000000005|- rs2_val==5<br>                                                                                                                                      |[0x800007bc]:c.mv a0, a1<br> [0x800007be]:sd a0, 584(sp)<br>   |
|  94|[0x800022f8]<br>0x3333333333333333|- rs2_val==3689348814741910323<br>                                                                                                                    |[0x800007e2]:c.mv a0, a1<br> [0x800007e4]:sd a0, 592(sp)<br>   |
|  95|[0x80002300]<br>0x6666666666666666|- rs2_val==7378697629483820646<br>                                                                                                                    |[0x80000808]:c.mv a0, a1<br> [0x8000080a]:sd a0, 600(sp)<br>   |
|  96|[0x80002308]<br>0xFFFFFFFF4AFB0CCD|- rs2_val==-3037000499<br>                                                                                                                            |[0x8000081e]:c.mv a0, a1<br> [0x80000820]:sd a0, 608(sp)<br>   |
|  97|[0x80002310]<br>0x00000000B504F333|- rs2_val==3037000499<br>                                                                                                                             |[0x80000834]:c.mv a0, a1<br> [0x80000836]:sd a0, 616(sp)<br>   |
|  98|[0x80002318]<br>0x5555555555555554|- rs2_val==6148914691236517204<br>                                                                                                                    |[0x8000085a]:c.mv a0, a1<br> [0x8000085c]:sd a0, 624(sp)<br>   |
|  99|[0x80002320]<br>0x3333333333333332|- rs2_val==3689348814741910322<br>                                                                                                                    |[0x80000880]:c.mv a0, a1<br> [0x80000882]:sd a0, 632(sp)<br>   |
| 100|[0x80002328]<br>0x6666666666666665|- rs2_val==7378697629483820645<br>                                                                                                                    |[0x800008a6]:c.mv a0, a1<br> [0x800008a8]:sd a0, 640(sp)<br>   |
| 101|[0x80002330]<br>0x00000000B504F332|- rs2_val==3037000498<br>                                                                                                                             |[0x800008bc]:c.mv a0, a1<br> [0x800008be]:sd a0, 648(sp)<br>   |
| 102|[0x80002338]<br>0x5555555555555556|- rs2_val==6148914691236517206<br>                                                                                                                    |[0x800008e2]:c.mv a0, a1<br> [0x800008e4]:sd a0, 656(sp)<br>   |
| 103|[0x80002340]<br>0xAAAAAAAAAAAAAAAB|- rs2_val==-6148914691236517205<br>                                                                                                                   |[0x80000908]:c.mv a0, a1<br> [0x8000090a]:sd a0, 664(sp)<br>   |
| 104|[0x80002348]<br>0x0000000000000006|- rs2_val==6<br>                                                                                                                                      |[0x80000912]:c.mv a0, a1<br> [0x80000914]:sd a0, 672(sp)<br>   |
| 105|[0x80002350]<br>0x3333333333333334|- rs2_val==3689348814741910324<br>                                                                                                                    |[0x80000938]:c.mv a0, a1<br> [0x8000093a]:sd a0, 680(sp)<br>   |
| 106|[0x80002358]<br>0x6666666666666667|- rs2_val==7378697629483820647<br>                                                                                                                    |[0x8000095e]:c.mv a0, a1<br> [0x80000960]:sd a0, 688(sp)<br>   |
| 107|[0x80002360]<br>0xFFFFFFFF4AFB0CCE|- rs2_val==-3037000498<br>                                                                                                                            |[0x80000974]:c.mv a0, a1<br> [0x80000976]:sd a0, 696(sp)<br>   |
| 108|[0x80002368]<br>0x00000000B504F334|- rs2_val==3037000500<br>                                                                                                                             |[0x8000098a]:c.mv a0, a1<br> [0x8000098c]:sd a0, 704(sp)<br>   |
| 109|[0x80002370]<br>0xFFFFFFFFFFDFFFFF|- rs2_val == -2097153<br>                                                                                                                             |[0x80000998]:c.mv a0, a1<br> [0x8000099a]:sd a0, 712(sp)<br>   |
| 110|[0x80002378]<br>0xFFFFFFFFFFBFFFFF|- rs2_val == -4194305<br>                                                                                                                             |[0x800009a6]:c.mv a0, a1<br> [0x800009a8]:sd a0, 720(sp)<br>   |
| 111|[0x80002380]<br>0xFFFFFFFFFF7FFFFF|- rs2_val == -8388609<br>                                                                                                                             |[0x800009b4]:c.mv a0, a1<br> [0x800009b6]:sd a0, 728(sp)<br>   |
| 112|[0x80002388]<br>0xFFFFFFFFFEFFFFFF|- rs2_val == -16777217<br>                                                                                                                            |[0x800009c2]:c.mv a0, a1<br> [0x800009c4]:sd a0, 736(sp)<br>   |
| 113|[0x80002390]<br>0xFFFFFFFFFDFFFFFF|- rs2_val == -33554433<br>                                                                                                                            |[0x800009d0]:c.mv a0, a1<br> [0x800009d2]:sd a0, 744(sp)<br>   |
| 114|[0x80002398]<br>0xFFFFFFFFFBFFFFFF|- rs2_val == -67108865<br>                                                                                                                            |[0x800009de]:c.mv a0, a1<br> [0x800009e0]:sd a0, 752(sp)<br>   |
| 115|[0x800023a0]<br>0xFFFFFFFFF7FFFFFF|- rs2_val == -134217729<br>                                                                                                                           |[0x800009ec]:c.mv a0, a1<br> [0x800009ee]:sd a0, 760(sp)<br>   |
| 116|[0x800023a8]<br>0xFFFFFFFFEFFFFFFF|- rs2_val == -268435457<br>                                                                                                                           |[0x800009fa]:c.mv a0, a1<br> [0x800009fc]:sd a0, 768(sp)<br>   |
| 117|[0x800023b0]<br>0xFFFFFFFFDFFFFFFF|- rs2_val == -536870913<br>                                                                                                                           |[0x80000a08]:c.mv a0, a1<br> [0x80000a0a]:sd a0, 776(sp)<br>   |
| 118|[0x800023b8]<br>0xFFFFFFFFBFFFFFFF|- rs2_val == -1073741825<br>                                                                                                                          |[0x80000a16]:c.mv a0, a1<br> [0x80000a18]:sd a0, 784(sp)<br>   |
| 119|[0x800023c0]<br>0xFFFFFFFF7FFFFFFF|- rs2_val == -2147483649<br>                                                                                                                          |[0x80000a28]:c.mv a0, a1<br> [0x80000a2a]:sd a0, 792(sp)<br>   |
| 120|[0x800023c8]<br>0xFFFFFFFEFFFFFFFF|- rs2_val == -4294967297<br>                                                                                                                          |[0x80000a3a]:c.mv a0, a1<br> [0x80000a3c]:sd a0, 800(sp)<br>   |
| 121|[0x800023d0]<br>0xFFFFFFFDFFFFFFFF|- rs2_val == -8589934593<br>                                                                                                                          |[0x80000a4c]:c.mv a0, a1<br> [0x80000a4e]:sd a0, 808(sp)<br>   |
| 122|[0x800023d8]<br>0xFFFFFFFBFFFFFFFF|- rs2_val == -17179869185<br>                                                                                                                         |[0x80000a5e]:c.mv a0, a1<br> [0x80000a60]:sd a0, 816(sp)<br>   |
| 123|[0x800023e0]<br>0xFFFFFFF7FFFFFFFF|- rs2_val == -34359738369<br>                                                                                                                         |[0x80000a70]:c.mv a0, a1<br> [0x80000a72]:sd a0, 824(sp)<br>   |
| 124|[0x800023e8]<br>0xFFFFFFEFFFFFFFFF|- rs2_val == -68719476737<br>                                                                                                                         |[0x80000a82]:c.mv a0, a1<br> [0x80000a84]:sd a0, 832(sp)<br>   |
| 125|[0x800023f0]<br>0xFFFFFFDFFFFFFFFF|- rs2_val == -137438953473<br>                                                                                                                        |[0x80000a94]:c.mv a0, a1<br> [0x80000a96]:sd a0, 840(sp)<br>   |
| 126|[0x800023f8]<br>0xFFFFFFBFFFFFFFFF|- rs2_val == -274877906945<br>                                                                                                                        |[0x80000aa6]:c.mv a0, a1<br> [0x80000aa8]:sd a0, 848(sp)<br>   |
| 127|[0x80002400]<br>0xFFFFFF7FFFFFFFFF|- rs2_val == -549755813889<br>                                                                                                                        |[0x80000ab8]:c.mv a0, a1<br> [0x80000aba]:sd a0, 856(sp)<br>   |
| 128|[0x80002408]<br>0xFFFFFEFFFFFFFFFF|- rs2_val == -1099511627777<br>                                                                                                                       |[0x80000aca]:c.mv a0, a1<br> [0x80000acc]:sd a0, 864(sp)<br>   |
| 129|[0x80002410]<br>0xFFFFFDFFFFFFFFFF|- rs2_val == -2199023255553<br>                                                                                                                       |[0x80000adc]:c.mv a0, a1<br> [0x80000ade]:sd a0, 872(sp)<br>   |
| 130|[0x80002418]<br>0xFFFFFBFFFFFFFFFF|- rs2_val == -4398046511105<br>                                                                                                                       |[0x80000aee]:c.mv a0, a1<br> [0x80000af0]:sd a0, 880(sp)<br>   |
| 131|[0x80002420]<br>0xFFFFF7FFFFFFFFFF|- rs2_val == -8796093022209<br>                                                                                                                       |[0x80000b00]:c.mv a0, a1<br> [0x80000b02]:sd a0, 888(sp)<br>   |
| 132|[0x80002428]<br>0xFFFFEFFFFFFFFFFF|- rs2_val == -17592186044417<br>                                                                                                                      |[0x80000b12]:c.mv a0, a1<br> [0x80000b14]:sd a0, 896(sp)<br>   |
| 133|[0x80002430]<br>0xFFFFDFFFFFFFFFFF|- rs2_val == -35184372088833<br>                                                                                                                      |[0x80000b24]:c.mv a0, a1<br> [0x80000b26]:sd a0, 904(sp)<br>   |
| 134|[0x80002438]<br>0xFFFFBFFFFFFFFFFF|- rs2_val == -70368744177665<br>                                                                                                                      |[0x80000b36]:c.mv a0, a1<br> [0x80000b38]:sd a0, 912(sp)<br>   |
| 135|[0x80002440]<br>0xFFFF7FFFFFFFFFFF|- rs2_val == -140737488355329<br>                                                                                                                     |[0x80000b48]:c.mv a0, a1<br> [0x80000b4a]:sd a0, 920(sp)<br>   |
| 136|[0x80002448]<br>0xFFFEFFFFFFFFFFFF|- rs2_val == -281474976710657<br>                                                                                                                     |[0x80000b5a]:c.mv a0, a1<br> [0x80000b5c]:sd a0, 928(sp)<br>   |
| 137|[0x80002450]<br>0xFFFDFFFFFFFFFFFF|- rs2_val == -562949953421313<br>                                                                                                                     |[0x80000b6c]:c.mv a0, a1<br> [0x80000b6e]:sd a0, 936(sp)<br>   |
| 138|[0x80002458]<br>0xFFFBFFFFFFFFFFFF|- rs2_val == -1125899906842625<br>                                                                                                                    |[0x80000b7e]:c.mv a0, a1<br> [0x80000b80]:sd a0, 944(sp)<br>   |
| 139|[0x80002460]<br>0xFFF7FFFFFFFFFFFF|- rs2_val == -2251799813685249<br>                                                                                                                    |[0x80000b90]:c.mv a0, a1<br> [0x80000b92]:sd a0, 952(sp)<br>   |
| 140|[0x80002468]<br>0xFFEFFFFFFFFFFFFF|- rs2_val == -4503599627370497<br>                                                                                                                    |[0x80000ba2]:c.mv a0, a1<br> [0x80000ba4]:sd a0, 960(sp)<br>   |
| 141|[0x80002470]<br>0xFFDFFFFFFFFFFFFF|- rs2_val == -9007199254740993<br>                                                                                                                    |[0x80000bb4]:c.mv a0, a1<br> [0x80000bb6]:sd a0, 968(sp)<br>   |
| 142|[0x80002478]<br>0xFFBFFFFFFFFFFFFF|- rs2_val == -18014398509481985<br>                                                                                                                   |[0x80000bc6]:c.mv a0, a1<br> [0x80000bc8]:sd a0, 976(sp)<br>   |
| 143|[0x80002480]<br>0xFF7FFFFFFFFFFFFF|- rs2_val == -36028797018963969<br>                                                                                                                   |[0x80000bd8]:c.mv a0, a1<br> [0x80000bda]:sd a0, 984(sp)<br>   |
| 144|[0x80002488]<br>0xFEFFFFFFFFFFFFFF|- rs2_val == -72057594037927937<br>                                                                                                                   |[0x80000bea]:c.mv a0, a1<br> [0x80000bec]:sd a0, 992(sp)<br>   |
| 145|[0x80002490]<br>0xFDFFFFFFFFFFFFFF|- rs2_val == -144115188075855873<br>                                                                                                                  |[0x80000bfc]:c.mv a0, a1<br> [0x80000bfe]:sd a0, 1000(sp)<br>  |
| 146|[0x80002498]<br>0xFBFFFFFFFFFFFFFF|- rs2_val == -288230376151711745<br>                                                                                                                  |[0x80000c0e]:c.mv a0, a1<br> [0x80000c10]:sd a0, 1008(sp)<br>  |
| 147|[0x800024a0]<br>0xF7FFFFFFFFFFFFFF|- rs2_val == -576460752303423489<br>                                                                                                                  |[0x80000c20]:c.mv a0, a1<br> [0x80000c22]:sd a0, 1016(sp)<br>  |
| 148|[0x800024a8]<br>0xEFFFFFFFFFFFFFFF|- rs2_val == -1152921504606846977<br>                                                                                                                 |[0x80000c32]:c.mv a0, a1<br> [0x80000c34]:sd a0, 1024(sp)<br>  |
