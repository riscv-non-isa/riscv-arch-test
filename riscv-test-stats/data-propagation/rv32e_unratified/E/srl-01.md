
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000078', '0x800006d0')]      |
| SIG_REGION                | [('0x80002204', '0x80002368', '89 words')]      |
| COV_LABELS                | srl      |
| TEST_NAME                 | /home/bilalsakhawat/riscof_work/src/srl-01.S/srl-01.S    |
| Total Number of coverpoints| 169     |
| Total Coverpoints Hit     | 163      |
| Total Signature Updates   | 89      |
| STAT1                     | 85      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005d8]:srl a2, a0, a1
      [0x800005dc]:sw a2, 240(ra)
 -- Signature Address: 0x80002334 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : srl
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val==0
      - rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000688]:srl a2, a0, a1
      [0x8000068c]:sw a2, 276(ra)
 -- Signature Address: 0x80002358 Data: 0x0000001F
 -- Redundant Coverpoints hit by the op
      - opcode : srl
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 27
      - rs1_val == -1048577
      - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000069c]:srl a2, a0, a1
      [0x800006a0]:sw a2, 280(ra)
 -- Signature Address: 0x8000235c Data: 0x00000007
 -- Redundant Coverpoints hit by the op
      - opcode : srl
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 29
      - rs1_val == -16777217
      - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006c4]:srl a2, a0, a1
      [0x800006c8]:sw a2, 288(ra)
 -- Signature Address: 0x80002364 Data: 0x0FFDFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : srl
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == -2097153
      - rs2_val == 4
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

|s.no|        signature         |                                                                                                      coverpoints                                                                                                       |                               code                                |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80002204]<br>0xFFFFFFF7|- opcode : srl<br> - rs1 : x10<br> - rs2 : x4<br> - rd : x7<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val < 0 and rs2_val == 0<br> - rs1_val == -9<br>                                                    |[0x80000088]:srl t2, a0, tp<br> [0x8000008c]:sw t2, 0(ra)<br>      |
|   2|[0x80002208]<br>0xFFFFFFFA|- rs1 : x15<br> - rs2 : x0<br> - rd : x15<br> - rs1 == rd != rs2<br>                                                                                                                                                    |[0x80000098]:srl a5, a5, zero<br> [0x8000009c]:sw a5, 4(ra)<br>    |
|   3|[0x8000220c]<br>0x000001FF|- rs1 : x2<br> - rs2 : x3<br> - rd : x3<br> - rs2 == rd != rs1<br> - rs2_val == 23<br> - rs1_val == -2049<br> - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen<br>                                                      |[0x800000ac]:srl gp, sp, gp<br> [0x800000b0]:sw gp, 8(ra)<br>      |
|   4|[0x80002210]<br>0x00000001|- rs1 : x5<br> - rs2 : x5<br> - rd : x12<br> - rs1 == rs2 != rd<br> - rs1_val == -1048577<br>                                                                                                                           |[0x800000c4]:srl a2, t0, t0<br> [0x800000c8]:sw a2, 12(ra)<br>     |
|   5|[0x80002214]<br>0x00000001|- rs1 : x14<br> - rs2 : x14<br> - rd : x14<br> - rs1 == rs2 == rd<br> - rs1_val == -16777217<br>                                                                                                                        |[0x800000dc]:srl a4, a4, a4<br> [0x800000e0]:sw a4, 16(ra)<br>     |
|   6|[0x80002218]<br>0x00000002|- rs1 : x12<br> - rs2 : x10<br> - rd : x2<br> - rs2_val == 30<br> - rs1_val == -1073741825<br>                                                                                                                          |[0x800000f0]:srl sp, a2, a0<br> [0x800000f4]:sw sp, 20(ra)<br>     |
|   7|[0x8000221c]<br>0x0000000F|- rs1 : x11<br> - rs2 : x15<br> - rd : x9<br> - rs2_val == 27<br> - rs1_val == 2147483647<br> - rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen<br> |[0x80000104]:srl s1, a1, a5<br> [0x80000108]:sw s1, 24(ra)<br>     |
|   8|[0x80002220]<br>0x00001BFF|- rs1 : x4<br> - rs2 : x6<br> - rd : x10<br> - rs1_val == -536870913<br>                                                                                                                                                |[0x80000118]:srl a0, tp, t1<br> [0x8000011c]:sw a0, 28(ra)<br>     |
|   9|[0x80002224]<br>0x00000000|- rs1 : x0<br> - rs2 : x9<br> - rd : x8<br> - rs1_val==0<br> - rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen<br>                                                                                                     |[0x80000130]:srl fp, zero, s1<br> [0x80000134]:sw fp, 0(a0)<br>    |
|  10|[0x80002228]<br>0x00001EFF|- rs1 : x1<br> - rs2 : x7<br> - rd : x11<br> - rs1_val == -134217729<br>                                                                                                                                                |[0x80000144]:srl a1, ra, t2<br> [0x80000148]:sw a1, 4(a0)<br>      |
|  11|[0x8000222c]<br>0x0000001F|- rs1 : x7<br> - rs2 : x12<br> - rd : x5<br> - rs1_val == -67108865<br>                                                                                                                                                 |[0x80000158]:srl t0, t2, a2<br> [0x8000015c]:sw t0, 8(a0)<br>      |
|  12|[0x80002230]<br>0x03F7FFFF|- rs1 : x6<br> - rs2 : x13<br> - rd : x1<br> - rs1_val == -33554433<br>                                                                                                                                                 |[0x8000016c]:srl ra, t1, a3<br> [0x80000170]:sw ra, 12(a0)<br>     |
|  13|[0x80002234]<br>0x0003FDFF|- rs1 : x9<br> - rs2 : x8<br> - rd : x4<br> - rs1_val == -8388609<br>                                                                                                                                                   |[0x80000180]:srl tp, s1, fp<br> [0x80000184]:sw tp, 16(a0)<br>     |
|  14|[0x80002238]<br>0x00FFBFFF|- rs1 : x3<br> - rs2 : x11<br> - rd : x6<br> - rs1_val == -4194305<br> - rs2_val == 8<br>                                                                                                                               |[0x80000194]:srl t1, gp, a1<br> [0x80000198]:sw t1, 20(a0)<br>     |
|  15|[0x8000223c]<br>0x00000000|- rs1 : x13<br> - rs2 : x1<br> - rd : x0<br> - rs1_val == -2097153<br> - rs2_val == 4<br>                                                                                                                               |[0x800001a8]:srl zero, a3, ra<br> [0x800001ac]:sw zero, 24(a0)<br> |
|  16|[0x80002240]<br>0x00000007|- rs1 : x8<br> - rs2 : x2<br> - rd : x13<br> - rs2_val == 29<br> - rs1_val == -524289<br>                                                                                                                               |[0x800001bc]:srl a3, fp, sp<br> [0x800001c0]:sw a3, 28(a0)<br>     |
|  17|[0x80002244]<br>0x0FFFBFFF|- rs1_val == -262145<br>                                                                                                                                                                                                |[0x800001d8]:srl a2, a0, a1<br> [0x800001dc]:sw a2, 0(ra)<br>      |
|  18|[0x80002248]<br>0x00FFFDFF|- rs1_val == -131073<br>                                                                                                                                                                                                |[0x800001ec]:srl a2, a0, a1<br> [0x800001f0]:sw a2, 4(ra)<br>      |
|  19|[0x8000224c]<br>0x00000003|- rs1_val == -65537<br>                                                                                                                                                                                                 |[0x80000200]:srl a2, a0, a1<br> [0x80000204]:sw a2, 8(ra)<br>      |
|  20|[0x80002250]<br>0x00000007|- rs1_val == -32769<br>                                                                                                                                                                                                 |[0x80000214]:srl a2, a0, a1<br> [0x80000218]:sw a2, 12(ra)<br>     |
|  21|[0x80002254]<br>0x003FFFEF|- rs1_val == -16385<br> - rs2_val == 10<br>                                                                                                                                                                             |[0x80000228]:srl a2, a0, a1<br> [0x8000022c]:sw a2, 16(ra)<br>     |
|  22|[0x80002258]<br>0x0003FFFF|- rs1_val == -8193<br>                                                                                                                                                                                                  |[0x8000023c]:srl a2, a0, a1<br> [0x80000240]:sw a2, 20(ra)<br>     |
|  23|[0x8000225c]<br>0x00000001|- rs1_val == -4097<br>                                                                                                                                                                                                  |[0x80000250]:srl a2, a0, a1<br> [0x80000254]:sw a2, 24(ra)<br>     |
|  24|[0x80002260]<br>0x00000003|- rs1_val == -1025<br>                                                                                                                                                                                                  |[0x80000260]:srl a2, a0, a1<br> [0x80000264]:sw a2, 28(ra)<br>     |
|  25|[0x80002264]<br>0x00007FFF|- rs1_val == -513<br>                                                                                                                                                                                                   |[0x80000270]:srl a2, a0, a1<br> [0x80000274]:sw a2, 32(ra)<br>     |
|  26|[0x80002268]<br>0x00000007|- rs1_val == -257<br>                                                                                                                                                                                                   |[0x80000280]:srl a2, a0, a1<br> [0x80000284]:sw a2, 36(ra)<br>     |
|  27|[0x8000226c]<br>0x0007FFFF|- rs1_val == -129<br>                                                                                                                                                                                                   |[0x80000290]:srl a2, a0, a1<br> [0x80000294]:sw a2, 40(ra)<br>     |
|  28|[0x80002270]<br>0x007FFFFF|- rs1_val == -65<br>                                                                                                                                                                                                    |[0x800002a0]:srl a2, a0, a1<br> [0x800002a4]:sw a2, 44(ra)<br>     |
|  29|[0x80002274]<br>0x000007FF|- rs1_val == -33<br> - rs2_val == 21<br>                                                                                                                                                                                |[0x800002b0]:srl a2, a0, a1<br> [0x800002b4]:sw a2, 48(ra)<br>     |
|  30|[0x80002278]<br>0x0003FFFF|- rs1_val == -17<br>                                                                                                                                                                                                    |[0x800002c0]:srl a2, a0, a1<br> [0x800002c4]:sw a2, 52(ra)<br>     |
|  31|[0x8000227c]<br>0xFFFFFFFB|- rs1_val == -5<br>                                                                                                                                                                                                     |[0x800002d0]:srl a2, a0, a1<br> [0x800002d4]:sw a2, 56(ra)<br>     |
|  32|[0x80002280]<br>0x00000001|- rs1_val == -3<br>                                                                                                                                                                                                     |[0x800002e0]:srl a2, a0, a1<br> [0x800002e4]:sw a2, 60(ra)<br>     |
|  33|[0x80002284]<br>0x07FFFFFF|- rs1_val == -2<br>                                                                                                                                                                                                     |[0x800002f0]:srl a2, a0, a1<br> [0x800002f4]:sw a2, 64(ra)<br>     |
|  34|[0x80002288]<br>0x00000008|- rs2_val == 16<br> - rs1_val == 524288<br>                                                                                                                                                                             |[0x80000300]:srl a2, a0, a1<br> [0x80000304]:sw a2, 68(ra)<br>     |
|  35|[0x8000228c]<br>0x00002D41|- rs2_val == 2<br> - rs1_val==46341<br>                                                                                                                                                                                 |[0x80000314]:srl a2, a0, a1<br> [0x80000318]:sw a2, 72(ra)<br>     |
|  36|[0x80002290]<br>0x08000000|- rs2_val == 1<br> - rs1_val == 268435456<br>                                                                                                                                                                           |[0x80000324]:srl a2, a0, a1<br> [0x80000328]:sw a2, 76(ra)<br>     |
|  37|[0x80002294]<br>0x00000100|- rs1_val == -2147483648<br> - rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen<br>                                                                                                                        |[0x80000334]:srl a2, a0, a1<br> [0x80000338]:sw a2, 80(ra)<br>     |
|  38|[0x80002298]<br>0x01000000|- rs1_val == 1073741824<br>                                                                                                                                                                                             |[0x80000344]:srl a2, a0, a1<br> [0x80000348]:sw a2, 84(ra)<br>     |
|  39|[0x8000229c]<br>0x00080000|- rs1_val == 536870912<br>                                                                                                                                                                                              |[0x80000354]:srl a2, a0, a1<br> [0x80000358]:sw a2, 88(ra)<br>     |
|  40|[0x800022a0]<br>0x00000400|- rs1_val == 134217728<br>                                                                                                                                                                                              |[0x80000364]:srl a2, a0, a1<br> [0x80000368]:sw a2, 92(ra)<br>     |
|  41|[0x800022a4]<br>0x00001000|- rs1_val == 67108864<br>                                                                                                                                                                                               |[0x80000374]:srl a2, a0, a1<br> [0x80000378]:sw a2, 96(ra)<br>     |
|  42|[0x800022a8]<br>0x00000080|- rs1_val == 33554432<br>                                                                                                                                                                                               |[0x80000384]:srl a2, a0, a1<br> [0x80000388]:sw a2, 100(ra)<br>    |
|  43|[0x800022ac]<br>0x00004000|- rs1_val == 16777216<br>                                                                                                                                                                                               |[0x80000394]:srl a2, a0, a1<br> [0x80000398]:sw a2, 104(ra)<br>    |
|  44|[0x800022b0]<br>0x00000010|- rs1_val == 8388608<br>                                                                                                                                                                                                |[0x800003a4]:srl a2, a0, a1<br> [0x800003a8]:sw a2, 108(ra)<br>    |
|  45|[0x800022b4]<br>0x00000800|- rs1_val == 4194304<br>                                                                                                                                                                                                |[0x800003b4]:srl a2, a0, a1<br> [0x800003b8]:sw a2, 112(ra)<br>    |
|  46|[0x800022b8]<br>0x00002000|- rs1_val == 2097152<br>                                                                                                                                                                                                |[0x800003c4]:srl a2, a0, a1<br> [0x800003c8]:sw a2, 116(ra)<br>    |
|  47|[0x800022bc]<br>0x00000040|- rs1_val == 1048576<br>                                                                                                                                                                                                |[0x800003d4]:srl a2, a0, a1<br> [0x800003d8]:sw a2, 120(ra)<br>    |
|  48|[0x800022c0]<br>0x00000002|- rs1_val == 262144<br>                                                                                                                                                                                                 |[0x800003e4]:srl a2, a0, a1<br> [0x800003e8]:sw a2, 124(ra)<br>    |
|  49|[0x800022c4]<br>0x00000008|- rs1_val == 131072<br>                                                                                                                                                                                                 |[0x800003f4]:srl a2, a0, a1<br> [0x800003f8]:sw a2, 128(ra)<br>    |
|  50|[0x800022c8]<br>0x00000000|- rs1_val == 65536<br>                                                                                                                                                                                                  |[0x80000404]:srl a2, a0, a1<br> [0x80000408]:sw a2, 132(ra)<br>    |
|  51|[0x800022cc]<br>0x00000001|- rs2_val == 15<br> - rs1_val == 32768<br>                                                                                                                                                                              |[0x80000414]:srl a2, a0, a1<br> [0x80000418]:sw a2, 136(ra)<br>    |
|  52|[0x800022d0]<br>0x00000001|- rs1_val == 16384<br>                                                                                                                                                                                                  |[0x80000424]:srl a2, a0, a1<br> [0x80000428]:sw a2, 140(ra)<br>    |
|  53|[0x800022d4]<br>0x00000020|- rs1_val == 8192<br>                                                                                                                                                                                                   |[0x80000434]:srl a2, a0, a1<br> [0x80000438]:sw a2, 144(ra)<br>    |
|  54|[0x800022d8]<br>0x00000040|- rs1_val == 4096<br>                                                                                                                                                                                                   |[0x80000444]:srl a2, a0, a1<br> [0x80000448]:sw a2, 148(ra)<br>    |
|  55|[0x800022dc]<br>0x00000000|- rs1_val == 2048<br>                                                                                                                                                                                                   |[0x80000458]:srl a2, a0, a1<br> [0x8000045c]:sw a2, 152(ra)<br>    |
|  56|[0x800022e0]<br>0x00000000|- rs1_val == 1024<br>                                                                                                                                                                                                   |[0x80000468]:srl a2, a0, a1<br> [0x8000046c]:sw a2, 156(ra)<br>    |
|  57|[0x800022e4]<br>0x00000040|- rs1_val == 512<br>                                                                                                                                                                                                    |[0x80000478]:srl a2, a0, a1<br> [0x8000047c]:sw a2, 160(ra)<br>    |
|  58|[0x800022e8]<br>0x00000000|- rs1_val == 256<br>                                                                                                                                                                                                    |[0x80000488]:srl a2, a0, a1<br> [0x8000048c]:sw a2, 164(ra)<br>    |
|  59|[0x800022ec]<br>0x00000000|- rs1_val == 128<br>                                                                                                                                                                                                    |[0x80000498]:srl a2, a0, a1<br> [0x8000049c]:sw a2, 168(ra)<br>    |
|  60|[0x800022f0]<br>0x00000004|- rs1_val == 64<br>                                                                                                                                                                                                     |[0x800004a8]:srl a2, a0, a1<br> [0x800004ac]:sw a2, 172(ra)<br>    |
|  61|[0x800022f4]<br>0x00000000|- rs1_val == 32<br>                                                                                                                                                                                                     |[0x800004b8]:srl a2, a0, a1<br> [0x800004bc]:sw a2, 176(ra)<br>    |
|  62|[0x800022f8]<br>0x00000000|- rs1_val == 16<br>                                                                                                                                                                                                     |[0x800004c8]:srl a2, a0, a1<br> [0x800004cc]:sw a2, 180(ra)<br>    |
|  63|[0x800022fc]<br>0x00000000|- rs1_val == 8<br>                                                                                                                                                                                                      |[0x800004d8]:srl a2, a0, a1<br> [0x800004dc]:sw a2, 184(ra)<br>    |
|  64|[0x80002300]<br>0x00000000|- rs1_val == 4<br> - rs1_val==4<br>                                                                                                                                                                                     |[0x800004e8]:srl a2, a0, a1<br> [0x800004ec]:sw a2, 188(ra)<br>    |
|  65|[0x80002304]<br>0x00000000|- rs1_val == 2<br> - rs1_val==2<br> - rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen<br>                                                                                                                         |[0x800004f8]:srl a2, a0, a1<br> [0x800004fc]:sw a2, 192(ra)<br>    |
|  66|[0x80002308]<br>0x00000000|- rs1_val == 1<br> - rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen<br>                                                                                                                                               |[0x80000508]:srl a2, a0, a1<br> [0x8000050c]:sw a2, 196(ra)<br>    |
|  67|[0x8000230c]<br>0x03FFFD2B|- rs1_val==-46339<br>                                                                                                                                                                                                   |[0x8000051c]:srl a2, a0, a1<br> [0x80000520]:sw a2, 200(ra)<br>    |
|  68|[0x80002310]<br>0x00019999|- rs1_val==1717986919<br>                                                                                                                                                                                               |[0x80000530]:srl a2, a0, a1<br> [0x80000534]:sw a2, 204(ra)<br>    |
|  69|[0x80002314]<br>0x00199999|- rs1_val==858993460<br>                                                                                                                                                                                                |[0x80000544]:srl a2, a0, a1<br> [0x80000548]:sw a2, 208(ra)<br>    |
|  70|[0x80002318]<br>0x00000000|- rs1_val==6<br>                                                                                                                                                                                                        |[0x80000554]:srl a2, a0, a1<br> [0x80000558]:sw a2, 212(ra)<br>    |
|  71|[0x8000231c]<br>0x0002AAAA|- rs1_val==-1431655765<br>                                                                                                                                                                                              |[0x80000568]:srl a2, a0, a1<br> [0x8000056c]:sw a2, 216(ra)<br>    |
|  72|[0x80002320]<br>0x55555556|- rs1_val==1431655766<br> - rs1_val > 0 and rs2_val == 0<br>                                                                                                                                                            |[0x8000057c]:srl a2, a0, a1<br> [0x80000580]:sw a2, 220(ra)<br>    |
|  73|[0x80002324]<br>0x00000005|- rs1_val==46339<br>                                                                                                                                                                                                    |[0x80000590]:srl a2, a0, a1<br> [0x80000594]:sw a2, 224(ra)<br>    |
|  74|[0x80002328]<br>0x00000000|- rs1_val==3<br>                                                                                                                                                                                                        |[0x800005a0]:srl a2, a0, a1<br> [0x800005a4]:sw a2, 228(ra)<br>    |
|  75|[0x8000232c]<br>0x0AAAAAAA|- rs1_val==-1431655766<br> - rs1_val == -1431655766<br>                                                                                                                                                                 |[0x800005b4]:srl a2, a0, a1<br> [0x800005b8]:sw a2, 232(ra)<br>    |
|  76|[0x80002330]<br>0x00AAAAAA|- rs1_val==1431655765<br> - rs1_val == 1431655765<br>                                                                                                                                                                   |[0x800005c8]:srl a2, a0, a1<br> [0x800005cc]:sw a2, 236(ra)<br>    |
|  77|[0x80002338]<br>0x0000000C|- rs1_val==1717986917<br>                                                                                                                                                                                               |[0x800005ec]:srl a2, a0, a1<br> [0x800005f0]:sw a2, 244(ra)<br>    |
|  78|[0x8000233c]<br>0x00001999|- rs1_val==858993458<br>                                                                                                                                                                                                |[0x80000600]:srl a2, a0, a1<br> [0x80000604]:sw a2, 248(ra)<br>    |
|  79|[0x80002340]<br>0x00000AAA|- rs1_val==1431655764<br>                                                                                                                                                                                               |[0x80000614]:srl a2, a0, a1<br> [0x80000618]:sw a2, 252(ra)<br>    |
|  80|[0x80002344]<br>0x00000000|- rs1_val==46340<br>                                                                                                                                                                                                    |[0x80000628]:srl a2, a0, a1<br> [0x8000062c]:sw a2, 256(ra)<br>    |
|  81|[0x80002348]<br>0x0FFFF4AF|- rs1_val==-46340<br>                                                                                                                                                                                                   |[0x8000063c]:srl a2, a0, a1<br> [0x80000640]:sw a2, 260(ra)<br>    |
|  82|[0x8000234c]<br>0x0000000C|- rs1_val==1717986918<br>                                                                                                                                                                                               |[0x80000650]:srl a2, a0, a1<br> [0x80000654]:sw a2, 264(ra)<br>    |
|  83|[0x80002350]<br>0x00000199|- rs1_val==858993459<br>                                                                                                                                                                                                |[0x80000664]:srl a2, a0, a1<br> [0x80000668]:sw a2, 268(ra)<br>    |
|  84|[0x80002354]<br>0x00000000|- rs1_val==5<br>                                                                                                                                                                                                        |[0x80000674]:srl a2, a0, a1<br> [0x80000678]:sw a2, 272(ra)<br>    |
|  85|[0x80002360]<br>0x0003BFFF|- rs1_val == -268435457<br>                                                                                                                                                                                             |[0x800006b0]:srl a2, a0, a1<br> [0x800006b4]:sw a2, 284(ra)<br>    |
