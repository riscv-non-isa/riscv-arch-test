
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000078', '0x80000860')]      |
| SIG_REGION                | [('0x80002204', '0x80002314', '68 words')]      |
| COV_LABELS                | sw-align      |
| TEST_NAME                 | /home/bilalsakhawat/riscof_work/src/sw-align-01.S/sw-align-01.S    |
| Total Number of coverpoints| 114     |
| Total Coverpoints Hit     | 109      |
| Total Signature Updates   | 68      |
| STAT1                     | 67      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000534]:sw a1, 4086(a0)
 -- Signature Address: 0x800022a0 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : sw
      - rs1 : x10
      - rs2 : x11
      - rs1 != rs2
      - ea_align == 0 and (imm_val % 4) == 2
      - imm_val < 0
      - rs2_val == 0






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

|s.no|        signature         |                                                                       coverpoints                                                                       |               code                |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------|
|   1|[0x80002204]<br>0x04000000|- opcode : sw<br> - rs1 : x13<br> - rs2 : x1<br> - rs1 != rs2<br> - ea_align == 0 and (imm_val % 4) == 0<br> - rs2_val == 67108864<br> - imm_val > 0<br> |[0x80000090]:sw ra, 4(a3)<br>      |
|   2|[0x80002208]<br>0x7FFFFFFF|- rs1 : x7<br> - rs2 : x6<br> - rs2_val == 2147483647<br> - rs2_val == (2**(xlen-1)-1)<br>                                                               |[0x800000b0]:sw t1, 32(t2)<br>     |
|   3|[0x8000220c]<br>0x00000000|- rs1 : x5<br> - rs2 : x0<br> - imm_val < 0<br> - rs2_val == 0<br>                                                                                       |[0x800000cc]:sw zero, 4092(t0)<br> |
|   4|[0x80002210]<br>0xDFFFFFFF|- rs1 : x4<br> - rs2 : x5<br> - rs2_val == -536870913<br> - ea_align == 0 and (imm_val % 4) == 3<br>                                                     |[0x800000ec]:sw t0, 4079(tp)<br>   |
|   5|[0x80002214]<br>0xEFFFFFFF|- rs1 : x12<br> - rs2 : x3<br> - rs2_val == -268435457<br>                                                                                               |[0x8000010c]:sw gp, 3839(a2)<br>   |
|   6|[0x80002218]<br>0xF7FFFFFF|- rs1 : x8<br> - rs2 : x10<br> - rs2_val == -134217729<br>                                                                                               |[0x8000012c]:sw a0, 4095(fp)<br>   |
|   7|[0x8000221c]<br>0xFBFFFFFF|- rs1 : x1<br> - rs2 : x8<br> - rs2_val == -67108865<br>                                                                                                 |[0x8000014c]:sw fp, 3071(ra)<br>   |
|   8|[0x80002220]<br>0xFDFFFFFF|- rs1 : x6<br> - rs2 : x15<br> - rs2_val == -33554433<br>                                                                                                |[0x8000016c]:sw a5, 64(t1)<br>     |
|   9|[0x80002224]<br>0xFEFFFFFF|- rs1 : x11<br> - rs2 : x14<br> - rs2_val == -16777217<br> - ea_align == 0 and (imm_val % 4) == 1<br>                                                    |[0x8000018c]:sw a4, 1365(a1)<br>   |
|  10|[0x80002228]<br>0xFF7FFFFF|- rs1 : x15<br> - rs2 : x7<br> - rs2_val == -8388609<br>                                                                                                 |[0x800001b4]:sw t2, 3583(a5)<br>   |
|  11|[0x8000222c]<br>0xFFBFFFFF|- rs1 : x3<br> - rs2 : x12<br> - rs2_val == -4194305<br>                                                                                                 |[0x800001d4]:sw a2, 4088(gp)<br>   |
|  12|[0x80002230]<br>0xFFDFFFFF|- rs1 : x14<br> - rs2 : x9<br> - rs2_val == -2097153<br>                                                                                                 |[0x800001f4]:sw s1, 2048(a4)<br>   |
|  13|[0x80002234]<br>0xFFEFFFFF|- rs1 : x9<br> - rs2 : x13<br> - rs2_val == -1048577<br>                                                                                                 |[0x80000214]:sw a3, 9(s1)<br>      |
|  14|[0x80002238]<br>0xFFF7FFFF|- rs1 : x10<br> - rs2 : x4<br> - rs2_val == -524289<br>                                                                                                  |[0x80000234]:sw tp, 7(a0)<br>      |
|  15|[0x8000223c]<br>0xFFFBFFFF|- rs1 : x2<br> - rs2 : x11<br> - rs2_val == -262145<br> - ea_align == 0 and (imm_val % 4) == 2<br>                                                       |[0x80000254]:sw a1, 6(sp)<br>      |
|  16|[0x80002240]<br>0xFFFDFFFF|- rs2 : x2<br> - rs2_val == -131073<br>                                                                                                                  |[0x80000274]:sw sp, 32(s1)<br>     |
|  17|[0x80002244]<br>0xFFFEFFFF|- rs2_val == -65537<br>                                                                                                                                  |[0x80000294]:sw a1, 3967(a0)<br>   |
|  18|[0x80002248]<br>0xFFFF7FFF|- rs2_val == -32769<br>                                                                                                                                  |[0x800002b4]:sw a1, 4079(a0)<br>   |
|  19|[0x8000224c]<br>0xFFFFBFFF|- rs2_val == -16385<br> - imm_val == 0<br>                                                                                                               |[0x800002d4]:sw a1, 0(a0)<br>      |
|  20|[0x80002250]<br>0xFFFFDFFF|- rs2_val == -8193<br>                                                                                                                                   |[0x800002f4]:sw a1, 1023(a0)<br>   |
|  21|[0x80002254]<br>0xFFFFEFFF|- rs2_val == -4097<br>                                                                                                                                   |[0x80000314]:sw a1, 512(a0)<br>    |
|  22|[0x80002258]<br>0xFFFFF7FF|- rs2_val == -2049<br>                                                                                                                                   |[0x80000334]:sw a1, 4(a0)<br>      |
|  23|[0x8000225c]<br>0xFFFFFBFF|- rs2_val == -1025<br>                                                                                                                                   |[0x80000350]:sw a1, 3071(a0)<br>   |
|  24|[0x80002260]<br>0xFFFFFDFF|- rs2_val == -513<br>                                                                                                                                    |[0x8000036c]:sw a1, 1023(a0)<br>   |
|  25|[0x80002264]<br>0xFFFFFEFF|- rs2_val == -257<br>                                                                                                                                    |[0x80000388]:sw a1, 3967(a0)<br>   |
|  26|[0x80002268]<br>0xFFFFFF7F|- rs2_val == -129<br>                                                                                                                                    |[0x800003a4]:sw a1, 1(a0)<br>      |
|  27|[0x8000226c]<br>0xFFFFFFBF|- rs2_val == -65<br>                                                                                                                                     |[0x800003c0]:sw a1, 4086(a0)<br>   |
|  28|[0x80002270]<br>0xFFFFFFDF|- rs2_val == -33<br>                                                                                                                                     |[0x800003dc]:sw a1, 3(a0)<br>      |
|  29|[0x80002274]<br>0xFFFFFFEF|- rs2_val == -17<br>                                                                                                                                     |[0x800003f8]:sw a1, 2(a0)<br>      |
|  30|[0x80002278]<br>0xFFFFFFF7|- rs2_val == -9<br>                                                                                                                                      |[0x80000414]:sw a1, 4086(a0)<br>   |
|  31|[0x8000227c]<br>0xFFFFFFFB|- rs2_val == -5<br>                                                                                                                                      |[0x80000430]:sw a1, 64(a0)<br>     |
|  32|[0x80002280]<br>0xFFFFFFFD|- rs2_val == -3<br>                                                                                                                                      |[0x8000044c]:sw a1, 1(a0)<br>      |
|  33|[0x80002284]<br>0xFFFFFFFE|- rs2_val == -2<br>                                                                                                                                      |[0x80000468]:sw a1, 3583(a0)<br>   |
|  34|[0x80002288]<br>0x80000000|- rs2_val == -2147483648<br> - rs2_val == (-2**(xlen-1))<br>                                                                                             |[0x80000484]:sw a1, 32(a0)<br>     |
|  35|[0x8000228c]<br>0x40000000|- rs2_val == 1073741824<br>                                                                                                                              |[0x800004a0]:sw a1, 3071(a0)<br>   |
|  36|[0x80002290]<br>0x20000000|- rs2_val == 536870912<br>                                                                                                                               |[0x800004bc]:sw a1, 4088(a0)<br>   |
|  37|[0x80002294]<br>0x00000001|- rs2_val == 1<br>                                                                                                                                       |[0x800004d8]:sw a1, 4094(a0)<br>   |
|  38|[0x80002298]<br>0xAAAAAAAA|- rs2_val == -1431655766<br>                                                                                                                             |[0x800004f8]:sw a1, 2730(a0)<br>   |
|  39|[0x8000229c]<br>0x55555555|- rs2_val == 1431655765<br>                                                                                                                              |[0x80000518]:sw a1, 64(a0)<br>     |
|  40|[0x800022a4]<br>0x10000000|- rs2_val == 268435456<br>                                                                                                                               |[0x80000550]:sw a1, 4092(a0)<br>   |
|  41|[0x800022a8]<br>0x08000000|- rs2_val == 134217728<br>                                                                                                                               |[0x8000056c]:sw a1, 2047(a0)<br>   |
|  42|[0x800022ac]<br>0x02000000|- rs2_val == 33554432<br>                                                                                                                                |[0x80000588]:sw a1, 1365(a0)<br>   |
|  43|[0x800022b0]<br>0x01000000|- rs2_val == 16777216<br>                                                                                                                                |[0x800005a4]:sw a1, 1(a0)<br>      |
|  44|[0x800022b4]<br>0x00800000|- rs2_val == 8388608<br>                                                                                                                                 |[0x800005c0]:sw a1, 4091(a0)<br>   |
|  45|[0x800022b8]<br>0x00400000|- rs2_val == 4194304<br>                                                                                                                                 |[0x800005dc]:sw a1, 2(a0)<br>      |
|  46|[0x800022bc]<br>0x00200000|- rs2_val == 2097152<br>                                                                                                                                 |[0x800005f8]:sw a1, 4095(a0)<br>   |
|  47|[0x800022c0]<br>0x00100000|- rs2_val == 1048576<br>                                                                                                                                 |[0x80000614]:sw a1, 4087(a0)<br>   |
|  48|[0x800022c4]<br>0x00080000|- rs2_val == 524288<br>                                                                                                                                  |[0x80000630]:sw a1, 1024(a0)<br>   |
|  49|[0x800022c8]<br>0x00040000|- rs2_val == 262144<br>                                                                                                                                  |[0x8000064c]:sw a1, 1365(a0)<br>   |
|  50|[0x800022cc]<br>0x00020000|- rs2_val == 131072<br>                                                                                                                                  |[0x80000668]:sw a1, 4088(a0)<br>   |
|  51|[0x800022d0]<br>0x00010000|- rs2_val == 65536<br>                                                                                                                                   |[0x80000684]:sw a1, 4094(a0)<br>   |
|  52|[0x800022d4]<br>0x00008000|- rs2_val == 32768<br>                                                                                                                                   |[0x800006a0]:sw a1, 4086(a0)<br>   |
|  53|[0x800022d8]<br>0x00004000|- rs2_val == 16384<br>                                                                                                                                   |[0x800006bc]:sw a1, 4095(a0)<br>   |
|  54|[0x800022dc]<br>0x00002000|- rs2_val == 8192<br>                                                                                                                                    |[0x800006d8]:sw a1, 3583(a0)<br>   |
|  55|[0x800022e0]<br>0x00001000|- rs2_val == 4096<br>                                                                                                                                    |[0x800006f4]:sw a1, 7(a0)<br>      |
|  56|[0x800022e4]<br>0x00000800|- rs2_val == 2048<br>                                                                                                                                    |[0x80000714]:sw a1, 3967(a0)<br>   |
|  57|[0x800022e8]<br>0x00000400|- rs2_val == 1024<br>                                                                                                                                    |[0x80000730]:sw a1, 3071(a0)<br>   |
|  58|[0x800022ec]<br>0x00000200|- rs2_val == 512<br>                                                                                                                                     |[0x8000074c]:sw a1, 7(a0)<br>      |
|  59|[0x800022f0]<br>0x00000100|- rs2_val == 256<br>                                                                                                                                     |[0x80000768]:sw a1, 3839(a0)<br>   |
|  60|[0x800022f4]<br>0x00000080|- rs2_val == 128<br>                                                                                                                                     |[0x80000784]:sw a1, 4063(a0)<br>   |
|  61|[0x800022f8]<br>0x00000040|- rs2_val == 64<br>                                                                                                                                      |[0x800007a0]:sw a1, 64(a0)<br>     |
|  62|[0x800022fc]<br>0x00000020|- rs2_val == 32<br>                                                                                                                                      |[0x800007bc]:sw a1, 9(a0)<br>      |
|  63|[0x80002300]<br>0x00000010|- rs2_val == 16<br>                                                                                                                                      |[0x800007d8]:sw a1, 16(a0)<br>     |
|  64|[0x80002304]<br>0x00000008|- rs2_val == 8<br>                                                                                                                                       |[0x800007f4]:sw a1, 1024(a0)<br>   |
|  65|[0x80002308]<br>0x00000004|- rs2_val == 4<br>                                                                                                                                       |[0x80000810]:sw a1, 3071(a0)<br>   |
|  66|[0x8000230c]<br>0x00000002|- rs2_val == 2<br>                                                                                                                                       |[0x8000082c]:sw a1, 3072(a0)<br>   |
|  67|[0x80002310]<br>0xBFFFFFFF|- rs2_val == -1073741825<br>                                                                                                                             |[0x8000084c]:sw a1, 4092(a0)<br>   |
