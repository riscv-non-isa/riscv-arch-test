
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000a70')]      |
| SIG_REGION                | [('0x80002210', '0x80002480', '156 words')]      |
| COV_LABELS                | kmabt      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kmabt-01.S    |
| Total Number of coverpoints| 264     |
| Total Coverpoints Hit     | 258      |
| Total Signature Updates   | 154      |
| STAT1                     | 75      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 77     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000794]:KMABT t6, t5, t4
      [0x80000798]:csrrs t5, vxsat, zero
      [0x8000079c]:sw t6, 168(ra)
 -- Signature Address: 0x800023b8 Data: 0x072725EF
 -- Redundant Coverpoints hit by the op
      - opcode : kmabt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h0_val == 0
      - rs1_h1_val == 256
      - rs1_h0_val == 1024




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a38]:KMABT t6, t5, t4
      [0x80000a3c]:csrrs t5, vxsat, zero
      [0x80000a40]:sw t6, 344(ra)
 -- Signature Address: 0x80002468 Data: 0xCA33761E
 -- Redundant Coverpoints hit by the op
      - opcode : kmabt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == -3
      - rs2_h0_val == 32767
      - rs1_h1_val == -17
      - rs1_h0_val == 128






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmabt', 'rs1 : x10', 'rs2 : x10', 'rd : x10', 'rs1 == rs2 == rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == 21845', 'rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x80000118]:KMABT a0, a0, a0
	-[0x8000011c]:csrrs a0, vxsat, zero
	-[0x80000120]:sw a0, 0(gp)
Current Store : [0x80000124] : sw a0, 4(gp) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x31', 'rs2 : x31', 'rd : x11', 'rs1 == rs2 != rd', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == -8193', 'rs2_h0_val == 2048', 'rs1_h1_val == -8193', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000138]:KMABT a1, t6, t6
	-[0x8000013c]:csrrs t6, vxsat, zero
	-[0x80000140]:sw a1, 8(gp)
Current Store : [0x80000144] : sw t6, 12(gp) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x2', 'rd : x19', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs2_h1_val == -65']
Last Code Sequence : 
	-[0x80000158]:KMABT s3, tp, sp
	-[0x8000015c]:csrrs tp, vxsat, zero
	-[0x80000160]:sw s3, 16(gp)
Current Store : [0x80000164] : sw tp, 20(gp) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x30', 'rd : x30', 'rs2 == rd != rs1', 'rs1_h0_val != rs2_h0_val', 'rs2_h1_val == 8192', 'rs2_h0_val == 1', 'rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x80000178]:KMABT t5, s2, t5
	-[0x8000017c]:csrrs s2, vxsat, zero
	-[0x80000180]:sw t5, 24(gp)
Current Store : [0x80000184] : sw s2, 28(gp) -- Store: [0x8000222c]:0x00000000




Last Coverpoint : ['rs1 : x9', 'rs2 : x12', 'rd : x9', 'rs1 == rd != rs2', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == -5', 'rs2_h0_val == 64', 'rs1_h1_val == -257', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000198]:KMABT s1, s1, a2
	-[0x8000019c]:csrrs s1, vxsat, zero
	-[0x800001a0]:sw s1, 32(gp)
Current Store : [0x800001a4] : sw s1, 36(gp) -- Store: [0x80002234]:0x00000000




Last Coverpoint : ['rs1 : x11', 'rs2 : x4', 'rd : x8', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == 512', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x800001b4]:KMABT fp, a1, tp
	-[0x800001b8]:csrrs a1, vxsat, zero
	-[0x800001bc]:sw fp, 40(gp)
Current Store : [0x800001c0] : sw a1, 44(gp) -- Store: [0x8000223c]:0x00000000




Last Coverpoint : ['rs1 : x5', 'rs2 : x21', 'rd : x22', 'rs2_h1_val == -21846', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x800001d4]:KMABT s6, t0, s5
	-[0x800001d8]:csrrs t0, vxsat, zero
	-[0x800001dc]:sw s6, 48(gp)
Current Store : [0x800001e0] : sw t0, 52(gp) -- Store: [0x80002244]:0x00000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x24', 'rd : x0', 'rs2_h1_val == 32767', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x800001f4]:KMABT zero, s4, s8
	-[0x800001f8]:csrrs s4, vxsat, zero
	-[0x800001fc]:sw zero, 56(gp)
Current Store : [0x80000200] : sw s4, 60(gp) -- Store: [0x8000224c]:0x00000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x1', 'rd : x7', 'rs2_h1_val == -16385', 'rs2_h0_val == -257', 'rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x80000214]:KMABT t2, a4, ra
	-[0x80000218]:csrrs a4, vxsat, zero
	-[0x8000021c]:sw t2, 64(gp)
Current Store : [0x80000220] : sw a4, 68(gp) -- Store: [0x80002254]:0x00000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x26', 'rd : x17', 'rs2_h1_val == -4097', 'rs2_h0_val == -65', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000234]:KMABT a7, s7, s10
	-[0x80000238]:csrrs s7, vxsat, zero
	-[0x8000023c]:sw a7, 72(gp)
Current Store : [0x80000240] : sw s7, 76(gp) -- Store: [0x8000225c]:0x00000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x29', 'rd : x25', 'rs2_h1_val == -2049', 'rs2_h0_val == 512', 'rs1_h1_val == -1025', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000254]:KMABT s9, t5, t4
	-[0x80000258]:csrrs t5, vxsat, zero
	-[0x8000025c]:sw s9, 80(gp)
Current Store : [0x80000260] : sw t5, 84(gp) -- Store: [0x80002264]:0x00000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x13', 'rd : x4', 'rs2_h1_val == -1025', 'rs2_h0_val == -17', 'rs1_h1_val == 16384', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000274]:KMABT tp, s3, a3
	-[0x80000278]:csrrs s3, vxsat, zero
	-[0x8000027c]:sw tp, 88(gp)
Current Store : [0x80000280] : sw s3, 92(gp) -- Store: [0x8000226c]:0x00000000




Last Coverpoint : ['rs1 : x16', 'rs2 : x18', 'rd : x24', 'rs2_h1_val == -513', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000294]:KMABT s8, a6, s2
	-[0x80000298]:csrrs a6, vxsat, zero
	-[0x8000029c]:sw s8, 96(gp)
Current Store : [0x800002a0] : sw a6, 100(gp) -- Store: [0x80002274]:0x00000000




Last Coverpoint : ['rs1 : x22', 'rs2 : x23', 'rd : x15', 'rs2_h1_val == -257', 'rs2_h0_val == -21846', 'rs1_h1_val == -32768']
Last Code Sequence : 
	-[0x800002b4]:KMABT a5, s6, s7
	-[0x800002b8]:csrrs s6, vxsat, zero
	-[0x800002bc]:sw a5, 104(gp)
Current Store : [0x800002c0] : sw s6, 108(gp) -- Store: [0x8000227c]:0x00000000




Last Coverpoint : ['rs1 : x17', 'rs2 : x20', 'rd : x26', 'rs2_h1_val == -129', 'rs1_h1_val == 64', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x800002dc]:KMABT s10, a7, s4
	-[0x800002e0]:csrrs a7, vxsat, zero
	-[0x800002e4]:sw s10, 0(tp)
Current Store : [0x800002e8] : sw a7, 4(tp) -- Store: [0x80002284]:0x00000000




Last Coverpoint : ['rs1 : x3', 'rs2 : x9', 'rd : x23', 'rs2_h1_val == -33', 'rs2_h0_val == -1', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x800002fc]:KMABT s7, gp, s1
	-[0x80000300]:csrrs gp, vxsat, zero
	-[0x80000304]:sw s7, 8(tp)
Current Store : [0x80000308] : sw gp, 12(tp) -- Store: [0x8000228c]:0x00000000




Last Coverpoint : ['rs1 : x25', 'rs2 : x8', 'rd : x16', 'rs2_h1_val == -17', 'rs2_h0_val == 21845', 'rs1_h1_val == 1024', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x8000031c]:KMABT a6, s9, fp
	-[0x80000320]:csrrs s9, vxsat, zero
	-[0x80000324]:sw a6, 16(tp)
Current Store : [0x80000328] : sw s9, 20(tp) -- Store: [0x80002294]:0x00000000




Last Coverpoint : ['rs1 : x7', 'rs2 : x3', 'rd : x12', 'rs2_h1_val == -9', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x8000033c]:KMABT a2, t2, gp
	-[0x80000340]:csrrs t2, vxsat, zero
	-[0x80000344]:sw a2, 24(tp)
Current Store : [0x80000348] : sw t2, 28(tp) -- Store: [0x8000229c]:0x00000000




Last Coverpoint : ['rs1 : x0', 'rs2 : x7', 'rd : x13', 'rs2_h1_val == -3', 'rs2_h0_val == 32767', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x8000035c]:KMABT a3, zero, t2
	-[0x80000360]:csrrs zero, vxsat, zero
	-[0x80000364]:sw a3, 32(tp)
Current Store : [0x80000368] : sw zero, 36(tp) -- Store: [0x800022a4]:0x00000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x25', 'rd : x29', 'rs2_h1_val == -2', 'rs1_h1_val == -17', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x8000037c]:KMABT t4, ra, s9
	-[0x80000380]:csrrs ra, vxsat, zero
	-[0x80000384]:sw t4, 40(tp)
Current Store : [0x80000388] : sw ra, 44(tp) -- Store: [0x800022ac]:0x00000000




Last Coverpoint : ['rs1 : x27', 'rs2 : x15', 'rd : x14', 'rs2_h1_val == -32768', 'rs2_h0_val == -33', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x8000039c]:KMABT a4, s11, a5
	-[0x800003a0]:csrrs s11, vxsat, zero
	-[0x800003a4]:sw a4, 48(tp)
Current Store : [0x800003a8] : sw s11, 52(tp) -- Store: [0x800022b4]:0x00000000




Last Coverpoint : ['rs1 : x12', 'rs2 : x5', 'rd : x1', 'rs2_h1_val == 16384', 'rs2_h0_val == 8192']
Last Code Sequence : 
	-[0x800003b8]:KMABT ra, a2, t0
	-[0x800003bc]:csrrs a2, vxsat, zero
	-[0x800003c0]:sw ra, 56(tp)
Current Store : [0x800003c4] : sw a2, 60(tp) -- Store: [0x800022bc]:0x00000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x17', 'rd : x21', 'rs2_h1_val == 4096', 'rs2_h0_val == -8193', 'rs1_h1_val == -129', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x800003d8]:KMABT s5, t4, a7
	-[0x800003dc]:csrrs t4, vxsat, zero
	-[0x800003e0]:sw s5, 64(tp)
Current Store : [0x800003e4] : sw t4, 68(tp) -- Store: [0x800022c4]:0x00000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x6', 'rd : x27', 'rs2_h1_val == 2048']
Last Code Sequence : 
	-[0x800003f8]:KMABT s11, sp, t1
	-[0x800003fc]:csrrs sp, vxsat, zero
	-[0x80000400]:sw s11, 72(tp)
Current Store : [0x80000404] : sw sp, 76(tp) -- Store: [0x800022cc]:0x00000000




Last Coverpoint : ['rs1 : x26', 'rs2 : x11', 'rd : x2', 'rs2_h1_val == 1024', 'rs2_h0_val == -32768', 'rs1_h1_val == 2', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80000414]:KMABT sp, s10, a1
	-[0x80000418]:csrrs s10, vxsat, zero
	-[0x8000041c]:sw sp, 80(tp)
Current Store : [0x80000420] : sw s10, 84(tp) -- Store: [0x800022d4]:0x00000000




Last Coverpoint : ['rs1 : x8', 'rs2 : x19', 'rd : x5', 'rs2_h1_val == 256', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000434]:KMABT t0, fp, s3
	-[0x80000438]:csrrs fp, vxsat, zero
	-[0x8000043c]:sw t0, 88(tp)
Current Store : [0x80000440] : sw fp, 92(tp) -- Store: [0x800022dc]:0x00000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x27', 'rd : x28', 'rs2_h1_val == 128', 'rs2_h0_val == -3']
Last Code Sequence : 
	-[0x80000454]:KMABT t3, a5, s11
	-[0x80000458]:csrrs a5, vxsat, zero
	-[0x8000045c]:sw t3, 96(tp)
Current Store : [0x80000460] : sw a5, 100(tp) -- Store: [0x800022e4]:0x00000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x0', 'rd : x18', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000474]:KMABT s2, a3, zero
	-[0x80000478]:csrrs a3, vxsat, zero
	-[0x8000047c]:sw s2, 104(tp)
Current Store : [0x80000480] : sw a3, 108(tp) -- Store: [0x800022ec]:0x00000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x14', 'rd : x3', 'rs2_h1_val == 32', 'rs2_h0_val == -2049']
Last Code Sequence : 
	-[0x80000494]:KMABT gp, s5, a4
	-[0x80000498]:csrrs s5, vxsat, zero
	-[0x8000049c]:sw gp, 112(tp)
Current Store : [0x800004a0] : sw s5, 116(tp) -- Store: [0x800022f4]:0x00000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x16', 'rd : x20', 'rs2_h0_val == -1025', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x800004b4]:KMABT s4, t3, a6
	-[0x800004b8]:csrrs t3, vxsat, zero
	-[0x800004bc]:sw s4, 120(tp)
Current Store : [0x800004c0] : sw t3, 124(tp) -- Store: [0x800022fc]:0x00000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x28', 'rd : x31', 'rs2_h0_val == 4', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x800004d4]:KMABT t6, t1, t3
	-[0x800004d8]:csrrs t1, vxsat, zero
	-[0x800004dc]:sw t6, 128(tp)
Current Store : [0x800004e0] : sw t1, 132(tp) -- Store: [0x80002304]:0x00000000




Last Coverpoint : ['rs1 : x24', 'rs2 : x22', 'rd : x6', 'rs2_h1_val == -1', 'rs2_h0_val == 2', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x800004f4]:KMABT t1, s8, s6
	-[0x800004f8]:csrrs s8, vxsat, zero
	-[0x800004fc]:sw t1, 136(tp)
Current Store : [0x80000500] : sw s8, 140(tp) -- Store: [0x8000230c]:0x00000000




Last Coverpoint : ['rs2_h0_val == 16384', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000518]:KMABT t6, t5, t4
	-[0x8000051c]:csrrs t5, vxsat, zero
	-[0x80000520]:sw t6, 0(ra)
Current Store : [0x80000524] : sw t5, 4(ra) -- Store: [0x80002314]:0x00000000




Last Coverpoint : ['rs2_h1_val == 1', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000538]:KMABT t6, t5, t4
	-[0x8000053c]:csrrs t5, vxsat, zero
	-[0x80000540]:sw t6, 8(ra)
Current Store : [0x80000544] : sw t5, 12(ra) -- Store: [0x8000231c]:0x00000000




Last Coverpoint : ['rs1_h1_val == 4096', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000550]:KMABT t6, t5, t4
	-[0x80000554]:csrrs t5, vxsat, zero
	-[0x80000558]:sw t6, 16(ra)
Current Store : [0x8000055c] : sw t5, 20(ra) -- Store: [0x80002324]:0x00000000




Last Coverpoint : ['rs2_h0_val == -129', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x8000056c]:KMABT t6, t5, t4
	-[0x80000570]:csrrs t5, vxsat, zero
	-[0x80000574]:sw t6, 24(ra)
Current Store : [0x80000578] : sw t5, 28(ra) -- Store: [0x8000232c]:0x00000000




Last Coverpoint : ['rs1_h1_val == -3', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x8000058c]:KMABT t6, t5, t4
	-[0x80000590]:csrrs t5, vxsat, zero
	-[0x80000594]:sw t6, 32(ra)
Current Store : [0x80000598] : sw t5, 36(ra) -- Store: [0x80002334]:0x00000000




Last Coverpoint : ['rs2_h0_val == 16', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x800005ac]:KMABT t6, t5, t4
	-[0x800005b0]:csrrs t5, vxsat, zero
	-[0x800005b4]:sw t6, 40(ra)
Current Store : [0x800005b8] : sw t5, 44(ra) -- Store: [0x8000233c]:0x00000000




Last Coverpoint : ['rs2_h1_val == 2', 'rs1_h1_val == 32767', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x800005cc]:KMABT t6, t5, t4
	-[0x800005d0]:csrrs t5, vxsat, zero
	-[0x800005d4]:sw t6, 48(ra)
Current Store : [0x800005d8] : sw t5, 52(ra) -- Store: [0x80002344]:0x00000000




Last Coverpoint : ['rs1_h1_val == -65', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x800005ec]:KMABT t6, t5, t4
	-[0x800005f0]:csrrs t5, vxsat, zero
	-[0x800005f4]:sw t6, 56(ra)
Current Store : [0x800005f8] : sw t5, 60(ra) -- Store: [0x8000234c]:0x00000000




Last Coverpoint : ['rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80000608]:KMABT t6, t5, t4
	-[0x8000060c]:csrrs t5, vxsat, zero
	-[0x80000610]:sw t6, 64(ra)
Current Store : [0x80000614] : sw t5, 68(ra) -- Store: [0x80002354]:0x00000000




Last Coverpoint : ['rs1_h1_val == 1']
Last Code Sequence : 
	-[0x80000624]:KMABT t6, t5, t4
	-[0x80000628]:csrrs t5, vxsat, zero
	-[0x8000062c]:sw t6, 72(ra)
Current Store : [0x80000630] : sw t5, 76(ra) -- Store: [0x8000235c]:0x00000000




Last Coverpoint : ['rs1_h0_val == -1']
Last Code Sequence : 
	-[0x80000644]:KMABT t6, t5, t4
	-[0x80000648]:csrrs t5, vxsat, zero
	-[0x8000064c]:sw t6, 80(ra)
Current Store : [0x80000650] : sw t5, 84(ra) -- Store: [0x80002364]:0x00000000




Last Coverpoint : ['rs2_h1_val == 16', 'rs1_h1_val == 128']
Last Code Sequence : 
	-[0x80000660]:KMABT t6, t5, t4
	-[0x80000664]:csrrs t5, vxsat, zero
	-[0x80000668]:sw t6, 88(ra)
Current Store : [0x8000066c] : sw t5, 92(ra) -- Store: [0x8000236c]:0x00000000




Last Coverpoint : ['rs2_h1_val == 8']
Last Code Sequence : 
	-[0x80000680]:KMABT t6, t5, t4
	-[0x80000684]:csrrs t5, vxsat, zero
	-[0x80000688]:sw t6, 96(ra)
Current Store : [0x8000068c] : sw t5, 100(ra) -- Store: [0x80002374]:0x00000000




Last Coverpoint : ['rs2_h0_val == -5']
Last Code Sequence : 
	-[0x800006a0]:KMABT t6, t5, t4
	-[0x800006a4]:csrrs t5, vxsat, zero
	-[0x800006a8]:sw t6, 104(ra)
Current Store : [0x800006ac] : sw t5, 108(ra) -- Store: [0x8000237c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -2']
Last Code Sequence : 
	-[0x800006c0]:KMABT t6, t5, t4
	-[0x800006c4]:csrrs t5, vxsat, zero
	-[0x800006c8]:sw t6, 112(ra)
Current Store : [0x800006cc] : sw t5, 116(ra) -- Store: [0x80002384]:0x00000000




Last Coverpoint : ['rs2_h0_val == 4096']
Last Code Sequence : 
	-[0x800006dc]:KMABT t6, t5, t4
	-[0x800006e0]:csrrs t5, vxsat, zero
	-[0x800006e4]:sw t6, 120(ra)
Current Store : [0x800006e8] : sw t5, 124(ra) -- Store: [0x8000238c]:0x00000000




Last Coverpoint : ['rs2_h0_val == 1024']
Last Code Sequence : 
	-[0x800006fc]:KMABT t6, t5, t4
	-[0x80000700]:csrrs t5, vxsat, zero
	-[0x80000704]:sw t6, 128(ra)
Current Store : [0x80000708] : sw t5, 132(ra) -- Store: [0x80002394]:0x00000000




Last Coverpoint : ['rs2_h0_val == 256']
Last Code Sequence : 
	-[0x8000071c]:KMABT t6, t5, t4
	-[0x80000720]:csrrs t5, vxsat, zero
	-[0x80000724]:sw t6, 136(ra)
Current Store : [0x80000728] : sw t5, 140(ra) -- Store: [0x8000239c]:0x00000000




Last Coverpoint : ['rs2_h0_val == 128']
Last Code Sequence : 
	-[0x8000073c]:KMABT t6, t5, t4
	-[0x80000740]:csrrs t5, vxsat, zero
	-[0x80000744]:sw t6, 144(ra)
Current Store : [0x80000748] : sw t5, 148(ra) -- Store: [0x800023a4]:0x00000000




Last Coverpoint : ['rs2_h0_val == 32']
Last Code Sequence : 
	-[0x80000758]:KMABT t6, t5, t4
	-[0x8000075c]:csrrs t5, vxsat, zero
	-[0x80000760]:sw t6, 152(ra)
Current Store : [0x80000764] : sw t5, 156(ra) -- Store: [0x800023ac]:0x00000000




Last Coverpoint : ['rs2_h0_val == 8', 'rs1_h1_val == -513', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x80000778]:KMABT t6, t5, t4
	-[0x8000077c]:csrrs t5, vxsat, zero
	-[0x80000780]:sw t6, 160(ra)
Current Store : [0x80000784] : sw t5, 164(ra) -- Store: [0x800023b4]:0x00000000




Last Coverpoint : ['opcode : kmabt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h0_val == 0', 'rs1_h1_val == 256', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000794]:KMABT t6, t5, t4
	-[0x80000798]:csrrs t5, vxsat, zero
	-[0x8000079c]:sw t6, 168(ra)
Current Store : [0x800007a0] : sw t5, 172(ra) -- Store: [0x800023bc]:0x00000000




Last Coverpoint : ['rs1_h1_val == -21846']
Last Code Sequence : 
	-[0x800007b4]:KMABT t6, t5, t4
	-[0x800007b8]:csrrs t5, vxsat, zero
	-[0x800007bc]:sw t6, 176(ra)
Current Store : [0x800007c0] : sw t5, 180(ra) -- Store: [0x800023c4]:0x00000000




Last Coverpoint : ['rs2_h0_val == -4097']
Last Code Sequence : 
	-[0x800007d0]:KMABT t6, t5, t4
	-[0x800007d4]:csrrs t5, vxsat, zero
	-[0x800007d8]:sw t6, 184(ra)
Current Store : [0x800007dc] : sw t5, 188(ra) -- Store: [0x800023cc]:0x00000000




Last Coverpoint : ['rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x800007f0]:KMABT t6, t5, t4
	-[0x800007f4]:csrrs t5, vxsat, zero
	-[0x800007f8]:sw t6, 192(ra)
Current Store : [0x800007fc] : sw t5, 196(ra) -- Store: [0x800023d4]:0x00000000




Last Coverpoint : ['rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x8000080c]:KMABT t6, t5, t4
	-[0x80000810]:csrrs t5, vxsat, zero
	-[0x80000814]:sw t6, 200(ra)
Current Store : [0x80000818] : sw t5, 204(ra) -- Store: [0x800023dc]:0x00000000




Last Coverpoint : ['rs1_h1_val == -33']
Last Code Sequence : 
	-[0x8000082c]:KMABT t6, t5, t4
	-[0x80000830]:csrrs t5, vxsat, zero
	-[0x80000834]:sw t6, 208(ra)
Current Store : [0x80000838] : sw t5, 212(ra) -- Store: [0x800023e4]:0x00000000




Last Coverpoint : ['rs1_h1_val == -5']
Last Code Sequence : 
	-[0x8000084c]:KMABT t6, t5, t4
	-[0x80000850]:csrrs t5, vxsat, zero
	-[0x80000854]:sw t6, 216(ra)
Current Store : [0x80000858] : sw t5, 220(ra) -- Store: [0x800023ec]:0x00000000




Last Coverpoint : ['rs1_h0_val == -32768', 'rs1_h1_val == -2']
Last Code Sequence : 
	-[0x80000868]:KMABT t6, t5, t4
	-[0x8000086c]:csrrs t5, vxsat, zero
	-[0x80000870]:sw t6, 224(ra)
Current Store : [0x80000874] : sw t5, 228(ra) -- Store: [0x800023f4]:0x00000000




Last Coverpoint : ['rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x80000884]:KMABT t6, t5, t4
	-[0x80000888]:csrrs t5, vxsat, zero
	-[0x8000088c]:sw t6, 232(ra)
Current Store : [0x80000890] : sw t5, 236(ra) -- Store: [0x800023fc]:0x00000000




Last Coverpoint : ['rs2_h1_val == 4']
Last Code Sequence : 
	-[0x800008a4]:KMABT t6, t5, t4
	-[0x800008a8]:csrrs t5, vxsat, zero
	-[0x800008ac]:sw t6, 240(ra)
Current Store : [0x800008b0] : sw t5, 244(ra) -- Store: [0x80002404]:0x00000000




Last Coverpoint : ['rs1_h1_val == 512']
Last Code Sequence : 
	-[0x800008c0]:KMABT t6, t5, t4
	-[0x800008c4]:csrrs t5, vxsat, zero
	-[0x800008c8]:sw t6, 248(ra)
Current Store : [0x800008cc] : sw t5, 252(ra) -- Store: [0x8000240c]:0x00000000




Last Coverpoint : ['rs1_h1_val == 32']
Last Code Sequence : 
	-[0x800008e0]:KMABT t6, t5, t4
	-[0x800008e4]:csrrs t5, vxsat, zero
	-[0x800008e8]:sw t6, 256(ra)
Current Store : [0x800008ec] : sw t5, 260(ra) -- Store: [0x80002414]:0x00000000




Last Coverpoint : ['rs1_h1_val == 16']
Last Code Sequence : 
	-[0x80000900]:KMABT t6, t5, t4
	-[0x80000904]:csrrs t5, vxsat, zero
	-[0x80000908]:sw t6, 264(ra)
Current Store : [0x8000090c] : sw t5, 268(ra) -- Store: [0x8000241c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -16385']
Last Code Sequence : 
	-[0x80000920]:KMABT t6, t5, t4
	-[0x80000924]:csrrs t5, vxsat, zero
	-[0x80000928]:sw t6, 272(ra)
Current Store : [0x8000092c] : sw t5, 276(ra) -- Store: [0x80002424]:0x00000000




Last Coverpoint : ['rs1_h1_val == 4']
Last Code Sequence : 
	-[0x80000940]:KMABT t6, t5, t4
	-[0x80000944]:csrrs t5, vxsat, zero
	-[0x80000948]:sw t6, 280(ra)
Current Store : [0x8000094c] : sw t5, 284(ra) -- Store: [0x8000242c]:0x00000000




Last Coverpoint : ['rs1_h1_val == -1']
Last Code Sequence : 
	-[0x8000095c]:KMABT t6, t5, t4
	-[0x80000960]:csrrs t5, vxsat, zero
	-[0x80000964]:sw t6, 288(ra)
Current Store : [0x80000968] : sw t5, 292(ra) -- Store: [0x80002434]:0x00000000




Last Coverpoint : ['rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x8000097c]:KMABT t6, t5, t4
	-[0x80000980]:csrrs t5, vxsat, zero
	-[0x80000984]:sw t6, 296(ra)
Current Store : [0x80000988] : sw t5, 300(ra) -- Store: [0x8000243c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -513']
Last Code Sequence : 
	-[0x8000099c]:KMABT t6, t5, t4
	-[0x800009a0]:csrrs t5, vxsat, zero
	-[0x800009a4]:sw t6, 304(ra)
Current Store : [0x800009a8] : sw t5, 308(ra) -- Store: [0x80002444]:0x00000000




Last Coverpoint : ['rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x800009bc]:KMABT t6, t5, t4
	-[0x800009c0]:csrrs t5, vxsat, zero
	-[0x800009c4]:sw t6, 312(ra)
Current Store : [0x800009c8] : sw t5, 316(ra) -- Store: [0x8000244c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -9']
Last Code Sequence : 
	-[0x800009dc]:KMABT t6, t5, t4
	-[0x800009e0]:csrrs t5, vxsat, zero
	-[0x800009e4]:sw t6, 320(ra)
Current Store : [0x800009e8] : sw t5, 324(ra) -- Store: [0x80002454]:0x00000000




Last Coverpoint : ['rs1_h1_val == -9']
Last Code Sequence : 
	-[0x800009f8]:KMABT t6, t5, t4
	-[0x800009fc]:csrrs t5, vxsat, zero
	-[0x80000a00]:sw t6, 328(ra)
Current Store : [0x80000a04] : sw t5, 332(ra) -- Store: [0x8000245c]:0x00000000




Last Coverpoint : ['rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80000a18]:KMABT t6, t5, t4
	-[0x80000a1c]:csrrs t5, vxsat, zero
	-[0x80000a20]:sw t6, 336(ra)
Current Store : [0x80000a24] : sw t5, 340(ra) -- Store: [0x80002464]:0x00000000




Last Coverpoint : ['opcode : kmabt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == -3', 'rs2_h0_val == 32767', 'rs1_h1_val == -17', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x80000a38]:KMABT t6, t5, t4
	-[0x80000a3c]:csrrs t5, vxsat, zero
	-[0x80000a40]:sw t6, 344(ra)
Current Store : [0x80000a44] : sw t5, 348(ra) -- Store: [0x8000246c]:0x00000000




Last Coverpoint : ['rs2_h1_val == 64']
Last Code Sequence : 
	-[0x80000a58]:KMABT t6, t5, t4
	-[0x80000a5c]:csrrs t5, vxsat, zero
	-[0x80000a60]:sw t6, 352(ra)
Current Store : [0x80000a64] : sw t5, 356(ra) -- Store: [0x80002474]:0x00000000





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

|s.no|        signature         |                                                                                                                                         coverpoints                                                                                                                                         |                                                    code                                                    |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : kmabt<br> - rs1 : x10<br> - rs2 : x10<br> - rd : x10<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h1_val == 21845<br> - rs1_h1_val == 21845<br> |[0x80000118]:KMABT a0, a0, a0<br> [0x8000011c]:csrrs a0, vxsat, zero<br> [0x80000120]:sw a0, 0(gp)<br>      |
|   2|[0x80002218]<br>0xAA7FB36F|- rs1 : x31<br> - rs2 : x31<br> - rd : x11<br> - rs1 == rs2 != rd<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == -8193<br> - rs2_h0_val == 2048<br> - rs1_h1_val == -8193<br> - rs1_h0_val == 2048<br>                                  |[0x80000138]:KMABT a1, t6, t6<br> [0x8000013c]:csrrs t6, vxsat, zero<br> [0x80000140]:sw a1, 8(gp)<br>      |
|   3|[0x80002220]<br>0x6FAB7E35|- rs1 : x4<br> - rs2 : x2<br> - rd : x19<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs2_h1_val == -65<br>                                                                                                    |[0x80000158]:KMABT s3, tp, sp<br> [0x8000015c]:csrrs tp, vxsat, zero<br> [0x80000160]:sw s3, 16(gp)<br>     |
|   4|[0x80002228]<br>0x27FFE001|- rs1 : x18<br> - rs2 : x30<br> - rd : x30<br> - rs2 == rd != rs1<br> - rs1_h0_val != rs2_h0_val<br> - rs2_h1_val == 8192<br> - rs2_h0_val == 1<br> - rs1_h1_val == 2048<br>                                                                                                                 |[0x80000178]:KMABT t5, s2, t5<br> [0x8000017c]:csrrs s2, vxsat, zero<br> [0x80000180]:sw t5, 24(gp)<br>     |
|   5|[0x80002230]<br>0x00000000|- rs1 : x9<br> - rs2 : x12<br> - rd : x9<br> - rs1 == rd != rs2<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h1_val == -5<br> - rs2_h0_val == 64<br> - rs1_h1_val == -257<br> - rs1_h0_val == -129<br>                                                                                  |[0x80000198]:KMABT s1, s1, a2<br> [0x8000019c]:csrrs s1, vxsat, zero<br> [0x800001a0]:sw s1, 32(gp)<br>     |
|   6|[0x80002238]<br>0x5C3DDB7D|- rs1 : x11<br> - rs2 : x4<br> - rd : x8<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h1_val == 512<br> - rs1_h0_val == 8192<br>                                                                                                                |[0x800001b4]:KMABT fp, a1, tp<br> [0x800001b8]:csrrs a1, vxsat, zero<br> [0x800001bc]:sw fp, 40(gp)<br>     |
|   7|[0x80002240]<br>0x6DFB1AAD|- rs1 : x5<br> - rs2 : x21<br> - rd : x22<br> - rs2_h1_val == -21846<br> - rs1_h0_val == -17<br>                                                                                                                                                                                             |[0x800001d4]:KMABT s6, t0, s5<br> [0x800001d8]:csrrs t0, vxsat, zero<br> [0x800001dc]:sw s6, 48(gp)<br>     |
|   8|[0x80002248]<br>0x00000000|- rs1 : x20<br> - rs2 : x24<br> - rd : x0<br> - rs2_h1_val == 32767<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                            |[0x800001f4]:KMABT zero, s4, s8<br> [0x800001f8]:csrrs s4, vxsat, zero<br> [0x800001fc]:sw zero, 56(gp)<br> |
|   9|[0x80002250]<br>0xB5FBAEFA|- rs1 : x14<br> - rs2 : x1<br> - rd : x7<br> - rs2_h1_val == -16385<br> - rs2_h0_val == -257<br> - rs1_h1_val == -16385<br>                                                                                                                                                                  |[0x80000214]:KMABT t2, a4, ra<br> [0x80000218]:csrrs a4, vxsat, zero<br> [0x8000021c]:sw t2, 64(gp)<br>     |
|  10|[0x80002258]<br>0xBEAE1EEF|- rs1 : x23<br> - rs2 : x26<br> - rd : x17<br> - rs2_h1_val == -4097<br> - rs2_h0_val == -65<br> - rs1_h0_val == -2<br>                                                                                                                                                                      |[0x80000234]:KMABT a7, s7, s10<br> [0x80000238]:csrrs s7, vxsat, zero<br> [0x8000023c]:sw a7, 72(gp)<br>    |
|  11|[0x80002260]<br>0xEDBE2DEE|- rs1 : x30<br> - rs2 : x29<br> - rd : x25<br> - rs2_h1_val == -2049<br> - rs2_h0_val == 512<br> - rs1_h1_val == -1025<br> - rs1_h0_val == 16<br>                                                                                                                                            |[0x80000254]:KMABT s9, t5, t4<br> [0x80000258]:csrrs t5, vxsat, zero<br> [0x8000025c]:sw s9, 80(gp)<br>     |
|  12|[0x80002268]<br>0x02010BF9|- rs1 : x19<br> - rs2 : x13<br> - rd : x4<br> - rs2_h1_val == -1025<br> - rs2_h0_val == -17<br> - rs1_h1_val == 16384<br> - rs1_h0_val == -3<br>                                                                                                                                             |[0x80000274]:KMABT tp, s3, a3<br> [0x80000278]:csrrs s3, vxsat, zero<br> [0x8000027c]:sw tp, 88(gp)<br>     |
|  13|[0x80002270]<br>0x7FFF7FB6|- rs1 : x16<br> - rs2 : x18<br> - rd : x24<br> - rs2_h1_val == -513<br> - rs1_h0_val == 64<br>                                                                                                                                                                                               |[0x80000294]:KMABT s8, a6, s2<br> [0x80000298]:csrrs a6, vxsat, zero<br> [0x8000029c]:sw s8, 96(gp)<br>     |
|  14|[0x80002278]<br>0xFAB87D37|- rs1 : x22<br> - rs2 : x23<br> - rd : x15<br> - rs2_h1_val == -257<br> - rs2_h0_val == -21846<br> - rs1_h1_val == -32768<br>                                                                                                                                                                |[0x800002b4]:KMABT a5, s6, s7<br> [0x800002b8]:csrrs s6, vxsat, zero<br> [0x800002bc]:sw a5, 104(gp)<br>    |
|  15|[0x80002280]<br>0xF0102040|- rs1 : x17<br> - rs2 : x20<br> - rd : x26<br> - rs2_h1_val == -129<br> - rs1_h1_val == 64<br> - rs1_h0_val == -8193<br>                                                                                                                                                                     |[0x800002dc]:KMABT s10, a7, s4<br> [0x800002e0]:csrrs a7, vxsat, zero<br> [0x800002e4]:sw s10, 0(tp)<br>    |
|  16|[0x80002288]<br>0xFEFFA9C3|- rs1 : x3<br> - rs2 : x9<br> - rd : x23<br> - rs2_h1_val == -33<br> - rs2_h0_val == -1<br> - rs1_h1_val == 256<br>                                                                                                                                                                          |[0x800002fc]:KMABT s7, gp, s1<br> [0x80000300]:csrrs gp, vxsat, zero<br> [0x80000304]:sw s7, 8(tp)<br>      |
|  17|[0x80002290]<br>0xFFFFDE00|- rs1 : x25<br> - rs2 : x8<br> - rd : x16<br> - rs2_h1_val == -17<br> - rs2_h0_val == 21845<br> - rs1_h1_val == 1024<br> - rs1_h0_val == 512<br>                                                                                                                                             |[0x8000031c]:KMABT a6, s9, fp<br> [0x80000320]:csrrs s9, vxsat, zero<br> [0x80000324]:sw a6, 16(tp)<br>     |
|  18|[0x80002298]<br>0xFFFAFFF8|- rs1 : x7<br> - rs2 : x3<br> - rd : x12<br> - rs2_h1_val == -9<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                    |[0x8000033c]:KMABT a2, t2, gp<br> [0x80000340]:csrrs t2, vxsat, zero<br> [0x80000344]:sw a2, 24(tp)<br>     |
|  19|[0x800022a0]<br>0xFBFFFFEF|- rs1 : x0<br> - rs2 : x7<br> - rd : x13<br> - rs2_h1_val == -3<br> - rs2_h0_val == 32767<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                                    |[0x8000035c]:KMABT a3, zero, t2<br> [0x80000360]:csrrs zero, vxsat, zero<br> [0x80000364]:sw a3, 32(tp)<br> |
|  20|[0x800022a8]<br>0xF7FF0282|- rs1 : x1<br> - rs2 : x25<br> - rd : x29<br> - rs2_h1_val == -2<br> - rs1_h1_val == -17<br> - rs1_h0_val == -65<br>                                                                                                                                                                         |[0x8000037c]:KMABT t4, ra, s9<br> [0x80000380]:csrrs ra, vxsat, zero<br> [0x80000384]:sw t4, 40(tp)<br>     |
|  21|[0x800022b0]<br>0xFFC00000|- rs1 : x27<br> - rs2 : x15<br> - rd : x14<br> - rs2_h1_val == -32768<br> - rs2_h0_val == -33<br> - rs1_h0_val == 128<br>                                                                                                                                                                    |[0x8000039c]:KMABT a4, s11, a5<br> [0x800003a0]:csrrs s11, vxsat, zero<br> [0x800003a4]:sw a4, 48(tp)<br>   |
|  22|[0x800022b8]<br>0x00020000|- rs1 : x12<br> - rs2 : x5<br> - rd : x1<br> - rs2_h1_val == 16384<br> - rs2_h0_val == 8192<br>                                                                                                                                                                                              |[0x800003b8]:KMABT ra, a2, t0<br> [0x800003bc]:csrrs a2, vxsat, zero<br> [0x800003c0]:sw ra, 56(tp)<br>     |
|  23|[0x800022c0]<br>0xAA29F007|- rs1 : x29<br> - rs2 : x17<br> - rd : x21<br> - rs2_h1_val == 4096<br> - rs2_h0_val == -8193<br> - rs1_h1_val == -129<br> - rs1_h0_val == -2049<br>                                                                                                                                         |[0x800003d8]:KMABT s5, t4, a7<br> [0x800003dc]:csrrs t4, vxsat, zero<br> [0x800003e0]:sw s5, 64(tp)<br>     |
|  24|[0x800022c8]<br>0xFFFFF000|- rs1 : x2<br> - rs2 : x6<br> - rd : x27<br> - rs2_h1_val == 2048<br>                                                                                                                                                                                                                        |[0x800003f8]:KMABT s11, sp, t1<br> [0x800003fc]:csrrs sp, vxsat, zero<br> [0x80000400]:sw s11, 72(tp)<br>   |
|  25|[0x800022d0]<br>0xFFBFFC00|- rs1 : x26<br> - rs2 : x11<br> - rd : x2<br> - rs2_h1_val == 1024<br> - rs2_h0_val == -32768<br> - rs1_h1_val == 2<br> - rs1_h0_val == -4097<br>                                                                                                                                            |[0x80000414]:KMABT sp, s10, a1<br> [0x80000418]:csrrs s10, vxsat, zero<br> [0x8000041c]:sw sp, 80(tp)<br>   |
|  26|[0x800022d8]<br>0x3FFF1F00|- rs1 : x8<br> - rs2 : x19<br> - rd : x5<br> - rs2_h1_val == 256<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                |[0x80000434]:KMABT t0, fp, s3<br> [0x80000438]:csrrs fp, vxsat, zero<br> [0x8000043c]:sw t0, 88(tp)<br>     |
|  27|[0x800022e0]<br>0xDDB7D0BF|- rs1 : x15<br> - rs2 : x27<br> - rd : x28<br> - rs2_h1_val == 128<br> - rs2_h0_val == -3<br>                                                                                                                                                                                                |[0x80000454]:KMABT t3, a5, s11<br> [0x80000458]:csrrs a5, vxsat, zero<br> [0x8000045c]:sw t3, 96(tp)<br>    |
|  28|[0x800022e8]<br>0xFDFF0007|- rs1 : x13<br> - rs2 : x0<br> - rd : x18<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h1_val == 8<br>                                                                                                                                                                              |[0x80000474]:KMABT s2, a3, zero<br> [0x80000478]:csrrs a3, vxsat, zero<br> [0x8000047c]:sw s2, 104(tp)<br>  |
|  29|[0x800022f0]<br>0xFFF78A8A|- rs1 : x21<br> - rs2 : x14<br> - rd : x3<br> - rs2_h1_val == 32<br> - rs2_h0_val == -2049<br>                                                                                                                                                                                               |[0x80000494]:KMABT gp, s5, a4<br> [0x80000498]:csrrs s5, vxsat, zero<br> [0x8000049c]:sw gp, 112(tp)<br>    |
|  30|[0x800022f8]<br>0xFF802800|- rs1 : x28<br> - rs2 : x16<br> - rd : x20<br> - rs2_h0_val == -1025<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                           |[0x800004b4]:KMABT s4, t3, a6<br> [0x800004b8]:csrrs t3, vxsat, zero<br> [0x800004bc]:sw s4, 120(tp)<br>    |
|  31|[0x80002300]<br>0x01008000|- rs1 : x6<br> - rs2 : x28<br> - rd : x31<br> - rs2_h0_val == 4<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                 |[0x800004d4]:KMABT t6, t1, t3<br> [0x800004d8]:csrrs t1, vxsat, zero<br> [0x800004dc]:sw t6, 128(tp)<br>    |
|  32|[0x80002308]<br>0x00000021|- rs1 : x24<br> - rs2 : x22<br> - rd : x6<br> - rs2_h1_val == -1<br> - rs2_h0_val == 2<br> - rs1_h0_val == -33<br>                                                                                                                                                                           |[0x800004f4]:KMABT t1, s8, s6<br> [0x800004f8]:csrrs s8, vxsat, zero<br> [0x800004fc]:sw t1, 136(tp)<br>    |
|  33|[0x80002310]<br>0x0100803F|- rs2_h0_val == 16384<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                             |[0x80000518]:KMABT t6, t5, t4<br> [0x8000051c]:csrrs t5, vxsat, zero<br> [0x80000520]:sw t6, 0(ra)<br>      |
|  34|[0x80002318]<br>0x0100803A|- rs2_h1_val == 1<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                                 |[0x80000538]:KMABT t6, t5, t4<br> [0x8000053c]:csrrs t5, vxsat, zero<br> [0x80000540]:sw t6, 8(ra)<br>      |
|  35|[0x80002320]<br>0x0100803A|- rs1_h1_val == 4096<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                           |[0x80000550]:KMABT t6, t5, t4<br> [0x80000554]:csrrs t5, vxsat, zero<br> [0x80000558]:sw t6, 16(ra)<br>     |
|  36|[0x80002328]<br>0x0120803A|- rs2_h0_val == -129<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                            |[0x8000056c]:KMABT t6, t5, t4<br> [0x80000570]:csrrs t5, vxsat, zero<br> [0x80000574]:sw t6, 24(ra)<br>     |
|  37|[0x80002330]<br>0x011E7C3A|- rs1_h1_val == -3<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                              |[0x8000058c]:KMABT t6, t5, t4<br> [0x80000590]:csrrs t5, vxsat, zero<br> [0x80000594]:sw t6, 32(ra)<br>     |
|  38|[0x80002338]<br>0x01267C3A|- rs2_h0_val == 16<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                               |[0x800005ac]:KMABT t6, t5, t4<br> [0x800005b0]:csrrs t5, vxsat, zero<br> [0x800005b4]:sw t6, 40(ra)<br>     |
|  39|[0x80002340]<br>0x01267C7A|- rs2_h1_val == 2<br> - rs1_h1_val == 32767<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                       |[0x800005cc]:KMABT t6, t5, t4<br> [0x800005d0]:csrrs t5, vxsat, zero<br> [0x800005d4]:sw t6, 48(ra)<br>     |
|  40|[0x80002348]<br>0x01267C72|- rs1_h1_val == -65<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                |[0x800005ec]:KMABT t6, t5, t4<br> [0x800005f0]:csrrs t5, vxsat, zero<br> [0x800005f4]:sw t6, 56(ra)<br>     |
|  41|[0x80002350]<br>0x01269C72|- rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                        |[0x80000608]:KMABT t6, t5, t4<br> [0x8000060c]:csrrs t5, vxsat, zero<br> [0x80000610]:sw t6, 64(ra)<br>     |
|  42|[0x80002358]<br>0x01269C72|- rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                        |[0x80000624]:KMABT t6, t5, t4<br> [0x80000628]:csrrs t5, vxsat, zero<br> [0x8000062c]:sw t6, 72(ra)<br>     |
|  43|[0x80002360]<br>0x01269BF2|- rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                       |[0x80000644]:KMABT t6, t5, t4<br> [0x80000648]:csrrs t5, vxsat, zero<br> [0x8000064c]:sw t6, 80(ra)<br>     |
|  44|[0x80002368]<br>0x01269C12|- rs2_h1_val == 16<br> - rs1_h1_val == 128<br>                                                                                                                                                                                                                                               |[0x80000660]:KMABT t6, t5, t4<br> [0x80000664]:csrrs t5, vxsat, zero<br> [0x80000668]:sw t6, 88(ra)<br>     |
|  45|[0x80002370]<br>0x01269C2A|- rs2_h1_val == 8<br>                                                                                                                                                                                                                                                                        |[0x80000680]:KMABT t6, t5, t4<br> [0x80000684]:csrrs t5, vxsat, zero<br> [0x80000688]:sw t6, 96(ra)<br>     |
|  46|[0x80002378]<br>0x012699E1|- rs2_h0_val == -5<br>                                                                                                                                                                                                                                                                       |[0x800006a0]:KMABT t6, t5, t4<br> [0x800006a4]:csrrs t5, vxsat, zero<br> [0x800006a8]:sw t6, 104(ra)<br>    |
|  47|[0x80002380]<br>0x0126ADEB|- rs2_h0_val == -2<br>                                                                                                                                                                                                                                                                       |[0x800006c0]:KMABT t6, t5, t4<br> [0x800006c4]:csrrs t5, vxsat, zero<br> [0x800006c8]:sw t6, 112(ra)<br>    |
|  48|[0x80002388]<br>0x01262DEB|- rs2_h0_val == 4096<br>                                                                                                                                                                                                                                                                     |[0x800006dc]:KMABT t6, t5, t4<br> [0x800006e0]:csrrs t5, vxsat, zero<br> [0x800006e4]:sw t6, 120(ra)<br>    |
|  49|[0x80002390]<br>0x09261DEB|- rs2_h0_val == 1024<br>                                                                                                                                                                                                                                                                     |[0x800006fc]:KMABT t6, t5, t4<br> [0x80000700]:csrrs t5, vxsat, zero<br> [0x80000704]:sw t6, 128(ra)<br>    |
|  50|[0x80002398]<br>0x0A2619EB|- rs2_h0_val == 256<br>                                                                                                                                                                                                                                                                      |[0x8000071c]:KMABT t6, t5, t4<br> [0x80000720]:csrrs t5, vxsat, zero<br> [0x80000724]:sw t6, 136(ra)<br>    |
|  51|[0x800023a0]<br>0x0A25F9EA|- rs2_h0_val == 128<br>                                                                                                                                                                                                                                                                      |[0x8000073c]:KMABT t6, t5, t4<br> [0x80000740]:csrrs t5, vxsat, zero<br> [0x80000744]:sw t6, 144(ra)<br>    |
|  52|[0x800023a8]<br>0x0625E9EA|- rs2_h0_val == 32<br>                                                                                                                                                                                                                                                                       |[0x80000758]:KMABT t6, t5, t4<br> [0x8000075c]:csrrs t5, vxsat, zero<br> [0x80000760]:sw t6, 152(ra)<br>    |
|  53|[0x800023b0]<br>0x062729EF|- rs2_h0_val == 8<br> - rs1_h1_val == -513<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                    |[0x80000778]:KMABT t6, t5, t4<br> [0x8000077c]:csrrs t5, vxsat, zero<br> [0x80000780]:sw t6, 160(ra)<br>    |
|  54|[0x800023c0]<br>0x072425F5|- rs1_h1_val == -21846<br>                                                                                                                                                                                                                                                                   |[0x800007b4]:KMABT t6, t5, t4<br> [0x800007b8]:csrrs t5, vxsat, zero<br> [0x800007bc]:sw t6, 176(ra)<br>    |
|  55|[0x800023c8]<br>0x071C15F5|- rs2_h0_val == -4097<br>                                                                                                                                                                                                                                                                    |[0x800007d0]:KMABT t6, t5, t4<br> [0x800007d4]:csrrs t5, vxsat, zero<br> [0x800007d8]:sw t6, 184(ra)<br>    |
|  56|[0x800023d0]<br>0x071A14F5|- rs1_h1_val == -4097<br>                                                                                                                                                                                                                                                                    |[0x800007f0]:KMABT t6, t5, t4<br> [0x800007f4]:csrrs t5, vxsat, zero<br> [0x800007f8]:sw t6, 192(ra)<br>    |
|  57|[0x800023d8]<br>0x01C4B4F5|- rs1_h1_val == -2049<br>                                                                                                                                                                                                                                                                    |[0x8000080c]:KMABT t6, t5, t4<br> [0x80000810]:csrrs t5, vxsat, zero<br> [0x80000814]:sw t6, 200(ra)<br>    |
|  58|[0x800023e0]<br>0x01C574F5|- rs1_h1_val == -33<br>                                                                                                                                                                                                                                                                      |[0x8000082c]:KMABT t6, t5, t4<br> [0x80000830]:csrrs t5, vxsat, zero<br> [0x80000834]:sw t6, 208(ra)<br>    |
|  59|[0x800023e8]<br>0x01C57495|- rs1_h1_val == -5<br>                                                                                                                                                                                                                                                                       |[0x8000084c]:KMABT t6, t5, t4<br> [0x80000850]:csrrs t5, vxsat, zero<br> [0x80000854]:sw t6, 216(ra)<br>    |
|  60|[0x800023f0]<br>0xF1C57495|- rs1_h0_val == -32768<br> - rs1_h1_val == -2<br>                                                                                                                                                                                                                                            |[0x80000868]:KMABT t6, t5, t4<br> [0x8000086c]:csrrs t5, vxsat, zero<br> [0x80000870]:sw t6, 224(ra)<br>    |
|  61|[0x800023f8]<br>0xF1C67495|- rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                     |[0x80000884]:KMABT t6, t5, t4<br> [0x80000888]:csrrs t5, vxsat, zero<br> [0x8000088c]:sw t6, 232(ra)<br>    |
|  62|[0x80002400]<br>0xF1C67091|- rs2_h1_val == 4<br>                                                                                                                                                                                                                                                                        |[0x800008a4]:KMABT t6, t5, t4<br> [0x800008a8]:csrrs t5, vxsat, zero<br> [0x800008ac]:sw t6, 240(ra)<br>    |
|  63|[0x80002408]<br>0xF1C37091|- rs1_h1_val == 512<br>                                                                                                                                                                                                                                                                      |[0x800008c0]:KMABT t6, t5, t4<br> [0x800008c4]:csrrs t5, vxsat, zero<br> [0x800008c8]:sw t6, 248(ra)<br>    |
|  64|[0x80002410]<br>0xF1C36B91|- rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                       |[0x800008e0]:KMABT t6, t5, t4<br> [0x800008e4]:csrrs t5, vxsat, zero<br> [0x800008e8]:sw t6, 256(ra)<br>    |
|  65|[0x80002418]<br>0xF1C36A68|- rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                       |[0x80000900]:KMABT t6, t5, t4<br> [0x80000904]:csrrs t5, vxsat, zero<br> [0x80000908]:sw t6, 264(ra)<br>    |
|  66|[0x80002420]<br>0xF243EA68|- rs2_h0_val == -16385<br>                                                                                                                                                                                                                                                                   |[0x80000920]:KMABT t6, t5, t4<br> [0x80000924]:csrrs t5, vxsat, zero<br> [0x80000928]:sw t6, 272(ra)<br>    |
|  67|[0x80002428]<br>0xF2440A70|- rs1_h1_val == 4<br>                                                                                                                                                                                                                                                                        |[0x80000940]:KMABT t6, t5, t4<br> [0x80000944]:csrrs t5, vxsat, zero<br> [0x80000948]:sw t6, 280(ra)<br>    |
|  68|[0x80002430]<br>0xF233CAB1|- rs1_h1_val == -1<br>                                                                                                                                                                                                                                                                       |[0x8000095c]:KMABT t6, t5, t4<br> [0x80000960]:csrrs t5, vxsat, zero<br> [0x80000964]:sw t6, 288(ra)<br>    |
|  69|[0x80002438]<br>0xF4DED007|- rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                   |[0x8000097c]:KMABT t6, t5, t4<br> [0x80000980]:csrrs t5, vxsat, zero<br> [0x80000984]:sw t6, 296(ra)<br>    |
|  70|[0x80002440]<br>0xF4DED107|- rs2_h0_val == -513<br>                                                                                                                                                                                                                                                                     |[0x8000099c]:KMABT t6, t5, t4<br> [0x800009a0]:csrrs t5, vxsat, zero<br> [0x800009a4]:sw t6, 304(ra)<br>    |
|  71|[0x80002448]<br>0xF4DE7BB2|- rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                    |[0x800009bc]:KMABT t6, t5, t4<br> [0x800009c0]:csrrs t5, vxsat, zero<br> [0x800009c4]:sw t6, 312(ra)<br>    |
|  72|[0x80002450]<br>0xF4DE77A2|- rs2_h0_val == -9<br>                                                                                                                                                                                                                                                                       |[0x800009dc]:KMABT t6, t5, t4<br> [0x800009e0]:csrrs t5, vxsat, zero<br> [0x800009e4]:sw t6, 320(ra)<br>    |
|  73|[0x80002458]<br>0xCA33F7A2|- rs1_h1_val == -9<br>                                                                                                                                                                                                                                                                       |[0x800009f8]:KMABT t6, t5, t4<br> [0x800009fc]:csrrs t5, vxsat, zero<br> [0x80000a00]:sw t6, 328(ra)<br>    |
|  74|[0x80002460]<br>0xCA33779E|- rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                        |[0x80000a18]:KMABT t6, t5, t4<br> [0x80000a1c]:csrrs t5, vxsat, zero<br> [0x80000a20]:sw t6, 336(ra)<br>    |
|  75|[0x80002470]<br>0xCA33749E|- rs2_h1_val == 64<br>                                                                                                                                                                                                                                                                       |[0x80000a58]:KMABT t6, t5, t4<br> [0x80000a5c]:csrrs t5, vxsat, zero<br> [0x80000a60]:sw t6, 352(ra)<br>    |
