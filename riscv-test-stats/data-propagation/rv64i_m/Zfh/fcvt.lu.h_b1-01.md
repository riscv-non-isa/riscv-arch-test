
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x800000f8', '0x80000480')]      |
| SIG_REGION                | [('0x80002204', '0x80002414', '66 dwords')]      |
| COV_LABELS                | fcvt.lu.h_b1      |
| TEST_NAME                 | /home/zeusprime/riscv-project/riscof_zfh_env/tests/riscof_work/fcvt.lu.h_b1-01.S/ref.S    |
| Total Number of coverpoints| 93     |
| Total Coverpoints Hit     | 89      |
| Total Signature Updates   | 66      |
| STAT1                     | 32      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 33     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000468]:fcvt.lu.h t6, ft11, dyn
      [0x8000046c]:csrrs a7, fflags, zero
      [0x80000470]:sh t6, 160(a5)
 -- Signature Address: 0x800023a4 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : fcvt.lu.h
      - rd : x31
      - rs1 : f31
      - fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and rm_val == 0  #nosat






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fcvt.lu.h', 'rd : x23', 'rs1 : f4', 'fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000120]:fcvt.lu.h s7, ft4, dyn
	-[0x80000124]:csrrs a7, fflags, zero
	-[0x80000128]:sh s7, 0(a5)
Current Store : [0x8000012c] : sh a7, 2(a5) -- Store: [0x80002206]:0x0000000000000000




Last Coverpoint : ['rd : x27', 'rs1 : f24', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000138]:fcvt.lu.h s11, fs8, dyn
	-[0x8000013c]:csrrs a7, fflags, zero
	-[0x80000140]:sh s11, 10(a5)
Current Store : [0x80000144] : sh a7, 12(a5) -- Store: [0x80002210]:0x0000000000000010




Last Coverpoint : ['rd : x19', 'rs1 : f15', 'fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000150]:fcvt.lu.h s3, fa5, dyn
	-[0x80000154]:csrrs a7, fflags, zero
	-[0x80000158]:sh s3, 20(a5)
Current Store : [0x8000015c] : sh a7, 22(a5) -- Store: [0x8000221a]:0x0000000000000010




Last Coverpoint : ['rd : x22', 'rs1 : f26', 'fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000168]:fcvt.lu.h s6, fs10, dyn
	-[0x8000016c]:csrrs a7, fflags, zero
	-[0x80000170]:sh s6, 30(a5)
Current Store : [0x80000174] : sh a7, 32(a5) -- Store: [0x80002224]:0x0000000000000010




Last Coverpoint : ['rd : x4', 'rs1 : f12', 'fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000180]:fcvt.lu.h tp, fa2, dyn
	-[0x80000184]:csrrs a7, fflags, zero
	-[0x80000188]:sh tp, 40(a5)
Current Store : [0x8000018c] : sh a7, 42(a5) -- Store: [0x8000222e]:0x0000000000000010




Last Coverpoint : ['rd : x7', 'rs1 : f30', 'fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000198]:fcvt.lu.h t2, ft10, dyn
	-[0x8000019c]:csrrs a7, fflags, zero
	-[0x800001a0]:sh t2, 50(a5)
Current Store : [0x800001a4] : sh a7, 52(a5) -- Store: [0x80002238]:0x0000000000000010




Last Coverpoint : ['rd : x31', 'rs1 : f18', 'fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001b0]:fcvt.lu.h t6, fs2, dyn
	-[0x800001b4]:csrrs a7, fflags, zero
	-[0x800001b8]:sh t6, 60(a5)
Current Store : [0x800001bc] : sh a7, 62(a5) -- Store: [0x80002242]:0x0000000000000010




Last Coverpoint : ['rd : x28', 'rs1 : f20', 'fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001c8]:fcvt.lu.h t3, fs4, dyn
	-[0x800001cc]:csrrs a7, fflags, zero
	-[0x800001d0]:sh t3, 70(a5)
Current Store : [0x800001d4] : sh a7, 72(a5) -- Store: [0x8000224c]:0x0000000000000010




Last Coverpoint : ['rd : x30', 'rs1 : f0', 'fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001e0]:fcvt.lu.h t5, ft0, dyn
	-[0x800001e4]:csrrs a7, fflags, zero
	-[0x800001e8]:sh t5, 80(a5)
Current Store : [0x800001ec] : sh a7, 82(a5) -- Store: [0x80002256]:0x0000000000000010




Last Coverpoint : ['rd : x0', 'rs1 : f31', 'fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001f8]:fcvt.lu.h zero, ft11, dyn
	-[0x800001fc]:csrrs a7, fflags, zero
	-[0x80000200]:sh zero, 90(a5)
Current Store : [0x80000204] : sh a7, 92(a5) -- Store: [0x80002260]:0x0000000000000010




Last Coverpoint : ['rd : x16', 'rs1 : f14', 'fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000021c]:fcvt.lu.h a6, fa4, dyn
	-[0x80000220]:csrrs s5, fflags, zero
	-[0x80000224]:sh a6, 0(s3)
Current Store : [0x80000228] : sh s5, 2(s3) -- Store: [0x800022a6]:0x0000000000000010




Last Coverpoint : ['rd : x25', 'rs1 : f7', 'fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000240]:fcvt.lu.h s9, ft7, dyn
	-[0x80000244]:csrrs a7, fflags, zero
	-[0x80000248]:sh s9, 0(a5)
Current Store : [0x8000024c] : sh a7, 2(a5) -- Store: [0x800022b6]:0x0000000000000010




Last Coverpoint : ['rd : x15', 'rs1 : f25', 'fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000264]:fcvt.lu.h a5, fs9, dyn
	-[0x80000268]:csrrs s5, fflags, zero
	-[0x8000026c]:sh a5, 0(s3)
Current Store : [0x80000270] : sh s5, 2(s3) -- Store: [0x800022c6]:0x0000000000000010




Last Coverpoint : ['rd : x5', 'rs1 : f16', 'fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000288]:fcvt.lu.h t0, fa6, dyn
	-[0x8000028c]:csrrs a7, fflags, zero
	-[0x80000290]:sh t0, 0(a5)
Current Store : [0x80000294] : sh a7, 2(a5) -- Store: [0x800022d6]:0x0000000000000011




Last Coverpoint : ['rd : x14', 'rs1 : f2', 'fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002a0]:fcvt.lu.h a4, ft2, dyn
	-[0x800002a4]:csrrs a7, fflags, zero
	-[0x800002a8]:sh a4, 10(a5)
Current Store : [0x800002ac] : sh a7, 12(a5) -- Store: [0x800022e0]:0x0000000000000011




Last Coverpoint : ['rd : x17', 'rs1 : f5', 'fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002c4]:fcvt.lu.h a7, ft5, dyn
	-[0x800002c8]:csrrs s5, fflags, zero
	-[0x800002cc]:sh a7, 0(s3)
Current Store : [0x800002d0] : sh s5, 2(s3) -- Store: [0x800022f6]:0x0000000000000011




Last Coverpoint : ['rd : x20', 'rs1 : f8', 'fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002e8]:fcvt.lu.h s4, fs0, dyn
	-[0x800002ec]:csrrs a7, fflags, zero
	-[0x800002f0]:sh s4, 0(a5)
Current Store : [0x800002f4] : sh a7, 2(a5) -- Store: [0x80002306]:0x0000000000000011




Last Coverpoint : ['rd : x10', 'rs1 : f28', 'fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000300]:fcvt.lu.h a0, ft8, dyn
	-[0x80000304]:csrrs a7, fflags, zero
	-[0x80000308]:sh a0, 10(a5)
Current Store : [0x8000030c] : sh a7, 12(a5) -- Store: [0x80002310]:0x0000000000000011




Last Coverpoint : ['rd : x6', 'rs1 : f27', 'fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000318]:fcvt.lu.h t1, fs11, dyn
	-[0x8000031c]:csrrs a7, fflags, zero
	-[0x80000320]:sh t1, 20(a5)
Current Store : [0x80000324] : sh a7, 22(a5) -- Store: [0x8000231a]:0x0000000000000011




Last Coverpoint : ['rd : x26', 'rs1 : f22', 'fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000330]:fcvt.lu.h s10, fs6, dyn
	-[0x80000334]:csrrs a7, fflags, zero
	-[0x80000338]:sh s10, 30(a5)
Current Store : [0x8000033c] : sh a7, 32(a5) -- Store: [0x80002324]:0x0000000000000011




Last Coverpoint : ['rd : x18', 'rs1 : f10', 'fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000348]:fcvt.lu.h s2, fa0, dyn
	-[0x8000034c]:csrrs a7, fflags, zero
	-[0x80000350]:sh s2, 40(a5)
Current Store : [0x80000354] : sh a7, 42(a5) -- Store: [0x8000232e]:0x0000000000000011




Last Coverpoint : ['rd : x8', 'rs1 : f3', 'fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000360]:fcvt.lu.h fp, ft3, dyn
	-[0x80000364]:csrrs a7, fflags, zero
	-[0x80000368]:sh fp, 50(a5)
Current Store : [0x8000036c] : sh a7, 52(a5) -- Store: [0x80002338]:0x0000000000000011




Last Coverpoint : ['rd : x24', 'rs1 : f13', 'fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000378]:fcvt.lu.h s8, fa3, dyn
	-[0x8000037c]:csrrs a7, fflags, zero
	-[0x80000380]:sh s8, 60(a5)
Current Store : [0x80000384] : sh a7, 62(a5) -- Store: [0x80002342]:0x0000000000000011




Last Coverpoint : ['rd : x3', 'rs1 : f1', 'fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000390]:fcvt.lu.h gp, ft1, dyn
	-[0x80000394]:csrrs a7, fflags, zero
	-[0x80000398]:sh gp, 70(a5)
Current Store : [0x8000039c] : sh a7, 72(a5) -- Store: [0x8000234c]:0x0000000000000011




Last Coverpoint : ['rd : x2', 'rs1 : f21']
Last Code Sequence : 
	-[0x800003a8]:fcvt.lu.h sp, fs5, dyn
	-[0x800003ac]:csrrs a7, fflags, zero
	-[0x800003b0]:sh sp, 80(a5)
Current Store : [0x800003b4] : sh a7, 82(a5) -- Store: [0x80002356]:0x0000000000000011




Last Coverpoint : ['rd : x29', 'rs1 : f9']
Last Code Sequence : 
	-[0x800003c0]:fcvt.lu.h t4, fs1, dyn
	-[0x800003c4]:csrrs a7, fflags, zero
	-[0x800003c8]:sh t4, 90(a5)
Current Store : [0x800003cc] : sh a7, 92(a5) -- Store: [0x80002360]:0x0000000000000011




Last Coverpoint : ['rd : x12', 'rs1 : f23']
Last Code Sequence : 
	-[0x800003d8]:fcvt.lu.h a2, fs7, dyn
	-[0x800003dc]:csrrs a7, fflags, zero
	-[0x800003e0]:sh a2, 100(a5)
Current Store : [0x800003e4] : sh a7, 102(a5) -- Store: [0x8000236a]:0x0000000000000011




Last Coverpoint : ['rd : x13', 'rs1 : f19']
Last Code Sequence : 
	-[0x800003f0]:fcvt.lu.h a3, fs3, dyn
	-[0x800003f4]:csrrs a7, fflags, zero
	-[0x800003f8]:sh a3, 110(a5)
Current Store : [0x800003fc] : sh a7, 112(a5) -- Store: [0x80002374]:0x0000000000000011




Last Coverpoint : ['rd : x1', 'rs1 : f29']
Last Code Sequence : 
	-[0x80000408]:fcvt.lu.h ra, ft9, dyn
	-[0x8000040c]:csrrs a7, fflags, zero
	-[0x80000410]:sh ra, 120(a5)
Current Store : [0x80000414] : sh a7, 122(a5) -- Store: [0x8000237e]:0x0000000000000011




Last Coverpoint : ['rd : x9', 'rs1 : f11']
Last Code Sequence : 
	-[0x80000420]:fcvt.lu.h s1, fa1, dyn
	-[0x80000424]:csrrs a7, fflags, zero
	-[0x80000428]:sh s1, 130(a5)
Current Store : [0x8000042c] : sh a7, 132(a5) -- Store: [0x80002388]:0x0000000000000011




Last Coverpoint : ['rd : x11', 'rs1 : f17']
Last Code Sequence : 
	-[0x80000438]:fcvt.lu.h a1, fa7, dyn
	-[0x8000043c]:csrrs a7, fflags, zero
	-[0x80000440]:sh a1, 140(a5)
Current Store : [0x80000444] : sh a7, 142(a5) -- Store: [0x80002392]:0x0000000000000011




Last Coverpoint : ['rd : x21', 'rs1 : f6']
Last Code Sequence : 
	-[0x80000450]:fcvt.lu.h s5, ft6, dyn
	-[0x80000454]:csrrs a7, fflags, zero
	-[0x80000458]:sh s5, 150(a5)
Current Store : [0x8000045c] : sh a7, 152(a5) -- Store: [0x8000239c]:0x0000000000000011




Last Coverpoint : ['opcode : fcvt.lu.h', 'rd : x31', 'rs1 : f31', 'fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000468]:fcvt.lu.h t6, ft11, dyn
	-[0x8000046c]:csrrs a7, fflags, zero
	-[0x80000470]:sh t6, 160(a5)
Current Store : [0x80000474] : sh a7, 162(a5) -- Store: [0x800023a6]:0x0000000000000011





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

|s.no|            signature             |                                                          coverpoints                                                          |                                                        code                                                        |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002204]<br>0x0000000000000000|- opcode : fcvt.lu.h<br> - rd : x23<br> - rs1 : f4<br> - fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and rm_val == 0  #nosat<br> |[0x80000120]:fcvt.lu.h s7, ft4, dyn<br> [0x80000124]:csrrs a7, fflags, zero<br> [0x80000128]:sh s7, 0(a5)<br>       |
|   2|[0x8000220e]<br>0x0000000000000000|- rd : x27<br> - rs1 : f24<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and rm_val == 0  #nosat<br>                         |[0x80000138]:fcvt.lu.h s11, fs8, dyn<br> [0x8000013c]:csrrs a7, fflags, zero<br> [0x80000140]:sh s11, 10(a5)<br>    |
|   3|[0x80002218]<br>0x0000000000000001|- rd : x19<br> - rs1 : f15<br> - fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and rm_val == 0  #nosat<br>                         |[0x80000150]:fcvt.lu.h s3, fa5, dyn<br> [0x80000154]:csrrs a7, fflags, zero<br> [0x80000158]:sh s3, 20(a5)<br>      |
|   4|[0x80002222]<br>0xFFFFFFFFFFFFFFFF|- rd : x22<br> - rs1 : f26<br> - fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and rm_val == 0  #nosat<br>                         |[0x80000168]:fcvt.lu.h s6, fs10, dyn<br> [0x8000016c]:csrrs a7, fflags, zero<br> [0x80000170]:sh s6, 30(a5)<br>     |
|   5|[0x8000222c]<br>0xFFFFFFFFFFFFFFFF|- rd : x4<br> - rs1 : f12<br> - fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and rm_val == 0  #nosat<br>                          |[0x80000180]:fcvt.lu.h tp, fa2, dyn<br> [0x80000184]:csrrs a7, fflags, zero<br> [0x80000188]:sh tp, 40(a5)<br>      |
|   6|[0x80002236]<br>0xFFFFFFFFFFFFFFFF|- rd : x7<br> - rs1 : f30<br> - fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and rm_val == 0  #nosat<br>                          |[0x80000198]:fcvt.lu.h t2, ft10, dyn<br> [0x8000019c]:csrrs a7, fflags, zero<br> [0x800001a0]:sh t2, 50(a5)<br>     |
|   7|[0x80002240]<br>0xFFFFFFFFFFFFFFFF|- rd : x31<br> - rs1 : f18<br> - fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and rm_val == 0  #nosat<br>                         |[0x800001b0]:fcvt.lu.h t6, fs2, dyn<br> [0x800001b4]:csrrs a7, fflags, zero<br> [0x800001b8]:sh t6, 60(a5)<br>      |
|   8|[0x8000224a]<br>0xFFFFFFFFFFFFFFFF|- rd : x28<br> - rs1 : f20<br> - fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and rm_val == 0  #nosat<br>                         |[0x800001c8]:fcvt.lu.h t3, fs4, dyn<br> [0x800001cc]:csrrs a7, fflags, zero<br> [0x800001d0]:sh t3, 70(a5)<br>      |
|   9|[0x80002254]<br>0xFFFFFFFFFFFFFFFF|- rd : x30<br> - rs1 : f0<br> - fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and rm_val == 0  #nosat<br>                          |[0x800001e0]:fcvt.lu.h t5, ft0, dyn<br> [0x800001e4]:csrrs a7, fflags, zero<br> [0x800001e8]:sh t5, 80(a5)<br>      |
|  10|[0x8000225e]<br>0x0000000000000000|- rd : x0<br> - rs1 : f31<br> - fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and rm_val == 0  #nosat<br>                          |[0x800001f8]:fcvt.lu.h zero, ft11, dyn<br> [0x800001fc]:csrrs a7, fflags, zero<br> [0x80000200]:sh zero, 90(a5)<br> |
|  11|[0x800022a4]<br>0xFFFFFFFFFFFFFFFF|- rd : x16<br> - rs1 : f14<br> - fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and rm_val == 0  #nosat<br>                         |[0x8000021c]:fcvt.lu.h a6, fa4, dyn<br> [0x80000220]:csrrs s5, fflags, zero<br> [0x80000224]:sh a6, 0(s3)<br>       |
|  12|[0x800022b4]<br>0x0000000000000000|- rd : x25<br> - rs1 : f7<br> - fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and rm_val == 0  #nosat<br>                          |[0x80000240]:fcvt.lu.h s9, ft7, dyn<br> [0x80000244]:csrrs a7, fflags, zero<br> [0x80000248]:sh s9, 0(a5)<br>       |
|  13|[0x800022c4]<br>0x000000000000FFE0|- rd : x15<br> - rs1 : f25<br> - fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and rm_val == 0  #nosat<br>                         |[0x80000264]:fcvt.lu.h a5, fs9, dyn<br> [0x80000268]:csrrs s5, fflags, zero<br> [0x8000026c]:sh a5, 0(s3)<br>       |
|  14|[0x800022d4]<br>0x0000000000000000|- rd : x5<br> - rs1 : f16<br> - fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and rm_val == 0  #nosat<br>                          |[0x80000288]:fcvt.lu.h t0, fa6, dyn<br> [0x8000028c]:csrrs a7, fflags, zero<br> [0x80000290]:sh t0, 0(a5)<br>       |
|  15|[0x800022de]<br>0x0000000000000000|- rd : x14<br> - rs1 : f2<br> - fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and rm_val == 0  #nosat<br>                          |[0x800002a0]:fcvt.lu.h a4, ft2, dyn<br> [0x800002a4]:csrrs a7, fflags, zero<br> [0x800002a8]:sh a4, 10(a5)<br>      |
|  16|[0x800022f4]<br>0x0000000000000000|- rd : x17<br> - rs1 : f5<br> - fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and rm_val == 0  #nosat<br>                          |[0x800002c4]:fcvt.lu.h a7, ft5, dyn<br> [0x800002c8]:csrrs s5, fflags, zero<br> [0x800002cc]:sh a7, 0(s3)<br>       |
|  17|[0x80002304]<br>0x0000000000000000|- rd : x20<br> - rs1 : f8<br> - fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and rm_val == 0  #nosat<br>                          |[0x800002e8]:fcvt.lu.h s4, fs0, dyn<br> [0x800002ec]:csrrs a7, fflags, zero<br> [0x800002f0]:sh s4, 0(a5)<br>       |
|  18|[0x8000230e]<br>0x0000000000000000|- rd : x10<br> - rs1 : f28<br> - fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and rm_val == 0  #nosat<br>                         |[0x80000300]:fcvt.lu.h a0, ft8, dyn<br> [0x80000304]:csrrs a7, fflags, zero<br> [0x80000308]:sh a0, 10(a5)<br>      |
|  19|[0x80002318]<br>0x0000000000000000|- rd : x6<br> - rs1 : f27<br> - fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and rm_val == 0  #nosat<br>                          |[0x80000318]:fcvt.lu.h t1, fs11, dyn<br> [0x8000031c]:csrrs a7, fflags, zero<br> [0x80000320]:sh t1, 20(a5)<br>     |
|  20|[0x80002322]<br>0x0000000000000000|- rd : x26<br> - rs1 : f22<br> - fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and rm_val == 0  #nosat<br>                         |[0x80000330]:fcvt.lu.h s10, fs6, dyn<br> [0x80000334]:csrrs a7, fflags, zero<br> [0x80000338]:sh s10, 30(a5)<br>    |
|  21|[0x8000232c]<br>0x0000000000000000|- rd : x18<br> - rs1 : f10<br> - fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and rm_val == 0  #nosat<br>                         |[0x80000348]:fcvt.lu.h s2, fa0, dyn<br> [0x8000034c]:csrrs a7, fflags, zero<br> [0x80000350]:sh s2, 40(a5)<br>      |
|  22|[0x80002336]<br>0x0000000000000000|- rd : x8<br> - rs1 : f3<br> - fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and rm_val == 0  #nosat<br>                           |[0x80000360]:fcvt.lu.h fp, ft3, dyn<br> [0x80000364]:csrrs a7, fflags, zero<br> [0x80000368]:sh fp, 50(a5)<br>      |
|  23|[0x80002340]<br>0x0000000000000000|- rd : x24<br> - rs1 : f13<br> - fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and rm_val == 0  #nosat<br>                         |[0x80000378]:fcvt.lu.h s8, fa3, dyn<br> [0x8000037c]:csrrs a7, fflags, zero<br> [0x80000380]:sh s8, 60(a5)<br>      |
|  24|[0x8000234a]<br>0x0000000000000000|- rd : x3<br> - rs1 : f1<br> - fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and rm_val == 0  #nosat<br>                           |[0x80000390]:fcvt.lu.h gp, ft1, dyn<br> [0x80000394]:csrrs a7, fflags, zero<br> [0x80000398]:sh gp, 70(a5)<br>      |
|  25|[0x80002354]<br>0x0000000000000000|- rd : x2<br> - rs1 : f21<br>                                                                                                  |[0x800003a8]:fcvt.lu.h sp, fs5, dyn<br> [0x800003ac]:csrrs a7, fflags, zero<br> [0x800003b0]:sh sp, 80(a5)<br>      |
|  26|[0x8000235e]<br>0x0000000000000000|- rd : x29<br> - rs1 : f9<br>                                                                                                  |[0x800003c0]:fcvt.lu.h t4, fs1, dyn<br> [0x800003c4]:csrrs a7, fflags, zero<br> [0x800003c8]:sh t4, 90(a5)<br>      |
|  27|[0x80002368]<br>0x0000000000000000|- rd : x12<br> - rs1 : f23<br>                                                                                                 |[0x800003d8]:fcvt.lu.h a2, fs7, dyn<br> [0x800003dc]:csrrs a7, fflags, zero<br> [0x800003e0]:sh a2, 100(a5)<br>     |
|  28|[0x80002372]<br>0x0000000000000000|- rd : x13<br> - rs1 : f19<br>                                                                                                 |[0x800003f0]:fcvt.lu.h a3, fs3, dyn<br> [0x800003f4]:csrrs a7, fflags, zero<br> [0x800003f8]:sh a3, 110(a5)<br>     |
|  29|[0x8000237c]<br>0x0000000000000000|- rd : x1<br> - rs1 : f29<br>                                                                                                  |[0x80000408]:fcvt.lu.h ra, ft9, dyn<br> [0x8000040c]:csrrs a7, fflags, zero<br> [0x80000410]:sh ra, 120(a5)<br>     |
|  30|[0x80002386]<br>0x0000000000000000|- rd : x9<br> - rs1 : f11<br>                                                                                                  |[0x80000420]:fcvt.lu.h s1, fa1, dyn<br> [0x80000424]:csrrs a7, fflags, zero<br> [0x80000428]:sh s1, 130(a5)<br>     |
|  31|[0x80002390]<br>0x0000000000000000|- rd : x11<br> - rs1 : f17<br>                                                                                                 |[0x80000438]:fcvt.lu.h a1, fa7, dyn<br> [0x8000043c]:csrrs a7, fflags, zero<br> [0x80000440]:sh a1, 140(a5)<br>     |
|  32|[0x8000239a]<br>0x0000000000000000|- rd : x21<br> - rs1 : f6<br>                                                                                                  |[0x80000450]:fcvt.lu.h s5, ft6, dyn<br> [0x80000454]:csrrs a7, fflags, zero<br> [0x80000458]:sh s5, 150(a5)<br>     |
