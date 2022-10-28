
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000b90')]      |
| SIG_REGION                | [('0x80002210', '0x80002500', '188 words')]      |
| COV_LABELS                | kmmawb2      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kmmawb2-01.S    |
| Total Number of coverpoints| 248     |
| Total Coverpoints Hit     | 242      |
| Total Signature Updates   | 186      |
| STAT1                     | 91      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 93     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000784]:KMMAWB2 t6, t5, t4
      [0x80000788]:csrrs t5, vxsat, zero
      [0x8000078c]:sw t6, 192(ra)
 -- Signature Address: 0x800023d8 Data: 0x0853475A
 -- Redundant Coverpoints hit by the op
      - opcode : kmmawb2
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h1_val == 4096
      - rs2_h0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b60]:KMMAWB2 t6, t5, t4
      [0x80000b64]:csrrs t5, vxsat, zero
      [0x80000b68]:sw t6, 464(ra)
 -- Signature Address: 0x800024e8 Data: 0x19F8022C
 -- Redundant Coverpoints hit by the op
      - opcode : kmmawb2
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h1_val == -8193
      - rs1_w0_val == 524288






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmmawb2', 'rs1 : x5', 'rs2 : x5', 'rd : x5', 'rs1 == rs2 == rd', 'rs2_h1_val == 64']
Last Code Sequence : 
	-[0x80000118]:KMMAWB2 t0, t0, t0
	-[0x8000011c]:csrrs t0, vxsat, zero
	-[0x80000120]:sw t0, 0(t1)
Current Store : [0x80000124] : sw t0, 4(t1) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x12', 'rs2 : x12', 'rd : x19', 'rs1 == rs2 != rd', 'rs2_h1_val == -21846', 'rs2_h0_val == 1']
Last Code Sequence : 
	-[0x80000138]:KMMAWB2 s3, a2, a2
	-[0x8000013c]:csrrs a2, vxsat, zero
	-[0x80000140]:sw s3, 8(t1)
Current Store : [0x80000144] : sw a2, 12(t1) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x16', 'rs2 : x9', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h1_val == 21845']
Last Code Sequence : 
	-[0x80000154]:KMMAWB2 t5, a6, s1
	-[0x80000158]:csrrs a6, vxsat, zero
	-[0x8000015c]:sw t5, 16(t1)
Current Store : [0x80000160] : sw a6, 20(t1) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x9', 'rs2 : x13', 'rd : x13', 'rs2 == rd != rs1', 'rs2_h1_val == 32767', 'rs2_h0_val == -32768', 'rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x80000170]:KMMAWB2 a3, s1, a3
	-[0x80000174]:csrrs s1, vxsat, zero
	-[0x80000178]:sw a3, 24(t1)
Current Store : [0x8000017c] : sw s1, 28(t1) -- Store: [0x8000222c]:0x00000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x31', 'rd : x29', 'rs1 == rd != rs2', 'rs2_h1_val == -16385']
Last Code Sequence : 
	-[0x8000018c]:KMMAWB2 t4, t4, t6
	-[0x80000190]:csrrs t4, vxsat, zero
	-[0x80000194]:sw t4, 32(t1)
Current Store : [0x80000198] : sw t4, 36(t1) -- Store: [0x80002234]:0x00000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x0', 'rd : x16', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x800001a8]:KMMAWB2 a6, s7, zero
	-[0x800001ac]:csrrs s7, vxsat, zero
	-[0x800001b0]:sw a6, 40(t1)
Current Store : [0x800001b4] : sw s7, 44(t1) -- Store: [0x8000223c]:0x00000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x17', 'rd : x3', 'rs2_h1_val == -4097', 'rs2_h0_val == 16384', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x800001c0]:KMMAWB2 gp, a4, a7
	-[0x800001c4]:csrrs a4, vxsat, zero
	-[0x800001c8]:sw gp, 48(t1)
Current Store : [0x800001cc] : sw a4, 52(t1) -- Store: [0x80002244]:0x00000000




Last Coverpoint : ['rs1 : x0', 'rs2 : x29', 'rd : x25', 'rs2_h1_val == -2049', 'rs2_h0_val == -2049', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x800001dc]:KMMAWB2 s9, zero, t4
	-[0x800001e0]:csrrs zero, vxsat, zero
	-[0x800001e4]:sw s9, 56(t1)
Current Store : [0x800001e8] : sw zero, 60(t1) -- Store: [0x8000224c]:0x00000000




Last Coverpoint : ['rs1 : x7', 'rs2 : x11', 'rd : x4', 'rs2_h1_val == -1025', 'rs2_h0_val == -5', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x800001f8]:KMMAWB2 tp, t2, a1
	-[0x800001fc]:csrrs t2, vxsat, zero
	-[0x80000200]:sw tp, 64(t1)
Current Store : [0x80000204] : sw t2, 68(t1) -- Store: [0x80002254]:0x00000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x22', 'rd : x8', 'rs2_h1_val == -513', 'rs2_h0_val == 128', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000214]:KMMAWB2 fp, s2, s6
	-[0x80000218]:csrrs s2, vxsat, zero
	-[0x8000021c]:sw fp, 72(t1)
Current Store : [0x80000220] : sw s2, 76(t1) -- Store: [0x8000225c]:0x00000000




Last Coverpoint : ['rs1 : x22', 'rs2 : x15', 'rd : x1', 'rs2_h1_val == -257', 'rs2_h0_val == -9', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80000230]:KMMAWB2 ra, s6, a5
	-[0x80000234]:csrrs s6, vxsat, zero
	-[0x80000238]:sw ra, 80(t1)
Current Store : [0x8000023c] : sw s6, 84(t1) -- Store: [0x80002264]:0x00000000




Last Coverpoint : ['rs1 : x17', 'rs2 : x1', 'rd : x15', 'rs1_w0_val == -2147483648', 'rs2_h1_val == -129', 'rs2_h0_val == -33']
Last Code Sequence : 
	-[0x8000024c]:KMMAWB2 a5, a7, ra
	-[0x80000250]:csrrs a7, vxsat, zero
	-[0x80000254]:sw a5, 88(t1)
Current Store : [0x80000258] : sw a7, 92(t1) -- Store: [0x8000226c]:0x00000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x3', 'rd : x7', 'rs2_h1_val == -65']
Last Code Sequence : 
	-[0x80000268]:KMMAWB2 t2, t3, gp
	-[0x8000026c]:csrrs t3, vxsat, zero
	-[0x80000270]:sw t2, 96(t1)
Current Store : [0x80000274] : sw t3, 100(t1) -- Store: [0x80002274]:0x00000000




Last Coverpoint : ['rs1 : x26', 'rs2 : x27', 'rd : x24', 'rs2_h1_val == -33', 'rs2_h0_val == -129', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000284]:KMMAWB2 s8, s10, s11
	-[0x80000288]:csrrs s10, vxsat, zero
	-[0x8000028c]:sw s8, 104(t1)
Current Store : [0x80000290] : sw s10, 108(t1) -- Store: [0x8000227c]:0x00000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x23', 'rd : x22', 'rs2_h1_val == -17', 'rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x800002a4]:KMMAWB2 s6, tp, s7
	-[0x800002a8]:csrrs tp, vxsat, zero
	-[0x800002ac]:sw s6, 112(t1)
Current Store : [0x800002b0] : sw tp, 116(t1) -- Store: [0x80002284]:0x00000000




Last Coverpoint : ['rs1 : x25', 'rs2 : x7', 'rd : x28', 'rs2_h1_val == -9', 'rs2_h0_val == -21846']
Last Code Sequence : 
	-[0x800002c0]:KMMAWB2 t3, s9, t2
	-[0x800002c4]:csrrs s9, vxsat, zero
	-[0x800002c8]:sw t3, 120(t1)
Current Store : [0x800002cc] : sw s9, 124(t1) -- Store: [0x8000228c]:0x00000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x4', 'rd : x2', 'rs2_h1_val == -5', 'rs2_h0_val == 4096']
Last Code Sequence : 
	-[0x800002d8]:KMMAWB2 sp, s3, tp
	-[0x800002dc]:csrrs s3, vxsat, zero
	-[0x800002e0]:sw sp, 128(t1)
Current Store : [0x800002e4] : sw s3, 132(t1) -- Store: [0x80002294]:0x00000000




Last Coverpoint : ['rs1 : x10', 'rs2 : x28', 'rd : x0', 'rs2_h1_val == -3']
Last Code Sequence : 
	-[0x800002fc]:KMMAWB2 zero, a0, t3
	-[0x80000300]:csrrs a0, vxsat, zero
	-[0x80000304]:sw zero, 0(tp)
Current Store : [0x80000308] : sw a0, 4(tp) -- Store: [0x8000229c]:0x00000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x8', 'rd : x31', 'rs2_h1_val == -2', 'rs2_h0_val == -65', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000318]:KMMAWB2 t6, a3, fp
	-[0x8000031c]:csrrs a3, vxsat, zero
	-[0x80000320]:sw t6, 8(tp)
Current Store : [0x80000324] : sw a3, 12(tp) -- Store: [0x800022a4]:0x00000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x6', 'rd : x20', 'rs2_h1_val == -32768', 'rs2_h0_val == 21845']
Last Code Sequence : 
	-[0x80000334]:KMMAWB2 s4, a5, t1
	-[0x80000338]:csrrs a5, vxsat, zero
	-[0x8000033c]:sw s4, 16(tp)
Current Store : [0x80000340] : sw a5, 20(tp) -- Store: [0x800022ac]:0x00000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x20', 'rd : x11', 'rs2_h1_val == 16384', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000350]:KMMAWB2 a1, ra, s4
	-[0x80000354]:csrrs ra, vxsat, zero
	-[0x80000358]:sw a1, 24(tp)
Current Store : [0x8000035c] : sw ra, 28(tp) -- Store: [0x800022b4]:0x00000000




Last Coverpoint : ['rs1 : x8', 'rs2 : x24', 'rd : x14', 'rs2_h1_val == 8192', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000370]:KMMAWB2 a4, fp, s8
	-[0x80000374]:csrrs fp, vxsat, zero
	-[0x80000378]:sw a4, 32(tp)
Current Store : [0x8000037c] : sw fp, 36(tp) -- Store: [0x800022bc]:0x00000000




Last Coverpoint : ['rs1 : x24', 'rs2 : x14', 'rd : x27', 'rs2_h1_val == 4096', 'rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x80000390]:KMMAWB2 s11, s8, a4
	-[0x80000394]:csrrs s8, vxsat, zero
	-[0x80000398]:sw s11, 40(tp)
Current Store : [0x8000039c] : sw s8, 44(tp) -- Store: [0x800022c4]:0x00000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x25', 'rd : x6', 'rs2_h1_val == 2048', 'rs1_w0_val == -1']
Last Code Sequence : 
	-[0x800003ac]:KMMAWB2 t1, t5, s9
	-[0x800003b0]:csrrs t5, vxsat, zero
	-[0x800003b4]:sw t1, 48(tp)
Current Store : [0x800003b8] : sw t5, 52(tp) -- Store: [0x800022cc]:0x00000000




Last Coverpoint : ['rs1 : x31', 'rs2 : x10', 'rd : x17', 'rs2_h1_val == 1024', 'rs1_w0_val == -129']
Last Code Sequence : 
	-[0x800003c8]:KMMAWB2 a7, t6, a0
	-[0x800003cc]:csrrs t6, vxsat, zero
	-[0x800003d0]:sw a7, 56(tp)
Current Store : [0x800003d4] : sw t6, 60(tp) -- Store: [0x800022d4]:0x00000000




Last Coverpoint : ['rs1 : x3', 'rs2 : x26', 'rd : x9', 'rs2_h1_val == 512', 'rs2_h0_val == -2']
Last Code Sequence : 
	-[0x800003e4]:KMMAWB2 s1, gp, s10
	-[0x800003e8]:csrrs gp, vxsat, zero
	-[0x800003ec]:sw s1, 64(tp)
Current Store : [0x800003f0] : sw gp, 68(tp) -- Store: [0x800022dc]:0x00000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x19', 'rd : x23', 'rs2_h1_val == 256', 'rs2_h0_val == -1', 'rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x80000404]:KMMAWB2 s7, t1, s3
	-[0x80000408]:csrrs t1, vxsat, zero
	-[0x8000040c]:sw s7, 72(tp)
Current Store : [0x80000410] : sw t1, 76(tp) -- Store: [0x800022e4]:0x00000000




Last Coverpoint : ['rs1 : x11', 'rs2 : x2', 'rd : x26', 'rs2_h1_val == 128', 'rs2_h0_val == 4']
Last Code Sequence : 
	-[0x80000420]:KMMAWB2 s10, a1, sp
	-[0x80000424]:csrrs a1, vxsat, zero
	-[0x80000428]:sw s10, 80(tp)
Current Store : [0x8000042c] : sw a1, 84(tp) -- Store: [0x800022ec]:0x00000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x30', 'rd : x12', 'rs2_h1_val == 32']
Last Code Sequence : 
	-[0x80000438]:KMMAWB2 a2, sp, t5
	-[0x8000043c]:csrrs sp, vxsat, zero
	-[0x80000440]:sw a2, 88(tp)
Current Store : [0x80000444] : sw sp, 92(tp) -- Store: [0x800022f4]:0x00000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x16', 'rd : x18', 'rs2_h1_val == 16', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000454]:KMMAWB2 s2, s5, a6
	-[0x80000458]:csrrs s5, vxsat, zero
	-[0x8000045c]:sw s2, 96(tp)
Current Store : [0x80000460] : sw s5, 100(tp) -- Store: [0x800022fc]:0x00000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x18', 'rd : x21', 'rs2_h1_val == 8', 'rs2_h0_val == 1024', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x80000474]:KMMAWB2 s5, s4, s2
	-[0x80000478]:csrrs s4, vxsat, zero
	-[0x8000047c]:sw s5, 104(tp)
Current Store : [0x80000480] : sw s4, 108(tp) -- Store: [0x80002304]:0x00000000




Last Coverpoint : ['rs1 : x27', 'rs2 : x21', 'rd : x10', 'rs2_h1_val == 4']
Last Code Sequence : 
	-[0x80000490]:KMMAWB2 a0, s11, s5
	-[0x80000494]:csrrs s11, vxsat, zero
	-[0x80000498]:sw a0, 112(tp)
Current Store : [0x8000049c] : sw s11, 116(tp) -- Store: [0x8000230c]:0x00000000




Last Coverpoint : ['rs2_h1_val == 2', 'rs2_h0_val == 32767', 'rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x800004b0]:KMMAWB2 t6, t5, t4
	-[0x800004b4]:csrrs t5, vxsat, zero
	-[0x800004b8]:sw t6, 120(tp)
Current Store : [0x800004bc] : sw t5, 124(tp) -- Store: [0x80002314]:0x00000000




Last Coverpoint : ['rs2_h1_val == 1', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x800004d4]:KMMAWB2 t6, t5, t4
	-[0x800004d8]:csrrs t5, vxsat, zero
	-[0x800004dc]:sw t6, 0(ra)
Current Store : [0x800004e0] : sw t5, 4(ra) -- Store: [0x8000231c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x800004f4]:KMMAWB2 t6, t5, t4
	-[0x800004f8]:csrrs t5, vxsat, zero
	-[0x800004fc]:sw t6, 8(ra)
Current Store : [0x80000500] : sw t5, 12(ra) -- Store: [0x80002324]:0x00000000




Last Coverpoint : ['rs2_h1_val == -1', 'rs2_h0_val == 8192']
Last Code Sequence : 
	-[0x8000050c]:KMMAWB2 t6, t5, t4
	-[0x80000510]:csrrs t5, vxsat, zero
	-[0x80000514]:sw t6, 16(ra)
Current Store : [0x80000518] : sw t5, 20(ra) -- Store: [0x8000232c]:0x00000000




Last Coverpoint : ['rs2_h0_val == 32', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000528]:KMMAWB2 t6, t5, t4
	-[0x8000052c]:csrrs t5, vxsat, zero
	-[0x80000530]:sw t6, 24(ra)
Current Store : [0x80000534] : sw t5, 28(ra) -- Store: [0x80002334]:0x00000000




Last Coverpoint : ['rs2_h0_val == -1025', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000544]:KMMAWB2 t6, t5, t4
	-[0x80000548]:csrrs t5, vxsat, zero
	-[0x8000054c]:sw t6, 32(ra)
Current Store : [0x80000550] : sw t5, 36(ra) -- Store: [0x8000233c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000560]:KMMAWB2 t6, t5, t4
	-[0x80000564]:csrrs t5, vxsat, zero
	-[0x80000568]:sw t6, 40(ra)
Current Store : [0x8000056c] : sw t5, 44(ra) -- Store: [0x80002344]:0x00000000




Last Coverpoint : ['rs1_w0_val == 16']
Last Code Sequence : 
	-[0x8000057c]:KMMAWB2 t6, t5, t4
	-[0x80000580]:csrrs t5, vxsat, zero
	-[0x80000584]:sw t6, 48(ra)
Current Store : [0x80000588] : sw t5, 52(ra) -- Store: [0x8000234c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000598]:KMMAWB2 t6, t5, t4
	-[0x8000059c]:csrrs t5, vxsat, zero
	-[0x800005a0]:sw t6, 56(ra)
Current Store : [0x800005a4] : sw t5, 60(ra) -- Store: [0x80002354]:0x00000000




Last Coverpoint : ['rs1_w0_val == 2']
Last Code Sequence : 
	-[0x800005b4]:KMMAWB2 t6, t5, t4
	-[0x800005b8]:csrrs t5, vxsat, zero
	-[0x800005bc]:sw t6, 64(ra)
Current Store : [0x800005c0] : sw t5, 68(ra) -- Store: [0x8000235c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 1']
Last Code Sequence : 
	-[0x800005d0]:KMMAWB2 t6, t5, t4
	-[0x800005d4]:csrrs t5, vxsat, zero
	-[0x800005d8]:sw t6, 72(ra)
Current Store : [0x800005dc] : sw t5, 76(ra) -- Store: [0x80002364]:0x00000000




Last Coverpoint : ['rs2_h0_val == 256']
Last Code Sequence : 
	-[0x800005ec]:KMMAWB2 t6, t5, t4
	-[0x800005f0]:csrrs t5, vxsat, zero
	-[0x800005f4]:sw t6, 80(ra)
Current Store : [0x800005f8] : sw t5, 84(ra) -- Store: [0x8000236c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -16385']
Last Code Sequence : 
	-[0x80000608]:KMMAWB2 t6, t5, t4
	-[0x8000060c]:csrrs t5, vxsat, zero
	-[0x80000610]:sw t6, 88(ra)
Current Store : [0x80000614] : sw t5, 92(ra) -- Store: [0x80002374]:0x00000000




Last Coverpoint : ['rs2_h0_val == -8193']
Last Code Sequence : 
	-[0x80000628]:KMMAWB2 t6, t5, t4
	-[0x8000062c]:csrrs t5, vxsat, zero
	-[0x80000630]:sw t6, 96(ra)
Current Store : [0x80000634] : sw t5, 100(ra) -- Store: [0x8000237c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -4097']
Last Code Sequence : 
	-[0x80000644]:KMMAWB2 t6, t5, t4
	-[0x80000648]:csrrs t5, vxsat, zero
	-[0x8000064c]:sw t6, 104(ra)
Current Store : [0x80000650] : sw t5, 108(ra) -- Store: [0x80002384]:0x00000000




Last Coverpoint : ['rs2_h0_val == -513', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000660]:KMMAWB2 t6, t5, t4
	-[0x80000664]:csrrs t5, vxsat, zero
	-[0x80000668]:sw t6, 112(ra)
Current Store : [0x8000066c] : sw t5, 116(ra) -- Store: [0x8000238c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -257', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x80000680]:KMMAWB2 t6, t5, t4
	-[0x80000684]:csrrs t5, vxsat, zero
	-[0x80000688]:sw t6, 120(ra)
Current Store : [0x8000068c] : sw t5, 124(ra) -- Store: [0x80002394]:0x00000000




Last Coverpoint : ['rs2_h0_val == -17']
Last Code Sequence : 
	-[0x8000069c]:KMMAWB2 t6, t5, t4
	-[0x800006a0]:csrrs t5, vxsat, zero
	-[0x800006a4]:sw t6, 128(ra)
Current Store : [0x800006a8] : sw t5, 132(ra) -- Store: [0x8000239c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -3']
Last Code Sequence : 
	-[0x800006b8]:KMMAWB2 t6, t5, t4
	-[0x800006bc]:csrrs t5, vxsat, zero
	-[0x800006c0]:sw t6, 136(ra)
Current Store : [0x800006c4] : sw t5, 140(ra) -- Store: [0x800023a4]:0x00000000




Last Coverpoint : ['rs2_h0_val == 2048']
Last Code Sequence : 
	-[0x800006d4]:KMMAWB2 t6, t5, t4
	-[0x800006d8]:csrrs t5, vxsat, zero
	-[0x800006dc]:sw t6, 144(ra)
Current Store : [0x800006e0] : sw t5, 148(ra) -- Store: [0x800023ac]:0x00000000




Last Coverpoint : ['rs2_h0_val == 512', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x800006f4]:KMMAWB2 t6, t5, t4
	-[0x800006f8]:csrrs t5, vxsat, zero
	-[0x800006fc]:sw t6, 152(ra)
Current Store : [0x80000700] : sw t5, 156(ra) -- Store: [0x800023b4]:0x00000000




Last Coverpoint : ['rs2_h0_val == 64']
Last Code Sequence : 
	-[0x80000710]:KMMAWB2 t6, t5, t4
	-[0x80000714]:csrrs t5, vxsat, zero
	-[0x80000718]:sw t6, 160(ra)
Current Store : [0x8000071c] : sw t5, 164(ra) -- Store: [0x800023bc]:0x00000000




Last Coverpoint : ['rs2_h0_val == 16', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x8000072c]:KMMAWB2 t6, t5, t4
	-[0x80000730]:csrrs t5, vxsat, zero
	-[0x80000734]:sw t6, 168(ra)
Current Store : [0x80000738] : sw t5, 172(ra) -- Store: [0x800023c4]:0x00000000




Last Coverpoint : ['rs2_h0_val == 8', 'rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x8000074c]:KMMAWB2 t6, t5, t4
	-[0x80000750]:csrrs t5, vxsat, zero
	-[0x80000754]:sw t6, 176(ra)
Current Store : [0x80000758] : sw t5, 180(ra) -- Store: [0x800023cc]:0x00000000




Last Coverpoint : ['rs2_h0_val == 2']
Last Code Sequence : 
	-[0x8000076c]:KMMAWB2 t6, t5, t4
	-[0x80000770]:csrrs t5, vxsat, zero
	-[0x80000774]:sw t6, 184(ra)
Current Store : [0x80000778] : sw t5, 188(ra) -- Store: [0x800023d4]:0x00000000




Last Coverpoint : ['opcode : kmmawb2', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h1_val == 4096', 'rs2_h0_val == 0']
Last Code Sequence : 
	-[0x80000784]:KMMAWB2 t6, t5, t4
	-[0x80000788]:csrrs t5, vxsat, zero
	-[0x8000078c]:sw t6, 192(ra)
Current Store : [0x80000790] : sw t5, 196(ra) -- Store: [0x800023dc]:0x00000000




Last Coverpoint : ['rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x800007a4]:KMMAWB2 t6, t5, t4
	-[0x800007a8]:csrrs t5, vxsat, zero
	-[0x800007ac]:sw t6, 200(ra)
Current Store : [0x800007b0] : sw t5, 204(ra) -- Store: [0x800023e4]:0x00000000




Last Coverpoint : ['rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x800007c4]:KMMAWB2 t6, t5, t4
	-[0x800007c8]:csrrs t5, vxsat, zero
	-[0x800007cc]:sw t6, 208(ra)
Current Store : [0x800007d0] : sw t5, 212(ra) -- Store: [0x800023ec]:0x00000000




Last Coverpoint : ['rs2_h1_val == -8193', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x800007e0]:KMMAWB2 t6, t5, t4
	-[0x800007e4]:csrrs t5, vxsat, zero
	-[0x800007e8]:sw t6, 216(ra)
Current Store : [0x800007ec] : sw t5, 220(ra) -- Store: [0x800023f4]:0x00000000




Last Coverpoint : ['rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x80000800]:KMMAWB2 t6, t5, t4
	-[0x80000804]:csrrs t5, vxsat, zero
	-[0x80000808]:sw t6, 224(ra)
Current Store : [0x8000080c] : sw t5, 228(ra) -- Store: [0x800023fc]:0x00000000




Last Coverpoint : ['rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x80000820]:KMMAWB2 t6, t5, t4
	-[0x80000824]:csrrs t5, vxsat, zero
	-[0x80000828]:sw t6, 232(ra)
Current Store : [0x8000082c] : sw t5, 236(ra) -- Store: [0x80002404]:0x00000000




Last Coverpoint : ['rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x8000083c]:KMMAWB2 t6, t5, t4
	-[0x80000840]:csrrs t5, vxsat, zero
	-[0x80000844]:sw t6, 240(ra)
Current Store : [0x80000848] : sw t5, 244(ra) -- Store: [0x8000240c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x8000085c]:KMMAWB2 t6, t5, t4
	-[0x80000860]:csrrs t5, vxsat, zero
	-[0x80000864]:sw t6, 248(ra)
Current Store : [0x80000868] : sw t5, 252(ra) -- Store: [0x80002414]:0x00000000




Last Coverpoint : ['rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x80000878]:KMMAWB2 t6, t5, t4
	-[0x8000087c]:csrrs t5, vxsat, zero
	-[0x80000880]:sw t6, 256(ra)
Current Store : [0x80000884] : sw t5, 260(ra) -- Store: [0x8000241c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x80000898]:KMMAWB2 t6, t5, t4
	-[0x8000089c]:csrrs t5, vxsat, zero
	-[0x800008a0]:sw t6, 264(ra)
Current Store : [0x800008a4] : sw t5, 268(ra) -- Store: [0x80002424]:0x00000000




Last Coverpoint : ['rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x800008b8]:KMMAWB2 t6, t5, t4
	-[0x800008bc]:csrrs t5, vxsat, zero
	-[0x800008c0]:sw t6, 272(ra)
Current Store : [0x800008c4] : sw t5, 276(ra) -- Store: [0x8000242c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x800008d8]:KMMAWB2 t6, t5, t4
	-[0x800008dc]:csrrs t5, vxsat, zero
	-[0x800008e0]:sw t6, 280(ra)
Current Store : [0x800008e4] : sw t5, 284(ra) -- Store: [0x80002434]:0x00000000




Last Coverpoint : ['rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x800008f8]:KMMAWB2 t6, t5, t4
	-[0x800008fc]:csrrs t5, vxsat, zero
	-[0x80000900]:sw t6, 288(ra)
Current Store : [0x80000904] : sw t5, 292(ra) -- Store: [0x8000243c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x80000914]:KMMAWB2 t6, t5, t4
	-[0x80000918]:csrrs t5, vxsat, zero
	-[0x8000091c]:sw t6, 296(ra)
Current Store : [0x80000920] : sw t5, 300(ra) -- Store: [0x80002444]:0x00000000




Last Coverpoint : ['rs1_w0_val == -513']
Last Code Sequence : 
	-[0x80000930]:KMMAWB2 t6, t5, t4
	-[0x80000934]:csrrs t5, vxsat, zero
	-[0x80000938]:sw t6, 304(ra)
Current Store : [0x8000093c] : sw t5, 308(ra) -- Store: [0x8000244c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -257']
Last Code Sequence : 
	-[0x8000094c]:KMMAWB2 t6, t5, t4
	-[0x80000950]:csrrs t5, vxsat, zero
	-[0x80000954]:sw t6, 312(ra)
Current Store : [0x80000958] : sw t5, 316(ra) -- Store: [0x80002454]:0x00000000




Last Coverpoint : ['rs1_w0_val == -65']
Last Code Sequence : 
	-[0x80000968]:KMMAWB2 t6, t5, t4
	-[0x8000096c]:csrrs t5, vxsat, zero
	-[0x80000970]:sw t6, 320(ra)
Current Store : [0x80000974] : sw t5, 324(ra) -- Store: [0x8000245c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -33']
Last Code Sequence : 
	-[0x80000984]:KMMAWB2 t6, t5, t4
	-[0x80000988]:csrrs t5, vxsat, zero
	-[0x8000098c]:sw t6, 328(ra)
Current Store : [0x80000990] : sw t5, 332(ra) -- Store: [0x80002464]:0x00000000




Last Coverpoint : ['rs1_w0_val == -17']
Last Code Sequence : 
	-[0x800009a0]:KMMAWB2 t6, t5, t4
	-[0x800009a4]:csrrs t5, vxsat, zero
	-[0x800009a8]:sw t6, 336(ra)
Current Store : [0x800009ac] : sw t5, 340(ra) -- Store: [0x8000246c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -9']
Last Code Sequence : 
	-[0x800009bc]:KMMAWB2 t6, t5, t4
	-[0x800009c0]:csrrs t5, vxsat, zero
	-[0x800009c4]:sw t6, 344(ra)
Current Store : [0x800009c8] : sw t5, 348(ra) -- Store: [0x80002474]:0x00000000




Last Coverpoint : ['rs1_w0_val == -5']
Last Code Sequence : 
	-[0x800009d8]:KMMAWB2 t6, t5, t4
	-[0x800009dc]:csrrs t5, vxsat, zero
	-[0x800009e0]:sw t6, 352(ra)
Current Store : [0x800009e4] : sw t5, 356(ra) -- Store: [0x8000247c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -3']
Last Code Sequence : 
	-[0x800009f4]:KMMAWB2 t6, t5, t4
	-[0x800009f8]:csrrs t5, vxsat, zero
	-[0x800009fc]:sw t6, 360(ra)
Current Store : [0x80000a00] : sw t5, 364(ra) -- Store: [0x80002484]:0x00000000




Last Coverpoint : ['rs1_w0_val == -2']
Last Code Sequence : 
	-[0x80000a10]:KMMAWB2 t6, t5, t4
	-[0x80000a14]:csrrs t5, vxsat, zero
	-[0x80000a18]:sw t6, 368(ra)
Current Store : [0x80000a1c] : sw t5, 372(ra) -- Store: [0x8000248c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000a2c]:KMMAWB2 t6, t5, t4
	-[0x80000a30]:csrrs t5, vxsat, zero
	-[0x80000a34]:sw t6, 376(ra)
Current Store : [0x80000a38] : sw t5, 380(ra) -- Store: [0x80002494]:0x00000000




Last Coverpoint : ['rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000a48]:KMMAWB2 t6, t5, t4
	-[0x80000a4c]:csrrs t5, vxsat, zero
	-[0x80000a50]:sw t6, 384(ra)
Current Store : [0x80000a54] : sw t5, 388(ra) -- Store: [0x8000249c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000a64]:KMMAWB2 t6, t5, t4
	-[0x80000a68]:csrrs t5, vxsat, zero
	-[0x80000a6c]:sw t6, 392(ra)
Current Store : [0x80000a70] : sw t5, 396(ra) -- Store: [0x800024a4]:0x00000000




Last Coverpoint : ['rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000a80]:KMMAWB2 t6, t5, t4
	-[0x80000a84]:csrrs t5, vxsat, zero
	-[0x80000a88]:sw t6, 400(ra)
Current Store : [0x80000a8c] : sw t5, 404(ra) -- Store: [0x800024ac]:0x00000000




Last Coverpoint : ['rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000a9c]:KMMAWB2 t6, t5, t4
	-[0x80000aa0]:csrrs t5, vxsat, zero
	-[0x80000aa4]:sw t6, 408(ra)
Current Store : [0x80000aa8] : sw t5, 412(ra) -- Store: [0x800024b4]:0x00000000




Last Coverpoint : ['rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000ab8]:KMMAWB2 t6, t5, t4
	-[0x80000abc]:csrrs t5, vxsat, zero
	-[0x80000ac0]:sw t6, 416(ra)
Current Store : [0x80000ac4] : sw t5, 420(ra) -- Store: [0x800024bc]:0x00000000




Last Coverpoint : ['rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000ad4]:KMMAWB2 t6, t5, t4
	-[0x80000ad8]:csrrs t5, vxsat, zero
	-[0x80000adc]:sw t6, 424(ra)
Current Store : [0x80000ae0] : sw t5, 428(ra) -- Store: [0x800024c4]:0x00000000




Last Coverpoint : ['rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000af0]:KMMAWB2 t6, t5, t4
	-[0x80000af4]:csrrs t5, vxsat, zero
	-[0x80000af8]:sw t6, 432(ra)
Current Store : [0x80000afc] : sw t5, 436(ra) -- Store: [0x800024cc]:0x00000000




Last Coverpoint : ['rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000b08]:KMMAWB2 t6, t5, t4
	-[0x80000b0c]:csrrs t5, vxsat, zero
	-[0x80000b10]:sw t6, 440(ra)
Current Store : [0x80000b14] : sw t5, 444(ra) -- Store: [0x800024d4]:0x00000000




Last Coverpoint : ['rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000b24]:KMMAWB2 t6, t5, t4
	-[0x80000b28]:csrrs t5, vxsat, zero
	-[0x80000b2c]:sw t6, 448(ra)
Current Store : [0x80000b30] : sw t5, 452(ra) -- Store: [0x800024dc]:0x00000000




Last Coverpoint : ['rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x80000b44]:KMMAWB2 t6, t5, t4
	-[0x80000b48]:csrrs t5, vxsat, zero
	-[0x80000b4c]:sw t6, 456(ra)
Current Store : [0x80000b50] : sw t5, 460(ra) -- Store: [0x800024e4]:0x00000000




Last Coverpoint : ['opcode : kmmawb2', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h1_val == -8193', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000b60]:KMMAWB2 t6, t5, t4
	-[0x80000b64]:csrrs t5, vxsat, zero
	-[0x80000b68]:sw t6, 464(ra)
Current Store : [0x80000b6c] : sw t5, 468(ra) -- Store: [0x800024ec]:0x00000000




Last Coverpoint : ['rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000b7c]:KMMAWB2 t6, t5, t4
	-[0x80000b80]:csrrs t5, vxsat, zero
	-[0x80000b84]:sw t6, 472(ra)
Current Store : [0x80000b88] : sw t5, 476(ra) -- Store: [0x800024f4]:0x00000000





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

|s.no|        signature         |                                                                     coverpoints                                                                     |                                                     code                                                     |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : kmmawb2<br> - rs1 : x5<br> - rs2 : x5<br> - rd : x5<br> - rs1 == rs2 == rd<br> - rs2_h1_val == 64<br>                                     |[0x80000118]:KMMAWB2 t0, t0, t0<br> [0x8000011c]:csrrs t0, vxsat, zero<br> [0x80000120]:sw t0, 0(t1)<br>      |
|   2|[0x80002218]<br>0x6FAAD50F|- rs1 : x12<br> - rs2 : x12<br> - rd : x19<br> - rs1 == rs2 != rd<br> - rs2_h1_val == -21846<br> - rs2_h0_val == 1<br>                               |[0x80000138]:KMMAWB2 s3, a2, a2<br> [0x8000013c]:csrrs a2, vxsat, zero<br> [0x80000140]:sw s3, 8(t1)<br>      |
|   3|[0x80002220]<br>0xF76DF56E|- rs1 : x16<br> - rs2 : x9<br> - rd : x30<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_h1_val == 21845<br>                                |[0x80000154]:KMMAWB2 t5, a6, s1<br> [0x80000158]:csrrs a6, vxsat, zero<br> [0x8000015c]:sw t5, 16(t1)<br>     |
|   4|[0x80002228]<br>0x7FFFC001|- rs1 : x9<br> - rs2 : x13<br> - rd : x13<br> - rs2 == rd != rs1<br> - rs2_h1_val == 32767<br> - rs2_h0_val == -32768<br> - rs1_w0_val == -16385<br> |[0x80000170]:KMMAWB2 a3, s1, a3<br> [0x80000174]:csrrs s1, vxsat, zero<br> [0x80000178]:sw a3, 24(t1)<br>     |
|   5|[0x80002230]<br>0x00000000|- rs1 : x29<br> - rs2 : x31<br> - rd : x29<br> - rs1 == rd != rs2<br> - rs2_h1_val == -16385<br>                                                     |[0x8000018c]:KMMAWB2 t4, t4, t6<br> [0x80000190]:csrrs t4, vxsat, zero<br> [0x80000194]:sw t4, 32(t1)<br>     |
|   6|[0x80002238]<br>0x00000000|- rs1 : x23<br> - rs2 : x0<br> - rd : x16<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_w0_val == 524288<br>                                 |[0x800001a8]:KMMAWB2 a6, s7, zero<br> [0x800001ac]:csrrs s7, vxsat, zero<br> [0x800001b0]:sw a6, 40(t1)<br>   |
|   7|[0x80002240]<br>0x7FBB6FCB|- rs1 : x14<br> - rs2 : x17<br> - rd : x3<br> - rs2_h1_val == -4097<br> - rs2_h0_val == 16384<br> - rs1_w0_val == 64<br>                             |[0x800001c0]:KMMAWB2 gp, a4, a7<br> [0x800001c4]:csrrs a4, vxsat, zero<br> [0x800001c8]:sw gp, 48(t1)<br>     |
|   8|[0x80002248]<br>0xEDBEADFE|- rs1 : x0<br> - rs2 : x29<br> - rd : x25<br> - rs2_h1_val == -2049<br> - rs2_h0_val == -2049<br> - rs1_w0_val == 0<br>                              |[0x800001dc]:KMMAWB2 s9, zero, t4<br> [0x800001e0]:csrrs zero, vxsat, zero<br> [0x800001e4]:sw s9, 56(t1)<br> |
|   9|[0x80002250]<br>0xBFDDB7D4|- rs1 : x7<br> - rs2 : x11<br> - rd : x4<br> - rs2_h1_val == -1025<br> - rs2_h0_val == -5<br> - rs1_w0_val == 128<br>                                |[0x800001f8]:KMMAWB2 tp, t2, a1<br> [0x800001fc]:csrrs t2, vxsat, zero<br> [0x80000200]:sw tp, 64(t1)<br>     |
|  10|[0x80002258]<br>0x5C01DB7D|- rs1 : x18<br> - rs2 : x22<br> - rd : x8<br> - rs2_h1_val == -513<br> - rs2_h0_val == 128<br> - rs1_w0_val == 67108864<br>                          |[0x80000214]:KMMAWB2 fp, s2, s6<br> [0x80000218]:csrrs s2, vxsat, zero<br> [0x8000021c]:sw fp, 72(t1)<br>     |
|  11|[0x80002260]<br>0xFEE93EAD|- rs1 : x22<br> - rs2 : x15<br> - rd : x1<br> - rs2_h1_val == -257<br> - rs2_h0_val == -9<br> - rs1_w0_val == 1073741824<br>                         |[0x80000230]:KMMAWB2 ra, s6, a5<br> [0x80000234]:csrrs s6, vxsat, zero<br> [0x80000238]:sw ra, 80(t1)<br>     |
|  12|[0x80002268]<br>0xFF20FFF7|- rs1 : x17<br> - rs2 : x1<br> - rd : x15<br> - rs1_w0_val == -2147483648<br> - rs2_h1_val == -129<br> - rs2_h0_val == -33<br>                       |[0x8000024c]:KMMAWB2 a5, a7, ra<br> [0x80000250]:csrrs a7, vxsat, zero<br> [0x80000254]:sw a5, 88(t1)<br>     |
|  13|[0x80002270]<br>0x00000000|- rs1 : x28<br> - rs2 : x3<br> - rd : x7<br> - rs2_h1_val == -65<br>                                                                                 |[0x80000268]:KMMAWB2 t2, t3, gp<br> [0x8000026c]:csrrs t3, vxsat, zero<br> [0x80000270]:sw t2, 96(t1)<br>     |
|  14|[0x80002278]<br>0xDB6D3BFD|- rs1 : x26<br> - rs2 : x27<br> - rd : x24<br> - rs2_h1_val == -33<br> - rs2_h0_val == -129<br> - rs1_w0_val == 268435456<br>                        |[0x80000284]:KMMAWB2 s8, s10, s11<br> [0x80000288]:csrrs s10, vxsat, zero<br> [0x8000028c]:sw s8, 104(t1)<br> |
|  15|[0x80002280]<br>0x00035555|- rs1 : x4<br> - rs2 : x23<br> - rd : x22<br> - rs2_h1_val == -17<br> - rs1_w0_val == -1431655766<br>                                                |[0x800002a4]:KMMAWB2 s6, tp, s7<br> [0x800002a8]:csrrs tp, vxsat, zero<br> [0x800002ac]:sw s6, 112(t1)<br>    |
|  16|[0x80002288]<br>0xF5554000|- rs1 : x25<br> - rs2 : x7<br> - rd : x28<br> - rs2_h1_val == -9<br> - rs2_h0_val == -21846<br>                                                      |[0x800002c0]:KMMAWB2 t3, s9, t2<br> [0x800002c4]:csrrs s9, vxsat, zero<br> [0x800002c8]:sw t3, 120(t1)<br>    |
|  17|[0x80002290]<br>0xFF76DF54|- rs1 : x19<br> - rs2 : x4<br> - rd : x2<br> - rs2_h1_val == -5<br> - rs2_h0_val == 4096<br>                                                         |[0x800002d8]:KMMAWB2 sp, s3, tp<br> [0x800002dc]:csrrs s3, vxsat, zero<br> [0x800002e0]:sw sp, 128(t1)<br>    |
|  18|[0x80002298]<br>0x00000000|- rs1 : x10<br> - rs2 : x28<br> - rd : x0<br> - rs2_h1_val == -3<br>                                                                                 |[0x800002fc]:KMMAWB2 zero, a0, t3<br> [0x80000300]:csrrs a0, vxsat, zero<br> [0x80000304]:sw zero, 0(tp)<br>  |
|  19|[0x800022a0]<br>0xBFFEFF7F|- rs1 : x13<br> - rs2 : x8<br> - rd : x31<br> - rs2_h1_val == -2<br> - rs2_h0_val == -65<br> - rs1_w0_val == 65536<br>                               |[0x80000318]:KMMAWB2 t6, a3, fp<br> [0x8000031c]:csrrs a3, vxsat, zero<br> [0x80000320]:sw t6, 8(tp)<br>      |
|  20|[0x800022a8]<br>0xB7D5BFE0|- rs1 : x15<br> - rs2 : x6<br> - rd : x20<br> - rs2_h1_val == -32768<br> - rs2_h0_val == 21845<br>                                                   |[0x80000334]:KMMAWB2 s4, a5, t1<br> [0x80000338]:csrrs a5, vxsat, zero<br> [0x8000033c]:sw s4, 16(tp)<br>     |
|  21|[0x800022b0]<br>0xE6AA7FFB|- rs1 : x1<br> - rs2 : x20<br> - rd : x11<br> - rs2_h1_val == 16384<br> - rs1_w0_val == 536870912<br>                                                |[0x80000350]:KMMAWB2 a1, ra, s4<br> [0x80000354]:csrrs ra, vxsat, zero<br> [0x80000358]:sw a1, 24(tp)<br>     |
|  22|[0x800022b8]<br>0xFFFFFFFD|- rs1 : x8<br> - rs2 : x24<br> - rd : x14<br> - rs2_h1_val == 8192<br> - rs1_w0_val == 2048<br>                                                      |[0x80000370]:KMMAWB2 a4, fp, s8<br> [0x80000374]:csrrs fp, vxsat, zero<br> [0x80000378]:sw a4, 32(tp)<br>     |
|  23|[0x800022c0]<br>0xFFDFFF7F|- rs1 : x24<br> - rs2 : x14<br> - rd : x27<br> - rs2_h1_val == 4096<br> - rs1_w0_val == -4097<br>                                                    |[0x80000390]:KMMAWB2 s11, s8, a4<br> [0x80000394]:csrrs s8, vxsat, zero<br> [0x80000398]:sw s11, 40(tp)<br>   |
|  24|[0x800022c8]<br>0x80005555|- rs1 : x30<br> - rs2 : x25<br> - rd : x6<br> - rs2_h1_val == 2048<br> - rs1_w0_val == -1<br>                                                        |[0x800003ac]:KMMAWB2 t1, t5, s9<br> [0x800003b0]:csrrs t5, vxsat, zero<br> [0x800003b4]:sw t1, 48(tp)<br>     |
|  25|[0x800022d0]<br>0x00000000|- rs1 : x31<br> - rs2 : x10<br> - rd : x17<br> - rs2_h1_val == 1024<br> - rs1_w0_val == -129<br>                                                     |[0x800003c8]:KMMAWB2 a7, t6, a0<br> [0x800003cc]:csrrs t6, vxsat, zero<br> [0x800003d0]:sw a7, 56(tp)<br>     |
|  26|[0x800022d8]<br>0xFFFFFFFF|- rs1 : x3<br> - rs2 : x26<br> - rd : x9<br> - rs2_h1_val == 512<br> - rs2_h0_val == -2<br>                                                          |[0x800003e4]:KMMAWB2 s1, gp, s10<br> [0x800003e8]:csrrs gp, vxsat, zero<br> [0x800003ec]:sw s1, 64(tp)<br>    |
|  27|[0x800022e0]<br>0xFFF03FFB|- rs1 : x6<br> - rs2 : x19<br> - rd : x23<br> - rs2_h1_val == 256<br> - rs2_h0_val == -1<br> - rs1_w0_val == -536870913<br>                          |[0x80000404]:KMMAWB2 s7, t1, s3<br> [0x80000408]:csrrs t1, vxsat, zero<br> [0x8000040c]:sw s7, 72(tp)<br>     |
|  28|[0x800022e8]<br>0x02017FFE|- rs1 : x11<br> - rs2 : x2<br> - rd : x26<br> - rs2_h1_val == 128<br> - rs2_h0_val == 4<br>                                                          |[0x80000420]:KMMAWB2 s10, a1, sp<br> [0x80000424]:csrrs a1, vxsat, zero<br> [0x80000428]:sw s10, 80(tp)<br>   |
|  29|[0x800022f0]<br>0xF0000000|- rs1 : x2<br> - rs2 : x30<br> - rd : x12<br> - rs2_h1_val == 32<br>                                                                                 |[0x80000438]:KMMAWB2 a2, sp, t5<br> [0x8000043c]:csrrs sp, vxsat, zero<br> [0x80000440]:sw a2, 88(tp)<br>     |
|  30|[0x800022f8]<br>0x00000FFF|- rs1 : x21<br> - rs2 : x16<br> - rd : x18<br> - rs2_h1_val == 16<br> - rs1_w0_val == 8192<br>                                                       |[0x80000454]:KMMAWB2 s2, s5, a6<br> [0x80000458]:csrrs s5, vxsat, zero<br> [0x8000045c]:sw s2, 96(tp)<br>     |
|  31|[0x80002300]<br>0xFFBFFFFF|- rs1 : x20<br> - rs2 : x18<br> - rd : x21<br> - rs2_h1_val == 8<br> - rs2_h0_val == 1024<br> - rs1_w0_val == -134217729<br>                         |[0x80000474]:KMMAWB2 s5, s4, s2<br> [0x80000478]:csrrs s4, vxsat, zero<br> [0x8000047c]:sw s5, 104(tp)<br>    |
|  32|[0x80002308]<br>0x0402BFFC|- rs1 : x27<br> - rs2 : x21<br> - rd : x10<br> - rs2_h1_val == 4<br>                                                                                 |[0x80000490]:KMMAWB2 a0, s11, s5<br> [0x80000494]:csrrs s11, vxsat, zero<br> [0x80000498]:sw a0, 112(tp)<br>  |
|  33|[0x80002310]<br>0xFF0001FF|- rs2_h1_val == 2<br> - rs2_h0_val == 32767<br> - rs1_w0_val == -16777217<br>                                                                        |[0x800004b0]:KMMAWB2 t6, t5, t4<br> [0x800004b4]:csrrs t5, vxsat, zero<br> [0x800004b8]:sw t6, 120(tp)<br>    |
|  34|[0x80002318]<br>0xFF0001FC|- rs2_h1_val == 1<br> - rs1_w0_val == 1024<br>                                                                                                       |[0x800004d4]:KMMAWB2 t6, t5, t4<br> [0x800004d8]:csrrs t5, vxsat, zero<br> [0x800004dc]:sw t6, 0(ra)<br>      |
|  35|[0x80002320]<br>0xFF0001FE|- rs1_w0_val == -65537<br>                                                                                                                           |[0x800004f4]:KMMAWB2 t6, t5, t4<br> [0x800004f8]:csrrs t5, vxsat, zero<br> [0x800004fc]:sw t6, 8(ra)<br>      |
|  36|[0x80002328]<br>0x070001FE|- rs2_h1_val == -1<br> - rs2_h0_val == 8192<br>                                                                                                      |[0x8000050c]:KMMAWB2 t6, t5, t4<br> [0x80000510]:csrrs t5, vxsat, zero<br> [0x80000514]:sw t6, 16(ra)<br>     |
|  37|[0x80002330]<br>0x070001FE|- rs2_h0_val == 32<br> - rs1_w0_val == 512<br>                                                                                                       |[0x80000528]:KMMAWB2 t6, t5, t4<br> [0x8000052c]:csrrs t5, vxsat, zero<br> [0x80000530]:sw t6, 24(ra)<br>     |
|  38|[0x80002338]<br>0x070001F5|- rs2_h0_val == -1025<br> - rs1_w0_val == 256<br>                                                                                                    |[0x80000544]:KMMAWB2 t6, t5, t4<br> [0x80000548]:csrrs t5, vxsat, zero<br> [0x8000054c]:sw t6, 32(ra)<br>     |
|  39|[0x80002340]<br>0x0700020A|- rs1_w0_val == 32<br>                                                                                                                               |[0x80000560]:KMMAWB2 t6, t5, t4<br> [0x80000564]:csrrs t5, vxsat, zero<br> [0x80000568]:sw t6, 40(ra)<br>     |
|  40|[0x80002348]<br>0x0700020A|- rs1_w0_val == 16<br>                                                                                                                               |[0x8000057c]:KMMAWB2 t6, t5, t4<br> [0x80000580]:csrrs t5, vxsat, zero<br> [0x80000584]:sw t6, 48(ra)<br>     |
|  41|[0x80002350]<br>0x07000209|- rs1_w0_val == 8<br>                                                                                                                                |[0x80000598]:KMMAWB2 t6, t5, t4<br> [0x8000059c]:csrrs t5, vxsat, zero<br> [0x800005a0]:sw t6, 56(ra)<br>     |
|  42|[0x80002358]<br>0x07000208|- rs1_w0_val == 2<br>                                                                                                                                |[0x800005b4]:KMMAWB2 t6, t5, t4<br> [0x800005b8]:csrrs t5, vxsat, zero<br> [0x800005bc]:sw t6, 64(ra)<br>     |
|  43|[0x80002360]<br>0x07000208|- rs1_w0_val == 1<br>                                                                                                                                |[0x800005d0]:KMMAWB2 t6, t5, t4<br> [0x800005d4]:csrrs t5, vxsat, zero<br> [0x800005d8]:sw t6, 72(ra)<br>     |
|  44|[0x80002368]<br>0x07000208|- rs2_h0_val == 256<br>                                                                                                                              |[0x800005ec]:KMMAWB2 t6, t5, t4<br> [0x800005f0]:csrrs t5, vxsat, zero<br> [0x800005f4]:sw t6, 80(ra)<br>     |
|  45|[0x80002370]<br>0x0700020C|- rs2_h0_val == -16385<br>                                                                                                                           |[0x80000608]:KMMAWB2 t6, t5, t4<br> [0x8000060c]:csrrs t5, vxsat, zero<br> [0x80000610]:sw t6, 88(ra)<br>     |
|  46|[0x80002378]<br>0x0700120C|- rs2_h0_val == -8193<br>                                                                                                                            |[0x80000628]:KMMAWB2 t6, t5, t4<br> [0x8000062c]:csrrs t5, vxsat, zero<br> [0x80000630]:sw t6, 96(ra)<br>     |
|  47|[0x80002380]<br>0x06FFF20A|- rs2_h0_val == -4097<br>                                                                                                                            |[0x80000644]:KMMAWB2 t6, t5, t4<br> [0x80000648]:csrrs t5, vxsat, zero<br> [0x8000064c]:sw t6, 104(ra)<br>    |
|  48|[0x80002388]<br>0x06FDF10A|- rs2_h0_val == -513<br> - rs1_w0_val == 8388608<br>                                                                                                 |[0x80000660]:KMMAWB2 t6, t5, t4<br> [0x80000664]:csrrs t5, vxsat, zero<br> [0x80000668]:sw t6, 112(ra)<br>    |
|  49|[0x80002390]<br>0x06FDF20B|- rs2_h0_val == -257<br> - rs1_w0_val == -32769<br>                                                                                                  |[0x80000680]:KMMAWB2 t6, t5, t4<br> [0x80000684]:csrrs t5, vxsat, zero<br> [0x80000688]:sw t6, 120(ra)<br>    |
|  50|[0x80002398]<br>0x06FDF20A|- rs2_h0_val == -17<br>                                                                                                                              |[0x8000069c]:KMMAWB2 t6, t5, t4<br> [0x800006a0]:csrrs t5, vxsat, zero<br> [0x800006a4]:sw t6, 128(ra)<br>    |
|  51|[0x800023a0]<br>0x06FDF20A|- rs2_h0_val == -3<br>                                                                                                                               |[0x800006b8]:KMMAWB2 t6, t5, t4<br> [0x800006bc]:csrrs t5, vxsat, zero<br> [0x800006c0]:sw t6, 136(ra)<br>    |
|  52|[0x800023a8]<br>0x06FDF209|- rs2_h0_val == 2048<br>                                                                                                                             |[0x800006d4]:KMMAWB2 t6, t5, t4<br> [0x800006d8]:csrrs t5, vxsat, zero<br> [0x800006dc]:sw t6, 144(ra)<br>    |
|  53|[0x800023b0]<br>0x0853475E|- rs2_h0_val == 512<br> - rs1_w0_val == 1431655765<br>                                                                                               |[0x800006f4]:KMMAWB2 t6, t5, t4<br> [0x800006f8]:csrrs t5, vxsat, zero<br> [0x800006fc]:sw t6, 152(ra)<br>    |
|  54|[0x800023b8]<br>0x0853475E|- rs2_h0_val == 64<br>                                                                                                                               |[0x80000710]:KMMAWB2 t6, t5, t4<br> [0x80000714]:csrrs t5, vxsat, zero<br> [0x80000718]:sw t6, 160(ra)<br>    |
|  55|[0x800023c0]<br>0x08534760|- rs2_h0_val == 16<br> - rs1_w0_val == 4096<br>                                                                                                      |[0x8000072c]:KMMAWB2 t6, t5, t4<br> [0x80000730]:csrrs t5, vxsat, zero<br> [0x80000734]:sw t6, 168(ra)<br>    |
|  56|[0x800023c8]<br>0x0853475D|- rs2_h0_val == 8<br> - rs1_w0_val == -8193<br>                                                                                                      |[0x8000074c]:KMMAWB2 t6, t5, t4<br> [0x80000750]:csrrs t5, vxsat, zero<br> [0x80000754]:sw t6, 176(ra)<br>    |
|  57|[0x800023d0]<br>0x0853475A|- rs2_h0_val == 2<br>                                                                                                                                |[0x8000076c]:KMMAWB2 t6, t5, t4<br> [0x80000770]:csrrs t5, vxsat, zero<br> [0x80000774]:sw t6, 184(ra)<br>    |
|  58|[0x800023e0]<br>0x084A475A|- rs1_w0_val == 2147483647<br>                                                                                                                       |[0x800007a4]:KMMAWB2 t6, t5, t4<br> [0x800007a8]:csrrs t5, vxsat, zero<br> [0x800007ac]:sw t6, 200(ra)<br>    |
|  59|[0x800023e8]<br>0x08494759|- rs1_w0_val == -1073741825<br>                                                                                                                      |[0x800007c4]:KMMAWB2 t6, t5, t4<br> [0x800007c8]:csrrs t5, vxsat, zero<br> [0x800007cc]:sw t6, 208(ra)<br>    |
|  60|[0x800023f0]<br>0x1849475A|- rs2_h1_val == -8193<br> - rs1_w0_val == -268435457<br>                                                                                             |[0x800007e0]:KMMAWB2 t6, t5, t4<br> [0x800007e4]:csrrs t5, vxsat, zero<br> [0x800007e8]:sw t6, 216(ra)<br>    |
|  61|[0x800023f8]<br>0x18474759|- rs1_w0_val == -67108865<br>                                                                                                                        |[0x80000800]:KMMAWB2 t6, t5, t4<br> [0x80000804]:csrrs t5, vxsat, zero<br> [0x80000808]:sw t6, 224(ra)<br>    |
|  62|[0x80002400]<br>0x18476B59|- rs1_w0_val == -33554433<br>                                                                                                                        |[0x80000820]:KMMAWB2 t6, t5, t4<br> [0x80000824]:csrrs t5, vxsat, zero<br> [0x80000828]:sw t6, 232(ra)<br>    |
|  63|[0x80002408]<br>0x18076B58|- rs1_w0_val == -8388609<br>                                                                                                                         |[0x8000083c]:KMMAWB2 t6, t5, t4<br> [0x80000840]:csrrs t5, vxsat, zero<br> [0x80000844]:sw t6, 240(ra)<br>    |
|  64|[0x80002410]<br>0x18072B57|- rs1_w0_val == -4194305<br>                                                                                                                         |[0x8000085c]:KMMAWB2 t6, t5, t4<br> [0x80000860]:csrrs t5, vxsat, zero<br> [0x80000864]:sw t6, 248(ra)<br>    |
|  65|[0x80002418]<br>0x18072B57|- rs1_w0_val == -2097153<br>                                                                                                                         |[0x80000878]:KMMAWB2 t6, t5, t4<br> [0x8000087c]:csrrs t5, vxsat, zero<br> [0x80000880]:sw t6, 256(ra)<br>    |
|  66|[0x80002420]<br>0x18072A96|- rs1_w0_val == -1048577<br>                                                                                                                         |[0x80000898]:KMMAWB2 t6, t5, t4<br> [0x8000089c]:csrrs t5, vxsat, zero<br> [0x800008a0]:sw t6, 264(ra)<br>    |
|  67|[0x80002428]<br>0x18072A55|- rs1_w0_val == -524289<br>                                                                                                                          |[0x800008b8]:KMMAWB2 t6, t5, t4<br> [0x800008bc]:csrrs t5, vxsat, zero<br> [0x800008c0]:sw t6, 272(ra)<br>    |
|  68|[0x80002430]<br>0x18082A5D|- rs1_w0_val == -262145<br>                                                                                                                          |[0x800008d8]:KMMAWB2 t6, t5, t4<br> [0x800008dc]:csrrs t5, vxsat, zero<br> [0x800008e0]:sw t6, 280(ra)<br>    |
|  69|[0x80002438]<br>0x18082A5D|- rs1_w0_val == -2049<br>                                                                                                                            |[0x800008f8]:KMMAWB2 t6, t5, t4<br> [0x800008fc]:csrrs t5, vxsat, zero<br> [0x80000900]:sw t6, 288(ra)<br>    |
|  70|[0x80002440]<br>0x18082A5D|- rs1_w0_val == -1025<br>                                                                                                                            |[0x80000914]:KMMAWB2 t6, t5, t4<br> [0x80000918]:csrrs t5, vxsat, zero<br> [0x8000091c]:sw t6, 296(ra)<br>    |
|  71|[0x80002448]<br>0x18082A5C|- rs1_w0_val == -513<br>                                                                                                                             |[0x80000930]:KMMAWB2 t6, t5, t4<br> [0x80000934]:csrrs t5, vxsat, zero<br> [0x80000938]:sw t6, 304(ra)<br>    |
|  72|[0x80002450]<br>0x18082A5B|- rs1_w0_val == -257<br>                                                                                                                             |[0x8000094c]:KMMAWB2 t6, t5, t4<br> [0x80000950]:csrrs t5, vxsat, zero<br> [0x80000954]:sw t6, 312(ra)<br>    |
|  73|[0x80002458]<br>0x18082A5A|- rs1_w0_val == -65<br>                                                                                                                              |[0x80000968]:KMMAWB2 t6, t5, t4<br> [0x8000096c]:csrrs t5, vxsat, zero<br> [0x80000970]:sw t6, 320(ra)<br>    |
|  74|[0x80002460]<br>0x18082A59|- rs1_w0_val == -33<br>                                                                                                                              |[0x80000984]:KMMAWB2 t6, t5, t4<br> [0x80000988]:csrrs t5, vxsat, zero<br> [0x8000098c]:sw t6, 328(ra)<br>    |
|  75|[0x80002468]<br>0x18082A58|- rs1_w0_val == -17<br>                                                                                                                              |[0x800009a0]:KMMAWB2 t6, t5, t4<br> [0x800009a4]:csrrs t5, vxsat, zero<br> [0x800009a8]:sw t6, 336(ra)<br>    |
|  76|[0x80002470]<br>0x18082A58|- rs1_w0_val == -9<br>                                                                                                                               |[0x800009bc]:KMMAWB2 t6, t5, t4<br> [0x800009c0]:csrrs t5, vxsat, zero<br> [0x800009c4]:sw t6, 344(ra)<br>    |
|  77|[0x80002478]<br>0x18082A58|- rs1_w0_val == -5<br>                                                                                                                               |[0x800009d8]:KMMAWB2 t6, t5, t4<br> [0x800009dc]:csrrs t5, vxsat, zero<br> [0x800009e0]:sw t6, 352(ra)<br>    |
|  78|[0x80002480]<br>0x18082A56|- rs1_w0_val == -3<br>                                                                                                                               |[0x800009f4]:KMMAWB2 t6, t5, t4<br> [0x800009f8]:csrrs t5, vxsat, zero<br> [0x800009fc]:sw t6, 360(ra)<br>    |
|  79|[0x80002488]<br>0x18082A56|- rs1_w0_val == -2<br>                                                                                                                               |[0x80000a10]:KMMAWB2 t6, t5, t4<br> [0x80000a14]:csrrs t5, vxsat, zero<br> [0x80000a18]:sw t6, 368(ra)<br>    |
|  80|[0x80002490]<br>0x18182A56|- rs1_w0_val == 134217728<br>                                                                                                                        |[0x80000a2c]:KMMAWB2 t6, t5, t4<br> [0x80000a30]:csrrs t5, vxsat, zero<br> [0x80000a34]:sw t6, 376(ra)<br>    |
|  81|[0x80002498]<br>0x1A182656|- rs1_w0_val == 33554432<br>                                                                                                                         |[0x80000a48]:KMMAWB2 t6, t5, t4<br> [0x80000a4c]:csrrs t5, vxsat, zero<br> [0x80000a50]:sw t6, 384(ra)<br>    |
|  82|[0x800024a0]<br>0x1A182856|- rs1_w0_val == 16777216<br>                                                                                                                         |[0x80000a64]:KMMAWB2 t6, t5, t4<br> [0x80000a68]:csrrs t5, vxsat, zero<br> [0x80000a6c]:sw t6, 392(ra)<br>    |
|  83|[0x800024a8]<br>0x19F827D6|- rs1_w0_val == 4194304<br>                                                                                                                          |[0x80000a80]:KMMAWB2 t6, t5, t4<br> [0x80000a84]:csrrs t5, vxsat, zero<br> [0x80000a88]:sw t6, 400(ra)<br>    |
|  84|[0x800024b0]<br>0x19F82556|- rs1_w0_val == 2097152<br>                                                                                                                          |[0x80000a9c]:KMMAWB2 t6, t5, t4<br> [0x80000aa0]:csrrs t5, vxsat, zero<br> [0x80000aa4]:sw t6, 408(ra)<br>    |
|  85|[0x800024b8]<br>0x19F82336|- rs1_w0_val == 1048576<br>                                                                                                                          |[0x80000ab8]:KMMAWB2 t6, t5, t4<br> [0x80000abc]:csrrs t5, vxsat, zero<br> [0x80000ac0]:sw t6, 416(ra)<br>    |
|  86|[0x800024c0]<br>0x19F8231E|- rs1_w0_val == 131072<br>                                                                                                                           |[0x80000ad4]:KMMAWB2 t6, t5, t4<br> [0x80000ad8]:csrrs t5, vxsat, zero<br> [0x80000adc]:sw t6, 424(ra)<br>    |
|  87|[0x800024c8]<br>0x19F82319|- rs1_w0_val == 32768<br>                                                                                                                            |[0x80000af0]:KMMAWB2 t6, t5, t4<br> [0x80000af4]:csrrs t5, vxsat, zero<br> [0x80000af8]:sw t6, 432(ra)<br>    |
|  88|[0x800024d0]<br>0x19F80319|- rs1_w0_val == 16384<br>                                                                                                                            |[0x80000b08]:KMMAWB2 t6, t5, t4<br> [0x80000b0c]:csrrs t5, vxsat, zero<br> [0x80000b10]:sw t6, 440(ra)<br>    |
|  89|[0x800024d8]<br>0x19F802D1|- rs1_w0_val == 262144<br>                                                                                                                           |[0x80000b24]:KMMAWB2 t6, t5, t4<br> [0x80000b28]:csrrs t5, vxsat, zero<br> [0x80000b2c]:sw t6, 448(ra)<br>    |
|  90|[0x800024e0]<br>0x19F802CC|- rs1_w0_val == -131073<br>                                                                                                                          |[0x80000b44]:KMMAWB2 t6, t5, t4<br> [0x80000b48]:csrrs t5, vxsat, zero<br> [0x80000b4c]:sw t6, 456(ra)<br>    |
|  91|[0x800024f0]<br>0x19F8022B|- rs1_w0_val == 4<br>                                                                                                                                |[0x80000b7c]:KMMAWB2 t6, t5, t4<br> [0x80000b80]:csrrs t5, vxsat, zero<br> [0x80000b84]:sw t6, 472(ra)<br>    |
