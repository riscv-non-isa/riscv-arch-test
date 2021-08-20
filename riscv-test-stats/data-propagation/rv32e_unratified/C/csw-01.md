
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000078', '0x800006c0')]      |
| SIG_REGION                | [('0x80002204', '0x80002314', '68 words')]      |
| COV_LABELS                | csw      |
| TEST_NAME                 | /home/bilalsakhawat/riscof_work/src/csw-01.S/csw-01.S    |
| Total Number of coverpoints| 106     |
| Total Coverpoints Hit     | 101      |
| Total Signature Updates   | 68      |
| STAT1                     | 68      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```


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

|s.no|        signature         |                                                  coverpoints                                                   |               code               |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------|----------------------------------|
|   1|[0x80002204]<br>0xFFFFBFFF|- opcode : c.sw<br> - rs1 : x15<br> - rs2 : x14<br> - rs1 != rs2<br> - imm_val == 0<br> - rs2_val == -16385<br> |[0x80000094]:c.sw a5, a4, 0<br>   |
|   2|[0x80002208]<br>0x7FFFFFFF|- rs1 : x11<br> - rs2 : x10<br> - rs2_val == 2147483647<br> - imm_val > 0<br> - rs2_val == (2**(xlen-1)-1)<br>  |[0x800000ae]:c.sw a1, a0, 20<br>  |
|   3|[0x8000220c]<br>0xBFFFFFFF|- rs1 : x13<br> - rs2 : x8<br> - rs2_val == -1073741825<br>                                                     |[0x800000c8]:c.sw a3, s0, 20<br>  |
|   4|[0x80002210]<br>0xDFFFFFFF|- rs1 : x9<br> - rs2 : x13<br> - rs2_val == -536870913<br>                                                      |[0x800000e2]:c.sw s1, a3, 36<br>  |
|   5|[0x80002214]<br>0xEFFFFFFF|- rs1 : x10<br> - rs2 : x12<br> - rs2_val == -268435457<br> - imm_val == 32<br>                                 |[0x800000fc]:c.sw a0, a2, 32<br>  |
|   6|[0x80002218]<br>0xF7FFFFFF|- rs1 : x14<br> - rs2 : x15<br> - rs2_val == -134217729<br>                                                     |[0x80000116]:c.sw a4, a5, 76<br>  |
|   7|[0x8000221c]<br>0xFBFFFFFF|- rs1 : x8<br> - rs2 : x9<br> - rs2_val == -67108865<br>                                                        |[0x80000130]:c.sw s0, s1, 72<br>  |
|   8|[0x80002220]<br>0xFDFFFFFF|- rs1 : x12<br> - rs2 : x11<br> - rs2_val == -33554433<br> - imm_val == 84<br>                                  |[0x8000014a]:c.sw a2, a1, 84<br>  |
|   9|[0x80002224]<br>0xFEFFFFFF|- rs2_val == -16777217<br>                                                                                      |[0x80000164]:c.sw a0, a1, 124<br> |
|  10|[0x80002228]<br>0xFF7FFFFF|- rs2_val == -8388609<br> - imm_val == 4<br>                                                                    |[0x8000017e]:c.sw a0, a1, 4<br>   |
|  11|[0x8000222c]<br>0xFFBFFFFF|- rs2_val == -4194305<br> - imm_val == 60<br>                                                                   |[0x80000198]:c.sw a0, a1, 60<br>  |
|  12|[0x80002230]<br>0xFFDFFFFF|- rs2_val == -2097153<br>                                                                                       |[0x800001b2]:c.sw a0, a1, 48<br>  |
|  13|[0x80002234]<br>0xFFEFFFFF|- rs2_val == -1048577<br>                                                                                       |[0x800001cc]:c.sw a0, a1, 124<br> |
|  14|[0x80002238]<br>0xFFF7FFFF|- rs2_val == -524289<br>                                                                                        |[0x800001e6]:c.sw a0, a1, 24<br>  |
|  15|[0x8000223c]<br>0xFFFBFFFF|- rs2_val == -262145<br> - imm_val == 40<br>                                                                    |[0x80000200]:c.sw a0, a1, 40<br>  |
|  16|[0x80002240]<br>0xFFFDFFFF|- rs2_val == -131073<br>                                                                                        |[0x8000021a]:c.sw a0, a1, 124<br> |
|  17|[0x80002244]<br>0xFFFEFFFF|- rs2_val == -65537<br>                                                                                         |[0x80000234]:c.sw a0, a1, 20<br>  |
|  18|[0x80002248]<br>0xFFFF7FFF|- rs2_val == -32769<br> - imm_val == 64<br>                                                                     |[0x8000024e]:c.sw a0, a1, 64<br>  |
|  19|[0x8000224c]<br>0xFFFFDFFF|- rs2_val == -8193<br>                                                                                          |[0x80000268]:c.sw a0, a1, 0<br>   |
|  20|[0x80002250]<br>0xFFFFEFFF|- rs2_val == -4097<br>                                                                                          |[0x80000282]:c.sw a0, a1, 72<br>  |
|  21|[0x80002254]<br>0xFFFFF7FF|- rs2_val == -2049<br>                                                                                          |[0x8000029c]:c.sw a0, a1, 36<br>  |
|  22|[0x80002258]<br>0xFFFFFBFF|- rs2_val == -1025<br>                                                                                          |[0x800002b2]:c.sw a0, a1, 40<br>  |
|  23|[0x8000225c]<br>0xFFFFFDFF|- rs2_val == -513<br> - imm_val == 120<br>                                                                      |[0x800002c8]:c.sw a0, a1, 120<br> |
|  24|[0x80002260]<br>0xFFFFFEFF|- rs2_val == -257<br>                                                                                           |[0x800002de]:c.sw a0, a1, 36<br>  |
|  25|[0x80002264]<br>0xFFFFFF7F|- rs2_val == -129<br>                                                                                           |[0x800002f4]:c.sw a0, a1, 76<br>  |
|  26|[0x80002268]<br>0xFFFFFFBF|- rs2_val == -65<br>                                                                                            |[0x8000030a]:c.sw a0, a1, 20<br>  |
|  27|[0x8000226c]<br>0xFFFFFFDF|- rs2_val == -33<br>                                                                                            |[0x80000320]:c.sw a0, a1, 40<br>  |
|  28|[0x80002270]<br>0xFFFFFFEF|- rs2_val == -17<br>                                                                                            |[0x80000336]:c.sw a0, a1, 52<br>  |
|  29|[0x80002274]<br>0xFFFFFFF7|- rs2_val == -9<br>                                                                                             |[0x8000034c]:c.sw a0, a1, 40<br>  |
|  30|[0x80002278]<br>0xFFFFFFFB|- rs2_val == -5<br>                                                                                             |[0x80000362]:c.sw a0, a1, 12<br>  |
|  31|[0x8000227c]<br>0xFFFFFFFD|- rs2_val == -3<br> - imm_val == 108<br>                                                                        |[0x80000378]:c.sw a0, a1, 108<br> |
|  32|[0x80002280]<br>0xFFFFFFFE|- rs2_val == -2<br> - imm_val == 92<br>                                                                         |[0x8000038e]:c.sw a0, a1, 92<br>  |
|  33|[0x80002284]<br>0x00008000|- imm_val == 116<br> - rs2_val == 32768<br>                                                                     |[0x800003a4]:c.sw a0, a1, 116<br> |
|  34|[0x80002288]<br>0x80000000|- rs2_val == -2147483648<br> - rs2_val == (-2**(xlen-1))<br>                                                    |[0x800003ba]:c.sw a0, a1, 124<br> |
|  35|[0x8000228c]<br>0x40000000|- rs2_val == 1073741824<br>                                                                                     |[0x800003d0]:c.sw a0, a1, 56<br>  |
|  36|[0x80002290]<br>0x20000000|- rs2_val == 536870912<br>                                                                                      |[0x800003e6]:c.sw a0, a1, 124<br> |
|  37|[0x80002294]<br>0x10000000|- rs2_val == 268435456<br>                                                                                      |[0x800003fc]:c.sw a0, a1, 28<br>  |
|  38|[0x80002298]<br>0x08000000|- rs2_val == 134217728<br>                                                                                      |[0x80000412]:c.sw a0, a1, 92<br>  |
|  39|[0x8000229c]<br>0x00000020|- rs2_val == 32<br>                                                                                             |[0x80000428]:c.sw a0, a1, 44<br>  |
|  40|[0x800022a0]<br>0x00000010|- rs2_val == 16<br>                                                                                             |[0x8000043e]:c.sw a0, a1, 48<br>  |
|  41|[0x800022a4]<br>0x00000008|- rs2_val == 8<br>                                                                                              |[0x80000454]:c.sw a0, a1, 36<br>  |
|  42|[0x800022a8]<br>0x00000004|- rs2_val == 4<br>                                                                                              |[0x8000046a]:c.sw a0, a1, 124<br> |
|  43|[0x800022ac]<br>0x00000002|- rs2_val == 2<br>                                                                                              |[0x80000480]:c.sw a0, a1, 52<br>  |
|  44|[0x800022b0]<br>0x00000001|- rs2_val == 1<br>                                                                                              |[0x80000496]:c.sw a0, a1, 84<br>  |
|  45|[0x800022b4]<br>0xFFEFFFFF|- imm_val == 16<br>                                                                                             |[0x800004b0]:c.sw a0, a1, 16<br>  |
|  46|[0x800022b8]<br>0x00080000|- rs2_val == 524288<br> - imm_val == 8<br>                                                                      |[0x800004c6]:c.sw a0, a1, 8<br>   |
|  47|[0x800022bc]<br>0xAAAAAAAA|- rs2_val == -1431655766<br>                                                                                    |[0x800004e0]:c.sw a0, a1, 60<br>  |
|  48|[0x800022c0]<br>0x55555555|- rs2_val == 1431655765<br>                                                                                     |[0x800004fa]:c.sw a0, a1, 16<br>  |
|  49|[0x800022c4]<br>0x00000000|- rs2_val == 0<br>                                                                                              |[0x80000510]:c.sw a0, a1, 56<br>  |
|  50|[0x800022c8]<br>0x04000000|- rs2_val == 67108864<br>                                                                                       |[0x80000526]:c.sw a0, a1, 12<br>  |
|  51|[0x800022cc]<br>0x02000000|- rs2_val == 33554432<br>                                                                                       |[0x8000053c]:c.sw a0, a1, 60<br>  |
|  52|[0x800022d0]<br>0x01000000|- rs2_val == 16777216<br>                                                                                       |[0x80000552]:c.sw a0, a1, 32<br>  |
|  53|[0x800022d4]<br>0x00800000|- rs2_val == 8388608<br>                                                                                        |[0x80000568]:c.sw a0, a1, 16<br>  |
|  54|[0x800022d8]<br>0x00400000|- rs2_val == 4194304<br>                                                                                        |[0x8000057e]:c.sw a0, a1, 0<br>   |
|  55|[0x800022dc]<br>0x00200000|- rs2_val == 2097152<br>                                                                                        |[0x80000594]:c.sw a0, a1, 36<br>  |
|  56|[0x800022e0]<br>0x00100000|- rs2_val == 1048576<br>                                                                                        |[0x800005aa]:c.sw a0, a1, 52<br>  |
|  57|[0x800022e4]<br>0x00040000|- rs2_val == 262144<br>                                                                                         |[0x800005c0]:c.sw a0, a1, 20<br>  |
|  58|[0x800022e8]<br>0x00020000|- rs2_val == 131072<br>                                                                                         |[0x800005d6]:c.sw a0, a1, 32<br>  |
|  59|[0x800022ec]<br>0x00010000|- rs2_val == 65536<br>                                                                                          |[0x800005ec]:c.sw a0, a1, 68<br>  |
|  60|[0x800022f0]<br>0x00004000|- rs2_val == 16384<br>                                                                                          |[0x80000602]:c.sw a0, a1, 32<br>  |
|  61|[0x800022f4]<br>0x00002000|- rs2_val == 8192<br>                                                                                           |[0x80000618]:c.sw a0, a1, 120<br> |
|  62|[0x800022f8]<br>0x00001000|- rs2_val == 4096<br>                                                                                           |[0x8000062e]:c.sw a0, a1, 124<br> |
|  63|[0x800022fc]<br>0x00000800|- rs2_val == 2048<br>                                                                                           |[0x80000648]:c.sw a0, a1, 108<br> |
|  64|[0x80002300]<br>0x00000400|- rs2_val == 1024<br>                                                                                           |[0x8000065e]:c.sw a0, a1, 76<br>  |
|  65|[0x80002304]<br>0x00000200|- rs2_val == 512<br>                                                                                            |[0x80000674]:c.sw a0, a1, 92<br>  |
|  66|[0x80002308]<br>0x00000100|- rs2_val == 256<br>                                                                                            |[0x8000068a]:c.sw a0, a1, 40<br>  |
|  67|[0x8000230c]<br>0x00000080|- rs2_val == 128<br>                                                                                            |[0x800006a0]:c.sw a0, a1, 120<br> |
|  68|[0x80002310]<br>0x00000040|- rs2_val == 64<br>                                                                                             |[0x800006b6]:c.sw a0, a1, 60<br>  |
