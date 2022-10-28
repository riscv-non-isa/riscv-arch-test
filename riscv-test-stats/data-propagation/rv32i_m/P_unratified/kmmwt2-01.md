
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000b70')]      |
| SIG_REGION                | [('0x80002210', '0x800024f0', '184 words')]      |
| COV_LABELS                | kmmwt2      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kmmwt2-01.S    |
| Total Number of coverpoints| 248     |
| Total Coverpoints Hit     | 242      |
| Total Signature Updates   | 184      |
| STAT1                     | 89      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 92     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005f4]:KMMWT2 t6, t5, t4
      [0x800005f8]:csrrs t5, vxsat, zero
      [0x800005fc]:sw t6, 88(ra)
 -- Signature Address: 0x80002368 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : kmmwt2
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h1_val == 0
      - rs2_h0_val == -65
      - rs1_w0_val == -8193




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b44]:KMMWT2 t6, t5, t4
      [0x80000b48]:csrrs t5, vxsat, zero
      [0x80000b4c]:sw t6, 464(ra)
 -- Signature Address: 0x800024e0 Data: 0xFFFFFFDF
 -- Redundant Coverpoints hit by the op
      - opcode : kmmwt2
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h1_val == -8193
      - rs2_h0_val == 8
      - rs1_w0_val == 128




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b60]:KMMWT2 t6, t5, t4
      [0x80000b64]:csrrs t5, vxsat, zero
      [0x80000b68]:sw t6, 472(ra)
 -- Signature Address: 0x800024e8 Data: 0xFFFFFFEF
 -- Redundant Coverpoints hit by the op
      - opcode : kmmwt2
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h1_val == -65
      - rs2_h0_val == 2048
      - rs1_w0_val == 8192






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmmwt2', 'rs1 : x22', 'rs2 : x22', 'rd : x22', 'rs1 == rs2 == rd', 'rs2_h0_val == 16384']
Last Code Sequence : 
	-[0x80000114]:KMMWT2 s6, s6, s6
	-[0x80000118]:csrrs s6, vxsat, zero
	-[0x8000011c]:sw s6, 0(t1)
Current Store : [0x80000120] : sw s6, 4(t1) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x13', 'rd : x3', 'rs1 == rs2 != rd', 'rs2_h1_val == -21846', 'rs2_h0_val == 2048']
Last Code Sequence : 
	-[0x80000130]:KMMWT2 gp, a3, a3
	-[0x80000134]:csrrs a3, vxsat, zero
	-[0x80000138]:sw gp, 8(t1)
Current Store : [0x8000013c] : sw a3, 12(t1) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x0', 'rd : x29', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x80000150]:KMMWT2 t4, s4, zero
	-[0x80000154]:csrrs s4, vxsat, zero
	-[0x80000158]:sw t4, 16(t1)
Current Store : [0x8000015c] : sw s4, 20(t1) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x24', 'rs2 : x21', 'rd : x21', 'rs2 == rd != rs1', 'rs2_h1_val == 32767', 'rs1_w0_val == -2']
Last Code Sequence : 
	-[0x8000016c]:KMMWT2 s5, s8, s5
	-[0x80000170]:csrrs s8, vxsat, zero
	-[0x80000174]:sw s5, 24(t1)
Current Store : [0x80000178] : sw s8, 28(t1) -- Store: [0x8000222c]:0x00000000




Last Coverpoint : ['rs1 : x31', 'rs2 : x7', 'rd : x31', 'rs1 == rd != rs2', 'rs2_h1_val == -16385', 'rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x8000018c]:KMMWT2 t6, t6, t2
	-[0x80000190]:csrrs t6, vxsat, zero
	-[0x80000194]:sw t6, 32(t1)
Current Store : [0x80000198] : sw t6, 36(t1) -- Store: [0x80002234]:0x00000000




Last Coverpoint : ['rs1 : x0', 'rs2 : x12', 'rd : x2', 'rs2_h1_val == -8193', 'rs2_h0_val == 8', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x800001a8]:KMMWT2 sp, zero, a2
	-[0x800001ac]:csrrs zero, vxsat, zero
	-[0x800001b0]:sw sp, 40(t1)
Current Store : [0x800001b4] : sw zero, 44(t1) -- Store: [0x8000223c]:0x00000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x14', 'rd : x7', 'rs2_h1_val == -4097', 'rs2_h0_val == 32', 'rs1_w0_val == -513']
Last Code Sequence : 
	-[0x800001c4]:KMMWT2 t2, s5, a4
	-[0x800001c8]:csrrs s5, vxsat, zero
	-[0x800001cc]:sw t2, 48(t1)
Current Store : [0x800001d0] : sw s5, 52(t1) -- Store: [0x80002244]:0x00000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x17', 'rd : x11', 'rs2_h1_val == -2049', 'rs2_h0_val == -65']
Last Code Sequence : 
	-[0x800001e0]:KMMWT2 a1, s3, a7
	-[0x800001e4]:csrrs s3, vxsat, zero
	-[0x800001e8]:sw a1, 56(t1)
Current Store : [0x800001ec] : sw s3, 60(t1) -- Store: [0x8000224c]:0x00000000




Last Coverpoint : ['rs1 : x8', 'rs2 : x23', 'rd : x17', 'rs2_h1_val == -1025', 'rs2_h0_val == 128', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x80000200]:KMMWT2 a7, fp, s7
	-[0x80000204]:csrrs fp, vxsat, zero
	-[0x80000208]:sw a7, 64(t1)
Current Store : [0x8000020c] : sw fp, 68(t1) -- Store: [0x80002254]:0x00000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x16', 'rd : x28', 'rs2_h1_val == -513', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80000220]:KMMWT2 t3, t4, a6
	-[0x80000224]:csrrs t4, vxsat, zero
	-[0x80000228]:sw t3, 72(t1)
Current Store : [0x8000022c] : sw t4, 76(t1) -- Store: [0x8000225c]:0x00000000




Last Coverpoint : ['rs1 : x26', 'rs2 : x25', 'rd : x18', 'rs2_h1_val == -257', 'rs2_h0_val == -9']
Last Code Sequence : 
	-[0x8000023c]:KMMWT2 s2, s10, s9
	-[0x80000240]:csrrs s10, vxsat, zero
	-[0x80000244]:sw s2, 80(t1)
Current Store : [0x80000248] : sw s10, 84(t1) -- Store: [0x80002264]:0x00000000




Last Coverpoint : ['rs1 : x25', 'rs2 : x2', 'rd : x26', 'rs2_h1_val == -129', 'rs2_h0_val == -33', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000258]:KMMWT2 s10, s9, sp
	-[0x8000025c]:csrrs s9, vxsat, zero
	-[0x80000260]:sw s10, 88(t1)
Current Store : [0x80000264] : sw s9, 92(t1) -- Store: [0x8000226c]:0x00000000




Last Coverpoint : ['rs1 : x16', 'rs2 : x4', 'rd : x0', 'rs2_h1_val == -65', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000274]:KMMWT2 zero, a6, tp
	-[0x80000278]:csrrs a6, vxsat, zero
	-[0x8000027c]:sw zero, 96(t1)
Current Store : [0x80000280] : sw a6, 100(t1) -- Store: [0x80002274]:0x00000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x1', 'rd : x25', 'rs2_h1_val == -33', 'rs2_h0_val == 1', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x80000294]:KMMWT2 s9, sp, ra
	-[0x80000298]:csrrs sp, vxsat, zero
	-[0x8000029c]:sw s9, 104(t1)
Current Store : [0x800002a0] : sw sp, 108(t1) -- Store: [0x8000227c]:0x00000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x20', 'rd : x8', 'rs2_h1_val == -17', 'rs2_h0_val == -1']
Last Code Sequence : 
	-[0x800002b0]:KMMWT2 fp, s2, s4
	-[0x800002b4]:csrrs s2, vxsat, zero
	-[0x800002b8]:sw fp, 112(t1)
Current Store : [0x800002bc] : sw s2, 116(t1) -- Store: [0x80002284]:0x00000000




Last Coverpoint : ['rs1 : x5', 'rs2 : x11', 'rd : x30', 'rs2_h1_val == -9', 'rs2_h0_val == 2', 'rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x800002d0]:KMMWT2 t5, t0, a1
	-[0x800002d4]:csrrs t0, vxsat, zero
	-[0x800002d8]:sw t5, 120(t1)
Current Store : [0x800002dc] : sw t0, 124(t1) -- Store: [0x8000228c]:0x00000000




Last Coverpoint : ['rs1 : x9', 'rs2 : x5', 'rd : x1', 'rs2_h1_val == -5', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x800002ec]:KMMWT2 ra, s1, t0
	-[0x800002f0]:csrrs s1, vxsat, zero
	-[0x800002f4]:sw ra, 128(t1)
Current Store : [0x800002f8] : sw s1, 132(t1) -- Store: [0x80002294]:0x00000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x30', 'rd : x5', 'rs2_h1_val == -3', 'rs2_h0_val == -8193', 'rs1_w0_val == -65']
Last Code Sequence : 
	-[0x80000310]:KMMWT2 t0, a4, t5
	-[0x80000314]:csrrs a4, vxsat, zero
	-[0x80000318]:sw t0, 0(sp)
Current Store : [0x8000031c] : sw a4, 4(sp) -- Store: [0x8000229c]:0x00000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x31', 'rd : x12', 'rs2_h1_val == -2', 'rs2_h0_val == -21846']
Last Code Sequence : 
	-[0x8000032c]:KMMWT2 a2, ra, t6
	-[0x80000330]:csrrs ra, vxsat, zero
	-[0x80000334]:sw a2, 8(sp)
Current Store : [0x80000338] : sw ra, 12(sp) -- Store: [0x800022a4]:0x00000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x9', 'rd : x20', 'rs2_h1_val == -32768', 'rs2_h0_val == 21845', 'rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x8000034c]:KMMWT2 s4, a5, s1
	-[0x80000350]:csrrs a5, vxsat, zero
	-[0x80000354]:sw s4, 16(sp)
Current Store : [0x80000358] : sw a5, 20(sp) -- Store: [0x800022ac]:0x00000000




Last Coverpoint : ['rs1 : x17', 'rs2 : x8', 'rd : x10', 'rs2_h1_val == 16384', 'rs1_w0_val == -129']
Last Code Sequence : 
	-[0x80000368]:KMMWT2 a0, a7, fp
	-[0x8000036c]:csrrs a7, vxsat, zero
	-[0x80000370]:sw a0, 24(sp)
Current Store : [0x80000374] : sw a7, 28(sp) -- Store: [0x800022b4]:0x00000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x24', 'rd : x14', 'rs2_h1_val == 8192', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000384]:KMMWT2 a4, t5, s8
	-[0x80000388]:csrrs t5, vxsat, zero
	-[0x8000038c]:sw a4, 32(sp)
Current Store : [0x80000390] : sw t5, 36(sp) -- Store: [0x800022bc]:0x00000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x3', 'rd : x24', 'rs2_h1_val == 4096', 'rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x800003a4]:KMMWT2 s8, t1, gp
	-[0x800003a8]:csrrs t1, vxsat, zero
	-[0x800003ac]:sw s8, 40(sp)
Current Store : [0x800003b0] : sw t1, 44(sp) -- Store: [0x800022c4]:0x00000000




Last Coverpoint : ['rs1 : x12', 'rs2 : x29', 'rd : x6', 'rs2_h1_val == 2048', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x800003bc]:KMMWT2 t1, a2, t4
	-[0x800003c0]:csrrs a2, vxsat, zero
	-[0x800003c4]:sw t1, 48(sp)
Current Store : [0x800003c8] : sw a2, 52(sp) -- Store: [0x800022cc]:0x00000000




Last Coverpoint : ['rs1 : x27', 'rs2 : x6', 'rd : x13', 'rs2_h1_val == 1024', 'rs2_h0_val == -3', 'rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x800003dc]:KMMWT2 a3, s11, t1
	-[0x800003e0]:csrrs s11, vxsat, zero
	-[0x800003e4]:sw a3, 56(sp)
Current Store : [0x800003e8] : sw s11, 60(sp) -- Store: [0x800022d4]:0x00000000




Last Coverpoint : ['rs1 : x10', 'rs2 : x19', 'rd : x15', 'rs2_h1_val == 512', 'rs2_h0_val == -4097']
Last Code Sequence : 
	-[0x800003f8]:KMMWT2 a5, a0, s3
	-[0x800003fc]:csrrs a0, vxsat, zero
	-[0x80000400]:sw a5, 64(sp)
Current Store : [0x80000404] : sw a0, 68(sp) -- Store: [0x800022dc]:0x00000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x28', 'rd : x27', 'rs2_h1_val == 256', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80000414]:KMMWT2 s11, tp, t3
	-[0x80000418]:csrrs tp, vxsat, zero
	-[0x8000041c]:sw s11, 72(sp)
Current Store : [0x80000420] : sw tp, 76(sp) -- Store: [0x800022e4]:0x00000000




Last Coverpoint : ['rs1 : x7', 'rs2 : x15', 'rd : x9', 'rs2_h1_val == 128', 'rs2_h0_val == -32768']
Last Code Sequence : 
	-[0x8000042c]:KMMWT2 s1, t2, a5
	-[0x80000430]:csrrs t2, vxsat, zero
	-[0x80000434]:sw s1, 80(sp)
Current Store : [0x80000438] : sw t2, 84(sp) -- Store: [0x800022ec]:0x00000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x27', 'rd : x4', 'rs2_h1_val == 64', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000448]:KMMWT2 tp, s7, s11
	-[0x8000044c]:csrrs s7, vxsat, zero
	-[0x80000450]:sw tp, 88(sp)
Current Store : [0x80000454] : sw s7, 92(sp) -- Store: [0x800022f4]:0x00000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x26', 'rd : x19', 'rs2_h1_val == 32']
Last Code Sequence : 
	-[0x80000464]:KMMWT2 s3, t3, s10
	-[0x80000468]:csrrs t3, vxsat, zero
	-[0x8000046c]:sw s3, 96(sp)
Current Store : [0x80000470] : sw t3, 100(sp) -- Store: [0x800022fc]:0x00000000




Last Coverpoint : ['rs1 : x3', 'rs2 : x18', 'rd : x16', 'rs2_h1_val == 16', 'rs2_h0_val == -1025', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000480]:KMMWT2 a6, gp, s2
	-[0x80000484]:csrrs gp, vxsat, zero
	-[0x80000488]:sw a6, 104(sp)
Current Store : [0x8000048c] : sw gp, 108(sp) -- Store: [0x80002304]:0x00000000




Last Coverpoint : ['rs1 : x11', 'rs2 : x10', 'rd : x23', 'rs2_h1_val == 8', 'rs2_h0_val == -129', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x8000049c]:KMMWT2 s7, a1, a0
	-[0x800004a0]:csrrs a1, vxsat, zero
	-[0x800004a4]:sw s7, 112(sp)
Current Store : [0x800004a8] : sw a1, 116(sp) -- Store: [0x8000230c]:0x00000000




Last Coverpoint : ['rs2_h1_val == 4']
Last Code Sequence : 
	-[0x800004c0]:KMMWT2 t6, t5, t4
	-[0x800004c4]:csrrs t5, vxsat, zero
	-[0x800004c8]:sw t6, 0(ra)
Current Store : [0x800004cc] : sw t5, 4(ra) -- Store: [0x80002314]:0x00000000




Last Coverpoint : ['rs2_h1_val == 2', 'rs2_h0_val == -17']
Last Code Sequence : 
	-[0x800004dc]:KMMWT2 t6, t5, t4
	-[0x800004e0]:csrrs t5, vxsat, zero
	-[0x800004e4]:sw t6, 8(ra)
Current Store : [0x800004e8] : sw t5, 12(ra) -- Store: [0x8000231c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -5', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x800004f8]:KMMWT2 t6, t5, t4
	-[0x800004fc]:csrrs t5, vxsat, zero
	-[0x80000500]:sw t6, 16(ra)
Current Store : [0x80000504] : sw t5, 20(ra) -- Store: [0x80002324]:0x00000000




Last Coverpoint : ['rs2_h0_val == 64', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000514]:KMMWT2 t6, t5, t4
	-[0x80000518]:csrrs t5, vxsat, zero
	-[0x8000051c]:sw t6, 24(ra)
Current Store : [0x80000520] : sw t5, 28(ra) -- Store: [0x8000232c]:0x00000000




Last Coverpoint : ['rs2_h0_val == 4', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000530]:KMMWT2 t6, t5, t4
	-[0x80000534]:csrrs t5, vxsat, zero
	-[0x80000538]:sw t6, 32(ra)
Current Store : [0x8000053c] : sw t5, 36(ra) -- Store: [0x80002334]:0x00000000




Last Coverpoint : ['rs1_w0_val == 8']
Last Code Sequence : 
	-[0x8000054c]:KMMWT2 t6, t5, t4
	-[0x80000550]:csrrs t5, vxsat, zero
	-[0x80000554]:sw t6, 40(ra)
Current Store : [0x80000558] : sw t5, 44(ra) -- Store: [0x8000233c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -257', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000568]:KMMWT2 t6, t5, t4
	-[0x8000056c]:csrrs t5, vxsat, zero
	-[0x80000570]:sw t6, 48(ra)
Current Store : [0x80000574] : sw t5, 52(ra) -- Store: [0x80002344]:0x00000000




Last Coverpoint : ['rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000580]:KMMWT2 t6, t5, t4
	-[0x80000584]:csrrs t5, vxsat, zero
	-[0x80000588]:sw t6, 56(ra)
Current Store : [0x8000058c] : sw t5, 60(ra) -- Store: [0x8000234c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 1']
Last Code Sequence : 
	-[0x8000059c]:KMMWT2 t6, t5, t4
	-[0x800005a0]:csrrs t5, vxsat, zero
	-[0x800005a4]:sw t6, 64(ra)
Current Store : [0x800005a8] : sw t5, 68(ra) -- Store: [0x80002354]:0x00000000




Last Coverpoint : ['rs2_h1_val == 1']
Last Code Sequence : 
	-[0x800005b8]:KMMWT2 t6, t5, t4
	-[0x800005bc]:csrrs t5, vxsat, zero
	-[0x800005c0]:sw t6, 72(ra)
Current Store : [0x800005c4] : sw t5, 76(ra) -- Store: [0x8000235c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -1']
Last Code Sequence : 
	-[0x800005d4]:KMMWT2 t6, t5, t4
	-[0x800005d8]:csrrs t5, vxsat, zero
	-[0x800005dc]:sw t6, 80(ra)
Current Store : [0x800005e0] : sw t5, 84(ra) -- Store: [0x80002364]:0x00000000




Last Coverpoint : ['opcode : kmmwt2', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h1_val == 0', 'rs2_h0_val == -65', 'rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x800005f4]:KMMWT2 t6, t5, t4
	-[0x800005f8]:csrrs t5, vxsat, zero
	-[0x800005fc]:sw t6, 88(ra)
Current Store : [0x80000600] : sw t5, 92(ra) -- Store: [0x8000236c]:0x00000000




Last Coverpoint : ['rs2_h1_val == -1']
Last Code Sequence : 
	-[0x80000610]:KMMWT2 t6, t5, t4
	-[0x80000614]:csrrs t5, vxsat, zero
	-[0x80000618]:sw t6, 96(ra)
Current Store : [0x8000061c] : sw t5, 100(ra) -- Store: [0x80002374]:0x00000000




Last Coverpoint : ['rs2_h0_val == 32767']
Last Code Sequence : 
	-[0x80000630]:KMMWT2 t6, t5, t4
	-[0x80000634]:csrrs t5, vxsat, zero
	-[0x80000638]:sw t6, 104(ra)
Current Store : [0x8000063c] : sw t5, 108(ra) -- Store: [0x8000237c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -16385']
Last Code Sequence : 
	-[0x8000064c]:KMMWT2 t6, t5, t4
	-[0x80000650]:csrrs t5, vxsat, zero
	-[0x80000654]:sw t6, 112(ra)
Current Store : [0x80000658] : sw t5, 116(ra) -- Store: [0x80002384]:0x00000000




Last Coverpoint : ['rs2_h0_val == -2049']
Last Code Sequence : 
	-[0x80000668]:KMMWT2 t6, t5, t4
	-[0x8000066c]:csrrs t5, vxsat, zero
	-[0x80000670]:sw t6, 120(ra)
Current Store : [0x80000674] : sw t5, 124(ra) -- Store: [0x8000238c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -513']
Last Code Sequence : 
	-[0x80000688]:KMMWT2 t6, t5, t4
	-[0x8000068c]:csrrs t5, vxsat, zero
	-[0x80000690]:sw t6, 128(ra)
Current Store : [0x80000694] : sw t5, 132(ra) -- Store: [0x80002394]:0x00000000




Last Coverpoint : ['rs2_h0_val == -2', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x800006a4]:KMMWT2 t6, t5, t4
	-[0x800006a8]:csrrs t5, vxsat, zero
	-[0x800006ac]:sw t6, 136(ra)
Current Store : [0x800006b0] : sw t5, 140(ra) -- Store: [0x8000239c]:0x00000000




Last Coverpoint : ['rs2_h0_val == 8192', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x800006bc]:KMMWT2 t6, t5, t4
	-[0x800006c0]:csrrs t5, vxsat, zero
	-[0x800006c4]:sw t6, 144(ra)
Current Store : [0x800006c8] : sw t5, 148(ra) -- Store: [0x800023a4]:0x00000000




Last Coverpoint : ['rs2_h0_val == 4096']
Last Code Sequence : 
	-[0x800006d8]:KMMWT2 t6, t5, t4
	-[0x800006dc]:csrrs t5, vxsat, zero
	-[0x800006e0]:sw t6, 152(ra)
Current Store : [0x800006e4] : sw t5, 156(ra) -- Store: [0x800023ac]:0x00000000




Last Coverpoint : ['rs2_h0_val == 1024', 'rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x800006f8]:KMMWT2 t6, t5, t4
	-[0x800006fc]:csrrs t5, vxsat, zero
	-[0x80000700]:sw t6, 160(ra)
Current Store : [0x80000704] : sw t5, 164(ra) -- Store: [0x800023b4]:0x00000000




Last Coverpoint : ['rs2_h0_val == 512']
Last Code Sequence : 
	-[0x80000718]:KMMWT2 t6, t5, t4
	-[0x8000071c]:csrrs t5, vxsat, zero
	-[0x80000720]:sw t6, 168(ra)
Current Store : [0x80000724] : sw t5, 172(ra) -- Store: [0x800023bc]:0x00000000




Last Coverpoint : ['rs2_h0_val == 256', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000734]:KMMWT2 t6, t5, t4
	-[0x80000738]:csrrs t5, vxsat, zero
	-[0x8000073c]:sw t6, 176(ra)
Current Store : [0x80000740] : sw t5, 180(ra) -- Store: [0x800023c4]:0x00000000




Last Coverpoint : ['rs2_h0_val == 16']
Last Code Sequence : 
	-[0x80000750]:KMMWT2 t6, t5, t4
	-[0x80000754]:csrrs t5, vxsat, zero
	-[0x80000758]:sw t6, 184(ra)
Current Store : [0x8000075c] : sw t5, 188(ra) -- Store: [0x800023cc]:0x00000000




Last Coverpoint : ['rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000770]:KMMWT2 t6, t5, t4
	-[0x80000774]:csrrs t5, vxsat, zero
	-[0x80000778]:sw t6, 192(ra)
Current Store : [0x8000077c] : sw t5, 196(ra) -- Store: [0x800023d4]:0x00000000




Last Coverpoint : ['rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x80000790]:KMMWT2 t6, t5, t4
	-[0x80000794]:csrrs t5, vxsat, zero
	-[0x80000798]:sw t6, 200(ra)
Current Store : [0x8000079c] : sw t5, 204(ra) -- Store: [0x800023dc]:0x00000000




Last Coverpoint : ['rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x800007b0]:KMMWT2 t6, t5, t4
	-[0x800007b4]:csrrs t5, vxsat, zero
	-[0x800007b8]:sw t6, 208(ra)
Current Store : [0x800007bc] : sw t5, 212(ra) -- Store: [0x800023e4]:0x00000000




Last Coverpoint : ['rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x800007d0]:KMMWT2 t6, t5, t4
	-[0x800007d4]:csrrs t5, vxsat, zero
	-[0x800007d8]:sw t6, 216(ra)
Current Store : [0x800007dc] : sw t5, 220(ra) -- Store: [0x800023ec]:0x00000000




Last Coverpoint : ['rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x800007f0]:KMMWT2 t6, t5, t4
	-[0x800007f4]:csrrs t5, vxsat, zero
	-[0x800007f8]:sw t6, 224(ra)
Current Store : [0x800007fc] : sw t5, 228(ra) -- Store: [0x800023f4]:0x00000000




Last Coverpoint : ['rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x80000810]:KMMWT2 t6, t5, t4
	-[0x80000814]:csrrs t5, vxsat, zero
	-[0x80000818]:sw t6, 232(ra)
Current Store : [0x8000081c] : sw t5, 236(ra) -- Store: [0x800023fc]:0x00000000




Last Coverpoint : ['rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x80000830]:KMMWT2 t6, t5, t4
	-[0x80000834]:csrrs t5, vxsat, zero
	-[0x80000838]:sw t6, 240(ra)
Current Store : [0x8000083c] : sw t5, 244(ra) -- Store: [0x80002404]:0x00000000




Last Coverpoint : ['rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x80000850]:KMMWT2 t6, t5, t4
	-[0x80000854]:csrrs t5, vxsat, zero
	-[0x80000858]:sw t6, 248(ra)
Current Store : [0x8000085c] : sw t5, 252(ra) -- Store: [0x8000240c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x80000870]:KMMWT2 t6, t5, t4
	-[0x80000874]:csrrs t5, vxsat, zero
	-[0x80000878]:sw t6, 256(ra)
Current Store : [0x8000087c] : sw t5, 260(ra) -- Store: [0x80002414]:0x00000000




Last Coverpoint : ['rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x80000890]:KMMWT2 t6, t5, t4
	-[0x80000894]:csrrs t5, vxsat, zero
	-[0x80000898]:sw t6, 264(ra)
Current Store : [0x8000089c] : sw t5, 268(ra) -- Store: [0x8000241c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x800008ac]:KMMWT2 t6, t5, t4
	-[0x800008b0]:csrrs t5, vxsat, zero
	-[0x800008b4]:sw t6, 272(ra)
Current Store : [0x800008b8] : sw t5, 276(ra) -- Store: [0x80002424]:0x00000000




Last Coverpoint : ['rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x800008cc]:KMMWT2 t6, t5, t4
	-[0x800008d0]:csrrs t5, vxsat, zero
	-[0x800008d4]:sw t6, 280(ra)
Current Store : [0x800008d8] : sw t5, 284(ra) -- Store: [0x8000242c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x800008ec]:KMMWT2 t6, t5, t4
	-[0x800008f0]:csrrs t5, vxsat, zero
	-[0x800008f4]:sw t6, 288(ra)
Current Store : [0x800008f8] : sw t5, 292(ra) -- Store: [0x80002434]:0x00000000




Last Coverpoint : ['rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x80000908]:KMMWT2 t6, t5, t4
	-[0x8000090c]:csrrs t5, vxsat, zero
	-[0x80000910]:sw t6, 296(ra)
Current Store : [0x80000914] : sw t5, 300(ra) -- Store: [0x8000243c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -257']
Last Code Sequence : 
	-[0x80000924]:KMMWT2 t6, t5, t4
	-[0x80000928]:csrrs t5, vxsat, zero
	-[0x8000092c]:sw t6, 304(ra)
Current Store : [0x80000930] : sw t5, 308(ra) -- Store: [0x80002444]:0x00000000




Last Coverpoint : ['rs1_w0_val == -33']
Last Code Sequence : 
	-[0x80000940]:KMMWT2 t6, t5, t4
	-[0x80000944]:csrrs t5, vxsat, zero
	-[0x80000948]:sw t6, 312(ra)
Current Store : [0x8000094c] : sw t5, 316(ra) -- Store: [0x8000244c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -17']
Last Code Sequence : 
	-[0x80000958]:KMMWT2 t6, t5, t4
	-[0x8000095c]:csrrs t5, vxsat, zero
	-[0x80000960]:sw t6, 320(ra)
Current Store : [0x80000964] : sw t5, 324(ra) -- Store: [0x80002454]:0x00000000




Last Coverpoint : ['rs1_w0_val == -9']
Last Code Sequence : 
	-[0x80000970]:KMMWT2 t6, t5, t4
	-[0x80000974]:csrrs t5, vxsat, zero
	-[0x80000978]:sw t6, 328(ra)
Current Store : [0x8000097c] : sw t5, 332(ra) -- Store: [0x8000245c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -5']
Last Code Sequence : 
	-[0x8000098c]:KMMWT2 t6, t5, t4
	-[0x80000990]:csrrs t5, vxsat, zero
	-[0x80000994]:sw t6, 336(ra)
Current Store : [0x80000998] : sw t5, 340(ra) -- Store: [0x80002464]:0x00000000




Last Coverpoint : ['rs1_w0_val == -3']
Last Code Sequence : 
	-[0x800009a8]:KMMWT2 t6, t5, t4
	-[0x800009ac]:csrrs t5, vxsat, zero
	-[0x800009b0]:sw t6, 344(ra)
Current Store : [0x800009b4] : sw t5, 348(ra) -- Store: [0x8000246c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x800009c4]:KMMWT2 t6, t5, t4
	-[0x800009c8]:csrrs t5, vxsat, zero
	-[0x800009cc]:sw t6, 352(ra)
Current Store : [0x800009d0] : sw t5, 356(ra) -- Store: [0x80002474]:0x00000000




Last Coverpoint : ['rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x800009e0]:KMMWT2 t6, t5, t4
	-[0x800009e4]:csrrs t5, vxsat, zero
	-[0x800009e8]:sw t6, 360(ra)
Current Store : [0x800009ec] : sw t5, 364(ra) -- Store: [0x8000247c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x800009fc]:KMMWT2 t6, t5, t4
	-[0x80000a00]:csrrs t5, vxsat, zero
	-[0x80000a04]:sw t6, 368(ra)
Current Store : [0x80000a08] : sw t5, 372(ra) -- Store: [0x80002484]:0x00000000




Last Coverpoint : ['rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000a18]:KMMWT2 t6, t5, t4
	-[0x80000a1c]:csrrs t5, vxsat, zero
	-[0x80000a20]:sw t6, 376(ra)
Current Store : [0x80000a24] : sw t5, 380(ra) -- Store: [0x8000248c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000a34]:KMMWT2 t6, t5, t4
	-[0x80000a38]:csrrs t5, vxsat, zero
	-[0x80000a3c]:sw t6, 384(ra)
Current Store : [0x80000a40] : sw t5, 388(ra) -- Store: [0x80002494]:0x00000000




Last Coverpoint : ['rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000a4c]:KMMWT2 t6, t5, t4
	-[0x80000a50]:csrrs t5, vxsat, zero
	-[0x80000a54]:sw t6, 392(ra)
Current Store : [0x80000a58] : sw t5, 396(ra) -- Store: [0x8000249c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000a68]:KMMWT2 t6, t5, t4
	-[0x80000a6c]:csrrs t5, vxsat, zero
	-[0x80000a70]:sw t6, 400(ra)
Current Store : [0x80000a74] : sw t5, 404(ra) -- Store: [0x800024a4]:0x00000000




Last Coverpoint : ['rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000a84]:KMMWT2 t6, t5, t4
	-[0x80000a88]:csrrs t5, vxsat, zero
	-[0x80000a8c]:sw t6, 408(ra)
Current Store : [0x80000a90] : sw t5, 412(ra) -- Store: [0x800024ac]:0x00000000




Last Coverpoint : ['rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000aa0]:KMMWT2 t6, t5, t4
	-[0x80000aa4]:csrrs t5, vxsat, zero
	-[0x80000aa8]:sw t6, 416(ra)
Current Store : [0x80000aac] : sw t5, 420(ra) -- Store: [0x800024b4]:0x00000000




Last Coverpoint : ['rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000abc]:KMMWT2 t6, t5, t4
	-[0x80000ac0]:csrrs t5, vxsat, zero
	-[0x80000ac4]:sw t6, 424(ra)
Current Store : [0x80000ac8] : sw t5, 428(ra) -- Store: [0x800024bc]:0x00000000




Last Coverpoint : ['rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000ad8]:KMMWT2 t6, t5, t4
	-[0x80000adc]:csrrs t5, vxsat, zero
	-[0x80000ae0]:sw t6, 432(ra)
Current Store : [0x80000ae4] : sw t5, 436(ra) -- Store: [0x800024c4]:0x00000000




Last Coverpoint : ['rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000af0]:KMMWT2 t6, t5, t4
	-[0x80000af4]:csrrs t5, vxsat, zero
	-[0x80000af8]:sw t6, 440(ra)
Current Store : [0x80000afc] : sw t5, 444(ra) -- Store: [0x800024cc]:0x00000000




Last Coverpoint : ['rs1_w0_val == -2147483648']
Last Code Sequence : 
	-[0x80000b08]:KMMWT2 t6, t5, t4
	-[0x80000b0c]:csrrs t5, vxsat, zero
	-[0x80000b10]:sw t6, 448(ra)
Current Store : [0x80000b14] : sw t5, 452(ra) -- Store: [0x800024d4]:0x00000000




Last Coverpoint : ['rs2_h1_val == 21845']
Last Code Sequence : 
	-[0x80000b28]:KMMWT2 t6, t5, t4
	-[0x80000b2c]:csrrs t5, vxsat, zero
	-[0x80000b30]:sw t6, 456(ra)
Current Store : [0x80000b34] : sw t5, 460(ra) -- Store: [0x800024dc]:0x00000000




Last Coverpoint : ['opcode : kmmwt2', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h1_val == -8193', 'rs2_h0_val == 8', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000b44]:KMMWT2 t6, t5, t4
	-[0x80000b48]:csrrs t5, vxsat, zero
	-[0x80000b4c]:sw t6, 464(ra)
Current Store : [0x80000b50] : sw t5, 468(ra) -- Store: [0x800024e4]:0x00000000




Last Coverpoint : ['opcode : kmmwt2', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h1_val == -65', 'rs2_h0_val == 2048', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000b60]:KMMWT2 t6, t5, t4
	-[0x80000b64]:csrrs t5, vxsat, zero
	-[0x80000b68]:sw t6, 472(ra)
Current Store : [0x80000b6c] : sw t5, 476(ra) -- Store: [0x800024ec]:0x00000000





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

|s.no|        signature         |                                                                             coverpoints                                                                             |                                                    code                                                     |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : kmmwt2<br> - rs1 : x22<br> - rs2 : x22<br> - rd : x22<br> - rs1 == rs2 == rd<br> - rs2_h0_val == 16384<br>                                                |[0x80000114]:KMMWT2 s6, s6, s6<br> [0x80000118]:csrrs s6, vxsat, zero<br> [0x8000011c]:sw s6, 0(t1)<br>      |
|   2|[0x80002218]<br>0x38E46C72|- rs1 : x13<br> - rs2 : x13<br> - rd : x3<br> - rs1 == rs2 != rd<br> - rs2_h1_val == -21846<br> - rs2_h0_val == 2048<br>                                             |[0x80000130]:KMMWT2 gp, a3, a3<br> [0x80000134]:csrrs a3, vxsat, zero<br> [0x80000138]:sw gp, 8(t1)<br>      |
|   3|[0x80002220]<br>0x00000000|- rs1 : x20<br> - rs2 : x0<br> - rd : x29<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_w0_val == -2097153<br> |[0x80000150]:KMMWT2 t4, s4, zero<br> [0x80000154]:csrrs s4, vxsat, zero<br> [0x80000158]:sw t4, 16(t1)<br>   |
|   4|[0x80002228]<br>0xFFFFFFFE|- rs1 : x24<br> - rs2 : x21<br> - rd : x21<br> - rs2 == rd != rs1<br> - rs2_h1_val == 32767<br> - rs1_w0_val == -2<br>                                               |[0x8000016c]:KMMWT2 s5, s8, s5<br> [0x80000170]:csrrs s8, vxsat, zero<br> [0x80000174]:sw s5, 24(t1)<br>     |
|   5|[0x80002230]<br>0x00000000|- rs1 : x31<br> - rs2 : x7<br> - rd : x31<br> - rs1 == rd != rs2<br> - rs2_h1_val == -16385<br> - rs1_w0_val == -536870913<br>                                       |[0x8000018c]:KMMWT2 t6, t6, t2<br> [0x80000190]:csrrs t6, vxsat, zero<br> [0x80000194]:sw t6, 32(t1)<br>     |
|   6|[0x80002238]<br>0x00000000|- rs1 : x0<br> - rs2 : x12<br> - rd : x2<br> - rs2_h1_val == -8193<br> - rs2_h0_val == 8<br> - rs1_w0_val == 0<br>                                                   |[0x800001a8]:KMMWT2 sp, zero, a2<br> [0x800001ac]:csrrs zero, vxsat, zero<br> [0x800001b0]:sw sp, 40(t1)<br> |
|   7|[0x80002240]<br>0x00000040|- rs1 : x21<br> - rs2 : x14<br> - rd : x7<br> - rs2_h1_val == -4097<br> - rs2_h0_val == 32<br> - rs1_w0_val == -513<br>                                              |[0x800001c4]:KMMWT2 t2, s5, a4<br> [0x800001c8]:csrrs s5, vxsat, zero<br> [0x800001cc]:sw t2, 48(t1)<br>     |
|   8|[0x80002248]<br>0x00000000|- rs1 : x19<br> - rs2 : x17<br> - rd : x11<br> - rs2_h1_val == -2049<br> - rs2_h0_val == -65<br>                                                                     |[0x800001e0]:KMMWT2 a1, s3, a7<br> [0x800001e4]:csrrs s3, vxsat, zero<br> [0x800001e8]:sw a1, 56(t1)<br>     |
|   9|[0x80002250]<br>0x00000401|- rs1 : x8<br> - rs2 : x23<br> - rd : x17<br> - rs2_h1_val == -1025<br> - rs2_h0_val == 128<br> - rs1_w0_val == -32769<br>                                           |[0x80000200]:KMMWT2 a7, fp, s7<br> [0x80000204]:csrrs fp, vxsat, zero<br> [0x80000208]:sw a7, 64(t1)<br>     |
|  10|[0x80002258]<br>0xFDFF0000|- rs1 : x29<br> - rs2 : x16<br> - rd : x28<br> - rs2_h1_val == -513<br> - rs1_w0_val == 2147483647<br>                                                               |[0x80000220]:KMMWT2 t3, t4, a6<br> [0x80000224]:csrrs t4, vxsat, zero<br> [0x80000228]:sw t3, 72(t1)<br>     |
|  11|[0x80002260]<br>0x00000000|- rs1 : x26<br> - rs2 : x25<br> - rd : x18<br> - rs2_h1_val == -257<br> - rs2_h0_val == -9<br>                                                                       |[0x8000023c]:KMMWT2 s2, s10, s9<br> [0x80000240]:csrrs s10, vxsat, zero<br> [0x80000244]:sw s2, 80(t1)<br>   |
|  12|[0x80002268]<br>0xFFEFE000|- rs1 : x25<br> - rs2 : x2<br> - rd : x26<br> - rs2_h1_val == -129<br> - rs2_h0_val == -33<br> - rs1_w0_val == 268435456<br>                                         |[0x80000258]:KMMWT2 s10, s9, sp<br> [0x8000025c]:csrrs s9, vxsat, zero<br> [0x80000260]:sw s10, 88(t1)<br>   |
|  13|[0x80002270]<br>0x00000000|- rs1 : x16<br> - rs2 : x4<br> - rd : x0<br> - rs2_h1_val == -65<br> - rs1_w0_val == 8192<br>                                                                        |[0x80000274]:KMMWT2 zero, a6, tp<br> [0x80000278]:csrrs a6, vxsat, zero<br> [0x8000027c]:sw zero, 96(t1)<br> |
|  14|[0x80002278]<br>0x00021000|- rs1 : x2<br> - rs2 : x1<br> - rd : x25<br> - rs2_h1_val == -33<br> - rs2_h0_val == 1<br> - rs1_w0_val == -134217729<br>                                            |[0x80000294]:KMMWT2 s9, sp, ra<br> [0x80000298]:csrrs sp, vxsat, zero<br> [0x8000029c]:sw s9, 104(t1)<br>    |
|  15|[0x80002280]<br>0x00000000|- rs1 : x18<br> - rs2 : x20<br> - rd : x8<br> - rs2_h1_val == -17<br> - rs2_h0_val == -1<br>                                                                         |[0x800002b0]:KMMWT2 fp, s2, s4<br> [0x800002b4]:csrrs s2, vxsat, zero<br> [0x800002b8]:sw fp, 112(t1)<br>    |
|  16|[0x80002288]<br>0x00000090|- rs1 : x5<br> - rs2 : x11<br> - rd : x30<br> - rs2_h1_val == -9<br> - rs2_h0_val == 2<br> - rs1_w0_val == -524289<br>                                               |[0x800002d0]:KMMWT2 t5, t0, a1<br> [0x800002d4]:csrrs t0, vxsat, zero<br> [0x800002d8]:sw t5, 120(t1)<br>    |
|  17|[0x80002290]<br>0xFFFFFFFF|- rs1 : x9<br> - rs2 : x5<br> - rd : x1<br> - rs2_h1_val == -5<br> - rs1_w0_val == 32<br>                                                                            |[0x800002ec]:KMMWT2 ra, s1, t0<br> [0x800002f0]:csrrs s1, vxsat, zero<br> [0x800002f4]:sw ra, 128(t1)<br>    |
|  18|[0x80002298]<br>0x00000000|- rs1 : x14<br> - rs2 : x30<br> - rd : x5<br> - rs2_h1_val == -3<br> - rs2_h0_val == -8193<br> - rs1_w0_val == -65<br>                                               |[0x80000310]:KMMWT2 t0, a4, t5<br> [0x80000314]:csrrs a4, vxsat, zero<br> [0x80000318]:sw t0, 0(sp)<br>      |
|  19|[0x800022a0]<br>0x00000000|- rs1 : x1<br> - rs2 : x31<br> - rd : x12<br> - rs2_h1_val == -2<br> - rs2_h0_val == -21846<br>                                                                      |[0x8000032c]:KMMWT2 a2, ra, t6<br> [0x80000330]:csrrs ra, vxsat, zero<br> [0x80000334]:sw a2, 8(sp)<br>      |
|  20|[0x800022a8]<br>0x00040001|- rs1 : x15<br> - rs2 : x9<br> - rd : x20<br> - rs2_h1_val == -32768<br> - rs2_h0_val == 21845<br> - rs1_w0_val == -262145<br>                                       |[0x8000034c]:KMMWT2 s4, a5, s1<br> [0x80000350]:csrrs a5, vxsat, zero<br> [0x80000354]:sw s4, 16(sp)<br>     |
|  21|[0x800022b0]<br>0xFFFFFFBF|- rs1 : x17<br> - rs2 : x8<br> - rd : x10<br> - rs2_h1_val == 16384<br> - rs1_w0_val == -129<br>                                                                     |[0x80000368]:KMMWT2 a0, a7, fp<br> [0x8000036c]:csrrs a7, vxsat, zero<br> [0x80000370]:sw a0, 24(sp)<br>     |
|  22|[0x800022b8]<br>0x00000004|- rs1 : x30<br> - rs2 : x24<br> - rd : x14<br> - rs2_h1_val == 8192<br> - rs1_w0_val == 16<br>                                                                       |[0x80000384]:KMMWT2 a4, t5, s8<br> [0x80000388]:csrrs t5, vxsat, zero<br> [0x8000038c]:sw a4, 32(sp)<br>     |
|  23|[0x800022c0]<br>0xFFFFFBFF|- rs1 : x6<br> - rs2 : x3<br> - rd : x24<br> - rs2_h1_val == 4096<br> - rs1_w0_val == -8193<br>                                                                      |[0x800003a4]:KMMWT2 s8, t1, gp<br> [0x800003a8]:csrrs t1, vxsat, zero<br> [0x800003ac]:sw s8, 40(sp)<br>     |
|  24|[0x800022c8]<br>0x00000400|- rs1 : x12<br> - rs2 : x29<br> - rd : x6<br> - rs2_h1_val == 2048<br> - rs1_w0_val == 16384<br>                                                                     |[0x800003bc]:KMMWT2 t1, a2, t4<br> [0x800003c0]:csrrs a2, vxsat, zero<br> [0x800003c4]:sw t1, 48(sp)<br>     |
|  25|[0x800022d0]<br>0xFFFF7FFF|- rs1 : x27<br> - rs2 : x6<br> - rd : x13<br> - rs2_h1_val == 1024<br> - rs2_h0_val == -3<br> - rs1_w0_val == -1048577<br>                                           |[0x800003dc]:KMMWT2 a3, s11, t1<br> [0x800003e0]:csrrs s11, vxsat, zero<br> [0x800003e4]:sw a3, 56(sp)<br>   |
|  26|[0x800022d8]<br>0xFF000000|- rs1 : x10<br> - rs2 : x19<br> - rd : x15<br> - rs2_h1_val == 512<br> - rs2_h0_val == -4097<br>                                                                     |[0x800003f8]:KMMWT2 a5, a0, s3<br> [0x800003fc]:csrrs a0, vxsat, zero<br> [0x80000400]:sw a5, 64(sp)<br>     |
|  27|[0x800022e0]<br>0x00800000|- rs1 : x4<br> - rs2 : x28<br> - rd : x27<br> - rs2_h1_val == 256<br> - rs1_w0_val == 1073741824<br>                                                                 |[0x80000414]:KMMWT2 s11, tp, t3<br> [0x80000418]:csrrs tp, vxsat, zero<br> [0x8000041c]:sw s11, 72(sp)<br>   |
|  28|[0x800022e8]<br>0x00100000|- rs1 : x7<br> - rs2 : x15<br> - rd : x9<br> - rs2_h1_val == 128<br> - rs2_h0_val == -32768<br>                                                                      |[0x8000042c]:KMMWT2 s1, t2, a5<br> [0x80000430]:csrrs t2, vxsat, zero<br> [0x80000434]:sw s1, 80(sp)<br>     |
|  29|[0x800022f0]<br>0x00008000|- rs1 : x23<br> - rs2 : x27<br> - rd : x4<br> - rs2_h1_val == 64<br> - rs1_w0_val == 16777216<br>                                                                    |[0x80000448]:KMMWT2 tp, s7, s11<br> [0x8000044c]:csrrs s7, vxsat, zero<br> [0x80000450]:sw tp, 88(sp)<br>    |
|  30|[0x800022f8]<br>0x00000000|- rs1 : x28<br> - rs2 : x26<br> - rd : x19<br> - rs2_h1_val == 32<br>                                                                                                |[0x80000464]:KMMWT2 s3, t3, s10<br> [0x80000468]:csrrs t3, vxsat, zero<br> [0x8000046c]:sw s3, 96(sp)<br>    |
|  31|[0x80002300]<br>0x00000200|- rs1 : x3<br> - rs2 : x18<br> - rd : x16<br> - rs2_h1_val == 16<br> - rs2_h0_val == -1025<br> - rs1_w0_val == 1048576<br>                                           |[0x80000480]:KMMWT2 a6, gp, s2<br> [0x80000484]:csrrs gp, vxsat, zero<br> [0x80000488]:sw a6, 104(sp)<br>    |
|  32|[0x80002308]<br>0x00000800|- rs1 : x11<br> - rs2 : x10<br> - rd : x23<br> - rs2_h1_val == 8<br> - rs2_h0_val == -129<br> - rs1_w0_val == 8388608<br>                                            |[0x8000049c]:KMMWT2 s7, a1, a0<br> [0x800004a0]:csrrs a1, vxsat, zero<br> [0x800004a4]:sw s7, 112(sp)<br>    |
|  33|[0x80002310]<br>0x00000000|- rs2_h1_val == 4<br>                                                                                                                                                |[0x800004c0]:KMMWT2 t6, t5, t4<br> [0x800004c4]:csrrs t5, vxsat, zero<br> [0x800004c8]:sw t6, 0(ra)<br>      |
|  34|[0x80002318]<br>0xFFFFFFFF|- rs2_h1_val == 2<br> - rs2_h0_val == -17<br>                                                                                                                        |[0x800004dc]:KMMWT2 t6, t5, t4<br> [0x800004e0]:csrrs t5, vxsat, zero<br> [0x800004e4]:sw t6, 8(ra)<br>      |
|  35|[0x80002320]<br>0xFFFFFFFD|- rs2_h0_val == -5<br> - rs1_w0_val == 512<br>                                                                                                                       |[0x800004f8]:KMMWT2 t6, t5, t4<br> [0x800004fc]:csrrs t5, vxsat, zero<br> [0x80000500]:sw t6, 16(ra)<br>     |
|  36|[0x80002328]<br>0x00000010|- rs2_h0_val == 64<br> - rs1_w0_val == 256<br>                                                                                                                       |[0x80000514]:KMMWT2 t6, t5, t4<br> [0x80000518]:csrrs t5, vxsat, zero<br> [0x8000051c]:sw t6, 24(ra)<br>     |
|  37|[0x80002330]<br>0x00000001|- rs2_h0_val == 4<br> - rs1_w0_val == 64<br>                                                                                                                         |[0x80000530]:KMMWT2 t6, t5, t4<br> [0x80000534]:csrrs t5, vxsat, zero<br> [0x80000538]:sw t6, 32(ra)<br>     |
|  38|[0x80002338]<br>0xFFFFFFFF|- rs1_w0_val == 8<br>                                                                                                                                                |[0x8000054c]:KMMWT2 t6, t5, t4<br> [0x80000550]:csrrs t5, vxsat, zero<br> [0x80000554]:sw t6, 40(ra)<br>     |
|  39|[0x80002340]<br>0xFFFFFFFF|- rs2_h0_val == -257<br> - rs1_w0_val == 4<br>                                                                                                                       |[0x80000568]:KMMWT2 t6, t5, t4<br> [0x8000056c]:csrrs t5, vxsat, zero<br> [0x80000570]:sw t6, 48(ra)<br>     |
|  40|[0x80002348]<br>0x00000000|- rs1_w0_val == 2<br>                                                                                                                                                |[0x80000580]:KMMWT2 t6, t5, t4<br> [0x80000584]:csrrs t5, vxsat, zero<br> [0x80000588]:sw t6, 56(ra)<br>     |
|  41|[0x80002350]<br>0xFFFFFFFF|- rs1_w0_val == 1<br>                                                                                                                                                |[0x8000059c]:KMMWT2 t6, t5, t4<br> [0x800005a0]:csrrs t5, vxsat, zero<br> [0x800005a4]:sw t6, 64(ra)<br>     |
|  42|[0x80002358]<br>0x00000000|- rs2_h1_val == 1<br>                                                                                                                                                |[0x800005b8]:KMMWT2 t6, t5, t4<br> [0x800005bc]:csrrs t5, vxsat, zero<br> [0x800005c0]:sw t6, 72(ra)<br>     |
|  43|[0x80002360]<br>0x00000000|- rs1_w0_val == -1<br>                                                                                                                                               |[0x800005d4]:KMMWT2 t6, t5, t4<br> [0x800005d8]:csrrs t5, vxsat, zero<br> [0x800005dc]:sw t6, 80(ra)<br>     |
|  44|[0x80002370]<br>0x00000000|- rs2_h1_val == -1<br>                                                                                                                                               |[0x80000610]:KMMWT2 t6, t5, t4<br> [0x80000614]:csrrs t5, vxsat, zero<br> [0x80000618]:sw t6, 96(ra)<br>     |
|  45|[0x80002378]<br>0xFFFC0000|- rs2_h0_val == 32767<br>                                                                                                                                            |[0x80000630]:KMMWT2 t6, t5, t4<br> [0x80000634]:csrrs t5, vxsat, zero<br> [0x80000638]:sw t6, 104(ra)<br>    |
|  46|[0x80002380]<br>0xFFFFFFFF|- rs2_h0_val == -16385<br>                                                                                                                                           |[0x8000064c]:KMMWT2 t6, t5, t4<br> [0x80000650]:csrrs t5, vxsat, zero<br> [0x80000654]:sw t6, 112(ra)<br>    |
|  47|[0x80002388]<br>0x00000000|- rs2_h0_val == -2049<br>                                                                                                                                            |[0x80000668]:KMMWT2 t6, t5, t4<br> [0x8000066c]:csrrs t5, vxsat, zero<br> [0x80000670]:sw t6, 120(ra)<br>    |
|  48|[0x80002390]<br>0x00005000|- rs2_h0_val == -513<br>                                                                                                                                             |[0x80000688]:KMMWT2 t6, t5, t4<br> [0x8000068c]:csrrs t5, vxsat, zero<br> [0x80000690]:sw t6, 128(ra)<br>    |
|  49|[0x80002398]<br>0xFFFFFFFD|- rs2_h0_val == -2<br> - rs1_w0_val == 128<br>                                                                                                                       |[0x800006a4]:KMMWT2 t6, t5, t4<br> [0x800006a8]:csrrs t5, vxsat, zero<br> [0x800006ac]:sw t6, 136(ra)<br>    |
|  50|[0x800023a0]<br>0x00000010|- rs2_h0_val == 8192<br> - rs1_w0_val == 65536<br>                                                                                                                   |[0x800006bc]:KMMWT2 t6, t5, t4<br> [0x800006c0]:csrrs t5, vxsat, zero<br> [0x800006c4]:sw t6, 144(ra)<br>    |
|  51|[0x800023a8]<br>0x00000001|- rs2_h0_val == 4096<br>                                                                                                                                             |[0x800006d8]:KMMWT2 t6, t5, t4<br> [0x800006dc]:csrrs t5, vxsat, zero<br> [0x800006e0]:sw t6, 152(ra)<br>    |
|  52|[0x800023b0]<br>0xFFF9FFFF|- rs2_h0_val == 1024<br> - rs1_w0_val == -1431655766<br>                                                                                                             |[0x800006f8]:KMMWT2 t6, t5, t4<br> [0x800006fc]:csrrs t5, vxsat, zero<br> [0x80000700]:sw t6, 160(ra)<br>    |
|  53|[0x800023b8]<br>0x00000810|- rs2_h0_val == 512<br>                                                                                                                                              |[0x80000718]:KMMWT2 t6, t5, t4<br> [0x8000071c]:csrrs t5, vxsat, zero<br> [0x80000720]:sw t6, 168(ra)<br>    |
|  54|[0x800023c0]<br>0x00001800|- rs2_h0_val == 256<br> - rs1_w0_val == 33554432<br>                                                                                                                 |[0x80000734]:KMMWT2 t6, t5, t4<br> [0x80000738]:csrrs t5, vxsat, zero<br> [0x8000073c]:sw t6, 176(ra)<br>    |
|  55|[0x800023c8]<br>0xFFFFFFEF|- rs2_h0_val == 16<br>                                                                                                                                               |[0x80000750]:KMMWT2 t6, t5, t4<br> [0x80000754]:csrrs t5, vxsat, zero<br> [0x80000758]:sw t6, 184(ra)<br>    |
|  56|[0x800023d0]<br>0x00015555|- rs1_w0_val == 1431655765<br>                                                                                                                                       |[0x80000770]:KMMWT2 t6, t5, t4<br> [0x80000774]:csrrs t5, vxsat, zero<br> [0x80000778]:sw t6, 192(ra)<br>    |
|  57|[0x800023d8]<br>0xFDFFFFFF|- rs1_w0_val == -1073741825<br>                                                                                                                                      |[0x80000790]:KMMWT2 t6, t5, t4<br> [0x80000794]:csrrs t5, vxsat, zero<br> [0x80000798]:sw t6, 200(ra)<br>    |
|  58|[0x800023e0]<br>0x0AAAC000|- rs1_w0_val == -268435457<br>                                                                                                                                       |[0x800007b0]:KMMWT2 t6, t5, t4<br> [0x800007b4]:csrrs t5, vxsat, zero<br> [0x800007b8]:sw t6, 208(ra)<br>    |
|  59|[0x800023e8]<br>0x00003000|- rs1_w0_val == -67108865<br>                                                                                                                                        |[0x800007d0]:KMMWT2 t6, t5, t4<br> [0x800007d4]:csrrs t5, vxsat, zero<br> [0x800007d8]:sw t6, 216(ra)<br>    |
|  60|[0x800023f0]<br>0x00001000|- rs1_w0_val == -33554433<br>                                                                                                                                        |[0x800007f0]:KMMWT2 t6, t5, t4<br> [0x800007f4]:csrrs t5, vxsat, zero<br> [0x800007f8]:sw t6, 224(ra)<br>    |
|  61|[0x800023f8]<br>0xFFFFFDFF|- rs1_w0_val == -16777217<br>                                                                                                                                        |[0x80000810]:KMMWT2 t6, t5, t4<br> [0x80000814]:csrrs t5, vxsat, zero<br> [0x80000818]:sw t6, 232(ra)<br>    |
|  62|[0x80002400]<br>0x00080100|- rs1_w0_val == -8388609<br>                                                                                                                                         |[0x80000830]:KMMWT2 t6, t5, t4<br> [0x80000834]:csrrs t5, vxsat, zero<br> [0x80000838]:sw t6, 240(ra)<br>    |
|  63|[0x80002408]<br>0x00000180|- rs1_w0_val == -4194305<br>                                                                                                                                         |[0x80000850]:KMMWT2 t6, t5, t4<br> [0x80000854]:csrrs t5, vxsat, zero<br> [0x80000858]:sw t6, 248(ra)<br>    |
|  64|[0x80002410]<br>0x00000008|- rs1_w0_val == -131073<br>                                                                                                                                          |[0x80000870]:KMMWT2 t6, t5, t4<br> [0x80000874]:csrrs t5, vxsat, zero<br> [0x80000878]:sw t6, 256(ra)<br>    |
|  65|[0x80002418]<br>0x00000000|- rs1_w0_val == -65537<br>                                                                                                                                           |[0x80000890]:KMMWT2 t6, t5, t4<br> [0x80000894]:csrrs t5, vxsat, zero<br> [0x80000898]:sw t6, 264(ra)<br>    |
|  66|[0x80002420]<br>0xFFFFE000|- rs1_w0_val == -16385<br>                                                                                                                                           |[0x800008ac]:KMMWT2 t6, t5, t4<br> [0x800008b0]:csrrs t5, vxsat, zero<br> [0x800008b4]:sw t6, 272(ra)<br>    |
|  67|[0x80002428]<br>0xFFFFFFDF|- rs1_w0_val == -4097<br>                                                                                                                                            |[0x800008cc]:KMMWT2 t6, t5, t4<br> [0x800008d0]:csrrs t5, vxsat, zero<br> [0x800008d4]:sw t6, 280(ra)<br>    |
|  68|[0x80002430]<br>0x00000040|- rs1_w0_val == -2049<br>                                                                                                                                            |[0x800008ec]:KMMWT2 t6, t5, t4<br> [0x800008f0]:csrrs t5, vxsat, zero<br> [0x800008f4]:sw t6, 288(ra)<br>    |
|  69|[0x80002438]<br>0x00000000|- rs1_w0_val == -1025<br>                                                                                                                                            |[0x80000908]:KMMWT2 t6, t5, t4<br> [0x8000090c]:csrrs t5, vxsat, zero<br> [0x80000910]:sw t6, 296(ra)<br>    |
|  70|[0x80002440]<br>0xFFFFFFFF|- rs1_w0_val == -257<br>                                                                                                                                             |[0x80000924]:KMMWT2 t6, t5, t4<br> [0x80000928]:csrrs t5, vxsat, zero<br> [0x8000092c]:sw t6, 304(ra)<br>    |
|  71|[0x80002448]<br>0x00000010|- rs1_w0_val == -33<br>                                                                                                                                              |[0x80000940]:KMMWT2 t6, t5, t4<br> [0x80000944]:csrrs t5, vxsat, zero<br> [0x80000948]:sw t6, 312(ra)<br>    |
|  72|[0x80002450]<br>0x00000000|- rs1_w0_val == -17<br>                                                                                                                                              |[0x80000958]:KMMWT2 t6, t5, t4<br> [0x8000095c]:csrrs t5, vxsat, zero<br> [0x80000960]:sw t6, 320(ra)<br>    |
|  73|[0x80002458]<br>0xFFFFFFFF|- rs1_w0_val == -9<br>                                                                                                                                               |[0x80000970]:KMMWT2 t6, t5, t4<br> [0x80000974]:csrrs t5, vxsat, zero<br> [0x80000978]:sw t6, 328(ra)<br>    |
|  74|[0x80002460]<br>0x00000000|- rs1_w0_val == -5<br>                                                                                                                                               |[0x8000098c]:KMMWT2 t6, t5, t4<br> [0x80000990]:csrrs t5, vxsat, zero<br> [0x80000994]:sw t6, 336(ra)<br>    |
|  75|[0x80002468]<br>0x00000000|- rs1_w0_val == -3<br>                                                                                                                                               |[0x800009a8]:KMMWT2 t6, t5, t4<br> [0x800009ac]:csrrs t5, vxsat, zero<br> [0x800009b0]:sw t6, 344(ra)<br>    |
|  76|[0x80002470]<br>0xFFFE0000|- rs1_w0_val == 536870912<br>                                                                                                                                        |[0x800009c4]:KMMWT2 t6, t5, t4<br> [0x800009c8]:csrrs t5, vxsat, zero<br> [0x800009cc]:sw t6, 352(ra)<br>    |
|  77|[0x80002478]<br>0x04000000|- rs1_w0_val == 134217728<br>                                                                                                                                        |[0x800009e0]:KMMWT2 t6, t5, t4<br> [0x800009e4]:csrrs t5, vxsat, zero<br> [0x800009e8]:sw t6, 360(ra)<br>    |
|  78|[0x80002480]<br>0x00000000|- rs1_w0_val == 67108864<br>                                                                                                                                         |[0x800009fc]:KMMWT2 t6, t5, t4<br> [0x80000a00]:csrrs t5, vxsat, zero<br> [0x80000a04]:sw t6, 368(ra)<br>    |
|  79|[0x80002488]<br>0x00000400|- rs1_w0_val == 4194304<br>                                                                                                                                          |[0x80000a18]:KMMWT2 t6, t5, t4<br> [0x80000a1c]:csrrs t5, vxsat, zero<br> [0x80000a20]:sw t6, 376(ra)<br>    |
|  80|[0x80002490]<br>0xFFFFFDC0|- rs1_w0_val == 2097152<br>                                                                                                                                          |[0x80000a34]:KMMWT2 t6, t5, t4<br> [0x80000a38]:csrrs t5, vxsat, zero<br> [0x80000a3c]:sw t6, 384(ra)<br>    |
|  81|[0x80002498]<br>0xFFFEFFF0|- rs1_w0_val == 524288<br>                                                                                                                                           |[0x80000a4c]:KMMWT2 t6, t5, t4<br> [0x80000a50]:csrrs t5, vxsat, zero<br> [0x80000a54]:sw t6, 392(ra)<br>    |
|  82|[0x800024a0]<br>0xFFFFF7F8|- rs1_w0_val == 262144<br>                                                                                                                                           |[0x80000a68]:KMMWT2 t6, t5, t4<br> [0x80000a6c]:csrrs t5, vxsat, zero<br> [0x80000a70]:sw t6, 400(ra)<br>    |
|  83|[0x800024a8]<br>0xFFFFFDFC|- rs1_w0_val == 131072<br>                                                                                                                                           |[0x80000a84]:KMMWT2 t6, t5, t4<br> [0x80000a88]:csrrs t5, vxsat, zero<br> [0x80000a8c]:sw t6, 408(ra)<br>    |
|  84|[0x800024b0]<br>0xFFFFEFFF|- rs1_w0_val == 32768<br>                                                                                                                                            |[0x80000aa0]:KMMWT2 t6, t5, t4<br> [0x80000aa4]:csrrs t5, vxsat, zero<br> [0x80000aa8]:sw t6, 416(ra)<br>    |
|  85|[0x800024b8]<br>0x00000000|- rs1_w0_val == 4096<br>                                                                                                                                             |[0x80000abc]:KMMWT2 t6, t5, t4<br> [0x80000ac0]:csrrs t5, vxsat, zero<br> [0x80000ac4]:sw t6, 424(ra)<br>    |
|  86|[0x800024c0]<br>0xFFFFF800|- rs1_w0_val == 2048<br>                                                                                                                                             |[0x80000ad8]:KMMWT2 t6, t5, t4<br> [0x80000adc]:csrrs t5, vxsat, zero<br> [0x80000ae0]:sw t6, 432(ra)<br>    |
|  87|[0x800024c8]<br>0x00000000|- rs1_w0_val == 1024<br>                                                                                                                                             |[0x80000af0]:KMMWT2 t6, t5, t4<br> [0x80000af4]:csrrs t5, vxsat, zero<br> [0x80000af8]:sw t6, 440(ra)<br>    |
|  88|[0x800024d0]<br>0xFFFA0000|- rs1_w0_val == -2147483648<br>                                                                                                                                      |[0x80000b08]:KMMWT2 t6, t5, t4<br> [0x80000b0c]:csrrs t5, vxsat, zero<br> [0x80000b10]:sw t6, 448(ra)<br>    |
|  89|[0x800024d8]<br>0xFFEAAABF|- rs2_h1_val == 21845<br>                                                                                                                                            |[0x80000b28]:KMMWT2 t6, t5, t4<br> [0x80000b2c]:csrrs t5, vxsat, zero<br> [0x80000b30]:sw t6, 456(ra)<br>    |
