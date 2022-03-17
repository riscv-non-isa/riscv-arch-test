
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800005c0')]      |
| SIG_REGION                | [('0x80002210', '0x80002310', '64 words')]      |
| COV_LABELS                | srl16.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/srl16.u-01.S    |
| Total Number of coverpoints| 190     |
| Total Coverpoints Hit     | 184      |
| Total Signature Updates   | 61      |
| STAT1                     | 56      |
| STAT2                     | 5      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000440]:SRL16_U t6, t5, t4
      [0x80000444]:sw t6, 44(ra)
 -- Signature Address: 0x800022b4 Data: 0x00010000
 -- Redundant Coverpoints hit by the op
      - opcode : srl16.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000053c]:SRL16_U t6, t5, t4
      [0x80000540]:sw t6, 96(ra)
 -- Signature Address: 0x800022e8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : srl16.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == 0
      - rs1_h0_val == 1
      - rs2_val == 10




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000564]:SRL16_U t6, t5, t4
      [0x80000568]:sw t6, 104(ra)
 -- Signature Address: 0x800022f0 Data: 0x04000600
 -- Redundant Coverpoints hit by the op
      - opcode : srl16.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 5
      - rs1_h1_val == 32768
      - rs1_h0_val == 49151




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000059c]:SRL16_U t6, t5, t4
      [0x800005a0]:sw t6, 116(ra)
 -- Signature Address: 0x800022fc Data: 0x08000002
 -- Redundant Coverpoints hit by the op
      - opcode : srl16.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == 4096
      - rs1_h0_val == 4




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005b0]:SRL16_U t6, t5, t4
      [0x800005b4]:sw t6, 120(ra)
 -- Signature Address: 0x80002300 Data: 0x00080080
 -- Redundant Coverpoints hit by the op
      - opcode : srl16.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 8
      - rs1_h1_val == 2048
      - rs1_h0_val == 32767






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

|s.no|        signature         |                                                                coverpoints                                                                |                                 code                                  |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : srl16.u<br> - rs1 : x13<br> - rs2 : x13<br> - rd : x13<br> - rs1 == rs2 == rd<br> - rs2_val == 5<br> - rs1_h1_val == 0<br>      |[0x8000010c]:SRL16_U a3, a3, a3<br> [0x80000110]:sw a3, 0(t0)<br>      |
|   2|[0x80002214]<br>0x00000000|- rs1 : x30<br> - rs2 : x30<br> - rd : x19<br> - rs1 == rs2 != rd<br> - rs2_val == 7<br>                                                   |[0x80000120]:SRL16_U s3, t5, t5<br> [0x80000124]:sw s3, 4(t0)<br>      |
|   3|[0x80002218]<br>0x000B0000|- rs1 : x29<br> - rs2 : x10<br> - rd : x6<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == 11<br> - rs1_h1_val == 21845<br>  |[0x80000134]:SRL16_U t1, t4, a0<br> [0x80000138]:sw t1, 8(t0)<br>      |
|   4|[0x8000221c]<br>0x00000008|- rs1 : x4<br> - rs2 : x23<br> - rd : x23<br> - rs2 == rd != rs1<br> - rs2_val == 13<br> - rs1_h0_val == 65533<br>                         |[0x80000148]:SRL16_U s7, tp, s7<br> [0x8000014c]:sw s7, 12(t0)<br>     |
|   5|[0x80002220]<br>0x00000004|- rs1 : x16<br> - rs2 : x7<br> - rd : x16<br> - rs1 == rd != rs2<br> - rs2_val == 14<br> - rs1_h1_val == 256<br> - rs1_h0_val == 65535<br> |[0x8000015c]:SRL16_U a6, a6, t2<br> [0x80000160]:sw a6, 16(t0)<br>     |
|   6|[0x80002224]<br>0x00F80000|- rs1 : x21<br> - rs2 : x19<br> - rd : x24<br> - rs2_val == 8<br> - rs1_h1_val == 63487<br>                                                |[0x80000170]:SRL16_U s8, s5, s3<br> [0x80000174]:sw s8, 20(t0)<br>     |
|   7|[0x80002228]<br>0x00010AAB|- rs1 : x14<br> - rs2 : x21<br> - rd : x25<br> - rs2_val == 4<br> - rs1_h0_val == 43690<br>                                                |[0x80000184]:SRL16_U s9, a4, s5<br> [0x80000188]:sw s9, 24(t0)<br>     |
|   8|[0x8000222c]<br>0x00020004|- rs1 : x1<br> - rs2 : x25<br> - rd : x21<br> - rs2_val == 2<br> - rs1_h0_val == 16<br>                                                    |[0x80000198]:SRL16_U s5, ra, s9<br> [0x8000019c]:sw s5, 28(t0)<br>     |
|   9|[0x80002230]<br>0x00040006|- rs1 : x26<br> - rs2 : x11<br> - rd : x12<br> - rs2_val == 1<br> - rs1_h1_val == 8<br>                                                    |[0x800001ac]:SRL16_U a2, s10, a1<br> [0x800001b0]:sw a2, 32(t0)<br>    |
|  10|[0x80002234]<br>0x15550000|- rs1 : x28<br> - rs2 : x14<br> - rd : x10<br> - rs1_h1_val == 43690<br>                                                                   |[0x800001c0]:SRL16_U a0, t3, a4<br> [0x800001c4]:sw a0, 36(t0)<br>     |
|  11|[0x80002238]<br>0x08000001|- rs1 : x3<br> - rs2 : x20<br> - rd : x17<br> - rs1_h1_val == 32767<br>                                                                    |[0x800001d4]:SRL16_U a7, gp, s4<br> [0x800001d8]:sw a7, 40(t0)<br>     |
|  12|[0x8000223c]<br>0xBFFF0007|- rs1 : x15<br> - rs2 : x22<br> - rd : x11<br> - rs1_h1_val == 49151<br>                                                                   |[0x800001e8]:SRL16_U a1, a5, s6<br> [0x800001ec]:sw a1, 44(t0)<br>     |
|  13|[0x80002240]<br>0x00380000|- rs1 : x20<br> - rs2 : x2<br> - rd : x28<br> - rs1_h1_val == 57343<br> - rs2_val == 10<br>                                                |[0x800001fc]:SRL16_U t3, s4, sp<br> [0x80000200]:sw t3, 48(t0)<br>     |
|  14|[0x80002244]<br>0x00000000|- rs1 : x0<br> - rs2 : x31<br> - rd : x30<br> - rs1_h0_val == 0<br>                                                                        |[0x80000210]:SRL16_U t5, zero, t6<br> [0x80000214]:sw t5, 52(t0)<br>   |
|  15|[0x80002248]<br>0x001F001F|- rs1 : x2<br> - rs2 : x24<br> - rd : x18<br> - rs1_h1_val == 64511<br> - rs1_h0_val == 63487<br>                                          |[0x80000224]:SRL16_U s2, sp, s8<br> [0x80000228]:sw s2, 56(t0)<br>     |
|  16|[0x8000224c]<br>0x00200001|- rs1 : x23<br> - rs2 : x9<br> - rd : x31<br> - rs1_h1_val == 65023<br> - rs1_h0_val == 1024<br>                                           |[0x80000240]:SRL16_U t6, s7, s1<br> [0x80000244]:sw t6, 0(a3)<br>      |
|  17|[0x80002250]<br>0x00080000|- rs1 : x31<br> - rs2 : x1<br> - rd : x5<br> - rs1_h1_val == 65279<br> - rs1_h0_val == 2048<br>                                            |[0x80000254]:SRL16_U t0, t6, ra<br> [0x80000258]:sw t0, 4(a3)<br>      |
|  18|[0x80002254]<br>0xFF7FFFFE|- rs1 : x25<br> - rs2 : x29<br> - rd : x20<br> - rs1_h1_val == 65407<br> - rs1_h0_val == 65534<br>                                         |[0x80000268]:SRL16_U s4, s9, t4<br> [0x8000026c]:sw s4, 8(a3)<br>      |
|  19|[0x80002258]<br>0xFFBF000F|- rs1 : x17<br> - rs2 : x28<br> - rd : x1<br> - rs1_h1_val == 65471<br>                                                                    |[0x8000027c]:SRL16_U ra, a7, t3<br> [0x80000280]:sw ra, 12(a3)<br>     |
|  20|[0x8000225c]<br>0x3FF80004|- rs1 : x12<br> - rs2 : x17<br> - rd : x3<br> - rs1_h1_val == 65503<br>                                                                    |[0x80000290]:SRL16_U gp, a2, a7<br> [0x80000294]:sw gp, 16(a3)<br>     |
|  21|[0x80002260]<br>0x00100010|- rs1 : x7<br> - rs2 : x18<br> - rd : x14<br> - rs1_h1_val == 65519<br> - rs1_h0_val == 65503<br>                                          |[0x800002a4]:SRL16_U a4, t2, s2<br> [0x800002a8]:sw a4, 20(a3)<br>     |
|  22|[0x80002264]<br>0x00400030|- rs1 : x18<br> - rs2 : x15<br> - rd : x7<br> - rs1_h1_val == 65527<br> - rs1_h0_val == 49151<br>                                          |[0x800002b8]:SRL16_U t2, s2, a5<br> [0x800002bc]:sw t2, 24(a3)<br>     |
|  23|[0x80002268]<br>0x1FFF1FE0|- rs1 : x10<br> - rs2 : x27<br> - rd : x22<br> - rs1_h1_val == 65531<br> - rs1_h0_val == 65279<br>                                         |[0x800002cc]:SRL16_U s6, a0, s11<br> [0x800002d0]:sw s6, 28(a3)<br>    |
|  24|[0x8000226c]<br>0x20001FFF|- rs1 : x6<br> - rs2 : x12<br> - rd : x9<br> - rs1_h1_val == 65533<br> - rs1_h0_val == 65531<br>                                           |[0x800002e0]:SRL16_U s1, t1, a2<br> [0x800002e4]:sw s1, 32(a3)<br>     |
|  25|[0x80002270]<br>0x00400040|- rs1 : x11<br> - rs2 : x4<br> - rd : x2<br> - rs1_h1_val == 65534<br>                                                                     |[0x800002f4]:SRL16_U sp, a1, tp<br> [0x800002f8]:sw sp, 36(a3)<br>     |
|  26|[0x80002274]<br>0x00200000|- rs1 : x5<br> - rs2 : x3<br> - rd : x15<br> - rs1_h1_val == 16384<br>                                                                     |[0x80000308]:SRL16_U a5, t0, gp<br> [0x8000030c]:sw a5, 40(a3)<br>     |
|  27|[0x80002278]<br>0x08000200|- rs1 : x22<br> - rs2 : x16<br> - rd : x26<br> - rs1_h1_val == 8192<br>                                                                    |[0x8000031c]:SRL16_U s10, s6, a6<br> [0x80000320]:sw s10, 44(a3)<br>   |
|  28|[0x8000227c]<br>0x10000004|- rs1 : x9<br> - rs2 : x0<br> - rd : x29<br> - rs1_h1_val == 4096<br> - rs1_h0_val == 4<br>                                                |[0x80000330]:SRL16_U t4, s1, zero<br> [0x80000334]:sw t4, 48(a3)<br>   |
|  29|[0x80002280]<br>0x00000000|- rs1 : x19<br> - rs2 : x5<br> - rd : x0<br> - rs1_h1_val == 2048<br> - rs1_h0_val == 32767<br>                                            |[0x80000344]:SRL16_U zero, s3, t0<br> [0x80000348]:sw zero, 52(a3)<br> |
|  30|[0x80002284]<br>0x00000008|- rs1 : x24<br> - rs2 : x8<br> - rd : x4<br> - rs1_h1_val == 1024<br> - rs1_h0_val == 65471<br>                                            |[0x80000358]:SRL16_U tp, s8, fp<br> [0x8000035c]:sw tp, 56(a3)<br>     |
|  31|[0x80002288]<br>0x20004000|- rs1 : x27<br> - rs2 : x26<br> - rd : x8<br> - rs1_h0_val == 16384<br>                                                                    |[0x80000370]:SRL16_U fp, s11, s10<br> [0x80000374]:sw fp, 0(ra)<br>    |
|  32|[0x8000228c]<br>0x00100004|- rs1 : x8<br> - rs2 : x6<br> - rd : x27<br> - rs1_h1_val == 32768<br> - rs1_h0_val == 8192<br>                                            |[0x80000380]:SRL16_U s11, fp, t1<br> [0x80000384]:sw s11, 4(ra)<br>    |
|  33|[0x80002290]<br>0x00000000|- rs1_h0_val == 4096<br>                                                                                                                   |[0x80000390]:SRL16_U t6, t5, t4<br> [0x80000394]:sw t6, 8(ra)<br>      |
|  34|[0x80002294]<br>0x00010000|- rs1_h0_val == 512<br>                                                                                                                    |[0x800003a4]:SRL16_U t6, t5, t4<br> [0x800003a8]:sw t6, 12(ra)<br>     |
|  35|[0x80002298]<br>0x20000020|- rs1_h0_val == 256<br>                                                                                                                    |[0x800003b8]:SRL16_U t6, t5, t4<br> [0x800003bc]:sw t6, 16(ra)<br>     |
|  36|[0x8000229c]<br>0x0FFF0008|- rs1_h0_val == 128<br>                                                                                                                    |[0x800003cc]:SRL16_U t6, t5, t4<br> [0x800003d0]:sw t6, 20(ra)<br>     |
|  37|[0x800022a0]<br>0x7FC00020|- rs1_h0_val == 64<br>                                                                                                                     |[0x800003e0]:SRL16_U t6, t5, t4<br> [0x800003e4]:sw t6, 24(ra)<br>     |
|  38|[0x800022a4]<br>0x00000000|- rs1_h1_val == 16<br> - rs1_h0_val == 32<br>                                                                                              |[0x800003f4]:SRL16_U t6, t5, t4<br> [0x800003f8]:sw t6, 28(ra)<br>     |
|  39|[0x800022a8]<br>0x00000000|- rs1_h1_val == 2<br> - rs1_h0_val == 8<br>                                                                                                |[0x80000408]:SRL16_U t6, t5, t4<br> [0x8000040c]:sw t6, 32(ra)<br>     |
|  40|[0x800022ac]<br>0x00020000|- rs1_h0_val == 2<br>                                                                                                                      |[0x8000041c]:SRL16_U t6, t5, t4<br> [0x80000420]:sw t6, 36(ra)<br>     |
|  41|[0x800022b0]<br>0x7FFF0001|- rs1_h0_val == 1<br>                                                                                                                      |[0x80000430]:SRL16_U t6, t5, t4<br> [0x80000434]:sw t6, 40(ra)<br>     |
|  42|[0x800022b8]<br>0x00000018|- rs1_h1_val == 512<br>                                                                                                                    |[0x80000454]:SRL16_U t6, t5, t4<br> [0x80000458]:sw t6, 48(ra)<br>     |
|  43|[0x800022bc]<br>0x00203FE0|- rs1_h1_val == 128<br> - rs1_h0_val == 65407<br>                                                                                          |[0x80000468]:SRL16_U t6, t5, t4<br> [0x8000046c]:sw t6, 52(ra)<br>     |
|  44|[0x800022c0]<br>0x00207FC0|- rs1_h1_val == 64<br>                                                                                                                     |[0x8000047c]:SRL16_U t6, t5, t4<br> [0x80000480]:sw t6, 56(ra)<br>     |
|  45|[0x800022c4]<br>0x00010000|- rs1_h1_val == 32<br>                                                                                                                     |[0x80000490]:SRL16_U t6, t5, t4<br> [0x80000494]:sw t6, 60(ra)<br>     |
|  46|[0x800022c8]<br>0x00025555|- rs1_h1_val == 4<br>                                                                                                                      |[0x800004a4]:SRL16_U t6, t5, t4<br> [0x800004a8]:sw t6, 64(ra)<br>     |
|  47|[0x800022cc]<br>0x00000000|- rs1_h1_val == 1<br>                                                                                                                      |[0x800004b8]:SRL16_U t6, t5, t4<br> [0x800004bc]:sw t6, 68(ra)<br>     |
|  48|[0x800022d0]<br>0x00200004|- rs1_h1_val == 65535<br>                                                                                                                  |[0x800004c8]:SRL16_U t6, t5, t4<br> [0x800004cc]:sw t6, 72(ra)<br>     |
|  49|[0x800022d4]<br>0x00000007|- rs1_h0_val == 57343<br>                                                                                                                  |[0x800004dc]:SRL16_U t6, t5, t4<br> [0x800004e0]:sw t6, 76(ra)<br>     |
|  50|[0x800022d8]<br>0x00010004|- rs1_h0_val == 64511<br>                                                                                                                  |[0x800004f0]:SRL16_U t6, t5, t4<br> [0x800004f4]:sw t6, 80(ra)<br>     |
|  51|[0x800022dc]<br>0x00403F80|- rs1_h0_val == 65023<br>                                                                                                                  |[0x80000504]:SRL16_U t6, t5, t4<br> [0x80000508]:sw t6, 84(ra)<br>     |
|  52|[0x800022e0]<br>0x00000010|- rs1_h0_val == 65519<br>                                                                                                                  |[0x80000518]:SRL16_U t6, t5, t4<br> [0x8000051c]:sw t6, 88(ra)<br>     |
|  53|[0x800022e4]<br>0x00000010|- rs1_h0_val == 65527<br>                                                                                                                  |[0x8000052c]:SRL16_U t6, t5, t4<br> [0x80000530]:sw t6, 92(ra)<br>     |
|  54|[0x800022ec]<br>0x00000005|- rs1_h0_val == 21845<br>                                                                                                                  |[0x80000550]:SRL16_U t6, t5, t4<br> [0x80000554]:sw t6, 100(ra)<br>    |
|  55|[0x800022f4]<br>0x000001E0|- rs1_h0_val == 61439<br>                                                                                                                  |[0x80000578]:SRL16_U t6, t5, t4<br> [0x8000057c]:sw t6, 108(ra)<br>    |
|  56|[0x800022f8]<br>0x07800400|- rs1_h1_val == 61439<br> - rs1_h0_val == 32768<br>                                                                                        |[0x80000588]:SRL16_U t6, t5, t4<br> [0x8000058c]:sw t6, 112(ra)<br>    |
