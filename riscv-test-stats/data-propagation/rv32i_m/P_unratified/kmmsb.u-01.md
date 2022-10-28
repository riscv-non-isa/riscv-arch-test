
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000d10')]      |
| SIG_REGION                | [('0x80002210', '0x80002590', '224 words')]      |
| COV_LABELS                | kmmsb.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kmmsb.u-01.S    |
| Total Number of coverpoints| 244     |
| Total Coverpoints Hit     | 238      |
| Total Signature Updates   | 224      |
| STAT1                     | 109      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 112     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000087c]:KMMSB_U t6, t5, t4
      [0x80000880]:csrrs t5, vxsat, zero
      [0x80000884]:sw t6, 288(ra)
 -- Signature Address: 0x80002438 Data: 0xF81D9BC0
 -- Redundant Coverpoints hit by the op
      - opcode : kmmsb.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == 0
      - rs1_w0_val == -1




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009a8]:KMMSB_U t6, t5, t4
      [0x800009ac]:csrrs t5, vxsat, zero
      [0x800009b0]:sw t6, 368(ra)
 -- Signature Address: 0x80002488 Data: 0xF826E88D
 -- Redundant Coverpoints hit by the op
      - opcode : kmmsb.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == -1073741825
      - rs1_w0_val == -65537




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000cf4]:KMMSB_U t6, t5, t4
      [0x80000cf8]:csrrs t5, vxsat, zero
      [0x80000cfc]:sw t6, 624(ra)
 -- Signature Address: 0x80002588 Data: 0xF82690DD
 -- Redundant Coverpoints hit by the op
      - opcode : kmmsb.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == -257
      - rs1_w0_val == -67108865






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmmsb.u', 'rs1 : x16', 'rs2 : x16', 'rd : x16', 'rs1 == rs2 == rd', 'rs2_w0_val == -65537', 'rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x80000118]:KMMSB_U a6, a6, a6
	-[0x8000011c]:csrrs a6, vxsat, zero
	-[0x80000120]:sw a6, 0(t1)
Current Store : [0x80000124] : sw a6, 4(t1) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x12', 'rs2 : x12', 'rd : x31', 'rs1 == rs2 != rd', 'rs2_w0_val == -1431655766', 'rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x80000138]:KMMSB_U t6, a2, a2
	-[0x8000013c]:csrrs a2, vxsat, zero
	-[0x80000140]:sw t6, 8(t1)
Current Store : [0x80000144] : sw a2, 12(t1) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x22', 'rs2 : x18', 'rd : x5', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w0_val == 1431655765', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80000158]:KMMSB_U t0, s6, s2
	-[0x8000015c]:csrrs s6, vxsat, zero
	-[0x80000160]:sw t0, 16(t1)
Current Store : [0x80000164] : sw s6, 20(t1) -- Store: [0x80002224]:0x00000001




Last Coverpoint : ['rs1 : x19', 'rs2 : x22', 'rd : x22', 'rs2 == rd != rs1', 'rs2_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80000178]:KMMSB_U s6, s3, s6
	-[0x8000017c]:csrrs s3, vxsat, zero
	-[0x80000180]:sw s6, 24(t1)
Current Store : [0x80000184] : sw s3, 28(t1) -- Store: [0x8000222c]:0x00000001




Last Coverpoint : ['rs1 : x30', 'rs2 : x17', 'rd : x30', 'rs1 == rd != rs2', 'rs2_w0_val == -1073741825']
Last Code Sequence : 
	-[0x80000194]:KMMSB_U t5, t5, a7
	-[0x80000198]:csrrs t5, vxsat, zero
	-[0x8000019c]:sw t5, 32(t1)
Current Store : [0x800001a0] : sw t5, 36(t1) -- Store: [0x80002234]:0x00000001




Last Coverpoint : ['rs1 : x0', 'rs2 : x31', 'rd : x7', 'rs2_w0_val == -536870913', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x800001b0]:KMMSB_U t2, zero, t6
	-[0x800001b4]:csrrs zero, vxsat, zero
	-[0x800001b8]:sw t2, 40(t1)
Current Store : [0x800001bc] : sw zero, 44(t1) -- Store: [0x8000223c]:0x00000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x11', 'rd : x25', 'rs2_w0_val == -268435457']
Last Code Sequence : 
	-[0x800001cc]:KMMSB_U s9, s2, a1
	-[0x800001d0]:csrrs s2, vxsat, zero
	-[0x800001d4]:sw s9, 48(t1)
Current Store : [0x800001d8] : sw s2, 52(t1) -- Store: [0x80002244]:0x00000001




Last Coverpoint : ['rs1 : x24', 'rs2 : x26', 'rd : x21', 'rs2_w0_val == -134217729', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x800001e8]:KMMSB_U s5, s8, s10
	-[0x800001ec]:csrrs s8, vxsat, zero
	-[0x800001f0]:sw s5, 56(t1)
Current Store : [0x800001f4] : sw s8, 60(t1) -- Store: [0x8000224c]:0x00000001




Last Coverpoint : ['rs1 : x13', 'rs2 : x10', 'rd : x12', 'rs2_w0_val == -67108865', 'rs1_w0_val == -513']
Last Code Sequence : 
	-[0x80000204]:KMMSB_U a2, a3, a0
	-[0x80000208]:csrrs a3, vxsat, zero
	-[0x8000020c]:sw a2, 64(t1)
Current Store : [0x80000210] : sw a3, 68(t1) -- Store: [0x80002254]:0x00000001




Last Coverpoint : ['rs1 : x28', 'rs2 : x1', 'rd : x8', 'rs2_w0_val == -33554433']
Last Code Sequence : 
	-[0x80000224]:KMMSB_U fp, t3, ra
	-[0x80000228]:csrrs t3, vxsat, zero
	-[0x8000022c]:sw fp, 72(t1)
Current Store : [0x80000230] : sw t3, 76(t1) -- Store: [0x8000225c]:0x00000001




Last Coverpoint : ['rs1 : x8', 'rs2 : x21', 'rd : x17', 'rs2_w0_val == -16777217']
Last Code Sequence : 
	-[0x80000240]:KMMSB_U a7, fp, s5
	-[0x80000244]:csrrs fp, vxsat, zero
	-[0x80000248]:sw a7, 80(t1)
Current Store : [0x8000024c] : sw fp, 84(t1) -- Store: [0x80002264]:0x00000001




Last Coverpoint : ['rs1 : x14', 'rs2 : x7', 'rd : x20', 'rs2_w0_val == -8388609', 'rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x80000260]:KMMSB_U s4, a4, t2
	-[0x80000264]:csrrs a4, vxsat, zero
	-[0x80000268]:sw s4, 88(t1)
Current Store : [0x8000026c] : sw a4, 92(t1) -- Store: [0x8000226c]:0x00000001




Last Coverpoint : ['rs1 : x29', 'rs2 : x24', 'rd : x26', 'rs2_w0_val == -4194305', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x8000027c]:KMMSB_U s10, t4, s8
	-[0x80000280]:csrrs t4, vxsat, zero
	-[0x80000284]:sw s10, 96(t1)
Current Store : [0x80000288] : sw t4, 100(t1) -- Store: [0x80002274]:0x00000001




Last Coverpoint : ['rs1 : x9', 'rs2 : x13', 'rd : x10', 'rs2_w0_val == -2097153', 'rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x8000029c]:KMMSB_U a0, s1, a3
	-[0x800002a0]:csrrs s1, vxsat, zero
	-[0x800002a4]:sw a0, 104(t1)
Current Store : [0x800002a8] : sw s1, 108(t1) -- Store: [0x8000227c]:0x00000001




Last Coverpoint : ['rs1 : x31', 'rs2 : x3', 'rd : x29', 'rs2_w0_val == -1048577']
Last Code Sequence : 
	-[0x800002bc]:KMMSB_U t4, t6, gp
	-[0x800002c0]:csrrs t6, vxsat, zero
	-[0x800002c4]:sw t4, 112(t1)
Current Store : [0x800002c8] : sw t6, 116(t1) -- Store: [0x80002284]:0x00000001




Last Coverpoint : ['rs1 : x4', 'rs2 : x5', 'rd : x18', 'rs2_w0_val == -524289', 'rs1_w0_val == -17']
Last Code Sequence : 
	-[0x800002d8]:KMMSB_U s2, tp, t0
	-[0x800002dc]:csrrs tp, vxsat, zero
	-[0x800002e0]:sw s2, 120(t1)
Current Store : [0x800002e4] : sw tp, 124(t1) -- Store: [0x8000228c]:0x00000001




Last Coverpoint : ['rs1 : x15', 'rs2 : x2', 'rd : x9', 'rs2_w0_val == -262145', 'rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x800002f8]:KMMSB_U s1, a5, sp
	-[0x800002fc]:csrrs a5, vxsat, zero
	-[0x80000300]:sw s1, 128(t1)
Current Store : [0x80000304] : sw a5, 132(t1) -- Store: [0x80002294]:0x00000001




Last Coverpoint : ['rs1 : x2', 'rs2 : x19', 'rd : x14', 'rs2_w0_val == -131073']
Last Code Sequence : 
	-[0x80000320]:KMMSB_U a4, sp, s3
	-[0x80000324]:csrrs sp, vxsat, zero
	-[0x80000328]:sw a4, 0(a2)
Current Store : [0x8000032c] : sw sp, 4(a2) -- Store: [0x8000229c]:0x00000001




Last Coverpoint : ['rs1 : x25', 'rs2 : x14', 'rd : x4', 'rs2_w0_val == -32769']
Last Code Sequence : 
	-[0x8000033c]:KMMSB_U tp, s9, a4
	-[0x80000340]:csrrs s9, vxsat, zero
	-[0x80000344]:sw tp, 8(a2)
Current Store : [0x80000348] : sw s9, 12(a2) -- Store: [0x800022a4]:0x00000001




Last Coverpoint : ['rs1 : x11', 'rs2 : x0', 'rd : x23', 'rs2_w0_val == 0', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x8000035c]:KMMSB_U s7, a1, zero
	-[0x80000360]:csrrs a1, vxsat, zero
	-[0x80000364]:sw s7, 16(a2)
Current Store : [0x80000368] : sw a1, 20(a2) -- Store: [0x800022ac]:0x00000001




Last Coverpoint : ['rs1 : x7', 'rs2 : x15', 'rd : x28', 'rs2_w0_val == -8193', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000378]:KMMSB_U t3, t2, a5
	-[0x8000037c]:csrrs t2, vxsat, zero
	-[0x80000380]:sw t3, 24(a2)
Current Store : [0x80000384] : sw t2, 28(a2) -- Store: [0x800022b4]:0x00000001




Last Coverpoint : ['rs1 : x21', 'rs2 : x8', 'rd : x13', 'rs2_w0_val == -4097', 'rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x80000398]:KMMSB_U a3, s5, fp
	-[0x8000039c]:csrrs s5, vxsat, zero
	-[0x800003a0]:sw a3, 32(a2)
Current Store : [0x800003a4] : sw s5, 36(a2) -- Store: [0x800022bc]:0x00000001




Last Coverpoint : ['rs1 : x1', 'rs2 : x20', 'rd : x24', 'rs2_w0_val == -2049']
Last Code Sequence : 
	-[0x800003b8]:KMMSB_U s8, ra, s4
	-[0x800003bc]:csrrs ra, vxsat, zero
	-[0x800003c0]:sw s8, 40(a2)
Current Store : [0x800003c4] : sw ra, 44(a2) -- Store: [0x800022c4]:0x00000001




Last Coverpoint : ['rs1 : x5', 'rs2 : x29', 'rd : x2', 'rs2_w0_val == -1025', 'rs1_w0_val == -1']
Last Code Sequence : 
	-[0x800003d0]:KMMSB_U sp, t0, t4
	-[0x800003d4]:csrrs t0, vxsat, zero
	-[0x800003d8]:sw sp, 48(a2)
Current Store : [0x800003dc] : sw t0, 52(a2) -- Store: [0x800022cc]:0x00000001




Last Coverpoint : ['rs1 : x3', 'rs2 : x27', 'rd : x15', 'rs2_w0_val == -513']
Last Code Sequence : 
	-[0x800003ec]:KMMSB_U a5, gp, s11
	-[0x800003f0]:csrrs gp, vxsat, zero
	-[0x800003f4]:sw a5, 56(a2)
Current Store : [0x800003f8] : sw gp, 60(a2) -- Store: [0x800022d4]:0x00000001




Last Coverpoint : ['rs1 : x23', 'rs2 : x4', 'rd : x0', 'rs2_w0_val == -257', 'rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x80000408]:KMMSB_U zero, s7, tp
	-[0x8000040c]:csrrs s7, vxsat, zero
	-[0x80000410]:sw zero, 64(a2)
Current Store : [0x80000414] : sw s7, 68(a2) -- Store: [0x800022dc]:0x00000001




Last Coverpoint : ['rs1 : x27', 'rs2 : x30', 'rd : x6', 'rs2_w0_val == -129']
Last Code Sequence : 
	-[0x80000424]:KMMSB_U t1, s11, t5
	-[0x80000428]:csrrs s11, vxsat, zero
	-[0x8000042c]:sw t1, 72(a2)
Current Store : [0x80000430] : sw s11, 76(a2) -- Store: [0x800022e4]:0x00000001




Last Coverpoint : ['rs1 : x26', 'rs2 : x9', 'rd : x11', 'rs2_w0_val == -65']
Last Code Sequence : 
	-[0x80000440]:KMMSB_U a1, s10, s1
	-[0x80000444]:csrrs s10, vxsat, zero
	-[0x80000448]:sw a1, 80(a2)
Current Store : [0x8000044c] : sw s10, 84(a2) -- Store: [0x800022ec]:0x00000001




Last Coverpoint : ['rs1 : x17', 'rs2 : x23', 'rd : x3', 'rs2_w0_val == -33']
Last Code Sequence : 
	-[0x8000045c]:KMMSB_U gp, a7, s7
	-[0x80000460]:csrrs a7, vxsat, zero
	-[0x80000464]:sw gp, 88(a2)
Current Store : [0x80000468] : sw a7, 92(a2) -- Store: [0x800022f4]:0x00000001




Last Coverpoint : ['rs1 : x10', 'rs2 : x6', 'rd : x1', 'rs2_w0_val == -17']
Last Code Sequence : 
	-[0x80000474]:KMMSB_U ra, a0, t1
	-[0x80000478]:csrrs a0, vxsat, zero
	-[0x8000047c]:sw ra, 96(a2)
Current Store : [0x80000480] : sw a0, 100(a2) -- Store: [0x800022fc]:0x00000001




Last Coverpoint : ['rs1 : x6', 'rs2 : x28', 'rd : x27', 'rs2_w0_val == -9']
Last Code Sequence : 
	-[0x80000490]:KMMSB_U s11, t1, t3
	-[0x80000494]:csrrs t1, vxsat, zero
	-[0x80000498]:sw s11, 104(a2)
Current Store : [0x8000049c] : sw t1, 108(a2) -- Store: [0x80002304]:0x00000001




Last Coverpoint : ['rs1 : x20', 'rs2 : x25', 'rd : x19', 'rs2_w0_val == -5']
Last Code Sequence : 
	-[0x800004a8]:KMMSB_U s3, s4, s9
	-[0x800004ac]:csrrs s4, vxsat, zero
	-[0x800004b0]:sw s3, 112(a2)
Current Store : [0x800004b4] : sw s4, 116(a2) -- Store: [0x8000230c]:0x00000001




Last Coverpoint : ['rs2_w0_val == -3', 'rs1_w0_val == -2']
Last Code Sequence : 
	-[0x800004c0]:KMMSB_U t6, t5, t4
	-[0x800004c4]:csrrs t5, vxsat, zero
	-[0x800004c8]:sw t6, 120(a2)
Current Store : [0x800004cc] : sw t5, 124(a2) -- Store: [0x80002314]:0x00000001




Last Coverpoint : ['rs2_w0_val == -2']
Last Code Sequence : 
	-[0x800004e0]:KMMSB_U t6, t5, t4
	-[0x800004e4]:csrrs t5, vxsat, zero
	-[0x800004e8]:sw t6, 0(ra)
Current Store : [0x800004ec] : sw t5, 4(ra) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs2_w0_val == -2147483648']
Last Code Sequence : 
	-[0x800004f8]:KMMSB_U t6, t5, t4
	-[0x800004fc]:csrrs t5, vxsat, zero
	-[0x80000500]:sw t6, 8(ra)
Current Store : [0x80000504] : sw t5, 12(ra) -- Store: [0x80002324]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80000510]:KMMSB_U t6, t5, t4
	-[0x80000514]:csrrs t5, vxsat, zero
	-[0x80000518]:sw t6, 16(ra)
Current Store : [0x8000051c] : sw t5, 20(ra) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000528]:KMMSB_U t6, t5, t4
	-[0x8000052c]:csrrs t5, vxsat, zero
	-[0x80000530]:sw t6, 24(ra)
Current Store : [0x80000534] : sw t5, 28(ra) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs2_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000544]:KMMSB_U t6, t5, t4
	-[0x80000548]:csrrs t5, vxsat, zero
	-[0x8000054c]:sw t6, 32(ra)
Current Store : [0x80000550] : sw t5, 36(ra) -- Store: [0x8000233c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000560]:KMMSB_U t6, t5, t4
	-[0x80000564]:csrrs t5, vxsat, zero
	-[0x80000568]:sw t6, 40(ra)
Current Store : [0x8000056c] : sw t5, 44(ra) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['rs2_w0_val == 67108864']
Last Code Sequence : 
	-[0x8000057c]:KMMSB_U t6, t5, t4
	-[0x80000580]:csrrs t5, vxsat, zero
	-[0x80000584]:sw t6, 48(ra)
Current Store : [0x80000588] : sw t5, 52(ra) -- Store: [0x8000234c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000598]:KMMSB_U t6, t5, t4
	-[0x8000059c]:csrrs t5, vxsat, zero
	-[0x800005a0]:sw t6, 56(ra)
Current Store : [0x800005a4] : sw t5, 60(ra) -- Store: [0x80002354]:0x00000001




Last Coverpoint : ['rs2_w0_val == 16777216', 'rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x800005b4]:KMMSB_U t6, t5, t4
	-[0x800005b8]:csrrs t5, vxsat, zero
	-[0x800005bc]:sw t6, 64(ra)
Current Store : [0x800005c0] : sw t5, 68(ra) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 8388608']
Last Code Sequence : 
	-[0x800005d0]:KMMSB_U t6, t5, t4
	-[0x800005d4]:csrrs t5, vxsat, zero
	-[0x800005d8]:sw t6, 72(ra)
Current Store : [0x800005dc] : sw t5, 76(ra) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4194304', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x800005e8]:KMMSB_U t6, t5, t4
	-[0x800005ec]:csrrs t5, vxsat, zero
	-[0x800005f0]:sw t6, 80(ra)
Current Store : [0x800005f4] : sw t5, 84(ra) -- Store: [0x8000236c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000604]:KMMSB_U t6, t5, t4
	-[0x80000608]:csrrs t5, vxsat, zero
	-[0x8000060c]:sw t6, 88(ra)
Current Store : [0x80000610] : sw t5, 92(ra) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1048576']
Last Code Sequence : 
	-[0x8000061c]:KMMSB_U t6, t5, t4
	-[0x80000620]:csrrs t5, vxsat, zero
	-[0x80000624]:sw t6, 96(ra)
Current Store : [0x80000628] : sw t5, 100(ra) -- Store: [0x8000237c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 524288', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000634]:KMMSB_U t6, t5, t4
	-[0x80000638]:csrrs t5, vxsat, zero
	-[0x8000063c]:sw t6, 104(ra)
Current Store : [0x80000640] : sw t5, 108(ra) -- Store: [0x80002384]:0x00000001




Last Coverpoint : ['rs2_w0_val == 262144', 'rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x80000650]:KMMSB_U t6, t5, t4
	-[0x80000654]:csrrs t5, vxsat, zero
	-[0x80000658]:sw t6, 112(ra)
Current Store : [0x8000065c] : sw t5, 116(ra) -- Store: [0x8000238c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 131072']
Last Code Sequence : 
	-[0x80000668]:KMMSB_U t6, t5, t4
	-[0x8000066c]:csrrs t5, vxsat, zero
	-[0x80000670]:sw t6, 120(ra)
Current Store : [0x80000674] : sw t5, 124(ra) -- Store: [0x80002394]:0x00000001




Last Coverpoint : ['rs2_w0_val == 65536']
Last Code Sequence : 
	-[0x80000684]:KMMSB_U t6, t5, t4
	-[0x80000688]:csrrs t5, vxsat, zero
	-[0x8000068c]:sw t6, 128(ra)
Current Store : [0x80000690] : sw t5, 132(ra) -- Store: [0x8000239c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 32768', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x8000069c]:KMMSB_U t6, t5, t4
	-[0x800006a0]:csrrs t5, vxsat, zero
	-[0x800006a4]:sw t6, 136(ra)
Current Store : [0x800006a8] : sw t5, 140(ra) -- Store: [0x800023a4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 16384']
Last Code Sequence : 
	-[0x800006b4]:KMMSB_U t6, t5, t4
	-[0x800006b8]:csrrs t5, vxsat, zero
	-[0x800006bc]:sw t6, 144(ra)
Current Store : [0x800006c0] : sw t5, 148(ra) -- Store: [0x800023ac]:0x00000001




Last Coverpoint : ['rs1_w0_val == 16']
Last Code Sequence : 
	-[0x800006cc]:KMMSB_U t6, t5, t4
	-[0x800006d0]:csrrs t5, vxsat, zero
	-[0x800006d4]:sw t6, 152(ra)
Current Store : [0x800006d8] : sw t5, 156(ra) -- Store: [0x800023b4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 512', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x800006e4]:KMMSB_U t6, t5, t4
	-[0x800006e8]:csrrs t5, vxsat, zero
	-[0x800006ec]:sw t6, 160(ra)
Current Store : [0x800006f0] : sw t5, 164(ra) -- Store: [0x800023bc]:0x00000001




Last Coverpoint : ['rs1_w0_val == 2']
Last Code Sequence : 
	-[0x800006fc]:KMMSB_U t6, t5, t4
	-[0x80000700]:csrrs t5, vxsat, zero
	-[0x80000704]:sw t6, 168(ra)
Current Store : [0x80000708] : sw t5, 172(ra) -- Store: [0x800023c4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000714]:KMMSB_U t6, t5, t4
	-[0x80000718]:csrrs t5, vxsat, zero
	-[0x8000071c]:sw t6, 176(ra)
Current Store : [0x80000720] : sw t5, 180(ra) -- Store: [0x800023cc]:0x00000001




Last Coverpoint : ['rs2_w0_val == 8192']
Last Code Sequence : 
	-[0x80000730]:KMMSB_U t6, t5, t4
	-[0x80000734]:csrrs t5, vxsat, zero
	-[0x80000738]:sw t6, 184(ra)
Current Store : [0x8000073c] : sw t5, 188(ra) -- Store: [0x800023d4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4096']
Last Code Sequence : 
	-[0x80000748]:KMMSB_U t6, t5, t4
	-[0x8000074c]:csrrs t5, vxsat, zero
	-[0x80000750]:sw t6, 192(ra)
Current Store : [0x80000754] : sw t5, 196(ra) -- Store: [0x800023dc]:0x00000001




Last Coverpoint : ['rs2_w0_val == 2048']
Last Code Sequence : 
	-[0x80000768]:KMMSB_U t6, t5, t4
	-[0x8000076c]:csrrs t5, vxsat, zero
	-[0x80000770]:sw t6, 200(ra)
Current Store : [0x80000774] : sw t5, 204(ra) -- Store: [0x800023e4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1024']
Last Code Sequence : 
	-[0x80000784]:KMMSB_U t6, t5, t4
	-[0x80000788]:csrrs t5, vxsat, zero
	-[0x8000078c]:sw t6, 208(ra)
Current Store : [0x80000790] : sw t5, 212(ra) -- Store: [0x800023ec]:0x00000001




Last Coverpoint : ['rs2_w0_val == 256', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x8000079c]:KMMSB_U t6, t5, t4
	-[0x800007a0]:csrrs t5, vxsat, zero
	-[0x800007a4]:sw t6, 216(ra)
Current Store : [0x800007a8] : sw t5, 220(ra) -- Store: [0x800023f4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 128']
Last Code Sequence : 
	-[0x800007b4]:KMMSB_U t6, t5, t4
	-[0x800007b8]:csrrs t5, vxsat, zero
	-[0x800007bc]:sw t6, 224(ra)
Current Store : [0x800007c0] : sw t5, 228(ra) -- Store: [0x800023fc]:0x00000001




Last Coverpoint : ['rs2_w0_val == 64']
Last Code Sequence : 
	-[0x800007d0]:KMMSB_U t6, t5, t4
	-[0x800007d4]:csrrs t5, vxsat, zero
	-[0x800007d8]:sw t6, 232(ra)
Current Store : [0x800007dc] : sw t5, 236(ra) -- Store: [0x80002404]:0x00000001




Last Coverpoint : ['rs2_w0_val == 32']
Last Code Sequence : 
	-[0x800007e8]:KMMSB_U t6, t5, t4
	-[0x800007ec]:csrrs t5, vxsat, zero
	-[0x800007f0]:sw t6, 240(ra)
Current Store : [0x800007f4] : sw t5, 244(ra) -- Store: [0x8000240c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 16']
Last Code Sequence : 
	-[0x80000804]:KMMSB_U t6, t5, t4
	-[0x80000808]:csrrs t5, vxsat, zero
	-[0x8000080c]:sw t6, 248(ra)
Current Store : [0x80000810] : sw t5, 252(ra) -- Store: [0x80002414]:0x00000001




Last Coverpoint : ['rs2_w0_val == 8']
Last Code Sequence : 
	-[0x8000081c]:KMMSB_U t6, t5, t4
	-[0x80000820]:csrrs t5, vxsat, zero
	-[0x80000824]:sw t6, 256(ra)
Current Store : [0x80000828] : sw t5, 260(ra) -- Store: [0x8000241c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4', 'rs1_w0_val == -9']
Last Code Sequence : 
	-[0x80000834]:KMMSB_U t6, t5, t4
	-[0x80000838]:csrrs t5, vxsat, zero
	-[0x8000083c]:sw t6, 264(ra)
Current Store : [0x80000840] : sw t5, 268(ra) -- Store: [0x80002424]:0x00000001




Last Coverpoint : ['rs2_w0_val == 2', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x8000084c]:KMMSB_U t6, t5, t4
	-[0x80000850]:csrrs t5, vxsat, zero
	-[0x80000854]:sw t6, 272(ra)
Current Store : [0x80000858] : sw t5, 276(ra) -- Store: [0x8000242c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1']
Last Code Sequence : 
	-[0x80000864]:KMMSB_U t6, t5, t4
	-[0x80000868]:csrrs t5, vxsat, zero
	-[0x8000086c]:sw t6, 280(ra)
Current Store : [0x80000870] : sw t5, 284(ra) -- Store: [0x80002434]:0x00000001




Last Coverpoint : ['opcode : kmmsb.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w0_val == 0', 'rs1_w0_val == -1']
Last Code Sequence : 
	-[0x8000087c]:KMMSB_U t6, t5, t4
	-[0x80000880]:csrrs t5, vxsat, zero
	-[0x80000884]:sw t6, 288(ra)
Current Store : [0x80000888] : sw t5, 292(ra) -- Store: [0x8000243c]:0x00000001




Last Coverpoint : ['rs2_w0_val == -1', 'rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x80000898]:KMMSB_U t6, t5, t4
	-[0x8000089c]:csrrs t5, vxsat, zero
	-[0x800008a0]:sw t6, 296(ra)
Current Store : [0x800008a4] : sw t5, 300(ra) -- Store: [0x80002444]:0x00000001




Last Coverpoint : ['rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x800008b8]:KMMSB_U t6, t5, t4
	-[0x800008bc]:csrrs t5, vxsat, zero
	-[0x800008c0]:sw t6, 304(ra)
Current Store : [0x800008c4] : sw t5, 308(ra) -- Store: [0x8000244c]:0x00000001




Last Coverpoint : ['rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x800008d4]:KMMSB_U t6, t5, t4
	-[0x800008d8]:csrrs t5, vxsat, zero
	-[0x800008dc]:sw t6, 312(ra)
Current Store : [0x800008e0] : sw t5, 316(ra) -- Store: [0x80002454]:0x00000001




Last Coverpoint : ['rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x800008f4]:KMMSB_U t6, t5, t4
	-[0x800008f8]:csrrs t5, vxsat, zero
	-[0x800008fc]:sw t6, 320(ra)
Current Store : [0x80000900] : sw t5, 324(ra) -- Store: [0x8000245c]:0x00000001




Last Coverpoint : ['rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x80000914]:KMMSB_U t6, t5, t4
	-[0x80000918]:csrrs t5, vxsat, zero
	-[0x8000091c]:sw t6, 328(ra)
Current Store : [0x80000920] : sw t5, 332(ra) -- Store: [0x80002464]:0x00000001




Last Coverpoint : ['rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x80000930]:KMMSB_U t6, t5, t4
	-[0x80000934]:csrrs t5, vxsat, zero
	-[0x80000938]:sw t6, 336(ra)
Current Store : [0x8000093c] : sw t5, 340(ra) -- Store: [0x8000246c]:0x00000001




Last Coverpoint : ['rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x8000094c]:KMMSB_U t6, t5, t4
	-[0x80000950]:csrrs t5, vxsat, zero
	-[0x80000954]:sw t6, 344(ra)
Current Store : [0x80000958] : sw t5, 348(ra) -- Store: [0x80002474]:0x00000001




Last Coverpoint : ['rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x80000968]:KMMSB_U t6, t5, t4
	-[0x8000096c]:csrrs t5, vxsat, zero
	-[0x80000970]:sw t6, 352(ra)
Current Store : [0x80000974] : sw t5, 356(ra) -- Store: [0x8000247c]:0x00000001




Last Coverpoint : ['rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x80000988]:KMMSB_U t6, t5, t4
	-[0x8000098c]:csrrs t5, vxsat, zero
	-[0x80000990]:sw t6, 360(ra)
Current Store : [0x80000994] : sw t5, 364(ra) -- Store: [0x80002484]:0x00000001




Last Coverpoint : ['opcode : kmmsb.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w0_val == -1073741825', 'rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x800009a8]:KMMSB_U t6, t5, t4
	-[0x800009ac]:csrrs t5, vxsat, zero
	-[0x800009b0]:sw t6, 368(ra)
Current Store : [0x800009b4] : sw t5, 372(ra) -- Store: [0x8000248c]:0x00000001




Last Coverpoint : ['rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x800009c8]:KMMSB_U t6, t5, t4
	-[0x800009cc]:csrrs t5, vxsat, zero
	-[0x800009d0]:sw t6, 376(ra)
Current Store : [0x800009d4] : sw t5, 380(ra) -- Store: [0x80002494]:0x00000001




Last Coverpoint : ['rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x800009e8]:KMMSB_U t6, t5, t4
	-[0x800009ec]:csrrs t5, vxsat, zero
	-[0x800009f0]:sw t6, 384(ra)
Current Store : [0x800009f4] : sw t5, 388(ra) -- Store: [0x8000249c]:0x00000001




Last Coverpoint : ['rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x80000a04]:KMMSB_U t6, t5, t4
	-[0x80000a08]:csrrs t5, vxsat, zero
	-[0x80000a0c]:sw t6, 392(ra)
Current Store : [0x80000a10] : sw t5, 396(ra) -- Store: [0x800024a4]:0x00000001




Last Coverpoint : ['rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x80000a1c]:KMMSB_U t6, t5, t4
	-[0x80000a20]:csrrs t5, vxsat, zero
	-[0x80000a24]:sw t6, 400(ra)
Current Store : [0x80000a28] : sw t5, 404(ra) -- Store: [0x800024ac]:0x00000001




Last Coverpoint : ['rs1_w0_val == -257']
Last Code Sequence : 
	-[0x80000a34]:KMMSB_U t6, t5, t4
	-[0x80000a38]:csrrs t5, vxsat, zero
	-[0x80000a3c]:sw t6, 408(ra)
Current Store : [0x80000a40] : sw t5, 412(ra) -- Store: [0x800024b4]:0x00000001




Last Coverpoint : ['rs1_w0_val == -129']
Last Code Sequence : 
	-[0x80000a50]:KMMSB_U t6, t5, t4
	-[0x80000a54]:csrrs t5, vxsat, zero
	-[0x80000a58]:sw t6, 416(ra)
Current Store : [0x80000a5c] : sw t5, 420(ra) -- Store: [0x800024bc]:0x00000001




Last Coverpoint : ['rs1_w0_val == -65']
Last Code Sequence : 
	-[0x80000a68]:KMMSB_U t6, t5, t4
	-[0x80000a6c]:csrrs t5, vxsat, zero
	-[0x80000a70]:sw t6, 424(ra)
Current Store : [0x80000a74] : sw t5, 428(ra) -- Store: [0x800024c4]:0x00000001




Last Coverpoint : ['rs1_w0_val == -33']
Last Code Sequence : 
	-[0x80000a80]:KMMSB_U t6, t5, t4
	-[0x80000a84]:csrrs t5, vxsat, zero
	-[0x80000a88]:sw t6, 432(ra)
Current Store : [0x80000a8c] : sw t5, 436(ra) -- Store: [0x800024cc]:0x00000001




Last Coverpoint : ['rs1_w0_val == -5']
Last Code Sequence : 
	-[0x80000a98]:KMMSB_U t6, t5, t4
	-[0x80000a9c]:csrrs t5, vxsat, zero
	-[0x80000aa0]:sw t6, 440(ra)
Current Store : [0x80000aa4] : sw t5, 444(ra) -- Store: [0x800024d4]:0x00000001




Last Coverpoint : ['rs1_w0_val == -3']
Last Code Sequence : 
	-[0x80000ab4]:KMMSB_U t6, t5, t4
	-[0x80000ab8]:csrrs t5, vxsat, zero
	-[0x80000abc]:sw t6, 448(ra)
Current Store : [0x80000ac0] : sw t5, 452(ra) -- Store: [0x800024dc]:0x00000001




Last Coverpoint : ['rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80000acc]:KMMSB_U t6, t5, t4
	-[0x80000ad0]:csrrs t5, vxsat, zero
	-[0x80000ad4]:sw t6, 456(ra)
Current Store : [0x80000ad8] : sw t5, 460(ra) -- Store: [0x800024e4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000ae4]:KMMSB_U t6, t5, t4
	-[0x80000ae8]:csrrs t5, vxsat, zero
	-[0x80000aec]:sw t6, 464(ra)
Current Store : [0x80000af0] : sw t5, 468(ra) -- Store: [0x800024ec]:0x00000001




Last Coverpoint : ['rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000b00]:KMMSB_U t6, t5, t4
	-[0x80000b04]:csrrs t5, vxsat, zero
	-[0x80000b08]:sw t6, 472(ra)
Current Store : [0x80000b0c] : sw t5, 476(ra) -- Store: [0x800024f4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000b18]:KMMSB_U t6, t5, t4
	-[0x80000b1c]:csrrs t5, vxsat, zero
	-[0x80000b20]:sw t6, 480(ra)
Current Store : [0x80000b24] : sw t5, 484(ra) -- Store: [0x800024fc]:0x00000001




Last Coverpoint : ['rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000b30]:KMMSB_U t6, t5, t4
	-[0x80000b34]:csrrs t5, vxsat, zero
	-[0x80000b38]:sw t6, 488(ra)
Current Store : [0x80000b3c] : sw t5, 492(ra) -- Store: [0x80002504]:0x00000001




Last Coverpoint : ['rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000b48]:KMMSB_U t6, t5, t4
	-[0x80000b4c]:csrrs t5, vxsat, zero
	-[0x80000b50]:sw t6, 496(ra)
Current Store : [0x80000b54] : sw t5, 500(ra) -- Store: [0x8000250c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000b60]:KMMSB_U t6, t5, t4
	-[0x80000b64]:csrrs t5, vxsat, zero
	-[0x80000b68]:sw t6, 504(ra)
Current Store : [0x80000b6c] : sw t5, 508(ra) -- Store: [0x80002514]:0x00000001




Last Coverpoint : ['rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000b78]:KMMSB_U t6, t5, t4
	-[0x80000b7c]:csrrs t5, vxsat, zero
	-[0x80000b80]:sw t6, 512(ra)
Current Store : [0x80000b84] : sw t5, 516(ra) -- Store: [0x8000251c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000b94]:KMMSB_U t6, t5, t4
	-[0x80000b98]:csrrs t5, vxsat, zero
	-[0x80000b9c]:sw t6, 520(ra)
Current Store : [0x80000ba0] : sw t5, 524(ra) -- Store: [0x80002524]:0x00000001




Last Coverpoint : ['rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000bac]:KMMSB_U t6, t5, t4
	-[0x80000bb0]:csrrs t5, vxsat, zero
	-[0x80000bb4]:sw t6, 528(ra)
Current Store : [0x80000bb8] : sw t5, 532(ra) -- Store: [0x8000252c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000bc4]:KMMSB_U t6, t5, t4
	-[0x80000bc8]:csrrs t5, vxsat, zero
	-[0x80000bcc]:sw t6, 536(ra)
Current Store : [0x80000bd0] : sw t5, 540(ra) -- Store: [0x80002534]:0x00000001




Last Coverpoint : ['rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000be0]:KMMSB_U t6, t5, t4
	-[0x80000be4]:csrrs t5, vxsat, zero
	-[0x80000be8]:sw t6, 544(ra)
Current Store : [0x80000bec] : sw t5, 548(ra) -- Store: [0x8000253c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000bf8]:KMMSB_U t6, t5, t4
	-[0x80000bfc]:csrrs t5, vxsat, zero
	-[0x80000c00]:sw t6, 552(ra)
Current Store : [0x80000c04] : sw t5, 556(ra) -- Store: [0x80002544]:0x00000001




Last Coverpoint : ['rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000c14]:KMMSB_U t6, t5, t4
	-[0x80000c18]:csrrs t5, vxsat, zero
	-[0x80000c1c]:sw t6, 560(ra)
Current Store : [0x80000c20] : sw t5, 564(ra) -- Store: [0x8000254c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000c2c]:KMMSB_U t6, t5, t4
	-[0x80000c30]:csrrs t5, vxsat, zero
	-[0x80000c34]:sw t6, 568(ra)
Current Store : [0x80000c38] : sw t5, 572(ra) -- Store: [0x80002554]:0x00000001




Last Coverpoint : ['rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000c4c]:KMMSB_U t6, t5, t4
	-[0x80000c50]:csrrs t5, vxsat, zero
	-[0x80000c54]:sw t6, 576(ra)
Current Store : [0x80000c58] : sw t5, 580(ra) -- Store: [0x8000255c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000c68]:KMMSB_U t6, t5, t4
	-[0x80000c6c]:csrrs t5, vxsat, zero
	-[0x80000c70]:sw t6, 584(ra)
Current Store : [0x80000c74] : sw t5, 588(ra) -- Store: [0x80002564]:0x00000001




Last Coverpoint : ['rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000c84]:KMMSB_U t6, t5, t4
	-[0x80000c88]:csrrs t5, vxsat, zero
	-[0x80000c8c]:sw t6, 592(ra)
Current Store : [0x80000c90] : sw t5, 596(ra) -- Store: [0x8000256c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000c9c]:KMMSB_U t6, t5, t4
	-[0x80000ca0]:csrrs t5, vxsat, zero
	-[0x80000ca4]:sw t6, 600(ra)
Current Store : [0x80000ca8] : sw t5, 604(ra) -- Store: [0x80002574]:0x00000001




Last Coverpoint : ['rs1_w0_val == -2147483648']
Last Code Sequence : 
	-[0x80000cb8]:KMMSB_U t6, t5, t4
	-[0x80000cbc]:csrrs t5, vxsat, zero
	-[0x80000cc0]:sw t6, 608(ra)
Current Store : [0x80000cc4] : sw t5, 612(ra) -- Store: [0x8000257c]:0x00000001




Last Coverpoint : ['rs2_w0_val == -16385']
Last Code Sequence : 
	-[0x80000cd8]:KMMSB_U t6, t5, t4
	-[0x80000cdc]:csrrs t5, vxsat, zero
	-[0x80000ce0]:sw t6, 616(ra)
Current Store : [0x80000ce4] : sw t5, 620(ra) -- Store: [0x80002584]:0x00000001




Last Coverpoint : ['opcode : kmmsb.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w0_val == -257', 'rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x80000cf4]:KMMSB_U t6, t5, t4
	-[0x80000cf8]:csrrs t5, vxsat, zero
	-[0x80000cfc]:sw t6, 624(ra)
Current Store : [0x80000d00] : sw t5, 628(ra) -- Store: [0x8000258c]:0x00000001





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

|s.no|        signature         |                                                                       coverpoints                                                                        |                                                     code                                                     |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : kmmsb.u<br> - rs1 : x16<br> - rs2 : x16<br> - rd : x16<br> - rs1 == rs2 == rd<br> - rs2_w0_val == -65537<br> - rs1_w0_val == -65537<br>        |[0x80000118]:KMMSB_U a6, a6, a6<br> [0x8000011c]:csrrs a6, vxsat, zero<br> [0x80000120]:sw a6, 0(t1)<br>      |
|   2|[0x80002218]<br>0xDF45339A|- rs1 : x12<br> - rs2 : x12<br> - rd : x31<br> - rs1 == rs2 != rd<br> - rs2_w0_val == -1431655766<br> - rs1_w0_val == -1431655766<br>                     |[0x80000138]:KMMSB_U t6, a2, a2<br> [0x8000013c]:csrrs a2, vxsat, zero<br> [0x80000140]:sw t6, 8(t1)<br>      |
|   3|[0x80002220]<br>0x80000000|- rs1 : x22<br> - rs2 : x18<br> - rd : x5<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_w0_val == 1431655765<br> - rs1_w0_val == 2147483647<br> |[0x80000158]:KMMSB_U t0, s6, s2<br> [0x8000015c]:csrrs s6, vxsat, zero<br> [0x80000160]:sw t0, 16(t1)<br>     |
|   4|[0x80002228]<br>0x7FFFFFFF|- rs1 : x19<br> - rs2 : x22<br> - rd : x22<br> - rs2 == rd != rs1<br> - rs2_w0_val == 2147483647<br>                                                      |[0x80000178]:KMMSB_U s6, s3, s6<br> [0x8000017c]:csrrs s3, vxsat, zero<br> [0x80000180]:sw s6, 24(t1)<br>     |
|   5|[0x80002230]<br>0x00000001|- rs1 : x30<br> - rs2 : x17<br> - rd : x30<br> - rs1 == rd != rs2<br> - rs2_w0_val == -1073741825<br>                                                     |[0x80000194]:KMMSB_U t5, t5, a7<br> [0x80000198]:csrrs t5, vxsat, zero<br> [0x8000019c]:sw t5, 32(t1)<br>     |
|   6|[0x80002238]<br>0xB7FBB6FA|- rs1 : x0<br> - rs2 : x31<br> - rd : x7<br> - rs2_w0_val == -536870913<br> - rs1_w0_val == 0<br>                                                         |[0x800001b0]:KMMSB_U t2, zero, t6<br> [0x800001b4]:csrrs zero, vxsat, zero<br> [0x800001b8]:sw t2, 40(t1)<br> |
|   7|[0x80002240]<br>0xEDBEADFE|- rs1 : x18<br> - rs2 : x11<br> - rd : x25<br> - rs2_w0_val == -268435457<br>                                                                             |[0x800001cc]:KMMSB_U s9, s2, a1<br> [0x800001d0]:csrrs s2, vxsat, zero<br> [0x800001d4]:sw s9, 48(t1)<br>     |
|   8|[0x80002248]<br>0xDBEEDFEE|- rs1 : x24<br> - rs2 : x26<br> - rd : x21<br> - rs2_w0_val == -134217729<br> - rs1_w0_val == 8388608<br>                                                 |[0x800001e8]:KMMSB_U s5, s8, s10<br> [0x800001ec]:csrrs s8, vxsat, zero<br> [0x800001f0]:sw s5, 56(t1)<br>    |
|   9|[0x80002250]<br>0xFFFFFFF8|- rs1 : x13<br> - rs2 : x10<br> - rd : x12<br> - rs2_w0_val == -67108865<br> - rs1_w0_val == -513<br>                                                     |[0x80000204]:KMMSB_U a2, a3, a0<br> [0x80000208]:csrrs a3, vxsat, zero<br> [0x8000020c]:sw a2, 64(t1)<br>     |
|  10|[0x80002258]<br>0x5C6441E4|- rs1 : x28<br> - rs2 : x1<br> - rd : x8<br> - rs2_w0_val == -33554433<br>                                                                                |[0x80000224]:KMMSB_U fp, t3, ra<br> [0x80000228]:csrrs t3, vxsat, zero<br> [0x8000022c]:sw fp, 72(t1)<br>     |
|  11|[0x80002260]<br>0xBFFFFFFF|- rs1 : x8<br> - rs2 : x21<br> - rd : x17<br> - rs2_w0_val == -16777217<br>                                                                               |[0x80000240]:KMMSB_U a7, fp, s5<br> [0x80000244]:csrrs fp, vxsat, zero<br> [0x80000248]:sw a7, 80(t1)<br>     |
|  12|[0x80002268]<br>0xB7D4BFDD|- rs1 : x14<br> - rs2 : x7<br> - rd : x20<br> - rs2_w0_val == -8388609<br> - rs1_w0_val == -33554433<br>                                                  |[0x80000260]:KMMSB_U s4, a4, t2<br> [0x80000264]:csrrs a4, vxsat, zero<br> [0x80000268]:sw s4, 88(t1)<br>     |
|  13|[0x80002270]<br>0xF8007FFF|- rs1 : x29<br> - rs2 : x24<br> - rd : x26<br> - rs2_w0_val == -4194305<br> - rs1_w0_val == 33554432<br>                                                  |[0x8000027c]:KMMSB_U s10, t4, s8<br> [0x80000280]:csrrs t4, vxsat, zero<br> [0x80000284]:sw s10, 96(t1)<br>   |
|  14|[0x80002278]<br>0xFBFFDFFF|- rs1 : x9<br> - rs2 : x13<br> - rd : x10<br> - rs2_w0_val == -2097153<br> - rs1_w0_val == -16777217<br>                                                  |[0x8000029c]:KMMSB_U a0, s1, a3<br> [0x800002a0]:csrrs s1, vxsat, zero<br> [0x800002a4]:sw a0, 104(t1)<br>    |
|  15|[0x80002280]<br>0x00033334|- rs1 : x31<br> - rs2 : x3<br> - rd : x29<br> - rs2_w0_val == -1048577<br>                                                                                |[0x800002bc]:KMMSB_U t4, t6, gp<br> [0x800002c0]:csrrs t6, vxsat, zero<br> [0x800002c4]:sw t4, 112(t1)<br>    |
|  16|[0x80002288]<br>0x00000001|- rs1 : x4<br> - rs2 : x5<br> - rd : x18<br> - rs2_w0_val == -524289<br> - rs1_w0_val == -17<br>                                                          |[0x800002d8]:KMMSB_U s2, tp, t0<br> [0x800002dc]:csrrs tp, vxsat, zero<br> [0x800002e0]:sw s2, 120(t1)<br>    |
|  17|[0x80002290]<br>0x00000000|- rs1 : x15<br> - rs2 : x2<br> - rd : x9<br> - rs2_w0_val == -262145<br> - rs1_w0_val == -8193<br>                                                        |[0x800002f8]:KMMSB_U s1, a5, sp<br> [0x800002fc]:csrrs a5, vxsat, zero<br> [0x80000300]:sw s1, 128(t1)<br>    |
|  18|[0x80002298]<br>0x00008001|- rs1 : x2<br> - rs2 : x19<br> - rd : x14<br> - rs2_w0_val == -131073<br>                                                                                 |[0x80000320]:KMMSB_U a4, sp, s3<br> [0x80000324]:csrrs sp, vxsat, zero<br> [0x80000328]:sw a4, 0(a2)<br>      |
|  19|[0x800022a0]<br>0x00000001|- rs1 : x25<br> - rs2 : x14<br> - rd : x4<br> - rs2_w0_val == -32769<br>                                                                                  |[0x8000033c]:KMMSB_U tp, s9, a4<br> [0x80000340]:csrrs s9, vxsat, zero<br> [0x80000344]:sw tp, 8(a2)<br>      |
|  20|[0x800022a8]<br>0xB6FAB7FB|- rs1 : x11<br> - rs2 : x0<br> - rd : x23<br> - rs2_w0_val == 0<br> - rs1_w0_val == 1431655765<br>                                                        |[0x8000035c]:KMMSB_U s7, a1, zero<br> [0x80000360]:csrrs a1, vxsat, zero<br> [0x80000364]:sw s7, 16(a2)<br>   |
|  21|[0x800022b0]<br>0x00000001|- rs1 : x7<br> - rs2 : x15<br> - rd : x28<br> - rs2_w0_val == -8193<br> - rs1_w0_val == 512<br>                                                           |[0x80000378]:KMMSB_U t3, t2, a5<br> [0x8000037c]:csrrs t2, vxsat, zero<br> [0x80000380]:sw t3, 24(a2)<br>     |
|  22|[0x800022b8]<br>0xFFDFFFFF|- rs1 : x21<br> - rs2 : x8<br> - rd : x13<br> - rs2_w0_val == -4097<br> - rs1_w0_val == -4097<br>                                                         |[0x80000398]:KMMSB_U a3, s5, fp<br> [0x8000039c]:csrrs s5, vxsat, zero<br> [0x800003a0]:sw a3, 32(a2)<br>     |
|  23|[0x800022c0]<br>0xFFBFFD54|- rs1 : x1<br> - rs2 : x20<br> - rd : x24<br> - rs2_w0_val == -2049<br>                                                                                   |[0x800003b8]:KMMSB_U s8, ra, s4<br> [0x800003bc]:csrrs ra, vxsat, zero<br> [0x800003c0]:sw s8, 40(a2)<br>     |
|  24|[0x800022c8]<br>0x00000001|- rs1 : x5<br> - rs2 : x29<br> - rd : x2<br> - rs2_w0_val == -1025<br> - rs1_w0_val == -1<br>                                                             |[0x800003d0]:KMMSB_U sp, t0, t4<br> [0x800003d4]:csrrs t0, vxsat, zero<br> [0x800003d8]:sw sp, 48(a2)<br>     |
|  25|[0x800022d0]<br>0xFFFFE0CC|- rs1 : x3<br> - rs2 : x27<br> - rd : x15<br> - rs2_w0_val == -513<br>                                                                                    |[0x800003ec]:KMMSB_U a5, gp, s11<br> [0x800003f0]:csrrs gp, vxsat, zero<br> [0x800003f4]:sw a5, 56(a2)<br>    |
|  26|[0x800022d8]<br>0x00000000|- rs1 : x23<br> - rs2 : x4<br> - rd : x0<br> - rs2_w0_val == -257<br> - rs1_w0_val == -67108865<br>                                                       |[0x80000408]:KMMSB_U zero, s7, tp<br> [0x8000040c]:csrrs s7, vxsat, zero<br> [0x80000410]:sw zero, 64(a2)<br> |
|  27|[0x800022e0]<br>0x80002210|- rs1 : x27<br> - rs2 : x30<br> - rd : x6<br> - rs2_w0_val == -129<br>                                                                                    |[0x80000424]:KMMSB_U t1, s11, t5<br> [0x80000428]:csrrs s11, vxsat, zero<br> [0x8000042c]:sw t1, 72(a2)<br>   |
|  28|[0x800022e8]<br>0xFFFFFFEB|- rs1 : x26<br> - rs2 : x9<br> - rd : x11<br> - rs2_w0_val == -65<br>                                                                                     |[0x80000440]:KMMSB_U a1, s10, s1<br> [0x80000444]:csrrs s10, vxsat, zero<br> [0x80000448]:sw a1, 80(a2)<br>   |
|  29|[0x800022f0]<br>0x0000000E|- rs1 : x17<br> - rs2 : x23<br> - rd : x3<br> - rs2_w0_val == -33<br>                                                                                     |[0x8000045c]:KMMSB_U gp, a7, s7<br> [0x80000460]:csrrs a7, vxsat, zero<br> [0x80000464]:sw gp, 88(a2)<br>     |
|  30|[0x800022f8]<br>0x00000001|- rs1 : x10<br> - rs2 : x6<br> - rd : x1<br> - rs2_w0_val == -17<br>                                                                                      |[0x80000474]:KMMSB_U ra, a0, t1<br> [0x80000478]:csrrs a0, vxsat, zero<br> [0x8000047c]:sw ra, 96(a2)<br>     |
|  31|[0x80002300]<br>0xFFFFFFFE|- rs1 : x6<br> - rs2 : x28<br> - rd : x27<br> - rs2_w0_val == -9<br>                                                                                      |[0x80000490]:KMMSB_U s11, t1, t3<br> [0x80000494]:csrrs t1, vxsat, zero<br> [0x80000498]:sw s11, 104(a2)<br>  |
|  32|[0x80002308]<br>0xFFFDFFFF|- rs1 : x20<br> - rs2 : x25<br> - rd : x19<br> - rs2_w0_val == -5<br>                                                                                     |[0x800004a8]:KMMSB_U s3, s4, s9<br> [0x800004ac]:csrrs s4, vxsat, zero<br> [0x800004b0]:sw s3, 112(a2)<br>    |
|  33|[0x80002310]<br>0x00000001|- rs2_w0_val == -3<br> - rs1_w0_val == -2<br>                                                                                                             |[0x800004c0]:KMMSB_U t6, t5, t4<br> [0x800004c4]:csrrs t5, vxsat, zero<br> [0x800004c8]:sw t6, 120(a2)<br>    |
|  34|[0x80002318]<br>0x00000001|- rs2_w0_val == -2<br>                                                                                                                                    |[0x800004e0]:KMMSB_U t6, t5, t4<br> [0x800004e4]:csrrs t5, vxsat, zero<br> [0x800004e8]:sw t6, 0(ra)<br>      |
|  35|[0x80002320]<br>0x00400001|- rs2_w0_val == -2147483648<br>                                                                                                                           |[0x800004f8]:KMMSB_U t6, t5, t4<br> [0x800004fc]:csrrs t5, vxsat, zero<br> [0x80000500]:sw t6, 8(ra)<br>      |
|  36|[0x80002328]<br>0x00400001|- rs2_w0_val == 1073741824<br>                                                                                                                            |[0x80000510]:KMMSB_U t6, t5, t4<br> [0x80000514]:csrrs t5, vxsat, zero<br> [0x80000518]:sw t6, 16(ra)<br>     |
|  37|[0x80002330]<br>0x00400000|- rs2_w0_val == 536870912<br>                                                                                                                             |[0x80000528]:KMMSB_U t6, t5, t4<br> [0x8000052c]:csrrs t5, vxsat, zero<br> [0x80000530]:sw t6, 24(ra)<br>     |
|  38|[0x80002338]<br>0xFC400000|- rs2_w0_val == 268435456<br>                                                                                                                             |[0x80000544]:KMMSB_U t6, t5, t4<br> [0x80000548]:csrrs t5, vxsat, zero<br> [0x8000054c]:sw t6, 32(ra)<br>     |
|  39|[0x80002340]<br>0xF9955555|- rs2_w0_val == 134217728<br>                                                                                                                             |[0x80000560]:KMMSB_U t6, t5, t4<br> [0x80000564]:csrrs t5, vxsat, zero<br> [0x80000568]:sw t6, 40(ra)<br>     |
|  40|[0x80002348]<br>0xF7FBBBBB|- rs2_w0_val == 67108864<br>                                                                                                                              |[0x8000057c]:KMMSB_U t6, t5, t4<br> [0x80000580]:csrrs t5, vxsat, zero<br> [0x80000584]:sw t6, 48(ra)<br>     |
|  41|[0x80002350]<br>0xF7FBBD25|- rs2_w0_val == 33554432<br>                                                                                                                              |[0x80000598]:KMMSB_U t6, t5, t4<br> [0x8000059c]:csrrs t5, vxsat, zero<br> [0x800005a0]:sw t6, 56(ra)<br>     |
|  42|[0x80002358]<br>0xF7FC3D25|- rs2_w0_val == 16777216<br> - rs1_w0_val == -8388609<br>                                                                                                 |[0x800005b4]:KMMSB_U t6, t5, t4<br> [0x800005b8]:csrrs t5, vxsat, zero<br> [0x800005bc]:sw t6, 64(ra)<br>     |
|  43|[0x80002360]<br>0xF826E7D0|- rs2_w0_val == 8388608<br>                                                                                                                               |[0x800005d0]:KMMSB_U t6, t5, t4<br> [0x800005d4]:csrrs t5, vxsat, zero<br> [0x800005d8]:sw t6, 72(ra)<br>     |
|  44|[0x80002368]<br>0xF826E7C0|- rs2_w0_val == 4194304<br> - rs1_w0_val == 16384<br>                                                                                                     |[0x800005e8]:KMMSB_U t6, t5, t4<br> [0x800005ec]:csrrs t5, vxsat, zero<br> [0x800005f0]:sw t6, 80(ra)<br>     |
|  45|[0x80002370]<br>0xF81C3D15|- rs2_w0_val == 2097152<br>                                                                                                                               |[0x80000604]:KMMSB_U t6, t5, t4<br> [0x80000608]:csrrs t5, vxsat, zero<br> [0x8000060c]:sw t6, 88(ra)<br>     |
|  46|[0x80002378]<br>0xF81C3D15|- rs2_w0_val == 1048576<br>                                                                                                                               |[0x8000061c]:KMMSB_U t6, t5, t4<br> [0x80000620]:csrrs t5, vxsat, zero<br> [0x80000624]:sw t6, 96(ra)<br>     |
|  47|[0x80002380]<br>0xF81C3D15|- rs2_w0_val == 524288<br> - rs1_w0_val == 32<br>                                                                                                         |[0x80000634]:KMMSB_U t6, t5, t4<br> [0x80000638]:csrrs t5, vxsat, zero<br> [0x8000063c]:sw t6, 104(ra)<br>    |
|  48|[0x80002388]<br>0xF81D3D15|- rs2_w0_val == 262144<br> - rs1_w0_val == -1073741825<br>                                                                                                |[0x80000650]:KMMSB_U t6, t5, t4<br> [0x80000654]:csrrs t5, vxsat, zero<br> [0x80000658]:sw t6, 112(ra)<br>    |
|  49|[0x80002390]<br>0xF81D3D15|- rs2_w0_val == 131072<br>                                                                                                                                |[0x80000668]:KMMSB_U t6, t5, t4<br> [0x8000066c]:csrrs t5, vxsat, zero<br> [0x80000670]:sw t6, 120(ra)<br>    |
|  50|[0x80002398]<br>0xF81D926A|- rs2_w0_val == 65536<br>                                                                                                                                 |[0x80000684]:KMMSB_U t6, t5, t4<br> [0x80000688]:csrrs t5, vxsat, zero<br> [0x8000068c]:sw t6, 128(ra)<br>    |
|  51|[0x800023a0]<br>0xF81D926A|- rs2_w0_val == 32768<br> - rs1_w0_val == 4<br>                                                                                                           |[0x8000069c]:KMMSB_U t6, t5, t4<br> [0x800006a0]:csrrs t5, vxsat, zero<br> [0x800006a4]:sw t6, 136(ra)<br>    |
|  52|[0x800023a8]<br>0xF81D926A|- rs2_w0_val == 16384<br>                                                                                                                                 |[0x800006b4]:KMMSB_U t6, t5, t4<br> [0x800006b8]:csrrs t5, vxsat, zero<br> [0x800006bc]:sw t6, 144(ra)<br>    |
|  53|[0x800023b0]<br>0xF81D926A|- rs1_w0_val == 16<br>                                                                                                                                    |[0x800006cc]:KMMSB_U t6, t5, t4<br> [0x800006d0]:csrrs t5, vxsat, zero<br> [0x800006d4]:sw t6, 152(ra)<br>    |
|  54|[0x800023b8]<br>0xF81D926A|- rs2_w0_val == 512<br> - rs1_w0_val == 8<br>                                                                                                             |[0x800006e4]:KMMSB_U t6, t5, t4<br> [0x800006e8]:csrrs t5, vxsat, zero<br> [0x800006ec]:sw t6, 160(ra)<br>    |
|  55|[0x800023c0]<br>0xF81D926A|- rs1_w0_val == 2<br>                                                                                                                                     |[0x800006fc]:KMMSB_U t6, t5, t4<br> [0x80000700]:csrrs t5, vxsat, zero<br> [0x80000704]:sw t6, 168(ra)<br>    |
|  56|[0x800023c8]<br>0xF81D926A|- rs1_w0_val == 1<br>                                                                                                                                     |[0x80000714]:KMMSB_U t6, t5, t4<br> [0x80000718]:csrrs t5, vxsat, zero<br> [0x8000071c]:sw t6, 176(ra)<br>    |
|  57|[0x800023d0]<br>0xF81D9D15|- rs2_w0_val == 8192<br>                                                                                                                                  |[0x80000730]:KMMSB_U t6, t5, t4<br> [0x80000734]:csrrs t5, vxsat, zero<br> [0x80000738]:sw t6, 184(ra)<br>    |
|  58|[0x800023d8]<br>0xF81D9D15|- rs2_w0_val == 4096<br>                                                                                                                                  |[0x80000748]:KMMSB_U t6, t5, t4<br> [0x8000074c]:csrrs t5, vxsat, zero<br> [0x80000750]:sw t6, 192(ra)<br>    |
|  59|[0x800023e0]<br>0xF81D9A6A|- rs2_w0_val == 2048<br>                                                                                                                                  |[0x80000768]:KMMSB_U t6, t5, t4<br> [0x8000076c]:csrrs t5, vxsat, zero<br> [0x80000770]:sw t6, 200(ra)<br>    |
|  60|[0x800023e8]<br>0xF81D9BBF|- rs2_w0_val == 1024<br>                                                                                                                                  |[0x80000784]:KMMSB_U t6, t5, t4<br> [0x80000788]:csrrs t5, vxsat, zero<br> [0x8000078c]:sw t6, 208(ra)<br>    |
|  61|[0x800023f0]<br>0xF81D9BBF|- rs2_w0_val == 256<br> - rs1_w0_val == 2097152<br>                                                                                                       |[0x8000079c]:KMMSB_U t6, t5, t4<br> [0x800007a0]:csrrs t5, vxsat, zero<br> [0x800007a4]:sw t6, 216(ra)<br>    |
|  62|[0x800023f8]<br>0xF81D9BBF|- rs2_w0_val == 128<br>                                                                                                                                   |[0x800007b4]:KMMSB_U t6, t5, t4<br> [0x800007b8]:csrrs t5, vxsat, zero<br> [0x800007bc]:sw t6, 224(ra)<br>    |
|  63|[0x80002400]<br>0xF81D9BC0|- rs2_w0_val == 64<br>                                                                                                                                    |[0x800007d0]:KMMSB_U t6, t5, t4<br> [0x800007d4]:csrrs t5, vxsat, zero<br> [0x800007d8]:sw t6, 232(ra)<br>    |
|  64|[0x80002408]<br>0xF81D9BC0|- rs2_w0_val == 32<br>                                                                                                                                    |[0x800007e8]:KMMSB_U t6, t5, t4<br> [0x800007ec]:csrrs t5, vxsat, zero<br> [0x800007f0]:sw t6, 240(ra)<br>    |
|  65|[0x80002410]<br>0xF81D9BC0|- rs2_w0_val == 16<br>                                                                                                                                    |[0x80000804]:KMMSB_U t6, t5, t4<br> [0x80000808]:csrrs t5, vxsat, zero<br> [0x8000080c]:sw t6, 248(ra)<br>    |
|  66|[0x80002418]<br>0xF81D9BC0|- rs2_w0_val == 8<br>                                                                                                                                     |[0x8000081c]:KMMSB_U t6, t5, t4<br> [0x80000820]:csrrs t5, vxsat, zero<br> [0x80000824]:sw t6, 256(ra)<br>    |
|  67|[0x80002420]<br>0xF81D9BC0|- rs2_w0_val == 4<br> - rs1_w0_val == -9<br>                                                                                                              |[0x80000834]:KMMSB_U t6, t5, t4<br> [0x80000838]:csrrs t5, vxsat, zero<br> [0x8000083c]:sw t6, 264(ra)<br>    |
|  68|[0x80002428]<br>0xF81D9BC0|- rs2_w0_val == 2<br> - rs1_w0_val == 128<br>                                                                                                             |[0x8000084c]:KMMSB_U t6, t5, t4<br> [0x80000850]:csrrs t5, vxsat, zero<br> [0x80000854]:sw t6, 272(ra)<br>    |
|  69|[0x80002430]<br>0xF81D9BC0|- rs2_w0_val == 1<br>                                                                                                                                     |[0x80000864]:KMMSB_U t6, t5, t4<br> [0x80000868]:csrrs t5, vxsat, zero<br> [0x8000086c]:sw t6, 280(ra)<br>    |
|  70|[0x80002440]<br>0xF81D9BC0|- rs2_w0_val == -1<br> - rs1_w0_val == -2097153<br>                                                                                                       |[0x80000898]:KMMSB_U t6, t5, t4<br> [0x8000089c]:csrrs t5, vxsat, zero<br> [0x800008a0]:sw t6, 296(ra)<br>    |
|  71|[0x80002448]<br>0xF8199BC0|- rs1_w0_val == -536870913<br>                                                                                                                            |[0x800008b8]:KMMSB_U t6, t5, t4<br> [0x800008bc]:csrrs t5, vxsat, zero<br> [0x800008c0]:sw t6, 304(ra)<br>    |
|  72|[0x80002450]<br>0xF8199BC0|- rs1_w0_val == -268435457<br>                                                                                                                            |[0x800008d4]:KMMSB_U t6, t5, t4<br> [0x800008d8]:csrrs t5, vxsat, zero<br> [0x800008dc]:sw t6, 312(ra)<br>    |
|  73|[0x80002458]<br>0xF8189BC0|- rs1_w0_val == -134217729<br>                                                                                                                            |[0x800008f4]:KMMSB_U t6, t5, t4<br> [0x800008f8]:csrrs t5, vxsat, zero<br> [0x800008fc]:sw t6, 320(ra)<br>    |
|  74|[0x80002460]<br>0xF825688D|- rs1_w0_val == -4194305<br>                                                                                                                              |[0x80000914]:KMMSB_U t6, t5, t4<br> [0x80000918]:csrrs t5, vxsat, zero<br> [0x8000091c]:sw t6, 328(ra)<br>    |
|  75|[0x80002468]<br>0xF825688D|- rs1_w0_val == -1048577<br>                                                                                                                              |[0x80000930]:KMMSB_U t6, t5, t4<br> [0x80000934]:csrrs t5, vxsat, zero<br> [0x80000938]:sw t6, 336(ra)<br>    |
|  76|[0x80002470]<br>0xF827688D|- rs1_w0_val == -524289<br>                                                                                                                               |[0x8000094c]:KMMSB_U t6, t5, t4<br> [0x80000950]:csrrs t5, vxsat, zero<br> [0x80000954]:sw t6, 344(ra)<br>    |
|  77|[0x80002478]<br>0xF827688D|- rs1_w0_val == -262145<br>                                                                                                                               |[0x80000968]:KMMSB_U t6, t5, t4<br> [0x8000096c]:csrrs t5, vxsat, zero<br> [0x80000970]:sw t6, 352(ra)<br>    |
|  78|[0x80002480]<br>0xF827288D|- rs1_w0_val == -131073<br>                                                                                                                               |[0x80000988]:KMMSB_U t6, t5, t4<br> [0x8000098c]:csrrs t5, vxsat, zero<br> [0x80000990]:sw t6, 360(ra)<br>    |
|  79|[0x80002490]<br>0xF826BDE2|- rs1_w0_val == -32769<br>                                                                                                                                |[0x800009c8]:KMMSB_U t6, t5, t4<br> [0x800009cc]:csrrs t5, vxsat, zero<br> [0x800009d0]:sw t6, 376(ra)<br>    |
|  80|[0x80002498]<br>0xF826BDD2|- rs1_w0_val == -16385<br>                                                                                                                                |[0x800009e8]:KMMSB_U t6, t5, t4<br> [0x800009ec]:csrrs t5, vxsat, zero<br> [0x800009f0]:sw t6, 384(ra)<br>    |
|  81|[0x800024a0]<br>0xF826BDD2|- rs1_w0_val == -2049<br>                                                                                                                                 |[0x80000a04]:KMMSB_U t6, t5, t4<br> [0x80000a08]:csrrs t5, vxsat, zero<br> [0x80000a0c]:sw t6, 392(ra)<br>    |
|  82|[0x800024a8]<br>0xF826BDD2|- rs1_w0_val == -1025<br>                                                                                                                                 |[0x80000a1c]:KMMSB_U t6, t5, t4<br> [0x80000a20]:csrrs t5, vxsat, zero<br> [0x80000a24]:sw t6, 400(ra)<br>    |
|  83|[0x800024b0]<br>0xF826BDD2|- rs1_w0_val == -257<br>                                                                                                                                  |[0x80000a34]:KMMSB_U t6, t5, t4<br> [0x80000a38]:csrrs t5, vxsat, zero<br> [0x80000a3c]:sw t6, 408(ra)<br>    |
|  84|[0x800024b8]<br>0xF826BDA7|- rs1_w0_val == -129<br>                                                                                                                                  |[0x80000a50]:KMMSB_U t6, t5, t4<br> [0x80000a54]:csrrs t5, vxsat, zero<br> [0x80000a58]:sw t6, 416(ra)<br>    |
|  85|[0x800024c0]<br>0xF826BDA7|- rs1_w0_val == -65<br>                                                                                                                                   |[0x80000a68]:KMMSB_U t6, t5, t4<br> [0x80000a6c]:csrrs t5, vxsat, zero<br> [0x80000a70]:sw t6, 424(ra)<br>    |
|  86|[0x800024c8]<br>0xF826BDA8|- rs1_w0_val == -33<br>                                                                                                                                   |[0x80000a80]:KMMSB_U t6, t5, t4<br> [0x80000a84]:csrrs t5, vxsat, zero<br> [0x80000a88]:sw t6, 432(ra)<br>    |
|  87|[0x800024d0]<br>0xF826BDA8|- rs1_w0_val == -5<br>                                                                                                                                    |[0x80000a98]:KMMSB_U t6, t5, t4<br> [0x80000a9c]:csrrs t5, vxsat, zero<br> [0x80000aa0]:sw t6, 440(ra)<br>    |
|  88|[0x800024d8]<br>0xF826BDA8|- rs1_w0_val == -3<br>                                                                                                                                    |[0x80000ab4]:KMMSB_U t6, t5, t4<br> [0x80000ab8]:csrrs t5, vxsat, zero<br> [0x80000abc]:sw t6, 448(ra)<br>    |
|  89|[0x800024e0]<br>0xF826BD68|- rs1_w0_val == 1073741824<br>                                                                                                                            |[0x80000acc]:KMMSB_U t6, t5, t4<br> [0x80000ad0]:csrrs t5, vxsat, zero<br> [0x80000ad4]:sw t6, 456(ra)<br>    |
|  90|[0x800024e8]<br>0xF826BD67|- rs1_w0_val == 536870912<br>                                                                                                                             |[0x80000ae4]:KMMSB_U t6, t5, t4<br> [0x80000ae8]:csrrs t5, vxsat, zero<br> [0x80000aec]:sw t6, 464(ra)<br>    |
|  91|[0x800024f0]<br>0xF826FD67|- rs1_w0_val == 268435456<br>                                                                                                                             |[0x80000b00]:KMMSB_U t6, t5, t4<br> [0x80000b04]:csrrs t5, vxsat, zero<br> [0x80000b08]:sw t6, 472(ra)<br>    |
|  92|[0x800024f8]<br>0xF826FB67|- rs1_w0_val == 134217728<br>                                                                                                                             |[0x80000b18]:KMMSB_U t6, t5, t4<br> [0x80000b1c]:csrrs t5, vxsat, zero<br> [0x80000b20]:sw t6, 480(ra)<br>    |
|  93|[0x80002500]<br>0xF826FB63|- rs1_w0_val == 67108864<br>                                                                                                                              |[0x80000b30]:KMMSB_U t6, t5, t4<br> [0x80000b34]:csrrs t5, vxsat, zero<br> [0x80000b38]:sw t6, 488(ra)<br>    |
|  94|[0x80002508]<br>0xF826FB63|- rs1_w0_val == 16777216<br>                                                                                                                              |[0x80000b48]:KMMSB_U t6, t5, t4<br> [0x80000b4c]:csrrs t5, vxsat, zero<br> [0x80000b50]:sw t6, 496(ra)<br>    |
|  95|[0x80002510]<br>0xF826FB63|- rs1_w0_val == 4194304<br>                                                                                                                               |[0x80000b60]:KMMSB_U t6, t5, t4<br> [0x80000b64]:csrrs t5, vxsat, zero<br> [0x80000b68]:sw t6, 504(ra)<br>    |
|  96|[0x80002518]<br>0xF826FB63|- rs1_w0_val == 1048576<br>                                                                                                                               |[0x80000b78]:KMMSB_U t6, t5, t4<br> [0x80000b7c]:csrrs t5, vxsat, zero<br> [0x80000b80]:sw t6, 512(ra)<br>    |
|  97|[0x80002520]<br>0xF826FB5D|- rs1_w0_val == 524288<br>                                                                                                                                |[0x80000b94]:KMMSB_U t6, t5, t4<br> [0x80000b98]:csrrs t5, vxsat, zero<br> [0x80000b9c]:sw t6, 520(ra)<br>    |
|  98|[0x80002528]<br>0xF826FB5D|- rs1_w0_val == 262144<br>                                                                                                                                |[0x80000bac]:KMMSB_U t6, t5, t4<br> [0x80000bb0]:csrrs t5, vxsat, zero<br> [0x80000bb4]:sw t6, 528(ra)<br>    |
|  99|[0x80002530]<br>0xF826FB5D|- rs1_w0_val == 131072<br>                                                                                                                                |[0x80000bc4]:KMMSB_U t6, t5, t4<br> [0x80000bc8]:csrrs t5, vxsat, zero<br> [0x80000bcc]:sw t6, 536(ra)<br>    |
| 100|[0x80002538]<br>0xF826FB5E|- rs1_w0_val == 65536<br>                                                                                                                                 |[0x80000be0]:KMMSB_U t6, t5, t4<br> [0x80000be4]:csrrs t5, vxsat, zero<br> [0x80000be8]:sw t6, 544(ra)<br>    |
| 101|[0x80002540]<br>0xF826FB5C|- rs1_w0_val == 32768<br>                                                                                                                                 |[0x80000bf8]:KMMSB_U t6, t5, t4<br> [0x80000bfc]:csrrs t5, vxsat, zero<br> [0x80000c00]:sw t6, 552(ra)<br>    |
| 102|[0x80002548]<br>0xF826FB5C|- rs1_w0_val == 8192<br>                                                                                                                                  |[0x80000c14]:KMMSB_U t6, t5, t4<br> [0x80000c18]:csrrs t5, vxsat, zero<br> [0x80000c1c]:sw t6, 560(ra)<br>    |
| 103|[0x80002550]<br>0xF826FB5C|- rs1_w0_val == 4096<br>                                                                                                                                  |[0x80000c2c]:KMMSB_U t6, t5, t4<br> [0x80000c30]:csrrs t5, vxsat, zero<br> [0x80000c34]:sw t6, 568(ra)<br>    |
| 104|[0x80002558]<br>0xF826FB5C|- rs1_w0_val == 2048<br>                                                                                                                                  |[0x80000c4c]:KMMSB_U t6, t5, t4<br> [0x80000c50]:csrrs t5, vxsat, zero<br> [0x80000c54]:sw t6, 576(ra)<br>    |
| 105|[0x80002560]<br>0xF826FB6C|- rs1_w0_val == 1024<br>                                                                                                                                  |[0x80000c68]:KMMSB_U t6, t5, t4<br> [0x80000c6c]:csrrs t5, vxsat, zero<br> [0x80000c70]:sw t6, 584(ra)<br>    |
| 106|[0x80002568]<br>0xF826FB6C|- rs1_w0_val == 256<br>                                                                                                                                   |[0x80000c84]:KMMSB_U t6, t5, t4<br> [0x80000c88]:csrrs t5, vxsat, zero<br> [0x80000c8c]:sw t6, 592(ra)<br>    |
| 107|[0x80002570]<br>0xF826FB8C|- rs1_w0_val == 64<br>                                                                                                                                    |[0x80000c9c]:KMMSB_U t6, t5, t4<br> [0x80000ca0]:csrrs t5, vxsat, zero<br> [0x80000ca4]:sw t6, 600(ra)<br>    |
| 108|[0x80002578]<br>0xF8267B8B|- rs1_w0_val == -2147483648<br>                                                                                                                           |[0x80000cb8]:KMMSB_U t6, t5, t4<br> [0x80000cbc]:csrrs t5, vxsat, zero<br> [0x80000cc0]:sw t6, 608(ra)<br>    |
| 109|[0x80002580]<br>0xF82690E1|- rs2_w0_val == -16385<br>                                                                                                                                |[0x80000cd8]:KMMSB_U t6, t5, t4<br> [0x80000cdc]:csrrs t5, vxsat, zero<br> [0x80000ce0]:sw t6, 616(ra)<br>    |
