
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000078', '0x80000980')]      |
| SIG_REGION                | [('0x80002204', '0x8000233c', '78 words')]      |
| COV_LABELS                | sb-align      |
| TEST_NAME                 | /home/bilalsakhawat/riscof_work/src/sb-align-01.S/sb-align-01.S    |
| Total Number of coverpoints| 126     |
| Total Coverpoints Hit     | 121      |
| Total Signature Updates   | 78      |
| STAT1                     | 77      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008dc]:sb a1, 4079(a0)
 -- Signature Address: 0x80002324 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : sb
      - rs1 : x10
      - rs2 : x11
      - rs1 != rs2
      - ea_align == 0 and (imm_val % 4) == 3
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

|s.no|        signature         |                                                                       coverpoints                                                                       |              code               |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------|
|   1|[0x80002204]<br>0x00000000|- opcode : sb<br> - rs1 : x4<br> - rs2 : x0<br> - rs1 != rs2<br> - ea_align == 0 and (imm_val % 4) == 0<br> - imm_val > 0<br> - rs2_val == 0<br>         |[0x80000090]:sb zero, 8(tp)<br>  |
|   2|[0x80002208]<br>0x7FFFFFFF|- rs1 : x8<br> - rs2 : x11<br> - rs2_val == 2147483647<br> - ea_align == 0 and (imm_val % 4) == 3<br> - imm_val < 0<br> - rs2_val == (2**(xlen-1)-1)<br> |[0x800000b0]:sb a1, 4031(fp)<br> |
|   3|[0x8000220c]<br>0xBFFFFFFF|- rs1 : x1<br> - rs2 : x15<br> - rs2_val == -1073741825<br>                                                                                              |[0x800000d0]:sb a5, 4079(ra)<br> |
|   4|[0x80002210]<br>0xDFFFFFFF|- rs1 : x14<br> - rs2 : x2<br> - rs2_val == -536870913<br>                                                                                               |[0x800000f0]:sb sp, 3839(a4)<br> |
|   5|[0x80002214]<br>0xEFFFFFFF|- rs1 : x15<br> - rs2 : x8<br> - rs2_val == -268435457<br> - ea_align == 0 and (imm_val % 4) == 1<br>                                                    |[0x80000110]:sb fp, 4093(a5)<br> |
|   6|[0x80002218]<br>0xF7FFFFFF|- rs1 : x6<br> - rs2 : x7<br> - rs2_val == -134217729<br>                                                                                                |[0x80000130]:sb t2, 4088(t1)<br> |
|   7|[0x8000221c]<br>0xFBFFFFFF|- rs1 : x2<br> - rs2 : x10<br> - rs2_val == -67108865<br>                                                                                                |[0x80000150]:sb a0, 2047(sp)<br> |
|   8|[0x80002220]<br>0xFDFFFFFF|- rs1 : x13<br> - rs2 : x6<br> - rs2_val == -33554433<br>                                                                                                |[0x80000170]:sb t1, 1365(a3)<br> |
|   9|[0x80002224]<br>0xFEFFFFFF|- rs1 : x7<br> - rs2 : x4<br> - rs2_val == -16777217<br>                                                                                                 |[0x80000190]:sb tp, 256(t2)<br>  |
|  10|[0x80002228]<br>0xFF7FFFFF|- rs1 : x9<br> - rs2 : x1<br> - rs2_val == -8388609<br>                                                                                                  |[0x800001b0]:sb ra, 4093(s1)<br> |
|  11|[0x8000222c]<br>0xFFBFFFFF|- rs1 : x10<br> - rs2 : x12<br> - rs2_val == -4194305<br>                                                                                                |[0x800001d8]:sb a2, 1(a0)<br>    |
|  12|[0x80002230]<br>0xFFDFFFFF|- rs1 : x3<br> - rs2 : x13<br> - rs2_val == -2097153<br>                                                                                                 |[0x800001f8]:sb a3, 128(gp)<br>  |
|  13|[0x80002234]<br>0xFFEFFFFF|- rs1 : x11<br> - rs2 : x5<br> - rs2_val == -1048577<br>                                                                                                 |[0x80000218]:sb t0, 3071(a1)<br> |
|  14|[0x80002238]<br>0xFFF7FFFF|- rs1 : x5<br> - rs2 : x9<br> - rs2_val == -524289<br>                                                                                                   |[0x80000238]:sb s1, 2048(t0)<br> |
|  15|[0x8000223c]<br>0xFFFBFFFF|- rs1 : x12<br> - rs2 : x3<br> - rs2_val == -262145<br>                                                                                                  |[0x80000258]:sb gp, 4087(a2)<br> |
|  16|[0x80002240]<br>0xFFFDFFFF|- rs2 : x14<br> - rs2_val == -131073<br>                                                                                                                 |[0x80000278]:sb a4, 8(tp)<br>    |
|  17|[0x80002244]<br>0xFFFEFFFF|- rs2_val == -65537<br>                                                                                                                                  |[0x80000298]:sb a1, 2048(a0)<br> |
|  18|[0x80002248]<br>0xFFFF7FFF|- rs2_val == -32769<br>                                                                                                                                  |[0x800002b8]:sb a1, 9(a0)<br>    |
|  19|[0x8000224c]<br>0xFFFFBFFF|- rs2_val == -16385<br> - ea_align == 0 and (imm_val % 4) == 2<br>                                                                                       |[0x800002d8]:sb a1, 2730(a0)<br> |
|  20|[0x80002250]<br>0xFFFFDFFF|- rs2_val == -8193<br>                                                                                                                                   |[0x800002f8]:sb a1, 2047(a0)<br> |
|  21|[0x80002254]<br>0xFFFFEFFF|- rs2_val == -4097<br>                                                                                                                                   |[0x80000318]:sb a1, 7(a0)<br>    |
|  22|[0x80002258]<br>0xFFFFF7FF|- rs2_val == -2049<br>                                                                                                                                   |[0x80000338]:sb a1, 2048(a0)<br> |
|  23|[0x8000225c]<br>0xFFFFFBFF|- rs2_val == -1025<br>                                                                                                                                   |[0x80000354]:sb a1, 9(a0)<br>    |
|  24|[0x80002260]<br>0xFFFFFDFF|- rs2_val == -513<br>                                                                                                                                    |[0x80000370]:sb a1, 4093(a0)<br> |
|  25|[0x80002264]<br>0xFFFFFEFF|- rs2_val == -257<br>                                                                                                                                    |[0x8000038c]:sb a1, 4031(a0)<br> |
|  26|[0x80002268]<br>0xFFFFFF7F|- rs2_val == -129<br>                                                                                                                                    |[0x800003a8]:sb a1, 2(a0)<br>    |
|  27|[0x8000226c]<br>0xFFFFFFBF|- rs2_val == -65<br>                                                                                                                                     |[0x800003c4]:sb a1, 4086(a0)<br> |
|  28|[0x80002270]<br>0xFFFFFFDF|- rs2_val == -33<br>                                                                                                                                     |[0x800003e0]:sb a1, 4031(a0)<br> |
|  29|[0x80002274]<br>0xFFFFFFEF|- rs2_val == -17<br>                                                                                                                                     |[0x800003fc]:sb a1, 3(a0)<br>    |
|  30|[0x80002278]<br>0xFFFFFFF7|- rs2_val == -9<br>                                                                                                                                      |[0x80000418]:sb a1, 16(a0)<br>   |
|  31|[0x8000227c]<br>0xFFFFFFFB|- rs2_val == -5<br>                                                                                                                                      |[0x80000434]:sb a1, 4089(a0)<br> |
|  32|[0x80002280]<br>0xFFFFFFFD|- rs2_val == -3<br>                                                                                                                                      |[0x80000450]:sb a1, 1365(a0)<br> |
|  33|[0x80002284]<br>0xFFFFFFFE|- rs2_val == -2<br>                                                                                                                                      |[0x8000046c]:sb a1, 4086(a0)<br> |
|  34|[0x80002288]<br>0x80000000|- rs2_val == -2147483648<br> - rs2_val == (-2**(xlen-1))<br>                                                                                             |[0x80000488]:sb a1, 4088(a0)<br> |
|  35|[0x8000228c]<br>0x40000000|- rs2_val == 1073741824<br>                                                                                                                              |[0x800004a4]:sb a1, 4091(a0)<br> |
|  36|[0x80002290]<br>0x20000000|- rs2_val == 536870912<br>                                                                                                                               |[0x800004c0]:sb a1, 4031(a0)<br> |
|  37|[0x80002294]<br>0x10000000|- rs2_val == 268435456<br>                                                                                                                               |[0x800004dc]:sb a1, 4086(a0)<br> |
|  38|[0x80002298]<br>0x08000000|- rs2_val == 134217728<br>                                                                                                                               |[0x800004f8]:sb a1, 1365(a0)<br> |
|  39|[0x8000229c]<br>0x04000000|- rs2_val == 67108864<br>                                                                                                                                |[0x80000514]:sb a1, 3967(a0)<br> |
|  40|[0x800022a0]<br>0x02000000|- rs2_val == 33554432<br>                                                                                                                                |[0x80000530]:sb a1, 3072(a0)<br> |
|  41|[0x800022a4]<br>0x01000000|- rs2_val == 16777216<br>                                                                                                                                |[0x8000054c]:sb a1, 4031(a0)<br> |
|  42|[0x800022a8]<br>0x00800000|- rs2_val == 8388608<br>                                                                                                                                 |[0x80000568]:sb a1, 4091(a0)<br> |
|  43|[0x800022ac]<br>0x00400000|- rs2_val == 4194304<br>                                                                                                                                 |[0x80000584]:sb a1, 4087(a0)<br> |
|  44|[0x800022b0]<br>0x00200000|- rs2_val == 2097152<br>                                                                                                                                 |[0x800005a0]:sb a1, 2047(a0)<br> |
|  45|[0x800022b4]<br>0x00100000|- rs2_val == 1048576<br>                                                                                                                                 |[0x800005bc]:sb a1, 4031(a0)<br> |
|  46|[0x800022b8]<br>0x00080000|- rs2_val == 524288<br>                                                                                                                                  |[0x800005d8]:sb a1, 4093(a0)<br> |
|  47|[0x800022bc]<br>0x00040000|- rs2_val == 262144<br>                                                                                                                                  |[0x800005f4]:sb a1, 6(a0)<br>    |
|  48|[0x800022c0]<br>0x00020000|- rs2_val == 131072<br>                                                                                                                                  |[0x80000610]:sb a1, 128(a0)<br>  |
|  49|[0x800022c4]<br>0x00010000|- rs2_val == 65536<br>                                                                                                                                   |[0x8000062c]:sb a1, 1365(a0)<br> |
|  50|[0x800022c8]<br>0x00008000|- rs2_val == 32768<br>                                                                                                                                   |[0x80000648]:sb a1, 5(a0)<br>    |
|  51|[0x800022cc]<br>0x00000001|- rs2_val == 1<br>                                                                                                                                       |[0x80000664]:sb a1, 1024(a0)<br> |
|  52|[0x800022d0]<br>0xAAAAAAAA|- rs2_val == -1431655766<br>                                                                                                                             |[0x80000684]:sb a1, 4090(a0)<br> |
|  53|[0x800022d4]<br>0x55555555|- rs2_val == 1431655765<br>                                                                                                                              |[0x800006a4]:sb a1, 1365(a0)<br> |
|  54|[0x800022d9]<br>0xFFFFFFFB|- ea_align == 1 and (imm_val % 4) == 0<br>                                                                                                               |[0x800006c0]:sb a1, 32(a0)<br>   |
|  55|[0x800022dd]<br>0xFFFFFEFF|- ea_align == 1 and (imm_val % 4) == 1<br>                                                                                                               |[0x800006dc]:sb a1, 5(a0)<br>    |
|  56|[0x800022e1]<br>0x00000008|- rs2_val == 8<br> - ea_align == 1 and (imm_val % 4) == 2<br>                                                                                            |[0x800006f8]:sb a1, 4094(a0)<br> |
|  57|[0x800022e5]<br>0xFFFFFFF8|- ea_align == 1 and (imm_val % 4) == 3<br>                                                                                                               |[0x80000714]:sb a1, 3583(a0)<br> |
|  58|[0x800022ea]<br>0x02000000|- ea_align == 2 and (imm_val % 4) == 0<br>                                                                                                               |[0x80000730]:sb a1, 3072(a0)<br> |
|  59|[0x800022ee]<br>0xFFFFFFBF|- ea_align == 2 and (imm_val % 4) == 1<br>                                                                                                               |[0x8000074c]:sb a1, 9(a0)<br>    |
|  60|[0x800022f2]<br>0xFFFFFFF8|- ea_align == 2 and (imm_val % 4) == 2<br>                                                                                                               |[0x80000768]:sb a1, 2(a0)<br>    |
|  61|[0x800022f6]<br>0x00000009|- ea_align == 2 and (imm_val % 4) == 3<br>                                                                                                               |[0x80000784]:sb a1, 4091(a0)<br> |
|  62|[0x800022fb]<br>0x00000010|- rs2_val == 16<br> - ea_align == 3 and (imm_val % 4) == 0<br>                                                                                           |[0x800007a0]:sb a1, 1024(a0)<br> |
|  63|[0x800022ff]<br>0xFFDFFFFF|- ea_align == 3 and (imm_val % 4) == 1<br>                                                                                                               |[0x800007c0]:sb a1, 1365(a0)<br> |
|  64|[0x80002303]<br>0x10000000|- ea_align == 3 and (imm_val % 4) == 2<br>                                                                                                               |[0x800007dc]:sb a1, 2730(a0)<br> |
|  65|[0x80002304]<br>0x00000040|- rs2_val == 64<br>                                                                                                                                      |[0x800007f8]:sb a1, 32(a0)<br>   |
|  66|[0x8000230b]<br>0x00008000|- ea_align == 3 and (imm_val % 4) == 3<br>                                                                                                               |[0x80000814]:sb a1, 1023(a0)<br> |
|  67|[0x8000230c]<br>0x00004000|- rs2_val == 16384<br> - imm_val == 0<br>                                                                                                                |[0x80000830]:sb a1, 0(a0)<br>    |
|  68|[0x80002310]<br>0x00002000|- rs2_val == 8192<br>                                                                                                                                    |[0x8000084c]:sb a1, 64(a0)<br>   |
|  69|[0x80002314]<br>0x00001000|- rs2_val == 4096<br>                                                                                                                                    |[0x80000868]:sb a1, 9(a0)<br>    |
|  70|[0x80002318]<br>0x00000800|- rs2_val == 2048<br>                                                                                                                                    |[0x80000888]:sb a1, 2730(a0)<br> |
|  71|[0x8000231c]<br>0x00000200|- rs2_val == 512<br>                                                                                                                                     |[0x800008a4]:sb a1, 5(a0)<br>    |
|  72|[0x80002320]<br>0x00000400|- rs2_val == 1024<br>                                                                                                                                    |[0x800008c0]:sb a1, 4079(a0)<br> |
|  73|[0x80002328]<br>0x00000100|- rs2_val == 256<br>                                                                                                                                     |[0x800008f8]:sb a1, 128(a0)<br>  |
|  74|[0x8000232c]<br>0x00000080|- rs2_val == 128<br>                                                                                                                                     |[0x80000914]:sb a1, 7(a0)<br>    |
|  75|[0x80002330]<br>0x00000020|- rs2_val == 32<br>                                                                                                                                      |[0x80000930]:sb a1, 512(a0)<br>  |
|  76|[0x80002334]<br>0x00000004|- rs2_val == 4<br>                                                                                                                                       |[0x8000094c]:sb a1, 3(a0)<br>    |
|  77|[0x80002338]<br>0x00000002|- rs2_val == 2<br>                                                                                                                                       |[0x80000968]:sb a1, 1024(a0)<br> |
