
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000cc0')]      |
| SIG_REGION                | [('0x80002210', '0x80002540', '102 dwords')]      |
| COV_LABELS                | sraiw.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/sraiw.u-01.S    |
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
      [0x80000cb4]:SRAIW_U t6, t5, 26
      [0x80000cb8]:sd t6, 648(sp)
 -- Signature Address: 0x80002538 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : sraiw.u
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 26
      - rs1_w1_val == 512
      - rs1_w0_val == -32769






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

|s.no|            signature             |                                                                    coverpoints                                                                    |                                 code                                  |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80002210]<br>0xFFFFFFFFFC000000|- opcode : sraiw.u<br> - rs1 : x31<br> - rd : x31<br> - rs1 == rd<br> - rs1_w0_val == -2147483648<br> - imm_val == 5<br> - rs1_w1_val == 32768<br> |[0x800003a4]:SRAIW_U t6, t6, 5<br> [0x800003a8]:sd t6, 0(a1)<br>       |
|   2|[0x80002218]<br>0x0000000000000000|- rs1 : x9<br> - rd : x6<br> - rs1 != rd<br> - imm_val == 31<br> - rs1_w1_val == 16777216<br> - rs1_w0_val == 131072<br>                           |[0x800003bc]:SRAIW_U t1, s1, 31<br> [0x800003c0]:sd t1, 8(a1)<br>      |
|   3|[0x80002220]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x19<br> - rd : x24<br> - imm_val == 30<br> - rs1_w1_val == -9<br> - rs1_w0_val == -536870913<br>                                           |[0x800003d0]:SRAIW_U s8, s3, 30<br> [0x800003d4]:sd s8, 16(a1)<br>     |
|   4|[0x80002228]<br>0x0000000000000000|- rs1 : x5<br> - rd : x12<br> - imm_val == 29<br> - rs1_w1_val == 4194304<br> - rs1_w0_val == -5<br>                                               |[0x800003e8]:SRAIW_U a2, t0, 29<br> [0x800003ec]:sd a2, 24(a1)<br>     |
|   5|[0x80002230]<br>0x0000000000000000|- rs1 : x6<br> - rd : x1<br> - imm_val == 28<br> - rs1_w1_val == 256<br> - rs1_w0_val == -4194305<br>                                              |[0x80000400]:SRAIW_U ra, t1, 28<br> [0x80000404]:sd ra, 32(a1)<br>     |
|   6|[0x80002238]<br>0x0000000000000000|- rs1 : x8<br> - rd : x27<br> - imm_val == 27<br> - rs1_w0_val == -32769<br>                                                                       |[0x80000418]:SRAIW_U s11, fp, 27<br> [0x8000041c]:sd s11, 40(a1)<br>   |
|   7|[0x80002240]<br>0x0000000000000000|- rs1 : x29<br> - rd : x0<br> - imm_val == 26<br> - rs1_w1_val == 512<br>                                                                          |[0x80000430]:SRAIW_U zero, t4, 26<br> [0x80000434]:sd zero, 48(a1)<br> |
|   8|[0x80002248]<br>0x0000000000000000|- rs1 : x18<br> - rd : x28<br> - imm_val == 25<br> - rs1_w1_val == 33554432<br>                                                                    |[0x80000450]:SRAIW_U t3, s2, 25<br> [0x80000454]:sd t3, 56(a1)<br>     |
|   9|[0x80002250]<br>0x0000000000000000|- rs1 : x17<br> - rd : x23<br> - imm_val == 24<br> - rs1_w0_val == 65536<br>                                                                       |[0x80000468]:SRAIW_U s7, a7, 24<br> [0x8000046c]:sd s7, 64(a1)<br>     |
|  10|[0x80002258]<br>0x0000000000000080|- rs1 : x28<br> - rd : x8<br> - imm_val == 23<br> - rs1_w1_val == -4194305<br> - rs1_w0_val == 1073741824<br>                                      |[0x8000047c]:SRAIW_U fp, t3, 23<br> [0x80000480]:sd fp, 72(a1)<br>     |
|  11|[0x80002260]<br>0x0000000000000000|- rs1 : x23<br> - rd : x16<br> - imm_val == 22<br> - rs1_w1_val == 67108864<br> - rs1_w0_val == 32768<br>                                          |[0x80000494]:SRAIW_U a6, s7, 22<br> [0x80000498]:sd a6, 80(a1)<br>     |
|  12|[0x80002268]<br>0x0000000000000000|- rs1 : x26<br> - rd : x18<br> - imm_val == 21<br> - rs1_w1_val == -2097153<br> - rs1_w0_val == -2<br>                                             |[0x800004a8]:SRAIW_U s2, s10, 21<br> [0x800004ac]:sd s2, 88(a1)<br>    |
|  13|[0x80002270]<br>0x0000000000000000|- rs1 : x10<br> - rd : x13<br> - imm_val == 20<br> - rs1_w1_val == -2049<br> - rs1_w0_val == 8192<br>                                              |[0x800004bc]:SRAIW_U a3, a0, 20<br> [0x800004c0]:sd a3, 96(a1)<br>     |
|  14|[0x80002278]<br>0x0000000000000000|- rs1 : x24<br> - rd : x20<br> - imm_val == 19<br> - rs1_w1_val == 2048<br> - rs1_w0_val == -257<br>                                               |[0x800004d4]:SRAIW_U s4, s8, 19<br> [0x800004d8]:sd s4, 104(a1)<br>    |
|  15|[0x80002280]<br>0x0000000000000000|- rs1 : x0<br> - rd : x2<br> - imm_val == 18<br> - rs1_w1_val == 0<br> - rs1_w0_val == 0<br>                                                       |[0x800004e8]:SRAIW_U sp, zero, 18<br> [0x800004ec]:sd sp, 112(a1)<br>  |
|  16|[0x80002288]<br>0x0000000000000001|- rs1 : x30<br> - rd : x22<br> - imm_val == 17<br> - rs1_w1_val == 1048576<br>                                                                     |[0x80000500]:SRAIW_U s6, t5, 17<br> [0x80000504]:sd s6, 120(a1)<br>    |
|  17|[0x80002290]<br>0xFFFFFFFFFFFFE000|- rs1 : x2<br> - rd : x19<br> - imm_val == 16<br> - rs1_w1_val == -32769<br>                                                                       |[0x80000518]:SRAIW_U s3, sp, 16<br> [0x8000051c]:sd s3, 128(a1)<br>    |
|  18|[0x80002298]<br>0xFFFFFFFFFFFFFFFC|- rs1 : x7<br> - rd : x25<br> - imm_val == 15<br> - rs1_w1_val == -17<br> - rs1_w0_val == -131073<br>                                              |[0x80000530]:SRAIW_U s9, t2, 15<br> [0x80000534]:sd s9, 136(a1)<br>    |
|  19|[0x800022a0]<br>0x0000000000000000|- rs1 : x14<br> - rd : x26<br> - imm_val == 14<br> - rs1_w1_val == -65<br> - rs1_w0_val == -65<br>                                                 |[0x80000544]:SRAIW_U s10, a4, 14<br> [0x80000548]:sd s10, 144(a1)<br>  |
|  20|[0x800022a8]<br>0x0000000000000400|- rs1 : x3<br> - rd : x4<br> - imm_val == 13<br> - rs1_w0_val == 8388608<br>                                                                       |[0x8000055c]:SRAIW_U tp, gp, 13<br> [0x80000560]:sd tp, 152(a1)<br>    |
|  21|[0x800022b0]<br>0xFFFFFFFFFFFAAAAB|- rs1 : x22<br> - rd : x21<br> - imm_val == 12<br> - rs1_w1_val == -8388609<br> - rs1_w0_val == -1431655766<br>                                    |[0x80000588]:SRAIW_U s5, s6, 12<br> [0x8000058c]:sd s5, 0(sp)<br>      |
|  22|[0x800022b8]<br>0x0000000000000004|- rs1 : x4<br> - rd : x14<br> - imm_val == 11<br> - rs1_w1_val == 1073741824<br>                                                                   |[0x800005a0]:SRAIW_U a4, tp, 11<br> [0x800005a4]:sd a4, 8(sp)<br>      |
|  23|[0x800022c0]<br>0x0000000000000000|- rs1 : x15<br> - rd : x3<br> - imm_val == 10<br> - rs1_w1_val == 2<br>                                                                            |[0x800005b4]:SRAIW_U gp, a5, 10<br> [0x800005b8]:sd gp, 16(sp)<br>     |
|  24|[0x800022c8]<br>0x0000000000000000|- rs1 : x21<br> - rd : x15<br> - imm_val == 9<br> - rs1_w1_val == -1048577<br>                                                                     |[0x800005cc]:SRAIW_U a5, s5, 9<br> [0x800005d0]:sd a5, 24(sp)<br>      |
|  25|[0x800022d0]<br>0x0000000000200000|- rs1 : x20<br> - rd : x7<br> - imm_val == 8<br> - rs1_w1_val == -33554433<br> - rs1_w0_val == 536870912<br>                                       |[0x800005e0]:SRAIW_U t2, s4, 8<br> [0x800005e4]:sd t2, 32(sp)<br>      |
|  26|[0x800022d8]<br>0xFFFFFFFFFFFFE000|- rs1 : x13<br> - rd : x17<br> - imm_val == 7<br> - rs1_w1_val == -16777217<br> - rs1_w0_val == -1048577<br>                                       |[0x800005fc]:SRAIW_U a7, a3, 7<br> [0x80000600]:sd a7, 40(sp)<br>      |
|  27|[0x800022e0]<br>0x0000000000000000|- rs1 : x11<br> - rd : x10<br> - imm_val == 6<br>                                                                                                  |[0x80000610]:SRAIW_U a0, a1, 6<br> [0x80000614]:sd a0, 48(sp)<br>      |
|  28|[0x800022e8]<br>0xFFFFFFFFFFFFFFF8|- rs1 : x12<br> - rd : x29<br> - imm_val == 4<br> - rs1_w0_val == -129<br>                                                                         |[0x80000624]:SRAIW_U t4, a2, 4<br> [0x80000628]:sd t4, 56(sp)<br>      |
|  29|[0x800022f0]<br>0x0000000000001000|- rs1 : x25<br> - rd : x5<br> - imm_val == 3<br> - rs1_w1_val == -513<br>                                                                          |[0x80000638]:SRAIW_U t0, s9, 3<br> [0x8000063c]:sd t0, 64(sp)<br>      |
|  30|[0x800022f8]<br>0xFFFFFFFFFFFFFFF8|- rs1 : x1<br> - rd : x30<br> - imm_val == 2<br> - rs1_w0_val == -33<br>                                                                           |[0x8000064c]:SRAIW_U t5, ra, 2<br> [0x80000650]:sd t5, 72(sp)<br>      |
|  31|[0x80002300]<br>0x0000000000800000|- rs1 : x27<br> - rd : x11<br> - imm_val == 1<br> - rs1_w1_val == -131073<br> - rs1_w0_val == 16777216<br>                                         |[0x80000660]:SRAIW_U a1, s11, 1<br> [0x80000664]:sd a1, 80(sp)<br>     |
|  32|[0x80002308]<br>0xFFFFFFFFFFFFFFFD|- rs1 : x16<br> - rd : x9<br> - imm_val == 0<br> - rs1_w1_val == 2097152<br> - rs1_w0_val == -3<br>                                                |[0x80000678]:SRAIW_U s1, a6, 0<br> [0x8000067c]:sd s1, 88(sp)<br>      |
|  33|[0x80002310]<br>0x0000000000000040|- rs1_w1_val == -1431655766<br> - rs1_w0_val == 33554432<br>                                                                                       |[0x80000694]:SRAIW_U t6, t5, 19<br> [0x80000698]:sd t6, 96(sp)<br>     |
|  34|[0x80002318]<br>0xFFFFFFFFFFFF7FFF|- rs1_w1_val == 1431655765<br>                                                                                                                     |[0x800006b4]:SRAIW_U t6, t5, 0<br> [0x800006b8]:sd t6, 104(sp)<br>     |
|  35|[0x80002320]<br>0x0000000000000000|- rs1_w1_val == 2147483647<br>                                                                                                                     |[0x800006cc]:SRAIW_U t6, t5, 6<br> [0x800006d0]:sd t6, 112(sp)<br>     |
|  36|[0x80002328]<br>0x0000000000000000|- rs1_w1_val == -1073741825<br>                                                                                                                    |[0x800006e0]:SRAIW_U t6, t5, 23<br> [0x800006e4]:sd t6, 120(sp)<br>    |
|  37|[0x80002330]<br>0x0000000000000400|- rs1_w1_val == -536870913<br> - rs1_w0_val == 2147483647<br>                                                                                      |[0x800006f8]:SRAIW_U t6, t5, 21<br> [0x800006fc]:sd t6, 128(sp)<br>    |
|  38|[0x80002338]<br>0xFFFFFFFFFFFE0000|- rs1_w1_val == -268435457<br>                                                                                                                     |[0x80000714]:SRAIW_U t6, t5, 12<br> [0x80000718]:sd t6, 136(sp)<br>    |
|  39|[0x80002340]<br>0x0000000000000080|- rs1_w1_val == -134217729<br>                                                                                                                     |[0x8000072c]:SRAIW_U t6, t5, 24<br> [0x80000730]:sd t6, 144(sp)<br>    |
|  40|[0x80002348]<br>0x0000000000000000|- rs1_w1_val == -67108865<br>                                                                                                                      |[0x80000740]:SRAIW_U t6, t5, 17<br> [0x80000744]:sd t6, 152(sp)<br>    |
|  41|[0x80002350]<br>0x0000000000000000|- rs1_w1_val == -524289<br> - rs1_w0_val == 2<br>                                                                                                  |[0x80000758]:SRAIW_U t6, t5, 3<br> [0x8000075c]:sd t6, 160(sp)<br>     |
|  42|[0x80002358]<br>0x0000000000000000|- rs1_w1_val == -262145<br> - rs1_w0_val == -4097<br>                                                                                              |[0x80000774]:SRAIW_U t6, t5, 17<br> [0x80000778]:sd t6, 168(sp)<br>    |
|  43|[0x80002360]<br>0xFFFFFFFFFFFFFFC0|- rs1_w1_val == -65537<br> - rs1_w0_val == -8388609<br>                                                                                            |[0x8000078c]:SRAIW_U t6, t5, 17<br> [0x80000790]:sd t6, 176(sp)<br>    |
|  44|[0x80002368]<br>0x0000000000000000|- rs1_w1_val == -16385<br>                                                                                                                         |[0x800007a4]:SRAIW_U t6, t5, 30<br> [0x800007a8]:sd t6, 184(sp)<br>    |
|  45|[0x80002370]<br>0xFFFFFFFFFFC00000|- rs1_w1_val == -8193<br> - rs1_w0_val == -134217729<br>                                                                                           |[0x800007bc]:SRAIW_U t6, t5, 5<br> [0x800007c0]:sd t6, 192(sp)<br>     |
|  46|[0x80002378]<br>0xFFFFFFFFFFFFFC00|- rs1_w1_val == -4097<br>                                                                                                                          |[0x800007d4]:SRAIW_U t6, t5, 7<br> [0x800007d8]:sd t6, 200(sp)<br>     |
|  47|[0x80002380]<br>0xFFFFFFFFFFFFFFFF|- rs1_w1_val == -1025<br> - rs1_w0_val == -513<br>                                                                                                 |[0x800007e8]:SRAIW_U t6, t5, 10<br> [0x800007ec]:sd t6, 208(sp)<br>    |
|  48|[0x80002388]<br>0x0000000000000000|- rs1_w1_val == -257<br> - rs1_w0_val == -2049<br>                                                                                                 |[0x80000800]:SRAIW_U t6, t5, 27<br> [0x80000804]:sd t6, 216(sp)<br>    |
|  49|[0x80002390]<br>0xFFFFFFFFFFFFFC00|- rs1_w1_val == -129<br>                                                                                                                           |[0x80000814]:SRAIW_U t6, t5, 19<br> [0x80000818]:sd t6, 224(sp)<br>    |
|  50|[0x80002398]<br>0xFFFFFFFFFFFFFFF8|- rs1_w0_val == -17<br>                                                                                                                            |[0x8000082c]:SRAIW_U t6, t5, 1<br> [0x80000830]:sd t6, 232(sp)<br>     |
|  51|[0x800023a0]<br>0x0000000000000000|- rs1_w0_val == -9<br>                                                                                                                             |[0x80000844]:SRAIW_U t6, t5, 21<br> [0x80000848]:sd t6, 240(sp)<br>    |
|  52|[0x800023a8]<br>0x0000000000020000|- rs1_w0_val == 268435456<br>                                                                                                                      |[0x80000854]:SRAIW_U t6, t5, 11<br> [0x80000858]:sd t6, 248(sp)<br>    |
|  53|[0x800023b0]<br>0x0000000000008000|- rs1_w0_val == 134217728<br>                                                                                                                      |[0x80000868]:SRAIW_U t6, t5, 12<br> [0x8000086c]:sd t6, 256(sp)<br>    |
|  54|[0x800023b8]<br>0x0000000000000000|- rs1_w0_val == 67108864<br>                                                                                                                       |[0x8000087c]:SRAIW_U t6, t5, 30<br> [0x80000880]:sd t6, 264(sp)<br>    |
|  55|[0x800023c0]<br>0x0000000000000000|- rs1_w0_val == 4194304<br>                                                                                                                        |[0x80000890]:SRAIW_U t6, t5, 27<br> [0x80000894]:sd t6, 272(sp)<br>    |
|  56|[0x800023c8]<br>0x0000000000000000|- rs1_w1_val == 4096<br> - rs1_w0_val == 2097152<br>                                                                                               |[0x800008a4]:SRAIW_U t6, t5, 23<br> [0x800008a8]:sd t6, 280(sp)<br>    |
|  57|[0x800023d0]<br>0x0000000000000800|- rs1_w1_val == 1024<br> - rs1_w0_val == 1048576<br>                                                                                               |[0x800008b8]:SRAIW_U t6, t5, 9<br> [0x800008bc]:sd t6, 288(sp)<br>     |
|  58|[0x800023d8]<br>0x0000000000040000|- rs1_w0_val == 524288<br>                                                                                                                         |[0x800008d0]:SRAIW_U t6, t5, 1<br> [0x800008d4]:sd t6, 296(sp)<br>     |
|  59|[0x800023e0]<br>0x0000000000020000|- rs1_w0_val == 262144<br>                                                                                                                         |[0x800008dc]:SRAIW_U t6, t5, 1<br> [0x800008e0]:sd t6, 304(sp)<br>     |
|  60|[0x800023e8]<br>0x0000000000000040|- rs1_w0_val == 16384<br>                                                                                                                          |[0x800008e8]:SRAIW_U t6, t5, 8<br> [0x800008ec]:sd t6, 312(sp)<br>     |
|  61|[0x800023f0]<br>0x0000000000000000|- rs1_w1_val == 8<br> - rs1_w0_val == 4096<br>                                                                                                     |[0x800008fc]:SRAIW_U t6, t5, 18<br> [0x80000900]:sd t6, 320(sp)<br>    |
|  62|[0x800023f8]<br>0x0000000000000000|- rs1_w0_val == 2048<br>                                                                                                                           |[0x8000091c]:SRAIW_U t6, t5, 21<br> [0x80000920]:sd t6, 328(sp)<br>    |
|  63|[0x80002400]<br>0x0000000000000000|- rs1_w1_val == -2147483648<br> - rs1_w0_val == 1024<br>                                                                                           |[0x80000930]:SRAIW_U t6, t5, 27<br> [0x80000934]:sd t6, 336(sp)<br>    |
|  64|[0x80002408]<br>0x0000000000000000|- rs1_w1_val == 268435456<br> - rs1_w0_val == 512<br>                                                                                              |[0x80000944]:SRAIW_U t6, t5, 24<br> [0x80000948]:sd t6, 344(sp)<br>    |
|  65|[0x80002410]<br>0x0000000000000004|- rs1_w0_val == 256<br>                                                                                                                            |[0x8000095c]:SRAIW_U t6, t5, 6<br> [0x80000960]:sd t6, 352(sp)<br>     |
|  66|[0x80002418]<br>0x0000000000000020|- rs1_w1_val == 8192<br> - rs1_w0_val == 128<br>                                                                                                   |[0x80000970]:SRAIW_U t6, t5, 2<br> [0x80000974]:sd t6, 360(sp)<br>     |
|  67|[0x80002420]<br>0x0000000000000000|- rs1_w0_val == 64<br>                                                                                                                             |[0x80000984]:SRAIW_U t6, t5, 9<br> [0x80000988]:sd t6, 368(sp)<br>     |
|  68|[0x80002428]<br>0x0000000000000000|- rs1_w0_val == 32<br>                                                                                                                             |[0x80000998]:SRAIW_U t6, t5, 26<br> [0x8000099c]:sd t6, 376(sp)<br>    |
|  69|[0x80002430]<br>0x0000000000000000|- rs1_w0_val == 16<br>                                                                                                                             |[0x800009b0]:SRAIW_U t6, t5, 14<br> [0x800009b4]:sd t6, 384(sp)<br>    |
|  70|[0x80002438]<br>0x0000000000000000|- rs1_w1_val == 64<br> - rs1_w0_val == 8<br>                                                                                                       |[0x800009c4]:SRAIW_U t6, t5, 6<br> [0x800009c8]:sd t6, 392(sp)<br>     |
|  71|[0x80002440]<br>0x0000000000000000|- rs1_w0_val == 4<br>                                                                                                                              |[0x800009dc]:SRAIW_U t6, t5, 16<br> [0x800009e0]:sd t6, 400(sp)<br>    |
|  72|[0x80002448]<br>0x0000000000000001|- rs1_w0_val == 1<br>                                                                                                                              |[0x800009f4]:SRAIW_U t6, t5, 1<br> [0x800009f8]:sd t6, 408(sp)<br>     |
|  73|[0x80002450]<br>0x0000000000000000|- rs1_w0_val == -1<br>                                                                                                                             |[0x80000a08]:SRAIW_U t6, t5, 1<br> [0x80000a0c]:sd t6, 416(sp)<br>     |
|  74|[0x80002458]<br>0x0000000001000000|- rs1_w1_val == -5<br>                                                                                                                             |[0x80000a18]:SRAIW_U t6, t5, 0<br> [0x80000a1c]:sd t6, 424(sp)<br>     |
|  75|[0x80002460]<br>0x0000000000001000|- rs1_w1_val == -3<br>                                                                                                                             |[0x80000a28]:SRAIW_U t6, t5, 15<br> [0x80000a2c]:sd t6, 432(sp)<br>    |
|  76|[0x80002468]<br>0x0000000000000000|- rs1_w1_val == -2<br>                                                                                                                             |[0x80000a3c]:SRAIW_U t6, t5, 10<br> [0x80000a40]:sd t6, 440(sp)<br>    |
|  77|[0x80002470]<br>0x0000000000008000|- rs1_w1_val == 536870912<br>                                                                                                                      |[0x80000a54]:SRAIW_U t6, t5, 12<br> [0x80000a58]:sd t6, 448(sp)<br>    |
|  78|[0x80002478]<br>0x0000000000000000|- rs1_w1_val == 134217728<br>                                                                                                                      |[0x80000a6c]:SRAIW_U t6, t5, 10<br> [0x80000a70]:sd t6, 456(sp)<br>    |
|  79|[0x80002480]<br>0xFFFFFFFFFD555555|- rs1_w1_val == 8388608<br>                                                                                                                        |[0x80000a90]:SRAIW_U t6, t5, 5<br> [0x80000a94]:sd t6, 464(sp)<br>     |
|  80|[0x80002488]<br>0xFFFFFFFFFFFFE000|- rs1_w1_val == 524288<br> - rs1_w0_val == -268435457<br>                                                                                          |[0x80000aa8]:SRAIW_U t6, t5, 15<br> [0x80000aac]:sd t6, 472(sp)<br>    |
|  81|[0x80002490]<br>0x0000000000000000|- rs1_w1_val == 262144<br>                                                                                                                         |[0x80000abc]:SRAIW_U t6, t5, 16<br> [0x80000ac0]:sd t6, 480(sp)<br>    |
|  82|[0x80002498]<br>0x0000000000000000|- rs1_w1_val == 131072<br>                                                                                                                         |[0x80000ad4]:SRAIW_U t6, t5, 6<br> [0x80000ad8]:sd t6, 488(sp)<br>     |
|  83|[0x800024a0]<br>0x0000000000000000|- rs1_w1_val == 65536<br>                                                                                                                          |[0x80000ae8]:SRAIW_U t6, t5, 24<br> [0x80000aec]:sd t6, 496(sp)<br>    |
|  84|[0x800024a8]<br>0x0000000000000000|- rs1_w1_val == 16384<br>                                                                                                                          |[0x80000b00]:SRAIW_U t6, t5, 18<br> [0x80000b04]:sd t6, 504(sp)<br>    |
|  85|[0x800024b0]<br>0x0000000000000000|- rs1_w1_val == 128<br> - rs1_w0_val == -524289<br>                                                                                                |[0x80000b18]:SRAIW_U t6, t5, 28<br> [0x80000b1c]:sd t6, 512(sp)<br>    |
|  86|[0x800024b8]<br>0xFFFFFFFFFFF80000|- rs1_w1_val == 32<br>                                                                                                                             |[0x80000b2c]:SRAIW_U t6, t5, 9<br> [0x80000b30]:sd t6, 520(sp)<br>     |
|  87|[0x800024c0]<br>0x0000000000200000|- rs1_w1_val == 16<br>                                                                                                                             |[0x80000b40]:SRAIW_U t6, t5, 9<br> [0x80000b44]:sd t6, 528(sp)<br>     |
|  88|[0x800024c8]<br>0xFFFFFFFFFFFEFFFF|- rs1_w1_val == 4<br> - rs1_w0_val == -65537<br>                                                                                                   |[0x80000b58]:SRAIW_U t6, t5, 0<br> [0x80000b5c]:sd t6, 536(sp)<br>     |
|  89|[0x800024d0]<br>0x0000000000000080|- rs1_w1_val == 1<br>                                                                                                                              |[0x80000b6c]:SRAIW_U t6, t5, 11<br> [0x80000b70]:sd t6, 544(sp)<br>    |
|  90|[0x800024d8]<br>0x0000000000000000|- rs1_w1_val == -1<br>                                                                                                                             |[0x80000b80]:SRAIW_U t6, t5, 23<br> [0x80000b84]:sd t6, 552(sp)<br>    |
|  91|[0x800024e0]<br>0x0000000000AAAAAB|- rs1_w0_val == 1431655765<br>                                                                                                                     |[0x80000ba0]:SRAIW_U t6, t5, 7<br> [0x80000ba4]:sd t6, 560(sp)<br>     |
|  92|[0x800024e8]<br>0xFFFFFFFFFFFFFFFC|- rs1_w0_val == -1073741825<br>                                                                                                                    |[0x80000bb4]:SRAIW_U t6, t5, 28<br> [0x80000bb8]:sd t6, 568(sp)<br>    |
|  93|[0x800024f0]<br>0xFFFFFFFFFFFFFFF8|- rs1_w0_val == -67108865<br>                                                                                                                      |[0x80000bd0]:SRAIW_U t6, t5, 23<br> [0x80000bd4]:sd t6, 576(sp)<br>    |
|  94|[0x800024f8]<br>0xFFFFFFFFFFFFFE00|- rs1_w0_val == -33554433<br>                                                                                                                      |[0x80000bf0]:SRAIW_U t6, t5, 16<br> [0x80000bf4]:sd t6, 584(sp)<br>    |
|  95|[0x80002500]<br>0x0000000000000000|- rs1_w0_val == -2097153<br>                                                                                                                       |[0x80000c0c]:SRAIW_U t6, t5, 25<br> [0x80000c10]:sd t6, 592(sp)<br>    |
|  96|[0x80002508]<br>0xFFFFFFFFFFFF0000|- rs1_w0_val == -262145<br>                                                                                                                        |[0x80000c2c]:SRAIW_U t6, t5, 2<br> [0x80000c30]:sd t6, 600(sp)<br>     |
|  97|[0x80002510]<br>0xFFFFFFFFFFFFFF80|- rs1_w0_val == -16385<br>                                                                                                                         |[0x80000c48]:SRAIW_U t6, t5, 7<br> [0x80000c4c]:sd t6, 608(sp)<br>     |
|  98|[0x80002518]<br>0xFFFFFFFFFFFFF800|- rs1_w0_val == -8193<br>                                                                                                                          |[0x80000c60]:SRAIW_U t6, t5, 2<br> [0x80000c64]:sd t6, 616(sp)<br>     |
|  99|[0x80002520]<br>0xFFFFFFFFFFFFFE00|- rs1_w0_val == -1025<br>                                                                                                                          |[0x80000c74]:SRAIW_U t6, t5, 1<br> [0x80000c78]:sd t6, 624(sp)<br>     |
| 100|[0x80002528]<br>0x0000000000000000|- rs1_w1_val == -33<br>                                                                                                                            |[0x80000c84]:SRAIW_U t6, t5, 4<br> [0x80000c88]:sd t6, 632(sp)<br>     |
| 101|[0x80002530]<br>0xFFFFFFFFFFFFFFE0|- rs1_w0_val == -16777217<br>                                                                                                                      |[0x80000c9c]:SRAIW_U t6, t5, 19<br> [0x80000ca0]:sd t6, 640(sp)<br>    |
