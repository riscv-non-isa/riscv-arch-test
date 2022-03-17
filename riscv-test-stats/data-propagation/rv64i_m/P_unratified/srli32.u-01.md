
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000cb0')]      |
| SIG_REGION                | [('0x80002210', '0x80002550', '104 dwords')]      |
| COV_LABELS                | srli32.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/srli32.u-01.S    |
| Total Number of coverpoints| 240     |
| Total Coverpoints Hit     | 235      |
| Total Signature Updates   | 104      |
| STAT1                     | 103      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b40]:SRLI32_U t6, t5, 14
      [0x80000b44]:sd t6, 512(gp)
 -- Signature Address: 0x800024d0 Data: 0x0000000000020000
 -- Redundant Coverpoints hit by the op
      - opcode : srli32.u
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 14
      - rs1_w1_val == 0
      - rs1_w0_val == 2147483648






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

|s.no|            signature             |                                                               coverpoints                                                               |                                  code                                  |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0000000000000000|- opcode : srli32.u<br> - rs1 : x28<br> - rd : x28<br> - rs1 == rd<br> - rs1_w0_val == 0<br> - imm_val == 30<br> - rs1_w1_val == 128<br> |[0x800003a0]:SRLI32_U t3, t3, 30<br> [0x800003a4]:sd t3, 0(sp)<br>      |
|   2|[0x80002218]<br>0x0000000000000000|- rs1 : x8<br> - rd : x22<br> - rs1 != rd<br> - imm_val == 31<br> - rs1_w1_val == 32<br> - rs1_w0_val == 4096<br>                        |[0x800003b4]:SRLI32_U s6, fp, 31<br> [0x800003b8]:sd s6, 8(sp)<br>      |
|   3|[0x80002220]<br>0x0000000000000000|- rs1 : x3<br> - rd : x18<br> - imm_val == 29<br>                                                                                        |[0x800003c8]:SRLI32_U s2, gp, 29<br> [0x800003cc]:sd s2, 16(sp)<br>     |
|   4|[0x80002228]<br>0x0000001000000010|- rs1 : x27<br> - rd : x23<br> - imm_val == 28<br> - rs1_w1_val == 4294967167<br> - rs1_w0_val == 4294836223<br>                         |[0x800003e0]:SRLI32_U s7, s11, 28<br> [0x800003e4]:sd s7, 24(sp)<br>    |
|   5|[0x80002230]<br>0x0000000000000000|- rs1 : x17<br> - rd : x0<br> - imm_val == 27<br> - rs1_w1_val == 1<br> - rs1_w0_val == 4294967294<br>                                   |[0x800003f4]:SRLI32_U zero, a7, 27<br> [0x800003f8]:sd zero, 32(sp)<br> |
|   6|[0x80002238]<br>0x0000000000000000|- rs1 : x20<br> - rd : x8<br> - imm_val == 26<br> - rs1_w1_val == 16<br>                                                                 |[0x80000404]:SRLI32_U fp, s4, 26<br> [0x80000408]:sd fp, 40(sp)<br>     |
|   7|[0x80002240]<br>0x0000008000000000|- rs1 : x21<br> - rd : x4<br> - imm_val == 25<br> - rs1_w1_val == 4294967287<br> - rs1_w0_val == 2097152<br>                             |[0x80000418]:SRLI32_U tp, s5, 25<br> [0x8000041c]:sd tp, 48(sp)<br>     |
|   8|[0x80002248]<br>0x0000010000000000|- rs1 : x5<br> - rd : x7<br> - imm_val == 24<br>                                                                                         |[0x8000042c]:SRLI32_U t2, t0, 24<br> [0x80000430]:sd t2, 56(sp)<br>     |
|   9|[0x80002250]<br>0x0000020000000000|- rs1 : x23<br> - rd : x24<br> - imm_val == 23<br> - rs1_w1_val == 4294901759<br> - rs1_w0_val == 1048576<br>                            |[0x80000440]:SRLI32_U s8, s7, 23<br> [0x80000444]:sd s8, 64(sp)<br>     |
|  10|[0x80002258]<br>0x0000040000000400|- rs1 : x18<br> - rd : x16<br> - imm_val == 22<br> - rs1_w1_val == 4294705151<br> - rs1_w0_val == 4294967231<br>                         |[0x80000454]:SRLI32_U a6, s2, 22<br> [0x80000458]:sd a6, 72(sp)<br>     |
|  11|[0x80002260]<br>0x0000080000000000|- rs1 : x13<br> - rd : x20<br> - imm_val == 21<br> - rs1_w1_val == 4294967294<br> - rs1_w0_val == 1024<br>                               |[0x80000468]:SRLI32_U s4, a3, 21<br> [0x8000046c]:sd s4, 80(sp)<br>     |
|  12|[0x80002268]<br>0x0000100000000800|- rs1 : x19<br> - rd : x26<br> - imm_val == 20<br> - rs1_w1_val == 4294967293<br> - rs1_w0_val == 2147483648<br>                         |[0x80000478]:SRLI32_U s10, s3, 20<br> [0x8000047c]:sd s10, 88(sp)<br>   |
|  13|[0x80002270]<br>0x00001F8000000002|- rs1 : x10<br> - rd : x27<br> - imm_val == 19<br> - rs1_w1_val == 4227858431<br>                                                        |[0x80000494]:SRLI32_U s11, a0, 19<br> [0x80000498]:sd s11, 96(sp)<br>   |
|  14|[0x80002278]<br>0x0000000000000000|- rs1 : x9<br> - rd : x10<br> - imm_val == 18<br> - rs1_w0_val == 128<br>                                                                |[0x800004a8]:SRLI32_U a0, s1, 18<br> [0x800004ac]:sd a0, 104(sp)<br>    |
|  15|[0x80002280]<br>0x0000000000000000|- rs1 : x25<br> - rd : x11<br> - imm_val == 17<br> - rs1_w1_val == 256<br>                                                               |[0x800004bc]:SRLI32_U a1, s9, 17<br> [0x800004c0]:sd a1, 112(sp)<br>    |
|  16|[0x80002288]<br>0x0000002000000800|- rs1 : x7<br> - rd : x31<br> - imm_val == 16<br> - rs1_w1_val == 2097152<br> - rs1_w0_val == 134217728<br>                              |[0x800004d0]:SRLI32_U t6, t2, 16<br> [0x800004d4]:sd t6, 120(sp)<br>    |
|  17|[0x80002290]<br>0x0001F80000000000|- rs1 : x14<br> - rd : x5<br> - imm_val == 15<br> - rs1_w0_val == 8192<br>                                                               |[0x800004ec]:SRLI32_U t0, a4, 15<br> [0x800004f0]:sd t0, 128(sp)<br>    |
|  18|[0x80002298]<br>0x0000000000000000|- rs1 : x31<br> - rd : x19<br> - imm_val == 14<br>                                                                                       |[0x80000500]:SRLI32_U s3, t6, 14<br> [0x80000504]:sd s3, 136(sp)<br>    |
|  19|[0x800022a0]<br>0x0000080000000000|- rs1 : x26<br> - rd : x21<br> - imm_val == 13<br> - rs1_w1_val == 16777216<br>                                                          |[0x80000514]:SRLI32_U s5, s10, 13<br> [0x80000518]:sd s5, 144(sp)<br>   |
|  20|[0x800022a8]<br>0x0000000100000000|- rs1 : x24<br> - rd : x9<br> - imm_val == 12<br> - rs1_w1_val == 4096<br> - rs1_w0_val == 1<br>                                         |[0x80000528]:SRLI32_U s1, s8, 12<br> [0x8000052c]:sd s1, 152(sp)<br>    |
|  21|[0x800022b0]<br>0x0000000800155555|- rs1 : x6<br> - rd : x14<br> - imm_val == 11<br> - rs1_w1_val == 16384<br> - rs1_w0_val == 2863311530<br>                               |[0x80000548]:SRLI32_U a4, t1, 11<br> [0x8000054c]:sd a4, 160(sp)<br>    |
|  22|[0x800022b8]<br>0x0020000000000000|- rs1 : x16<br> - rd : x3<br> - imm_val == 10<br> - rs1_w1_val == 2147483647<br>                                                         |[0x8000055c]:SRLI32_U gp, a6, 10<br> [0x80000560]:sd gp, 168(sp)<br>    |
|  23|[0x800022c0]<br>0x0080000000800000|- rs1 : x15<br> - rd : x17<br> - imm_val == 9<br> - rs1_w1_val == 4294967295<br>                                                         |[0x80000568]:SRLI32_U a7, a5, 9<br> [0x8000056c]:sd a7, 176(sp)<br>     |
|  24|[0x800022c8]<br>0x00C0000000FFFFFF|- rs1 : x1<br> - rd : x29<br> - imm_val == 8<br> - rs1_w1_val == 3221225471<br> - rs1_w0_val == 4294967039<br>                           |[0x8000057c]:SRLI32_U t4, ra, 8<br> [0x80000580]:sd t4, 184(sp)<br>     |
|  25|[0x800022d0]<br>0x0200000002000000|- rs1 : x22<br> - rd : x12<br> - imm_val == 7<br> - rs1_w0_val == 4294967287<br>                                                         |[0x80000598]:SRLI32_U a2, s6, 7<br> [0x8000059c]:sd a2, 0(gp)<br>       |
|  26|[0x800022d8]<br>0x0000000003FF8000|- rs1 : x29<br> - rd : x2<br> - imm_val == 6<br> - rs1_w0_val == 4292870143<br>                                                          |[0x800005b0]:SRLI32_U sp, t4, 6<br> [0x800005b4]:sd sp, 8(gp)<br>       |
|  27|[0x800022e0]<br>0x07FFF00004000000|- rs1 : x4<br> - rd : x25<br> - imm_val == 5<br> - rs1_w1_val == 4294836223<br> - rs1_w0_val == 2147483647<br>                           |[0x800005c8]:SRLI32_U s9, tp, 5<br> [0x800005cc]:sd s9, 16(gp)<br>      |
|  28|[0x800022e8]<br>0x0000002010000000|- rs1 : x2<br> - rd : x30<br> - imm_val == 4<br> - rs1_w1_val == 512<br> - rs1_w0_val == 4294967293<br>                                  |[0x800005dc]:SRLI32_U t5, sp, 4<br> [0x800005e0]:sd t5, 24(gp)<br>      |
|  29|[0x800022f0]<br>0x0000008000000002|- rs1 : x30<br> - rd : x1<br> - imm_val == 3<br> - rs1_w1_val == 1024<br>                                                                |[0x800005f0]:SRLI32_U ra, t5, 3<br> [0x800005f4]:sd ra, 32(gp)<br>      |
|  30|[0x800022f8]<br>0x0000001038000000|- rs1 : x12<br> - rd : x15<br> - imm_val == 2<br> - rs1_w1_val == 64<br> - rs1_w0_val == 3758096383<br>                                  |[0x80000604]:SRLI32_U a5, a2, 2<br> [0x80000608]:sd a5, 40(gp)<br>      |
|  31|[0x80002300]<br>0x0000000000000000|- rs1 : x0<br> - rd : x13<br> - imm_val == 1<br> - rs1_w1_val == 0<br>                                                                   |[0x80000618]:SRLI32_U a3, zero, 1<br> [0x8000061c]:sd a3, 48(gp)<br>    |
|  32|[0x80002308]<br>0xFFEFFFFFAAAAAAAA|- rs1 : x11<br> - rd : x6<br> - imm_val == 0<br> - rs1_w1_val == 4293918719<br>                                                          |[0x80000638]:SRLI32_U t1, a1, 0<br> [0x8000063c]:sd t1, 56(gp)<br>      |
|  33|[0x80002310]<br>0x0000AAAB00000000|- rs1_w1_val == 2863311530<br>                                                                                                           |[0x80000650]:SRLI32_U t6, t5, 16<br> [0x80000654]:sd t6, 64(gp)<br>     |
|  34|[0x80002318]<br>0x0000155500000000|- rs1_w1_val == 1431655765<br>                                                                                                           |[0x80000668]:SRLI32_U t6, t5, 18<br> [0x8000066c]:sd t6, 72(gp)<br>     |
|  35|[0x80002320]<br>0x0380000003FFFFF8|- rs1_w1_val == 3758096383<br> - rs1_w0_val == 4294966783<br>                                                                            |[0x8000067c]:SRLI32_U t6, t5, 6<br> [0x80000680]:sd t6, 80(gp)<br>      |
|  36|[0x80002328]<br>0x0000001E00000000|- rs1_w1_val == 4026531839<br>                                                                                                           |[0x80000694]:SRLI32_U t6, t5, 27<br> [0x80000698]:sd t6, 88(gp)<br>     |
|  37|[0x80002330]<br>0x00F8000000FFFFC0|- rs1_w1_val == 4160749567<br> - rs1_w0_val == 4294950911<br>                                                                            |[0x800006b0]:SRLI32_U t6, t5, 8<br> [0x800006b4]:sd t6, 96(gp)<br>      |
|  38|[0x80002338]<br>0x000FE000000FF800|- rs1_w1_val == 4261412863<br> - rs1_w0_val == 4286578687<br>                                                                            |[0x800006cc]:SRLI32_U t6, t5, 12<br> [0x800006d0]:sd t6, 104(gp)<br>    |
|  39|[0x80002340]<br>0x003FE00000000000|- rs1_w1_val == 4286578687<br> - rs1_w0_val == 16<br>                                                                                    |[0x800006e4]:SRLI32_U t6, t5, 10<br> [0x800006e8]:sd t6, 112(gp)<br>    |
|  40|[0x80002348]<br>0x00FFC00000000020|- rs1_w1_val == 4290772991<br>                                                                                                           |[0x80000700]:SRLI32_U t6, t5, 8<br> [0x80000704]:sd t6, 120(gp)<br>     |
|  41|[0x80002350]<br>0x0FFE000000001000|- rs1_w1_val == 4292870143<br> - rs1_w0_val == 65536<br>                                                                                 |[0x8000071c]:SRLI32_U t6, t5, 4<br> [0x80000720]:sd t6, 128(gp)<br>     |
|  42|[0x80002358]<br>0x0007FFC000080000|- rs1_w1_val == 4294443007<br>                                                                                                           |[0x80000730]:SRLI32_U t6, t5, 13<br> [0x80000734]:sd t6, 136(gp)<br>    |
|  43|[0x80002360]<br>0x0FFFF80000000004|- rs1_w1_val == 4294934527<br> - rs1_w0_val == 64<br>                                                                                    |[0x80000748]:SRLI32_U t6, t5, 4<br> [0x8000074c]:sd t6, 144(gp)<br>     |
|  44|[0x80002368]<br>0x0FFFFC000FFFFFF8|- rs1_w1_val == 4294950911<br> - rs1_w0_val == 4294967167<br>                                                                            |[0x8000075c]:SRLI32_U t6, t5, 4<br> [0x80000760]:sd t6, 152(gp)<br>     |
|  45|[0x80002370]<br>0x0002000000020000|- rs1_w1_val == 4294959103<br> - rs1_w0_val == 4294967291<br>                                                                            |[0x80000770]:SRLI32_U t6, t5, 15<br> [0x80000774]:sd t6, 160(gp)<br>    |
|  46|[0x80002378]<br>0x0000002000000000|- rs1_w1_val == 4294963199<br>                                                                                                           |[0x80000788]:SRLI32_U t6, t5, 27<br> [0x8000078c]:sd t6, 168(gp)<br>    |
|  47|[0x80002380]<br>0x000000200000000B|- rs1_w1_val == 4294965247<br> - rs1_w0_val == 1431655765<br>                                                                            |[0x800007a8]:SRLI32_U t6, t5, 27<br> [0x800007ac]:sd t6, 176(gp)<br>    |
|  48|[0x80002388]<br>0x0000000400000000|- rs1_w1_val == 4294966271<br>                                                                                                           |[0x800007bc]:SRLI32_U t6, t5, 30<br> [0x800007c0]:sd t6, 184(gp)<br>    |
|  49|[0x80002390]<br>0x0000000200000000|- rs1_w1_val == 4294966783<br> - rs1_w0_val == 536870912<br>                                                                             |[0x800007d0]:SRLI32_U t6, t5, 31<br> [0x800007d4]:sd t6, 192(gp)<br>    |
|  50|[0x80002398]<br>0x00FFFFFF00FFFFFF|- rs1_w1_val == 4294967039<br>                                                                                                           |[0x800007e4]:SRLI32_U t6, t5, 8<br> [0x800007e8]:sd t6, 200(gp)<br>     |
|  51|[0x800023a0]<br>0x0002000003FFFFFF|- rs1_w1_val == 8388608<br> - rs1_w0_val == 4294967263<br>                                                                               |[0x800007fc]:SRLI32_U t6, t5, 6<br> [0x80000800]:sd t6, 208(gp)<br>     |
|  52|[0x800023a8]<br>0x0000000000000004|- rs1_w0_val == 4294967279<br>                                                                                                           |[0x80000810]:SRLI32_U t6, t5, 30<br> [0x80000814]:sd t6, 216(gp)<br>    |
|  53|[0x800023b0]<br>0x0000000000000004|- rs1_w0_val == 1073741824<br>                                                                                                           |[0x80000820]:SRLI32_U t6, t5, 28<br> [0x80000824]:sd t6, 224(gp)<br>    |
|  54|[0x800023b8]<br>0x0000000000000001|- rs1_w0_val == 268435456<br>                                                                                                            |[0x80000834]:SRLI32_U t6, t5, 28<br> [0x80000838]:sd t6, 232(gp)<br>    |
|  55|[0x800023c0]<br>0x0000002B00000001|- rs1_w0_val == 33554432<br>                                                                                                             |[0x80000850]:SRLI32_U t6, t5, 26<br> [0x80000854]:sd t6, 240(gp)<br>    |
|  56|[0x800023c8]<br>0x0001000000008000|- rs1_w1_val == 33554432<br> - rs1_w0_val == 16777216<br>                                                                                |[0x80000868]:SRLI32_U t6, t5, 9<br> [0x8000086c]:sd t6, 248(gp)<br>     |
|  57|[0x800023d0]<br>0x0000010000400000|- rs1_w0_val == 8388608<br>                                                                                                              |[0x8000087c]:SRLI32_U t6, t5, 1<br> [0x80000880]:sd t6, 256(gp)<br>     |
|  58|[0x800023d8]<br>0x0000000000000000|- rs1_w1_val == 524288<br> - rs1_w0_val == 4194304<br>                                                                                   |[0x80000890]:SRLI32_U t6, t5, 29<br> [0x80000894]:sd t6, 264(gp)<br>    |
|  59|[0x800023e0]<br>0x0000000100020000|- rs1_w0_val == 524288<br>                                                                                                               |[0x800008a4]:SRLI32_U t6, t5, 2<br> [0x800008a8]:sd t6, 272(gp)<br>     |
|  60|[0x800023e8]<br>0x0000000100000000|- rs1_w0_val == 262144<br>                                                                                                               |[0x800008bc]:SRLI32_U t6, t5, 24<br> [0x800008c0]:sd t6, 280(gp)<br>    |
|  61|[0x800023f0]<br>0x0000000000000000|- rs1_w1_val == 8<br> - rs1_w0_val == 131072<br>                                                                                         |[0x800008d0]:SRLI32_U t6, t5, 31<br> [0x800008d4]:sd t6, 288(gp)<br>    |
|  62|[0x800023f8]<br>0x0000000000000000|- rs1_w1_val == 262144<br> - rs1_w0_val == 32768<br>                                                                                     |[0x800008e8]:SRLI32_U t6, t5, 29<br> [0x800008ec]:sd t6, 296(gp)<br>    |
|  63|[0x80002400]<br>0x0000000000000000|- rs1_w0_val == 16384<br>                                                                                                                |[0x800008fc]:SRLI32_U t6, t5, 24<br> [0x80000900]:sd t6, 304(gp)<br>    |
|  64|[0x80002408]<br>0x0AAAAAAB00000100|- rs1_w0_val == 2048<br>                                                                                                                 |[0x8000091c]:SRLI32_U t6, t5, 3<br> [0x80000920]:sd t6, 312(gp)<br>     |
|  65|[0x80002410]<br>0x0000000200000000|- rs1_w1_val == 4194304<br> - rs1_w0_val == 512<br>                                                                                      |[0x80000930]:SRLI32_U t6, t5, 21<br> [0x80000934]:sd t6, 320(gp)<br>    |
|  66|[0x80002418]<br>0x0000000000000000|- rs1_w0_val == 256<br>                                                                                                                  |[0x80000944]:SRLI32_U t6, t5, 28<br> [0x80000948]:sd t6, 328(gp)<br>    |
|  67|[0x80002420]<br>0x0040000000000000|- rs1_w1_val == 4294967231<br> - rs1_w0_val == 32<br>                                                                                    |[0x80000958]:SRLI32_U t6, t5, 10<br> [0x8000095c]:sd t6, 336(gp)<br>    |
|  68|[0x80002428]<br>0x0000000000000000|- rs1_w0_val == 8<br>                                                                                                                    |[0x8000096c]:SRLI32_U t6, t5, 19<br> [0x80000970]:sd t6, 344(gp)<br>    |
|  69|[0x80002430]<br>0x7FFC000000000002|- rs1_w0_val == 4<br>                                                                                                                    |[0x80000984]:SRLI32_U t6, t5, 1<br> [0x80000988]:sd t6, 352(gp)<br>     |
|  70|[0x80002438]<br>0xFFEFFFFF00000002|- rs1_w0_val == 2<br>                                                                                                                    |[0x8000099c]:SRLI32_U t6, t5, 0<br> [0x800009a0]:sd t6, 360(gp)<br>     |
|  71|[0x80002440]<br>0x0000002000002000|- rs1_w0_val == 4294967295<br>                                                                                                           |[0x800009b4]:SRLI32_U t6, t5, 19<br> [0x800009b8]:sd t6, 368(gp)<br>    |
|  72|[0x80002448]<br>0x07FFFFFF00000000|- rs1_w1_val == 4294967263<br>                                                                                                           |[0x800009c8]:SRLI32_U t6, t5, 5<br> [0x800009cc]:sd t6, 376(gp)<br>     |
|  73|[0x80002450]<br>0x0001000000000040|- rs1_w1_val == 4294967279<br>                                                                                                           |[0x800009dc]:SRLI32_U t6, t5, 16<br> [0x800009e0]:sd t6, 384(gp)<br>    |
|  74|[0x80002458]<br>0x0008000000000000|- rs1_w1_val == 4294967291<br>                                                                                                           |[0x800009f0]:SRLI32_U t6, t5, 13<br> [0x800009f4]:sd t6, 392(gp)<br>    |
|  75|[0x80002460]<br>0x0004000000080000|- rs1_w1_val == 2147483648<br>                                                                                                           |[0x80000a08]:SRLI32_U t6, t5, 13<br> [0x80000a0c]:sd t6, 400(gp)<br>    |
|  76|[0x80002468]<br>0x0000001000000000|- rs1_w1_val == 1073741824<br>                                                                                                           |[0x80000a1c]:SRLI32_U t6, t5, 26<br> [0x80000a20]:sd t6, 408(gp)<br>    |
|  77|[0x80002470]<br>0x0400000000000002|- rs1_w1_val == 536870912<br>                                                                                                            |[0x80000a30]:SRLI32_U t6, t5, 3<br> [0x80000a34]:sd t6, 416(gp)<br>     |
|  78|[0x80002478]<br>0x0002000000000800|- rs1_w1_val == 268435456<br>                                                                                                            |[0x80000a48]:SRLI32_U t6, t5, 11<br> [0x80000a4c]:sd t6, 424(gp)<br>    |
|  79|[0x80002480]<br>0x0010000001F00000|- rs1_w1_val == 134217728<br> - rs1_w0_val == 4160749567<br>                                                                             |[0x80000a64]:SRLI32_U t6, t5, 7<br> [0x80000a68]:sd t6, 432(gp)<br>     |
|  80|[0x80002488]<br>0x0000020000000000|- rs1_w1_val == 67108864<br>                                                                                                             |[0x80000a7c]:SRLI32_U t6, t5, 17<br> [0x80000a80]:sd t6, 440(gp)<br>    |
|  81|[0x80002490]<br>0x0000000000000000|- rs1_w1_val == 1048576<br>                                                                                                              |[0x80000a90]:SRLI32_U t6, t5, 28<br> [0x80000a94]:sd t6, 448(gp)<br>    |
|  82|[0x80002498]<br>0x0000080003FFFFFE|- rs1_w1_val == 131072<br>                                                                                                               |[0x80000aa8]:SRLI32_U t6, t5, 6<br> [0x80000aac]:sd t6, 456(gp)<br>     |
|  83|[0x800024a0]<br>0x0000020000000000|- rs1_w1_val == 65536<br>                                                                                                                |[0x80000abc]:SRLI32_U t6, t5, 7<br> [0x80000ac0]:sd t6, 464(gp)<br>     |
|  84|[0x800024a8]<br>0x0000000000000AAB|- rs1_w1_val == 32768<br>                                                                                                                |[0x80000adc]:SRLI32_U t6, t5, 19<br> [0x80000ae0]:sd t6, 472(gp)<br>    |
|  85|[0x800024b0]<br>0x000000000001FE00|- rs1_w1_val == 8192<br> - rs1_w0_val == 4278190079<br>                                                                                  |[0x80000af4]:SRLI32_U t6, t5, 15<br> [0x80000af8]:sd t6, 480(gp)<br>    |
|  86|[0x800024b8]<br>0x0000000000000000|- rs1_w1_val == 2048<br>                                                                                                                 |[0x80000b08]:SRLI32_U t6, t5, 31<br> [0x80000b0c]:sd t6, 488(gp)<br>    |
|  87|[0x800024c0]<br>0x0000000100000200|- rs1_w1_val == 4<br>                                                                                                                    |[0x80000b1c]:SRLI32_U t6, t5, 3<br> [0x80000b20]:sd t6, 496(gp)<br>     |
|  88|[0x800024c8]<br>0x0000000000000002|- rs1_w1_val == 2<br>                                                                                                                    |[0x80000b30]:SRLI32_U t6, t5, 30<br> [0x80000b34]:sd t6, 504(gp)<br>    |
|  89|[0x800024d8]<br>0x0080000000600000|- rs1_w0_val == 3221225471<br>                                                                                                           |[0x80000b54]:SRLI32_U t6, t5, 9<br> [0x80000b58]:sd t6, 520(gp)<br>     |
|  90|[0x800024e0]<br>0x000004000003C000|- rs1_w0_val == 4026531839<br>                                                                                                           |[0x80000b6c]:SRLI32_U t6, t5, 14<br> [0x80000b70]:sd t6, 528(gp)<br>    |
|  91|[0x800024e8]<br>0x000000800000007E|- rs1_w0_val == 4227858431<br>                                                                                                           |[0x80000b84]:SRLI32_U t6, t5, 25<br> [0x80000b88]:sd t6, 536(gp)<br>    |
|  92|[0x800024f0]<br>0x00000800000007F0|- rs1_w0_val == 4261412863<br>                                                                                                           |[0x80000b9c]:SRLI32_U t6, t5, 21<br> [0x80000ba0]:sd t6, 544(gp)<br>    |
|  93|[0x800024f8]<br>0x0000002000000020|- rs1_w0_val == 4290772991<br>                                                                                                           |[0x80000bb4]:SRLI32_U t6, t5, 27<br> [0x80000bb8]:sd t6, 552(gp)<br>    |
|  94|[0x80002500]<br>0x000100000000FFF0|- rs1_w0_val == 4293918719<br>                                                                                                           |[0x80000bcc]:SRLI32_U t6, t5, 16<br> [0x80000bd0]:sd t6, 560(gp)<br>    |
|  95|[0x80002508]<br>0x000000000FFF8000|- rs1_w0_val == 4294443007<br>                                                                                                           |[0x80000be4]:SRLI32_U t6, t5, 4<br> [0x80000be8]:sd t6, 568(gp)<br>     |
|  96|[0x80002510]<br>0x00000008001FFF80|- rs1_w0_val == 4294705151<br>                                                                                                           |[0x80000bfc]:SRLI32_U t6, t5, 11<br> [0x80000c00]:sd t6, 576(gp)<br>    |
|  97|[0x80002518]<br>0x0000000000000080|- rs1_w0_val == 4294901759<br>                                                                                                           |[0x80000c14]:SRLI32_U t6, t5, 25<br> [0x80000c18]:sd t6, 584(gp)<br>    |
|  98|[0x80002520]<br>0x07FFFFF807FFFC00|- rs1_w0_val == 4294934527<br>                                                                                                           |[0x80000c2c]:SRLI32_U t6, t5, 5<br> [0x80000c30]:sd t6, 592(gp)<br>     |
|  99|[0x80002528]<br>0x0000000000008000|- rs1_w0_val == 4294959103<br>                                                                                                           |[0x80000c44]:SRLI32_U t6, t5, 17<br> [0x80000c48]:sd t6, 600(gp)<br>    |
| 100|[0x80002530]<br>0x0000000000000008|- rs1_w0_val == 4294963199<br>                                                                                                           |[0x80000c5c]:SRLI32_U t6, t5, 29<br> [0x80000c60]:sd t6, 608(gp)<br>    |
| 101|[0x80002538]<br>0x0000000000000400|- rs1_w0_val == 4294965247<br>                                                                                                           |[0x80000c74]:SRLI32_U t6, t5, 22<br> [0x80000c78]:sd t6, 616(gp)<br>    |
| 102|[0x80002540]<br>0x00007F0000008000|- rs1_w0_val == 4294966271<br>                                                                                                           |[0x80000c88]:SRLI32_U t6, t5, 17<br> [0x80000c8c]:sd t6, 624(gp)<br>    |
| 103|[0x80002548]<br>0x7F80000002000000|- rs1_w1_val == 4278190079<br> - rs1_w0_val == 67108864<br>                                                                              |[0x80000c9c]:SRLI32_U t6, t5, 1<br> [0x80000ca0]:sd t6, 632(gp)<br>     |
