
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800008a0')]      |
| SIG_REGION                | [('0x80002210', '0x80002390', '96 words')]      |
| COV_LABELS                | smmwb      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/smmwb-01.S    |
| Total Number of coverpoints| 248     |
| Total Coverpoints Hit     | 242      |
| Total Signature Updates   | 93      |
| STAT1                     | 90      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000464]:SMMWB t6, t5, t4
      [0x80000468]:sw t6, 92(tp)
 -- Signature Address: 0x800022b4 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : smmwb
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h1_val == 32
      - rs2_h0_val == 4096
      - rs1_w0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000474]:SMMWB t6, t5, t4
      [0x80000478]:sw t6, 96(tp)
 -- Signature Address: 0x800022b8 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - opcode : smmwb
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h1_val == 0
      - rs1_w0_val == 16384




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000088c]:SMMWB t6, t5, t4
      [0x80000890]:sw t6, 296(tp)
 -- Signature Address: 0x80002380 Data: 0xFFFFFFFC
 -- Redundant Coverpoints hit by the op
      - opcode : smmwb
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h1_val == 32767
      - rs1_w0_val == -65537






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

|s.no|        signature         |                                                                            coverpoints                                                                            |                                 code                                  |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80002210]<br>0xFFF7C010|- opcode : smmwb<br> - rs1 : x25<br> - rs2 : x25<br> - rd : x25<br> - rs1 == rs2 == rd<br> - rs2_h1_val == -17<br> - rs2_h0_val == 32767<br>                       |[0x8000010c]:SMMWB s9, s9, s9<br> [0x80000110]:sw s9, 0(ra)<br>        |
|   2|[0x80002214]<br>0x00000000|- rs1 : x10<br> - rs2 : x10<br> - rd : x26<br> - rs1 == rs2 != rd<br> - rs2_h1_val == -21846<br> - rs2_h0_val == 0<br>                                             |[0x8000011c]:SMMWB s10, a0, a0<br> [0x80000120]:sw s10, 4(ra)<br>      |
|   3|[0x80002218]<br>0x00000000|- rs1 : x0<br> - rs2 : x20<br> - rd : x16<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_h1_val == 21845<br> - rs2_h0_val == 64<br> - rs1_w0_val == 0<br> |[0x80000134]:SMMWB a6, zero, s4<br> [0x80000138]:sw a6, 8(ra)<br>      |
|   4|[0x8000221c]<br>0x00000000|- rs1 : x3<br> - rs2 : x0<br> - rd : x0<br> - rs2 == rd != rs1<br> - rs2_h1_val == 0<br> - rs1_w0_val == -65537<br>                                                |[0x8000014c]:SMMWB zero, gp, zero<br> [0x80000150]:sw zero, 12(ra)<br> |
|   5|[0x80002220]<br>0x00000020|- rs1 : x7<br> - rs2 : x13<br> - rd : x7<br> - rs1 == rd != rs2<br> - rs2_h1_val == -16385<br> - rs2_h0_val == 16<br> - rs1_w0_val == 131072<br>                   |[0x80000160]:SMMWB t2, t2, a3<br> [0x80000164]:sw t2, 16(ra)<br>       |
|   6|[0x80002224]<br>0xFF7FC000|- rs1 : x9<br> - rs2 : x6<br> - rd : x22<br> - rs2_h1_val == -8193<br> - rs2_h0_val == -513<br> - rs1_w0_val == 1073741824<br>                                     |[0x80000174]:SMMWB s6, s1, t1<br> [0x80000178]:sw s6, 20(ra)<br>       |
|   7|[0x80002228]<br>0xFFFFFFFF|- rs1 : x6<br> - rs2 : x21<br> - rd : x4<br> - rs2_h1_val == -4097<br> - rs1_w0_val == -2049<br>                                                                   |[0x8000018c]:SMMWB tp, t1, s5<br> [0x80000190]:sw tp, 24(ra)<br>       |
|   8|[0x8000222c]<br>0xFFFFFFFF|- rs1 : x14<br> - rs2 : x22<br> - rd : x13<br> - rs2_h1_val == -2049<br>                                                                                           |[0x800001a0]:SMMWB a3, a4, s6<br> [0x800001a4]:sw a3, 28(ra)<br>       |
|   9|[0x80002230]<br>0x00000001|- rs1 : x20<br> - rs2 : x11<br> - rd : x3<br> - rs2_h1_val == -1025<br> - rs2_h0_val == -21846<br> - rs1_w0_val == -5<br>                                          |[0x800001b4]:SMMWB gp, s4, a1<br> [0x800001b8]:sw gp, 32(ra)<br>       |
|  10|[0x80002234]<br>0x00000400|- rs1 : x17<br> - rs2 : x14<br> - rd : x8<br> - rs2_h1_val == -513<br> - rs2_h0_val == -32768<br>                                                                  |[0x800001c8]:SMMWB fp, a7, a4<br> [0x800001cc]:sw fp, 36(ra)<br>       |
|  11|[0x80002238]<br>0x00000010|- rs1 : x4<br> - rs2 : x18<br> - rd : x15<br> - rs2_h1_val == -257<br> - rs2_h0_val == 8192<br> - rs1_w0_val == 128<br>                                            |[0x800001d8]:SMMWB a5, tp, s2<br> [0x800001dc]:sw a5, 40(ra)<br>       |
|  12|[0x8000223c]<br>0x00000400|- rs1 : x23<br> - rs2 : x19<br> - rd : x17<br> - rs2_h1_val == -129<br> - rs2_h0_val == -2<br> - rs1_w0_val == -33554433<br>                                       |[0x800001f0]:SMMWB a7, s7, s3<br> [0x800001f4]:sw a7, 44(ra)<br>       |
|  13|[0x80002240]<br>0xFFFC8000|- rs1 : x27<br> - rs2 : x28<br> - rd : x11<br> - rs2_h1_val == -65<br> - rs1_w0_val == 2147483647<br>                                                              |[0x80000208]:SMMWB a1, s11, t3<br> [0x8000020c]:sw a1, 48(ra)<br>      |
|  14|[0x80002244]<br>0xFFFFF7FF|- rs1 : x8<br> - rs2 : x29<br> - rd : x24<br> - rs2_h1_val == -33<br> - rs2_h0_val == 256<br> - rs1_w0_val == -524289<br>                                          |[0x80000220]:SMMWB s8, fp, t4<br> [0x80000224]:sw s8, 52(ra)<br>       |
|  15|[0x80002248]<br>0xFFFFFFF2|- rs1 : x16<br> - rs2 : x2<br> - rd : x20<br> - rs2_h1_val == -9<br>                                                                                               |[0x80000234]:SMMWB s4, a6, sp<br> [0x80000238]:sw s4, 56(ra)<br>       |
|  16|[0x8000224c]<br>0x00000000|- rs1 : x15<br> - rs2 : x4<br> - rd : x10<br> - rs2_h1_val == -5<br> - rs1_w0_val == -1<br>                                                                        |[0x80000248]:SMMWB a0, a5, tp<br> [0x8000024c]:sw a0, 60(ra)<br>       |
|  17|[0x80002250]<br>0xFFF7FF80|- rs1 : x18<br> - rs2 : x27<br> - rd : x23<br> - rs2_h1_val == -3<br> - rs2_h0_val == -4097<br> - rs1_w0_val == 8388608<br>                                        |[0x8000025c]:SMMWB s7, s2, s11<br> [0x80000260]:sw s7, 64(ra)<br>      |
|  18|[0x80002254]<br>0xFFE0003F|- rs1 : x31<br> - rs2 : x23<br> - rd : x21<br> - rs2_h1_val == -2<br> - rs1_w0_val == -4194305<br>                                                                 |[0x80000274]:SMMWB s5, t6, s7<br> [0x80000278]:sw s5, 68(ra)<br>       |
|  19|[0x80002258]<br>0x00001555|- rs1 : x5<br> - rs2 : x30<br> - rd : x29<br> - rs2_h1_val == -32768<br> - rs2_h0_val == 21845<br> - rs1_w0_val == 16384<br>                                       |[0x80000290]:SMMWB t4, t0, t5<br> [0x80000294]:sw t4, 0(tp)<br>        |
|  20|[0x8000225c]<br>0x00040000|- rs1 : x30<br> - rs2 : x8<br> - rd : x12<br> - rs2_h1_val == 16384<br> - rs2_h0_val == 512<br> - rs1_w0_val == 33554432<br>                                       |[0x800002a4]:SMMWB a2, t5, fp<br> [0x800002a8]:sw a2, 4(tp)<br>        |
|  21|[0x80002260]<br>0xFFFFFFFF|- rs1 : x11<br> - rs2 : x12<br> - rd : x2<br> - rs2_h1_val == 8192<br> - rs2_h0_val == -33<br> - rs1_w0_val == 2<br>                                               |[0x800002b8]:SMMWB sp, a1, a2<br> [0x800002bc]:sw sp, 8(tp)<br>        |
|  22|[0x80002264]<br>0xFFFFFFFF|- rs1 : x28<br> - rs2 : x16<br> - rd : x1<br> - rs2_h1_val == 4096<br> - rs1_w0_val == -4097<br>                                                                   |[0x800002d0]:SMMWB ra, t3, a6<br> [0x800002d4]:sw ra, 12(tp)<br>       |
|  23|[0x80002268]<br>0x00002000|- rs1 : x12<br> - rs2 : x1<br> - rd : x31<br> - rs2_h1_val == 2048<br> - rs1_w0_val == 65536<br>                                                                   |[0x800002e0]:SMMWB t6, a2, ra<br> [0x800002e4]:sw t6, 16(tp)<br>       |
|  24|[0x8000226c]<br>0xFFFFFFFF|- rs1 : x19<br> - rs2 : x26<br> - rd : x9<br> - rs2_h1_val == 1024<br> - rs1_w0_val == 256<br>                                                                     |[0x800002f4]:SMMWB s1, s3, s10<br> [0x800002f8]:sw s1, 20(tp)<br>      |
|  25|[0x80002270]<br>0xFFFFFFFF|- rs1 : x13<br> - rs2 : x7<br> - rd : x27<br> - rs2_h1_val == 512<br> - rs2_h0_val == 8<br> - rs1_w0_val == -3<br>                                                 |[0x80000308]:SMMWB s11, a3, t2<br> [0x8000030c]:sw s11, 24(tp)<br>     |
|  26|[0x80002274]<br>0xFFF7C000|- rs1 : x24<br> - rs2 : x31<br> - rd : x28<br> - rs2_h1_val == 256<br>                                                                                             |[0x80000320]:SMMWB t3, s8, t6<br> [0x80000324]:sw t3, 28(tp)<br>       |
|  27|[0x80002278]<br>0x00020040|- rs1 : x29<br> - rs2 : x15<br> - rd : x30<br> - rs2_h1_val == 128<br> - rs2_h0_val == -2049<br>                                                                   |[0x80000338]:SMMWB t5, t4, a5<br> [0x8000033c]:sw t5, 32(tp)<br>       |
|  28|[0x8000227c]<br>0xFFFFF7FF|- rs1 : x22<br> - rs2 : x17<br> - rd : x5<br> - rs2_h1_val == 64<br> - rs2_h0_val == 32<br>                                                                        |[0x80000350]:SMMWB t0, s6, a7<br> [0x80000354]:sw t0, 36(tp)<br>       |
|  29|[0x80002280]<br>0x00000020|- rs1 : x21<br> - rs2 : x9<br> - rd : x14<br> - rs2_h1_val == 32<br> - rs2_h0_val == -129<br> - rs1_w0_val == -16385<br>                                           |[0x80000368]:SMMWB a4, s5, s1<br> [0x8000036c]:sw a4, 40(tp)<br>       |
|  30|[0x80002284]<br>0x00000000|- rs1 : x1<br> - rs2 : x3<br> - rd : x6<br> - rs2_h1_val == 16<br> - rs2_h0_val == 4<br>                                                                           |[0x8000037c]:SMMWB t1, ra, gp<br> [0x80000380]:sw t1, 44(tp)<br>       |
|  31|[0x80002288]<br>0xFFFFFFDF|- rs1 : x26<br> - rs2 : x5<br> - rd : x19<br> - rs2_h1_val == 8<br>                                                                                                |[0x80000390]:SMMWB s3, s10, t0<br> [0x80000394]:sw s3, 48(tp)<br>      |
|  32|[0x8000228c]<br>0xFFDFFF00|- rs1 : x2<br> - rs2 : x24<br> - rd : x18<br> - rs2_h1_val == 4<br> - rs2_h0_val == -8193<br> - rs1_w0_val == 16777216<br>                                         |[0x800003a4]:SMMWB s2, sp, s8<br> [0x800003a8]:sw s2, 52(tp)<br>       |
|  33|[0x80002290]<br>0x003FFFFF|- rs2_h1_val == 2<br>                                                                                                                                              |[0x800003bc]:SMMWB t6, t5, t4<br> [0x800003c0]:sw t6, 56(tp)<br>       |
|  34|[0x80002294]<br>0x00000000|- rs2_h1_val == 1<br>                                                                                                                                              |[0x800003d0]:SMMWB t6, t5, t4<br> [0x800003d4]:sw t6, 60(tp)<br>       |
|  35|[0x80002298]<br>0x00000010|- rs2_h0_val == 2048<br> - rs1_w0_val == 512<br>                                                                                                                   |[0x800003e4]:SMMWB t6, t5, t4<br> [0x800003e8]:sw t6, 64(tp)<br>       |
|  36|[0x8000229c]<br>0x00000000|- rs1_w0_val == 64<br>                                                                                                                                             |[0x800003f4]:SMMWB t6, t5, t4<br> [0x800003f8]:sw t6, 68(tp)<br>       |
|  37|[0x800022a0]<br>0xFFFFFFFF|- rs1_w0_val == 32<br>                                                                                                                                             |[0x80000408]:SMMWB t6, t5, t4<br> [0x8000040c]:sw t6, 72(tp)<br>       |
|  38|[0x800022a4]<br>0x00000000|- rs1_w0_val == 16<br>                                                                                                                                             |[0x8000041c]:SMMWB t6, t5, t4<br> [0x80000420]:sw t6, 76(tp)<br>       |
|  39|[0x800022a8]<br>0x00000000|- rs2_h0_val == 4096<br> - rs1_w0_val == 8<br>                                                                                                                     |[0x8000042c]:SMMWB t6, t5, t4<br> [0x80000430]:sw t6, 80(tp)<br>       |
|  40|[0x800022ac]<br>0x00000000|- rs1_w0_val == 4<br>                                                                                                                                              |[0x80000440]:SMMWB t6, t5, t4<br> [0x80000444]:sw t6, 84(tp)<br>       |
|  41|[0x800022b0]<br>0x00000000|- rs1_w0_val == 1<br>                                                                                                                                              |[0x80000454]:SMMWB t6, t5, t4<br> [0x80000458]:sw t6, 88(tp)<br>       |
|  42|[0x800022bc]<br>0x00000000|- rs2_h1_val == -1<br> - rs1_w0_val == -33<br>                                                                                                                     |[0x80000484]:SMMWB t6, t5, t4<br> [0x80000488]:sw t6, 100(tp)<br>      |
|  43|[0x800022c0]<br>0xFFFFFFBF|- rs2_h0_val == -16385<br>                                                                                                                                         |[0x80000498]:SMMWB t6, t5, t4<br> [0x8000049c]:sw t6, 104(tp)<br>      |
|  44|[0x800022c4]<br>0x00080200|- rs2_h0_val == -1025<br>                                                                                                                                          |[0x800004b0]:SMMWB t6, t5, t4<br> [0x800004b4]:sw t6, 108(tp)<br>      |
|  45|[0x800022c8]<br>0x00000000|- rs2_h0_val == -257<br> - rs1_w0_val == -129<br>                                                                                                                  |[0x800004c4]:SMMWB t6, t5, t4<br> [0x800004c8]:sw t6, 112(tp)<br>      |
|  46|[0x800022cc]<br>0x00000000|- rs2_h1_val == 32767<br> - rs2_h0_val == -65<br>                                                                                                                  |[0x800004d8]:SMMWB t6, t5, t4<br> [0x800004dc]:sw t6, 116(tp)<br>      |
|  47|[0x800022d0]<br>0xFFFFBC00|- rs2_h0_val == -17<br> - rs1_w0_val == 67108864<br>                                                                                                               |[0x800004ec]:SMMWB t6, t5, t4<br> [0x800004f0]:sw t6, 120(tp)<br>      |
|  48|[0x800022d4]<br>0xFFFFFFFF|- rs2_h0_val == -9<br>                                                                                                                                             |[0x80000500]:SMMWB t6, t5, t4<br> [0x80000504]:sw t6, 124(tp)<br>      |
|  49|[0x800022d8]<br>0x00000000|- rs2_h0_val == -5<br>                                                                                                                                             |[0x80000514]:SMMWB t6, t5, t4<br> [0x80000518]:sw t6, 128(tp)<br>      |
|  50|[0x800022dc]<br>0x00000000|- rs2_h0_val == -3<br>                                                                                                                                             |[0x80000528]:SMMWB t6, t5, t4<br> [0x8000052c]:sw t6, 132(tp)<br>      |
|  51|[0x800022e0]<br>0xFFFFFDFF|- rs2_h0_val == 16384<br>                                                                                                                                          |[0x8000053c]:SMMWB t6, t5, t4<br> [0x80000540]:sw t6, 136(tp)<br>      |
|  52|[0x800022e4]<br>0x00000000|- rs2_h0_val == 1024<br>                                                                                                                                           |[0x80000550]:SMMWB t6, t5, t4<br> [0x80000554]:sw t6, 140(tp)<br>      |
|  53|[0x800022e8]<br>0x003FFFFF|- rs2_h0_val == 128<br>                                                                                                                                            |[0x80000568]:SMMWB t6, t5, t4<br> [0x8000056c]:sw t6, 144(tp)<br>      |
|  54|[0x800022ec]<br>0x00000000|- rs2_h0_val == 2<br> - rs1_w0_val == 8192<br>                                                                                                                     |[0x8000057c]:SMMWB t6, t5, t4<br> [0x80000580]:sw t6, 148(tp)<br>      |
|  55|[0x800022f0]<br>0x00000020|- rs2_h0_val == 1<br> - rs1_w0_val == 2097152<br>                                                                                                                  |[0x80000590]:SMMWB t6, t5, t4<br> [0x80000594]:sw t6, 152(tp)<br>      |
|  56|[0x800022f4]<br>0xFFFFFFE0|- rs2_h0_val == -1<br>                                                                                                                                             |[0x800005a4]:SMMWB t6, t5, t4<br> [0x800005a8]:sw t6, 156(tp)<br>      |
|  57|[0x800022f8]<br>0x0555AAAA|- rs1_w0_val == -1431655766<br>                                                                                                                                    |[0x800005bc]:SMMWB t6, t5, t4<br> [0x800005c0]:sw t6, 160(tp)<br>      |
|  58|[0x800022fc]<br>0x0000AAAA|- rs1_w0_val == 1431655765<br>                                                                                                                                     |[0x800005d4]:SMMWB t6, t5, t4<br> [0x800005d8]:sw t6, 164(tp)<br>      |
|  59|[0x80002300]<br>0x10000000|- rs1_w0_val == -1073741825<br>                                                                                                                                    |[0x800005e8]:SMMWB t6, t5, t4<br> [0x800005ec]:sw t6, 168(tp)<br>      |
|  60|[0x80002304]<br>0x00006000|- rs1_w0_val == -536870913<br>                                                                                                                                     |[0x80000600]:SMMWB t6, t5, t4<br> [0x80000604]:sw t6, 172(tp)<br>      |
|  61|[0x80002308]<br>0xFBFFFFFF|- rs1_w0_val == -268435457<br>                                                                                                                                     |[0x80000614]:SMMWB t6, t5, t4<br> [0x80000618]:sw t6, 176(tp)<br>      |
|  62|[0x8000230c]<br>0xFFDFFFFF|- rs1_w0_val == -134217729<br>                                                                                                                                     |[0x8000062c]:SMMWB t6, t5, t4<br> [0x80000630]:sw t6, 180(tp)<br>      |
|  63|[0x80002310]<br>0xFFFFE7FF|- rs1_w0_val == -67108865<br>                                                                                                                                      |[0x80000644]:SMMWB t6, t5, t4<br> [0x80000648]:sw t6, 184(tp)<br>      |
|  64|[0x80002314]<br>0xFFFFFEFF|- rs1_w0_val == -16777217<br>                                                                                                                                      |[0x8000065c]:SMMWB t6, t5, t4<br> [0x80000660]:sw t6, 188(tp)<br>      |
|  65|[0x80002318]<br>0x00010080|- rs1_w0_val == -8388609<br>                                                                                                                                       |[0x80000674]:SMMWB t6, t5, t4<br> [0x80000678]:sw t6, 192(tp)<br>      |
|  66|[0x8000231c]<br>0xFFFFFFDF|- rs1_w0_val == -2097153<br>                                                                                                                                       |[0x8000068c]:SMMWB t6, t5, t4<br> [0x80000690]:sw t6, 196(tp)<br>      |
|  67|[0x80002320]<br>0xFFFF7FFF|- rs1_w0_val == -1048577<br>                                                                                                                                       |[0x800006a4]:SMMWB t6, t5, t4<br> [0x800006a8]:sw t6, 200(tp)<br>      |
|  68|[0x80002324]<br>0xFFFFFFBF|- rs1_w0_val == -262145<br>                                                                                                                                        |[0x800006bc]:SMMWB t6, t5, t4<br> [0x800006c0]:sw t6, 204(tp)<br>      |
|  69|[0x80002328]<br>0xFFFFFFFB|- rs1_w0_val == -131073<br>                                                                                                                                        |[0x800006d4]:SMMWB t6, t5, t4<br> [0x800006d8]:sw t6, 208(tp)<br>      |
|  70|[0x8000232c]<br>0x00002000|- rs1_w0_val == -32769<br>                                                                                                                                         |[0x800006e8]:SMMWB t6, t5, t4<br> [0x800006ec]:sw t6, 212(tp)<br>      |
|  71|[0x80002330]<br>0xFFFFEFFF|- rs1_w0_val == -8193<br>                                                                                                                                          |[0x80000700]:SMMWB t6, t5, t4<br> [0x80000704]:sw t6, 216(tp)<br>      |
|  72|[0x80002334]<br>0x00000004|- rs1_w0_val == -1025<br>                                                                                                                                          |[0x80000714]:SMMWB t6, t5, t4<br> [0x80000718]:sw t6, 220(tp)<br>      |
|  73|[0x80002338]<br>0x00000040|- rs1_w0_val == -513<br>                                                                                                                                           |[0x80000728]:SMMWB t6, t5, t4<br> [0x8000072c]:sw t6, 224(tp)<br>      |
|  74|[0x8000233c]<br>0x00000000|- rs1_w0_val == -257<br>                                                                                                                                           |[0x80000738]:SMMWB t6, t5, t4<br> [0x8000073c]:sw t6, 228(tp)<br>      |
|  75|[0x80002340]<br>0xFFFFFFFF|- rs1_w0_val == -65<br>                                                                                                                                            |[0x8000074c]:SMMWB t6, t5, t4<br> [0x80000750]:sw t6, 232(tp)<br>      |
|  76|[0x80002344]<br>0x00000000|- rs1_w0_val == -17<br>                                                                                                                                            |[0x80000760]:SMMWB t6, t5, t4<br> [0x80000764]:sw t6, 236(tp)<br>      |
|  77|[0x80002348]<br>0x00000000|- rs1_w0_val == -9<br>                                                                                                                                             |[0x80000774]:SMMWB t6, t5, t4<br> [0x80000778]:sw t6, 240(tp)<br>      |
|  78|[0x8000234c]<br>0x00000000|- rs1_w0_val == -2<br>                                                                                                                                             |[0x80000788]:SMMWB t6, t5, t4<br> [0x8000078c]:sw t6, 244(tp)<br>      |
|  79|[0x80002350]<br>0x00400000|- rs1_w0_val == 268435456<br>                                                                                                                                      |[0x8000079c]:SMMWB t6, t5, t4<br> [0x800007a0]:sw t6, 248(tp)<br>      |
|  80|[0x80002354]<br>0xFFFFE800|- rs1_w0_val == 134217728<br>                                                                                                                                      |[0x800007b0]:SMMWB t6, t5, t4<br> [0x800007b4]:sw t6, 252(tp)<br>      |
|  81|[0x80002358]<br>0xFFFFFF00|- rs1_w0_val == 4194304<br>                                                                                                                                        |[0x800007c4]:SMMWB t6, t5, t4<br> [0x800007c8]:sw t6, 256(tp)<br>      |
|  82|[0x8000235c]<br>0xFFFC0000|- rs1_w0_val == 1048576<br>                                                                                                                                        |[0x800007d4]:SMMWB t6, t5, t4<br> [0x800007d8]:sw t6, 260(tp)<br>      |
|  83|[0x80002360]<br>0x00008000|- rs1_w0_val == 524288<br>                                                                                                                                         |[0x800007e4]:SMMWB t6, t5, t4<br> [0x800007e8]:sw t6, 264(tp)<br>      |
|  84|[0x80002364]<br>0x00002000|- rs1_w0_val == 262144<br>                                                                                                                                         |[0x800007f8]:SMMWB t6, t5, t4<br> [0x800007fc]:sw t6, 268(tp)<br>      |
|  85|[0x80002368]<br>0xFFFFFDFF|- rs1_w0_val == 32768<br>                                                                                                                                          |[0x8000080c]:SMMWB t6, t5, t4<br> [0x80000810]:sw t6, 272(tp)<br>      |
|  86|[0x8000236c]<br>0x00000000|- rs1_w0_val == 4096<br>                                                                                                                                           |[0x80000820]:SMMWB t6, t5, t4<br> [0x80000824]:sw t6, 276(tp)<br>      |
|  87|[0x80002370]<br>0xFFFFFFFF|- rs1_w0_val == 2048<br>                                                                                                                                           |[0x80000838]:SMMWB t6, t5, t4<br> [0x8000083c]:sw t6, 280(tp)<br>      |
|  88|[0x80002374]<br>0xFFFFFFFF|- rs1_w0_val == 1024<br>                                                                                                                                           |[0x8000084c]:SMMWB t6, t5, t4<br> [0x80000850]:sw t6, 284(tp)<br>      |
|  89|[0x80002378]<br>0xC0008000|- rs1_w0_val == -2147483648<br>                                                                                                                                    |[0x80000860]:SMMWB t6, t5, t4<br> [0x80000864]:sw t6, 288(tp)<br>      |
|  90|[0x8000237c]<br>0x00080000|- rs1_w0_val == 536870912<br>                                                                                                                                      |[0x80000874]:SMMWB t6, t5, t4<br> [0x80000878]:sw t6, 292(tp)<br>      |
