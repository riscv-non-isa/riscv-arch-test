
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001150')]      |
| SIG_REGION                | [('0x80004208', '0x80004638', '134 dwords')]      |
| COV_LABELS                | csdsp      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/csdsp-01.S/csdsp-01.S    |
| Total Number of coverpoints| 182     |
| Total Coverpoints Hit     | 182      |
| Total Signature Updates   | 134      |
| STAT1                     | 134      |
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

|s.no|            signature             |                                      coverpoints                                      |              code               |
|---:|----------------------------------|---------------------------------------------------------------------------------------|---------------------------------|
|   1|[0x80004208]<br>0xFFFFFBFFFFFFFFFF|- opcode : c.sdsp<br> - rs2 : x4<br> - imm_val > 0<br> - rs2_val == -4398046511105<br> |[0x800003b0]:c.sdsp tp, 3<br>    |
|   2|[0x80004210]<br>0xFFEFFFFFFFFFFFFF|- rs2 : x9<br> - imm_val == 0<br> - rs2_val == -4503599627370497<br>                   |[0x800003ce]:c.sdsp s1, 0<br>    |
|   3|[0x80004218]<br>0x8000000000000000|- rs2 : x24<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -9223372036854775808<br>  |[0x800003e8]:c.sdsp s8, 17<br>   |
|   4|[0x80004220]<br>0x0000000000000000|- rs2 : x3<br> - rs2_val == 0<br> - imm_val == 248<br>                                 |[0x800003fe]:c.sdsp gp, 31<br>   |
|   5|[0x80004228]<br>0x7FFFFFFFFFFFFFFF|- rs2 : x31<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 9223372036854775807<br>  |[0x8000041c]:c.sdsp t6, 5<br>    |
|   6|[0x80004230]<br>0x0000000000000001|- rs2 : x21<br> - rs2_val == 1<br>                                                     |[0x80000432]:c.sdsp s5, 9<br>    |
|   7|[0x80004238]<br>0xFFFFFFFF7FFFFFFF|- rs2 : x17<br> - rs2_val == -2147483649<br> - imm_val == 8<br>                        |[0x80000450]:c.sdsp a7, 1<br>    |
|   8|[0x80004240]<br>0x0000000040000000|- rs2 : x8<br> - rs2_val == 1073741824<br> - imm_val == 16<br>                         |[0x80000466]:c.sdsp fp, 2<br>    |
|   9|[0x80004248]<br>0xFFFFF7FFFFFFFFFF|- rs2 : x6<br> - rs2_val == -8796093022209<br> - imm_val == 32<br>                     |[0x80000484]:c.sdsp t1, 4<br>    |
|  10|[0x80004250]<br>0xFFBFFFFFFFFFFFFF|- rs2 : x1<br> - rs2_val == -18014398509481985<br> - imm_val == 64<br>                 |[0x800004a2]:c.sdsp ra, 8<br>    |
|  11|[0x80004258]<br>0xFFFEFFFFFFFFFFFF|- rs2 : x20<br> - rs2_val == -281474976710657<br> - imm_val == 128<br>                 |[0x800004c0]:c.sdsp s4, 16<br>   |
|  12|[0x80004260]<br>0xFFFFFFFFDFFFFFFF|- rs2 : x30<br> - rs2_val == -536870913<br> - imm_val == 256<br>                       |[0x800004da]:c.sdsp t5, 32<br>   |
|  13|[0x80004268]<br>0xFFFFFFDFFFFFFFFF|- rs2 : x15<br> - rs2_val == -137438953473<br> - imm_val == 496<br>                    |[0x800004f8]:c.sdsp a5, 62<br>   |
|  14|[0x80004270]<br>0x7FFFFFFFFFFFFFFF|- rs2 : x29<br> - imm_val == 488<br>                                                   |[0x80000516]:c.sdsp t4, 61<br>   |
|  15|[0x80004278]<br>0xFFFFFFFFFFFFFFBF|- rs2 : x7<br> - rs2_val == -65<br> - imm_val == 472<br>                               |[0x8000052c]:c.sdsp t2, 59<br>   |
|  16|[0x80004280]<br>0x00000000800040C8|- rs2 : x2<br> - imm_val == 440<br>                                                    |[0x80000542]:c.sdsp sp, 55<br>   |
|  17|[0x80004288]<br>0x0000080000000000|- rs2 : x23<br> - rs2_val == 8796093022208<br> - imm_val == 376<br>                    |[0x8000055c]:c.sdsp s7, 47<br>   |
|  18|[0x80004290]<br>0x0000000080000000|- rs2 : x13<br> - rs2_val == 2147483648<br> - imm_val == 168<br>                       |[0x80000576]:c.sdsp a3, 21<br>   |
|  19|[0x80004298]<br>0xFDFFFFFFFFFFFFFF|- rs2 : x27<br> - rs2_val == -144115188075855873<br> - imm_val == 336<br>              |[0x80000594]:c.sdsp s11, 42<br>  |
|  20|[0x800042a0]<br>0x0000000000000002|- rs2 : x5<br> - rs2_val == 2<br>                                                      |[0x800005aa]:c.sdsp t0, 12<br>   |
|  21|[0x800042a8]<br>0x0000000000000004|- rs2 : x11<br> - rs2_val == 4<br>                                                     |[0x800005c0]:c.sdsp a1, 32<br>   |
|  22|[0x800042b0]<br>0x0000000000000008|- rs2 : x28<br> - rs2_val == 8<br>                                                     |[0x800005d6]:c.sdsp t3, 59<br>   |
|  23|[0x800042b8]<br>0x0000000000000010|- rs2 : x19<br> - rs2_val == 16<br>                                                    |[0x800005ec]:c.sdsp s3, 61<br>   |
|  24|[0x800042c0]<br>0x0000000000000020|- rs2 : x14<br> - rs2_val == 32<br>                                                    |[0x80000602]:c.sdsp a4, 10<br>   |
|  25|[0x800042c8]<br>0x0000000000000040|- rs2 : x12<br> - rs2_val == 64<br>                                                    |[0x80000618]:c.sdsp a2, 7<br>    |
|  26|[0x800042d0]<br>0x0000000000000080|- rs2 : x22<br> - rs2_val == 128<br>                                                   |[0x8000062e]:c.sdsp s6, 61<br>   |
|  27|[0x800042d8]<br>0x0000000000000100|- rs2 : x16<br> - rs2_val == 256<br>                                                   |[0x80000644]:c.sdsp a6, 7<br>    |
|  28|[0x800042e0]<br>0x0000000000000200|- rs2 : x26<br> - rs2_val == 512<br>                                                   |[0x8000065a]:c.sdsp s10, 10<br>  |
|  29|[0x800042e8]<br>0x0000000000000000|- rs2 : x0<br>                                                                         |[0x80000678]:c.sdsp zero, 63<br> |
|  30|[0x800042f0]<br>0x0000000000000800|- rs2 : x10<br> - rs2_val == 2048<br>                                                  |[0x80000692]:c.sdsp a0, 11<br>   |
|  31|[0x800042f8]<br>0x0000000000001000|- rs2 : x25<br> - rs2_val == 4096<br>                                                  |[0x800006a8]:c.sdsp s9, 5<br>    |
|  32|[0x80004300]<br>0x0000000000002000|- rs2 : x18<br> - rs2_val == 8192<br>                                                  |[0x800006be]:c.sdsp s2, 4<br>    |
|  33|[0x80004308]<br>0x0000000000004000|- rs2_val == 16384<br>                                                                 |[0x800006d4]:c.sdsp a0, 13<br>   |
|  34|[0x80004310]<br>0x0000000000008000|- rs2_val == 32768<br>                                                                 |[0x800006ea]:c.sdsp a0, 31<br>   |
|  35|[0x80004318]<br>0x0000000000010000|- rs2_val == 65536<br>                                                                 |[0x80000700]:c.sdsp a0, 9<br>    |
|  36|[0x80004320]<br>0x0000000000020000|- rs2_val == 131072<br>                                                                |[0x80000716]:c.sdsp a0, 31<br>   |
|  37|[0x80004328]<br>0x0000000000040000|- rs2_val == 262144<br>                                                                |[0x8000072c]:c.sdsp a0, 19<br>   |
|  38|[0x80004330]<br>0x0000000000080000|- rs2_val == 524288<br>                                                                |[0x80000742]:c.sdsp a0, 7<br>    |
|  39|[0x80004338]<br>0x0000000000100000|- rs2_val == 1048576<br>                                                               |[0x80000758]:c.sdsp a0, 55<br>   |
|  40|[0x80004340]<br>0x0000000000200000|- rs2_val == 2097152<br>                                                               |[0x8000076e]:c.sdsp a0, 17<br>   |
|  41|[0x80004348]<br>0x0000000000400000|- rs2_val == 4194304<br>                                                               |[0x80000784]:c.sdsp a0, 61<br>   |
|  42|[0x80004350]<br>0x0000000000800000|- rs2_val == 8388608<br>                                                               |[0x8000079a]:c.sdsp a0, 61<br>   |
|  43|[0x80004358]<br>0x0000000001000000|- rs2_val == 16777216<br>                                                              |[0x800007b0]:c.sdsp a0, 59<br>   |
|  44|[0x80004360]<br>0x0000000002000000|- rs2_val == 33554432<br>                                                              |[0x800007c6]:c.sdsp a0, 5<br>    |
|  45|[0x80004368]<br>0x0000000004000000|- rs2_val == 67108864<br>                                                              |[0x800007dc]:c.sdsp a0, 5<br>    |
|  46|[0x80004370]<br>0x0000000008000000|- rs2_val == 134217728<br>                                                             |[0x800007f2]:c.sdsp a0, 4<br>    |
|  47|[0x80004378]<br>0x0000000010000000|- rs2_val == 268435456<br>                                                             |[0x80000808]:c.sdsp a0, 12<br>   |
|  48|[0x80004380]<br>0x0000000020000000|- rs2_val == 536870912<br>                                                             |[0x8000081e]:c.sdsp a0, 31<br>   |
|  49|[0x80004388]<br>0x0000000100000000|- rs2_val == 4294967296<br>                                                            |[0x80000838]:c.sdsp a0, 5<br>    |
|  50|[0x80004390]<br>0x0000000200000000|- rs2_val == 8589934592<br>                                                            |[0x80000852]:c.sdsp a0, 8<br>    |
|  51|[0x80004398]<br>0x0000000400000000|- rs2_val == 17179869184<br>                                                           |[0x8000086c]:c.sdsp a0, 55<br>   |
|  52|[0x800043a0]<br>0x0000000800000000|- rs2_val == 34359738368<br>                                                           |[0x80000886]:c.sdsp a0, 2<br>    |
|  53|[0x800043a8]<br>0x0000001000000000|- rs2_val == 68719476736<br>                                                           |[0x800008a0]:c.sdsp a0, 11<br>   |
|  54|[0x800043b0]<br>0x0000002000000000|- rs2_val == 137438953472<br>                                                          |[0x800008ba]:c.sdsp a0, 59<br>   |
|  55|[0x800043b8]<br>0x0000004000000000|- rs2_val == 274877906944<br>                                                          |[0x800008d4]:c.sdsp a0, 3<br>    |
|  56|[0x800043c0]<br>0x0000008000000000|- rs2_val == 549755813888<br>                                                          |[0x800008ee]:c.sdsp a0, 15<br>   |
|  57|[0x800043c8]<br>0x0000010000000000|- rs2_val == 1099511627776<br>                                                         |[0x80000908]:c.sdsp a0, 0<br>    |
|  58|[0x800043d0]<br>0x0000020000000000|- rs2_val == 2199023255552<br>                                                         |[0x80000922]:c.sdsp a0, 1<br>    |
|  59|[0x800043d8]<br>0x0000040000000000|- rs2_val == 4398046511104<br>                                                         |[0x8000093c]:c.sdsp a0, 42<br>   |
|  60|[0x800043e0]<br>0x0000100000000000|- rs2_val == 17592186044416<br>                                                        |[0x80000956]:c.sdsp a0, 0<br>    |
|  61|[0x800043e8]<br>0x0000200000000000|- rs2_val == 35184372088832<br>                                                        |[0x80000970]:c.sdsp a0, 42<br>   |
|  62|[0x800043f0]<br>0x0000400000000000|- rs2_val == 70368744177664<br>                                                        |[0x8000098a]:c.sdsp a0, 3<br>    |
|  63|[0x800043f8]<br>0x0000800000000000|- rs2_val == 140737488355328<br>                                                       |[0x800009a4]:c.sdsp a0, 61<br>   |
|  64|[0x80004400]<br>0x0001000000000000|- rs2_val == 281474976710656<br>                                                       |[0x800009be]:c.sdsp a0, 18<br>   |
|  65|[0x80004408]<br>0x0002000000000000|- rs2_val == 562949953421312<br>                                                       |[0x800009d8]:c.sdsp a0, 18<br>   |
|  66|[0x80004410]<br>0x0004000000000000|- rs2_val == 1125899906842624<br>                                                      |[0x800009f2]:c.sdsp a0, 9<br>    |
|  67|[0x80004418]<br>0x0008000000000000|- rs2_val == 2251799813685248<br>                                                      |[0x80000a0c]:c.sdsp a0, 16<br>   |
|  68|[0x80004420]<br>0x0010000000000000|- rs2_val == 4503599627370496<br>                                                      |[0x80000a26]:c.sdsp a0, 61<br>   |
|  69|[0x80004428]<br>0x0020000000000000|- rs2_val == 9007199254740992<br>                                                      |[0x80000a40]:c.sdsp a0, 12<br>   |
|  70|[0x80004430]<br>0x0040000000000000|- rs2_val == 18014398509481984<br>                                                     |[0x80000a5a]:c.sdsp a0, 47<br>   |
|  71|[0x80004438]<br>0xFFFFDFFFFFFFFFFF|- rs2_val == -35184372088833<br>                                                       |[0x80000a78]:c.sdsp a0, 3<br>    |
|  72|[0x80004440]<br>0xFFFFBFFFFFFFFFFF|- rs2_val == -70368744177665<br>                                                       |[0x80000a96]:c.sdsp a0, 8<br>    |
|  73|[0x80004448]<br>0xFFFF7FFFFFFFFFFF|- rs2_val == -140737488355329<br>                                                      |[0x80000ab4]:c.sdsp a0, 18<br>   |
|  74|[0x80004450]<br>0xFFFDFFFFFFFFFFFF|- rs2_val == -562949953421313<br>                                                      |[0x80000ad2]:c.sdsp a0, 61<br>   |
|  75|[0x80004458]<br>0xFFFBFFFFFFFFFFFF|- rs2_val == -1125899906842625<br>                                                     |[0x80000af0]:c.sdsp a0, 9<br>    |
|  76|[0x80004460]<br>0xFFF7FFFFFFFFFFFF|- rs2_val == -2251799813685249<br>                                                     |[0x80000b0e]:c.sdsp a0, 9<br>    |
|  77|[0x80004468]<br>0xFFDFFFFFFFFFFFFF|- rs2_val == -9007199254740993<br>                                                     |[0x80000b2c]:c.sdsp a0, 6<br>    |
|  78|[0x80004470]<br>0xFF7FFFFFFFFFFFFF|- rs2_val == -36028797018963969<br>                                                    |[0x80000b4a]:c.sdsp a0, 19<br>   |
|  79|[0x80004478]<br>0xFEFFFFFFFFFFFFFF|- rs2_val == -72057594037927937<br>                                                    |[0x80000b68]:c.sdsp a0, 61<br>   |
|  80|[0x80004480]<br>0xFBFFFFFFFFFFFFFF|- rs2_val == -288230376151711745<br>                                                   |[0x80000b86]:c.sdsp a0, 5<br>    |
|  81|[0x80004488]<br>0xF7FFFFFFFFFFFFFF|- rs2_val == -576460752303423489<br>                                                   |[0x80000ba4]:c.sdsp a0, 16<br>   |
|  82|[0x80004490]<br>0xEFFFFFFFFFFFFFFF|- rs2_val == -1152921504606846977<br>                                                  |[0x80000bc2]:c.sdsp a0, 63<br>   |
|  83|[0x80004498]<br>0xDFFFFFFFFFFFFFFF|- rs2_val == -2305843009213693953<br>                                                  |[0x80000be0]:c.sdsp a0, 9<br>    |
|  84|[0x800044a0]<br>0xBFFFFFFFFFFFFFFF|- rs2_val == -4611686018427387905<br>                                                  |[0x80000bfe]:c.sdsp a0, 17<br>   |
|  85|[0x800044a8]<br>0x5555555555555555|- rs2_val == 6148914691236517205<br>                                                   |[0x80000c30]:c.sdsp a0, 0<br>    |
|  86|[0x800044b0]<br>0xAAAAAAAAAAAAAAAA|- rs2_val == -6148914691236517206<br>                                                  |[0x80000c62]:c.sdsp a0, 15<br>   |
|  87|[0x800044b8]<br>0x0080000000000000|- rs2_val == 36028797018963968<br>                                                     |[0x80000c7c]:c.sdsp a0, 6<br>    |
|  88|[0x800044c0]<br>0x0100000000000000|- rs2_val == 72057594037927936<br>                                                     |[0x80000c96]:c.sdsp a0, 7<br>    |
|  89|[0x800044c8]<br>0x0200000000000000|- rs2_val == 144115188075855872<br>                                                    |[0x80000cb0]:c.sdsp a0, 4<br>    |
|  90|[0x800044d0]<br>0x0400000000000000|- rs2_val == 288230376151711744<br>                                                    |[0x80000cca]:c.sdsp a0, 13<br>   |
|  91|[0x800044d8]<br>0x0800000000000000|- rs2_val == 576460752303423488<br>                                                    |[0x80000ce4]:c.sdsp a0, 55<br>   |
|  92|[0x800044e0]<br>0x1000000000000000|- rs2_val == 1152921504606846976<br>                                                   |[0x80000cfe]:c.sdsp a0, 19<br>   |
|  93|[0x800044e8]<br>0x2000000000000000|- rs2_val == 2305843009213693952<br>                                                   |[0x80000d18]:c.sdsp a0, 19<br>   |
|  94|[0x800044f0]<br>0x4000000000000000|- rs2_val == 4611686018427387904<br>                                                   |[0x80000d32]:c.sdsp a0, 4<br>    |
|  95|[0x800044f8]<br>0xFFFFFFFFFFFFFFFE|- rs2_val == -2<br>                                                                    |[0x80000d48]:c.sdsp a0, 13<br>   |
|  96|[0x80004500]<br>0xFFFFFFFFFFFFFFFD|- rs2_val == -3<br>                                                                    |[0x80000d5e]:c.sdsp a0, 19<br>   |
|  97|[0x80004508]<br>0xFFFFFFFFFFFFFFFB|- rs2_val == -5<br>                                                                    |[0x80000d74]:c.sdsp a0, 31<br>   |
|  98|[0x80004510]<br>0xFFFFFFFFFFFFFFF7|- rs2_val == -9<br>                                                                    |[0x80000d8a]:c.sdsp a0, 61<br>   |
|  99|[0x80004518]<br>0xFFFFFFFFFFFFFFEF|- rs2_val == -17<br>                                                                   |[0x80000da0]:c.sdsp a0, 4<br>    |
| 100|[0x80004520]<br>0xFFFFFFFFFFFFFFDF|- rs2_val == -33<br>                                                                   |[0x80000db6]:c.sdsp a0, 0<br>    |
| 101|[0x80004528]<br>0xFFFFFFFFFFFFFF7F|- rs2_val == -129<br>                                                                  |[0x80000dcc]:c.sdsp a0, 13<br>   |
| 102|[0x80004530]<br>0xFFFFFFFFFFFFFEFF|- rs2_val == -257<br>                                                                  |[0x80000de2]:c.sdsp a0, 9<br>    |
| 103|[0x80004538]<br>0xFFFFFFFFFFFFFDFF|- rs2_val == -513<br>                                                                  |[0x80000df8]:c.sdsp a0, 63<br>   |
| 104|[0x80004540]<br>0xFFFFFFFFFFFFFBFF|- rs2_val == -1025<br>                                                                 |[0x80000e0e]:c.sdsp a0, 62<br>   |
| 105|[0x80004548]<br>0xFFFFFFFFFFFFF7FF|- rs2_val == -2049<br>                                                                 |[0x80000e28]:c.sdsp a0, 61<br>   |
| 106|[0x80004550]<br>0xFFFFFFFFFFFFEFFF|- rs2_val == -4097<br>                                                                 |[0x80000e42]:c.sdsp a0, 47<br>   |
| 107|[0x80004558]<br>0xFFFFFFFFFFFFDFFF|- rs2_val == -8193<br>                                                                 |[0x80000e5c]:c.sdsp a0, 13<br>   |
| 108|[0x80004560]<br>0xFFFFFFFFFFFFBFFF|- rs2_val == -16385<br>                                                                |[0x80000e76]:c.sdsp a0, 5<br>    |
| 109|[0x80004568]<br>0xFFFFFFFFFFFF7FFF|- rs2_val == -32769<br>                                                                |[0x80000e90]:c.sdsp a0, 4<br>    |
| 110|[0x80004570]<br>0xFFFFFFFFFFFEFFFF|- rs2_val == -65537<br>                                                                |[0x80000eaa]:c.sdsp a0, 14<br>   |
| 111|[0x80004578]<br>0xFFFFFFFFFFFDFFFF|- rs2_val == -131073<br>                                                               |[0x80000ec4]:c.sdsp a0, 59<br>   |
| 112|[0x80004580]<br>0xFFFFFFFFFFFBFFFF|- rs2_val == -262145<br>                                                               |[0x80000ede]:c.sdsp a0, 3<br>    |
| 113|[0x80004588]<br>0xFFFFFFFFFFF7FFFF|- rs2_val == -524289<br>                                                               |[0x80000ef8]:c.sdsp a0, 13<br>   |
| 114|[0x80004590]<br>0xFFFFFFFFFFEFFFFF|- rs2_val == -1048577<br>                                                              |[0x80000f12]:c.sdsp a0, 2<br>    |
| 115|[0x80004598]<br>0xFFFFFFFFFFDFFFFF|- rs2_val == -2097153<br>                                                              |[0x80000f2c]:c.sdsp a0, 11<br>   |
| 116|[0x800045a0]<br>0xFFFFFFFFFFBFFFFF|- rs2_val == -4194305<br>                                                              |[0x80000f46]:c.sdsp a0, 7<br>    |
| 117|[0x800045a8]<br>0xFFFFFFFFFF7FFFFF|- rs2_val == -8388609<br>                                                              |[0x80000f60]:c.sdsp a0, 62<br>   |
| 118|[0x800045b0]<br>0xFFFFFFFFFEFFFFFF|- rs2_val == -16777217<br>                                                             |[0x80000f7a]:c.sdsp a0, 3<br>    |
| 119|[0x800045b8]<br>0xFFFFFFFFFDFFFFFF|- rs2_val == -33554433<br>                                                             |[0x80000f94]:c.sdsp a0, 15<br>   |
| 120|[0x800045c0]<br>0xFFFFFFFFFBFFFFFF|- rs2_val == -67108865<br>                                                             |[0x80000fae]:c.sdsp a0, 19<br>   |
| 121|[0x800045c8]<br>0xFFFFFFFFF7FFFFFF|- rs2_val == -134217729<br>                                                            |[0x80000fc8]:c.sdsp a0, 7<br>    |
| 122|[0x800045d0]<br>0xFFFFFFFFEFFFFFFF|- rs2_val == -268435457<br>                                                            |[0x80000fe2]:c.sdsp a0, 55<br>   |
| 123|[0x800045d8]<br>0xFFFFFFFFBFFFFFFF|- rs2_val == -1073741825<br>                                                           |[0x80000ffc]:c.sdsp a0, 42<br>   |
| 124|[0x800045e0]<br>0xFFFFFFFEFFFFFFFF|- rs2_val == -4294967297<br>                                                           |[0x8000101a]:c.sdsp a0, 47<br>   |
| 125|[0x800045e8]<br>0xFFFFFFFDFFFFFFFF|- rs2_val == -8589934593<br>                                                           |[0x80001038]:c.sdsp a0, 13<br>   |
| 126|[0x800045f0]<br>0xFFFFFFFBFFFFFFFF|- rs2_val == -17179869185<br>                                                          |[0x80001056]:c.sdsp a0, 11<br>   |
| 127|[0x800045f8]<br>0xFFFFFFF7FFFFFFFF|- rs2_val == -34359738369<br>                                                          |[0x80001074]:c.sdsp a0, 11<br>   |
| 128|[0x80004600]<br>0xFFFFFFEFFFFFFFFF|- rs2_val == -68719476737<br>                                                          |[0x80001092]:c.sdsp a0, 19<br>   |
| 129|[0x80004608]<br>0xFFFFFFBFFFFFFFFF|- rs2_val == -274877906945<br>                                                         |[0x800010b0]:c.sdsp a0, 2<br>    |
| 130|[0x80004610]<br>0xFFFFFF7FFFFFFFFF|- rs2_val == -549755813889<br>                                                         |[0x800010ce]:c.sdsp a0, 7<br>    |
| 131|[0x80004618]<br>0xFFFFFEFFFFFFFFFF|- rs2_val == -1099511627777<br>                                                        |[0x800010ec]:c.sdsp a0, 6<br>    |
| 132|[0x80004620]<br>0xFFFFFDFFFFFFFFFF|- rs2_val == -2199023255553<br>                                                        |[0x8000110a]:c.sdsp a0, 42<br>   |
| 133|[0x80004628]<br>0xFFFFEFFFFFFFFFFF|- rs2_val == -17592186044417<br>                                                       |[0x80001128]:c.sdsp a0, 5<br>    |
| 134|[0x80004630]<br>0x0000000000000400|- rs2_val == 1024<br>                                                                  |[0x8000113e]:c.sdsp a0, 63<br>   |
