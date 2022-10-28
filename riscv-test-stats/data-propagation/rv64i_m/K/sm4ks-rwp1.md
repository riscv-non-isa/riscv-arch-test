
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001290')]      |
| SIG_REGION                | [('0x80003208', '0x800032d8', '26 dwords')]      |
| COV_LABELS                | sm4ks      |
| TEST_NAME                 | /scratch/git-repo/github/riscof/riscof_work/rv64i_m/K_unratified/src/sm4ks-rwp1.S/ref.S    |
| Total Number of coverpoints| 384     |
| Total Coverpoints Hit     | 80      |
| Total Signature Updates   | 26      |
| STAT1                     | 26      |
| STAT2                     | 0      |
| STAT3                     | 78     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```
[0x8000041a]:sm4ks t0, t0, ra, 0

[0x8000041e]:sm4ks t0, t0, sp, 1

[0x80000422]:sm4ks t0, t0, gp, 2

[0x800004aa]:sm4ks t1, t1, sp, 0

[0x800004ae]:sm4ks t1, t1, gp, 1

[0x800004b2]:sm4ks t1, t1, tp, 2

[0x8000053c]:sm4ks t2, t2, gp, 0

[0x80000540]:sm4ks t2, t2, tp, 1

[0x80000544]:sm4ks t2, t2, t0, 2

[0x800005d2]:sm4ks fp, fp, tp, 0

[0x800005d6]:sm4ks fp, fp, t0, 1

[0x800005da]:sm4ks fp, fp, t1, 2

[0x80000660]:sm4ks s1, s1, t0, 0

[0x80000664]:sm4ks s1, s1, t1, 1

[0x80000668]:sm4ks s1, s1, t2, 2

[0x800006f4]:sm4ks a0, a0, t1, 0

[0x800006f8]:sm4ks a0, a0, t2, 1

[0x800006fc]:sm4ks a0, a0, fp, 2

[0x80000788]:sm4ks a1, a1, t2, 0

[0x8000078c]:sm4ks a1, a1, fp, 1

[0x80000790]:sm4ks a1, a1, s1, 2

[0x80000812]:sm4ks a2, a2, fp, 0

[0x80000816]:sm4ks a2, a2, s1, 1

[0x8000081a]:sm4ks a2, a2, a0, 2

[0x800008a6]:sm4ks a3, a3, s1, 0

[0x800008aa]:sm4ks a3, a3, a0, 1

[0x800008ae]:sm4ks a3, a3, a1, 2

[0x8000093a]:sm4ks a4, a4, a0, 0

[0x8000093e]:sm4ks a4, a4, a1, 1

[0x80000942]:sm4ks a4, a4, a2, 2

[0x800009ca]:sm4ks a5, a5, a1, 0

[0x800009ce]:sm4ks a5, a5, a2, 1

[0x800009d2]:sm4ks a5, a5, a3, 2

[0x80000a60]:sm4ks a6, a6, a2, 0

[0x80000a64]:sm4ks a6, a6, a3, 1

[0x80000a68]:sm4ks a6, a6, a4, 2

[0x80000af0]:sm4ks a7, a7, a3, 0

[0x80000af4]:sm4ks a7, a7, a4, 1

[0x80000af8]:sm4ks a7, a7, a5, 2

[0x80000b86]:sm4ks s2, s2, a4, 0

[0x80000b8a]:sm4ks s2, s2, a5, 1

[0x80000b8e]:sm4ks s2, s2, a6, 2

[0x80000c1a]:sm4ks s3, s3, a5, 0

[0x80000c1e]:sm4ks s3, s3, a6, 1

[0x80000c22]:sm4ks s3, s3, a7, 2

[0x80000cb0]:sm4ks s4, s4, a6, 0

[0x80000cb4]:sm4ks s4, s4, a7, 1

[0x80000cb8]:sm4ks s4, s4, s2, 2

[0x80000d46]:sm4ks s5, s5, a7, 0

[0x80000d4a]:sm4ks s5, s5, s2, 1

[0x80000d4e]:sm4ks s5, s5, s3, 2

[0x80000ddc]:sm4ks s6, s6, s2, 0

[0x80000de0]:sm4ks s6, s6, s3, 1

[0x80000de4]:sm4ks s6, s6, s4, 2

[0x80000e6c]:sm4ks s7, s7, s3, 0

[0x80000e70]:sm4ks s7, s7, s4, 1

[0x80000e74]:sm4ks s7, s7, s5, 2

[0x80000f02]:sm4ks s8, s8, s4, 0

[0x80000f06]:sm4ks s8, s8, s5, 1

[0x80000f0a]:sm4ks s8, s8, s6, 2

[0x80000f90]:sm4ks s9, s9, s5, 0

[0x80000f94]:sm4ks s9, s9, s6, 1

[0x80000f98]:sm4ks s9, s9, s7, 2

[0x80001024]:sm4ks s10, s10, s6, 0

[0x80001028]:sm4ks s10, s10, s7, 1

[0x8000102c]:sm4ks s10, s10, s8, 2

[0x800010ba]:sm4ks s11, s11, s7, 0

[0x800010be]:sm4ks s11, s11, s8, 1

[0x800010c2]:sm4ks s11, s11, s9, 2

[0x80001148]:sm4ks t3, t3, s8, 0

[0x8000114c]:sm4ks t3, t3, s9, 1

[0x80001150]:sm4ks t3, t3, s10, 2

[0x800011dc]:sm4ks t4, t4, s9, 0

[0x800011e0]:sm4ks t4, t4, s10, 1

[0x800011e4]:sm4ks t4, t4, s11, 2

[0x80001272]:sm4ks t5, t5, s10, 0

[0x80001276]:sm4ks t5, t5, s11, 1

[0x8000127a]:sm4ks t5, t5, t3, 2



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

|s.no|            signature             |  coverpoints   |                                  code                                   |
|---:|----------------------------------|----------------|-------------------------------------------------------------------------|
|   1|[0x80003208]<br>0x000000000C28109A|- rs2 : x4<br>  |[0x80000426]:sm4ks t0, t0, tp, 3<br> [0x8000042a]:sd t0, 0(t6)<br>       |
|   2|[0x80003210]<br>0xFFFFFFFFE6532C14|- rs2 : x5<br>  |[0x800004b6]:sm4ks t1, t1, t0, 3<br> [0x800004ba]:sd t1, 8(t6)<br>       |
|   3|[0x80003218]<br>0xFFFFFFFFB7203110|- rs2 : x6<br>  |[0x80000548]:sm4ks t2, t2, t1, 3<br> [0x8000054c]:sd t2, 16(t6)<br>      |
|   4|[0x80003220]<br>0x000000003ABB6C4C|- rs2 : x7<br>  |[0x800005de]:sm4ks fp, fp, t2, 3<br> [0x800005e2]:sd fp, 24(t6)<br>      |
|   5|[0x80003228]<br>0x000000002FD24BAF|- rs2 : x8<br>  |[0x8000066c]:sm4ks s1, s1, fp, 3<br> [0x80000670]:sd s1, 32(t6)<br>      |
|   6|[0x80003230]<br>0x000000002CB5BC59|- rs2 : x9<br>  |[0x80000700]:sm4ks a0, a0, s1, 3<br> [0x80000704]:sd a0, 40(t6)<br>      |
|   7|[0x80003238]<br>0x000000001492E616|- rs2 : x10<br> |[0x80000794]:sm4ks a1, a1, a0, 3<br> [0x80000798]:sd a1, 48(t6)<br>      |
|   8|[0x80003240]<br>0x00000000249767D0|- rs2 : x11<br> |[0x8000081e]:sm4ks a2, a2, a1, 3<br> [0x80000822]:sd a2, 56(t6)<br>      |
|   9|[0x80003248]<br>0x0000000021FB1859|- rs2 : x12<br> |[0x800008b2]:sm4ks a3, a3, a2, 3<br> [0x800008b6]:sd a3, 64(t6)<br>      |
|  10|[0x80003250]<br>0xFFFFFFFFE3C2B8B5|- rs2 : x13<br> |[0x80000946]:sm4ks a4, a4, a3, 3<br> [0x8000094a]:sd a4, 72(t6)<br>      |
|  11|[0x80003258]<br>0xFFFFFFFFE17BE5CF|- rs2 : x14<br> |[0x800009d6]:sm4ks a5, a5, a4, 3<br> [0x800009da]:sd a5, 80(t6)<br>      |
|  12|[0x80003260]<br>0xFFFFFFFFCB1A9046|- rs2 : x15<br> |[0x80000a6c]:sm4ks a6, a6, a5, 3<br> [0x80000a70]:sd a6, 88(t6)<br>      |
|  13|[0x80003268]<br>0x00000000281DABBA|- rs2 : x16<br> |[0x80000afc]:sm4ks a7, a7, a6, 3<br> [0x80000b00]:sd a7, 96(t6)<br>      |
|  14|[0x80003270]<br>0xFFFFFFFFBE8723C8|- rs2 : x17<br> |[0x80000b92]:sm4ks s2, s2, a7, 3<br> [0x80000b96]:sd s2, 104(t6)<br>     |
|  15|[0x80003278]<br>0x0000000055727F88|- rs2 : x18<br> |[0x80000c26]:sm4ks s3, s3, s2, 3<br> [0x80000c2a]:sd s3, 112(t6)<br>     |
|  16|[0x80003280]<br>0x00000000331FA0CC|- rs2 : x19<br> |[0x80000cbc]:sm4ks s4, s4, s3, 3<br> [0x80000cc0]:sd s4, 120(t6)<br>     |
|  17|[0x80003288]<br>0xFFFFFFFFDC87FC62|- rs2 : x20<br> |[0x80000d52]:sm4ks s5, s5, s4, 3<br> [0x80000d56]:sd s5, 128(t6)<br>     |
|  18|[0x80003290]<br>0xFFFFFFFFC94A02D5|- rs2 : x21<br> |[0x80000de8]:sm4ks s6, s6, s5, 3<br> [0x80000dec]:sd s6, 136(t6)<br>     |
|  19|[0x80003298]<br>0x0000000051210727|- rs2 : x22<br> |[0x80000e78]:sm4ks s7, s7, s6, 3<br> [0x80000e7c]:sd s7, 144(t6)<br>     |
|  20|[0x800032a0]<br>0x000000003EEE27CE|- rs2 : x23<br> |[0x80000f0e]:sm4ks s8, s8, s7, 3<br> [0x80000f12]:sd s8, 152(t6)<br>     |
|  21|[0x800032a8]<br>0xFFFFFFFFD9983185|- rs2 : x24<br> |[0x80000f9c]:sm4ks s9, s9, s8, 3<br> [0x80000fa0]:sd s9, 160(t6)<br>     |
|  22|[0x800032b0]<br>0x0000000031362CDF|- rs2 : x25<br> |[0x80001030]:sm4ks s10, s10, s9, 3<br> [0x80001034]:sd s10, 168(t6)<br>  |
|  23|[0x800032b8]<br>0x00000000488943A2|- rs2 : x26<br> |[0x800010c6]:sm4ks s11, s11, s10, 3<br> [0x800010ca]:sd s11, 176(t6)<br> |
|  24|[0x800032c0]<br>0xFFFFFFFFF29331F2|- rs2 : x27<br> |[0x80001154]:sm4ks t3, t3, s11, 3<br> [0x80001158]:sd t3, 184(t6)<br>    |
|  25|[0x800032c8]<br>0xFFFFFFFF8603E2EE|- rs2 : x28<br> |[0x800011e8]:sm4ks t4, t4, t3, 3<br> [0x800011ec]:sd t4, 192(t6)<br>     |
|  26|[0x800032d0]<br>0x0000000062004DF6|- rs2 : x29<br> |[0x8000127e]:sm4ks t5, t5, t4, 3<br> [0x80001282]:sd t5, 200(t6)<br>     |
