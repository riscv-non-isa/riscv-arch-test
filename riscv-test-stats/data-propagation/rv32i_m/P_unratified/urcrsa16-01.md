
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800007a0')]      |
| SIG_REGION                | [('0x80002210', '0x80002340', '76 words')]      |
| COV_LABELS                | urcrsa16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/urcrsa16-01.S    |
| Total Number of coverpoints| 256     |
| Total Coverpoints Hit     | 250      |
| Total Signature Updates   | 74      |
| STAT1                     | 71      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000504]:URCRSA16 t6, t5, t4
      [0x80000508]:sw t6, 112(sp)
 -- Signature Address: 0x800022c0 Data: 0x90800003
 -- Redundant Coverpoints hit by the op
      - opcode : urcrsa16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 0
      - rs2_h0_val == 65279
      - rs1_h1_val == 8192




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005a0]:URCRSA16 t6, t5, t4
      [0x800005a4]:sw t6, 140(sp)
 -- Signature Address: 0x800022dc Data: 0x00080012
 -- Redundant Coverpoints hit by the op
      - opcode : urcrsa16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs2_h0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006d0]:URCRSA16 t6, t5, t4
      [0x800006d4]:sw t6, 196(sp)
 -- Signature Address: 0x80002314 Data: 0xFFF65655
 -- Redundant Coverpoints hit by the op
      - opcode : urcrsa16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 43690
      - rs1_h1_val == 0
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

|s.no|        signature         |                                                                                                                                     coverpoints                                                                                                                                      |                                 code                                  |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80002210]<br>0xFFF50015|- opcode : urcrsa16<br> - rs1 : x21<br> - rs2 : x21<br> - rd : x21<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h0_val == 32<br> - rs1_h0_val == 32<br> |[0x8000010c]:URCRSA16 s5, s5, s5<br> [0x80000110]:sw s5, 0(t1)<br>     |
|   2|[0x80002214]<br>0x00000000|- rs1 : x2<br> - rs2 : x2<br> - rd : x0<br> - rs1 == rs2 != rd<br> - rs2_h0_val == 65527<br> - rs1_h0_val == 65527<br>                                                                                                                                                                |[0x80000124]:URCRSA16 zero, sp, sp<br> [0x80000128]:sw zero, 4(t1)<br> |
|   3|[0x80002218]<br>0x0002000B|- rs1 : x3<br> - rs2 : x25<br> - rd : x17<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs2_h0_val == 4<br> - rs1_h1_val == 8<br> - rs1_h0_val == 4<br>                                                    |[0x8000013c]:URCRSA16 a7, gp, s9<br> [0x80000140]:sw a7, 8(t1)<br>     |
|   4|[0x8000221c]<br>0xD595D554|- rs1 : x12<br> - rs2 : x5<br> - rd : x5<br> - rs2 == rd != rs1<br> - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == 43690<br> - rs2_h0_val == 21845<br> - rs1_h1_val == 128<br> - rs1_h0_val == 65535<br>                                        |[0x80000154]:URCRSA16 t0, a2, t0<br> [0x80000158]:sw t0, 12(t1)<br>    |
|   5|[0x80002220]<br>0x80096AAA|- rs1 : x15<br> - rs2 : x10<br> - rd : x15<br> - rs1 == rd != rs2<br> - rs2_h1_val == 21845<br> - rs2_h0_val == 65535<br> - rs1_h0_val == 32767<br>                                                                                                                                   |[0x8000016c]:URCRSA16 a5, a5, a0<br> [0x80000170]:sw a5, 16(t1)<br>    |
|   6|[0x80002224]<br>0x00040100|- rs1 : x10<br> - rs2 : x0<br> - rd : x31<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h0_val == 512<br>                                                                                                                                                                     |[0x80000184]:URCRSA16 t6, a0, zero<br> [0x80000188]:sw t6, 20(t1)<br>  |
|   7|[0x80002228]<br>0x82046007|- rs1 : x27<br> - rs2 : x15<br> - rd : x20<br> - rs2_h1_val == 49151<br> - rs2_h0_val == 64511<br>                                                                                                                                                                                    |[0x8000019c]:URCRSA16 s4, s11, a5<br> [0x800001a0]:sw s4, 24(t1)<br>   |
|   8|[0x8000222c]<br>0x01FE700F|- rs1 : x20<br> - rs2 : x22<br> - rd : x3<br> - rs2_h1_val == 57343<br> - rs1_h1_val == 65531<br>                                                                                                                                                                                     |[0x800001b4]:URCRSA16 gp, s4, s6<br> [0x800001b8]:sw gp, 28(t1)<br>    |
|   9|[0x80002230]<br>0x00067800|- rs1 : x17<br> - rs2 : x31<br> - rd : x18<br> - rs2_h1_val == 61439<br> - rs2_h0_val == 1<br> - rs1_h0_val == 1<br>                                                                                                                                                                  |[0x800001cc]:URCRSA16 s2, a7, t6<br> [0x800001d0]:sw s2, 32(t1)<br>    |
|  10|[0x80002234]<br>0x7FDB9BFF|- rs1 : x25<br> - rs2 : x7<br> - rd : x23<br> - rs2_h1_val == 63487<br> - rs1_h1_val == 65471<br> - rs1_h0_val == 16384<br>                                                                                                                                                           |[0x800001e0]:URCRSA16 s7, s9, t2<br> [0x800001e4]:sw s7, 36(t1)<br>    |
|  11|[0x80002238]<br>0x90027E03|- rs1 : x18<br> - rs2 : x27<br> - rd : x2<br> - rs2_h1_val == 64511<br> - rs2_h0_val == 57343<br> - rs1_h1_val == 4<br> - rs1_h0_val == 8<br>                                                                                                                                         |[0x800001f8]:URCRSA16 sp, s2, s11<br> [0x800001fc]:sw sp, 40(t1)<br>   |
|  12|[0x8000223c]<br>0x3FFA7F08|- rs1 : x9<br> - rs2 : x16<br> - rd : x28<br> - rs2_h1_val == 65023<br> - rs1_h1_val == 32767<br>                                                                                                                                                                                     |[0x80000210]:URCRSA16 t3, s1, a6<br> [0x80000214]:sw t3, 44(t1)<br>    |
|  13|[0x80002240]<br>0x6FF79F7F|- rs1 : x19<br> - rs2 : x17<br> - rd : x24<br> - rs2_h1_val == 65279<br> - rs2_h0_val == 16<br> - rs1_h1_val == 57343<br>                                                                                                                                                             |[0x80000224]:URCRSA16 s8, s3, a7<br> [0x80000228]:sw s8, 48(t1)<br>    |
|  14|[0x80002244]<br>0x00077FC0|- rs1 : x7<br> - rs2 : x24<br> - rd : x4<br> - rs2_h1_val == 65407<br> - rs2_h0_val == 2<br> - rs1_h1_val == 16<br> - rs1_h0_val == 2<br>                                                                                                                                             |[0x8000023c]:URCRSA16 tp, t2, s8<br> [0x80000240]:sw tp, 52(t1)<br>    |
|  15|[0x80002248]<br>0x0001FFDE|- rs1 : x26<br> - rs2 : x1<br> - rd : x8<br> - rs2_h1_val == 65471<br> - rs1_h0_val == 65534<br>                                                                                                                                                                                      |[0x80000254]:URCRSA16 fp, s10, ra<br> [0x80000258]:sw fp, 56(t1)<br>   |
|  16|[0x8000224c]<br>0xE007FFCF|- rs1 : x5<br> - rs2 : x14<br> - rd : x30<br> - rs2_h1_val == 65503<br> - rs2_h0_val == 16384<br> - rs1_h0_val == 65471<br>                                                                                                                                                           |[0x80000268]:URCRSA16 t5, t0, a4<br> [0x8000026c]:sw t5, 60(t1)<br>    |
|  17|[0x80002250]<br>0x0FF9FFE7|- rs1 : x11<br> - rs2 : x19<br> - rd : x26<br> - rs2_h1_val == 65519<br> - rs1_h1_val == 8192<br> - rs1_h0_val == 65503<br>                                                                                                                                                           |[0x80000288]:URCRSA16 s10, a1, s3<br> [0x8000028c]:sw s10, 0(sp)<br>   |
|  18|[0x80002254]<br>0x3FFFFFDB|- rs1 : x8<br> - rs2 : x3<br> - rd : x13<br> - rs2_h1_val == 65527<br> - rs1_h1_val == 32768<br>                                                                                                                                                                                      |[0x800002a0]:URCRSA16 a3, fp, gp<br> [0x800002a4]:sw a3, 4(sp)<br>     |
|  19|[0x80002258]<br>0x3FFD81FD|- rs1 : x1<br> - rs2 : x28<br> - rd : x11<br> - rs2_h1_val == 65531<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                      |[0x800002b8]:URCRSA16 a1, ra, t3<br> [0x800002bc]:sw a1, 8(sp)<br>     |
|  20|[0x8000225c]<br>0x000E8006|- rs1 : x22<br> - rs2 : x23<br> - rd : x12<br> - rs2_h1_val == 65533<br> - rs1_h1_val == 32<br> - rs1_h0_val == 16<br>                                                                                                                                                                |[0x800002d0]:URCRSA16 a2, s6, s7<br> [0x800002d4]:sw a2, 12(sp)<br>    |
|  21|[0x80002260]<br>0x0078803F|- rs1 : x6<br> - rs2 : x4<br> - rd : x14<br> - rs2_h1_val == 65534<br> - rs2_h0_val == 65279<br> - rs1_h1_val == 65519<br> - rs1_h0_val == 128<br>                                                                                                                                    |[0x800002e8]:URCRSA16 a4, t1, tp<br> [0x800002ec]:sw a4, 16(sp)<br>    |
|  22|[0x80002264]<br>0x3FFDBEFF|- rs1 : x30<br> - rs2 : x13<br> - rd : x27<br> - rs2_h1_val == 32768<br> - rs2_h0_val == 32768<br> - rs1_h0_val == 65023<br>                                                                                                                                                          |[0x800002fc]:URCRSA16 s11, t5, a3<br> [0x80000300]:sw s11, 20(sp)<br>  |
|  23|[0x80002268]<br>0x00202003|- rs1 : x13<br> - rs2 : x6<br> - rd : x9<br> - rs2_h1_val == 16384<br> - rs2_h0_val == 65407<br>                                                                                                                                                                                      |[0x80000314]:URCRSA16 s1, a3, t1<br> [0x80000318]:sw s1, 24(sp)<br>    |
|  24|[0x8000226c]<br>0x3F801002|- rs1 : x14<br> - rs2 : x11<br> - rd : x29<br> - rs2_h1_val == 8192<br> - rs2_h0_val == 32767<br> - rs1_h1_val == 65279<br>                                                                                                                                                           |[0x8000032c]:URCRSA16 t4, a4, a1<br> [0x80000330]:sw t4, 28(sp)<br>    |
|  25|[0x80002270]<br>0xFFFF67FF|- rs1 : x23<br> - rs2 : x8<br> - rd : x6<br> - rs2_h1_val == 4096<br> - rs2_h0_val == 8<br> - rs1_h0_val == 49151<br>                                                                                                                                                                 |[0x80000344]:URCRSA16 t1, s7, fp<br> [0x80000348]:sw t1, 32(sp)<br>    |
|  26|[0x80002274]<br>0x01F043FF|- rs1 : x28<br> - rs2 : x20<br> - rd : x7<br> - rs2_h1_val == 2048<br> - rs1_h1_val == 65503<br>                                                                                                                                                                                      |[0x8000035c]:URCRSA16 t2, t3, s4<br> [0x80000360]:sw t2, 36(sp)<br>    |
|  27|[0x80002278]<br>0x0000817F|- rs1 : x24<br> - rs2 : x18<br> - rd : x25<br> - rs2_h1_val == 1024<br> - rs1_h0_val == 65279<br>                                                                                                                                                                                     |[0x80000374]:URCRSA16 s9, s8, s2<br> [0x80000378]:sw s9, 40(sp)<br>    |
|  28|[0x8000227c]<br>0xC0020100|- rs1 : x4<br> - rs2 : x26<br> - rd : x22<br> - rs1_h0_val == 0<br> - rs2_h1_val == 512<br> - rs2_h0_val == 65531<br>                                                                                                                                                                 |[0x80000388]:URCRSA16 s6, tp, s10<br> [0x8000038c]:sw s6, 44(sp)<br>   |
|  29|[0x80002280]<br>0xF8000080|- rs1 : x0<br> - rs2 : x30<br> - rd : x10<br> - rs2_h1_val == 256<br> - rs2_h0_val == 4096<br> - rs1_h1_val == 0<br>                                                                                                                                                                  |[0x8000039c]:URCRSA16 a0, zero, t5<br> [0x800003a0]:sw a0, 48(sp)<br>  |
|  30|[0x80002284]<br>0xFFC30060|- rs1 : x16<br> - rs2 : x9<br> - rd : x19<br> - rs2_h1_val == 128<br> - rs2_h0_val == 128<br> - rs1_h0_val == 64<br>                                                                                                                                                                  |[0x800003b4]:URCRSA16 s3, a6, s1<br> [0x800003b8]:sw s3, 52(sp)<br>    |
|  31|[0x80002288]<br>0x90100820|- rs1 : x29<br> - rs2 : x12<br> - rd : x16<br> - rs2_h1_val == 64<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                        |[0x800003c8]:URCRSA16 a6, t4, a2<br> [0x800003cc]:sw a6, 56(sp)<br>    |
|  32|[0x8000228c]<br>0xF8018002|- rs1 : x31<br> - rs2 : x29<br> - rd : x1<br> - rs1_h1_val == 2<br> - rs1_h0_val == 65531<br>                                                                                                                                                                                         |[0x800003dc]:URCRSA16 ra, t6, t4<br> [0x800003e0]:sw ra, 60(sp)<br>    |
|  33|[0x80002290]<br>0x80078000|- rs1_h0_val == 65533<br>                                                                                                                                                                                                                                                             |[0x800003f4]:URCRSA16 t6, t5, t4<br> [0x800003f8]:sw t6, 64(sp)<br>    |
|  34|[0x80002294]<br>0x7DBF4005|- rs1_h1_val == 64511<br> - rs1_h0_val == 32768<br>                                                                                                                                                                                                                                   |[0x80000408]:URCRSA16 t6, t5, t4<br> [0x8000040c]:sw t6, 68(sp)<br>    |
|  35|[0x80002298]<br>0x80091007|- rs2_h0_val == 65533<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                    |[0x8000041c]:URCRSA16 t6, t5, t4<br> [0x80000420]:sw t6, 72(sp)<br>    |
|  36|[0x8000229c]<br>0xFFFD83FF|- rs1_h1_val == 1<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                        |[0x80000434]:URCRSA16 t6, t5, t4<br> [0x80000438]:sw t6, 76(sp)<br>    |
|  37|[0x800022a0]<br>0x80080280|- rs1_h0_val == 256<br>                                                                                                                                                                                                                                                               |[0x8000044c]:URCRSA16 t6, t5, t4<br> [0x80000450]:sw t6, 80(sp)<br>    |
|  38|[0x800022a4]<br>0xFE000015|- rs2_h1_val == 32<br> - rs2_h0_val == 2048<br> - rs1_h1_val == 1024<br>                                                                                                                                                                                                              |[0x80000464]:URCRSA16 t6, t5, t4<br> [0x80000468]:sw t6, 84(sp)<br>    |
|  39|[0x800022a8]<br>0x00E00018|- rs2_h1_val == 16<br> - rs2_h0_val == 64<br> - rs1_h1_val == 512<br>                                                                                                                                                                                                                 |[0x8000047c]:URCRSA16 t6, t5, t4<br> [0x80000480]:sw t6, 88(sp)<br>    |
|  40|[0x800022ac]<br>0x7FE77FC3|- rs2_h1_val == 8<br> - rs1_h0_val == 65407<br>                                                                                                                                                                                                                                       |[0x80000494]:URCRSA16 t6, t5, t4<br> [0x80000498]:sw t6, 92(sp)<br>    |
|  41|[0x800022b0]<br>0x03F94001|- rs2_h1_val == 4<br> - rs1_h1_val == 2048<br>                                                                                                                                                                                                                                        |[0x800004ac]:URCRSA16 t6, t5, t4<br> [0x800004b0]:sw t6, 96(sp)<br>    |
|  42|[0x800022b4]<br>0x3FFE0201|- rs2_h1_val == 2<br> - rs1_h1_val == 65533<br>                                                                                                                                                                                                                                       |[0x800004c0]:URCRSA16 t6, t5, t4<br> [0x800004c4]:sw t6, 100(sp)<br>   |
|  43|[0x800022b8]<br>0x82080004|- rs2_h1_val == 1<br>                                                                                                                                                                                                                                                                 |[0x800004d8]:URCRSA16 t6, t5, t4<br> [0x800004dc]:sw t6, 104(sp)<br>   |
|  44|[0x800022bc]<br>0x8030D554|- rs2_h1_val == 65535<br> - rs2_h0_val == 65471<br> - rs1_h0_val == 43690<br>                                                                                                                                                                                                         |[0x800004ec]:URCRSA16 t6, t5, t4<br> [0x800004f0]:sw t6, 108(sp)<br>   |
|  45|[0x800022c4]<br>0xAAAD4007|- rs2_h0_val == 43690<br>                                                                                                                                                                                                                                                             |[0x80000518]:URCRSA16 t6, t5, t4<br> [0x8000051c]:sw t6, 116(sp)<br>   |
|  46|[0x800022c8]<br>0x1C008007|- rs2_h0_val == 49151<br> - rs1_h1_val == 63487<br>                                                                                                                                                                                                                                   |[0x80000530]:URCRSA16 t6, t5, t4<br> [0x80000534]:sw t6, 120(sp)<br>   |
|  47|[0x800022cc]<br>0x07FE0100|- rs2_h0_val == 61439<br>                                                                                                                                                                                                                                                             |[0x80000548]:URCRSA16 t6, t5, t4<br> [0x8000054c]:sw t6, 124(sp)<br>   |
|  48|[0x800022d0]<br>0x7CFF7F03|- rs2_h0_val == 1024<br> - rs1_h1_val == 65023<br>                                                                                                                                                                                                                                    |[0x80000560]:URCRSA16 t6, t5, t4<br> [0x80000564]:sw t6, 128(sp)<br>   |
|  49|[0x800022d4]<br>0xFF000020|- rs2_h0_val == 512<br>                                                                                                                                                                                                                                                               |[0x80000574]:URCRSA16 t6, t5, t4<br> [0x80000578]:sw t6, 132(sp)<br>   |
|  50|[0x800022d8]<br>0x0F800007|- rs2_h0_val == 256<br>                                                                                                                                                                                                                                                               |[0x8000058c]:URCRSA16 t6, t5, t4<br> [0x80000590]:sw t6, 136(sp)<br>   |
|  51|[0x800022e0]<br>0xD5560007|- rs1_h1_val == 43690<br>                                                                                                                                                                                                                                                             |[0x800005b8]:URCRSA16 t6, t5, t4<br> [0x800005bc]:sw t6, 144(sp)<br>   |
|  52|[0x800022e4]<br>0xEAAA7F82|- rs1_h1_val == 21845<br>                                                                                                                                                                                                                                                             |[0x800005cc]:URCRSA16 t6, t5, t4<br> [0x800005d0]:sw t6, 148(sp)<br>   |
|  53|[0x800022e8]<br>0xE0047FFF|- rs1_h1_val == 49151<br>                                                                                                                                                                                                                                                             |[0x800005e0]:URCRSA16 t6, t5, t4<br> [0x800005e4]:sw t6, 152(sp)<br>   |
|  54|[0x800022ec]<br>0x73FF6002|- rs1_h1_val == 61439<br>                                                                                                                                                                                                                                                             |[0x800005f8]:URCRSA16 t6, t5, t4<br> [0x800005fc]:sw t6, 156(sp)<br>   |
|  55|[0x800022f0]<br>0x7FAF0081|- rs1_h1_val == 65407<br>                                                                                                                                                                                                                                                             |[0x80000610]:URCRSA16 t6, t5, t4<br> [0x80000614]:sw t6, 160(sp)<br>   |
|  56|[0x800022f4]<br>0x7FBB77FF|- rs1_h1_val == 65527<br> - rs1_h0_val == 61439<br>                                                                                                                                                                                                                                   |[0x80000624]:URCRSA16 t6, t5, t4<br> [0x80000628]:sw t6, 164(sp)<br>   |
|  57|[0x800022f8]<br>0x77FF8005|- rs1_h1_val == 65534<br>                                                                                                                                                                                                                                                             |[0x80000638]:URCRSA16 t6, t5, t4<br> [0x8000063c]:sw t6, 168(sp)<br>   |
|  58|[0x800022fc]<br>0x1FE05565|- rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                             |[0x80000650]:URCRSA16 t6, t5, t4<br> [0x80000654]:sw t6, 172(sp)<br>   |
|  59|[0x80002300]<br>0x00000006|- rs1_h1_val == 4096<br>                                                                                                                                                                                                                                                              |[0x80000664]:URCRSA16 t6, t5, t4<br> [0x80000668]:sw t6, 176(sp)<br>   |
|  60|[0x80002304]<br>0x007FFFF6|- rs1_h1_val == 256<br>                                                                                                                                                                                                                                                               |[0x8000067c]:URCRSA16 t6, t5, t4<br> [0x80000680]:sw t6, 180(sp)<br>   |
|  61|[0x80002308]<br>0x001F2AAA|- rs1_h1_val == 64<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                      |[0x80000690]:URCRSA16 t6, t5, t4<br> [0x80000694]:sw t6, 184(sp)<br>   |
|  62|[0x8000230c]<br>0x84100009|- rs2_h0_val == 63487<br>                                                                                                                                                                                                                                                             |[0x800006a8]:URCRSA16 t6, t5, t4<br> [0x800006ac]:sw t6, 188(sp)<br>   |
|  63|[0x80002310]<br>0x0040FFFA|- rs1_h1_val == 65535<br>                                                                                                                                                                                                                                                             |[0x800006bc]:URCRSA16 t6, t5, t4<br> [0x800006c0]:sw t6, 192(sp)<br>   |
|  64|[0x80002318]<br>0x81100010|- rs2_h0_val == 65023<br>                                                                                                                                                                                                                                                             |[0x800006e8]:URCRSA16 t6, t5, t4<br> [0x800006ec]:sw t6, 200(sp)<br>   |
|  65|[0x8000231c]<br>0xE01085FF|- rs2_h0_val == 65503<br> - rs1_h0_val == 64511<br>                                                                                                                                                                                                                                   |[0x80000700]:URCRSA16 t6, t5, t4<br> [0x80000704]:sw t6, 204(sp)<br>   |
|  66|[0x80002320]<br>0xFF00EBFF|- rs1_h0_val == 57343<br>                                                                                                                                                                                                                                                             |[0x80000718]:URCRSA16 t6, t5, t4<br> [0x8000071c]:sw t6, 208(sp)<br>   |
|  67|[0x80002324]<br>0x800DFFFC|- rs2_h0_val == 65519<br>                                                                                                                                                                                                                                                             |[0x80000730]:URCRSA16 t6, t5, t4<br> [0x80000734]:sw t6, 212(sp)<br>   |
|  68|[0x80002328]<br>0xFFFE0011|- rs2_h0_val == 65534<br>                                                                                                                                                                                                                                                             |[0x80000748]:URCRSA16 t6, t5, t4<br> [0x8000074c]:sw t6, 216(sp)<br>   |
|  69|[0x8000232c]<br>0xF007801E|- rs2_h0_val == 8192<br>                                                                                                                                                                                                                                                              |[0x8000075c]:URCRSA16 t6, t5, t4<br> [0x80000760]:sw t6, 220(sp)<br>   |
|  70|[0x80002330]<br>0x7FD67FFA|- rs1_h0_val == 65519<br>                                                                                                                                                                                                                                                             |[0x80000774]:URCRSA16 t6, t5, t4<br> [0x80000778]:sw t6, 224(sp)<br>   |
|  71|[0x80002334]<br>0xFFF8BBFF|- rs2_h1_val == 32767<br> - rs1_h0_val == 63487<br>                                                                                                                                                                                                                                   |[0x8000078c]:URCRSA16 t6, t5, t4<br> [0x80000790]:sw t6, 228(sp)<br>   |
