
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000f00')]      |
| SIG_REGION                | [('0x80002210', '0x800028e0', '218 dwords')]      |
| COV_LABELS                | uclip32      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/uclip32-01.S    |
| Total Number of coverpoints| 240     |
| Total Coverpoints Hit     | 235      |
| Total Signature Updates   | 109      |
| STAT1                     | 109      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```


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

|s.no|            signature             |                                                                 coverpoints                                                                  |                                                     code                                                      |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0000000000000001|- opcode : uclip32<br> - rs1 : x26<br> - rd : x26<br> - rs1 == rd<br> - rs1_w0_val == 0<br> - imm_val == 8<br> - rs1_w1_val == 4261412863<br> |[0x800003b0]:UCLIP32 s10, s10, 8<br> [0x800003b4]:csrrs s10, vxsat, zero<br> [0x800003b8]:sd s10, 0(tp)<br>    |
|   2|[0x80002220]<br>0x0800000000000000|- rs1 : x30<br> - rd : x25<br> - rs1 != rd<br> - imm_val == 31<br> - rs1_w1_val == 134217728<br> - rs1_w0_val == 4290772991<br>               |[0x800003d0]:UCLIP32 s9, t5, 31<br> [0x800003d4]:csrrs t5, vxsat, zero<br> [0x800003d8]:sd s9, 16(tp)<br>      |
|   3|[0x80002230]<br>0x0020000000001000|- rs1 : x12<br> - rd : x22<br> - imm_val == 30<br> - rs1_w1_val == 2097152<br> - rs1_w0_val == 4096<br>                                       |[0x800003ec]:UCLIP32 s6, a2, 30<br> [0x800003f0]:csrrs a2, vxsat, zero<br> [0x800003f4]:sd s6, 32(tp)<br>      |
|   4|[0x80002240]<br>0x0000000000000040|- rs1 : x21<br> - rd : x2<br> - imm_val == 29<br> - rs1_w1_val == 4160749567<br> - rs1_w0_val == 64<br>                                       |[0x80000408]:UCLIP32 sp, s5, 29<br> [0x8000040c]:csrrs s5, vxsat, zero<br> [0x80000410]:sd sp, 48(tp)<br>      |
|   5|[0x80002250]<br>0x000010000000000B|- rs1 : x23<br> - rd : x7<br> - imm_val == 28<br> - rs1_w1_val == 4096<br>                                                                    |[0x80000420]:UCLIP32 t2, s7, 28<br> [0x80000424]:csrrs s7, vxsat, zero<br> [0x80000428]:sd t2, 64(tp)<br>      |
|   6|[0x80002260]<br>0x0000000000000003|- rs1 : x17<br> - rd : x24<br> - imm_val == 27<br> - rs1_w1_val == 4294966271<br>                                                             |[0x80000438]:UCLIP32 s8, a7, 27<br> [0x8000043c]:csrrs a7, vxsat, zero<br> [0x80000440]:sd s8, 80(tp)<br>      |
|   7|[0x80002270]<br>0x0000000000000000|- rs1 : x7<br> - rd : x1<br> - imm_val == 26<br> - rs1_w1_val == 4294950911<br>                                                               |[0x80000454]:UCLIP32 ra, t2, 26<br> [0x80000458]:csrrs t2, vxsat, zero<br> [0x8000045c]:sd ra, 96(tp)<br>      |
|   8|[0x80002280]<br>0x0000000D01FFFFFF|- rs1 : x18<br> - rd : x27<br> - imm_val == 25<br> - rs1_w0_val == 1073741824<br>                                                             |[0x80000468]:UCLIP32 s11, s2, 25<br> [0x8000046c]:csrrs s2, vxsat, zero<br> [0x80000470]:sd s11, 112(tp)<br>   |
|   9|[0x80002290]<br>0x0000000200000004|- rs1 : x20<br> - rd : x9<br> - imm_val == 24<br> - rs1_w1_val == 2<br> - rs1_w0_val == 4<br>                                                 |[0x80000480]:UCLIP32 s1, s4, 24<br> [0x80000484]:csrrs s4, vxsat, zero<br> [0x80000488]:sd s1, 128(tp)<br>     |
|  10|[0x800022a0]<br>0x0000001100000000|- rs1 : x25<br> - rd : x23<br> - imm_val == 23<br> - rs1_w0_val == 4293918719<br>                                                             |[0x8000049c]:UCLIP32 s7, s9, 23<br> [0x800004a0]:csrrs s9, vxsat, zero<br> [0x800004a4]:sd s7, 144(tp)<br>     |
|  11|[0x800022b0]<br>0x0000000000000001|- rs1 : x14<br> - rd : x5<br> - imm_val == 22<br> - rs1_w1_val == 4294965247<br> - rs1_w0_val == 1<br>                                        |[0x800004b8]:UCLIP32 t0, a4, 22<br> [0x800004bc]:csrrs a4, vxsat, zero<br> [0x800004c0]:sd t0, 160(tp)<br>     |
|  12|[0x800022c0]<br>0x0001000000000040|- rs1 : x6<br> - rd : x16<br> - imm_val == 21<br> - rs1_w1_val == 65536<br>                                                                   |[0x800004d0]:UCLIP32 a6, t1, 21<br> [0x800004d4]:csrrs t1, vxsat, zero<br> [0x800004d8]:sd a6, 176(tp)<br>     |
|  13|[0x800022d0]<br>0x0000020000000200|- rs1 : x31<br> - rd : x21<br> - imm_val == 20<br> - rs1_w1_val == 512<br> - rs1_w0_val == 512<br>                                            |[0x800004e8]:UCLIP32 s5, t6, 20<br> [0x800004ec]:csrrs t6, vxsat, zero<br> [0x800004f0]:sd s5, 192(tp)<br>     |
|  14|[0x800022e0]<br>0x0000000000000000|- rs1 : x0<br> - rd : x13<br> - imm_val == 19<br> - rs1_w1_val == 0<br>                                                                       |[0x80000500]:UCLIP32 a3, zero, 19<br> [0x80000504]:csrrs zero, vxsat, zero<br> [0x80000508]:sd a3, 208(tp)<br> |
|  15|[0x800022f0]<br>0x0000000F0003FFFF|- rs1 : x1<br> - rd : x31<br> - imm_val == 18<br> - rs1_w0_val == 1431655765<br>                                                              |[0x8000051c]:UCLIP32 t6, ra, 18<br> [0x80000520]:csrrs ra, vxsat, zero<br> [0x80000524]:sd t6, 224(tp)<br>     |
|  16|[0x80002300]<br>0x000000000000000F|- rs1 : x13<br> - rd : x15<br> - imm_val == 17<br> - rs1_w1_val == 4294836223<br>                                                             |[0x80000538]:UCLIP32 a5, a3, 17<br> [0x8000053c]:csrrs a3, vxsat, zero<br> [0x80000540]:sd a5, 240(tp)<br>     |
|  17|[0x80002310]<br>0x000000000000FFFF|- rs1 : x9<br> - rd : x28<br> - imm_val == 16<br>                                                                                             |[0x8000055c]:UCLIP32 t3, s1, 16<br> [0x80000560]:csrrs s1, vxsat, zero<br> [0x80000564]:sd t3, 256(tp)<br>     |
|  18|[0x80002320]<br>0x000000000000000D|- rs1 : x16<br> - rd : x11<br> - imm_val == 15<br>                                                                                            |[0x80000578]:UCLIP32 a1, a6, 15<br> [0x8000057c]:csrrs a6, vxsat, zero<br> [0x80000580]:sd a1, 272(tp)<br>     |
|  19|[0x80002330]<br>0x00003FFF00003FFF|- rs1 : x3<br> - rd : x30<br> - imm_val == 14<br> - rs1_w1_val == 67108864<br> - rs1_w0_val == 65536<br>                                      |[0x80000594]:UCLIP32 t5, gp, 14<br> [0x80000598]:csrrs gp, vxsat, zero<br> [0x8000059c]:sd t5, 288(tp)<br>     |
|  20|[0x80002340]<br>0x0000000500001FFF|- rs1 : x10<br> - rd : x17<br> - imm_val == 13<br> - rs1_w0_val == 33554432<br>                                                               |[0x800005a8]:UCLIP32 a7, a0, 13<br> [0x800005ac]:csrrs a0, vxsat, zero<br> [0x800005b0]:sd a7, 304(tp)<br>     |
|  21|[0x80002350]<br>0x0000000000000006|- rs1 : x8<br> - rd : x14<br> - imm_val == 12<br>                                                                                             |[0x800005c4]:UCLIP32 a4, fp, 12<br> [0x800005c8]:csrrs fp, vxsat, zero<br> [0x800005cc]:sd a4, 320(tp)<br>     |
|  22|[0x80002360]<br>0x0000001000000000|- rs1 : x2<br> - rd : x19<br> - imm_val == 11<br> - rs1_w1_val == 16<br> - rs1_w0_val == 4026531839<br>                                       |[0x800005e4]:UCLIP32 s3, sp, 11<br> [0x800005e8]:csrrs sp, vxsat, zero<br> [0x800005ec]:sd s3, 0(ra)<br>       |
|  23|[0x80002370]<br>0x00000000000003FF|- rs1 : x28<br> - rd : x10<br> - imm_val == 10<br> - rs1_w0_val == 262144<br>                                                                 |[0x800005f4]:UCLIP32 a0, t3, 10<br> [0x800005f8]:csrrs t3, vxsat, zero<br> [0x800005fc]:sd a0, 16(ra)<br>      |
|  24|[0x80002380]<br>0x000000090000000E|- rs1 : x24<br> - rd : x29<br> - imm_val == 9<br>                                                                                             |[0x8000060c]:UCLIP32 t4, s8, 9<br> [0x80000610]:csrrs s8, vxsat, zero<br> [0x80000614]:sd t4, 32(ra)<br>       |
|  25|[0x80002390]<br>0x0000001200000003|- rs1 : x27<br> - rd : x8<br> - imm_val == 7<br>                                                                                              |[0x80000624]:UCLIP32 fp, s11, 7<br> [0x80000628]:csrrs s11, vxsat, zero<br> [0x8000062c]:sd fp, 48(ra)<br>     |
|  26|[0x800023a0]<br>0x0000000000000000|- rs1 : x15<br> - rd : x0<br> - imm_val == 6<br> - rs1_w0_val == 128<br>                                                                      |[0x8000063c]:UCLIP32 zero, a5, 6<br> [0x80000640]:csrrs a5, vxsat, zero<br> [0x80000644]:sd zero, 64(ra)<br>   |
|  27|[0x800023b0]<br>0x0000000000000000|- rs1 : x22<br> - rd : x3<br> - imm_val == 5<br> - rs1_w1_val == 4278190079<br>                                                               |[0x80000658]:UCLIP32 gp, s6, 5<br> [0x8000065c]:csrrs s6, vxsat, zero<br> [0x80000660]:sd gp, 80(ra)<br>       |
|  28|[0x800023c0]<br>0x0000000F00000000|- rs1 : x11<br> - rd : x4<br> - imm_val == 4<br> - rs1_w1_val == 32768<br> - rs1_w0_val == 4294967291<br>                                     |[0x80000674]:UCLIP32 tp, a1, 4<br> [0x80000678]:csrrs a1, vxsat, zero<br> [0x8000067c]:sd tp, 96(ra)<br>       |
|  29|[0x800023d0]<br>0x0000000300000000|- rs1 : x19<br> - rd : x6<br> - imm_val == 3<br> - rs1_w0_val == 3221225471<br>                                                               |[0x8000068c]:UCLIP32 t1, s3, 3<br> [0x80000690]:csrrs s3, vxsat, zero<br> [0x80000694]:sd t1, 112(ra)<br>      |
|  30|[0x800023e0]<br>0x0000000300000003|- rs1 : x29<br> - rd : x18<br> - imm_val == 2<br> - rs1_w0_val == 16<br>                                                                      |[0x800006a4]:UCLIP32 s2, t4, 2<br> [0x800006a8]:csrrs t4, vxsat, zero<br> [0x800006ac]:sd s2, 128(ra)<br>      |
|  31|[0x800023f0]<br>0x0000000100000001|- rs1 : x4<br> - rd : x12<br> - imm_val == 1<br> - rs1_w1_val == 536870912<br> - rs1_w0_val == 131072<br>                                     |[0x800006c0]:UCLIP32 a2, tp, 1<br> [0x800006c4]:csrrs tp, vxsat, zero<br> [0x800006c8]:sd a2, 144(ra)<br>      |
|  32|[0x80002400]<br>0x0000000000000000|- rs1 : x5<br> - rd : x20<br> - imm_val == 0<br> - rs1_w1_val == 4294967263<br> - rs1_w0_val == 4294965247<br>                                |[0x800006dc]:UCLIP32 s4, t0, 0<br> [0x800006e0]:csrrs t0, vxsat, zero<br> [0x800006e4]:sd s4, 160(ra)<br>      |
|  33|[0x80002410]<br>0x0000000000002000|- rs1_w1_val == 2863311530<br> - rs1_w0_val == 8192<br>                                                                                       |[0x800006fc]:UCLIP32 t6, t5, 20<br> [0x80000700]:csrrs t5, vxsat, zero<br> [0x80000704]:sd t6, 176(ra)<br>     |
|  34|[0x80002420]<br>0x000FFFFF0000000D|- rs1_w1_val == 1431655765<br>                                                                                                                |[0x80000718]:UCLIP32 t6, t5, 20<br> [0x8000071c]:csrrs t5, vxsat, zero<br> [0x80000720]:sd t6, 192(ra)<br>     |
|  35|[0x80002430]<br>0x1FFFFFFF00000100|- rs1_w1_val == 2147483647<br> - rs1_w0_val == 256<br>                                                                                        |[0x80000734]:UCLIP32 t6, t5, 29<br> [0x80000738]:csrrs t5, vxsat, zero<br> [0x8000073c]:sd t6, 208(ra)<br>     |
|  36|[0x80002440]<br>0x0000000000000000|- rs1_w1_val == 3221225471<br>                                                                                                                |[0x8000074c]:UCLIP32 t6, t5, 28<br> [0x80000750]:csrrs t5, vxsat, zero<br> [0x80000754]:sd t6, 224(ra)<br>     |
|  37|[0x80002450]<br>0x000000000000000E|- rs1_w1_val == 3758096383<br>                                                                                                                |[0x80000768]:UCLIP32 t6, t5, 25<br> [0x8000076c]:csrrs t5, vxsat, zero<br> [0x80000770]:sd t6, 240(ra)<br>     |
|  38|[0x80002460]<br>0x0000000000000000|- rs1_w1_val == 4026531839<br>                                                                                                                |[0x80000784]:UCLIP32 t6, t5, 0<br> [0x80000788]:csrrs t5, vxsat, zero<br> [0x8000078c]:sd t6, 256(ra)<br>      |
|  39|[0x80002470]<br>0x0000000000000007|- rs1_w1_val == 4227858431<br>                                                                                                                |[0x800007a0]:UCLIP32 t6, t5, 3<br> [0x800007a4]:csrrs t5, vxsat, zero<br> [0x800007a8]:sd t6, 272(ra)<br>      |
|  40|[0x80002480]<br>0x0000000000000000|- rs1_w1_val == 4286578687<br>                                                                                                                |[0x800007bc]:UCLIP32 t6, t5, 5<br> [0x800007c0]:csrrs t5, vxsat, zero<br> [0x800007c4]:sd t6, 288(ra)<br>      |
|  41|[0x80002490]<br>0x0000000000000000|- rs1_w1_val == 4290772991<br> - rs1_w0_val == 4294934527<br>                                                                                 |[0x800007dc]:UCLIP32 t6, t5, 12<br> [0x800007e0]:csrrs t5, vxsat, zero<br> [0x800007e4]:sd t6, 304(ra)<br>     |
|  42|[0x800024a0]<br>0x0000000000000000|- rs1_w1_val == 4292870143<br> - rs1_w0_val == 4294967231<br>                                                                                 |[0x800007f4]:UCLIP32 t6, t5, 19<br> [0x800007f8]:csrrs t5, vxsat, zero<br> [0x800007fc]:sd t6, 320(ra)<br>     |
|  43|[0x800024b0]<br>0x0000000001000000|- rs1_w1_val == 4293918719<br> - rs1_w0_val == 16777216<br>                                                                                   |[0x8000080c]:UCLIP32 t6, t5, 26<br> [0x80000810]:csrrs t5, vxsat, zero<br> [0x80000814]:sd t6, 336(ra)<br>     |
|  44|[0x800024c0]<br>0x00000000000001FF|- rs1_w1_val == 4294443007<br> - rs1_w0_val == 1048576<br>                                                                                    |[0x8000082c]:UCLIP32 t6, t5, 9<br> [0x80000830]:csrrs t5, vxsat, zero<br> [0x80000834]:sd t6, 352(ra)<br>      |
|  45|[0x800024d0]<br>0x00000000007FFFFF|- rs1_w1_val == 4294705151<br> - rs1_w0_val == 2147483647<br>                                                                                 |[0x80000848]:UCLIP32 t6, t5, 23<br> [0x8000084c]:csrrs t5, vxsat, zero<br> [0x80000850]:sd t6, 368(ra)<br>     |
|  46|[0x800024e0]<br>0x0000000000000000|- rs1_w1_val == 4294901759<br> - rs1_w0_val == 4278190079<br>                                                                                 |[0x80000864]:UCLIP32 t6, t5, 19<br> [0x80000868]:csrrs t5, vxsat, zero<br> [0x8000086c]:sd t6, 384(ra)<br>     |
|  47|[0x800024f0]<br>0x0000000000000011|- rs1_w1_val == 4294934527<br>                                                                                                                |[0x80000880]:UCLIP32 t6, t5, 11<br> [0x80000884]:csrrs t5, vxsat, zero<br> [0x80000888]:sd t6, 400(ra)<br>     |
|  48|[0x80002500]<br>0x0000000000000000|- rs1_w1_val == 4294959103<br> - rs1_w0_val == 4294443007<br>                                                                                 |[0x8000089c]:UCLIP32 t6, t5, 12<br> [0x800008a0]:csrrs t5, vxsat, zero<br> [0x800008a4]:sd t6, 416(ra)<br>     |
|  49|[0x80002510]<br>0x0000000000000010|- rs1_w1_val == 4294963199<br>                                                                                                                |[0x800008b8]:UCLIP32 t6, t5, 26<br> [0x800008bc]:csrrs t5, vxsat, zero<br> [0x800008c0]:sd t6, 432(ra)<br>     |
|  50|[0x80002520]<br>0x0000000000000001|- rs1_w1_val == 4294966783<br>                                                                                                                |[0x800008d0]:UCLIP32 t6, t5, 1<br> [0x800008d4]:csrrs t5, vxsat, zero<br> [0x800008d8]:sd t6, 448(ra)<br>      |
|  51|[0x80002530]<br>0x00000000000003FF|- rs1_w1_val == 4294967039<br>                                                                                                                |[0x800008e8]:UCLIP32 t6, t5, 10<br> [0x800008ec]:csrrs t5, vxsat, zero<br> [0x800008f0]:sd t6, 464(ra)<br>     |
|  52|[0x80002540]<br>0x000000000000007F|- rs1_w1_val == 4294967167<br> - rs1_w0_val == 16384<br>                                                                                      |[0x80000900]:UCLIP32 t6, t5, 7<br> [0x80000904]:csrrs t5, vxsat, zero<br> [0x80000908]:sd t6, 480(ra)<br>      |
|  53|[0x80002550]<br>0x0000000000002000|- rs1_w1_val == 4294967231<br>                                                                                                                |[0x80000918]:UCLIP32 t6, t5, 31<br> [0x8000091c]:csrrs t5, vxsat, zero<br> [0x80000920]:sd t6, 496(ra)<br>     |
|  54|[0x80002560]<br>0x0000000000000080|- rs1_w1_val == 4294967279<br>                                                                                                                |[0x80000930]:UCLIP32 t6, t5, 28<br> [0x80000934]:csrrs t5, vxsat, zero<br> [0x80000938]:sd t6, 512(ra)<br>     |
|  55|[0x80002570]<br>0x0000000000000000|- rs1_w1_val == 4294967287<br>                                                                                                                |[0x80000944]:UCLIP32 t6, t5, 25<br> [0x80000948]:csrrs t5, vxsat, zero<br> [0x8000094c]:sd t6, 528(ra)<br>     |
|  56|[0x80002580]<br>0x0000000000000080|- rs1_w1_val == 4294967291<br>                                                                                                                |[0x8000095c]:UCLIP32 t6, t5, 12<br> [0x80000960]:csrrs t5, vxsat, zero<br> [0x80000964]:sd t6, 544(ra)<br>     |
|  57|[0x80002590]<br>0x0000000000000000|- rs1_w0_val == 4294967263<br>                                                                                                                |[0x80000974]:UCLIP32 t6, t5, 4<br> [0x80000978]:csrrs t5, vxsat, zero<br> [0x8000097c]:sd t6, 560(ra)<br>      |
|  58|[0x800025a0]<br>0x0800000000000000|- rs1_w0_val == 4294967279<br>                                                                                                                |[0x80000990]:UCLIP32 t6, t5, 28<br> [0x80000994]:csrrs t5, vxsat, zero<br> [0x80000998]:sd t6, 576(ra)<br>     |
|  59|[0x800025b0]<br>0x0000000000000000|- rs1_w0_val == 4294967287<br>                                                                                                                |[0x800009a8]:UCLIP32 t6, t5, 29<br> [0x800009ac]:csrrs t5, vxsat, zero<br> [0x800009b0]:sd t6, 592(ra)<br>     |
|  60|[0x800025c0]<br>0x0000000000000000|- rs1_w0_val == 4294967293<br>                                                                                                                |[0x800009c0]:UCLIP32 t6, t5, 1<br> [0x800009c4]:csrrs t5, vxsat, zero<br> [0x800009c8]:sd t6, 608(ra)<br>      |
|  61|[0x800025d0]<br>0x0000000000000000|- rs1_w0_val == 4294967294<br>                                                                                                                |[0x800009d8]:UCLIP32 t6, t5, 9<br> [0x800009dc]:csrrs t5, vxsat, zero<br> [0x800009e0]:sd t6, 624(ra)<br>      |
|  62|[0x800025e0]<br>0x0000000100000000|- rs1_w1_val == 4<br> - rs1_w0_val == 2147483648<br>                                                                                          |[0x800009ec]:UCLIP32 t6, t5, 1<br> [0x800009f0]:csrrs t5, vxsat, zero<br> [0x800009f4]:sd t6, 640(ra)<br>      |
|  63|[0x800025f0]<br>0x0000000020000000|- rs1_w0_val == 536870912<br>                                                                                                                 |[0x80000a0c]:UCLIP32 t6, t5, 31<br> [0x80000a10]:csrrs t5, vxsat, zero<br> [0x80000a14]:sd t6, 656(ra)<br>     |
|  64|[0x80002600]<br>0x0000000A000003FF|- rs1_w0_val == 268435456<br>                                                                                                                 |[0x80000a20]:UCLIP32 t6, t5, 10<br> [0x80000a24]:csrrs t5, vxsat, zero<br> [0x80000a28]:sd t6, 672(ra)<br>     |
|  65|[0x80002610]<br>0x00000000007FFFFF|- rs1_w0_val == 134217728<br>                                                                                                                 |[0x80000a38]:UCLIP32 t6, t5, 23<br> [0x80000a3c]:csrrs t5, vxsat, zero<br> [0x80000a40]:sd t6, 688(ra)<br>     |
|  66|[0x80002620]<br>0x0000002000FFFFFF|- rs1_w1_val == 32<br> - rs1_w0_val == 67108864<br>                                                                                           |[0x80000a50]:UCLIP32 t6, t5, 24<br> [0x80000a54]:csrrs t5, vxsat, zero<br> [0x80000a58]:sd t6, 704(ra)<br>     |
|  67|[0x80002630]<br>0x0000000E0000001F|- rs1_w0_val == 8388608<br>                                                                                                                   |[0x80000a68]:UCLIP32 t6, t5, 5<br> [0x80000a6c]:csrrs t5, vxsat, zero<br> [0x80000a70]:sd t6, 720(ra)<br>      |
|  68|[0x80002640]<br>0x0000000300000003|- rs1_w1_val == 4194304<br> - rs1_w0_val == 4194304<br>                                                                                       |[0x80000a84]:UCLIP32 t6, t5, 2<br> [0x80000a88]:csrrs t5, vxsat, zero<br> [0x80000a8c]:sd t6, 736(ra)<br>      |
|  69|[0x80002650]<br>0x0000000100200000|- rs1_w1_val == 1<br> - rs1_w0_val == 2097152<br>                                                                                             |[0x80000a9c]:UCLIP32 t6, t5, 27<br> [0x80000aa0]:csrrs t5, vxsat, zero<br> [0x80000aa4]:sd t6, 752(ra)<br>     |
|  70|[0x80002660]<br>0x0000000000007FFF|- rs1_w0_val == 524288<br>                                                                                                                    |[0x80000ab4]:UCLIP32 t6, t5, 15<br> [0x80000ab8]:csrrs t5, vxsat, zero<br> [0x80000abc]:sd t6, 768(ra)<br>     |
|  71|[0x80002670]<br>0x00000008000003FF|- rs1_w1_val == 8<br> - rs1_w0_val == 32768<br>                                                                                               |[0x80000acc]:UCLIP32 t6, t5, 10<br> [0x80000ad0]:csrrs t5, vxsat, zero<br> [0x80000ad4]:sd t6, 784(ra)<br>     |
|  72|[0x80002680]<br>0x0000000000000800|- rs1_w0_val == 2048<br>                                                                                                                      |[0x80000af0]:UCLIP32 t6, t5, 12<br> [0x80000af4]:csrrs t5, vxsat, zero<br> [0x80000af8]:sd t6, 800(ra)<br>     |
|  73|[0x80002690]<br>0x0000000300000003|- rs1_w0_val == 1024<br>                                                                                                                      |[0x80000b08]:UCLIP32 t6, t5, 2<br> [0x80000b0c]:csrrs t5, vxsat, zero<br> [0x80000b10]:sd t6, 816(ra)<br>      |
|  74|[0x800026a0]<br>0x0000000000000020|- rs1_w0_val == 32<br>                                                                                                                        |[0x80000b24]:UCLIP32 t6, t5, 26<br> [0x80000b28]:csrrs t5, vxsat, zero<br> [0x80000b2c]:sd t6, 832(ra)<br>     |
|  75|[0x800026b0]<br>0x0003FFFF00000008|- rs1_w0_val == 8<br>                                                                                                                         |[0x80000b40]:UCLIP32 t6, t5, 18<br> [0x80000b44]:csrrs t5, vxsat, zero<br> [0x80000b48]:sd t6, 848(ra)<br>     |
|  76|[0x800026c0]<br>0x0000000000000002|- rs1_w0_val == 2<br>                                                                                                                         |[0x80000b5c]:UCLIP32 t6, t5, 23<br> [0x80000b60]:csrrs t5, vxsat, zero<br> [0x80000b64]:sd t6, 864(ra)<br>     |
|  77|[0x800026d0]<br>0x0000000700000000|- rs1_w0_val == 4294967295<br>                                                                                                                |[0x80000b78]:UCLIP32 t6, t5, 3<br> [0x80000b7c]:csrrs t5, vxsat, zero<br> [0x80000b80]:sd t6, 880(ra)<br>      |
|  78|[0x800026e0]<br>0x0000000000000000|- rs1_w1_val == 4294967293<br>                                                                                                                |[0x80000b90]:UCLIP32 t6, t5, 8<br> [0x80000b94]:csrrs t5, vxsat, zero<br> [0x80000b98]:sd t6, 896(ra)<br>      |
|  79|[0x800026f0]<br>0x000000000000001F|- rs1_w1_val == 4294967294<br>                                                                                                                |[0x80000ba8]:UCLIP32 t6, t5, 5<br> [0x80000bac]:csrrs t5, vxsat, zero<br> [0x80000bb0]:sd t6, 912(ra)<br>      |
|  80|[0x80002700]<br>0x0000000000000000|- rs1_w1_val == 2147483648<br> - rs1_w0_val == 4294705151<br>                                                                                 |[0x80000bcc]:UCLIP32 t6, t5, 20<br> [0x80000bd0]:csrrs t5, vxsat, zero<br> [0x80000bd4]:sd t6, 928(ra)<br>     |
|  81|[0x80002710]<br>0x0007FFFF00004000|- rs1_w1_val == 1073741824<br>                                                                                                                |[0x80000be8]:UCLIP32 t6, t5, 19<br> [0x80000bec]:csrrs t5, vxsat, zero<br> [0x80000bf0]:sd t6, 944(ra)<br>     |
|  82|[0x80002720]<br>0x0000000300000003|- rs1_w1_val == 268435456<br>                                                                                                                 |[0x80000c00]:UCLIP32 t6, t5, 2<br> [0x80000c04]:csrrs t5, vxsat, zero<br> [0x80000c08]:sd t6, 960(ra)<br>      |
|  83|[0x80002730]<br>0x003FFFFF00000000|- rs1_w1_val == 33554432<br> - rs1_w0_val == 4294950911<br>                                                                                   |[0x80000c24]:UCLIP32 t6, t5, 22<br> [0x80000c28]:csrrs t5, vxsat, zero<br> [0x80000c2c]:sd t6, 976(ra)<br>     |
|  84|[0x80002740]<br>0x000007FF00000000|- rs1_w1_val == 16777216<br>                                                                                                                  |[0x80000c48]:UCLIP32 t6, t5, 11<br> [0x80000c4c]:csrrs t5, vxsat, zero<br> [0x80000c50]:sd t6, 992(ra)<br>     |
|  85|[0x80002750]<br>0x00001FFF00000000|- rs1_w1_val == 8388608<br> - rs1_w0_val == 4294963199<br>                                                                                    |[0x80000c6c]:UCLIP32 t6, t5, 13<br> [0x80000c70]:csrrs t5, vxsat, zero<br> [0x80000c74]:sd t6, 1008(ra)<br>    |
|  86|[0x80002760]<br>0x0000003F00000000|- rs1_w1_val == 1048576<br>                                                                                                                   |[0x80000c90]:UCLIP32 t6, t5, 6<br> [0x80000c94]:csrrs t5, vxsat, zero<br> [0x80000c98]:sd t6, 1024(ra)<br>     |
|  87|[0x80002770]<br>0x00001FFF00000000|- rs1_w1_val == 524288<br>                                                                                                                    |[0x80000cb4]:UCLIP32 t6, t5, 13<br> [0x80000cb8]:csrrs t5, vxsat, zero<br> [0x80000cbc]:sd t6, 1040(ra)<br>    |
|  88|[0x80002780]<br>0x00000FFF00000000|- rs1_w1_val == 262144<br> - rs1_w0_val == 4261412863<br>                                                                                     |[0x80000cd0]:UCLIP32 t6, t5, 12<br> [0x80000cd4]:csrrs t5, vxsat, zero<br> [0x80000cd8]:sd t6, 1056(ra)<br>    |
|  89|[0x80002790]<br>0x0001FFFF00000000|- rs1_w1_val == 131072<br>                                                                                                                    |[0x80000ce4]:UCLIP32 t6, t5, 17<br> [0x80000ce8]:csrrs t5, vxsat, zero<br> [0x80000cec]:sd t6, 1072(ra)<br>    |
|  90|[0x800027a0]<br>0x0000007F00000000|- rs1_w1_val == 16384<br> - rs1_w0_val == 4294966271<br>                                                                                      |[0x80000d00]:UCLIP32 t6, t5, 7<br> [0x80000d04]:csrrs t5, vxsat, zero<br> [0x80000d08]:sd t6, 1088(ra)<br>     |
|  91|[0x800027b0]<br>0x0000200000000000|- rs1_w1_val == 8192<br>                                                                                                                      |[0x80000d24]:UCLIP32 t6, t5, 26<br> [0x80000d28]:csrrs t5, vxsat, zero<br> [0x80000d2c]:sd t6, 1104(ra)<br>    |
|  92|[0x800027c0]<br>0x0000080000008000|- rs1_w1_val == 2048<br>                                                                                                                      |[0x80000d3c]:UCLIP32 t6, t5, 25<br> [0x80000d40]:csrrs t5, vxsat, zero<br> [0x80000d44]:sd t6, 1120(ra)<br>    |
|  93|[0x800027d0]<br>0x0000000300000000|- rs1_w1_val == 1024<br>                                                                                                                      |[0x80000d54]:UCLIP32 t6, t5, 2<br> [0x80000d58]:csrrs t5, vxsat, zero<br> [0x80000d5c]:sd t6, 1136(ra)<br>     |
|  94|[0x800027e0]<br>0x0000010000007FFF|- rs1_w1_val == 256<br>                                                                                                                       |[0x80000d6c]:UCLIP32 t6, t5, 15<br> [0x80000d70]:csrrs t5, vxsat, zero<br> [0x80000d74]:sd t6, 1152(ra)<br>    |
|  95|[0x800027f0]<br>0x0000000007FFFFFF|- rs1_w1_val == 4294967295<br>                                                                                                                |[0x80000d80]:UCLIP32 t6, t5, 27<br> [0x80000d84]:csrrs t5, vxsat, zero<br> [0x80000d88]:sd t6, 1168(ra)<br>    |
|  96|[0x80002800]<br>0x0000000C00000000|- rs1_w0_val == 2863311530<br>                                                                                                                |[0x80000d9c]:UCLIP32 t6, t5, 8<br> [0x80000da0]:csrrs t5, vxsat, zero<br> [0x80000da4]:sd t6, 1184(ra)<br>     |
|  97|[0x80002810]<br>0x0000000000000000|- rs1_w0_val == 3758096383<br>                                                                                                                |[0x80000db8]:UCLIP32 t6, t5, 13<br> [0x80000dbc]:csrrs t5, vxsat, zero<br> [0x80000dc0]:sd t6, 1200(ra)<br>    |
|  98|[0x80002820]<br>0x0000001300000000|- rs1_w0_val == 4160749567<br>                                                                                                                |[0x80000dd0]:UCLIP32 t6, t5, 5<br> [0x80000dd4]:csrrs t5, vxsat, zero<br> [0x80000dd8]:sd t6, 1216(ra)<br>     |
|  99|[0x80002830]<br>0x0020000000000000|- rs1_w0_val == 4227858431<br>                                                                                                                |[0x80000dec]:UCLIP32 t6, t5, 30<br> [0x80000df0]:csrrs t5, vxsat, zero<br> [0x80000df4]:sd t6, 1232(ra)<br>    |
| 100|[0x80002840]<br>0x0000000E00000000|- rs1_w0_val == 4286578687<br>                                                                                                                |[0x80000e08]:UCLIP32 t6, t5, 10<br> [0x80000e0c]:csrrs t5, vxsat, zero<br> [0x80000e10]:sd t6, 1248(ra)<br>    |
| 101|[0x80002850]<br>0x0000001000000000|- rs1_w0_val == 4292870143<br>                                                                                                                |[0x80000e24]:UCLIP32 t6, t5, 6<br> [0x80000e28]:csrrs t5, vxsat, zero<br> [0x80000e2c]:sd t6, 1264(ra)<br>     |
| 102|[0x80002860]<br>0x0000040000000000|- rs1_w0_val == 4294836223<br>                                                                                                                |[0x80000e40]:UCLIP32 t6, t5, 29<br> [0x80000e44]:csrrs t5, vxsat, zero<br> [0x80000e48]:sd t6, 1280(ra)<br>    |
| 103|[0x80002870]<br>0x0000000000000000|- rs1_w0_val == 4294901759<br>                                                                                                                |[0x80000e60]:UCLIP32 t6, t5, 24<br> [0x80000e64]:csrrs t5, vxsat, zero<br> [0x80000e68]:sd t6, 1296(ra)<br>    |
| 104|[0x80002880]<br>0x0000000000000000|- rs1_w0_val == 4294959103<br>                                                                                                                |[0x80000e7c]:UCLIP32 t6, t5, 8<br> [0x80000e80]:csrrs t5, vxsat, zero<br> [0x80000e84]:sd t6, 1312(ra)<br>     |
| 105|[0x80002890]<br>0x0000001F00000000|- rs1_w1_val == 128<br>                                                                                                                       |[0x80000e98]:UCLIP32 t6, t5, 5<br> [0x80000e9c]:csrrs t5, vxsat, zero<br> [0x80000ea0]:sd t6, 1328(ra)<br>     |
| 106|[0x800028a0]<br>0x0000004000000000|- rs1_w1_val == 64<br>                                                                                                                        |[0x80000eb4]:UCLIP32 t6, t5, 12<br> [0x80000eb8]:csrrs t5, vxsat, zero<br> [0x80000ebc]:sd t6, 1344(ra)<br>    |
| 107|[0x800028b0]<br>0x0000000000000000|- rs1_w0_val == 4294966783<br>                                                                                                                |[0x80000ecc]:UCLIP32 t6, t5, 16<br> [0x80000ed0]:csrrs t5, vxsat, zero<br> [0x80000ed4]:sd t6, 1360(ra)<br>    |
| 108|[0x800028c0]<br>0x0000000400000000|- rs1_w0_val == 4294967039<br>                                                                                                                |[0x80000ee4]:UCLIP32 t6, t5, 11<br> [0x80000ee8]:csrrs t5, vxsat, zero<br> [0x80000eec]:sd t6, 1376(ra)<br>    |
| 109|[0x800028d0]<br>0x0000000000000000|- rs1_w0_val == 4294967167<br>                                                                                                                |[0x80000ef4]:UCLIP32 t6, t5, 23<br> [0x80000ef8]:csrrs t5, vxsat, zero<br> [0x80000efc]:sd t6, 1392(ra)<br>    |
