
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
| COV_LABELS                | fcvt.l.h_b1      |
| TEST_NAME                 | /home/zeusprime/riscv-project/riscof_zfh_env/tests/riscof_work/fcvt.l.h_b1-01.S/ref.S    |
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
      [0x80000468]:fcvt.l.h t6, ft11, dyn
      [0x8000046c]:csrrs a7, fflags, zero
      [0x80000470]:sh t6, 10(a5)
 -- Signature Address: 0x800023fe Data: 0x000000000000FFE0
 -- Redundant Coverpoints hit by the op
      - opcode : fcvt.l.h
      - rd : x31
      - rs1 : f31
      - fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and rm_val == 0  #nosat






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fcvt.l.h', 'rd : x13', 'rs1 : f27', 'fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000120]:fcvt.l.h a3, fs11, dyn
	-[0x80000124]:csrrs a7, fflags, zero
	-[0x80000128]:sh a3, 0(a5)
Current Store : [0x8000012c] : sh a7, 2(a5) -- Store: [0x80002206]:0x0000000000000000




Last Coverpoint : ['rd : x20', 'rs1 : f4', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000138]:fcvt.l.h s4, ft4, dyn
	-[0x8000013c]:csrrs a7, fflags, zero
	-[0x80000140]:sh s4, 10(a5)
Current Store : [0x80000144] : sh a7, 12(a5) -- Store: [0x80002210]:0x0000000000000000




Last Coverpoint : ['rd : x22', 'rs1 : f26', 'fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000150]:fcvt.l.h s6, fs10, dyn
	-[0x80000154]:csrrs a7, fflags, zero
	-[0x80000158]:sh s6, 20(a5)
Current Store : [0x8000015c] : sh a7, 22(a5) -- Store: [0x8000221a]:0x0000000000000000




Last Coverpoint : ['rd : x29', 'rs1 : f25', 'fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000168]:fcvt.l.h t4, fs9, dyn
	-[0x8000016c]:csrrs a7, fflags, zero
	-[0x80000170]:sh t4, 30(a5)
Current Store : [0x80000174] : sh a7, 32(a5) -- Store: [0x80002224]:0x0000000000000010




Last Coverpoint : ['rd : x27', 'rs1 : f14', 'fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000180]:fcvt.l.h s11, fa4, dyn
	-[0x80000184]:csrrs a7, fflags, zero
	-[0x80000188]:sh s11, 40(a5)
Current Store : [0x8000018c] : sh a7, 42(a5) -- Store: [0x8000222e]:0x0000000000000010




Last Coverpoint : ['rd : x6', 'rs1 : f31', 'fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000198]:fcvt.l.h t1, ft11, dyn
	-[0x8000019c]:csrrs a7, fflags, zero
	-[0x800001a0]:sh t1, 50(a5)
Current Store : [0x800001a4] : sh a7, 52(a5) -- Store: [0x80002238]:0x0000000000000010




Last Coverpoint : ['rd : x25', 'rs1 : f29', 'fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001b0]:fcvt.l.h s9, ft9, dyn
	-[0x800001b4]:csrrs a7, fflags, zero
	-[0x800001b8]:sh s9, 60(a5)
Current Store : [0x800001bc] : sh a7, 62(a5) -- Store: [0x80002242]:0x0000000000000010




Last Coverpoint : ['rd : x19', 'rs1 : f7', 'fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001c8]:fcvt.l.h s3, ft7, dyn
	-[0x800001cc]:csrrs a7, fflags, zero
	-[0x800001d0]:sh s3, 70(a5)
Current Store : [0x800001d4] : sh a7, 72(a5) -- Store: [0x8000224c]:0x0000000000000010




Last Coverpoint : ['rd : x14', 'rs1 : f6', 'fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001e0]:fcvt.l.h a4, ft6, dyn
	-[0x800001e4]:csrrs a7, fflags, zero
	-[0x800001e8]:sh a4, 80(a5)
Current Store : [0x800001ec] : sh a7, 82(a5) -- Store: [0x80002256]:0x0000000000000010




Last Coverpoint : ['rd : x1', 'rs1 : f9', 'fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800001f8]:fcvt.l.h ra, fs1, dyn
	-[0x800001fc]:csrrs a7, fflags, zero
	-[0x80000200]:sh ra, 90(a5)
Current Store : [0x80000204] : sh a7, 92(a5) -- Store: [0x80002260]:0x0000000000000010




Last Coverpoint : ['rd : x11', 'rs1 : f17', 'fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000210]:fcvt.l.h a1, fa7, dyn
	-[0x80000214]:csrrs a7, fflags, zero
	-[0x80000218]:sh a1, 100(a5)
Current Store : [0x8000021c] : sh a7, 102(a5) -- Store: [0x8000226a]:0x0000000000000010




Last Coverpoint : ['rd : x21', 'rs1 : f3', 'fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000228]:fcvt.l.h s5, ft3, dyn
	-[0x8000022c]:csrrs a7, fflags, zero
	-[0x80000230]:sh s5, 110(a5)
Current Store : [0x80000234] : sh a7, 112(a5) -- Store: [0x80002274]:0x0000000000000010




Last Coverpoint : ['rd : x0', 'rs1 : f22', 'fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000240]:fcvt.l.h zero, fs6, dyn
	-[0x80000244]:csrrs a7, fflags, zero
	-[0x80000248]:sh zero, 120(a5)
Current Store : [0x8000024c] : sh a7, 122(a5) -- Store: [0x8000227e]:0x0000000000000010




Last Coverpoint : ['rd : x30', 'rs1 : f23', 'fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000258]:fcvt.l.h t5, fs7, dyn
	-[0x8000025c]:csrrs a7, fflags, zero
	-[0x80000260]:sh t5, 130(a5)
Current Store : [0x80000264] : sh a7, 132(a5) -- Store: [0x80002288]:0x0000000000000011




Last Coverpoint : ['rd : x28', 'rs1 : f20', 'fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000270]:fcvt.l.h t3, fs4, dyn
	-[0x80000274]:csrrs a7, fflags, zero
	-[0x80000278]:sh t3, 140(a5)
Current Store : [0x8000027c] : sh a7, 142(a5) -- Store: [0x80002292]:0x0000000000000011




Last Coverpoint : ['rd : x7', 'rs1 : f10', 'fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000288]:fcvt.l.h t2, fa0, dyn
	-[0x8000028c]:csrrs a7, fflags, zero
	-[0x80000290]:sh t2, 150(a5)
Current Store : [0x80000294] : sh a7, 152(a5) -- Store: [0x8000229c]:0x0000000000000011




Last Coverpoint : ['rd : x4', 'rs1 : f28', 'fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002a0]:fcvt.l.h tp, ft8, dyn
	-[0x800002a4]:csrrs a7, fflags, zero
	-[0x800002a8]:sh tp, 160(a5)
Current Store : [0x800002ac] : sh a7, 162(a5) -- Store: [0x800022a6]:0x0000000000000011




Last Coverpoint : ['rd : x24', 'rs1 : f18', 'fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002b8]:fcvt.l.h s8, fs2, dyn
	-[0x800002bc]:csrrs a7, fflags, zero
	-[0x800002c0]:sh s8, 170(a5)
Current Store : [0x800002c4] : sh a7, 172(a5) -- Store: [0x800022b0]:0x0000000000000011




Last Coverpoint : ['rd : x12', 'rs1 : f0', 'fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002d0]:fcvt.l.h a2, ft0, dyn
	-[0x800002d4]:csrrs a7, fflags, zero
	-[0x800002d8]:sh a2, 180(a5)
Current Store : [0x800002dc] : sh a7, 182(a5) -- Store: [0x800022ba]:0x0000000000000011




Last Coverpoint : ['rd : x17', 'rs1 : f1', 'fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800002f4]:fcvt.l.h a7, ft1, dyn
	-[0x800002f8]:csrrs s5, fflags, zero
	-[0x800002fc]:sh a7, 0(s3)
Current Store : [0x80000300] : sh s5, 2(s3) -- Store: [0x80002336]:0x0000000000000011




Last Coverpoint : ['rd : x31', 'rs1 : f21', 'fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000318]:fcvt.l.h t6, fs5, dyn
	-[0x8000031c]:csrrs a7, fflags, zero
	-[0x80000320]:sh t6, 0(a5)
Current Store : [0x80000324] : sh a7, 2(a5) -- Store: [0x80002346]:0x0000000000000011




Last Coverpoint : ['rd : x10', 'rs1 : f15', 'fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000330]:fcvt.l.h a0, fa5, dyn
	-[0x80000334]:csrrs a7, fflags, zero
	-[0x80000338]:sh a0, 10(a5)
Current Store : [0x8000033c] : sh a7, 12(a5) -- Store: [0x80002350]:0x0000000000000011




Last Coverpoint : ['rd : x9', 'rs1 : f11', 'fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000348]:fcvt.l.h s1, fa1, dyn
	-[0x8000034c]:csrrs a7, fflags, zero
	-[0x80000350]:sh s1, 20(a5)
Current Store : [0x80000354] : sh a7, 22(a5) -- Store: [0x8000235a]:0x0000000000000011




Last Coverpoint : ['rd : x2', 'rs1 : f16', 'fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000360]:fcvt.l.h sp, fa6, dyn
	-[0x80000364]:csrrs a7, fflags, zero
	-[0x80000368]:sh sp, 30(a5)
Current Store : [0x8000036c] : sh a7, 32(a5) -- Store: [0x80002364]:0x0000000000000011




Last Coverpoint : ['rd : x8', 'rs1 : f12']
Last Code Sequence : 
	-[0x80000378]:fcvt.l.h fp, fa2, dyn
	-[0x8000037c]:csrrs a7, fflags, zero
	-[0x80000380]:sh fp, 40(a5)
Current Store : [0x80000384] : sh a7, 42(a5) -- Store: [0x8000236e]:0x0000000000000011




Last Coverpoint : ['rd : x15', 'rs1 : f2']
Last Code Sequence : 
	-[0x8000039c]:fcvt.l.h a5, ft2, dyn
	-[0x800003a0]:csrrs s5, fflags, zero
	-[0x800003a4]:sh a5, 0(s3)
Current Store : [0x800003a8] : sh s5, 2(s3) -- Store: [0x80002396]:0x0000000000000011




Last Coverpoint : ['rd : x18', 'rs1 : f24']
Last Code Sequence : 
	-[0x800003c0]:fcvt.l.h s2, fs8, dyn
	-[0x800003c4]:csrrs a7, fflags, zero
	-[0x800003c8]:sh s2, 0(a5)
Current Store : [0x800003cc] : sh a7, 2(a5) -- Store: [0x800023a6]:0x0000000000000011




Last Coverpoint : ['rd : x23', 'rs1 : f30']
Last Code Sequence : 
	-[0x800003d8]:fcvt.l.h s7, ft10, dyn
	-[0x800003dc]:csrrs a7, fflags, zero
	-[0x800003e0]:sh s7, 10(a5)
Current Store : [0x800003e4] : sh a7, 12(a5) -- Store: [0x800023b0]:0x0000000000000011




Last Coverpoint : ['rd : x3', 'rs1 : f19']
Last Code Sequence : 
	-[0x800003f0]:fcvt.l.h gp, fs3, dyn
	-[0x800003f4]:csrrs a7, fflags, zero
	-[0x800003f8]:sh gp, 20(a5)
Current Store : [0x800003fc] : sh a7, 22(a5) -- Store: [0x800023ba]:0x0000000000000011




Last Coverpoint : ['rd : x5', 'rs1 : f8']
Last Code Sequence : 
	-[0x80000408]:fcvt.l.h t0, fs0, dyn
	-[0x8000040c]:csrrs a7, fflags, zero
	-[0x80000410]:sh t0, 30(a5)
Current Store : [0x80000414] : sh a7, 32(a5) -- Store: [0x800023c4]:0x0000000000000011




Last Coverpoint : ['rd : x16', 'rs1 : f5']
Last Code Sequence : 
	-[0x8000042c]:fcvt.l.h a6, ft5, dyn
	-[0x80000430]:csrrs s5, fflags, zero
	-[0x80000434]:sh a6, 0(s3)
Current Store : [0x80000438] : sh s5, 2(s3) -- Store: [0x800023e6]:0x0000000000000011




Last Coverpoint : ['rd : x26', 'rs1 : f13']
Last Code Sequence : 
	-[0x80000450]:fcvt.l.h s10, fa3, dyn
	-[0x80000454]:csrrs a7, fflags, zero
	-[0x80000458]:sh s10, 0(a5)
Current Store : [0x8000045c] : sh a7, 2(a5) -- Store: [0x800023f6]:0x0000000000000011




Last Coverpoint : ['opcode : fcvt.l.h', 'rd : x31', 'rs1 : f31', 'fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000468]:fcvt.l.h t6, ft11, dyn
	-[0x8000046c]:csrrs a7, fflags, zero
	-[0x80000470]:sh t6, 10(a5)
Current Store : [0x80000474] : sh a7, 12(a5) -- Store: [0x80002400]:0x0000000000000011





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

|s.no|            signature             |                                                          coverpoints                                                          |                                                       code                                                        |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002204]<br>0x0000000000000000|- opcode : fcvt.l.h<br> - rd : x13<br> - rs1 : f27<br> - fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and rm_val == 0  #nosat<br> |[0x80000120]:fcvt.l.h a3, fs11, dyn<br> [0x80000124]:csrrs a7, fflags, zero<br> [0x80000128]:sh a3, 0(a5)<br>      |
|   2|[0x8000220e]<br>0xFFFFFFFFFFFFFFFF|- rd : x20<br> - rs1 : f4<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and rm_val == 0  #nosat<br>                          |[0x80000138]:fcvt.l.h s4, ft4, dyn<br> [0x8000013c]:csrrs a7, fflags, zero<br> [0x80000140]:sh s4, 10(a5)<br>      |
|   3|[0x80002218]<br>0x0000000000000001|- rd : x22<br> - rs1 : f26<br> - fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and rm_val == 0  #nosat<br>                         |[0x80000150]:fcvt.l.h s6, fs10, dyn<br> [0x80000154]:csrrs a7, fflags, zero<br> [0x80000158]:sh s6, 20(a5)<br>     |
|   4|[0x80002222]<br>0x7FFFFFFFFFFFFFFF|- rd : x29<br> - rs1 : f25<br> - fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and rm_val == 0  #nosat<br>                         |[0x80000168]:fcvt.l.h t4, fs9, dyn<br> [0x8000016c]:csrrs a7, fflags, zero<br> [0x80000170]:sh t4, 30(a5)<br>      |
|   5|[0x8000222c]<br>0x7FFFFFFFFFFFFFFF|- rd : x27<br> - rs1 : f14<br> - fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and rm_val == 0  #nosat<br>                         |[0x80000180]:fcvt.l.h s11, fa4, dyn<br> [0x80000184]:csrrs a7, fflags, zero<br> [0x80000188]:sh s11, 40(a5)<br>    |
|   6|[0x80002236]<br>0x7FFFFFFFFFFFFFFF|- rd : x6<br> - rs1 : f31<br> - fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and rm_val == 0  #nosat<br>                          |[0x80000198]:fcvt.l.h t1, ft11, dyn<br> [0x8000019c]:csrrs a7, fflags, zero<br> [0x800001a0]:sh t1, 50(a5)<br>     |
|   7|[0x80002240]<br>0x7FFFFFFFFFFFFFFF|- rd : x25<br> - rs1 : f29<br> - fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and rm_val == 0  #nosat<br>                         |[0x800001b0]:fcvt.l.h s9, ft9, dyn<br> [0x800001b4]:csrrs a7, fflags, zero<br> [0x800001b8]:sh s9, 60(a5)<br>      |
|   8|[0x8000224a]<br>0x7FFFFFFFFFFFFFFF|- rd : x19<br> - rs1 : f7<br> - fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and rm_val == 0  #nosat<br>                          |[0x800001c8]:fcvt.l.h s3, ft7, dyn<br> [0x800001cc]:csrrs a7, fflags, zero<br> [0x800001d0]:sh s3, 70(a5)<br>      |
|   9|[0x80002254]<br>0x7FFFFFFFFFFFFFFF|- rd : x14<br> - rs1 : f6<br> - fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and rm_val == 0  #nosat<br>                          |[0x800001e0]:fcvt.l.h a4, ft6, dyn<br> [0x800001e4]:csrrs a7, fflags, zero<br> [0x800001e8]:sh a4, 80(a5)<br>      |
|  10|[0x8000225e]<br>0x8000000000000000|- rd : x1<br> - rs1 : f9<br> - fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and rm_val == 0  #nosat<br>                           |[0x800001f8]:fcvt.l.h ra, fs1, dyn<br> [0x800001fc]:csrrs a7, fflags, zero<br> [0x80000200]:sh ra, 90(a5)<br>      |
|  11|[0x80002268]<br>0x7FFFFFFFFFFFFFFF|- rd : x11<br> - rs1 : f17<br> - fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and rm_val == 0  #nosat<br>                         |[0x80000210]:fcvt.l.h a1, fa7, dyn<br> [0x80000214]:csrrs a7, fflags, zero<br> [0x80000218]:sh a1, 100(a5)<br>     |
|  12|[0x80002272]<br>0xFFFFFFFFFFFF0020|- rd : x21<br> - rs1 : f3<br> - fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and rm_val == 0  #nosat<br>                          |[0x80000228]:fcvt.l.h s5, ft3, dyn<br> [0x8000022c]:csrrs a7, fflags, zero<br> [0x80000230]:sh s5, 110(a5)<br>     |
|  13|[0x8000227c]<br>0x0000000000000000|- rd : x0<br> - rs1 : f22<br> - fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and rm_val == 0  #nosat<br>                          |[0x80000240]:fcvt.l.h zero, fs6, dyn<br> [0x80000244]:csrrs a7, fflags, zero<br> [0x80000248]:sh zero, 120(a5)<br> |
|  14|[0x80002286]<br>0x0000000000000000|- rd : x30<br> - rs1 : f23<br> - fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and rm_val == 0  #nosat<br>                         |[0x80000258]:fcvt.l.h t5, fs7, dyn<br> [0x8000025c]:csrrs a7, fflags, zero<br> [0x80000260]:sh t5, 130(a5)<br>     |
|  15|[0x80002290]<br>0x0000000000000000|- rd : x28<br> - rs1 : f20<br> - fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and rm_val == 0  #nosat<br>                         |[0x80000270]:fcvt.l.h t3, fs4, dyn<br> [0x80000274]:csrrs a7, fflags, zero<br> [0x80000278]:sh t3, 140(a5)<br>     |
|  16|[0x8000229a]<br>0x0000000000000000|- rd : x7<br> - rs1 : f10<br> - fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and rm_val == 0  #nosat<br>                          |[0x80000288]:fcvt.l.h t2, fa0, dyn<br> [0x8000028c]:csrrs a7, fflags, zero<br> [0x80000290]:sh t2, 150(a5)<br>     |
|  17|[0x800022a4]<br>0x0000000000000000|- rd : x4<br> - rs1 : f28<br> - fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and rm_val == 0  #nosat<br>                          |[0x800002a0]:fcvt.l.h tp, ft8, dyn<br> [0x800002a4]:csrrs a7, fflags, zero<br> [0x800002a8]:sh tp, 160(a5)<br>     |
|  18|[0x800022ae]<br>0x0000000000000000|- rd : x24<br> - rs1 : f18<br> - fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and rm_val == 0  #nosat<br>                         |[0x800002b8]:fcvt.l.h s8, fs2, dyn<br> [0x800002bc]:csrrs a7, fflags, zero<br> [0x800002c0]:sh s8, 170(a5)<br>     |
|  19|[0x800022b8]<br>0x0000000000000000|- rd : x12<br> - rs1 : f0<br> - fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and rm_val == 0  #nosat<br>                          |[0x800002d0]:fcvt.l.h a2, ft0, dyn<br> [0x800002d4]:csrrs a7, fflags, zero<br> [0x800002d8]:sh a2, 180(a5)<br>     |
|  20|[0x80002334]<br>0x0000000000000000|- rd : x17<br> - rs1 : f1<br> - fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and rm_val == 0  #nosat<br>                          |[0x800002f4]:fcvt.l.h a7, ft1, dyn<br> [0x800002f8]:csrrs s5, fflags, zero<br> [0x800002fc]:sh a7, 0(s3)<br>       |
|  21|[0x80002344]<br>0x0000000000000000|- rd : x31<br> - rs1 : f21<br> - fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and rm_val == 0  #nosat<br>                         |[0x80000318]:fcvt.l.h t6, fs5, dyn<br> [0x8000031c]:csrrs a7, fflags, zero<br> [0x80000320]:sh t6, 0(a5)<br>       |
|  22|[0x8000234e]<br>0x0000000000000000|- rd : x10<br> - rs1 : f15<br> - fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and rm_val == 0  #nosat<br>                         |[0x80000330]:fcvt.l.h a0, fa5, dyn<br> [0x80000334]:csrrs a7, fflags, zero<br> [0x80000338]:sh a0, 10(a5)<br>      |
|  23|[0x80002358]<br>0x0000000000000000|- rd : x9<br> - rs1 : f11<br> - fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and rm_val == 0  #nosat<br>                          |[0x80000348]:fcvt.l.h s1, fa1, dyn<br> [0x8000034c]:csrrs a7, fflags, zero<br> [0x80000350]:sh s1, 20(a5)<br>      |
|  24|[0x80002362]<br>0x0000000000000000|- rd : x2<br> - rs1 : f16<br> - fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and rm_val == 0  #nosat<br>                          |[0x80000360]:fcvt.l.h sp, fa6, dyn<br> [0x80000364]:csrrs a7, fflags, zero<br> [0x80000368]:sh sp, 30(a5)<br>      |
|  25|[0x8000236c]<br>0x0000000000000000|- rd : x8<br> - rs1 : f12<br>                                                                                                  |[0x80000378]:fcvt.l.h fp, fa2, dyn<br> [0x8000037c]:csrrs a7, fflags, zero<br> [0x80000380]:sh fp, 40(a5)<br>      |
|  26|[0x80002394]<br>0x0000000000000000|- rd : x15<br> - rs1 : f2<br>                                                                                                  |[0x8000039c]:fcvt.l.h a5, ft2, dyn<br> [0x800003a0]:csrrs s5, fflags, zero<br> [0x800003a4]:sh a5, 0(s3)<br>       |
|  27|[0x800023a4]<br>0x0000000000000000|- rd : x18<br> - rs1 : f24<br>                                                                                                 |[0x800003c0]:fcvt.l.h s2, fs8, dyn<br> [0x800003c4]:csrrs a7, fflags, zero<br> [0x800003c8]:sh s2, 0(a5)<br>       |
|  28|[0x800023ae]<br>0x0000000000000000|- rd : x23<br> - rs1 : f30<br>                                                                                                 |[0x800003d8]:fcvt.l.h s7, ft10, dyn<br> [0x800003dc]:csrrs a7, fflags, zero<br> [0x800003e0]:sh s7, 10(a5)<br>     |
|  29|[0x800023b8]<br>0x0000000000000000|- rd : x3<br> - rs1 : f19<br>                                                                                                  |[0x800003f0]:fcvt.l.h gp, fs3, dyn<br> [0x800003f4]:csrrs a7, fflags, zero<br> [0x800003f8]:sh gp, 20(a5)<br>      |
|  30|[0x800023c2]<br>0x0000000000000000|- rd : x5<br> - rs1 : f8<br>                                                                                                   |[0x80000408]:fcvt.l.h t0, fs0, dyn<br> [0x8000040c]:csrrs a7, fflags, zero<br> [0x80000410]:sh t0, 30(a5)<br>      |
|  31|[0x800023e4]<br>0x0000000000000000|- rd : x16<br> - rs1 : f5<br>                                                                                                  |[0x8000042c]:fcvt.l.h a6, ft5, dyn<br> [0x80000430]:csrrs s5, fflags, zero<br> [0x80000434]:sh a6, 0(s3)<br>       |
|  32|[0x800023f4]<br>0x0000000000000000|- rd : x26<br> - rs1 : f13<br>                                                                                                 |[0x80000450]:fcvt.l.h s10, fa3, dyn<br> [0x80000454]:csrrs a7, fflags, zero<br> [0x80000458]:sh s10, 0(a5)<br>     |
