
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000d70')]      |
| SIG_REGION                | [('0x80002210', '0x800026f0', '312 words')]      |
| COV_LABELS                | ukmar64      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/ukmar64-01.S    |
| Total Number of coverpoints| 229     |
| Total Coverpoints Hit     | 223      |
| Total Signature Updates   | 309      |
| STAT1                     | 102      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 206     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009d4]:UKMAR64 t5, t6, t4
      [0x800009d8]:sw t5, 660(a4)
 -- Signature Address: 0x8000257c Data: 0x03DFD5FC
 -- Redundant Coverpoints hit by the op
      - opcode : ukmar64
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == 0
      - rs1_w0_val == 268435456






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : ukmar64', 'rs1 : x14', 'rs2 : x14', 'rd : x14', 'rs1 == rs2 == rd', 'rs1_w0_val == rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0']
Last Code Sequence : 
	-[0x80000114]:UKMAR64 a4, a4, a4
	-[0x80000118]:sw a4, 0(ra)
Current Store : [0x8000011c] : sw a5, 4(ra) -- Store: [0x80002214]:0xFAB7FBB6




Last Coverpoint : ['opcode : ukmar64', 'rs1 : x14', 'rs2 : x14', 'rd : x14', 'rs1 == rs2 == rd', 'rs1_w0_val == rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0']
Last Code Sequence : 
	-[0x80000114]:UKMAR64 a4, a4, a4
	-[0x80000118]:sw a4, 0(ra)
Current Store : [0x80000124] : sw a4, 8(ra) -- Store: [0x80002218]:0x00000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x30', 'rd : x20', 'rs1 == rs2 != rd', 'rs2_w0_val == 4294966783', 'rs1_w0_val == 4294966783']
Last Code Sequence : 
	-[0x80000130]:UKMAR64 s4, t5, t5
	-[0x80000134]:sw s4, 12(ra)
Current Store : [0x80000138] : sw s5, 16(ra) -- Store: [0x80002220]:0xDBEADFEE




Last Coverpoint : ['rs1 : x30', 'rs2 : x30', 'rd : x20', 'rs1 == rs2 != rd', 'rs2_w0_val == 4294966783', 'rs1_w0_val == 4294966783']
Last Code Sequence : 
	-[0x80000130]:UKMAR64 s4, t5, t5
	-[0x80000134]:sw s4, 12(ra)
Current Store : [0x80000140] : sw t5, 20(ra) -- Store: [0x80002224]:0x00000001




Last Coverpoint : ['rs1 : x19', 'rs2 : x25', 'rd : x8', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w0_val == 32', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x8000014c]:UKMAR64 fp, s3, s9
	-[0x80000150]:sw fp, 24(ra)
Current Store : [0x80000154] : sw s1, 28(ra) -- Store: [0x8000222c]:0xADFEEDBE




Last Coverpoint : ['rs1 : x19', 'rs2 : x25', 'rd : x8', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w0_val == 32', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x8000014c]:UKMAR64 fp, s3, s9
	-[0x80000150]:sw fp, 24(ra)
Current Store : [0x8000015c] : sw s3, 32(ra) -- Store: [0x80002230]:0x00000001




Last Coverpoint : ['rs1 : x29', 'rs2 : x28', 'rd : x28', 'rs2 == rd != rs1', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w0_val == 2863311530', 'rs1_w0_val == 4294967279']
Last Code Sequence : 
	-[0x8000016c]:UKMAR64 t3, t4, t3
	-[0x80000170]:sw t3, 36(ra)
Current Store : [0x80000174] : sw t4, 40(ra) -- Store: [0x80002238]:0xFFFFFFEF




Last Coverpoint : ['rs1 : x29', 'rs2 : x28', 'rd : x28', 'rs2 == rd != rs1', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w0_val == 2863311530', 'rs1_w0_val == 4294967279']
Last Code Sequence : 
	-[0x8000016c]:UKMAR64 t3, t4, t3
	-[0x80000170]:sw t3, 36(ra)
Current Store : [0x8000017c] : sw t4, 44(ra) -- Store: [0x8000223c]:0x00000001




Last Coverpoint : ['rs1 : x22', 'rs2 : x27', 'rd : x22', 'rs1 == rd != rs2', 'rs2_w0_val == 1431655765', 'rs1_w0_val == 4294967293']
Last Code Sequence : 
	-[0x8000018c]:UKMAR64 s6, s6, s11
	-[0x80000190]:sw s6, 48(ra)
Current Store : [0x80000194] : sw s7, 52(ra) -- Store: [0x80002244]:0xB6FAB7FB




Last Coverpoint : ['rs1 : x22', 'rs2 : x27', 'rd : x22', 'rs1 == rd != rs2', 'rs2_w0_val == 1431655765', 'rs1_w0_val == 4294967293']
Last Code Sequence : 
	-[0x8000018c]:UKMAR64 s6, s6, s11
	-[0x80000190]:sw s6, 48(ra)
Current Store : [0x8000019c] : sw s6, 56(ra) -- Store: [0x80002248]:0x00000001




Last Coverpoint : ['rs1 : x5', 'rs2 : x26', 'rd : x18', 'rs2_w0_val == 2147483647']
Last Code Sequence : 
	-[0x800001ac]:UKMAR64 s2, t0, s10
	-[0x800001b0]:sw s2, 60(ra)
Current Store : [0x800001b4] : sw s3, 64(ra) -- Store: [0x80002250]:0x00000001




Last Coverpoint : ['rs1 : x5', 'rs2 : x26', 'rd : x18', 'rs2_w0_val == 2147483647']
Last Code Sequence : 
	-[0x800001ac]:UKMAR64 s2, t0, s10
	-[0x800001b0]:sw s2, 60(ra)
Current Store : [0x800001bc] : sw t0, 68(ra) -- Store: [0x80002254]:0x00000001




Last Coverpoint : ['rs1 : x7', 'rs2 : x6', 'rd : x10', 'rs2_w0_val == 3221225471', 'rs1_w0_val == 4294967231']
Last Code Sequence : 
	-[0x800001cc]:UKMAR64 a0, t2, t1
	-[0x800001d0]:sw a0, 72(ra)
Current Store : [0x800001d4] : sw a1, 76(ra) -- Store: [0x8000225c]:0xAB7FBB6F




Last Coverpoint : ['rs1 : x7', 'rs2 : x6', 'rd : x10', 'rs2_w0_val == 3221225471', 'rs1_w0_val == 4294967231']
Last Code Sequence : 
	-[0x800001cc]:UKMAR64 a0, t2, t1
	-[0x800001d0]:sw a0, 72(ra)
Current Store : [0x800001dc] : sw t2, 80(ra) -- Store: [0x80002260]:0x00000001




Last Coverpoint : ['rs1 : x25', 'rs2 : x18', 'rd : x12', 'rs2_w0_val == 3758096383', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x800001f0]:UKMAR64 a2, s9, s2
	-[0x800001f4]:sw a2, 84(ra)
Current Store : [0x800001f8] : sw a3, 88(ra) -- Store: [0x80002268]:0xEADFEEDB




Last Coverpoint : ['rs1 : x25', 'rs2 : x18', 'rd : x12', 'rs2_w0_val == 3758096383', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x800001f0]:UKMAR64 a2, s9, s2
	-[0x800001f4]:sw a2, 84(ra)
Current Store : [0x80000200] : sw s9, 92(ra) -- Store: [0x8000226c]:0x00000001




Last Coverpoint : ['rs1 : x28', 'rs2 : x23', 'rd : x4', 'rs2_w0_val == 4026531839']
Last Code Sequence : 
	-[0x80000210]:UKMAR64 tp, t3, s7
	-[0x80000214]:sw tp, 96(ra)
Current Store : [0x80000218] : sw t0, 100(ra) -- Store: [0x80002274]:0x00000001




Last Coverpoint : ['rs1 : x28', 'rs2 : x23', 'rd : x4', 'rs2_w0_val == 4026531839']
Last Code Sequence : 
	-[0x80000210]:UKMAR64 tp, t3, s7
	-[0x80000214]:sw tp, 96(ra)
Current Store : [0x80000220] : sw t3, 104(ra) -- Store: [0x80002278]:0x00000001




Last Coverpoint : ['rs1 : x17', 'rs2 : x9', 'rd : x30', 'rs2_w0_val == 4160749567', 'rs1_w0_val == 4294934527']
Last Code Sequence : 
	-[0x80000234]:UKMAR64 t5, a7, s1
	-[0x80000238]:sw t5, 108(ra)
Current Store : [0x8000023c] : sw t6, 112(ra) -- Store: [0x80002280]:0xFBB6FAB7




Last Coverpoint : ['rs1 : x17', 'rs2 : x9', 'rd : x30', 'rs2_w0_val == 4160749567', 'rs1_w0_val == 4294934527']
Last Code Sequence : 
	-[0x80000234]:UKMAR64 t5, a7, s1
	-[0x80000238]:sw t5, 108(ra)
Current Store : [0x80000244] : sw a7, 116(ra) -- Store: [0x80002284]:0x00000001




Last Coverpoint : ['rs1 : x27', 'rs2 : x21', 'rd : x16', 'rs2_w0_val == 4227858431', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x8000025c]:UKMAR64 a6, s11, s5
	-[0x80000260]:sw a6, 0(t0)
Current Store : [0x80000264] : sw a7, 4(t0) -- Store: [0x8000228c]:0x00000001




Last Coverpoint : ['rs1 : x27', 'rs2 : x21', 'rd : x16', 'rs2_w0_val == 4227858431', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x8000025c]:UKMAR64 a6, s11, s5
	-[0x80000260]:sw a6, 0(t0)
Current Store : [0x8000026c] : sw s11, 8(t0) -- Store: [0x80002290]:0x00000001




Last Coverpoint : ['rs1 : x0', 'rs2 : x1', 'rd : x2', 'rs1_w0_val == 0', 'rs2_w0_val == 4261412863']
Last Code Sequence : 
	-[0x8000027c]:UKMAR64 sp, zero, ra
	-[0x80000280]:sw sp, 12(t0)
Current Store : [0x80000284] : sw gp, 16(t0) -- Store: [0x80002298]:0x7FBB6FAB




Last Coverpoint : ['rs1 : x0', 'rs2 : x1', 'rd : x2', 'rs1_w0_val == 0', 'rs2_w0_val == 4261412863']
Last Code Sequence : 
	-[0x8000027c]:UKMAR64 sp, zero, ra
	-[0x80000280]:sw sp, 12(t0)
Current Store : [0x8000028c] : sw zero, 20(t0) -- Store: [0x8000229c]:0x00000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x16', 'rd : x26', 'rs2_w0_val == 4278190079']
Last Code Sequence : 
	-[0x8000029c]:UKMAR64 s10, a5, a6
	-[0x800002a0]:sw s10, 24(t0)
Current Store : [0x800002a4] : sw s11, 28(t0) -- Store: [0x800022a4]:0x00000001




Last Coverpoint : ['rs1 : x15', 'rs2 : x16', 'rd : x26', 'rs2_w0_val == 4278190079']
Last Code Sequence : 
	-[0x8000029c]:UKMAR64 s10, a5, a6
	-[0x800002a0]:sw s10, 24(t0)
Current Store : [0x800002ac] : sw a5, 32(t0) -- Store: [0x800022a8]:0x00000001




Last Coverpoint : ['rs1 : x4', 'rs2 : x17', 'rd : x6', 'rs2_w0_val == 4286578687', 'rs1_w0_val == 4290772991']
Last Code Sequence : 
	-[0x800002c0]:UKMAR64 t1, tp, a7
	-[0x800002c4]:sw t1, 36(t0)
Current Store : [0x800002c8] : sw t2, 40(t0) -- Store: [0x800022b0]:0x00000001




Last Coverpoint : ['rs1 : x4', 'rs2 : x17', 'rd : x6', 'rs2_w0_val == 4286578687', 'rs1_w0_val == 4290772991']
Last Code Sequence : 
	-[0x800002c0]:UKMAR64 t1, tp, a7
	-[0x800002c4]:sw t1, 36(t0)
Current Store : [0x800002d0] : sw tp, 44(t0) -- Store: [0x800022b4]:0x00000001




Last Coverpoint : ['rs1 : x9', 'rs2 : x12', 'rd : x24', 'rs2_w0_val == 4290772991', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x800002e0]:UKMAR64 s8, s1, a2
	-[0x800002e4]:sw s8, 48(t0)
Current Store : [0x800002e8] : sw s9, 52(t0) -- Store: [0x800022bc]:0x00000001




Last Coverpoint : ['rs1 : x9', 'rs2 : x12', 'rd : x24', 'rs2_w0_val == 4290772991', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x800002e0]:UKMAR64 s8, s1, a2
	-[0x800002e4]:sw s8, 48(t0)
Current Store : [0x800002f0] : sw s1, 56(t0) -- Store: [0x800022c0]:0x00000001




Last Coverpoint : ['rs1 : x26', 'rs2 : x20', 'rs2_w0_val == 4292870143', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000300]:UKMAR64 t5, s10, s4
	-[0x80000304]:sw t5, 60(t0)
Current Store : [0x80000308] : sw t6, 64(t0) -- Store: [0x800022c8]:0xFBB6FAB7




Last Coverpoint : ['rs1 : x26', 'rs2 : x20', 'rs2_w0_val == 4292870143', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000300]:UKMAR64 t5, s10, s4
	-[0x80000304]:sw t5, 60(t0)
Current Store : [0x80000310] : sw s10, 68(t0) -- Store: [0x800022cc]:0x00000001




Last Coverpoint : ['rs1 : x31', 'rs2 : x19', 'rs2_w0_val == 4293918719', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000320]:UKMAR64 t3, t6, s3
	-[0x80000324]:sw t3, 72(t0)
Current Store : [0x80000328] : sw t4, 76(t0) -- Store: [0x800022d4]:0x00000001




Last Coverpoint : ['rs1 : x31', 'rs2 : x19', 'rs2_w0_val == 4293918719', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000320]:UKMAR64 t3, t6, s3
	-[0x80000324]:sw t3, 72(t0)
Current Store : [0x80000330] : sw t6, 80(t0) -- Store: [0x800022d8]:0x00000001




Last Coverpoint : ['rs1 : x23', 'rs2 : x13', 'rs2_w0_val == 4294443007']
Last Code Sequence : 
	-[0x80000340]:UKMAR64 a0, s7, a3
	-[0x80000344]:sw a0, 84(t0)
Current Store : [0x80000348] : sw a1, 88(t0) -- Store: [0x800022e0]:0xAB7FBB6F




Last Coverpoint : ['rs1 : x23', 'rs2 : x13', 'rs2_w0_val == 4294443007']
Last Code Sequence : 
	-[0x80000340]:UKMAR64 a0, s7, a3
	-[0x80000344]:sw a0, 84(t0)
Current Store : [0x80000350] : sw s7, 92(t0) -- Store: [0x800022e4]:0x00000001




Last Coverpoint : ['rs1 : x24', 'rs2 : x7', 'rs2_w0_val == 4294705151', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000368]:UKMAR64 a0, s8, t2
	-[0x8000036c]:sw a0, 0(a4)
Current Store : [0x80000370] : sw a1, 4(a4) -- Store: [0x800022ec]:0xAB7FBB6F




Last Coverpoint : ['rs1 : x24', 'rs2 : x7', 'rs2_w0_val == 4294705151', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000368]:UKMAR64 a0, s8, t2
	-[0x8000036c]:sw a0, 0(a4)
Current Store : [0x80000378] : sw s8, 8(a4) -- Store: [0x800022f0]:0x00000001




Last Coverpoint : ['rs1 : x13', 'rs2 : x5', 'rs2_w0_val == 4294836223']
Last Code Sequence : 
	-[0x80000388]:UKMAR64 fp, a3, t0
	-[0x8000038c]:sw fp, 12(a4)
Current Store : [0x80000390] : sw s1, 16(a4) -- Store: [0x800022f8]:0x00000001




Last Coverpoint : ['rs1 : x13', 'rs2 : x5', 'rs2_w0_val == 4294836223']
Last Code Sequence : 
	-[0x80000388]:UKMAR64 fp, a3, t0
	-[0x8000038c]:sw fp, 12(a4)
Current Store : [0x80000398] : sw a3, 20(a4) -- Store: [0x800022fc]:0x00000001




Last Coverpoint : ['rs1 : x11', 'rs2 : x29', 'rs2_w0_val == 4294901759', 'rs1_w0_val == 4292870143']
Last Code Sequence : 
	-[0x800003ac]:UKMAR64 t3, a1, t4
	-[0x800003b0]:sw t3, 24(a4)
Current Store : [0x800003b4] : sw t4, 28(a4) -- Store: [0x80002304]:0xFFFEFFFF




Last Coverpoint : ['rs1 : x11', 'rs2 : x29', 'rs2_w0_val == 4294901759', 'rs1_w0_val == 4292870143']
Last Code Sequence : 
	-[0x800003ac]:UKMAR64 t3, a1, t4
	-[0x800003b0]:sw t3, 24(a4)
Current Store : [0x800003bc] : sw a1, 32(a4) -- Store: [0x80002308]:0x00000001




Last Coverpoint : ['rs1 : x20', 'rs2 : x4', 'rs2_w0_val == 4294934527']
Last Code Sequence : 
	-[0x800003cc]:UKMAR64 t5, s4, tp
	-[0x800003d0]:sw t5, 36(a4)
Current Store : [0x800003d4] : sw t6, 40(a4) -- Store: [0x80002310]:0x00000001




Last Coverpoint : ['rs1 : x20', 'rs2 : x4', 'rs2_w0_val == 4294934527']
Last Code Sequence : 
	-[0x800003cc]:UKMAR64 t5, s4, tp
	-[0x800003d0]:sw t5, 36(a4)
Current Store : [0x800003dc] : sw s4, 44(a4) -- Store: [0x80002314]:0x00000001




Last Coverpoint : ['rs1 : x6', 'rs2 : x15', 'rs2_w0_val == 4294950911', 'rs1_w0_val == 4294950911']
Last Code Sequence : 
	-[0x800003f0]:UKMAR64 fp, t1, a5
	-[0x800003f4]:sw fp, 48(a4)
Current Store : [0x800003f8] : sw s1, 52(a4) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs1 : x6', 'rs2 : x15', 'rs2_w0_val == 4294950911', 'rs1_w0_val == 4294950911']
Last Code Sequence : 
	-[0x800003f0]:UKMAR64 fp, t1, a5
	-[0x800003f4]:sw fp, 48(a4)
Current Store : [0x80000400] : sw t1, 56(a4) -- Store: [0x80002320]:0x00000001




Last Coverpoint : ['rs1 : x21', 'rs2 : x24', 'rs2_w0_val == 4294959103', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000410]:UKMAR64 sp, s5, s8
	-[0x80000414]:sw sp, 60(a4)
Current Store : [0x80000418] : sw gp, 64(a4) -- Store: [0x80002328]:0x7FBB6FAB




Last Coverpoint : ['rs1 : x21', 'rs2 : x24', 'rs2_w0_val == 4294959103', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000410]:UKMAR64 sp, s5, s8
	-[0x80000414]:sw sp, 60(a4)
Current Store : [0x80000420] : sw s5, 68(a4) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs1 : x16', 'rs2 : x10', 'rs2_w0_val == 4294963199', 'rs1_w0_val == 4261412863']
Last Code Sequence : 
	-[0x80000434]:UKMAR64 fp, a6, a0
	-[0x80000438]:sw fp, 72(a4)
Current Store : [0x8000043c] : sw s1, 76(a4) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs1 : x16', 'rs2 : x10', 'rs2_w0_val == 4294963199', 'rs1_w0_val == 4261412863']
Last Code Sequence : 
	-[0x80000434]:UKMAR64 fp, a6, a0
	-[0x80000438]:sw fp, 72(a4)
Current Store : [0x80000444] : sw a6, 80(a4) -- Store: [0x80002338]:0x00000001




Last Coverpoint : ['rs1 : x10', 'rs2 : x3', 'rs2_w0_val == 4294965247']
Last Code Sequence : 
	-[0x80000454]:UKMAR64 s4, a0, gp
	-[0x80000458]:sw s4, 84(a4)
Current Store : [0x8000045c] : sw s5, 88(a4) -- Store: [0x80002340]:0x00000001




Last Coverpoint : ['rs1 : x10', 'rs2 : x3', 'rs2_w0_val == 4294965247']
Last Code Sequence : 
	-[0x80000454]:UKMAR64 s4, a0, gp
	-[0x80000458]:sw s4, 84(a4)
Current Store : [0x80000464] : sw a0, 92(a4) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['rs1 : x3', 'rs2 : x0', 'rs2_w0_val == 0', 'rs1_w0_val == 2147483648']
Last Code Sequence : 
	-[0x80000470]:UKMAR64 a2, gp, zero
	-[0x80000474]:sw a2, 96(a4)
Current Store : [0x80000478] : sw a3, 100(a4) -- Store: [0x8000234c]:0x00000001




Last Coverpoint : ['rs1 : x3', 'rs2 : x0', 'rs2_w0_val == 0', 'rs1_w0_val == 2147483648']
Last Code Sequence : 
	-[0x80000470]:UKMAR64 a2, gp, zero
	-[0x80000474]:sw a2, 96(a4)
Current Store : [0x80000480] : sw gp, 104(a4) -- Store: [0x80002350]:0x00000001




Last Coverpoint : ['rs1 : x1', 'rs2 : x11', 'rs2_w0_val == 4294967039', 'rs1_w0_val == 4227858431']
Last Code Sequence : 
	-[0x80000490]:UKMAR64 t5, ra, a1
	-[0x80000494]:sw t5, 108(a4)
Current Store : [0x80000498] : sw t6, 112(a4) -- Store: [0x80002358]:0x00000001




Last Coverpoint : ['rs1 : x1', 'rs2 : x11', 'rs2_w0_val == 4294967039', 'rs1_w0_val == 4227858431']
Last Code Sequence : 
	-[0x80000490]:UKMAR64 t5, ra, a1
	-[0x80000494]:sw t5, 108(a4)
Current Store : [0x800004a0] : sw ra, 116(a4) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['rs1 : x8', 'rs2 : x31', 'rs2_w0_val == 4294967167', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x800004ac]:UKMAR64 a2, fp, t6
	-[0x800004b0]:sw a2, 120(a4)
Current Store : [0x800004b4] : sw a3, 124(a4) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs1 : x8', 'rs2 : x31', 'rs2_w0_val == 4294967167', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x800004ac]:UKMAR64 a2, fp, t6
	-[0x800004b0]:sw a2, 120(a4)
Current Store : [0x800004bc] : sw fp, 128(a4) -- Store: [0x80002368]:0x00000001




Last Coverpoint : ['rs1 : x18', 'rs2 : x22', 'rs2_w0_val == 4294967231', 'rs1_w0_val == 4294967291']
Last Code Sequence : 
	-[0x800004c8]:UKMAR64 t1, s2, s6
	-[0x800004cc]:sw t1, 132(a4)
Current Store : [0x800004d0] : sw t2, 136(a4) -- Store: [0x80002370]:0xFFFBFFFF




Last Coverpoint : ['rs1 : x18', 'rs2 : x22', 'rs2_w0_val == 4294967231', 'rs1_w0_val == 4294967291']
Last Code Sequence : 
	-[0x800004c8]:UKMAR64 t1, s2, s6
	-[0x800004cc]:sw t1, 132(a4)
Current Store : [0x800004d8] : sw s2, 140(a4) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs1 : x12', 'rs2 : x2', 'rs2_w0_val == 4294967263']
Last Code Sequence : 
	-[0x800004e8]:UKMAR64 fp, a2, sp
	-[0x800004ec]:sw fp, 144(a4)
Current Store : [0x800004f0] : sw s1, 148(a4) -- Store: [0x8000237c]:0x00000001




Last Coverpoint : ['rs1 : x12', 'rs2 : x2', 'rs2_w0_val == 4294967263']
Last Code Sequence : 
	-[0x800004e8]:UKMAR64 fp, a2, sp
	-[0x800004ec]:sw fp, 144(a4)
Current Store : [0x800004f8] : sw a2, 152(a4) -- Store: [0x80002380]:0x00000001




Last Coverpoint : ['rs1 : x2', 'rs2 : x8', 'rs2_w0_val == 4294967279', 'rs1_w0_val == 4294959103']
Last Code Sequence : 
	-[0x80000508]:UKMAR64 s4, sp, fp
	-[0x8000050c]:sw s4, 156(a4)
Current Store : [0x80000510] : sw s5, 160(a4) -- Store: [0x80002388]:0x00000001




Last Coverpoint : ['rs1 : x2', 'rs2 : x8', 'rs2_w0_val == 4294967279', 'rs1_w0_val == 4294959103']
Last Code Sequence : 
	-[0x80000508]:UKMAR64 s4, sp, fp
	-[0x8000050c]:sw s4, 156(a4)
Current Store : [0x80000518] : sw sp, 164(a4) -- Store: [0x8000238c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4294967287']
Last Code Sequence : 
	-[0x80000524]:UKMAR64 t5, t6, t4
	-[0x80000528]:sw t5, 168(a4)
Current Store : [0x8000052c] : sw t6, 172(a4) -- Store: [0x80002394]:0xFFFFFDFF




Last Coverpoint : ['rs2_w0_val == 4294967287']
Last Code Sequence : 
	-[0x80000524]:UKMAR64 t5, t6, t4
	-[0x80000528]:sw t5, 168(a4)
Current Store : [0x80000534] : sw t6, 176(a4) -- Store: [0x80002398]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4294967291']
Last Code Sequence : 
	-[0x80000540]:UKMAR64 t5, t6, t4
	-[0x80000544]:sw t5, 180(a4)
Current Store : [0x80000548] : sw t6, 184(a4) -- Store: [0x800023a0]:0x00000005




Last Coverpoint : ['rs2_w0_val == 4294967291']
Last Code Sequence : 
	-[0x80000540]:UKMAR64 t5, t6, t4
	-[0x80000544]:sw t5, 180(a4)
Current Store : [0x80000550] : sw t6, 188(a4) -- Store: [0x800023a4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4294967293']
Last Code Sequence : 
	-[0x8000055c]:UKMAR64 t5, t6, t4
	-[0x80000560]:sw t5, 192(a4)
Current Store : [0x80000564] : sw t6, 196(a4) -- Store: [0x800023ac]:0x80000000




Last Coverpoint : ['rs2_w0_val == 4294967293']
Last Code Sequence : 
	-[0x8000055c]:UKMAR64 t5, t6, t4
	-[0x80000560]:sw t5, 192(a4)
Current Store : [0x8000056c] : sw t6, 200(a4) -- Store: [0x800023b0]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4294967294']
Last Code Sequence : 
	-[0x80000578]:UKMAR64 t5, t6, t4
	-[0x8000057c]:sw t5, 204(a4)
Current Store : [0x80000580] : sw t6, 208(a4) -- Store: [0x800023b8]:0x0000000F




Last Coverpoint : ['rs2_w0_val == 4294967294']
Last Code Sequence : 
	-[0x80000578]:UKMAR64 t5, t6, t4
	-[0x8000057c]:sw t5, 204(a4)
Current Store : [0x80000588] : sw t6, 212(a4) -- Store: [0x800023bc]:0x00000001




Last Coverpoint : ['rs2_w0_val == 2147483648', 'rs1_w0_val == 4293918719']
Last Code Sequence : 
	-[0x80000598]:UKMAR64 t5, t6, t4
	-[0x8000059c]:sw t5, 216(a4)
Current Store : [0x800005a0] : sw t6, 220(a4) -- Store: [0x800023c4]:0xFFEFFFFF




Last Coverpoint : ['rs2_w0_val == 2147483648', 'rs1_w0_val == 4293918719']
Last Code Sequence : 
	-[0x80000598]:UKMAR64 t5, t6, t4
	-[0x8000059c]:sw t5, 216(a4)
Current Store : [0x800005a8] : sw t6, 224(a4) -- Store: [0x800023c8]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1073741824']
Last Code Sequence : 
	-[0x800005b8]:UKMAR64 t5, t6, t4
	-[0x800005bc]:sw t5, 228(a4)
Current Store : [0x800005c0] : sw t6, 232(a4) -- Store: [0x800023d0]:0xFFBFFFFF




Last Coverpoint : ['rs2_w0_val == 1073741824']
Last Code Sequence : 
	-[0x800005b8]:UKMAR64 t5, t6, t4
	-[0x800005bc]:sw t5, 228(a4)
Current Store : [0x800005c8] : sw t6, 236(a4) -- Store: [0x800023d4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 536870912', 'rs1_w0_val == 4294967167']
Last Code Sequence : 
	-[0x800005d4]:UKMAR64 t5, t6, t4
	-[0x800005d8]:sw t5, 240(a4)
Current Store : [0x800005dc] : sw t6, 244(a4) -- Store: [0x800023dc]:0xFFFFFF7F




Last Coverpoint : ['rs2_w0_val == 536870912', 'rs1_w0_val == 4294967167']
Last Code Sequence : 
	-[0x800005d4]:UKMAR64 t5, t6, t4
	-[0x800005d8]:sw t5, 240(a4)
Current Store : [0x800005e4] : sw t6, 248(a4) -- Store: [0x800023e0]:0x00000001




Last Coverpoint : ['rs2_w0_val == 268435456']
Last Code Sequence : 
	-[0x800005f0]:UKMAR64 t5, t6, t4
	-[0x800005f4]:sw t5, 252(a4)
Current Store : [0x800005f8] : sw t6, 256(a4) -- Store: [0x800023e8]:0x00002000




Last Coverpoint : ['rs2_w0_val == 268435456']
Last Code Sequence : 
	-[0x800005f0]:UKMAR64 t5, t6, t4
	-[0x800005f4]:sw t5, 252(a4)
Current Store : [0x80000600] : sw t6, 260(a4) -- Store: [0x800023ec]:0x00000001




Last Coverpoint : ['rs2_w0_val == 134217728', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x8000060c]:UKMAR64 t5, t6, t4
	-[0x80000610]:sw t5, 264(a4)
Current Store : [0x80000614] : sw t6, 268(a4) -- Store: [0x800023f4]:0x00004000




Last Coverpoint : ['rs2_w0_val == 134217728', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x8000060c]:UKMAR64 t5, t6, t4
	-[0x80000610]:sw t5, 264(a4)
Current Store : [0x8000061c] : sw t6, 272(a4) -- Store: [0x800023f8]:0x00000001




Last Coverpoint : ['rs2_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000628]:UKMAR64 t5, t6, t4
	-[0x8000062c]:sw t5, 276(a4)
Current Store : [0x80000630] : sw t6, 280(a4) -- Store: [0x80002400]:0xFFFFFFBF




Last Coverpoint : ['rs2_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000628]:UKMAR64 t5, t6, t4
	-[0x8000062c]:sw t5, 276(a4)
Current Store : [0x80000638] : sw t6, 284(a4) -- Store: [0x80002404]:0x00000001




Last Coverpoint : ['rs2_w0_val == 33554432', 'rs1_w0_val == 4294963199']
Last Code Sequence : 
	-[0x80000648]:UKMAR64 t5, t6, t4
	-[0x8000064c]:sw t5, 288(a4)
Current Store : [0x80000650] : sw t6, 292(a4) -- Store: [0x8000240c]:0xFFFFEFFF




Last Coverpoint : ['rs2_w0_val == 33554432', 'rs1_w0_val == 4294963199']
Last Code Sequence : 
	-[0x80000648]:UKMAR64 t5, t6, t4
	-[0x8000064c]:sw t5, 288(a4)
Current Store : [0x80000658] : sw t6, 296(a4) -- Store: [0x80002410]:0x00000001




Last Coverpoint : ['rs2_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000664]:UKMAR64 t5, t6, t4
	-[0x80000668]:sw t5, 300(a4)
Current Store : [0x8000066c] : sw t6, 304(a4) -- Store: [0x80002418]:0x00000009




Last Coverpoint : ['rs2_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000664]:UKMAR64 t5, t6, t4
	-[0x80000668]:sw t5, 300(a4)
Current Store : [0x80000674] : sw t6, 308(a4) -- Store: [0x8000241c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000680]:UKMAR64 t5, t6, t4
	-[0x80000684]:sw t5, 312(a4)
Current Store : [0x80000688] : sw t6, 316(a4) -- Store: [0x80002424]:0x00000012




Last Coverpoint : ['rs2_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000680]:UKMAR64 t5, t6, t4
	-[0x80000684]:sw t5, 312(a4)
Current Store : [0x80000690] : sw t6, 320(a4) -- Store: [0x80002428]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4194304', 'rs1_w0_val == 3221225471']
Last Code Sequence : 
	-[0x800006a0]:UKMAR64 t5, t6, t4
	-[0x800006a4]:sw t5, 324(a4)
Current Store : [0x800006a8] : sw t6, 328(a4) -- Store: [0x80002430]:0xBFFFFFFF




Last Coverpoint : ['rs2_w0_val == 4194304', 'rs1_w0_val == 3221225471']
Last Code Sequence : 
	-[0x800006a0]:UKMAR64 t5, t6, t4
	-[0x800006a4]:sw t5, 324(a4)
Current Store : [0x800006b0] : sw t6, 332(a4) -- Store: [0x80002434]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1048576', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x800006bc]:UKMAR64 t5, t6, t4
	-[0x800006c0]:sw t5, 336(a4)
Current Store : [0x800006c4] : sw t6, 340(a4) -- Store: [0x8000243c]:0x00000100




Last Coverpoint : ['rs2_w0_val == 1048576', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x800006bc]:UKMAR64 t5, t6, t4
	-[0x800006c0]:sw t5, 336(a4)
Current Store : [0x800006cc] : sw t6, 344(a4) -- Store: [0x80002440]:0x00000001




Last Coverpoint : ['rs1_w0_val == 128']
Last Code Sequence : 
	-[0x800006dc]:UKMAR64 t5, t6, t4
	-[0x800006e0]:sw t5, 348(a4)
Current Store : [0x800006e4] : sw t6, 352(a4) -- Store: [0x80002448]:0x00000080




Last Coverpoint : ['rs1_w0_val == 128']
Last Code Sequence : 
	-[0x800006dc]:UKMAR64 t5, t6, t4
	-[0x800006e0]:sw t5, 348(a4)
Current Store : [0x800006ec] : sw t6, 356(a4) -- Store: [0x8000244c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 64']
Last Code Sequence : 
	-[0x800006f8]:UKMAR64 t5, t6, t4
	-[0x800006fc]:sw t5, 360(a4)
Current Store : [0x80000700] : sw t6, 364(a4) -- Store: [0x80002454]:0x00000040




Last Coverpoint : ['rs1_w0_val == 64']
Last Code Sequence : 
	-[0x800006f8]:UKMAR64 t5, t6, t4
	-[0x800006fc]:sw t5, 360(a4)
Current Store : [0x80000708] : sw t6, 368(a4) -- Store: [0x80002458]:0x00000001




Last Coverpoint : ['rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000714]:UKMAR64 t5, t6, t4
	-[0x80000718]:sw t5, 372(a4)
Current Store : [0x8000071c] : sw t6, 376(a4) -- Store: [0x80002460]:0x00000010




Last Coverpoint : ['rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000714]:UKMAR64 t5, t6, t4
	-[0x80000718]:sw t5, 372(a4)
Current Store : [0x80000724] : sw t6, 380(a4) -- Store: [0x80002464]:0x00000001




Last Coverpoint : ['rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000730]:UKMAR64 t5, t6, t4
	-[0x80000734]:sw t5, 384(a4)
Current Store : [0x80000738] : sw t6, 388(a4) -- Store: [0x8000246c]:0x00000008




Last Coverpoint : ['rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000730]:UKMAR64 t5, t6, t4
	-[0x80000734]:sw t5, 384(a4)
Current Store : [0x80000740] : sw t6, 392(a4) -- Store: [0x80002470]:0x00000001




Last Coverpoint : ['rs2_w0_val == 8', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x8000074c]:UKMAR64 t5, t6, t4
	-[0x80000750]:sw t5, 396(a4)
Current Store : [0x80000754] : sw t6, 400(a4) -- Store: [0x80002478]:0x00000004




Last Coverpoint : ['rs2_w0_val == 8', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x8000074c]:UKMAR64 t5, t6, t4
	-[0x80000750]:sw t5, 396(a4)
Current Store : [0x8000075c] : sw t6, 404(a4) -- Store: [0x8000247c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000768]:UKMAR64 t5, t6, t4
	-[0x8000076c]:sw t5, 408(a4)
Current Store : [0x80000770] : sw t6, 412(a4) -- Store: [0x80002484]:0x00000002




Last Coverpoint : ['rs2_w0_val == 4', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000768]:UKMAR64 t5, t6, t4
	-[0x8000076c]:sw t5, 408(a4)
Current Store : [0x80000778] : sw t6, 416(a4) -- Store: [0x80002488]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294967295']
Last Code Sequence : 
	-[0x80000788]:UKMAR64 t5, t6, t4
	-[0x8000078c]:sw t5, 420(a4)
Current Store : [0x80000790] : sw t6, 424(a4) -- Store: [0x80002490]:0xFFFFFFFF




Last Coverpoint : ['rs1_w0_val == 4294967295']
Last Code Sequence : 
	-[0x80000788]:UKMAR64 t5, t6, t4
	-[0x8000078c]:sw t5, 420(a4)
Current Store : [0x80000798] : sw t6, 428(a4) -- Store: [0x80002494]:0x00000001




Last Coverpoint : ['rs2_w0_val == 2097152', 'rs1_w0_val == 4294901759']
Last Code Sequence : 
	-[0x800007a8]:UKMAR64 t5, t6, t4
	-[0x800007ac]:sw t5, 432(a4)
Current Store : [0x800007b0] : sw t6, 436(a4) -- Store: [0x8000249c]:0xFFFEFFFF




Last Coverpoint : ['rs2_w0_val == 2097152', 'rs1_w0_val == 4294901759']
Last Code Sequence : 
	-[0x800007a8]:UKMAR64 t5, t6, t4
	-[0x800007ac]:sw t5, 432(a4)
Current Store : [0x800007b8] : sw t6, 440(a4) -- Store: [0x800024a0]:0x00000001




Last Coverpoint : ['rs2_w0_val == 524288']
Last Code Sequence : 
	-[0x800007c4]:UKMAR64 t5, t6, t4
	-[0x800007c8]:sw t5, 444(a4)
Current Store : [0x800007cc] : sw t6, 448(a4) -- Store: [0x800024a8]:0x00000010




Last Coverpoint : ['rs2_w0_val == 524288']
Last Code Sequence : 
	-[0x800007c4]:UKMAR64 t5, t6, t4
	-[0x800007c8]:sw t5, 444(a4)
Current Store : [0x800007d4] : sw t6, 452(a4) -- Store: [0x800024ac]:0x00000001




Last Coverpoint : ['rs2_w0_val == 262144']
Last Code Sequence : 
	-[0x800007e4]:UKMAR64 t5, t6, t4
	-[0x800007e8]:sw t5, 456(a4)
Current Store : [0x800007ec] : sw t6, 460(a4) -- Store: [0x800024b4]:0xFFBFFFFF




Last Coverpoint : ['rs2_w0_val == 262144']
Last Code Sequence : 
	-[0x800007e4]:UKMAR64 t5, t6, t4
	-[0x800007e8]:sw t5, 456(a4)
Current Store : [0x800007f4] : sw t6, 464(a4) -- Store: [0x800024b8]:0x00000001




Last Coverpoint : ['rs2_w0_val == 131072']
Last Code Sequence : 
	-[0x80000800]:UKMAR64 t5, t6, t4
	-[0x80000804]:sw t5, 468(a4)
Current Store : [0x80000808] : sw t6, 472(a4) -- Store: [0x800024c0]:0x0000000D




Last Coverpoint : ['rs2_w0_val == 131072']
Last Code Sequence : 
	-[0x80000800]:UKMAR64 t5, t6, t4
	-[0x80000804]:sw t5, 468(a4)
Current Store : [0x80000810] : sw t6, 476(a4) -- Store: [0x800024c4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 65536']
Last Code Sequence : 
	-[0x8000081c]:UKMAR64 t5, t6, t4
	-[0x80000820]:sw t5, 480(a4)
Current Store : [0x80000824] : sw t6, 484(a4) -- Store: [0x800024cc]:0xFFFFFFBF




Last Coverpoint : ['rs2_w0_val == 65536']
Last Code Sequence : 
	-[0x8000081c]:UKMAR64 t5, t6, t4
	-[0x80000820]:sw t5, 480(a4)
Current Store : [0x8000082c] : sw t6, 488(a4) -- Store: [0x800024d0]:0x00000001




Last Coverpoint : ['rs2_w0_val == 32768', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000838]:UKMAR64 t5, t6, t4
	-[0x8000083c]:sw t5, 492(a4)
Current Store : [0x80000840] : sw t6, 496(a4) -- Store: [0x800024d8]:0x00100000




Last Coverpoint : ['rs2_w0_val == 32768', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000838]:UKMAR64 t5, t6, t4
	-[0x8000083c]:sw t5, 492(a4)
Current Store : [0x80000848] : sw t6, 500(a4) -- Store: [0x800024dc]:0x00000001




Last Coverpoint : ['rs2_w0_val == 16384']
Last Code Sequence : 
	-[0x80000858]:UKMAR64 t5, t6, t4
	-[0x8000085c]:sw t5, 504(a4)
Current Store : [0x80000860] : sw t6, 508(a4) -- Store: [0x800024e4]:0xFFFEFFFF




Last Coverpoint : ['rs2_w0_val == 16384']
Last Code Sequence : 
	-[0x80000858]:UKMAR64 t5, t6, t4
	-[0x8000085c]:sw t5, 504(a4)
Current Store : [0x80000868] : sw t6, 512(a4) -- Store: [0x800024e8]:0x00000001




Last Coverpoint : ['rs2_w0_val == 8192']
Last Code Sequence : 
	-[0x80000874]:UKMAR64 t5, t6, t4
	-[0x80000878]:sw t5, 516(a4)
Current Store : [0x8000087c] : sw t6, 520(a4) -- Store: [0x800024f0]:0x00000004




Last Coverpoint : ['rs2_w0_val == 8192']
Last Code Sequence : 
	-[0x80000874]:UKMAR64 t5, t6, t4
	-[0x80000878]:sw t5, 516(a4)
Current Store : [0x80000884] : sw t6, 524(a4) -- Store: [0x800024f4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4096']
Last Code Sequence : 
	-[0x80000890]:UKMAR64 t5, t6, t4
	-[0x80000894]:sw t5, 528(a4)
Current Store : [0x80000898] : sw t6, 532(a4) -- Store: [0x800024fc]:0x00004000




Last Coverpoint : ['rs2_w0_val == 4096']
Last Code Sequence : 
	-[0x80000890]:UKMAR64 t5, t6, t4
	-[0x80000894]:sw t5, 528(a4)
Current Store : [0x800008a0] : sw t6, 536(a4) -- Store: [0x80002500]:0x00000001




Last Coverpoint : ['rs2_w0_val == 2048']
Last Code Sequence : 
	-[0x800008b0]:UKMAR64 t5, t6, t4
	-[0x800008b4]:sw t5, 540(a4)
Current Store : [0x800008b8] : sw t6, 544(a4) -- Store: [0x80002508]:0x00000000




Last Coverpoint : ['rs2_w0_val == 2048']
Last Code Sequence : 
	-[0x800008b0]:UKMAR64 t5, t6, t4
	-[0x800008b4]:sw t5, 540(a4)
Current Store : [0x800008c0] : sw t6, 548(a4) -- Store: [0x8000250c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1024']
Last Code Sequence : 
	-[0x800008d0]:UKMAR64 t5, t6, t4
	-[0x800008d4]:sw t5, 552(a4)
Current Store : [0x800008d8] : sw t6, 556(a4) -- Store: [0x80002514]:0xFFFFDFFF




Last Coverpoint : ['rs2_w0_val == 1024']
Last Code Sequence : 
	-[0x800008d0]:UKMAR64 t5, t6, t4
	-[0x800008d4]:sw t5, 552(a4)
Current Store : [0x800008e0] : sw t6, 560(a4) -- Store: [0x80002518]:0x00000001




Last Coverpoint : ['rs2_w0_val == 512']
Last Code Sequence : 
	-[0x800008ec]:UKMAR64 t5, t6, t4
	-[0x800008f0]:sw t5, 564(a4)
Current Store : [0x800008f4] : sw t6, 568(a4) -- Store: [0x80002520]:0x0000000D




Last Coverpoint : ['rs2_w0_val == 512']
Last Code Sequence : 
	-[0x800008ec]:UKMAR64 t5, t6, t4
	-[0x800008f0]:sw t5, 564(a4)
Current Store : [0x800008fc] : sw t6, 572(a4) -- Store: [0x80002524]:0x00000001




Last Coverpoint : ['rs2_w0_val == 256']
Last Code Sequence : 
	-[0x80000908]:UKMAR64 t5, t6, t4
	-[0x8000090c]:sw t5, 576(a4)
Current Store : [0x80000910] : sw t6, 580(a4) -- Store: [0x8000252c]:0x10000000




Last Coverpoint : ['rs2_w0_val == 256']
Last Code Sequence : 
	-[0x80000908]:UKMAR64 t5, t6, t4
	-[0x8000090c]:sw t5, 576(a4)
Current Store : [0x80000918] : sw t6, 584(a4) -- Store: [0x80002530]:0x00000001




Last Coverpoint : ['rs2_w0_val == 128']
Last Code Sequence : 
	-[0x80000924]:UKMAR64 t5, t6, t4
	-[0x80000928]:sw t5, 588(a4)
Current Store : [0x8000092c] : sw t6, 592(a4) -- Store: [0x80002538]:0x00010000




Last Coverpoint : ['rs2_w0_val == 128']
Last Code Sequence : 
	-[0x80000924]:UKMAR64 t5, t6, t4
	-[0x80000928]:sw t5, 588(a4)
Current Store : [0x80000934] : sw t6, 596(a4) -- Store: [0x8000253c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 64']
Last Code Sequence : 
	-[0x80000940]:UKMAR64 t5, t6, t4
	-[0x80000944]:sw t5, 600(a4)
Current Store : [0x80000948] : sw t6, 604(a4) -- Store: [0x80002544]:0x00000000




Last Coverpoint : ['rs2_w0_val == 64']
Last Code Sequence : 
	-[0x80000940]:UKMAR64 t5, t6, t4
	-[0x80000944]:sw t5, 600(a4)
Current Store : [0x80000950] : sw t6, 608(a4) -- Store: [0x80002548]:0x00000001




Last Coverpoint : ['rs2_w0_val == 16', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x8000095c]:UKMAR64 t5, t6, t4
	-[0x80000960]:sw t5, 612(a4)
Current Store : [0x80000964] : sw t6, 616(a4) -- Store: [0x80002550]:0x04000000




Last Coverpoint : ['rs2_w0_val == 16', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x8000095c]:UKMAR64 t5, t6, t4
	-[0x80000960]:sw t5, 612(a4)
Current Store : [0x8000096c] : sw t6, 620(a4) -- Store: [0x80002554]:0x00000001




Last Coverpoint : ['rs2_w0_val == 2']
Last Code Sequence : 
	-[0x8000097c]:UKMAR64 t5, t6, t4
	-[0x80000980]:sw t5, 624(a4)
Current Store : [0x80000984] : sw t6, 628(a4) -- Store: [0x8000255c]:0x7FFFFFFF




Last Coverpoint : ['rs2_w0_val == 2']
Last Code Sequence : 
	-[0x8000097c]:UKMAR64 t5, t6, t4
	-[0x80000980]:sw t5, 624(a4)
Current Store : [0x8000098c] : sw t6, 632(a4) -- Store: [0x80002560]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1']
Last Code Sequence : 
	-[0x8000099c]:UKMAR64 t5, t6, t4
	-[0x800009a0]:sw t5, 636(a4)
Current Store : [0x800009a4] : sw t6, 640(a4) -- Store: [0x80002568]:0xFFFF7FFF




Last Coverpoint : ['rs2_w0_val == 1']
Last Code Sequence : 
	-[0x8000099c]:UKMAR64 t5, t6, t4
	-[0x800009a0]:sw t5, 636(a4)
Current Store : [0x800009ac] : sw t6, 644(a4) -- Store: [0x8000256c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4294967295', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x800009b8]:UKMAR64 t5, t6, t4
	-[0x800009bc]:sw t5, 648(a4)
Current Store : [0x800009c0] : sw t6, 652(a4) -- Store: [0x80002574]:0x00200000




Last Coverpoint : ['rs2_w0_val == 4294967295', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x800009b8]:UKMAR64 t5, t6, t4
	-[0x800009bc]:sw t5, 648(a4)
Current Store : [0x800009c8] : sw t6, 656(a4) -- Store: [0x80002578]:0x00000001




Last Coverpoint : ['opcode : ukmar64', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w0_val == 0', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x800009d4]:UKMAR64 t5, t6, t4
	-[0x800009d8]:sw t5, 660(a4)
Current Store : [0x800009dc] : sw t6, 664(a4) -- Store: [0x80002580]:0x10000000




Last Coverpoint : ['opcode : ukmar64', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w0_val == 0', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x800009d4]:UKMAR64 t5, t6, t4
	-[0x800009d8]:sw t5, 660(a4)
Current Store : [0x800009e4] : sw t6, 668(a4) -- Store: [0x80002584]:0x00000001




Last Coverpoint : ['rs1_w0_val == 2863311530']
Last Code Sequence : 
	-[0x800009f4]:UKMAR64 t5, t6, t4
	-[0x800009f8]:sw t5, 672(a4)
Current Store : [0x800009fc] : sw t6, 676(a4) -- Store: [0x8000258c]:0xAAAAAAAA




Last Coverpoint : ['rs1_w0_val == 2863311530']
Last Code Sequence : 
	-[0x800009f4]:UKMAR64 t5, t6, t4
	-[0x800009f8]:sw t5, 672(a4)
Current Store : [0x80000a04] : sw t6, 680(a4) -- Store: [0x80002590]:0x00000001




Last Coverpoint : ['rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000a14]:UKMAR64 t5, t6, t4
	-[0x80000a18]:sw t5, 684(a4)
Current Store : [0x80000a1c] : sw t6, 688(a4) -- Store: [0x80002598]:0x55555555




Last Coverpoint : ['rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000a14]:UKMAR64 t5, t6, t4
	-[0x80000a18]:sw t5, 684(a4)
Current Store : [0x80000a24] : sw t6, 692(a4) -- Store: [0x8000259c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 3758096383']
Last Code Sequence : 
	-[0x80000a34]:UKMAR64 t5, t6, t4
	-[0x80000a38]:sw t5, 696(a4)
Current Store : [0x80000a3c] : sw t6, 700(a4) -- Store: [0x800025a4]:0xDFFFFFFF




Last Coverpoint : ['rs1_w0_val == 3758096383']
Last Code Sequence : 
	-[0x80000a34]:UKMAR64 t5, t6, t4
	-[0x80000a38]:sw t5, 696(a4)
Current Store : [0x80000a44] : sw t6, 704(a4) -- Store: [0x800025a8]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4026531839']
Last Code Sequence : 
	-[0x80000a54]:UKMAR64 t5, t6, t4
	-[0x80000a58]:sw t5, 708(a4)
Current Store : [0x80000a5c] : sw t6, 712(a4) -- Store: [0x800025b0]:0xEFFFFFFF




Last Coverpoint : ['rs1_w0_val == 4026531839']
Last Code Sequence : 
	-[0x80000a54]:UKMAR64 t5, t6, t4
	-[0x80000a58]:sw t5, 708(a4)
Current Store : [0x80000a64] : sw t6, 716(a4) -- Store: [0x800025b4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4160749567']
Last Code Sequence : 
	-[0x80000a74]:UKMAR64 t5, t6, t4
	-[0x80000a78]:sw t5, 720(a4)
Current Store : [0x80000a7c] : sw t6, 724(a4) -- Store: [0x800025bc]:0xF7FFFFFF




Last Coverpoint : ['rs1_w0_val == 4160749567']
Last Code Sequence : 
	-[0x80000a74]:UKMAR64 t5, t6, t4
	-[0x80000a78]:sw t5, 720(a4)
Current Store : [0x80000a84] : sw t6, 728(a4) -- Store: [0x800025c0]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4278190079']
Last Code Sequence : 
	-[0x80000a94]:UKMAR64 t5, t6, t4
	-[0x80000a98]:sw t5, 732(a4)
Current Store : [0x80000a9c] : sw t6, 736(a4) -- Store: [0x800025c8]:0xFEFFFFFF




Last Coverpoint : ['rs1_w0_val == 4278190079']
Last Code Sequence : 
	-[0x80000a94]:UKMAR64 t5, t6, t4
	-[0x80000a98]:sw t5, 732(a4)
Current Store : [0x80000aa4] : sw t6, 740(a4) -- Store: [0x800025cc]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4286578687']
Last Code Sequence : 
	-[0x80000ab4]:UKMAR64 t5, t6, t4
	-[0x80000ab8]:sw t5, 744(a4)
Current Store : [0x80000abc] : sw t6, 748(a4) -- Store: [0x800025d4]:0xFF7FFFFF




Last Coverpoint : ['rs1_w0_val == 4286578687']
Last Code Sequence : 
	-[0x80000ab4]:UKMAR64 t5, t6, t4
	-[0x80000ab8]:sw t5, 744(a4)
Current Store : [0x80000ac4] : sw t6, 752(a4) -- Store: [0x800025d8]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294443007']
Last Code Sequence : 
	-[0x80000ad8]:UKMAR64 t5, t6, t4
	-[0x80000adc]:sw t5, 756(a4)
Current Store : [0x80000ae0] : sw t6, 760(a4) -- Store: [0x800025e0]:0xFFF7FFFF




Last Coverpoint : ['rs1_w0_val == 4294443007']
Last Code Sequence : 
	-[0x80000ad8]:UKMAR64 t5, t6, t4
	-[0x80000adc]:sw t5, 756(a4)
Current Store : [0x80000ae8] : sw t6, 764(a4) -- Store: [0x800025e4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294705151']
Last Code Sequence : 
	-[0x80000af8]:UKMAR64 t5, t6, t4
	-[0x80000afc]:sw t5, 768(a4)
Current Store : [0x80000b00] : sw t6, 772(a4) -- Store: [0x800025ec]:0xFFFBFFFF




Last Coverpoint : ['rs1_w0_val == 4294705151']
Last Code Sequence : 
	-[0x80000af8]:UKMAR64 t5, t6, t4
	-[0x80000afc]:sw t5, 768(a4)
Current Store : [0x80000b08] : sw t6, 776(a4) -- Store: [0x800025f0]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294836223']
Last Code Sequence : 
	-[0x80000b18]:UKMAR64 t5, t6, t4
	-[0x80000b1c]:sw t5, 780(a4)
Current Store : [0x80000b20] : sw t6, 784(a4) -- Store: [0x800025f8]:0xFFFDFFFF




Last Coverpoint : ['rs1_w0_val == 4294836223']
Last Code Sequence : 
	-[0x80000b18]:UKMAR64 t5, t6, t4
	-[0x80000b1c]:sw t5, 780(a4)
Current Store : [0x80000b28] : sw t6, 788(a4) -- Store: [0x800025fc]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294965247']
Last Code Sequence : 
	-[0x80000b3c]:UKMAR64 t5, t6, t4
	-[0x80000b40]:sw t5, 792(a4)
Current Store : [0x80000b44] : sw t6, 796(a4) -- Store: [0x80002604]:0xFFFFF7FF




Last Coverpoint : ['rs1_w0_val == 4294965247']
Last Code Sequence : 
	-[0x80000b3c]:UKMAR64 t5, t6, t4
	-[0x80000b40]:sw t5, 792(a4)
Current Store : [0x80000b4c] : sw t6, 800(a4) -- Store: [0x80002608]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294966271']
Last Code Sequence : 
	-[0x80000b58]:UKMAR64 t5, t6, t4
	-[0x80000b5c]:sw t5, 804(a4)
Current Store : [0x80000b60] : sw t6, 808(a4) -- Store: [0x80002610]:0xFFFFFBFF




Last Coverpoint : ['rs1_w0_val == 4294966271']
Last Code Sequence : 
	-[0x80000b58]:UKMAR64 t5, t6, t4
	-[0x80000b5c]:sw t5, 804(a4)
Current Store : [0x80000b68] : sw t6, 812(a4) -- Store: [0x80002614]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294967039']
Last Code Sequence : 
	-[0x80000b74]:UKMAR64 t5, t6, t4
	-[0x80000b78]:sw t5, 816(a4)
Current Store : [0x80000b7c] : sw t6, 820(a4) -- Store: [0x8000261c]:0xFFFFFEFF




Last Coverpoint : ['rs1_w0_val == 4294967039']
Last Code Sequence : 
	-[0x80000b74]:UKMAR64 t5, t6, t4
	-[0x80000b78]:sw t5, 816(a4)
Current Store : [0x80000b84] : sw t6, 824(a4) -- Store: [0x80002620]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294967263']
Last Code Sequence : 
	-[0x80000b94]:UKMAR64 t5, t6, t4
	-[0x80000b98]:sw t5, 828(a4)
Current Store : [0x80000b9c] : sw t6, 832(a4) -- Store: [0x80002628]:0xFFFFFFDF




Last Coverpoint : ['rs1_w0_val == 4294967263']
Last Code Sequence : 
	-[0x80000b94]:UKMAR64 t5, t6, t4
	-[0x80000b98]:sw t5, 828(a4)
Current Store : [0x80000ba4] : sw t6, 836(a4) -- Store: [0x8000262c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294967287']
Last Code Sequence : 
	-[0x80000bb0]:UKMAR64 t5, t6, t4
	-[0x80000bb4]:sw t5, 840(a4)
Current Store : [0x80000bb8] : sw t6, 844(a4) -- Store: [0x80002634]:0xFFFFFFF7




Last Coverpoint : ['rs1_w0_val == 4294967287']
Last Code Sequence : 
	-[0x80000bb0]:UKMAR64 t5, t6, t4
	-[0x80000bb4]:sw t5, 840(a4)
Current Store : [0x80000bc0] : sw t6, 848(a4) -- Store: [0x80002638]:0x00000001




Last Coverpoint : ['rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80000bcc]:UKMAR64 t5, t6, t4
	-[0x80000bd0]:sw t5, 852(a4)
Current Store : [0x80000bd4] : sw t6, 856(a4) -- Store: [0x80002640]:0x40000000




Last Coverpoint : ['rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80000bcc]:UKMAR64 t5, t6, t4
	-[0x80000bd0]:sw t5, 852(a4)
Current Store : [0x80000bdc] : sw t6, 860(a4) -- Store: [0x80002644]:0x00000001




Last Coverpoint : ['rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000be8]:UKMAR64 t5, t6, t4
	-[0x80000bec]:sw t5, 864(a4)
Current Store : [0x80000bf0] : sw t6, 868(a4) -- Store: [0x8000264c]:0x20000000




Last Coverpoint : ['rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000be8]:UKMAR64 t5, t6, t4
	-[0x80000bec]:sw t5, 864(a4)
Current Store : [0x80000bf8] : sw t6, 872(a4) -- Store: [0x80002650]:0x00000001




Last Coverpoint : ['rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000c04]:UKMAR64 t5, t6, t4
	-[0x80000c08]:sw t5, 876(a4)
Current Store : [0x80000c0c] : sw t6, 880(a4) -- Store: [0x80002658]:0x02000000




Last Coverpoint : ['rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000c04]:UKMAR64 t5, t6, t4
	-[0x80000c08]:sw t5, 876(a4)
Current Store : [0x80000c14] : sw t6, 884(a4) -- Store: [0x8000265c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000c24]:UKMAR64 t5, t6, t4
	-[0x80000c28]:sw t5, 888(a4)
Current Store : [0x80000c2c] : sw t6, 892(a4) -- Store: [0x80002664]:0x00800000




Last Coverpoint : ['rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000c24]:UKMAR64 t5, t6, t4
	-[0x80000c28]:sw t5, 888(a4)
Current Store : [0x80000c34] : sw t6, 896(a4) -- Store: [0x80002668]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000c40]:UKMAR64 t5, t6, t4
	-[0x80000c44]:sw t5, 900(a4)
Current Store : [0x80000c48] : sw t6, 904(a4) -- Store: [0x80002670]:0x00400000




Last Coverpoint : ['rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000c40]:UKMAR64 t5, t6, t4
	-[0x80000c44]:sw t5, 900(a4)
Current Store : [0x80000c50] : sw t6, 908(a4) -- Store: [0x80002674]:0x00000001




Last Coverpoint : ['rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000c60]:UKMAR64 t5, t6, t4
	-[0x80000c64]:sw t5, 912(a4)
Current Store : [0x80000c68] : sw t6, 916(a4) -- Store: [0x8000267c]:0x00080000




Last Coverpoint : ['rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000c60]:UKMAR64 t5, t6, t4
	-[0x80000c64]:sw t5, 912(a4)
Current Store : [0x80000c70] : sw t6, 920(a4) -- Store: [0x80002680]:0x00000001




Last Coverpoint : ['rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000c7c]:UKMAR64 t5, t6, t4
	-[0x80000c80]:sw t5, 924(a4)
Current Store : [0x80000c84] : sw t6, 928(a4) -- Store: [0x80002688]:0x00040000




Last Coverpoint : ['rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000c7c]:UKMAR64 t5, t6, t4
	-[0x80000c80]:sw t5, 924(a4)
Current Store : [0x80000c8c] : sw t6, 932(a4) -- Store: [0x8000268c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000c98]:UKMAR64 t5, t6, t4
	-[0x80000c9c]:sw t5, 936(a4)
Current Store : [0x80000ca0] : sw t6, 940(a4) -- Store: [0x80002694]:0x00020000




Last Coverpoint : ['rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000c98]:UKMAR64 t5, t6, t4
	-[0x80000c9c]:sw t5, 936(a4)
Current Store : [0x80000ca8] : sw t6, 944(a4) -- Store: [0x80002698]:0x00000001




Last Coverpoint : ['rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000cb4]:UKMAR64 t5, t6, t4
	-[0x80000cb8]:sw t5, 948(a4)
Current Store : [0x80000cbc] : sw t6, 952(a4) -- Store: [0x800026a0]:0x00008000




Last Coverpoint : ['rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000cb4]:UKMAR64 t5, t6, t4
	-[0x80000cb8]:sw t5, 948(a4)
Current Store : [0x80000cc4] : sw t6, 956(a4) -- Store: [0x800026a4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000cd4]:UKMAR64 t5, t6, t4
	-[0x80000cd8]:sw t5, 960(a4)
Current Store : [0x80000cdc] : sw t6, 964(a4) -- Store: [0x800026ac]:0x00000800




Last Coverpoint : ['rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000cd4]:UKMAR64 t5, t6, t4
	-[0x80000cd8]:sw t5, 960(a4)
Current Store : [0x80000ce4] : sw t6, 968(a4) -- Store: [0x800026b0]:0x00000001




Last Coverpoint : ['rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000cf4]:UKMAR64 t5, t6, t4
	-[0x80000cf8]:sw t5, 972(a4)
Current Store : [0x80000cfc] : sw t6, 976(a4) -- Store: [0x800026b8]:0x00000400




Last Coverpoint : ['rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000cf4]:UKMAR64 t5, t6, t4
	-[0x80000cf8]:sw t5, 972(a4)
Current Store : [0x80000d04] : sw t6, 980(a4) -- Store: [0x800026bc]:0x00000001




Last Coverpoint : ['rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000d14]:UKMAR64 t5, t6, t4
	-[0x80000d18]:sw t5, 984(a4)
Current Store : [0x80000d1c] : sw t6, 988(a4) -- Store: [0x800026c4]:0x00000200




Last Coverpoint : ['rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000d14]:UKMAR64 t5, t6, t4
	-[0x80000d18]:sw t5, 984(a4)
Current Store : [0x80000d24] : sw t6, 992(a4) -- Store: [0x800026c8]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4294967294']
Last Code Sequence : 
	-[0x80000d34]:UKMAR64 t5, t6, t4
	-[0x80000d38]:sw t5, 996(a4)
Current Store : [0x80000d3c] : sw t6, 1000(a4) -- Store: [0x800026d0]:0xFFFFFFFE




Last Coverpoint : ['rs1_w0_val == 4294967294']
Last Code Sequence : 
	-[0x80000d34]:UKMAR64 t5, t6, t4
	-[0x80000d38]:sw t5, 996(a4)
Current Store : [0x80000d44] : sw t6, 1004(a4) -- Store: [0x800026d4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4294966271']
Last Code Sequence : 
	-[0x80000d50]:UKMAR64 t5, t6, t4
	-[0x80000d54]:sw t5, 1008(a4)
Current Store : [0x80000d58] : sw t6, 1012(a4) -- Store: [0x800026dc]:0x80000000




Last Coverpoint : ['rs2_w0_val == 4294966271']
Last Code Sequence : 
	-[0x80000d50]:UKMAR64 t5, t6, t4
	-[0x80000d54]:sw t5, 1008(a4)
Current Store : [0x80000d60] : sw t6, 1016(a4) -- Store: [0x800026e0]:0x00000001





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

|s.no|        signature         |                                                                                               coverpoints                                                                                               |                                code                                 |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0000000C|- opcode : ukmar64<br> - rs1 : x14<br> - rs2 : x14<br> - rd : x14<br> - rs1 == rs2 == rd<br> - rs1_w0_val == rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0<br>                                        |[0x80000114]:UKMAR64 a4, a4, a4<br> [0x80000118]:sw a4, 0(ra)<br>    |
|   2|[0x8000221c]<br>0xFFFFFFFF|- rs1 : x30<br> - rs2 : x30<br> - rd : x20<br> - rs1 == rs2 != rd<br> - rs2_w0_val == 4294966783<br> - rs1_w0_val == 4294966783<br>                                                                      |[0x80000130]:UKMAR64 s4, t5, t5<br> [0x80000134]:sw s4, 12(ra)<br>   |
|   3|[0x80002228]<br>0x5BFDDF7D|- rs1 : x19<br> - rs2 : x25<br> - rd : x8<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_w0_val == 32<br> - rs1_w0_val == 32<br>                                                                |[0x8000014c]:UKMAR64 fp, s3, s9<br> [0x80000150]:sw fp, 24(ra)<br>   |
|   4|[0x80002234]<br>0xFFFFFFFF|- rs1 : x29<br> - rs2 : x28<br> - rd : x28<br> - rs2 == rd != rs1<br> - rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w0_val == 2863311530<br> - rs1_w0_val == 4294967279<br> |[0x8000016c]:UKMAR64 t3, t4, t3<br> [0x80000170]:sw t3, 36(ra)<br>   |
|   5|[0x80002240]<br>0xFFFFFFFF|- rs1 : x22<br> - rs2 : x27<br> - rd : x22<br> - rs1 == rd != rs2<br> - rs2_w0_val == 1431655765<br> - rs1_w0_val == 4294967293<br>                                                                      |[0x8000018c]:UKMAR64 s6, s6, s11<br> [0x80000190]:sw s6, 48(ra)<br>  |
|   6|[0x8000224c]<br>0x5F56FF6B|- rs1 : x5<br> - rs2 : x26<br> - rd : x18<br> - rs2_w0_val == 2147483647<br>                                                                                                                             |[0x800001ac]:UKMAR64 s2, t0, s10<br> [0x800001b0]:sw s2, 60(ra)<br>  |
|   7|[0x80002258]<br>0xFFFFFFFF|- rs1 : x7<br> - rs2 : x6<br> - rd : x10<br> - rs2_w0_val == 3221225471<br> - rs1_w0_val == 4294967231<br>                                                                                               |[0x800001cc]:UKMAR64 a0, t2, t1<br> [0x800001d0]:sw a0, 72(ra)<br>   |
|   8|[0x80002264]<br>0xFFFFFFFF|- rs1 : x25<br> - rs2 : x18<br> - rd : x12<br> - rs2_w0_val == 3758096383<br> - rs1_w0_val == 2147483647<br>                                                                                             |[0x800001f0]:UKMAR64 a2, s9, s2<br> [0x800001f4]:sw a2, 84(ra)<br>   |
|   9|[0x80002270]<br>0x5FDDB7CF|- rs1 : x28<br> - rs2 : x23<br> - rd : x4<br> - rs2_w0_val == 4026531839<br>                                                                                                                             |[0x80000210]:UKMAR64 tp, t3, s7<br> [0x80000214]:sw tp, 96(ra)<br>   |
|  10|[0x8000227c]<br>0xFFFFFFFF|- rs1 : x17<br> - rs2 : x9<br> - rd : x30<br> - rs2_w0_val == 4160749567<br> - rs1_w0_val == 4294934527<br>                                                                                              |[0x80000234]:UKMAR64 t5, a7, s1<br> [0x80000238]:sw t5, 108(ra)<br>  |
|  11|[0x80002288]<br>0x6D5BFDDB|- rs1 : x27<br> - rs2 : x21<br> - rd : x16<br> - rs2_w0_val == 4227858431<br> - rs1_w0_val == 268435456<br>                                                                                              |[0x8000025c]:UKMAR64 a6, s11, s5<br> [0x80000260]:sw a6, 0(t0)<br>   |
|  12|[0x80002294]<br>0xFF76DF56|- rs1 : x0<br> - rs2 : x1<br> - rd : x2<br> - rs1_w0_val == 0<br> - rs2_w0_val == 4261412863<br>                                                                                                         |[0x8000027c]:UKMAR64 sp, zero, ra<br> [0x80000280]:sw sp, 12(t0)<br> |
|  13|[0x800022a0]<br>0x6EFFFFEE|- rs1 : x15<br> - rs2 : x16<br> - rd : x26<br> - rs2_w0_val == 4278190079<br>                                                                                                                            |[0x8000029c]:UKMAR64 s10, a5, a6<br> [0x800002a0]:sw s10, 24(t0)<br> |
|  14|[0x800022ac]<br>0xC0C00000|- rs1 : x4<br> - rs2 : x17<br> - rd : x6<br> - rs2_w0_val == 4286578687<br> - rs1_w0_val == 4290772991<br>                                                                                               |[0x800002c0]:UKMAR64 t1, tp, a7<br> [0x800002c4]:sw t1, 36(t0)<br>   |
|  15|[0x800022b8]<br>0xD37D5BFD|- rs1 : x9<br> - rs2 : x12<br> - rd : x24<br> - rs2_w0_val == 4290772991<br> - rs1_w0_val == 134217728<br>                                                                                               |[0x800002e0]:UKMAR64 s8, s1, a2<br> [0x800002e4]:sw s8, 48(t0)<br>   |
|  16|[0x800022c4]<br>0xFFFFFFFF|- rs1 : x26<br> - rs2 : x20<br> - rs2_w0_val == 4292870143<br> - rs1_w0_val == 65536<br>                                                                                                                 |[0x80000300]:UKMAR64 t5, s10, s4<br> [0x80000304]:sw t5, 60(t0)<br>  |
|  17|[0x800022d0]<br>0xFF000001|- rs1 : x31<br> - rs2 : x19<br> - rs2_w0_val == 4293918719<br> - rs1_w0_val == 16777216<br>                                                                                                              |[0x80000320]:UKMAR64 t3, t6, s3<br> [0x80000324]:sw t3, 72(t0)<br>   |
|  18|[0x800022dc]<br>0xFFFFFFFF|- rs1 : x23<br> - rs2 : x13<br> - rs2_w0_val == 4294443007<br>                                                                                                                                           |[0x80000340]:UKMAR64 a0, s7, a3<br> [0x80000344]:sw a0, 84(t0)<br>   |
|  19|[0x800022e8]<br>0xFFFFFFFF|- rs1 : x24<br> - rs2 : x7<br> - rs2_w0_val == 4294705151<br> - rs1_w0_val == 4096<br>                                                                                                                   |[0x80000368]:UKMAR64 a0, s8, t2<br> [0x8000036c]:sw a0, 0(a4)<br>    |
|  20|[0x800022f4]<br>0x5BD9DF6B|- rs1 : x13<br> - rs2 : x5<br> - rs2_w0_val == 4294836223<br>                                                                                                                                            |[0x80000388]:UKMAR64 fp, a3, t0<br> [0x8000038c]:sw fp, 12(a4)<br>   |
|  21|[0x80002300]<br>0xFFFFFFFF|- rs1 : x11<br> - rs2 : x29<br> - rs2_w0_val == 4294901759<br> - rs1_w0_val == 4292870143<br>                                                                                                            |[0x800003ac]:UKMAR64 t3, a1, t4<br> [0x800003b0]:sw t3, 24(a4)<br>   |
|  22|[0x8000230c]<br>0xFFF67FEC|- rs1 : x20<br> - rs2 : x4<br> - rs2_w0_val == 4294934527<br>                                                                                                                                            |[0x800003cc]:UKMAR64 t5, s4, tp<br> [0x800003d0]:sw t5, 36(a4)<br>   |
|  23|[0x80002318]<br>0x6BDA5F6C|- rs1 : x6<br> - rs2 : x15<br> - rs2_w0_val == 4294950911<br> - rs1_w0_val == 4294950911<br>                                                                                                             |[0x800003f0]:UKMAR64 fp, t1, a5<br> [0x800003f4]:sw fp, 48(a4)<br>   |
|  24|[0x80002324]<br>0xFF76BF55|- rs1 : x21<br> - rs2 : x24<br> - rs2_w0_val == 4294959103<br> - rs1_w0_val == 1<br>                                                                                                                     |[0x80000410]:UKMAR64 sp, s5, s8<br> [0x80000414]:sw sp, 60(a4)<br>   |
|  25|[0x80002330]<br>0xFFFFFFFF|- rs1 : x16<br> - rs2 : x10<br> - rs2_w0_val == 4294963199<br> - rs1_w0_val == 4261412863<br>                                                                                                            |[0x80000434]:UKMAR64 fp, a6, a0<br> [0x80000438]:sw fp, 72(a4)<br>   |
|  26|[0x8000233c]<br>0xFFFF97F4|- rs1 : x10<br> - rs2 : x3<br> - rs2_w0_val == 4294965247<br>                                                                                                                                            |[0x80000454]:UKMAR64 s4, a0, gp<br> [0x80000458]:sw s4, 84(a4)<br>   |
|  27|[0x80002348]<br>0xFFBFFFFF|- rs1 : x3<br> - rs2 : x0<br> - rs2_w0_val == 0<br> - rs1_w0_val == 2147483648<br>                                                                                                                       |[0x80000470]:UKMAR64 a2, gp, zero<br> [0x80000474]:sw a2, 96(a4)<br> |
|  28|[0x80002354]<br>0x03F680ED|- rs1 : x1<br> - rs2 : x11<br> - rs2_w0_val == 4294967039<br> - rs1_w0_val == 4227858431<br>                                                                                                             |[0x80000490]:UKMAR64 t5, ra, a1<br> [0x80000494]:sw t5, 108(a4)<br>  |
|  29|[0x80002360]<br>0xFFAFDFFF|- rs1 : x8<br> - rs2 : x31<br> - rs2_w0_val == 4294967167<br> - rs1_w0_val == 8192<br>                                                                                                                   |[0x800004ac]:UKMAR64 a2, fp, t6<br> [0x800004b0]:sw a2, 120(a4)<br>  |
|  30|[0x8000236c]<br>0xFFFFFFFF|- rs1 : x18<br> - rs2 : x22<br> - rs2_w0_val == 4294967231<br> - rs1_w0_val == 4294967291<br>                                                                                                            |[0x800004c8]:UKMAR64 t1, s2, s6<br> [0x800004cc]:sw t1, 132(a4)<br>  |
|  31|[0x80002378]<br>0xFFFFFFFF|- rs1 : x12<br> - rs2 : x2<br> - rs2_w0_val == 4294967263<br>                                                                                                                                            |[0x800004e8]:UKMAR64 fp, a2, sp<br> [0x800004ec]:sw fp, 144(a4)<br>  |
|  32|[0x80002384]<br>0x0001B805|- rs1 : x2<br> - rs2 : x8<br> - rs2_w0_val == 4294967279<br> - rs1_w0_val == 4294959103<br>                                                                                                              |[0x80000508]:UKMAR64 s4, sp, fp<br> [0x8000050c]:sw s4, 156(a4)<br>  |
|  33|[0x80002390]<br>0xFFFFFFFF|- rs2_w0_val == 4294967287<br>                                                                                                                                                                           |[0x80000524]:UKMAR64 t5, t6, t4<br> [0x80000528]:sw t5, 168(a4)<br>  |
|  34|[0x8000239c]<br>0xFFFFFFE6|- rs2_w0_val == 4294967291<br>                                                                                                                                                                           |[0x80000540]:UKMAR64 t5, t6, t4<br> [0x80000544]:sw t5, 180(a4)<br>  |
|  35|[0x800023a8]<br>0x7FFFFFE6|- rs2_w0_val == 4294967293<br>                                                                                                                                                                           |[0x8000055c]:UKMAR64 t5, t6, t4<br> [0x80000560]:sw t5, 192(a4)<br>  |
|  36|[0x800023b4]<br>0x7FFFFFC8|- rs2_w0_val == 4294967294<br>                                                                                                                                                                           |[0x80000578]:UKMAR64 t5, t6, t4<br> [0x8000057c]:sw t5, 204(a4)<br>  |
|  37|[0x800023c0]<br>0xFFFFFFFF|- rs2_w0_val == 2147483648<br> - rs1_w0_val == 4293918719<br>                                                                                                                                            |[0x80000598]:UKMAR64 t5, t6, t4<br> [0x8000059c]:sw t5, 216(a4)<br>  |
|  38|[0x800023cc]<br>0xFFFFFFFF|- rs2_w0_val == 1073741824<br>                                                                                                                                                                           |[0x800005b8]:UKMAR64 t5, t6, t4<br> [0x800005bc]:sw t5, 228(a4)<br>  |
|  39|[0x800023d8]<br>0xFFFFFFFF|- rs2_w0_val == 536870912<br> - rs1_w0_val == 4294967167<br>                                                                                                                                             |[0x800005d4]:UKMAR64 t5, t6, t4<br> [0x800005d8]:sw t5, 240(a4)<br>  |
|  40|[0x800023e4]<br>0xFFFFFFFF|- rs2_w0_val == 268435456<br>                                                                                                                                                                            |[0x800005f0]:UKMAR64 t5, t6, t4<br> [0x800005f4]:sw t5, 252(a4)<br>  |
|  41|[0x800023f0]<br>0xFFFFFFFF|- rs2_w0_val == 134217728<br> - rs1_w0_val == 16384<br>                                                                                                                                                  |[0x8000060c]:UKMAR64 t5, t6, t4<br> [0x80000610]:sw t5, 264(a4)<br>  |
|  42|[0x800023fc]<br>0xFFFFFFFF|- rs2_w0_val == 67108864<br>                                                                                                                                                                             |[0x80000628]:UKMAR64 t5, t6, t4<br> [0x8000062c]:sw t5, 276(a4)<br>  |
|  43|[0x80002408]<br>0xFFFFFFFF|- rs2_w0_val == 33554432<br> - rs1_w0_val == 4294963199<br>                                                                                                                                              |[0x80000648]:UKMAR64 t5, t6, t4<br> [0x8000064c]:sw t5, 288(a4)<br>  |
|  44|[0x80002414]<br>0x08FFFFFF|- rs2_w0_val == 16777216<br>                                                                                                                                                                             |[0x80000664]:UKMAR64 t5, t6, t4<br> [0x80000668]:sw t5, 300(a4)<br>  |
|  45|[0x80002420]<br>0x11FFFFFF|- rs2_w0_val == 8388608<br>                                                                                                                                                                              |[0x80000680]:UKMAR64 t5, t6, t4<br> [0x80000684]:sw t5, 312(a4)<br>  |
|  46|[0x8000242c]<br>0x11BFFFFF|- rs2_w0_val == 4194304<br> - rs1_w0_val == 3221225471<br>                                                                                                                                               |[0x800006a0]:UKMAR64 t5, t6, t4<br> [0x800006a4]:sw t5, 324(a4)<br>  |
|  47|[0x80002438]<br>0x21BFFFFF|- rs2_w0_val == 1048576<br> - rs1_w0_val == 256<br>                                                                                                                                                      |[0x800006bc]:UKMAR64 t5, t6, t4<br> [0x800006c0]:sw t5, 336(a4)<br>  |
|  48|[0x80002444]<br>0x19BFFF7F|- rs1_w0_val == 128<br>                                                                                                                                                                                  |[0x800006dc]:UKMAR64 t5, t6, t4<br> [0x800006e0]:sw t5, 348(a4)<br>  |
|  49|[0x80002450]<br>0x19C000BF|- rs1_w0_val == 64<br>                                                                                                                                                                                   |[0x800006f8]:UKMAR64 t5, t6, t4<br> [0x800006fc]:sw t5, 360(a4)<br>  |
|  50|[0x8000245c]<br>0x19BFFEAF|- rs1_w0_val == 16<br>                                                                                                                                                                                   |[0x80000714]:UKMAR64 t5, t6, t4<br> [0x80000718]:sw t5, 372(a4)<br>  |
|  51|[0x80002468]<br>0x19BFFF27|- rs1_w0_val == 8<br>                                                                                                                                                                                    |[0x80000730]:UKMAR64 t5, t6, t4<br> [0x80000734]:sw t5, 384(a4)<br>  |
|  52|[0x80002474]<br>0x19BFFF47|- rs2_w0_val == 8<br> - rs1_w0_val == 4<br>                                                                                                                                                              |[0x8000074c]:UKMAR64 t5, t6, t4<br> [0x80000750]:sw t5, 396(a4)<br>  |
|  53|[0x80002480]<br>0x19BFFF4F|- rs2_w0_val == 4<br> - rs1_w0_val == 2<br>                                                                                                                                                              |[0x80000768]:UKMAR64 t5, t6, t4<br> [0x8000076c]:sw t5, 408(a4)<br>  |
|  54|[0x8000248c]<br>0xFFFFFFFF|- rs1_w0_val == 4294967295<br>                                                                                                                                                                           |[0x80000788]:UKMAR64 t5, t6, t4<br> [0x8000078c]:sw t5, 420(a4)<br>  |
|  55|[0x80002498]<br>0xFFFFFFFF|- rs2_w0_val == 2097152<br> - rs1_w0_val == 4294901759<br>                                                                                                                                               |[0x800007a8]:UKMAR64 t5, t6, t4<br> [0x800007ac]:sw t5, 432(a4)<br>  |
|  56|[0x800024a4]<br>0x007FFFFF|- rs2_w0_val == 524288<br>                                                                                                                                                                               |[0x800007c4]:UKMAR64 t5, t6, t4<br> [0x800007c8]:sw t5, 444(a4)<br>  |
|  57|[0x800024b0]<br>0x007BFFFF|- rs2_w0_val == 262144<br>                                                                                                                                                                               |[0x800007e4]:UKMAR64 t5, t6, t4<br> [0x800007e8]:sw t5, 456(a4)<br>  |
|  58|[0x800024bc]<br>0x0095FFFF|- rs2_w0_val == 131072<br>                                                                                                                                                                               |[0x80000800]:UKMAR64 t5, t6, t4<br> [0x80000804]:sw t5, 468(a4)<br>  |
|  59|[0x800024c8]<br>0xFFFFFFFF|- rs2_w0_val == 65536<br>                                                                                                                                                                                |[0x8000081c]:UKMAR64 t5, t6, t4<br> [0x80000820]:sw t5, 480(a4)<br>  |
|  60|[0x800024d4]<br>0xFFFFFFFF|- rs2_w0_val == 32768<br> - rs1_w0_val == 1048576<br>                                                                                                                                                    |[0x80000838]:UKMAR64 t5, t6, t4<br> [0x8000083c]:sw t5, 492(a4)<br>  |
|  61|[0x800024e0]<br>0xBFFFBFFF|- rs2_w0_val == 16384<br>                                                                                                                                                                                |[0x80000858]:UKMAR64 t5, t6, t4<br> [0x8000085c]:sw t5, 504(a4)<br>  |
|  62|[0x800024ec]<br>0xC0003FFF|- rs2_w0_val == 8192<br>                                                                                                                                                                                 |[0x80000874]:UKMAR64 t5, t6, t4<br> [0x80000878]:sw t5, 516(a4)<br>  |
|  63|[0x800024f8]<br>0xC4003FFF|- rs2_w0_val == 4096<br>                                                                                                                                                                                 |[0x80000890]:UKMAR64 t5, t6, t4<br> [0x80000894]:sw t5, 528(a4)<br>  |
|  64|[0x80002504]<br>0xC4003FFF|- rs2_w0_val == 2048<br>                                                                                                                                                                                 |[0x800008b0]:UKMAR64 t5, t6, t4<br> [0x800008b4]:sw t5, 540(a4)<br>  |
|  65|[0x80002510]<br>0xC3803BFF|- rs2_w0_val == 1024<br>                                                                                                                                                                                 |[0x800008d0]:UKMAR64 t5, t6, t4<br> [0x800008d4]:sw t5, 552(a4)<br>  |
|  66|[0x8000251c]<br>0xC38055FF|- rs2_w0_val == 512<br>                                                                                                                                                                                  |[0x800008ec]:UKMAR64 t5, t6, t4<br> [0x800008f0]:sw t5, 564(a4)<br>  |
|  67|[0x80002528]<br>0xC38055FF|- rs2_w0_val == 256<br>                                                                                                                                                                                  |[0x80000908]:UKMAR64 t5, t6, t4<br> [0x8000090c]:sw t5, 576(a4)<br>  |
|  68|[0x80002534]<br>0xC40055FF|- rs2_w0_val == 128<br>                                                                                                                                                                                  |[0x80000924]:UKMAR64 t5, t6, t4<br> [0x80000928]:sw t5, 588(a4)<br>  |
|  69|[0x80002540]<br>0xC40055FF|- rs2_w0_val == 64<br>                                                                                                                                                                                   |[0x80000940]:UKMAR64 t5, t6, t4<br> [0x80000944]:sw t5, 600(a4)<br>  |
|  70|[0x8000254c]<br>0x040055FF|- rs2_w0_val == 16<br> - rs1_w0_val == 67108864<br>                                                                                                                                                      |[0x8000095c]:UKMAR64 t5, t6, t4<br> [0x80000960]:sw t5, 612(a4)<br>  |
|  71|[0x80002558]<br>0x040055FD|- rs2_w0_val == 2<br>                                                                                                                                                                                    |[0x8000097c]:UKMAR64 t5, t6, t4<br> [0x80000980]:sw t5, 624(a4)<br>  |
|  72|[0x80002564]<br>0x03FFD5FC|- rs2_w0_val == 1<br>                                                                                                                                                                                    |[0x8000099c]:UKMAR64 t5, t6, t4<br> [0x800009a0]:sw t5, 636(a4)<br>  |
|  73|[0x80002570]<br>0x03DFD5FC|- rs2_w0_val == 4294967295<br> - rs1_w0_val == 2097152<br>                                                                                                                                               |[0x800009b8]:UKMAR64 t5, t6, t4<br> [0x800009bc]:sw t5, 648(a4)<br>  |
|  74|[0x80002588]<br>0x43DFD5FC|- rs1_w0_val == 2863311530<br>                                                                                                                                                                           |[0x800009f4]:UKMAR64 t5, t6, t4<br> [0x800009f8]:sw t5, 672(a4)<br>  |
|  75|[0x80002594]<br>0x43DFD5FB|- rs1_w0_val == 1431655765<br>                                                                                                                                                                           |[0x80000a14]:UKMAR64 t5, t6, t4<br> [0x80000a18]:sw t5, 684(a4)<br>  |
|  76|[0x800025a0]<br>0x41DFD5FB|- rs1_w0_val == 3758096383<br>                                                                                                                                                                           |[0x80000a34]:UKMAR64 t5, t6, t4<br> [0x80000a38]:sw t5, 696(a4)<br>  |
|  77|[0x800025ac]<br>0x41DF95FB|- rs1_w0_val == 4026531839<br>                                                                                                                                                                           |[0x80000a54]:UKMAR64 t5, t6, t4<br> [0x80000a58]:sw t5, 708(a4)<br>  |
|  78|[0x800025b8]<br>0xFFFFFFFF|- rs1_w0_val == 4160749567<br>                                                                                                                                                                           |[0x80000a74]:UKMAR64 t5, t6, t4<br> [0x80000a78]:sw t5, 720(a4)<br>  |
|  79|[0x800025c4]<br>0xF7FFFFF7|- rs1_w0_val == 4278190079<br>                                                                                                                                                                           |[0x80000a94]:UKMAR64 t5, t6, t4<br> [0x80000a98]:sw t5, 732(a4)<br>  |
|  80|[0x800025d0]<br>0xEEFFFFE5|- rs1_w0_val == 4286578687<br>                                                                                                                                                                           |[0x80000ab4]:UKMAR64 t5, t6, t4<br> [0x80000ab8]:sw t5, 744(a4)<br>  |
|  81|[0x800025dc]<br>0xFFFFFFFF|- rs1_w0_val == 4294443007<br>                                                                                                                                                                           |[0x80000ad8]:UKMAR64 t5, t6, t4<br> [0x80000adc]:sw t5, 756(a4)<br>  |
|  82|[0x800025e8]<br>0xFFFFFFFF|- rs1_w0_val == 4294705151<br>                                                                                                                                                                           |[0x80000af8]:UKMAR64 t5, t6, t4<br> [0x80000afc]:sw t5, 768(a4)<br>  |
|  83|[0x800025f4]<br>0xBFFFDFFF|- rs1_w0_val == 4294836223<br>                                                                                                                                                                           |[0x80000b18]:UKMAR64 t5, t6, t4<br> [0x80000b1c]:sw t5, 780(a4)<br>  |
|  84|[0x80002600]<br>0xFFFFFFFF|- rs1_w0_val == 4294965247<br>                                                                                                                                                                           |[0x80000b3c]:UKMAR64 t5, t6, t4<br> [0x80000b40]:sw t5, 792(a4)<br>  |
|  85|[0x8000260c]<br>0xFFFEFFBF|- rs1_w0_val == 4294966271<br>                                                                                                                                                                           |[0x80000b58]:UKMAR64 t5, t6, t4<br> [0x80000b5c]:sw t5, 804(a4)<br>  |
|  86|[0x80002618]<br>0xFFFFFFFF|- rs1_w0_val == 4294967039<br>                                                                                                                                                                           |[0x80000b74]:UKMAR64 t5, t6, t4<br> [0x80000b78]:sw t5, 816(a4)<br>  |
|  87|[0x80002624]<br>0xFFFFFFFF|- rs1_w0_val == 4294967263<br>                                                                                                                                                                           |[0x80000b94]:UKMAR64 t5, t6, t4<br> [0x80000b98]:sw t5, 828(a4)<br>  |
|  88|[0x80002630]<br>0xFFFFFFFF|- rs1_w0_val == 4294967287<br>                                                                                                                                                                           |[0x80000bb0]:UKMAR64 t5, t6, t4<br> [0x80000bb4]:sw t5, 840(a4)<br>  |
|  89|[0x8000263c]<br>0xFFFFFFFF|- rs1_w0_val == 1073741824<br>                                                                                                                                                                           |[0x80000bcc]:UKMAR64 t5, t6, t4<br> [0x80000bd0]:sw t5, 852(a4)<br>  |
|  90|[0x80002648]<br>0xFFFFFFFF|- rs1_w0_val == 536870912<br>                                                                                                                                                                            |[0x80000be8]:UKMAR64 t5, t6, t4<br> [0x80000bec]:sw t5, 864(a4)<br>  |
|  91|[0x80002654]<br>0x07FFFFFF|- rs1_w0_val == 33554432<br>                                                                                                                                                                             |[0x80000c04]:UKMAR64 t5, t6, t4<br> [0x80000c08]:sw t5, 876(a4)<br>  |
|  92|[0x80002660]<br>0x077FFFFF|- rs1_w0_val == 8388608<br>                                                                                                                                                                              |[0x80000c24]:UKMAR64 t5, t6, t4<br> [0x80000c28]:sw t5, 888(a4)<br>  |
|  93|[0x8000266c]<br>0x09FFFFFF|- rs1_w0_val == 4194304<br>                                                                                                                                                                              |[0x80000c40]:UKMAR64 t5, t6, t4<br> [0x80000c44]:sw t5, 900(a4)<br>  |
|  94|[0x80002678]<br>0x09F7FFFF|- rs1_w0_val == 524288<br>                                                                                                                                                                               |[0x80000c60]:UKMAR64 t5, t6, t4<br> [0x80000c64]:sw t5, 912(a4)<br>  |
|  95|[0x80002684]<br>0x09F7FFFF|- rs1_w0_val == 262144<br>                                                                                                                                                                               |[0x80000c7c]:UKMAR64 t5, t6, t4<br> [0x80000c80]:sw t5, 924(a4)<br>  |
|  96|[0x80002690]<br>0x09F7FFFF|- rs1_w0_val == 131072<br>                                                                                                                                                                               |[0x80000c98]:UKMAR64 t5, t6, t4<br> [0x80000c9c]:sw t5, 936(a4)<br>  |
|  97|[0x8000269c]<br>0x89F7FFFF|- rs1_w0_val == 32768<br>                                                                                                                                                                                |[0x80000cb4]:UKMAR64 t5, t6, t4<br> [0x80000cb8]:sw t5, 948(a4)<br>  |
|  98|[0x800026a8]<br>0x89E7F7FF|- rs1_w0_val == 2048<br>                                                                                                                                                                                 |[0x80000cd4]:UKMAR64 t5, t6, t4<br> [0x80000cd8]:sw t5, 960(a4)<br>  |
|  99|[0x800026b4]<br>0x89A7F3FF|- rs1_w0_val == 1024<br>                                                                                                                                                                                 |[0x80000cf4]:UKMAR64 t5, t6, t4<br> [0x80000cf8]:sw t5, 972(a4)<br>  |
| 100|[0x800026c0]<br>0x89A7F1FF|- rs1_w0_val == 512<br>                                                                                                                                                                                  |[0x80000d14]:UKMAR64 t5, t6, t4<br> [0x80000d18]:sw t5, 984(a4)<br>  |
| 101|[0x800026cc]<br>0xFFFFFFFF|- rs1_w0_val == 4294967294<br>                                                                                                                                                                           |[0x80000d34]:UKMAR64 t5, t6, t4<br> [0x80000d38]:sw t5, 996(a4)<br>  |
| 102|[0x800026d8]<br>0x7FFFFFFF|- rs2_w0_val == 4294966271<br>                                                                                                                                                                           |[0x80000d50]:UKMAR64 t5, t6, t4<br> [0x80000d54]:sw t5, 1008(a4)<br> |
