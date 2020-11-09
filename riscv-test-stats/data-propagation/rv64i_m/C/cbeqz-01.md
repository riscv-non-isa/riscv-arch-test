
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80002d20')]      |
| SIG_REGION                | [('0x80005208', '0x80005630', '133 dwords')]      |
| COV_LABELS                | cbeqz      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cbeqz-01.S/cbeqz-01.S    |
| Total Number of coverpoints| 148     |
| Total Coverpoints Hit     | 148      |
| Total Signature Updates   | 133      |
| STAT1                     | 133      |
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

|s.no|            signature             |                                                coverpoints                                                 |                                                             code                                                              |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80005208]<br>0xFF76DF56FF76DF58|- opcode : c.beqz<br> - rs1 : x12<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 144115188075855872<br> |[0x800003ae]:c.beqz a2, 8<br> [0x800003b0]:addi sp, sp, 2<br> [0x800003b4]:jal zero, 12<br> [0x800003c0]:sd sp, 0(ra)<br>      |
|   2|[0x80005210]<br>0xFF76DF56FF76DF5A|- rs1 : x9<br> - rs1_val < 0 and imm_val > 0<br> - rs1_val == -262145<br>                                   |[0x800003da]:c.beqz s1, 5<br> [0x800003dc]:addi sp, sp, 2<br> [0x800003e0]:jal zero, 6<br> [0x800003e6]:sd sp, 8(ra)<br>       |
|   3|[0x80005218]<br>0xFF76DF56FF76DF5D|- rs1 : x14<br> - rs1_val == 0<br> - rs1_val == 0 and imm_val > 0<br>                                       |[0x800003fc]:c.beqz a4, 5<br> [0x80000406]:c.addi sp, 3<br> [0x80000408]:sd sp, 16(ra)<br>                                     |
|   4|[0x80005220]<br>0xFF76DF56FF76DF5F|- rs1 : x11<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == 33554432<br>                                 |[0x80000422]:c.beqz a1, 250<br> [0x80000424]:addi sp, sp, 2<br> [0x80000428]:jal zero, 6<br> [0x8000042e]:sd sp, 24(ra)<br>    |
|   5|[0x80005228]<br>0xFF76DF56FF76DF61|- rs1 : x8<br> - rs1_val < 0 and imm_val < 0<br>                                                            |[0x80000462]:c.beqz s0, 239<br> [0x80000464]:addi sp, sp, 2<br> [0x80000468]:jal zero, 6<br> [0x8000046e]:sd sp, 32(ra)<br>    |
|   6|[0x80005230]<br>0xFF76DF56FF76DF62|- rs1 : x13<br> - rs1_val == 0 and imm_val < 0<br>                                                          |[0x8000049e]:c.beqz a3, 239<br> [0x8000047c]:addi sp, sp, 1<br> [0x80000480]:jal zero, 42<br> [0x800004aa]:sd sp, 40(ra)<br>   |
|   7|[0x80005238]<br>0xFF76DF56FF76DF64|- rs1 : x10<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -9223372036854775808<br>                       |[0x800004c4]:c.beqz a0, 7<br> [0x800004c6]:addi sp, sp, 2<br> [0x800004ca]:jal zero, 10<br> [0x800004d4]:sd sp, 48(ra)<br>     |
|   8|[0x80005240]<br>0xFF76DF56FF76DF66|- rs1 : x15<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 9223372036854775807<br>                       |[0x800004f2]:c.beqz a5, 63<br> [0x800004f4]:addi sp, sp, 2<br> [0x800004f8]:jal zero, 122<br> [0x80000572]:sd sp, 56(ra)<br>   |
|   9|[0x80005248]<br>0xFF76DF56FF76DF68|- rs1_val == 1<br>                                                                                          |[0x8000058c]:c.beqz a0, 250<br> [0x8000058e]:addi sp, sp, 2<br> [0x80000592]:jal zero, 6<br> [0x80000598]:sd sp, 64(ra)<br>    |
|  10|[0x80005250]<br>0xFF76DF56FF76DF6A|- rs1_val == 2<br>                                                                                          |[0x80000652]:c.beqz a0, 170<br> [0x80000654]:addi sp, sp, 2<br> [0x80000658]:jal zero, 6<br> [0x8000065e]:sd sp, 72(ra)<br>    |
|  11|[0x80005258]<br>0xFF76DF56FF76DF6C|- rs1_val == 4<br>                                                                                          |[0x80000674]:c.beqz a0, 5<br> [0x80000676]:addi sp, sp, 2<br> [0x8000067a]:jal zero, 6<br> [0x80000680]:sd sp, 80(ra)<br>      |
|  12|[0x80005260]<br>0xFF76DF56FF76DF6E|- rs1_val == 8<br>                                                                                          |[0x80000696]:c.beqz a0, 5<br> [0x80000698]:addi sp, sp, 2<br> [0x8000069c]:jal zero, 6<br> [0x800006a2]:sd sp, 88(ra)<br>      |
|  13|[0x80005268]<br>0xFF76DF56FF76DF70|- rs1_val == 16<br>                                                                                         |[0x800006b8]:c.beqz a0, 32<br> [0x800006ba]:addi sp, sp, 2<br> [0x800006be]:jal zero, 60<br> [0x800006fa]:sd sp, 96(ra)<br>    |
|  14|[0x80005270]<br>0xFF76DF56FF76DF72|- rs1_val == 32<br>                                                                                         |[0x80000716]:c.beqz a0, 249<br> [0x80000718]:addi sp, sp, 2<br> [0x8000071c]:jal zero, 6<br> [0x80000722]:sd sp, 104(ra)<br>   |
|  15|[0x80005278]<br>0xFF76DF56FF76DF74|- rs1_val == 64<br>                                                                                         |[0x800007b2]:c.beqz a0, 191<br> [0x800007b4]:addi sp, sp, 2<br> [0x800007b8]:jal zero, 6<br> [0x800007be]:sd sp, 112(ra)<br>   |
|  16|[0x80005280]<br>0xFF76DF56FF76DF76|- rs1_val == 128<br>                                                                                        |[0x8000080e]:c.beqz a0, 223<br> [0x80000810]:addi sp, sp, 2<br> [0x80000814]:jal zero, 6<br> [0x8000081a]:sd sp, 120(ra)<br>   |
|  17|[0x80005288]<br>0xFF76DF56FF76DF78|- rs1_val == 256<br>                                                                                        |[0x8000083a]:c.beqz a0, 247<br> [0x8000083c]:addi sp, sp, 2<br> [0x80000840]:jal zero, 6<br> [0x80000846]:sd sp, 128(ra)<br>   |
|  18|[0x80005290]<br>0xFF76DF56FF76DF7A|- rs1_val == 512<br>                                                                                        |[0x80000868]:c.beqz a0, 246<br> [0x8000086a]:addi sp, sp, 2<br> [0x8000086e]:jal zero, 6<br> [0x80000874]:sd sp, 136(ra)<br>   |
|  19|[0x80005298]<br>0xFF76DF56FF76DF7C|- rs1_val == 1024<br>                                                                                       |[0x8000088a]:c.beqz a0, 252<br> [0x8000088c]:addi sp, sp, 2<br> [0x80000890]:jal zero, 6<br> [0x80000896]:sd sp, 144(ra)<br>   |
|  20|[0x800052a0]<br>0xFF76DF56FF76DF7E|- rs1_val == 2048<br>                                                                                       |[0x800008ba]:c.beqz a0, 247<br> [0x800008bc]:addi sp, sp, 2<br> [0x800008c0]:jal zero, 6<br> [0x800008c6]:sd sp, 152(ra)<br>   |
|  21|[0x800052a8]<br>0xFF76DF56FF76DF80|- rs1_val == 4096<br>                                                                                       |[0x800008dc]:c.beqz a0, 64<br> [0x800008de]:addi sp, sp, 2<br> [0x800008e2]:jal zero, 124<br> [0x8000095e]:sd sp, 160(ra)<br>  |
|  22|[0x800052b0]<br>0xFF76DF56FF76DF82|- rs1_val == 8192<br>                                                                                       |[0x80000974]:c.beqz a0, 32<br> [0x80000976]:addi sp, sp, 2<br> [0x8000097a]:jal zero, 60<br> [0x800009b6]:sd sp, 168(ra)<br>   |
|  23|[0x800052b8]<br>0xFF76DF56FF76DF84|- rs1_val == 16384<br>                                                                                      |[0x800009cc]:c.beqz a0, 9<br> [0x800009ce]:addi sp, sp, 2<br> [0x800009d2]:jal zero, 14<br> [0x800009e0]:sd sp, 176(ra)<br>    |
|  24|[0x800052c0]<br>0xFF76DF56FF76DF86|- rs1_val == 32768<br>                                                                                      |[0x800009f6]:c.beqz a0, 8<br> [0x800009f8]:addi sp, sp, 2<br> [0x800009fc]:jal zero, 12<br> [0x80000a08]:sd sp, 184(ra)<br>    |
|  25|[0x800052c8]<br>0xFF76DF56FF76DF88|- rs1_val == 65536<br>                                                                                      |[0x80000a20]:c.beqz a0, 251<br> [0x80000a22]:addi sp, sp, 2<br> [0x80000a26]:jal zero, 6<br> [0x80000a2c]:sd sp, 192(ra)<br>   |
|  26|[0x800052d0]<br>0xFF76DF56FF76DF8A|- rs1_val == 131072<br>                                                                                     |[0x80000a46]:c.beqz a0, 250<br> [0x80000a48]:addi sp, sp, 2<br> [0x80000a4c]:jal zero, 6<br> [0x80000a52]:sd sp, 200(ra)<br>   |
|  27|[0x800052d8]<br>0xFF76DF56FF76DF8C|- rs1_val == 262144<br>                                                                                     |[0x80000a70]:c.beqz a0, 248<br> [0x80000a72]:addi sp, sp, 2<br> [0x80000a76]:jal zero, 6<br> [0x80000a7c]:sd sp, 208(ra)<br>   |
|  28|[0x800052e0]<br>0xFF76DF56FF76DF8E|- rs1_val == 524288<br>                                                                                     |[0x80000a94]:c.beqz a0, 251<br> [0x80000a96]:addi sp, sp, 2<br> [0x80000a9a]:jal zero, 6<br> [0x80000aa0]:sd sp, 216(ra)<br>   |
|  29|[0x800052e8]<br>0xFF76DF56FF76DF90|- rs1_val == 1048576<br>                                                                                    |[0x80000ab6]:c.beqz a0, 5<br> [0x80000ab8]:addi sp, sp, 2<br> [0x80000abc]:jal zero, 6<br> [0x80000ac2]:sd sp, 224(ra)<br>     |
|  30|[0x800052f0]<br>0xFF76DF56FF76DF92|- rs1_val == 2097152<br>                                                                                    |[0x80000ad8]:c.beqz a0, 7<br> [0x80000ada]:addi sp, sp, 2<br> [0x80000ade]:jal zero, 10<br> [0x80000ae8]:sd sp, 232(ra)<br>    |
|  31|[0x800052f8]<br>0xFF76DF56FF76DF94|- rs1_val == 4194304<br>                                                                                    |[0x80000afe]:c.beqz a0, 63<br> [0x80000b00]:addi sp, sp, 2<br> [0x80000b04]:jal zero, 122<br> [0x80000b7e]:sd sp, 240(ra)<br>  |
|  32|[0x80005300]<br>0xFF76DF56FF76DF96|- rs1_val == 8388608<br>                                                                                    |[0x80000c38]:c.beqz a0, 170<br> [0x80000c3a]:addi sp, sp, 2<br> [0x80000c3e]:jal zero, 6<br> [0x80000c44]:sd sp, 248(ra)<br>   |
|  33|[0x80005308]<br>0xFF76DF56FF76DF98|- rs1_val == 16777216<br>                                                                                   |[0x80000c5a]:c.beqz a0, 252<br> [0x80000c5c]:addi sp, sp, 2<br> [0x80000c60]:jal zero, 6<br> [0x80000c66]:sd sp, 256(ra)<br>   |
|  34|[0x80005310]<br>0xFF76DF56FF76DF9A|- rs1_val == 67108864<br>                                                                                   |[0x80000c7c]:c.beqz a0, 252<br> [0x80000c7e]:addi sp, sp, 2<br> [0x80000c82]:jal zero, 6<br> [0x80000c88]:sd sp, 264(ra)<br>   |
|  35|[0x80005318]<br>0xFF76DF56FF76DF9C|- rs1_val == 134217728<br>                                                                                  |[0x80000caa]:c.beqz a0, 246<br> [0x80000cac]:addi sp, sp, 2<br> [0x80000cb0]:jal zero, 6<br> [0x80000cb6]:sd sp, 272(ra)<br>   |
|  36|[0x80005320]<br>0xFF76DF56FF76DF9E|- rs1_val == 268435456<br>                                                                                  |[0x80000ccc]:c.beqz a0, 252<br> [0x80000cce]:addi sp, sp, 2<br> [0x80000cd2]:jal zero, 6<br> [0x80000cd8]:sd sp, 280(ra)<br>   |
|  37|[0x80005328]<br>0xFF76DF56FF76DFA0|- rs1_val == 536870912<br>                                                                                  |[0x80000cee]:c.beqz a0, 6<br> [0x80000cf0]:addi sp, sp, 2<br> [0x80000cf4]:jal zero, 8<br> [0x80000cfc]:sd sp, 288(ra)<br>     |
|  38|[0x80005330]<br>0xFF76DF56FF76DFA2|- rs1_val == 1073741824<br>                                                                                 |[0x80000d12]:c.beqz a0, 85<br> [0x80000d14]:addi sp, sp, 2<br> [0x80000d18]:jal zero, 166<br> [0x80000dbe]:sd sp, 296(ra)<br>  |
|  39|[0x80005338]<br>0xFF76DF56FF76DFA4|- rs1_val == 2147483648<br>                                                                                 |[0x80000dd8]:c.beqz a0, 16<br> [0x80000dda]:addi sp, sp, 2<br> [0x80000dde]:jal zero, 28<br> [0x80000dfa]:sd sp, 304(ra)<br>   |
|  40|[0x80005340]<br>0xFF76DF56FF76DFA6|- rs1_val == 4294967296<br>                                                                                 |[0x80000e14]:c.beqz a0, 64<br> [0x80000e16]:addi sp, sp, 2<br> [0x80000e1a]:jal zero, 124<br> [0x80000e96]:sd sp, 312(ra)<br>  |
|  41|[0x80005348]<br>0xFF76DF56FF76DFA8|- rs1_val == 8589934592<br>                                                                                 |[0x80000eb4]:c.beqz a0, 250<br> [0x80000eb6]:addi sp, sp, 2<br> [0x80000eba]:jal zero, 6<br> [0x80000ec0]:sd sp, 320(ra)<br>   |
|  42|[0x80005350]<br>0xFF76DF56FF76DFAA|- rs1_val == 17179869184<br>                                                                                |[0x80000eda]:c.beqz a0, 64<br> [0x80000edc]:addi sp, sp, 2<br> [0x80000ee0]:jal zero, 124<br> [0x80000f5c]:sd sp, 328(ra)<br>  |
|  43|[0x80005358]<br>0xFF76DF56FF76DFAC|- rs1_val == 34359738368<br>                                                                                |[0x80000f76]:c.beqz a0, 63<br> [0x80000f78]:addi sp, sp, 2<br> [0x80000f7c]:jal zero, 122<br> [0x80000ff6]:sd sp, 336(ra)<br>  |
|  44|[0x80005360]<br>0xFF76DF56FF76DFAE|- rs1_val == 68719476736<br>                                                                                |[0x800010b4]:c.beqz a0, 170<br> [0x800010b6]:addi sp, sp, 2<br> [0x800010ba]:jal zero, 6<br> [0x800010c0]:sd sp, 344(ra)<br>   |
|  45|[0x80005368]<br>0xFF76DF56FF76DFB0|- rs1_val == 137438953472<br>                                                                               |[0x80001154]:c.beqz a0, 191<br> [0x80001156]:addi sp, sp, 2<br> [0x8000115a]:jal zero, 6<br> [0x80001160]:sd sp, 352(ra)<br>   |
|  46|[0x80005370]<br>0xFF76DF56FF76DFB2|- rs1_val == 274877906944<br>                                                                               |[0x800011f4]:c.beqz a0, 191<br> [0x800011f6]:addi sp, sp, 2<br> [0x800011fa]:jal zero, 6<br> [0x80001200]:sd sp, 360(ra)<br>   |
|  47|[0x80005378]<br>0xFF76DF56FF76DFB4|- rs1_val == 549755813888<br>                                                                               |[0x80001220]:c.beqz a0, 249<br> [0x80001222]:addi sp, sp, 2<br> [0x80001226]:jal zero, 6<br> [0x8000122c]:sd sp, 368(ra)<br>   |
|  48|[0x80005380]<br>0xFF76DF56FF76DFB6|- rs1_val == 1099511627776<br>                                                                              |[0x800012c0]:c.beqz a0, 191<br> [0x800012c2]:addi sp, sp, 2<br> [0x800012c6]:jal zero, 6<br> [0x800012cc]:sd sp, 376(ra)<br>   |
|  49|[0x80005388]<br>0xFF76DF56FF76DFB8|- rs1_val == 2199023255552<br>                                                                              |[0x800012e6]:c.beqz a0, 252<br> [0x800012e8]:addi sp, sp, 2<br> [0x800012ec]:jal zero, 6<br> [0x800012f2]:sd sp, 384(ra)<br>   |
|  50|[0x80005390]<br>0xFF76DF56FF76DFBA|- rs1_val == 4398046511104<br>                                                                              |[0x8000130c]:c.beqz a0, 64<br> [0x8000130e]:addi sp, sp, 2<br> [0x80001312]:jal zero, 124<br> [0x8000138e]:sd sp, 392(ra)<br>  |
|  51|[0x80005398]<br>0xFF76DF56FF76DFBC|- rs1_val == 8796093022208<br>                                                                              |[0x800013a8]:c.beqz a0, 9<br> [0x800013aa]:addi sp, sp, 2<br> [0x800013ae]:jal zero, 14<br> [0x800013bc]:sd sp, 400(ra)<br>    |
|  52|[0x800053a0]<br>0xFF76DF56FF76DFBE|- rs1_val == 17592186044416<br>                                                                             |[0x800013d6]:c.beqz a0, 252<br> [0x800013d8]:addi sp, sp, 2<br> [0x800013dc]:jal zero, 6<br> [0x800013e2]:sd sp, 408(ra)<br>   |
|  53|[0x800053a8]<br>0xFF76DF56FF76DFC0|- rs1_val == 35184372088832<br>                                                                             |[0x80001474]:c.beqz a0, 192<br> [0x80001476]:addi sp, sp, 2<br> [0x8000147a]:jal zero, 6<br> [0x80001480]:sd sp, 416(ra)<br>   |
|  54|[0x800053b0]<br>0xFF76DF56FF76DFC2|- rs1_val == 70368744177664<br>                                                                             |[0x800014a6]:c.beqz a0, 246<br> [0x800014a8]:addi sp, sp, 2<br> [0x800014ac]:jal zero, 6<br> [0x800014b2]:sd sp, 424(ra)<br>   |
|  55|[0x800053b8]<br>0xFF76DF56FF76DFC4|- rs1_val == 140737488355328<br>                                                                            |[0x800014e6]:c.beqz a0, 239<br> [0x800014e8]:addi sp, sp, 2<br> [0x800014ec]:jal zero, 6<br> [0x800014f2]:sd sp, 432(ra)<br>   |
|  56|[0x800053c0]<br>0xFF76DF56FF76DFC6|- rs1_val == 281474976710656<br>                                                                            |[0x80001518]:c.beqz a0, 246<br> [0x8000151a]:addi sp, sp, 2<br> [0x8000151e]:jal zero, 6<br> [0x80001524]:sd sp, 440(ra)<br>   |
|  57|[0x800053c8]<br>0xFF76DF56FF76DFC8|- rs1_val == 562949953421312<br>                                                                            |[0x8000153e]:c.beqz a0, 5<br> [0x80001540]:addi sp, sp, 2<br> [0x80001544]:jal zero, 6<br> [0x8000154a]:sd sp, 448(ra)<br>     |
|  58|[0x800053d0]<br>0xFF76DF56FF76DFCA|- rs1_val == 1125899906842624<br>                                                                           |[0x80001564]:c.beqz a0, 32<br> [0x80001566]:addi sp, sp, 2<br> [0x8000156a]:jal zero, 60<br> [0x800015a6]:sd sp, 456(ra)<br>   |
|  59|[0x800053d8]<br>0xFF76DF56FF76DFCC|- rs1_val == 2251799813685248<br>                                                                           |[0x8000163a]:c.beqz a0, 191<br> [0x8000163c]:addi sp, sp, 2<br> [0x80001640]:jal zero, 6<br> [0x80001646]:sd sp, 464(ra)<br>   |
|  60|[0x800053e0]<br>0xFF76DF56FF76DFCE|- rs1_val == 4503599627370496<br>                                                                           |[0x80001660]:c.beqz a0, 5<br> [0x80001662]:addi sp, sp, 2<br> [0x80001666]:jal zero, 6<br> [0x8000166c]:sd sp, 472(ra)<br>     |
|  61|[0x800053e8]<br>0xFF76DF56FF76DFD0|- rs1_val == 9007199254740992<br>                                                                           |[0x80001686]:c.beqz a0, 7<br> [0x80001688]:addi sp, sp, 2<br> [0x8000168c]:jal zero, 10<br> [0x80001696]:sd sp, 480(ra)<br>    |
|  62|[0x800053f0]<br>0xFF76DF56FF76DFD2|- rs1_val == 18014398509481984<br>                                                                          |[0x800016b6]:c.beqz a0, 249<br> [0x800016b8]:addi sp, sp, 2<br> [0x800016bc]:jal zero, 6<br> [0x800016c2]:sd sp, 488(ra)<br>   |
|  63|[0x800053f8]<br>0xFF76DF56FF76DFD4|- rs1_val == 36028797018963968<br>                                                                          |[0x800016dc]:c.beqz a0, 16<br> [0x800016de]:addi sp, sp, 2<br> [0x800016e2]:jal zero, 28<br> [0x800016fe]:sd sp, 496(ra)<br>   |
|  64|[0x80005400]<br>0xFF76DF56FF76DFD6|- rs1_val == 72057594037927936<br>                                                                          |[0x8000171e]:c.beqz a0, 249<br> [0x80001720]:addi sp, sp, 2<br> [0x80001724]:jal zero, 6<br> [0x8000172a]:sd sp, 504(ra)<br>   |
|  65|[0x80005408]<br>0xFF76DF56FF76DFD8|- rs1_val == 288230376151711744<br>                                                                         |[0x80001744]:c.beqz a0, 5<br> [0x80001746]:addi sp, sp, 2<br> [0x8000174a]:jal zero, 6<br> [0x80001750]:sd sp, 512(ra)<br>     |
|  66|[0x80005410]<br>0xFF76DF56FF76DFDA|- rs1_val == 576460752303423488<br>                                                                         |[0x8000176a]:c.beqz a0, 85<br> [0x8000176c]:addi sp, sp, 2<br> [0x80001770]:jal zero, 166<br> [0x80001816]:sd sp, 520(ra)<br>  |
|  67|[0x80005418]<br>0xFF76DF56FF76DFDC|- rs1_val == 1152921504606846976<br>                                                                        |[0x80001830]:c.beqz a0, 252<br> [0x80001832]:addi sp, sp, 2<br> [0x80001836]:jal zero, 6<br> [0x8000183c]:sd sp, 528(ra)<br>   |
|  68|[0x80005420]<br>0xFF76DF56FF76DFDE|- rs1_val == 2305843009213693952<br>                                                                        |[0x80001858]:c.beqz a0, 251<br> [0x8000185a]:addi sp, sp, 2<br> [0x8000185e]:jal zero, 6<br> [0x80001864]:sd sp, 536(ra)<br>   |
|  69|[0x80005428]<br>0xFF76DF56FF76DFE0|- rs1_val == 4611686018427387904<br>                                                                        |[0x8000187e]:c.beqz a0, 85<br> [0x80001880]:addi sp, sp, 2<br> [0x80001884]:jal zero, 166<br> [0x8000192a]:sd sp, 544(ra)<br>  |
|  70|[0x80005430]<br>0xFF76DF56FF76DFE2|- rs1_val == -2<br>                                                                                         |[0x80001940]:c.beqz a0, 32<br> [0x80001942]:addi sp, sp, 2<br> [0x80001946]:jal zero, 60<br> [0x80001982]:sd sp, 552(ra)<br>   |
|  71|[0x80005438]<br>0xFF76DF56FF76DFE4|- rs1_val == -36028797018963969<br>                                                                         |[0x800019a0]:c.beqz a0, 9<br> [0x800019a2]:addi sp, sp, 2<br> [0x800019a6]:jal zero, 14<br> [0x800019b4]:sd sp, 560(ra)<br>    |
|  72|[0x80005440]<br>0xFF76DF56FF76DFE6|- rs1_val == -72057594037927937<br>                                                                         |[0x800019da]:c.beqz a0, 248<br> [0x800019dc]:addi sp, sp, 2<br> [0x800019e0]:jal zero, 6<br> [0x800019e6]:sd sp, 568(ra)<br>   |
|  73|[0x80005448]<br>0xFF76DF56FF76DFE8|- rs1_val == -144115188075855873<br>                                                                        |[0x80001a04]:c.beqz a0, 7<br> [0x80001a06]:addi sp, sp, 2<br> [0x80001a0a]:jal zero, 10<br> [0x80001a14]:sd sp, 576(ra)<br>    |
|  74|[0x80005450]<br>0xFF76DF56FF76DFEA|- rs1_val == -288230376151711745<br>                                                                        |[0x80001a3a]:c.beqz a0, 248<br> [0x80001a3c]:addi sp, sp, 2<br> [0x80001a40]:jal zero, 6<br> [0x80001a46]:sd sp, 584(ra)<br>   |
|  75|[0x80005458]<br>0xFF76DF56FF76DFEC|- rs1_val == -576460752303423489<br>                                                                        |[0x80001a7e]:c.beqz a0, 239<br> [0x80001a80]:addi sp, sp, 2<br> [0x80001a84]:jal zero, 6<br> [0x80001a8a]:sd sp, 592(ra)<br>   |
|  76|[0x80005460]<br>0xFF76DF56FF76DFEE|- rs1_val == -1152921504606846977<br>                                                                       |[0x80001b4c]:c.beqz a0, 170<br> [0x80001b4e]:addi sp, sp, 2<br> [0x80001b52]:jal zero, 6<br> [0x80001b58]:sd sp, 600(ra)<br>   |
|  77|[0x80005468]<br>0xFF76DF56FF76DFF0|- rs1_val == -2305843009213693953<br>                                                                       |[0x80001b76]:c.beqz a0, 5<br> [0x80001b78]:addi sp, sp, 2<br> [0x80001b7c]:jal zero, 6<br> [0x80001b82]:sd sp, 608(ra)<br>     |
|  78|[0x80005470]<br>0xFF76DF56FF76DFF2|- rs1_val == -4611686018427387905<br>                                                                       |[0x80001ba0]:c.beqz a0, 9<br> [0x80001ba2]:addi sp, sp, 2<br> [0x80001ba6]:jal zero, 14<br> [0x80001bb4]:sd sp, 616(ra)<br>    |
|  79|[0x80005478]<br>0xFF76DF56FF76DFF4|- rs1_val == 6148914691236517205<br>                                                                        |[0x80001be6]:c.beqz a0, 5<br> [0x80001be8]:addi sp, sp, 2<br> [0x80001bec]:jal zero, 6<br> [0x80001bf2]:sd sp, 624(ra)<br>     |
|  80|[0x80005480]<br>0xFF76DF56FF76DFF6|- rs1_val == -6148914691236517206<br>                                                                       |[0x80001c2c]:c.beqz a0, 248<br> [0x80001c2e]:addi sp, sp, 2<br> [0x80001c32]:jal zero, 6<br> [0x80001c38]:sd sp, 632(ra)<br>   |
|  81|[0x80005488]<br>0xFF76DF56FF76DFF8|- rs1_val == -3<br>                                                                                         |[0x80001c4e]:c.beqz a0, 252<br> [0x80001c50]:addi sp, sp, 2<br> [0x80001c54]:jal zero, 6<br> [0x80001c5a]:sd sp, 640(ra)<br>   |
|  82|[0x80005490]<br>0xFF76DF56FF76DFFA|- rs1_val == -5<br>                                                                                         |[0x80001c74]:c.beqz a0, 250<br> [0x80001c76]:addi sp, sp, 2<br> [0x80001c7a]:jal zero, 6<br> [0x80001c80]:sd sp, 648(ra)<br>   |
|  83|[0x80005498]<br>0xFF76DF56FF76DFFC|- rs1_val == -9<br>                                                                                         |[0x80001c96]:c.beqz a0, 252<br> [0x80001c98]:addi sp, sp, 2<br> [0x80001c9c]:jal zero, 6<br> [0x80001ca2]:sd sp, 656(ra)<br>   |
|  84|[0x800054a0]<br>0xFF76DF56FF76DFFE|- rs1_val == -17<br>                                                                                        |[0x80001cba]:c.beqz a0, 251<br> [0x80001cbc]:addi sp, sp, 2<br> [0x80001cc0]:jal zero, 6<br> [0x80001cc6]:sd sp, 664(ra)<br>   |
|  85|[0x800054a8]<br>0xFF76DF56FF76E000|- rs1_val == -33<br>                                                                                        |[0x80001d16]:c.beqz a0, 223<br> [0x80001d18]:addi sp, sp, 2<br> [0x80001d1c]:jal zero, 6<br> [0x80001d22]:sd sp, 672(ra)<br>   |
|  86|[0x800054b0]<br>0xFF76DF56FF76E002|- rs1_val == -65<br>                                                                                        |[0x80001d3e]:c.beqz a0, 249<br> [0x80001d40]:addi sp, sp, 2<br> [0x80001d44]:jal zero, 6<br> [0x80001d4a]:sd sp, 680(ra)<br>   |
|  87|[0x800054b8]<br>0xFF76DF56FF76E004|- rs1_val == -129<br>                                                                                       |[0x80001d60]:c.beqz a0, 5<br> [0x80001d62]:addi sp, sp, 2<br> [0x80001d66]:jal zero, 6<br> [0x80001d6c]:sd sp, 688(ra)<br>     |
|  88|[0x800054c0]<br>0xFF76DF56FF76E006|- rs1_val == -257<br>                                                                                       |[0x80001d86]:c.beqz a0, 250<br> [0x80001d88]:addi sp, sp, 2<br> [0x80001d8c]:jal zero, 6<br> [0x80001d92]:sd sp, 696(ra)<br>   |
|  89|[0x800054c8]<br>0xFF76DF56FF76E008|- rs1_val == -513<br>                                                                                       |[0x80001da8]:c.beqz a0, 8<br> [0x80001daa]:addi sp, sp, 2<br> [0x80001dae]:jal zero, 12<br> [0x80001dba]:sd sp, 704(ra)<br>    |
|  90|[0x800054d0]<br>0xFF76DF56FF76E00A|- rs1_val == -1025<br>                                                                                      |[0x80001e48]:c.beqz a0, 192<br> [0x80001e4a]:addi sp, sp, 2<br> [0x80001e4e]:jal zero, 6<br> [0x80001e54]:sd sp, 712(ra)<br>   |
|  91|[0x800054d8]<br>0xFF76DF56FF76E00C|- rs1_val == -2049<br>                                                                                      |[0x80001e6e]:c.beqz a0, 5<br> [0x80001e70]:addi sp, sp, 2<br> [0x80001e74]:jal zero, 6<br> [0x80001e7a]:sd sp, 720(ra)<br>     |
|  92|[0x800054e0]<br>0xFF76DF56FF76E00E|- rs1_val == -4097<br>                                                                                      |[0x80001e94]:c.beqz a0, 85<br> [0x80001e96]:addi sp, sp, 2<br> [0x80001e9a]:jal zero, 166<br> [0x80001f40]:sd sp, 728(ra)<br>  |
|  93|[0x800054e8]<br>0xFF76DF56FF76E010|- rs1_val == -8193<br>                                                                                      |[0x80001f5a]:c.beqz a0, 252<br> [0x80001f5c]:addi sp, sp, 2<br> [0x80001f60]:jal zero, 6<br> [0x80001f66]:sd sp, 736(ra)<br>   |
|  94|[0x800054f0]<br>0xFF76DF56FF76E012|- rs1_val == -16385<br>                                                                                     |[0x80001f82]:c.beqz a0, 251<br> [0x80001f84]:addi sp, sp, 2<br> [0x80001f88]:jal zero, 6<br> [0x80001f8e]:sd sp, 744(ra)<br>   |
|  95|[0x800054f8]<br>0xFF76DF56FF76E014|- rs1_val == -32769<br>                                                                                     |[0x80001fe2]:c.beqz a0, 223<br> [0x80001fe4]:addi sp, sp, 2<br> [0x80001fe8]:jal zero, 6<br> [0x80001fee]:sd sp, 752(ra)<br>   |
|  96|[0x80005500]<br>0xFF76DF56FF76E016|- rs1_val == -65537<br>                                                                                     |[0x80002008]:c.beqz a0, 5<br> [0x8000200a]:addi sp, sp, 2<br> [0x8000200e]:jal zero, 6<br> [0x80002014]:sd sp, 760(ra)<br>     |
|  97|[0x80005508]<br>0xFF76DF56FF76E018|- rs1_val == -131073<br>                                                                                    |[0x8000202e]:c.beqz a0, 63<br> [0x80002030]:addi sp, sp, 2<br> [0x80002034]:jal zero, 122<br> [0x800020ae]:sd sp, 768(ra)<br>  |
|  98|[0x80005510]<br>0xFF76DF56FF76E01A|- rs1_val == -524289<br>                                                                                    |[0x80002140]:c.beqz a0, 192<br> [0x80002142]:addi sp, sp, 2<br> [0x80002146]:jal zero, 6<br> [0x8000214c]:sd sp, 776(ra)<br>   |
|  99|[0x80005518]<br>0xFF76DF56FF76E01C|- rs1_val == -1048577<br>                                                                                   |[0x80002166]:c.beqz a0, 5<br> [0x80002168]:addi sp, sp, 2<br> [0x8000216c]:jal zero, 6<br> [0x80002172]:sd sp, 784(ra)<br>     |
| 100|[0x80005520]<br>0xFF76DF56FF76E01E|- rs1_val == -2097153<br>                                                                                   |[0x80002190]:c.beqz a0, 250<br> [0x80002192]:addi sp, sp, 2<br> [0x80002196]:jal zero, 6<br> [0x8000219c]:sd sp, 792(ra)<br>   |
| 101|[0x80005528]<br>0xFF76DF56FF76E020|- rs1_val == -4194305<br>                                                                                   |[0x800021b6]:c.beqz a0, 5<br> [0x800021b8]:addi sp, sp, 2<br> [0x800021bc]:jal zero, 6<br> [0x800021c2]:sd sp, 800(ra)<br>     |
| 102|[0x80005530]<br>0xFF76DF56FF76E022|- rs1_val == -8388609<br>                                                                                   |[0x800021dc]:c.beqz a0, 16<br> [0x800021de]:addi sp, sp, 2<br> [0x800021e2]:jal zero, 28<br> [0x800021fe]:sd sp, 808(ra)<br>   |
| 103|[0x80005538]<br>0xFF76DF56FF76E024|- rs1_val == -16777217<br>                                                                                  |[0x80002218]:c.beqz a0, 7<br> [0x8000221a]:addi sp, sp, 2<br> [0x8000221e]:jal zero, 10<br> [0x80002228]:sd sp, 816(ra)<br>    |
| 104|[0x80005540]<br>0xFF76DF56FF76E026|- rs1_val == -33554433<br>                                                                                  |[0x80002242]:c.beqz a0, 63<br> [0x80002244]:addi sp, sp, 2<br> [0x80002248]:jal zero, 122<br> [0x800022c2]:sd sp, 824(ra)<br>  |
| 105|[0x80005548]<br>0xFF76DF56FF76E028|- rs1_val == -67108865<br>                                                                                  |[0x800022e2]:c.beqz a0, 249<br> [0x800022e4]:addi sp, sp, 2<br> [0x800022e8]:jal zero, 6<br> [0x800022ee]:sd sp, 832(ra)<br>   |
| 106|[0x80005550]<br>0xFF76DF56FF76E02A|- rs1_val == -134217729<br>                                                                                 |[0x80002342]:c.beqz a0, 223<br> [0x80002344]:addi sp, sp, 2<br> [0x80002348]:jal zero, 6<br> [0x8000234e]:sd sp, 840(ra)<br>   |
| 107|[0x80005558]<br>0xFF76DF56FF76E02C|- rs1_val == -268435457<br>                                                                                 |[0x80002368]:c.beqz a0, 252<br> [0x8000236a]:addi sp, sp, 2<br> [0x8000236e]:jal zero, 6<br> [0x80002374]:sd sp, 848(ra)<br>   |
| 108|[0x80005560]<br>0xFF76DF56FF76E02E|- rs1_val == -536870913<br>                                                                                 |[0x8000238e]:c.beqz a0, 8<br> [0x80002390]:addi sp, sp, 2<br> [0x80002394]:jal zero, 12<br> [0x800023a0]:sd sp, 856(ra)<br>    |
| 109|[0x80005568]<br>0xFF76DF56FF76E030|- rs1_val == -1073741825<br>                                                                                |[0x800023ba]:c.beqz a0, 6<br> [0x800023bc]:addi sp, sp, 2<br> [0x800023c0]:jal zero, 8<br> [0x800023c8]:sd sp, 864(ra)<br>     |
| 110|[0x80005570]<br>0xFF76DF56FF76E032|- rs1_val == -2147483649<br>                                                                                |[0x800023e6]:c.beqz a0, 32<br> [0x800023e8]:addi sp, sp, 2<br> [0x800023ec]:jal zero, 60<br> [0x80002428]:sd sp, 872(ra)<br>   |
| 111|[0x80005578]<br>0xFF76DF56FF76E034|- rs1_val == -4294967297<br>                                                                                |[0x80002446]:c.beqz a0, 85<br> [0x80002448]:addi sp, sp, 2<br> [0x8000244c]:jal zero, 166<br> [0x800024f2]:sd sp, 880(ra)<br>  |
| 112|[0x80005580]<br>0xFF76DF56FF76E036|- rs1_val == -8589934593<br>                                                                                |[0x80002510]:c.beqz a0, 9<br> [0x80002512]:addi sp, sp, 2<br> [0x80002516]:jal zero, 14<br> [0x80002524]:sd sp, 888(ra)<br>    |
| 113|[0x80005588]<br>0xFF76DF56FF76E038|- rs1_val == -17179869185<br>                                                                               |[0x80002542]:c.beqz a0, 7<br> [0x80002544]:addi sp, sp, 2<br> [0x80002548]:jal zero, 10<br> [0x80002552]:sd sp, 896(ra)<br>    |
| 114|[0x80005590]<br>0xFF76DF56FF76E03A|- rs1_val == -34359738369<br>                                                                               |[0x80002570]:c.beqz a0, 5<br> [0x80002572]:addi sp, sp, 2<br> [0x80002576]:jal zero, 6<br> [0x8000257c]:sd sp, 904(ra)<br>     |
| 115|[0x80005598]<br>0xFF76DF56FF76E03C|- rs1_val == -68719476737<br>                                                                               |[0x800025b4]:c.beqz a0, 239<br> [0x800025b6]:addi sp, sp, 2<br> [0x800025ba]:jal zero, 6<br> [0x800025c0]:sd sp, 912(ra)<br>   |
| 116|[0x800055a0]<br>0xFF76DF56FF76E03E|- rs1_val == -137438953473<br>                                                                              |[0x80002618]:c.beqz a0, 223<br> [0x8000261a]:addi sp, sp, 2<br> [0x8000261e]:jal zero, 6<br> [0x80002624]:sd sp, 920(ra)<br>   |
| 117|[0x800055a8]<br>0xFF76DF56FF76E040|- rs1_val == -274877906945<br>                                                                              |[0x8000264a]:c.beqz a0, 248<br> [0x8000264c]:addi sp, sp, 2<br> [0x80002650]:jal zero, 6<br> [0x80002656]:sd sp, 928(ra)<br>   |
| 118|[0x800055b0]<br>0xFF76DF56FF76E042|- rs1_val == -549755813889<br>                                                                              |[0x80002718]:c.beqz a0, 170<br> [0x8000271a]:addi sp, sp, 2<br> [0x8000271e]:jal zero, 6<br> [0x80002724]:sd sp, 936(ra)<br>   |
| 119|[0x800055b8]<br>0xFF76DF56FF76E044|- rs1_val == -1099511627777<br>                                                                             |[0x80002746]:c.beqz a0, 250<br> [0x80002748]:addi sp, sp, 2<br> [0x8000274c]:jal zero, 6<br> [0x80002752]:sd sp, 944(ra)<br>   |
| 120|[0x800055c0]<br>0xFF76DF56FF76E046|- rs1_val == -2199023255553<br>                                                                             |[0x800027e8]:c.beqz a0, 192<br> [0x800027ea]:addi sp, sp, 2<br> [0x800027ee]:jal zero, 6<br> [0x800027f4]:sd sp, 952(ra)<br>   |
| 121|[0x800055c8]<br>0xFF76DF56FF76E048|- rs1_val == -4398046511105<br>                                                                             |[0x80002812]:c.beqz a0, 64<br> [0x80002814]:addi sp, sp, 2<br> [0x80002818]:jal zero, 124<br> [0x80002894]:sd sp, 960(ra)<br>  |
| 122|[0x800055d0]<br>0xFF76DF56FF76E04A|- rs1_val == -8796093022209<br>                                                                             |[0x800028b2]:c.beqz a0, 252<br> [0x800028b4]:addi sp, sp, 2<br> [0x800028b8]:jal zero, 6<br> [0x800028be]:sd sp, 968(ra)<br>   |
| 123|[0x800055d8]<br>0xFF76DF56FF76E04C|- rs1_val == -17592186044417<br>                                                                            |[0x800028dc]:c.beqz a0, 5<br> [0x800028de]:addi sp, sp, 2<br> [0x800028e2]:jal zero, 6<br> [0x800028e8]:sd sp, 976(ra)<br>     |
| 124|[0x800055e0]<br>0xFF76DF56FF76E04E|- rs1_val == -35184372088833<br>                                                                            |[0x80002906]:c.beqz a0, 5<br> [0x80002908]:addi sp, sp, 2<br> [0x8000290c]:jal zero, 6<br> [0x80002912]:sd sp, 984(ra)<br>     |
| 125|[0x800055e8]<br>0xFF76DF56FF76E050|- rs1_val == -70368744177665<br>                                                                            |[0x8000293c]:c.beqz a0, 246<br> [0x8000293e]:addi sp, sp, 2<br> [0x80002942]:jal zero, 6<br> [0x80002948]:sd sp, 992(ra)<br>   |
| 126|[0x800055f0]<br>0xFF76DF56FF76E052|- rs1_val == -140737488355329<br>                                                                           |[0x80002966]:c.beqz a0, 32<br> [0x80002968]:addi sp, sp, 2<br> [0x8000296c]:jal zero, 60<br> [0x800029a8]:sd sp, 1000(ra)<br>  |
| 127|[0x800055f8]<br>0xFF76DF56FF76E054|- rs1_val == -281474976710657<br>                                                                           |[0x800029c6]:c.beqz a0, 16<br> [0x800029c8]:addi sp, sp, 2<br> [0x800029cc]:jal zero, 28<br> [0x800029e8]:sd sp, 1008(ra)<br>  |
| 128|[0x80005600]<br>0xFF76DF56FF76E056|- rs1_val == -562949953421313<br>                                                                           |[0x80002a06]:c.beqz a0, 6<br> [0x80002a08]:addi sp, sp, 2<br> [0x80002a0c]:jal zero, 8<br> [0x80002a14]:sd sp, 1016(ra)<br>    |
| 129|[0x80005608]<br>0xFF76DF56FF76E058|- rs1_val == -1125899906842625<br>                                                                          |[0x80002a32]:c.beqz a0, 5<br> [0x80002a34]:addi sp, sp, 2<br> [0x80002a38]:jal zero, 6<br> [0x80002a3e]:sd sp, 1024(ra)<br>    |
| 130|[0x80005610]<br>0xFF76DF56FF76E05A|- rs1_val == -2251799813685249<br>                                                                          |[0x80002ad4]:c.beqz a0, 192<br> [0x80002ad6]:addi sp, sp, 2<br> [0x80002ada]:jal zero, 6<br> [0x80002ae0]:sd sp, 1032(ra)<br>  |
| 131|[0x80005618]<br>0xFF76DF56FF76E05C|- rs1_val == -4503599627370497<br>                                                                          |[0x80002ba2]:c.beqz a0, 170<br> [0x80002ba4]:addi sp, sp, 2<br> [0x80002ba8]:jal zero, 6<br> [0x80002bae]:sd sp, 1040(ra)<br>  |
| 132|[0x80005620]<br>0xFF76DF56FF76E05E|- rs1_val == -9007199254740993<br>                                                                          |[0x80002bcc]:c.beqz a0, 64<br> [0x80002bce]:addi sp, sp, 2<br> [0x80002bd2]:jal zero, 124<br> [0x80002c4e]:sd sp, 1048(ra)<br> |
| 133|[0x80005628]<br>0xFF76DF56FF76E060|- rs1_val == -18014398509481985<br>                                                                         |[0x80002d10]:c.beqz a0, 170<br> [0x80002d12]:addi sp, sp, 2<br> [0x80002d16]:jal zero, 6<br> [0x80002d1c]:sd sp, 1056(ra)<br>  |
