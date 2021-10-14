
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000460')]      |
| SIG_REGION                | [('0x80002204', '0x80002304', '64 words')]      |
| COV_LABELS                | fmv.x.w_b28      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/fmv.x.w_b28-01.S/ref.S    |
| Total Number of coverpoints| 97     |
| Total Coverpoints Hit     | 93      |
| Total Signature Updates   | 64      |
| STAT1                     | 32      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 32     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fmv.x.w', 'rd : x17', 'rs1 : f21', 'fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000120]:fmv.x.w a7, fs5
	-[0x80000124]:csrrs s5, fflags, zero
	-[0x80000128]:sw a7, 0(s3)
Current Store : [0x8000012c] : sw s5, 4(s3) -- Store: [0x80002208]:0x00000000




Last Coverpoint : ['rd : x7', 'rs1 : f5', 'fs1 == 1 and fe1 == 0xff and fm1 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000144]:fmv.x.w t2, ft5
	-[0x80000148]:csrrs a7, fflags, zero
	-[0x8000014c]:sw t2, 0(a5)
Current Store : [0x80000150] : sw a7, 4(a5) -- Store: [0x80002210]:0x00000000




Last Coverpoint : ['rd : x26', 'rs1 : f12', 'fs1 == 1 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000015c]:fmv.x.w s10, fa2
	-[0x80000160]:csrrs a7, fflags, zero
	-[0x80000164]:sw s10, 8(a5)
Current Store : [0x80000168] : sw a7, 12(a5) -- Store: [0x80002218]:0x00000000




Last Coverpoint : ['rd : x6', 'rs1 : f0', 'fs1 == 1 and fe1 == 0x9d and fm1 == 0x4b3d25 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000174]:fmv.x.w t1, ft0
	-[0x80000178]:csrrs a7, fflags, zero
	-[0x8000017c]:sw t1, 16(a5)
Current Store : [0x80000180] : sw a7, 20(a5) -- Store: [0x80002220]:0x00000000




Last Coverpoint : ['rd : x3', 'rs1 : f25', 'fs1 == 1 and fe1 == 0x7f and fm1 == 0x200000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000018c]:fmv.x.w gp, fs9
	-[0x80000190]:csrrs a7, fflags, zero
	-[0x80000194]:sw gp, 24(a5)
Current Store : [0x80000198] : sw a7, 28(a5) -- Store: [0x80002228]:0x00000000




Last Coverpoint : ['rd : x19', 'rs1 : f31', 'fs1 == 1 and fe1 == 0x7f and fm1 == 0x400000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001a4]:fmv.x.w s3, ft11
	-[0x800001a8]:csrrs a7, fflags, zero
	-[0x800001ac]:sw s3, 32(a5)
Current Store : [0x800001b0] : sw a7, 36(a5) -- Store: [0x80002230]:0x00000000




Last Coverpoint : ['rd : x10', 'rs1 : f22', 'fs1 == 1 and fe1 == 0x7f and fm1 == 0x600000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001bc]:fmv.x.w a0, fs6
	-[0x800001c0]:csrrs a7, fflags, zero
	-[0x800001c4]:sw a0, 40(a5)
Current Store : [0x800001c8] : sw a7, 44(a5) -- Store: [0x80002238]:0x00000000




Last Coverpoint : ['rd : x24', 'rs1 : f27', 'fs1 == 1 and fe1 == 0x80 and fm1 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001d4]:fmv.x.w s8, fs11
	-[0x800001d8]:csrrs a7, fflags, zero
	-[0x800001dc]:sw s8, 48(a5)
Current Store : [0x800001e0] : sw a7, 52(a5) -- Store: [0x80002240]:0x00000000




Last Coverpoint : ['rd : x23', 'rs1 : f11', 'fs1 == 1 and fe1 == 0x80 and fm1 == 0x100000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001ec]:fmv.x.w s7, fa1
	-[0x800001f0]:csrrs a7, fflags, zero
	-[0x800001f4]:sw s7, 56(a5)
Current Store : [0x800001f8] : sw a7, 60(a5) -- Store: [0x80002248]:0x00000000




Last Coverpoint : ['rd : x30', 'rs1 : f16', 'fs1 == 1 and fe1 == 0x80 and fm1 == 0x200000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000204]:fmv.x.w t5, fa6
	-[0x80000208]:csrrs a7, fflags, zero
	-[0x8000020c]:sw t5, 64(a5)
Current Store : [0x80000210] : sw a7, 68(a5) -- Store: [0x80002250]:0x00000000




Last Coverpoint : ['rd : x25', 'rs1 : f1', 'fs1 == 1 and fe1 == 0x80 and fm1 == 0x300000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000021c]:fmv.x.w s9, ft1
	-[0x80000220]:csrrs a7, fflags, zero
	-[0x80000224]:sw s9, 72(a5)
Current Store : [0x80000228] : sw a7, 76(a5) -- Store: [0x80002258]:0x00000000




Last Coverpoint : ['rd : x9', 'rs1 : f17', 'fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000234]:fmv.x.w s1, fa7
	-[0x80000238]:csrrs a7, fflags, zero
	-[0x8000023c]:sw s1, 80(a5)
Current Store : [0x80000240] : sw a7, 84(a5) -- Store: [0x80002260]:0x00000000




Last Coverpoint : ['rd : x28', 'rs1 : f3', 'fs1 == 1 and fe1 == 0x7d and fm1 == 0x58046a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000024c]:fmv.x.w t3, ft3
	-[0x80000250]:csrrs a7, fflags, zero
	-[0x80000254]:sw t3, 88(a5)
Current Store : [0x80000258] : sw a7, 92(a5) -- Store: [0x80002268]:0x00000000




Last Coverpoint : ['rd : x14', 'rs1 : f15', 'fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000264]:fmv.x.w a4, fa5
	-[0x80000268]:csrrs a7, fflags, zero
	-[0x8000026c]:sw a4, 96(a5)
Current Store : [0x80000270] : sw a7, 100(a5) -- Store: [0x80002270]:0x00000000




Last Coverpoint : ['rd : x4', 'rs1 : f10', 'fs1 == 0 and fe1 == 0xff and fm1 == 0x400001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000027c]:fmv.x.w tp, fa0
	-[0x80000280]:csrrs a7, fflags, zero
	-[0x80000284]:sw tp, 104(a5)
Current Store : [0x80000288] : sw a7, 108(a5) -- Store: [0x80002278]:0x00000000




Last Coverpoint : ['rd : x18', 'rs1 : f14', 'fs1 == 0 and fe1 == 0xff and fm1 == 0x000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000294]:fmv.x.w s2, fa4
	-[0x80000298]:csrrs a7, fflags, zero
	-[0x8000029c]:sw s2, 112(a5)
Current Store : [0x800002a0] : sw a7, 116(a5) -- Store: [0x80002280]:0x00000000




Last Coverpoint : ['rd : x20', 'rs1 : f6', 'fs1 == 0 and fe1 == 0xff and fm1 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002ac]:fmv.x.w s4, ft6
	-[0x800002b0]:csrrs a7, fflags, zero
	-[0x800002b4]:sw s4, 120(a5)
Current Store : [0x800002b8] : sw a7, 124(a5) -- Store: [0x80002288]:0x00000000




Last Coverpoint : ['rd : x12', 'rs1 : f13', 'fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002c4]:fmv.x.w a2, fa3
	-[0x800002c8]:csrrs a7, fflags, zero
	-[0x800002cc]:sw a2, 128(a5)
Current Store : [0x800002d0] : sw a7, 132(a5) -- Store: [0x80002290]:0x00000000




Last Coverpoint : ['rd : x11', 'rs1 : f9', 'fs1 == 0 and fe1 == 0x9c and fm1 == 0x5b9758 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002dc]:fmv.x.w a1, fs1
	-[0x800002e0]:csrrs a7, fflags, zero
	-[0x800002e4]:sw a1, 136(a5)
Current Store : [0x800002e8] : sw a7, 140(a5) -- Store: [0x80002298]:0x00000000




Last Coverpoint : ['rd : x2', 'rs1 : f7', 'fs1 == 0 and fe1 == 0x80 and fm1 == 0x300000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002f4]:fmv.x.w sp, ft7
	-[0x800002f8]:csrrs a7, fflags, zero
	-[0x800002fc]:sw sp, 144(a5)
Current Store : [0x80000300] : sw a7, 148(a5) -- Store: [0x800022a0]:0x00000000




Last Coverpoint : ['rd : x22', 'rs1 : f2', 'fs1 == 0 and fe1 == 0x80 and fm1 == 0x200000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000030c]:fmv.x.w s6, ft2
	-[0x80000310]:csrrs a7, fflags, zero
	-[0x80000314]:sw s6, 152(a5)
Current Store : [0x80000318] : sw a7, 156(a5) -- Store: [0x800022a8]:0x00000000




Last Coverpoint : ['rd : x1', 'rs1 : f23', 'fs1 == 0 and fe1 == 0x80 and fm1 == 0x100000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000324]:fmv.x.w ra, fs7
	-[0x80000328]:csrrs a7, fflags, zero
	-[0x8000032c]:sw ra, 160(a5)
Current Store : [0x80000330] : sw a7, 164(a5) -- Store: [0x800022b0]:0x00000000




Last Coverpoint : ['rd : x16', 'rs1 : f30', 'fs1 == 0 and fe1 == 0x80 and fm1 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000348]:fmv.x.w a6, ft10
	-[0x8000034c]:csrrs s5, fflags, zero
	-[0x80000350]:sw a6, 0(s3)
Current Store : [0x80000354] : sw s5, 4(s3) -- Store: [0x800022b8]:0x00000000




Last Coverpoint : ['rd : x31', 'rs1 : f4', 'fs1 == 0 and fe1 == 0x7f and fm1 == 0x600000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000036c]:fmv.x.w t6, ft4
	-[0x80000370]:csrrs a7, fflags, zero
	-[0x80000374]:sw t6, 0(a5)
Current Store : [0x80000378] : sw a7, 4(a5) -- Store: [0x800022c0]:0x00000000




Last Coverpoint : ['rd : x29', 'rs1 : f26', 'fs1 == 0 and fe1 == 0x7f and fm1 == 0x400000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000384]:fmv.x.w t4, fs10
	-[0x80000388]:csrrs a7, fflags, zero
	-[0x8000038c]:sw t4, 8(a5)
Current Store : [0x80000390] : sw a7, 12(a5) -- Store: [0x800022c8]:0x00000000




Last Coverpoint : ['rd : x15', 'rs1 : f20', 'fs1 == 0 and fe1 == 0x7f and fm1 == 0x200000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003a8]:fmv.x.w a5, fs4
	-[0x800003ac]:csrrs s5, fflags, zero
	-[0x800003b0]:sw a5, 0(s3)
Current Store : [0x800003b4] : sw s5, 4(s3) -- Store: [0x800022d0]:0x00000000




Last Coverpoint : ['rd : x21', 'rs1 : f8', 'fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003cc]:fmv.x.w s5, fs0
	-[0x800003d0]:csrrs a7, fflags, zero
	-[0x800003d4]:sw s5, 0(a5)
Current Store : [0x800003d8] : sw a7, 4(a5) -- Store: [0x800022d8]:0x00000000




Last Coverpoint : ['rd : x5', 'rs1 : f18', 'fs1 == 0 and fe1 == 0x7e and fm1 == 0x124770 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003e4]:fmv.x.w t0, fs2
	-[0x800003e8]:csrrs a7, fflags, zero
	-[0x800003ec]:sw t0, 8(a5)
Current Store : [0x800003f0] : sw a7, 12(a5) -- Store: [0x800022e0]:0x00000000




Last Coverpoint : ['rd : x8', 'rs1 : f29']
Last Code Sequence : 
	-[0x800003fc]:fmv.x.w fp, ft9
	-[0x80000400]:csrrs a7, fflags, zero
	-[0x80000404]:sw fp, 16(a5)
Current Store : [0x80000408] : sw a7, 20(a5) -- Store: [0x800022e8]:0x00000000




Last Coverpoint : ['rd : x27', 'rs1 : f19']
Last Code Sequence : 
	-[0x80000414]:fmv.x.w s11, fs3
	-[0x80000418]:csrrs a7, fflags, zero
	-[0x8000041c]:sw s11, 24(a5)
Current Store : [0x80000420] : sw a7, 28(a5) -- Store: [0x800022f0]:0x00000000




Last Coverpoint : ['rd : x13', 'rs1 : f24']
Last Code Sequence : 
	-[0x8000042c]:fmv.x.w a3, fs8
	-[0x80000430]:csrrs a7, fflags, zero
	-[0x80000434]:sw a3, 32(a5)
Current Store : [0x80000438] : sw a7, 36(a5) -- Store: [0x800022f8]:0x00000000




Last Coverpoint : ['rd : x0', 'rs1 : f28']
Last Code Sequence : 
	-[0x80000444]:fmv.x.w zero, ft8
	-[0x80000448]:csrrs a7, fflags, zero
	-[0x8000044c]:sw zero, 40(a5)
Current Store : [0x80000450] : sw a7, 44(a5) -- Store: [0x80002300]:0x00000000





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

|s.no|        signature         |                                                           coverpoints                                                           |                                                    code                                                    |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------|
|   1|[0x80002204]<br>0x00000000|- opcode : fmv.x.w<br> - rd : x17<br> - rs1 : f21<br> - fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and rm_val == 0  #nosat<br> |[0x80000120]:fmv.x.w a7, fs5<br> [0x80000124]:csrrs s5, fflags, zero<br> [0x80000128]:sw a7, 0(s3)<br>      |
|   2|[0x8000220c]<br>0xFF800000|- rd : x7<br> - rs1 : f5<br> - fs1 == 1 and fe1 == 0xff and fm1 == 0x000000 and rm_val == 0  #nosat<br>                          |[0x80000144]:fmv.x.w t2, ft5<br> [0x80000148]:csrrs a7, fflags, zero<br> [0x8000014c]:sw t2, 0(a5)<br>      |
|   3|[0x80002214]<br>0xCF000000|- rd : x26<br> - rs1 : f12<br> - fs1 == 1 and fe1 == 0x9e and fm1 == 0x000000 and rm_val == 0  #nosat<br>                        |[0x8000015c]:fmv.x.w s10, fa2<br> [0x80000160]:csrrs a7, fflags, zero<br> [0x80000164]:sw s10, 8(a5)<br>    |
|   4|[0x8000221c]<br>0xCECB3D25|- rd : x6<br> - rs1 : f0<br> - fs1 == 1 and fe1 == 0x9d and fm1 == 0x4b3d25 and rm_val == 0  #nosat<br>                          |[0x80000174]:fmv.x.w t1, ft0<br> [0x80000178]:csrrs a7, fflags, zero<br> [0x8000017c]:sw t1, 16(a5)<br>     |
|   5|[0x80002224]<br>0xBFA00000|- rd : x3<br> - rs1 : f25<br> - fs1 == 1 and fe1 == 0x7f and fm1 == 0x200000 and rm_val == 0  #nosat<br>                         |[0x8000018c]:fmv.x.w gp, fs9<br> [0x80000190]:csrrs a7, fflags, zero<br> [0x80000194]:sw gp, 24(a5)<br>     |
|   6|[0x8000222c]<br>0xBFC00000|- rd : x19<br> - rs1 : f31<br> - fs1 == 1 and fe1 == 0x7f and fm1 == 0x400000 and rm_val == 0  #nosat<br>                        |[0x800001a4]:fmv.x.w s3, ft11<br> [0x800001a8]:csrrs a7, fflags, zero<br> [0x800001ac]:sw s3, 32(a5)<br>    |
|   7|[0x80002234]<br>0xBFE00000|- rd : x10<br> - rs1 : f22<br> - fs1 == 1 and fe1 == 0x7f and fm1 == 0x600000 and rm_val == 0  #nosat<br>                        |[0x800001bc]:fmv.x.w a0, fs6<br> [0x800001c0]:csrrs a7, fflags, zero<br> [0x800001c4]:sw a0, 40(a5)<br>     |
|   8|[0x8000223c]<br>0xC0000000|- rd : x24<br> - rs1 : f27<br> - fs1 == 1 and fe1 == 0x80 and fm1 == 0x000000 and rm_val == 0  #nosat<br>                        |[0x800001d4]:fmv.x.w s8, fs11<br> [0x800001d8]:csrrs a7, fflags, zero<br> [0x800001dc]:sw s8, 48(a5)<br>    |
|   9|[0x80002244]<br>0xC0100000|- rd : x23<br> - rs1 : f11<br> - fs1 == 1 and fe1 == 0x80 and fm1 == 0x100000 and rm_val == 0  #nosat<br>                        |[0x800001ec]:fmv.x.w s7, fa1<br> [0x800001f0]:csrrs a7, fflags, zero<br> [0x800001f4]:sw s7, 56(a5)<br>     |
|  10|[0x8000224c]<br>0xC0200000|- rd : x30<br> - rs1 : f16<br> - fs1 == 1 and fe1 == 0x80 and fm1 == 0x200000 and rm_val == 0  #nosat<br>                        |[0x80000204]:fmv.x.w t5, fa6<br> [0x80000208]:csrrs a7, fflags, zero<br> [0x8000020c]:sw t5, 64(a5)<br>     |
|  11|[0x80002254]<br>0xC0300000|- rd : x25<br> - rs1 : f1<br> - fs1 == 1 and fe1 == 0x80 and fm1 == 0x300000 and rm_val == 0  #nosat<br>                         |[0x8000021c]:fmv.x.w s9, ft1<br> [0x80000220]:csrrs a7, fflags, zero<br> [0x80000224]:sw s9, 72(a5)<br>     |
|  12|[0x8000225c]<br>0xBF800000|- rd : x9<br> - rs1 : f17<br> - fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and rm_val == 0  #nosat<br>                         |[0x80000234]:fmv.x.w s1, fa7<br> [0x80000238]:csrrs a7, fflags, zero<br> [0x8000023c]:sw s1, 80(a5)<br>     |
|  13|[0x80002264]<br>0xBED8046A|- rd : x28<br> - rs1 : f3<br> - fs1 == 1 and fe1 == 0x7d and fm1 == 0x58046a and rm_val == 0  #nosat<br>                         |[0x8000024c]:fmv.x.w t3, ft3<br> [0x80000250]:csrrs a7, fflags, zero<br> [0x80000254]:sw t3, 88(a5)<br>     |
|  14|[0x8000226c]<br>0x80000000|- rd : x14<br> - rs1 : f15<br> - fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and rm_val == 0  #nosat<br>                        |[0x80000264]:fmv.x.w a4, fa5<br> [0x80000268]:csrrs a7, fflags, zero<br> [0x8000026c]:sw a4, 96(a5)<br>     |
|  15|[0x80002274]<br>0x7FC00001|- rd : x4<br> - rs1 : f10<br> - fs1 == 0 and fe1 == 0xff and fm1 == 0x400001 and rm_val == 0  #nosat<br>                         |[0x8000027c]:fmv.x.w tp, fa0<br> [0x80000280]:csrrs a7, fflags, zero<br> [0x80000284]:sw tp, 104(a5)<br>    |
|  16|[0x8000227c]<br>0x7F800001|- rd : x18<br> - rs1 : f14<br> - fs1 == 0 and fe1 == 0xff and fm1 == 0x000001 and rm_val == 0  #nosat<br>                        |[0x80000294]:fmv.x.w s2, fa4<br> [0x80000298]:csrrs a7, fflags, zero<br> [0x8000029c]:sw s2, 112(a5)<br>    |
|  17|[0x80002284]<br>0x7F800000|- rd : x20<br> - rs1 : f6<br> - fs1 == 0 and fe1 == 0xff and fm1 == 0x000000 and rm_val == 0  #nosat<br>                         |[0x800002ac]:fmv.x.w s4, ft6<br> [0x800002b0]:csrrs a7, fflags, zero<br> [0x800002b4]:sw s4, 120(a5)<br>    |
|  18|[0x8000228c]<br>0x4EFFFFFF|- rd : x12<br> - rs1 : f13<br> - fs1 == 0 and fe1 == 0x9d and fm1 == 0x7fffff and rm_val == 0  #nosat<br>                        |[0x800002c4]:fmv.x.w a2, fa3<br> [0x800002c8]:csrrs a7, fflags, zero<br> [0x800002cc]:sw a2, 128(a5)<br>    |
|  19|[0x80002294]<br>0x4E5B9758|- rd : x11<br> - rs1 : f9<br> - fs1 == 0 and fe1 == 0x9c and fm1 == 0x5b9758 and rm_val == 0  #nosat<br>                         |[0x800002dc]:fmv.x.w a1, fs1<br> [0x800002e0]:csrrs a7, fflags, zero<br> [0x800002e4]:sw a1, 136(a5)<br>    |
|  20|[0x8000229c]<br>0x40300000|- rd : x2<br> - rs1 : f7<br> - fs1 == 0 and fe1 == 0x80 and fm1 == 0x300000 and rm_val == 0  #nosat<br>                          |[0x800002f4]:fmv.x.w sp, ft7<br> [0x800002f8]:csrrs a7, fflags, zero<br> [0x800002fc]:sw sp, 144(a5)<br>    |
|  21|[0x800022a4]<br>0x40200000|- rd : x22<br> - rs1 : f2<br> - fs1 == 0 and fe1 == 0x80 and fm1 == 0x200000 and rm_val == 0  #nosat<br>                         |[0x8000030c]:fmv.x.w s6, ft2<br> [0x80000310]:csrrs a7, fflags, zero<br> [0x80000314]:sw s6, 152(a5)<br>    |
|  22|[0x800022ac]<br>0x40100000|- rd : x1<br> - rs1 : f23<br> - fs1 == 0 and fe1 == 0x80 and fm1 == 0x100000 and rm_val == 0  #nosat<br>                         |[0x80000324]:fmv.x.w ra, fs7<br> [0x80000328]:csrrs a7, fflags, zero<br> [0x8000032c]:sw ra, 160(a5)<br>    |
|  23|[0x800022b4]<br>0x40000000|- rd : x16<br> - rs1 : f30<br> - fs1 == 0 and fe1 == 0x80 and fm1 == 0x000000 and rm_val == 0  #nosat<br>                        |[0x80000348]:fmv.x.w a6, ft10<br> [0x8000034c]:csrrs s5, fflags, zero<br> [0x80000350]:sw a6, 0(s3)<br>     |
|  24|[0x800022bc]<br>0x3FE00000|- rd : x31<br> - rs1 : f4<br> - fs1 == 0 and fe1 == 0x7f and fm1 == 0x600000 and rm_val == 0  #nosat<br>                         |[0x8000036c]:fmv.x.w t6, ft4<br> [0x80000370]:csrrs a7, fflags, zero<br> [0x80000374]:sw t6, 0(a5)<br>      |
|  25|[0x800022c4]<br>0x3FC00000|- rd : x29<br> - rs1 : f26<br> - fs1 == 0 and fe1 == 0x7f and fm1 == 0x400000 and rm_val == 0  #nosat<br>                        |[0x80000384]:fmv.x.w t4, fs10<br> [0x80000388]:csrrs a7, fflags, zero<br> [0x8000038c]:sw t4, 8(a5)<br>     |
|  26|[0x800022cc]<br>0x3FA00000|- rd : x15<br> - rs1 : f20<br> - fs1 == 0 and fe1 == 0x7f and fm1 == 0x200000 and rm_val == 0  #nosat<br>                        |[0x800003a8]:fmv.x.w a5, fs4<br> [0x800003ac]:csrrs s5, fflags, zero<br> [0x800003b0]:sw a5, 0(s3)<br>      |
|  27|[0x800022d4]<br>0x3F800000|- rd : x21<br> - rs1 : f8<br> - fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and rm_val == 0  #nosat<br>                         |[0x800003cc]:fmv.x.w s5, fs0<br> [0x800003d0]:csrrs a7, fflags, zero<br> [0x800003d4]:sw s5, 0(a5)<br>      |
|  28|[0x800022dc]<br>0x3F124770|- rd : x5<br> - rs1 : f18<br> - fs1 == 0 and fe1 == 0x7e and fm1 == 0x124770 and rm_val == 0  #nosat<br>                         |[0x800003e4]:fmv.x.w t0, fs2<br> [0x800003e8]:csrrs a7, fflags, zero<br> [0x800003ec]:sw t0, 8(a5)<br>      |
|  29|[0x800022e4]<br>0x00000000|- rd : x8<br> - rs1 : f29<br>                                                                                                    |[0x800003fc]:fmv.x.w fp, ft9<br> [0x80000400]:csrrs a7, fflags, zero<br> [0x80000404]:sw fp, 16(a5)<br>     |
|  30|[0x800022ec]<br>0x00000000|- rd : x27<br> - rs1 : f19<br>                                                                                                   |[0x80000414]:fmv.x.w s11, fs3<br> [0x80000418]:csrrs a7, fflags, zero<br> [0x8000041c]:sw s11, 24(a5)<br>   |
|  31|[0x800022f4]<br>0x00000000|- rd : x13<br> - rs1 : f24<br>                                                                                                   |[0x8000042c]:fmv.x.w a3, fs8<br> [0x80000430]:csrrs a7, fflags, zero<br> [0x80000434]:sw a3, 32(a5)<br>     |
|  32|[0x800022fc]<br>0x00000000|- rd : x0<br> - rs1 : f28<br>                                                                                                    |[0x80000444]:fmv.x.w zero, ft8<br> [0x80000448]:csrrs a7, fflags, zero<br> [0x8000044c]:sw zero, 40(a5)<br> |
