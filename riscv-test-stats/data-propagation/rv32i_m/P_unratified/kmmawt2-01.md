
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000ad0')]      |
| SIG_REGION                | [('0x80002210', '0x800024c0', '172 words')]      |
| COV_LABELS                | kmmawt2      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kmmawt2-01.S    |
| Total Number of coverpoints| 248     |
| Total Coverpoints Hit     | 242      |
| Total Signature Updates   | 172      |
| STAT1                     | 85      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 86     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000718]:KMMAWT2 t6, t5, t4
      [0x8000071c]:csrrs t5, vxsat, zero
      [0x80000720]:sw t6, 176(ra)
 -- Signature Address: 0x800023b8 Data: 0x05F06483
 -- Redundant Coverpoints hit by the op
      - opcode : kmmawt2
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h1_val == 128
      - rs2_h0_val == 0






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmmawt2', 'rs1 : x23', 'rs2 : x23', 'rd : x23', 'rs1 == rs2 == rd', 'rs2_h1_val == -513']
Last Code Sequence : 
	-[0x80000118]:KMMAWT2 s7, s7, s7
	-[0x8000011c]:csrrs s7, vxsat, zero
	-[0x80000120]:sw s7, 0(gp)
Current Store : [0x80000124] : sw s7, 4(gp) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x0', 'rs2 : x0', 'rd : x4', 'rs1 == rs2 != rd', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x80000138]:KMMAWT2 tp, zero, zero
	-[0x8000013c]:csrrs zero, vxsat, zero
	-[0x80000140]:sw tp, 8(gp)
Current Store : [0x80000144] : sw zero, 12(gp) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x22', 'rd : x8', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h1_val == 21845', 'rs2_h0_val == -65', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000154]:KMMAWT2 fp, t1, s6
	-[0x80000158]:csrrs t1, vxsat, zero
	-[0x8000015c]:sw fp, 16(gp)
Current Store : [0x80000160] : sw t1, 20(gp) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x31', 'rd : x31', 'rs2 == rd != rs1', 'rs2_h1_val == 32767', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000170]:KMMAWT2 t6, ra, t6
	-[0x80000174]:csrrs ra, vxsat, zero
	-[0x80000178]:sw t6, 24(gp)
Current Store : [0x8000017c] : sw ra, 28(gp) -- Store: [0x8000222c]:0x00000001




Last Coverpoint : ['rs1 : x5', 'rs2 : x17', 'rd : x5', 'rs1 == rd != rs2', 'rs2_h1_val == -16385']
Last Code Sequence : 
	-[0x8000018c]:KMMAWT2 t0, t0, a7
	-[0x80000190]:csrrs t0, vxsat, zero
	-[0x80000194]:sw t0, 32(gp)
Current Store : [0x80000198] : sw t0, 36(gp) -- Store: [0x80002234]:0x00000001




Last Coverpoint : ['rs1 : x7', 'rs2 : x9', 'rd : x0', 'rs2_h1_val == -8193', 'rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x800001ac]:KMMAWT2 zero, t2, s1
	-[0x800001b0]:csrrs t2, vxsat, zero
	-[0x800001b4]:sw zero, 40(gp)
Current Store : [0x800001b8] : sw t2, 44(gp) -- Store: [0x8000223c]:0x00000001




Last Coverpoint : ['rs1 : x16', 'rs2 : x1', 'rd : x7', 'rs2_h1_val == -4097', 'rs2_h0_val == 2', 'rs1_w0_val == -2']
Last Code Sequence : 
	-[0x800001c8]:KMMAWT2 t2, a6, ra
	-[0x800001cc]:csrrs a6, vxsat, zero
	-[0x800001d0]:sw t2, 48(gp)
Current Store : [0x800001d4] : sw a6, 52(gp) -- Store: [0x80002244]:0x00000001




Last Coverpoint : ['rs1 : x29', 'rs2 : x21', 'rd : x2', 'rs2_h1_val == -2049', 'rs2_h0_val == 16384']
Last Code Sequence : 
	-[0x800001e0]:KMMAWT2 sp, t4, s5
	-[0x800001e4]:csrrs t4, vxsat, zero
	-[0x800001e8]:sw sp, 56(gp)
Current Store : [0x800001ec] : sw t4, 60(gp) -- Store: [0x8000224c]:0x00000001




Last Coverpoint : ['rs1 : x10', 'rs2 : x14', 'rd : x19', 'rs2_h1_val == -1025', 'rs2_h0_val == -8193', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x800001fc]:KMMAWT2 s3, a0, a4
	-[0x80000200]:csrrs a0, vxsat, zero
	-[0x80000204]:sw s3, 64(gp)
Current Store : [0x80000208] : sw a0, 68(gp) -- Store: [0x80002254]:0x00000001




Last Coverpoint : ['rs1 : x4', 'rs2 : x7', 'rd : x25', 'rs2_h1_val == -257', 'rs2_h0_val == -32768', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000214]:KMMAWT2 s9, tp, t2
	-[0x80000218]:csrrs tp, vxsat, zero
	-[0x8000021c]:sw s9, 72(gp)
Current Store : [0x80000220] : sw tp, 76(gp) -- Store: [0x8000225c]:0x00000001




Last Coverpoint : ['rs1 : x15', 'rs2 : x26', 'rd : x9', 'rs2_h1_val == -129', 'rs2_h0_val == -5', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000230]:KMMAWT2 s1, a5, s10
	-[0x80000234]:csrrs a5, vxsat, zero
	-[0x80000238]:sw s1, 80(gp)
Current Store : [0x8000023c] : sw a5, 84(gp) -- Store: [0x80002264]:0x00000001




Last Coverpoint : ['rs1 : x20', 'rs2 : x2', 'rd : x10', 'rs2_h1_val == -65', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x8000024c]:KMMAWT2 a0, s4, sp
	-[0x80000250]:csrrs s4, vxsat, zero
	-[0x80000254]:sw a0, 88(gp)
Current Store : [0x80000258] : sw s4, 92(gp) -- Store: [0x8000226c]:0x00000001




Last Coverpoint : ['rs1 : x24', 'rs2 : x16', 'rd : x1', 'rs2_h1_val == -33', 'rs2_h0_val == -4097', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000268]:KMMAWT2 ra, s8, a6
	-[0x8000026c]:csrrs s8, vxsat, zero
	-[0x80000270]:sw ra, 96(gp)
Current Store : [0x80000274] : sw s8, 100(gp) -- Store: [0x80002274]:0x00000001




Last Coverpoint : ['rs1 : x2', 'rs2 : x11', 'rd : x29', 'rs2_h1_val == -17', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000284]:KMMAWT2 t4, sp, a1
	-[0x80000288]:csrrs sp, vxsat, zero
	-[0x8000028c]:sw t4, 104(gp)
Current Store : [0x80000290] : sw sp, 108(gp) -- Store: [0x8000227c]:0x00000001




Last Coverpoint : ['rs1 : x30', 'rs2 : x12', 'rd : x18', 'rs2_h1_val == -9', 'rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x800002a4]:KMMAWT2 s2, t5, a2
	-[0x800002a8]:csrrs t5, vxsat, zero
	-[0x800002ac]:sw s2, 112(gp)
Current Store : [0x800002b0] : sw t5, 116(gp) -- Store: [0x80002284]:0x00000001




Last Coverpoint : ['rs1 : x13', 'rs2 : x6', 'rd : x20', 'rs2_h1_val == -5', 'rs2_h0_val == 4096']
Last Code Sequence : 
	-[0x800002c8]:KMMAWT2 s4, a3, t1
	-[0x800002cc]:csrrs a3, vxsat, zero
	-[0x800002d0]:sw s4, 0(ra)
Current Store : [0x800002d4] : sw a3, 4(ra) -- Store: [0x8000228c]:0x00000001




Last Coverpoint : ['rs1 : x31', 'rs2 : x4', 'rd : x11', 'rs2_h1_val == -3', 'rs2_h0_val == 32767', 'rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x800002e8]:KMMAWT2 a1, t6, tp
	-[0x800002ec]:csrrs t6, vxsat, zero
	-[0x800002f0]:sw a1, 8(ra)
Current Store : [0x800002f4] : sw t6, 12(ra) -- Store: [0x80002294]:0x00000001




Last Coverpoint : ['rs1 : x19', 'rs2 : x25', 'rd : x26', 'rs2_h1_val == -2', 'rs2_h0_val == 32', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x80000308]:KMMAWT2 s10, s3, s9
	-[0x8000030c]:csrrs s3, vxsat, zero
	-[0x80000310]:sw s10, 16(ra)
Current Store : [0x80000314] : sw s3, 20(ra) -- Store: [0x8000229c]:0x00000001




Last Coverpoint : ['rs1 : x11', 'rs2 : x3', 'rd : x24', 'rs2_h1_val == -32768', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000328]:KMMAWT2 s8, a1, gp
	-[0x8000032c]:csrrs a1, vxsat, zero
	-[0x80000330]:sw s8, 24(ra)
Current Store : [0x80000334] : sw a1, 28(ra) -- Store: [0x800022a4]:0x00000001




Last Coverpoint : ['rs1 : x9', 'rs2 : x8', 'rd : x3', 'rs2_h1_val == 16384']
Last Code Sequence : 
	-[0x80000344]:KMMAWT2 gp, s1, fp
	-[0x80000348]:csrrs s1, vxsat, zero
	-[0x8000034c]:sw gp, 32(ra)
Current Store : [0x80000350] : sw s1, 36(ra) -- Store: [0x800022ac]:0x00000001




Last Coverpoint : ['rs1 : x18', 'rs2 : x29', 'rd : x15', 'rs2_h1_val == 8192', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000360]:KMMAWT2 a5, s2, t4
	-[0x80000364]:csrrs s2, vxsat, zero
	-[0x80000368]:sw a5, 40(ra)
Current Store : [0x8000036c] : sw s2, 44(ra) -- Store: [0x800022b4]:0x00000001




Last Coverpoint : ['rs1 : x26', 'rs2 : x10', 'rd : x13', 'rs2_h1_val == 4096', 'rs2_h0_val == -1025', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x8000037c]:KMMAWT2 a3, s10, a0
	-[0x80000380]:csrrs s10, vxsat, zero
	-[0x80000384]:sw a3, 48(ra)
Current Store : [0x80000388] : sw s10, 52(ra) -- Store: [0x800022bc]:0x00000001




Last Coverpoint : ['rs1 : x17', 'rs2 : x15', 'rd : x6', 'rs2_h1_val == 2048', 'rs2_h0_val == 21845']
Last Code Sequence : 
	-[0x80000398]:KMMAWT2 t1, a7, a5
	-[0x8000039c]:csrrs a7, vxsat, zero
	-[0x800003a0]:sw t1, 56(ra)
Current Store : [0x800003a4] : sw a7, 60(ra) -- Store: [0x800022c4]:0x00000001




Last Coverpoint : ['rs1 : x12', 'rs2 : x5', 'rd : x27', 'rs2_h1_val == 1024', 'rs2_h0_val == -513', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x800003b4]:KMMAWT2 s11, a2, t0
	-[0x800003b8]:csrrs a2, vxsat, zero
	-[0x800003bc]:sw s11, 64(ra)
Current Store : [0x800003c0] : sw a2, 68(ra) -- Store: [0x800022cc]:0x00000001




Last Coverpoint : ['rs1 : x14', 'rs2 : x20', 'rd : x30', 'rs2_h1_val == 512', 'rs2_h0_val == -2', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x800003d0]:KMMAWT2 t5, a4, s4
	-[0x800003d4]:csrrs a4, vxsat, zero
	-[0x800003d8]:sw t5, 72(ra)
Current Store : [0x800003dc] : sw a4, 76(ra) -- Store: [0x800022d4]:0x00000001




Last Coverpoint : ['rs1 : x8', 'rs2 : x30', 'rd : x17', 'rs2_h1_val == 256', 'rs1_w0_val == -513']
Last Code Sequence : 
	-[0x800003ec]:KMMAWT2 a7, fp, t5
	-[0x800003f0]:csrrs fp, vxsat, zero
	-[0x800003f4]:sw a7, 80(ra)
Current Store : [0x800003f8] : sw fp, 84(ra) -- Store: [0x800022dc]:0x00000001




Last Coverpoint : ['rs1 : x22', 'rs2 : x24', 'rd : x14', 'rs2_h1_val == 128', 'rs2_h0_val == 64']
Last Code Sequence : 
	-[0x8000040c]:KMMAWT2 a4, s6, s8
	-[0x80000410]:csrrs s6, vxsat, zero
	-[0x80000414]:sw a4, 88(ra)
Current Store : [0x80000418] : sw s6, 92(ra) -- Store: [0x800022e4]:0x00000001




Last Coverpoint : ['rs1 : x25', 'rs2 : x18', 'rd : x22', 'rs2_h1_val == 64', 'rs2_h0_val == -17', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000428]:KMMAWT2 s6, s9, s2
	-[0x8000042c]:csrrs s9, vxsat, zero
	-[0x80000430]:sw s6, 96(ra)
Current Store : [0x80000434] : sw s9, 100(ra) -- Store: [0x800022ec]:0x00000001




Last Coverpoint : ['rs1 : x27', 'rs2 : x13', 'rd : x16', 'rs2_h1_val == 32', 'rs2_h0_val == 256']
Last Code Sequence : 
	-[0x80000444]:KMMAWT2 a6, s11, a3
	-[0x80000448]:csrrs s11, vxsat, zero
	-[0x8000044c]:sw a6, 104(ra)
Current Store : [0x80000450] : sw s11, 108(ra) -- Store: [0x800022f4]:0x00000001




Last Coverpoint : ['rs1 : x3', 'rs2 : x27', 'rd : x28', 'rs2_h1_val == 16', 'rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x80000464]:KMMAWT2 t3, gp, s11
	-[0x80000468]:csrrs gp, vxsat, zero
	-[0x8000046c]:sw t3, 112(ra)
Current Store : [0x80000470] : sw gp, 116(ra) -- Store: [0x800022fc]:0x00000001




Last Coverpoint : ['rs1 : x21', 'rs2 : x28', 'rd : x12', 'rs2_h1_val == 8', 'rs2_h0_val == 2048']
Last Code Sequence : 
	-[0x80000480]:KMMAWT2 a2, s5, t3
	-[0x80000484]:csrrs s5, vxsat, zero
	-[0x80000488]:sw a2, 120(ra)
Current Store : [0x8000048c] : sw s5, 124(ra) -- Store: [0x80002304]:0x00000001




Last Coverpoint : ['rs1 : x28', 'rs2 : x19', 'rd : x21', 'rs2_h1_val == 4', 'rs2_h0_val == -33']
Last Code Sequence : 
	-[0x800004a4]:KMMAWT2 s5, t3, s3
	-[0x800004a8]:csrrs t3, vxsat, zero
	-[0x800004ac]:sw s5, 0(ra)
Current Store : [0x800004b0] : sw t3, 4(ra) -- Store: [0x8000230c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 2', 'rs2_h0_val == 128']
Last Code Sequence : 
	-[0x800004c0]:KMMAWT2 t6, t5, t4
	-[0x800004c4]:csrrs t5, vxsat, zero
	-[0x800004c8]:sw t6, 8(ra)
Current Store : [0x800004cc] : sw t5, 12(ra) -- Store: [0x80002314]:0x00000001




Last Coverpoint : ['rs2_h1_val == 1', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x800004e0]:KMMAWT2 t6, t5, t4
	-[0x800004e4]:csrrs t5, vxsat, zero
	-[0x800004e8]:sw t6, 16(ra)
Current Store : [0x800004ec] : sw t5, 20(ra) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 256']
Last Code Sequence : 
	-[0x800004fc]:KMMAWT2 t6, t5, t4
	-[0x80000500]:csrrs t5, vxsat, zero
	-[0x80000504]:sw t6, 24(ra)
Current Store : [0x80000508] : sw t5, 28(ra) -- Store: [0x80002324]:0x00000001




Last Coverpoint : ['rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000518]:KMMAWT2 t6, t5, t4
	-[0x8000051c]:csrrs t5, vxsat, zero
	-[0x80000520]:sw t6, 32(ra)
Current Store : [0x80000524] : sw t5, 36(ra) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000534]:KMMAWT2 t6, t5, t4
	-[0x80000538]:csrrs t5, vxsat, zero
	-[0x8000053c]:sw t6, 40(ra)
Current Store : [0x80000540] : sw t5, 44(ra) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs2_h0_val == -1', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000550]:KMMAWT2 t6, t5, t4
	-[0x80000554]:csrrs t5, vxsat, zero
	-[0x80000558]:sw t6, 48(ra)
Current Store : [0x8000055c] : sw t5, 52(ra) -- Store: [0x8000233c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 2']
Last Code Sequence : 
	-[0x8000056c]:KMMAWT2 t6, t5, t4
	-[0x80000570]:csrrs t5, vxsat, zero
	-[0x80000574]:sw t6, 56(ra)
Current Store : [0x80000578] : sw t5, 60(ra) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['rs2_h0_val == -16385', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000588]:KMMAWT2 t6, t5, t4
	-[0x8000058c]:csrrs t5, vxsat, zero
	-[0x80000590]:sw t6, 64(ra)
Current Store : [0x80000594] : sw t5, 68(ra) -- Store: [0x8000234c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 512', 'rs1_w0_val == -1']
Last Code Sequence : 
	-[0x800005a4]:KMMAWT2 t6, t5, t4
	-[0x800005a8]:csrrs t5, vxsat, zero
	-[0x800005ac]:sw t6, 72(ra)
Current Store : [0x800005b0] : sw t5, 76(ra) -- Store: [0x80002354]:0x00000001




Last Coverpoint : ['rs2_h1_val == -1', 'rs2_h0_val == -257']
Last Code Sequence : 
	-[0x800005bc]:KMMAWT2 t6, t5, t4
	-[0x800005c0]:csrrs t5, vxsat, zero
	-[0x800005c4]:sw t6, 80(ra)
Current Store : [0x800005c8] : sw t5, 84(ra) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -21846']
Last Code Sequence : 
	-[0x800005dc]:KMMAWT2 t6, t5, t4
	-[0x800005e0]:csrrs t5, vxsat, zero
	-[0x800005e4]:sw t6, 88(ra)
Current Store : [0x800005e8] : sw t5, 92(ra) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs2_h0_val == -2049']
Last Code Sequence : 
	-[0x800005fc]:KMMAWT2 t6, t5, t4
	-[0x80000600]:csrrs t5, vxsat, zero
	-[0x80000604]:sw t6, 96(ra)
Current Store : [0x80000608] : sw t5, 100(ra) -- Store: [0x8000236c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -129', 'rs1_w0_val == -257']
Last Code Sequence : 
	-[0x80000618]:KMMAWT2 t6, t5, t4
	-[0x8000061c]:csrrs t5, vxsat, zero
	-[0x80000620]:sw t6, 104(ra)
Current Store : [0x80000624] : sw t5, 108(ra) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs2_h0_val == -9', 'rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x80000638]:KMMAWT2 t6, t5, t4
	-[0x8000063c]:csrrs t5, vxsat, zero
	-[0x80000640]:sw t6, 112(ra)
Current Store : [0x80000644] : sw t5, 116(ra) -- Store: [0x8000237c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -3', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80000658]:KMMAWT2 t6, t5, t4
	-[0x8000065c]:csrrs t5, vxsat, zero
	-[0x80000660]:sw t6, 120(ra)
Current Store : [0x80000664] : sw t5, 124(ra) -- Store: [0x80002384]:0x00000001




Last Coverpoint : ['rs2_h0_val == 8192']
Last Code Sequence : 
	-[0x80000670]:KMMAWT2 t6, t5, t4
	-[0x80000674]:csrrs t5, vxsat, zero
	-[0x80000678]:sw t6, 128(ra)
Current Store : [0x8000067c] : sw t5, 132(ra) -- Store: [0x8000238c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 1024', 'rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x8000068c]:KMMAWT2 t6, t5, t4
	-[0x80000690]:csrrs t5, vxsat, zero
	-[0x80000694]:sw t6, 136(ra)
Current Store : [0x80000698] : sw t5, 140(ra) -- Store: [0x80002394]:0x00000001




Last Coverpoint : ['rs2_h0_val == 16', 'rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x800006ac]:KMMAWT2 t6, t5, t4
	-[0x800006b0]:csrrs t5, vxsat, zero
	-[0x800006b4]:sw t6, 144(ra)
Current Store : [0x800006b8] : sw t5, 148(ra) -- Store: [0x8000239c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 8', 'rs1_w0_val == -65']
Last Code Sequence : 
	-[0x800006c8]:KMMAWT2 t6, t5, t4
	-[0x800006cc]:csrrs t5, vxsat, zero
	-[0x800006d0]:sw t6, 152(ra)
Current Store : [0x800006d4] : sw t5, 156(ra) -- Store: [0x800023a4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 4']
Last Code Sequence : 
	-[0x800006e4]:KMMAWT2 t6, t5, t4
	-[0x800006e8]:csrrs t5, vxsat, zero
	-[0x800006ec]:sw t6, 160(ra)
Current Store : [0x800006f0] : sw t5, 164(ra) -- Store: [0x800023ac]:0x00000001




Last Coverpoint : ['rs2_h0_val == 1']
Last Code Sequence : 
	-[0x80000700]:KMMAWT2 t6, t5, t4
	-[0x80000704]:csrrs t5, vxsat, zero
	-[0x80000708]:sw t6, 168(ra)
Current Store : [0x8000070c] : sw t5, 172(ra) -- Store: [0x800023b4]:0x00000001




Last Coverpoint : ['opcode : kmmawt2', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h1_val == 128', 'rs2_h0_val == 0']
Last Code Sequence : 
	-[0x80000718]:KMMAWT2 t6, t5, t4
	-[0x8000071c]:csrrs t5, vxsat, zero
	-[0x80000720]:sw t6, 176(ra)
Current Store : [0x80000724] : sw t5, 180(ra) -- Store: [0x800023bc]:0x00000001




Last Coverpoint : ['rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x80000738]:KMMAWT2 t6, t5, t4
	-[0x8000073c]:csrrs t5, vxsat, zero
	-[0x80000740]:sw t6, 184(ra)
Current Store : [0x80000744] : sw t5, 188(ra) -- Store: [0x800023c4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000758]:KMMAWT2 t6, t5, t4
	-[0x8000075c]:csrrs t5, vxsat, zero
	-[0x80000760]:sw t6, 192(ra)
Current Store : [0x80000764] : sw t5, 196(ra) -- Store: [0x800023cc]:0x00000001




Last Coverpoint : ['rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x80000778]:KMMAWT2 t6, t5, t4
	-[0x8000077c]:csrrs t5, vxsat, zero
	-[0x80000780]:sw t6, 200(ra)
Current Store : [0x80000784] : sw t5, 204(ra) -- Store: [0x800023d4]:0x00000001




Last Coverpoint : ['rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x80000798]:KMMAWT2 t6, t5, t4
	-[0x8000079c]:csrrs t5, vxsat, zero
	-[0x800007a0]:sw t6, 208(ra)
Current Store : [0x800007a4] : sw t5, 212(ra) -- Store: [0x800023dc]:0x00000001




Last Coverpoint : ['rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x800007b8]:KMMAWT2 t6, t5, t4
	-[0x800007bc]:csrrs t5, vxsat, zero
	-[0x800007c0]:sw t6, 216(ra)
Current Store : [0x800007c4] : sw t5, 220(ra) -- Store: [0x800023e4]:0x00000001




Last Coverpoint : ['rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x800007d4]:KMMAWT2 t6, t5, t4
	-[0x800007d8]:csrrs t5, vxsat, zero
	-[0x800007dc]:sw t6, 224(ra)
Current Store : [0x800007e0] : sw t5, 228(ra) -- Store: [0x800023ec]:0x00000001




Last Coverpoint : ['rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x800007f4]:KMMAWT2 t6, t5, t4
	-[0x800007f8]:csrrs t5, vxsat, zero
	-[0x800007fc]:sw t6, 232(ra)
Current Store : [0x80000800] : sw t5, 236(ra) -- Store: [0x800023f4]:0x00000001




Last Coverpoint : ['rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x80000814]:KMMAWT2 t6, t5, t4
	-[0x80000818]:csrrs t5, vxsat, zero
	-[0x8000081c]:sw t6, 240(ra)
Current Store : [0x80000820] : sw t5, 244(ra) -- Store: [0x800023fc]:0x00000001




Last Coverpoint : ['rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x80000830]:KMMAWT2 t6, t5, t4
	-[0x80000834]:csrrs t5, vxsat, zero
	-[0x80000838]:sw t6, 248(ra)
Current Store : [0x8000083c] : sw t5, 252(ra) -- Store: [0x80002404]:0x00000001




Last Coverpoint : ['rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x80000850]:KMMAWT2 t6, t5, t4
	-[0x80000854]:csrrs t5, vxsat, zero
	-[0x80000858]:sw t6, 256(ra)
Current Store : [0x8000085c] : sw t5, 260(ra) -- Store: [0x8000240c]:0x00000001




Last Coverpoint : ['rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x8000086c]:KMMAWT2 t6, t5, t4
	-[0x80000870]:csrrs t5, vxsat, zero
	-[0x80000874]:sw t6, 264(ra)
Current Store : [0x80000878] : sw t5, 268(ra) -- Store: [0x80002414]:0x00000001




Last Coverpoint : ['rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x8000088c]:KMMAWT2 t6, t5, t4
	-[0x80000890]:csrrs t5, vxsat, zero
	-[0x80000894]:sw t6, 272(ra)
Current Store : [0x80000898] : sw t5, 276(ra) -- Store: [0x8000241c]:0x00000001




Last Coverpoint : ['rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x800008a8]:KMMAWT2 t6, t5, t4
	-[0x800008ac]:csrrs t5, vxsat, zero
	-[0x800008b0]:sw t6, 280(ra)
Current Store : [0x800008b4] : sw t5, 284(ra) -- Store: [0x80002424]:0x00000001




Last Coverpoint : ['rs1_w0_val == -129']
Last Code Sequence : 
	-[0x800008c4]:KMMAWT2 t6, t5, t4
	-[0x800008c8]:csrrs t5, vxsat, zero
	-[0x800008cc]:sw t6, 288(ra)
Current Store : [0x800008d0] : sw t5, 292(ra) -- Store: [0x8000242c]:0x00000001




Last Coverpoint : ['rs1_w0_val == -33']
Last Code Sequence : 
	-[0x800008dc]:KMMAWT2 t6, t5, t4
	-[0x800008e0]:csrrs t5, vxsat, zero
	-[0x800008e4]:sw t6, 296(ra)
Current Store : [0x800008e8] : sw t5, 300(ra) -- Store: [0x80002434]:0x00000001




Last Coverpoint : ['rs1_w0_val == -17']
Last Code Sequence : 
	-[0x800008f8]:KMMAWT2 t6, t5, t4
	-[0x800008fc]:csrrs t5, vxsat, zero
	-[0x80000900]:sw t6, 304(ra)
Current Store : [0x80000904] : sw t5, 308(ra) -- Store: [0x8000243c]:0x00000001




Last Coverpoint : ['rs1_w0_val == -9']
Last Code Sequence : 
	-[0x80000914]:KMMAWT2 t6, t5, t4
	-[0x80000918]:csrrs t5, vxsat, zero
	-[0x8000091c]:sw t6, 312(ra)
Current Store : [0x80000920] : sw t5, 316(ra) -- Store: [0x80002444]:0x00000001




Last Coverpoint : ['rs1_w0_val == -5']
Last Code Sequence : 
	-[0x80000930]:KMMAWT2 t6, t5, t4
	-[0x80000934]:csrrs t5, vxsat, zero
	-[0x80000938]:sw t6, 320(ra)
Current Store : [0x8000093c] : sw t5, 324(ra) -- Store: [0x8000244c]:0x00000001




Last Coverpoint : ['rs1_w0_val == -3']
Last Code Sequence : 
	-[0x8000094c]:KMMAWT2 t6, t5, t4
	-[0x80000950]:csrrs t5, vxsat, zero
	-[0x80000954]:sw t6, 328(ra)
Current Store : [0x80000958] : sw t5, 332(ra) -- Store: [0x80002454]:0x00000001




Last Coverpoint : ['rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000968]:KMMAWT2 t6, t5, t4
	-[0x8000096c]:csrrs t5, vxsat, zero
	-[0x80000970]:sw t6, 336(ra)
Current Store : [0x80000974] : sw t5, 340(ra) -- Store: [0x8000245c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000984]:KMMAWT2 t6, t5, t4
	-[0x80000988]:csrrs t5, vxsat, zero
	-[0x8000098c]:sw t6, 344(ra)
Current Store : [0x80000990] : sw t5, 348(ra) -- Store: [0x80002464]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x800009a0]:KMMAWT2 t6, t5, t4
	-[0x800009a4]:csrrs t5, vxsat, zero
	-[0x800009a8]:sw t6, 352(ra)
Current Store : [0x800009ac] : sw t5, 356(ra) -- Store: [0x8000246c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x800009bc]:KMMAWT2 t6, t5, t4
	-[0x800009c0]:csrrs t5, vxsat, zero
	-[0x800009c4]:sw t6, 360(ra)
Current Store : [0x800009c8] : sw t5, 364(ra) -- Store: [0x80002474]:0x00000001




Last Coverpoint : ['rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x800009d8]:KMMAWT2 t6, t5, t4
	-[0x800009dc]:csrrs t5, vxsat, zero
	-[0x800009e0]:sw t6, 368(ra)
Current Store : [0x800009e4] : sw t5, 372(ra) -- Store: [0x8000247c]:0x00000001




Last Coverpoint : ['rs2_h1_val == -21846', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x800009f0]:KMMAWT2 t6, t5, t4
	-[0x800009f4]:csrrs t5, vxsat, zero
	-[0x800009f8]:sw t6, 376(ra)
Current Store : [0x800009fc] : sw t5, 380(ra) -- Store: [0x80002484]:0x00000001




Last Coverpoint : ['rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000a0c]:KMMAWT2 t6, t5, t4
	-[0x80000a10]:csrrs t5, vxsat, zero
	-[0x80000a14]:sw t6, 384(ra)
Current Store : [0x80000a18] : sw t5, 388(ra) -- Store: [0x8000248c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000a28]:KMMAWT2 t6, t5, t4
	-[0x80000a2c]:csrrs t5, vxsat, zero
	-[0x80000a30]:sw t6, 392(ra)
Current Store : [0x80000a34] : sw t5, 396(ra) -- Store: [0x80002494]:0x00000001




Last Coverpoint : ['rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000a44]:KMMAWT2 t6, t5, t4
	-[0x80000a48]:csrrs t5, vxsat, zero
	-[0x80000a4c]:sw t6, 400(ra)
Current Store : [0x80000a50] : sw t5, 404(ra) -- Store: [0x8000249c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000a60]:KMMAWT2 t6, t5, t4
	-[0x80000a64]:csrrs t5, vxsat, zero
	-[0x80000a68]:sw t6, 408(ra)
Current Store : [0x80000a6c] : sw t5, 412(ra) -- Store: [0x800024a4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000a7c]:KMMAWT2 t6, t5, t4
	-[0x80000a80]:csrrs t5, vxsat, zero
	-[0x80000a84]:sw t6, 416(ra)
Current Store : [0x80000a88] : sw t5, 420(ra) -- Store: [0x800024ac]:0x00000001




Last Coverpoint : ['rs1_w0_val == -2147483648']
Last Code Sequence : 
	-[0x80000a98]:KMMAWT2 t6, t5, t4
	-[0x80000a9c]:csrrs t5, vxsat, zero
	-[0x80000aa0]:sw t6, 424(ra)
Current Store : [0x80000aa4] : sw t5, 428(ra) -- Store: [0x800024b4]:0x00000001




Last Coverpoint : ['rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x80000ab8]:KMMAWT2 t6, t5, t4
	-[0x80000abc]:csrrs t5, vxsat, zero
	-[0x80000ac0]:sw t6, 432(ra)
Current Store : [0x80000ac4] : sw t5, 436(ra) -- Store: [0x800024bc]:0x00000001





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

|s.no|        signature         |                                                                              coverpoints                                                                              |                                                     code                                                      |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : kmmawt2<br> - rs1 : x23<br> - rs2 : x23<br> - rd : x23<br> - rs1 == rs2 == rd<br> - rs2_h1_val == -513<br>                                                  |[0x80000118]:KMMAWT2 s7, s7, s7<br> [0x8000011c]:csrrs s7, vxsat, zero<br> [0x80000120]:sw s7, 0(gp)<br>       |
|   2|[0x80002218]<br>0xBFDDB7D5|- rs1 : x0<br> - rs2 : x0<br> - rd : x4<br> - rs1 == rs2 != rd<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_w0_val == 0<br>                                   |[0x80000138]:KMMAWT2 tp, zero, zero<br> [0x8000013c]:csrrs zero, vxsat, zero<br> [0x80000140]:sw tp, 8(gp)<br> |
|   3|[0x80002220]<br>0x5BFE30D2|- rs1 : x6<br> - rs2 : x22<br> - rd : x8<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_h1_val == 21845<br> - rs2_h0_val == -65<br> - rs1_w0_val == 32768<br> |[0x80000154]:KMMAWT2 fp, t1, s6<br> [0x80000158]:csrrs t1, vxsat, zero<br> [0x8000015c]:sw fp, 16(gp)<br>      |
|   4|[0x80002228]<br>0x7FFFFFFF|- rs1 : x1<br> - rs2 : x31<br> - rd : x31<br> - rs2 == rd != rs1<br> - rs2_h1_val == 32767<br> - rs1_w0_val == 512<br>                                                 |[0x80000170]:KMMAWT2 t6, ra, t6<br> [0x80000174]:csrrs ra, vxsat, zero<br> [0x80000178]:sw t6, 24(gp)<br>      |
|   5|[0x80002230]<br>0x00000001|- rs1 : x5<br> - rs2 : x17<br> - rd : x5<br> - rs1 == rd != rs2<br> - rs2_h1_val == -16385<br>                                                                         |[0x8000018c]:KMMAWT2 t0, t0, a7<br> [0x80000190]:csrrs t0, vxsat, zero<br> [0x80000194]:sw t0, 32(gp)<br>      |
|   6|[0x80002238]<br>0x00000000|- rs1 : x7<br> - rs2 : x9<br> - rd : x0<br> - rs2_h1_val == -8193<br> - rs1_w0_val == -65537<br>                                                                       |[0x800001ac]:KMMAWT2 zero, t2, s1<br> [0x800001b0]:csrrs t2, vxsat, zero<br> [0x800001b4]:sw zero, 40(gp)<br>  |
|   7|[0x80002240]<br>0x00000001|- rs1 : x16<br> - rs2 : x1<br> - rd : x7<br> - rs2_h1_val == -4097<br> - rs2_h0_val == 2<br> - rs1_w0_val == -2<br>                                                    |[0x800001c8]:KMMAWT2 t2, a6, ra<br> [0x800001cc]:csrrs a6, vxsat, zero<br> [0x800001d0]:sw t2, 48(gp)<br>      |
|   8|[0x80002248]<br>0xFF76DF55|- rs1 : x29<br> - rs2 : x21<br> - rd : x2<br> - rs2_h1_val == -2049<br> - rs2_h0_val == 16384<br>                                                                      |[0x800001e0]:KMMAWT2 sp, t4, s5<br> [0x800001e4]:csrrs t4, vxsat, zero<br> [0x800001e8]:sw sp, 56(gp)<br>      |
|   9|[0x80002250]<br>0x6F2B5FBB|- rs1 : x10<br> - rs2 : x14<br> - rd : x19<br> - rs2_h1_val == -1025<br> - rs2_h0_val == -8193<br> - rs1_w0_val == 268435456<br>                                       |[0x800001fc]:KMMAWT2 s3, a0, a4<br> [0x80000200]:csrrs a0, vxsat, zero<br> [0x80000204]:sw s3, 64(gp)<br>      |
|  10|[0x80002258]<br>0xEDB6A5FE|- rs1 : x4<br> - rs2 : x7<br> - rd : x25<br> - rs2_h1_val == -257<br> - rs2_h0_val == -32768<br> - rs1_w0_val == 67108864<br>                                          |[0x80000214]:KMMAWT2 s9, tp, t2<br> [0x80000218]:csrrs tp, vxsat, zero<br> [0x8000021c]:sw s9, 72(gp)<br>      |
|  11|[0x80002260]<br>0xDFFE3DFF|- rs1 : x15<br> - rs2 : x26<br> - rd : x9<br> - rs2_h1_val == -129<br> - rs2_h0_val == -5<br> - rs1_w0_val == 16777216<br>                                             |[0x80000230]:KMMAWT2 s1, a5, s10<br> [0x80000234]:csrrs a5, vxsat, zero<br> [0x80000238]:sw s1, 80(gp)<br>     |
|  12|[0x80002268]<br>0x00000000|- rs1 : x20<br> - rs2 : x2<br> - rd : x10<br> - rs2_h1_val == -65<br> - rs1_w0_val == 32<br>                                                                           |[0x8000024c]:KMMAWT2 a0, s4, sp<br> [0x80000250]:csrrs s4, vxsat, zero<br> [0x80000254]:sw a0, 88(gp)<br>      |
|  13|[0x80002270]<br>0xEFFF0001|- rs1 : x24<br> - rs2 : x16<br> - rd : x1<br> - rs2_h1_val == -33<br> - rs2_h0_val == -4097<br> - rs1_w0_val == 128<br>                                                |[0x80000268]:KMMAWT2 ra, s8, a6<br> [0x8000026c]:csrrs s8, vxsat, zero<br> [0x80000270]:sw ra, 96(gp)<br>      |
|  14|[0x80002278]<br>0xFFFBC001|- rs1 : x2<br> - rs2 : x11<br> - rd : x29<br> - rs2_h1_val == -17<br> - rs1_w0_val == 536870912<br>                                                                    |[0x80000284]:KMMAWT2 t4, sp, a1<br> [0x80000288]:csrrs sp, vxsat, zero<br> [0x8000028c]:sw t4, 104(gp)<br>     |
|  15|[0x80002280]<br>0xDF593F76|- rs1 : x30<br> - rs2 : x12<br> - rd : x18<br> - rs2_h1_val == -9<br> - rs1_w0_val == -536870913<br>                                                                   |[0x800002a4]:KMMAWT2 s2, t5, a2<br> [0x800002a8]:csrrs t5, vxsat, zero<br> [0x800002ac]:sw s2, 112(gp)<br>     |
|  16|[0x80002288]<br>0xFFFD8001|- rs1 : x13<br> - rs2 : x6<br> - rd : x20<br> - rs2_h1_val == -5<br> - rs2_h0_val == 4096<br>                                                                          |[0x800002c8]:KMMAWT2 s4, a3, t1<br> [0x800002cc]:csrrs a3, vxsat, zero<br> [0x800002d0]:sw s4, 0(ra)<br>       |
|  17|[0x80002290]<br>0xFFEF0C05|- rs1 : x31<br> - rs2 : x4<br> - rd : x11<br> - rs2_h1_val == -3<br> - rs2_h0_val == 32767<br> - rs1_w0_val == -33554433<br>                                           |[0x800002e8]:KMMAWT2 a1, t6, tp<br> [0x800002ec]:csrrs t6, vxsat, zero<br> [0x800002f0]:sw a1, 8(ra)<br>       |
|  18|[0x80002298]<br>0xFF803FFB|- rs1 : x19<br> - rs2 : x25<br> - rd : x26<br> - rs2_h1_val == -2<br> - rs2_h0_val == 32<br> - rs1_w0_val == -268435457<br>                                            |[0x80000308]:KMMAWT2 s10, s3, s9<br> [0x8000030c]:csrrs s3, vxsat, zero<br> [0x80000310]:sw s10, 16(ra)<br>    |
|  19|[0x800022a0]<br>0xFFFFF801|- rs1 : x11<br> - rs2 : x3<br> - rd : x24<br> - rs2_h1_val == -32768<br> - rs1_w0_val == 2048<br>                                                                      |[0x80000328]:KMMAWT2 s8, a1, gp<br> [0x8000032c]:csrrs a1, vxsat, zero<br> [0x80000330]:sw s8, 24(ra)<br>      |
|  20|[0x800022a8]<br>0x8000FFC2|- rs1 : x9<br> - rs2 : x8<br> - rd : x3<br> - rs2_h1_val == 16384<br>                                                                                                  |[0x80000344]:KMMAWT2 gp, s1, fp<br> [0x80000348]:csrrs s1, vxsat, zero<br> [0x8000034c]:sw gp, 32(ra)<br>      |
|  21|[0x800022b0]<br>0x00000003|- rs1 : x18<br> - rs2 : x29<br> - rd : x15<br> - rs2_h1_val == 8192<br> - rs1_w0_val == 8<br>                                                                          |[0x80000360]:KMMAWT2 a5, s2, t4<br> [0x80000364]:csrrs s2, vxsat, zero<br> [0x80000368]:sw a5, 40(ra)<br>      |
|  22|[0x800022b8]<br>0x00000801|- rs1 : x26<br> - rs2 : x10<br> - rd : x13<br> - rs2_h1_val == 4096<br> - rs2_h0_val == -1025<br> - rs1_w0_val == 16384<br>                                            |[0x8000037c]:KMMAWT2 a3, s10, a0<br> [0x80000380]:csrrs s10, vxsat, zero<br> [0x80000384]:sw a3, 48(ra)<br>    |
|  23|[0x800022c0]<br>0xFFFB0FFF|- rs1 : x17<br> - rs2 : x15<br> - rd : x6<br> - rs2_h1_val == 2048<br> - rs2_h0_val == 21845<br>                                                                       |[0x80000398]:KMMAWT2 t1, a7, a5<br> [0x8000039c]:csrrs a7, vxsat, zero<br> [0x800003a0]:sw t1, 56(ra)<br>      |
|  24|[0x800022c8]<br>0xBD6FAB7F|- rs1 : x12<br> - rs2 : x5<br> - rd : x27<br> - rs2_h1_val == 1024<br> - rs2_h0_val == -513<br> - rs1_w0_val == 1073741824<br>                                         |[0x800003b4]:KMMAWT2 s11, a2, t0<br> [0x800003b8]:csrrs a2, vxsat, zero<br> [0x800003bc]:sw s11, 64(ra)<br>    |
|  25|[0x800022d0]<br>0x00020001|- rs1 : x14<br> - rs2 : x20<br> - rd : x30<br> - rs2_h1_val == 512<br> - rs2_h0_val == -2<br> - rs1_w0_val == 8388608<br>                                              |[0x800003d0]:KMMAWT2 t5, a4, s4<br> [0x800003d4]:csrrs a4, vxsat, zero<br> [0x800003d8]:sw t5, 72(ra)<br>      |
|  26|[0x800022d8]<br>0xFFFFFFFC|- rs1 : x8<br> - rs2 : x30<br> - rd : x17<br> - rs2_h1_val == 256<br> - rs1_w0_val == -513<br>                                                                         |[0x800003ec]:KMMAWT2 a7, fp, t5<br> [0x800003f0]:csrrs fp, vxsat, zero<br> [0x800003f4]:sw a7, 80(ra)<br>      |
|  27|[0x800022e0]<br>0x00000009|- rs1 : x22<br> - rs2 : x24<br> - rd : x14<br> - rs2_h1_val == 128<br> - rs2_h0_val == 64<br>                                                                          |[0x8000040c]:KMMAWT2 a4, s6, s8<br> [0x80000410]:csrrs s6, vxsat, zero<br> [0x80000414]:sw a4, 88(ra)<br>      |
|  28|[0x800022e8]<br>0x00000101|- rs1 : x25<br> - rs2 : x18<br> - rd : x22<br> - rs2_h1_val == 64<br> - rs2_h0_val == -17<br> - rs1_w0_val == 131072<br>                                               |[0x80000428]:KMMAWT2 s6, s9, s2<br> [0x8000042c]:csrrs s9, vxsat, zero<br> [0x80000430]:sw s6, 96(ra)<br>      |
|  29|[0x800022f0]<br>0xFFDFEFFE|- rs1 : x27<br> - rs2 : x13<br> - rd : x16<br> - rs2_h1_val == 32<br> - rs2_h0_val == 256<br>                                                                          |[0x80000444]:KMMAWT2 a6, s11, a3<br> [0x80000448]:csrrs s11, vxsat, zero<br> [0x8000044c]:sw a6, 104(ra)<br>   |
|  30|[0x800022f8]<br>0xDDB7C5BE|- rs1 : x3<br> - rs2 : x27<br> - rd : x28<br> - rs2_h1_val == 16<br> - rs1_w0_val == -8388609<br>                                                                      |[0x80000464]:KMMAWT2 t3, gp, s11<br> [0x80000468]:csrrs gp, vxsat, zero<br> [0x8000046c]:sw t3, 112(ra)<br>    |
|  31|[0x80002300]<br>0x00000801|- rs1 : x21<br> - rs2 : x28<br> - rd : x12<br> - rs2_h1_val == 8<br> - rs2_h0_val == 2048<br>                                                                          |[0x80000480]:KMMAWT2 a2, s5, t3<br> [0x80000484]:csrrs s5, vxsat, zero<br> [0x80000488]:sw a2, 120(ra)<br>     |
|  32|[0x80002308]<br>0x00000001|- rs1 : x28<br> - rs2 : x19<br> - rd : x21<br> - rs2_h1_val == 4<br> - rs2_h0_val == -33<br>                                                                           |[0x800004a4]:KMMAWT2 s5, t3, s3<br> [0x800004a8]:csrrs t3, vxsat, zero<br> [0x800004ac]:sw s5, 0(ra)<br>       |
|  33|[0x80002310]<br>0x00000401|- rs2_h1_val == 2<br> - rs2_h0_val == 128<br>                                                                                                                          |[0x800004c0]:KMMAWT2 t6, t5, t4<br> [0x800004c4]:csrrs t5, vxsat, zero<br> [0x800004c8]:sw t6, 8(ra)<br>       |
|  34|[0x80002318]<br>0x000003FF|- rs2_h1_val == 1<br> - rs1_w0_val == -32769<br>                                                                                                                       |[0x800004e0]:KMMAWT2 t6, t5, t4<br> [0x800004e4]:csrrs t5, vxsat, zero<br> [0x800004e8]:sw t6, 16(ra)<br>      |
|  35|[0x80002320]<br>0x000003FF|- rs1_w0_val == 256<br>                                                                                                                                                |[0x800004fc]:KMMAWT2 t6, t5, t4<br> [0x80000500]:csrrs t5, vxsat, zero<br> [0x80000504]:sw t6, 24(ra)<br>      |
|  36|[0x80002328]<br>0x000003FF|- rs1_w0_val == 64<br>                                                                                                                                                 |[0x80000518]:KMMAWT2 t6, t5, t4<br> [0x8000051c]:csrrs t5, vxsat, zero<br> [0x80000520]:sw t6, 32(ra)<br>      |
|  37|[0x80002330]<br>0x000003FF|- rs1_w0_val == 16<br>                                                                                                                                                 |[0x80000534]:KMMAWT2 t6, t5, t4<br> [0x80000538]:csrrs t5, vxsat, zero<br> [0x8000053c]:sw t6, 40(ra)<br>      |
|  38|[0x80002338]<br>0x000003FF|- rs2_h0_val == -1<br> - rs1_w0_val == 4<br>                                                                                                                           |[0x80000550]:KMMAWT2 t6, t5, t4<br> [0x80000554]:csrrs t5, vxsat, zero<br> [0x80000558]:sw t6, 48(ra)<br>      |
|  39|[0x80002340]<br>0x000003FF|- rs1_w0_val == 2<br>                                                                                                                                                  |[0x8000056c]:KMMAWT2 t6, t5, t4<br> [0x80000570]:csrrs t5, vxsat, zero<br> [0x80000574]:sw t6, 56(ra)<br>      |
|  40|[0x80002348]<br>0x000003FE|- rs2_h0_val == -16385<br> - rs1_w0_val == 1<br>                                                                                                                       |[0x80000588]:KMMAWT2 t6, t5, t4<br> [0x8000058c]:csrrs t5, vxsat, zero<br> [0x80000590]:sw t6, 64(ra)<br>      |
|  41|[0x80002350]<br>0x000003FD|- rs2_h0_val == 512<br> - rs1_w0_val == -1<br>                                                                                                                         |[0x800005a4]:KMMAWT2 t6, t5, t4<br> [0x800005a8]:csrrs t5, vxsat, zero<br> [0x800005ac]:sw t6, 72(ra)<br>      |
|  42|[0x80002358]<br>0x000003FC|- rs2_h1_val == -1<br> - rs2_h0_val == -257<br>                                                                                                                        |[0x800005bc]:KMMAWT2 t6, t5, t4<br> [0x800005c0]:csrrs t5, vxsat, zero<br> [0x800005c4]:sw t6, 80(ra)<br>      |
|  43|[0x80002360]<br>0x020003FD|- rs2_h0_val == -21846<br>                                                                                                                                             |[0x800005dc]:KMMAWT2 t6, t5, t4<br> [0x800005e0]:csrrs t5, vxsat, zero<br> [0x800005e4]:sw t6, 88(ra)<br>      |
|  44|[0x80002368]<br>0x020083FD|- rs2_h0_val == -2049<br>                                                                                                                                              |[0x800005fc]:KMMAWT2 t6, t5, t4<br> [0x80000600]:csrrs t5, vxsat, zero<br> [0x80000604]:sw t6, 96(ra)<br>      |
|  45|[0x80002370]<br>0x020083FC|- rs2_h0_val == -129<br> - rs1_w0_val == -257<br>                                                                                                                      |[0x80000618]:KMMAWT2 t6, t5, t4<br> [0x8000061c]:csrrs t5, vxsat, zero<br> [0x80000620]:sw t6, 104(ra)<br>     |
|  46|[0x80002378]<br>0x020063FB|- rs2_h0_val == -9<br> - rs1_w0_val == -16385<br>                                                                                                                      |[0x80000638]:KMMAWT2 t6, t5, t4<br> [0x8000063c]:csrrs t5, vxsat, zero<br> [0x80000640]:sw t6, 112(ra)<br>     |
|  47|[0x80002380]<br>0x060063FA|- rs2_h0_val == -3<br> - rs1_w0_val == 2147483647<br>                                                                                                                  |[0x80000658]:KMMAWT2 t6, t5, t4<br> [0x8000065c]:csrrs t5, vxsat, zero<br> [0x80000660]:sw t6, 120(ra)<br>     |
|  48|[0x80002388]<br>0x060063F9|- rs2_h0_val == 8192<br>                                                                                                                                               |[0x80000670]:KMMAWT2 t6, t5, t4<br> [0x80000674]:csrrs t5, vxsat, zero<br> [0x80000678]:sw t6, 128(ra)<br>     |
|  49|[0x80002390]<br>0x06006479|- rs2_h0_val == 1024<br> - rs1_w0_val == -1025<br>                                                                                                                     |[0x8000068c]:KMMAWT2 t6, t5, t4<br> [0x80000690]:csrrs t5, vxsat, zero<br> [0x80000694]:sw t6, 136(ra)<br>     |
|  50|[0x80002398]<br>0x05F06478|- rs2_h0_val == 16<br> - rs1_w0_val == -67108865<br>                                                                                                                   |[0x800006ac]:KMMAWT2 t6, t5, t4<br> [0x800006b0]:csrrs t5, vxsat, zero<br> [0x800006b4]:sw t6, 144(ra)<br>     |
|  51|[0x800023a0]<br>0x05F06488|- rs2_h0_val == 8<br> - rs1_w0_val == -65<br>                                                                                                                          |[0x800006c8]:KMMAWT2 t6, t5, t4<br> [0x800006cc]:csrrs t5, vxsat, zero<br> [0x800006d0]:sw t6, 152(ra)<br>     |
|  52|[0x800023a8]<br>0x05F06488|- rs2_h0_val == 4<br>                                                                                                                                                  |[0x800006e4]:KMMAWT2 t6, t5, t4<br> [0x800006e8]:csrrs t5, vxsat, zero<br> [0x800006ec]:sw t6, 160(ra)<br>     |
|  53|[0x800023b0]<br>0x05F06483|- rs2_h0_val == 1<br>                                                                                                                                                  |[0x80000700]:KMMAWT2 t6, t5, t4<br> [0x80000704]:csrrs t5, vxsat, zero<br> [0x80000708]:sw t6, 168(ra)<br>     |
|  54|[0x800023c0]<br>0x069BB9D8|- rs1_w0_val == -1431655766<br>                                                                                                                                        |[0x80000738]:KMMAWT2 t6, t5, t4<br> [0x8000073c]:csrrs t5, vxsat, zero<br> [0x80000740]:sw t6, 184(ra)<br>     |
|  55|[0x800023c8]<br>0x069D0F2D|- rs1_w0_val == 1431655765<br>                                                                                                                                         |[0x80000758]:KMMAWT2 t6, t5, t4<br> [0x8000075c]:csrrs t5, vxsat, zero<br> [0x80000760]:sw t6, 192(ra)<br>     |
|  56|[0x800023d0]<br>0x469D0F2E|- rs1_w0_val == -1073741825<br>                                                                                                                                        |[0x80000778]:KMMAWT2 t6, t5, t4<br> [0x8000077c]:csrrs t5, vxsat, zero<br> [0x80000780]:sw t6, 200(ra)<br>     |
|  57|[0x800023d8]<br>0x4E9D0F2F|- rs1_w0_val == -134217729<br>                                                                                                                                         |[0x80000798]:KMMAWT2 t6, t5, t4<br> [0x8000079c]:csrrs t5, vxsat, zero<br> [0x800007a0]:sw t6, 208(ra)<br>     |
|  58|[0x800023e0]<br>0x4E9D032E|- rs1_w0_val == -16777217<br>                                                                                                                                          |[0x800007b8]:KMMAWT2 t6, t5, t4<br> [0x800007bc]:csrrs t5, vxsat, zero<br> [0x800007c0]:sw t6, 216(ra)<br>     |
|  59|[0x800023e8]<br>0x4E9CE32D|- rs1_w0_val == -4194305<br>                                                                                                                                           |[0x800007d4]:KMMAWT2 t6, t5, t4<br> [0x800007d8]:csrrs t5, vxsat, zero<br> [0x800007dc]:sw t6, 224(ra)<br>     |
|  60|[0x800023f0]<br>0x4EBCE32E|- rs1_w0_val == -2097153<br>                                                                                                                                           |[0x800007f4]:KMMAWT2 t6, t5, t4<br> [0x800007f8]:csrrs t5, vxsat, zero<br> [0x800007fc]:sw t6, 232(ra)<br>     |
|  61|[0x800023f8]<br>0x4EBCA32D|- rs1_w0_val == -1048577<br>                                                                                                                                           |[0x80000814]:KMMAWT2 t6, t5, t4<br> [0x80000818]:csrrs t5, vxsat, zero<br> [0x8000081c]:sw t6, 240(ra)<br>     |
|  62|[0x80002400]<br>0x4EB4A33C|- rs1_w0_val == -524289<br>                                                                                                                                            |[0x80000830]:KMMAWT2 t6, t5, t4<br> [0x80000834]:csrrs t5, vxsat, zero<br> [0x80000838]:sw t6, 248(ra)<br>     |
|  63|[0x80002408]<br>0x4EB4A323|- rs1_w0_val == -262145<br>                                                                                                                                            |[0x80000850]:KMMAWT2 t6, t5, t4<br> [0x80000854]:csrrs t5, vxsat, zero<br> [0x80000858]:sw t6, 256(ra)<br>     |
|  64|[0x80002410]<br>0x4EB4A727|- rs1_w0_val == -131073<br>                                                                                                                                            |[0x8000086c]:KMMAWT2 t6, t5, t4<br> [0x80000870]:csrrs t5, vxsat, zero<br> [0x80000874]:sw t6, 264(ra)<br>     |
|  65|[0x80002418]<br>0x4EB4A728|- rs1_w0_val == -8193<br>                                                                                                                                              |[0x8000088c]:KMMAWT2 t6, t5, t4<br> [0x80000890]:csrrs t5, vxsat, zero<br> [0x80000894]:sw t6, 272(ra)<br>     |
|  66|[0x80002420]<br>0x4EB4A728|- rs1_w0_val == -4097<br>                                                                                                                                              |[0x800008a8]:KMMAWT2 t6, t5, t4<br> [0x800008ac]:csrrs t5, vxsat, zero<br> [0x800008b0]:sw t6, 280(ra)<br>     |
|  67|[0x80002428]<br>0x4EB4A727|- rs1_w0_val == -129<br>                                                                                                                                               |[0x800008c4]:KMMAWT2 t6, t5, t4<br> [0x800008c8]:csrrs t5, vxsat, zero<br> [0x800008cc]:sw t6, 288(ra)<br>     |
|  68|[0x80002430]<br>0x4EB4A727|- rs1_w0_val == -33<br>                                                                                                                                                |[0x800008dc]:KMMAWT2 t6, t5, t4<br> [0x800008e0]:csrrs t5, vxsat, zero<br> [0x800008e4]:sw t6, 296(ra)<br>     |
|  69|[0x80002438]<br>0x4EB4A72F|- rs1_w0_val == -17<br>                                                                                                                                                |[0x800008f8]:KMMAWT2 t6, t5, t4<br> [0x800008fc]:csrrs t5, vxsat, zero<br> [0x80000900]:sw t6, 304(ra)<br>     |
|  70|[0x80002440]<br>0x4EB4A72F|- rs1_w0_val == -9<br>                                                                                                                                                 |[0x80000914]:KMMAWT2 t6, t5, t4<br> [0x80000918]:csrrs t5, vxsat, zero<br> [0x8000091c]:sw t6, 312(ra)<br>     |
|  71|[0x80002448]<br>0x4EB4A72F|- rs1_w0_val == -5<br>                                                                                                                                                 |[0x80000930]:KMMAWT2 t6, t5, t4<br> [0x80000934]:csrrs t5, vxsat, zero<br> [0x80000938]:sw t6, 320(ra)<br>     |
|  72|[0x80002450]<br>0x4EB4A72E|- rs1_w0_val == -3<br>                                                                                                                                                 |[0x8000094c]:KMMAWT2 t6, t5, t4<br> [0x80000950]:csrrs t5, vxsat, zero<br> [0x80000954]:sw t6, 328(ra)<br>     |
|  73|[0x80002458]<br>0x52B4972E|- rs1_w0_val == 134217728<br>                                                                                                                                          |[0x80000968]:KMMAWT2 t6, t5, t4<br> [0x8000096c]:csrrs t5, vxsat, zero<br> [0x80000970]:sw t6, 336(ra)<br>     |
|  74|[0x80002460]<br>0x5294932E|- rs1_w0_val == 33554432<br>                                                                                                                                           |[0x80000984]:KMMAWT2 t6, t5, t4<br> [0x80000988]:csrrs t5, vxsat, zero<br> [0x8000098c]:sw t6, 344(ra)<br>     |
|  75|[0x80002468]<br>0x52B492AE|- rs1_w0_val == 4194304<br>                                                                                                                                            |[0x800009a0]:KMMAWT2 t6, t5, t4<br> [0x800009a4]:csrrs t5, vxsat, zero<br> [0x800009a8]:sw t6, 352(ra)<br>     |
|  76|[0x80002470]<br>0x52B48A6E|- rs1_w0_val == 2097152<br>                                                                                                                                            |[0x800009bc]:KMMAWT2 t6, t5, t4<br> [0x800009c0]:csrrs t5, vxsat, zero<br> [0x800009c4]:sw t6, 360(ra)<br>     |
|  77|[0x80002478]<br>0x52B489EE|- rs1_w0_val == 1048576<br>                                                                                                                                            |[0x800009d8]:KMMAWT2 t6, t5, t4<br> [0x800009dc]:csrrs t5, vxsat, zero<br> [0x800009e0]:sw t6, 368(ra)<br>     |
|  78|[0x80002480]<br>0x52AF348E|- rs2_h1_val == -21846<br> - rs1_w0_val == 524288<br>                                                                                                                  |[0x800009f0]:KMMAWT2 t6, t5, t4<br> [0x800009f4]:csrrs t5, vxsat, zero<br> [0x800009f8]:sw t6, 376(ra)<br>     |
|  79|[0x80002488]<br>0x52AF349E|- rs1_w0_val == 262144<br>                                                                                                                                             |[0x80000a0c]:KMMAWT2 t6, t5, t4<br> [0x80000a10]:csrrs t5, vxsat, zero<br> [0x80000a14]:sw t6, 384(ra)<br>     |
|  80|[0x80002490]<br>0x52AF34A4|- rs1_w0_val == 65536<br>                                                                                                                                              |[0x80000a28]:KMMAWT2 t6, t5, t4<br> [0x80000a2c]:csrrs t5, vxsat, zero<br> [0x80000a30]:sw t6, 392(ra)<br>     |
|  81|[0x80002498]<br>0x52AF3CA4|- rs1_w0_val == 8192<br>                                                                                                                                               |[0x80000a44]:KMMAWT2 t6, t5, t4<br> [0x80000a48]:csrrs t5, vxsat, zero<br> [0x80000a4c]:sw t6, 400(ra)<br>     |
|  82|[0x800024a0]<br>0x52AF3CAC|- rs1_w0_val == 4096<br>                                                                                                                                               |[0x80000a60]:KMMAWT2 t6, t5, t4<br> [0x80000a64]:csrrs t5, vxsat, zero<br> [0x80000a68]:sw t6, 408(ra)<br>     |
|  83|[0x800024a8]<br>0x52AF3CA3|- rs1_w0_val == 1024<br>                                                                                                                                               |[0x80000a7c]:KMMAWT2 t6, t5, t4<br> [0x80000a80]:csrrs t5, vxsat, zero<br> [0x80000a84]:sw t6, 416(ra)<br>     |
|  84|[0x800024b0]<br>0x54B03CA3|- rs1_w0_val == -2147483648<br>                                                                                                                                        |[0x80000a98]:KMMAWT2 t6, t5, t4<br> [0x80000a9c]:csrrs t5, vxsat, zero<br> [0x80000aa0]:sw t6, 424(ra)<br>     |
|  85|[0x800024b8]<br>0x54B041F9|- rs1_w0_val == -2049<br>                                                                                                                                              |[0x80000ab8]:KMMAWT2 t6, t5, t4<br> [0x80000abc]:csrrs t5, vxsat, zero<br> [0x80000ac0]:sw t6, 432(ra)<br>     |
