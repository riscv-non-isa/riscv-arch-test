
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000ea0')]      |
| SIG_REGION                | [('0x80002210', '0x800028b0', '212 dwords')]      |
| COV_LABELS                | sclip32      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/sclip32-01.S    |
| Total Number of coverpoints| 240     |
| Total Coverpoints Hit     | 235      |
| Total Signature Updates   | 106      |
| STAT1                     | 104      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b54]:SCLIP32 t6, t5, 19
      [0x80000b58]:csrrs t5, vxsat, zero
      [0x80000b5c]:sd t6, 864(gp)
 -- Signature Address: 0x800026c0 Data: 0xFFFFFFFE00000000
 -- Redundant Coverpoints hit by the op
      - opcode : sclip32
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 19
      - rs1_w1_val == -2
      - rs1_w0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d3c]:SCLIP32 t6, t5, 23
      [0x80000d40]:csrrs t5, vxsat, zero
      [0x80000d44]:sd t6, 1152(gp)
 -- Signature Address: 0x800027e0 Data: 0x00000000FF800000
 -- Redundant Coverpoints hit by the op
      - opcode : sclip32
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 23
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

|s.no|            signature             |                                                                     coverpoints                                                                     |                                                     code                                                     |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0000000000000001|- opcode : sclip32<br> - rs1 : x16<br> - rd : x16<br> - rs1 == rd<br> - rs1_w0_val == -2147483648<br> - imm_val == 29<br> - rs1_w1_val == -16385<br> |[0x800003b0]:SCLIP32 a6, a6, 29<br> [0x800003b4]:csrrs a6, vxsat, zero<br> [0x800003b8]:sd a6, 0(t1)<br>      |
|   2|[0x80002220]<br>0x0008000000008000|- rs1 : x30<br> - rd : x29<br> - rs1 != rd<br> - imm_val == 31<br> - rs1_w1_val == 524288<br> - rs1_w0_val == 32768<br>                              |[0x800003cc]:SCLIP32 t4, t5, 31<br> [0x800003d0]:csrrs t5, vxsat, zero<br> [0x800003d4]:sd t4, 16(t1)<br>     |
|   3|[0x80002230]<br>0x0000008000000002|- rs1 : x25<br> - rd : x20<br> - imm_val == 30<br> - rs1_w1_val == 128<br> - rs1_w0_val == 2<br>                                                     |[0x800003e4]:SCLIP32 s4, s9, 30<br> [0x800003e8]:csrrs s9, vxsat, zero<br> [0x800003ec]:sd s4, 32(t1)<br>     |
|   4|[0x80002240]<br>0xFFFFFFFF0FFFFFFF|- rs1 : x12<br> - rd : x9<br> - imm_val == 28<br> - rs1_w1_val == -1<br> - rs1_w0_val == 536870912<br>                                               |[0x800003f8]:SCLIP32 s1, a2, 28<br> [0x800003fc]:csrrs a2, vxsat, zero<br> [0x80000400]:sd s1, 48(t1)<br>     |
|   5|[0x80002250]<br>0xFFFBFFFFFFFFFFF8|- rs1 : x23<br> - rd : x25<br> - imm_val == 27<br> - rs1_w1_val == -262145<br>                                                                       |[0x80000410]:SCLIP32 s9, s7, 27<br> [0x80000414]:csrrs s7, vxsat, zero<br> [0x80000418]:sd s9, 64(t1)<br>     |
|   6|[0x80002260]<br>0xFFFFFDFF03FFFFFF|- rs1 : x2<br> - rd : x17<br> - imm_val == 26<br> - rs1_w1_val == -513<br> - rs1_w0_val == 2147483647<br>                                            |[0x80000428]:SCLIP32 a7, sp, 26<br> [0x8000042c]:csrrs sp, vxsat, zero<br> [0x80000430]:sd a7, 80(t1)<br>     |
|   7|[0x80002270]<br>0x0010000000040000|- rs1 : x3<br> - rd : x26<br> - imm_val == 25<br> - rs1_w1_val == 1048576<br> - rs1_w0_val == 262144<br>                                             |[0x80000444]:SCLIP32 s10, gp, 25<br> [0x80000448]:csrrs gp, vxsat, zero<br> [0x8000044c]:sd s10, 96(t1)<br>   |
|   8|[0x80002280]<br>0xFF000000FFFFFFFC|- rs1 : x5<br> - rd : x23<br> - imm_val == 24<br>                                                                                                    |[0x80000460]:SCLIP32 s7, t0, 24<br> [0x80000464]:csrrs t0, vxsat, zero<br> [0x80000468]:sd s7, 112(t1)<br>    |
|   9|[0x80002290]<br>0x00000200FFFFFFF6|- rs1 : x27<br> - rd : x30<br> - imm_val == 23<br> - rs1_w1_val == 512<br>                                                                           |[0x80000478]:SCLIP32 t5, s11, 23<br> [0x8000047c]:csrrs s11, vxsat, zero<br> [0x80000480]:sd t5, 128(t1)<br>  |
|  10|[0x800022a0]<br>0x003FFFFFFFFDFFFF|- rs1 : x20<br> - rd : x3<br> - imm_val == 22<br> - rs1_w0_val == -131073<br>                                                                        |[0x80000498]:SCLIP32 gp, s4, 22<br> [0x8000049c]:csrrs s4, vxsat, zero<br> [0x800004a0]:sd gp, 144(t1)<br>    |
|  11|[0x800022b0]<br>0x001FFFFFFFFFFFF6|- rs1 : x21<br> - rd : x19<br> - imm_val == 21<br> - rs1_w1_val == 1431655765<br>                                                                    |[0x800004b4]:SCLIP32 s3, s5, 21<br> [0x800004b8]:csrrs s5, vxsat, zero<br> [0x800004bc]:sd s3, 160(t1)<br>    |
|  12|[0x800022c0]<br>0xFFFFFFFB00010000|- rs1 : x9<br> - rd : x10<br> - imm_val == 20<br> - rs1_w1_val == -5<br> - rs1_w0_val == 65536<br>                                                   |[0x800004cc]:SCLIP32 a0, s1, 20<br> [0x800004d0]:csrrs s1, vxsat, zero<br> [0x800004d4]:sd a0, 176(t1)<br>    |
|  13|[0x800022d0]<br>0xFFFFFFBFFFF80000|- rs1 : x10<br> - rd : x12<br> - imm_val == 19<br> - rs1_w1_val == -65<br> - rs1_w0_val == -536870913<br>                                            |[0x800004e4]:SCLIP32 a2, a0, 19<br> [0x800004e8]:csrrs a0, vxsat, zero<br> [0x800004ec]:sd a2, 192(t1)<br>    |
|  14|[0x800022e0]<br>0x00000800FFFC0000|- rs1 : x31<br> - rd : x27<br> - imm_val == 18<br> - rs1_w1_val == 2048<br> - rs1_w0_val == -134217729<br>                                           |[0x80000500]:SCLIP32 s11, t6, 18<br> [0x80000504]:csrrs t6, vxsat, zero<br> [0x80000508]:sd s11, 208(t1)<br>  |
|  15|[0x800022f0]<br>0xFFFE00000001FFFF|- rs1 : x24<br> - rd : x15<br> - imm_val == 17<br> - rs1_w1_val == -1048577<br> - rs1_w0_val == 8388608<br>                                          |[0x80000518]:SCLIP32 a5, s8, 17<br> [0x8000051c]:csrrs s8, vxsat, zero<br> [0x80000520]:sd a5, 224(t1)<br>    |
|  16|[0x80002300]<br>0x000000020000FFFF|- rs1 : x7<br> - rd : x1<br> - imm_val == 16<br> - rs1_w1_val == 2<br> - rs1_w0_val == 33554432<br>                                                  |[0x8000052c]:SCLIP32 ra, t2, 16<br> [0x80000530]:csrrs t2, vxsat, zero<br> [0x80000534]:sd ra, 240(t1)<br>    |
|  17|[0x80002310]<br>0xFFFF800000007FFF|- rs1 : x14<br> - rd : x22<br> - imm_val == 15<br> - rs1_w1_val == -67108865<br>                                                                     |[0x80000548]:SCLIP32 s6, a4, 15<br> [0x8000054c]:csrrs a4, vxsat, zero<br> [0x80000550]:sd s6, 256(t1)<br>    |
|  18|[0x80002320]<br>0xFFFFC000FFFFFDFF|- rs1 : x4<br> - rd : x11<br> - imm_val == 14<br> - rs1_w1_val == -32769<br> - rs1_w0_val == -513<br>                                                |[0x80000560]:SCLIP32 a1, tp, 14<br> [0x80000564]:csrrs tp, vxsat, zero<br> [0x80000568]:sd a1, 272(t1)<br>    |
|  19|[0x80002330]<br>0xFFFFFFFDFFFFFFF9|- rs1 : x18<br> - rd : x21<br> - imm_val == 13<br> - rs1_w1_val == -3<br>                                                                            |[0x80000578]:SCLIP32 s5, s2, 13<br> [0x8000057c]:csrrs s2, vxsat, zero<br> [0x80000580]:sd s5, 288(t1)<br>    |
|  20|[0x80002340]<br>0xFFFFF00000000FFF|- rs1 : x15<br> - rd : x31<br> - imm_val == 12<br>                                                                                                   |[0x80000590]:SCLIP32 t6, a5, 12<br> [0x80000594]:csrrs a5, vxsat, zero<br> [0x80000598]:sd t6, 304(t1)<br>    |
|  21|[0x80002350]<br>0x000007FFFFFFF800|- rs1 : x26<br> - rd : x13<br> - imm_val == 11<br> - rs1_w1_val == 2147483647<br> - rs1_w0_val == -8193<br>                                          |[0x800005b0]:SCLIP32 a3, s10, 11<br> [0x800005b4]:csrrs s10, vxsat, zero<br> [0x800005b8]:sd a3, 320(t1)<br>  |
|  22|[0x80002360]<br>0x000003FF000003FF|- rs1 : x17<br> - rd : x24<br> - imm_val == 10<br> - rs1_w1_val == 65536<br> - rs1_w0_val == 1048576<br>                                             |[0x800005d0]:SCLIP32 s8, a7, 10<br> [0x800005d4]:csrrs a7, vxsat, zero<br> [0x800005d8]:sd s8, 0(gp)<br>      |
|  23|[0x80002370]<br>0xFFFFFE00000001FF|- rs1 : x1<br> - rd : x28<br> - imm_val == 9<br>                                                                                                     |[0x800005e8]:SCLIP32 t3, ra, 9<br> [0x800005ec]:csrrs ra, vxsat, zero<br> [0x800005f0]:sd t3, 16(gp)<br>      |
|  24|[0x80002380]<br>0xFFFFFFFBFFFFFF00|- rs1 : x11<br> - rd : x8<br> - imm_val == 8<br> - rs1_w0_val == -268435457<br>                                                                      |[0x80000600]:SCLIP32 fp, a1, 8<br> [0x80000604]:csrrs a1, vxsat, zero<br> [0x80000608]:sd fp, 32(gp)<br>      |
|  25|[0x80002390]<br>0xFFFFFFFEFFFFFF80|- rs1 : x6<br> - rd : x18<br> - imm_val == 7<br> - rs1_w1_val == -2<br> - rs1_w0_val == -65537<br>                                                   |[0x8000061c]:SCLIP32 s2, t1, 7<br> [0x80000620]:csrrs t1, vxsat, zero<br> [0x80000624]:sd s2, 48(gp)<br>      |
|  26|[0x800023a0]<br>0xFFFFFFC0FFFFFFEF|- rs1 : x19<br> - rd : x7<br> - imm_val == 6<br> - rs1_w1_val == -268435457<br> - rs1_w0_val == -17<br>                                              |[0x80000634]:SCLIP32 t2, s3, 6<br> [0x80000638]:csrrs s3, vxsat, zero<br> [0x8000063c]:sd t2, 64(gp)<br>      |
|  27|[0x800023b0]<br>0x0000000000000000|- rs1 : x28<br> - rd : x0<br> - imm_val == 5<br> - rs1_w1_val == -17<br>                                                                             |[0x8000064c]:SCLIP32 zero, t3, 5<br> [0x80000650]:csrrs t3, vxsat, zero<br> [0x80000654]:sd zero, 80(gp)<br>  |
|  28|[0x800023c0]<br>0xFFFFFFF00000000F|- rs1 : x22<br> - rd : x14<br> - imm_val == 4<br> - rs1_w1_val == -8193<br> - rs1_w0_val == 2048<br>                                                 |[0x80000670]:SCLIP32 a4, s6, 4<br> [0x80000674]:csrrs s6, vxsat, zero<br> [0x80000678]:sd a4, 96(gp)<br>      |
|  29|[0x800023d0]<br>0xFFFFFFF800000007|- rs1 : x8<br> - rd : x6<br> - imm_val == 3<br> - rs1_w0_val == 256<br>                                                                              |[0x80000688]:SCLIP32 t1, fp, 3<br> [0x8000068c]:csrrs fp, vxsat, zero<br> [0x80000690]:sd t1, 112(gp)<br>     |
|  30|[0x800023e0]<br>0x0000000300000002|- rs1 : x13<br> - rd : x2<br> - imm_val == 2<br>                                                                                                     |[0x800006a0]:SCLIP32 sp, a3, 2<br> [0x800006a4]:csrrs a3, vxsat, zero<br> [0x800006a8]:sd sp, 128(gp)<br>     |
|  31|[0x800023f0]<br>0x0000000000000000|- rs1 : x0<br> - rd : x5<br> - imm_val == 1<br> - rs1_w1_val == 0<br> - rs1_w0_val == 0<br>                                                          |[0x800006c4]:SCLIP32 t0, zero, 1<br> [0x800006c8]:csrrs zero, vxsat, zero<br> [0x800006cc]:sd t0, 144(gp)<br> |
|  32|[0x80002400]<br>0x00000000FFFFFFFF|- rs1 : x29<br> - rd : x4<br> - imm_val == 0<br> - rs1_w1_val == 16<br> - rs1_w0_val == -1048577<br>                                                 |[0x800006e0]:SCLIP32 tp, t4, 0<br> [0x800006e4]:csrrs t4, vxsat, zero<br> [0x800006e8]:sd tp, 160(gp)<br>     |
|  33|[0x80002410]<br>0xFFFC00000003FFFF|- rs1_w1_val == -1431655766<br>                                                                                                                      |[0x80000700]:SCLIP32 t6, t5, 18<br> [0x80000704]:csrrs t5, vxsat, zero<br> [0x80000708]:sd t6, 176(gp)<br>    |
|  34|[0x80002420]<br>0xFFFFFF80FFFFFF80|- rs1_w1_val == -1073741825<br> - rs1_w0_val == -4194305<br>                                                                                         |[0x80000720]:SCLIP32 t6, t5, 7<br> [0x80000724]:csrrs t5, vxsat, zero<br> [0x80000728]:sd t6, 192(gp)<br>     |
|  35|[0x80002430]<br>0xFFFFFFC0FFFFFFC0|- rs1_w1_val == -536870913<br> - rs1_w0_val == -2049<br>                                                                                             |[0x80000740]:SCLIP32 t6, t5, 6<br> [0x80000744]:csrrs t5, vxsat, zero<br> [0x80000748]:sd t6, 208(gp)<br>     |
|  36|[0x80002440]<br>0xF7FFFFFF00000002|- rs1_w1_val == -134217729<br>                                                                                                                       |[0x8000075c]:SCLIP32 t6, t5, 31<br> [0x80000760]:csrrs t5, vxsat, zero<br> [0x80000764]:sd t6, 224(gp)<br>    |
|  37|[0x80002450]<br>0xFFF00000FFF00000|- rs1_w1_val == -33554433<br>                                                                                                                        |[0x80000778]:SCLIP32 t6, t5, 20<br> [0x8000077c]:csrrs t5, vxsat, zero<br> [0x80000780]:sd t6, 240(gp)<br>    |
|  38|[0x80002460]<br>0xFFFFFC00FFFFFF7F|- rs1_w1_val == -16777217<br> - rs1_w0_val == -129<br>                                                                                               |[0x80000790]:SCLIP32 t6, t5, 10<br> [0x80000794]:csrrs t5, vxsat, zero<br> [0x80000798]:sd t6, 256(gp)<br>    |
|  39|[0x80002470]<br>0xFFFFFE00FFFFFE00|- rs1_w1_val == -8388609<br>                                                                                                                         |[0x800007a8]:SCLIP32 t6, t5, 9<br> [0x800007ac]:csrrs t5, vxsat, zero<br> [0x800007b0]:sd t6, 272(gp)<br>     |
|  40|[0x80002480]<br>0xFFBFFFFF00000009|- rs1_w1_val == -4194305<br>                                                                                                                         |[0x800007c4]:SCLIP32 t6, t5, 30<br> [0x800007c8]:csrrs t5, vxsat, zero<br> [0x800007cc]:sd t6, 288(gp)<br>    |
|  41|[0x80002490]<br>0xFFF0000000000800|- rs1_w1_val == -2097153<br>                                                                                                                         |[0x800007e8]:SCLIP32 t6, t5, 20<br> [0x800007ec]:csrrs t5, vxsat, zero<br> [0x800007f0]:sd t6, 304(gp)<br>    |
|  42|[0x800024a0]<br>0xFFF7FFFF00000200|- rs1_w1_val == -524289<br> - rs1_w0_val == 512<br>                                                                                                  |[0x80000804]:SCLIP32 t6, t5, 23<br> [0x80000808]:csrrs t5, vxsat, zero<br> [0x8000080c]:sd t6, 320(gp)<br>    |
|  43|[0x800024b0]<br>0xFFFFFF800000007F|- rs1_w1_val == -131073<br> - rs1_w0_val == 67108864<br>                                                                                             |[0x8000081c]:SCLIP32 t6, t5, 7<br> [0x80000820]:csrrs t5, vxsat, zero<br> [0x80000824]:sd t6, 336(gp)<br>     |
|  44|[0x800024c0]<br>0xFFFFFFFFFFFFFFFF|- rs1_w1_val == -65537<br>                                                                                                                           |[0x8000083c]:SCLIP32 t6, t5, 0<br> [0x80000840]:csrrs t5, vxsat, zero<br> [0x80000844]:sd t6, 352(gp)<br>     |
|  45|[0x800024d0]<br>0xFFFFEFFFFFFEFFFF|- rs1_w1_val == -4097<br>                                                                                                                            |[0x80000858]:SCLIP32 t6, t5, 23<br> [0x8000085c]:csrrs t5, vxsat, zero<br> [0x80000860]:sd t6, 368(gp)<br>    |
|  46|[0x800024e0]<br>0xFFFFFFE00000001F|- rs1_w1_val == -2049<br>                                                                                                                            |[0x80000870]:SCLIP32 t6, t5, 5<br> [0x80000874]:csrrs t5, vxsat, zero<br> [0x80000878]:sd t6, 384(gp)<br>     |
|  47|[0x800024f0]<br>0xFFFFFFFCFFFFFFFC|- rs1_w1_val == -1025<br> - rs1_w0_val == -4097<br>                                                                                                  |[0x8000088c]:SCLIP32 t6, t5, 2<br> [0x80000890]:csrrs t5, vxsat, zero<br> [0x80000894]:sd t6, 400(gp)<br>     |
|  48|[0x80002500]<br>0xFFFFFEFF00000004|- rs1_w1_val == -257<br> - rs1_w0_val == 4<br>                                                                                                       |[0x800008a4]:SCLIP32 t6, t5, 13<br> [0x800008a8]:csrrs t5, vxsat, zero<br> [0x800008ac]:sd t6, 416(gp)<br>    |
|  49|[0x80002510]<br>0xFFFFFF7F00000002|- rs1_w1_val == -129<br>                                                                                                                             |[0x800008bc]:SCLIP32 t6, t5, 25<br> [0x800008c0]:csrrs t5, vxsat, zero<br> [0x800008c4]:sd t6, 432(gp)<br>    |
|  50|[0x80002520]<br>0xFFFFFFDFFFFFFFEF|- rs1_w1_val == -33<br>                                                                                                                              |[0x800008d4]:SCLIP32 t6, t5, 17<br> [0x800008d8]:csrrs t5, vxsat, zero<br> [0x800008dc]:sd t6, 448(gp)<br>    |
|  51|[0x80002530]<br>0xFFFFFFF7FFFFFFEF|- rs1_w1_val == -9<br>                                                                                                                               |[0x800008ec]:SCLIP32 t6, t5, 18<br> [0x800008f0]:csrrs t5, vxsat, zero<br> [0x800008f4]:sd t6, 464(gp)<br>    |
|  52|[0x80002540]<br>0xFFFFFFF8FFFFFFF8|- rs1_w0_val == -65<br>                                                                                                                              |[0x80000904]:SCLIP32 t6, t5, 3<br> [0x80000908]:csrrs t5, vxsat, zero<br> [0x8000090c]:sd t6, 480(gp)<br>     |
|  53|[0x80002550]<br>0x00000020FFFFFFDF|- rs1_w1_val == 32<br> - rs1_w0_val == -33<br>                                                                                                       |[0x8000091c]:SCLIP32 t6, t5, 28<br> [0x80000920]:csrrs t5, vxsat, zero<br> [0x80000924]:sd t6, 496(gp)<br>    |
|  54|[0x80002560]<br>0xC0000000FFFFFFF7|- rs1_w1_val == -2147483648<br> - rs1_w0_val == -9<br>                                                                                               |[0x80000938]:SCLIP32 t6, t5, 30<br> [0x8000093c]:csrrs t5, vxsat, zero<br> [0x80000940]:sd t6, 512(gp)<br>    |
|  55|[0x80002570]<br>0x00000007FFFFFFFB|- rs1_w0_val == -5<br>                                                                                                                               |[0x80000950]:SCLIP32 t6, t5, 12<br> [0x80000954]:csrrs t5, vxsat, zero<br> [0x80000958]:sd t6, 528(gp)<br>    |
|  56|[0x80002580]<br>0x0000000FFFFFFFFD|- rs1_w0_val == -3<br>                                                                                                                               |[0x80000968]:SCLIP32 t6, t5, 4<br> [0x8000096c]:csrrs t5, vxsat, zero<br> [0x80000970]:sd t6, 544(gp)<br>     |
|  57|[0x80002590]<br>0x00000006FFFFFFFE|- rs1_w0_val == -2<br>                                                                                                                               |[0x80000980]:SCLIP32 t6, t5, 25<br> [0x80000984]:csrrs t5, vxsat, zero<br> [0x80000988]:sd t6, 560(gp)<br>    |
|  58|[0x800025a0]<br>0xFFFFFFEF03FFFFFF|- rs1_w0_val == 1073741824<br>                                                                                                                       |[0x80000994]:SCLIP32 t6, t5, 26<br> [0x80000998]:csrrs t5, vxsat, zero<br> [0x8000099c]:sd t6, 576(gp)<br>    |
|  59|[0x800025b0]<br>0xFFFFFFEF000003FF|- rs1_w0_val == 268435456<br>                                                                                                                        |[0x800009a8]:SCLIP32 t6, t5, 10<br> [0x800009ac]:csrrs t5, vxsat, zero<br> [0x800009b0]:sd t6, 592(gp)<br>    |
|  60|[0x800025c0]<br>0x3FFFFFFF08000000|- rs1_w0_val == 134217728<br>                                                                                                                        |[0x800009c4]:SCLIP32 t6, t5, 31<br> [0x800009c8]:csrrs t5, vxsat, zero<br> [0x800009cc]:sd t6, 608(gp)<br>    |
|  61|[0x800025d0]<br>0x0000000700001FFF|- rs1_w0_val == 16777216<br>                                                                                                                         |[0x800009d8]:SCLIP32 t6, t5, 13<br> [0x800009dc]:csrrs t5, vxsat, zero<br> [0x800009e0]:sd t6, 624(gp)<br>    |
|  62|[0x800025e0]<br>0x000003FF000003FF|- rs1_w1_val == 16777216<br> - rs1_w0_val == 4194304<br>                                                                                             |[0x800009f4]:SCLIP32 t6, t5, 10<br> [0x800009f8]:csrrs t5, vxsat, zero<br> [0x800009fc]:sd t6, 640(gp)<br>    |
|  63|[0x800025f0]<br>0x0000001F0000001F|- rs1_w1_val == 256<br> - rs1_w0_val == 2097152<br>                                                                                                  |[0x80000a0c]:SCLIP32 t6, t5, 5<br> [0x80000a10]:csrrs t5, vxsat, zero<br> [0x80000a14]:sd t6, 656(gp)<br>     |
|  64|[0x80002600]<br>0xFFFFE00000001FFF|- rs1_w0_val == 524288<br>                                                                                                                           |[0x80000a24]:SCLIP32 t6, t5, 13<br> [0x80000a28]:csrrs t5, vxsat, zero<br> [0x80000a2c]:sd t6, 672(gp)<br>    |
|  65|[0x80002610]<br>0xFFFFFFC00000003F|- rs1_w0_val == 131072<br>                                                                                                                           |[0x80000a40]:SCLIP32 t6, t5, 6<br> [0x80000a44]:csrrs t5, vxsat, zero<br> [0x80000a48]:sd t6, 688(gp)<br>     |
|  66|[0x80002620]<br>0xFFFFFF7F00004000|- rs1_w0_val == 16384<br>                                                                                                                            |[0x80000a58]:SCLIP32 t6, t5, 24<br> [0x80000a5c]:csrrs t5, vxsat, zero<br> [0x80000a60]:sd t6, 704(gp)<br>    |
|  67|[0x80002630]<br>0xFFF8000000002000|- rs1_w0_val == 8192<br>                                                                                                                             |[0x80000a74]:SCLIP32 t6, t5, 19<br> [0x80000a78]:csrrs t5, vxsat, zero<br> [0x80000a7c]:sd t6, 720(gp)<br>    |
|  68|[0x80002640]<br>0x0000100000001000|- rs1_w1_val == 4096<br> - rs1_w0_val == 4096<br>                                                                                                    |[0x80000a90]:SCLIP32 t6, t5, 26<br> [0x80000a94]:csrrs t5, vxsat, zero<br> [0x80000a98]:sd t6, 736(gp)<br>    |
|  69|[0x80002650]<br>0xFFFFFFFC00000003|- rs1_w0_val == 1024<br>                                                                                                                             |[0x80000aa8]:SCLIP32 t6, t5, 2<br> [0x80000aac]:csrrs t5, vxsat, zero<br> [0x80000ab0]:sd t6, 752(gp)<br>     |
|  70|[0x80002660]<br>0x0000010000000080|- rs1_w0_val == 128<br>                                                                                                                              |[0x80000ac0]:SCLIP32 t6, t5, 19<br> [0x80000ac4]:csrrs t5, vxsat, zero<br> [0x80000ac8]:sd t6, 768(gp)<br>    |
|  71|[0x80002670]<br>0x0000080000000040|- rs1_w0_val == 64<br>                                                                                                                               |[0x80000ad8]:SCLIP32 t6, t5, 13<br> [0x80000adc]:csrrs t5, vxsat, zero<br> [0x80000ae0]:sd t6, 784(gp)<br>    |
|  72|[0x80002680]<br>0xFFFF7FFF00000020|- rs1_w0_val == 32<br>                                                                                                                               |[0x80000af4]:SCLIP32 t6, t5, 21<br> [0x80000af8]:csrrs t5, vxsat, zero<br> [0x80000afc]:sd t6, 800(gp)<br>    |
|  73|[0x80002690]<br>0x03FFFFFF00000010|- rs1_w1_val == 268435456<br> - rs1_w0_val == 16<br>                                                                                                 |[0x80000b0c]:SCLIP32 t6, t5, 26<br> [0x80000b10]:csrrs t5, vxsat, zero<br> [0x80000b14]:sd t6, 816(gp)<br>    |
|  74|[0x800026a0]<br>0xF000000000000008|- rs1_w0_val == 8<br>                                                                                                                                |[0x80000b28]:SCLIP32 t6, t5, 28<br> [0x80000b2c]:csrrs t5, vxsat, zero<br> [0x80000b30]:sd t6, 832(gp)<br>    |
|  75|[0x800026b0]<br>0xFFFFFF0000000001|- rs1_w0_val == 1<br>                                                                                                                                |[0x80000b40]:SCLIP32 t6, t5, 8<br> [0x80000b44]:csrrs t5, vxsat, zero<br> [0x80000b48]:sd t6, 848(gp)<br>     |
|  76|[0x800026d0]<br>0xFFFFFFFEFFFFFFFF|- rs1_w0_val == -1<br>                                                                                                                               |[0x80000b6c]:SCLIP32 t6, t5, 8<br> [0x80000b70]:csrrs t5, vxsat, zero<br> [0x80000b74]:sd t6, 880(gp)<br>     |
|  77|[0x800026e0]<br>0x000000FF00000080|- rs1_w1_val == 1073741824<br>                                                                                                                       |[0x80000b84]:SCLIP32 t6, t5, 8<br> [0x80000b88]:csrrs t5, vxsat, zero<br> [0x80000b8c]:sd t6, 896(gp)<br>     |
|  78|[0x800026f0]<br>0x0000FFFF0000FFFF|- rs1_w1_val == 536870912<br>                                                                                                                        |[0x80000ba0]:SCLIP32 t6, t5, 16<br> [0x80000ba4]:csrrs t5, vxsat, zero<br> [0x80000ba8]:sd t6, 912(gp)<br>    |
|  79|[0x80002700]<br>0x00007FFFFFFFDFFF|- rs1_w1_val == 134217728<br>                                                                                                                        |[0x80000bc4]:SCLIP32 t6, t5, 15<br> [0x80000bc8]:csrrs t5, vxsat, zero<br> [0x80000bcc]:sd t6, 928(gp)<br>    |
|  80|[0x80002710]<br>0x000007FFFFFFFFFF|- rs1_w1_val == 67108864<br>                                                                                                                         |[0x80000be0]:SCLIP32 t6, t5, 11<br> [0x80000be4]:csrrs t5, vxsat, zero<br> [0x80000be8]:sd t6, 944(gp)<br>    |
|  81|[0x80002720]<br>0x0003FFFFFFFFFF7F|- rs1_w1_val == 33554432<br>                                                                                                                         |[0x80000bfc]:SCLIP32 t6, t5, 18<br> [0x80000c00]:csrrs t5, vxsat, zero<br> [0x80000c04]:sd t6, 960(gp)<br>    |
|  82|[0x80002730]<br>0x0080000000000000|- rs1_w1_val == 8388608<br>                                                                                                                          |[0x80000c10]:SCLIP32 t6, t5, 30<br> [0x80000c14]:csrrs t5, vxsat, zero<br> [0x80000c18]:sd t6, 976(gp)<br>    |
|  83|[0x80002740]<br>0x00400000FEFFFFFF|- rs1_w1_val == 4194304<br> - rs1_w0_val == -16777217<br>                                                                                            |[0x80000c2c]:SCLIP32 t6, t5, 28<br> [0x80000c30]:csrrs t5, vxsat, zero<br> [0x80000c34]:sd t6, 992(gp)<br>    |
|  84|[0x80002750]<br>0x001FFFFFFFF7FFFF|- rs1_w1_val == 2097152<br> - rs1_w0_val == -524289<br>                                                                                              |[0x80000c50]:SCLIP32 t6, t5, 21<br> [0x80000c54]:csrrs t5, vxsat, zero<br> [0x80000c58]:sd t6, 1008(gp)<br>   |
|  85|[0x80002760]<br>0x0002000000004000|- rs1_w1_val == 131072<br>                                                                                                                           |[0x80000c6c]:SCLIP32 t6, t5, 28<br> [0x80000c70]:csrrs t5, vxsat, zero<br> [0x80000c74]:sd t6, 1024(gp)<br>   |
|  86|[0x80002770]<br>0x00000000FFFFFFFF|- rs1_w1_val == 32768<br>                                                                                                                            |[0x80000c88]:SCLIP32 t6, t5, 0<br> [0x80000c8c]:csrrs t5, vxsat, zero<br> [0x80000c90]:sd t6, 1040(gp)<br>    |
|  87|[0x80002780]<br>0x00004000FFFFFFFB|- rs1_w1_val == 16384<br>                                                                                                                            |[0x80000ca4]:SCLIP32 t6, t5, 18<br> [0x80000ca8]:csrrs t5, vxsat, zero<br> [0x80000cac]:sd t6, 1056(gp)<br>   |
|  88|[0x80002790]<br>0x0000000000000000|- rs1_w1_val == 8192<br> - rs1_w0_val == 1431655765<br>                                                                                              |[0x80000cc8]:SCLIP32 t6, t5, 0<br> [0x80000ccc]:csrrs t5, vxsat, zero<br> [0x80000cd0]:sd t6, 1072(gp)<br>    |
|  89|[0x800027a0]<br>0x0000040000000007|- rs1_w1_val == 1024<br>                                                                                                                             |[0x80000ce0]:SCLIP32 t6, t5, 24<br> [0x80000ce4]:csrrs t5, vxsat, zero<br> [0x80000ce8]:sd t6, 1088(gp)<br>   |
|  90|[0x800027b0]<br>0x0000000700000006|- rs1_w1_val == 64<br>                                                                                                                               |[0x80000cf8]:SCLIP32 t6, t5, 3<br> [0x80000cfc]:csrrs t5, vxsat, zero<br> [0x80000d00]:sd t6, 1104(gp)<br>    |
|  91|[0x800027c0]<br>0x000000040000000F|- rs1_w1_val == 4<br>                                                                                                                                |[0x80000d10]:SCLIP32 t6, t5, 4<br> [0x80000d14]:csrrs t5, vxsat, zero<br> [0x80000d18]:sd t6, 1120(gp)<br>    |
|  92|[0x800027d0]<br>0x00000001FFFFFFFC|- rs1_w1_val == 1<br>                                                                                                                                |[0x80000d28]:SCLIP32 t6, t5, 2<br> [0x80000d2c]:csrrs t5, vxsat, zero<br> [0x80000d30]:sd t6, 1136(gp)<br>    |
|  93|[0x800027f0]<br>0x00000005FFFFFE00|- rs1_w0_val == -1431655766<br>                                                                                                                      |[0x80000d58]:SCLIP32 t6, t5, 9<br> [0x80000d5c]:csrrs t5, vxsat, zero<br> [0x80000d60]:sd t6, 1168(gp)<br>    |
|  94|[0x80002800]<br>0xFFFFFFFAFFC00000|- rs1_w0_val == -1073741825<br>                                                                                                                      |[0x80000d70]:SCLIP32 t6, t5, 22<br> [0x80000d74]:csrrs t5, vxsat, zero<br> [0x80000d78]:sd t6, 1184(gp)<br>   |
|  95|[0x80002810]<br>0x00000008FFFE0000|- rs1_w1_val == 8<br> - rs1_w0_val == -67108865<br>                                                                                                  |[0x80000d88]:SCLIP32 t6, t5, 17<br> [0x80000d8c]:csrrs t5, vxsat, zero<br> [0x80000d90]:sd t6, 1200(gp)<br>   |
|  96|[0x80002820]<br>0x00000006FFE00000|- rs1_w0_val == -33554433<br>                                                                                                                        |[0x80000da0]:SCLIP32 t6, t5, 21<br> [0x80000da4]:csrrs t5, vxsat, zero<br> [0x80000da8]:sd t6, 1216(gp)<br>   |
|  97|[0x80002830]<br>0xFFFFFFC0FFFFFFC0|- rs1_w0_val == -2097153<br>                                                                                                                         |[0x80000dbc]:SCLIP32 t6, t5, 6<br> [0x80000dc0]:csrrs t5, vxsat, zero<br> [0x80000dc4]:sd t6, 1232(gp)<br>    |
|  98|[0x80002840]<br>0x3FFFFFFFFFFBFFFF|- rs1_w0_val == -262145<br>                                                                                                                          |[0x80000ddc]:SCLIP32 t6, t5, 30<br> [0x80000de0]:csrrs t5, vxsat, zero<br> [0x80000de4]:sd t6, 1248(gp)<br>   |
|  99|[0x80002850]<br>0x0001FFFFFFFF7FFF|- rs1_w0_val == -32769<br>                                                                                                                           |[0x80000e00]:SCLIP32 t6, t5, 17<br> [0x80000e04]:csrrs t5, vxsat, zero<br> [0x80000e08]:sd t6, 1264(gp)<br>   |
| 100|[0x80002860]<br>0x00000040FFFFFF00|- rs1_w0_val == -16385<br>                                                                                                                           |[0x80000e1c]:SCLIP32 t6, t5, 8<br> [0x80000e20]:csrrs t5, vxsat, zero<br> [0x80000e24]:sd t6, 1280(gp)<br>    |
| 101|[0x80002870]<br>0x00004000FFFFFBFF|- rs1_w0_val == -1025<br>                                                                                                                            |[0x80000e38]:SCLIP32 t6, t5, 28<br> [0x80000e3c]:csrrs t5, vxsat, zero<br> [0x80000e40]:sd t6, 1296(gp)<br>   |
| 102|[0x80002880]<br>0xFFFDFFFFFFFFFEFF|- rs1_w0_val == -257<br>                                                                                                                             |[0x80000e50]:SCLIP32 t6, t5, 25<br> [0x80000e54]:csrrs t5, vxsat, zero<br> [0x80000e58]:sd t6, 1312(gp)<br>   |
| 103|[0x80002890]<br>0x00000080FFFFFE00|- rs1_w0_val == -8388609<br>                                                                                                                         |[0x80000e6c]:SCLIP32 t6, t5, 9<br> [0x80000e70]:csrrs t5, vxsat, zero<br> [0x80000e74]:sd t6, 1328(gp)<br>    |
| 104|[0x800028a0]<br>0x00000001FFFFFFFE|- rs1_w1_val == 262144<br>                                                                                                                           |[0x80000e90]:SCLIP32 t6, t5, 1<br> [0x80000e94]:csrrs t5, vxsat, zero<br> [0x80000e98]:sd t6, 1344(gp)<br>    |
