
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000772')]      |
| SIG_REGION                | [('0x80002204', '0x8000231c', '70 words')]      |
| COV_LABELS                | csw      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/csw-01.S/csw-01.S    |
| Total Number of coverpoints| 101     |
| Total Coverpoints Hit     | 101      |
| Total Signature Updates   | 70      |
| STAT1                     | 70      |
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

|s.no|        signature         |                                                                    coverpoints                                                                     |               code               |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------|
|   1|[0x80002204]<br>0x80000000|- opcode : c.sw<br> - rs1 : x15<br> - rs2 : x13<br> - rs1 != rs2<br> - rs2_val == (-2**(xlen-1))<br> - imm_val > 0<br> - rs2_val == -2147483648<br> |[0x80000110]:c.sw a5, a3, 24<br>  |
|   2|[0x80002208]<br>0x00000000|- rs1 : x12<br> - rs2 : x14<br> - rs2_val == 0<br>                                                                                                  |[0x80000126]:c.sw a2, a4, 28<br>  |
|   3|[0x8000220c]<br>0x7FFFFFFF|- rs1 : x8<br> - rs2 : x9<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br>                                                          |[0x80000140]:c.sw s0, s1, 76<br>  |
|   4|[0x80002210]<br>0x00000001|- rs1 : x14<br> - rs2 : x11<br> - rs2_val == 1<br> - imm_val == 32<br>                                                                              |[0x80000156]:c.sw a4, a1, 32<br>  |
|   5|[0x80002214]<br>0x04000000|- rs1 : x9<br> - rs2 : x10<br> - imm_val == 0<br> - rs2_val == 67108864<br>                                                                         |[0x8000016c]:c.sw s1, a0, 0<br>   |
|   6|[0x80002218]<br>0x00000002|- rs1 : x11<br> - rs2 : x15<br> - rs2_val == 2<br> - imm_val == 116<br>                                                                             |[0x80000182]:c.sw a1, a5, 116<br> |
|   7|[0x8000221c]<br>0x00000004|- rs1 : x13<br> - rs2 : x8<br> - rs2_val == 4<br>                                                                                                   |[0x80000198]:c.sw a3, s0, 48<br>  |
|   8|[0x80002220]<br>0x00000008|- rs1 : x10<br> - rs2 : x12<br> - rs2_val == 8<br> - imm_val == 64<br>                                                                              |[0x800001ae]:c.sw a0, a2, 64<br>  |
|   9|[0x80002224]<br>0x00000010|- rs2_val == 16<br> - imm_val == 4<br>                                                                                                              |[0x800001c4]:c.sw a0, a1, 4<br>   |
|  10|[0x80002228]<br>0x00000020|- rs2_val == 32<br>                                                                                                                                 |[0x800001da]:c.sw a0, a1, 20<br>  |
|  11|[0x8000222c]<br>0x00000040|- rs2_val == 64<br>                                                                                                                                 |[0x800001f0]:c.sw a0, a1, 24<br>  |
|  12|[0x80002230]<br>0x00000080|- rs2_val == 128<br>                                                                                                                                |[0x80000206]:c.sw a0, a1, 36<br>  |
|  13|[0x80002234]<br>0x00000100|- rs2_val == 256<br>                                                                                                                                |[0x8000021c]:c.sw a0, a1, 48<br>  |
|  14|[0x80002238]<br>0x00000200|- rs2_val == 512<br>                                                                                                                                |[0x80000232]:c.sw a0, a1, 44<br>  |
|  15|[0x8000223c]<br>0x00000400|- rs2_val == 1024<br>                                                                                                                               |[0x80000248]:c.sw a0, a1, 28<br>  |
|  16|[0x80002240]<br>0x00000800|- rs2_val == 2048<br> - imm_val == 120<br>                                                                                                          |[0x80000262]:c.sw a0, a1, 120<br> |
|  17|[0x80002244]<br>0x00001000|- rs2_val == 4096<br>                                                                                                                               |[0x80000278]:c.sw a0, a1, 28<br>  |
|  18|[0x80002248]<br>0x00002000|- rs2_val == 8192<br>                                                                                                                               |[0x8000028e]:c.sw a0, a1, 56<br>  |
|  19|[0x8000224c]<br>0x00004000|- rs2_val == 16384<br>                                                                                                                              |[0x800002a4]:c.sw a0, a1, 36<br>  |
|  20|[0x80002250]<br>0x00008000|- rs2_val == 32768<br>                                                                                                                              |[0x800002ba]:c.sw a0, a1, 48<br>  |
|  21|[0x80002254]<br>0x00010000|- rs2_val == 65536<br>                                                                                                                              |[0x800002d0]:c.sw a0, a1, 12<br>  |
|  22|[0x80002258]<br>0x00020000|- rs2_val == 131072<br>                                                                                                                             |[0x800002e6]:c.sw a0, a1, 68<br>  |
|  23|[0x8000225c]<br>0x00040000|- rs2_val == 262144<br>                                                                                                                             |[0x800002fc]:c.sw a0, a1, 68<br>  |
|  24|[0x80002260]<br>0x00080000|- rs2_val == 524288<br> - imm_val == 92<br>                                                                                                         |[0x80000312]:c.sw a0, a1, 92<br>  |
|  25|[0x80002264]<br>0x00100000|- rs2_val == 1048576<br>                                                                                                                            |[0x80000328]:c.sw a0, a1, 64<br>  |
|  26|[0x80002268]<br>0x00200000|- rs2_val == 2097152<br>                                                                                                                            |[0x8000033e]:c.sw a0, a1, 24<br>  |
|  27|[0x8000226c]<br>0x00400000|- rs2_val == 4194304<br>                                                                                                                            |[0x80000354]:c.sw a0, a1, 28<br>  |
|  28|[0x80002270]<br>0x00800000|- rs2_val == 8388608<br> - imm_val == 84<br>                                                                                                        |[0x8000036a]:c.sw a0, a1, 84<br>  |
|  29|[0x80002274]<br>0x01000000|- rs2_val == 16777216<br>                                                                                                                           |[0x80000380]:c.sw a0, a1, 12<br>  |
|  30|[0x80002278]<br>0x02000000|- rs2_val == 33554432<br>                                                                                                                           |[0x80000396]:c.sw a0, a1, 76<br>  |
|  31|[0x8000227c]<br>0x08000000|- rs2_val == 134217728<br>                                                                                                                          |[0x800003ac]:c.sw a0, a1, 72<br>  |
|  32|[0x80002280]<br>0x10000000|- rs2_val == 268435456<br>                                                                                                                          |[0x800003c2]:c.sw a0, a1, 0<br>   |
|  33|[0x80002284]<br>0x20000000|- rs2_val == 536870912<br>                                                                                                                          |[0x800003d8]:c.sw a0, a1, 52<br>  |
|  34|[0x80002288]<br>0x40000000|- rs2_val == 1073741824<br>                                                                                                                         |[0x800003ee]:c.sw a0, a1, 72<br>  |
|  35|[0x8000228c]<br>0xFFFFFFFE|- rs2_val == -2<br>                                                                                                                                 |[0x80000404]:c.sw a0, a1, 52<br>  |
|  36|[0x80002290]<br>0xFFFFFFFD|- rs2_val == -3<br>                                                                                                                                 |[0x8000041a]:c.sw a0, a1, 56<br>  |
|  37|[0x80002294]<br>0xFFFFFFFB|- rs2_val == -5<br>                                                                                                                                 |[0x80000430]:c.sw a0, a1, 44<br>  |
|  38|[0x80002298]<br>0xFFFFFFF7|- rs2_val == -9<br>                                                                                                                                 |[0x80000446]:c.sw a0, a1, 32<br>  |
|  39|[0x8000229c]<br>0xFFFFFFEF|- rs2_val == -17<br> - imm_val == 16<br>                                                                                                            |[0x8000045c]:c.sw a0, a1, 16<br>  |
|  40|[0x800022a0]<br>0xFFFFFFDF|- rs2_val == -33<br>                                                                                                                                |[0x80000472]:c.sw a0, a1, 36<br>  |
|  41|[0x800022a4]<br>0xF7FFFFFF|- rs2_val == -134217729<br>                                                                                                                         |[0x8000048c]:c.sw a0, a1, 120<br> |
|  42|[0x800022a8]<br>0xEFFFFFFF|- rs2_val == -268435457<br>                                                                                                                         |[0x800004a6]:c.sw a0, a1, 36<br>  |
|  43|[0x800022ac]<br>0xDFFFFFFF|- rs2_val == -536870913<br>                                                                                                                         |[0x800004c0]:c.sw a0, a1, 92<br>  |
|  44|[0x800022b0]<br>0xBFFFFFFF|- rs2_val == -1073741825<br>                                                                                                                        |[0x800004da]:c.sw a0, a1, 92<br>  |
|  45|[0x800022b4]<br>0x55555555|- rs2_val == 1431655765<br>                                                                                                                         |[0x800004f4]:c.sw a0, a1, 0<br>   |
|  46|[0x800022b8]<br>0xAAAAAAAA|- rs2_val == -1431655766<br>                                                                                                                        |[0x8000050e]:c.sw a0, a1, 24<br>  |
|  47|[0x800022bc]<br>0x04000000|- imm_val == 8<br>                                                                                                                                  |[0x80000524]:c.sw a0, a1, 8<br>   |
|  48|[0x800022c0]<br>0xFFFBFFFF|- rs2_val == -262145<br> - imm_val == 108<br>                                                                                                       |[0x8000053e]:c.sw a0, a1, 108<br> |
|  49|[0x800022c4]<br>0xFFFFFFFE|- imm_val == 60<br>                                                                                                                                 |[0x80000554]:c.sw a0, a1, 60<br>  |
|  50|[0x800022c8]<br>0x00008000|- imm_val == 40<br>                                                                                                                                 |[0x8000056a]:c.sw a0, a1, 40<br>  |
|  51|[0x800022cc]<br>0xFFFFFFBF|- rs2_val == -65<br>                                                                                                                                |[0x80000580]:c.sw a0, a1, 52<br>  |
|  52|[0x800022d0]<br>0xFFFFFF7F|- rs2_val == -129<br>                                                                                                                               |[0x80000596]:c.sw a0, a1, 28<br>  |
|  53|[0x800022d4]<br>0xFFFFFEFF|- rs2_val == -257<br>                                                                                                                               |[0x800005ac]:c.sw a0, a1, 16<br>  |
|  54|[0x800022d8]<br>0xFFFFFDFF|- rs2_val == -513<br>                                                                                                                               |[0x800005c2]:c.sw a0, a1, 0<br>   |
|  55|[0x800022dc]<br>0xFFFFFBFF|- rs2_val == -1025<br>                                                                                                                              |[0x800005d8]:c.sw a0, a1, 40<br>  |
|  56|[0x800022e0]<br>0xFFFFF7FF|- rs2_val == -2049<br>                                                                                                                              |[0x800005f2]:c.sw a0, a1, 56<br>  |
|  57|[0x800022e4]<br>0xFFFFEFFF|- rs2_val == -4097<br>                                                                                                                              |[0x8000060c]:c.sw a0, a1, 84<br>  |
|  58|[0x800022e8]<br>0xFFFFDFFF|- rs2_val == -8193<br>                                                                                                                              |[0x80000626]:c.sw a0, a1, 124<br> |
|  59|[0x800022ec]<br>0xFFFFBFFF|- rs2_val == -16385<br>                                                                                                                             |[0x80000640]:c.sw a0, a1, 8<br>   |
|  60|[0x800022f0]<br>0xFFFF7FFF|- rs2_val == -32769<br>                                                                                                                             |[0x8000065a]:c.sw a0, a1, 44<br>  |
|  61|[0x800022f4]<br>0xFFFEFFFF|- rs2_val == -65537<br>                                                                                                                             |[0x80000674]:c.sw a0, a1, 0<br>   |
|  62|[0x800022f8]<br>0xFFFDFFFF|- rs2_val == -131073<br>                                                                                                                            |[0x8000068e]:c.sw a0, a1, 16<br>  |
|  63|[0x800022fc]<br>0xFFF7FFFF|- rs2_val == -524289<br>                                                                                                                            |[0x800006a8]:c.sw a0, a1, 108<br> |
|  64|[0x80002300]<br>0xFFEFFFFF|- rs2_val == -1048577<br>                                                                                                                           |[0x800006c2]:c.sw a0, a1, 76<br>  |
|  65|[0x80002304]<br>0xFFDFFFFF|- rs2_val == -2097153<br>                                                                                                                           |[0x800006dc]:c.sw a0, a1, 52<br>  |
|  66|[0x80002308]<br>0xFFBFFFFF|- rs2_val == -4194305<br>                                                                                                                           |[0x800006f6]:c.sw a0, a1, 8<br>   |
|  67|[0x8000230c]<br>0xFF7FFFFF|- rs2_val == -8388609<br>                                                                                                                           |[0x80000710]:c.sw a0, a1, 40<br>  |
|  68|[0x80002310]<br>0xFEFFFFFF|- rs2_val == -16777217<br>                                                                                                                          |[0x8000072a]:c.sw a0, a1, 56<br>  |
|  69|[0x80002314]<br>0xFDFFFFFF|- rs2_val == -33554433<br>                                                                                                                          |[0x80000744]:c.sw a0, a1, 56<br>  |
|  70|[0x80002318]<br>0xFBFFFFFF|- rs2_val == -67108865<br>                                                                                                                          |[0x8000075e]:c.sw a0, a1, 120<br> |
