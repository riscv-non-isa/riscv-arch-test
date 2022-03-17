
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000880')]      |
| SIG_REGION                | [('0x80002210', '0x800023b0', '104 words')]      |
| COV_LABELS                | uraddw      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/uraddw-01.S    |
| Total Number of coverpoints| 244     |
| Total Coverpoints Hit     | 238      |
| Total Signature Updates   | 102      |
| STAT1                     | 99      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000065c]:URADDW t6, t5, t4
      [0x80000660]:sw t6, 224(tp)
 -- Signature Address: 0x80002334 Data: 0x55555555
 -- Redundant Coverpoints hit by the op
      - opcode : uraddw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == 1
      - rs1_w0_val == 2863311530




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000848]:URADDW t6, t5, t4
      [0x8000084c]:sw t6, 328(tp)
 -- Signature Address: 0x8000239c Data: 0xCD555554
 -- Redundant Coverpoints hit by the op
      - opcode : uraddw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == 2863311530
      - rs1_w0_val == 4026531839




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000086c]:URADDW t6, t5, t4
      [0x80000870]:sw t6, 336(tp)
 -- Signature Address: 0x800023a4 Data: 0xFFFFFBFF
 -- Redundant Coverpoints hit by the op
      - opcode : uraddw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == 4294966271
      - rs1_w0_val == 4294966271






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

|s.no|        signature         |                                                                   coverpoints                                                                    |                                 code                                  |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00008000|- opcode : uraddw<br> - rs1 : x7<br> - rs2 : x7<br> - rd : x7<br> - rs1 == rs2 == rd<br> - rs2_w0_val == 32768<br> - rs1_w0_val == 32768<br>      |[0x80000108]:URADDW t2, t2, t2<br> [0x8000010c]:sw t2, 0(a0)<br>       |
|   2|[0x80002214]<br>0xAAAAAAAA|- rs1 : x23<br> - rs2 : x23<br> - rd : x3<br> - rs1 == rs2 != rd<br> - rs2_w0_val == 2863311530<br> - rs1_w0_val == 2863311530<br>                |[0x80000120]:URADDW gp, s7, s7<br> [0x80000124]:sw gp, 4(a0)<br>       |
|   3|[0x80002218]<br>0x2AAAAAB2|- rs1 : x22<br> - rs2 : x28<br> - rd : x5<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_w0_val == 1431655765<br> - rs1_w0_val == 16<br> |[0x80000134]:URADDW t0, s6, t3<br> [0x80000138]:sw t0, 8(a0)<br>       |
|   4|[0x8000221c]<br>0x40000008|- rs1 : x9<br> - rs2 : x22<br> - rd : x22<br> - rs2 == rd != rs1<br> - rs2_w0_val == 2147483647<br>                                               |[0x80000148]:URADDW s6, s1, s6<br> [0x8000014c]:sw s6, 12(a0)<br>      |
|   5|[0x80002220]<br>0x60000003|- rs1 : x4<br> - rs2 : x29<br> - rd : x4<br> - rs1 == rd != rs2<br> - rs2_w0_val == 3221225471<br>                                                |[0x8000015c]:URADDW tp, tp, t4<br> [0x80000160]:sw tp, 16(a0)<br>      |
|   6|[0x80002224]<br>0x6FFFFFFF|- rs1 : x0<br> - rs2 : x30<br> - rd : x29<br> - rs1_w0_val == 0<br> - rs2_w0_val == 3758096383<br>                                                |[0x80000170]:URADDW t4, zero, t5<br> [0x80000174]:sw t4, 20(a0)<br>    |
|   7|[0x80002228]<br>0xF77FFFFF|- rs1 : x14<br> - rs2 : x9<br> - rd : x27<br> - rs2_w0_val == 4026531839<br> - rs1_w0_val == 4278190079<br>                                       |[0x80000188]:URADDW s11, a4, s1<br> [0x8000018c]:sw s11, 24(a0)<br>    |
|   8|[0x8000222c]<br>0xFBFFFFF7|- rs1 : x2<br> - rs2 : x1<br> - rd : x13<br> - rs2_w0_val == 4160749567<br> - rs1_w0_val == 4294967279<br>                                        |[0x8000019c]:URADDW a3, sp, ra<br> [0x800001a0]:sw a3, 28(a0)<br>      |
|   9|[0x80002230]<br>0x7E000008|- rs1 : x12<br> - rs2 : x20<br> - rd : x6<br> - rs2_w0_val == 4227858431<br>                                                                      |[0x800001b0]:URADDW t1, a2, s4<br> [0x800001b4]:sw t1, 32(a0)<br>      |
|  10|[0x80002234]<br>0x7F000004|- rs1 : x19<br> - rs2 : x4<br> - rd : x2<br> - rs2_w0_val == 4261412863<br>                                                                       |[0x800001c4]:URADDW sp, s3, tp<br> [0x800001c8]:sw sp, 36(a0)<br>      |
|  11|[0x80002238]<br>0xFF3FFFFF|- rs1 : x30<br> - rs2 : x5<br> - rd : x24<br> - rs2_w0_val == 4278190079<br> - rs1_w0_val == 4286578687<br>                                       |[0x800001dc]:URADDW s8, t5, t0<br> [0x800001e0]:sw s8, 40(a0)<br>      |
|  12|[0x8000223c]<br>0x87BFFFFF|- rs1 : x11<br> - rs2 : x13<br> - rd : x18<br> - rs2_w0_val == 4286578687<br> - rs1_w0_val == 268435456<br>                                       |[0x800001f0]:URADDW s2, a1, a3<br> [0x800001f4]:sw s2, 44(a0)<br>      |
|  13|[0x80002240]<br>0x805FFFFF|- rs1 : x20<br> - rs2 : x15<br> - rd : x17<br> - rs2_w0_val == 4290772991<br> - rs1_w0_val == 16777216<br>                                        |[0x80000204]:URADDW a7, s4, a5<br> [0x80000208]:sw a7, 48(a0)<br>      |
|  14|[0x80002244]<br>0x7FFFFFF7|- rs1 : x29<br> - rs2 : x0<br> - rd : x8<br> - rs2_w0_val == 0<br>                                                                                |[0x80000218]:URADDW fp, t4, zero<br> [0x8000021c]:sw fp, 52(a0)<br>    |
|  15|[0x80002248]<br>0xFFF7F7FF|- rs1 : x28<br> - rs2 : x24<br> - rd : x23<br> - rs2_w0_val == 4293918719<br> - rs1_w0_val == 4294963199<br>                                      |[0x80000230]:URADDW s7, t3, s8<br> [0x80000234]:sw s7, 56(a0)<br>      |
|  16|[0x8000224c]<br>0xFFFBDFFF|- rs1 : x16<br> - rs2 : x6<br> - rd : x15<br> - rs2_w0_val == 4294443007<br> - rs1_w0_val == 4294950911<br>                                       |[0x80000248]:URADDW a5, a6, t1<br> [0x8000024c]:sw a5, 60(a0)<br>      |
|  17|[0x80002250]<br>0x7FFE0006|- rs1 : x25<br> - rs2 : x31<br> - rd : x20<br> - rs2_w0_val == 4294705151<br>                                                                     |[0x8000025c]:URADDW s4, s9, t6<br> [0x80000260]:sw s4, 64(a0)<br>      |
|  18|[0x80002254]<br>0x7FFF0002|- rs1 : x13<br> - rs2 : x21<br> - rd : x30<br> - rs2_w0_val == 4294836223<br>                                                                     |[0x80000278]:URADDW t5, a3, s5<br> [0x8000027c]:sw t5, 0(tp)<br>       |
|  19|[0x80002258]<br>0x7FFF801F|- rs1 : x1<br> - rs2 : x2<br> - rd : x11<br> - rs2_w0_val == 4294901759<br> - rs1_w0_val == 64<br>                                                |[0x8000028c]:URADDW a1, ra, sp<br> [0x80000290]:sw a1, 4(tp)<br>       |
|  20|[0x8000225c]<br>0x7FFFC005|- rs1 : x5<br> - rs2 : x11<br> - rd : x25<br> - rs2_w0_val == 4294934527<br>                                                                      |[0x800002a0]:URADDW s9, t0, a1<br> [0x800002a4]:sw s9, 8(tp)<br>       |
|  21|[0x80002260]<br>0x80001FFF|- rs1 : x21<br> - rs2 : x16<br> - rd : x26<br> - rs2_w0_val == 4294950911<br>                                                                     |[0x800002b4]:URADDW s10, s5, a6<br> [0x800002b8]:sw s10, 12(tp)<br>    |
|  22|[0x80002264]<br>0xFFFFE7FF|- rs1 : x8<br> - rs2 : x3<br> - rd : x9<br> - rs2_w0_val == 4294959103<br>                                                                        |[0x800002cc]:URADDW s1, fp, gp<br> [0x800002d0]:sw s1, 16(tp)<br>      |
|  23|[0x80002268]<br>0x7FFFF7FF|- rs1 : x18<br> - rs2 : x12<br> - rd : x28<br> - rs2_w0_val == 4294963199<br>                                                                     |[0x800002e0]:URADDW t3, s2, a2<br> [0x800002e4]:sw t3, 20(tp)<br>      |
|  24|[0x8000226c]<br>0x7FFFFC08|- rs1 : x24<br> - rs2 : x19<br> - rd : x12<br> - rs2_w0_val == 4294965247<br>                                                                     |[0x800002f4]:URADDW a2, s8, s3<br> [0x800002f8]:sw a2, 24(tp)<br>      |
|  25|[0x80002270]<br>0x00000000|- rs1 : x17<br> - rs2 : x26<br> - rd : x0<br> - rs2_w0_val == 4294966271<br> - rs1_w0_val == 4294966271<br>                                       |[0x80000304]:URADDW zero, a7, s10<br> [0x80000308]:sw zero, 28(tp)<br> |
|  26|[0x80002274]<br>0x8FFFFEFF|- rs1 : x26<br> - rs2 : x14<br> - rd : x16<br> - rs2_w0_val == 4294966783<br> - rs1_w0_val == 536870912<br>                                       |[0x80000314]:URADDW a6, s10, a4<br> [0x80000318]:sw a6, 32(tp)<br>     |
|  27|[0x80002278]<br>0xFFFFFF7D|- rs1 : x10<br> - rs2 : x8<br> - rd : x19<br> - rs2_w0_val == 4294967039<br> - rs1_w0_val == 4294967291<br>                                       |[0x80000324]:URADDW s3, a0, fp<br> [0x80000328]:sw s3, 36(tp)<br>      |
|  28|[0x8000227c]<br>0x807FFFBF|- rs1 : x6<br> - rs2 : x27<br> - rd : x1<br> - rs2_w0_val == 4294967167<br>                                                                       |[0x80000334]:URADDW ra, t1, s11<br> [0x80000338]:sw ra, 40(tp)<br>     |
|  29|[0x80002280]<br>0x83FFFFDF|- rs1 : x15<br> - rs2 : x17<br> - rd : x10<br> - rs2_w0_val == 4294967231<br> - rs1_w0_val == 134217728<br>                                       |[0x80000344]:URADDW a0, a5, a7<br> [0x80000348]:sw a0, 44(tp)<br>      |
|  30|[0x80002284]<br>0x8000FFEF|- rs1 : x31<br> - rs2 : x18<br> - rd : x21<br> - rs2_w0_val == 4294967263<br> - rs1_w0_val == 131072<br>                                          |[0x80000354]:URADDW s5, t6, s2<br> [0x80000358]:sw s5, 48(tp)<br>      |
|  31|[0x80002288]<br>0xFFFFFFE7|- rs1 : x27<br> - rs2 : x25<br> - rd : x14<br> - rs2_w0_val == 4294967279<br> - rs1_w0_val == 4294967263<br>                                      |[0x80000364]:URADDW a4, s11, s9<br> [0x80000368]:sw a4, 52(tp)<br>     |
|  32|[0x8000228c]<br>0xFDFFFFFB|- rs1 : x3<br> - rs2 : x10<br> - rd : x31<br> - rs2_w0_val == 4294967287<br> - rs1_w0_val == 4227858431<br>                                       |[0x80000378]:URADDW t6, gp, a0<br> [0x8000037c]:sw t6, 56(tp)<br>      |
|  33|[0x80002290]<br>0x8007FFFD|- rs2_w0_val == 4294967291<br> - rs1_w0_val == 1048576<br>                                                                                        |[0x80000388]:URADDW t6, t5, t4<br> [0x8000038c]:sw t6, 60(tp)<br>      |
|  34|[0x80002294]<br>0xFFFFEFFE|- rs2_w0_val == 4294967293<br> - rs1_w0_val == 4294959103<br>                                                                                     |[0x8000039c]:URADDW t6, t5, t4<br> [0x800003a0]:sw t6, 64(tp)<br>      |
|  35|[0x80002298]<br>0xFFBFFFFE|- rs2_w0_val == 4294967294<br>                                                                                                                    |[0x800003b0]:URADDW t6, t5, t4<br> [0x800003b4]:sw t6, 68(tp)<br>      |
|  36|[0x8000229c]<br>0x40000080|- rs2_w0_val == 2147483648<br> - rs1_w0_val == 256<br>                                                                                            |[0x800003c0]:URADDW t6, t5, t4<br> [0x800003c4]:sw t6, 72(tp)<br>      |
|  37|[0x800022a0]<br>0x9FFFFFBF|- rs2_w0_val == 1073741824<br> - rs1_w0_val == 4294967167<br>                                                                                     |[0x800003d0]:URADDW t6, t5, t4<br> [0x800003d4]:sw t6, 76(tp)<br>      |
|  38|[0x800022a4]<br>0x10000003|- rs2_w0_val == 536870912<br>                                                                                                                     |[0x800003e0]:URADDW t6, t5, t4<br> [0x800003e4]:sw t6, 80(tp)<br>      |
|  39|[0x800022a8]<br>0x08000001|- rs2_w0_val == 268435456<br> - rs1_w0_val == 2<br>                                                                                               |[0x800003f0]:URADDW t6, t5, t4<br> [0x800003f4]:sw t6, 84(tp)<br>      |
|  40|[0x800022ac]<br>0x7BFFFFFF|- rs2_w0_val == 134217728<br> - rs1_w0_val == 4026531839<br>                                                                                      |[0x80000404]:URADDW t6, t5, t4<br> [0x80000408]:sw t6, 88(tp)<br>      |
|  41|[0x800022b0]<br>0x02004000|- rs2_w0_val == 67108864<br>                                                                                                                      |[0x80000414]:URADDW t6, t5, t4<br> [0x80000418]:sw t6, 92(tp)<br>      |
|  42|[0x800022b4]<br>0x80FFFBFF|- rs2_w0_val == 33554432<br> - rs1_w0_val == 4294965247<br>                                                                                       |[0x80000428]:URADDW t6, t5, t4<br> [0x8000042c]:sw t6, 96(tp)<br>      |
|  43|[0x800022b8]<br>0x00800008|- rs2_w0_val == 16777216<br>                                                                                                                      |[0x80000438]:URADDW t6, t5, t4<br> [0x8000043c]:sw t6, 100(tp)<br>     |
|  44|[0x800022bc]<br>0x00401000|- rs2_w0_val == 8388608<br> - rs1_w0_val == 8192<br>                                                                                              |[0x80000448]:URADDW t6, t5, t4<br> [0x8000044c]:sw t6, 104(tp)<br>     |
|  45|[0x800022c0]<br>0x7E1FFFFF|- rs2_w0_val == 4194304<br>                                                                                                                       |[0x8000045c]:URADDW t6, t5, t4<br> [0x80000460]:sw t6, 108(tp)<br>     |
|  46|[0x800022c4]<br>0x00100005|- rs2_w0_val == 2097152<br>                                                                                                                       |[0x8000046c]:URADDW t6, t5, t4<br> [0x80000470]:sw t6, 112(tp)<br>     |
|  47|[0x800022c8]<br>0x7FFFC00F|- rs1_w0_val == 32<br>                                                                                                                            |[0x80000480]:URADDW t6, t5, t4<br> [0x80000484]:sw t6, 116(tp)<br>     |
|  48|[0x800022cc]<br>0x70000003|- rs1_w0_val == 8<br>                                                                                                                             |[0x80000494]:URADDW t6, t5, t4<br> [0x80000498]:sw t6, 120(tp)<br>     |
|  49|[0x800022d0]<br>0x7FFC0001|- rs1_w0_val == 4<br>                                                                                                                             |[0x800004a8]:URADDW t6, t5, t4<br> [0x800004ac]:sw t6, 124(tp)<br>     |
|  50|[0x800022d4]<br>0x7FFF8000|- rs1_w0_val == 1<br>                                                                                                                             |[0x800004bc]:URADDW t6, t5, t4<br> [0x800004c0]:sw t6, 128(tp)<br>     |
|  51|[0x800022d8]<br>0xFFFDFFFF|- rs1_w0_val == 4294967295<br>                                                                                                                    |[0x800004d0]:URADDW t6, t5, t4<br> [0x800004d4]:sw t6, 132(tp)<br>     |
|  52|[0x800022dc]<br>0x8003FFFF|- rs2_w0_val == 1048576<br> - rs1_w0_val == 4294443007<br>                                                                                        |[0x800004e4]:URADDW t6, t5, t4<br> [0x800004e8]:sw t6, 136(tp)<br>     |
|  53|[0x800022e0]<br>0x00040008|- rs2_w0_val == 524288<br>                                                                                                                        |[0x800004f4]:URADDW t6, t5, t4<br> [0x800004f8]:sw t6, 140(tp)<br>     |
|  54|[0x800022e4]<br>0x00120000|- rs2_w0_val == 262144<br> - rs1_w0_val == 2097152<br>                                                                                            |[0x80000504]:URADDW t6, t5, t4<br> [0x80000508]:sw t6, 144(tp)<br>     |
|  55|[0x800022e8]<br>0x8000FFFF|- rs2_w0_val == 131072<br> - rs1_w0_val == 4294967294<br>                                                                                         |[0x80000514]:URADDW t6, t5, t4<br> [0x80000518]:sw t6, 148(tp)<br>     |
|  56|[0x800022ec]<br>0x80007FFD|- rs2_w0_val == 65536<br>                                                                                                                         |[0x80000524]:URADDW t6, t5, t4<br> [0x80000528]:sw t6, 152(tp)<br>     |
|  57|[0x800022f0]<br>0x80001FFB|- rs2_w0_val == 16384<br> - rs1_w0_val == 4294967287<br>                                                                                          |[0x80000534]:URADDW t6, t5, t4<br> [0x80000538]:sw t6, 156(tp)<br>     |
|  58|[0x800022f4]<br>0x00001009|- rs2_w0_val == 8192<br>                                                                                                                          |[0x80000544]:URADDW t6, t5, t4<br> [0x80000548]:sw t6, 160(tp)<br>     |
|  59|[0x800022f8]<br>0x00080800|- rs2_w0_val == 4096<br>                                                                                                                          |[0x80000554]:URADDW t6, t5, t4<br> [0x80000558]:sw t6, 164(tp)<br>     |
|  60|[0x800022fc]<br>0x00000410|- rs2_w0_val == 2048<br>                                                                                                                          |[0x80000568]:URADDW t6, t5, t4<br> [0x8000056c]:sw t6, 168(tp)<br>     |
|  61|[0x80002300]<br>0x800001FD|- rs2_w0_val == 1024<br>                                                                                                                          |[0x80000578]:URADDW t6, t5, t4<br> [0x8000057c]:sw t6, 172(tp)<br>     |
|  62|[0x80002304]<br>0x800000F7|- rs2_w0_val == 512<br>                                                                                                                           |[0x80000588]:URADDW t6, t5, t4<br> [0x8000058c]:sw t6, 176(tp)<br>     |
|  63|[0x80002308]<br>0x00400080|- rs2_w0_val == 256<br> - rs1_w0_val == 8388608<br>                                                                                               |[0x80000598]:URADDW t6, t5, t4<br> [0x8000059c]:sw t6, 180(tp)<br>     |
|  64|[0x8000230c]<br>0x00020040|- rs2_w0_val == 128<br> - rs1_w0_val == 262144<br>                                                                                                |[0x800005a8]:URADDW t6, t5, t4<br> [0x800005ac]:sw t6, 184(tp)<br>     |
|  65|[0x80002310]<br>0x00000060|- rs2_w0_val == 64<br> - rs1_w0_val == 128<br>                                                                                                    |[0x800005b8]:URADDW t6, t5, t4<br> [0x800005bc]:sw t6, 188(tp)<br>     |
|  66|[0x80002314]<br>0x7FFFFC0F|- rs2_w0_val == 32<br>                                                                                                                            |[0x800005cc]:URADDW t6, t5, t4<br> [0x800005d0]:sw t6, 192(tp)<br>     |
|  67|[0x80002318]<br>0x0000000B|- rs2_w0_val == 16<br>                                                                                                                            |[0x800005dc]:URADDW t6, t5, t4<br> [0x800005e0]:sw t6, 196(tp)<br>     |
|  68|[0x8000231c]<br>0x7C000003|- rs2_w0_val == 8<br> - rs1_w0_val == 4160749567<br>                                                                                              |[0x800005f0]:URADDW t6, t5, t4<br> [0x800005f4]:sw t6, 200(tp)<br>     |
|  69|[0x80002320]<br>0x80000001|- rs2_w0_val == 4<br>                                                                                                                             |[0x80000600]:URADDW t6, t5, t4<br> [0x80000604]:sw t6, 204(tp)<br>     |
|  70|[0x80002324]<br>0x00000002|- rs2_w0_val == 2<br>                                                                                                                             |[0x80000610]:URADDW t6, t5, t4<br> [0x80000614]:sw t6, 208(tp)<br>     |
|  71|[0x80002328]<br>0x7FF00000|- rs2_w0_val == 1<br> - rs1_w0_val == 4292870143<br>                                                                                              |[0x80000624]:URADDW t6, t5, t4<br> [0x80000628]:sw t6, 212(tp)<br>     |
|  72|[0x8000232c]<br>0x80000000|- rs2_w0_val == 4294967295<br>                                                                                                                    |[0x80000634]:URADDW t6, t5, t4<br> [0x80000638]:sw t6, 216(tp)<br>     |
|  73|[0x80002330]<br>0x3FFFFFFF|- rs1_w0_val == 2147483647<br>                                                                                                                    |[0x80000648]:URADDW t6, t5, t4<br> [0x8000064c]:sw t6, 220(tp)<br>     |
|  74|[0x80002338]<br>0x6AAAAAAA|- rs1_w0_val == 1431655765<br>                                                                                                                    |[0x80000670]:URADDW t6, t5, t4<br> [0x80000674]:sw t6, 228(tp)<br>     |
|  75|[0x8000233c]<br>0x607FFFFF|- rs1_w0_val == 3221225471<br>                                                                                                                    |[0x80000684]:URADDW t6, t5, t4<br> [0x80000688]:sw t6, 232(tp)<br>     |
|  76|[0x80002340]<br>0x70000009|- rs1_w0_val == 3758096383<br>                                                                                                                    |[0x80000698]:URADDW t6, t5, t4<br> [0x8000069c]:sw t6, 236(tp)<br>     |
|  77|[0x80002344]<br>0x7F000009|- rs1_w0_val == 4261412863<br>                                                                                                                    |[0x800006ac]:URADDW t6, t5, t4<br> [0x800006b0]:sw t6, 240(tp)<br>     |
|  78|[0x80002348]<br>0xEFDFFFFF|- rs1_w0_val == 4290772991<br>                                                                                                                    |[0x800006c4]:URADDW t6, t5, t4<br> [0x800006c8]:sw t6, 244(tp)<br>     |
|  79|[0x8000234c]<br>0x7FF80002|- rs1_w0_val == 4293918719<br>                                                                                                                    |[0x800006d8]:URADDW t6, t5, t4<br> [0x800006dc]:sw t6, 248(tp)<br>     |
|  80|[0x80002350]<br>0x7FFE3FFF|- rs1_w0_val == 4294705151<br>                                                                                                                    |[0x800006ec]:URADDW t6, t5, t4<br> [0x800006f0]:sw t6, 252(tp)<br>     |
|  81|[0x80002354]<br>0x7FFF0006|- rs1_w0_val == 4294836223<br>                                                                                                                    |[0x80000700]:URADDW t6, t5, t4<br> [0x80000704]:sw t6, 256(tp)<br>     |
|  82|[0x80002358]<br>0x7FFF8000|- rs1_w0_val == 4294901759<br>                                                                                                                    |[0x80000714]:URADDW t6, t5, t4<br> [0x80000718]:sw t6, 260(tp)<br>     |
|  83|[0x8000235c]<br>0xFFFFBF7F|- rs1_w0_val == 4294934527<br>                                                                                                                    |[0x80000728]:URADDW t6, t5, t4<br> [0x8000072c]:sw t6, 264(tp)<br>     |
|  84|[0x80002360]<br>0x80001FDF|- rs1_w0_val == 4294967231<br>                                                                                                                    |[0x80000738]:URADDW t6, t5, t4<br> [0x8000073c]:sw t6, 268(tp)<br>     |
|  85|[0x80002364]<br>0x80007FFE|- rs1_w0_val == 4294967293<br>                                                                                                                    |[0x80000748]:URADDW t6, t5, t4<br> [0x8000074c]:sw t6, 272(tp)<br>     |
|  86|[0x80002368]<br>0x40000006|- rs1_w0_val == 2147483648<br>                                                                                                                    |[0x80000758]:URADDW t6, t5, t4<br> [0x8000075c]:sw t6, 276(tp)<br>     |
|  87|[0x8000236c]<br>0x97FFFFFF|- rs1_w0_val == 1073741824<br>                                                                                                                    |[0x8000076c]:URADDW t6, t5, t4<br> [0x80000770]:sw t6, 280(tp)<br>     |
|  88|[0x80002370]<br>0x81EFFFFF|- rs2_w0_val == 4292870143<br> - rs1_w0_val == 67108864<br>                                                                                       |[0x80000780]:URADDW t6, t5, t4<br> [0x80000784]:sw t6, 284(tp)<br>     |
|  89|[0x80002374]<br>0x78FFFFFF|- rs1_w0_val == 33554432<br>                                                                                                                      |[0x80000794]:URADDW t6, t5, t4<br> [0x80000798]:sw t6, 288(tp)<br>     |
|  90|[0x80002378]<br>0x2ACAAAAA|- rs1_w0_val == 4194304<br>                                                                                                                       |[0x800007a8]:URADDW t6, t5, t4<br> [0x800007ac]:sw t6, 292(tp)<br>     |
|  91|[0x8000237c]<br>0x7003FFFF|- rs1_w0_val == 524288<br>                                                                                                                        |[0x800007bc]:URADDW t6, t5, t4<br> [0x800007c0]:sw t6, 296(tp)<br>     |
|  92|[0x80002380]<br>0x00010100|- rs1_w0_val == 512<br>                                                                                                                           |[0x800007cc]:URADDW t6, t5, t4<br> [0x800007d0]:sw t6, 300(tp)<br>     |
|  93|[0x80002384]<br>0x00008020|- rs1_w0_val == 65536<br>                                                                                                                         |[0x800007dc]:URADDW t6, t5, t4<br> [0x800007e0]:sw t6, 304(tp)<br>     |
|  94|[0x80002388]<br>0x80001EFF|- rs1_w0_val == 16384<br>                                                                                                                         |[0x800007ec]:URADDW t6, t5, t4<br> [0x800007f0]:sw t6, 308(tp)<br>     |
|  95|[0x8000238c]<br>0x800007EF|- rs1_w0_val == 4096<br>                                                                                                                          |[0x800007fc]:URADDW t6, t5, t4<br> [0x80000800]:sw t6, 312(tp)<br>     |
|  96|[0x80002390]<br>0x00000600|- rs1_w0_val == 2048<br>                                                                                                                          |[0x80000810]:URADDW t6, t5, t4<br> [0x80000814]:sw t6, 316(tp)<br>     |
|  97|[0x80002394]<br>0x04000200|- rs1_w0_val == 1024<br>                                                                                                                          |[0x80000820]:URADDW t6, t5, t4<br> [0x80000824]:sw t6, 320(tp)<br>     |
|  98|[0x80002398]<br>0x7FFFFF00|- rs1_w0_val == 4294966783<br>                                                                                                                    |[0x80000830]:URADDW t6, t5, t4<br> [0x80000834]:sw t6, 324(tp)<br>     |
|  99|[0x800023a0]<br>0xEFFFFF7F|- rs1_w0_val == 4294967039<br>                                                                                                                    |[0x8000085c]:URADDW t6, t5, t4<br> [0x80000860]:sw t6, 332(tp)<br>     |
