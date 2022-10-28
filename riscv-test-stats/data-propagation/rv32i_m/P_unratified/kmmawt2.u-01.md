
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000ba0')]      |
| SIG_REGION                | [('0x80002210', '0x80002500', '188 words')]      |
| COV_LABELS                | kmmawt2.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kmmawt2.u-01.S    |
| Total Number of coverpoints| 248     |
| Total Coverpoints Hit     | 242      |
| Total Signature Updates   | 188      |
| STAT1                     | 91      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 94     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005e4]:KMMAWT2_U t6, t5, t4
      [0x800005e8]:csrrs t5, vxsat, zero
      [0x800005ec]:sw t6, 80(ra)
 -- Signature Address: 0x80002368 Data: 0x4002464F
 -- Redundant Coverpoints hit by the op
      - opcode : kmmawt2.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h1_val == 0
      - rs1_w0_val == 4




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b70]:KMMAWT2_U t6, t5, t4
      [0x80000b74]:csrrs t5, vxsat, zero
      [0x80000b78]:sw t6, 472(ra)
 -- Signature Address: 0x800024f0 Data: 0x143BAEC3
 -- Redundant Coverpoints hit by the op
      - opcode : kmmawt2.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h1_val == -21846
      - rs2_h0_val == -1025
      - rs1_w0_val == -32769




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b8c]:KMMAWT2_U t6, t5, t4
      [0x80000b90]:csrrs t5, vxsat, zero
      [0x80000b94]:sw t6, 480(ra)
 -- Signature Address: 0x800024f8 Data: 0x143BAEC3
 -- Redundant Coverpoints hit by the op
      - opcode : kmmawt2.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h1_val == 21845
      - rs2_h0_val == 21845
      - rs1_w0_val == 0






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmmawt2.u', 'rs1 : x14', 'rs2 : x14', 'rd : x14', 'rs1 == rs2 == rd', 'rs2_h1_val == -1025']
Last Code Sequence : 
	-[0x80000118]:KMMAWT2_U a4, a4, a4
	-[0x8000011c]:csrrs a4, vxsat, zero
	-[0x80000120]:sw a4, 0(t2)
Current Store : [0x80000124] : sw a4, 4(t2) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x30', 'rd : x27', 'rs1 == rs2 != rd', 'rs2_h1_val == -21846', 'rs2_h0_val == -1025']
Last Code Sequence : 
	-[0x80000138]:KMMAWT2_U s11, t5, t5
	-[0x8000013c]:csrrs t5, vxsat, zero
	-[0x80000140]:sw s11, 8(t2)
Current Store : [0x80000144] : sw t5, 12(t2) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x20', 'rd : x0', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h1_val == 21845', 'rs2_h0_val == 21845', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x80000154]:KMMAWT2_U zero, tp, s4
	-[0x80000158]:csrrs tp, vxsat, zero
	-[0x8000015c]:sw zero, 16(t2)
Current Store : [0x80000160] : sw tp, 20(t2) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x22', 'rd : x22', 'rs2 == rd != rs1', 'rs2_h1_val == 32767', 'rs2_h0_val == 16384', 'rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x80000170]:KMMAWT2_U s6, t4, s6
	-[0x80000174]:csrrs t4, vxsat, zero
	-[0x80000178]:sw s6, 24(t2)
Current Store : [0x8000017c] : sw t4, 28(t2) -- Store: [0x8000222c]:0x00000000




Last Coverpoint : ['rs1 : x17', 'rs2 : x29', 'rd : x17', 'rs1 == rd != rs2', 'rs2_h1_val == -16385', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x8000018c]:KMMAWT2_U a7, a7, t4
	-[0x80000190]:csrrs a7, vxsat, zero
	-[0x80000194]:sw a7, 32(t2)
Current Store : [0x80000198] : sw a7, 36(t2) -- Store: [0x80002234]:0x00000000




Last Coverpoint : ['rs1 : x22', 'rs2 : x12', 'rd : x4', 'rs2_h1_val == -8193', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x800001ac]:KMMAWT2_U tp, s6, a2
	-[0x800001b0]:csrrs s6, vxsat, zero
	-[0x800001b4]:sw tp, 40(t2)
Current Store : [0x800001b8] : sw s6, 44(t2) -- Store: [0x8000223c]:0x00000000




Last Coverpoint : ['rs1 : x25', 'rs2 : x13', 'rd : x10', 'rs2_h1_val == -4097', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x800001c8]:KMMAWT2_U a0, s9, a3
	-[0x800001cc]:csrrs s9, vxsat, zero
	-[0x800001d0]:sw a0, 48(t2)
Current Store : [0x800001d4] : sw s9, 52(t2) -- Store: [0x80002244]:0x00000000




Last Coverpoint : ['rs1 : x8', 'rs2 : x3', 'rd : x9', 'rs2_h1_val == -2049', 'rs2_h0_val == -3', 'rs1_w0_val == -257']
Last Code Sequence : 
	-[0x800001e4]:KMMAWT2_U s1, fp, gp
	-[0x800001e8]:csrrs fp, vxsat, zero
	-[0x800001ec]:sw s1, 56(t2)
Current Store : [0x800001f0] : sw fp, 60(t2) -- Store: [0x8000224c]:0x00000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x6', 'rd : x26', 'rs2_h1_val == -513', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000200]:KMMAWT2_U s10, t3, t1
	-[0x80000204]:csrrs t3, vxsat, zero
	-[0x80000208]:sw s10, 64(t2)
Current Store : [0x8000020c] : sw t3, 68(t2) -- Store: [0x80002254]:0x00000000




Last Coverpoint : ['rs1 : x31', 'rs2 : x19', 'rd : x29', 'rs2_h1_val == -257', 'rs2_h0_val == -1']
Last Code Sequence : 
	-[0x8000021c]:KMMAWT2_U t4, t6, s3
	-[0x80000220]:csrrs t6, vxsat, zero
	-[0x80000224]:sw t4, 72(t2)
Current Store : [0x80000228] : sw t6, 76(t2) -- Store: [0x8000225c]:0x00000000




Last Coverpoint : ['rs1 : x11', 'rs2 : x2', 'rd : x1', 'rs2_h1_val == -129', 'rs2_h0_val == 256', 'rs1_w0_val == -9']
Last Code Sequence : 
	-[0x80000238]:KMMAWT2_U ra, a1, sp
	-[0x8000023c]:csrrs a1, vxsat, zero
	-[0x80000240]:sw ra, 80(t2)
Current Store : [0x80000244] : sw a1, 84(t2) -- Store: [0x80002264]:0x00000000




Last Coverpoint : ['rs1 : x10', 'rs2 : x17', 'rd : x5', 'rs2_h1_val == -65', 'rs2_h0_val == -513', 'rs1_w0_val == -129']
Last Code Sequence : 
	-[0x80000254]:KMMAWT2_U t0, a0, a7
	-[0x80000258]:csrrs a0, vxsat, zero
	-[0x8000025c]:sw t0, 88(t2)
Current Store : [0x80000260] : sw a0, 92(t2) -- Store: [0x8000226c]:0x00000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x26', 'rd : x30', 'rs2_h1_val == -33', 'rs2_h0_val == -129', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000270]:KMMAWT2_U t5, a5, s10
	-[0x80000274]:csrrs a5, vxsat, zero
	-[0x80000278]:sw t5, 96(t2)
Current Store : [0x8000027c] : sw a5, 100(t2) -- Store: [0x80002274]:0x00000000




Last Coverpoint : ['rs1 : x12', 'rs2 : x16', 'rd : x28', 'rs2_h1_val == -17', 'rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x8000028c]:KMMAWT2_U t3, a2, a6
	-[0x80000290]:csrrs a2, vxsat, zero
	-[0x80000294]:sw t3, 104(t2)
Current Store : [0x80000298] : sw a2, 108(t2) -- Store: [0x8000227c]:0x00000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x24', 'rd : x3', 'rs2_h1_val == -9', 'rs2_h0_val == -2049', 'rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x800002ac]:KMMAWT2_U gp, sp, s8
	-[0x800002b0]:csrrs sp, vxsat, zero
	-[0x800002b4]:sw gp, 112(t2)
Current Store : [0x800002b8] : sw sp, 116(t2) -- Store: [0x80002284]:0x00000000




Last Coverpoint : ['rs1 : x26', 'rs2 : x11', 'rd : x16', 'rs2_h1_val == -5', 'rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x800002d4]:KMMAWT2_U a6, s10, a1
	-[0x800002d8]:csrrs s10, vxsat, zero
	-[0x800002dc]:sw a6, 0(a4)
Current Store : [0x800002e0] : sw s10, 4(a4) -- Store: [0x8000228c]:0x00000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x27', 'rd : x15', 'rs2_h1_val == -3', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x800002f0]:KMMAWT2_U a5, s7, s11
	-[0x800002f4]:csrrs s7, vxsat, zero
	-[0x800002f8]:sw a5, 8(a4)
Current Store : [0x800002fc] : sw s7, 12(a4) -- Store: [0x80002294]:0x00000000




Last Coverpoint : ['rs1 : x9', 'rs2 : x10', 'rd : x7', 'rs2_h1_val == -2', 'rs2_h0_val == 4096', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000308]:KMMAWT2_U t2, s1, a0
	-[0x8000030c]:csrrs s1, vxsat, zero
	-[0x80000310]:sw t2, 16(a4)
Current Store : [0x80000314] : sw s1, 20(a4) -- Store: [0x8000229c]:0x00000000




Last Coverpoint : ['rs1 : x5', 'rs2 : x28', 'rd : x18', 'rs2_h1_val == -32768', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000320]:KMMAWT2_U s2, t0, t3
	-[0x80000324]:csrrs t0, vxsat, zero
	-[0x80000328]:sw s2, 24(a4)
Current Store : [0x8000032c] : sw t0, 28(a4) -- Store: [0x800022a4]:0x00000000




Last Coverpoint : ['rs1 : x0', 'rs2 : x31', 'rd : x23', 'rs2_h1_val == 16384', 'rs2_h0_val == -65']
Last Code Sequence : 
	-[0x80000340]:KMMAWT2_U s7, zero, t6
	-[0x80000344]:csrrs zero, vxsat, zero
	-[0x80000348]:sw s7, 32(a4)
Current Store : [0x8000034c] : sw zero, 36(a4) -- Store: [0x800022ac]:0x00000000




Last Coverpoint : ['rs1 : x24', 'rs2 : x21', 'rd : x19', 'rs2_h1_val == 8192']
Last Code Sequence : 
	-[0x8000035c]:KMMAWT2_U s3, s8, s5
	-[0x80000360]:csrrs s8, vxsat, zero
	-[0x80000364]:sw s3, 40(a4)
Current Store : [0x80000368] : sw s8, 44(a4) -- Store: [0x800022b4]:0x00000000




Last Coverpoint : ['rs1 : x16', 'rs2 : x5', 'rd : x21', 'rs2_h1_val == 4096', 'rs2_h0_val == 128', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000378]:KMMAWT2_U s5, a6, t0
	-[0x8000037c]:csrrs a6, vxsat, zero
	-[0x80000380]:sw s5, 48(a4)
Current Store : [0x80000384] : sw a6, 52(a4) -- Store: [0x800022bc]:0x00000000




Last Coverpoint : ['rs1 : x7', 'rs2 : x18', 'rd : x12', 'rs2_h1_val == 2048']
Last Code Sequence : 
	-[0x80000398]:KMMAWT2_U a2, t2, s2
	-[0x8000039c]:csrrs t2, vxsat, zero
	-[0x800003a0]:sw a2, 56(a4)
Current Store : [0x800003a4] : sw t2, 60(a4) -- Store: [0x800022c4]:0x00000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x0', 'rd : x2', 'rs2_h1_val == 0', 'rs2_h0_val == 0']
Last Code Sequence : 
	-[0x800003b4]:KMMAWT2_U sp, ra, zero
	-[0x800003b8]:csrrs ra, vxsat, zero
	-[0x800003bc]:sw sp, 64(a4)
Current Store : [0x800003c0] : sw ra, 68(a4) -- Store: [0x800022cc]:0x00000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x25', 'rd : x13', 'rs2_h1_val == 512', 'rs2_h0_val == -21846', 'rs1_w0_val == -513']
Last Code Sequence : 
	-[0x800003d0]:KMMAWT2_U a3, s5, s9
	-[0x800003d4]:csrrs s5, vxsat, zero
	-[0x800003d8]:sw a3, 72(a4)
Current Store : [0x800003dc] : sw s5, 76(a4) -- Store: [0x800022d4]:0x00000000




Last Coverpoint : ['rs1 : x27', 'rs2 : x1', 'rd : x24', 'rs2_h1_val == 256', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x800003ec]:KMMAWT2_U s8, s11, ra
	-[0x800003f0]:csrrs s11, vxsat, zero
	-[0x800003f4]:sw s8, 80(a4)
Current Store : [0x800003f8] : sw s11, 84(a4) -- Store: [0x800022dc]:0x00000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x23', 'rd : x25', 'rs2_h1_val == 128', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000408]:KMMAWT2_U s9, t1, s7
	-[0x8000040c]:csrrs t1, vxsat, zero
	-[0x80000410]:sw s9, 88(a4)
Current Store : [0x80000414] : sw t1, 92(a4) -- Store: [0x800022e4]:0x00000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x8', 'rd : x6', 'rs2_h1_val == 64', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000424]:KMMAWT2_U t1, a3, fp
	-[0x80000428]:csrrs a3, vxsat, zero
	-[0x8000042c]:sw t1, 96(a4)
Current Store : [0x80000430] : sw a3, 100(a4) -- Store: [0x800022ec]:0x00000000




Last Coverpoint : ['rs1 : x3', 'rs2 : x7', 'rd : x11', 'rs2_h1_val == 32', 'rs2_h0_val == 8', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000440]:KMMAWT2_U a1, gp, t2
	-[0x80000444]:csrrs gp, vxsat, zero
	-[0x80000448]:sw a1, 104(a4)
Current Store : [0x8000044c] : sw gp, 108(a4) -- Store: [0x800022f4]:0x00000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x15', 'rd : x8', 'rs2_h1_val == 16']
Last Code Sequence : 
	-[0x80000458]:KMMAWT2_U fp, s4, a5
	-[0x8000045c]:csrrs s4, vxsat, zero
	-[0x80000460]:sw fp, 112(a4)
Current Store : [0x80000464] : sw s4, 116(a4) -- Store: [0x800022fc]:0x00000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x4', 'rd : x31', 'rs2_h1_val == 8', 'rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x80000474]:KMMAWT2_U t6, s3, tp
	-[0x80000478]:csrrs s3, vxsat, zero
	-[0x8000047c]:sw t6, 120(a4)
Current Store : [0x80000480] : sw s3, 124(a4) -- Store: [0x80002304]:0x00000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x9', 'rd : x20', 'rs2_h1_val == 4', 'rs1_w0_val == -5']
Last Code Sequence : 
	-[0x80000490]:KMMAWT2_U s4, s2, s1
	-[0x80000494]:csrrs s2, vxsat, zero
	-[0x80000498]:sw s4, 128(a4)
Current Store : [0x8000049c] : sw s2, 132(a4) -- Store: [0x8000230c]:0x00000000




Last Coverpoint : ['rs2_h1_val == 2', 'rs2_h0_val == 2', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x800004b0]:KMMAWT2_U t6, t5, t4
	-[0x800004b4]:csrrs t5, vxsat, zero
	-[0x800004b8]:sw t6, 136(a4)
Current Store : [0x800004bc] : sw t5, 140(a4) -- Store: [0x80002314]:0x00000000




Last Coverpoint : ['rs2_h1_val == 1']
Last Code Sequence : 
	-[0x800004d4]:KMMAWT2_U t6, t5, t4
	-[0x800004d8]:csrrs t5, vxsat, zero
	-[0x800004dc]:sw t6, 0(ra)
Current Store : [0x800004e0] : sw t5, 4(ra) -- Store: [0x8000231c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 512']
Last Code Sequence : 
	-[0x800004f0]:KMMAWT2_U t6, t5, t4
	-[0x800004f4]:csrrs t5, vxsat, zero
	-[0x800004f8]:sw t6, 8(ra)
Current Store : [0x800004fc] : sw t5, 12(ra) -- Store: [0x80002324]:0x00000000




Last Coverpoint : ['rs1_w0_val == 128']
Last Code Sequence : 
	-[0x8000050c]:KMMAWT2_U t6, t5, t4
	-[0x80000510]:csrrs t5, vxsat, zero
	-[0x80000514]:sw t6, 16(ra)
Current Store : [0x80000518] : sw t5, 20(ra) -- Store: [0x8000232c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000528]:KMMAWT2_U t6, t5, t4
	-[0x8000052c]:csrrs t5, vxsat, zero
	-[0x80000530]:sw t6, 24(ra)
Current Store : [0x80000534] : sw t5, 28(ra) -- Store: [0x80002334]:0x00000000




Last Coverpoint : ['rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000540]:KMMAWT2_U t6, t5, t4
	-[0x80000544]:csrrs t5, vxsat, zero
	-[0x80000548]:sw t6, 32(ra)
Current Store : [0x8000054c] : sw t5, 36(ra) -- Store: [0x8000233c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 16']
Last Code Sequence : 
	-[0x8000055c]:KMMAWT2_U t6, t5, t4
	-[0x80000560]:csrrs t5, vxsat, zero
	-[0x80000564]:sw t6, 40(ra)
Current Store : [0x80000568] : sw t5, 44(ra) -- Store: [0x80002344]:0x00000000




Last Coverpoint : ['rs2_h0_val == 2048', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000578]:KMMAWT2_U t6, t5, t4
	-[0x8000057c]:csrrs t5, vxsat, zero
	-[0x80000580]:sw t6, 48(ra)
Current Store : [0x80000584] : sw t5, 52(ra) -- Store: [0x8000234c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000594]:KMMAWT2_U t6, t5, t4
	-[0x80000598]:csrrs t5, vxsat, zero
	-[0x8000059c]:sw t6, 56(ra)
Current Store : [0x800005a0] : sw t5, 60(ra) -- Store: [0x80002354]:0x00000000




Last Coverpoint : ['rs1_w0_val == 1']
Last Code Sequence : 
	-[0x800005b0]:KMMAWT2_U t6, t5, t4
	-[0x800005b4]:csrrs t5, vxsat, zero
	-[0x800005b8]:sw t6, 64(ra)
Current Store : [0x800005bc] : sw t5, 68(ra) -- Store: [0x8000235c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -17', 'rs1_w0_val == -1']
Last Code Sequence : 
	-[0x800005cc]:KMMAWT2_U t6, t5, t4
	-[0x800005d0]:csrrs t5, vxsat, zero
	-[0x800005d4]:sw t6, 72(ra)
Current Store : [0x800005d8] : sw t5, 76(ra) -- Store: [0x80002364]:0x00000000




Last Coverpoint : ['opcode : kmmawt2.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h1_val == 0', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x800005e4]:KMMAWT2_U t6, t5, t4
	-[0x800005e8]:csrrs t5, vxsat, zero
	-[0x800005ec]:sw t6, 80(ra)
Current Store : [0x800005f0] : sw t5, 84(ra) -- Store: [0x8000236c]:0x00000000




Last Coverpoint : ['rs2_h1_val == -1', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000600]:KMMAWT2_U t6, t5, t4
	-[0x80000604]:csrrs t5, vxsat, zero
	-[0x80000608]:sw t6, 88(ra)
Current Store : [0x8000060c] : sw t5, 92(ra) -- Store: [0x80002374]:0x00000000




Last Coverpoint : ['rs2_h0_val == 32767']
Last Code Sequence : 
	-[0x80000620]:KMMAWT2_U t6, t5, t4
	-[0x80000624]:csrrs t5, vxsat, zero
	-[0x80000628]:sw t6, 96(ra)
Current Store : [0x8000062c] : sw t5, 100(ra) -- Store: [0x8000237c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -16385', 'rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x80000640]:KMMAWT2_U t6, t5, t4
	-[0x80000644]:csrrs t5, vxsat, zero
	-[0x80000648]:sw t6, 104(ra)
Current Store : [0x8000064c] : sw t5, 108(ra) -- Store: [0x80002384]:0x00000000




Last Coverpoint : ['rs2_h0_val == -8193', 'rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x80000660]:KMMAWT2_U t6, t5, t4
	-[0x80000664]:csrrs t5, vxsat, zero
	-[0x80000668]:sw t6, 112(ra)
Current Store : [0x8000066c] : sw t5, 116(ra) -- Store: [0x8000238c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -4097']
Last Code Sequence : 
	-[0x8000067c]:KMMAWT2_U t6, t5, t4
	-[0x80000680]:csrrs t5, vxsat, zero
	-[0x80000684]:sw t6, 120(ra)
Current Store : [0x80000688] : sw t5, 124(ra) -- Store: [0x80002394]:0x00000000




Last Coverpoint : ['rs2_h0_val == -257']
Last Code Sequence : 
	-[0x80000698]:KMMAWT2_U t6, t5, t4
	-[0x8000069c]:csrrs t5, vxsat, zero
	-[0x800006a0]:sw t6, 128(ra)
Current Store : [0x800006a4] : sw t5, 132(ra) -- Store: [0x8000239c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -33']
Last Code Sequence : 
	-[0x800006b4]:KMMAWT2_U t6, t5, t4
	-[0x800006b8]:csrrs t5, vxsat, zero
	-[0x800006bc]:sw t6, 136(ra)
Current Store : [0x800006c0] : sw t5, 140(ra) -- Store: [0x800023a4]:0x00000000




Last Coverpoint : ['rs2_h0_val == -9']
Last Code Sequence : 
	-[0x800006d0]:KMMAWT2_U t6, t5, t4
	-[0x800006d4]:csrrs t5, vxsat, zero
	-[0x800006d8]:sw t6, 144(ra)
Current Store : [0x800006dc] : sw t5, 148(ra) -- Store: [0x800023ac]:0x00000000




Last Coverpoint : ['rs2_h0_val == -5', 'rs1_w0_val == -2']
Last Code Sequence : 
	-[0x800006ec]:KMMAWT2_U t6, t5, t4
	-[0x800006f0]:csrrs t5, vxsat, zero
	-[0x800006f4]:sw t6, 152(ra)
Current Store : [0x800006f8] : sw t5, 156(ra) -- Store: [0x800023b4]:0x00000000




Last Coverpoint : ['rs2_h0_val == -2']
Last Code Sequence : 
	-[0x80000708]:KMMAWT2_U t6, t5, t4
	-[0x8000070c]:csrrs t5, vxsat, zero
	-[0x80000710]:sw t6, 160(ra)
Current Store : [0x80000714] : sw t5, 164(ra) -- Store: [0x800023bc]:0x00000000




Last Coverpoint : ['rs2_h0_val == -32768']
Last Code Sequence : 
	-[0x80000720]:KMMAWT2_U t6, t5, t4
	-[0x80000724]:csrrs t5, vxsat, zero
	-[0x80000728]:sw t6, 168(ra)
Current Store : [0x8000072c] : sw t5, 172(ra) -- Store: [0x800023c4]:0x00000000




Last Coverpoint : ['rs2_h0_val == 8192']
Last Code Sequence : 
	-[0x80000738]:KMMAWT2_U t6, t5, t4
	-[0x8000073c]:csrrs t5, vxsat, zero
	-[0x80000740]:sw t6, 176(ra)
Current Store : [0x80000744] : sw t5, 180(ra) -- Store: [0x800023cc]:0x00000000




Last Coverpoint : ['rs2_h0_val == 1024']
Last Code Sequence : 
	-[0x80000754]:KMMAWT2_U t6, t5, t4
	-[0x80000758]:csrrs t5, vxsat, zero
	-[0x8000075c]:sw t6, 184(ra)
Current Store : [0x80000760] : sw t5, 188(ra) -- Store: [0x800023d4]:0x00000000




Last Coverpoint : ['rs2_h0_val == 512']
Last Code Sequence : 
	-[0x80000770]:KMMAWT2_U t6, t5, t4
	-[0x80000774]:csrrs t5, vxsat, zero
	-[0x80000778]:sw t6, 192(ra)
Current Store : [0x8000077c] : sw t5, 196(ra) -- Store: [0x800023dc]:0x00000000




Last Coverpoint : ['rs2_h0_val == 64']
Last Code Sequence : 
	-[0x8000078c]:KMMAWT2_U t6, t5, t4
	-[0x80000790]:csrrs t5, vxsat, zero
	-[0x80000794]:sw t6, 200(ra)
Current Store : [0x80000798] : sw t5, 204(ra) -- Store: [0x800023e4]:0x00000000




Last Coverpoint : ['rs2_h0_val == 32', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x800007a8]:KMMAWT2_U t6, t5, t4
	-[0x800007ac]:csrrs t5, vxsat, zero
	-[0x800007b0]:sw t6, 208(ra)
Current Store : [0x800007b4] : sw t5, 212(ra) -- Store: [0x800023ec]:0x00000000




Last Coverpoint : ['rs2_h0_val == 16']
Last Code Sequence : 
	-[0x800007c4]:KMMAWT2_U t6, t5, t4
	-[0x800007c8]:csrrs t5, vxsat, zero
	-[0x800007cc]:sw t6, 216(ra)
Current Store : [0x800007d0] : sw t5, 220(ra) -- Store: [0x800023f4]:0x00000000




Last Coverpoint : ['rs2_h0_val == 4']
Last Code Sequence : 
	-[0x800007dc]:KMMAWT2_U t6, t5, t4
	-[0x800007e0]:csrrs t5, vxsat, zero
	-[0x800007e4]:sw t6, 224(ra)
Current Store : [0x800007e8] : sw t5, 228(ra) -- Store: [0x800023fc]:0x00000000




Last Coverpoint : ['rs2_h0_val == 1']
Last Code Sequence : 
	-[0x800007f8]:KMMAWT2_U t6, t5, t4
	-[0x800007fc]:csrrs t5, vxsat, zero
	-[0x80000800]:sw t6, 232(ra)
Current Store : [0x80000804] : sw t5, 236(ra) -- Store: [0x80002404]:0x00000000




Last Coverpoint : ['rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80000818]:KMMAWT2_U t6, t5, t4
	-[0x8000081c]:csrrs t5, vxsat, zero
	-[0x80000820]:sw t6, 240(ra)
Current Store : [0x80000824] : sw t5, 244(ra) -- Store: [0x8000240c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x80000838]:KMMAWT2_U t6, t5, t4
	-[0x8000083c]:csrrs t5, vxsat, zero
	-[0x80000840]:sw t6, 248(ra)
Current Store : [0x80000844] : sw t5, 252(ra) -- Store: [0x80002414]:0x00000000




Last Coverpoint : ['rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x80000854]:KMMAWT2_U t6, t5, t4
	-[0x80000858]:csrrs t5, vxsat, zero
	-[0x8000085c]:sw t6, 256(ra)
Current Store : [0x80000860] : sw t5, 260(ra) -- Store: [0x8000241c]:0x00000000




Last Coverpoint : ['rs2_h1_val == 1024', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x80000870]:KMMAWT2_U t6, t5, t4
	-[0x80000874]:csrrs t5, vxsat, zero
	-[0x80000878]:sw t6, 264(ra)
Current Store : [0x8000087c] : sw t5, 268(ra) -- Store: [0x80002424]:0x00000000




Last Coverpoint : ['rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x80000890]:KMMAWT2_U t6, t5, t4
	-[0x80000894]:csrrs t5, vxsat, zero
	-[0x80000898]:sw t6, 272(ra)
Current Store : [0x8000089c] : sw t5, 276(ra) -- Store: [0x8000242c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x800008b0]:KMMAWT2_U t6, t5, t4
	-[0x800008b4]:csrrs t5, vxsat, zero
	-[0x800008b8]:sw t6, 280(ra)
Current Store : [0x800008bc] : sw t5, 284(ra) -- Store: [0x80002434]:0x00000000




Last Coverpoint : ['rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x800008d0]:KMMAWT2_U t6, t5, t4
	-[0x800008d4]:csrrs t5, vxsat, zero
	-[0x800008d8]:sw t6, 288(ra)
Current Store : [0x800008dc] : sw t5, 292(ra) -- Store: [0x8000243c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x800008f0]:KMMAWT2_U t6, t5, t4
	-[0x800008f4]:csrrs t5, vxsat, zero
	-[0x800008f8]:sw t6, 296(ra)
Current Store : [0x800008fc] : sw t5, 300(ra) -- Store: [0x80002444]:0x00000000




Last Coverpoint : ['rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x8000090c]:KMMAWT2_U t6, t5, t4
	-[0x80000910]:csrrs t5, vxsat, zero
	-[0x80000914]:sw t6, 304(ra)
Current Store : [0x80000918] : sw t5, 308(ra) -- Store: [0x8000244c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x80000928]:KMMAWT2_U t6, t5, t4
	-[0x8000092c]:csrrs t5, vxsat, zero
	-[0x80000930]:sw t6, 312(ra)
Current Store : [0x80000934] : sw t5, 316(ra) -- Store: [0x80002454]:0x00000000




Last Coverpoint : ['rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x80000948]:KMMAWT2_U t6, t5, t4
	-[0x8000094c]:csrrs t5, vxsat, zero
	-[0x80000950]:sw t6, 320(ra)
Current Store : [0x80000954] : sw t5, 324(ra) -- Store: [0x8000245c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x80000968]:KMMAWT2_U t6, t5, t4
	-[0x8000096c]:csrrs t5, vxsat, zero
	-[0x80000970]:sw t6, 328(ra)
Current Store : [0x80000974] : sw t5, 332(ra) -- Store: [0x80002464]:0x00000000




Last Coverpoint : ['rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x80000988]:KMMAWT2_U t6, t5, t4
	-[0x8000098c]:csrrs t5, vxsat, zero
	-[0x80000990]:sw t6, 336(ra)
Current Store : [0x80000994] : sw t5, 340(ra) -- Store: [0x8000246c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x800009a4]:KMMAWT2_U t6, t5, t4
	-[0x800009a8]:csrrs t5, vxsat, zero
	-[0x800009ac]:sw t6, 344(ra)
Current Store : [0x800009b0] : sw t5, 348(ra) -- Store: [0x80002474]:0x00000000




Last Coverpoint : ['rs1_w0_val == -65']
Last Code Sequence : 
	-[0x800009c0]:KMMAWT2_U t6, t5, t4
	-[0x800009c4]:csrrs t5, vxsat, zero
	-[0x800009c8]:sw t6, 352(ra)
Current Store : [0x800009cc] : sw t5, 356(ra) -- Store: [0x8000247c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -33']
Last Code Sequence : 
	-[0x800009dc]:KMMAWT2_U t6, t5, t4
	-[0x800009e0]:csrrs t5, vxsat, zero
	-[0x800009e4]:sw t6, 360(ra)
Current Store : [0x800009e8] : sw t5, 364(ra) -- Store: [0x80002484]:0x00000000




Last Coverpoint : ['rs1_w0_val == -17']
Last Code Sequence : 
	-[0x800009f8]:KMMAWT2_U t6, t5, t4
	-[0x800009fc]:csrrs t5, vxsat, zero
	-[0x80000a00]:sw t6, 368(ra)
Current Store : [0x80000a04] : sw t5, 372(ra) -- Store: [0x8000248c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -3']
Last Code Sequence : 
	-[0x80000a14]:KMMAWT2_U t6, t5, t4
	-[0x80000a18]:csrrs t5, vxsat, zero
	-[0x80000a1c]:sw t6, 376(ra)
Current Store : [0x80000a20] : sw t5, 380(ra) -- Store: [0x80002494]:0x00000000




Last Coverpoint : ['rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80000a30]:KMMAWT2_U t6, t5, t4
	-[0x80000a34]:csrrs t5, vxsat, zero
	-[0x80000a38]:sw t6, 384(ra)
Current Store : [0x80000a3c] : sw t5, 388(ra) -- Store: [0x8000249c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000a4c]:KMMAWT2_U t6, t5, t4
	-[0x80000a50]:csrrs t5, vxsat, zero
	-[0x80000a54]:sw t6, 392(ra)
Current Store : [0x80000a58] : sw t5, 396(ra) -- Store: [0x800024a4]:0x00000000




Last Coverpoint : ['rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000a68]:KMMAWT2_U t6, t5, t4
	-[0x80000a6c]:csrrs t5, vxsat, zero
	-[0x80000a70]:sw t6, 400(ra)
Current Store : [0x80000a74] : sw t5, 404(ra) -- Store: [0x800024ac]:0x00000000




Last Coverpoint : ['rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000a84]:KMMAWT2_U t6, t5, t4
	-[0x80000a88]:csrrs t5, vxsat, zero
	-[0x80000a8c]:sw t6, 408(ra)
Current Store : [0x80000a90] : sw t5, 412(ra) -- Store: [0x800024b4]:0x00000000




Last Coverpoint : ['rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000aa0]:KMMAWT2_U t6, t5, t4
	-[0x80000aa4]:csrrs t5, vxsat, zero
	-[0x80000aa8]:sw t6, 416(ra)
Current Store : [0x80000aac] : sw t5, 420(ra) -- Store: [0x800024bc]:0x00000000




Last Coverpoint : ['rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000abc]:KMMAWT2_U t6, t5, t4
	-[0x80000ac0]:csrrs t5, vxsat, zero
	-[0x80000ac4]:sw t6, 424(ra)
Current Store : [0x80000ac8] : sw t5, 428(ra) -- Store: [0x800024c4]:0x00000000




Last Coverpoint : ['rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x80000adc]:KMMAWT2_U t6, t5, t4
	-[0x80000ae0]:csrrs t5, vxsat, zero
	-[0x80000ae4]:sw t6, 432(ra)
Current Store : [0x80000ae8] : sw t5, 436(ra) -- Store: [0x800024cc]:0x00000000




Last Coverpoint : ['rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000af8]:KMMAWT2_U t6, t5, t4
	-[0x80000afc]:csrrs t5, vxsat, zero
	-[0x80000b00]:sw t6, 440(ra)
Current Store : [0x80000b04] : sw t5, 444(ra) -- Store: [0x800024d4]:0x00000000




Last Coverpoint : ['rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000b18]:KMMAWT2_U t6, t5, t4
	-[0x80000b1c]:csrrs t5, vxsat, zero
	-[0x80000b20]:sw t6, 448(ra)
Current Store : [0x80000b24] : sw t5, 452(ra) -- Store: [0x800024dc]:0x00000000




Last Coverpoint : ['rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000b34]:KMMAWT2_U t6, t5, t4
	-[0x80000b38]:csrrs t5, vxsat, zero
	-[0x80000b3c]:sw t6, 456(ra)
Current Store : [0x80000b40] : sw t5, 460(ra) -- Store: [0x800024e4]:0x00000000




Last Coverpoint : ['rs1_w0_val == -2147483648']
Last Code Sequence : 
	-[0x80000b50]:KMMAWT2_U t6, t5, t4
	-[0x80000b54]:csrrs t5, vxsat, zero
	-[0x80000b58]:sw t6, 464(ra)
Current Store : [0x80000b5c] : sw t5, 468(ra) -- Store: [0x800024ec]:0x00000000




Last Coverpoint : ['opcode : kmmawt2.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h1_val == -21846', 'rs2_h0_val == -1025', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x80000b70]:KMMAWT2_U t6, t5, t4
	-[0x80000b74]:csrrs t5, vxsat, zero
	-[0x80000b78]:sw t6, 472(ra)
Current Store : [0x80000b7c] : sw t5, 476(ra) -- Store: [0x800024f4]:0x00000000




Last Coverpoint : ['opcode : kmmawt2.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h1_val == 21845', 'rs2_h0_val == 21845', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x80000b8c]:KMMAWT2_U t6, t5, t4
	-[0x80000b90]:csrrs t5, vxsat, zero
	-[0x80000b94]:sw t6, 480(ra)
Current Store : [0x80000b98] : sw t5, 484(ra) -- Store: [0x800024fc]:0x00000000





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

|s.no|        signature         |                                                                             coverpoints                                                                             |                                                      code                                                      |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : kmmawt2.u<br> - rs1 : x14<br> - rs2 : x14<br> - rd : x14<br> - rs1 == rs2 == rd<br> - rs2_h1_val == -1025<br>                                             |[0x80000118]:KMMAWT2_U a4, a4, a4<br> [0x8000011c]:csrrs a4, vxsat, zero<br> [0x80000120]:sw a4, 0(t2)<br>      |
|   2|[0x80002218]<br>0xF4537546|- rs1 : x30<br> - rs2 : x30<br> - rd : x27<br> - rs1 == rs2 != rd<br> - rs2_h1_val == -21846<br> - rs2_h0_val == -1025<br>                                           |[0x80000138]:KMMAWT2_U s11, t5, t5<br> [0x8000013c]:csrrs t5, vxsat, zero<br> [0x80000140]:sw s11, 8(t2)<br>    |
|   3|[0x80002220]<br>0x00000000|- rs1 : x4<br> - rs2 : x20<br> - rd : x0<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_h1_val == 21845<br> - rs2_h0_val == 21845<br> - rs1_w0_val == 0<br> |[0x80000154]:KMMAWT2_U zero, tp, s4<br> [0x80000158]:csrrs tp, vxsat, zero<br> [0x8000015c]:sw zero, 16(t2)<br> |
|   4|[0x80002228]<br>0x5FFF7FFF|- rs1 : x29<br> - rs2 : x22<br> - rd : x22<br> - rs2 == rd != rs1<br> - rs2_h1_val == 32767<br> - rs2_h0_val == 16384<br> - rs1_w0_val == -536870913<br>             |[0x80000170]:KMMAWT2_U s6, t4, s6<br> [0x80000174]:csrrs t4, vxsat, zero<br> [0x80000178]:sw s6, 24(t2)<br>     |
|   5|[0x80002230]<br>0x00000000|- rs1 : x17<br> - rs2 : x29<br> - rd : x17<br> - rs1 == rd != rs2<br> - rs2_h1_val == -16385<br> - rs1_w0_val == 16384<br>                                           |[0x8000018c]:KMMAWT2_U a7, a7, t4<br> [0x80000190]:csrrs a7, vxsat, zero<br> [0x80000194]:sw a7, 32(t2)<br>     |
|   6|[0x80002238]<br>0x00002001|- rs1 : x22<br> - rs2 : x12<br> - rd : x4<br> - rs2_h1_val == -8193<br> - rs1_w0_val == -32769<br>                                                                   |[0x800001ac]:KMMAWT2_U tp, s6, a2<br> [0x800001b0]:csrrs s6, vxsat, zero<br> [0x800001b4]:sw tp, 40(t2)<br>     |
|   7|[0x80002240]<br>0xFFFF81F8|- rs1 : x25<br> - rs2 : x13<br> - rd : x10<br> - rs2_h1_val == -4097<br> - rs1_w0_val == 262144<br>                                                                  |[0x800001c8]:KMMAWT2_U a0, s9, a3<br> [0x800001cc]:csrrs s9, vxsat, zero<br> [0x800001d0]:sw a0, 48(t2)<br>     |
|   8|[0x80002248]<br>0xADFEEDCE|- rs1 : x8<br> - rs2 : x3<br> - rd : x9<br> - rs2_h1_val == -2049<br> - rs2_h0_val == -3<br> - rs1_w0_val == -257<br>                                                |[0x800001e4]:KMMAWT2_U s1, fp, gp<br> [0x800001e8]:csrrs fp, vxsat, zero<br> [0x800001ec]:sw s1, 56(t2)<br>     |
|   9|[0x80002250]<br>0x765F16FF|- rs1 : x28<br> - rs2 : x6<br> - rd : x26<br> - rs2_h1_val == -513<br> - rs1_w0_val == 536870912<br>                                                                 |[0x80000200]:KMMAWT2_U s10, t3, t1<br> [0x80000204]:csrrs t3, vxsat, zero<br> [0x80000208]:sw s10, 64(t2)<br>   |
|  10|[0x80002258]<br>0xBFBEC007|- rs1 : x31<br> - rs2 : x19<br> - rd : x29<br> - rs2_h1_val == -257<br> - rs2_h0_val == -1<br>                                                                       |[0x8000021c]:KMMAWT2_U t4, t6, s3<br> [0x80000220]:csrrs t6, vxsat, zero<br> [0x80000224]:sw t4, 72(t2)<br>     |
|  11|[0x80002260]<br>0xFEEDBEAD|- rs1 : x11<br> - rs2 : x2<br> - rd : x1<br> - rs2_h1_val == -129<br> - rs2_h0_val == 256<br> - rs1_w0_val == -9<br>                                                 |[0x80000238]:KMMAWT2_U ra, a1, sp<br> [0x8000023c]:csrrs a1, vxsat, zero<br> [0x80000240]:sw ra, 80(t2)<br>     |
|  12|[0x80002268]<br>0x800000F8|- rs1 : x10<br> - rs2 : x17<br> - rd : x5<br> - rs2_h1_val == -65<br> - rs2_h0_val == -513<br> - rs1_w0_val == -129<br>                                              |[0x80000254]:KMMAWT2_U t0, a0, a7<br> [0x80000258]:csrrs a0, vxsat, zero<br> [0x8000025c]:sw t0, 88(t2)<br>     |
|  13|[0x80002270]<br>0xFFFFFDF0|- rs1 : x15<br> - rs2 : x26<br> - rd : x30<br> - rs2_h1_val == -33<br> - rs2_h0_val == -129<br> - rs1_w0_val == 524288<br>                                           |[0x80000270]:KMMAWT2_U t5, a5, s10<br> [0x80000274]:csrrs a5, vxsat, zero<br> [0x80000278]:sw t5, 96(t2)<br>    |
|  14|[0x80002278]<br>0x00000110|- rs1 : x12<br> - rs2 : x16<br> - rd : x28<br> - rs2_h1_val == -17<br> - rs1_w0_val == -524289<br>                                                                   |[0x8000028c]:KMMAWT2_U t3, a2, a6<br> [0x80000290]:csrrs a2, vxsat, zero<br> [0x80000294]:sw t3, 104(t2)<br>    |
|  15|[0x80002280]<br>0xF7FFFFFE|- rs1 : x2<br> - rs2 : x24<br> - rd : x3<br> - rs2_h1_val == -9<br> - rs2_h0_val == -2049<br> - rs1_w0_val == -2049<br>                                              |[0x800002ac]:KMMAWT2_U gp, sp, s8<br> [0x800002b0]:csrrs sp, vxsat, zero<br> [0x800002b4]:sw gp, 112(t2)<br>    |
|  16|[0x80002288]<br>0xFFF31555|- rs1 : x26<br> - rs2 : x11<br> - rd : x16<br> - rs2_h1_val == -5<br> - rs1_w0_val == -1431655766<br>                                                                |[0x800002d4]:KMMAWT2_U a6, s10, a1<br> [0x800002d8]:csrrs s10, vxsat, zero<br> [0x800002dc]:sw a6, 0(a4)<br>    |
|  17|[0x80002290]<br>0xFFFFFD00|- rs1 : x23<br> - rs2 : x27<br> - rd : x15<br> - rs2_h1_val == -3<br> - rs1_w0_val == 8388608<br>                                                                    |[0x800002f0]:KMMAWT2_U a5, s7, s11<br> [0x800002f4]:csrrs s7, vxsat, zero<br> [0x800002f8]:sw a5, 8(a4)<br>     |
|  18|[0x80002298]<br>0x8000220E|- rs1 : x9<br> - rs2 : x10<br> - rd : x7<br> - rs2_h1_val == -2<br> - rs2_h0_val == 4096<br> - rs1_w0_val == 32768<br>                                               |[0x80000308]:KMMAWT2_U t2, s1, a0<br> [0x8000030c]:csrrs s1, vxsat, zero<br> [0x80000310]:sw t2, 16(a4)<br>     |
|  19|[0x800022a0]<br>0xCF56FF76|- rs1 : x5<br> - rs2 : x28<br> - rd : x18<br> - rs2_h1_val == -32768<br> - rs1_w0_val == 268435456<br>                                                               |[0x80000320]:KMMAWT2_U s2, t0, t3<br> [0x80000324]:csrrs t0, vxsat, zero<br> [0x80000328]:sw s2, 24(a4)<br>     |
|  20|[0x800022a8]<br>0x00000000|- rs1 : x0<br> - rs2 : x31<br> - rd : x23<br> - rs2_h1_val == 16384<br> - rs2_h0_val == -65<br>                                                                      |[0x80000340]:KMMAWT2_U s7, zero, t6<br> [0x80000344]:csrrs zero, vxsat, zero<br> [0x80000348]:sw s7, 32(a4)<br> |
|  21|[0x800022b0]<br>0xFEFFFFFD|- rs1 : x24<br> - rs2 : x21<br> - rd : x19<br> - rs2_h1_val == 8192<br>                                                                                              |[0x8000035c]:KMMAWT2_U s3, s8, s5<br> [0x80000360]:csrrs s8, vxsat, zero<br> [0x80000364]:sw s3, 40(a4)<br>     |
|  22|[0x800022b8]<br>0x20011FF6|- rs1 : x16<br> - rs2 : x5<br> - rd : x21<br> - rs2_h1_val == 4096<br> - rs2_h0_val == 128<br> - rs1_w0_val == 65536<br>                                             |[0x80000378]:KMMAWT2_U s5, a6, t0<br> [0x8000037c]:csrrs a6, vxsat, zero<br> [0x80000380]:sw s5, 48(a4)<br>     |
|  23|[0x800022c0]<br>0xFAAAAAAB|- rs1 : x7<br> - rs2 : x18<br> - rd : x12<br> - rs2_h1_val == 2048<br>                                                                                               |[0x80000398]:KMMAWT2_U a2, t2, s2<br> [0x8000039c]:csrrs t2, vxsat, zero<br> [0x800003a0]:sw a2, 56(a4)<br>     |
|  24|[0x800022c8]<br>0x00000000|- rs1 : x1<br> - rs2 : x0<br> - rd : x2<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br>                                                                              |[0x800003b4]:KMMAWT2_U sp, ra, zero<br> [0x800003b8]:csrrs ra, vxsat, zero<br> [0x800003bc]:sw sp, 64(a4)<br>   |
|  25|[0x800022d0]<br>0xEFFFFFEE|- rs1 : x21<br> - rs2 : x25<br> - rd : x13<br> - rs2_h1_val == 512<br> - rs2_h0_val == -21846<br> - rs1_w0_val == -513<br>                                           |[0x800003d0]:KMMAWT2_U a3, s5, s9<br> [0x800003d4]:csrrs s5, vxsat, zero<br> [0x800003d8]:sw a3, 72(a4)<br>     |
|  26|[0x800022d8]<br>0x00000000|- rs1 : x27<br> - rs2 : x1<br> - rd : x24<br> - rs2_h1_val == 256<br> - rs1_w0_val == 4<br>                                                                          |[0x800003ec]:KMMAWT2_U s8, s11, ra<br> [0x800003f0]:csrrs s11, vxsat, zero<br> [0x800003f4]:sw s8, 80(a4)<br>   |
|  27|[0x800022e0]<br>0x0200ACAA|- rs1 : x6<br> - rs2 : x23<br> - rd : x25<br> - rs2_h1_val == 128<br> - rs1_w0_val == 131072<br>                                                                     |[0x80000408]:KMMAWT2_U s9, t1, s7<br> [0x8000040c]:csrrs t1, vxsat, zero<br> [0x80000410]:sw s9, 88(a4)<br>     |
|  28|[0x800022e8]<br>0x00000001|- rs1 : x13<br> - rs2 : x8<br> - rd : x6<br> - rs2_h1_val == 64<br> - rs1_w0_val == 256<br>                                                                          |[0x80000424]:KMMAWT2_U t1, a3, fp<br> [0x80000428]:csrrs a3, vxsat, zero<br> [0x8000042c]:sw t1, 96(a4)<br>     |
|  29|[0x800022f0]<br>0xFFFC3DFF|- rs1 : x3<br> - rs2 : x7<br> - rd : x11<br> - rs2_h1_val == 32<br> - rs2_h0_val == 8<br> - rs1_w0_val == 16777216<br>                                               |[0x80000440]:KMMAWT2_U a1, gp, t2<br> [0x80000444]:csrrs gp, vxsat, zero<br> [0x80000448]:sw a1, 104(a4)<br>    |
|  30|[0x800022f8]<br>0x0040FFFC|- rs1 : x20<br> - rs2 : x15<br> - rd : x8<br> - rs2_h1_val == 16<br>                                                                                                 |[0x80000458]:KMMAWT2_U fp, s4, a5<br> [0x8000045c]:csrrs s4, vxsat, zero<br> [0x80000460]:sw fp, 112(a4)<br>    |
|  31|[0x80002300]<br>0x4000EFBF|- rs1 : x19<br> - rs2 : x4<br> - rd : x31<br> - rs2_h1_val == 8<br> - rs1_w0_val == -16777217<br>                                                                    |[0x80000474]:KMMAWT2_U t6, s3, tp<br> [0x80000478]:csrrs s3, vxsat, zero<br> [0x8000047c]:sw t6, 120(a4)<br>    |
|  32|[0x80002308]<br>0x00000000|- rs1 : x18<br> - rs2 : x9<br> - rd : x20<br> - rs2_h1_val == 4<br> - rs1_w0_val == -5<br>                                                                           |[0x80000490]:KMMAWT2_U s4, s2, s1<br> [0x80000494]:csrrs s2, vxsat, zero<br> [0x80000498]:sw s4, 128(a4)<br>    |
|  33|[0x80002310]<br>0x40024514|- rs2_h1_val == 2<br> - rs2_h0_val == 2<br> - rs1_w0_val == 1431655765<br>                                                                                           |[0x800004b0]:KMMAWT2_U t6, t5, t4<br> [0x800004b4]:csrrs t5, vxsat, zero<br> [0x800004b8]:sw t6, 136(a4)<br>    |
|  34|[0x80002318]<br>0x40024524|- rs2_h1_val == 1<br>                                                                                                                                                |[0x800004d4]:KMMAWT2_U t6, t5, t4<br> [0x800004d8]:csrrs t5, vxsat, zero<br> [0x800004dc]:sw t6, 0(ra)<br>      |
|  35|[0x80002320]<br>0x40024679|- rs1_w0_val == 512<br>                                                                                                                                              |[0x800004f0]:KMMAWT2_U t6, t5, t4<br> [0x800004f4]:csrrs t5, vxsat, zero<br> [0x800004f8]:sw t6, 8(ra)<br>      |
|  36|[0x80002328]<br>0x40024679|- rs1_w0_val == 128<br>                                                                                                                                              |[0x8000050c]:KMMAWT2_U t6, t5, t4<br> [0x80000510]:csrrs t5, vxsat, zero<br> [0x80000514]:sw t6, 16(ra)<br>     |
|  37|[0x80002330]<br>0x40024659|- rs1_w0_val == 64<br>                                                                                                                                               |[0x80000528]:KMMAWT2_U t6, t5, t4<br> [0x8000052c]:csrrs t5, vxsat, zero<br> [0x80000530]:sw t6, 24(ra)<br>     |
|  38|[0x80002338]<br>0x40024659|- rs1_w0_val == 32<br>                                                                                                                                               |[0x80000540]:KMMAWT2_U t6, t5, t4<br> [0x80000544]:csrrs t5, vxsat, zero<br> [0x80000548]:sw t6, 32(ra)<br>     |
|  39|[0x80002340]<br>0x4002464E|- rs1_w0_val == 16<br>                                                                                                                                               |[0x8000055c]:KMMAWT2_U t6, t5, t4<br> [0x80000560]:csrrs t5, vxsat, zero<br> [0x80000564]:sw t6, 40(ra)<br>     |
|  40|[0x80002348]<br>0x4002464F|- rs2_h0_val == 2048<br> - rs1_w0_val == 8<br>                                                                                                                       |[0x80000578]:KMMAWT2_U t6, t5, t4<br> [0x8000057c]:csrrs t5, vxsat, zero<br> [0x80000580]:sw t6, 48(ra)<br>     |
|  41|[0x80002350]<br>0x4002464F|- rs1_w0_val == 2<br>                                                                                                                                                |[0x80000594]:KMMAWT2_U t6, t5, t4<br> [0x80000598]:csrrs t5, vxsat, zero<br> [0x8000059c]:sw t6, 56(ra)<br>     |
|  42|[0x80002358]<br>0x4002464F|- rs1_w0_val == 1<br>                                                                                                                                                |[0x800005b0]:KMMAWT2_U t6, t5, t4<br> [0x800005b4]:csrrs t5, vxsat, zero<br> [0x800005b8]:sw t6, 64(ra)<br>     |
|  43|[0x80002360]<br>0x4002464F|- rs2_h0_val == -17<br> - rs1_w0_val == -1<br>                                                                                                                       |[0x800005cc]:KMMAWT2_U t6, t5, t4<br> [0x800005d0]:csrrs t5, vxsat, zero<br> [0x800005d4]:sw t6, 72(ra)<br>     |
|  44|[0x80002370]<br>0x4002424F|- rs2_h1_val == -1<br> - rs1_w0_val == 33554432<br>                                                                                                                  |[0x80000600]:KMMAWT2_U t6, t5, t4<br> [0x80000604]:csrrs t5, vxsat, zero<br> [0x80000608]:sw t6, 88(ra)<br>     |
|  45|[0x80002378]<br>0x3AACECFA|- rs2_h0_val == 32767<br>                                                                                                                                            |[0x80000620]:KMMAWT2_U t6, t5, t4<br> [0x80000624]:csrrs t5, vxsat, zero<br> [0x80000628]:sw t6, 96(ra)<br>     |
|  46|[0x80002380]<br>0x3AACF4FB|- rs2_h0_val == -16385<br> - rs1_w0_val == -8193<br>                                                                                                                 |[0x80000640]:KMMAWT2_U t6, t5, t4<br> [0x80000644]:csrrs t5, vxsat, zero<br> [0x80000648]:sw t6, 104(ra)<br>    |
|  47|[0x80002388]<br>0x3AACF4EB|- rs2_h0_val == -8193<br> - rs1_w0_val == -4097<br>                                                                                                                  |[0x80000660]:KMMAWT2_U t6, t5, t4<br> [0x80000664]:csrrs t5, vxsat, zero<br> [0x80000668]:sw t6, 112(ra)<br>    |
|  48|[0x80002390]<br>0x3AACF52B|- rs2_h0_val == -4097<br>                                                                                                                                            |[0x8000067c]:KMMAWT2_U t6, t5, t4<br> [0x80000680]:csrrs t5, vxsat, zero<br> [0x80000684]:sw t6, 120(ra)<br>    |
|  49|[0x80002398]<br>0x3AACF530|- rs2_h0_val == -257<br>                                                                                                                                             |[0x80000698]:KMMAWT2_U t6, t5, t4<br> [0x8000069c]:csrrs t5, vxsat, zero<br> [0x800006a0]:sw t6, 128(ra)<br>    |
|  50|[0x800023a0]<br>0x3AACF530|- rs2_h0_val == -33<br>                                                                                                                                              |[0x800006b4]:KMMAWT2_U t6, t5, t4<br> [0x800006b8]:csrrs t5, vxsat, zero<br> [0x800006bc]:sw t6, 136(ra)<br>    |
|  51|[0x800023a8]<br>0x3AACF534|- rs2_h0_val == -9<br>                                                                                                                                               |[0x800006d0]:KMMAWT2_U t6, t5, t4<br> [0x800006d4]:csrrs t5, vxsat, zero<br> [0x800006d8]:sw t6, 144(ra)<br>    |
|  52|[0x800023b0]<br>0x3AACF534|- rs2_h0_val == -5<br> - rs1_w0_val == -2<br>                                                                                                                        |[0x800006ec]:KMMAWT2_U t6, t5, t4<br> [0x800006f0]:csrrs t5, vxsat, zero<br> [0x800006f4]:sw t6, 152(ra)<br>    |
|  53|[0x800023b8]<br>0x3AACF53C|- rs2_h0_val == -2<br>                                                                                                                                               |[0x80000708]:KMMAWT2_U t6, t5, t4<br> [0x8000070c]:csrrs t5, vxsat, zero<br> [0x80000710]:sw t6, 160(ra)<br>    |
|  54|[0x800023c0]<br>0x3AAD353C|- rs2_h0_val == -32768<br>                                                                                                                                           |[0x80000720]:KMMAWT2_U t6, t5, t4<br> [0x80000724]:csrrs t5, vxsat, zero<br> [0x80000728]:sw t6, 168(ra)<br>    |
|  55|[0x800023c8]<br>0x3AAD353C|- rs2_h0_val == 8192<br>                                                                                                                                             |[0x80000738]:KMMAWT2_U t6, t5, t4<br> [0x8000073c]:csrrs t5, vxsat, zero<br> [0x80000740]:sw t6, 176(ra)<br>    |
|  56|[0x800023d0]<br>0x3AAD353C|- rs2_h0_val == 1024<br>                                                                                                                                             |[0x80000754]:KMMAWT2_U t6, t5, t4<br> [0x80000758]:csrrs t5, vxsat, zero<br> [0x8000075c]:sw t6, 184(ra)<br>    |
|  57|[0x800023d8]<br>0x3AAD353C|- rs2_h0_val == 512<br>                                                                                                                                              |[0x80000770]:KMMAWT2_U t6, t5, t4<br> [0x80000774]:csrrs t5, vxsat, zero<br> [0x80000778]:sw t6, 192(ra)<br>    |
|  58|[0x800023e0]<br>0x3AAD34B4|- rs2_h0_val == 64<br>                                                                                                                                               |[0x8000078c]:KMMAWT2_U t6, t5, t4<br> [0x80000790]:csrrs t5, vxsat, zero<br> [0x80000794]:sw t6, 200(ra)<br>    |
|  59|[0x800023e8]<br>0x3AAD34B5|- rs2_h0_val == 32<br> - rs1_w0_val == 4096<br>                                                                                                                      |[0x800007a8]:KMMAWT2_U t6, t5, t4<br> [0x800007ac]:csrrs t5, vxsat, zero<br> [0x800007b0]:sw t6, 208(ra)<br>    |
|  60|[0x800023f0]<br>0x3AAC33B5|- rs2_h0_val == 16<br>                                                                                                                                               |[0x800007c4]:KMMAWT2_U t6, t5, t4<br> [0x800007c8]:csrrs t5, vxsat, zero<br> [0x800007cc]:sw t6, 216(ra)<br>    |
|  61|[0x800023f8]<br>0x3AAC33B5|- rs2_h0_val == 4<br>                                                                                                                                                |[0x800007dc]:KMMAWT2_U t6, t5, t4<br> [0x800007e0]:csrrs t5, vxsat, zero<br> [0x800007e4]:sw t6, 224(ra)<br>    |
|  62|[0x80002400]<br>0x3AAC3436|- rs2_h0_val == 1<br>                                                                                                                                                |[0x800007f8]:KMMAWT2_U t6, t5, t4<br> [0x800007fc]:csrrs t5, vxsat, zero<br> [0x80000800]:sw t6, 232(ra)<br>    |
|  63|[0x80002408]<br>0x1AAB3436|- rs1_w0_val == 2147483647<br>                                                                                                                                       |[0x80000818]:KMMAWT2_U t6, t5, t4<br> [0x8000081c]:csrrs t5, vxsat, zero<br> [0x80000820]:sw t6, 240(ra)<br>    |
|  64|[0x80002410]<br>0x1AAF3436|- rs1_w0_val == -1073741825<br>                                                                                                                                      |[0x80000838]:KMMAWT2_U t6, t5, t4<br> [0x8000083c]:csrrs t5, vxsat, zero<br> [0x80000840]:sw t6, 248(ra)<br>    |
|  65|[0x80002418]<br>0x10049435|- rs1_w0_val == -268435457<br>                                                                                                                                       |[0x80000854]:KMMAWT2_U t6, t5, t4<br> [0x80000858]:csrrs t5, vxsat, zero<br> [0x8000085c]:sw t6, 256(ra)<br>    |
|  66|[0x80002420]<br>0x0FC49435|- rs2_h1_val == 1024<br> - rs1_w0_val == -134217729<br>                                                                                                              |[0x80000870]:KMMAWT2_U t6, t5, t4<br> [0x80000874]:csrrs t5, vxsat, zero<br> [0x80000878]:sw t6, 264(ra)<br>    |
|  67|[0x80002428]<br>0x0FC69C35|- rs1_w0_val == -67108865<br>                                                                                                                                        |[0x80000890]:KMMAWT2_U t6, t5, t4<br> [0x80000894]:csrrs t5, vxsat, zero<br> [0x80000898]:sw t6, 272(ra)<br>    |
|  68|[0x80002430]<br>0x0FC59C35|- rs1_w0_val == -33554433<br>                                                                                                                                        |[0x800008b0]:KMMAWT2_U t6, t5, t4<br> [0x800008b4]:csrrs t5, vxsat, zero<br> [0x800008b8]:sw t6, 280(ra)<br>    |
|  69|[0x80002438]<br>0x10059D36|- rs1_w0_val == -8388609<br>                                                                                                                                         |[0x800008d0]:KMMAWT2_U t6, t5, t4<br> [0x800008d4]:csrrs t5, vxsat, zero<br> [0x800008d8]:sw t6, 288(ra)<br>    |
|  70|[0x80002440]<br>0x10055D36|- rs1_w0_val == -4194305<br>                                                                                                                                         |[0x800008f0]:KMMAWT2_U t6, t5, t4<br> [0x800008f4]:csrrs t5, vxsat, zero<br> [0x800008f8]:sw t6, 296(ra)<br>    |
|  71|[0x80002448]<br>0x10055D36|- rs1_w0_val == -2097153<br>                                                                                                                                         |[0x8000090c]:KMMAWT2_U t6, t5, t4<br> [0x80000910]:csrrs t5, vxsat, zero<br> [0x80000914]:sw t6, 304(ra)<br>    |
|  72|[0x80002450]<br>0x10056156|- rs1_w0_val == -1048577<br>                                                                                                                                         |[0x80000928]:KMMAWT2_U t6, t5, t4<br> [0x8000092c]:csrrs t5, vxsat, zero<br> [0x80000930]:sw t6, 312(ra)<br>    |
|  73|[0x80002458]<br>0x1005E15E|- rs1_w0_val == -262145<br>                                                                                                                                          |[0x80000948]:KMMAWT2_U t6, t5, t4<br> [0x8000094c]:csrrs t5, vxsat, zero<br> [0x80000950]:sw t6, 320(ra)<br>    |
|  74|[0x80002460]<br>0x1005DD5E|- rs1_w0_val == -131073<br>                                                                                                                                          |[0x80000968]:KMMAWT2_U t6, t5, t4<br> [0x8000096c]:csrrs t5, vxsat, zero<br> [0x80000970]:sw t6, 328(ra)<br>    |
|  75|[0x80002468]<br>0x1005D95E|- rs1_w0_val == -65537<br>                                                                                                                                           |[0x80000988]:KMMAWT2_U t6, t5, t4<br> [0x8000098c]:csrrs t5, vxsat, zero<br> [0x80000990]:sw t6, 336(ra)<br>    |
|  76|[0x80002470]<br>0x1005D95E|- rs1_w0_val == -1025<br>                                                                                                                                            |[0x800009a4]:KMMAWT2_U t6, t5, t4<br> [0x800009a8]:csrrs t5, vxsat, zero<br> [0x800009ac]:sw t6, 344(ra)<br>    |
|  77|[0x80002478]<br>0x1005D95E|- rs1_w0_val == -65<br>                                                                                                                                              |[0x800009c0]:KMMAWT2_U t6, t5, t4<br> [0x800009c4]:csrrs t5, vxsat, zero<br> [0x800009c8]:sw t6, 352(ra)<br>    |
|  78|[0x80002480]<br>0x1005D95E|- rs1_w0_val == -33<br>                                                                                                                                              |[0x800009dc]:KMMAWT2_U t6, t5, t4<br> [0x800009e0]:csrrs t5, vxsat, zero<br> [0x800009e4]:sw t6, 360(ra)<br>    |
|  79|[0x80002488]<br>0x1005D96F|- rs1_w0_val == -17<br>                                                                                                                                              |[0x800009f8]:KMMAWT2_U t6, t5, t4<br> [0x800009fc]:csrrs t5, vxsat, zero<br> [0x80000a00]:sw t6, 368(ra)<br>    |
|  80|[0x80002490]<br>0x1005D96F|- rs1_w0_val == -3<br>                                                                                                                                               |[0x80000a14]:KMMAWT2_U t6, t5, t4<br> [0x80000a18]:csrrs t5, vxsat, zero<br> [0x80000a1c]:sw t6, 376(ra)<br>    |
|  81|[0x80002498]<br>0x1007D96F|- rs1_w0_val == 1073741824<br>                                                                                                                                       |[0x80000a30]:KMMAWT2_U t6, t5, t4<br> [0x80000a34]:csrrs t5, vxsat, zero<br> [0x80000a38]:sw t6, 384(ra)<br>    |
|  82|[0x800024a0]<br>0x1007A96F|- rs1_w0_val == 134217728<br>                                                                                                                                        |[0x80000a4c]:KMMAWT2_U t6, t5, t4<br> [0x80000a50]:csrrs t5, vxsat, zero<br> [0x80000a54]:sw t6, 392(ra)<br>    |
|  83|[0x800024a8]<br>0x100FA96F|- rs1_w0_val == 67108864<br>                                                                                                                                         |[0x80000a68]:KMMAWT2_U t6, t5, t4<br> [0x80000a6c]:csrrs t5, vxsat, zero<br> [0x80000a70]:sw t6, 400(ra)<br>    |
|  84|[0x800024b0]<br>0x100FAB6F|- rs1_w0_val == 8192<br>                                                                                                                                             |[0x80000a84]:KMMAWT2_U t6, t5, t4<br> [0x80000a88]:csrrs t5, vxsat, zero<br> [0x80000a8c]:sw t6, 408(ra)<br>    |
|  85|[0x800024b8]<br>0x103A55EF|- rs1_w0_val == 4194304<br>                                                                                                                                          |[0x80000aa0]:KMMAWT2_U t6, t5, t4<br> [0x80000aa4]:csrrs t5, vxsat, zero<br> [0x80000aa8]:sw t6, 416(ra)<br>    |
|  86|[0x800024c0]<br>0x103A572F|- rs1_w0_val == 2097152<br>                                                                                                                                          |[0x80000abc]:KMMAWT2_U t6, t5, t4<br> [0x80000ac0]:csrrs t5, vxsat, zero<br> [0x80000ac4]:sw t6, 424(ra)<br>    |
|  87|[0x800024c8]<br>0x103A572C|- rs1_w0_val == -16385<br>                                                                                                                                           |[0x80000adc]:KMMAWT2_U t6, t5, t4<br> [0x80000ae0]:csrrs t5, vxsat, zero<br> [0x80000ae4]:sw t6, 432(ra)<br>    |
|  88|[0x800024d0]<br>0x103A576C|- rs1_w0_val == 1048576<br>                                                                                                                                          |[0x80000af8]:KMMAWT2_U t6, t5, t4<br> [0x80000afc]:csrrs t5, vxsat, zero<br> [0x80000b00]:sw t6, 440(ra)<br>    |
|  89|[0x800024d8]<br>0x103A596C|- rs1_w0_val == 2048<br>                                                                                                                                             |[0x80000b18]:KMMAWT2_U t6, t5, t4<br> [0x80000b1c]:csrrs t5, vxsat, zero<br> [0x80000b20]:sw t6, 448(ra)<br>    |
|  90|[0x800024e0]<br>0x103A596C|- rs1_w0_val == 1024<br>                                                                                                                                             |[0x80000b34]:KMMAWT2_U t6, t5, t4<br> [0x80000b38]:csrrs t5, vxsat, zero<br> [0x80000b3c]:sw t6, 456(ra)<br>    |
|  91|[0x800024e8]<br>0x143B596C|- rs1_w0_val == -2147483648<br>                                                                                                                                      |[0x80000b50]:KMMAWT2_U t6, t5, t4<br> [0x80000b54]:csrrs t5, vxsat, zero<br> [0x80000b58]:sw t6, 464(ra)<br>    |
