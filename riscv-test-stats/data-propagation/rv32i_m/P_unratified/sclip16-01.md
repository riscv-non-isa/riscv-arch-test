
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000580')]      |
| SIG_REGION                | [('0x80002210', '0x800023e0', '116 words')]      |
| COV_LABELS                | sclip16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/sclip16-01.S    |
| Total Number of coverpoints| 160     |
| Total Coverpoints Hit     | 155      |
| Total Signature Updates   | 58      |
| STAT1                     | 56      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004f8]:SCLIP16 t6, t5, 9
      [0x800004fc]:csrrs t5, vxsat, zero
      [0x80000500]:sw t6, 224(ra)
 -- Signature Address: 0x800023a8 Data: 0x00000005
 -- Redundant Coverpoints hit by the op
      - opcode : sclip16
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 9
      - rs1_h1_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000544]:SCLIP16 t6, t5, 8
      [0x80000548]:csrrs t5, vxsat, zero
      [0x8000054c]:sw t6, 256(ra)
 -- Signature Address: 0x800023c8 Data: 0x00060000
 -- Redundant Coverpoints hit by the op
      - opcode : sclip16
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 8
      - rs1_h0_val == 0






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

|s.no|        signature         |                                                                 coverpoints                                                                 |                                                     code                                                     |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000001|- opcode : sclip16<br> - rs1 : x21<br> - rd : x21<br> - rs1 == rd<br> - rs1_h0_val == -32768<br> - imm_val == 1<br> - rs1_h1_val == 2048<br> |[0x80000110]:SCLIP16 s5, s5, 1<br> [0x80000114]:csrrs s5, vxsat, zero<br> [0x80000118]:sw s5, 0(gp)<br>       |
|   2|[0x80002218]<br>0x0100FFF6|- rs1 : x17<br> - rd : x10<br> - rs1 != rd<br> - imm_val == 15<br> - rs1_h1_val == 256<br>                                                   |[0x80000124]:SCLIP16 a0, a7, 15<br> [0x80000128]:csrrs a7, vxsat, zero<br> [0x8000012c]:sw a0, 8(gp)<br>      |
|   3|[0x80002220]<br>0x3FFF0002|- rs1 : x1<br> - rd : x9<br> - imm_val == 14<br> - rs1_h0_val == 2<br>                                                                       |[0x80000138]:SCLIP16 s1, ra, 14<br> [0x8000013c]:csrrs ra, vxsat, zero<br> [0x80000140]:sw s1, 16(gp)<br>     |
|   4|[0x80002228]<br>0x1FFF1000|- rs1 : x29<br> - rd : x5<br> - imm_val == 13<br> - rs1_h0_val == 4096<br>                                                                   |[0x80000148]:SCLIP16 t0, t4, 13<br> [0x8000014c]:csrrs t4, vxsat, zero<br> [0x80000150]:sw t0, 24(gp)<br>     |
|   5|[0x80002230]<br>0x00000000|- rs1 : x5<br> - rd : x0<br> - imm_val == 12<br> - rs1_h1_val == 512<br> - rs1_h0_val == -17<br>                                             |[0x8000015c]:SCLIP16 zero, t0, 12<br> [0x80000160]:csrrs t0, vxsat, zero<br> [0x80000164]:sw zero, 32(gp)<br> |
|   6|[0x80002238]<br>0x07FFFFF7|- rs1 : x24<br> - rd : x25<br> - imm_val == 11<br> - rs1_h1_val == 32767<br> - rs1_h0_val == -9<br>                                          |[0x80000170]:SCLIP16 s9, s8, 11<br> [0x80000174]:csrrs s8, vxsat, zero<br> [0x80000178]:sw s9, 40(gp)<br>     |
|   7|[0x80002240]<br>0x00080010|- rs1 : x22<br> - rd : x18<br> - imm_val == 10<br> - rs1_h1_val == 8<br> - rs1_h0_val == 16<br>                                              |[0x80000184]:SCLIP16 s2, s6, 10<br> [0x80000188]:csrrs s6, vxsat, zero<br> [0x8000018c]:sw s2, 48(gp)<br>     |
|   8|[0x80002248]<br>0xFE00FE00|- rs1 : x16<br> - rd : x1<br> - imm_val == 9<br>                                                                                             |[0x80000194]:SCLIP16 ra, a6, 9<br> [0x80000198]:csrrs a6, vxsat, zero<br> [0x8000019c]:sw ra, 56(gp)<br>      |
|   9|[0x80002250]<br>0x00400006|- rs1 : x26<br> - rd : x28<br> - imm_val == 8<br> - rs1_h1_val == 64<br>                                                                     |[0x800001a8]:SCLIP16 t3, s10, 8<br> [0x800001ac]:csrrs s10, vxsat, zero<br> [0x800001b0]:sw t3, 64(gp)<br>    |
|  10|[0x80002258]<br>0xFFEF0002|- rs1 : x14<br> - rd : x24<br> - imm_val == 7<br> - rs1_h1_val == -17<br>                                                                    |[0x800001bc]:SCLIP16 s8, a4, 7<br> [0x800001c0]:csrrs a4, vxsat, zero<br> [0x800001c4]:sw s8, 72(gp)<br>      |
|  11|[0x80002260]<br>0xFFC0FFF9|- rs1 : x6<br> - rd : x7<br> - imm_val == 6<br> - rs1_h1_val == -1025<br>                                                                    |[0x800001d0]:SCLIP16 t2, t1, 6<br> [0x800001d4]:csrrs t1, vxsat, zero<br> [0x800001d8]:sw t2, 80(gp)<br>      |
|  12|[0x80002268]<br>0x001F001F|- rs1 : x10<br> - rd : x17<br> - imm_val == 5<br> - rs1_h1_val == 1024<br> - rs1_h0_val == 64<br>                                            |[0x800001e4]:SCLIP16 a7, a0, 5<br> [0x800001e8]:csrrs a0, vxsat, zero<br> [0x800001ec]:sw a7, 88(gp)<br>      |
|  13|[0x80002270]<br>0xFFF6FFFF|- rs1 : x23<br> - rd : x16<br> - imm_val == 4<br> - rs1_h0_val == -1<br>                                                                     |[0x800001f8]:SCLIP16 a6, s7, 4<br> [0x800001fc]:csrrs s7, vxsat, zero<br> [0x80000200]:sw a6, 96(gp)<br>      |
|  14|[0x80002278]<br>0xFFF8FFF8|- rs1 : x19<br> - rd : x8<br> - imm_val == 3<br> - rs1_h1_val == -21846<br> - rs1_h0_val == -2049<br>                                        |[0x8000020c]:SCLIP16 fp, s3, 3<br> [0x80000210]:csrrs s3, vxsat, zero<br> [0x80000214]:sw fp, 104(gp)<br>     |
|  15|[0x80002280]<br>0x0003FFFC|- rs1 : x13<br> - rd : x2<br> - imm_val == 2<br>                                                                                             |[0x80000220]:SCLIP16 sp, a3, 2<br> [0x80000224]:csrrs a3, vxsat, zero<br> [0x80000228]:sw sp, 112(gp)<br>     |
|  16|[0x80002288]<br>0x0000FFFF|- rs1 : x20<br> - rd : x22<br> - imm_val == 0<br> - rs1_h1_val == 8192<br>                                                                   |[0x80000230]:SCLIP16 s6, s4, 0<br> [0x80000234]:csrrs s4, vxsat, zero<br> [0x80000238]:sw s6, 120(gp)<br>     |
|  17|[0x80002290]<br>0x001F0002|- rs1 : x2<br> - rd : x6<br> - rs1_h1_val == 21845<br>                                                                                       |[0x80000244]:SCLIP16 t1, sp, 5<br> [0x80000248]:csrrs sp, vxsat, zero<br> [0x8000024c]:sw t1, 128(gp)<br>     |
|  18|[0x80002298]<br>0xFC00FFEF|- rs1 : x28<br> - rd : x4<br> - rs1_h1_val == -16385<br>                                                                                     |[0x80000258]:SCLIP16 tp, t3, 10<br> [0x8000025c]:csrrs t3, vxsat, zero<br> [0x80000260]:sw tp, 136(gp)<br>    |
|  19|[0x800022a0]<br>0xFF80FF80|- rs1 : x15<br> - rd : x19<br> - rs1_h1_val == -8193<br> - rs1_h0_val == -257<br>                                                            |[0x8000026c]:SCLIP16 s3, a5, 7<br> [0x80000270]:csrrs a5, vxsat, zero<br> [0x80000274]:sw s3, 144(gp)<br>     |
|  20|[0x800022a8]<br>0xEFFFFF7F|- rs1 : x12<br> - rd : x13<br> - rs1_h1_val == -4097<br> - rs1_h0_val == -129<br>                                                            |[0x80000280]:SCLIP16 a3, a2, 14<br> [0x80000284]:csrrs a2, vxsat, zero<br> [0x80000288]:sw a3, 152(gp)<br>    |
|  21|[0x800022b0]<br>0xFFF8FFF8|- rs1 : x4<br> - rd : x15<br> - rs1_h1_val == -2049<br> - rs1_h0_val == -21846<br>                                                           |[0x80000294]:SCLIP16 a5, tp, 3<br> [0x80000298]:csrrs tp, vxsat, zero<br> [0x8000029c]:sw a5, 160(gp)<br>     |
|  22|[0x800022b8]<br>0xFE0001FF|- rs1 : x18<br> - rd : x27<br> - rs1_h1_val == -513<br> - rs1_h0_val == 8192<br>                                                             |[0x800002a4]:SCLIP16 s11, s2, 9<br> [0x800002a8]:csrrs s2, vxsat, zero<br> [0x800002ac]:sw s11, 168(gp)<br>   |
|  23|[0x800022c0]<br>0xFFFFFFFF|- rs1 : x30<br> - rd : x14<br> - rs1_h1_val == -257<br> - rs1_h0_val == -1025<br>                                                            |[0x800002b8]:SCLIP16 a4, t5, 0<br> [0x800002bc]:csrrs t5, vxsat, zero<br> [0x800002c0]:sw a4, 176(gp)<br>     |
|  24|[0x800022c8]<br>0xFFF0000F|- rs1 : x31<br> - rd : x29<br> - rs1_h1_val == -129<br>                                                                                      |[0x800002d4]:SCLIP16 t4, t6, 4<br> [0x800002d8]:csrrs t6, vxsat, zero<br> [0x800002dc]:sw t4, 0(ra)<br>       |
|  25|[0x800022d0]<br>0xFFBF00FF|- rs1 : x25<br> - rd : x11<br> - rs1_h1_val == -65<br> - rs1_h0_val == 1024<br>                                                              |[0x800002e8]:SCLIP16 a1, s9, 8<br> [0x800002ec]:csrrs s9, vxsat, zero<br> [0x800002f0]:sw a1, 8(ra)<br>       |
|  26|[0x800022d8]<br>0xFFDF0009|- rs1 : x11<br> - rd : x3<br> - rs1_h1_val == -33<br>                                                                                        |[0x800002fc]:SCLIP16 gp, a1, 10<br> [0x80000300]:csrrs a1, vxsat, zero<br> [0x80000304]:sw gp, 16(ra)<br>     |
|  27|[0x800022e0]<br>0x00000000|- rs1 : x0<br> - rd : x30<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                    |[0x80000310]:SCLIP16 t5, zero, 5<br> [0x80000314]:csrrs zero, vxsat, zero<br> [0x80000318]:sw t5, 24(ra)<br>  |
|  28|[0x800022e8]<br>0xFFFBFFFF|- rs1 : x8<br> - rd : x31<br> - rs1_h1_val == -5<br>                                                                                         |[0x80000324]:SCLIP16 t6, fp, 3<br> [0x80000328]:csrrs fp, vxsat, zero<br> [0x8000032c]:sw t6, 32(ra)<br>      |
|  29|[0x800022f0]<br>0xFFFDFFE0|- rs1 : x3<br> - rd : x26<br> - rs1_h1_val == -3<br>                                                                                         |[0x80000338]:SCLIP16 s10, gp, 5<br> [0x8000033c]:csrrs gp, vxsat, zero<br> [0x80000340]:sw s10, 40(ra)<br>    |
|  30|[0x800022f8]<br>0xFFFF0000|- rs1 : x27<br> - rd : x12<br> - rs1_h1_val == -2<br>                                                                                        |[0x8000034c]:SCLIP16 a2, s11, 0<br> [0x80000350]:csrrs s11, vxsat, zero<br> [0x80000354]:sw a2, 48(ra)<br>    |
|  31|[0x80002300]<br>0xFFE0FFE0|- rs1 : x9<br> - rd : x23<br> - rs1_h1_val == -32768<br> - rs1_h0_val == -4097<br>                                                           |[0x80000360]:SCLIP16 s7, s1, 5<br> [0x80000364]:csrrs s1, vxsat, zero<br> [0x80000368]:sw s7, 56(ra)<br>      |
|  32|[0x80002308]<br>0xFFFFFFFF|- rs1 : x7<br> - rd : x20<br> - rs1_h0_val == -65<br>                                                                                        |[0x80000374]:SCLIP16 s4, t2, 0<br> [0x80000378]:csrrs t2, vxsat, zero<br> [0x8000037c]:sw s4, 64(ra)<br>      |
|  33|[0x80002310]<br>0x001FFFE0|- rs1_h1_val == 4096<br> - rs1_h0_val == -33<br>                                                                                             |[0x80000388]:SCLIP16 t6, t5, 5<br> [0x8000038c]:csrrs t5, vxsat, zero<br> [0x80000390]:sw t6, 72(ra)<br>      |
|  34|[0x80002318]<br>0xFFFDFFFB|- rs1_h0_val == -5<br>                                                                                                                       |[0x8000039c]:SCLIP16 t6, t5, 12<br> [0x800003a0]:csrrs t5, vxsat, zero<br> [0x800003a4]:sw t6, 80(ra)<br>     |
|  35|[0x80002320]<br>0x0001FFFE|- rs1_h0_val == -3<br>                                                                                                                       |[0x800003b0]:SCLIP16 t6, t5, 1<br> [0x800003b4]:csrrs t5, vxsat, zero<br> [0x800003b8]:sw t6, 88(ra)<br>      |
|  36|[0x80002328]<br>0xFFBFFFFE|- rs1_h0_val == -2<br>                                                                                                                       |[0x800003c4]:SCLIP16 t6, t5, 13<br> [0x800003c8]:csrrs t5, vxsat, zero<br> [0x800003cc]:sw t6, 96(ra)<br>     |
|  37|[0x80002330]<br>0x1FFF1FFF|- rs1_h0_val == 16384<br>                                                                                                                    |[0x800003d4]:SCLIP16 t6, t5, 13<br> [0x800003d8]:csrrs t5, vxsat, zero<br> [0x800003dc]:sw t6, 104(ra)<br>    |
|  38|[0x80002338]<br>0xFFFF03FF|- rs1_h1_val == -1<br> - rs1_h0_val == 2048<br>                                                                                              |[0x800003e8]:SCLIP16 t6, t5, 10<br> [0x800003ec]:csrrs t5, vxsat, zero<br> [0x800003f0]:sw t6, 112(ra)<br>    |
|  39|[0x80002340]<br>0xFFF901FF|- rs1_h0_val == 512<br>                                                                                                                      |[0x800003fc]:SCLIP16 t6, t5, 9<br> [0x80000400]:csrrs t5, vxsat, zero<br> [0x80000404]:sw t6, 120(ra)<br>     |
|  40|[0x80002348]<br>0x00FF00FF|- rs1_h0_val == 256<br>                                                                                                                      |[0x80000410]:SCLIP16 t6, t5, 8<br> [0x80000414]:csrrs t5, vxsat, zero<br> [0x80000418]:sw t6, 128(ra)<br>     |
|  41|[0x80002350]<br>0xFFFA0080|- rs1_h0_val == 128<br>                                                                                                                      |[0x80000424]:SCLIP16 t6, t5, 14<br> [0x80000428]:csrrs t5, vxsat, zero<br> [0x8000042c]:sw t6, 136(ra)<br>    |
|  42|[0x80002358]<br>0xFFFF0000|- rs1_h0_val == 32<br>                                                                                                                       |[0x80000438]:SCLIP16 t6, t5, 0<br> [0x8000043c]:csrrs t5, vxsat, zero<br> [0x80000440]:sw t6, 144(ra)<br>     |
|  43|[0x80002360]<br>0xFE000008|- rs1_h0_val == 8<br>                                                                                                                        |[0x8000044c]:SCLIP16 t6, t5, 9<br> [0x80000450]:csrrs t5, vxsat, zero<br> [0x80000454]:sw t6, 152(ra)<br>     |
|  44|[0x80002368]<br>0xFFFB0004|- rs1_h0_val == 4<br>                                                                                                                        |[0x80000460]:SCLIP16 t6, t5, 12<br> [0x80000464]:csrrs t5, vxsat, zero<br> [0x80000468]:sw t6, 160(ra)<br>    |
|  45|[0x80002370]<br>0x000F0007|- rs1_h1_val == 16384<br>                                                                                                                    |[0x80000474]:SCLIP16 t6, t5, 4<br> [0x80000478]:csrrs t5, vxsat, zero<br> [0x8000047c]:sw t6, 168(ra)<br>     |
|  46|[0x80002378]<br>0x000F000F|- rs1_h1_val == 128<br>                                                                                                                      |[0x80000488]:SCLIP16 t6, t5, 4<br> [0x8000048c]:csrrs t5, vxsat, zero<br> [0x80000490]:sw t6, 176(ra)<br>     |
|  47|[0x80002380]<br>0x00000000|- rs1_h1_val == 32<br> - rs1_h0_val == 21845<br>                                                                                             |[0x8000049c]:SCLIP16 t6, t5, 0<br> [0x800004a0]:csrrs t5, vxsat, zero<br> [0x800004a4]:sw t6, 184(ra)<br>     |
|  48|[0x80002388]<br>0x000FFFF0|- rs1_h1_val == 16<br> - rs1_h0_val == -8193<br>                                                                                             |[0x800004b0]:SCLIP16 t6, t5, 4<br> [0x800004b4]:csrrs t5, vxsat, zero<br> [0x800004b8]:sw t6, 192(ra)<br>     |
|  49|[0x80002390]<br>0x0004000F|- rs1_h1_val == 4<br>                                                                                                                        |[0x800004c4]:SCLIP16 t6, t5, 4<br> [0x800004c8]:csrrs t5, vxsat, zero<br> [0x800004cc]:sw t6, 200(ra)<br>     |
|  50|[0x80002398]<br>0x00010001|- rs1_h1_val == 2<br>                                                                                                                        |[0x800004d8]:SCLIP16 t6, t5, 1<br> [0x800004dc]:csrrs t5, vxsat, zero<br> [0x800004e0]:sw t6, 208(ra)<br>     |
|  51|[0x800023a0]<br>0x000100FF|- rs1_h1_val == 1<br>                                                                                                                        |[0x800004e8]:SCLIP16 t6, t5, 8<br> [0x800004ec]:csrrs t5, vxsat, zero<br> [0x800004f0]:sw t6, 216(ra)<br>     |
|  52|[0x800023b0]<br>0xF0000001|- rs1_h0_val == 1<br>                                                                                                                        |[0x8000050c]:SCLIP16 t6, t5, 12<br> [0x80000510]:csrrs t5, vxsat, zero<br> [0x80000514]:sw t6, 232(ra)<br>    |
|  53|[0x800023b8]<br>0xFFF6FFF0|- rs1_h0_val == -16385<br>                                                                                                                   |[0x80000520]:SCLIP16 t6, t5, 4<br> [0x80000524]:csrrs t5, vxsat, zero<br> [0x80000528]:sw t6, 240(ra)<br>     |
|  54|[0x800023c0]<br>0x0003FFFC|- rs1_h0_val == -513<br>                                                                                                                     |[0x80000534]:SCLIP16 t6, t5, 2<br> [0x80000538]:csrrs t5, vxsat, zero<br> [0x8000053c]:sw t6, 248(ra)<br>     |
|  55|[0x800023d0]<br>0x00407FFF|- rs1_h0_val == 32767<br>                                                                                                                    |[0x80000558]:SCLIP16 t6, t5, 15<br> [0x8000055c]:csrrs t5, vxsat, zero<br> [0x80000560]:sw t6, 264(ra)<br>    |
|  56|[0x800023d8]<br>0xFFF70002|- rs1_h1_val == -9<br>                                                                                                                       |[0x8000056c]:SCLIP16 t6, t5, 5<br> [0x80000570]:csrrs t5, vxsat, zero<br> [0x80000574]:sw t6, 272(ra)<br>     |
