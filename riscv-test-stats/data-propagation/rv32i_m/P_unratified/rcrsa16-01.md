
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800007f0')]      |
| SIG_REGION                | [('0x80002210', '0x80002340', '76 words')]      |
| COV_LABELS                | rcrsa16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/rcrsa16-01.S    |
| Total Number of coverpoints| 264     |
| Total Coverpoints Hit     | 258      |
| Total Signature Updates   | 76      |
| STAT1                     | 72      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000750]:RCRSA16 t6, t5, t4
      [0x80000754]:sw t6, 152(ra)
 -- Signature Address: 0x80002324 Data: 0x00030002
 -- Redundant Coverpoints hit by the op
      - opcode : rcrsa16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h1_val == 4
      - rs1_h1_val == -1
      - rs1_h0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000794]:RCRSA16 t6, t5, t4
      [0x80000798]:sw t6, 164(ra)
 -- Signature Address: 0x80002330 Data: 0x1FF8BFF7
 -- Redundant Coverpoints hit by the op
      - opcode : rcrsa16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val == -32768
      - rs1_h1_val == rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h1_val == -17
      - rs2_h0_val == -16385
      - rs1_h1_val == -17




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007ac]:RCRSA16 t6, t5, t4
      [0x800007b0]:sw t6, 168(ra)
 -- Signature Address: 0x80002334 Data: 0x04102003
 -- Redundant Coverpoints hit by the op
      - opcode : rcrsa16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h1_val == 16384
      - rs2_h0_val == -33
      - rs1_h1_val == 2048




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007c4]:RCRSA16 t6, t5, t4
      [0x800007c8]:sw t6, 172(ra)
 -- Signature Address: 0x80002338 Data: 0x2000FFFA
 -- Redundant Coverpoints hit by the op
      - opcode : rcrsa16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h1_val == -3
      - rs1_h1_val == 32767
      - rs1_h0_val == -9






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

|s.no|        signature         |                                                                                                                                                                   coverpoints                                                                                                                                                                   |                                 code                                  |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80002210]<br>0x1FF8DFF7|- opcode : rcrsa16<br> - rs1 : x13<br> - rs2 : x13<br> - rd : x13<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h1_val == -17<br> - rs2_h0_val == -16385<br> - rs1_h1_val == -17<br> - rs1_h0_val == -16385<br> |[0x8000010c]:RCRSA16 a3, a3, a3<br> [0x80000110]:sw a3, 0(ra)<br>      |
|   2|[0x80002214]<br>0x20101FEF|- rs1 : x15<br> - rs2 : x15<br> - rd : x12<br> - rs1 == rs2 != rd<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs2_h1_val == 16384<br> - rs2_h0_val == -33<br> - rs1_h1_val == 16384<br> - rs1_h0_val == -33<br>                                                                                                                                |[0x80000124]:RCRSA16 a2, a5, a5<br> [0x80000128]:sw a2, 4(ra)<br>      |
|   3|[0x80002218]<br>0xFFFFEFFF|- rs1 : x24<br> - rs2 : x10<br> - rd : x23<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val != rs2_h0_val<br> - rs2_h1_val == 8192<br> - rs2_h0_val == -9<br>                                                                                               |[0x8000013c]:RCRSA16 s7, s8, a0<br> [0x80000140]:sw s7, 8(ra)<br>      |
|   4|[0x8000221c]<br>0x0009FBBF|- rs1 : x2<br> - rs2 : x30<br> - rd : x30<br> - rs2 == rd != rs1<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs2_h1_val == -129<br> - rs2_h0_val == -3<br> - rs1_h1_val == 16<br> - rs1_h0_val == -2049<br>                                                                                                                                    |[0x80000154]:RCRSA16 t5, sp, t5<br> [0x80000158]:sw t5, 12(ra)<br>     |
|   5|[0x80002220]<br>0xD5500004|- rs1 : x19<br> - rs2 : x31<br> - rd : x19<br> - rs1 == rd != rs2<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == -1<br> - rs1_h1_val == -21846<br>                                                                                                                                                                                  |[0x8000016c]:RCRSA16 s3, s3, t6<br> [0x80000170]:sw s3, 16(ra)<br>     |
|   6|[0x80002224]<br>0x0006FF77|- rs1 : x31<br> - rs2 : x9<br> - rd : x26<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h1_val == -257<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                           |[0x80000184]:RCRSA16 s10, t6, s1<br> [0x80000188]:sw s10, 20(ra)<br>   |
|   7|[0x80002228]<br>0xBFE0D454|- rs1 : x3<br> - rs2 : x8<br> - rd : x21<br> - rs2_h1_val == -21846<br> - rs2_h0_val == 64<br> - rs1_h1_val == -32768<br> - rs1_h0_val == -513<br>                                                                                                                                                                                               |[0x8000019c]:RCRSA16 s5, gp, fp<br> [0x800001a0]:sw s5, 24(ra)<br>     |
|   8|[0x8000222c]<br>0xA00032AA|- rs1 : x27<br> - rs2 : x3<br> - rd : x7<br> - rs2_h1_val == 21845<br> - rs2_h0_val == 32767<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                        |[0x800001b0]:RCRSA16 t2, s11, gp<br> [0x800001b4]:sw t2, 28(ra)<br>    |
|   9|[0x80002230]<br>0xBFFF3EFF|- rs1 : x18<br> - rs2 : x6<br> - rd : x5<br> - rs2_h1_val == 32767<br> - rs2_h0_val == 1<br>                                                                                                                                                                                                                                                     |[0x800001c8]:RCRSA16 t0, s2, t1<br> [0x800001cc]:sw t0, 32(ra)<br>     |
|  10|[0x80002234]<br>0xBC00DFFE|- rs1 : x9<br> - rs2 : x21<br> - rd : x10<br> - rs2_h1_val == -16385<br> - rs1_h1_val == -2049<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                        |[0x800001e0]:RCRSA16 a0, s1, s5<br> [0x800001e4]:sw a0, 36(ra)<br>     |
|  11|[0x80002238]<br>0x2080F003|- rs1 : x12<br> - rs2 : x7<br> - rd : x4<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h1_val == -8193<br> - rs2_h0_val == -257<br> - rs1_h0_val == 8<br>                                                                                                                                                                                    |[0x800001f8]:RCRSA16 tp, a2, t2<br> [0x800001fc]:sw tp, 40(ra)<br>     |
|  12|[0x8000223c]<br>0x000B37FF|- rs1 : x26<br> - rs2 : x18<br> - rd : x8<br> - rs2_h1_val == -4097<br> - rs1_h1_val == 32<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                         |[0x80000210]:RCRSA16 fp, s10, s2<br> [0x80000214]:sw fp, 44(ra)<br>    |
|  13|[0x80002240]<br>0xE008FC01|- rs1 : x25<br> - rs2 : x22<br> - rd : x24<br> - rs2_h1_val == -2049<br> - rs2_h0_val == -17<br> - rs1_h1_val == -16385<br>                                                                                                                                                                                                                      |[0x80000228]:RCRSA16 s8, s9, s6<br> [0x8000022c]:sw s8, 48(ra)<br>     |
|  14|[0x80002244]<br>0xDC00DDFF|- rs1 : x6<br> - rs2 : x14<br> - rd : x16<br> - rs2_h1_val == -1025<br> - rs2_h0_val == 2048<br>                                                                                                                                                                                                                                                 |[0x80000240]:RCRSA16 a6, t1, a4<br> [0x80000244]:sw a6, 52(ra)<br>     |
|  15|[0x80002248]<br>0xFFF2FF04|- rs1 : x22<br> - rs2 : x25<br> - rd : x17<br> - rs2_h1_val == -513<br> - rs1_h1_val == -33<br>                                                                                                                                                                                                                                                  |[0x80000258]:RCRSA16 a7, s6, s9<br> [0x8000025c]:sw a7, 56(ra)<br>     |
|  16|[0x8000224c]<br>0x1FBFFFE3|- rs1 : x17<br> - rs2 : x24<br> - rd : x28<br> - rs2_h1_val == -65<br> - rs1_h1_val == -129<br>                                                                                                                                                                                                                                                  |[0x8000026c]:RCRSA16 t3, a7, s8<br> [0x80000270]:sw t3, 60(ra)<br>     |
|  17|[0x80002250]<br>0xFFBCDFEF|- rs1 : x28<br> - rs2 : x16<br> - rd : x22<br> - rs2_h1_val == -33<br>                                                                                                                                                                                                                                                                           |[0x8000028c]:RCRSA16 s6, t3, a6<br> [0x80000290]:sw s6, 0(t1)<br>      |
|  18|[0x80002254]<br>0x0240FFFD|- rs1 : x5<br> - rs2 : x2<br> - rd : x11<br> - rs2_h1_val == -9<br> - rs2_h0_val == -129<br> - rs1_h1_val == 1024<br>                                                                                                                                                                                                                            |[0x800002a4]:RCRSA16 a1, t0, sp<br> [0x800002a8]:sw a1, 4(t1)<br>      |
|  19|[0x80002258]<br>0xFFE23FFD|- rs1 : x4<br> - rs2 : x23<br> - rd : x20<br> - rs2_h1_val == -5<br> - rs1_h1_val == -65<br>                                                                                                                                                                                                                                                     |[0x800002bc]:RCRSA16 s4, tp, s7<br> [0x800002c0]:sw s4, 8(t1)<br>      |
|  20|[0x8000225c]<br>0x00000000|- rs1 : x8<br> - rs2 : x1<br> - rd : x0<br> - rs2_h1_val == -3<br> - rs1_h1_val == 32767<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                              |[0x800002d4]:RCRSA16 zero, fp, ra<br> [0x800002d8]:sw zero, 12(t1)<br> |
|  21|[0x80002260]<br>0xFDFC0002|- rs1 : x23<br> - rs2 : x12<br> - rd : x18<br> - rs2_h1_val == -2<br> - rs2_h0_val == 1024<br>                                                                                                                                                                                                                                                   |[0x800002ec]:RCRSA16 s2, s7, a2<br> [0x800002f0]:sw s2, 16(t1)<br>     |
|  22|[0x80002264]<br>0x0010EFFF|- rs1 : x1<br> - rs2 : x0<br> - rd : x9<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                |[0x80000304]:RCRSA16 s1, ra, zero<br> [0x80000308]:sw s1, 20(t1)<br>   |
|  23|[0x80002268]<br>0x0000E800|- rs1 : x21<br> - rs2 : x19<br> - rd : x29<br> - rs2_h1_val == 4096<br> - rs1_h1_val == 0<br>                                                                                                                                                                                                                                                    |[0x80000314]:RCRSA16 t4, s5, s3<br> [0x80000318]:sw t4, 24(t1)<br>     |
|  24|[0x8000226c]<br>0xF5FF2EAA|- rs1 : x11<br> - rs2 : x26<br> - rd : x2<br> - rs2_h1_val == 2048<br> - rs1_h1_val == -4097<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                       |[0x8000032c]:RCRSA16 sp, a1, s10<br> [0x80000330]:sw sp, 28(t1)<br>    |
|  25|[0x80002270]<br>0xFFFE0202|- rs1 : x29<br> - rs2 : x28<br> - rd : x3<br> - rs2_h1_val == 1024<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                                     |[0x80000344]:RCRSA16 gp, t4, t3<br> [0x80000348]:sw gp, 32(t1)<br>     |
|  26|[0x80002274]<br>0x1FE00200|- rs1 : x7<br> - rs2 : x4<br> - rd : x14<br> - rs2_h1_val == 512<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                     |[0x8000035c]:RCRSA16 a4, t2, tp<br> [0x80000360]:sw a4, 36(t1)<br>     |
|  27|[0x80002278]<br>0xFFFFFFFF|- rs1 : x14<br> - rs2 : x11<br> - rd : x1<br> - rs2_h1_val == 256<br> - rs1_h1_val == 4<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                             |[0x80000374]:RCRSA16 ra, a4, a1<br> [0x80000378]:sw ra, 40(t1)<br>     |
|  28|[0x8000227c]<br>0x0200C040|- rs1 : x30<br> - rs2 : x20<br> - rd : x31<br> - rs1_h0_val == -32768<br> - rs2_h1_val == 128<br> - rs1_h1_val == 2048<br>                                                                                                                                                                                                                       |[0x80000388]:RCRSA16 t6, t5, s4<br> [0x8000038c]:sw t6, 44(t1)<br>     |
|  29|[0x80002280]<br>0xFF880060|- rs1 : x20<br> - rs2 : x17<br> - rd : x25<br> - rs2_h1_val == 64<br> - rs1_h1_val == -257<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                           |[0x800003a0]:RCRSA16 s9, s4, a7<br> [0x800003a4]:sw s9, 48(t1)<br>     |
|  30|[0x80002284]<br>0xFC020013|- rs1 : x16<br> - rs2 : x5<br> - rd : x27<br> - rs2_h1_val == 32<br>                                                                                                                                                                                                                                                                             |[0x800003b8]:RCRSA16 s11, a6, t0<br> [0x800003bc]:sw s11, 52(t1)<br>   |
|  31|[0x80002288]<br>0x0081D55D|- rs1 : x10<br> - rs2 : x29<br> - rd : x15<br> - rs2_h1_val == 16<br> - rs2_h0_val == -2<br> - rs1_h1_val == 256<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                  |[0x800003d0]:RCRSA16 a5, a0, t4<br> [0x800003d4]:sw a5, 56(t1)<br>     |
|  32|[0x8000228c]<br>0x01000004|- rs1 : x0<br> - rs2 : x27<br> - rd : x6<br> - rs2_h1_val == 8<br> - rs2_h0_val == -513<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                                |[0x800003f0]:RCRSA16 t1, zero, s11<br> [0x800003f4]:sw t1, 0(ra)<br>   |
|  33|[0x80002290]<br>0x3AABF9FF|- rs2_h0_val == -21846<br> - rs1_h1_val == 8192<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                                                                    |[0x80000408]:RCRSA16 t6, t5, t4<br> [0x8000040c]:sw t6, 4(ra)<br>      |
|  34|[0x80002294]<br>0x32ABFFC2|- rs1_h1_val == 4096<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                                                |[0x80000420]:RCRSA16 t6, t5, t4<br> [0x80000424]:sw t6, 8(ra)<br>      |
|  35|[0x80002298]<br>0x0800FF5F|- rs2_h0_val == -4097<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                                |[0x80000438]:RCRSA16 t6, t5, t4<br> [0x8000043c]:sw t6, 12(ra)<br>     |
|  36|[0x8000229c]<br>0xF7EFFFF2|- rs2_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                           |[0x80000450]:RCRSA16 t6, t5, t4<br> [0x80000454]:sw t6, 16(ra)<br>     |
|  37|[0x800022a0]<br>0xD5580000|- rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                           |[0x80000468]:RCRSA16 t6, t5, t4<br> [0x8000046c]:sw t6, 20(ra)<br>     |
|  38|[0x800022a4]<br>0x0108FFFD|- rs1_h1_val == 512<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                   |[0x80000480]:RCRSA16 t6, t5, t4<br> [0x80000484]:sw t6, 24(ra)<br>     |
|  39|[0x800022a8]<br>0x08801FFD|- rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                        |[0x80000494]:RCRSA16 t6, t5, t4<br> [0x80000498]:sw t6, 28(ra)<br>     |
|  40|[0x800022ac]<br>0x01FDE555|- rs2_h0_val == -1025<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                               |[0x800004a8]:RCRSA16 t6, t5, t4<br> [0x800004ac]:sw t6, 32(ra)<br>     |
|  41|[0x800022b0]<br>0x00FF0408|- rs1_h1_val == -2<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                  |[0x800004c0]:RCRSA16 t6, t5, t4<br> [0x800004c4]:sw t6, 36(ra)<br>     |
|  42|[0x800022b4]<br>0xFFFE017F|- rs1_h1_val == 1<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                   |[0x800004d8]:RCRSA16 t6, t5, t4<br> [0x800004dc]:sw t6, 40(ra)<br>     |
|  43|[0x800022b8]<br>0x007D007F|- rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                          |[0x800004ec]:RCRSA16 t6, t5, t4<br> [0x800004f0]:sw t6, 44(ra)<br>     |
|  44|[0x800022bc]<br>0x00230420|- rs2_h0_val == -65<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                   |[0x80000504]:RCRSA16 t6, t5, t4<br> [0x80000508]:sw t6, 48(ra)<br>     |
|  45|[0x800022c0]<br>0x0800FE0F|- rs2_h0_val == -8193<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                 |[0x8000051c]:RCRSA16 t6, t5, t4<br> [0x80000520]:sw t6, 52(ra)<br>     |
|  46|[0x800022c4]<br>0xD55DD55D|- rs2_h0_val == 21845<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                 |[0x80000534]:RCRSA16 t6, t5, t4<br> [0x80000538]:sw t6, 56(ra)<br>     |
|  47|[0x800022c8]<br>0x00000003|- rs2_h1_val == 4<br> - rs2_h0_val == -5<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                               |[0x8000054c]:RCRSA16 t6, t5, t4<br> [0x80000550]:sw t6, 60(ra)<br>     |
|  48|[0x800022cc]<br>0xF0080002|- rs2_h0_val == 8192<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                                   |[0x80000560]:RCRSA16 t6, t5, t4<br> [0x80000564]:sw t6, 64(ra)<br>     |
|  49|[0x800022d0]<br>0x3FDFE002|- rs2_h0_val == -32768<br>                                                                                                                                                                                                                                                                                                                       |[0x80000574]:RCRSA16 t6, t5, t4<br> [0x80000578]:sw t6, 68(ra)<br>     |
|  50|[0x800022d4]<br>0xDFDF0001|- rs2_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                        |[0x80000588]:RCRSA16 t6, t5, t4<br> [0x8000058c]:sw t6, 72(ra)<br>     |
|  51|[0x800022d8]<br>0xF5FFDFEF|- rs2_h0_val == 4096<br> - rs1_h1_val == -1025<br>                                                                                                                                                                                                                                                                                               |[0x8000059c]:RCRSA16 t6, t5, t4<br> [0x800005a0]:sw t6, 76(ra)<br>     |
|  52|[0x800022dc]<br>0x1F002008|- rs2_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                          |[0x800005b4]:RCRSA16 t6, t5, t4<br> [0x800005b8]:sw t6, 80(ra)<br>     |
|  53|[0x800022e0]<br>0xFF3F0084|- rs2_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                          |[0x800005cc]:RCRSA16 t6, t5, t4<br> [0x800005d0]:sw t6, 84(ra)<br>     |
|  54|[0x800022e4]<br>0xDFC00001|- rs2_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                          |[0x800005e4]:RCRSA16 t6, t5, t4<br> [0x800005e8]:sw t6, 88(ra)<br>     |
|  55|[0x800022e8]<br>0xFFEFE003|- rs2_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                           |[0x800005fc]:RCRSA16 t6, t5, t4<br> [0x80000600]:sw t6, 92(ra)<br>     |
|  56|[0x800022ec]<br>0x000007FD|- rs2_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                            |[0x80000614]:RCRSA16 t6, t5, t4<br> [0x80000618]:sw t6, 96(ra)<br>     |
|  57|[0x800022f0]<br>0x0002E03F|- rs2_h0_val == 4<br> - rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                      |[0x8000062c]:RCRSA16 t6, t5, t4<br> [0x80000630]:sw t6, 100(ra)<br>    |
|  58|[0x800022f4]<br>0x0003FFFE|- rs2_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                            |[0x80000644]:RCRSA16 t6, t5, t4<br> [0x80000648]:sw t6, 104(ra)<br>    |
|  59|[0x800022f8]<br>0x0004B555|- rs2_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                           |[0x8000065c]:RCRSA16 t6, t5, t4<br> [0x80000660]:sw t6, 108(ra)<br>    |
|  60|[0x800022fc]<br>0x2AAE0003|- rs2_h1_val == 2<br> - rs1_h1_val == 21845<br>                                                                                                                                                                                                                                                                                                  |[0x80000674]:RCRSA16 t6, t5, t4<br> [0x80000678]:sw t6, 112(ra)<br>    |
|  61|[0x80002300]<br>0x2FFF000C|- rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                                        |[0x80000688]:RCRSA16 t6, t5, t4<br> [0x8000068c]:sw t6, 116(ra)<br>    |
|  62|[0x80002304]<br>0xFFF80003|- rs1_h1_val == -9<br>                                                                                                                                                                                                                                                                                                                           |[0x800006a0]:RCRSA16 t6, t5, t4<br> [0x800006a4]:sw t6, 120(ra)<br>    |
|  63|[0x80002308]<br>0x0002FFFF|- rs1_h1_val == -5<br>                                                                                                                                                                                                                                                                                                                           |[0x800006b8]:RCRSA16 t6, t5, t4<br> [0x800006bc]:sw t6, 124(ra)<br>    |
|  64|[0x8000230c]<br>0x00FFC000|- rs2_h1_val == 1<br> - rs1_h1_val == -3<br>                                                                                                                                                                                                                                                                                                     |[0x800006cc]:RCRSA16 t6, t5, t4<br> [0x800006d0]:sw t6, 128(ra)<br>    |
|  65|[0x80002310]<br>0x0014FFFF|- rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                           |[0x800006e4]:RCRSA16 t6, t5, t4<br> [0x800006e8]:sw t6, 132(ra)<br>    |
|  66|[0x80002314]<br>0x003FF800|- rs1_h1_val == 128<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                |[0x800006fc]:RCRSA16 t6, t5, t4<br> [0x80000700]:sw t6, 136(ra)<br>    |
|  67|[0x80002318]<br>0xE020FEFB|- rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                           |[0x80000714]:RCRSA16 t6, t5, t4<br> [0x80000718]:sw t6, 140(ra)<br>    |
|  68|[0x8000231c]<br>0xD5565FFF|- rs1_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                            |[0x80000728]:RCRSA16 t6, t5, t4<br> [0x8000072c]:sw t6, 144(ra)<br>    |
|  69|[0x80002320]<br>0xFFF707FE|- rs1_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                           |[0x8000073c]:RCRSA16 t6, t5, t4<br> [0x80000740]:sw t6, 148(ra)<br>    |
|  70|[0x80002328]<br>0xFF02F7FE|- rs1_h1_val == -513<br>                                                                                                                                                                                                                                                                                                                         |[0x80000768]:RCRSA16 t6, t5, t4<br> [0x8000076c]:sw t6, 156(ra)<br>    |
|  71|[0x8000232c]<br>0x040201DF|- rs2_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                        |[0x80000780]:RCRSA16 t6, t5, t4<br> [0x80000784]:sw t6, 160(ra)<br>    |
|  72|[0x8000233c]<br>0x000FAFFF|- rs2_h1_val == -32768<br>                                                                                                                                                                                                                                                                                                                       |[0x800007dc]:RCRSA16 t6, t5, t4<br> [0x800007e0]:sw t6, 176(ra)<br>    |
