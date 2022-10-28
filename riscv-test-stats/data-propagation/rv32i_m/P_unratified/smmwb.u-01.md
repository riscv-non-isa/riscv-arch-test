
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000820')]      |
| SIG_REGION                | [('0x80002210', '0x80002370', '88 words')]      |
| COV_LABELS                | smmwb.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/smmwb.u-01.S    |
| Total Number of coverpoints| 248     |
| Total Coverpoints Hit     | 242      |
| Total Signature Updates   | 86      |
| STAT1                     | 84      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007e4]:SMMWB_U t6, t5, t4
      [0x800007e8]:sw t6, 264(t0)
 -- Signature Address: 0x8000235c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : smmwb.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h1_val == -21846
      - rs2_h0_val == -2
      - rs1_w0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000080c]:SMMWB_U t6, t5, t4
      [0x80000810]:sw t6, 272(t0)
 -- Signature Address: 0x80002364 Data: 0xFFFFDFFE
 -- Redundant Coverpoints hit by the op
      - opcode : smmwb.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h1_val == 128
      - rs2_h0_val == -4097
      - rs1_w0_val == 131072






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

|s.no|        signature         |                                                                             coverpoints                                                                              |                                 code                                  |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80002210]<br>0xFDFFD0FF|- opcode : smmwb.u<br> - rs1 : x20<br> - rs2 : x20<br> - rd : x20<br> - rs1 == rs2 == rd<br> - rs2_h1_val == 8192<br> - rs2_h0_val == -4097<br>                       |[0x8000010c]:SMMWB_U s4, s4, s4<br> [0x80000110]:sw s4, 0(gp)<br>      |
|   2|[0x80002214]<br>0x0000AAAA|- rs1 : x31<br> - rs2 : x31<br> - rd : x10<br> - rs1 == rs2 != rd<br> - rs2_h1_val == -21846<br> - rs2_h0_val == -2<br>                                               |[0x80000120]:SMMWB_U a0, t6, t6<br> [0x80000124]:sw a0, 4(gp)<br>      |
|   3|[0x80002218]<br>0x00000000|- rs1 : x22<br> - rs2 : x17<br> - rd : x13<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_h1_val == 21845<br> - rs2_h0_val == 1<br> - rs1_w0_val == 1024<br> |[0x80000134]:SMMWB_U a3, s6, a7<br> [0x80000138]:sw a3, 8(gp)<br>      |
|   4|[0x8000221c]<br>0x00000000|- rs1 : x0<br> - rs2 : x25<br> - rd : x25<br> - rs2 == rd != rs1<br> - rs2_h1_val == 32767<br> - rs1_w0_val == 0<br>                                                  |[0x8000014c]:SMMWB_U s9, zero, s9<br> [0x80000150]:sw s9, 12(gp)<br>   |
|   5|[0x80002220]<br>0x00000000|- rs1 : x9<br> - rs2 : x11<br> - rd : x9<br> - rs1 == rd != rs2<br> - rs2_h1_val == -16385<br> - rs1_w0_val == -16385<br>                                             |[0x80000164]:SMMWB_U s1, s1, a1<br> [0x80000168]:sw s1, 16(gp)<br>     |
|   6|[0x80002224]<br>0x00000000|- rs1 : x29<br> - rs2 : x5<br> - rd : x14<br> - rs2_h1_val == -8193<br> - rs2_h0_val == -1025<br> - rs1_w0_val == 16<br>                                              |[0x80000178]:SMMWB_U a4, t4, t0<br> [0x8000017c]:sw a4, 20(gp)<br>     |
|   7|[0x80002228]<br>0x00000000|- rs1 : x1<br> - rs2 : x30<br> - rd : x23<br> - rs2_h1_val == -4097<br> - rs1_w0_val == 4096<br>                                                                      |[0x8000018c]:SMMWB_U s7, ra, t5<br> [0x80000190]:sw s7, 24(gp)<br>     |
|   8|[0x8000222c]<br>0xFFFF8000|- rs1 : x19<br> - rs2 : x18<br> - rd : x8<br> - rs2_h1_val == -2049<br>                                                                                               |[0x800001a4]:SMMWB_U fp, s3, s2<br> [0x800001a8]:sw fp, 28(gp)<br>     |
|   9|[0x80002230]<br>0x00000700|- rs1 : x12<br> - rs2 : x8<br> - rd : x19<br> - rs2_h1_val == -1025<br> - rs1_w0_val == 16777216<br>                                                                  |[0x800001b8]:SMMWB_U s3, a2, fp<br> [0x800001bc]:sw s3, 32(gp)<br>     |
|  10|[0x80002234]<br>0x00000000|- rs1 : x13<br> - rs2 : x26<br> - rd : x29<br> - rs2_h1_val == -513<br>                                                                                               |[0x800001cc]:SMMWB_U t4, a3, s10<br> [0x800001d0]:sw t4, 36(gp)<br>    |
|  11|[0x80002238]<br>0x00000000|- rs1 : x17<br> - rs2 : x0<br> - rd : x12<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_w0_val == 2097152<br>                                                 |[0x800001e0]:SMMWB_U a2, a7, zero<br> [0x800001e4]:sw a2, 40(gp)<br>   |
|  12|[0x8000223c]<br>0x00000001|- rs1 : x15<br> - rs2 : x1<br> - rd : x30<br> - rs2_h1_val == -129<br> - rs2_h0_val == 4096<br>                                                                       |[0x800001f0]:SMMWB_U t5, a5, ra<br> [0x800001f4]:sw t5, 44(gp)<br>     |
|  13|[0x80002240]<br>0xFFFFAAAB|- rs1 : x25<br> - rs2 : x19<br> - rd : x5<br> - rs2_h1_val == -65<br> - rs1_w0_val == -1431655766<br>                                                                 |[0x80000208]:SMMWB_U t0, s9, s3<br> [0x8000020c]:sw t0, 48(gp)<br>     |
|  14|[0x80002244]<br>0x00400200|- rs1 : x28<br> - rs2 : x6<br> - rd : x7<br> - rs2_h1_val == -33<br> - rs2_h0_val == -8193<br> - rs1_w0_val == -33554433<br>                                          |[0x80000220]:SMMWB_U t2, t3, t1<br> [0x80000224]:sw t2, 52(gp)<br>     |
|  15|[0x80002248]<br>0x00400000|- rs1 : x5<br> - rs2 : x24<br> - rd : x6<br> - rs2_h1_val == -17<br> - rs2_h0_val == 2048<br> - rs1_w0_val == 134217728<br>                                           |[0x80000234]:SMMWB_U t1, t0, s8<br> [0x80000238]:sw t1, 56(gp)<br>     |
|  16|[0x8000224c]<br>0x00000000|- rs1 : x21<br> - rs2 : x14<br> - rd : x28<br> - rs2_h1_val == -9<br> - rs2_h0_val == -9<br>                                                                          |[0x80000248]:SMMWB_U t3, s5, a4<br> [0x8000024c]:sw t3, 60(gp)<br>     |
|  17|[0x80002250]<br>0xFFFF7F80|- rs1 : x2<br> - rs2 : x28<br> - rd : x27<br> - rs2_h1_val == -5<br> - rs2_h0_val == -257<br> - rs1_w0_val == 8388608<br>                                             |[0x8000025c]:SMMWB_U s11, sp, t3<br> [0x80000260]:sw s11, 64(gp)<br>   |
|  18|[0x80002254]<br>0xFFFFFFFF|- rs1 : x23<br> - rs2 : x22<br> - rd : x21<br> - rs2_h1_val == -3<br> - rs1_w0_val == -3<br>                                                                          |[0x80000278]:SMMWB_U s5, s7, s6<br> [0x8000027c]:sw s5, 0(t0)<br>      |
|  19|[0x80002258]<br>0x10004000|- rs1 : x26<br> - rs2 : x23<br> - rd : x24<br> - rs2_h1_val == -2<br> - rs2_h0_val == -16385<br>                                                                      |[0x8000028c]:SMMWB_U s8, s10, s7<br> [0x80000290]:sw s8, 4(t0)<br>     |
|  20|[0x8000225c]<br>0xFFFFF000|- rs1 : x7<br> - rs2 : x16<br> - rd : x22<br> - rs2_h1_val == -32768<br> - rs2_h0_val == 32<br> - rs1_w0_val == -8388609<br>                                          |[0x800002a4]:SMMWB_U s6, t2, a6<br> [0x800002a8]:sw s6, 8(t0)<br>      |
|  21|[0x80002260]<br>0xFFFFFF7C|- rs1 : x11<br> - rs2 : x3<br> - rd : x16<br> - rs2_h1_val == 16384<br> - rs2_h0_val == -33<br> - rs1_w0_val == 262144<br>                                            |[0x800002b8]:SMMWB_U a6, a1, gp<br> [0x800002bc]:sw a6, 12(t0)<br>     |
|  22|[0x80002264]<br>0xFFFEAAAB|- rs1 : x8<br> - rs2 : x27<br> - rd : x11<br> - rs2_h1_val == 4096<br> - rs1_w0_val == 1431655765<br>                                                                 |[0x800002d0]:SMMWB_U a1, fp, s11<br> [0x800002d4]:sw a1, 16(t0)<br>    |
|  23|[0x80002268]<br>0xFFFFFFF4|- rs1 : x18<br> - rs2 : x29<br> - rd : x1<br> - rs2_h1_val == 2048<br> - rs2_h0_val == -3<br>                                                                         |[0x800002e4]:SMMWB_U ra, s2, t4<br> [0x800002e8]:sw ra, 20(t0)<br>     |
|  24|[0x8000226c]<br>0x00000008|- rs1 : x16<br> - rs2 : x9<br> - rd : x26<br> - rs2_h1_val == 1024<br> - rs2_h0_val == 8192<br> - rs1_w0_val == 64<br>                                                |[0x800002f4]:SMMWB_U s10, a6, s1<br> [0x800002f8]:sw s10, 24(t0)<br>   |
|  25|[0x80002270]<br>0x0000C000|- rs1 : x10<br> - rs2 : x15<br> - rd : x18<br> - rs2_h1_val == 512<br> - rs1_w0_val == 1073741824<br>                                                                 |[0x80000308]:SMMWB_U s2, a0, a5<br> [0x8000030c]:sw s2, 28(t0)<br>     |
|  26|[0x80002274]<br>0xFC000000|- rs1 : x30<br> - rs2 : x10<br> - rd : x2<br> - rs2_h1_val == 256<br> - rs1_w0_val == -1073741825<br>                                                                 |[0x8000031c]:SMMWB_U sp, t5, a0<br> [0x80000320]:sw sp, 32(t0)<br>     |
|  27|[0x80002278]<br>0x00000000|- rs1 : x14<br> - rs2 : x4<br> - rd : x0<br> - rs2_h1_val == 128<br> - rs1_w0_val == 131072<br>                                                                       |[0x80000330]:SMMWB_U zero, a4, tp<br> [0x80000334]:sw zero, 36(t0)<br> |
|  28|[0x8000227c]<br>0x00000000|- rs1 : x3<br> - rs2 : x2<br> - rd : x31<br> - rs2_h1_val == 64<br> - rs2_h0_val == 256<br> - rs1_w0_val == -17<br>                                                   |[0x80000344]:SMMWB_U t6, gp, sp<br> [0x80000348]:sw t6, 40(t0)<br>     |
|  29|[0x80002280]<br>0xFFFFFFE0|- rs1 : x24<br> - rs2 : x13<br> - rd : x3<br> - rs2_h1_val == 32<br> - rs2_h0_val == 16<br> - rs1_w0_val == -131073<br>                                               |[0x8000035c]:SMMWB_U gp, s8, a3<br> [0x80000360]:sw gp, 44(t0)<br>     |
|  30|[0x80002284]<br>0x00000001|- rs1 : x27<br> - rs2 : x12<br> - rd : x4<br> - rs2_h1_val == 16<br> - rs1_w0_val == 8192<br>                                                                         |[0x80000370]:SMMWB_U tp, s11, a2<br> [0x80000374]:sw tp, 48(t0)<br>    |
|  31|[0x80002288]<br>0xFFFFFFF0|- rs1 : x6<br> - rs2 : x21<br> - rd : x17<br> - rs2_h1_val == 8<br> - rs2_h0_val == 512<br> - rs1_w0_val == -2049<br>                                                 |[0x80000388]:SMMWB_U a7, t1, s5<br> [0x8000038c]:sw a7, 52(t0)<br>     |
|  32|[0x8000228c]<br>0x00000000|- rs1 : x4<br> - rs2 : x7<br> - rd : x15<br> - rs2_h1_val == 4<br>                                                                                                    |[0x8000039c]:SMMWB_U a5, tp, t2<br> [0x800003a0]:sw a5, 56(t0)<br>     |
|  33|[0x80002290]<br>0x00000000|- rs2_h1_val == 2<br> - rs2_h0_val == 8<br> - rs1_w0_val == 8<br>                                                                                                     |[0x800003b0]:SMMWB_U t6, t5, t4<br> [0x800003b4]:sw t6, 60(t0)<br>     |
|  34|[0x80002294]<br>0x04004000|- rs2_h1_val == 1<br>                                                                                                                                                 |[0x800003c8]:SMMWB_U t6, t5, t4<br> [0x800003cc]:sw t6, 64(t0)<br>     |
|  35|[0x80002298]<br>0x00000000|- rs1_w0_val == 512<br>                                                                                                                                               |[0x800003dc]:SMMWB_U t6, t5, t4<br> [0x800003e0]:sw t6, 68(t0)<br>     |
|  36|[0x8000229c]<br>0x00000001|- rs2_h0_val == 128<br> - rs1_w0_val == 256<br>                                                                                                                       |[0x800003f0]:SMMWB_U t6, t5, t4<br> [0x800003f4]:sw t6, 72(t0)<br>     |
|  37|[0x800022a0]<br>0x00000000|- rs1_w0_val == 128<br>                                                                                                                                               |[0x80000404]:SMMWB_U t6, t5, t4<br> [0x80000408]:sw t6, 76(t0)<br>     |
|  38|[0x800022a4]<br>0x00000000|- rs1_w0_val == 32<br>                                                                                                                                                |[0x80000418]:SMMWB_U t6, t5, t4<br> [0x8000041c]:sw t6, 80(t0)<br>     |
|  39|[0x800022a8]<br>0x00000000|- rs2_h0_val == -513<br> - rs1_w0_val == 4<br>                                                                                                                        |[0x8000042c]:SMMWB_U t6, t5, t4<br> [0x80000430]:sw t6, 84(t0)<br>     |
|  40|[0x800022ac]<br>0x00000000|- rs1_w0_val == 2<br>                                                                                                                                                 |[0x80000440]:SMMWB_U t6, t5, t4<br> [0x80000444]:sw t6, 88(t0)<br>     |
|  41|[0x800022b0]<br>0x00000000|- rs2_h0_val == -65<br> - rs1_w0_val == 1<br>                                                                                                                         |[0x80000454]:SMMWB_U t6, t5, t4<br> [0x80000458]:sw t6, 92(t0)<br>     |
|  42|[0x800022b4]<br>0x00000000|- rs1_w0_val == -1<br>                                                                                                                                                |[0x80000468]:SMMWB_U t6, t5, t4<br> [0x8000046c]:sw t6, 96(t0)<br>     |
|  43|[0x800022b8]<br>0x00040001|- rs2_h0_val == -32768<br> - rs1_w0_val == -524289<br>                                                                                                                |[0x8000047c]:SMMWB_U t6, t5, t4<br> [0x80000480]:sw t6, 100(t0)<br>    |
|  44|[0x800022bc]<br>0x00000000|- rs2_h1_val == -1<br>                                                                                                                                                |[0x8000048c]:SMMWB_U t6, t5, t4<br> [0x80000490]:sw t6, 104(t0)<br>    |
|  45|[0x800022c0]<br>0x00000003|- rs2_h0_val == -21846<br> - rs1_w0_val == -9<br>                                                                                                                     |[0x800004a0]:SMMWB_U t6, t5, t4<br> [0x800004a4]:sw t6, 108(t0)<br>    |
|  46|[0x800022c4]<br>0x00155540|- rs2_h0_val == 21845<br> - rs1_w0_val == 4194304<br>                                                                                                                 |[0x800004b4]:SMMWB_U t6, t5, t4<br> [0x800004b8]:sw t6, 112(t0)<br>    |
|  47|[0x800022c8]<br>0xFFFFFF00|- rs2_h0_val == 32767<br> - rs1_w0_val == -513<br>                                                                                                                    |[0x800004c8]:SMMWB_U t6, t5, t4<br> [0x800004cc]:sw t6, 116(t0)<br>    |
|  48|[0x800022cc]<br>0x00020040|- rs2_h0_val == -2049<br> - rs1_w0_val == -4194305<br>                                                                                                                |[0x800004e0]:SMMWB_U t6, t5, t4<br> [0x800004e4]:sw t6, 120(t0)<br>    |
|  49|[0x800022d0]<br>0x00004080|- rs2_h0_val == -129<br>                                                                                                                                              |[0x800004f8]:SMMWB_U t6, t5, t4<br> [0x800004fc]:sw t6, 124(t0)<br>    |
|  50|[0x800022d4]<br>0x00011000|- rs2_h0_val == -17<br> - rs1_w0_val == -268435457<br>                                                                                                                |[0x80000510]:SMMWB_U t6, t5, t4<br> [0x80000514]:sw t6, 128(t0)<br>    |
|  51|[0x800022d8]<br>0x0000000A|- rs2_h0_val == -5<br>                                                                                                                                                |[0x80000528]:SMMWB_U t6, t5, t4<br> [0x8000052c]:sw t6, 132(t0)<br>    |
|  52|[0x800022dc]<br>0xFF800000|- rs2_h0_val == 16384<br>                                                                                                                                             |[0x8000053c]:SMMWB_U t6, t5, t4<br> [0x80000540]:sw t6, 136(t0)<br>    |
|  53|[0x800022e0]<br>0xFFFFFFC0|- rs2_h0_val == 1024<br> - rs1_w0_val == -4097<br>                                                                                                                    |[0x80000554]:SMMWB_U t6, t5, t4<br> [0x80000558]:sw t6, 140(t0)<br>    |
|  54|[0x800022e4]<br>0x00010000|- rs2_h0_val == 64<br> - rs1_w0_val == 67108864<br>                                                                                                                   |[0x80000568]:SMMWB_U t6, t5, t4<br> [0x8000056c]:sw t6, 144(t0)<br>    |
|  55|[0x800022e8]<br>0x00000000|- rs2_h0_val == 4<br>                                                                                                                                                 |[0x8000057c]:SMMWB_U t6, t5, t4<br> [0x80000580]:sw t6, 148(t0)<br>    |
|  56|[0x800022ec]<br>0x00000000|- rs1_w0_val == -33<br>                                                                                                                                               |[0x8000058c]:SMMWB_U t6, t5, t4<br> [0x80000590]:sw t6, 152(t0)<br>    |
|  57|[0x800022f0]<br>0x00000000|- rs2_h0_val == -1<br> - rs1_w0_val == -257<br>                                                                                                                       |[0x800005a0]:SMMWB_U t6, t5, t4<br> [0x800005a4]:sw t6, 156(t0)<br>    |
|  58|[0x800022f4]<br>0xFFFB8000|- rs1_w0_val == 2147483647<br>                                                                                                                                        |[0x800005b8]:SMMWB_U t6, t5, t4<br> [0x800005bc]:sw t6, 160(t0)<br>    |
|  59|[0x800022f8]<br>0xFFFFA000|- rs1_w0_val == -536870913<br>                                                                                                                                        |[0x800005d0]:SMMWB_U t6, t5, t4<br> [0x800005d4]:sw t6, 164(t0)<br>    |
|  60|[0x800022fc]<br>0x00020800|- rs1_w0_val == -134217729<br>                                                                                                                                        |[0x800005e8]:SMMWB_U t6, t5, t4<br> [0x800005ec]:sw t6, 168(t0)<br>    |
|  61|[0x80002300]<br>0x00008400|- rs1_w0_val == -67108865<br>                                                                                                                                         |[0x80000600]:SMMWB_U t6, t5, t4<br> [0x80000604]:sw t6, 172(t0)<br>    |
|  62|[0x80002304]<br>0x00010100|- rs1_w0_val == -16777217<br>                                                                                                                                         |[0x80000618]:SMMWB_U t6, t5, t4<br> [0x8000061c]:sw t6, 176(t0)<br>    |
|  63|[0x80002308]<br>0xFFFFFF00|- rs1_w0_val == -2097153<br>                                                                                                                                          |[0x80000630]:SMMWB_U t6, t5, t4<br> [0x80000634]:sw t6, 180(t0)<br>    |
|  64|[0x8000230c]<br>0x00040000|- rs1_w0_val == -1048577<br>                                                                                                                                          |[0x80000644]:SMMWB_U t6, t5, t4<br> [0x80000648]:sw t6, 184(t0)<br>    |
|  65|[0x80002310]<br>0xFFFFF800|- rs1_w0_val == -262145<br>                                                                                                                                           |[0x8000065c]:SMMWB_U t6, t5, t4<br> [0x80000660]:sw t6, 188(t0)<br>    |
|  66|[0x80002314]<br>0x00000001|- rs1_w0_val == -65537<br>                                                                                                                                            |[0x80000674]:SMMWB_U t6, t5, t4<br> [0x80000678]:sw t6, 192(t0)<br>    |
|  67|[0x80002318]<br>0xFFFFFF00|- rs1_w0_val == -32769<br>                                                                                                                                            |[0x8000068c]:SMMWB_U t6, t5, t4<br> [0x80000690]:sw t6, 196(t0)<br>    |
|  68|[0x8000231c]<br>0xFFFFFFC0|- rs1_w0_val == -1025<br>                                                                                                                                             |[0x8000069c]:SMMWB_U t6, t5, t4<br> [0x800006a0]:sw t6, 200(t0)<br>    |
|  69|[0x80002320]<br>0x00000000|- rs1_w0_val == -129<br>                                                                                                                                              |[0x800006b0]:SMMWB_U t6, t5, t4<br> [0x800006b4]:sw t6, 204(t0)<br>    |
|  70|[0x80002324]<br>0x00000000|- rs1_w0_val == -65<br>                                                                                                                                               |[0x800006c4]:SMMWB_U t6, t5, t4<br> [0x800006c8]:sw t6, 208(t0)<br>    |
|  71|[0x80002328]<br>0x00000000|- rs1_w0_val == -5<br>                                                                                                                                                |[0x800006d8]:SMMWB_U t6, t5, t4<br> [0x800006dc]:sw t6, 212(t0)<br>    |
|  72|[0x8000232c]<br>0x00000000|- rs1_w0_val == -2<br>                                                                                                                                                |[0x800006ec]:SMMWB_U t6, t5, t4<br> [0x800006f0]:sw t6, 216(t0)<br>    |
|  73|[0x80002330]<br>0xFFBFE000|- rs1_w0_val == 536870912<br>                                                                                                                                         |[0x80000700]:SMMWB_U t6, t5, t4<br> [0x80000704]:sw t6, 220(t0)<br>    |
|  74|[0x80002334]<br>0xFFBFF000|- rs1_w0_val == 268435456<br>                                                                                                                                         |[0x80000714]:SMMWB_U t6, t5, t4<br> [0x80000718]:sw t6, 224(t0)<br>    |
|  75|[0x80002338]<br>0xFFFFEC00|- rs1_w0_val == 33554432<br>                                                                                                                                          |[0x80000728]:SMMWB_U t6, t5, t4<br> [0x8000072c]:sw t6, 228(t0)<br>    |
|  76|[0x8000233c]<br>0xFFFAAAA0|- rs1_w0_val == 1048576<br>                                                                                                                                           |[0x8000073c]:SMMWB_U t6, t5, t4<br> [0x80000740]:sw t6, 232(t0)<br>    |
|  77|[0x80002340]<br>0xFFFFFFB8|- rs1_w0_val == 524288<br>                                                                                                                                            |[0x80000750]:SMMWB_U t6, t5, t4<br> [0x80000754]:sw t6, 236(t0)<br>    |
|  78|[0x80002344]<br>0xFFFFFEFF|- rs1_w0_val == 65536<br>                                                                                                                                             |[0x80000764]:SMMWB_U t6, t5, t4<br> [0x80000768]:sw t6, 240(t0)<br>    |
|  79|[0x80002348]<br>0x00000002|- rs1_w0_val == 32768<br>                                                                                                                                             |[0x80000778]:SMMWB_U t6, t5, t4<br> [0x8000077c]:sw t6, 244(t0)<br>    |
|  80|[0x8000234c]<br>0xFFFFFF80|- rs1_w0_val == 16384<br>                                                                                                                                             |[0x8000078c]:SMMWB_U t6, t5, t4<br> [0x80000790]:sw t6, 248(t0)<br>    |
|  81|[0x80002350]<br>0x00000AAB|- rs1_w0_val == -8193<br>                                                                                                                                             |[0x800007a4]:SMMWB_U t6, t5, t4<br> [0x800007a8]:sw t6, 252(t0)<br>    |
|  82|[0x80002354]<br>0xFFFFFFF0|- rs2_h1_val == -257<br> - rs1_w0_val == 2048<br>                                                                                                                     |[0x800007bc]:SMMWB_U t6, t5, t4<br> [0x800007c0]:sw t6, 256(t0)<br>    |
|  83|[0x80002358]<br>0x08008000|- rs1_w0_val == -2147483648<br>                                                                                                                                       |[0x800007d0]:SMMWB_U t6, t5, t4<br> [0x800007d4]:sw t6, 260(t0)<br>    |
|  84|[0x80002360]<br>0x00000040|- rs2_h0_val == 2<br>                                                                                                                                                 |[0x800007f8]:SMMWB_U t6, t5, t4<br> [0x800007fc]:sw t6, 268(t0)<br>    |
