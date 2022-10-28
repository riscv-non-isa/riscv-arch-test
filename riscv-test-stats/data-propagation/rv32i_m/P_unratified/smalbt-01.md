
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000920')]      |
| SIG_REGION                | [('0x80002210', '0x80002480', '156 words')]      |
| COV_LABELS                | smalbt      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/smalbt-01.S    |
| Total Number of coverpoints| 247     |
| Total Coverpoints Hit     | 241      |
| Total Signature Updates   | 154      |
| STAT1                     | 74      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 77     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000079c]:SMALBT t5, t6, t4
      [0x800007a0]:sw t5, 328(tp)
 -- Signature Address: 0x80002400 Data: 0xFFFAFFEF
 -- Redundant Coverpoints hit by the op
      - opcode : smalbt
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h1_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008f4]:SMALBT t5, t6, t4
      [0x800008f8]:sw t5, 432(tp)
 -- Signature Address: 0x80002468 Data: 0xFFFAFFEF
 -- Redundant Coverpoints hit by the op
      - opcode : smalbt
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 21845
      - rs2_h0_val == 4096
      - rs1_h1_val == 21845
      - rs1_h0_val == 16




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000910]:SMALBT t5, t6, t4
      [0x80000914]:sw t5, 440(tp)
 -- Signature Address: 0x80002470 Data: 0xFFFAFFEF
 -- Redundant Coverpoints hit by the op
      - opcode : smalbt
      - rs1 : x31
      - rs2 : x29
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 512
      - rs2_h0_val == 32767






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : smalbt', 'rs1 : x26', 'rs2 : x26', 'rd : x26', 'rs1 == rs2 == rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == -16385', 'rs2_h0_val == 16384', 'rs1_h1_val == -16385', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000108]:SMALBT s10, s10, s10
	-[0x8000010c]:sw s10, 0(sp)
Current Store : [0x80000110] : sw s11, 4(sp) -- Store: [0x80002214]:0xBB6FAB7F




Last Coverpoint : ['rs1 : x21', 'rs2 : x21', 'rd : x10', 'rs1 == rs2 != rd', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs2_h1_val == 21845', 'rs2_h0_val == 4096', 'rs1_h1_val == 21845', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000120]:SMALBT a0, s5, s5
	-[0x80000124]:sw a0, 8(sp)
Current Store : [0x80000128] : sw a1, 12(sp) -- Store: [0x8000221c]:0xAB7FBB6F




Last Coverpoint : ['rs1 : x25', 'rs2 : x1', 'rd : x8', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == 2', 'rs2_h0_val == -8193', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x8000013c]:SMALBT fp, s9, ra
	-[0x80000140]:sw fp, 16(sp)
Current Store : [0x80000144] : sw s1, 20(sp) -- Store: [0x80002224]:0xADFEEDBE




Last Coverpoint : ['rs1 : x6', 'rs2 : x4', 'rd : x4', 'rs2 == rd != rs1', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs2_h1_val == -1025', 'rs1_h1_val == 16384', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000154]:SMALBT tp, t1, tp
	-[0x80000158]:sw tp, 24(sp)
Current Store : [0x8000015c] : sw t0, 28(sp) -- Store: [0x8000222c]:0x800000F8




Last Coverpoint : ['rs1 : x16', 'rs2 : x24', 'rd : x16', 'rs1 == rd != rs2', 'rs2_h1_val == -257', 'rs1_h1_val == -17']
Last Code Sequence : 
	-[0x80000170]:SMALBT a6, a6, s8
	-[0x80000174]:sw a6, 32(sp)
Current Store : [0x80000178] : sw a7, 36(sp) -- Store: [0x80002234]:0xBEADFEED




Last Coverpoint : ['rs1 : x29', 'rs2 : x11', 'rd : x14', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == -4097', 'rs1_h1_val == -8193', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x8000018c]:SMALBT a4, t4, a1
	-[0x80000190]:sw a4, 40(sp)
Current Store : [0x80000194] : sw a5, 44(sp) -- Store: [0x8000223c]:0xFAB7FBB6




Last Coverpoint : ['rs1 : x10', 'rs2 : x19', 'rd : x28', 'rs2_h1_val == -21846', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x800001a8]:SMALBT t3, a0, s3
	-[0x800001ac]:sw t3, 48(sp)
Current Store : [0x800001b0] : sw t4, 52(sp) -- Store: [0x80002244]:0xDFFF0010




Last Coverpoint : ['rs1 : x8', 'rs2 : x31', 'rd : x20', 'rs2_h1_val == 32767', 'rs1_h1_val == -513', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x800001c4]:SMALBT s4, fp, t6
	-[0x800001c8]:sw s4, 56(sp)
Current Store : [0x800001cc] : sw s5, 60(sp) -- Store: [0x8000224c]:0x55551000




Last Coverpoint : ['rs1 : x27', 'rs2 : x17', 'rd : x30', 'rs2_h1_val == -8193', 'rs2_h0_val == 256', 'rs1_h1_val == 2048', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x800001dc]:SMALBT t5, s11, a7
	-[0x800001e0]:sw t5, 64(sp)
Current Store : [0x800001e4] : sw t6, 68(sp) -- Store: [0x80002254]:0x7FFFFFFA




Last Coverpoint : ['rs1 : x15', 'rs2 : x16', 'rd : x24', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == -2049', 'rs1_h1_val == -1025', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x800001f4]:SMALBT s8, a5, a6
	-[0x800001f8]:sw s8, 72(sp)
Current Store : [0x800001fc] : sw s9, 76(sp) -- Store: [0x8000225c]:0xFFF9FDFF




Last Coverpoint : ['rs1 : x24', 'rs2 : x14', 'rd : x12', 'rs2_h1_val == -513']
Last Code Sequence : 
	-[0x8000020c]:SMALBT a2, s8, a4
	-[0x80000210]:sw a2, 80(sp)
Current Store : [0x80000214] : sw a3, 84(sp) -- Store: [0x80002264]:0xEADFEEDB




Last Coverpoint : ['rs1 : x7', 'rs2 : x28', 'rd : x18', 'rs2_h1_val == -129', 'rs2_h0_val == -32768', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000224]:SMALBT s2, t2, t3
	-[0x80000228]:sw s2, 88(sp)
Current Store : [0x8000022c] : sw s3, 92(sp) -- Store: [0x8000226c]:0xAAAAFFFC




Last Coverpoint : ['rs1 : x12', 'rs2 : x25', 'rd : x6', 'rs2_h1_val == -65', 'rs2_h0_val == 21845']
Last Code Sequence : 
	-[0x80000244]:SMALBT t1, a2, s9
	-[0x80000248]:sw t1, 0(ra)
Current Store : [0x8000024c] : sw t2, 4(ra) -- Store: [0x80002274]:0x0008FDFF




Last Coverpoint : ['rs1 : x4', 'rs2 : x29', 'rd : x22', 'rs2_h1_val == -33', 'rs2_h0_val == 0', 'rs1_h1_val == -9']
Last Code Sequence : 
	-[0x80000258]:SMALBT s6, tp, t4
	-[0x8000025c]:sw s6, 8(ra)
Current Store : [0x80000260] : sw s7, 12(ra) -- Store: [0x8000227c]:0xB6FAB7FB




Last Coverpoint : ['rs1 : x31', 'rs2 : x30', 'rd : x2', 'rs1_h0_val == -32768', 'rs2_h1_val == -17', 'rs2_h0_val == -2049', 'rs1_h1_val == -65']
Last Code Sequence : 
	-[0x80000270]:SMALBT sp, t6, t5
	-[0x80000274]:sw sp, 16(ra)
Current Store : [0x80000278] : sw gp, 20(ra) -- Store: [0x80002284]:0x7FBB6FAB




Last Coverpoint : ['rs1 : x18', 'rs2 : x8', 'rs2_h1_val == -9', 'rs2_h0_val == -4097']
Last Code Sequence : 
	-[0x8000028c]:SMALBT s4, s2, fp
	-[0x80000290]:sw s4, 24(ra)
Current Store : [0x80000294] : sw s5, 28(ra) -- Store: [0x8000228c]:0x55551000




Last Coverpoint : ['rs1 : x17', 'rs2 : x13', 'rs2_h1_val == -5', 'rs2_h0_val == 32767', 'rs1_h1_val == 4', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x800002a8]:SMALBT s10, a7, a3
	-[0x800002ac]:sw s10, 32(ra)
Current Store : [0x800002b0] : sw s11, 36(ra) -- Store: [0x80002294]:0x08002000




Last Coverpoint : ['rs1 : x20', 'rs2 : x5', 'rs2_h1_val == -3', 'rs1_h1_val == -4097', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x800002c4]:SMALBT s6, s4, t0
	-[0x800002c8]:sw s6, 40(ra)
Current Store : [0x800002cc] : sw s7, 44(ra) -- Store: [0x8000229c]:0xB6FAB7FB




Last Coverpoint : ['rs1 : x11', 'rs2 : x10', 'rs2_h1_val == -2', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x800002e0]:SMALBT s8, a1, a0
	-[0x800002e4]:sw s8, 48(ra)
Current Store : [0x800002e8] : sw s9, 52(ra) -- Store: [0x800022a4]:0xFFBF5555




Last Coverpoint : ['rs1 : x22', 'rs2 : x12', 'rs2_h1_val == -32768', 'rs2_h0_val == 1024']
Last Code Sequence : 
	-[0x800002fc]:SMALBT fp, s6, a2
	-[0x80000300]:sw fp, 56(ra)
Current Store : [0x80000304] : sw s1, 60(ra) -- Store: [0x800022ac]:0xADFEEDBE




Last Coverpoint : ['rs1 : x9', 'rs2 : x0', 'rs2_h1_val == 0', 'rs1_h1_val == 128']
Last Code Sequence : 
	-[0x80000318]:SMALBT s2, s1, zero
	-[0x8000031c]:sw s2, 64(ra)
Current Store : [0x80000320] : sw s3, 68(ra) -- Store: [0x800022b4]:0xAAAAFFFC




Last Coverpoint : ['rs1 : x23', 'rs2 : x3', 'rs2_h1_val == 8192']
Last Code Sequence : 
	-[0x8000033c]:SMALBT a6, s7, gp
	-[0x80000340]:sw a6, 0(tp)
Current Store : [0x80000344] : sw a7, 4(tp) -- Store: [0x800022bc]:0x0004AAAA




Last Coverpoint : ['rs1 : x14', 'rs2 : x20', 'rs2_h1_val == 4096', 'rs2_h0_val == -5', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x80000358]:SMALBT t3, a4, s4
	-[0x8000035c]:sw t3, 8(tp)
Current Store : [0x80000360] : sw t4, 12(tp) -- Store: [0x800022c4]:0xFFDF0000




Last Coverpoint : ['rs1 : x30', 'rs2 : x23', 'rs2_h1_val == 2048', 'rs2_h0_val == -33', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000374]:SMALBT s10, t5, s7
	-[0x80000378]:sw s10, 16(tp)
Current Store : [0x8000037c] : sw s11, 20(tp) -- Store: [0x800022cc]:0x08002000




Last Coverpoint : ['rs1 : x1', 'rs2 : x2', 'rs2_h1_val == 1024', 'rs2_h0_val == -65']
Last Code Sequence : 
	-[0x80000390]:SMALBT t3, ra, sp
	-[0x80000394]:sw t3, 24(tp)
Current Store : [0x80000398] : sw t4, 28(tp) -- Store: [0x800022d4]:0xFFDF0000




Last Coverpoint : ['rs1 : x0', 'rs2 : x15', 'rs2_h1_val == 512', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x800003ac]:SMALBT s2, zero, a5
	-[0x800003b0]:sw s2, 32(tp)
Current Store : [0x800003b4] : sw s3, 36(tp) -- Store: [0x800022dc]:0xAAAAFFFC




Last Coverpoint : ['rs1 : x2', 'rs2 : x9', 'rs2_h1_val == 256', 'rs2_h0_val == 32', 'rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x800003c8]:SMALBT s4, sp, s1
	-[0x800003cc]:sw s4, 40(tp)
Current Store : [0x800003d0] : sw s5, 44(tp) -- Store: [0x800022e4]:0x55551000




Last Coverpoint : ['rs1 : x5', 'rs2 : x6', 'rs2_h1_val == 128', 'rs2_h0_val == -1025']
Last Code Sequence : 
	-[0x800003e4]:SMALBT t5, t0, t1
	-[0x800003e8]:sw t5, 48(tp)
Current Store : [0x800003ec] : sw t6, 52(tp) -- Store: [0x800022ec]:0xFFBF8000




Last Coverpoint : ['rs1 : x19', 'rs2 : x27', 'rs2_h1_val == 64', 'rs2_h0_val == 16']
Last Code Sequence : 
	-[0x80000400]:SMALBT fp, s3, s11
	-[0x80000404]:sw fp, 56(tp)
Current Store : [0x80000408] : sw s1, 60(tp) -- Store: [0x800022f4]:0x01000020




Last Coverpoint : ['rs1 : x13', 'rs2 : x7', 'rs2_h1_val == 32', 'rs2_h0_val == 2048', 'rs1_h1_val == -21846', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x8000041c]:SMALBT s4, a3, t2
	-[0x80000420]:sw s4, 64(tp)
Current Store : [0x80000424] : sw s5, 68(tp) -- Store: [0x800022fc]:0x55551000




Last Coverpoint : ['rs1 : x28', 'rs2 : x18', 'rs2_h1_val == 16', 'rs2_h0_val == 512']
Last Code Sequence : 
	-[0x80000438]:SMALBT s4, t3, s2
	-[0x8000043c]:sw s4, 72(tp)
Current Store : [0x80000440] : sw s5, 76(tp) -- Store: [0x80002304]:0x55551000




Last Coverpoint : ['rs1 : x3', 'rs2 : x22', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000454]:SMALBT s2, gp, s6
	-[0x80000458]:sw s2, 80(tp)
Current Store : [0x8000045c] : sw s3, 84(tp) -- Store: [0x8000230c]:0x0800FFF8




Last Coverpoint : ['rs2_h1_val == 16384', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000470]:SMALBT t5, t6, t4
	-[0x80000474]:sw t5, 88(tp)
Current Store : [0x80000478] : sw t6, 92(tp) -- Store: [0x80002314]:0xFFF8FF7F




Last Coverpoint : ['rs2_h0_val == 8192', 'rs1_h1_val == -129', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000488]:SMALBT t5, t6, t4
	-[0x8000048c]:sw t5, 96(tp)
Current Store : [0x80000490] : sw t6, 100(tp) -- Store: [0x8000231c]:0xFF7FFFBF




Last Coverpoint : ['rs1_h0_val == -33']
Last Code Sequence : 
	-[0x800004a4]:SMALBT t5, t6, t4
	-[0x800004a8]:sw t5, 104(tp)
Current Store : [0x800004ac] : sw t6, 108(tp) -- Store: [0x80002324]:0x0400FFDF




Last Coverpoint : ['rs1_h0_val == -5']
Last Code Sequence : 
	-[0x800004c0]:SMALBT t5, t6, t4
	-[0x800004c4]:sw t5, 112(tp)
Current Store : [0x800004c8] : sw t6, 116(tp) -- Store: [0x8000232c]:0x0100FFFB




Last Coverpoint : ['rs1_h0_val == -2']
Last Code Sequence : 
	-[0x800004dc]:SMALBT t5, t6, t4
	-[0x800004e0]:sw t5, 120(tp)
Current Store : [0x800004e4] : sw t6, 124(tp) -- Store: [0x80002334]:0xFFF9FFFE




Last Coverpoint : ['rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x800004f4]:SMALBT t5, t6, t4
	-[0x800004f8]:sw t5, 128(tp)
Current Store : [0x800004fc] : sw t6, 132(tp) -- Store: [0x8000233c]:0x7FFF1000




Last Coverpoint : ['rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000510]:SMALBT t5, t6, t4
	-[0x80000514]:sw t5, 136(tp)
Current Store : [0x80000518] : sw t6, 140(tp) -- Store: [0x80002344]:0x00800101




Last Coverpoint : ['rs1_h0_val == 128']
Last Code Sequence : 
	-[0x8000052c]:SMALBT t5, t6, t4
	-[0x80000530]:sw t5, 144(tp)
Current Store : [0x80000534] : sw t6, 148(tp) -- Store: [0x8000234c]:0x00070080




Last Coverpoint : ['rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000548]:SMALBT t5, t6, t4
	-[0x8000054c]:sw t5, 152(tp)
Current Store : [0x80000550] : sw t6, 156(tp) -- Store: [0x80002354]:0x7FFF0040




Last Coverpoint : ['rs2_h1_val == 4', 'rs2_h0_val == -21846', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000564]:SMALBT t5, t6, t4
	-[0x80000568]:sw t5, 160(tp)
Current Store : [0x8000056c] : sw t6, 164(tp) -- Store: [0x8000235c]:0xFFF70008




Last Coverpoint : ['rs2_h0_val == -129', 'rs1_h1_val == 8192', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80000580]:SMALBT t5, t6, t4
	-[0x80000584]:sw t5, 168(tp)
Current Store : [0x80000588] : sw t6, 172(tp) -- Store: [0x80002364]:0x20000004




Last Coverpoint : ['rs1_h1_val == -257', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x8000059c]:SMALBT t5, t6, t4
	-[0x800005a0]:sw t5, 176(tp)
Current Store : [0x800005a4] : sw t6, 180(tp) -- Store: [0x8000236c]:0xFEFF0002




Last Coverpoint : ['rs2_h0_val == -257', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x800005b4]:SMALBT t5, t6, t4
	-[0x800005b8]:sw t5, 184(tp)
Current Store : [0x800005bc] : sw t6, 188(tp) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs2_h0_val == 64', 'rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x800005cc]:SMALBT t5, t6, t4
	-[0x800005d0]:sw t5, 192(tp)
Current Store : [0x800005d4] : sw t6, 196(tp) -- Store: [0x8000237c]:0x10000000




Last Coverpoint : ['rs1_h0_val == -1']
Last Code Sequence : 
	-[0x800005e4]:SMALBT t5, t6, t4
	-[0x800005e8]:sw t5, 200(tp)
Current Store : [0x800005ec] : sw t6, 204(tp) -- Store: [0x80002384]:0xFFF9FFFF




Last Coverpoint : ['rs2_h1_val == 8', 'rs2_h0_val == -16385']
Last Code Sequence : 
	-[0x80000600]:SMALBT t5, t6, t4
	-[0x80000604]:sw t5, 208(tp)
Current Store : [0x80000608] : sw t6, 212(tp) -- Store: [0x8000238c]:0xFF7FFFEF




Last Coverpoint : ['rs2_h1_val == 1', 'rs2_h0_val == 4', 'rs1_h1_val == -1']
Last Code Sequence : 
	-[0x8000061c]:SMALBT t5, t6, t4
	-[0x80000620]:sw t5, 216(tp)
Current Store : [0x80000624] : sw t6, 220(tp) -- Store: [0x80002394]:0xFFFF0005




Last Coverpoint : ['rs2_h0_val == -3', 'rs1_h1_val == -33']
Last Code Sequence : 
	-[0x80000634]:SMALBT t5, t6, t4
	-[0x80000638]:sw t5, 224(tp)
Current Store : [0x8000063c] : sw t6, 228(tp) -- Store: [0x8000239c]:0xFFDF1000




Last Coverpoint : ['rs2_h0_val == 128']
Last Code Sequence : 
	-[0x8000064c]:SMALBT t5, t6, t4
	-[0x80000650]:sw t5, 232(tp)
Current Store : [0x80000654] : sw t6, 236(tp) -- Store: [0x800023a4]:0x00092000




Last Coverpoint : ['rs2_h0_val == 8']
Last Code Sequence : 
	-[0x80000668]:SMALBT t5, t6, t4
	-[0x8000066c]:sw t5, 240(tp)
Current Store : [0x80000670] : sw t6, 244(tp) -- Store: [0x800023ac]:0x7FFFFEFF




Last Coverpoint : ['rs2_h0_val == 2']
Last Code Sequence : 
	-[0x80000684]:SMALBT t5, t6, t4
	-[0x80000688]:sw t5, 248(tp)
Current Store : [0x8000068c] : sw t6, 252(tp) -- Store: [0x800023b4]:0x2000FFFE




Last Coverpoint : ['rs2_h0_val == 1']
Last Code Sequence : 
	-[0x800006a0]:SMALBT t5, t6, t4
	-[0x800006a4]:sw t5, 256(tp)
Current Store : [0x800006a8] : sw t6, 260(tp) -- Store: [0x800023bc]:0x3FFF0040




Last Coverpoint : ['rs2_h0_val == -1']
Last Code Sequence : 
	-[0x800006bc]:SMALBT t5, t6, t4
	-[0x800006c0]:sw t5, 264(tp)
Current Store : [0x800006c4] : sw t6, 268(tp) -- Store: [0x800023c4]:0x20000002




Last Coverpoint : ['rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x800006d8]:SMALBT t5, t6, t4
	-[0x800006dc]:sw t5, 272(tp)
Current Store : [0x800006e0] : sw t6, 276(tp) -- Store: [0x800023cc]:0xF7FF0080




Last Coverpoint : ['rs1_h1_val == -5']
Last Code Sequence : 
	-[0x800006f4]:SMALBT t5, t6, t4
	-[0x800006f8]:sw t5, 280(tp)
Current Store : [0x800006fc] : sw t6, 284(tp) -- Store: [0x800023d4]:0xFFFBFFF6




Last Coverpoint : ['rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80000710]:SMALBT t5, t6, t4
	-[0x80000714]:sw t5, 288(tp)
Current Store : [0x80000718] : sw t6, 292(tp) -- Store: [0x800023dc]:0x0800EFFE




Last Coverpoint : ['rs2_h0_val == -2', 'rs1_h1_val == -3']
Last Code Sequence : 
	-[0x8000072c]:SMALBT t5, t6, t4
	-[0x80000730]:sw t5, 296(tp)
Current Store : [0x80000734] : sw t6, 300(tp) -- Store: [0x800023e4]:0xFFFDEFFF




Last Coverpoint : ['rs1_h1_val == -2']
Last Code Sequence : 
	-[0x80000748]:SMALBT t5, t6, t4
	-[0x8000074c]:sw t5, 304(tp)
Current Store : [0x80000750] : sw t6, 308(tp) -- Store: [0x800023ec]:0xFFFE0006




Last Coverpoint : ['rs1_h1_val == -32768', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000764]:SMALBT t5, t6, t4
	-[0x80000768]:sw t5, 312(tp)
Current Store : [0x8000076c] : sw t6, 316(tp) -- Store: [0x800023f4]:0x80005555




Last Coverpoint : ['rs1_h1_val == 512']
Last Code Sequence : 
	-[0x80000780]:SMALBT t5, t6, t4
	-[0x80000784]:sw t5, 320(tp)
Current Store : [0x80000788] : sw t6, 324(tp) -- Store: [0x800023fc]:0x02000800




Last Coverpoint : ['opcode : smalbt', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == 0']
Last Code Sequence : 
	-[0x8000079c]:SMALBT t5, t6, t4
	-[0x800007a0]:sw t5, 328(tp)
Current Store : [0x800007a4] : sw t6, 332(tp) -- Store: [0x80002404]:0x00033FFF




Last Coverpoint : ['rs2_h1_val == -1', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x800007b8]:SMALBT t5, t6, t4
	-[0x800007bc]:sw t5, 336(tp)
Current Store : [0x800007c0] : sw t6, 340(tp) -- Store: [0x8000240c]:0x0009F7FF




Last Coverpoint : ['rs1_h1_val == 64']
Last Code Sequence : 
	-[0x800007d0]:SMALBT t5, t6, t4
	-[0x800007d4]:sw t5, 344(tp)
Current Store : [0x800007d8] : sw t6, 348(tp) -- Store: [0x80002414]:0x0040FFF9




Last Coverpoint : ['rs1_h1_val == 32']
Last Code Sequence : 
	-[0x800007ec]:SMALBT t5, t6, t4
	-[0x800007f0]:sw t5, 352(tp)
Current Store : [0x800007f4] : sw t6, 356(tp) -- Store: [0x8000241c]:0x0020FFBF




Last Coverpoint : ['rs1_h1_val == 16']
Last Code Sequence : 
	-[0x80000808]:SMALBT t5, t6, t4
	-[0x8000080c]:sw t5, 360(tp)
Current Store : [0x80000810] : sw t6, 364(tp) -- Store: [0x80002424]:0x0010FF7F




Last Coverpoint : ['rs1_h1_val == 2']
Last Code Sequence : 
	-[0x80000824]:SMALBT t5, t6, t4
	-[0x80000828]:sw t5, 368(tp)
Current Store : [0x8000082c] : sw t6, 372(tp) -- Store: [0x8000242c]:0x00020200




Last Coverpoint : ['rs1_h1_val == 1']
Last Code Sequence : 
	-[0x80000840]:SMALBT t5, t6, t4
	-[0x80000844]:sw t5, 376(tp)
Current Store : [0x80000848] : sw t6, 380(tp) -- Store: [0x80002434]:0x00010003




Last Coverpoint : ['rs2_h0_val == -513']
Last Code Sequence : 
	-[0x80000858]:SMALBT t5, t6, t4
	-[0x8000085c]:sw t5, 384(tp)
Current Store : [0x80000860] : sw t6, 388(tp) -- Store: [0x8000243c]:0xFFFFFFFE




Last Coverpoint : ['rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000874]:SMALBT t5, t6, t4
	-[0x80000878]:sw t5, 392(tp)
Current Store : [0x8000087c] : sw t6, 396(tp) -- Store: [0x80002444]:0xFFFE7FFF




Last Coverpoint : ['rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x80000890]:SMALBT t5, t6, t4
	-[0x80000894]:sw t5, 400(tp)
Current Store : [0x80000898] : sw t6, 404(tp) -- Store: [0x8000244c]:0x0003BFFF




Last Coverpoint : ['rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x800008a8]:SMALBT t5, t6, t4
	-[0x800008ac]:sw t5, 408(tp)
Current Store : [0x800008b0] : sw t6, 412(tp) -- Store: [0x80002454]:0x0100DFFF




Last Coverpoint : ['rs2_h0_val == -17']
Last Code Sequence : 
	-[0x800008c4]:SMALBT t5, t6, t4
	-[0x800008c8]:sw t5, 416(tp)
Current Store : [0x800008cc] : sw t6, 420(tp) -- Store: [0x8000245c]:0x3FFF0009




Last Coverpoint : ['rs2_h0_val == -9']
Last Code Sequence : 
	-[0x800008dc]:SMALBT t5, t6, t4
	-[0x800008e0]:sw t5, 424(tp)
Current Store : [0x800008e4] : sw t6, 428(tp) -- Store: [0x80002464]:0xFFFB0008




Last Coverpoint : ['opcode : smalbt', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 21845', 'rs2_h0_val == 4096', 'rs1_h1_val == 21845', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x800008f4]:SMALBT t5, t6, t4
	-[0x800008f8]:sw t5, 432(tp)
Current Store : [0x800008fc] : sw t6, 436(tp) -- Store: [0x8000246c]:0x55550010




Last Coverpoint : ['opcode : smalbt', 'rs1 : x31', 'rs2 : x29', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 512', 'rs2_h0_val == 32767']
Last Code Sequence : 
	-[0x80000910]:SMALBT t5, t6, t4
	-[0x80000914]:sw t5, 440(tp)
Current Store : [0x80000918] : sw t6, 444(tp) -- Store: [0x80002474]:0x00060006





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

|s.no|        signature         |                                                                                                                                                                    coverpoints                                                                                                                                                                     |                                code                                 |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80002210]<br>0xBFFF4000|- opcode : smalbt<br> - rs1 : x26<br> - rs2 : x26<br> - rd : x26<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == -16385<br> - rs2_h0_val == 16384<br> - rs1_h1_val == -16385<br> - rs1_h0_val == 16384<br> |[0x80000108]:SMALBT s10, s10, s10<br> [0x8000010c]:sw s10, 0(sp)<br> |
|   2|[0x80002218]<br>0x56FF76DF|- rs1 : x21<br> - rs2 : x21<br> - rd : x10<br> - rs1 == rs2 != rd<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs2_h1_val == 21845<br> - rs2_h0_val == 4096<br> - rs1_h1_val == 21845<br> - rs1_h0_val == 4096<br>                                                                                                                                 |[0x80000120]:SMALBT a0, s5, s5<br> [0x80000124]:sw a0, 8(sp)<br>     |
|   3|[0x80002220]<br>0x5BFDDB7D|- rs1 : x25<br> - rs2 : x1<br> - rd : x8<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h1_val == 2<br> - rs2_h0_val == -8193<br> - rs1_h0_val == -513<br>                                   |[0x8000013c]:SMALBT fp, s9, ra<br> [0x80000140]:sw fp, 16(sp)<br>    |
|   4|[0x80002228]<br>0xFBFF1000|- rs1 : x6<br> - rs2 : x4<br> - rd : x4<br> - rs2 == rd != rs1<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs2_h1_val == -1025<br> - rs1_h1_val == 16384<br> - rs1_h0_val == 512<br>                                                                                                                                                              |[0x80000154]:SMALBT tp, t1, tp<br> [0x80000158]:sw tp, 24(sp)<br>    |
|   5|[0x80002230]<br>0xFFEFFFF8|- rs1 : x16<br> - rs2 : x24<br> - rd : x16<br> - rs1 == rd != rs2<br> - rs2_h1_val == -257<br> - rs1_h1_val == -17<br>                                                                                                                                                                                                                              |[0x80000170]:SMALBT a6, a6, s8<br> [0x80000174]:sw a6, 32(sp)<br>    |
|   6|[0x80002238]<br>0xF56FF76D|- rs1 : x29<br> - rs2 : x11<br> - rd : x14<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h1_val == -4097<br> - rs1_h1_val == -8193<br> - rs1_h0_val == 16<br>                                                                                                                                                                                   |[0x8000018c]:SMALBT a4, t4, a1<br> [0x80000190]:sw a4, 40(sp)<br>    |
|   7|[0x80002240]<br>0xDDB7D5BF|- rs1 : x10<br> - rs2 : x19<br> - rd : x28<br> - rs2_h1_val == -21846<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                                  |[0x800001a8]:SMALBT t3, a0, s3<br> [0x800001ac]:sw t3, 48(sp)<br>    |
|   8|[0x80002248]<br>0xB7D5BFDD|- rs1 : x8<br> - rs2 : x31<br> - rd : x20<br> - rs2_h1_val == 32767<br> - rs1_h1_val == -513<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                           |[0x800001c4]:SMALBT s4, fp, t6<br> [0x800001c8]:sw s4, 56(sp)<br>    |
|   9|[0x80002250]<br>0xF76DF56F|- rs1 : x27<br> - rs2 : x17<br> - rd : x30<br> - rs2_h1_val == -8193<br> - rs2_h0_val == 256<br> - rs1_h1_val == 2048<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                  |[0x800001dc]:SMALBT t5, s11, a7<br> [0x800001e0]:sw t5, 64(sp)<br>   |
|  10|[0x80002258]<br>0xFEFFFFF8|- rs1 : x15<br> - rs2 : x16<br> - rd : x24<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h1_val == -2049<br> - rs1_h1_val == -1025<br> - rs1_h0_val == -9<br>                                                                                                                                                                                   |[0x800001f4]:SMALBT s8, a5, a6<br> [0x800001f8]:sw s8, 72(sp)<br>    |
|  11|[0x80002260]<br>0xD5BFDDB7|- rs1 : x24<br> - rs2 : x14<br> - rd : x12<br> - rs2_h1_val == -513<br>                                                                                                                                                                                                                                                                             |[0x8000020c]:SMALBT a2, s8, a4<br> [0x80000210]:sw a2, 80(sp)<br>    |
|  12|[0x80002268]<br>0xDF56FF76|- rs1 : x7<br> - rs2 : x28<br> - rd : x18<br> - rs2_h1_val == -129<br> - rs2_h0_val == -32768<br> - rs1_h1_val == 8<br>                                                                                                                                                                                                                             |[0x80000224]:SMALBT s2, t2, t3<br> [0x80000228]:sw s2, 88(sp)<br>    |
|  13|[0x80002270]<br>0x40000200|- rs1 : x12<br> - rs2 : x25<br> - rd : x6<br> - rs2_h1_val == -65<br> - rs2_h0_val == 21845<br>                                                                                                                                                                                                                                                     |[0x80000244]:SMALBT t1, a2, s9<br> [0x80000248]:sw t1, 0(ra)<br>     |
|  14|[0x80002278]<br>0x6DF56FF7|- rs1 : x4<br> - rs2 : x29<br> - rd : x22<br> - rs2_h1_val == -33<br> - rs2_h0_val == 0<br> - rs1_h1_val == -9<br>                                                                                                                                                                                                                                  |[0x80000258]:SMALBT s6, tp, t4<br> [0x8000025c]:sw s6, 8(ra)<br>     |
|  15|[0x80002280]<br>0x80002210|- rs1 : x31<br> - rs2 : x30<br> - rd : x2<br> - rs1_h0_val == -32768<br> - rs2_h1_val == -17<br> - rs2_h0_val == -2049<br> - rs1_h1_val == -65<br>                                                                                                                                                                                                  |[0x80000270]:SMALBT sp, t6, t5<br> [0x80000274]:sw sp, 16(ra)<br>    |
|  16|[0x80002288]<br>0xB7D5BFDD|- rs1 : x18<br> - rs2 : x8<br> - rs2_h1_val == -9<br> - rs2_h0_val == -4097<br>                                                                                                                                                                                                                                                                     |[0x8000028c]:SMALBT s4, s2, fp<br> [0x80000290]:sw s4, 24(ra)<br>    |
|  17|[0x80002290]<br>0xBFFF4000|- rs1 : x17<br> - rs2 : x13<br> - rs2_h1_val == -5<br> - rs2_h0_val == 32767<br> - rs1_h1_val == 4<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                   |[0x800002a8]:SMALBT s10, a7, a3<br> [0x800002ac]:sw s10, 32(ra)<br>  |
|  18|[0x80002298]<br>0x6DF56FF7|- rs1 : x20<br> - rs2 : x5<br> - rs2_h1_val == -3<br> - rs1_h1_val == -4097<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                              |[0x800002c4]:SMALBT s6, s4, t0<br> [0x800002c8]:sw s6, 40(ra)<br>    |
|  19|[0x800022a0]<br>0xFFF60007|- rs1 : x11<br> - rs2 : x10<br> - rs2_h1_val == -2<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                     |[0x800002e0]:SMALBT s8, a1, a0<br> [0x800002e4]:sw s8, 48(ra)<br>    |
|  20|[0x800022a8]<br>0xFFF7EFFF|- rs1 : x22<br> - rs2 : x12<br> - rs2_h1_val == -32768<br> - rs2_h0_val == 1024<br>                                                                                                                                                                                                                                                                 |[0x800002fc]:SMALBT fp, s6, a2<br> [0x80000300]:sw fp, 56(ra)<br>    |
|  21|[0x800022b0]<br>0x0800FFF7|- rs1 : x9<br> - rs2 : x0<br> - rs2_h1_val == 0<br> - rs1_h1_val == 128<br>                                                                                                                                                                                                                                                                         |[0x80000318]:SMALBT s2, s1, zero<br> [0x8000031c]:sw s2, 64(ra)<br>  |
|  22|[0x800022b8]<br>0xF7FF4000|- rs1 : x23<br> - rs2 : x3<br> - rs2_h1_val == 8192<br>                                                                                                                                                                                                                                                                                             |[0x8000033c]:SMALBT a6, s7, gp<br> [0x80000340]:sw a6, 0(tp)<br>     |
|  23|[0x800022c0]<br>0xFF7F8000|- rs1 : x14<br> - rs2 : x20<br> - rs2_h1_val == 4096<br> - rs2_h0_val == -5<br> - rs1_h1_val == 256<br>                                                                                                                                                                                                                                             |[0x80000358]:SMALBT t3, a4, s4<br> [0x8000035c]:sw t3, 8(tp)<br>     |
|  24|[0x800022c8]<br>0xBFFF4000|- rs1 : x30<br> - rs2 : x23<br> - rs2_h1_val == 2048<br> - rs2_h0_val == -33<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                            |[0x80000374]:SMALBT s10, t5, s7<br> [0x80000378]:sw s10, 16(tp)<br>  |
|  25|[0x800022d0]<br>0xFF7F8000|- rs1 : x1<br> - rs2 : x2<br> - rs2_h1_val == 1024<br> - rs2_h0_val == -65<br>                                                                                                                                                                                                                                                                      |[0x80000390]:SMALBT t3, ra, sp<br> [0x80000394]:sw t3, 24(tp)<br>    |
|  26|[0x800022d8]<br>0x0800FFF7|- rs1 : x0<br> - rs2 : x15<br> - rs2_h1_val == 512<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                                                  |[0x800003ac]:SMALBT s2, zero, a5<br> [0x800003b0]:sw s2, 32(tp)<br>  |
|  27|[0x800022e0]<br>0x1000FFFB|- rs1 : x2<br> - rs2 : x9<br> - rs2_h1_val == 256<br> - rs2_h0_val == 32<br> - rs1_h1_val == 1024<br>                                                                                                                                                                                                                                               |[0x800003c8]:SMALBT s4, sp, s1<br> [0x800003cc]:sw s4, 40(tp)<br>    |
|  28|[0x800022e8]<br>0xFFFAFFEF|- rs1 : x5<br> - rs2 : x6<br> - rs2_h1_val == 128<br> - rs2_h0_val == -1025<br>                                                                                                                                                                                                                                                                     |[0x800003e4]:SMALBT t5, t0, t1<br> [0x800003e8]:sw t5, 48(tp)<br>    |
|  29|[0x800022f0]<br>0xFFF7EFFF|- rs1 : x19<br> - rs2 : x27<br> - rs2_h1_val == 64<br> - rs2_h0_val == 16<br>                                                                                                                                                                                                                                                                       |[0x80000400]:SMALBT fp, s3, s11<br> [0x80000404]:sw fp, 56(tp)<br>   |
|  30|[0x800022f8]<br>0x1000FFFB|- rs1 : x13<br> - rs2 : x7<br> - rs2_h1_val == 32<br> - rs2_h0_val == 2048<br> - rs1_h1_val == -21846<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                    |[0x8000041c]:SMALBT s4, a3, t2<br> [0x80000420]:sw s4, 64(tp)<br>    |
|  31|[0x80002300]<br>0x1000FFFB|- rs1 : x28<br> - rs2 : x18<br> - rs2_h1_val == 16<br> - rs2_h0_val == 512<br>                                                                                                                                                                                                                                                                      |[0x80000438]:SMALBT s4, t3, s2<br> [0x8000043c]:sw s4, 72(tp)<br>    |
|  32|[0x80002308]<br>0x00100200|- rs1 : x3<br> - rs2 : x22<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                                                                                            |[0x80000454]:SMALBT s2, gp, s6<br> [0x80000458]:sw s2, 80(tp)<br>    |
|  33|[0x80002310]<br>0xFFFAFFEF|- rs2_h1_val == 16384<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                                                  |[0x80000470]:SMALBT t5, t6, t4<br> [0x80000474]:sw t5, 88(tp)<br>    |
|  34|[0x80002318]<br>0xFFFAFFEF|- rs2_h0_val == 8192<br> - rs1_h1_val == -129<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                           |[0x80000488]:SMALBT t5, t6, t4<br> [0x8000048c]:sw t5, 96(tp)<br>    |
|  35|[0x80002320]<br>0xFFFAFFEF|- rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                             |[0x800004a4]:SMALBT t5, t6, t4<br> [0x800004a8]:sw t5, 104(tp)<br>   |
|  36|[0x80002328]<br>0xFFFAFFEF|- rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                              |[0x800004c0]:SMALBT t5, t6, t4<br> [0x800004c4]:sw t5, 112(tp)<br>   |
|  37|[0x80002330]<br>0xFFFAFFEF|- rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                              |[0x800004dc]:SMALBT t5, t6, t4<br> [0x800004e0]:sw t5, 120(tp)<br>   |
|  38|[0x80002338]<br>0xFFFAFFEF|- rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                           |[0x800004f4]:SMALBT t5, t6, t4<br> [0x800004f8]:sw t5, 128(tp)<br>   |
|  39|[0x80002340]<br>0xFFFAFFEF|- rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                             |[0x80000510]:SMALBT t5, t6, t4<br> [0x80000514]:sw t5, 136(tp)<br>   |
|  40|[0x80002348]<br>0xFFFAFFEF|- rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                             |[0x8000052c]:SMALBT t5, t6, t4<br> [0x80000530]:sw t5, 144(tp)<br>   |
|  41|[0x80002350]<br>0xFFFAFFEF|- rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                              |[0x80000548]:SMALBT t5, t6, t4<br> [0x8000054c]:sw t5, 152(tp)<br>   |
|  42|[0x80002358]<br>0xFFFAFFEF|- rs2_h1_val == 4<br> - rs2_h0_val == -21846<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                              |[0x80000564]:SMALBT t5, t6, t4<br> [0x80000568]:sw t5, 160(tp)<br>   |
|  43|[0x80002360]<br>0xFFFAFFEF|- rs2_h0_val == -129<br> - rs1_h1_val == 8192<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                             |[0x80000580]:SMALBT t5, t6, t4<br> [0x80000584]:sw t5, 168(tp)<br>   |
|  44|[0x80002368]<br>0xFFFAFFEF|- rs1_h1_val == -257<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                      |[0x8000059c]:SMALBT t5, t6, t4<br> [0x800005a0]:sw t5, 176(tp)<br>   |
|  45|[0x80002370]<br>0xFFFAFFEF|- rs2_h0_val == -257<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                                      |[0x800005b4]:SMALBT t5, t6, t4<br> [0x800005b8]:sw t5, 184(tp)<br>   |
|  46|[0x80002378]<br>0xFFFAFFEF|- rs2_h0_val == 64<br> - rs1_h1_val == 4096<br>                                                                                                                                                                                                                                                                                                     |[0x800005cc]:SMALBT t5, t6, t4<br> [0x800005d0]:sw t5, 192(tp)<br>   |
|  47|[0x80002380]<br>0xFFFAFFEF|- rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                              |[0x800005e4]:SMALBT t5, t6, t4<br> [0x800005e8]:sw t5, 200(tp)<br>   |
|  48|[0x80002388]<br>0xFFFAFFEF|- rs2_h1_val == 8<br> - rs2_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                    |[0x80000600]:SMALBT t5, t6, t4<br> [0x80000604]:sw t5, 208(tp)<br>   |
|  49|[0x80002390]<br>0xFFFAFFEF|- rs2_h1_val == 1<br> - rs2_h0_val == 4<br> - rs1_h1_val == -1<br>                                                                                                                                                                                                                                                                                  |[0x8000061c]:SMALBT t5, t6, t4<br> [0x80000620]:sw t5, 216(tp)<br>   |
|  50|[0x80002398]<br>0xFFFAFFEF|- rs2_h0_val == -3<br> - rs1_h1_val == -33<br>                                                                                                                                                                                                                                                                                                      |[0x80000634]:SMALBT t5, t6, t4<br> [0x80000638]:sw t5, 224(tp)<br>   |
|  51|[0x800023a0]<br>0xFFFAFFEF|- rs2_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                             |[0x8000064c]:SMALBT t5, t6, t4<br> [0x80000650]:sw t5, 232(tp)<br>   |
|  52|[0x800023a8]<br>0xFFFAFFEF|- rs2_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                               |[0x80000668]:SMALBT t5, t6, t4<br> [0x8000066c]:sw t5, 240(tp)<br>   |
|  53|[0x800023b0]<br>0xFFFAFFEF|- rs2_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                               |[0x80000684]:SMALBT t5, t6, t4<br> [0x80000688]:sw t5, 248(tp)<br>   |
|  54|[0x800023b8]<br>0xFFFAFFEF|- rs2_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                               |[0x800006a0]:SMALBT t5, t6, t4<br> [0x800006a4]:sw t5, 256(tp)<br>   |
|  55|[0x800023c0]<br>0xFFFAFFEF|- rs2_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                              |[0x800006bc]:SMALBT t5, t6, t4<br> [0x800006c0]:sw t5, 264(tp)<br>   |
|  56|[0x800023c8]<br>0xFFFAFFEF|- rs1_h1_val == -2049<br>                                                                                                                                                                                                                                                                                                                           |[0x800006d8]:SMALBT t5, t6, t4<br> [0x800006dc]:sw t5, 272(tp)<br>   |
|  57|[0x800023d0]<br>0xFFFAFFEF|- rs1_h1_val == -5<br>                                                                                                                                                                                                                                                                                                                              |[0x800006f4]:SMALBT t5, t6, t4<br> [0x800006f8]:sw t5, 280(tp)<br>   |
|  58|[0x800023d8]<br>0xFFFAFFEF|- rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                           |[0x80000710]:SMALBT t5, t6, t4<br> [0x80000714]:sw t5, 288(tp)<br>   |
|  59|[0x800023e0]<br>0xFFFAFFEF|- rs2_h0_val == -2<br> - rs1_h1_val == -3<br>                                                                                                                                                                                                                                                                                                       |[0x8000072c]:SMALBT t5, t6, t4<br> [0x80000730]:sw t5, 296(tp)<br>   |
|  60|[0x800023e8]<br>0xFFFAFFEF|- rs1_h1_val == -2<br>                                                                                                                                                                                                                                                                                                                              |[0x80000748]:SMALBT t5, t6, t4<br> [0x8000074c]:sw t5, 304(tp)<br>   |
|  61|[0x800023f0]<br>0xFFFAFFEF|- rs1_h1_val == -32768<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                |[0x80000764]:SMALBT t5, t6, t4<br> [0x80000768]:sw t5, 312(tp)<br>   |
|  62|[0x800023f8]<br>0xFFFAFFEF|- rs1_h1_val == 512<br>                                                                                                                                                                                                                                                                                                                             |[0x80000780]:SMALBT t5, t6, t4<br> [0x80000784]:sw t5, 320(tp)<br>   |
|  63|[0x80002408]<br>0xFFFAFFEF|- rs2_h1_val == -1<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                    |[0x800007b8]:SMALBT t5, t6, t4<br> [0x800007bc]:sw t5, 336(tp)<br>   |
|  64|[0x80002410]<br>0xFFFAFFEF|- rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                              |[0x800007d0]:SMALBT t5, t6, t4<br> [0x800007d4]:sw t5, 344(tp)<br>   |
|  65|[0x80002418]<br>0xFFFAFFEF|- rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                                                                              |[0x800007ec]:SMALBT t5, t6, t4<br> [0x800007f0]:sw t5, 352(tp)<br>   |
|  66|[0x80002420]<br>0xFFFAFFEF|- rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                              |[0x80000808]:SMALBT t5, t6, t4<br> [0x8000080c]:sw t5, 360(tp)<br>   |
|  67|[0x80002428]<br>0xFFFAFFEF|- rs1_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                               |[0x80000824]:SMALBT t5, t6, t4<br> [0x80000828]:sw t5, 368(tp)<br>   |
|  68|[0x80002430]<br>0xFFFAFFEF|- rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                               |[0x80000840]:SMALBT t5, t6, t4<br> [0x80000844]:sw t5, 376(tp)<br>   |
|  69|[0x80002438]<br>0xFFFAFFEF|- rs2_h0_val == -513<br>                                                                                                                                                                                                                                                                                                                            |[0x80000858]:SMALBT t5, t6, t4<br> [0x8000085c]:sw t5, 384(tp)<br>   |
|  70|[0x80002440]<br>0xFFFAFFEF|- rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                           |[0x80000874]:SMALBT t5, t6, t4<br> [0x80000878]:sw t5, 392(tp)<br>   |
|  71|[0x80002448]<br>0xFFFAFFEF|- rs1_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                                          |[0x80000890]:SMALBT t5, t6, t4<br> [0x80000894]:sw t5, 400(tp)<br>   |
|  72|[0x80002450]<br>0xFFFAFFEF|- rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                           |[0x800008a8]:SMALBT t5, t6, t4<br> [0x800008ac]:sw t5, 408(tp)<br>   |
|  73|[0x80002458]<br>0xFFFAFFEF|- rs2_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                             |[0x800008c4]:SMALBT t5, t6, t4<br> [0x800008c8]:sw t5, 416(tp)<br>   |
|  74|[0x80002460]<br>0xFFFAFFEF|- rs2_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                              |[0x800008dc]:SMALBT t5, t6, t4<br> [0x800008e0]:sw t5, 424(tp)<br>   |
