
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000770')]      |
| SIG_REGION                | [('0x80002010', '0x80002130', '72 words')]      |
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

|s.no|        signature         |                                                                              coverpoints                                                                               |               code               |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------|
|   1|[0x80002010]<br>0x80000000|- opcode : c.sw<br> - rs1 : x12<br> - rs2 : x14<br> - rs1 != rs2<br> - rs2_val == (-2**(xlen-1))<br> - imm_val > 0<br> - rs2_val == -2147483648<br> - imm_val == 16<br> |[0x80000110]:c.sw a2, a4, 16<br>  |
|   2|[0x80002014]<br>0x00000000|- rs1 : x14<br> - rs2 : x9<br> - rs2_val == 0<br> - imm_val == 32<br>                                                                                                   |[0x80000126]:c.sw a4, s1, 32<br>  |
|   3|[0x80002018]<br>0x7FFFFFFF|- rs1 : x13<br> - rs2 : x12<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - imm_val == 120<br>                                                       |[0x80000140]:c.sw a3, a2, 120<br> |
|   4|[0x8000201c]<br>0x00000001|- rs1 : x9<br> - rs2 : x11<br> - rs2_val == 1<br>                                                                                                                       |[0x80000156]:c.sw s1, a1, 28<br>  |
|   5|[0x80002020]<br>0xFFFFFFF7|- rs1 : x11<br> - rs2 : x8<br> - imm_val == 0<br> - rs2_val == -9<br>                                                                                                   |[0x8000016c]:c.sw a1, s0, 0<br>   |
|   6|[0x80002024]<br>0x00000002|- rs1 : x8<br> - rs2 : x15<br> - rs2_val == 2<br>                                                                                                                       |[0x80000182]:c.sw s0, a5, 0<br>   |
|   7|[0x80002028]<br>0x00000004|- rs1 : x15<br> - rs2 : x10<br> - rs2_val == 4<br>                                                                                                                      |[0x80000198]:c.sw a5, a0, 120<br> |
|   8|[0x8000202c]<br>0x00000008|- rs1 : x10<br> - rs2 : x13<br> - rs2_val == 8<br>                                                                                                                      |[0x800001ae]:c.sw a0, a3, 44<br>  |
|   9|[0x80002030]<br>0x00000010|- rs2_val == 16<br>                                                                                                                                                     |[0x800001c4]:c.sw a0, a1, 76<br>  |
|  10|[0x80002034]<br>0x00000020|- rs2_val == 32<br>                                                                                                                                                     |[0x800001da]:c.sw a0, a1, 44<br>  |
|  11|[0x80002038]<br>0x00000040|- rs2_val == 64<br> - imm_val == 60<br>                                                                                                                                 |[0x800001f0]:c.sw a0, a1, 60<br>  |
|  12|[0x8000203c]<br>0x00000080|- rs2_val == 128<br>                                                                                                                                                    |[0x80000206]:c.sw a0, a1, 52<br>  |
|  13|[0x80002040]<br>0x00000100|- rs2_val == 256<br> - imm_val == 4<br>                                                                                                                                 |[0x8000021c]:c.sw a0, a1, 4<br>   |
|  14|[0x80002044]<br>0x00000200|- rs2_val == 512<br>                                                                                                                                                    |[0x80000232]:c.sw a0, a1, 72<br>  |
|  15|[0x80002048]<br>0x00000400|- rs2_val == 1024<br> - imm_val == 116<br>                                                                                                                              |[0x80000248]:c.sw a0, a1, 116<br> |
|  16|[0x8000204c]<br>0x00000800|- rs2_val == 2048<br>                                                                                                                                                   |[0x80000262]:c.sw a0, a1, 12<br>  |
|  17|[0x80002050]<br>0x00001000|- rs2_val == 4096<br>                                                                                                                                                   |[0x80000278]:c.sw a0, a1, 120<br> |
|  18|[0x80002054]<br>0x00002000|- rs2_val == 8192<br>                                                                                                                                                   |[0x8000028e]:c.sw a0, a1, 20<br>  |
|  19|[0x80002058]<br>0x00004000|- rs2_val == 16384<br>                                                                                                                                                  |[0x800002a4]:c.sw a0, a1, 0<br>   |
|  20|[0x8000205c]<br>0x00008000|- rs2_val == 32768<br>                                                                                                                                                  |[0x800002ba]:c.sw a0, a1, 36<br>  |
|  21|[0x80002060]<br>0x00010000|- rs2_val == 65536<br> - imm_val == 64<br>                                                                                                                              |[0x800002d0]:c.sw a0, a1, 64<br>  |
|  22|[0x80002064]<br>0x00020000|- rs2_val == 131072<br>                                                                                                                                                 |[0x800002e6]:c.sw a0, a1, 120<br> |
|  23|[0x80002068]<br>0x00040000|- rs2_val == 262144<br>                                                                                                                                                 |[0x800002fc]:c.sw a0, a1, 120<br> |
|  24|[0x8000206c]<br>0x00080000|- rs2_val == 524288<br>                                                                                                                                                 |[0x80000312]:c.sw a0, a1, 44<br>  |
|  25|[0x80002070]<br>0x00100000|- rs2_val == 1048576<br>                                                                                                                                                |[0x80000328]:c.sw a0, a1, 64<br>  |
|  26|[0x80002074]<br>0x00200000|- rs2_val == 2097152<br>                                                                                                                                                |[0x8000033e]:c.sw a0, a1, 20<br>  |
|  27|[0x80002078]<br>0x00400000|- rs2_val == 4194304<br>                                                                                                                                                |[0x80000354]:c.sw a0, a1, 36<br>  |
|  28|[0x8000207c]<br>0x00800000|- rs2_val == 8388608<br>                                                                                                                                                |[0x8000036a]:c.sw a0, a1, 0<br>   |
|  29|[0x80002080]<br>0x01000000|- rs2_val == 16777216<br>                                                                                                                                               |[0x80000380]:c.sw a0, a1, 116<br> |
|  30|[0x80002084]<br>0x02000000|- rs2_val == 33554432<br>                                                                                                                                               |[0x80000396]:c.sw a0, a1, 64<br>  |
|  31|[0x80002088]<br>0x04000000|- rs2_val == 67108864<br>                                                                                                                                               |[0x800003ac]:c.sw a0, a1, 116<br> |
|  32|[0x8000208c]<br>0x08000000|- rs2_val == 134217728<br>                                                                                                                                              |[0x800003c2]:c.sw a0, a1, 68<br>  |
|  33|[0x80002090]<br>0x10000000|- rs2_val == 268435456<br>                                                                                                                                              |[0x800003d8]:c.sw a0, a1, 16<br>  |
|  34|[0x80002094]<br>0x20000000|- rs2_val == 536870912<br>                                                                                                                                              |[0x800003ee]:c.sw a0, a1, 68<br>  |
|  35|[0x80002098]<br>0x40000000|- rs2_val == 1073741824<br>                                                                                                                                             |[0x80000404]:c.sw a0, a1, 36<br>  |
|  36|[0x8000209c]<br>0xFFFFFFFE|- rs2_val == -2<br>                                                                                                                                                     |[0x8000041a]:c.sw a0, a1, 44<br>  |
|  37|[0x800020a0]<br>0xFFFFFFFD|- rs2_val == -3<br>                                                                                                                                                     |[0x80000430]:c.sw a0, a1, 48<br>  |
|  38|[0x800020a4]<br>0xFFFFFFFB|- rs2_val == -5<br>                                                                                                                                                     |[0x80000446]:c.sw a0, a1, 24<br>  |
|  39|[0x800020a8]<br>0xFFFFFFEF|- rs2_val == -17<br>                                                                                                                                                    |[0x8000045c]:c.sw a0, a1, 72<br>  |
|  40|[0x800020ac]<br>0xFFFFFFDF|- rs2_val == -33<br> - imm_val == 108<br>                                                                                                                               |[0x80000472]:c.sw a0, a1, 108<br> |
|  41|[0x800020b0]<br>0xFFFFFFBF|- rs2_val == -65<br>                                                                                                                                                    |[0x80000488]:c.sw a0, a1, 28<br>  |
|  42|[0x800020b4]<br>0xF7FFFFFF|- rs2_val == -134217729<br>                                                                                                                                             |[0x800004a2]:c.sw a0, a1, 68<br>  |
|  43|[0x800020b8]<br>0xEFFFFFFF|- rs2_val == -268435457<br>                                                                                                                                             |[0x800004bc]:c.sw a0, a1, 52<br>  |
|  44|[0x800020bc]<br>0xDFFFFFFF|- rs2_val == -536870913<br>                                                                                                                                             |[0x800004d6]:c.sw a0, a1, 24<br>  |
|  45|[0x800020c0]<br>0xBFFFFFFF|- rs2_val == -1073741825<br>                                                                                                                                            |[0x800004f0]:c.sw a0, a1, 64<br>  |
|  46|[0x800020c4]<br>0x55555555|- rs2_val == 1431655765<br>                                                                                                                                             |[0x8000050a]:c.sw a0, a1, 124<br> |
|  47|[0x800020c8]<br>0xAAAAAAAA|- rs2_val == -1431655766<br>                                                                                                                                            |[0x80000524]:c.sw a0, a1, 52<br>  |
|  48|[0x800020cc]<br>0x00000800|- imm_val == 8<br>                                                                                                                                                      |[0x8000053e]:c.sw a0, a1, 8<br>   |
|  49|[0x800020d0]<br>0x00000001|- imm_val == 92<br>                                                                                                                                                     |[0x80000554]:c.sw a0, a1, 92<br>  |
|  50|[0x800020d4]<br>0xFBFFFFFF|- rs2_val == -67108865<br> - imm_val == 84<br>                                                                                                                          |[0x8000056e]:c.sw a0, a1, 84<br>  |
|  51|[0x800020d8]<br>0x00000005|- imm_val == 40<br>                                                                                                                                                     |[0x80000584]:c.sw a0, a1, 40<br>  |
|  52|[0x800020dc]<br>0xFFFFFF7F|- rs2_val == -129<br>                                                                                                                                                   |[0x8000059a]:c.sw a0, a1, 84<br>  |
|  53|[0x800020e0]<br>0xFFFFFEFF|- rs2_val == -257<br>                                                                                                                                                   |[0x800005b0]:c.sw a0, a1, 116<br> |
|  54|[0x800020e4]<br>0xFFFFFDFF|- rs2_val == -513<br>                                                                                                                                                   |[0x800005c6]:c.sw a0, a1, 8<br>   |
|  55|[0x800020e8]<br>0xFFFFFBFF|- rs2_val == -1025<br>                                                                                                                                                  |[0x800005dc]:c.sw a0, a1, 60<br>  |
|  56|[0x800020ec]<br>0xFFFFF7FF|- rs2_val == -2049<br>                                                                                                                                                  |[0x800005f6]:c.sw a0, a1, 64<br>  |
|  57|[0x800020f0]<br>0xFFFFEFFF|- rs2_val == -4097<br>                                                                                                                                                  |[0x80000610]:c.sw a0, a1, 92<br>  |
|  58|[0x800020f4]<br>0xFFFFDFFF|- rs2_val == -8193<br>                                                                                                                                                  |[0x8000062a]:c.sw a0, a1, 20<br>  |
|  59|[0x800020f8]<br>0xFFFFBFFF|- rs2_val == -16385<br>                                                                                                                                                 |[0x80000644]:c.sw a0, a1, 36<br>  |
|  60|[0x800020fc]<br>0xFFFF7FFF|- rs2_val == -32769<br>                                                                                                                                                 |[0x8000065e]:c.sw a0, a1, 84<br>  |
|  61|[0x80002100]<br>0xFFFEFFFF|- rs2_val == -65537<br>                                                                                                                                                 |[0x80000678]:c.sw a0, a1, 44<br>  |
|  62|[0x80002104]<br>0xFFFDFFFF|- rs2_val == -131073<br>                                                                                                                                                |[0x80000692]:c.sw a0, a1, 32<br>  |
|  63|[0x80002108]<br>0xFFFBFFFF|- rs2_val == -262145<br>                                                                                                                                                |[0x800006ac]:c.sw a0, a1, 16<br>  |
|  64|[0x8000210c]<br>0xFFF7FFFF|- rs2_val == -524289<br>                                                                                                                                                |[0x800006c6]:c.sw a0, a1, 84<br>  |
|  65|[0x80002110]<br>0xFFEFFFFF|- rs2_val == -1048577<br>                                                                                                                                               |[0x800006e0]:c.sw a0, a1, 120<br> |
|  66|[0x80002114]<br>0xFFDFFFFF|- rs2_val == -2097153<br>                                                                                                                                               |[0x800006fa]:c.sw a0, a1, 48<br>  |
|  67|[0x80002118]<br>0xFFBFFFFF|- rs2_val == -4194305<br>                                                                                                                                               |[0x80000714]:c.sw a0, a1, 68<br>  |
|  68|[0x8000211c]<br>0xFF7FFFFF|- rs2_val == -8388609<br>                                                                                                                                               |[0x8000072e]:c.sw a0, a1, 28<br>  |
|  69|[0x80002120]<br>0xFEFFFFFF|- rs2_val == -16777217<br>                                                                                                                                              |[0x80000748]:c.sw a0, a1, 16<br>  |
|  70|[0x80002124]<br>0xFDFFFFFF|- rs2_val == -33554433<br>                                                                                                                                              |[0x80000762]:c.sw a0, a1, 28<br>  |
