
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000078', '0x800006e0')]      |
| SIG_REGION                | [('0x80002204', '0x8000236c', '90 words')]      |
| COV_LABELS                | sra      |
| TEST_NAME                 | /home/bilalsakhawat/riscof_work/src/sra-01.S/sra-01.S    |
| Total Number of coverpoints| 169     |
| Total Coverpoints Hit     | 163      |
| Total Signature Updates   | 90      |
| STAT1                     | 86      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005b0]:sra a2, a0, a1
      [0x800005b4]:sw a2, 248(sp)
 -- Signature Address: 0x8000232c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : sra
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val==0
      - rs2_val == 10
      - rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000698]:sra a2, a0, a1
      [0x8000069c]:sw a2, 296(sp)
 -- Signature Address: 0x8000235c Data: 0xFFFFFFFD
 -- Redundant Coverpoints hit by the op
      - opcode : sra
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 29
      - rs1_val==-1431655765
      - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006bc]:sra a2, a0, a1
      [0x800006c0]:sw a2, 304(sp)
 -- Signature Address: 0x80002364 Data: 0xFFFEFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : sra
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == -134217729
      - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006d0]:sra a2, a0, a1
      [0x800006d4]:sw a2, 308(sp)
 -- Signature Address: 0x80002368 Data: 0xFFFEFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : sra
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == -33554433
      - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen






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

|s.no|        signature         |                                                                                               coverpoints                                                                                                |                               code                               |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------|
|   1|[0x80002204]<br>0xAAAAAAAA|- opcode : sra<br> - rs1 : x11<br> - rs2 : x9<br> - rd : x12<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val < 0 and rs2_val == 0<br> - rs1_val==-1431655766<br> - rs1_val == -1431655766<br> |[0x8000008c]:sra a2, a1, s1<br> [0x80000090]:sw a2, 0(gp)<br>     |
|   2|[0x80002208]<br>0xFFFFFFEF|- rs1 : x8<br> - rs2 : x12<br> - rd : x8<br> - rs1 == rd != rs2<br> - rs2_val == 15<br> - rs1_val == -524289<br> - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen<br>                                     |[0x800000a0]:sra fp, fp, a2<br> [0x800000a4]:sw fp, 4(gp)<br>     |
|   3|[0x8000220c]<br>0x00000000|- rs1 : x10<br> - rs2 : x2<br> - rd : x2<br> - rs2 == rd != rs1<br> - rs2_val == 23<br> - rs1_val==3<br> - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen<br>                                             |[0x800000b0]:sra sp, a0, sp<br> [0x800000b4]:sw sp, 8(gp)<br>     |
|   4|[0x80002210]<br>0xFFFFFFFF|- rs1 : x6<br> - rs2 : x6<br> - rd : x4<br> - rs1 == rs2 != rd<br>                                                                                                                                        |[0x800000c0]:sra tp, t1, t1<br> [0x800000c4]:sw tp, 12(gp)<br>    |
|   5|[0x80002214]<br>0xFFF55555|- rs1 : x13<br> - rs2 : x13<br> - rd : x13<br> - rs1 == rs2 == rd<br> - rs1_val==-1431655765<br>                                                                                                          |[0x800000d8]:sra a3, a3, a3<br> [0x800000dc]:sw a3, 16(gp)<br>    |
|   6|[0x80002218]<br>0x00000000|- rs1 : x0<br> - rs2 : x10<br> - rd : x7<br> - rs2_val == 30<br> - rs1_val==0<br> - rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen<br>                                                                  |[0x800000e8]:sra t2, zero, a0<br> [0x800000ec]:sw t2, 20(gp)<br>  |
|   7|[0x8000221c]<br>0x000003FF|- rs1 : x1<br> - rs2 : x15<br> - rd : x14<br> - rs1_val == 2147483647<br> - rs2_val == 21<br> - rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen<br>                                        |[0x800000fc]:sra a4, ra, a5<br> [0x80000100]:sw a4, 24(gp)<br>    |
|   8|[0x80002220]<br>0xDFFFFFFF|- rs1 : x3<br> - rs2 : x7<br> - rd : x5<br> - rs1_val == -1073741825<br> - rs2_val == 1<br>                                                                                                               |[0x80000118]:sra t0, gp, t2<br> [0x8000011c]:sw t0, 0(tp)<br>     |
|   9|[0x80002224]<br>0xFFBFFFFF|- rs1 : x2<br> - rs2 : x8<br> - rd : x15<br> - rs1_val == -536870913<br>                                                                                                                                  |[0x8000012c]:sra a5, sp, fp<br> [0x80000130]:sw a5, 4(tp)<br>     |
|  10|[0x80002228]<br>0xFFF7FFFF|- rs1 : x7<br> - rs2 : x11<br> - rd : x1<br> - rs1_val == -268435457<br>                                                                                                                                  |[0x80000140]:sra ra, t2, a1<br> [0x80000144]:sw ra, 8(tp)<br>     |
|  11|[0x8000222c]<br>0xF7FFFFFF|- rs1 : x12<br> - rs2 : x0<br> - rd : x9<br> - rs1_val == -134217729<br>                                                                                                                                  |[0x80000154]:sra s1, a2, zero<br> [0x80000158]:sw s1, 12(tp)<br>  |
|  12|[0x80002230]<br>0xFFFFFFF7|- rs1 : x5<br> - rs2 : x14<br> - rd : x10<br> - rs1_val == -67108865<br>                                                                                                                                  |[0x80000168]:sra a0, t0, a4<br> [0x8000016c]:sw a0, 16(tp)<br>    |
|  13|[0x80002234]<br>0x00000000|- rs1 : x4<br> - rs2 : x5<br> - rd : x0<br> - rs1_val == -33554433<br>                                                                                                                                    |[0x80000184]:sra zero, tp, t0<br> [0x80000188]:sw zero, 0(sp)<br> |
|  14|[0x80002238]<br>0xFFFFFBFF|- rs1 : x15<br> - rs2 : x4<br> - rd : x3<br> - rs1_val == -16777217<br>                                                                                                                                   |[0x80000198]:sra gp, a5, tp<br> [0x8000019c]:sw gp, 4(sp)<br>     |
|  15|[0x8000223c]<br>0xFFFFFFBF|- rs1 : x9<br> - rs2 : x3<br> - rd : x11<br> - rs1_val == -8388609<br>                                                                                                                                    |[0x800001ac]:sra a1, s1, gp<br> [0x800001b0]:sw a1, 8(sp)<br>     |
|  16|[0x80002240]<br>0xFFFFFFFF|- rs1 : x14<br> - rs2 : x1<br> - rd : x6<br> - rs2_val == 27<br> - rs1_val == -4194305<br>                                                                                                                |[0x800001c0]:sra t1, a4, ra<br> [0x800001c4]:sw t1, 12(sp)<br>    |
|  17|[0x80002244]<br>0xFFFFFFBF|- rs1_val == -2097153<br>                                                                                                                                                                                 |[0x800001d4]:sra a2, a0, a1<br> [0x800001d8]:sw a2, 16(sp)<br>    |
|  18|[0x80002248]<br>0xFFFBFFFF|- rs1_val == -1048577<br> - rs2_val == 2<br>                                                                                                                                                              |[0x800001e8]:sra a2, a0, a1<br> [0x800001ec]:sw a2, 20(sp)<br>    |
|  19|[0x8000224c]<br>0xFFFFFDFF|- rs1_val == -262145<br>                                                                                                                                                                                  |[0x800001fc]:sra a2, a0, a1<br> [0x80000200]:sw a2, 24(sp)<br>    |
|  20|[0x80002250]<br>0xFFFFFFFF|- rs1_val == -131073<br>                                                                                                                                                                                  |[0x80000210]:sra a2, a0, a1<br> [0x80000214]:sw a2, 28(sp)<br>    |
|  21|[0x80002254]<br>0xFFFFFFFE|- rs1_val == -65537<br> - rs2_val == 16<br>                                                                                                                                                               |[0x80000224]:sra a2, a0, a1<br> [0x80000228]:sw a2, 32(sp)<br>    |
|  22|[0x80002258]<br>0xFFFFFFFF|- rs1_val == -32769<br>                                                                                                                                                                                   |[0x80000238]:sra a2, a0, a1<br> [0x8000023c]:sw a2, 36(sp)<br>    |
|  23|[0x8000225c]<br>0xFFFFEFFF|- rs1_val == -16385<br>                                                                                                                                                                                   |[0x8000024c]:sra a2, a0, a1<br> [0x80000250]:sw a2, 40(sp)<br>    |
|  24|[0x80002260]<br>0xFFFFFFFF|- rs1_val == -8193<br>                                                                                                                                                                                    |[0x80000260]:sra a2, a0, a1<br> [0x80000264]:sw a2, 44(sp)<br>    |
|  25|[0x80002264]<br>0xFFFFFFFF|- rs1_val == -4097<br>                                                                                                                                                                                    |[0x80000274]:sra a2, a0, a1<br> [0x80000278]:sw a2, 48(sp)<br>    |
|  26|[0x80002268]<br>0xFFFFFFFF|- rs1_val == -2049<br>                                                                                                                                                                                    |[0x80000288]:sra a2, a0, a1<br> [0x8000028c]:sw a2, 52(sp)<br>    |
|  27|[0x8000226c]<br>0xFFFFFFFF|- rs1_val == -1025<br>                                                                                                                                                                                    |[0x80000298]:sra a2, a0, a1<br> [0x8000029c]:sw a2, 56(sp)<br>    |
|  28|[0x80002270]<br>0xFFFFFFFF|- rs1_val == -513<br>                                                                                                                                                                                     |[0x800002a8]:sra a2, a0, a1<br> [0x800002ac]:sw a2, 60(sp)<br>    |
|  29|[0x80002274]<br>0xFFFFFFFF|- rs1_val == -257<br>                                                                                                                                                                                     |[0x800002b8]:sra a2, a0, a1<br> [0x800002bc]:sw a2, 64(sp)<br>    |
|  30|[0x80002278]<br>0xFFFFFFFD|- rs1_val == -129<br>                                                                                                                                                                                     |[0x800002c8]:sra a2, a0, a1<br> [0x800002cc]:sw a2, 68(sp)<br>    |
|  31|[0x8000227c]<br>0xFFFFFFFF|- rs2_val == 29<br> - rs1_val == -65<br>                                                                                                                                                                  |[0x800002d8]:sra a2, a0, a1<br> [0x800002dc]:sw a2, 72(sp)<br>    |
|  32|[0x80002280]<br>0xFFFFFFFF|- rs1_val == -33<br> - rs2_val == 8<br>                                                                                                                                                                   |[0x800002e8]:sra a2, a0, a1<br> [0x800002ec]:sw a2, 76(sp)<br>    |
|  33|[0x80002284]<br>0xFFFFFFFF|- rs1_val == -17<br>                                                                                                                                                                                      |[0x800002f8]:sra a2, a0, a1<br> [0x800002fc]:sw a2, 80(sp)<br>    |
|  34|[0x80002288]<br>0xFFFFFFFF|- rs1_val == -9<br>                                                                                                                                                                                       |[0x80000308]:sra a2, a0, a1<br> [0x8000030c]:sw a2, 84(sp)<br>    |
|  35|[0x8000228c]<br>0xFFFFFFFF|- rs1_val == -5<br>                                                                                                                                                                                       |[0x80000318]:sra a2, a0, a1<br> [0x8000031c]:sw a2, 88(sp)<br>    |
|  36|[0x80002290]<br>0xFFFFFFFF|- rs1_val == -3<br>                                                                                                                                                                                       |[0x80000328]:sra a2, a0, a1<br> [0x8000032c]:sw a2, 92(sp)<br>    |
|  37|[0x80002294]<br>0xFFFFFFFF|- rs1_val == -2<br>                                                                                                                                                                                       |[0x80000338]:sra a2, a0, a1<br> [0x8000033c]:sw a2, 96(sp)<br>    |
|  38|[0x80002298]<br>0x00000000|- rs2_val == 4<br> - rs1_val == 2<br> - rs1_val==2<br>                                                                                                                                                    |[0x80000348]:sra a2, a0, a1<br> [0x8000034c]:sw a2, 100(sp)<br>   |
|  39|[0x8000229c]<br>0xFFFFF000|- rs1_val == -2147483648<br> - rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen<br>                                                                                                          |[0x80000358]:sra a2, a0, a1<br> [0x8000035c]:sw a2, 104(sp)<br>   |
|  40|[0x800022a0]<br>0x00000008|- rs1_val == 1073741824<br>                                                                                                                                                                               |[0x80000368]:sra a2, a0, a1<br> [0x8000036c]:sw a2, 108(sp)<br>   |
|  41|[0x800022a4]<br>0x00100000|- rs1_val == 536870912<br>                                                                                                                                                                                |[0x80000378]:sra a2, a0, a1<br> [0x8000037c]:sw a2, 112(sp)<br>   |
|  42|[0x800022a8]<br>0x00020000|- rs1_val == 268435456<br>                                                                                                                                                                                |[0x80000388]:sra a2, a0, a1<br> [0x8000038c]:sw a2, 116(sp)<br>   |
|  43|[0x800022ac]<br>0x00000010|- rs1_val == 134217728<br>                                                                                                                                                                                |[0x80000398]:sra a2, a0, a1<br> [0x8000039c]:sw a2, 120(sp)<br>   |
|  44|[0x800022b0]<br>0x00004000|- rs1_val == 67108864<br>                                                                                                                                                                                 |[0x800003a8]:sra a2, a0, a1<br> [0x800003ac]:sw a2, 124(sp)<br>   |
|  45|[0x800022b4]<br>0x00000100|- rs1_val == 33554432<br>                                                                                                                                                                                 |[0x800003b8]:sra a2, a0, a1<br> [0x800003bc]:sw a2, 128(sp)<br>   |
|  46|[0x800022b8]<br>0x00000080|- rs1_val == 16777216<br>                                                                                                                                                                                 |[0x800003c8]:sra a2, a0, a1<br> [0x800003cc]:sw a2, 132(sp)<br>   |
|  47|[0x800022bc]<br>0x00800000|- rs1_val == 8388608<br> - rs1_val > 0 and rs2_val == 0<br>                                                                                                                                               |[0x800003d8]:sra a2, a0, a1<br> [0x800003dc]:sw a2, 136(sp)<br>   |
|  48|[0x800022c0]<br>0x00000800|- rs1_val == 4194304<br>                                                                                                                                                                                  |[0x800003e8]:sra a2, a0, a1<br> [0x800003ec]:sw a2, 140(sp)<br>   |
|  49|[0x800022c4]<br>0x00001000|- rs1_val == 2097152<br>                                                                                                                                                                                  |[0x800003f8]:sra a2, a0, a1<br> [0x800003fc]:sw a2, 144(sp)<br>   |
|  50|[0x800022c8]<br>0x00080000|- rs1_val == 1048576<br>                                                                                                                                                                                  |[0x80000408]:sra a2, a0, a1<br> [0x8000040c]:sw a2, 148(sp)<br>   |
|  51|[0x800022cc]<br>0x00000200|- rs1_val == 524288<br> - rs2_val == 10<br>                                                                                                                                                               |[0x80000418]:sra a2, a0, a1<br> [0x8000041c]:sw a2, 152(sp)<br>   |
|  52|[0x800022d0]<br>0x00000000|- rs1_val == 262144<br>                                                                                                                                                                                   |[0x80000428]:sra a2, a0, a1<br> [0x8000042c]:sw a2, 156(sp)<br>   |
|  53|[0x800022d4]<br>0x00000040|- rs1_val == 131072<br>                                                                                                                                                                                   |[0x80000438]:sra a2, a0, a1<br> [0x8000043c]:sw a2, 160(sp)<br>   |
|  54|[0x800022d8]<br>0x00000040|- rs1_val == 65536<br>                                                                                                                                                                                    |[0x80000448]:sra a2, a0, a1<br> [0x8000044c]:sw a2, 164(sp)<br>   |
|  55|[0x800022dc]<br>0x00000000|- rs1_val == 32768<br>                                                                                                                                                                                    |[0x80000458]:sra a2, a0, a1<br> [0x8000045c]:sw a2, 168(sp)<br>   |
|  56|[0x800022e0]<br>0x00000000|- rs1_val == 8192<br>                                                                                                                                                                                     |[0x80000468]:sra a2, a0, a1<br> [0x8000046c]:sw a2, 172(sp)<br>   |
|  57|[0x800022e4]<br>0x00000000|- rs1_val == 4096<br>                                                                                                                                                                                     |[0x80000478]:sra a2, a0, a1<br> [0x8000047c]:sw a2, 176(sp)<br>   |
|  58|[0x800022e8]<br>0x00000008|- rs1_val == 2048<br>                                                                                                                                                                                     |[0x8000048c]:sra a2, a0, a1<br> [0x80000490]:sw a2, 180(sp)<br>   |
|  59|[0x800022ec]<br>0x00000020|- rs1_val == 1024<br>                                                                                                                                                                                     |[0x8000049c]:sra a2, a0, a1<br> [0x800004a0]:sw a2, 184(sp)<br>   |
|  60|[0x800022f0]<br>0x00000000|- rs1_val == 512<br>                                                                                                                                                                                      |[0x800004ac]:sra a2, a0, a1<br> [0x800004b0]:sw a2, 188(sp)<br>   |
|  61|[0x800022f4]<br>0x00000000|- rs1_val == 256<br>                                                                                                                                                                                      |[0x800004bc]:sra a2, a0, a1<br> [0x800004c0]:sw a2, 192(sp)<br>   |
|  62|[0x800022f8]<br>0x00000010|- rs1_val == 128<br>                                                                                                                                                                                      |[0x800004cc]:sra a2, a0, a1<br> [0x800004d0]:sw a2, 196(sp)<br>   |
|  63|[0x800022fc]<br>0x00000002|- rs1_val == 64<br>                                                                                                                                                                                       |[0x800004dc]:sra a2, a0, a1<br> [0x800004e0]:sw a2, 200(sp)<br>   |
|  64|[0x80002300]<br>0x00000001|- rs1_val == 32<br>                                                                                                                                                                                       |[0x800004ec]:sra a2, a0, a1<br> [0x800004f0]:sw a2, 204(sp)<br>   |
|  65|[0x80002304]<br>0x00000000|- rs1_val == 16<br>                                                                                                                                                                                       |[0x800004fc]:sra a2, a0, a1<br> [0x80000500]:sw a2, 208(sp)<br>   |
|  66|[0x80002308]<br>0x00000001|- rs1_val == 8<br>                                                                                                                                                                                        |[0x8000050c]:sra a2, a0, a1<br> [0x80000510]:sw a2, 212(sp)<br>   |
|  67|[0x8000230c]<br>0x00000000|- rs1_val == 4<br> - rs1_val==4<br>                                                                                                                                                                       |[0x8000051c]:sra a2, a0, a1<br> [0x80000520]:sw a2, 216(sp)<br>   |
|  68|[0x80002310]<br>0x00000000|- rs1_val == 1<br> - rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen<br>                                                                                                                                 |[0x8000052c]:sra a2, a0, a1<br> [0x80000530]:sw a2, 220(sp)<br>   |
|  69|[0x80002314]<br>0x00000000|- rs1_val==46341<br>                                                                                                                                                                                      |[0x80000540]:sra a2, a0, a1<br> [0x80000544]:sw a2, 224(sp)<br>   |
|  70|[0x80002318]<br>0xFFFFFF4A|- rs1_val==-46339<br>                                                                                                                                                                                     |[0x80000554]:sra a2, a0, a1<br> [0x80000558]:sw a2, 228(sp)<br>   |
|  71|[0x8000231c]<br>0x00006666|- rs1_val==1717986919<br>                                                                                                                                                                                 |[0x80000568]:sra a2, a0, a1<br> [0x8000056c]:sw a2, 232(sp)<br>   |
|  72|[0x80002320]<br>0x000CCCCC|- rs1_val==858993460<br>                                                                                                                                                                                  |[0x8000057c]:sra a2, a0, a1<br> [0x80000580]:sw a2, 236(sp)<br>   |
|  73|[0x80002324]<br>0x00000000|- rs1_val==6<br>                                                                                                                                                                                          |[0x8000058c]:sra a2, a0, a1<br> [0x80000590]:sw a2, 240(sp)<br>   |
|  74|[0x80002328]<br>0x000002AA|- rs1_val==1431655765<br> - rs1_val == 1431655765<br>                                                                                                                                                     |[0x800005a0]:sra a2, a0, a1<br> [0x800005a4]:sw a2, 244(sp)<br>   |
|  75|[0x80002330]<br>0x00000000|- rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen<br>                                                                                                                                               |[0x800005c0]:sra a2, a0, a1<br> [0x800005c4]:sw a2, 252(sp)<br>   |
|  76|[0x80002334]<br>0x00000AAA|- rs1_val==1431655766<br>                                                                                                                                                                                 |[0x800005d4]:sra a2, a0, a1<br> [0x800005d8]:sw a2, 256(sp)<br>   |
|  77|[0x80002338]<br>0x0000016A|- rs1_val==46339<br>                                                                                                                                                                                      |[0x800005e8]:sra a2, a0, a1<br> [0x800005ec]:sw a2, 260(sp)<br>   |
|  78|[0x8000233c]<br>0x0000000C|- rs1_val==1717986917<br>                                                                                                                                                                                 |[0x800005fc]:sra a2, a0, a1<br> [0x80000600]:sw a2, 264(sp)<br>   |
|  79|[0x80002340]<br>0x00000199|- rs1_val==858993458<br>                                                                                                                                                                                  |[0x80000610]:sra a2, a0, a1<br> [0x80000614]:sw a2, 268(sp)<br>   |
|  80|[0x80002344]<br>0x00AAAAAA|- rs1_val==1431655764<br>                                                                                                                                                                                 |[0x80000624]:sra a2, a0, a1<br> [0x80000628]:sw a2, 272(sp)<br>   |
|  81|[0x80002348]<br>0x00000001|- rs1_val==46340<br>                                                                                                                                                                                      |[0x80000638]:sra a2, a0, a1<br> [0x8000063c]:sw a2, 276(sp)<br>   |
|  82|[0x8000234c]<br>0xFFFFFFFF|- rs1_val==-46340<br>                                                                                                                                                                                     |[0x8000064c]:sra a2, a0, a1<br> [0x80000650]:sw a2, 280(sp)<br>   |
|  83|[0x80002350]<br>0x00000001|- rs1_val==1717986918<br>                                                                                                                                                                                 |[0x80000660]:sra a2, a0, a1<br> [0x80000664]:sw a2, 284(sp)<br>   |
|  84|[0x80002354]<br>0x00000001|- rs1_val==858993459<br>                                                                                                                                                                                  |[0x80000674]:sra a2, a0, a1<br> [0x80000678]:sw a2, 288(sp)<br>   |
|  85|[0x80002358]<br>0x00000000|- rs1_val==5<br>                                                                                                                                                                                          |[0x80000684]:sra a2, a0, a1<br> [0x80000688]:sw a2, 292(sp)<br>   |
|  86|[0x80002360]<br>0x00000000|- rs1_val == 16384<br>                                                                                                                                                                                    |[0x800006a8]:sra a2, a0, a1<br> [0x800006ac]:sw a2, 300(sp)<br>   |
