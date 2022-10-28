
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000850')]      |
| SIG_REGION                | [('0x80002210', '0x800023a0', '100 words')]      |
| COV_LABELS                | raddw      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/raddw-01.S    |
| Total Number of coverpoints| 244     |
| Total Coverpoints Hit     | 238      |
| Total Signature Updates   | 99      |
| STAT1                     | 95      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000624]:RADDW t6, t5, t4
      [0x80000628]:sw t6, 160(ra)
 -- Signature Address: 0x80002324 Data: 0xB5555555
 -- Redundant Coverpoints hit by the op
      - opcode : raddw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val == -1431655766




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000080c]:RADDW t6, t5, t4
      [0x80000810]:sw t6, 264(ra)
 -- Signature Address: 0x8000238c Data: 0xC0000100
 -- Redundant Coverpoints hit by the op
      - opcode : raddw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val == -2147483648
      - rs2_w0_val == 512




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000824]:RADDW t6, t5, t4
      [0x80000828]:sw t6, 268(ra)
 -- Signature Address: 0x80002390 Data: 0xD5155554
 -- Redundant Coverpoints hit by the op
      - opcode : raddw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == -1431655766
      - rs1_w0_val == -8388609




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000848]:RADDW t6, t5, t4
      [0x8000084c]:sw t6, 276(ra)
 -- Signature Address: 0x80002398 Data: 0xFFFFFFDC
 -- Redundant Coverpoints hit by the op
      - opcode : raddw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == -65






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

|s.no|        signature         |                                                                       coverpoints                                                                       |                                code                                 |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000200|- opcode : raddw<br> - rs1 : x23<br> - rs2 : x23<br> - rd : x23<br> - rs1 == rs2 == rd<br> - rs2_w0_val == 512<br> - rs1_w0_val == 512<br>               |[0x80000108]:RADDW s7, s7, s7<br> [0x8000010c]:sw s7, 0(t1)<br>      |
|   2|[0x80002214]<br>0xAAAAAAAA|- rs1 : x15<br> - rs2 : x15<br> - rd : x14<br> - rs1 == rs2 != rd<br> - rs2_w0_val == -1431655766<br> - rs1_w0_val == -1431655766<br>                    |[0x80000120]:RADDW a4, a5, a5<br> [0x80000124]:sw a4, 4(t1)<br>      |
|   3|[0x80002218]<br>0x22AAAAAA|- rs1 : x11<br> - rs2 : x4<br> - rd : x2<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_w0_val == 1431655765<br> - rs1_w0_val == -268435457<br> |[0x80000138]:RADDW sp, a1, tp<br> [0x8000013c]:sw sp, 8(t1)<br>      |
|   4|[0x8000221c]<br>0x400000FF|- rs1 : x2<br> - rs2 : x28<br> - rd : x28<br> - rs2 == rd != rs1<br> - rs2_w0_val == 2147483647<br>                                                      |[0x8000014c]:RADDW t3, sp, t3<br> [0x80000150]:sw t3, 12(t1)<br>     |
|   5|[0x80002220]<br>0xCFFFFFFF|- rs1 : x13<br> - rs2 : x24<br> - rd : x13<br> - rs1 == rd != rs2<br> - rs2_w0_val == -1073741825<br> - rs1_w0_val == -536870913<br>                     |[0x80000164]:RADDW a3, a3, s8<br> [0x80000168]:sw a3, 16(t1)<br>     |
|   6|[0x80002224]<br>0xF03FFFFF|- rs1 : x24<br> - rs2 : x21<br> - rd : x20<br> - rs2_w0_val == -536870913<br> - rs1_w0_val == 8388608<br>                                                |[0x80000178]:RADDW s4, s8, s5<br> [0x8000017c]:sw s4, 20(t1)<br>     |
|   7|[0x80002228]<br>0xF8000000|- rs1 : x16<br> - rs2 : x20<br> - rd : x10<br> - rs2_w0_val == -268435457<br> - rs1_w0_val == 1<br>                                                      |[0x8000018c]:RADDW a0, a6, s4<br> [0x80000190]:sw a0, 24(t1)<br>     |
|   8|[0x8000222c]<br>0xDBFFFFFF|- rs1 : x26<br> - rs2 : x2<br> - rd : x18<br> - rs2_w0_val == -134217729<br> - rs1_w0_val == -1073741825<br>                                             |[0x800001a4]:RADDW s2, s10, sp<br> [0x800001a8]:sw s2, 28(t1)<br>    |
|   9|[0x80002230]<br>0xF5FFFFFF|- rs1 : x1<br> - rs2 : x3<br> - rd : x4<br> - rs2_w0_val == -67108865<br>                                                                                |[0x800001bc]:RADDW tp, ra, gp<br> [0x800001c0]:sw tp, 32(t1)<br>     |
|  10|[0x80002234]<br>0xFEFFFDFF|- rs1 : x30<br> - rs2 : x17<br> - rd : x1<br> - rs2_w0_val == -33554433<br> - rs1_w0_val == -1025<br>                                                    |[0x800001d0]:RADDW ra, t5, a7<br> [0x800001d4]:sw ra, 36(t1)<br>     |
|  11|[0x80002238]<br>0xFFBFFFFF|- rs1 : x22<br> - rs2 : x12<br> - rd : x25<br> - rs2_w0_val == -16777217<br>                                                                             |[0x800001e4]:RADDW s9, s6, a2<br> [0x800001e8]:sw s9, 40(t1)<br>     |
|  12|[0x8000223c]<br>0x00000003|- rs1 : x5<br> - rs2 : x0<br> - rd : x27<br> - rs2_w0_val == 0<br>                                                                                       |[0x800001f8]:RADDW s11, t0, zero<br> [0x800001fc]:sw s11, 44(t1)<br> |
|  13|[0x80002240]<br>0xFFDFFFEF|- rs1 : x19<br> - rs2 : x8<br> - rd : x11<br> - rs2_w0_val == -4194305<br> - rs1_w0_val == -33<br>                                                       |[0x8000020c]:RADDW a1, s3, fp<br> [0x80000210]:sw a1, 48(t1)<br>     |
|  14|[0x80002244]<br>0xFFF00003|- rs1 : x21<br> - rs2 : x18<br> - rd : x5<br> - rs2_w0_val == -2097153<br> - rs1_w0_val == 8<br>                                                         |[0x80000220]:RADDW t0, s5, s2<br> [0x80000224]:sw t0, 52(t1)<br>     |
|  15|[0x80002248]<br>0xFFF83FFF|- rs1 : x12<br> - rs2 : x22<br> - rd : x9<br> - rs2_w0_val == -1048577<br> - rs1_w0_val == 32768<br>                                                     |[0x80000234]:RADDW s1, a2, s6<br> [0x80000238]:sw s1, 56(t1)<br>     |
|  16|[0x8000224c]<br>0xFFFBFFFF|- rs1 : x10<br> - rs2 : x30<br> - rd : x22<br> - rs2_w0_val == -524289<br> - rs1_w0_val == 0<br>                                                         |[0x80000250]:RADDW s6, a0, t5<br> [0x80000254]:sw s6, 0(sp)<br>      |
|  17|[0x80002250]<br>0xFFFE0000|- rs1 : x27<br> - rs2 : x7<br> - rd : x31<br> - rs2_w0_val == -262145<br> - rs1_w0_val == 2<br>                                                          |[0x80000264]:RADDW t6, s11, t2<br> [0x80000268]:sw t6, 4(sp)<br>     |
|  18|[0x80002254]<br>0xFFFF07FF|- rs1 : x8<br> - rs2 : x5<br> - rd : x15<br> - rs2_w0_val == -131073<br> - rs1_w0_val == 4096<br>                                                        |[0x80000278]:RADDW a5, fp, t0<br> [0x8000027c]:sw a5, 8(sp)<br>      |
|  19|[0x80002258]<br>0xFFFF7FFB|- rs1 : x29<br> - rs2 : x25<br> - rd : x21<br> - rs2_w0_val == -65537<br>                                                                                |[0x8000028c]:RADDW s5, t4, s9<br> [0x80000290]:sw s5, 12(sp)<br>     |
|  20|[0x8000225c]<br>0xFFFFAFFF|- rs1 : x7<br> - rs2 : x27<br> - rd : x3<br> - rs2_w0_val == -32769<br> - rs1_w0_val == -8193<br>                                                        |[0x800002a4]:RADDW gp, t2, s11<br> [0x800002a8]:sw gp, 16(sp)<br>    |
|  21|[0x80002260]<br>0xFFFFDFF7|- rs1 : x3<br> - rs2 : x16<br> - rd : x6<br> - rs2_w0_val == -16385<br> - rs1_w0_val == -17<br>                                                          |[0x800002b8]:RADDW t1, gp, a6<br> [0x800002bc]:sw t1, 20(sp)<br>     |
|  22|[0x80002264]<br>0xFFFFDFFF|- rs1 : x17<br> - rs2 : x19<br> - rd : x16<br> - rs2_w0_val == -8193<br>                                                                                 |[0x800002d0]:RADDW a6, a7, s3<br> [0x800002d4]:sw a6, 24(sp)<br>     |
|  23|[0x80002268]<br>0x000FF7FF|- rs1 : x14<br> - rs2 : x29<br> - rd : x12<br> - rs2_w0_val == -4097<br> - rs1_w0_val == 2097152<br>                                                     |[0x800002e4]:RADDW a2, a4, t4<br> [0x800002e8]:sw a2, 28(sp)<br>     |
|  24|[0x8000226c]<br>0xFFFFFBFD|- rs1 : x6<br> - rs2 : x1<br> - rd : x24<br> - rs2_w0_val == -2049<br>                                                                                   |[0x800002f8]:RADDW s8, t1, ra<br> [0x800002fc]:sw s8, 32(sp)<br>     |
|  25|[0x80002270]<br>0x3FFFFDFF|- rs1 : x28<br> - rs2 : x11<br> - rd : x19<br> - rs2_w0_val == -1025<br> - rs1_w0_val == 2147483647<br>                                                  |[0x8000030c]:RADDW s3, t3, a1<br> [0x80000310]:sw s3, 36(sp)<br>     |
|  26|[0x80002274]<br>0xFFFFFDFF|- rs1 : x9<br> - rs2 : x31<br> - rd : x29<br> - rs2_w0_val == -513<br> - rs1_w0_val == -513<br>                                                          |[0x8000031c]:RADDW t4, s1, t6<br> [0x80000320]:sw t4, 40(sp)<br>     |
|  27|[0x80002278]<br>0x00000000|- rs1 : x20<br> - rs2 : x9<br> - rd : x0<br> - rs2_w0_val == -257<br>                                                                                    |[0x80000330]:RADDW zero, s4, s1<br> [0x80000334]:sw zero, 44(sp)<br> |
|  28|[0x8000227c]<br>0x0001FFBF|- rs1 : x4<br> - rs2 : x6<br> - rd : x8<br> - rs2_w0_val == -129<br> - rs1_w0_val == 262144<br>                                                          |[0x80000340]:RADDW fp, tp, t1<br> [0x80000344]:sw fp, 48(sp)<br>     |
|  29|[0x80002280]<br>0xFFFFFFDF|- rs1 : x0<br> - rs2 : x13<br> - rd : x30<br> - rs2_w0_val == -65<br>                                                                                    |[0x80000350]:RADDW t5, zero, a3<br> [0x80000354]:sw t5, 52(sp)<br>   |
|  30|[0x80002284]<br>0xFFFFFFEF|- rs1 : x25<br> - rs2 : x14<br> - rd : x26<br> - rs2_w0_val == -33<br> - rs1_w0_val == -1<br>                                                            |[0x80000368]:RADDW s10, s9, a4<br> [0x8000036c]:sw s10, 0(ra)<br>    |
|  31|[0x80002288]<br>0xFFFFFFFB|- rs1 : x18<br> - rs2 : x26<br> - rd : x17<br> - rs2_w0_val == -17<br>                                                                                   |[0x80000378]:RADDW a7, s2, s10<br> [0x8000037c]:sw a7, 4(ra)<br>     |
|  32|[0x8000228c]<br>0x1FFFFFFB|- rs1 : x31<br> - rs2 : x10<br> - rd : x7<br> - rs2_w0_val == -9<br> - rs1_w0_val == 1073741824<br>                                                      |[0x80000388]:RADDW t2, t6, a0<br> [0x8000038c]:sw t2, 8(ra)<br>      |
|  33|[0x80002290]<br>0xFFFFFFFF|- rs2_w0_val == -5<br> - rs1_w0_val == 4<br>                                                                                                             |[0x80000398]:RADDW t6, t5, t4<br> [0x8000039c]:sw t6, 12(ra)<br>     |
|  34|[0x80002294]<br>0xBFFFFFFE|- rs1_w0_val == -2147483648<br> - rs2_w0_val == -3<br>                                                                                                   |[0x800003a8]:RADDW t6, t5, t4<br> [0x800003ac]:sw t6, 16(ra)<br>     |
|  35|[0x80002298]<br>0x001FFFFF|- rs2_w0_val == -2<br> - rs1_w0_val == 4194304<br>                                                                                                       |[0x800003b8]:RADDW t6, t5, t4<br> [0x800003bc]:sw t6, 20(ra)<br>     |
|  36|[0x8000229c]<br>0x9FFFFFFF|- rs2_w0_val == -2147483648<br>                                                                                                                          |[0x800003cc]:RADDW t6, t5, t4<br> [0x800003d0]:sw t6, 24(ra)<br>     |
|  37|[0x800022a0]<br>0x20000010|- rs2_w0_val == 1073741824<br> - rs1_w0_val == 32<br>                                                                                                    |[0x800003dc]:RADDW t6, t5, t4<br> [0x800003e0]:sw t6, 28(ra)<br>     |
|  38|[0x800022a4]<br>0x10100000|- rs2_w0_val == 536870912<br>                                                                                                                            |[0x800003ec]:RADDW t6, t5, t4<br> [0x800003f0]:sw t6, 32(ra)<br>     |
|  39|[0x800022a8]<br>0x07FFDFFF|- rs2_w0_val == 268435456<br> - rs1_w0_val == -16385<br>                                                                                                 |[0x80000400]:RADDW t6, t5, t4<br> [0x80000404]:sw t6, 36(ra)<br>     |
|  40|[0x800022ac]<br>0x04000080|- rs2_w0_val == 134217728<br> - rs1_w0_val == 256<br>                                                                                                    |[0x80000410]:RADDW t6, t5, t4<br> [0x80000414]:sw t6, 40(ra)<br>     |
|  41|[0x800022b0]<br>0x01FFFFFC|- rs2_w0_val == 67108864<br>                                                                                                                             |[0x80000420]:RADDW t6, t5, t4<br> [0x80000424]:sw t6, 44(ra)<br>     |
|  42|[0x800022b4]<br>0x03000000|- rs2_w0_val == 33554432<br> - rs1_w0_val == 67108864<br>                                                                                                |[0x80000430]:RADDW t6, t5, t4<br> [0x80000434]:sw t6, 48(ra)<br>     |
|  43|[0x800022b8]<br>0x007FBFFF|- rs2_w0_val == 16777216<br> - rs1_w0_val == -32769<br>                                                                                                  |[0x80000444]:RADDW t6, t5, t4<br> [0x80000448]:sw t6, 52(ra)<br>     |
|  44|[0x800022bc]<br>0x003FFFFE|- rs2_w0_val == 8388608<br>                                                                                                                              |[0x80000454]:RADDW t6, t5, t4<br> [0x80000458]:sw t6, 56(ra)<br>     |
|  45|[0x800022c0]<br>0xFFFFFF87|- rs1_w0_val == 16<br>                                                                                                                                   |[0x80000464]:RADDW t6, t5, t4<br> [0x80000468]:sw t6, 60(ra)<br>     |
|  46|[0x800022c4]<br>0x00280000|- rs2_w0_val == 4194304<br> - rs1_w0_val == 1048576<br>                                                                                                  |[0x80000474]:RADDW t6, t5, t4<br> [0x80000478]:sw t6, 64(ra)<br>     |
|  47|[0x800022c8]<br>0x00100020|- rs2_w0_val == 2097152<br> - rs1_w0_val == 64<br>                                                                                                       |[0x80000484]:RADDW t6, t5, t4<br> [0x80000488]:sw t6, 68(ra)<br>     |
|  48|[0x800022cc]<br>0x2AB2AAAA|- rs2_w0_val == 1048576<br> - rs1_w0_val == 1431655765<br>                                                                                               |[0x80000498]:RADDW t6, t5, t4<br> [0x8000049c]:sw t6, 72(ra)<br>     |
|  49|[0x800022d0]<br>0x00080000|- rs2_w0_val == 524288<br> - rs1_w0_val == 524288<br>                                                                                                    |[0x800004a8]:RADDW t6, t5, t4<br> [0x800004ac]:sw t6, 76(ra)<br>     |
|  50|[0x800022d4]<br>0x00120000|- rs2_w0_val == 262144<br>                                                                                                                               |[0x800004b8]:RADDW t6, t5, t4<br> [0x800004bc]:sw t6, 80(ra)<br>     |
|  51|[0x800022d8]<br>0x00010004|- rs2_w0_val == 131072<br>                                                                                                                               |[0x800004c8]:RADDW t6, t5, t4<br> [0x800004cc]:sw t6, 84(ra)<br>     |
|  52|[0x800022dc]<br>0x00007FFE|- rs2_w0_val == 65536<br> - rs1_w0_val == -3<br>                                                                                                         |[0x800004d8]:RADDW t6, t5, t4<br> [0x800004dc]:sw t6, 88(ra)<br>     |
|  53|[0x800022e0]<br>0xFE003FFF|- rs2_w0_val == 32768<br> - rs1_w0_val == -67108865<br>                                                                                                  |[0x800004ec]:RADDW t6, t5, t4<br> [0x800004f0]:sw t6, 92(ra)<br>     |
|  54|[0x800022e4]<br>0xFFE01FFF|- rs2_w0_val == 16384<br> - rs1_w0_val == -4194305<br>                                                                                                   |[0x80000500]:RADDW t6, t5, t4<br> [0x80000504]:sw t6, 96(ra)<br>     |
|  55|[0x800022e8]<br>0xFF800FFF|- rs2_w0_val == 8192<br> - rs1_w0_val == -16777217<br>                                                                                                   |[0x80000514]:RADDW t6, t5, t4<br> [0x80000518]:sw t6, 100(ra)<br>    |
|  56|[0x800022ec]<br>0x00000804|- rs2_w0_val == 4096<br>                                                                                                                                 |[0x80000524]:RADDW t6, t5, t4<br> [0x80000528]:sw t6, 104(ra)<br>    |
|  57|[0x800022f0]<br>0xFFE003FF|- rs2_w0_val == 2048<br>                                                                                                                                 |[0x8000053c]:RADDW t6, t5, t4<br> [0x80000540]:sw t6, 108(ra)<br>    |
|  58|[0x800022f4]<br>0x00000203|- rs2_w0_val == 1024<br>                                                                                                                                 |[0x8000054c]:RADDW t6, t5, t4<br> [0x80000550]:sw t6, 112(ra)<br>    |
|  59|[0x800022f8]<br>0x00000180|- rs2_w0_val == 256<br>                                                                                                                                  |[0x8000055c]:RADDW t6, t5, t4<br> [0x80000560]:sw t6, 116(ra)<br>    |
|  60|[0x800022fc]<br>0x00000041|- rs2_w0_val == 128<br>                                                                                                                                  |[0x8000056c]:RADDW t6, t5, t4<br> [0x80000570]:sw t6, 120(ra)<br>    |
|  61|[0x80002300]<br>0xFFFFFC1F|- rs2_w0_val == 64<br> - rs1_w0_val == -2049<br>                                                                                                         |[0x80000580]:RADDW t6, t5, t4<br> [0x80000584]:sw t6, 124(ra)<br>    |
|  62|[0x80002304]<br>0x00800010|- rs2_w0_val == 32<br> - rs1_w0_val == 16777216<br>                                                                                                      |[0x80000590]:RADDW t6, t5, t4<br> [0x80000594]:sw t6, 128(ra)<br>    |
|  63|[0x80002308]<br>0x20000007|- rs2_w0_val == 16<br>                                                                                                                                   |[0x800005a4]:RADDW t6, t5, t4<br> [0x800005a8]:sw t6, 132(ra)<br>    |
|  64|[0x8000230c]<br>0xFFFFE003|- rs2_w0_val == 8<br>                                                                                                                                    |[0x800005b8]:RADDW t6, t5, t4<br> [0x800005bc]:sw t6, 136(ra)<br>    |
|  65|[0x80002310]<br>0x00008002|- rs2_w0_val == 4<br> - rs1_w0_val == 65536<br>                                                                                                          |[0x800005c8]:RADDW t6, t5, t4<br> [0x800005cc]:sw t6, 140(ra)<br>    |
|  66|[0x80002314]<br>0x00000011|- rs2_w0_val == 2<br>                                                                                                                                    |[0x800005d8]:RADDW t6, t5, t4<br> [0x800005dc]:sw t6, 144(ra)<br>    |
|  67|[0x80002318]<br>0xFFFFE000|- rs2_w0_val == 1<br>                                                                                                                                    |[0x800005ec]:RADDW t6, t5, t4<br> [0x800005f0]:sw t6, 148(ra)<br>    |
|  68|[0x8000231c]<br>0xFFBFFFFF|- rs1_w0_val == -8388609<br>                                                                                                                             |[0x80000600]:RADDW t6, t5, t4<br> [0x80000604]:sw t6, 152(ra)<br>    |
|  69|[0x80002320]<br>0x007FFFFF|- rs2_w0_val == -1<br>                                                                                                                                   |[0x80000610]:RADDW t6, t5, t4<br> [0x80000614]:sw t6, 156(ra)<br>    |
|  70|[0x80002328]<br>0xFBFFFFBF|- rs1_w0_val == -134217729<br>                                                                                                                           |[0x80000638]:RADDW t6, t5, t4<br> [0x8000063c]:sw t6, 164(ra)<br>    |
|  71|[0x8000232c]<br>0xBEFFFFFF|- rs1_w0_val == -33554433<br>                                                                                                                            |[0x8000064c]:RADDW t6, t5, t4<br> [0x80000650]:sw t6, 168(ra)<br>    |
|  72|[0x80002330]<br>0xFFEFFF7F|- rs1_w0_val == -2097153<br>                                                                                                                             |[0x80000660]:RADDW t6, t5, t4<br> [0x80000664]:sw t6, 172(ra)<br>    |
|  73|[0x80002334]<br>0xFFF8FFFF|- rs1_w0_val == -1048577<br>                                                                                                                             |[0x80000674]:RADDW t6, t5, t4<br> [0x80000678]:sw t6, 176(ra)<br>    |
|  74|[0x80002338]<br>0x00FBFFFF|- rs1_w0_val == -524289<br>                                                                                                                              |[0x80000688]:RADDW t6, t5, t4<br> [0x8000068c]:sw t6, 180(ra)<br>    |
|  75|[0x8000233c]<br>0xFFEDFFFF|- rs1_w0_val == -262145<br>                                                                                                                              |[0x800006a0]:RADDW t6, t5, t4<br> [0x800006a4]:sw t6, 184(ra)<br>    |
|  76|[0x80002340]<br>0xFBFEFFFF|- rs1_w0_val == -131073<br>                                                                                                                              |[0x800006b8]:RADDW t6, t5, t4<br> [0x800006bc]:sw t6, 188(ra)<br>    |
|  77|[0x80002344]<br>0xFBFF7FFF|- rs1_w0_val == -65537<br>                                                                                                                               |[0x800006d0]:RADDW t6, t5, t4<br> [0x800006d4]:sw t6, 192(ra)<br>    |
|  78|[0x80002348]<br>0xFFFFF801|- rs1_w0_val == -4097<br>                                                                                                                                |[0x800006e4]:RADDW t6, t5, t4<br> [0x800006e8]:sw t6, 196(ra)<br>    |
|  79|[0x8000234c]<br>0xFFFFFF77|- rs1_w0_val == -257<br>                                                                                                                                 |[0x800006f4]:RADDW t6, t5, t4<br> [0x800006f8]:sw t6, 200(ra)<br>    |
|  80|[0x80002350]<br>0x000007DF|- rs1_w0_val == -65<br>                                                                                                                                  |[0x80000704]:RADDW t6, t5, t4<br> [0x80000708]:sw t6, 204(ra)<br>    |
|  81|[0x80002354]<br>0x1FFFFFFB|- rs1_w0_val == -9<br>                                                                                                                                   |[0x80000714]:RADDW t6, t5, t4<br> [0x80000718]:sw t6, 208(ra)<br>    |
|  82|[0x80002358]<br>0xFEFFFFFD|- rs1_w0_val == -5<br>                                                                                                                                   |[0x80000728]:RADDW t6, t5, t4<br> [0x8000072c]:sw t6, 212(ra)<br>    |
|  83|[0x8000235c]<br>0xFFFFFFFC|- rs1_w0_val == -2<br>                                                                                                                                   |[0x80000738]:RADDW t6, t5, t4<br> [0x8000073c]:sw t6, 216(ra)<br>    |
|  84|[0x80002360]<br>0x0FFFFFFB|- rs1_w0_val == 536870912<br>                                                                                                                            |[0x80000748]:RADDW t6, t5, t4<br> [0x8000074c]:sw t6, 220(ra)<br>    |
|  85|[0x80002364]<br>0x08010000|- rs1_w0_val == 268435456<br>                                                                                                                            |[0x80000758]:RADDW t6, t5, t4<br> [0x8000075c]:sw t6, 224(ra)<br>    |
|  86|[0x80002368]<br>0xE3FFFFFF|- rs1_w0_val == 134217728<br>                                                                                                                            |[0x8000076c]:RADDW t6, t5, t4<br> [0x80000770]:sw t6, 228(ra)<br>    |
|  87|[0x8000236c]<br>0xE0FFFFFF|- rs1_w0_val == 33554432<br>                                                                                                                             |[0x80000780]:RADDW t6, t5, t4<br> [0x80000784]:sw t6, 232(ra)<br>    |
|  88|[0x80002370]<br>0x00011000|- rs1_w0_val == 131072<br>                                                                                                                               |[0x80000790]:RADDW t6, t5, t4<br> [0x80000794]:sw t6, 236(ra)<br>    |
|  89|[0x80002374]<br>0xFFFFFFFF|- rs1_w0_val == 16384<br>                                                                                                                                |[0x800007a4]:RADDW t6, t5, t4<br> [0x800007a8]:sw t6, 240(ra)<br>    |
|  90|[0x80002378]<br>0x20001000|- rs1_w0_val == 8192<br>                                                                                                                                 |[0x800007b4]:RADDW t6, t5, t4<br> [0x800007b8]:sw t6, 244(ra)<br>    |
|  91|[0x8000237c]<br>0xFFF803FF|- rs1_w0_val == 2048<br>                                                                                                                                 |[0x800007cc]:RADDW t6, t5, t4<br> [0x800007d0]:sw t6, 248(ra)<br>    |
|  92|[0x80002380]<br>0x04000200|- rs1_w0_val == 1024<br>                                                                                                                                 |[0x800007dc]:RADDW t6, t5, t4<br> [0x800007e0]:sw t6, 252(ra)<br>    |
|  93|[0x80002384]<br>0x08000040|- rs1_w0_val == 128<br>                                                                                                                                  |[0x800007ec]:RADDW t6, t5, t4<br> [0x800007f0]:sw t6, 256(ra)<br>    |
|  94|[0x80002388]<br>0x00000FBF|- rs1_w0_val == -129<br>                                                                                                                                 |[0x800007fc]:RADDW t6, t5, t4<br> [0x80000800]:sw t6, 260(ra)<br>    |
|  95|[0x80002394]<br>0xFFC00002|- rs2_w0_val == -8388609<br>                                                                                                                             |[0x80000838]:RADDW t6, t5, t4<br> [0x8000083c]:sw t6, 272(ra)<br>    |
