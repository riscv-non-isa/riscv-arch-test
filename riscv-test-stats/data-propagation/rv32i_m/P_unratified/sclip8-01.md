
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800004f0')]      |
| SIG_REGION                | [('0x80002210', '0x800023a0', '100 words')]      |
| COV_LABELS                | sclip8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/sclip8-01.S    |
| Total Number of coverpoints| 160     |
| Total Coverpoints Hit     | 155      |
| Total Signature Updates   | 49      |
| STAT1                     | 48      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004c4]:SCLIP8 t6, t5, 3
      [0x800004c8]:csrrs t5, vxsat, zero
      [0x800004cc]:sw t6, 200(ra)
 -- Signature Address: 0x80002388 Data: 0x04F80406
 -- Redundant Coverpoints hit by the op
      - opcode : sclip8
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 3
      - rs1_b3_val == 4
      - rs1_b2_val == -65
      - rs1_b1_val == 4






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

|s.no|        signature         |                                                                                     coverpoints                                                                                     |                                                    code                                                     |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000001|- opcode : sclip8<br> - rs1 : x19<br> - rd : x19<br> - rs1 == rd<br> - rs1_b0_val == -128<br> - imm_val == 6<br> - rs1_b3_val == 1<br> - rs1_b2_val == 0<br> - rs1_b1_val == 127<br> |[0x80000114]:SCLIP8 s3, s3, 6<br> [0x80000118]:csrrs s3, vxsat, zero<br> [0x8000011c]:sw s3, 0(tp)<br>       |
|   2|[0x80002218]<br>0xFB01DF00|- rs1 : x17<br> - rd : x22<br> - rs1 != rd<br> - imm_val == 7<br> - rs1_b3_val == -5<br> - rs1_b2_val == 1<br> - rs1_b1_val == -33<br> - rs1_b0_val == 0<br>                         |[0x80000128]:SCLIP8 s6, a7, 7<br> [0x8000012c]:csrrs a7, vxsat, zero<br> [0x80000130]:sw s6, 8(tp)<br>       |
|   3|[0x80002220]<br>0xE0071FFD|- rs1 : x9<br> - rd : x17<br> - imm_val == 5<br> - rs1_b3_val == -65<br> - rs1_b0_val == -3<br>                                                                                      |[0x8000013c]:SCLIP8 a7, s1, 5<br> [0x80000140]:csrrs s1, vxsat, zero<br> [0x80000144]:sw a7, 16(tp)<br>      |
|   4|[0x80002228]<br>0x09F00F07|- rs1 : x28<br> - rd : x13<br> - imm_val == 4<br> - rs1_b2_val == -128<br>                                                                                                           |[0x80000150]:SCLIP8 a3, t3, 4<br> [0x80000154]:csrrs t3, vxsat, zero<br> [0x80000158]:sw a3, 24(tp)<br>      |
|   5|[0x80002230]<br>0xFEFC0703|- rs1 : x5<br> - rd : x25<br> - imm_val == 3<br> - rs1_b3_val == -2<br>                                                                                                              |[0x80000164]:SCLIP8 s9, t0, 3<br> [0x80000168]:csrrs t0, vxsat, zero<br> [0x8000016c]:sw s9, 32(tp)<br>      |
|   6|[0x80002238]<br>0x03000002|- rs1 : x8<br> - rd : x7<br> - imm_val == 2<br> - rs1_b3_val == 16<br> - rs1_b1_val == 0<br> - rs1_b0_val == 2<br>                                                                   |[0x80000178]:SCLIP8 t2, fp, 2<br> [0x8000017c]:csrrs fp, vxsat, zero<br> [0x80000180]:sw t2, 40(tp)<br>      |
|   7|[0x80002240]<br>0xFFFEFEFE|- rs1 : x7<br> - rd : x6<br> - imm_val == 1<br> - rs1_b3_val == -1<br> - rs1_b1_val == -9<br> - rs1_b0_val == -65<br>                                                                |[0x8000018c]:SCLIP8 t1, t2, 1<br> [0x80000190]:csrrs t2, vxsat, zero<br> [0x80000194]:sw t1, 48(tp)<br>      |
|   8|[0x80002248]<br>0x0000FF00|- rs1 : x3<br> - rd : x18<br> - imm_val == 0<br> - rs1_b3_val == 85<br> - rs1_b2_val == 2<br>                                                                                        |[0x800001a0]:SCLIP8 s2, gp, 0<br> [0x800001a4]:csrrs gp, vxsat, zero<br> [0x800001a8]:sw s2, 56(tp)<br>      |
|   9|[0x80002250]<br>0xFEFEFE01|- rs1 : x11<br> - rd : x14<br> - rs1_b3_val == -86<br> - rs1_b0_val == 127<br>                                                                                                       |[0x800001b4]:SCLIP8 a4, a1, 1<br> [0x800001b8]:csrrs a1, vxsat, zero<br> [0x800001bc]:sw a4, 64(tp)<br>      |
|  10|[0x80002258]<br>0x0101FE01|- rs1 : x21<br> - rd : x27<br> - rs1_b3_val == 127<br> - rs1_b1_val == -17<br>                                                                                                       |[0x800001c8]:SCLIP8 s11, s5, 1<br> [0x800001cc]:csrrs s5, vxsat, zero<br> [0x800001d0]:sw s11, 72(tp)<br>    |
|  11|[0x80002260]<br>0xE00400E0|- rs1 : x20<br> - rd : x2<br> - rs1_b3_val == -33<br> - rs1_b2_val == 4<br>                                                                                                          |[0x800001dc]:SCLIP8 sp, s4, 5<br> [0x800001e0]:csrrs s4, vxsat, zero<br> [0x800001e4]:sw sp, 80(tp)<br>      |
|  12|[0x80002268]<br>0xFC03FD00|- rs1 : x26<br> - rd : x12<br> - rs1_b3_val == -17<br> - rs1_b2_val == 8<br> - rs1_b1_val == -3<br>                                                                                  |[0x800001f0]:SCLIP8 a2, s10, 2<br> [0x800001f4]:csrrs s10, vxsat, zero<br> [0x800001f8]:sw a2, 88(tp)<br>    |
|  13|[0x80002270]<br>0xF709F6FF|- rs1 : x27<br> - rd : x11<br> - rs1_b3_val == -9<br> - rs1_b0_val == -1<br>                                                                                                         |[0x80000204]:SCLIP8 a1, s11, 4<br> [0x80000208]:csrrs s11, vxsat, zero<br> [0x8000020c]:sw a1, 96(tp)<br>    |
|  14|[0x80002278]<br>0xFDFCFD20|- rs1 : x6<br> - rd : x10<br> - rs1_b3_val == -3<br> - rs1_b0_val == 32<br>                                                                                                          |[0x80000218]:SCLIP8 a0, t1, 6<br> [0x8000021c]:csrrs t1, vxsat, zero<br> [0x80000220]:sw a0, 104(tp)<br>     |
|  15|[0x80002280]<br>0x8003FF7F|- rs1 : x22<br> - rd : x3<br> - rs1_b3_val == -128<br> - rs1_b1_val == -1<br>                                                                                                        |[0x8000022c]:SCLIP8 gp, s6, 7<br> [0x80000230]:csrrs s6, vxsat, zero<br> [0x80000234]:sw gp, 112(tp)<br>     |
|  16|[0x80002288]<br>0x3FC0FFFC|- rs1 : x12<br> - rd : x1<br> - rs1_b3_val == 64<br> - rs1_b2_val == -65<br>                                                                                                         |[0x80000240]:SCLIP8 ra, a2, 6<br> [0x80000244]:csrrs a2, vxsat, zero<br> [0x80000248]:sw ra, 120(tp)<br>     |
|  17|[0x80002290]<br>0x2020EF01|- rs1 : x15<br> - rd : x21<br> - rs1_b3_val == 32<br> - rs1_b2_val == 32<br> - rs1_b0_val == 1<br>                                                                                   |[0x80000254]:SCLIP8 s5, a5, 7<br> [0x80000258]:csrrs a5, vxsat, zero<br> [0x8000025c]:sw s5, 128(tp)<br>     |
|  18|[0x80002298]<br>0x070704F8|- rs1 : x1<br> - rd : x9<br> - rs1_b3_val == 8<br> - rs1_b1_val == 4<br>                                                                                                             |[0x80000268]:SCLIP8 s1, ra, 3<br> [0x8000026c]:csrrs ra, vxsat, zero<br> [0x80000270]:sw s1, 136(tp)<br>     |
|  19|[0x800022a0]<br>0x00000000|- rs1 : x23<br> - rd : x0<br> - rs1_b3_val == 4<br>                                                                                                                                  |[0x8000027c]:SCLIP8 zero, s7, 3<br> [0x80000280]:csrrs s7, vxsat, zero<br> [0x80000284]:sw zero, 144(tp)<br> |
|  20|[0x800022a8]<br>0x0201FDFE|- rs1 : x14<br> - rd : x28<br> - rs1_b3_val == 2<br> - rs1_b0_val == -2<br>                                                                                                          |[0x80000290]:SCLIP8 t3, a4, 3<br> [0x80000294]:csrrs a4, vxsat, zero<br> [0x80000298]:sw t3, 152(tp)<br>     |
|  21|[0x800022b0]<br>0x000504F7|- rs1 : x29<br> - rd : x31<br> - rs1_b3_val == 0<br> - rs1_b0_val == -9<br>                                                                                                          |[0x800002a4]:SCLIP8 t6, t4, 4<br> [0x800002a8]:csrrs t4, vxsat, zero<br> [0x800002ac]:sw t6, 160(tp)<br>     |
|  22|[0x800022b8]<br>0xFEFE0101|- rs1 : x13<br> - rd : x16<br> - rs1_b2_val == -86<br> - rs1_b1_val == 1<br>                                                                                                         |[0x800002b8]:SCLIP8 a6, a3, 1<br> [0x800002bc]:csrrs a3, vxsat, zero<br> [0x800002c0]:sw a6, 168(tp)<br>     |
|  23|[0x800022c0]<br>0x071FFC07|- rs1 : x10<br> - rd : x15<br> - rs1_b2_val == 85<br>                                                                                                                                |[0x800002d4]:SCLIP8 a5, a0, 5<br> [0x800002d8]:csrrs a0, vxsat, zero<br> [0x800002dc]:sw a5, 0(ra)<br>       |
|  24|[0x800022c8]<br>0xF87F0201|- rs1 : x24<br> - rd : x4<br> - rs1_b2_val == 127<br> - rs1_b1_val == 2<br>                                                                                                          |[0x800002e8]:SCLIP8 tp, s8, 7<br> [0x800002ec]:csrrs s8, vxsat, zero<br> [0x800002f0]:sw tp, 8(ra)<br>       |
|  25|[0x800022d0]<br>0xFFF807E0|- rs1 : x31<br> - rd : x29<br> - rs1_b0_val == -86<br>                                                                                                                               |[0x800002fc]:SCLIP8 t4, t6, 5<br> [0x80000300]:csrrs t6, vxsat, zero<br> [0x80000304]:sw t4, 16(ra)<br>      |
|  26|[0x800022d8]<br>0x1F01051F|- rs1 : x18<br> - rd : x30<br> - rs1_b0_val == 85<br>                                                                                                                                |[0x80000310]:SCLIP8 t5, s2, 5<br> [0x80000314]:csrrs s2, vxsat, zero<br> [0x80000318]:sw t5, 24(ra)<br>      |
|  27|[0x800022e0]<br>0x00000000|- rs1 : x0<br> - rd : x8<br>                                                                                                                                                         |[0x80000324]:SCLIP8 fp, zero, 2<br> [0x80000328]:csrrs zero, vxsat, zero<br> [0x8000032c]:sw fp, 32(ra)<br>  |
|  28|[0x800022e8]<br>0x1FEF1FEF|- rs1 : x25<br> - rd : x23<br> - rs1_b2_val == -17<br> - rs1_b1_val == 85<br> - rs1_b0_val == -17<br>                                                                                |[0x80000338]:SCLIP8 s7, s9, 5<br> [0x8000033c]:csrrs s9, vxsat, zero<br> [0x80000340]:sw s7, 40(ra)<br>      |
|  29|[0x800022f0]<br>0xFDC03FFB|- rs1 : x4<br> - rd : x5<br> - rs1_b0_val == -5<br>                                                                                                                                  |[0x8000034c]:SCLIP8 t0, tp, 6<br> [0x80000350]:csrrs tp, vxsat, zero<br> [0x80000354]:sw t0, 48(ra)<br>      |
|  30|[0x800022f8]<br>0xFCFCFC03|- rs1 : x2<br> - rd : x20<br> - rs1_b1_val == -65<br> - rs1_b0_val == 64<br>                                                                                                         |[0x80000360]:SCLIP8 s4, sp, 2<br> [0x80000364]:csrrs sp, vxsat, zero<br> [0x80000368]:sw s4, 56(ra)<br>      |
|  31|[0x80002300]<br>0x06F80407|- rs1 : x30<br> - rd : x24<br> - rs1_b0_val == 16<br>                                                                                                                                |[0x80000374]:SCLIP8 s8, t5, 3<br> [0x80000378]:csrrs t5, vxsat, zero<br> [0x8000037c]:sw s8, 64(ra)<br>      |
|  32|[0x80002308]<br>0xFE01FE01|- rs1 : x16<br> - rd : x26<br> - rs1_b0_val == 8<br>                                                                                                                                 |[0x80000388]:SCLIP8 s10, a6, 1<br> [0x8000038c]:csrrs a6, vxsat, zero<br> [0x80000390]:sw s10, 72(ra)<br>    |
|  33|[0x80002310]<br>0x01010101|- rs1_b0_val == 4<br>                                                                                                                                                                |[0x8000039c]:SCLIP8 t6, t5, 1<br> [0x800003a0]:csrrs t5, vxsat, zero<br> [0x800003a4]:sw t6, 80(ra)<br>      |
|  34|[0x80002318]<br>0x02FCFCFC|- rs1_b2_val == -33<br>                                                                                                                                                              |[0x800003b0]:SCLIP8 t6, t5, 2<br> [0x800003b4]:csrrs t5, vxsat, zero<br> [0x800003b8]:sw t6, 88(ra)<br>      |
|  35|[0x80002320]<br>0x20F7F906|- rs1_b2_val == -9<br>                                                                                                                                                               |[0x800003c4]:SCLIP8 t6, t5, 6<br> [0x800003c8]:csrrs t5, vxsat, zero<br> [0x800003cc]:sw t6, 96(ra)<br>      |
|  36|[0x80002328]<br>0x10FD7FF6|- rs1_b2_val == -3<br>                                                                                                                                                               |[0x800003d8]:SCLIP8 t6, t5, 7<br> [0x800003dc]:csrrs t5, vxsat, zero<br> [0x800003e0]:sw t6, 104(ra)<br>     |
|  37|[0x80002330]<br>0xF8FEC0FE|- rs1_b2_val == -2<br>                                                                                                                                                               |[0x800003ec]:SCLIP8 t6, t5, 7<br> [0x800003f0]:csrrs t5, vxsat, zero<br> [0x800003f4]:sw t6, 112(ra)<br>     |
|  38|[0x80002338]<br>0x0303FEFC|- rs1_b2_val == 64<br> - rs1_b1_val == -2<br>                                                                                                                                        |[0x80000400]:SCLIP8 t6, t5, 2<br> [0x80000404]:csrrs t5, vxsat, zero<br> [0x80000408]:sw t6, 120(ra)<br>     |
|  39|[0x80002340]<br>0x09100720|- rs1_b2_val == 16<br>                                                                                                                                                               |[0x80000414]:SCLIP8 t6, t5, 7<br> [0x80000418]:csrrs t5, vxsat, zero<br> [0x8000041c]:sw t6, 128(ra)<br>     |
|  40|[0x80002348]<br>0xF8FFF807|- rs1_b2_val == -1<br>                                                                                                                                                               |[0x80000428]:SCLIP8 t6, t5, 3<br> [0x8000042c]:csrrs t5, vxsat, zero<br> [0x80000430]:sw t6, 136(ra)<br>     |
|  41|[0x80002350]<br>0xC0FFC0FF|- rs1_b1_val == -86<br>                                                                                                                                                              |[0x8000043c]:SCLIP8 t6, t5, 6<br> [0x80000440]:csrrs t5, vxsat, zero<br> [0x80000444]:sw t6, 144(ra)<br>     |
|  42|[0x80002358]<br>0x0101FE01|- rs1_b1_val == -5<br>                                                                                                                                                               |[0x80000450]:SCLIP8 t6, t5, 1<br> [0x80000454]:csrrs t5, vxsat, zero<br> [0x80000458]:sw t6, 152(ra)<br>     |
|  43|[0x80002360]<br>0xEFAA807F|- rs1_b1_val == -128<br>                                                                                                                                                             |[0x80000464]:SCLIP8 t6, t5, 7<br> [0x80000468]:csrrs t5, vxsat, zero<br> [0x8000046c]:sw t6, 160(ra)<br>     |
|  44|[0x80002368]<br>0xFF000000|- rs1_b1_val == 64<br>                                                                                                                                                               |[0x80000478]:SCLIP8 t6, t5, 0<br> [0x8000047c]:csrrs t5, vxsat, zero<br> [0x80000480]:sw t6, 168(ra)<br>     |
|  45|[0x80002370]<br>0x03EF20FA|- rs1_b1_val == 32<br>                                                                                                                                                               |[0x8000048c]:SCLIP8 t6, t5, 6<br> [0x80000490]:csrrs t5, vxsat, zero<br> [0x80000494]:sw t6, 176(ra)<br>     |
|  46|[0x80002378]<br>0xFC010300|- rs1_b1_val == 16<br>                                                                                                                                                               |[0x8000049c]:SCLIP8 t6, t5, 2<br> [0x800004a0]:csrrs t5, vxsat, zero<br> [0x800004a4]:sw t6, 184(ra)<br>     |
|  47|[0x80002380]<br>0xF8070702|- rs1_b1_val == 8<br>                                                                                                                                                                |[0x800004b0]:SCLIP8 t6, t5, 3<br> [0x800004b4]:csrrs t5, vxsat, zero<br> [0x800004b8]:sw t6, 192(ra)<br>     |
|  48|[0x80002390]<br>0x03FCFCFC|- rs1_b2_val == -5<br> - rs1_b0_val == -33<br>                                                                                                                                       |[0x800004d8]:SCLIP8 t6, t5, 2<br> [0x800004dc]:csrrs t5, vxsat, zero<br> [0x800004e0]:sw t6, 208(ra)<br>     |
