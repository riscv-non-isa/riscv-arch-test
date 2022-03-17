
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000980')]      |
| SIG_REGION                | [('0x80002210', '0x80002490', '160 words')]      |
| COV_LABELS                | smslxda      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/smslxda-01.S    |
| Total Number of coverpoints| 247     |
| Total Coverpoints Hit     | 241      |
| Total Signature Updates   | 160      |
| STAT1                     | 80      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 80     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : smslxda', 'rs1 : x8', 'rs2 : x8', 'rd : x8', 'rs1 == rs2 == rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h0_val == 4096', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000108]:SMSLXDA fp, fp, fp
	-[0x8000010c]:sw fp, 0(t0)
Current Store : [0x80000110] : sw s1, 4(t0) -- Store: [0x80002214]:0xADFEEDBE




Last Coverpoint : ['rs1 : x10', 'rs2 : x10', 'rd : x6', 'rs1 == rs2 != rd', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h0_val == -33', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000124]:SMSLXDA t1, a0, a0
	-[0x80000128]:sw t1, 8(t0)
Current Store : [0x8000012c] : sw t2, 12(t0) -- Store: [0x8000221c]:0xB7FBB6FA




Last Coverpoint : ['rs1 : x11', 'rs2 : x17', 'rd : x16', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == 16', 'rs2_h0_val == 32', 'rs1_h1_val == -33', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000140]:SMSLXDA a6, a1, a7
	-[0x80000144]:sw a6, 16(t0)
Current Store : [0x80000148] : sw a7, 20(t0) -- Store: [0x80002224]:0x00100020




Last Coverpoint : ['rs1 : x28', 'rs2 : x12', 'rd : x12', 'rs2 == rd != rs1', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h1_val == 2', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x8000015c]:SMSLXDA a2, t3, a2
	-[0x80000160]:sw a2, 24(t0)
Current Store : [0x80000164] : sw a3, 28(t0) -- Store: [0x8000222c]:0xEADFEEDB




Last Coverpoint : ['rs1 : x24', 'rs2 : x22', 'rd : x24', 'rs1 == rd != rs2', 'rs2_h1_val == 128', 'rs2_h0_val == 2048', 'rs1_h1_val == -513', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000178]:SMSLXDA s8, s8, s6
	-[0x8000017c]:sw s8, 32(t0)
Current Store : [0x80000180] : sw s9, 36(t0) -- Store: [0x80002234]:0xEDBEADFE




Last Coverpoint : ['rs1 : x9', 'rs2 : x20', 'rd : x14', 'rs2_h1_val == -21846', 'rs1_h1_val == 21845', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000194]:SMSLXDA a4, s1, s4
	-[0x80000198]:sw a4, 40(t0)
Current Store : [0x8000019c] : sw a5, 44(t0) -- Store: [0x8000223c]:0xFAB7FBB6




Last Coverpoint : ['rs1 : x13', 'rs2 : x1', 'rd : x20', 'rs2_h1_val == 21845', 'rs2_h0_val == 128']
Last Code Sequence : 
	-[0x800001b0]:SMSLXDA s4, a3, ra
	-[0x800001b4]:sw s4, 48(t0)
Current Store : [0x800001b8] : sw s5, 52(t0) -- Store: [0x80002244]:0xDBEADFEE




Last Coverpoint : ['rs1 : x29', 'rs2 : x30', 'rd : x26', 'rs2_h1_val == 32767', 'rs1_h1_val == 0']
Last Code Sequence : 
	-[0x800001cc]:SMSLXDA s10, t4, t5
	-[0x800001d0]:sw s10, 56(t0)
Current Store : [0x800001d4] : sw s11, 60(t0) -- Store: [0x8000224c]:0xBB6FAB7F




Last Coverpoint : ['rs1 : x4', 'rs2 : x14', 'rd : x2', 'rs2_h1_val == -16385', 'rs1_h1_val == -257', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x800001e8]:SMSLXDA sp, tp, a4
	-[0x800001ec]:sw sp, 64(t0)
Current Store : [0x800001f0] : sw gp, 68(t0) -- Store: [0x80002254]:0x7FBB6FAB




Last Coverpoint : ['rs1 : x16', 'rs2 : x27', 'rd : x4', 'rs2_h1_val == -8193', 'rs2_h0_val == -16385', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x8000020c]:SMSLXDA tp, a6, s11
	-[0x80000210]:sw tp, 0(ra)
Current Store : [0x80000214] : sw t0, 4(ra) -- Store: [0x8000225c]:0x80002210




Last Coverpoint : ['rs1 : x23', 'rs2 : x15', 'rd : x28', 'rs2_h1_val == -4097', 'rs1_h1_val == -65', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000224]:SMSLXDA t3, s7, a5
	-[0x80000228]:sw t3, 8(ra)
Current Store : [0x8000022c] : sw t4, 12(ra) -- Store: [0x80002264]:0x0000FEFF




Last Coverpoint : ['rs1 : x25', 'rs2 : x11', 'rd : x18', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == -2049', 'rs2_h0_val == -5', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80000240]:SMSLXDA s2, s9, a1
	-[0x80000244]:sw s2, 16(ra)
Current Store : [0x80000248] : sw s3, 20(ra) -- Store: [0x8000226c]:0x6FAB7FBB




Last Coverpoint : ['rs1 : x12', 'rs2 : x28', 'rd : x22', 'rs2_h1_val == -1025', 'rs2_h0_val == -17', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x8000025c]:SMSLXDA s6, a2, t3
	-[0x80000260]:sw s6, 24(ra)
Current Store : [0x80000264] : sw s7, 28(ra) -- Store: [0x80002274]:0xFFBF0200




Last Coverpoint : ['rs1 : x26', 'rs2 : x13', 'rd : x10', 'rs2_h1_val == -513', 'rs1_h1_val == -32768', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x80000278]:SMSLXDA a0, s10, a3
	-[0x8000027c]:sw a0, 32(ra)
Current Store : [0x80000280] : sw a1, 36(ra) -- Store: [0x8000227c]:0xF7FFFFFC




Last Coverpoint : ['rs1 : x22', 'rs2 : x19', 'rd : x30', 'rs2_h1_val == -257', 'rs2_h0_val == -21846', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000294]:SMSLXDA t5, s6, s3
	-[0x80000298]:sw t5, 40(ra)
Current Store : [0x8000029c] : sw t6, 44(ra) -- Store: [0x80002284]:0xFBB6FAB7




Last Coverpoint : ['rs1 : x14', 'rs2 : x5', 'rs2_h1_val == -129', 'rs2_h0_val == -1025']
Last Code Sequence : 
	-[0x800002b0]:SMSLXDA t5, a4, t0
	-[0x800002b4]:sw t5, 48(ra)
Current Store : [0x800002b8] : sw t6, 52(ra) -- Store: [0x8000228c]:0xFBB6FAB7




Last Coverpoint : ['rs1 : x27', 'rs2 : x23', 'rs2_h1_val == -65', 'rs2_h0_val == -32768', 'rs1_h1_val == -3']
Last Code Sequence : 
	-[0x800002c8]:SMSLXDA s2, s11, s7
	-[0x800002cc]:sw s2, 56(ra)
Current Store : [0x800002d0] : sw s3, 60(ra) -- Store: [0x80002294]:0xFEFFAAAA




Last Coverpoint : ['rs1 : x31', 'rs2 : x0', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x800002e4]:SMSLXDA s6, t6, zero
	-[0x800002e8]:sw s6, 64(ra)
Current Store : [0x800002ec] : sw s7, 68(ra) -- Store: [0x8000229c]:0xFFBF8000




Last Coverpoint : ['rs1 : x6', 'rs2 : x26', 'rs2_h1_val == -17', 'rs2_h0_val == -65', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80000300]:SMSLXDA s6, t1, s10
	-[0x80000304]:sw s6, 72(ra)
Current Store : [0x80000308] : sw s7, 76(ra) -- Store: [0x800022a4]:0xFFBF8000




Last Coverpoint : ['rs1 : x3', 'rs2 : x31', 'rs2_h1_val == -9', 'rs1_h1_val == -21846']
Last Code Sequence : 
	-[0x8000031c]:SMSLXDA a2, gp, t6
	-[0x80000320]:sw a2, 80(ra)
Current Store : [0x80000324] : sw a3, 84(ra) -- Store: [0x800022ac]:0xFDFF3FFF




Last Coverpoint : ['rs1 : x2', 'rs2 : x3', 'rs2_h1_val == -5']
Last Code Sequence : 
	-[0x80000338]:SMSLXDA s4, sp, gp
	-[0x8000033c]:sw s4, 88(ra)
Current Store : [0x80000340] : sw s5, 92(ra) -- Store: [0x800022b4]:0xDBEADFEE




Last Coverpoint : ['rs1 : x19', 'rs2 : x4', 'rs2_h1_val == -3', 'rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x80000354]:SMSLXDA s2, s3, tp
	-[0x80000358]:sw s2, 96(ra)
Current Store : [0x8000035c] : sw s3, 100(ra) -- Store: [0x800022bc]:0x04000007




Last Coverpoint : ['rs1 : x15', 'rs2 : x25', 'rs2_h1_val == -2']
Last Code Sequence : 
	-[0x8000036c]:SMSLXDA a0, a5, s9
	-[0x80000370]:sw a0, 104(ra)
Current Store : [0x80000374] : sw a1, 108(ra) -- Store: [0x800022c4]:0xF7FFFFFC




Last Coverpoint : ['rs1 : x17', 'rs2 : x2', 'rs2_h1_val == -32768', 'rs1_h1_val == -1025', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000384]:SMSLXDA s2, a7, sp
	-[0x80000388]:sw s2, 112(ra)
Current Store : [0x8000038c] : sw s3, 116(ra) -- Store: [0x800022cc]:0x04000007




Last Coverpoint : ['rs1 : x30', 'rs2 : x18', 'rs2_h1_val == 16384']
Last Code Sequence : 
	-[0x800003a8]:SMSLXDA tp, t5, s2
	-[0x800003ac]:sw tp, 0(sp)
Current Store : [0x800003b0] : sw t0, 4(sp) -- Store: [0x800022d4]:0xFF7FFBFF




Last Coverpoint : ['rs1 : x20', 'rs2 : x6', 'rs2_h1_val == 8192', 'rs1_h1_val == 4096', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x800003c4]:SMSLXDA a0, s4, t1
	-[0x800003c8]:sw a0, 8(sp)
Current Store : [0x800003cc] : sw a1, 12(sp) -- Store: [0x800022dc]:0xF7FFFFFC




Last Coverpoint : ['rs1 : x5', 'rs2 : x21', 'rs2_h1_val == 4096', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x800003dc]:SMSLXDA s4, t0, s5
	-[0x800003e0]:sw s4, 16(sp)
Current Store : [0x800003e4] : sw s5, 20(sp) -- Store: [0x800022e4]:0x10000006




Last Coverpoint : ['rs1 : x0', 'rs2 : x7', 'rs2_h1_val == 2048', 'rs2_h0_val == 8']
Last Code Sequence : 
	-[0x800003f8]:SMSLXDA s10, zero, t2
	-[0x800003fc]:sw s10, 24(sp)
Current Store : [0x80000400] : sw s11, 28(sp) -- Store: [0x800022ec]:0xFFFD0080




Last Coverpoint : ['rs1 : x7', 'rs2 : x16', 'rs2_h1_val == 1024']
Last Code Sequence : 
	-[0x80000414]:SMSLXDA s2, t2, a6
	-[0x80000418]:sw s2, 32(sp)
Current Store : [0x8000041c] : sw s3, 36(sp) -- Store: [0x800022f4]:0x04000007




Last Coverpoint : ['rs1 : x18', 'rs2 : x9', 'rs2_h1_val == 512', 'rs2_h0_val == 2', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000430]:SMSLXDA a2, s2, s1
	-[0x80000434]:sw a2, 40(sp)
Current Store : [0x80000438] : sw a3, 44(sp) -- Store: [0x800022fc]:0xFDFF3FFF




Last Coverpoint : ['rs1 : x1', 'rs2 : x24', 'rs2_h1_val == 256', 'rs2_h0_val == 256']
Last Code Sequence : 
	-[0x8000044c]:SMSLXDA a2, ra, s8
	-[0x80000450]:sw a2, 48(sp)
Current Store : [0x80000454] : sw a3, 52(sp) -- Store: [0x80002304]:0xFDFF3FFF




Last Coverpoint : ['rs1 : x21', 'rs2 : x29', 'rs2_h1_val == 64', 'rs2_h0_val == -8193']
Last Code Sequence : 
	-[0x80000468]:SMSLXDA t3, s5, t4
	-[0x8000046c]:sw t3, 56(sp)
Current Store : [0x80000470] : sw t4, 60(sp) -- Store: [0x8000230c]:0x0040E000




Last Coverpoint : ['rs2_h1_val == 32']
Last Code Sequence : 
	-[0x80000480]:SMSLXDA t5, t6, t4
	-[0x80000484]:sw t5, 64(sp)
Current Store : [0x80000488] : sw t6, 68(sp) -- Store: [0x80002314]:0xFFFA0000




Last Coverpoint : ['rs2_h1_val == 8', 'rs1_h1_val == 16']
Last Code Sequence : 
	-[0x80000498]:SMSLXDA t5, t6, t4
	-[0x8000049c]:sw t5, 72(sp)
Current Store : [0x800004a0] : sw t6, 76(sp) -- Store: [0x8000231c]:0x00100200




Last Coverpoint : ['rs2_h1_val == 4', 'rs2_h0_val == -4097', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x800004b4]:SMSLXDA t5, t6, t4
	-[0x800004b8]:sw t5, 80(sp)
Current Store : [0x800004bc] : sw t6, 84(sp) -- Store: [0x80002324]:0x00050002




Last Coverpoint : ['rs2_h0_val == -1', 'rs1_h1_val == -9', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x800004d0]:SMSLXDA t5, t6, t4
	-[0x800004d4]:sw t5, 88(sp)
Current Store : [0x800004d8] : sw t6, 92(sp) -- Store: [0x8000232c]:0xFFF7FBFF




Last Coverpoint : ['rs1_h0_val == -65']
Last Code Sequence : 
	-[0x800004ec]:SMSLXDA t5, t6, t4
	-[0x800004f0]:sw t5, 96(sp)
Current Store : [0x800004f4] : sw t6, 100(sp) -- Store: [0x80002334]:0xFFFAFFBF




Last Coverpoint : ['rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x80000508]:SMSLXDA t5, t6, t4
	-[0x8000050c]:sw t5, 104(sp)
Current Store : [0x80000510] : sw t6, 108(sp) -- Store: [0x8000233c]:0x7FFFFFDF




Last Coverpoint : ['rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000524]:SMSLXDA t5, t6, t4
	-[0x80000528]:sw t5, 112(sp)
Current Store : [0x8000052c] : sw t6, 116(sp) -- Store: [0x80002344]:0x0007FFFB




Last Coverpoint : ['rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000540]:SMSLXDA t5, t6, t4
	-[0x80000544]:sw t5, 120(sp)
Current Store : [0x80000548] : sw t6, 124(sp) -- Store: [0x8000234c]:0x0002FFFE




Last Coverpoint : ['rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000558]:SMSLXDA t5, t6, t4
	-[0x8000055c]:sw t5, 128(sp)
Current Store : [0x80000560] : sw t6, 132(sp) -- Store: [0x80002354]:0x04004000




Last Coverpoint : ['rs2_h0_val == -129', 'rs1_h1_val == -4097', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000570]:SMSLXDA t5, t6, t4
	-[0x80000574]:sw t5, 136(sp)
Current Store : [0x80000578] : sw t6, 140(sp) -- Store: [0x8000235c]:0xEFFF2000




Last Coverpoint : ['rs1_h1_val == 1']
Last Code Sequence : 
	-[0x80000588]:SMSLXDA t5, t6, t4
	-[0x8000058c]:sw t5, 144(sp)
Current Store : [0x80000590] : sw t6, 148(sp) -- Store: [0x80002364]:0x00011000




Last Coverpoint : ['rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x800005a4]:SMSLXDA t5, t6, t4
	-[0x800005a8]:sw t5, 152(sp)
Current Store : [0x800005ac] : sw t6, 156(sp) -- Store: [0x8000236c]:0x01000400




Last Coverpoint : ['rs2_h1_val == 1', 'rs1_h1_val == -16385', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x800005c0]:SMSLXDA t5, t6, t4
	-[0x800005c4]:sw t5, 160(sp)
Current Store : [0x800005c8] : sw t6, 164(sp) -- Store: [0x80002374]:0xBFFF0100




Last Coverpoint : ['rs1_h0_val == 64']
Last Code Sequence : 
	-[0x800005dc]:SMSLXDA t5, t6, t4
	-[0x800005e0]:sw t5, 168(sp)
Current Store : [0x800005e4] : sw t6, 172(sp) -- Store: [0x8000237c]:0xFEFF0040




Last Coverpoint : ['rs1_h0_val == 16']
Last Code Sequence : 
	-[0x800005f8]:SMSLXDA t5, t6, t4
	-[0x800005fc]:sw t5, 176(sp)
Current Store : [0x80000600] : sw t6, 180(sp) -- Store: [0x80002384]:0xEFFF0010




Last Coverpoint : ['rs2_h1_val == -33', 'rs2_h0_val == 1024', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000614]:SMSLXDA t5, t6, t4
	-[0x80000618]:sw t5, 184(sp)
Current Store : [0x8000061c] : sw t6, 188(sp) -- Store: [0x8000238c]:0xFFF80008




Last Coverpoint : ['rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80000630]:SMSLXDA t5, t6, t4
	-[0x80000634]:sw t5, 192(sp)
Current Store : [0x80000638] : sw t6, 196(sp) -- Store: [0x80002394]:0x00070004




Last Coverpoint : ['rs2_h0_val == -3', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x8000064c]:SMSLXDA t5, t6, t4
	-[0x80000650]:sw t5, 200(sp)
Current Store : [0x80000654] : sw t6, 204(sp) -- Store: [0x8000239c]:0xFFF70001




Last Coverpoint : ['rs2_h0_val == 32767', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x80000668]:SMSLXDA t5, t6, t4
	-[0x8000066c]:sw t5, 208(sp)
Current Store : [0x80000670] : sw t6, 212(sp) -- Store: [0x800023a4]:0xFFBFFFFF




Last Coverpoint : ['rs2_h1_val == 2']
Last Code Sequence : 
	-[0x80000680]:SMSLXDA t5, t6, t4
	-[0x80000684]:sw t5, 216(sp)
Current Store : [0x80000688] : sw t6, 220(sp) -- Store: [0x800023ac]:0xFFF8C000




Last Coverpoint : ['rs2_h0_val == -2', 'rs1_h1_val == -5']
Last Code Sequence : 
	-[0x8000069c]:SMSLXDA t5, t6, t4
	-[0x800006a0]:sw t5, 224(sp)
Current Store : [0x800006a4] : sw t6, 228(sp) -- Store: [0x800023b4]:0xFFFBFFF8




Last Coverpoint : ['rs2_h0_val == 16384']
Last Code Sequence : 
	-[0x800006b4]:SMSLXDA t5, t6, t4
	-[0x800006b8]:sw t5, 232(sp)
Current Store : [0x800006bc] : sw t6, 236(sp) -- Store: [0x800023bc]:0x3FFF0800




Last Coverpoint : ['rs2_h0_val == 8192']
Last Code Sequence : 
	-[0x800006cc]:SMSLXDA t5, t6, t4
	-[0x800006d0]:sw t5, 240(sp)
Current Store : [0x800006d4] : sw t6, 244(sp) -- Store: [0x800023c4]:0xFDFFFFFC




Last Coverpoint : ['rs2_h0_val == 512']
Last Code Sequence : 
	-[0x800006e4]:SMSLXDA t5, t6, t4
	-[0x800006e8]:sw t5, 248(sp)
Current Store : [0x800006ec] : sw t6, 252(sp) -- Store: [0x800023cc]:0x0006FFFB




Last Coverpoint : ['rs2_h0_val == 64', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000700]:SMSLXDA t5, t6, t4
	-[0x80000704]:sw t5, 256(sp)
Current Store : [0x80000708] : sw t6, 260(sp) -- Store: [0x800023d4]:0x0006DFFF




Last Coverpoint : ['rs2_h0_val == 16', 'rs1_h1_val == 32']
Last Code Sequence : 
	-[0x80000718]:SMSLXDA t5, t6, t4
	-[0x8000071c]:sw t5, 264(sp)
Current Store : [0x80000720] : sw t6, 268(sp) -- Store: [0x800023dc]:0x00201000




Last Coverpoint : ['rs2_h0_val == 4']
Last Code Sequence : 
	-[0x80000734]:SMSLXDA t5, t6, t4
	-[0x80000738]:sw t5, 272(sp)
Current Store : [0x8000073c] : sw t6, 276(sp) -- Store: [0x800023e4]:0x00030010




Last Coverpoint : ['rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x80000750]:SMSLXDA t5, t6, t4
	-[0x80000754]:sw t5, 280(sp)
Current Store : [0x80000758] : sw t6, 284(sp) -- Store: [0x800023ec]:0xF7FF0800




Last Coverpoint : ['rs1_h1_val == -129']
Last Code Sequence : 
	-[0x8000076c]:SMSLXDA t5, t6, t4
	-[0x80000770]:sw t5, 288(sp)
Current Store : [0x80000774] : sw t6, 292(sp) -- Store: [0x800023f4]:0xFF7F7FFF




Last Coverpoint : ['rs2_h0_val == -513', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000788]:SMSLXDA t5, t6, t4
	-[0x8000078c]:sw t5, 296(sp)
Current Store : [0x80000790] : sw t6, 300(sp) -- Store: [0x800023fc]:0xF7FF5555




Last Coverpoint : ['rs1_h1_val == -17']
Last Code Sequence : 
	-[0x800007a4]:SMSLXDA t5, t6, t4
	-[0x800007a8]:sw t5, 304(sp)
Current Store : [0x800007ac] : sw t6, 308(sp) -- Store: [0x80002404]:0xFFEFFFF7




Last Coverpoint : ['rs1_h1_val == -2']
Last Code Sequence : 
	-[0x800007bc]:SMSLXDA t5, t6, t4
	-[0x800007c0]:sw t5, 312(sp)
Current Store : [0x800007c4] : sw t6, 316(sp) -- Store: [0x8000240c]:0xFFFE4000




Last Coverpoint : ['rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x800007d8]:SMSLXDA t5, t6, t4
	-[0x800007dc]:sw t5, 320(sp)
Current Store : [0x800007e0] : sw t6, 324(sp) -- Store: [0x80002414]:0x2000FFFC




Last Coverpoint : ['rs1_h0_val == -32768', 'rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x800007f0]:SMSLXDA t5, t6, t4
	-[0x800007f4]:sw t5, 328(sp)
Current Store : [0x800007f8] : sw t6, 332(sp) -- Store: [0x8000241c]:0x08008000




Last Coverpoint : ['rs1_h1_val == 512']
Last Code Sequence : 
	-[0x8000080c]:SMSLXDA t5, t6, t4
	-[0x80000810]:sw t5, 336(sp)
Current Store : [0x80000814] : sw t6, 340(sp) -- Store: [0x80002424]:0x0200FFFA




Last Coverpoint : ['rs1_h1_val == 128']
Last Code Sequence : 
	-[0x80000828]:SMSLXDA t5, t6, t4
	-[0x8000082c]:sw t5, 344(sp)
Current Store : [0x80000830] : sw t6, 348(sp) -- Store: [0x8000242c]:0x0080FFFA




Last Coverpoint : ['rs2_h1_val == -1']
Last Code Sequence : 
	-[0x80000844]:SMSLXDA t5, t6, t4
	-[0x80000848]:sw t5, 352(sp)
Current Store : [0x8000084c] : sw t6, 356(sp) -- Store: [0x80002434]:0xFFFE0007




Last Coverpoint : ['rs1_h1_val == 64']
Last Code Sequence : 
	-[0x80000860]:SMSLXDA t5, t6, t4
	-[0x80000864]:sw t5, 360(sp)
Current Store : [0x80000868] : sw t6, 364(sp) -- Store: [0x8000243c]:0x00407FFF




Last Coverpoint : ['rs2_h0_val == 21845']
Last Code Sequence : 
	-[0x8000087c]:SMSLXDA t5, t6, t4
	-[0x80000880]:sw t5, 368(sp)
Current Store : [0x80000884] : sw t6, 372(sp) -- Store: [0x80002444]:0xFFFB0001




Last Coverpoint : ['rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000898]:SMSLXDA t5, t6, t4
	-[0x8000089c]:sw t5, 376(sp)
Current Store : [0x800008a0] : sw t6, 380(sp) -- Store: [0x8000244c]:0x00080800




Last Coverpoint : ['rs1_h1_val == 4']
Last Code Sequence : 
	-[0x800008b4]:SMSLXDA t5, t6, t4
	-[0x800008b8]:sw t5, 384(sp)
Current Store : [0x800008bc] : sw t6, 388(sp) -- Store: [0x80002454]:0x00043FFF




Last Coverpoint : ['rs2_h0_val == -2049']
Last Code Sequence : 
	-[0x800008d0]:SMSLXDA t5, t6, t4
	-[0x800008d4]:sw t5, 392(sp)
Current Store : [0x800008d8] : sw t6, 396(sp) -- Store: [0x8000245c]:0x00020005




Last Coverpoint : ['rs1_h1_val == -1']
Last Code Sequence : 
	-[0x800008ec]:SMSLXDA t5, t6, t4
	-[0x800008f0]:sw t5, 400(sp)
Current Store : [0x800008f4] : sw t6, 404(sp) -- Store: [0x80002464]:0xFFFFEFFF




Last Coverpoint : ['rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000904]:SMSLXDA t5, t6, t4
	-[0x80000908]:sw t5, 408(sp)
Current Store : [0x8000090c] : sw t6, 412(sp) -- Store: [0x8000246c]:0x0006AAAA




Last Coverpoint : ['rs2_h0_val == -257']
Last Code Sequence : 
	-[0x8000091c]:SMSLXDA t5, t6, t4
	-[0x80000920]:sw t5, 416(sp)
Current Store : [0x80000924] : sw t6, 420(sp) -- Store: [0x80002474]:0xFFFA2000




Last Coverpoint : ['rs2_h0_val == -9']
Last Code Sequence : 
	-[0x80000938]:SMSLXDA t5, t6, t4
	-[0x8000093c]:sw t5, 424(sp)
Current Store : [0x80000940] : sw t6, 428(sp) -- Store: [0x8000247c]:0xC000DFFF




Last Coverpoint : ['rs2_h0_val == 1']
Last Code Sequence : 
	-[0x80000954]:SMSLXDA t5, t6, t4
	-[0x80000958]:sw t5, 432(sp)
Current Store : [0x8000095c] : sw t6, 436(sp) -- Store: [0x80002484]:0x4000FEFF




Last Coverpoint : ['rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x80000970]:SMSLXDA t5, t6, t4
	-[0x80000974]:sw t5, 440(sp)
Current Store : [0x80000978] : sw t6, 444(sp) -- Store: [0x8000248c]:0xDFFFFFEF





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

|s.no|        signature         |                                                                                                                                                               coverpoints                                                                                                                                                               |                                 code                                  |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00031000|- opcode : smslxda<br> - rs1 : x8<br> - rs2 : x8<br> - rd : x8<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h0_val == 4096<br> - rs1_h0_val == 4096<br>                                                |[0x80000108]:SMSLXDA fp, fp, fp<br> [0x8000010c]:sw fp, 0(t0)<br>      |
|   2|[0x80002218]<br>0x80002000|- rs1 : x10<br> - rs2 : x10<br> - rd : x6<br> - rs1 == rs2 != rd<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h0_val == -33<br> - rs1_h0_val == -33<br>                                                                                                                                     |[0x80000124]:SMSLXDA t1, a0, a0<br> [0x80000128]:sw t1, 8(t0)<br>      |
|   3|[0x80002220]<br>0x7D5BFDDB|- rs1 : x11<br> - rs2 : x17<br> - rd : x16<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h1_val == 16<br> - rs2_h0_val == 32<br> - rs1_h1_val == -33<br> - rs1_h0_val == -17<br> |[0x80000140]:SMSLXDA a6, a1, a7<br> [0x80000144]:sw a6, 16(t0)<br>     |
|   4|[0x80002228]<br>0xFFF6FFF8|- rs1 : x28<br> - rs2 : x12<br> - rd : x12<br> - rs2 == rd != rs1<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h1_val == 2<br> - rs1_h0_val == -257<br>                                                                                                                                                                             |[0x8000015c]:SMSLXDA a2, t3, a2<br> [0x80000160]:sw a2, 24(t0)<br>     |
|   5|[0x80002230]<br>0xFDFF0800|- rs1 : x24<br> - rs2 : x22<br> - rd : x24<br> - rs1 == rd != rs2<br> - rs2_h1_val == 128<br> - rs2_h0_val == 2048<br> - rs1_h1_val == -513<br> - rs1_h0_val == 2048<br>                                                                                                                                                                 |[0x80000178]:SMSLXDA s8, s8, s6<br> [0x8000017c]:sw s8, 32(t0)<br>     |
|   6|[0x80002238]<br>0xF56FF76D|- rs1 : x9<br> - rs2 : x20<br> - rd : x14<br> - rs2_h1_val == -21846<br> - rs1_h1_val == 21845<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                |[0x80000194]:SMSLXDA a4, s1, s4<br> [0x80000198]:sw a4, 40(t0)<br>     |
|   7|[0x80002240]<br>0xAAAA0003|- rs1 : x13<br> - rs2 : x1<br> - rd : x20<br> - rs2_h1_val == 21845<br> - rs2_h0_val == 128<br>                                                                                                                                                                                                                                          |[0x800001b0]:SMSLXDA s4, a3, ra<br> [0x800001b4]:sw s4, 48(t0)<br>     |
|   8|[0x80002248]<br>0x76DF56FF|- rs1 : x29<br> - rs2 : x30<br> - rd : x26<br> - rs2_h1_val == 32767<br> - rs1_h1_val == 0<br>                                                                                                                                                                                                                                           |[0x800001cc]:SMSLXDA s10, t4, t5<br> [0x800001d0]:sw s10, 56(t0)<br>   |
|   9|[0x80002250]<br>0xFF76DF56|- rs1 : x4<br> - rs2 : x14<br> - rd : x2<br> - rs2_h1_val == -16385<br> - rs1_h1_val == -257<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                              |[0x800001e8]:SMSLXDA sp, tp, a4<br> [0x800001ec]:sw sp, 64(t0)<br>     |
|  10|[0x80002258]<br>0xFEFFBFFF|- rs1 : x16<br> - rs2 : x27<br> - rd : x4<br> - rs2_h1_val == -8193<br> - rs2_h0_val == -16385<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                              |[0x8000020c]:SMSLXDA tp, a6, s11<br> [0x80000210]:sw tp, 0(ra)<br>     |
|  11|[0x80002260]<br>0x0002FEFF|- rs1 : x23<br> - rs2 : x15<br> - rd : x28<br> - rs2_h1_val == -4097<br> - rs1_h1_val == -65<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                 |[0x80000224]:SMSLXDA t3, s7, a5<br> [0x80000228]:sw t3, 8(ra)<br>      |
|  12|[0x80002268]<br>0xDF56FF76|- rs1 : x25<br> - rs2 : x11<br> - rd : x18<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h1_val == -2049<br> - rs2_h0_val == -5<br> - rs1_h0_val == 32<br>                                                                                                                                                                           |[0x80000240]:SMSLXDA s2, s9, a1<br> [0x80000244]:sw s2, 16(ra)<br>     |
|  13|[0x80002270]<br>0x00800800|- rs1 : x12<br> - rs2 : x28<br> - rd : x22<br> - rs2_h1_val == -1025<br> - rs2_h0_val == -17<br> - rs1_h1_val == 256<br>                                                                                                                                                                                                                 |[0x8000025c]:SMSLXDA s6, a2, t3<br> [0x80000260]:sw s6, 24(ra)<br>     |
|  14|[0x80002278]<br>0xFFFAFFDF|- rs1 : x26<br> - rs2 : x13<br> - rd : x10<br> - rs2_h1_val == -513<br> - rs1_h1_val == -32768<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                               |[0x80000278]:SMSLXDA a0, s10, a3<br> [0x8000027c]:sw a0, 32(ra)<br>    |
|  15|[0x80002280]<br>0x7FFFFFF9|- rs1 : x22<br> - rs2 : x19<br> - rd : x30<br> - rs2_h1_val == -257<br> - rs2_h0_val == -21846<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                             |[0x80000294]:SMSLXDA t5, s6, s3<br> [0x80000298]:sw t5, 40(ra)<br>     |
|  16|[0x80002288]<br>0x7FFFFFF9|- rs1 : x14<br> - rs2 : x5<br> - rs2_h1_val == -129<br> - rs2_h0_val == -1025<br>                                                                                                                                                                                                                                                        |[0x800002b0]:SMSLXDA t5, a4, t0<br> [0x800002b4]:sw t5, 48(ra)<br>     |
|  17|[0x80002290]<br>0xDF56FF76|- rs1 : x27<br> - rs2 : x23<br> - rs2_h1_val == -65<br> - rs2_h0_val == -32768<br> - rs1_h1_val == -3<br>                                                                                                                                                                                                                                |[0x800002c8]:SMSLXDA s2, s11, s7<br> [0x800002cc]:sw s2, 56(ra)<br>    |
|  18|[0x80002298]<br>0x01007FFF|- rs1 : x31<br> - rs2 : x0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h1_val == 16384<br>                                                                                                                                                                                                                                     |[0x800002e4]:SMSLXDA s6, t6, zero<br> [0x800002e8]:sw s6, 64(ra)<br>   |
|  19|[0x800022a0]<br>0x01007FFF|- rs1 : x6<br> - rs2 : x26<br> - rs2_h1_val == -17<br> - rs2_h0_val == -65<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                                 |[0x80000300]:SMSLXDA s6, t1, s10<br> [0x80000304]:sw s6, 72(ra)<br>    |
|  20|[0x800022a8]<br>0x01000007|- rs1 : x3<br> - rs2 : x31<br> - rs2_h1_val == -9<br> - rs1_h1_val == -21846<br>                                                                                                                                                                                                                                                         |[0x8000031c]:SMSLXDA a2, gp, t6<br> [0x80000320]:sw a2, 80(ra)<br>     |
|  21|[0x800022b0]<br>0xAAAA0003|- rs1 : x2<br> - rs2 : x3<br> - rs2_h1_val == -5<br>                                                                                                                                                                                                                                                                                     |[0x80000338]:SMSLXDA s4, sp, gp<br> [0x8000033c]:sw s4, 88(ra)<br>     |
|  22|[0x800022b8]<br>0xDF56FF76|- rs1 : x19<br> - rs2 : x4<br> - rs2_h1_val == -3<br> - rs1_h1_val == 1024<br>                                                                                                                                                                                                                                                           |[0x80000354]:SMSLXDA s2, s3, tp<br> [0x80000358]:sw s2, 96(ra)<br>     |
|  23|[0x800022c0]<br>0xFFFAFFDF|- rs1 : x15<br> - rs2 : x25<br> - rs2_h1_val == -2<br>                                                                                                                                                                                                                                                                                   |[0x8000036c]:SMSLXDA a0, a5, s9<br> [0x80000370]:sw a0, 104(ra)<br>    |
|  24|[0x800022c8]<br>0xDF56FF76|- rs1 : x17<br> - rs2 : x2<br> - rs2_h1_val == -32768<br> - rs1_h1_val == -1025<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                             |[0x80000384]:SMSLXDA s2, a7, sp<br> [0x80000388]:sw s2, 112(ra)<br>    |
|  25|[0x800022d0]<br>0xFFFD0006|- rs1 : x30<br> - rs2 : x18<br> - rs2_h1_val == 16384<br>                                                                                                                                                                                                                                                                                |[0x800003a8]:SMSLXDA tp, t5, s2<br> [0x800003ac]:sw tp, 0(sp)<br>      |
|  26|[0x800022d8]<br>0xFFFAFFDF|- rs1 : x20<br> - rs2 : x6<br> - rs2_h1_val == 8192<br> - rs1_h1_val == 4096<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                  |[0x800003c4]:SMSLXDA a0, s4, t1<br> [0x800003c8]:sw a0, 8(sp)<br>      |
|  27|[0x800022e0]<br>0x1000FFFD|- rs1 : x5<br> - rs2 : x21<br> - rs2_h1_val == 4096<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                                                            |[0x800003dc]:SMSLXDA s4, t0, s5<br> [0x800003e0]:sw s4, 16(sp)<br>     |
|  28|[0x800022e8]<br>0xFFEFFFBF|- rs1 : x0<br> - rs2 : x7<br> - rs2_h1_val == 2048<br> - rs2_h0_val == 8<br>                                                                                                                                                                                                                                                             |[0x800003f8]:SMSLXDA s10, zero, t2<br> [0x800003fc]:sw s10, 24(sp)<br> |
|  29|[0x800022f0]<br>0x4000FFFA|- rs1 : x7<br> - rs2 : x16<br> - rs2_h1_val == 1024<br>                                                                                                                                                                                                                                                                                  |[0x80000414]:SMSLXDA s2, t2, a6<br> [0x80000418]:sw s2, 32(sp)<br>     |
|  30|[0x800022f8]<br>0x01000007|- rs1 : x18<br> - rs2 : x9<br> - rs2_h1_val == 512<br> - rs2_h0_val == 2<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                   |[0x80000430]:SMSLXDA a2, s2, s1<br> [0x80000434]:sw a2, 40(sp)<br>     |
|  31|[0x80002300]<br>0x01000007|- rs1 : x1<br> - rs2 : x24<br> - rs2_h1_val == 256<br> - rs2_h0_val == 256<br>                                                                                                                                                                                                                                                           |[0x8000044c]:SMSLXDA a2, ra, s8<br> [0x80000450]:sw a2, 48(sp)<br>     |
|  32|[0x80002308]<br>0xFBFFFFEF|- rs1 : x21<br> - rs2 : x29<br> - rs2_h1_val == 64<br> - rs2_h0_val == -8193<br>                                                                                                                                                                                                                                                         |[0x80000468]:SMSLXDA t3, s5, t4<br> [0x8000046c]:sw t3, 56(sp)<br>     |
|  33|[0x80002310]<br>0x40003FFF|- rs2_h1_val == 32<br>                                                                                                                                                                                                                                                                                                                   |[0x80000480]:SMSLXDA t5, t6, t4<br> [0x80000484]:sw t5, 64(sp)<br>     |
|  34|[0x80002318]<br>0x40003FFF|- rs2_h1_val == 8<br> - rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                                             |[0x80000498]:SMSLXDA t5, t6, t4<br> [0x8000049c]:sw t5, 72(sp)<br>     |
|  35|[0x80002320]<br>0x40003FFF|- rs2_h1_val == 4<br> - rs2_h0_val == -4097<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                    |[0x800004b4]:SMSLXDA t5, t6, t4<br> [0x800004b8]:sw t5, 80(sp)<br>     |
|  36|[0x80002328]<br>0x40003FFF|- rs2_h0_val == -1<br> - rs1_h1_val == -9<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                                                                  |[0x800004d0]:SMSLXDA t5, t6, t4<br> [0x800004d4]:sw t5, 88(sp)<br>     |
|  37|[0x80002330]<br>0x40003FFF|- rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                  |[0x800004ec]:SMSLXDA t5, t6, t4<br> [0x800004f0]:sw t5, 96(sp)<br>     |
|  38|[0x80002338]<br>0x40003FFF|- rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                |[0x80000508]:SMSLXDA t5, t6, t4<br> [0x8000050c]:sw t5, 104(sp)<br>    |
|  39|[0x80002340]<br>0x40003FFF|- rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                   |[0x80000524]:SMSLXDA t5, t6, t4<br> [0x80000528]:sw t5, 112(sp)<br>    |
|  40|[0x80002348]<br>0x40003FFF|- rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                   |[0x80000540]:SMSLXDA t5, t6, t4<br> [0x80000544]:sw t5, 120(sp)<br>    |
|  41|[0x80002350]<br>0x40003FFF|- rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                |[0x80000558]:SMSLXDA t5, t6, t4<br> [0x8000055c]:sw t5, 128(sp)<br>    |
|  42|[0x80002358]<br>0x40003FFF|- rs2_h0_val == -129<br> - rs1_h1_val == -4097<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                              |[0x80000570]:SMSLXDA t5, t6, t4<br> [0x80000574]:sw t5, 136(sp)<br>    |
|  43|[0x80002360]<br>0x40003FFF|- rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                    |[0x80000588]:SMSLXDA t5, t6, t4<br> [0x8000058c]:sw t5, 144(sp)<br>    |
|  44|[0x80002368]<br>0x40003FFF|- rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                 |[0x800005a4]:SMSLXDA t5, t6, t4<br> [0x800005a8]:sw t5, 152(sp)<br>    |
|  45|[0x80002370]<br>0x40003FFF|- rs2_h1_val == 1<br> - rs1_h1_val == -16385<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                 |[0x800005c0]:SMSLXDA t5, t6, t4<br> [0x800005c4]:sw t5, 160(sp)<br>    |
|  46|[0x80002378]<br>0x40003FFF|- rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                   |[0x800005dc]:SMSLXDA t5, t6, t4<br> [0x800005e0]:sw t5, 168(sp)<br>    |
|  47|[0x80002380]<br>0x40003FFF|- rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                   |[0x800005f8]:SMSLXDA t5, t6, t4<br> [0x800005fc]:sw t5, 176(sp)<br>    |
|  48|[0x80002388]<br>0x40003FFF|- rs2_h1_val == -33<br> - rs2_h0_val == 1024<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                   |[0x80000614]:SMSLXDA t5, t6, t4<br> [0x80000618]:sw t5, 184(sp)<br>    |
|  49|[0x80002390]<br>0x40003FFF|- rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                    |[0x80000630]:SMSLXDA t5, t6, t4<br> [0x80000634]:sw t5, 192(sp)<br>    |
|  50|[0x80002398]<br>0x40003FFF|- rs2_h0_val == -3<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                             |[0x8000064c]:SMSLXDA t5, t6, t4<br> [0x80000650]:sw t5, 200(sp)<br>    |
|  51|[0x800023a0]<br>0x40003FFF|- rs2_h0_val == 32767<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                         |[0x80000668]:SMSLXDA t5, t6, t4<br> [0x8000066c]:sw t5, 208(sp)<br>    |
|  52|[0x800023a8]<br>0x40003FFF|- rs2_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                    |[0x80000680]:SMSLXDA t5, t6, t4<br> [0x80000684]:sw t5, 216(sp)<br>    |
|  53|[0x800023b0]<br>0x40003FFF|- rs2_h0_val == -2<br> - rs1_h1_val == -5<br>                                                                                                                                                                                                                                                                                            |[0x8000069c]:SMSLXDA t5, t6, t4<br> [0x800006a0]:sw t5, 224(sp)<br>    |
|  54|[0x800023b8]<br>0x40003FFF|- rs2_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                |[0x800006b4]:SMSLXDA t5, t6, t4<br> [0x800006b8]:sw t5, 232(sp)<br>    |
|  55|[0x800023c0]<br>0x40003FFF|- rs2_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                 |[0x800006cc]:SMSLXDA t5, t6, t4<br> [0x800006d0]:sw t5, 240(sp)<br>    |
|  56|[0x800023c8]<br>0x40003FFF|- rs2_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                  |[0x800006e4]:SMSLXDA t5, t6, t4<br> [0x800006e8]:sw t5, 248(sp)<br>    |
|  57|[0x800023d0]<br>0x40003FFF|- rs2_h0_val == 64<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                         |[0x80000700]:SMSLXDA t5, t6, t4<br> [0x80000704]:sw t5, 256(sp)<br>    |
|  58|[0x800023d8]<br>0x40003FFF|- rs2_h0_val == 16<br> - rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                                            |[0x80000718]:SMSLXDA t5, t6, t4<br> [0x8000071c]:sw t5, 264(sp)<br>    |
|  59|[0x800023e0]<br>0x40003FFF|- rs2_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                    |[0x80000734]:SMSLXDA t5, t6, t4<br> [0x80000738]:sw t5, 272(sp)<br>    |
|  60|[0x800023e8]<br>0x40003FFF|- rs1_h1_val == -2049<br>                                                                                                                                                                                                                                                                                                                |[0x80000750]:SMSLXDA t5, t6, t4<br> [0x80000754]:sw t5, 280(sp)<br>    |
|  61|[0x800023f0]<br>0x40003FFF|- rs1_h1_val == -129<br>                                                                                                                                                                                                                                                                                                                 |[0x8000076c]:SMSLXDA t5, t6, t4<br> [0x80000770]:sw t5, 288(sp)<br>    |
|  62|[0x800023f8]<br>0x40003FFF|- rs2_h0_val == -513<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                       |[0x80000788]:SMSLXDA t5, t6, t4<br> [0x8000078c]:sw t5, 296(sp)<br>    |
|  63|[0x80002400]<br>0x40003FFF|- rs1_h1_val == -17<br>                                                                                                                                                                                                                                                                                                                  |[0x800007a4]:SMSLXDA t5, t6, t4<br> [0x800007a8]:sw t5, 304(sp)<br>    |
|  64|[0x80002408]<br>0x40003FFF|- rs1_h1_val == -2<br>                                                                                                                                                                                                                                                                                                                   |[0x800007bc]:SMSLXDA t5, t6, t4<br> [0x800007c0]:sw t5, 312(sp)<br>    |
|  65|[0x80002410]<br>0x40003FFF|- rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                                                 |[0x800007d8]:SMSLXDA t5, t6, t4<br> [0x800007dc]:sw t5, 320(sp)<br>    |
|  66|[0x80002418]<br>0x40003FFF|- rs1_h0_val == -32768<br> - rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                                      |[0x800007f0]:SMSLXDA t5, t6, t4<br> [0x800007f4]:sw t5, 328(sp)<br>    |
|  67|[0x80002420]<br>0x40003FFF|- rs1_h1_val == 512<br>                                                                                                                                                                                                                                                                                                                  |[0x8000080c]:SMSLXDA t5, t6, t4<br> [0x80000810]:sw t5, 336(sp)<br>    |
|  68|[0x80002428]<br>0x40003FFF|- rs1_h1_val == 128<br>                                                                                                                                                                                                                                                                                                                  |[0x80000828]:SMSLXDA t5, t6, t4<br> [0x8000082c]:sw t5, 344(sp)<br>    |
|  69|[0x80002430]<br>0x40003FFF|- rs2_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                   |[0x80000844]:SMSLXDA t5, t6, t4<br> [0x80000848]:sw t5, 352(sp)<br>    |
|  70|[0x80002438]<br>0x40003FFF|- rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                   |[0x80000860]:SMSLXDA t5, t6, t4<br> [0x80000864]:sw t5, 360(sp)<br>    |
|  71|[0x80002440]<br>0x40003FFF|- rs2_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                |[0x8000087c]:SMSLXDA t5, t6, t4<br> [0x80000880]:sw t5, 368(sp)<br>    |
|  72|[0x80002448]<br>0x40003FFF|- rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                    |[0x80000898]:SMSLXDA t5, t6, t4<br> [0x8000089c]:sw t5, 376(sp)<br>    |
|  73|[0x80002450]<br>0x40003FFF|- rs1_h1_val == 4<br>                                                                                                                                                                                                                                                                                                                    |[0x800008b4]:SMSLXDA t5, t6, t4<br> [0x800008b8]:sw t5, 384(sp)<br>    |
|  74|[0x80002458]<br>0x40003FFF|- rs2_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                |[0x800008d0]:SMSLXDA t5, t6, t4<br> [0x800008d4]:sw t5, 392(sp)<br>    |
|  75|[0x80002460]<br>0x40003FFF|- rs1_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                   |[0x800008ec]:SMSLXDA t5, t6, t4<br> [0x800008f0]:sw t5, 400(sp)<br>    |
|  76|[0x80002468]<br>0x40003FFF|- rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                               |[0x80000904]:SMSLXDA t5, t6, t4<br> [0x80000908]:sw t5, 408(sp)<br>    |
|  77|[0x80002470]<br>0x40003FFF|- rs2_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                 |[0x8000091c]:SMSLXDA t5, t6, t4<br> [0x80000920]:sw t5, 416(sp)<br>    |
|  78|[0x80002478]<br>0x40003FFF|- rs2_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                   |[0x80000938]:SMSLXDA t5, t6, t4<br> [0x8000093c]:sw t5, 424(sp)<br>    |
|  79|[0x80002480]<br>0x40003FFF|- rs2_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                    |[0x80000954]:SMSLXDA t5, t6, t4<br> [0x80000958]:sw t5, 432(sp)<br>    |
|  80|[0x80002488]<br>0x40003FFF|- rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                                |[0x80000970]:SMSLXDA t5, t6, t4<br> [0x80000974]:sw t5, 440(sp)<br>    |
