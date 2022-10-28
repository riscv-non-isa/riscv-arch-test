
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000810')]      |
| SIG_REGION                | [('0x80002210', '0x80002350', '80 words')]      |
| COV_LABELS                | urcras16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/urcras16-01.S    |
| Total Number of coverpoints| 256     |
| Total Coverpoints Hit     | 250      |
| Total Signature Updates   | 77      |
| STAT1                     | 73      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000600]:URCRAS16 t6, t5, t4
      [0x80000604]:sw t6, 84(ra)
 -- Signature Address: 0x800022e8 Data: 0x00060000
 -- Redundant Coverpoints hit by the op
      - opcode : urcras16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs2_h1_val == 4096
      - rs2_h0_val == 0
      - rs1_h0_val == 4096




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007b8]:URCRAS16 t6, t5, t4
      [0x800007bc]:sw t6, 160(ra)
 -- Signature Address: 0x80002334 Data: 0x0003FFFB
 -- Redundant Coverpoints hit by the op
      - opcode : urcras16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val == 0
      - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h1_val == 4




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007d0]:URCRAS16 t6, t5, t4
      [0x800007d4]:sw t6, 164(ra)
 -- Signature Address: 0x80002338 Data: 0x0021FFE4
 -- Redundant Coverpoints hit by the op
      - opcode : urcras16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 64
      - rs2_h0_val == 2
      - rs1_h1_val == 64




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007e8]:URCRAS16 t6, t5, t4
      [0x800007ec]:sw t6, 168(ra)
 -- Signature Address: 0x8000233c Data: 0x801F0080
 -- Redundant Coverpoints hit by the op
      - opcode : urcras16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 65023
      - rs2_h0_val == 64
      - rs1_h1_val == 65534
      - rs1_h0_val == 65279






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

|s.no|        signature         |                                                                                                              coverpoints                                                                                                               |                                  code                                   |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0006FFFD|- opcode : urcras16<br> - rs1 : x28<br> - rs2 : x28<br> - rd : x28<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> |[0x8000010c]:URCRAS16 t3, t3, t3<br> [0x80000110]:sw t3, 0(gp)<br>       |
|   2|[0x80002214]<br>0x0021FFE1|- rs1 : x14<br> - rs2 : x14<br> - rd : x31<br> - rs1 == rs2 != rd<br> - rs2_h1_val == 64<br> - rs2_h0_val == 2<br> - rs1_h1_val == 64<br> - rs1_h0_val == 2<br>                                                                         |[0x80000124]:URCRAS16 t6, a4, a4<br> [0x80000128]:sw t6, 4(gp)<br>       |
|   3|[0x80002218]<br>0x8008840A|- rs1 : x19<br> - rs2 : x25<br> - rd : x15<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs2_h1_val == 63487<br> - rs1_h1_val == 65534<br>                   |[0x8000013c]:URCRAS16 a5, s3, s9<br> [0x80000140]:sw a5, 8(gp)<br>       |
|   4|[0x8000221c]<br>0x0009AAAC|- rs1 : x21<br> - rs2 : x22<br> - rd : x22<br> - rs2 == rd != rs1<br> - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == 43690<br> - rs1_h1_val == 0<br>                                              |[0x80000150]:URCRAS16 s6, s5, s6<br> [0x80000154]:sw s6, 12(gp)<br>      |
|   5|[0x80002220]<br>0xAA9A5515|- rs1 : x2<br> - rs2 : x18<br> - rd : x2<br> - rs1 == rd != rs2<br> - rs2_h1_val == 21845<br> - rs2_h0_val == 21845<br> - rs1_h1_val == 65503<br> - rs1_h0_val == 65407<br>                                                             |[0x80000168]:URCRAS16 sp, sp, s2<br> [0x8000016c]:sw sp, 16(gp)<br>      |
|   6|[0x80002224]<br>0xFFFEEAAB|- rs1 : x9<br> - rs2 : x10<br> - rd : x5<br> - rs2_h1_val == 32767<br> - rs2_h0_val == 65534<br> - rs1_h0_val == 21845<br>                                                                                                              |[0x80000180]:URCRAS16 t0, s1, a0<br> [0x80000184]:sw t0, 20(gp)<br>      |
|   7|[0x80002228]<br>0x7FFF1800|- rs1 : x31<br> - rs2 : x30<br> - rd : x14<br> - rs2_h1_val == 49151<br> - rs1_h1_val == 1<br> - rs1_h0_val == 61439<br>                                                                                                                |[0x80000198]:URCRAS16 a4, t6, t5<br> [0x8000019c]:sw a4, 24(gp)<br>      |
|   8|[0x8000222c]<br>0x8F7FE555|- rs1 : x6<br> - rs2 : x7<br> - rd : x17<br> - rs2_h1_val == 57343<br> - rs2_h0_val == 65279<br> - rs1_h1_val == 8192<br> - rs1_h0_val == 43690<br>                                                                                     |[0x800001b0]:URCRAS16 a7, t1, t2<br> [0x800001b4]:sw a7, 28(gp)<br>      |
|   9|[0x80002230]<br>0x03008C00|- rs1 : x25<br> - rs2 : x26<br> - rd : x6<br> - rs2_h1_val == 61439<br> - rs2_h0_val == 512<br> - rs1_h1_val == 1024<br> - rs1_h0_val == 2048<br>                                                                                       |[0x800001c8]:URCRAS16 t1, s9, s10<br> [0x800001cc]:sw t1, 32(gp)<br>     |
|  10|[0x80002234]<br>0x7FF9C200|- rs1 : x24<br> - rs2 : x20<br> - rd : x26<br> - rs2_h1_val == 64511<br> - rs2_h0_val == 4<br> - rs1_h1_val == 65519<br> - rs1_h0_val == 32767<br>                                                                                      |[0x800001e0]:URCRAS16 s10, s8, s4<br> [0x800001e4]:sw s10, 36(gp)<br>    |
|  11|[0x80002238]<br>0x00208100|- rs1 : x0<br> - rs2 : x31<br> - rd : x11<br> - rs1_h0_val == 0<br> - rs2_h1_val == 65023<br> - rs2_h0_val == 64<br>                                                                                                                    |[0x800001f8]:URCRAS16 a1, zero, t6<br> [0x800001fc]:sw a1, 40(gp)<br>    |
|  12|[0x8000223c]<br>0x7FC6F080|- rs1 : x11<br> - rs2 : x29<br> - rd : x21<br> - rs2_h1_val == 65279<br> - rs2_h0_val == 65407<br> - rs1_h0_val == 57343<br>                                                                                                            |[0x80000210]:URCRAS16 s5, a1, t4<br> [0x80000214]:sw s5, 44(gp)<br>      |
|  13|[0x80002240]<br>0x000AC040|- rs1 : x30<br> - rs2 : x4<br> - rd : x18<br> - rs2_h1_val == 65407<br>                                                                                                                                                                 |[0x80000228]:URCRAS16 s2, t5, tp<br> [0x8000022c]:sw s2, 48(gp)<br>      |
|  14|[0x80002244]<br>0x00000000|- rs1 : x27<br> - rs2 : x6<br> - rd : x0<br> - rs2_h1_val == 65471<br> - rs2_h0_val == 65503<br> - rs1_h1_val == 32768<br>                                                                                                              |[0x80000240]:URCRAS16 zero, s11, t1<br> [0x80000244]:sw zero, 52(gp)<br> |
|  15|[0x80002248]<br>0x7F828012|- rs1 : x4<br> - rs2 : x24<br> - rd : x8<br> - rs2_h1_val == 65503<br> - rs1_h0_val == 4<br>                                                                                                                                            |[0x80000258]:URCRAS16 fp, tp, s8<br> [0x8000025c]:sw fp, 56(gp)<br>      |
|  16|[0x8000224c]<br>0x7F83FFE8|- rs1 : x7<br> - rs2 : x9<br> - rd : x30<br> - rs2_h1_val == 65519<br> - rs1_h0_val == 65471<br>                                                                                                                                        |[0x80000270]:URCRAS16 t5, t2, s1<br> [0x80000274]:sw t5, 60(gp)<br>      |
|  17|[0x80002250]<br>0x0060E004|- rs1 : x1<br> - rs2 : x19<br> - rd : x25<br> - rs2_h1_val == 65527<br> - rs1_h1_val == 128<br> - rs1_h0_val == 49151<br>                                                                                                               |[0x80000288]:URCRAS16 s9, ra, s3<br> [0x8000028c]:sw s9, 64(gp)<br>      |
|  18|[0x80002254]<br>0x8005F002|- rs1 : x17<br> - rs2 : x15<br> - rd : x13<br> - rs2_h1_val == 65531<br> - rs2_h0_val == 65531<br> - rs1_h1_val == 16<br>                                                                                                               |[0x800002a0]:URCRAS16 a3, a7, a5<br> [0x800002a4]:sw a3, 68(gp)<br>      |
|  19|[0x80002258]<br>0x01028005|- rs1 : x26<br> - rs2 : x27<br> - rd : x4<br> - rs2_h1_val == 65533<br> - rs1_h1_val == 4<br> - rs1_h0_val == 8<br>                                                                                                                     |[0x800002c0]:URCRAS16 tp, s10, s11<br> [0x800002c4]:sw tp, 0(t1)<br>     |
|  20|[0x8000225c]<br>0x78FF8003|- rs1 : x8<br> - rs2 : x13<br> - rd : x1<br> - rs2_h1_val == 65534<br> - rs2_h0_val == 61439<br> - rs1_h1_val == 512<br>                                                                                                                |[0x800002d8]:URCRAS16 ra, fp, a3<br> [0x800002dc]:sw ra, 4(t1)<br>       |
|  21|[0x80002260]<br>0xBFFF1555|- rs1 : x3<br> - rs2 : x12<br> - rd : x20<br> - rs2_h1_val == 32768<br> - rs2_h0_val == 49151<br> - rs1_h1_val == 49151<br>                                                                                                             |[0x800002f0]:URCRAS16 s4, gp, a2<br> [0x800002f4]:sw s4, 8(t1)<br>       |
|  22|[0x80002264]<br>0x01000001|- rs1 : x12<br> - rs2 : x0<br> - rd : x24<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br>                                                                                                                                               |[0x80000308]:URCRAS16 s8, a2, zero<br> [0x8000030c]:sw s8, 12(t1)<br>    |
|  23|[0x80002268]<br>0x6003F020|- rs1 : x13<br> - rs2 : x21<br> - rd : x3<br> - rs2_h1_val == 8192<br> - rs1_h1_val == 8<br> - rs1_h0_val == 64<br>                                                                                                                     |[0x80000320]:URCRAS16 gp, a3, s5<br> [0x80000324]:sw gp, 16(t1)<br>      |
|  24|[0x8000226c]<br>0x000FF800|- rs1 : x15<br> - rs2 : x8<br> - rd : x16<br> - rs2_h1_val == 4096<br> - rs1_h0_val == 1<br>                                                                                                                                            |[0x80000338]:URCRAS16 a6, a5, fp<br> [0x8000033c]:sw a6, 20(t1)<br>      |
|  25|[0x80002270]<br>0x7007FC08|- rs1 : x29<br> - rs2 : x3<br> - rd : x10<br> - rs2_h1_val == 2048<br> - rs1_h1_val == 57343<br> - rs1_h0_val == 16<br>                                                                                                                 |[0x80000350]:URCRAS16 a0, t4, gp<br> [0x80000354]:sw a0, 24(t1)<br>      |
|  26|[0x80002274]<br>0x0003FE06|- rs1 : x18<br> - rs2 : x11<br> - rd : x29<br> - rs2_h1_val == 1024<br>                                                                                                                                                                 |[0x80000368]:URCRAS16 t4, s2, a1<br> [0x8000036c]:sw t4, 28(t1)<br>      |
|  27|[0x80002278]<br>0x7E03FF05|- rs1 : x20<br> - rs2 : x5<br> - rd : x19<br> - rs2_h1_val == 512<br> - rs2_h0_val == 64511<br>                                                                                                                                         |[0x80000380]:URCRAS16 s3, s4, t0<br> [0x80000384]:sw s3, 32(t1)<br>      |
|  28|[0x8000227c]<br>0x8000FF80|- rs1 : x5<br> - rs2 : x17<br> - rd : x23<br> - rs2_h1_val == 256<br> - rs1_h1_val == 65527<br>                                                                                                                                         |[0x80000398]:URCRAS16 s7, t0, a7<br> [0x8000039c]:sw s7, 36(t1)<br>      |
|  29|[0x80002280]<br>0x8005FFC9|- rs1 : x10<br> - rs2 : x23<br> - rd : x27<br> - rs2_h1_val == 128<br> - rs2_h0_val == 65533<br>                                                                                                                                        |[0x800003b0]:URCRAS16 s11, a0, s7<br> [0x800003b4]:sw s11, 40(t1)<br>    |
|  30|[0x80002284]<br>0x0205FFF8|- rs1 : x23<br> - rs2 : x16<br> - rd : x7<br> - rs2_h1_val == 32<br>                                                                                                                                                                    |[0x800003c8]:URCRAS16 t2, s7, a6<br> [0x800003cc]:sw t2, 44(t1)<br>      |
|  31|[0x80002288]<br>0x8BFFFFFA|- rs1 : x16<br> - rs2 : x2<br> - rd : x12<br> - rs2_h1_val == 16<br> - rs2_h0_val == 63487<br>                                                                                                                                          |[0x800003e0]:URCRAS16 a2, a6, sp<br> [0x800003e4]:sw a2, 48(t1)<br>      |
|  32|[0x8000228c]<br>0x7001FFFD|- rs1 : x22<br> - rs2 : x1<br> - rd : x9<br> - rs2_h1_val == 8<br> - rs2_h0_val == 57343<br>                                                                                                                                            |[0x800003f8]:URCRAS16 s1, s6, ra<br> [0x800003fc]:sw s1, 52(t1)<br>      |
|  33|[0x80002290]<br>0x000E2AA8|- rs1_h0_val == 65531<br>                                                                                                                                                                                                               |[0x80000410]:URCRAS16 t6, t5, t4<br> [0x80000414]:sw t6, 56(t1)<br>      |
|  34|[0x80002294]<br>0x87FF01FF|- rs2_h0_val == 8192<br> - rs1_h1_val == 61439<br> - rs1_h0_val == 65533<br>                                                                                                                                                            |[0x8000042c]:URCRAS16 t6, t5, t4<br> [0x80000430]:sw t6, 0(ra)<br>       |
|  35|[0x80002298]<br>0x83FF0003|- rs2_h0_val == 4096<br> - rs1_h1_val == 63487<br> - rs1_h0_val == 65534<br>                                                                                                                                                            |[0x80000440]:URCRAS16 t6, t5, t4<br> [0x80000444]:sw t6, 4(ra)<br>       |
|  36|[0x8000229c]<br>0x0009E000|- rs1_h1_val == 2<br> - rs1_h0_val == 32768<br>                                                                                                                                                                                         |[0x80000454]:URCRAS16 t6, t5, t4<br> [0x80000458]:sw t6, 8(ra)<br>       |
|  37|[0x800022a0]<br>0x800B1FF7|- rs2_h0_val == 32<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                        |[0x80000468]:URCRAS16 t6, t5, t4<br> [0x8000046c]:sw t6, 12(ra)<br>      |
|  38|[0x800022a4]<br>0x7FFF9008|- rs1_h1_val == 32<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                         |[0x8000047c]:URCRAS16 t6, t5, t4<br> [0x80000480]:sw t6, 16(ra)<br>      |
|  39|[0x800022a8]<br>0x7F860600|- rs1_h0_val == 4096<br>                                                                                                                                                                                                                |[0x80000490]:URCRAS16 t6, t5, t4<br> [0x80000494]:sw t6, 20(ra)<br>      |
|  40|[0x800022ac]<br>0x78048204|- rs1_h0_val == 1024<br>                                                                                                                                                                                                                |[0x800004a8]:URCRAS16 t6, t5, t4<br> [0x800004ac]:sw t6, 24(ra)<br>      |
|  41|[0x800022b0]<br>0x0240C100|- rs2_h0_val == 128<br> - rs1_h0_val == 512<br>                                                                                                                                                                                         |[0x800004c0]:URCRAS16 t6, t5, t4<br> [0x800004c4]:sw t6, 28(ra)<br>      |
|  42|[0x800022b4]<br>0xD544FC80|- rs1_h1_val == 43690<br> - rs1_h0_val == 256<br>                                                                                                                                                                                       |[0x800004d8]:URCRAS16 t6, t5, t4<br> [0x800004dc]:sw t6, 32(ra)<br>      |
|  43|[0x800022b8]<br>0x87F70020|- rs2_h0_val == 65519<br> - rs1_h1_val == 4096<br> - rs1_h0_val == 128<br>                                                                                                                                                              |[0x800004f0]:URCRAS16 t6, t5, t4<br> [0x800004f4]:sw t6, 36(ra)<br>      |
|  44|[0x800022bc]<br>0x000D0010|- rs1_h0_val == 32<br>                                                                                                                                                                                                                  |[0x80000504]:URCRAS16 t6, t5, t4<br> [0x80000508]:sw t6, 40(ra)<br>      |
|  45|[0x800022c0]<br>0x2EAA77FF|- rs1_h1_val == 2048<br> - rs1_h0_val == 65535<br>                                                                                                                                                                                      |[0x8000051c]:URCRAS16 t6, t5, t4<br> [0x80000520]:sw t6, 44(ra)<br>      |
|  46|[0x800022c4]<br>0x2AEA7F7D|- rs2_h1_val == 4<br> - rs1_h1_val == 21845<br> - rs1_h0_val == 65279<br>                                                                                                                                                               |[0x80000534]:URCRAS16 t6, t5, t4<br> [0x80000538]:sw t6, 48(ra)<br>      |
|  47|[0x800022c8]<br>0x8FFE0002|- rs2_h1_val == 2<br> - rs1_h1_val == 65533<br>                                                                                                                                                                                         |[0x80000548]:URCRAS16 t6, t5, t4<br> [0x8000054c]:sw t6, 52(ra)<br>      |
|  48|[0x800022cc]<br>0x40000008|- rs2_h1_val == 1<br> - rs2_h0_val == 32767<br>                                                                                                                                                                                         |[0x80000560]:URCRAS16 t6, t5, t4<br> [0x80000564]:sw t6, 56(ra)<br>      |
|  49|[0x800022d0]<br>0x0204FFFE|- rs2_h1_val == 65535<br> - rs2_h0_val == 1024<br>                                                                                                                                                                                      |[0x80000578]:URCRAS16 t6, t5, t4<br> [0x8000057c]:sw t6, 60(ra)<br>      |
|  50|[0x800022d4]<br>0x01800037|- rs2_h0_val == 256<br>                                                                                                                                                                                                                 |[0x80000590]:URCRAS16 t6, t5, t4<br> [0x80000594]:sw t6, 64(ra)<br>      |
|  51|[0x800022d8]<br>0x000E8120|- rs2_h0_val == 16<br>                                                                                                                                                                                                                  |[0x800005a8]:URCRAS16 t6, t5, t4<br> [0x800005ac]:sw t6, 68(ra)<br>      |
|  52|[0x800022dc]<br>0x7FE3FFFC|- rs2_h0_val == 8<br> - rs1_h1_val == 65471<br>                                                                                                                                                                                         |[0x800005c0]:URCRAS16 t6, t5, t4<br> [0x800005c4]:sw t6, 72(ra)<br>      |
|  53|[0x800022e0]<br>0x7FC0FC09|- rs2_h0_val == 1<br> - rs1_h1_val == 65407<br>                                                                                                                                                                                         |[0x800005d8]:URCRAS16 t6, t5, t4<br> [0x800005dc]:sw t6, 76(ra)<br>      |
|  54|[0x800022e4]<br>0x800277FC|- rs2_h0_val == 65535<br>                                                                                                                                                                                                               |[0x800005f0]:URCRAS16 t6, t5, t4<br> [0x800005f4]:sw t6, 80(ra)<br>      |
|  55|[0x800022ec]<br>0x4001FFC9|- rs1_h1_val == 32767<br>                                                                                                                                                                                                               |[0x80000618]:URCRAS16 t6, t5, t4<br> [0x8000061c]:sw t6, 88(ra)<br>      |
|  56|[0x800022f0]<br>0x7E050002|- rs1_h1_val == 64511<br>                                                                                                                                                                                                               |[0x80000630]:URCRAS16 t6, t5, t4<br> [0x80000634]:sw t6, 92(ra)<br>      |
|  57|[0x800022f4]<br>0x7F1F3C00|- rs1_h1_val == 65023<br> - rs1_h0_val == 63487<br>                                                                                                                                                                                     |[0x80000648]:URCRAS16 t6, t5, t4<br> [0x8000064c]:sw t6, 96(ra)<br>      |
|  58|[0x800022f8]<br>0x7FFF77DF|- rs2_h0_val == 65527<br>                                                                                                                                                                                                               |[0x80000660]:URCRAS16 t6, t5, t4<br> [0x80000664]:sw t6, 100(ra)<br>     |
|  59|[0x800022fc]<br>0xAA2A800A|- rs1_h1_val == 65279<br>                                                                                                                                                                                                               |[0x80000678]:URCRAS16 t6, t5, t4<br> [0x8000067c]:sw t6, 104(ra)<br>     |
|  60|[0x80002300]<br>0x20012A6A|- rs1_h1_val == 16384<br>                                                                                                                                                                                                               |[0x80000690]:URCRAS16 t6, t5, t4<br> [0x80000694]:sw t6, 108(ra)<br>     |
|  61|[0x80002304]<br>0x08807FFA|- rs1_h1_val == 256<br>                                                                                                                                                                                                                 |[0x800006a4]:URCRAS16 t6, t5, t4<br> [0x800006a8]:sw t6, 112(ra)<br>     |
|  62|[0x80002308]<br>0xB554FFFD|- rs2_h0_val == 43690<br>                                                                                                                                                                                                               |[0x800006bc]:URCRAS16 t6, t5, t4<br> [0x800006c0]:sw t6, 116(ra)<br>     |
|  63|[0x8000230c]<br>0x80037FF6|- rs1_h0_val == 65527<br>                                                                                                                                                                                                               |[0x800006d4]:URCRAS16 t6, t5, t4<br> [0x800006d8]:sw t6, 120(ra)<br>     |
|  64|[0x80002310]<br>0x20027F6F|- rs2_h0_val == 16384<br> - rs1_h0_val == 65503<br>                                                                                                                                                                                     |[0x800006e8]:URCRAS16 t6, t5, t4<br> [0x800006ec]:sw t6, 124(ra)<br>     |
|  65|[0x80002314]<br>0xFBFFD55C|- rs1_h1_val == 65535<br>                                                                                                                                                                                                               |[0x80000700]:URCRAS16 t6, t5, t4<br> [0x80000704]:sw t6, 128(ra)<br>     |
|  66|[0x80002318]<br>0xFDFF0000|- rs2_h0_val == 65023<br>                                                                                                                                                                                                               |[0x80000718]:URCRAS16 t6, t5, t4<br> [0x8000071c]:sw t6, 132(ra)<br>     |
|  67|[0x8000231c]<br>0x80DF7FFD|- rs2_h0_val == 65471<br>                                                                                                                                                                                                               |[0x80000730]:URCRAS16 t6, t5, t4<br> [0x80000734]:sw t6, 136(ra)<br>     |
|  68|[0x80002320]<br>0x02047DFA|- rs1_h0_val == 64511<br>                                                                                                                                                                                                               |[0x80000748]:URCRAS16 t6, t5, t4<br> [0x8000074c]:sw t6, 140(ra)<br>     |
|  69|[0x80002324]<br>0xAA8A7EBF|- rs1_h0_val == 65023<br>                                                                                                                                                                                                               |[0x80000760]:URCRAS16 t6, t5, t4<br> [0x80000764]:sw t6, 144(ra)<br>     |
|  70|[0x80002328]<br>0x8000554D|- rs2_h0_val == 32768<br> - rs1_h0_val == 65519<br>                                                                                                                                                                                     |[0x80000774]:URCRAS16 t6, t5, t4<br> [0x80000778]:sw t6, 148(ra)<br>     |
|  71|[0x8000232c]<br>0x800DFE03|- rs1_h1_val == 65531<br>                                                                                                                                                                                                               |[0x8000078c]:URCRAS16 t6, t5, t4<br> [0x80000790]:sw t6, 152(ra)<br>     |
|  72|[0x80002330]<br>0x04068084|- rs2_h0_val == 2048<br>                                                                                                                                                                                                                |[0x800007a4]:URCRAS16 t6, t5, t4<br> [0x800007a8]:sw t6, 156(ra)<br>     |
|  73|[0x80002340]<br>0x70FFE001|- rs2_h1_val == 16384<br>                                                                                                                                                                                                               |[0x80000800]:URCRAS16 t6, t5, t4<br> [0x80000804]:sw t6, 172(ra)<br>     |
