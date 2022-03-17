
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000dd0')]      |
| SIG_REGION                | [('0x80002210', '0x800026c0', '150 dwords')]      |
| COV_LABELS                | uclip16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/uclip16-01.S    |
| Total Number of coverpoints| 232     |
| Total Coverpoints Hit     | 227      |
| Total Signature Updates   | 75      |
| STAT1                     | 75      |
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

|s.no|            signature             |                                                                                       coverpoints                                                                                        |                                                     code                                                     |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0000000000000001|- opcode : uclip16<br> - rs1 : x14<br> - rd : x14<br> - rs1 == rd<br> - rs1_h0_val == 0<br> - imm_val == 10<br> - rs1_h3_val == 63487<br> - rs1_h2_val == 32768<br> - rs1_h1_val == 2<br> |[0x800003b8]:UCLIP16 a4, a4, 10<br> [0x800003bc]:csrrs a4, vxsat, zero<br> [0x800003c0]:sd a4, 0(ra)<br>      |
|   2|[0x80002220]<br>0x0009000000010000|- rs1 : x6<br> - rd : x28<br> - rs1 != rd<br> - imm_val == 15<br> - rs1_h2_val == 49151<br> - rs1_h1_val == 1<br> - rs1_h0_val == 61439<br>                                               |[0x800003dc]:UCLIP16 t3, t1, 15<br> [0x800003e0]:csrrs t1, vxsat, zero<br> [0x800003e4]:sd t3, 16(ra)<br>     |
|   3|[0x80002230]<br>0x0008000000000000|- rs1 : x26<br> - rd : x9<br> - imm_val == 14<br> - rs1_h3_val == 8<br> - rs1_h2_val == 0<br> - rs1_h1_val == 65527<br> - rs1_h0_val == 65519<br>                                         |[0x80000400]:UCLIP16 s1, s10, 14<br> [0x80000404]:csrrs s10, vxsat, zero<br> [0x80000408]:sd s1, 32(ra)<br>   |
|   4|[0x80002240]<br>0x0001000000070000|- rs1 : x3<br> - rd : x21<br> - imm_val == 13<br> - rs1_h3_val == 1<br> - rs1_h2_val == 65533<br> - rs1_h0_val == 65531<br>                                                               |[0x8000041c]:UCLIP16 s5, gp, 13<br> [0x80000420]:csrrs gp, vxsat, zero<br> [0x80000424]:sd s5, 48(ra)<br>     |
|   5|[0x80002250]<br>0x00020FFF00000000|- rs1 : x23<br> - rd : x31<br> - imm_val == 12<br> - rs1_h3_val == 2<br> - rs1_h2_val == 8192<br> - rs1_h1_val == 65023<br> - rs1_h0_val == 65527<br>                                     |[0x80000438]:UCLIP16 t6, s7, 12<br> [0x8000043c]:csrrs s7, vxsat, zero<br> [0x80000440]:sd t6, 64(ra)<br>     |
|   6|[0x80002260]<br>0x0000000C000B0011|- rs1 : x27<br> - rd : x12<br> - imm_val == 11<br> - rs1_h3_val == 65534<br>                                                                                                              |[0x8000045c]:UCLIP16 a2, s11, 11<br> [0x80000460]:csrrs s11, vxsat, zero<br> [0x80000464]:sd a2, 80(ra)<br>   |
|   7|[0x80002270]<br>0x0000000200130000|- rs1 : x19<br> - rd : x20<br> - imm_val == 9<br> - rs1_h2_val == 2<br>                                                                                                                   |[0x8000047c]:UCLIP16 s4, s3, 9<br> [0x80000480]:csrrs s3, vxsat, zero<br> [0x80000484]:sd s4, 96(ra)<br>      |
|   8|[0x80002280]<br>0x0011000000FF000B|- rs1 : x13<br> - rd : x19<br> - imm_val == 8<br> - rs1_h1_val == 32767<br>                                                                                                               |[0x800004a0]:UCLIP16 s3, a3, 8<br> [0x800004a4]:csrrs a3, vxsat, zero<br> [0x800004a8]:sd s3, 112(ra)<br>     |
|   9|[0x80002290]<br>0x000A000600000010|- rs1 : x21<br> - rd : x10<br> - imm_val == 7<br> - rs1_h1_val == 57343<br> - rs1_h0_val == 16<br>                                                                                        |[0x800004c4]:UCLIP16 a0, s5, 7<br> [0x800004c8]:csrrs s5, vxsat, zero<br> [0x800004cc]:sd a0, 128(ra)<br>     |
|  10|[0x800022a0]<br>0x0000000000000000|- rs1 : x11<br> - rd : x0<br> - imm_val == 6<br> - rs1_h0_val == 57343<br>                                                                                                                |[0x800004e8]:UCLIP16 zero, a1, 6<br> [0x800004ec]:csrrs a1, vxsat, zero<br> [0x800004f0]:sd zero, 144(ra)<br> |
|  11|[0x800022b0]<br>0x001F001F0000001F|- rs1 : x22<br> - rd : x11<br> - imm_val == 5<br> - rs1_h3_val == 512<br> - rs1_h2_val == 512<br> - rs1_h1_val == 65519<br> - rs1_h0_val == 16384<br>                                     |[0x80000508]:UCLIP16 a1, s6, 5<br> [0x8000050c]:csrrs s6, vxsat, zero<br> [0x80000510]:sd a1, 160(ra)<br>     |
|  12|[0x800022c0]<br>0x00000001000F000F|- rs1 : x25<br> - rd : x5<br> - imm_val == 4<br> - rs1_h3_val == 65527<br> - rs1_h2_val == 1<br> - rs1_h0_val == 32<br>                                                                   |[0x8000052c]:UCLIP16 t0, s9, 4<br> [0x80000530]:csrrs s9, vxsat, zero<br> [0x80000534]:sd t0, 176(ra)<br>     |
|  13|[0x800022d0]<br>0x0007000700070000|- rs1 : x9<br> - rd : x26<br> - imm_val == 3<br> - rs1_h3_val == 2048<br> - rs1_h1_val == 16<br> - rs1_h0_val == 32768<br>                                                                |[0x8000054c]:UCLIP16 s10, s1, 3<br> [0x80000550]:csrrs s1, vxsat, zero<br> [0x80000554]:sd s10, 192(ra)<br>   |
|  14|[0x800022e0]<br>0x0003000300000003|- rs1 : x5<br> - rd : x30<br> - imm_val == 2<br> - rs1_h2_val == 128<br> - rs1_h1_val == 65503<br> - rs1_h0_val == 128<br>                                                                |[0x80000570]:UCLIP16 t5, t0, 2<br> [0x80000574]:csrrs t0, vxsat, zero<br> [0x80000578]:sd t5, 208(ra)<br>     |
|  15|[0x800022f0]<br>0x0001000000010000|- rs1 : x8<br> - rd : x18<br> - imm_val == 1<br> - rs1_h3_val == 16<br> - rs1_h2_val == 65471<br> - rs1_h1_val == 128<br> - rs1_h0_val == 65535<br>                                       |[0x80000594]:UCLIP16 s2, fp, 1<br> [0x80000598]:csrrs fp, vxsat, zero<br> [0x8000059c]:sd s2, 224(ra)<br>     |
|  16|[0x80002300]<br>0x0000000000000000|- rs1 : x15<br> - rd : x4<br> - imm_val == 0<br> - rs1_h2_val == 1024<br> - rs1_h1_val == 8<br> - rs1_h0_val == 65407<br>                                                                 |[0x800005b4]:UCLIP16 tp, a5, 0<br> [0x800005b8]:csrrs a5, vxsat, zero<br> [0x800005bc]:sd tp, 240(ra)<br>     |
|  17|[0x80002310]<br>0x0000000000000000|- rs1 : x16<br> - rd : x15<br> - rs1_h3_val == 43690<br> - rs1_h2_val == 63487<br>                                                                                                        |[0x800005d8]:UCLIP16 a5, a6, 0<br> [0x800005dc]:csrrs a6, vxsat, zero<br> [0x800005e0]:sd a5, 256(ra)<br>     |
|  18|[0x80002320]<br>0x00FF000000FF00FF|- rs1 : x2<br> - rd : x24<br> - rs1_h3_val == 21845<br> - rs1_h2_val == 65519<br> - rs1_h1_val == 2048<br> - rs1_h0_val == 2048<br>                                                       |[0x80000604]:UCLIP16 s8, sp, 8<br> [0x80000608]:csrrs sp, vxsat, zero<br> [0x8000060c]:sd s8, 272(ra)<br>     |
|  19|[0x80002330]<br>0x7FFF000900002000|- rs1 : x29<br> - rd : x23<br> - rs1_h3_val == 32767<br> - rs1_h1_val == 43690<br> - rs1_h0_val == 8192<br>                                                                               |[0x8000062c]:UCLIP16 s7, t4, 15<br> [0x80000630]:csrrs t4, vxsat, zero<br> [0x80000634]:sd s7, 288(ra)<br>    |
|  20|[0x80002340]<br>0x0000004000000400|- rs1 : x1<br> - rd : x29<br> - rs1_h3_val == 49151<br> - rs1_h2_val == 64<br> - rs1_h1_val == 65279<br> - rs1_h0_val == 1024<br>                                                         |[0x80000658]:UCLIP16 t4, ra, 13<br> [0x8000065c]:csrrs ra, vxsat, zero<br> [0x80000660]:sd t4, 0(t0)<br>      |
|  21|[0x80002350]<br>0x0000001200030012|- rs1 : x7<br> - rd : x22<br> - rs1_h3_val == 57343<br>                                                                                                                                   |[0x8000067c]:UCLIP16 s6, t2, 9<br> [0x80000680]:csrrs t2, vxsat, zero<br> [0x80000684]:sd s6, 16(t0)<br>      |
|  22|[0x80002360]<br>0x0000000F0008000F|- rs1 : x28<br> - rd : x25<br> - rs1_h3_val == 61439<br>                                                                                                                                  |[0x800006a0]:UCLIP16 s9, t3, 4<br> [0x800006a4]:csrrs t3, vxsat, zero<br> [0x800006a8]:sd s9, 32(t0)<br>      |
|  23|[0x80002370]<br>0x00001FFF00080004|- rs1 : x18<br> - rd : x7<br> - rs1_h3_val == 64511<br> - rs1_h0_val == 4<br>                                                                                                             |[0x800006c4]:UCLIP16 t2, s2, 13<br> [0x800006c8]:csrrs s2, vxsat, zero<br> [0x800006cc]:sd t2, 48(t0)<br>     |
|  24|[0x80002380]<br>0x0000000100000000|- rs1 : x12<br> - rd : x6<br> - rs1_h3_val == 65023<br> - rs1_h1_val == 65531<br>                                                                                                         |[0x800006e8]:UCLIP16 t1, a2, 1<br> [0x800006ec]:csrrs a2, vxsat, zero<br> [0x800006f0]:sd t1, 64(t0)<br>      |
|  25|[0x80002390]<br>0x0000000300000000|- rs1 : x4<br> - rd : x27<br> - rs1_h3_val == 65279<br>                                                                                                                                   |[0x80000714]:UCLIP16 s11, tp, 2<br> [0x80000718]:csrrs tp, vxsat, zero<br> [0x8000071c]:sd s11, 80(t0)<br>    |
|  26|[0x800023a0]<br>0x0000000000000000|- rs1 : x0<br> - rd : x2<br> - rs1_h3_val == 0<br> - rs1_h1_val == 0<br>                                                                                                                  |[0x80000738]:UCLIP16 sp, zero, 10<br> [0x8000073c]:csrrs zero, vxsat, zero<br> [0x80000740]:sd sp, 96(t0)<br> |
|  27|[0x800023b0]<br>0x0000000020000020|- rs1 : x17<br> - rd : x13<br> - rs1_h3_val == 65471<br> - rs1_h2_val == 65503<br> - rs1_h1_val == 8192<br>                                                                               |[0x80000754]:UCLIP16 a3, a7, 14<br> [0x80000758]:csrrs a7, vxsat, zero<br> [0x8000075c]:sd a3, 112(t0)<br>    |
|  28|[0x800023c0]<br>0x0000000000000000|- rs1 : x20<br> - rd : x17<br> - rs1_h3_val == 65503<br>                                                                                                                                  |[0x80000778]:UCLIP16 a7, s4, 0<br> [0x8000077c]:csrrs s4, vxsat, zero<br> [0x80000780]:sd a7, 128(t0)<br>     |
|  29|[0x800023d0]<br>0x0000001F001F001F|- rs1 : x24<br> - rd : x1<br> - rs1_h3_val == 65519<br> - rs1_h1_val == 21845<br>                                                                                                         |[0x80000798]:UCLIP16 ra, s8, 5<br> [0x8000079c]:csrrs s8, vxsat, zero<br> [0x800007a0]:sd ra, 144(t0)<br>     |
|  30|[0x800023e0]<br>0x0000080001000000|- rs1 : x31<br> - rd : x16<br> - rs1_h3_val == 65531<br> - rs1_h2_val == 2048<br> - rs1_h1_val == 256<br>                                                                                 |[0x800007b8]:UCLIP16 a6, t6, 14<br> [0x800007bc]:csrrs t6, vxsat, zero<br> [0x800007c0]:sd a6, 160(t0)<br>    |
|  31|[0x800023f0]<br>0x0000000000000000|- rs1 : x30<br> - rd : x8<br> - rs1_h3_val == 65533<br> - rs1_h0_val == 4096<br>                                                                                                          |[0x800007d4]:UCLIP16 fp, t5, 0<br> [0x800007d8]:csrrs t5, vxsat, zero<br> [0x800007dc]:sd fp, 176(t0)<br>     |
|  32|[0x80002400]<br>0x0000000400000007|- rs1 : x10<br> - rd : x3<br> - rs1_h3_val == 32768<br> - rs1_h2_val == 4<br> - rs1_h1_val == 65407<br>                                                                                   |[0x800007f8]:UCLIP16 gp, a0, 3<br> [0x800007fc]:csrrs a0, vxsat, zero<br> [0x80000800]:sd gp, 192(t0)<br>     |
|  33|[0x80002410]<br>0x0FFF08000FFF0000|- rs1_h3_val == 16384<br> - rs1_h0_val == 65534<br>                                                                                                                                       |[0x8000081c]:UCLIP16 t6, t5, 12<br> [0x80000820]:csrrs t5, vxsat, zero<br> [0x80000824]:sd t6, 208(t0)<br>    |
|  34|[0x80002420]<br>0x00000000000E0000|- rs1_h2_val == 43690<br> - rs1_h0_val == 49151<br>                                                                                                                                       |[0x80000840]:UCLIP16 t6, t5, 12<br> [0x80000844]:csrrs t5, vxsat, zero<br> [0x80000848]:sd t6, 224(t0)<br>    |
|  35|[0x80002430]<br>0x0013000000000000|- rs1_h1_val == 65533<br> - rs1_h0_val == 63487<br>                                                                                                                                       |[0x80000860]:UCLIP16 t6, t5, 14<br> [0x80000864]:csrrs t5, vxsat, zero<br> [0x80000868]:sd t6, 240(t0)<br>    |
|  36|[0x80002440]<br>0x0011001300000000|- rs1_h0_val == 64511<br>                                                                                                                                                                 |[0x80000884]:UCLIP16 t6, t5, 6<br> [0x80000888]:csrrs t5, vxsat, zero<br> [0x8000088c]:sd t6, 256(t0)<br>     |
|  37|[0x80002450]<br>0x0FFF000A000A0000|- rs1_h0_val == 65023<br>                                                                                                                                                                 |[0x800008a8]:UCLIP16 t6, t5, 12<br> [0x800008ac]:csrrs t5, vxsat, zero<br> [0x800008b0]:sd t6, 272(t0)<br>    |
|  38|[0x80002460]<br>0x0000000B00000000|- rs1_h0_val == 65279<br>                                                                                                                                                                 |[0x800008cc]:UCLIP16 t6, t5, 9<br> [0x800008d0]:csrrs t5, vxsat, zero<br> [0x800008d4]:sd t6, 288(t0)<br>     |
|  39|[0x80002470]<br>0x000C0005000E0000|- rs1_h0_val == 65471<br>                                                                                                                                                                 |[0x800008f0]:UCLIP16 t6, t5, 9<br> [0x800008f4]:csrrs t5, vxsat, zero<br> [0x800008f8]:sd t6, 304(t0)<br>     |
|  40|[0x80002480]<br>0x0000000300030000|- rs1_h2_val == 4096<br> - rs1_h0_val == 65503<br>                                                                                                                                        |[0x80000914]:UCLIP16 t6, t5, 2<br> [0x80000918]:csrrs t5, vxsat, zero<br> [0x8000091c]:sd t6, 320(t0)<br>     |
|  41|[0x80002490]<br>0x01FF000600100000|- rs1_h3_val == 1024<br> - rs1_h0_val == 65533<br>                                                                                                                                        |[0x80000938]:UCLIP16 t6, t5, 9<br> [0x8000093c]:csrrs t5, vxsat, zero<br> [0x80000940]:sd t6, 336(t0)<br>     |
|  42|[0x800024a0]<br>0x0000000000000000|- rs1_h3_val == 32<br> - rs1_h2_val == 65531<br> - rs1_h0_val == 512<br>                                                                                                                  |[0x8000095c]:UCLIP16 t6, t5, 0<br> [0x80000960]:csrrs t5, vxsat, zero<br> [0x80000964]:sd t6, 352(t0)<br>     |
|  43|[0x800024b0]<br>0x0000000000000000|- rs1_h0_val == 256<br>                                                                                                                                                                   |[0x80000980]:UCLIP16 t6, t5, 0<br> [0x80000984]:csrrs t5, vxsat, zero<br> [0x80000988]:sd t6, 368(t0)<br>     |
|  44|[0x800024c0]<br>0x0007000000000007|- rs1_h3_val == 8192<br> - rs1_h2_val == 65279<br> - rs1_h0_val == 64<br>                                                                                                                 |[0x800009a4]:UCLIP16 t6, t5, 3<br> [0x800009a8]:csrrs t5, vxsat, zero<br> [0x800009ac]:sd t6, 384(t0)<br>     |
|  45|[0x800024d0]<br>0x000F000D07FF0008|- rs1_h1_val == 16384<br> - rs1_h0_val == 8<br>                                                                                                                                           |[0x800009c0]:UCLIP16 t6, t5, 11<br> [0x800009c4]:csrrs t5, vxsat, zero<br> [0x800009c8]:sd t6, 400(t0)<br>    |
|  46|[0x800024e0]<br>0x0000000000000002|- rs1_h2_val == 65534<br> - rs1_h1_val == 49151<br> - rs1_h0_val == 2<br>                                                                                                                 |[0x800009e4]:UCLIP16 t6, t5, 3<br> [0x800009e8]:csrrs t5, vxsat, zero<br> [0x800009ec]:sd t6, 416(t0)<br>     |
|  47|[0x800024f0]<br>0x0000000F000F0001|- rs1_h2_val == 32767<br> - rs1_h1_val == 1024<br> - rs1_h0_val == 1<br>                                                                                                                  |[0x80000a08]:UCLIP16 t6, t5, 4<br> [0x80000a0c]:csrrs t5, vxsat, zero<br> [0x80000a10]:sd t6, 432(t0)<br>     |
|  48|[0x80002500]<br>0x10001FFF0040000F|- rs1_h3_val == 4096<br> - rs1_h2_val == 16384<br> - rs1_h1_val == 64<br>                                                                                                                 |[0x80000a2c]:UCLIP16 t6, t5, 13<br> [0x80000a30]:csrrs t5, vxsat, zero<br> [0x80000a34]:sd t6, 448(t0)<br>    |
|  49|[0x80002510]<br>0x010000000000000B|- rs1_h3_val == 256<br> - rs1_h1_val == 64511<br>                                                                                                                                         |[0x80000a50]:UCLIP16 t6, t5, 10<br> [0x80000a54]:csrrs t5, vxsat, zero<br> [0x80000a58]:sd t6, 464(t0)<br>    |
|  50|[0x80002520]<br>0x0020000000FF0000|- rs1_h2_val == 65527<br>                                                                                                                                                                 |[0x80000a74]:UCLIP16 t6, t5, 8<br> [0x80000a78]:csrrs t5, vxsat, zero<br> [0x80000a7c]:sd t6, 480(t0)<br>     |
|  51|[0x80002530]<br>0x0001000100000001|- rs1_h2_val == 256<br> - rs1_h0_val == 21845<br>                                                                                                                                         |[0x80000a98]:UCLIP16 t6, t5, 1<br> [0x80000a9c]:csrrs t5, vxsat, zero<br> [0x80000aa0]:sd t6, 496(t0)<br>     |
|  52|[0x80002540]<br>0x0000000100000000|- rs1_h2_val == 32<br> - rs1_h1_val == 63487<br>                                                                                                                                          |[0x80000ab4]:UCLIP16 t6, t5, 1<br> [0x80000ab8]:csrrs t5, vxsat, zero<br> [0x80000abc]:sd t6, 512(t0)<br>     |
|  53|[0x80002550]<br>0x0000000000000000|- rs1_h2_val == 16<br>                                                                                                                                                                    |[0x80000ad8]:UCLIP16 t6, t5, 0<br> [0x80000adc]:csrrs t5, vxsat, zero<br> [0x80000ae0]:sd t6, 528(t0)<br>     |
|  54|[0x80002560]<br>0x0000000800000000|- rs1_h2_val == 8<br>                                                                                                                                                                     |[0x80000af0]:UCLIP16 t6, t5, 9<br> [0x80000af4]:csrrs t5, vxsat, zero<br> [0x80000af8]:sd t6, 544(t0)<br>     |
|  55|[0x80002570]<br>0x0000000000000000|- rs1_h2_val == 65535<br>                                                                                                                                                                 |[0x80000b10]:UCLIP16 t6, t5, 0<br> [0x80000b14]:csrrs t5, vxsat, zero<br> [0x80000b18]:sd t6, 560(t0)<br>     |
|  56|[0x80002580]<br>0x0000001F0000001F|- rs1_h1_val == 61439<br> - rs1_h0_val == 32767<br>                                                                                                                                       |[0x80000b3c]:UCLIP16 t6, t5, 5<br> [0x80000b40]:csrrs t5, vxsat, zero<br> [0x80000b44]:sd t6, 576(t0)<br>     |
|  57|[0x80002590]<br>0x0000000000000000|- rs1_h3_val == 65407<br> - rs1_h1_val == 65471<br>                                                                                                                                       |[0x80000b5c]:UCLIP16 t6, t5, 12<br> [0x80000b60]:csrrs t5, vxsat, zero<br> [0x80000b64]:sd t6, 592(t0)<br>    |
|  58|[0x800025a0]<br>0x0003000300000003|- rs1_h1_val == 65534<br>                                                                                                                                                                 |[0x80000b80]:UCLIP16 t6, t5, 2<br> [0x80000b84]:csrrs t5, vxsat, zero<br> [0x80000b88]:sd t6, 608(t0)<br>     |
|  59|[0x800025b0]<br>0x0003000000000003|- rs1_h3_val == 128<br>                                                                                                                                                                   |[0x80000ba4]:UCLIP16 t6, t5, 2<br> [0x80000ba8]:csrrs t5, vxsat, zero<br> [0x80000bac]:sd t6, 624(t0)<br>     |
|  60|[0x800025c0]<br>0x0080008000000000|- rs1_h1_val == 32768<br>                                                                                                                                                                 |[0x80000bc8]:UCLIP16 t6, t5, 14<br> [0x80000bcc]:csrrs t5, vxsat, zero<br> [0x80000bd0]:sd t6, 640(t0)<br>    |
|  61|[0x800025d0]<br>0x00401000000B0008|- rs1_h3_val == 64<br>                                                                                                                                                                    |[0x80000be8]:UCLIP16 t6, t5, 13<br> [0x80000bec]:csrrs t5, vxsat, zero<br> [0x80000bf0]:sd t6, 656(t0)<br>    |
|  62|[0x800025e0]<br>0x0010000010000000|- rs1_h1_val == 4096<br>                                                                                                                                                                  |[0x80000c0c]:UCLIP16 t6, t5, 15<br> [0x80000c10]:csrrs t5, vxsat, zero<br> [0x80000c14]:sd t6, 672(t0)<br>    |
|  63|[0x800025f0]<br>0x0004002003FF0000|- rs1_h3_val == 4<br>                                                                                                                                                                     |[0x80000c28]:UCLIP16 t6, t5, 10<br> [0x80000c2c]:csrrs t5, vxsat, zero<br> [0x80000c30]:sd t6, 688(t0)<br>    |
|  64|[0x80002600]<br>0x0003000000030003|- rs1_h1_val == 512<br>                                                                                                                                                                   |[0x80000c44]:UCLIP16 t6, t5, 2<br> [0x80000c48]:csrrs t5, vxsat, zero<br> [0x80000c4c]:sd t6, 704(t0)<br>     |
|  65|[0x80002610]<br>0x0000000F00030000|- rs1_h3_val == 65535<br>                                                                                                                                                                 |[0x80000c60]:UCLIP16 t6, t5, 4<br> [0x80000c64]:csrrs t5, vxsat, zero<br> [0x80000c68]:sd t6, 720(t0)<br>     |
|  66|[0x80002620]<br>0x00000000000F0000|- rs1_h2_val == 61439<br>                                                                                                                                                                 |[0x80000c7c]:UCLIP16 t6, t5, 4<br> [0x80000c80]:csrrs t5, vxsat, zero<br> [0x80000c84]:sd t6, 736(t0)<br>     |
|  67|[0x80002630]<br>0x000200000040000A|- rs1_h2_val == 65023<br>                                                                                                                                                                 |[0x80000c98]:UCLIP16 t6, t5, 12<br> [0x80000c9c]:csrrs t5, vxsat, zero<br> [0x80000ca0]:sd t6, 752(t0)<br>    |
|  68|[0x80002640]<br>0x0040000000200000|- rs1_h1_val == 32<br>                                                                                                                                                                    |[0x80000cb8]:UCLIP16 t6, t5, 7<br> [0x80000cbc]:csrrs t5, vxsat, zero<br> [0x80000cc0]:sd t6, 768(t0)<br>     |
|  69|[0x80002650]<br>0x00000FFF01000800|- rs1_h2_val == 21845<br>                                                                                                                                                                 |[0x80000ce4]:UCLIP16 t6, t5, 12<br> [0x80000ce8]:csrrs t5, vxsat, zero<br> [0x80000cec]:sd t6, 784(t0)<br>    |
|  70|[0x80002660]<br>0x0010000000040000|- rs1_h1_val == 4<br>                                                                                                                                                                     |[0x80000d08]:UCLIP16 t6, t5, 12<br> [0x80000d0c]:csrrs t5, vxsat, zero<br> [0x80000d10]:sd t6, 800(t0)<br>    |
|  71|[0x80002670]<br>0x00000000003F0003|- rs1_h2_val == 57343<br>                                                                                                                                                                 |[0x80000d2c]:UCLIP16 t6, t5, 6<br> [0x80000d30]:csrrs t5, vxsat, zero<br> [0x80000d34]:sd t6, 816(t0)<br>     |
|  72|[0x80002680]<br>0x0010001100000000|- rs1_h1_val == 65535<br>                                                                                                                                                                 |[0x80000d50]:UCLIP16 t6, t5, 15<br> [0x80000d54]:csrrs t5, vxsat, zero<br> [0x80000d58]:sd t6, 832(t0)<br>    |
|  73|[0x80002690]<br>0x0001000000000001|- rs1_h2_val == 64511<br>                                                                                                                                                                 |[0x80000d70]:UCLIP16 t6, t5, 1<br> [0x80000d74]:csrrs t5, vxsat, zero<br> [0x80000d78]:sd t6, 848(t0)<br>     |
|  74|[0x800026a0]<br>0x0001000100010000|- rs1_h0_val == 43690<br>                                                                                                                                                                 |[0x80000d98]:UCLIP16 t6, t5, 1<br> [0x80000d9c]:csrrs t5, vxsat, zero<br> [0x80000da0]:sd t6, 864(t0)<br>     |
|  75|[0x800026b0]<br>0x0000000000000000|- rs1_h2_val == 65407<br>                                                                                                                                                                 |[0x80000dbc]:UCLIP16 t6, t5, 0<br> [0x80000dc0]:csrrs t5, vxsat, zero<br> [0x80000dc4]:sd t6, 880(t0)<br>     |
