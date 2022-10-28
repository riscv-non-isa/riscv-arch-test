
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000eb0')]      |
| SIG_REGION                | [('0x80002210', '0x800028a0', '210 dwords')]      |
| COV_LABELS                | kslliw      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kslliw-01.S    |
| Total Number of coverpoints| 240     |
| Total Coverpoints Hit     | 235      |
| Total Signature Updates   | 105      |
| STAT1                     | 104      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d34]:KSLLIW t6, t5, 19
      [0x80000d38]:csrrs t5, vxsat, zero
      [0x80000d3c]:sd t6, 1136(ra)
 -- Signature Address: 0x800027c0 Data: 0xFFFFFFFFFFC80000
 -- Redundant Coverpoints hit by the op
      - opcode : kslliw
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 19
      - rs1_w1_val == 0






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

|s.no|            signature             |                                                      coverpoints                                                      |                                                     code                                                     |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0000000000000001|- opcode : kslliw<br> - rs1 : x1<br> - rd : x1<br> - rs1 == rd<br> - rs1_w0_val == -2147483648<br> - imm_val == 14<br> |[0x800003ac]:KSLLIW ra, ra, 14<br> [0x800003b0]:csrrs ra, vxsat, zero<br> [0x800003b4]:sd ra, 0(t2)<br>       |
|   2|[0x80002220]<br>0x000000007FFFFFFF|- rs1 : x11<br> - rd : x14<br> - rs1 != rd<br> - imm_val == 31<br> - rs1_w1_val == -1025<br>                           |[0x800003c4]:KSLLIW a4, a1, 31<br> [0x800003c8]:csrrs a1, vxsat, zero<br> [0x800003cc]:sd a4, 16(t2)<br>      |
|   3|[0x80002230]<br>0xFFFFFFFF80000000|- rs1 : x23<br> - rd : x8<br> - imm_val == 30<br>                                                                      |[0x800003d8]:KSLLIW fp, s7, 30<br> [0x800003dc]:csrrs s7, vxsat, zero<br> [0x800003e0]:sd fp, 32(t2)<br>      |
|   4|[0x80002240]<br>0x0000000020000000|- rs1 : x4<br> - rd : x10<br> - imm_val == 29<br> - rs1_w1_val == 8388608<br> - rs1_w0_val == 1<br>                    |[0x800003f0]:KSLLIW a0, tp, 29<br> [0x800003f4]:csrrs tp, vxsat, zero<br> [0x800003f8]:sd a0, 48(t2)<br>      |
|   5|[0x80002250]<br>0x000000007FFFFFFF|- rs1 : x2<br> - rd : x19<br> - imm_val == 28<br> - rs1_w0_val == 16777216<br>                                         |[0x80000408]:KSLLIW s3, sp, 28<br> [0x8000040c]:csrrs sp, vxsat, zero<br> [0x80000410]:sd s3, 64(t2)<br>      |
|   6|[0x80002260]<br>0xFFFFFFFFF8000000|- rs1 : x6<br> - rd : x25<br> - imm_val == 27<br> - rs1_w1_val == -1431655766<br> - rs1_w0_val == -1<br>               |[0x80000424]:KSLLIW s9, t1, 27<br> [0x80000428]:csrrs t1, vxsat, zero<br> [0x8000042c]:sd s9, 80(t2)<br>      |
|   7|[0x80002270]<br>0xFFFFFFFF80000000|- rs1 : x12<br> - rd : x2<br> - imm_val == 26<br> - rs1_w1_val == -1073741825<br> - rs1_w0_val == -2049<br>            |[0x80000444]:KSLLIW sp, a2, 26<br> [0x80000448]:csrrs a2, vxsat, zero<br> [0x8000044c]:sd sp, 96(t2)<br>      |
|   8|[0x80002280]<br>0xFFFFFFFF80000000|- rs1 : x24<br> - rd : x31<br> - imm_val == 25<br> - rs1_w1_val == 128<br> - rs1_w0_val == -268435457<br>              |[0x80000460]:KSLLIW t6, s8, 25<br> [0x80000464]:csrrs s8, vxsat, zero<br> [0x80000468]:sd t6, 112(t2)<br>     |
|   9|[0x80002290]<br>0x000000007FFFFFFF|- rs1 : x31<br> - rd : x24<br> - imm_val == 24<br> - rs1_w1_val == 2097152<br> - rs1_w0_val == 2147483647<br>          |[0x8000047c]:KSLLIW s8, t6, 24<br> [0x80000480]:csrrs t6, vxsat, zero<br> [0x80000484]:sd s8, 128(t2)<br>     |
|  10|[0x800022a0]<br>0xFFFFFFFF80000000|- rs1 : x9<br> - rd : x27<br> - imm_val == 23<br> - rs1_w0_val == -257<br>                                             |[0x80000494]:KSLLIW s11, s1, 23<br> [0x80000498]:csrrs s1, vxsat, zero<br> [0x8000049c]:sd s11, 144(t2)<br>   |
|  11|[0x800022b0]<br>0x000000007FFFFFFF|- rs1 : x16<br> - rd : x3<br> - imm_val == 22<br> - rs1_w1_val == -16385<br> - rs1_w0_val == 67108864<br>              |[0x800004ac]:KSLLIW gp, a6, 22<br> [0x800004b0]:csrrs a6, vxsat, zero<br> [0x800004b4]:sd gp, 160(t2)<br>     |
|  12|[0x800022c0]<br>0xFFFFFFFF80000000|- rs1 : x27<br> - rd : x22<br> - imm_val == 21<br> - rs1_w1_val == 2147483647<br> - rs1_w0_val == -524289<br>          |[0x800004cc]:KSLLIW s6, s11, 21<br> [0x800004d0]:csrrs s11, vxsat, zero<br> [0x800004d4]:sd s6, 176(t2)<br>   |
|  13|[0x800022d0]<br>0x0000000000000000|- rs1 : x19<br> - rd : x26<br> - imm_val == 20<br> - rs1_w1_val == 16777216<br> - rs1_w0_val == 0<br>                  |[0x800004e0]:KSLLIW s10, s3, 20<br> [0x800004e4]:csrrs s3, vxsat, zero<br> [0x800004e8]:sd s10, 192(t2)<br>   |
|  14|[0x800022e0]<br>0xFFFFFFFF80000000|- rs1 : x13<br> - rd : x17<br> - imm_val == 19<br> - rs1_w1_val == 1073741824<br> - rs1_w0_val == -4194305<br>         |[0x80000500]:KSLLIW a7, a3, 19<br> [0x80000504]:csrrs a3, vxsat, zero<br> [0x80000508]:sd a7, 208(t2)<br>     |
|  15|[0x800022f0]<br>0xFFFFFFFF80000000|- rs1 : x3<br> - rd : x30<br> - imm_val == 18<br> - rs1_w1_val == 134217728<br> - rs1_w0_val == -1431655766<br>        |[0x80000528]:KSLLIW t5, gp, 18<br> [0x8000052c]:csrrs gp, vxsat, zero<br> [0x80000530]:sd t5, 224(t2)<br>     |
|  16|[0x80002300]<br>0x0000000000000000|- rs1 : x0<br> - rd : x29<br> - imm_val == 17<br> - rs1_w1_val == 0<br>                                                |[0x80000548]:KSLLIW t4, zero, 17<br> [0x8000054c]:csrrs zero, vxsat, zero<br> [0x80000550]:sd t4, 240(t2)<br> |
|  17|[0x80002310]<br>0x0000000000050000|- rs1 : x22<br> - rd : x9<br> - imm_val == 16<br> - rs1_w1_val == -33554433<br>                                        |[0x80000564]:KSLLIW s1, s6, 16<br> [0x80000568]:csrrs s6, vxsat, zero<br> [0x8000056c]:sd s1, 256(t2)<br>     |
|  18|[0x80002320]<br>0x0000000040000000|- rs1 : x10<br> - rd : x5<br> - imm_val == 15<br> - rs1_w1_val == 8<br> - rs1_w0_val == 32768<br>                      |[0x8000057c]:KSLLIW t0, a0, 15<br> [0x80000580]:csrrs a0, vxsat, zero<br> [0x80000584]:sd t0, 272(t2)<br>     |
|  19|[0x80002330]<br>0x0000000000004000|- rs1 : x30<br> - rd : x15<br> - imm_val == 13<br> - rs1_w0_val == 2<br>                                               |[0x80000598]:KSLLIW a5, t5, 13<br> [0x8000059c]:csrrs t5, vxsat, zero<br> [0x800005a0]:sd a5, 288(t2)<br>     |
|  20|[0x80002340]<br>0xFFFFFFFFFFFFE000|- rs1 : x28<br> - rd : x18<br> - imm_val == 12<br> - rs1_w1_val == -257<br> - rs1_w0_val == -2<br>                     |[0x800005b0]:KSLLIW s2, t3, 12<br> [0x800005b4]:csrrs t3, vxsat, zero<br> [0x800005b8]:sd s2, 304(t2)<br>     |
|  21|[0x80002350]<br>0xFFFFFFFFFFDFF800|- rs1 : x8<br> - rd : x4<br> - imm_val == 11<br> - rs1_w0_val == -1025<br>                                             |[0x800005d0]:KSLLIW tp, fp, 11<br> [0x800005d4]:csrrs fp, vxsat, zero<br> [0x800005d8]:sd tp, 0(ra)<br>       |
|  22|[0x80002360]<br>0x000000007FFFFFFF|- rs1 : x15<br> - rd : x23<br> - imm_val == 10<br> - rs1_w1_val == 2<br>                                               |[0x800005e8]:KSLLIW s7, a5, 10<br> [0x800005ec]:csrrs a5, vxsat, zero<br> [0x800005f0]:sd s7, 16(ra)<br>      |
|  23|[0x80002370]<br>0xFFFFFFFFFFFFF400|- rs1 : x29<br> - rd : x7<br> - imm_val == 9<br> - rs1_w1_val == 32<br>                                                |[0x80000600]:KSLLIW t2, t4, 9<br> [0x80000604]:csrrs t4, vxsat, zero<br> [0x80000608]:sd t2, 32(ra)<br>       |
|  24|[0x80002380]<br>0x000000007FFFFFFF|- rs1 : x26<br> - rd : x21<br> - imm_val == 8<br> - rs1_w1_val == -17<br> - rs1_w0_val == 1073741824<br>               |[0x80000614]:KSLLIW s5, s10, 8<br> [0x80000618]:csrrs s10, vxsat, zero<br> [0x8000061c]:sd s5, 48(ra)<br>     |
|  25|[0x80002390]<br>0x0000000000000000|- rs1 : x18<br> - rd : x0<br> - imm_val == 7<br> - rs1_w1_val == 262144<br>                                            |[0x80000638]:KSLLIW zero, s2, 7<br> [0x8000063c]:csrrs s2, vxsat, zero<br> [0x80000640]:sd zero, 64(ra)<br>   |
|  26|[0x800023a0]<br>0xFFFFFFFFF7FFFFC0|- rs1 : x5<br> - rd : x20<br> - imm_val == 6<br> - rs1_w0_val == -2097153<br>                                          |[0x80000654]:KSLLIW s4, t0, 6<br> [0x80000658]:csrrs t0, vxsat, zero<br> [0x8000065c]:sd s4, 80(ra)<br>       |
|  27|[0x800023b0]<br>0xFFFFFFFF80000000|- rs1 : x21<br> - rd : x13<br> - imm_val == 5<br> - rs1_w1_val == -2147483648<br>                                      |[0x8000067c]:KSLLIW a3, s5, 5<br> [0x80000680]:csrrs s5, vxsat, zero<br> [0x80000684]:sd a3, 96(ra)<br>       |
|  28|[0x800023c0]<br>0x0000000020000000|- rs1 : x7<br> - rd : x16<br> - imm_val == 4<br> - rs1_w1_val == 67108864<br> - rs1_w0_val == 33554432<br>             |[0x80000698]:KSLLIW a6, t2, 4<br> [0x8000069c]:csrrs t2, vxsat, zero<br> [0x800006a0]:sd a6, 112(ra)<br>      |
|  29|[0x800023d0]<br>0x0000000002000000|- rs1 : x14<br> - rd : x12<br> - imm_val == 3<br> - rs1_w0_val == 4194304<br>                                          |[0x800006b0]:KSLLIW a2, a4, 3<br> [0x800006b4]:csrrs a4, vxsat, zero<br> [0x800006b8]:sd a2, 128(ra)<br>      |
|  30|[0x800023e0]<br>0xFFFFFFFFFEFFFFFC|- rs1 : x25<br> - rd : x11<br> - imm_val == 2<br>                                                                      |[0x800006cc]:KSLLIW a1, s9, 2<br> [0x800006d0]:csrrs s9, vxsat, zero<br> [0x800006d4]:sd a1, 144(ra)<br>      |
|  31|[0x800023f0]<br>0xFFFFFFFFFFFFEFFE|- rs1 : x20<br> - rd : x6<br> - imm_val == 1<br> - rs1_w1_val == -131073<br>                                           |[0x800006ec]:KSLLIW t1, s4, 1<br> [0x800006f0]:csrrs s4, vxsat, zero<br> [0x800006f4]:sd t1, 160(ra)<br>      |
|  32|[0x80002400]<br>0xFFFFFFFFFBFFFFFF|- rs1 : x17<br> - rd : x28<br> - imm_val == 0<br> - rs1_w1_val == -9<br> - rs1_w0_val == -67108865<br>                 |[0x80000704]:KSLLIW t3, a7, 0<br> [0x80000708]:csrrs a7, vxsat, zero<br> [0x8000070c]:sd t3, 176(ra)<br>      |
|  33|[0x80002410]<br>0x000000007FFFFFFF|- rs1_w1_val == 1431655765<br> - rs1_w0_val == 268435456<br>                                                           |[0x80000724]:KSLLIW t6, t5, 23<br> [0x80000728]:csrrs t5, vxsat, zero<br> [0x8000072c]:sd t6, 192(ra)<br>     |
|  34|[0x80002420]<br>0x000000007FFFFFFF|- rs1_w1_val == -536870913<br>                                                                                         |[0x80000740]:KSLLIW t6, t5, 9<br> [0x80000744]:csrrs t5, vxsat, zero<br> [0x80000748]:sd t6, 208(ra)<br>      |
|  35|[0x80002430]<br>0xFFFFFFFF80000000|- rs1_w1_val == -268435457<br>                                                                                         |[0x80000758]:KSLLIW t6, t5, 20<br> [0x8000075c]:csrrs t5, vxsat, zero<br> [0x80000760]:sd t6, 224(ra)<br>     |
|  36|[0x80002440]<br>0x000000007FFFFFFF|- rs1_w1_val == -134217729<br>                                                                                         |[0x80000774]:KSLLIW t6, t5, 8<br> [0x80000778]:csrrs t5, vxsat, zero<br> [0x8000077c]:sd t6, 240(ra)<br>      |
|  37|[0x80002450]<br>0x0000000000010000|- rs1_w1_val == -67108865<br> - rs1_w0_val == 1024<br>                                                                 |[0x80000790]:KSLLIW t6, t5, 6<br> [0x80000794]:csrrs t5, vxsat, zero<br> [0x80000798]:sd t6, 256(ra)<br>      |
|  38|[0x80002460]<br>0x000000007FFFFFFF|- rs1_w1_val == -16777217<br>                                                                                          |[0x800007ac]:KSLLIW t6, t5, 17<br> [0x800007b0]:csrrs t5, vxsat, zero<br> [0x800007b4]:sd t6, 272(ra)<br>     |
|  39|[0x80002470]<br>0xFFFFFFFFFFFF7FFE|- rs1_w1_val == -8388609<br> - rs1_w0_val == -16385<br>                                                                |[0x800007cc]:KSLLIW t6, t5, 1<br> [0x800007d0]:csrrs t5, vxsat, zero<br> [0x800007d4]:sd t6, 288(ra)<br>      |
|  40|[0x80002480]<br>0x000000007FFFFFFF|- rs1_w1_val == -4194305<br>                                                                                           |[0x800007e4]:KSLLIW t6, t5, 1<br> [0x800007e8]:csrrs t5, vxsat, zero<br> [0x800007ec]:sd t6, 304(ra)<br>      |
|  41|[0x80002490]<br>0x0000000040000000|- rs1_w1_val == -2097153<br> - rs1_w0_val == 4<br>                                                                     |[0x80000800]:KSLLIW t6, t5, 28<br> [0x80000804]:csrrs t5, vxsat, zero<br> [0x80000808]:sd t6, 320(ra)<br>     |
|  42|[0x800024a0]<br>0xFFFFFFFFFF7C0000|- rs1_w1_val == -1048577<br> - rs1_w0_val == -33<br>                                                                   |[0x80000818]:KSLLIW t6, t5, 18<br> [0x8000081c]:csrrs t5, vxsat, zero<br> [0x80000820]:sd t6, 336(ra)<br>     |
|  43|[0x800024b0]<br>0xFFFFFFFFFDFFFFFC|- rs1_w1_val == -262145<br> - rs1_w0_val == -8388609<br>                                                               |[0x80000834]:KSLLIW t6, t5, 2<br> [0x80000838]:csrrs t5, vxsat, zero<br> [0x8000083c]:sd t6, 352(ra)<br>      |
|  44|[0x800024c0]<br>0xFFFFFFFFFFFDFE00|- rs1_w1_val == -65537<br>                                                                                             |[0x8000084c]:KSLLIW t6, t5, 9<br> [0x80000850]:csrrs t5, vxsat, zero<br> [0x80000854]:sd t6, 368(ra)<br>      |
|  45|[0x800024d0]<br>0x0000000008000000|- rs1_w1_val == -32769<br>                                                                                             |[0x80000864]:KSLLIW t6, t5, 2<br> [0x80000868]:csrrs t5, vxsat, zero<br> [0x8000086c]:sd t6, 384(ra)<br>      |
|  46|[0x800024e0]<br>0xFFFFFFFF80000000|- rs1_w1_val == -8193<br> - rs1_w0_val == -1073741825<br>                                                              |[0x80000880]:KSLLIW t6, t5, 7<br> [0x80000884]:csrrs t5, vxsat, zero<br> [0x80000888]:sd t6, 400(ra)<br>      |
|  47|[0x800024f0]<br>0x000000007FFFFFFF|- rs1_w1_val == -4097<br>                                                                                              |[0x8000089c]:KSLLIW t6, t5, 11<br> [0x800008a0]:csrrs t5, vxsat, zero<br> [0x800008a4]:sd t6, 416(ra)<br>     |
|  48|[0x80002500]<br>0x000000007FFFFFFF|- rs1_w1_val == -2049<br>                                                                                              |[0x800008b8]:KSLLIW t6, t5, 11<br> [0x800008bc]:csrrs t5, vxsat, zero<br> [0x800008c0]:sd t6, 432(ra)<br>     |
|  49|[0x80002510]<br>0x0000000000008000|- rs1_w1_val == -513<br> - rs1_w0_val == 16<br>                                                                        |[0x800008d0]:KSLLIW t6, t5, 11<br> [0x800008d4]:csrrs t5, vxsat, zero<br> [0x800008d8]:sd t6, 448(ra)<br>     |
|  50|[0x80002520]<br>0x000000007FFFFFFF|- rs1_w1_val == -129<br>                                                                                               |[0x800008e8]:KSLLIW t6, t5, 5<br> [0x800008ec]:csrrs t5, vxsat, zero<br> [0x800008f0]:sd t6, 464(ra)<br>      |
|  51|[0x80002530]<br>0x0000000000010000|- rs1_w1_val == -65<br>                                                                                                |[0x80000900]:KSLLIW t6, t5, 1<br> [0x80000904]:csrrs t5, vxsat, zero<br> [0x80000908]:sd t6, 480(ra)<br>      |
|  52|[0x80002540]<br>0xFFFFFFFFFFFFFDF8|- rs1_w0_val == -65<br>                                                                                                |[0x80000918]:KSLLIW t6, t5, 3<br> [0x8000091c]:csrrs t5, vxsat, zero<br> [0x80000920]:sd t6, 496(ra)<br>      |
|  53|[0x80002550]<br>0xFFFFFFFFEF000000|- rs1_w0_val == -17<br>                                                                                                |[0x80000930]:KSLLIW t6, t5, 24<br> [0x80000934]:csrrs t5, vxsat, zero<br> [0x80000938]:sd t6, 512(ra)<br>     |
|  54|[0x80002560]<br>0xFFFFFFFFFFFFB800|- rs1_w1_val == -33<br> - rs1_w0_val == -9<br>                                                                         |[0x80000948]:KSLLIW t6, t5, 11<br> [0x8000094c]:csrrs t5, vxsat, zero<br> [0x80000950]:sd t6, 528(ra)<br>     |
|  55|[0x80002570]<br>0xFFFFFFFFFF600000|- rs1_w0_val == -5<br>                                                                                                 |[0x80000964]:KSLLIW t6, t5, 21<br> [0x80000968]:csrrs t5, vxsat, zero<br> [0x8000096c]:sd t6, 544(ra)<br>     |
|  56|[0x80002580]<br>0xFFFFFFFFA0000000|- rs1_w0_val == -3<br>                                                                                                 |[0x8000097c]:KSLLIW t6, t5, 29<br> [0x80000980]:csrrs t5, vxsat, zero<br> [0x80000984]:sd t6, 560(ra)<br>     |
|  57|[0x80002590]<br>0x000000007FFFFFFF|- rs1_w0_val == 536870912<br>                                                                                          |[0x80000994]:KSLLIW t6, t5, 12<br> [0x80000998]:csrrs t5, vxsat, zero<br> [0x8000099c]:sd t6, 576(ra)<br>     |
|  58|[0x800025a0]<br>0x000000007FFFFFFF|- rs1_w1_val == 8192<br> - rs1_w0_val == 134217728<br>                                                                 |[0x800009ac]:KSLLIW t6, t5, 13<br> [0x800009b0]:csrrs t5, vxsat, zero<br> [0x800009b4]:sd t6, 592(ra)<br>     |
|  59|[0x800025b0]<br>0x000000007FFFFFFF|- rs1_w0_val == 8388608<br>                                                                                            |[0x800009c8]:KSLLIW t6, t5, 17<br> [0x800009cc]:csrrs t5, vxsat, zero<br> [0x800009d0]:sd t6, 608(ra)<br>     |
|  60|[0x800025c0]<br>0x000000007FFFFFFF|- rs1_w1_val == 1<br> - rs1_w0_val == 2097152<br>                                                                      |[0x800009e0]:KSLLIW t6, t5, 24<br> [0x800009e4]:csrrs t5, vxsat, zero<br> [0x800009e8]:sd t6, 624(ra)<br>     |
|  61|[0x800025d0]<br>0x0000000001000000|- rs1_w0_val == 1048576<br>                                                                                            |[0x80000a00]:KSLLIW t6, t5, 4<br> [0x80000a04]:csrrs t5, vxsat, zero<br> [0x80000a08]:sd t6, 640(ra)<br>      |
|  62|[0x800025e0]<br>0x0000000040000000|- rs1_w0_val == 524288<br>                                                                                             |[0x80000a20]:KSLLIW t6, t5, 11<br> [0x80000a24]:csrrs t5, vxsat, zero<br> [0x80000a28]:sd t6, 656(ra)<br>     |
|  63|[0x800025f0]<br>0x000000007FFFFFFF|- rs1_w0_val == 262144<br>                                                                                             |[0x80000a3c]:KSLLIW t6, t5, 31<br> [0x80000a40]:csrrs t5, vxsat, zero<br> [0x80000a44]:sd t6, 672(ra)<br>     |
|  64|[0x80002600]<br>0x0000000000800000|- rs1_w1_val == 1024<br> - rs1_w0_val == 131072<br>                                                                    |[0x80000a54]:KSLLIW t6, t5, 6<br> [0x80000a58]:csrrs t5, vxsat, zero<br> [0x80000a5c]:sd t6, 688(ra)<br>      |
|  65|[0x80002610]<br>0x0000000000020000|- rs1_w0_val == 65536<br>                                                                                              |[0x80000a74]:KSLLIW t6, t5, 1<br> [0x80000a78]:csrrs t5, vxsat, zero<br> [0x80000a7c]:sd t6, 704(ra)<br>      |
|  66|[0x80002620]<br>0x000000007FFFFFFF|- rs1_w1_val == 33554432<br> - rs1_w0_val == 16384<br>                                                                 |[0x80000a90]:KSLLIW t6, t5, 27<br> [0x80000a94]:csrrs t5, vxsat, zero<br> [0x80000a98]:sd t6, 720(ra)<br>     |
|  67|[0x80002630]<br>0x000000007FFFFFFF|- rs1_w1_val == 536870912<br> - rs1_w0_val == 8192<br>                                                                 |[0x80000aac]:KSLLIW t6, t5, 20<br> [0x80000ab0]:csrrs t5, vxsat, zero<br> [0x80000ab4]:sd t6, 736(ra)<br>     |
|  68|[0x80002640]<br>0x000000007FFFFFFF|- rs1_w0_val == 4096<br>                                                                                               |[0x80000ac4]:KSLLIW t6, t5, 23<br> [0x80000ac8]:csrrs t5, vxsat, zero<br> [0x80000acc]:sd t6, 752(ra)<br>     |
|  69|[0x80002650]<br>0x000000007FFFFFFF|- rs1_w0_val == 2048<br>                                                                                               |[0x80000ae8]:KSLLIW t6, t5, 29<br> [0x80000aec]:csrrs t5, vxsat, zero<br> [0x80000af0]:sd t6, 768(ra)<br>     |
|  70|[0x80002660]<br>0x000000007FFFFFFF|- rs1_w1_val == 32768<br> - rs1_w0_val == 512<br>                                                                      |[0x80000b00]:KSLLIW t6, t5, 27<br> [0x80000b04]:csrrs t5, vxsat, zero<br> [0x80000b08]:sd t6, 784(ra)<br>     |
|  71|[0x80002670]<br>0x0000000000000200|- rs1_w0_val == 256<br>                                                                                                |[0x80000b18]:KSLLIW t6, t5, 1<br> [0x80000b1c]:csrrs t5, vxsat, zero<br> [0x80000b20]:sd t6, 800(ra)<br>      |
|  72|[0x80002680]<br>0x000000007FFFFFFF|- rs1_w0_val == 128<br>                                                                                                |[0x80000b30]:KSLLIW t6, t5, 27<br> [0x80000b34]:csrrs t5, vxsat, zero<br> [0x80000b38]:sd t6, 816(ra)<br>     |
|  73|[0x80002690]<br>0x0000000004000000|- rs1_w0_val == 64<br>                                                                                                 |[0x80000b4c]:KSLLIW t6, t5, 20<br> [0x80000b50]:csrrs t5, vxsat, zero<br> [0x80000b54]:sd t6, 832(ra)<br>     |
|  74|[0x800026a0]<br>0x0000000000800000|- rs1_w0_val == 32<br>                                                                                                 |[0x80000b64]:KSLLIW t6, t5, 18<br> [0x80000b68]:csrrs t5, vxsat, zero<br> [0x80000b6c]:sd t6, 848(ra)<br>     |
|  75|[0x800026b0]<br>0x0000000000000200|- rs1_w0_val == 8<br>                                                                                                  |[0x80000b7c]:KSLLIW t6, t5, 6<br> [0x80000b80]:csrrs t5, vxsat, zero<br> [0x80000b84]:sd t6, 864(ra)<br>      |
|  76|[0x800026c0]<br>0x000000007FFFFFFF|- rs1_w1_val == -5<br> - rs1_w0_val == 1431655765<br>                                                                  |[0x80000b98]:KSLLIW t6, t5, 31<br> [0x80000b9c]:csrrs t5, vxsat, zero<br> [0x80000ba0]:sd t6, 880(ra)<br>     |
|  77|[0x800026d0]<br>0x0000000000000300|- rs1_w1_val == -3<br>                                                                                                 |[0x80000bb0]:KSLLIW t6, t5, 7<br> [0x80000bb4]:csrrs t5, vxsat, zero<br> [0x80000bb8]:sd t6, 896(ra)<br>      |
|  78|[0x800026e0]<br>0x0000000000000100|- rs1_w1_val == -2<br>                                                                                                 |[0x80000bc8]:KSLLIW t6, t5, 6<br> [0x80000bcc]:csrrs t5, vxsat, zero<br> [0x80000bd0]:sd t6, 912(ra)<br>      |
|  79|[0x800026f0]<br>0x0000000000000100|- rs1_w1_val == 268435456<br>                                                                                          |[0x80000be0]:KSLLIW t6, t5, 2<br> [0x80000be4]:csrrs t5, vxsat, zero<br> [0x80000be8]:sd t6, 928(ra)<br>      |
|  80|[0x80002700]<br>0x000000007FFFFFFE|- rs1_w1_val == 4194304<br>                                                                                            |[0x80000bfc]:KSLLIW t6, t5, 1<br> [0x80000c00]:csrrs t5, vxsat, zero<br> [0x80000c04]:sd t6, 944(ra)<br>      |
|  81|[0x80002710]<br>0xFFFFFFFFFBFFC000|- rs1_w1_val == 1048576<br> - rs1_w0_val == -4097<br>                                                                  |[0x80000c20]:KSLLIW t6, t5, 14<br> [0x80000c24]:csrrs t5, vxsat, zero<br> [0x80000c28]:sd t6, 960(ra)<br>     |
|  82|[0x80002720]<br>0xFFFFFFFF80000000|- rs1_w1_val == 524288<br>                                                                                             |[0x80000c3c]:KSLLIW t6, t5, 17<br> [0x80000c40]:csrrs t5, vxsat, zero<br> [0x80000c44]:sd t6, 976(ra)<br>     |
|  83|[0x80002730]<br>0x0000000010000000|- rs1_w1_val == 131072<br>                                                                                             |[0x80000c54]:KSLLIW t6, t5, 28<br> [0x80000c58]:csrrs t5, vxsat, zero<br> [0x80000c5c]:sd t6, 992(ra)<br>     |
|  84|[0x80002740]<br>0x0000000020000000|- rs1_w1_val == 65536<br>                                                                                              |[0x80000c6c]:KSLLIW t6, t5, 27<br> [0x80000c70]:csrrs t5, vxsat, zero<br> [0x80000c74]:sd t6, 1008(ra)<br>    |
|  85|[0x80002750]<br>0x0000000000800000|- rs1_w1_val == 16384<br>                                                                                              |[0x80000c84]:KSLLIW t6, t5, 23<br> [0x80000c88]:csrrs t5, vxsat, zero<br> [0x80000c8c]:sd t6, 1024(ra)<br>    |
|  86|[0x80002760]<br>0xFFFFFFFFDFFF8000|- rs1_w1_val == 4096<br>                                                                                               |[0x80000ca0]:KSLLIW t6, t5, 15<br> [0x80000ca4]:csrrs t5, vxsat, zero<br> [0x80000ca8]:sd t6, 1040(ra)<br>    |
|  87|[0x80002770]<br>0xFFFFFFFFD8000000|- rs1_w1_val == 2048<br>                                                                                               |[0x80000cbc]:KSLLIW t6, t5, 26<br> [0x80000cc0]:csrrs t5, vxsat, zero<br> [0x80000cc4]:sd t6, 1056(ra)<br>    |
|  88|[0x80002780]<br>0x000000007FFFFFFF|- rs1_w1_val == 512<br>                                                                                                |[0x80000cd4]:KSLLIW t6, t5, 24<br> [0x80000cd8]:csrrs t5, vxsat, zero<br> [0x80000cdc]:sd t6, 1072(ra)<br>    |
|  89|[0x80002790]<br>0x0000000000400000|- rs1_w1_val == 256<br>                                                                                                |[0x80000cec]:KSLLIW t6, t5, 0<br> [0x80000cf0]:csrrs t5, vxsat, zero<br> [0x80000cf4]:sd t6, 1088(ra)<br>     |
|  90|[0x800027a0]<br>0x000000007FFFFFFF|- rs1_w1_val == 64<br>                                                                                                 |[0x80000d04]:KSLLIW t6, t5, 21<br> [0x80000d08]:csrrs t5, vxsat, zero<br> [0x80000d0c]:sd t6, 1104(ra)<br>    |
|  91|[0x800027b0]<br>0xFFFFFFFF80000000|- rs1_w1_val == 4<br> - rs1_w0_val == -33554433<br>                                                                    |[0x80000d1c]:KSLLIW t6, t5, 11<br> [0x80000d20]:csrrs t5, vxsat, zero<br> [0x80000d24]:sd t6, 1120(ra)<br>    |
|  92|[0x800027d0]<br>0x000000007FFFFFFF|- rs1_w1_val == -1<br>                                                                                                 |[0x80000d48]:KSLLIW t6, t5, 26<br> [0x80000d4c]:csrrs t5, vxsat, zero<br> [0x80000d50]:sd t6, 1152(ra)<br>    |
|  93|[0x800027e0]<br>0xFFFFFFFF80000000|- rs1_w0_val == -536870913<br>                                                                                         |[0x80000d60]:KSLLIW t6, t5, 25<br> [0x80000d64]:csrrs t5, vxsat, zero<br> [0x80000d68]:sd t6, 1168(ra)<br>    |
|  94|[0x800027f0]<br>0xFFFFFFFF80000000|- rs1_w0_val == -134217729<br>                                                                                         |[0x80000d7c]:KSLLIW t6, t5, 25<br> [0x80000d80]:csrrs t5, vxsat, zero<br> [0x80000d84]:sd t6, 1184(ra)<br>    |
|  95|[0x80002800]<br>0xFFFFFFFF80000000|- rs1_w0_val == -16777217<br>                                                                                          |[0x80000d9c]:KSLLIW t6, t5, 11<br> [0x80000da0]:csrrs t5, vxsat, zero<br> [0x80000da4]:sd t6, 1200(ra)<br>    |
|  96|[0x80002810]<br>0xFFFFFFFF80000000|- rs1_w0_val == -1048577<br>                                                                                           |[0x80000db8]:KSLLIW t6, t5, 14<br> [0x80000dbc]:csrrs t5, vxsat, zero<br> [0x80000dc0]:sd t6, 1216(ra)<br>    |
|  97|[0x80002820]<br>0xFFFFFFFFF7FFFE00|- rs1_w0_val == -262145<br>                                                                                            |[0x80000dd4]:KSLLIW t6, t5, 9<br> [0x80000dd8]:csrrs t5, vxsat, zero<br> [0x80000ddc]:sd t6, 1232(ra)<br>     |
|  98|[0x80002830]<br>0xFFFFFFFF80000000|- rs1_w0_val == -131073<br>                                                                                            |[0x80000df8]:KSLLIW t6, t5, 29<br> [0x80000dfc]:csrrs t5, vxsat, zero<br> [0x80000e00]:sd t6, 1248(ra)<br>    |
|  99|[0x80002840]<br>0xFFFFFFFFFF7FFF80|- rs1_w0_val == -65537<br>                                                                                             |[0x80000e14]:KSLLIW t6, t5, 7<br> [0x80000e18]:csrrs t5, vxsat, zero<br> [0x80000e1c]:sd t6, 1264(ra)<br>     |
| 100|[0x80002850]<br>0xFFFFFFFF80000000|- rs1_w0_val == -8193<br>                                                                                              |[0x80000e38]:KSLLIW t6, t5, 29<br> [0x80000e3c]:csrrs t5, vxsat, zero<br> [0x80000e40]:sd t6, 1280(ra)<br>    |
| 101|[0x80002860]<br>0xFFFFFFFF80000000|- rs1_w0_val == -513<br>                                                                                               |[0x80000e50]:KSLLIW t6, t5, 22<br> [0x80000e54]:csrrs t5, vxsat, zero<br> [0x80000e58]:sd t6, 1296(ra)<br>    |
| 102|[0x80002870]<br>0xFFFFFFFF80000000|- rs1_w1_val == 16<br>                                                                                                 |[0x80000e68]:KSLLIW t6, t5, 16<br> [0x80000e6c]:csrrs t5, vxsat, zero<br> [0x80000e70]:sd t6, 1312(ra)<br>    |
| 103|[0x80002880]<br>0xFFFFFFFFFFFEFE00|- rs1_w0_val == -129<br>                                                                                               |[0x80000e80]:KSLLIW t6, t5, 9<br> [0x80000e84]:csrrs t5, vxsat, zero<br> [0x80000e88]:sd t6, 1328(ra)<br>     |
| 104|[0x80002890]<br>0xFFFFFFFF80000000|- rs1_w1_val == -524289<br> - rs1_w0_val == -32769<br>                                                                 |[0x80000ea0]:KSLLIW t6, t5, 17<br> [0x80000ea4]:csrrs t5, vxsat, zero<br> [0x80000ea8]:sd t6, 1344(ra)<br>    |
