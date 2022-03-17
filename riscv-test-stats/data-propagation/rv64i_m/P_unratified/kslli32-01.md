
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000e70')]      |
| SIG_REGION                | [('0x80002210', '0x80002870', '204 dwords')]      |
| COV_LABELS                | kslli32      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kslli32-01.S    |
| Total Number of coverpoints| 240     |
| Total Coverpoints Hit     | 235      |
| Total Signature Updates   | 102      |
| STAT1                     | 101      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e40]:KSLLI32 t6, t5, 26
      [0x80000e44]:csrrs t5, vxsat, zero
      [0x80000e48]:sd t6, 1264(t0)
 -- Signature Address: 0x80002850 Data: 0x7FFFFFFF7FFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : kslli32
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 26
      - rs1_w1_val == 1073741824
      - rs1_w0_val == 536870912






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

|s.no|            signature             |                                                                     coverpoints                                                                      |                                                     code                                                      |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0000000000000001|- opcode : kslli32<br> - rs1 : x5<br> - rd : x5<br> - rs1 == rd<br> - rs1_w0_val == -2147483648<br> - imm_val == 12<br> - rs1_w1_val == 268435456<br> |[0x800003b0]:KSLLI32 t0, t0, 12<br> [0x800003b4]:csrrs t0, vxsat, zero<br> [0x800003b8]:sd t0, 0(ra)<br>       |
|   2|[0x80002220]<br>0x800000007FFFFFFF|- rs1 : x3<br> - rd : x15<br> - rs1 != rd<br> - imm_val == 31<br> - rs1_w1_val == -536870913<br> - rs1_w0_val == 64<br>                               |[0x800003cc]:KSLLI32 a5, gp, 31<br> [0x800003d0]:csrrs gp, vxsat, zero<br> [0x800003d4]:sd a5, 16(ra)<br>      |
|   3|[0x80002230]<br>0x7FFFFFFF7FFFFFFF|- rs1 : x11<br> - rd : x8<br> - imm_val == 30<br> - rs1_w1_val == 2048<br> - rs1_w0_val == 4194304<br>                                                |[0x800003e4]:KSLLI32 fp, a1, 30<br> [0x800003e8]:csrrs a1, vxsat, zero<br> [0x800003ec]:sd fp, 32(ra)<br>      |
|   4|[0x80002240]<br>0x8000000080000000|- rs1 : x21<br> - rd : x20<br> - imm_val == 29<br> - rs1_w1_val == -32769<br> - rs1_w0_val == -1025<br>                                               |[0x800003fc]:KSLLI32 s4, s5, 29<br> [0x80000400]:csrrs s5, vxsat, zero<br> [0x80000404]:sd s4, 48(ra)<br>      |
|   5|[0x80002250]<br>0xE0000000E0000000|- rs1 : x25<br> - rd : x21<br> - imm_val == 28<br> - rs1_w1_val == -2<br> - rs1_w0_val == -2<br>                                                      |[0x80000414]:KSLLI32 s5, s9, 28<br> [0x80000418]:csrrs s9, vxsat, zero<br> [0x8000041c]:sd s5, 64(ra)<br>      |
|   6|[0x80002260]<br>0x7FFFFFFF80000000|- rs1 : x10<br> - rd : x31<br> - imm_val == 27<br> - rs1_w1_val == 134217728<br> - rs1_w0_val == -16385<br>                                           |[0x80000438]:KSLLI32 t6, a0, 27<br> [0x8000043c]:csrrs a0, vxsat, zero<br> [0x80000440]:sd t6, 80(ra)<br>      |
|   7|[0x80002270]<br>0x0000000000000000|- rs1 : x24<br> - rd : x0<br> - imm_val == 26<br> - rs1_w1_val == 1073741824<br> - rs1_w0_val == 536870912<br>                                        |[0x80000454]:KSLLI32 zero, s8, 26<br> [0x80000458]:csrrs s8, vxsat, zero<br> [0x8000045c]:sd zero, 96(ra)<br>  |
|   8|[0x80002280]<br>0x8000000080000000|- rs1 : x15<br> - rd : x6<br> - imm_val == 25<br> - rs1_w1_val == -257<br> - rs1_w0_val == -65537<br>                                                 |[0x80000470]:KSLLI32 t1, a5, 25<br> [0x80000474]:csrrs a5, vxsat, zero<br> [0x80000478]:sd t1, 112(ra)<br>     |
|   9|[0x80002290]<br>0x7FFFFFFF80000000|- rs1 : x9<br> - rd : x10<br> - imm_val == 24<br> - rs1_w1_val == 1431655765<br> - rs1_w0_val == -1431655766<br>                                      |[0x8000049c]:KSLLI32 a0, s1, 24<br> [0x800004a0]:csrrs s1, vxsat, zero<br> [0x800004a4]:sd a0, 128(ra)<br>     |
|  10|[0x800022a0]<br>0x7FFFFFFF80000000|- rs1 : x14<br> - rd : x18<br> - imm_val == 23<br> - rs1_w1_val == 4096<br>                                                                           |[0x800004b8]:KSLLI32 s2, a4, 23<br> [0x800004bc]:csrrs a4, vxsat, zero<br> [0x800004c0]:sd s2, 144(ra)<br>     |
|  11|[0x800022b0]<br>0x800000007FFFFFFF|- rs1 : x12<br> - rd : x17<br> - imm_val == 22<br> - rs1_w1_val == -16385<br> - rs1_w0_val == 2147483647<br>                                          |[0x800004d4]:KSLLI32 a7, a2, 22<br> [0x800004d8]:csrrs a2, vxsat, zero<br> [0x800004dc]:sd a7, 160(ra)<br>     |
|  12|[0x800022c0]<br>0x0040000008000000|- rs1 : x6<br> - rd : x26<br> - imm_val == 21<br> - rs1_w1_val == 2<br>                                                                               |[0x800004ec]:KSLLI32 s10, t1, 21<br> [0x800004f0]:csrrs t1, vxsat, zero<br> [0x800004f4]:sd s10, 176(ra)<br>   |
|  13|[0x800022d0]<br>0xFF700000FFB00000|- rs1 : x28<br> - rd : x2<br> - imm_val == 20<br> - rs1_w1_val == -9<br> - rs1_w0_val == -5<br>                                                       |[0x80000504]:KSLLI32 sp, t3, 20<br> [0x80000508]:csrrs t3, vxsat, zero<br> [0x8000050c]:sd sp, 192(ra)<br>     |
|  14|[0x800022e0]<br>0x0000000000000000|- rs1 : x0<br> - rd : x19<br> - imm_val == 19<br> - rs1_w1_val == 0<br> - rs1_w0_val == 0<br>                                                         |[0x8000051c]:KSLLI32 s3, zero, 19<br> [0x80000520]:csrrs zero, vxsat, zero<br> [0x80000524]:sd s3, 208(ra)<br> |
|  15|[0x800022f0]<br>0x800000007FFFFFFF|- rs1 : x23<br> - rd : x16<br> - imm_val == 18<br> - rs1_w1_val == -33554433<br> - rs1_w0_val == 1073741824<br>                                       |[0x80000534]:KSLLI32 a6, s7, 18<br> [0x80000538]:csrrs s7, vxsat, zero<br> [0x8000053c]:sd a6, 224(ra)<br>     |
|  16|[0x80002300]<br>0x80000000FFFE0000|- rs1 : x20<br> - rd : x27<br> - imm_val == 17<br> - rs1_w0_val == -1<br>                                                                             |[0x8000054c]:KSLLI32 s11, s4, 17<br> [0x80000550]:csrrs s4, vxsat, zero<br> [0x80000554]:sd s11, 240(ra)<br>   |
|  17|[0x80002310]<br>0x0400000080000000|- rs1 : x29<br> - rd : x11<br> - imm_val == 16<br> - rs1_w1_val == 1024<br> - rs1_w0_val == -1048577<br>                                              |[0x80000568]:KSLLI32 a1, t4, 16<br> [0x8000056c]:csrrs t4, vxsat, zero<br> [0x80000570]:sd a1, 256(ra)<br>     |
|  18|[0x80002320]<br>0x00008000BFFF8000|- rs1 : x22<br> - rd : x4<br> - imm_val == 15<br> - rs1_w1_val == 1<br> - rs1_w0_val == -32769<br>                                                    |[0x80000584]:KSLLI32 tp, s6, 15<br> [0x80000588]:csrrs s6, vxsat, zero<br> [0x8000058c]:sd tp, 272(ra)<br>     |
|  19|[0x80002330]<br>0x7FFFFFFF80000000|- rs1 : x8<br> - rd : x14<br> - imm_val == 14<br> - rs1_w0_val == -131073<br>                                                                         |[0x800005a4]:KSLLI32 a4, fp, 14<br> [0x800005a8]:csrrs fp, vxsat, zero<br> [0x800005ac]:sd a4, 288(ra)<br>     |
|  20|[0x80002340]<br>0x7FFFFFFF04000000|- rs1 : x17<br> - rd : x9<br> - imm_val == 13<br> - rs1_w1_val == 536870912<br> - rs1_w0_val == 8192<br>                                              |[0x800005c0]:KSLLI32 s1, a7, 13<br> [0x800005c4]:csrrs a7, vxsat, zero<br> [0x800005c8]:sd s1, 304(ra)<br>     |
|  21|[0x80002350]<br>0x00000000FBFFF800|- rs1 : x31<br> - rd : x13<br> - imm_val == 11<br>                                                                                                    |[0x800005dc]:KSLLI32 a3, t6, 11<br> [0x800005e0]:csrrs t6, vxsat, zero<br> [0x800005e4]:sd a3, 320(ra)<br>     |
|  22|[0x80002360]<br>0x00004000FFFFE000|- rs1 : x2<br> - rd : x22<br> - imm_val == 10<br> - rs1_w1_val == 16<br>                                                                              |[0x800005fc]:KSLLI32 s6, sp, 10<br> [0x80000600]:csrrs sp, vxsat, zero<br> [0x80000604]:sd s6, 0(t0)<br>       |
|  23|[0x80002370]<br>0x00040000FFFFF000|- rs1 : x27<br> - rd : x29<br> - imm_val == 9<br> - rs1_w1_val == 512<br>                                                                             |[0x80000614]:KSLLI32 t4, s11, 9<br> [0x80000618]:csrrs s11, vxsat, zero<br> [0x8000061c]:sd t4, 16(t0)<br>     |
|  24|[0x80002380]<br>0xFFFFFA00FFFFFA00|- rs1 : x4<br> - rd : x24<br> - imm_val == 8<br>                                                                                                      |[0x8000062c]:KSLLI32 s8, tp, 8<br> [0x80000630]:csrrs tp, vxsat, zero<br> [0x80000634]:sd s8, 32(t0)<br>       |
|  25|[0x80002390]<br>0xF7FFFF807FFFFFFF|- rs1 : x16<br> - rd : x1<br> - imm_val == 7<br> - rs1_w1_val == -1048577<br> - rs1_w0_val == 268435456<br>                                           |[0x80000644]:KSLLI32 ra, a6, 7<br> [0x80000648]:csrrs a6, vxsat, zero<br> [0x8000064c]:sd ra, 48(t0)<br>       |
|  26|[0x800023a0]<br>0xFFF7FFC0FFFFEFC0|- rs1 : x1<br> - rd : x3<br> - imm_val == 6<br> - rs1_w1_val == -8193<br> - rs1_w0_val == -65<br>                                                     |[0x8000065c]:KSLLI32 gp, ra, 6<br> [0x80000660]:csrrs ra, vxsat, zero<br> [0x80000664]:sd gp, 64(t0)<br>       |
|  27|[0x800023b0]<br>0xFEFFFFE0FFEFFFE0|- rs1 : x19<br> - rd : x7<br> - imm_val == 5<br> - rs1_w1_val == -524289<br>                                                                          |[0x8000067c]:KSLLI32 t2, s3, 5<br> [0x80000680]:csrrs s3, vxsat, zero<br> [0x80000684]:sd t2, 80(t0)<br>       |
|  28|[0x800023c0]<br>0x08000000FFFFFF60|- rs1 : x13<br> - rd : x28<br> - imm_val == 4<br> - rs1_w1_val == 8388608<br>                                                                         |[0x80000698]:KSLLI32 t3, a3, 4<br> [0x8000069c]:csrrs a3, vxsat, zero<br> [0x800006a0]:sd t3, 96(t0)<br>       |
|  29|[0x800023d0]<br>0x0000001880000000|- rs1 : x26<br> - rd : x23<br> - imm_val == 3<br> - rs1_w0_val == -536870913<br>                                                                      |[0x800006b0]:KSLLI32 s7, s10, 3<br> [0x800006b4]:csrrs s10, vxsat, zero<br> [0x800006b8]:sd s7, 112(t0)<br>    |
|  30|[0x800023e0]<br>0xFFEFFFFC00002000|- rs1 : x7<br> - rd : x30<br> - imm_val == 2<br> - rs1_w1_val == -262145<br> - rs1_w0_val == 2048<br>                                                 |[0x800006d4]:KSLLI32 t5, t2, 2<br> [0x800006d8]:csrrs t2, vxsat, zero<br> [0x800006dc]:sd t5, 128(t0)<br>      |
|  31|[0x800023f0]<br>0x20000000FFFFFF7E|- rs1 : x18<br> - rd : x25<br> - imm_val == 1<br>                                                                                                     |[0x800006f0]:KSLLI32 s9, s2, 1<br> [0x800006f4]:csrrs s2, vxsat, zero<br> [0x800006f8]:sd s9, 144(t0)<br>      |
|  32|[0x80002400]<br>0x10000000FDFFFFFF|- rs1 : x30<br> - rd : x12<br> - imm_val == 0<br> - rs1_w0_val == -33554433<br>                                                                       |[0x80000710]:KSLLI32 a2, t5, 0<br> [0x80000714]:csrrs t5, vxsat, zero<br> [0x80000718]:sd a2, 160(t0)<br>      |
|  33|[0x80002410]<br>0x80000000FFFFBFFC|- rs1_w1_val == -1431655766<br> - rs1_w0_val == -4097<br>                                                                                             |[0x80000734]:KSLLI32 t6, t5, 2<br> [0x80000738]:csrrs t5, vxsat, zero<br> [0x8000073c]:sd t6, 176(t0)<br>      |
|  34|[0x80002420]<br>0x7FFFFFFF7FFFFFFF|- rs1_w1_val == 2147483647<br> - rs1_w0_val == 2097152<br>                                                                                            |[0x80000750]:KSLLI32 t6, t5, 30<br> [0x80000754]:csrrs t5, vxsat, zero<br> [0x80000758]:sd t6, 192(t0)<br>     |
|  35|[0x80002430]<br>0x80000000FBFFFF80|- rs1_w1_val == -1073741825<br> - rs1_w0_val == -524289<br>                                                                                           |[0x80000770]:KSLLI32 t6, t5, 7<br> [0x80000774]:csrrs t5, vxsat, zero<br> [0x80000778]:sd t6, 208(t0)<br>      |
|  36|[0x80002440]<br>0x800000007FFFFFFF|- rs1_w1_val == -268435457<br> - rs1_w0_val == 32768<br>                                                                                              |[0x80000790]:KSLLI32 t6, t5, 26<br> [0x80000794]:csrrs t5, vxsat, zero<br> [0x80000798]:sd t6, 224(t0)<br>     |
|  37|[0x80002450]<br>0x8000000080000000|- rs1_w1_val == -134217729<br> - rs1_w0_val == -268435457<br>                                                                                         |[0x800007b0]:KSLLI32 t6, t5, 7<br> [0x800007b4]:csrrs t5, vxsat, zero<br> [0x800007b8]:sd t6, 240(t0)<br>      |
|  38|[0x80002460]<br>0x8000000080000000|- rs1_w1_val == -67108865<br> - rs1_w0_val == -129<br>                                                                                                |[0x800007c8]:KSLLI32 t6, t5, 28<br> [0x800007cc]:csrrs t5, vxsat, zero<br> [0x800007d0]:sd t6, 256(t0)<br>     |
|  39|[0x80002470]<br>0xFEFFFFFF00000000|- rs1_w1_val == -16777217<br>                                                                                                                         |[0x800007e0]:KSLLI32 t6, t5, 0<br> [0x800007e4]:csrrs t5, vxsat, zero<br> [0x800007e8]:sd t6, 272(t0)<br>      |
|  40|[0x80002480]<br>0x8000000080000000|- rs1_w1_val == -8388609<br>                                                                                                                          |[0x800007f8]:KSLLI32 t6, t5, 16<br> [0x800007fc]:csrrs t5, vxsat, zero<br> [0x80000800]:sd t6, 288(t0)<br>     |
|  41|[0x80002490]<br>0x80000000FFFFE000|- rs1_w1_val == -4194305<br>                                                                                                                          |[0x80000810]:KSLLI32 t6, t5, 13<br> [0x80000814]:csrrs t5, vxsat, zero<br> [0x80000818]:sd t6, 304(t0)<br>     |
|  42|[0x800024a0]<br>0x8000000000000400|- rs1_w1_val == -2097153<br> - rs1_w0_val == 1<br>                                                                                                    |[0x8000082c]:KSLLI32 t6, t5, 10<br> [0x80000830]:csrrs t5, vxsat, zero<br> [0x80000834]:sd t6, 320(t0)<br>     |
|  43|[0x800024b0]<br>0x8000000080000000|- rs1_w1_val == -131073<br> - rs1_w0_val == -8388609<br>                                                                                              |[0x80000848]:KSLLI32 t6, t5, 21<br> [0x8000084c]:csrrs t5, vxsat, zero<br> [0x80000850]:sd t6, 336(t0)<br>     |
|  44|[0x800024c0]<br>0xBFFFC0007FFFFFFF|- rs1_w1_val == -65537<br> - rs1_w0_val == 524288<br>                                                                                                 |[0x80000860]:KSLLI32 t6, t5, 14<br> [0x80000864]:csrrs t5, vxsat, zero<br> [0x80000868]:sd t6, 352(t0)<br>     |
|  45|[0x800024d0]<br>0xFEFFF00080000000|- rs1_w1_val == -4097<br>                                                                                                                             |[0x8000087c]:KSLLI32 t6, t5, 12<br> [0x80000880]:csrrs t5, vxsat, zero<br> [0x80000884]:sd t6, 368(t0)<br>     |
|  46|[0x800024e0]<br>0xFEFFE0007FFFFFFF|- rs1_w1_val == -2049<br>                                                                                                                             |[0x80000894]:KSLLI32 t6, t5, 13<br> [0x80000898]:csrrs t5, vxsat, zero<br> [0x8000089c]:sd t6, 384(t0)<br>     |
|  47|[0x800024f0]<br>0x8000000080000000|- rs1_w1_val == -1025<br>                                                                                                                             |[0x800008ac]:KSLLI32 t6, t5, 31<br> [0x800008b0]:csrrs t5, vxsat, zero<br> [0x800008b4]:sd t6, 400(t0)<br>     |
|  48|[0x80002500]<br>0x000000E0FFFFFBE0|- rs1_w0_val == -33<br>                                                                                                                               |[0x800008c4]:KSLLI32 t6, t5, 5<br> [0x800008c8]:csrrs t5, vxsat, zero<br> [0x800008cc]:sd t6, 416(t0)<br>      |
|  49|[0x80002510]<br>0xFFBF8000FFF78000|- rs1_w1_val == -129<br> - rs1_w0_val == -17<br>                                                                                                      |[0x800008dc]:KSLLI32 t6, t5, 15<br> [0x800008e0]:csrrs t5, vxsat, zero<br> [0x800008e4]:sd t6, 432(t0)<br>     |
|  50|[0x80002520]<br>0xFC800000FB800000|- rs1_w0_val == -9<br>                                                                                                                                |[0x800008f4]:KSLLI32 t6, t5, 23<br> [0x800008f8]:csrrs t5, vxsat, zero<br> [0x800008fc]:sd t6, 448(t0)<br>     |
|  51|[0x80002530]<br>0xFFFBFF80FFFFFE80|- rs1_w0_val == -3<br>                                                                                                                                |[0x8000090c]:KSLLI32 t6, t5, 7<br> [0x80000910]:csrrs t5, vxsat, zero<br> [0x80000914]:sd t6, 464(t0)<br>      |
|  52|[0x80002540]<br>0xF7E000007FFFFFFF|- rs1_w1_val == -65<br> - rs1_w0_val == 134217728<br>                                                                                                 |[0x80000924]:KSLLI32 t6, t5, 21<br> [0x80000928]:csrrs t5, vxsat, zero<br> [0x8000092c]:sd t6, 480(t0)<br>     |
|  53|[0x80002550]<br>0x7FFFFFFF7FFFFFFF|- rs1_w0_val == 67108864<br>                                                                                                                          |[0x8000093c]:KSLLI32 t6, t5, 24<br> [0x80000940]:csrrs t5, vxsat, zero<br> [0x80000944]:sd t6, 496(t0)<br>     |
|  54|[0x80002560]<br>0x7FFFFFFF7FFFFFFF|- rs1_w1_val == 67108864<br> - rs1_w0_val == 33554432<br>                                                                                             |[0x80000958]:KSLLI32 t6, t5, 23<br> [0x8000095c]:csrrs t5, vxsat, zero<br> [0x80000960]:sd t6, 512(t0)<br>     |
|  55|[0x80002570]<br>0xDFFFFF007FFFFFFF|- rs1_w0_val == 16777216<br>                                                                                                                          |[0x80000970]:KSLLI32 t6, t5, 8<br> [0x80000974]:csrrs t5, vxsat, zero<br> [0x80000978]:sd t6, 528(t0)<br>      |
|  56|[0x80002580]<br>0x800000007FFFFFFF|- rs1_w0_val == 8388608<br>                                                                                                                           |[0x8000098c]:KSLLI32 t6, t5, 8<br> [0x80000990]:csrrs t5, vxsat, zero<br> [0x80000994]:sd t6, 544(t0)<br>      |
|  57|[0x80002590]<br>0x800000007FFFFFFF|- rs1_w0_val == 1048576<br>                                                                                                                           |[0x800009ac]:KSLLI32 t6, t5, 26<br> [0x800009b0]:csrrs t5, vxsat, zero<br> [0x800009b4]:sd t6, 560(t0)<br>     |
|  58|[0x800025a0]<br>0xFFE000007FFFFFFF|- rs1_w1_val == -1<br> - rs1_w0_val == 262144<br>                                                                                                     |[0x800009c4]:KSLLI32 t6, t5, 21<br> [0x800009c8]:csrrs t5, vxsat, zero<br> [0x800009cc]:sd t6, 576(t0)<br>     |
|  59|[0x800025b0]<br>0x0000010002000000|- rs1_w0_val == 131072<br>                                                                                                                            |[0x800009dc]:KSLLI32 t6, t5, 8<br> [0x800009e0]:csrrs t5, vxsat, zero<br> [0x800009e4]:sd t6, 592(t0)<br>      |
|  60|[0x800025c0]<br>0xFFFFFFBF00010000|- rs1_w0_val == 65536<br>                                                                                                                             |[0x800009f4]:KSLLI32 t6, t5, 0<br> [0x800009f8]:csrrs t5, vxsat, zero<br> [0x800009fc]:sd t6, 608(t0)<br>      |
|  61|[0x800025d0]<br>0x0000200000100000|- rs1_w1_val == 128<br> - rs1_w0_val == 16384<br>                                                                                                     |[0x80000a0c]:KSLLI32 t6, t5, 6<br> [0x80000a10]:csrrs t5, vxsat, zero<br> [0x80000a14]:sd t6, 624(t0)<br>      |
|  62|[0x800025e0]<br>0x8000000000800000|- rs1_w0_val == 4096<br>                                                                                                                              |[0x80000a2c]:KSLLI32 t6, t5, 11<br> [0x80000a30]:csrrs t5, vxsat, zero<br> [0x80000a34]:sd t6, 640(t0)<br>     |
|  63|[0x800025f0]<br>0xFFFFFFF000004000|- rs1_w0_val == 1024<br>                                                                                                                              |[0x80000a44]:KSLLI32 t6, t5, 4<br> [0x80000a48]:csrrs t5, vxsat, zero<br> [0x80000a4c]:sd t6, 656(t0)<br>      |
|  64|[0x80002600]<br>0x7FFFFFFF7FFFFFFF|- rs1_w0_val == 512<br>                                                                                                                               |[0x80000a60]:KSLLI32 t6, t5, 27<br> [0x80000a64]:csrrs t5, vxsat, zero<br> [0x80000a68]:sd t6, 672(t0)<br>     |
|  65|[0x80002610]<br>0xFEFFC00000400000|- rs1_w0_val == 256<br>                                                                                                                               |[0x80000a78]:KSLLI32 t6, t5, 14<br> [0x80000a7c]:csrrs t5, vxsat, zero<br> [0x80000a80]:sd t6, 688(t0)<br>     |
|  66|[0x80002620]<br>0x0008000000020000|- rs1_w0_val == 128<br>                                                                                                                               |[0x80000a90]:KSLLI32 t6, t5, 10<br> [0x80000a94]:csrrs t5, vxsat, zero<br> [0x80000a98]:sd t6, 704(t0)<br>     |
|  67|[0x80002630]<br>0x800000007FFFFFFF|- rs1_w0_val == 32<br>                                                                                                                                |[0x80000aac]:KSLLI32 t6, t5, 27<br> [0x80000ab0]:csrrs t5, vxsat, zero<br> [0x80000ab4]:sd t6, 720(t0)<br>     |
|  68|[0x80002640]<br>0x7FFFFFFF00080000|- rs1_w1_val == 262144<br> - rs1_w0_val == 16<br>                                                                                                     |[0x80000ac4]:KSLLI32 t6, t5, 15<br> [0x80000ac8]:csrrs t5, vxsat, zero<br> [0x80000acc]:sd t6, 736(t0)<br>     |
|  69|[0x80002650]<br>0xFFFB000000040000|- rs1_w1_val == -5<br> - rs1_w0_val == 4<br>                                                                                                          |[0x80000adc]:KSLLI32 t6, t5, 16<br> [0x80000ae0]:csrrs t5, vxsat, zero<br> [0x80000ae4]:sd t6, 752(t0)<br>     |
|  70|[0x80002660]<br>0x0080000000020000|- rs1_w0_val == 2<br>                                                                                                                                 |[0x80000af4]:KSLLI32 t6, t5, 16<br> [0x80000af8]:csrrs t5, vxsat, zero<br> [0x80000afc]:sd t6, 768(t0)<br>     |
|  71|[0x80002670]<br>0xFFDFF000FFFFA000|- rs1_w1_val == -513<br>                                                                                                                              |[0x80000b0c]:KSLLI32 t6, t5, 12<br> [0x80000b10]:csrrs t5, vxsat, zero<br> [0x80000b14]:sd t6, 784(t0)<br>     |
|  72|[0x80002680]<br>0xFFEF800080000000|- rs1_w1_val == -33<br>                                                                                                                               |[0x80000b28]:KSLLI32 t6, t5, 15<br> [0x80000b2c]:csrrs t5, vxsat, zero<br> [0x80000b30]:sd t6, 800(t0)<br>     |
|  73|[0x80002690]<br>0xA00000007FFFFFFF|- rs1_w1_val == -3<br>                                                                                                                                |[0x80000b44]:KSLLI32 t6, t5, 29<br> [0x80000b48]:csrrs t5, vxsat, zero<br> [0x80000b4c]:sd t6, 816(t0)<br>     |
|  74|[0x800026a0]<br>0x8000000080000000|- rs1_w1_val == -2147483648<br>                                                                                                                       |[0x80000b6c]:KSLLI32 t6, t5, 13<br> [0x80000b70]:csrrs t5, vxsat, zero<br> [0x80000b74]:sd t6, 832(t0)<br>     |
|  75|[0x800026b0]<br>0x10000000FFFEFFF8|- rs1_w1_val == 33554432<br> - rs1_w0_val == -8193<br>                                                                                                |[0x80000b90]:KSLLI32 t6, t5, 3<br> [0x80000b94]:csrrs t5, vxsat, zero<br> [0x80000b98]:sd t6, 848(t0)<br>      |
|  76|[0x800026c0]<br>0x7FFFFFFFFFFF0000|- rs1_w1_val == 16777216<br>                                                                                                                          |[0x80000bac]:KSLLI32 t6, t5, 14<br> [0x80000bb0]:csrrs t5, vxsat, zero<br> [0x80000bb4]:sd t6, 864(t0)<br>     |
|  77|[0x800026d0]<br>0x7FFFFFFF80000000|- rs1_w1_val == 4194304<br>                                                                                                                           |[0x80000bc8]:KSLLI32 t6, t5, 29<br> [0x80000bcc]:csrrs t5, vxsat, zero<br> [0x80000bd0]:sd t6, 880(t0)<br>     |
|  78|[0x800026e0]<br>0x0100000020000000|- rs1_w1_val == 2097152<br>                                                                                                                           |[0x80000be0]:KSLLI32 t6, t5, 3<br> [0x80000be4]:csrrs t5, vxsat, zero<br> [0x80000be8]:sd t6, 896(t0)<br>      |
|  79|[0x800026f0]<br>0x40000000FFFFFC00|- rs1_w1_val == 1048576<br>                                                                                                                           |[0x80000bfc]:KSLLI32 t6, t5, 10<br> [0x80000c00]:csrrs t5, vxsat, zero<br> [0x80000c04]:sd t6, 912(t0)<br>     |
|  80|[0x80002700]<br>0x7FFFFFFF7FFFFFFF|- rs1_w1_val == 524288<br>                                                                                                                            |[0x80000c14]:KSLLI32 t6, t5, 16<br> [0x80000c18]:csrrs t5, vxsat, zero<br> [0x80000c1c]:sd t6, 928(t0)<br>     |
|  81|[0x80002710]<br>0x7FFFFFFF7FFFFFFF|- rs1_w1_val == 131072<br>                                                                                                                            |[0x80000c30]:KSLLI32 t6, t5, 16<br> [0x80000c34]:csrrs t5, vxsat, zero<br> [0x80000c38]:sd t6, 944(t0)<br>     |
|  82|[0x80002720]<br>0x7FFFFFFF00800000|- rs1_w1_val == 65536<br>                                                                                                                             |[0x80000c48]:KSLLI32 t6, t5, 16<br> [0x80000c4c]:csrrs t5, vxsat, zero<br> [0x80000c50]:sd t6, 960(t0)<br>     |
|  83|[0x80002730]<br>0x7FFFFFFF40000000|- rs1_w1_val == 32768<br>                                                                                                                             |[0x80000c60]:KSLLI32 t6, t5, 22<br> [0x80000c64]:csrrs t5, vxsat, zero<br> [0x80000c68]:sd t6, 976(t0)<br>     |
|  84|[0x80002740]<br>0x4000000080000000|- rs1_w1_val == 16384<br>                                                                                                                             |[0x80000c7c]:KSLLI32 t6, t5, 16<br> [0x80000c80]:csrrs t5, vxsat, zero<br> [0x80000c84]:sd t6, 992(t0)<br>     |
|  85|[0x80002750]<br>0x7FFFFFFF10000000|- rs1_w1_val == 8192<br>                                                                                                                              |[0x80000c94]:KSLLI32 t6, t5, 27<br> [0x80000c98]:csrrs t5, vxsat, zero<br> [0x80000c9c]:sd t6, 1008(t0)<br>    |
|  86|[0x80002760]<br>0x00000800FDFFFFF8|- rs1_w1_val == 256<br> - rs1_w0_val == -4194305<br>                                                                                                  |[0x80000cb0]:KSLLI32 t6, t5, 3<br> [0x80000cb4]:csrrs t5, vxsat, zero<br> [0x80000cb8]:sd t6, 1024(t0)<br>     |
|  87|[0x80002770]<br>0x0000100000080000|- rs1_w1_val == 64<br>                                                                                                                                |[0x80000cc8]:KSLLI32 t6, t5, 6<br> [0x80000ccc]:csrrs t5, vxsat, zero<br> [0x80000cd0]:sd t6, 1040(t0)<br>     |
|  88|[0x80002780]<br>0x7FFFFFFF7FFFFFFF|- rs1_w1_val == 4<br>                                                                                                                                 |[0x80000cdc]:KSLLI32 t6, t5, 29<br> [0x80000ce0]:csrrs t5, vxsat, zero<br> [0x80000ce4]:sd t6, 1056(t0)<br>    |
|  89|[0x80002790]<br>0xDF0000007FFFFFFF|- rs1_w0_val == 1431655765<br>                                                                                                                        |[0x80000cf8]:KSLLI32 t6, t5, 24<br> [0x80000cfc]:csrrs t5, vxsat, zero<br> [0x80000d00]:sd t6, 1072(t0)<br>    |
|  90|[0x800027a0]<br>0x0000000080000000|- rs1_w0_val == -1073741825<br>                                                                                                                       |[0x80000d10]:KSLLI32 t6, t5, 31<br> [0x80000d14]:csrrs t5, vxsat, zero<br> [0x80000d18]:sd t6, 1088(t0)<br>    |
|  91|[0x800027b0]<br>0x7FFFFFFF80000000|- rs1_w0_val == -134217729<br>                                                                                                                        |[0x80000d30]:KSLLI32 t6, t5, 22<br> [0x80000d34]:csrrs t5, vxsat, zero<br> [0x80000d38]:sd t6, 1104(t0)<br>    |
|  92|[0x800027c0]<br>0x8000000080000000|- rs1_w0_val == -67108865<br>                                                                                                                         |[0x80000d4c]:KSLLI32 t6, t5, 24<br> [0x80000d50]:csrrs t5, vxsat, zero<br> [0x80000d54]:sd t6, 1120(t0)<br>    |
|  93|[0x800027d0]<br>0xFFEFFFFCFBFFFFFC|- rs1_w0_val == -16777217<br>                                                                                                                         |[0x80000d68]:KSLLI32 t6, t5, 2<br> [0x80000d6c]:csrrs t5, vxsat, zero<br> [0x80000d70]:sd t6, 1136(t0)<br>     |
|  94|[0x800027e0]<br>0xFFBF800080000000|- rs1_w0_val == -2097153<br>                                                                                                                          |[0x80000d84]:KSLLI32 t6, t5, 15<br> [0x80000d88]:csrrs t5, vxsat, zero<br> [0x80000d8c]:sd t6, 1152(t0)<br>    |
|  95|[0x800027f0]<br>0x7FFFFFFF80000000|- rs1_w1_val == 32<br> - rs1_w0_val == -262145<br>                                                                                                    |[0x80000da0]:KSLLI32 t6, t5, 29<br> [0x80000da4]:csrrs t5, vxsat, zero<br> [0x80000da8]:sd t6, 1168(t0)<br>    |
|  96|[0x80002800]<br>0x80000000F7F80000|- rs1_w0_val == -257<br>                                                                                                                              |[0x80000db8]:KSLLI32 t6, t5, 19<br> [0x80000dbc]:csrrs t5, vxsat, zero<br> [0x80000dc0]:sd t6, 1184(t0)<br>    |
|  97|[0x80002810]<br>0x20000000FFDFFC00|- rs1_w0_val == -2049<br>                                                                                                                             |[0x80000ddc]:KSLLI32 t6, t5, 10<br> [0x80000de0]:csrrs t5, vxsat, zero<br> [0x80000de4]:sd t6, 1200(t0)<br>    |
|  98|[0x80002820]<br>0xFFE80000F7FC0000|- rs1_w0_val == -513<br>                                                                                                                              |[0x80000df4]:KSLLI32 t6, t5, 18<br> [0x80000df8]:csrrs t5, vxsat, zero<br> [0x80000dfc]:sd t6, 1216(t0)<br>    |
|  99|[0x80002830]<br>0xFFFFFF7800020000|- rs1_w1_val == -17<br>                                                                                                                               |[0x80000e0c]:KSLLI32 t6, t5, 3<br> [0x80000e10]:csrrs t5, vxsat, zero<br> [0x80000e14]:sd t6, 1232(t0)<br>     |
| 100|[0x80002840]<br>0x7FFFFFFF7FFFFFFF|- rs1_w1_val == 8<br>                                                                                                                                 |[0x80000e24]:KSLLI32 t6, t5, 28<br> [0x80000e28]:csrrs t5, vxsat, zero<br> [0x80000e2c]:sd t6, 1248(t0)<br>    |
| 101|[0x80002860]<br>0x0008000000400000|- rs1_w0_val == 8<br>                                                                                                                                 |[0x80000e58]:KSLLI32 t6, t5, 19<br> [0x80000e5c]:csrrs t5, vxsat, zero<br> [0x80000e60]:sd t6, 1280(t0)<br>    |
