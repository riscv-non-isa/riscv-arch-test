
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800008a0')]      |
| SIG_REGION                | [('0x80002210', '0x80002470', '152 words')]      |
| COV_LABELS                | ksllw      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/ksllw-01.S    |
| Total Number of coverpoints| 188     |
| Total Coverpoints Hit     | 182      |
| Total Signature Updates   | 150      |
| STAT1                     | 72      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 75     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000620]:KSLLW t6, t5, t4
      [0x80000624]:csrrs t5, vxsat, zero
      [0x80000628]:sw t6, 152(ra)
 -- Signature Address: 0x80002398 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : ksllw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000868]:KSLLW t6, t5, t4
      [0x8000086c]:csrrs t5, vxsat, zero
      [0x80000870]:sw t6, 344(ra)
 -- Signature Address: 0x80002458 Data: 0x80000000
 -- Redundant Coverpoints hit by the op
      - opcode : ksllw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val == -1048577




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000884]:KSLLW t6, t5, t4
      [0x80000888]:csrrs t5, vxsat, zero
      [0x8000088c]:sw t6, 352(ra)
 -- Signature Address: 0x80002460 Data: 0xFBFFF800
 -- Redundant Coverpoints hit by the op
      - opcode : ksllw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val == -32769






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : ksllw', 'rs1 : x21', 'rs2 : x21', 'rd : x21', 'rs1 == rs2 == rd', 'rs2_val == 21']
Last Code Sequence : 
	-[0x80000114]:KSLLW s5, s5, s5
	-[0x80000118]:csrrs s5, vxsat, zero
	-[0x8000011c]:sw s5, 0(a1)
Current Store : [0x80000120] : sw s5, 4(a1) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x20', 'rd : x9', 'rs1 == rs2 != rd', 'rs2_val == 15']
Last Code Sequence : 
	-[0x8000012c]:KSLLW s1, s4, s4
	-[0x80000130]:csrrs s4, vxsat, zero
	-[0x80000134]:sw s1, 8(a1)
Current Store : [0x80000138] : sw s4, 12(a1) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x18', 'rd : x1', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == 23', 'rs1_w0_val == -17']
Last Code Sequence : 
	-[0x80000144]:KSLLW ra, a5, s2
	-[0x80000148]:csrrs a5, vxsat, zero
	-[0x8000014c]:sw ra, 16(a1)
Current Store : [0x80000150] : sw a5, 20(a1) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x4', 'rd : x4', 'rs2 == rd != rs1', 'rs2_val == 27']
Last Code Sequence : 
	-[0x8000015c]:KSLLW tp, s7, tp
	-[0x80000160]:csrrs s7, vxsat, zero
	-[0x80000164]:sw tp, 24(a1)
Current Store : [0x80000168] : sw s7, 28(a1) -- Store: [0x8000222c]:0x00000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x25', 'rd : x18', 'rs1 == rd != rs2', 'rs2_val == 29', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000174]:KSLLW s2, s2, s9
	-[0x80000178]:csrrs s2, vxsat, zero
	-[0x8000017c]:sw s2, 32(a1)
Current Store : [0x80000180] : sw s2, 36(a1) -- Store: [0x80002234]:0x00000001




Last Coverpoint : ['rs1 : x10', 'rs2 : x31', 'rd : x13', 'rs2_val == 30', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x8000018c]:KSLLW a3, a0, t6
	-[0x80000190]:csrrs a0, vxsat, zero
	-[0x80000194]:sw a3, 40(a1)
Current Store : [0x80000198] : sw a0, 44(a1) -- Store: [0x8000223c]:0x00000001




Last Coverpoint : ['rs1 : x9', 'rs2 : x5', 'rd : x6', 'rs2_val == 16', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x800001a4]:KSLLW t1, s1, t0
	-[0x800001a8]:csrrs s1, vxsat, zero
	-[0x800001ac]:sw t1, 48(a1)
Current Store : [0x800001b0] : sw s1, 52(a1) -- Store: [0x80002244]:0x00000001




Last Coverpoint : ['rs1 : x19', 'rs2 : x1', 'rd : x7', 'rs2_val == 8', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x800001bc]:KSLLW t2, s3, ra
	-[0x800001c0]:csrrs s3, vxsat, zero
	-[0x800001c4]:sw t2, 56(a1)
Current Store : [0x800001c8] : sw s3, 60(a1) -- Store: [0x8000224c]:0x00000001




Last Coverpoint : ['rs1 : x1', 'rs2 : x7', 'rd : x8', 'rs2_val == 4']
Last Code Sequence : 
	-[0x800001d8]:KSLLW fp, ra, t2
	-[0x800001dc]:csrrs ra, vxsat, zero
	-[0x800001e0]:sw fp, 64(a1)
Current Store : [0x800001e4] : sw ra, 68(a1) -- Store: [0x80002254]:0x00000001




Last Coverpoint : ['rs1 : x16', 'rs2 : x29', 'rd : x3', 'rs2_val == 2', 'rs1_w0_val == -129']
Last Code Sequence : 
	-[0x800001f0]:KSLLW gp, a6, t4
	-[0x800001f4]:csrrs a6, vxsat, zero
	-[0x800001f8]:sw gp, 72(a1)
Current Store : [0x800001fc] : sw a6, 76(a1) -- Store: [0x8000225c]:0x00000001




Last Coverpoint : ['rs1 : x4', 'rs2 : x28', 'rd : x26', 'rs2_val == 1', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000208]:KSLLW s10, tp, t3
	-[0x8000020c]:csrrs tp, vxsat, zero
	-[0x80000210]:sw s10, 80(a1)
Current Store : [0x80000214] : sw tp, 84(a1) -- Store: [0x80002264]:0x00000001




Last Coverpoint : ['rs1 : x25', 'rs2 : x6', 'rd : x2', 'rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x80000224]:KSLLW sp, s9, t1
	-[0x80000228]:csrrs s9, vxsat, zero
	-[0x8000022c]:sw sp, 88(a1)
Current Store : [0x80000230] : sw s9, 92(a1) -- Store: [0x8000226c]:0x00000001




Last Coverpoint : ['rs1 : x8', 'rs2 : x22', 'rd : x19', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000240]:KSLLW s3, fp, s6
	-[0x80000244]:csrrs fp, vxsat, zero
	-[0x80000248]:sw s3, 96(a1)
Current Store : [0x8000024c] : sw fp, 100(a1) -- Store: [0x80002274]:0x00000001




Last Coverpoint : ['rs1 : x17', 'rs2 : x3', 'rd : x22', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x8000025c]:KSLLW s6, a7, gp
	-[0x80000260]:csrrs a7, vxsat, zero
	-[0x80000264]:sw s6, 104(a1)
Current Store : [0x80000268] : sw a7, 108(a1) -- Store: [0x8000227c]:0x00000001




Last Coverpoint : ['rs1 : x0', 'rs2 : x13', 'rd : x30', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x80000278]:KSLLW t5, zero, a3
	-[0x8000027c]:csrrs zero, vxsat, zero
	-[0x80000280]:sw t5, 112(a1)
Current Store : [0x80000284] : sw zero, 116(a1) -- Store: [0x80002284]:0x00000000




Last Coverpoint : ['rs1 : x27', 'rs2 : x15', 'rd : x16', 'rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x80000294]:KSLLW a6, s11, a5
	-[0x80000298]:csrrs s11, vxsat, zero
	-[0x8000029c]:sw a6, 120(a1)
Current Store : [0x800002a0] : sw s11, 124(a1) -- Store: [0x8000228c]:0x00000001




Last Coverpoint : ['rs1 : x28', 'rs2 : x16', 'rd : x10', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x800002b8]:KSLLW a0, t3, a6
	-[0x800002bc]:csrrs t3, vxsat, zero
	-[0x800002c0]:sw a0, 0(ra)
Current Store : [0x800002c4] : sw t3, 4(ra) -- Store: [0x80002294]:0x00000001




Last Coverpoint : ['rs1 : x2', 'rs2 : x24', 'rd : x25', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x800002d4]:KSLLW s9, sp, s8
	-[0x800002d8]:csrrs sp, vxsat, zero
	-[0x800002dc]:sw s9, 8(ra)
Current Store : [0x800002e0] : sw sp, 12(ra) -- Store: [0x8000229c]:0x00000001




Last Coverpoint : ['rs1 : x24', 'rs2 : x2', 'rd : x12', 'rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x800002f0]:KSLLW a2, s8, sp
	-[0x800002f4]:csrrs s8, vxsat, zero
	-[0x800002f8]:sw a2, 16(ra)
Current Store : [0x800002fc] : sw s8, 20(ra) -- Store: [0x800022a4]:0x00000001




Last Coverpoint : ['rs1 : x30', 'rs2 : x11', 'rd : x20', 'rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x8000030c]:KSLLW s4, t5, a1
	-[0x80000310]:csrrs t5, vxsat, zero
	-[0x80000314]:sw s4, 24(ra)
Current Store : [0x80000318] : sw t5, 28(ra) -- Store: [0x800022ac]:0x00000001




Last Coverpoint : ['rs1 : x13', 'rs2 : x26', 'rd : x29', 'rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x80000328]:KSLLW t4, a3, s10
	-[0x8000032c]:csrrs a3, vxsat, zero
	-[0x80000330]:sw t4, 32(ra)
Current Store : [0x80000334] : sw a3, 36(ra) -- Store: [0x800022b4]:0x00000001




Last Coverpoint : ['rs1 : x5', 'rs2 : x9', 'rd : x14', 'rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x80000344]:KSLLW a4, t0, s1
	-[0x80000348]:csrrs t0, vxsat, zero
	-[0x8000034c]:sw a4, 40(ra)
Current Store : [0x80000350] : sw t0, 44(ra) -- Store: [0x800022bc]:0x00000001




Last Coverpoint : ['rs1 : x12', 'rs2 : x30', 'rd : x23', 'rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x80000360]:KSLLW s7, a2, t5
	-[0x80000364]:csrrs a2, vxsat, zero
	-[0x80000368]:sw s7, 48(ra)
Current Store : [0x8000036c] : sw a2, 52(ra) -- Store: [0x800022c4]:0x00000001




Last Coverpoint : ['rs1 : x6', 'rs2 : x14', 'rd : x5', 'rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x8000037c]:KSLLW t0, t1, a4
	-[0x80000380]:csrrs t1, vxsat, zero
	-[0x80000384]:sw t0, 56(ra)
Current Store : [0x80000388] : sw t1, 60(ra) -- Store: [0x800022cc]:0x00000001




Last Coverpoint : ['rs1 : x29', 'rs2 : x27', 'rd : x0', 'rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x80000398]:KSLLW zero, t4, s11
	-[0x8000039c]:csrrs t4, vxsat, zero
	-[0x800003a0]:sw zero, 64(ra)
Current Store : [0x800003a4] : sw t4, 68(ra) -- Store: [0x800022d4]:0x00000001




Last Coverpoint : ['rs1 : x11', 'rs2 : x19', 'rd : x28', 'rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x800003b4]:KSLLW t3, a1, s3
	-[0x800003b8]:csrrs a1, vxsat, zero
	-[0x800003bc]:sw t3, 72(ra)
Current Store : [0x800003c0] : sw a1, 76(ra) -- Store: [0x800022dc]:0x00000001




Last Coverpoint : ['rs1 : x3', 'rs2 : x17', 'rd : x11', 'rs1_w0_val == -262145', 'rs2_val == 10']
Last Code Sequence : 
	-[0x800003d0]:KSLLW a1, gp, a7
	-[0x800003d4]:csrrs gp, vxsat, zero
	-[0x800003d8]:sw a1, 80(ra)
Current Store : [0x800003dc] : sw gp, 84(ra) -- Store: [0x800022e4]:0x00000001




Last Coverpoint : ['rs1 : x22', 'rs2 : x10', 'rd : x15', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x800003ec]:KSLLW a5, s6, a0
	-[0x800003f0]:csrrs s6, vxsat, zero
	-[0x800003f4]:sw a5, 88(ra)
Current Store : [0x800003f8] : sw s6, 92(ra) -- Store: [0x800022ec]:0x00000001




Last Coverpoint : ['rs1 : x14', 'rs2 : x8', 'rd : x24', 'rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x80000408]:KSLLW s8, a4, fp
	-[0x8000040c]:csrrs a4, vxsat, zero
	-[0x80000410]:sw s8, 96(ra)
Current Store : [0x80000414] : sw a4, 100(ra) -- Store: [0x800022f4]:0x00000001




Last Coverpoint : ['rs1 : x7', 'rs2 : x0', 'rd : x31', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x80000424]:KSLLW t6, t2, zero
	-[0x80000428]:csrrs t2, vxsat, zero
	-[0x8000042c]:sw t6, 104(ra)
Current Store : [0x80000430] : sw t2, 108(ra) -- Store: [0x800022fc]:0x00000001




Last Coverpoint : ['rs1 : x31', 'rs2 : x23', 'rd : x17', 'rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x80000448]:KSLLW a7, t6, s7
	-[0x8000044c]:csrrs t6, vxsat, zero
	-[0x80000450]:sw a7, 0(ra)
Current Store : [0x80000454] : sw t6, 4(ra) -- Store: [0x80002304]:0x00000001




Last Coverpoint : ['rs1 : x26', 'rs2 : x12', 'rd : x27', 'rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x80000464]:KSLLW s11, s10, a2
	-[0x80000468]:csrrs s10, vxsat, zero
	-[0x8000046c]:sw s11, 8(ra)
Current Store : [0x80000470] : sw s10, 12(ra) -- Store: [0x8000230c]:0x00000001




Last Coverpoint : ['rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x80000480]:KSLLW t6, t5, t4
	-[0x80000484]:csrrs t5, vxsat, zero
	-[0x80000488]:sw t6, 16(ra)
Current Store : [0x8000048c] : sw t5, 20(ra) -- Store: [0x80002314]:0x00000001




Last Coverpoint : ['rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x8000049c]:KSLLW t6, t5, t4
	-[0x800004a0]:csrrs t5, vxsat, zero
	-[0x800004a4]:sw t6, 24(ra)
Current Store : [0x800004a8] : sw t5, 28(ra) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x800004b4]:KSLLW t6, t5, t4
	-[0x800004b8]:csrrs t5, vxsat, zero
	-[0x800004bc]:sw t6, 32(ra)
Current Store : [0x800004c0] : sw t5, 36(ra) -- Store: [0x80002324]:0x00000001




Last Coverpoint : ['rs1_w0_val == -513']
Last Code Sequence : 
	-[0x800004cc]:KSLLW t6, t5, t4
	-[0x800004d0]:csrrs t5, vxsat, zero
	-[0x800004d4]:sw t6, 40(ra)
Current Store : [0x800004d8] : sw t5, 44(ra) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs1_w0_val == -257']
Last Code Sequence : 
	-[0x800004e4]:KSLLW t6, t5, t4
	-[0x800004e8]:csrrs t5, vxsat, zero
	-[0x800004ec]:sw t6, 48(ra)
Current Store : [0x800004f0] : sw t5, 52(ra) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs1_w0_val == -65']
Last Code Sequence : 
	-[0x800004fc]:KSLLW t6, t5, t4
	-[0x80000500]:csrrs t5, vxsat, zero
	-[0x80000504]:sw t6, 56(ra)
Current Store : [0x80000508] : sw t5, 60(ra) -- Store: [0x8000233c]:0x00000001




Last Coverpoint : ['rs1_w0_val == -33']
Last Code Sequence : 
	-[0x80000514]:KSLLW t6, t5, t4
	-[0x80000518]:csrrs t5, vxsat, zero
	-[0x8000051c]:sw t6, 64(ra)
Current Store : [0x80000520] : sw t5, 68(ra) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['rs1_w0_val == -9']
Last Code Sequence : 
	-[0x8000052c]:KSLLW t6, t5, t4
	-[0x80000530]:csrrs t5, vxsat, zero
	-[0x80000534]:sw t6, 72(ra)
Current Store : [0x80000538] : sw t5, 76(ra) -- Store: [0x8000234c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000548]:KSLLW t6, t5, t4
	-[0x8000054c]:csrrs t5, vxsat, zero
	-[0x80000550]:sw t6, 80(ra)
Current Store : [0x80000554] : sw t5, 84(ra) -- Store: [0x80002354]:0x00000001




Last Coverpoint : ['rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000560]:KSLLW t6, t5, t4
	-[0x80000564]:csrrs t5, vxsat, zero
	-[0x80000568]:sw t6, 88(ra)
Current Store : [0x8000056c] : sw t5, 92(ra) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000578]:KSLLW t6, t5, t4
	-[0x8000057c]:csrrs t5, vxsat, zero
	-[0x80000580]:sw t6, 96(ra)
Current Store : [0x80000584] : sw t5, 100(ra) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000590]:KSLLW t6, t5, t4
	-[0x80000594]:csrrs t5, vxsat, zero
	-[0x80000598]:sw t6, 104(ra)
Current Store : [0x8000059c] : sw t5, 108(ra) -- Store: [0x8000236c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 64']
Last Code Sequence : 
	-[0x800005a8]:KSLLW t6, t5, t4
	-[0x800005ac]:csrrs t5, vxsat, zero
	-[0x800005b0]:sw t6, 112(ra)
Current Store : [0x800005b4] : sw t5, 116(ra) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs1_w0_val == 16']
Last Code Sequence : 
	-[0x800005c0]:KSLLW t6, t5, t4
	-[0x800005c4]:csrrs t5, vxsat, zero
	-[0x800005c8]:sw t6, 120(ra)
Current Store : [0x800005cc] : sw t5, 124(ra) -- Store: [0x8000237c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 8']
Last Code Sequence : 
	-[0x800005d8]:KSLLW t6, t5, t4
	-[0x800005dc]:csrrs t5, vxsat, zero
	-[0x800005e0]:sw t6, 128(ra)
Current Store : [0x800005e4] : sw t5, 132(ra) -- Store: [0x80002384]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4']
Last Code Sequence : 
	-[0x800005f0]:KSLLW t6, t5, t4
	-[0x800005f4]:csrrs t5, vxsat, zero
	-[0x800005f8]:sw t6, 136(ra)
Current Store : [0x800005fc] : sw t5, 140(ra) -- Store: [0x8000238c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000608]:KSLLW t6, t5, t4
	-[0x8000060c]:csrrs t5, vxsat, zero
	-[0x80000610]:sw t6, 144(ra)
Current Store : [0x80000614] : sw t5, 148(ra) -- Store: [0x80002394]:0x00000001




Last Coverpoint : ['opcode : ksllw', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x80000620]:KSLLW t6, t5, t4
	-[0x80000624]:csrrs t5, vxsat, zero
	-[0x80000628]:sw t6, 152(ra)
Current Store : [0x8000062c] : sw t5, 156(ra) -- Store: [0x8000239c]:0x00000001




Last Coverpoint : ['rs1_w0_val == -1']
Last Code Sequence : 
	-[0x80000638]:KSLLW t6, t5, t4
	-[0x8000063c]:csrrs t5, vxsat, zero
	-[0x80000640]:sw t6, 160(ra)
Current Store : [0x80000644] : sw t5, 164(ra) -- Store: [0x800023a4]:0x00000001




Last Coverpoint : ['rs1_w0_val == -5']
Last Code Sequence : 
	-[0x80000650]:KSLLW t6, t5, t4
	-[0x80000654]:csrrs t5, vxsat, zero
	-[0x80000658]:sw t6, 168(ra)
Current Store : [0x8000065c] : sw t5, 172(ra) -- Store: [0x800023ac]:0x00000001




Last Coverpoint : ['rs1_w0_val == -3']
Last Code Sequence : 
	-[0x80000668]:KSLLW t6, t5, t4
	-[0x8000066c]:csrrs t5, vxsat, zero
	-[0x80000670]:sw t6, 176(ra)
Current Store : [0x80000674] : sw t5, 180(ra) -- Store: [0x800023b4]:0x00000001




Last Coverpoint : ['rs1_w0_val == -2']
Last Code Sequence : 
	-[0x80000680]:KSLLW t6, t5, t4
	-[0x80000684]:csrrs t5, vxsat, zero
	-[0x80000688]:sw t6, 184(ra)
Current Store : [0x8000068c] : sw t5, 188(ra) -- Store: [0x800023bc]:0x00000001




Last Coverpoint : ['rs1_w0_val == -2147483648']
Last Code Sequence : 
	-[0x80000698]:KSLLW t6, t5, t4
	-[0x8000069c]:csrrs t5, vxsat, zero
	-[0x800006a0]:sw t6, 192(ra)
Current Store : [0x800006a4] : sw t5, 196(ra) -- Store: [0x800023c4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x800006b0]:KSLLW t6, t5, t4
	-[0x800006b4]:csrrs t5, vxsat, zero
	-[0x800006b8]:sw t6, 200(ra)
Current Store : [0x800006bc] : sw t5, 204(ra) -- Store: [0x800023cc]:0x00000001




Last Coverpoint : ['rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x800006c8]:KSLLW t6, t5, t4
	-[0x800006cc]:csrrs t5, vxsat, zero
	-[0x800006d0]:sw t6, 208(ra)
Current Store : [0x800006d4] : sw t5, 212(ra) -- Store: [0x800023d4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x800006e0]:KSLLW t6, t5, t4
	-[0x800006e4]:csrrs t5, vxsat, zero
	-[0x800006e8]:sw t6, 216(ra)
Current Store : [0x800006ec] : sw t5, 220(ra) -- Store: [0x800023dc]:0x00000001




Last Coverpoint : ['rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x800006f8]:KSLLW t6, t5, t4
	-[0x800006fc]:csrrs t5, vxsat, zero
	-[0x80000700]:sw t6, 224(ra)
Current Store : [0x80000704] : sw t5, 228(ra) -- Store: [0x800023e4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000710]:KSLLW t6, t5, t4
	-[0x80000714]:csrrs t5, vxsat, zero
	-[0x80000718]:sw t6, 232(ra)
Current Store : [0x8000071c] : sw t5, 236(ra) -- Store: [0x800023ec]:0x00000001




Last Coverpoint : ['rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000728]:KSLLW t6, t5, t4
	-[0x8000072c]:csrrs t5, vxsat, zero
	-[0x80000730]:sw t6, 240(ra)
Current Store : [0x80000734] : sw t5, 244(ra) -- Store: [0x800023f4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000740]:KSLLW t6, t5, t4
	-[0x80000744]:csrrs t5, vxsat, zero
	-[0x80000748]:sw t6, 248(ra)
Current Store : [0x8000074c] : sw t5, 252(ra) -- Store: [0x800023fc]:0x00000001




Last Coverpoint : ['rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000758]:KSLLW t6, t5, t4
	-[0x8000075c]:csrrs t5, vxsat, zero
	-[0x80000760]:sw t6, 256(ra)
Current Store : [0x80000764] : sw t5, 260(ra) -- Store: [0x80002404]:0x00000001




Last Coverpoint : ['rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000770]:KSLLW t6, t5, t4
	-[0x80000774]:csrrs t5, vxsat, zero
	-[0x80000778]:sw t6, 264(ra)
Current Store : [0x8000077c] : sw t5, 268(ra) -- Store: [0x8000240c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000788]:KSLLW t6, t5, t4
	-[0x8000078c]:csrrs t5, vxsat, zero
	-[0x80000790]:sw t6, 272(ra)
Current Store : [0x80000794] : sw t5, 276(ra) -- Store: [0x80002414]:0x00000001




Last Coverpoint : ['rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x800007a0]:KSLLW t6, t5, t4
	-[0x800007a4]:csrrs t5, vxsat, zero
	-[0x800007a8]:sw t6, 280(ra)
Current Store : [0x800007ac] : sw t5, 284(ra) -- Store: [0x8000241c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x800007b8]:KSLLW t6, t5, t4
	-[0x800007bc]:csrrs t5, vxsat, zero
	-[0x800007c0]:sw t6, 288(ra)
Current Store : [0x800007c4] : sw t5, 292(ra) -- Store: [0x80002424]:0x00000001




Last Coverpoint : ['rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x800007d0]:KSLLW t6, t5, t4
	-[0x800007d4]:csrrs t5, vxsat, zero
	-[0x800007d8]:sw t6, 296(ra)
Current Store : [0x800007dc] : sw t5, 300(ra) -- Store: [0x8000242c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x800007e8]:KSLLW t6, t5, t4
	-[0x800007ec]:csrrs t5, vxsat, zero
	-[0x800007f0]:sw t6, 304(ra)
Current Store : [0x800007f4] : sw t5, 308(ra) -- Store: [0x80002434]:0x00000001




Last Coverpoint : ['rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000800]:KSLLW t6, t5, t4
	-[0x80000804]:csrrs t5, vxsat, zero
	-[0x80000808]:sw t6, 312(ra)
Current Store : [0x8000080c] : sw t5, 316(ra) -- Store: [0x8000243c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000818]:KSLLW t6, t5, t4
	-[0x8000081c]:csrrs t5, vxsat, zero
	-[0x80000820]:sw t6, 320(ra)
Current Store : [0x80000824] : sw t5, 324(ra) -- Store: [0x80002444]:0x00000001




Last Coverpoint : ['rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000830]:KSLLW t6, t5, t4
	-[0x80000834]:csrrs t5, vxsat, zero
	-[0x80000838]:sw t6, 328(ra)
Current Store : [0x8000083c] : sw t5, 332(ra) -- Store: [0x8000244c]:0x00000001




Last Coverpoint : ['rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x8000084c]:KSLLW t6, t5, t4
	-[0x80000850]:csrrs t5, vxsat, zero
	-[0x80000854]:sw t6, 336(ra)
Current Store : [0x80000858] : sw t5, 340(ra) -- Store: [0x80002454]:0x00000001




Last Coverpoint : ['opcode : ksllw', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x80000868]:KSLLW t6, t5, t4
	-[0x8000086c]:csrrs t5, vxsat, zero
	-[0x80000870]:sw t6, 344(ra)
Current Store : [0x80000874] : sw t5, 348(ra) -- Store: [0x8000245c]:0x00000001




Last Coverpoint : ['opcode : ksllw', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x80000884]:KSLLW t6, t5, t4
	-[0x80000888]:csrrs t5, vxsat, zero
	-[0x8000088c]:sw t6, 352(ra)
Current Store : [0x80000890] : sw t5, 356(ra) -- Store: [0x80002464]:0x00000001





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

|s.no|        signature         |                                                              coverpoints                                                               |                                                    code                                                     |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : ksllw<br> - rs1 : x21<br> - rs2 : x21<br> - rd : x21<br> - rs1 == rs2 == rd<br> - rs2_val == 21<br>                          |[0x80000114]:KSLLW s5, s5, s5<br> [0x80000118]:csrrs s5, vxsat, zero<br> [0x8000011c]:sw s5, 0(a1)<br>       |
|   2|[0x80002218]<br>0x00078000|- rs1 : x20<br> - rs2 : x20<br> - rd : x9<br> - rs1 == rs2 != rd<br> - rs2_val == 15<br>                                                |[0x8000012c]:KSLLW s1, s4, s4<br> [0x80000130]:csrrs s4, vxsat, zero<br> [0x80000134]:sw s1, 8(a1)<br>       |
|   3|[0x80002220]<br>0xF7800000|- rs1 : x15<br> - rs2 : x18<br> - rd : x1<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == 23<br> - rs1_w0_val == -17<br> |[0x80000144]:KSLLW ra, a5, s2<br> [0x80000148]:csrrs a5, vxsat, zero<br> [0x8000014c]:sw ra, 16(a1)<br>      |
|   4|[0x80002228]<br>0x38000000|- rs1 : x23<br> - rs2 : x4<br> - rd : x4<br> - rs2 == rd != rs1<br> - rs2_val == 27<br>                                                 |[0x8000015c]:KSLLW tp, s7, tp<br> [0x80000160]:csrrs s7, vxsat, zero<br> [0x80000164]:sw tp, 24(a1)<br>      |
|   5|[0x80002230]<br>0x00000001|- rs1 : x18<br> - rs2 : x25<br> - rd : x18<br> - rs1 == rd != rs2<br> - rs2_val == 29<br> - rs1_w0_val == 4096<br>                      |[0x80000174]:KSLLW s2, s2, s9<br> [0x80000178]:csrrs s2, vxsat, zero<br> [0x8000017c]:sw s2, 32(a1)<br>      |
|   6|[0x80002238]<br>0x7FFFFFFF|- rs1 : x10<br> - rs2 : x31<br> - rd : x13<br> - rs2_val == 30<br> - rs1_w0_val == 2<br>                                                |[0x8000018c]:KSLLW a3, a0, t6<br> [0x80000190]:csrrs a0, vxsat, zero<br> [0x80000194]:sw a3, 40(a1)<br>      |
|   7|[0x80002240]<br>0x00200000|- rs1 : x9<br> - rs2 : x5<br> - rd : x6<br> - rs2_val == 16<br> - rs1_w0_val == 32<br>                                                  |[0x800001a4]:KSLLW t1, s1, t0<br> [0x800001a8]:csrrs s1, vxsat, zero<br> [0x800001ac]:sw t1, 48(a1)<br>      |
|   8|[0x80002248]<br>0x7FFFFFFF|- rs1 : x19<br> - rs2 : x1<br> - rd : x7<br> - rs2_val == 8<br> - rs1_w0_val == 536870912<br>                                           |[0x800001bc]:KSLLW t2, s3, ra<br> [0x800001c0]:csrrs s3, vxsat, zero<br> [0x800001c4]:sw t2, 56(a1)<br>      |
|   9|[0x80002250]<br>0x7FFFFFFF|- rs1 : x1<br> - rs2 : x7<br> - rd : x8<br> - rs2_val == 4<br>                                                                          |[0x800001d8]:KSLLW fp, ra, t2<br> [0x800001dc]:csrrs ra, vxsat, zero<br> [0x800001e0]:sw fp, 64(a1)<br>      |
|  10|[0x80002258]<br>0xFFFFFDFC|- rs1 : x16<br> - rs2 : x29<br> - rd : x3<br> - rs2_val == 2<br> - rs1_w0_val == -129<br>                                               |[0x800001f0]:KSLLW gp, a6, t4<br> [0x800001f4]:csrrs a6, vxsat, zero<br> [0x800001f8]:sw gp, 72(a1)<br>      |
|  11|[0x80002260]<br>0x00000100|- rs1 : x4<br> - rs2 : x28<br> - rd : x26<br> - rs2_val == 1<br> - rs1_w0_val == 128<br>                                                |[0x80000208]:KSLLW s10, tp, t3<br> [0x8000020c]:csrrs tp, vxsat, zero<br> [0x80000210]:sw s10, 80(a1)<br>    |
|  12|[0x80002268]<br>0x80000000|- rs1 : x25<br> - rs2 : x6<br> - rd : x2<br> - rs1_w0_val == -1431655766<br>                                                            |[0x80000224]:KSLLW sp, s9, t1<br> [0x80000228]:csrrs s9, vxsat, zero<br> [0x8000022c]:sw sp, 88(a1)<br>      |
|  13|[0x80002270]<br>0x7FFFFFFF|- rs1 : x8<br> - rs2 : x22<br> - rd : x19<br> - rs1_w0_val == 1431655765<br>                                                            |[0x80000240]:KSLLW s3, fp, s6<br> [0x80000244]:csrrs fp, vxsat, zero<br> [0x80000248]:sw s3, 96(a1)<br>      |
|  14|[0x80002278]<br>0x7FFFFFFF|- rs1 : x17<br> - rs2 : x3<br> - rd : x22<br> - rs1_w0_val == 2147483647<br>                                                            |[0x8000025c]:KSLLW s6, a7, gp<br> [0x80000260]:csrrs a7, vxsat, zero<br> [0x80000264]:sw s6, 104(a1)<br>     |
|  15|[0x80002280]<br>0x00000000|- rs1 : x0<br> - rs2 : x13<br> - rd : x30<br> - rs1_w0_val == 0<br>                                                                     |[0x80000278]:KSLLW t5, zero, a3<br> [0x8000027c]:csrrs zero, vxsat, zero<br> [0x80000280]:sw t5, 112(a1)<br> |
|  16|[0x80002288]<br>0x80000000|- rs1 : x27<br> - rs2 : x15<br> - rd : x16<br> - rs1_w0_val == -536870913<br>                                                           |[0x80000294]:KSLLW a6, s11, a5<br> [0x80000298]:csrrs s11, vxsat, zero<br> [0x8000029c]:sw a6, 120(a1)<br>   |
|  17|[0x80002290]<br>0x80000000|- rs1 : x28<br> - rs2 : x16<br> - rd : x10<br> - rs1_w0_val == -268435457<br>                                                           |[0x800002b8]:KSLLW a0, t3, a6<br> [0x800002bc]:csrrs t3, vxsat, zero<br> [0x800002c0]:sw a0, 0(ra)<br>       |
|  18|[0x80002298]<br>0x80000000|- rs1 : x2<br> - rs2 : x24<br> - rd : x25<br> - rs1_w0_val == -134217729<br>                                                            |[0x800002d4]:KSLLW s9, sp, s8<br> [0x800002d8]:csrrs sp, vxsat, zero<br> [0x800002dc]:sw s9, 8(ra)<br>       |
|  19|[0x800022a0]<br>0x80000000|- rs1 : x24<br> - rs2 : x2<br> - rd : x12<br> - rs1_w0_val == -67108865<br>                                                             |[0x800002f0]:KSLLW a2, s8, sp<br> [0x800002f4]:csrrs s8, vxsat, zero<br> [0x800002f8]:sw a2, 16(ra)<br>      |
|  20|[0x800022a8]<br>0x80000000|- rs1 : x30<br> - rs2 : x11<br> - rd : x20<br> - rs1_w0_val == -33554433<br>                                                            |[0x8000030c]:KSLLW s4, t5, a1<br> [0x80000310]:csrrs t5, vxsat, zero<br> [0x80000314]:sw s4, 24(ra)<br>      |
|  21|[0x800022b0]<br>0x80000000|- rs1 : x13<br> - rs2 : x26<br> - rd : x29<br> - rs1_w0_val == -16777217<br>                                                            |[0x80000328]:KSLLW t4, a3, s10<br> [0x8000032c]:csrrs a3, vxsat, zero<br> [0x80000330]:sw t4, 32(ra)<br>     |
|  22|[0x800022b8]<br>0xFF7FFFFF|- rs1 : x5<br> - rs2 : x9<br> - rd : x14<br> - rs1_w0_val == -8388609<br>                                                               |[0x80000344]:KSLLW a4, t0, s1<br> [0x80000348]:csrrs t0, vxsat, zero<br> [0x8000034c]:sw a4, 40(ra)<br>      |
|  23|[0x800022c0]<br>0x80000000|- rs1 : x12<br> - rs2 : x30<br> - rd : x23<br> - rs1_w0_val == -4194305<br>                                                             |[0x80000360]:KSLLW s7, a2, t5<br> [0x80000364]:csrrs a2, vxsat, zero<br> [0x80000368]:sw s7, 48(ra)<br>      |
|  24|[0x800022c8]<br>0x80000000|- rs1 : x6<br> - rs2 : x14<br> - rd : x5<br> - rs1_w0_val == -2097153<br>                                                               |[0x8000037c]:KSLLW t0, t1, a4<br> [0x80000380]:csrrs t1, vxsat, zero<br> [0x80000384]:sw t0, 56(ra)<br>      |
|  25|[0x800022d0]<br>0x00000000|- rs1 : x29<br> - rs2 : x27<br> - rd : x0<br> - rs1_w0_val == -1048577<br>                                                              |[0x80000398]:KSLLW zero, t4, s11<br> [0x8000039c]:csrrs t4, vxsat, zero<br> [0x800003a0]:sw zero, 64(ra)<br> |
|  26|[0x800022d8]<br>0x80000000|- rs1 : x11<br> - rs2 : x19<br> - rd : x28<br> - rs1_w0_val == -524289<br>                                                              |[0x800003b4]:KSLLW t3, a1, s3<br> [0x800003b8]:csrrs a1, vxsat, zero<br> [0x800003bc]:sw t3, 72(ra)<br>      |
|  27|[0x800022e0]<br>0xEFFFFC00|- rs1 : x3<br> - rs2 : x17<br> - rd : x11<br> - rs1_w0_val == -262145<br> - rs2_val == 10<br>                                           |[0x800003d0]:KSLLW a1, gp, a7<br> [0x800003d4]:csrrs gp, vxsat, zero<br> [0x800003d8]:sw a1, 80(ra)<br>      |
|  28|[0x800022e8]<br>0xFFEFFFF8|- rs1 : x22<br> - rs2 : x10<br> - rd : x15<br> - rs1_w0_val == -131073<br>                                                              |[0x800003ec]:KSLLW a5, s6, a0<br> [0x800003f0]:csrrs s6, vxsat, zero<br> [0x800003f4]:sw a5, 88(ra)<br>      |
|  29|[0x800022f0]<br>0x80000000|- rs1 : x14<br> - rs2 : x8<br> - rd : x24<br> - rs1_w0_val == -65537<br>                                                                |[0x80000408]:KSLLW s8, a4, fp<br> [0x8000040c]:csrrs a4, vxsat, zero<br> [0x80000410]:sw s8, 96(ra)<br>      |
|  30|[0x800022f8]<br>0xFFFF7FFF|- rs1 : x7<br> - rs2 : x0<br> - rd : x31<br> - rs1_w0_val == -32769<br>                                                                 |[0x80000424]:KSLLW t6, t2, zero<br> [0x80000428]:csrrs t2, vxsat, zero<br> [0x8000042c]:sw t6, 104(ra)<br>   |
|  31|[0x80002300]<br>0xFBFFF000|- rs1 : x31<br> - rs2 : x23<br> - rd : x17<br> - rs1_w0_val == -16385<br>                                                               |[0x80000448]:KSLLW a7, t6, s7<br> [0x8000044c]:csrrs t6, vxsat, zero<br> [0x80000450]:sw a7, 0(ra)<br>       |
|  32|[0x80002308]<br>0xFBFFE000|- rs1 : x26<br> - rs2 : x12<br> - rd : x27<br> - rs1_w0_val == -8193<br>                                                                |[0x80000464]:KSLLW s11, s10, a2<br> [0x80000468]:csrrs s10, vxsat, zero<br> [0x8000046c]:sw s11, 8(ra)<br>   |
|  33|[0x80002310]<br>0xFFFFBFFC|- rs1_w0_val == -4097<br>                                                                                                               |[0x80000480]:KSLLW t6, t5, t4<br> [0x80000484]:csrrs t5, vxsat, zero<br> [0x80000488]:sw t6, 16(ra)<br>      |
|  34|[0x80002318]<br>0x80000000|- rs1_w0_val == -2049<br>                                                                                                               |[0x8000049c]:KSLLW t6, t5, t4<br> [0x800004a0]:csrrs t5, vxsat, zero<br> [0x800004a4]:sw t6, 24(ra)<br>      |
|  35|[0x80002320]<br>0xFFBFF000|- rs1_w0_val == -1025<br>                                                                                                               |[0x800004b4]:KSLLW t6, t5, t4<br> [0x800004b8]:csrrs t5, vxsat, zero<br> [0x800004bc]:sw t6, 32(ra)<br>      |
|  36|[0x80002328]<br>0xFFFDFF00|- rs1_w0_val == -513<br>                                                                                                                |[0x800004cc]:KSLLW t6, t5, t4<br> [0x800004d0]:csrrs t5, vxsat, zero<br> [0x800004d4]:sw t6, 40(ra)<br>      |
|  37|[0x80002330]<br>0xFFFEFF00|- rs1_w0_val == -257<br>                                                                                                                |[0x800004e4]:KSLLW t6, t5, t4<br> [0x800004e8]:csrrs t5, vxsat, zero<br> [0x800004ec]:sw t6, 48(ra)<br>      |
|  38|[0x80002338]<br>0xFFF7E000|- rs1_w0_val == -65<br>                                                                                                                 |[0x800004fc]:KSLLW t6, t5, t4<br> [0x80000500]:csrrs t5, vxsat, zero<br> [0x80000504]:sw t6, 56(ra)<br>      |
|  39|[0x80002340]<br>0x80000000|- rs1_w0_val == -33<br>                                                                                                                 |[0x80000514]:KSLLW t6, t5, t4<br> [0x80000518]:csrrs t5, vxsat, zero<br> [0x8000051c]:sw t6, 64(ra)<br>      |
|  40|[0x80002348]<br>0xFFFFFFDC|- rs1_w0_val == -9<br>                                                                                                                  |[0x8000052c]:KSLLW t6, t5, t4<br> [0x80000530]:csrrs t5, vxsat, zero<br> [0x80000534]:sw t6, 72(ra)<br>      |
|  41|[0x80002350]<br>0x01000000|- rs1_w0_val == 2048<br>                                                                                                                |[0x80000548]:KSLLW t6, t5, t4<br> [0x8000054c]:csrrs t5, vxsat, zero<br> [0x80000550]:sw t6, 80(ra)<br>      |
|  42|[0x80002358]<br>0x00200000|- rs1_w0_val == 1024<br>                                                                                                                |[0x80000560]:KSLLW t6, t5, t4<br> [0x80000564]:csrrs t5, vxsat, zero<br> [0x80000568]:sw t6, 88(ra)<br>      |
|  43|[0x80002360]<br>0x00040000|- rs1_w0_val == 512<br>                                                                                                                 |[0x80000578]:KSLLW t6, t5, t4<br> [0x8000057c]:csrrs t5, vxsat, zero<br> [0x80000580]:sw t6, 96(ra)<br>      |
|  44|[0x80002368]<br>0x00800000|- rs1_w0_val == 256<br>                                                                                                                 |[0x80000590]:KSLLW t6, t5, t4<br> [0x80000594]:csrrs t5, vxsat, zero<br> [0x80000598]:sw t6, 104(ra)<br>     |
|  45|[0x80002370]<br>0x7FFFFFFF|- rs1_w0_val == 64<br>                                                                                                                  |[0x800005a8]:KSLLW t6, t5, t4<br> [0x800005ac]:csrrs t5, vxsat, zero<br> [0x800005b0]:sw t6, 112(ra)<br>     |
|  46|[0x80002378]<br>0x00008000|- rs1_w0_val == 16<br>                                                                                                                  |[0x800005c0]:KSLLW t6, t5, t4<br> [0x800005c4]:csrrs t5, vxsat, zero<br> [0x800005c8]:sw t6, 120(ra)<br>     |
|  47|[0x80002380]<br>0x04000000|- rs1_w0_val == 8<br>                                                                                                                   |[0x800005d8]:KSLLW t6, t5, t4<br> [0x800005dc]:csrrs t5, vxsat, zero<br> [0x800005e0]:sw t6, 128(ra)<br>     |
|  48|[0x80002388]<br>0x00000100|- rs1_w0_val == 4<br>                                                                                                                   |[0x800005f0]:KSLLW t6, t5, t4<br> [0x800005f4]:csrrs t5, vxsat, zero<br> [0x800005f8]:sw t6, 136(ra)<br>     |
|  49|[0x80002390]<br>0x00000001|- rs1_w0_val == 1<br>                                                                                                                   |[0x80000608]:KSLLW t6, t5, t4<br> [0x8000060c]:csrrs t5, vxsat, zero<br> [0x80000610]:sw t6, 144(ra)<br>     |
|  50|[0x800023a0]<br>0xFFFE0000|- rs1_w0_val == -1<br>                                                                                                                  |[0x80000638]:KSLLW t6, t5, t4<br> [0x8000063c]:csrrs t5, vxsat, zero<br> [0x80000640]:sw t6, 160(ra)<br>     |
|  51|[0x800023a8]<br>0xFFFFFEC0|- rs1_w0_val == -5<br>                                                                                                                  |[0x80000650]:KSLLW t6, t5, t4<br> [0x80000654]:csrrs t5, vxsat, zero<br> [0x80000658]:sw t6, 168(ra)<br>     |
|  52|[0x800023b0]<br>0xFFFFFFE8|- rs1_w0_val == -3<br>                                                                                                                  |[0x80000668]:KSLLW t6, t5, t4<br> [0x8000066c]:csrrs t5, vxsat, zero<br> [0x80000670]:sw t6, 176(ra)<br>     |
|  53|[0x800023b8]<br>0xFFF80000|- rs1_w0_val == -2<br>                                                                                                                  |[0x80000680]:KSLLW t6, t5, t4<br> [0x80000684]:csrrs t5, vxsat, zero<br> [0x80000688]:sw t6, 184(ra)<br>     |
|  54|[0x800023c0]<br>0x80000000|- rs1_w0_val == -2147483648<br>                                                                                                         |[0x80000698]:KSLLW t6, t5, t4<br> [0x8000069c]:csrrs t5, vxsat, zero<br> [0x800006a0]:sw t6, 192(ra)<br>     |
|  55|[0x800023c8]<br>0x7FFFFFFF|- rs1_w0_val == 1073741824<br>                                                                                                          |[0x800006b0]:KSLLW t6, t5, t4<br> [0x800006b4]:csrrs t5, vxsat, zero<br> [0x800006b8]:sw t6, 200(ra)<br>     |
|  56|[0x800023d0]<br>0x7FFFFFFF|- rs1_w0_val == 268435456<br>                                                                                                           |[0x800006c8]:KSLLW t6, t5, t4<br> [0x800006cc]:csrrs t5, vxsat, zero<br> [0x800006d0]:sw t6, 208(ra)<br>     |
|  57|[0x800023d8]<br>0x20000000|- rs1_w0_val == 67108864<br>                                                                                                            |[0x800006e0]:KSLLW t6, t5, t4<br> [0x800006e4]:csrrs t5, vxsat, zero<br> [0x800006e8]:sw t6, 216(ra)<br>     |
|  58|[0x800023e0]<br>0x7FFFFFFF|- rs1_w0_val == 33554432<br>                                                                                                            |[0x800006f8]:KSLLW t6, t5, t4<br> [0x800006fc]:csrrs t5, vxsat, zero<br> [0x80000700]:sw t6, 224(ra)<br>     |
|  59|[0x800023e8]<br>0x7FFFFFFF|- rs1_w0_val == 16777216<br>                                                                                                            |[0x80000710]:KSLLW t6, t5, t4<br> [0x80000714]:csrrs t5, vxsat, zero<br> [0x80000718]:sw t6, 232(ra)<br>     |
|  60|[0x800023f0]<br>0x7FFFFFFF|- rs1_w0_val == 8388608<br>                                                                                                             |[0x80000728]:KSLLW t6, t5, t4<br> [0x8000072c]:csrrs t5, vxsat, zero<br> [0x80000730]:sw t6, 240(ra)<br>     |
|  61|[0x800023f8]<br>0x40000000|- rs1_w0_val == 4194304<br>                                                                                                             |[0x80000740]:KSLLW t6, t5, t4<br> [0x80000744]:csrrs t5, vxsat, zero<br> [0x80000748]:sw t6, 248(ra)<br>     |
|  62|[0x80002400]<br>0x7FFFFFFF|- rs1_w0_val == 2097152<br>                                                                                                             |[0x80000758]:KSLLW t6, t5, t4<br> [0x8000075c]:csrrs t5, vxsat, zero<br> [0x80000760]:sw t6, 256(ra)<br>     |
|  63|[0x80002408]<br>0x7FFFFFFF|- rs1_w0_val == 1048576<br>                                                                                                             |[0x80000770]:KSLLW t6, t5, t4<br> [0x80000774]:csrrs t5, vxsat, zero<br> [0x80000778]:sw t6, 264(ra)<br>     |
|  64|[0x80002410]<br>0x04000000|- rs1_w0_val == 524288<br>                                                                                                              |[0x80000788]:KSLLW t6, t5, t4<br> [0x8000078c]:csrrs t5, vxsat, zero<br> [0x80000790]:sw t6, 272(ra)<br>     |
|  65|[0x80002418]<br>0x02000000|- rs1_w0_val == 262144<br>                                                                                                              |[0x800007a0]:KSLLW t6, t5, t4<br> [0x800007a4]:csrrs t5, vxsat, zero<br> [0x800007a8]:sw t6, 280(ra)<br>     |
|  66|[0x80002420]<br>0x7FFFFFFF|- rs1_w0_val == 131072<br>                                                                                                              |[0x800007b8]:KSLLW t6, t5, t4<br> [0x800007bc]:csrrs t5, vxsat, zero<br> [0x800007c0]:sw t6, 288(ra)<br>     |
|  67|[0x80002428]<br>0x04000000|- rs1_w0_val == 65536<br>                                                                                                               |[0x800007d0]:KSLLW t6, t5, t4<br> [0x800007d4]:csrrs t5, vxsat, zero<br> [0x800007d8]:sw t6, 296(ra)<br>     |
|  68|[0x80002430]<br>0x00400000|- rs1_w0_val == 32768<br>                                                                                                               |[0x800007e8]:KSLLW t6, t5, t4<br> [0x800007ec]:csrrs t5, vxsat, zero<br> [0x800007f0]:sw t6, 304(ra)<br>     |
|  69|[0x80002438]<br>0x00080000|- rs1_w0_val == 16384<br>                                                                                                               |[0x80000800]:KSLLW t6, t5, t4<br> [0x80000804]:csrrs t5, vxsat, zero<br> [0x80000808]:sw t6, 312(ra)<br>     |
|  70|[0x80002440]<br>0x00080000|- rs1_w0_val == 8192<br>                                                                                                                |[0x80000818]:KSLLW t6, t5, t4<br> [0x8000081c]:csrrs t5, vxsat, zero<br> [0x80000820]:sw t6, 320(ra)<br>     |
|  71|[0x80002448]<br>0x7FFFFFFF|- rs1_w0_val == 134217728<br>                                                                                                           |[0x80000830]:KSLLW t6, t5, t4<br> [0x80000834]:csrrs t5, vxsat, zero<br> [0x80000838]:sw t6, 328(ra)<br>     |
|  72|[0x80002450]<br>0x80000000|- rs1_w0_val == -1073741825<br>                                                                                                         |[0x8000084c]:KSLLW t6, t5, t4<br> [0x80000850]:csrrs t5, vxsat, zero<br> [0x80000854]:sw t6, 336(ra)<br>     |
