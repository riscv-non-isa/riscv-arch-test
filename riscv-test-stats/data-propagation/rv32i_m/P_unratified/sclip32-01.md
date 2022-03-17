
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000680')]      |
| SIG_REGION                | [('0x80002210', '0x80002490', '160 words')]      |
| COV_LABELS                | sclip32      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/sclip32-01.S    |
| Total Number of coverpoints| 172     |
| Total Coverpoints Hit     | 167      |
| Total Signature Updates   | 80      |
| STAT1                     | 78      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000564]:SCLIP32 t6, t5, 13
      [0x80000568]:csrrs t5, vxsat, zero
      [0x8000056c]:sw t6, 336(ra)
 -- Signature Address: 0x80002408 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : sclip32
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 13
      - rs1_w0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000066c]:SCLIP32 t6, t5, 6
      [0x80000670]:csrrs t5, vxsat, zero
      [0x80000674]:sw t6, 464(ra)
 -- Signature Address: 0x80002488 Data: 0x0000003F
 -- Redundant Coverpoints hit by the op
      - opcode : sclip32
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 6
      - rs1_w0_val == 1073741824






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

|s.no|        signature         |                                                       coverpoints                                                        |                                                     code                                                      |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000001|- opcode : sclip32<br> - rs1 : x31<br> - rd : x31<br> - rs1 == rd<br> - rs1_w0_val == -2147483648<br> - imm_val == 25<br> |[0x80000110]:SCLIP32 t6, t6, 25<br> [0x80000114]:csrrs t6, vxsat, zero<br> [0x80000118]:sw t6, 0(s6)<br>       |
|   2|[0x80002218]<br>0xFFFFFFF9|- rs1 : x10<br> - rd : x12<br> - rs1 != rd<br> - imm_val == 31<br>                                                        |[0x80000120]:SCLIP32 a2, a0, 31<br> [0x80000124]:csrrs a0, vxsat, zero<br> [0x80000128]:sw a2, 8(s6)<br>       |
|   3|[0x80002220]<br>0xFFFFFEFF|- rs1 : x2<br> - rd : x20<br> - imm_val == 30<br> - rs1_w0_val == -257<br>                                                |[0x80000130]:SCLIP32 s4, sp, 30<br> [0x80000134]:csrrs sp, vxsat, zero<br> [0x80000138]:sw s4, 16(s6)<br>      |
|   4|[0x80002228]<br>0xFF7FFFFF|- rs1 : x20<br> - rd : x13<br> - imm_val == 29<br> - rs1_w0_val == -8388609<br>                                           |[0x80000144]:SCLIP32 a3, s4, 29<br> [0x80000148]:csrrs s4, vxsat, zero<br> [0x8000014c]:sw a3, 24(s6)<br>      |
|   5|[0x80002230]<br>0x00100000|- rs1 : x3<br> - rd : x21<br> - imm_val == 28<br> - rs1_w0_val == 1048576<br>                                             |[0x80000154]:SCLIP32 s5, gp, 28<br> [0x80000158]:csrrs gp, vxsat, zero<br> [0x8000015c]:sw s5, 32(s6)<br>      |
|   6|[0x80002238]<br>0x00000002|- rs1 : x4<br> - rd : x17<br> - imm_val == 27<br> - rs1_w0_val == 2<br>                                                   |[0x80000164]:SCLIP32 a7, tp, 27<br> [0x80000168]:csrrs tp, vxsat, zero<br> [0x8000016c]:sw a7, 40(s6)<br>      |
|   7|[0x80002240]<br>0xFC000000|- rs1 : x7<br> - rd : x28<br> - imm_val == 26<br>                                                                         |[0x80000174]:SCLIP32 t3, t2, 26<br> [0x80000178]:csrrs t2, vxsat, zero<br> [0x8000017c]:sw t3, 48(s6)<br>      |
|   8|[0x80002248]<br>0x00FFFFFF|- rs1 : x18<br> - rd : x25<br> - imm_val == 24<br> - rs1_w0_val == 67108864<br>                                           |[0x80000184]:SCLIP32 s9, s2, 24<br> [0x80000188]:csrrs s2, vxsat, zero<br> [0x8000018c]:sw s9, 56(s6)<br>      |
|   9|[0x80002250]<br>0xFFBFFFFF|- rs1 : x13<br> - rd : x14<br> - imm_val == 23<br> - rs1_w0_val == -4194305<br>                                           |[0x80000198]:SCLIP32 a4, a3, 23<br> [0x8000019c]:csrrs a3, vxsat, zero<br> [0x800001a0]:sw a4, 64(s6)<br>      |
|  10|[0x80002258]<br>0x003FFFFF|- rs1 : x11<br> - rd : x16<br> - imm_val == 22<br> - rs1_w0_val == 16777216<br>                                           |[0x800001a8]:SCLIP32 a6, a1, 22<br> [0x800001ac]:csrrs a1, vxsat, zero<br> [0x800001b0]:sw a6, 72(s6)<br>      |
|  11|[0x80002260]<br>0xFFFFFFBF|- rs1 : x8<br> - rd : x9<br> - imm_val == 21<br> - rs1_w0_val == -65<br>                                                  |[0x800001b8]:SCLIP32 s1, fp, 21<br> [0x800001bc]:csrrs fp, vxsat, zero<br> [0x800001c0]:sw s1, 80(s6)<br>      |
|  12|[0x80002268]<br>0x00001000|- rs1 : x12<br> - rd : x2<br> - imm_val == 20<br> - rs1_w0_val == 4096<br>                                                |[0x800001c8]:SCLIP32 sp, a2, 20<br> [0x800001cc]:csrrs a2, vxsat, zero<br> [0x800001d0]:sw sp, 88(s6)<br>      |
|  13|[0x80002270]<br>0x0007FFFF|- rs1 : x5<br> - rd : x7<br> - imm_val == 19<br>                                                                          |[0x800001d8]:SCLIP32 t2, t0, 19<br> [0x800001dc]:csrrs t0, vxsat, zero<br> [0x800001e0]:sw t2, 96(s6)<br>      |
|  14|[0x80002278]<br>0x00000000|- rs1 : x0<br> - rd : x15<br> - imm_val == 18<br> - rs1_w0_val == 0<br>                                                   |[0x800001e8]:SCLIP32 a5, zero, 18<br> [0x800001ec]:csrrs zero, vxsat, zero<br> [0x800001f0]:sw a5, 104(s6)<br> |
|  15|[0x80002280]<br>0xFFFFF7FF|- rs1 : x25<br> - rd : x19<br> - imm_val == 17<br> - rs1_w0_val == -2049<br>                                              |[0x800001fc]:SCLIP32 s3, s9, 17<br> [0x80000200]:csrrs s9, vxsat, zero<br> [0x80000204]:sw s3, 112(s6)<br>     |
|  16|[0x80002288]<br>0x0000FFFF|- rs1 : x14<br> - rd : x6<br> - imm_val == 16<br> - rs1_w0_val == 131072<br>                                              |[0x8000020c]:SCLIP32 t1, a4, 16<br> [0x80000210]:csrrs a4, vxsat, zero<br> [0x80000214]:sw t1, 120(s6)<br>     |
|  17|[0x80002290]<br>0x00007FFF|- rs1 : x1<br> - rd : x8<br> - imm_val == 15<br> - rs1_w0_val == 2097152<br>                                              |[0x8000021c]:SCLIP32 fp, ra, 15<br> [0x80000220]:csrrs ra, vxsat, zero<br> [0x80000224]:sw fp, 128(s6)<br>     |
|  18|[0x80002298]<br>0xFFFFC000|- rs1 : x16<br> - rd : x24<br> - imm_val == 14<br> - rs1_w0_val == -16777217<br>                                          |[0x80000230]:SCLIP32 s8, a6, 14<br> [0x80000234]:csrrs a6, vxsat, zero<br> [0x80000238]:sw s8, 136(s6)<br>     |
|  19|[0x800022a0]<br>0x00001FFF|- rs1 : x15<br> - rd : x27<br> - imm_val == 13<br>                                                                        |[0x80000240]:SCLIP32 s11, a5, 13<br> [0x80000244]:csrrs a5, vxsat, zero<br> [0x80000248]:sw s11, 144(s6)<br>   |
|  20|[0x800022a8]<br>0xFFFFF000|- rs1 : x23<br> - rd : x1<br> - imm_val == 12<br>                                                                         |[0x80000250]:SCLIP32 ra, s7, 12<br> [0x80000254]:csrrs s7, vxsat, zero<br> [0x80000258]:sw ra, 152(s6)<br>     |
|  21|[0x800022b0]<br>0x00000003|- rs1 : x30<br> - rd : x11<br> - imm_val == 11<br>                                                                        |[0x80000260]:SCLIP32 a1, t5, 11<br> [0x80000264]:csrrs t5, vxsat, zero<br> [0x80000268]:sw a1, 160(s6)<br>     |
|  22|[0x800022b8]<br>0xFFFFFC00|- rs1 : x24<br> - rd : x18<br> - imm_val == 10<br>                                                                        |[0x8000027c]:SCLIP32 s2, s8, 10<br> [0x80000280]:csrrs s8, vxsat, zero<br> [0x80000284]:sw s2, 0(ra)<br>       |
|  23|[0x800022c0]<br>0x00000005|- rs1 : x26<br> - rd : x22<br> - imm_val == 9<br>                                                                         |[0x8000028c]:SCLIP32 s6, s10, 9<br> [0x80000290]:csrrs s10, vxsat, zero<br> [0x80000294]:sw s6, 8(ra)<br>      |
|  24|[0x800022c8]<br>0xFFFFFF00|- rs1 : x19<br> - rd : x10<br> - imm_val == 8<br> - rs1_w0_val == -536870913<br>                                          |[0x800002a0]:SCLIP32 a0, s3, 8<br> [0x800002a4]:csrrs s3, vxsat, zero<br> [0x800002a8]:sw a0, 16(ra)<br>       |
|  25|[0x800022d0]<br>0xFFFFFFFF|- rs1 : x29<br> - rd : x23<br> - imm_val == 7<br> - rs1_w0_val == -1<br>                                                  |[0x800002b0]:SCLIP32 s7, t4, 7<br> [0x800002b4]:csrrs t4, vxsat, zero<br> [0x800002b8]:sw s7, 24(ra)<br>       |
|  26|[0x800022d8]<br>0x00000000|- rs1 : x27<br> - rd : x0<br> - imm_val == 6<br> - rs1_w0_val == 1073741824<br>                                           |[0x800002c0]:SCLIP32 zero, s11, 6<br> [0x800002c4]:csrrs s11, vxsat, zero<br> [0x800002c8]:sw zero, 32(ra)<br> |
|  27|[0x800022e0]<br>0x0000001F|- rs1 : x9<br> - rd : x3<br> - imm_val == 5<br> - rs1_w0_val == 8192<br>                                                  |[0x800002d0]:SCLIP32 gp, s1, 5<br> [0x800002d4]:csrrs s1, vxsat, zero<br> [0x800002d8]:sw gp, 40(ra)<br>       |
|  28|[0x800022e8]<br>0xFFFFFFF0|- rs1 : x17<br> - rd : x5<br> - imm_val == 4<br> - rs1_w0_val == -513<br>                                                 |[0x800002e0]:SCLIP32 t0, a7, 4<br> [0x800002e4]:csrrs a7, vxsat, zero<br> [0x800002e8]:sw t0, 48(ra)<br>       |
|  29|[0x800022f0]<br>0xFFFFFFF8|- rs1 : x28<br> - rd : x29<br> - imm_val == 3<br>                                                                         |[0x800002f0]:SCLIP32 t4, t3, 3<br> [0x800002f4]:csrrs t3, vxsat, zero<br> [0x800002f8]:sw t4, 56(ra)<br>       |
|  30|[0x800022f8]<br>0xFFFFFFFC|- rs1 : x6<br> - rd : x4<br> - imm_val == 2<br>                                                                           |[0x80000300]:SCLIP32 tp, t1, 2<br> [0x80000304]:csrrs t1, vxsat, zero<br> [0x80000308]:sw tp, 64(ra)<br>       |
|  31|[0x80002300]<br>0x00000001|- rs1 : x22<br> - rd : x26<br> - imm_val == 1<br> - rs1_w0_val == 1431655765<br>                                          |[0x80000314]:SCLIP32 s10, s6, 1<br> [0x80000318]:csrrs s6, vxsat, zero<br> [0x8000031c]:sw s10, 72(ra)<br>     |
|  32|[0x80002308]<br>0x00000000|- rs1 : x21<br> - rd : x30<br> - imm_val == 0<br> - rs1_w0_val == 1<br>                                                   |[0x80000324]:SCLIP32 t5, s5, 0<br> [0x80000328]:csrrs s5, vxsat, zero<br> [0x8000032c]:sw t5, 80(ra)<br>       |
|  33|[0x80002310]<br>0xFFF80000|- rs1_w0_val == -1431655766<br>                                                                                           |[0x80000338]:SCLIP32 t6, t5, 19<br> [0x8000033c]:csrrs t5, vxsat, zero<br> [0x80000340]:sw t6, 88(ra)<br>      |
|  34|[0x80002318]<br>0x000000FF|- rs1_w0_val == 2147483647<br>                                                                                            |[0x8000034c]:SCLIP32 t6, t5, 8<br> [0x80000350]:csrrs t5, vxsat, zero<br> [0x80000354]:sw t6, 96(ra)<br>       |
|  35|[0x80002320]<br>0xFFFC0000|- rs1_w0_val == -1073741825<br>                                                                                           |[0x80000360]:SCLIP32 t6, t5, 18<br> [0x80000364]:csrrs t5, vxsat, zero<br> [0x80000368]:sw t6, 104(ra)<br>     |
|  36|[0x80002328]<br>0xFFFFFFFF|- rs1_w0_val == -268435457<br>                                                                                            |[0x80000374]:SCLIP32 t6, t5, 0<br> [0x80000378]:csrrs t5, vxsat, zero<br> [0x8000037c]:sw t6, 112(ra)<br>      |
|  37|[0x80002330]<br>0xF7FFFFFF|- rs1_w0_val == -134217729<br>                                                                                            |[0x80000388]:SCLIP32 t6, t5, 28<br> [0x8000038c]:csrrs t5, vxsat, zero<br> [0x80000390]:sw t6, 120(ra)<br>     |
|  38|[0x80002338]<br>0xFC000000|- rs1_w0_val == -67108865<br>                                                                                             |[0x8000039c]:SCLIP32 t6, t5, 26<br> [0x800003a0]:csrrs t5, vxsat, zero<br> [0x800003a4]:sw t6, 128(ra)<br>     |
|  39|[0x80002340]<br>0xFFFFE000|- rs1_w0_val == -33554433<br>                                                                                             |[0x800003b0]:SCLIP32 t6, t5, 13<br> [0x800003b4]:csrrs t5, vxsat, zero<br> [0x800003b8]:sw t6, 136(ra)<br>     |
|  40|[0x80002348]<br>0xFFFFFFF8|- rs1_w0_val == -2097153<br>                                                                                              |[0x800003c4]:SCLIP32 t6, t5, 3<br> [0x800003c8]:csrrs t5, vxsat, zero<br> [0x800003cc]:sw t6, 144(ra)<br>      |
|  41|[0x80002350]<br>0xFFEFFFFF|- rs1_w0_val == -1048577<br>                                                                                              |[0x800003d8]:SCLIP32 t6, t5, 31<br> [0x800003dc]:csrrs t5, vxsat, zero<br> [0x800003e0]:sw t6, 152(ra)<br>     |
|  42|[0x80002358]<br>0xFFF7FFFF|- rs1_w0_val == -524289<br>                                                                                               |[0x800003ec]:SCLIP32 t6, t5, 27<br> [0x800003f0]:csrrs t5, vxsat, zero<br> [0x800003f4]:sw t6, 160(ra)<br>     |
|  43|[0x80002360]<br>0xFFFFFFF8|- rs1_w0_val == -262145<br>                                                                                               |[0x80000400]:SCLIP32 t6, t5, 3<br> [0x80000404]:csrrs t5, vxsat, zero<br> [0x80000408]:sw t6, 168(ra)<br>      |
|  44|[0x80002368]<br>0xFFFDFFFF|- rs1_w0_val == -131073<br>                                                                                               |[0x80000414]:SCLIP32 t6, t5, 26<br> [0x80000418]:csrrs t5, vxsat, zero<br> [0x8000041c]:sw t6, 176(ra)<br>     |
|  45|[0x80002370]<br>0xFFFEFFFF|- rs1_w0_val == -65537<br>                                                                                                |[0x80000428]:SCLIP32 t6, t5, 23<br> [0x8000042c]:csrrs t5, vxsat, zero<br> [0x80000430]:sw t6, 184(ra)<br>     |
|  46|[0x80002378]<br>0xFFFFFFF8|- rs1_w0_val == -32769<br>                                                                                                |[0x8000043c]:SCLIP32 t6, t5, 3<br> [0x80000440]:csrrs t5, vxsat, zero<br> [0x80000444]:sw t6, 192(ra)<br>      |
|  47|[0x80002380]<br>0xFFFFFC00|- rs1_w0_val == -16385<br>                                                                                                |[0x80000450]:SCLIP32 t6, t5, 10<br> [0x80000454]:csrrs t5, vxsat, zero<br> [0x80000458]:sw t6, 200(ra)<br>     |
|  48|[0x80002388]<br>0xFFFFFFFB|- rs1_w0_val == -5<br>                                                                                                    |[0x80000460]:SCLIP32 t6, t5, 13<br> [0x80000464]:csrrs t5, vxsat, zero<br> [0x80000468]:sw t6, 208(ra)<br>     |
|  49|[0x80002390]<br>0xFFFFFFFD|- rs1_w0_val == -3<br>                                                                                                    |[0x80000470]:SCLIP32 t6, t5, 11<br> [0x80000474]:csrrs t5, vxsat, zero<br> [0x80000478]:sw t6, 216(ra)<br>     |
|  50|[0x80002398]<br>0xFFFFFFFE|- rs1_w0_val == -2<br>                                                                                                    |[0x80000480]:SCLIP32 t6, t5, 6<br> [0x80000484]:csrrs t5, vxsat, zero<br> [0x80000488]:sw t6, 224(ra)<br>      |
|  51|[0x800023a0]<br>0x20000000|- rs1_w0_val == 536870912<br>                                                                                             |[0x80000490]:SCLIP32 t6, t5, 31<br> [0x80000494]:csrrs t5, vxsat, zero<br> [0x80000498]:sw t6, 232(ra)<br>     |
|  52|[0x800023a8]<br>0x000000FF|- rs1_w0_val == 268435456<br>                                                                                             |[0x800004a0]:SCLIP32 t6, t5, 8<br> [0x800004a4]:csrrs t5, vxsat, zero<br> [0x800004a8]:sw t6, 240(ra)<br>      |
|  53|[0x800023b0]<br>0x03FFFFFF|- rs1_w0_val == 134217728<br>                                                                                             |[0x800004b0]:SCLIP32 t6, t5, 26<br> [0x800004b4]:csrrs t5, vxsat, zero<br> [0x800004b8]:sw t6, 248(ra)<br>     |
|  54|[0x800023b8]<br>0x000001FF|- rs1_w0_val == 33554432<br>                                                                                              |[0x800004c0]:SCLIP32 t6, t5, 9<br> [0x800004c4]:csrrs t5, vxsat, zero<br> [0x800004c8]:sw t6, 256(ra)<br>      |
|  55|[0x800023c0]<br>0x001FFFFF|- rs1_w0_val == 8388608<br>                                                                                               |[0x800004d0]:SCLIP32 t6, t5, 21<br> [0x800004d4]:csrrs t5, vxsat, zero<br> [0x800004d8]:sw t6, 264(ra)<br>     |
|  56|[0x800023c8]<br>0x0003FFFF|- rs1_w0_val == 4194304<br>                                                                                               |[0x800004e0]:SCLIP32 t6, t5, 18<br> [0x800004e4]:csrrs t5, vxsat, zero<br> [0x800004e8]:sw t6, 272(ra)<br>     |
|  57|[0x800023d0]<br>0x00080000|- rs1_w0_val == 524288<br>                                                                                                |[0x800004f0]:SCLIP32 t6, t5, 30<br> [0x800004f4]:csrrs t5, vxsat, zero<br> [0x800004f8]:sw t6, 280(ra)<br>     |
|  58|[0x800023d8]<br>0x00000000|- rs1_w0_val == 262144<br>                                                                                                |[0x80000500]:SCLIP32 t6, t5, 0<br> [0x80000504]:csrrs t5, vxsat, zero<br> [0x80000508]:sw t6, 288(ra)<br>      |
|  59|[0x800023e0]<br>0x0000FFFF|- rs1_w0_val == 65536<br>                                                                                                 |[0x80000510]:SCLIP32 t6, t5, 16<br> [0x80000514]:csrrs t5, vxsat, zero<br> [0x80000518]:sw t6, 296(ra)<br>     |
|  60|[0x800023e8]<br>0x00003FFF|- rs1_w0_val == 32768<br>                                                                                                 |[0x80000520]:SCLIP32 t6, t5, 14<br> [0x80000524]:csrrs t5, vxsat, zero<br> [0x80000528]:sw t6, 304(ra)<br>     |
|  61|[0x800023f0]<br>0x00004000|- rs1_w0_val == 16384<br>                                                                                                 |[0x80000530]:SCLIP32 t6, t5, 18<br> [0x80000534]:csrrs t5, vxsat, zero<br> [0x80000538]:sw t6, 312(ra)<br>     |
|  62|[0x800023f8]<br>0x00000800|- rs1_w0_val == 2048<br>                                                                                                  |[0x80000544]:SCLIP32 t6, t5, 24<br> [0x80000548]:csrrs t5, vxsat, zero<br> [0x8000054c]:sw t6, 320(ra)<br>     |
|  63|[0x80002400]<br>0x000001FF|- rs1_w0_val == 1024<br>                                                                                                  |[0x80000554]:SCLIP32 t6, t5, 9<br> [0x80000558]:csrrs t5, vxsat, zero<br> [0x8000055c]:sw t6, 328(ra)<br>      |
|  64|[0x80002410]<br>0x00000200|- rs1_w0_val == 512<br>                                                                                                   |[0x80000574]:SCLIP32 t6, t5, 22<br> [0x80000578]:csrrs t5, vxsat, zero<br> [0x8000057c]:sw t6, 344(ra)<br>     |
|  65|[0x80002418]<br>0xFFFFFF80|- rs1_w0_val == -129<br>                                                                                                  |[0x80000584]:SCLIP32 t6, t5, 7<br> [0x80000588]:csrrs t5, vxsat, zero<br> [0x8000058c]:sw t6, 352(ra)<br>      |
|  66|[0x80002420]<br>0x00000004|- rs1_w0_val == 4<br>                                                                                                     |[0x80000594]:SCLIP32 t6, t5, 22<br> [0x80000598]:csrrs t5, vxsat, zero<br> [0x8000059c]:sw t6, 360(ra)<br>     |
|  67|[0x80002428]<br>0xFFFFDFFF|- rs1_w0_val == -8193<br>                                                                                                 |[0x800005a8]:SCLIP32 t6, t5, 17<br> [0x800005ac]:csrrs t5, vxsat, zero<br> [0x800005b0]:sw t6, 368(ra)<br>     |
|  68|[0x80002430]<br>0xFFFFEFFF|- rs1_w0_val == -4097<br>                                                                                                 |[0x800005bc]:SCLIP32 t6, t5, 22<br> [0x800005c0]:csrrs t5, vxsat, zero<br> [0x800005c4]:sw t6, 376(ra)<br>     |
|  69|[0x80002438]<br>0xFFFFFFEF|- rs1_w0_val == -17<br>                                                                                                   |[0x800005cc]:SCLIP32 t6, t5, 19<br> [0x800005d0]:csrrs t5, vxsat, zero<br> [0x800005d4]:sw t6, 384(ra)<br>     |
|  70|[0x80002440]<br>0xFFFFFBFF|- rs1_w0_val == -1025<br>                                                                                                 |[0x800005dc]:SCLIP32 t6, t5, 26<br> [0x800005e0]:csrrs t5, vxsat, zero<br> [0x800005e4]:sw t6, 392(ra)<br>     |
|  71|[0x80002448]<br>0x00000100|- rs1_w0_val == 256<br>                                                                                                   |[0x800005ec]:SCLIP32 t6, t5, 31<br> [0x800005f0]:csrrs t5, vxsat, zero<br> [0x800005f4]:sw t6, 400(ra)<br>     |
|  72|[0x80002450]<br>0x00000080|- rs1_w0_val == 128<br>                                                                                                   |[0x800005fc]:SCLIP32 t6, t5, 19<br> [0x80000600]:csrrs t5, vxsat, zero<br> [0x80000604]:sw t6, 408(ra)<br>     |
|  73|[0x80002458]<br>0x00000040|- rs1_w0_val == 64<br>                                                                                                    |[0x8000060c]:SCLIP32 t6, t5, 16<br> [0x80000610]:csrrs t5, vxsat, zero<br> [0x80000614]:sw t6, 416(ra)<br>     |
|  74|[0x80002460]<br>0x00000020|- rs1_w0_val == 32<br>                                                                                                    |[0x8000061c]:SCLIP32 t6, t5, 11<br> [0x80000620]:csrrs t5, vxsat, zero<br> [0x80000624]:sw t6, 424(ra)<br>     |
|  75|[0x80002468]<br>0x00000010|- rs1_w0_val == 16<br>                                                                                                    |[0x8000062c]:SCLIP32 t6, t5, 24<br> [0x80000630]:csrrs t5, vxsat, zero<br> [0x80000634]:sw t6, 432(ra)<br>     |
|  76|[0x80002470]<br>0x00000008|- rs1_w0_val == 8<br>                                                                                                     |[0x8000063c]:SCLIP32 t6, t5, 23<br> [0x80000640]:csrrs t5, vxsat, zero<br> [0x80000644]:sw t6, 440(ra)<br>     |
|  77|[0x80002478]<br>0xFFFFFFF7|- rs1_w0_val == -9<br>                                                                                                    |[0x8000064c]:SCLIP32 t6, t5, 28<br> [0x80000650]:csrrs t5, vxsat, zero<br> [0x80000654]:sw t6, 448(ra)<br>     |
|  78|[0x80002480]<br>0xFFFFFFDF|- rs1_w0_val == -33<br>                                                                                                   |[0x8000065c]:SCLIP32 t6, t5, 18<br> [0x80000660]:csrrs t5, vxsat, zero<br> [0x80000664]:sw t6, 456(ra)<br>     |
