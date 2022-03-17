
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000830')]      |
| SIG_REGION                | [('0x80002210', '0x80002490', '160 words')]      |
| COV_LABELS                | ukstas16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/ukstas16-01.S    |
| Total Number of coverpoints| 256     |
| Total Coverpoints Hit     | 250      |
| Total Signature Updates   | 79      |
| STAT1                     | 77      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000080c]:UKSTAS16 t6, t5, t4
      [0x80000810]:sw t6, 376(sp)
 -- Signature Address: 0x80002478 Data: 0xE0020000
 -- Redundant Coverpoints hit by the op
      - opcode : ukstas16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 57343
      - rs2_h0_val == 1024
      - rs1_h0_val == 512




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000824]:UKSTAS16 t6, t5, t4
      [0x80000828]:sw t6, 384(sp)
 -- Signature Address: 0x80002480 Data: 0xFFFF0000
 -- Redundant Coverpoints hit by the op
      - opcode : ukstas16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 65531
      - rs2_h0_val == 65527
      - rs1_h1_val == 65503
      - rs1_h0_val == 512






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

|s.no|        signature         |                                                                                                                                                     coverpoints                                                                                                                                                      |                                  code                                  |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00220000|- opcode : ukstas16<br> - rs1 : x23<br> - rs2 : x23<br> - rd : x23<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br>                                                                               |[0x80000118]:UKSTAS16 s7, s7, s7<br> [0x8000011c]:sw s7, 0(s1)<br>      |
|   2|[0x80002218]<br>0x00020000|- rs1 : x5<br> - rs2 : x5<br> - rd : x1<br> - rs1 == rs2 != rd<br> - rs2_h1_val == 1<br> - rs2_h0_val == 43690<br> - rs1_h1_val == 1<br> - rs1_h0_val == 43690<br>                                                                                                                                                    |[0x80000130]:UKSTAS16 ra, t0, t0<br> [0x80000134]:sw ra, 8(s1)<br>      |
|   3|[0x80002220]<br>0xFFF70040|- rs1 : x2<br> - rs2 : x0<br> - rd : x26<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h1_val == 65527<br> - rs1_h0_val == 64<br>                                                                                                                               |[0x80000148]:UKSTAS16 s10, sp, zero<br> [0x8000014c]:sw s10, 16(s1)<br> |
|   4|[0x80002228]<br>0xFFFFDFF7|- rs1 : x7<br> - rs2 : x13<br> - rd : x13<br> - rs2 == rd != rs1<br> - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == 43690<br> - rs2_h0_val == 8192<br> - rs1_h1_val == 65279<br> - rs1_h0_val == 65527<br> |[0x8000015c]:UKSTAS16 a3, t2, a3<br> [0x80000160]:sw a3, 24(s1)<br>     |
|   5|[0x80002230]<br>0xFFFF0000|- rs1 : x11<br> - rs2 : x26<br> - rd : x11<br> - rs1 == rd != rs2<br> - rs2_h1_val == 21845<br> - rs2_h0_val == 65023<br> - rs1_h1_val == 65535<br>                                                                                                                                                                   |[0x80000174]:UKSTAS16 a1, a1, s10<br> [0x80000178]:sw a1, 32(s1)<br>    |
|   6|[0x80002238]<br>0x7FFF0000|- rs1 : x17<br> - rs2 : x10<br> - rd : x2<br> - rs2_h1_val == 32767<br> - rs2_h0_val == 32768<br> - rs1_h1_val == 0<br> - rs1_h0_val == 16<br>                                                                                                                                                                        |[0x80000184]:UKSTAS16 sp, a7, a0<br> [0x80000188]:sw sp, 40(s1)<br>     |
|   7|[0x80002240]<br>0xFFFFFFB9|- rs1 : x31<br> - rs2 : x3<br> - rd : x5<br> - rs2_h1_val == 49151<br> - rs1_h0_val == 65471<br>                                                                                                                                                                                                                      |[0x8000019c]:UKSTAS16 t0, t6, gp<br> [0x800001a0]:sw t0, 48(s1)<br>     |
|   8|[0x80002248]<br>0x00000000|- rs1 : x28<br> - rs2 : x7<br> - rd : x0<br> - rs2_h1_val == 57343<br> - rs2_h0_val == 1024<br> - rs1_h0_val == 512<br>                                                                                                                                                                                               |[0x800001b4]:UKSTAS16 zero, t3, t2<br> [0x800001b8]:sw zero, 56(s1)<br> |
|   9|[0x80002250]<br>0xFFFF03F3|- rs1 : x22<br> - rs2 : x28<br> - rd : x4<br> - rs2_h1_val == 61439<br> - rs1_h1_val == 49151<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                            |[0x800001cc]:UKSTAS16 tp, s6, t3<br> [0x800001d0]:sw tp, 64(s1)<br>     |
|  10|[0x80002258]<br>0xFFFF0000|- rs1 : x8<br> - rs2 : x20<br> - rd : x30<br> - rs2_h1_val == 63487<br> - rs2_h0_val == 65407<br>                                                                                                                                                                                                                     |[0x800001e4]:UKSTAS16 t5, fp, s4<br> [0x800001e8]:sw t5, 72(s1)<br>     |
|  11|[0x80002260]<br>0xFFFF0000|- rs1 : x24<br> - rs2 : x21<br> - rd : x29<br> - rs2_h1_val == 64511<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                                                     |[0x800001f8]:UKSTAS16 t4, s8, s5<br> [0x800001fc]:sw t4, 80(s1)<br>     |
|  12|[0x80002268]<br>0xFFFFFBBF|- rs1 : x12<br> - rs2 : x24<br> - rd : x6<br> - rs2_h1_val == 65023<br>                                                                                                                                                                                                                                               |[0x80000210]:UKSTAS16 t1, a2, s8<br> [0x80000214]:sw t1, 88(s1)<br>     |
|  13|[0x80002270]<br>0xFFFF0000|- rs1 : x27<br> - rs2 : x16<br> - rd : x20<br> - rs2_h1_val == 65279<br> - rs1_h1_val == 65023<br> - rs1_h0_val == 32768<br>                                                                                                                                                                                          |[0x80000220]:UKSTAS16 s4, s11, a6<br> [0x80000224]:sw s4, 96(s1)<br>    |
|  14|[0x80002278]<br>0xFF84AAA2|- rs1 : x26<br> - rs2 : x11<br> - rd : x25<br> - rs2_h1_val == 65407<br> - rs2_h0_val == 8<br>                                                                                                                                                                                                                        |[0x80000238]:UKSTAS16 s9, s10, a1<br> [0x8000023c]:sw s9, 104(s1)<br>   |
|  15|[0x80002280]<br>0xFFFF7FF1|- rs1 : x3<br> - rs2 : x19<br> - rd : x16<br> - rs2_h1_val == 65471<br> - rs1_h1_val == 43690<br>                                                                                                                                                                                                                     |[0x8000024c]:UKSTAS16 a6, gp, s3<br> [0x80000250]:sw a6, 112(s1)<br>    |
|  16|[0x80002288]<br>0xFFFF0000|- rs1 : x16<br> - rs2 : x31<br> - rd : x19<br> - rs2_h1_val == 65503<br> - rs2_h0_val == 65534<br> - rs1_h1_val == 32767<br>                                                                                                                                                                                          |[0x8000026c]:UKSTAS16 s3, a6, t6<br> [0x80000270]:sw s3, 0(t0)<br>      |
|  17|[0x80002290]<br>0xFFFF0000|- rs1 : x9<br> - rs2 : x30<br> - rd : x31<br> - rs2_h1_val == 65519<br>                                                                                                                                                                                                                                               |[0x80000284]:UKSTAS16 t6, s1, t5<br> [0x80000288]:sw t6, 8(t0)<br>      |
|  18|[0x80002298]<br>0xFFFF0000|- rs1 : x21<br> - rs2 : x15<br> - rd : x27<br> - rs2_h1_val == 65527<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                        |[0x8000029c]:UKSTAS16 s11, s5, a5<br> [0x800002a0]:sw s11, 16(t0)<br>   |
|  19|[0x800022a0]<br>0xFFFB0000|- rs1 : x0<br> - rs2 : x8<br> - rd : x18<br> - rs1_h0_val == 0<br> - rs2_h1_val == 65531<br> - rs2_h0_val == 65527<br>                                                                                                                                                                                                |[0x800002b4]:UKSTAS16 s2, zero, fp<br> [0x800002b8]:sw s2, 24(t0)<br>   |
|  20|[0x800022a8]<br>0xFFFF0000|- rs1 : x4<br> - rs2 : x27<br> - rd : x15<br> - rs2_h1_val == 65533<br> - rs2_h0_val == 49151<br>                                                                                                                                                                                                                     |[0x800002cc]:UKSTAS16 a5, tp, s11<br> [0x800002d0]:sw a5, 32(t0)<br>    |
|  21|[0x800022b0]<br>0xFFFF0000|- rs1 : x13<br> - rs2 : x17<br> - rd : x22<br> - rs2_h1_val == 65534<br> - rs2_h0_val == 65519<br>                                                                                                                                                                                                                    |[0x800002e4]:UKSTAS16 s6, a3, a7<br> [0x800002e8]:sw s6, 40(t0)<br>     |
|  22|[0x800022b8]<br>0x80090000|- rs1 : x19<br> - rs2 : x18<br> - rd : x7<br> - rs2_h1_val == 32768<br>                                                                                                                                                                                                                                               |[0x800002fc]:UKSTAS16 t2, s3, s2<br> [0x80000300]:sw t2, 48(t0)<br>     |
|  23|[0x800022c0]<br>0x400C0000|- rs1 : x18<br> - rs2 : x22<br> - rd : x3<br> - rs2_h1_val == 16384<br> - rs2_h0_val == 65279<br> - rs1_h0_val == 8<br>                                                                                                                                                                                               |[0x80000314]:UKSTAS16 gp, s2, s6<br> [0x80000318]:sw gp, 56(t0)<br>     |
|  24|[0x800022c8]<br>0xFFFFFFE6|- rs1 : x15<br> - rs2 : x29<br> - rd : x10<br> - rs2_h1_val == 8192<br> - rs1_h1_val == 65519<br>                                                                                                                                                                                                                     |[0x8000032c]:UKSTAS16 a0, a5, t4<br> [0x80000330]:sw a0, 64(t0)<br>     |
|  25|[0x800022d0]<br>0x90007FFD|- rs1 : x25<br> - rs2 : x6<br> - rd : x12<br> - rs2_h1_val == 4096<br> - rs1_h1_val == 32768<br>                                                                                                                                                                                                                      |[0x80000340]:UKSTAS16 a2, s9, t1<br> [0x80000344]:sw a2, 72(t0)<br>     |
|  26|[0x800022d8]<br>0xE7FFFFEA|- rs1 : x29<br> - rs2 : x14<br> - rd : x17<br> - rs2_h1_val == 2048<br> - rs1_h1_val == 57343<br> - rs1_h0_val == 65519<br>                                                                                                                                                                                           |[0x80000358]:UKSTAS16 a7, t4, a4<br> [0x8000035c]:sw a7, 80(t0)<br>     |
|  27|[0x800022e0]<br>0x04110000|- rs1 : x6<br> - rs2 : x2<br> - rd : x8<br> - rs2_h1_val == 1024<br> - rs2_h0_val == 32767<br>                                                                                                                                                                                                                        |[0x80000370]:UKSTAS16 fp, t1, sp<br> [0x80000374]:sw fp, 88(t0)<br>     |
|  28|[0x800022e8]<br>0x02000000|- rs1 : x20<br> - rs2 : x12<br> - rd : x24<br> - rs2_h1_val == 512<br> - rs2_h0_val == 64511<br>                                                                                                                                                                                                                      |[0x80000384]:UKSTAS16 s8, s4, a2<br> [0x80000388]:sw s8, 96(t0)<br>     |
|  29|[0x800022f0]<br>0x01040010|- rs1 : x14<br> - rs2 : x4<br> - rd : x9<br> - rs2_h1_val == 256<br> - rs2_h0_val == 65503<br> - rs1_h1_val == 4<br>                                                                                                                                                                                                  |[0x8000039c]:UKSTAS16 s1, a4, tp<br> [0x800003a0]:sw s1, 104(t0)<br>    |
|  30|[0x800022f8]<br>0x00820009|- rs1 : x1<br> - rs2 : x25<br> - rd : x28<br> - rs2_h1_val == 128<br> - rs2_h0_val == 2<br> - rs1_h1_val == 2<br>                                                                                                                                                                                                     |[0x800003b4]:UKSTAS16 t3, ra, s9<br> [0x800003b8]:sw t3, 112(t0)<br>    |
|  31|[0x80002300]<br>0x00450000|- rs1 : x30<br> - rs2 : x1<br> - rd : x21<br> - rs2_h1_val == 64<br>                                                                                                                                                                                                                                                  |[0x800003d4]:UKSTAS16 s5, t5, ra<br> [0x800003d8]:sw s5, 0(sp)<br>      |
|  32|[0x80002308]<br>0x00250000|- rs1 : x10<br> - rs2 : x9<br> - rd : x14<br> - rs2_h1_val == 32<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                           |[0x800003e8]:UKSTAS16 a4, a0, s1<br> [0x800003ec]:sw a4, 8(sp)<br>      |
|  33|[0x80002310]<br>0xC00FFFF1|- rs2_h1_val == 16<br> - rs1_h0_val == 65534<br>                                                                                                                                                                                                                                                                      |[0x80000400]:UKSTAS16 t6, t5, t4<br> [0x80000404]:sw t6, 16(sp)<br>     |
|  34|[0x80002318]<br>0x00150000|- rs2_h1_val == 8<br>                                                                                                                                                                                                                                                                                                 |[0x80000418]:UKSTAS16 t6, t5, t4<br> [0x8000041c]:sw t6, 24(sp)<br>     |
|  35|[0x80002320]<br>0xFFFF03FC|- rs1_h0_val == 65531<br>                                                                                                                                                                                                                                                                                             |[0x80000430]:UKSTAS16 t6, t5, t4<br> [0x80000434]:sw t6, 32(sp)<br>     |
|  36|[0x80002328]<br>0xE00BFFF2|- rs1_h0_val == 65533<br>                                                                                                                                                                                                                                                                                             |[0x80000448]:UKSTAS16 t6, t5, t4<br> [0x8000044c]:sw t6, 40(sp)<br>     |
|  37|[0x80002330]<br>0xFFED0000|- rs1_h1_val == 65503<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                   |[0x8000045c]:UKSTAS16 t6, t5, t4<br> [0x80000460]:sw t6, 48(sp)<br>     |
|  38|[0x80002338]<br>0xFFFF0000|- rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                              |[0x80000470]:UKSTAS16 t6, t5, t4<br> [0x80000474]:sw t6, 56(sp)<br>     |
|  39|[0x80002340]<br>0xFFEA0FF3|- rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                              |[0x80000484]:UKSTAS16 t6, t5, t4<br> [0x80000488]:sw t6, 64(sp)<br>     |
|  40|[0x80002348]<br>0xFFFF0000|- rs2_h1_val == 2<br> - rs2_h0_val == 21845<br> - rs1_h1_val == 65533<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                    |[0x8000049c]:UKSTAS16 t6, t5, t4<br> [0x800004a0]:sw t6, 72(sp)<br>     |
|  41|[0x80002350]<br>0xFFFF0060|- rs2_h0_val == 32<br> - rs1_h1_val == 65534<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                              |[0x800004b4]:UKSTAS16 t6, t5, t4<br> [0x800004b8]:sw t6, 80(sp)<br>     |
|  42|[0x80002358]<br>0xFFFF0000|- rs2_h0_val == 256<br> - rs1_h1_val == 61439<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                               |[0x800004cc]:UKSTAS16 t6, t5, t4<br> [0x800004d0]:sw t6, 88(sp)<br>     |
|  43|[0x80002360]<br>0x08030000|- rs1_h1_val == 2048<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                        |[0x800004e4]:UKSTAS16 t6, t5, t4<br> [0x800004e8]:sw t6, 96(sp)<br>     |
|  44|[0x80002368]<br>0x000EFDFF|- rs2_h0_val == 512<br> - rs1_h0_val == 65535<br>                                                                                                                                                                                                                                                                     |[0x800004fc]:UKSTAS16 t6, t5, t4<br> [0x80000500]:sw t6, 104(sp)<br>    |
|  45|[0x80002370]<br>0x00440000|- rs2_h1_val == 4<br> - rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                          |[0x80000514]:UKSTAS16 t6, t5, t4<br> [0x80000518]:sw t6, 112(sp)<br>    |
|  46|[0x80002378]<br>0xFFFF0000|- rs2_h1_val == 65535<br>                                                                                                                                                                                                                                                                                             |[0x8000052c]:UKSTAS16 t6, t5, t4<br> [0x80000530]:sw t6, 120(sp)<br>    |
|  47|[0x80002380]<br>0xBFFF0038|- rs2_h0_val == 65471<br>                                                                                                                                                                                                                                                                                             |[0x80000544]:UKSTAS16 t6, t5, t4<br> [0x80000548]:sw t6, 128(sp)<br>    |
|  48|[0x80002388]<br>0x40800000|- rs2_h0_val == 57343<br> - rs1_h1_val == 128<br> - rs1_h0_val == 57343<br>                                                                                                                                                                                                                                           |[0x8000055c]:UKSTAS16 t6, t5, t4<br> [0x80000560]:sw t6, 136(sp)<br>    |
|  49|[0x80002390]<br>0xAAB40FFF|- rs2_h0_val == 61439<br>                                                                                                                                                                                                                                                                                             |[0x80000574]:UKSTAS16 t6, t5, t4<br> [0x80000578]:sw t6, 144(sp)<br>    |
|  50|[0x80002398]<br>0xFFFF0000|- rs2_h0_val == 63487<br> - rs1_h1_val == 8<br> - rs1_h0_val == 61439<br>                                                                                                                                                                                                                                             |[0x8000058c]:UKSTAS16 t6, t5, t4<br> [0x80000590]:sw t6, 152(sp)<br>    |
|  51|[0x800023a0]<br>0x80800000|- rs2_h0_val == 65531<br>                                                                                                                                                                                                                                                                                             |[0x800005a4]:UKSTAS16 t6, t5, t4<br> [0x800005a8]:sw t6, 160(sp)<br>    |
|  52|[0x800023a8]<br>0xFFFF0000|- rs2_h0_val == 128<br> - rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                     |[0x800005bc]:UKSTAS16 t6, t5, t4<br> [0x800005c0]:sw t6, 168(sp)<br>    |
|  53|[0x800023b0]<br>0x0813FFCF|- rs2_h0_val == 16<br> - rs1_h0_val == 65503<br>                                                                                                                                                                                                                                                                      |[0x800005d4]:UKSTAS16 t6, t5, t4<br> [0x800005d8]:sw t6, 176(sp)<br>    |
|  54|[0x800023b8]<br>0xFFFF5551|- rs2_h0_val == 4<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                       |[0x800005ec]:UKSTAS16 t6, t5, t4<br> [0x800005f0]:sw t6, 184(sp)<br>    |
|  55|[0x800023c0]<br>0x001C007F|- rs2_h0_val == 1<br> - rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                          |[0x80000604]:UKSTAS16 t6, t5, t4<br> [0x80000608]:sw t6, 192(sp)<br>    |
|  56|[0x800023c8]<br>0xFFFF0000|- rs2_h0_val == 65535<br>                                                                                                                                                                                                                                                                                             |[0x80000618]:UKSTAS16 t6, t5, t4<br> [0x8000061c]:sw t6, 200(sp)<br>    |
|  57|[0x800023d0]<br>0xE03FFF7F|- rs1_h0_val == 65407<br>                                                                                                                                                                                                                                                                                             |[0x8000062c]:UKSTAS16 t6, t5, t4<br> [0x80000630]:sw t6, 208(sp)<br>    |
|  58|[0x800023d8]<br>0xFFFFFFED|- rs1_h1_val == 21845<br>                                                                                                                                                                                                                                                                                             |[0x80000644]:UKSTAS16 t6, t5, t4<br> [0x80000648]:sw t6, 216(sp)<br>    |
|  59|[0x800023e0]<br>0xF80F0000|- rs1_h1_val == 63487<br>                                                                                                                                                                                                                                                                                             |[0x8000065c]:UKSTAS16 t6, t5, t4<br> [0x80000660]:sw t6, 224(sp)<br>    |
|  60|[0x800023e8]<br>0xFFFFEDFF|- rs2_h0_val == 4096<br> - rs1_h1_val == 64511<br> - rs1_h0_val == 65023<br>                                                                                                                                                                                                                                          |[0x80000670]:UKSTAS16 t6, t5, t4<br> [0x80000674]:sw t6, 232(sp)<br>    |
|  61|[0x800023f0]<br>0xFF8D0000|- rs1_h1_val == 65407<br>                                                                                                                                                                                                                                                                                             |[0x80000688]:UKSTAS16 t6, t5, t4<br> [0x8000068c]:sw t6, 240(sp)<br>    |
|  62|[0x800023f8]<br>0x10080003|- rs1_h1_val == 4096<br>                                                                                                                                                                                                                                                                                              |[0x800006a0]:UKSTAS16 t6, t5, t4<br> [0x800006a4]:sw t6, 248(sp)<br>    |
|  63|[0x80002400]<br>0xFFFF0000|- rs1_h1_val == 1024<br>                                                                                                                                                                                                                                                                                              |[0x800006b4]:UKSTAS16 t6, t5, t4<br> [0x800006b8]:sw t6, 256(sp)<br>    |
|  64|[0x80002408]<br>0xFFFFBFEC|- rs1_h1_val == 512<br> - rs1_h0_val == 49151<br>                                                                                                                                                                                                                                                                     |[0x800006cc]:UKSTAS16 t6, t5, t4<br> [0x800006d0]:sw t6, 264(sp)<br>    |
|  65|[0x80002410]<br>0x010FFFF1|- rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                               |[0x800006e4]:UKSTAS16 t6, t5, t4<br> [0x800006e8]:sw t6, 272(sp)<br>    |
|  66|[0x80002418]<br>0xAAB80000|- rs2_h0_val == 16384<br>                                                                                                                                                                                                                                                                                             |[0x800006f8]:UKSTAS16 t6, t5, t4<br> [0x800006fc]:sw t6, 280(sp)<br>    |
|  67|[0x80002420]<br>0xF8FF0000|- rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                             |[0x80000710]:UKSTAS16 t6, t5, t4<br> [0x80000714]:sw t6, 288(sp)<br>    |
|  68|[0x80002428]<br>0xFFFFF7EC|- rs1_h0_val == 63487<br>                                                                                                                                                                                                                                                                                             |[0x80000728]:UKSTAS16 t6, t5, t4<br> [0x8000072c]:sw t6, 296(sp)<br>    |
|  69|[0x80002430]<br>0xFFFFFBFA|- rs1_h0_val == 64511<br>                                                                                                                                                                                                                                                                                             |[0x80000740]:UKSTAS16 t6, t5, t4<br> [0x80000744]:sw t6, 304(sp)<br>    |
|  70|[0x80002438]<br>0xFFC61FF6|- rs1_h1_val == 65471<br>                                                                                                                                                                                                                                                                                             |[0x80000754]:UKSTAS16 t6, t5, t4<br> [0x80000758]:sw t6, 312(sp)<br>    |
|  71|[0x80002440]<br>0x00830000|- rs2_h0_val == 65533<br>                                                                                                                                                                                                                                                                                             |[0x8000076c]:UKSTAS16 t6, t5, t4<br> [0x80000770]:sw t6, 320(sp)<br>    |
|  72|[0x80002448]<br>0xFFFFFEF1|- rs1_h0_val == 65279<br>                                                                                                                                                                                                                                                                                             |[0x80000784]:UKSTAS16 t6, t5, t4<br> [0x80000788]:sw t6, 328(sp)<br>    |
|  73|[0x80002450]<br>0xFFFF7FF3|- rs1_h1_val == 65531<br>                                                                                                                                                                                                                                                                                             |[0x80000798]:UKSTAS16 t6, t5, t4<br> [0x8000079c]:sw t6, 336(sp)<br>    |
|  74|[0x80002458]<br>0x55630000|- rs2_h0_val == 2048<br>                                                                                                                                                                                                                                                                                              |[0x800007b0]:UKSTAS16 t6, t5, t4<br> [0x800007b4]:sw t6, 344(sp)<br>    |
|  75|[0x80002460]<br>0x00310000|- rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                                                |[0x800007c4]:UKSTAS16 t6, t5, t4<br> [0x800007c8]:sw t6, 352(sp)<br>    |
|  76|[0x80002468]<br>0x00020000|- rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                               |[0x800007dc]:UKSTAS16 t6, t5, t4<br> [0x800007e0]:sw t6, 360(sp)<br>    |
|  77|[0x80002470]<br>0xFFFF0000|- rs2_h0_val == 64<br>                                                                                                                                                                                                                                                                                                |[0x800007f4]:UKSTAS16 t6, t5, t4<br> [0x800007f8]:sw t6, 368(sp)<br>    |
