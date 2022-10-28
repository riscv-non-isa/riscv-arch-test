
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000aa0')]      |
| SIG_REGION                | [('0x80002210', '0x80002490', '160 words')]      |
| COV_LABELS                | ukadd16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/ukadd16-01.S    |
| Total Number of coverpoints| 256     |
| Total Coverpoints Hit     | 250      |
| Total Signature Updates   | 158      |
| STAT1                     | 77      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 79     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000718]:UKADD16 t6, t5, t4
      [0x8000071c]:csrrs t5, vxsat, zero
      [0x80000720]:sw t6, 160(ra)
 -- Signature Address: 0x80002398 Data: 0x000DFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : ukadd16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 0
      - rs2_h0_val == 65519
      - rs1_h0_val == 8192




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a90]:UKADD16 t6, t5, t4
      [0x80000a94]:csrrs t5, vxsat, zero
      [0x80000a98]:sw t6, 392(ra)
 -- Signature Address: 0x80002480 Data: 0xC0008006
 -- Redundant Coverpoints hit by the op
      - opcode : ukadd16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 32768
      - rs2_h0_val == 32768
      - rs1_h1_val == 16384






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : ukadd16', 'rs1 : x4', 'rs2 : x4', 'rd : x4', 'rs1 == rs2 == rd', 'rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h0_val == 65519', 'rs1_h0_val == 65519']
Last Code Sequence : 
	-[0x80000118]:UKADD16 tp, tp, tp
	-[0x8000011c]:csrrs tp, vxsat, zero
	-[0x80000120]:sw tp, 0(gp)
Current Store : [0x80000124] : sw tp, 4(gp) -- Store: [0x80002214]:0x00000001




Last Coverpoint : ['rs1 : x15', 'rs2 : x15', 'rd : x5', 'rs1 == rs2 != rd', 'rs2_h1_val == 64511', 'rs2_h0_val == 64511', 'rs1_h1_val == 64511', 'rs1_h0_val == 64511']
Last Code Sequence : 
	-[0x80000138]:UKADD16 t0, a5, a5
	-[0x8000013c]:csrrs a5, vxsat, zero
	-[0x80000140]:sw t0, 8(gp)
Current Store : [0x80000144] : sw a5, 12(gp) -- Store: [0x8000221c]:0x00000001




Last Coverpoint : ['rs1 : x16', 'rs2 : x13', 'rd : x1', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs2_h0_val == 65471', 'rs1_h1_val == 21845', 'rs1_h0_val == 65471']
Last Code Sequence : 
	-[0x80000158]:UKADD16 ra, a6, a3
	-[0x8000015c]:csrrs a6, vxsat, zero
	-[0x80000160]:sw ra, 16(gp)
Current Store : [0x80000164] : sw a6, 20(gp) -- Store: [0x80002224]:0x00000001




Last Coverpoint : ['rs1 : x6', 'rs2 : x8', 'rd : x8', 'rs2 == rd != rs1', 'rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 43690', 'rs2_h0_val == 16384', 'rs1_h1_val == 61439', 'rs1_h0_val == 63487']
Last Code Sequence : 
	-[0x80000174]:UKADD16 fp, t1, fp
	-[0x80000178]:csrrs t1, vxsat, zero
	-[0x8000017c]:sw fp, 24(gp)
Current Store : [0x80000180] : sw t1, 28(gp) -- Store: [0x8000222c]:0x00000001




Last Coverpoint : ['rs1 : x20', 'rs2 : x9', 'rd : x20', 'rs1 == rd != rs2', 'rs2_h1_val == 21845', 'rs2_h0_val == 2']
Last Code Sequence : 
	-[0x80000194]:UKADD16 s4, s4, s1
	-[0x80000198]:csrrs s4, vxsat, zero
	-[0x8000019c]:sw s4, 32(gp)
Current Store : [0x800001a0] : sw s4, 36(gp) -- Store: [0x80002234]:0x00000001




Last Coverpoint : ['rs1 : x24', 'rs2 : x0', 'rd : x10', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h1_val == 65527']
Last Code Sequence : 
	-[0x800001b4]:UKADD16 a0, s8, zero
	-[0x800001b8]:csrrs s8, vxsat, zero
	-[0x800001bc]:sw a0, 40(gp)
Current Store : [0x800001c0] : sw s8, 44(gp) -- Store: [0x8000223c]:0x00000001




Last Coverpoint : ['rs1 : x30', 'rs2 : x28', 'rd : x2', 'rs2_h1_val == 49151', 'rs2_h0_val == 8']
Last Code Sequence : 
	-[0x800001d4]:UKADD16 sp, t5, t3
	-[0x800001d8]:csrrs t5, vxsat, zero
	-[0x800001dc]:sw sp, 48(gp)
Current Store : [0x800001e0] : sw t5, 52(gp) -- Store: [0x80002244]:0x00000001




Last Coverpoint : ['rs1 : x17', 'rs2 : x18', 'rd : x22', 'rs2_h1_val == 57343', 'rs1_h1_val == 32767', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x800001f4]:UKADD16 s6, a7, s2
	-[0x800001f8]:csrrs a7, vxsat, zero
	-[0x800001fc]:sw s6, 56(gp)
Current Store : [0x80000200] : sw a7, 60(gp) -- Store: [0x8000224c]:0x00000001




Last Coverpoint : ['rs1 : x21', 'rs2 : x6', 'rd : x19', 'rs2_h1_val == 61439', 'rs2_h0_val == 65407', 'rs1_h1_val == 65023', 'rs1_h0_val == 32768']
Last Code Sequence : 
	-[0x80000210]:UKADD16 s3, s5, t1
	-[0x80000214]:csrrs s5, vxsat, zero
	-[0x80000218]:sw s3, 64(gp)
Current Store : [0x8000021c] : sw s5, 68(gp) -- Store: [0x80002254]:0x00000001




Last Coverpoint : ['rs1 : x12', 'rs2 : x31', 'rd : x11', 'rs2_h1_val == 63487', 'rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x8000022c]:UKADD16 a1, a2, t6
	-[0x80000230]:csrrs a2, vxsat, zero
	-[0x80000234]:sw a1, 72(gp)
Current Store : [0x80000238] : sw a2, 76(gp) -- Store: [0x8000225c]:0x00000001




Last Coverpoint : ['rs1 : x5', 'rs2 : x2', 'rd : x17', 'rs2_h1_val == 65023', 'rs2_h0_val == 43690', 'rs1_h1_val == 8', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x8000024c]:UKADD16 a7, t0, sp
	-[0x80000250]:csrrs t0, vxsat, zero
	-[0x80000254]:sw a7, 80(gp)
Current Store : [0x80000258] : sw t0, 84(gp) -- Store: [0x80002264]:0x00000001




Last Coverpoint : ['rs1 : x29', 'rs2 : x21', 'rd : x0', 'rs2_h1_val == 65279']
Last Code Sequence : 
	-[0x8000026c]:UKADD16 zero, t4, s5
	-[0x80000270]:csrrs t4, vxsat, zero
	-[0x80000274]:sw zero, 88(gp)
Current Store : [0x80000278] : sw t4, 92(gp) -- Store: [0x8000226c]:0x00000001




Last Coverpoint : ['rs1 : x26', 'rs2 : x27', 'rd : x15', 'rs2_h1_val == 65407']
Last Code Sequence : 
	-[0x8000028c]:UKADD16 a5, s10, s11
	-[0x80000290]:csrrs s10, vxsat, zero
	-[0x80000294]:sw a5, 96(gp)
Current Store : [0x80000298] : sw s10, 100(gp) -- Store: [0x80002274]:0x00000001




Last Coverpoint : ['rs1 : x23', 'rs2 : x19', 'rd : x30', 'rs2_h1_val == 65471', 'rs2_h0_val == 128', 'rs1_h1_val == 65471']
Last Code Sequence : 
	-[0x800002ac]:UKADD16 t5, s7, s3
	-[0x800002b0]:csrrs s7, vxsat, zero
	-[0x800002b4]:sw t5, 104(gp)
Current Store : [0x800002b8] : sw s7, 108(gp) -- Store: [0x8000227c]:0x00000001




Last Coverpoint : ['rs1 : x2', 'rs2 : x11', 'rd : x28', 'rs2_h1_val == 65503', 'rs1_h0_val == 65527']
Last Code Sequence : 
	-[0x800002d4]:UKADD16 t3, sp, a1
	-[0x800002d8]:csrrs sp, vxsat, zero
	-[0x800002dc]:sw t3, 0(tp)
Current Store : [0x800002e0] : sw sp, 4(tp) -- Store: [0x80002284]:0x00000001




Last Coverpoint : ['rs1 : x18', 'rs2 : x3', 'rd : x13', 'rs2_h1_val == 65519', 'rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x800002f4]:UKADD16 a3, s2, gp
	-[0x800002f8]:csrrs s2, vxsat, zero
	-[0x800002fc]:sw a3, 8(tp)
Current Store : [0x80000300] : sw s2, 12(tp) -- Store: [0x8000228c]:0x00000001




Last Coverpoint : ['rs1 : x19', 'rs2 : x30', 'rd : x14', 'rs2_h1_val == 65527', 'rs2_h0_val == 2048', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000310]:UKADD16 a4, s3, t5
	-[0x80000314]:csrrs s3, vxsat, zero
	-[0x80000318]:sw a4, 16(tp)
Current Store : [0x8000031c] : sw s3, 20(tp) -- Store: [0x80002294]:0x00000001




Last Coverpoint : ['rs1 : x1', 'rs2 : x17', 'rd : x18', 'rs2_h1_val == 65531', 'rs2_h0_val == 16', 'rs1_h1_val == 65503']
Last Code Sequence : 
	-[0x8000032c]:UKADD16 s2, ra, a7
	-[0x80000330]:csrrs ra, vxsat, zero
	-[0x80000334]:sw s2, 24(tp)
Current Store : [0x80000338] : sw ra, 28(tp) -- Store: [0x8000229c]:0x00000001




Last Coverpoint : ['rs1 : x3', 'rs2 : x14', 'rd : x31', 'rs2_h1_val == 65533', 'rs1_h1_val == 2048', 'rs1_h0_val == 65534']
Last Code Sequence : 
	-[0x8000034c]:UKADD16 t6, gp, a4
	-[0x80000350]:csrrs gp, vxsat, zero
	-[0x80000354]:sw t6, 32(tp)
Current Store : [0x80000358] : sw gp, 36(tp) -- Store: [0x800022a4]:0x00000001




Last Coverpoint : ['rs1 : x9', 'rs2 : x7', 'rd : x29', 'rs2_h1_val == 65534', 'rs2_h0_val == 57343', 'rs1_h1_val == 0', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000368]:UKADD16 t4, s1, t2
	-[0x8000036c]:csrrs s1, vxsat, zero
	-[0x80000370]:sw t4, 40(tp)
Current Store : [0x80000374] : sw s1, 44(tp) -- Store: [0x800022ac]:0x00000001




Last Coverpoint : ['rs1 : x0', 'rs2 : x25', 'rd : x6', 'rs1_h0_val == 0', 'rs2_h1_val == 32768', 'rs2_h0_val == 32768']
Last Code Sequence : 
	-[0x80000384]:UKADD16 t1, zero, s9
	-[0x80000388]:csrrs zero, vxsat, zero
	-[0x8000038c]:sw t1, 48(tp)
Current Store : [0x80000390] : sw zero, 52(tp) -- Store: [0x800022b4]:0x00000000




Last Coverpoint : ['rs1 : x7', 'rs2 : x16', 'rd : x9', 'rs2_h1_val == 16384', 'rs1_h1_val == 16384', 'rs1_h0_val == 49151']
Last Code Sequence : 
	-[0x800003a4]:UKADD16 s1, t2, a6
	-[0x800003a8]:csrrs t2, vxsat, zero
	-[0x800003ac]:sw s1, 56(tp)
Current Store : [0x800003b0] : sw t2, 60(tp) -- Store: [0x800022bc]:0x00000001




Last Coverpoint : ['rs1 : x11', 'rs2 : x22', 'rd : x25', 'rs2_h1_val == 8192', 'rs2_h0_val == 65535']
Last Code Sequence : 
	-[0x800003c4]:UKADD16 s9, a1, s6
	-[0x800003c8]:csrrs a1, vxsat, zero
	-[0x800003cc]:sw s9, 64(tp)
Current Store : [0x800003d0] : sw a1, 68(tp) -- Store: [0x800022c4]:0x00000001




Last Coverpoint : ['rs1 : x22', 'rs2 : x20', 'rd : x27', 'rs2_h1_val == 4096', 'rs2_h0_val == 49151']
Last Code Sequence : 
	-[0x800003e4]:UKADD16 s11, s6, s4
	-[0x800003e8]:csrrs s6, vxsat, zero
	-[0x800003ec]:sw s11, 72(tp)
Current Store : [0x800003f0] : sw s6, 76(tp) -- Store: [0x800022cc]:0x00000001




Last Coverpoint : ['rs1 : x25', 'rs2 : x26', 'rd : x3', 'rs2_h1_val == 2048', 'rs2_h0_val == 256', 'rs1_h1_val == 57343']
Last Code Sequence : 
	-[0x80000404]:UKADD16 gp, s9, s10
	-[0x80000408]:csrrs s9, vxsat, zero
	-[0x8000040c]:sw gp, 80(tp)
Current Store : [0x80000410] : sw s9, 84(tp) -- Store: [0x800022d4]:0x00000001




Last Coverpoint : ['rs1 : x27', 'rs2 : x1', 'rd : x16', 'rs2_h1_val == 1024', 'rs1_h0_val == 65279']
Last Code Sequence : 
	-[0x80000424]:UKADD16 a6, s11, ra
	-[0x80000428]:csrrs s11, vxsat, zero
	-[0x8000042c]:sw a6, 88(tp)
Current Store : [0x80000430] : sw s11, 92(tp) -- Store: [0x800022dc]:0x00000001




Last Coverpoint : ['rs1 : x10', 'rs2 : x12', 'rd : x21', 'rs2_h1_val == 512', 'rs2_h0_val == 1024']
Last Code Sequence : 
	-[0x80000444]:UKADD16 s5, a0, a2
	-[0x80000448]:csrrs a0, vxsat, zero
	-[0x8000044c]:sw s5, 96(tp)
Current Store : [0x80000450] : sw a0, 100(tp) -- Store: [0x800022e4]:0x00000001




Last Coverpoint : ['rs1 : x31', 'rs2 : x24', 'rd : x7', 'rs2_h1_val == 256', 'rs1_h1_val == 64']
Last Code Sequence : 
	-[0x80000464]:UKADD16 t2, t6, s8
	-[0x80000468]:csrrs t6, vxsat, zero
	-[0x8000046c]:sw t2, 104(tp)
Current Store : [0x80000470] : sw t6, 108(tp) -- Store: [0x800022ec]:0x00000001




Last Coverpoint : ['rs1 : x14', 'rs2 : x23', 'rd : x24', 'rs2_h1_val == 128', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000484]:UKADD16 s8, a4, s7
	-[0x80000488]:csrrs a4, vxsat, zero
	-[0x8000048c]:sw s8, 112(tp)
Current Store : [0x80000490] : sw a4, 116(tp) -- Store: [0x800022f4]:0x00000001




Last Coverpoint : ['rs1 : x8', 'rs2 : x29', 'rd : x23', 'rs2_h1_val == 64', 'rs2_h0_val == 63487', 'rs1_h1_val == 43690', 'rs1_h0_val == 65407']
Last Code Sequence : 
	-[0x800004ac]:UKADD16 s7, fp, t4
	-[0x800004b0]:csrrs fp, vxsat, zero
	-[0x800004b4]:sw s7, 0(ra)
Current Store : [0x800004b8] : sw fp, 4(ra) -- Store: [0x800022fc]:0x00000001




Last Coverpoint : ['rs1 : x13', 'rs2 : x10', 'rd : x26', 'rs2_h1_val == 32']
Last Code Sequence : 
	-[0x800004cc]:UKADD16 s10, a3, a0
	-[0x800004d0]:csrrs a3, vxsat, zero
	-[0x800004d4]:sw s10, 8(ra)
Current Store : [0x800004d8] : sw a3, 12(ra) -- Store: [0x80002304]:0x00000001




Last Coverpoint : ['rs1 : x28', 'rs2 : x5', 'rd : x12', 'rs2_h1_val == 16', 'rs1_h1_val == 65531']
Last Code Sequence : 
	-[0x800004ec]:UKADD16 a2, t3, t0
	-[0x800004f0]:csrrs t3, vxsat, zero
	-[0x800004f4]:sw a2, 16(ra)
Current Store : [0x800004f8] : sw t3, 20(ra) -- Store: [0x8000230c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 16', 'rs1_h0_val == 65531']
Last Code Sequence : 
	-[0x8000050c]:UKADD16 t6, t5, t4
	-[0x80000510]:csrrs t5, vxsat, zero
	-[0x80000514]:sw t6, 24(ra)
Current Store : [0x80000518] : sw t5, 28(ra) -- Store: [0x80002314]:0x00000001




Last Coverpoint : ['rs2_h0_val == 65527', 'rs1_h0_val == 65533']
Last Code Sequence : 
	-[0x8000052c]:UKADD16 t6, t5, t4
	-[0x80000530]:csrrs t5, vxsat, zero
	-[0x80000534]:sw t6, 32(ra)
Current Store : [0x80000538] : sw t5, 36(ra) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 21845', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000548]:UKADD16 t6, t5, t4
	-[0x8000054c]:csrrs t5, vxsat, zero
	-[0x80000550]:sw t6, 40(ra)
Current Store : [0x80000554] : sw t5, 44(ra) -- Store: [0x80002324]:0x00000001




Last Coverpoint : ['rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000564]:UKADD16 t6, t5, t4
	-[0x80000568]:csrrs t5, vxsat, zero
	-[0x8000056c]:sw t6, 48(ra)
Current Store : [0x80000570] : sw t5, 52(ra) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000584]:UKADD16 t6, t5, t4
	-[0x80000588]:csrrs t5, vxsat, zero
	-[0x8000058c]:sw t6, 56(ra)
Current Store : [0x80000590] : sw t5, 60(ra) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs2_h0_val == 65023', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x800005a4]:UKADD16 t6, t5, t4
	-[0x800005a8]:csrrs t5, vxsat, zero
	-[0x800005ac]:sw t6, 64(ra)
Current Store : [0x800005b0] : sw t5, 68(ra) -- Store: [0x8000233c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 64', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x800005c4]:UKADD16 t6, t5, t4
	-[0x800005c8]:csrrs t5, vxsat, zero
	-[0x800005cc]:sw t6, 72(ra)
Current Store : [0x800005d0] : sw t5, 76(ra) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['rs2_h0_val == 65533', 'rs1_h1_val == 4', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x800005e4]:UKADD16 t6, t5, t4
	-[0x800005e8]:csrrs t5, vxsat, zero
	-[0x800005ec]:sw t6, 80(ra)
Current Store : [0x800005f0] : sw t5, 84(ra) -- Store: [0x8000234c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 128', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000604]:UKADD16 t6, t5, t4
	-[0x80000608]:csrrs t5, vxsat, zero
	-[0x8000060c]:sw t6, 88(ra)
Current Store : [0x80000610] : sw t5, 92(ra) -- Store: [0x80002354]:0x00000001




Last Coverpoint : ['rs1_h1_val == 8192', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80000624]:UKADD16 t6, t5, t4
	-[0x80000628]:csrrs t5, vxsat, zero
	-[0x8000062c]:sw t6, 96(ra)
Current Store : [0x80000630] : sw t5, 100(ra) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 4', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80000644]:UKADD16 t6, t5, t4
	-[0x80000648]:csrrs t5, vxsat, zero
	-[0x8000064c]:sw t6, 104(ra)
Current Store : [0x80000650] : sw t5, 108(ra) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs1_h0_val == 65535']
Last Code Sequence : 
	-[0x80000664]:UKADD16 t6, t5, t4
	-[0x80000668]:csrrs t5, vxsat, zero
	-[0x8000066c]:sw t6, 112(ra)
Current Store : [0x80000670] : sw t5, 116(ra) -- Store: [0x8000236c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 8']
Last Code Sequence : 
	-[0x80000684]:UKADD16 t6, t5, t4
	-[0x80000688]:csrrs t5, vxsat, zero
	-[0x8000068c]:sw t6, 120(ra)
Current Store : [0x80000690] : sw t5, 124(ra) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs2_h1_val == 4', 'rs1_h1_val == 2']
Last Code Sequence : 
	-[0x800006a0]:UKADD16 t6, t5, t4
	-[0x800006a4]:csrrs t5, vxsat, zero
	-[0x800006a8]:sw t6, 128(ra)
Current Store : [0x800006ac] : sw t5, 132(ra) -- Store: [0x8000237c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 2']
Last Code Sequence : 
	-[0x800006bc]:UKADD16 t6, t5, t4
	-[0x800006c0]:csrrs t5, vxsat, zero
	-[0x800006c4]:sw t6, 136(ra)
Current Store : [0x800006c8] : sw t5, 140(ra) -- Store: [0x80002384]:0x00000001




Last Coverpoint : ['rs2_h1_val == 1', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x800006dc]:UKADD16 t6, t5, t4
	-[0x800006e0]:csrrs t5, vxsat, zero
	-[0x800006e4]:sw t6, 144(ra)
Current Store : [0x800006e8] : sw t5, 148(ra) -- Store: [0x8000238c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 65535', 'rs2_h0_val == 32767']
Last Code Sequence : 
	-[0x800006fc]:UKADD16 t6, t5, t4
	-[0x80000700]:csrrs t5, vxsat, zero
	-[0x80000704]:sw t6, 152(ra)
Current Store : [0x80000708] : sw t5, 156(ra) -- Store: [0x80002394]:0x00000001




Last Coverpoint : ['opcode : ukadd16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 0', 'rs2_h0_val == 65519', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000718]:UKADD16 t6, t5, t4
	-[0x8000071c]:csrrs t5, vxsat, zero
	-[0x80000720]:sw t6, 160(ra)
Current Store : [0x80000724] : sw t5, 164(ra) -- Store: [0x8000239c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 512']
Last Code Sequence : 
	-[0x80000738]:UKADD16 t6, t5, t4
	-[0x8000073c]:csrrs t5, vxsat, zero
	-[0x80000740]:sw t6, 168(ra)
Current Store : [0x80000744] : sw t5, 172(ra) -- Store: [0x800023a4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 32', 'rs1_h1_val == 512']
Last Code Sequence : 
	-[0x80000758]:UKADD16 t6, t5, t4
	-[0x8000075c]:csrrs t5, vxsat, zero
	-[0x80000760]:sw t6, 176(ra)
Current Store : [0x80000764] : sw t5, 180(ra) -- Store: [0x800023ac]:0x00000001




Last Coverpoint : ['rs2_h0_val == 1']
Last Code Sequence : 
	-[0x80000778]:UKADD16 t6, t5, t4
	-[0x8000077c]:csrrs t5, vxsat, zero
	-[0x80000780]:sw t6, 184(ra)
Current Store : [0x80000784] : sw t5, 188(ra) -- Store: [0x800023b4]:0x00000001




Last Coverpoint : ['rs1_h1_val == 49151']
Last Code Sequence : 
	-[0x80000794]:UKADD16 t6, t5, t4
	-[0x80000798]:csrrs t5, vxsat, zero
	-[0x8000079c]:sw t6, 192(ra)
Current Store : [0x800007a0] : sw t5, 196(ra) -- Store: [0x800023bc]:0x00000001




Last Coverpoint : ['rs1_h1_val == 63487']
Last Code Sequence : 
	-[0x800007b4]:UKADD16 t6, t5, t4
	-[0x800007b8]:csrrs t5, vxsat, zero
	-[0x800007bc]:sw t6, 200(ra)
Current Store : [0x800007c0] : sw t5, 204(ra) -- Store: [0x800023c4]:0x00000001




Last Coverpoint : ['rs1_h0_val == 65503']
Last Code Sequence : 
	-[0x800007d4]:UKADD16 t6, t5, t4
	-[0x800007d8]:csrrs t5, vxsat, zero
	-[0x800007dc]:sw t6, 208(ra)
Current Store : [0x800007e0] : sw t5, 212(ra) -- Store: [0x800023cc]:0x00000001




Last Coverpoint : ['rs1_h1_val == 65279']
Last Code Sequence : 
	-[0x800007f0]:UKADD16 t6, t5, t4
	-[0x800007f4]:csrrs t5, vxsat, zero
	-[0x800007f8]:sw t6, 216(ra)
Current Store : [0x800007fc] : sw t5, 220(ra) -- Store: [0x800023d4]:0x00000001




Last Coverpoint : ['rs1_h1_val == 65407', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000810]:UKADD16 t6, t5, t4
	-[0x80000814]:csrrs t5, vxsat, zero
	-[0x80000818]:sw t6, 224(ra)
Current Store : [0x8000081c] : sw t5, 228(ra) -- Store: [0x800023dc]:0x00000001




Last Coverpoint : ['rs1_h1_val == 65519', 'rs1_h0_val == 57343']
Last Code Sequence : 
	-[0x80000830]:UKADD16 t6, t5, t4
	-[0x80000834]:csrrs t5, vxsat, zero
	-[0x80000838]:sw t6, 232(ra)
Current Store : [0x8000083c] : sw t5, 236(ra) -- Store: [0x800023e4]:0x00000001




Last Coverpoint : ['rs1_h1_val == 65533']
Last Code Sequence : 
	-[0x80000850]:UKADD16 t6, t5, t4
	-[0x80000854]:csrrs t5, vxsat, zero
	-[0x80000858]:sw t6, 240(ra)
Current Store : [0x8000085c] : sw t5, 244(ra) -- Store: [0x800023ec]:0x00000001




Last Coverpoint : ['rs1_h1_val == 65534']
Last Code Sequence : 
	-[0x80000870]:UKADD16 t6, t5, t4
	-[0x80000874]:csrrs t5, vxsat, zero
	-[0x80000878]:sw t6, 248(ra)
Current Store : [0x8000087c] : sw t5, 252(ra) -- Store: [0x800023f4]:0x00000001




Last Coverpoint : ['rs1_h1_val == 256']
Last Code Sequence : 
	-[0x80000890]:UKADD16 t6, t5, t4
	-[0x80000894]:csrrs t5, vxsat, zero
	-[0x80000898]:sw t6, 256(ra)
Current Store : [0x8000089c] : sw t5, 260(ra) -- Store: [0x800023fc]:0x00000001




Last Coverpoint : ['rs1_h1_val == 32']
Last Code Sequence : 
	-[0x800008ac]:UKADD16 t6, t5, t4
	-[0x800008b0]:csrrs t5, vxsat, zero
	-[0x800008b4]:sw t6, 264(ra)
Current Store : [0x800008b8] : sw t5, 268(ra) -- Store: [0x80002404]:0x00000001




Last Coverpoint : ['rs2_h0_val == 61439']
Last Code Sequence : 
	-[0x800008c8]:UKADD16 t6, t5, t4
	-[0x800008cc]:csrrs t5, vxsat, zero
	-[0x800008d0]:sw t6, 272(ra)
Current Store : [0x800008d4] : sw t5, 276(ra) -- Store: [0x8000240c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 1']
Last Code Sequence : 
	-[0x800008e8]:UKADD16 t6, t5, t4
	-[0x800008ec]:csrrs t5, vxsat, zero
	-[0x800008f0]:sw t6, 280(ra)
Current Store : [0x800008f4] : sw t5, 284(ra) -- Store: [0x80002414]:0x00000001




Last Coverpoint : ['rs1_h1_val == 65535']
Last Code Sequence : 
	-[0x80000904]:UKADD16 t6, t5, t4
	-[0x80000908]:csrrs t5, vxsat, zero
	-[0x8000090c]:sw t6, 288(ra)
Current Store : [0x80000910] : sw t5, 292(ra) -- Store: [0x8000241c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 43690']
Last Code Sequence : 
	-[0x80000924]:UKADD16 t6, t5, t4
	-[0x80000928]:csrrs t5, vxsat, zero
	-[0x8000092c]:sw t6, 296(ra)
Current Store : [0x80000930] : sw t5, 300(ra) -- Store: [0x80002424]:0x00000001




Last Coverpoint : ['rs2_h0_val == 65279']
Last Code Sequence : 
	-[0x80000944]:UKADD16 t6, t5, t4
	-[0x80000948]:csrrs t5, vxsat, zero
	-[0x8000094c]:sw t6, 304(ra)
Current Store : [0x80000950] : sw t5, 308(ra) -- Store: [0x8000242c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 65503']
Last Code Sequence : 
	-[0x80000964]:UKADD16 t6, t5, t4
	-[0x80000968]:csrrs t5, vxsat, zero
	-[0x8000096c]:sw t6, 312(ra)
Current Store : [0x80000970] : sw t5, 316(ra) -- Store: [0x80002434]:0x00000001




Last Coverpoint : ['rs1_h0_val == 61439']
Last Code Sequence : 
	-[0x80000984]:UKADD16 t6, t5, t4
	-[0x80000988]:csrrs t5, vxsat, zero
	-[0x8000098c]:sw t6, 320(ra)
Current Store : [0x80000990] : sw t5, 324(ra) -- Store: [0x8000243c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 65531']
Last Code Sequence : 
	-[0x800009a4]:UKADD16 t6, t5, t4
	-[0x800009a8]:csrrs t5, vxsat, zero
	-[0x800009ac]:sw t6, 328(ra)
Current Store : [0x800009b0] : sw t5, 332(ra) -- Store: [0x80002444]:0x00000001




Last Coverpoint : ['rs1_h0_val == 65023']
Last Code Sequence : 
	-[0x800009c0]:UKADD16 t6, t5, t4
	-[0x800009c4]:csrrs t5, vxsat, zero
	-[0x800009c8]:sw t6, 336(ra)
Current Store : [0x800009cc] : sw t5, 340(ra) -- Store: [0x8000244c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 65534']
Last Code Sequence : 
	-[0x800009e0]:UKADD16 t6, t5, t4
	-[0x800009e4]:csrrs t5, vxsat, zero
	-[0x800009e8]:sw t6, 344(ra)
Current Store : [0x800009ec] : sw t5, 348(ra) -- Store: [0x80002454]:0x00000001




Last Coverpoint : ['rs2_h0_val == 8192']
Last Code Sequence : 
	-[0x800009f8]:UKADD16 t6, t5, t4
	-[0x800009fc]:csrrs t5, vxsat, zero
	-[0x80000a00]:sw t6, 352(ra)
Current Store : [0x80000a04] : sw t5, 356(ra) -- Store: [0x8000245c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 4096']
Last Code Sequence : 
	-[0x80000a14]:UKADD16 t6, t5, t4
	-[0x80000a18]:csrrs t5, vxsat, zero
	-[0x80000a1c]:sw t6, 360(ra)
Current Store : [0x80000a20] : sw t5, 364(ra) -- Store: [0x80002464]:0x00000001




Last Coverpoint : ['rs1_h1_val == 32768']
Last Code Sequence : 
	-[0x80000a34]:UKADD16 t6, t5, t4
	-[0x80000a38]:csrrs t5, vxsat, zero
	-[0x80000a3c]:sw t6, 368(ra)
Current Store : [0x80000a40] : sw t5, 372(ra) -- Store: [0x8000246c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000a54]:UKADD16 t6, t5, t4
	-[0x80000a58]:csrrs t5, vxsat, zero
	-[0x80000a5c]:sw t6, 376(ra)
Current Store : [0x80000a60] : sw t5, 380(ra) -- Store: [0x80002474]:0x00000001




Last Coverpoint : ['rs2_h1_val == 32767']
Last Code Sequence : 
	-[0x80000a74]:UKADD16 t6, t5, t4
	-[0x80000a78]:csrrs t5, vxsat, zero
	-[0x80000a7c]:sw t6, 384(ra)
Current Store : [0x80000a80] : sw t5, 388(ra) -- Store: [0x8000247c]:0x00000001




Last Coverpoint : ['opcode : ukadd16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 32768', 'rs2_h0_val == 32768', 'rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x80000a90]:UKADD16 t6, t5, t4
	-[0x80000a94]:csrrs t5, vxsat, zero
	-[0x80000a98]:sw t6, 392(ra)
Current Store : [0x80000a9c] : sw t5, 396(ra) -- Store: [0x80002484]:0x00000001





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

|s.no|        signature         |                                                                                                                                      coverpoints                                                                                                                                       |                                                     code                                                     |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000001|- opcode : ukadd16<br> - rs1 : x4<br> - rs2 : x4<br> - rd : x4<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h0_val == 65519<br> - rs1_h0_val == 65519<br> |[0x80000118]:UKADD16 tp, tp, tp<br> [0x8000011c]:csrrs tp, vxsat, zero<br> [0x80000120]:sw tp, 0(gp)<br>      |
|   2|[0x80002218]<br>0xFFFFFFFF|- rs1 : x15<br> - rs2 : x15<br> - rd : x5<br> - rs1 == rs2 != rd<br> - rs2_h1_val == 64511<br> - rs2_h0_val == 64511<br> - rs1_h1_val == 64511<br> - rs1_h0_val == 64511<br>                                                                                                            |[0x80000138]:UKADD16 t0, a5, a5<br> [0x8000013c]:csrrs a5, vxsat, zero<br> [0x80000140]:sw t0, 8(gp)<br>      |
|   3|[0x80002220]<br>0x5568FFFF|- rs1 : x16<br> - rs2 : x13<br> - rd : x1<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs2_h0_val == 65471<br> - rs1_h1_val == 21845<br> - rs1_h0_val == 65471<br>                                          |[0x80000158]:UKADD16 ra, a6, a3<br> [0x8000015c]:csrrs a6, vxsat, zero<br> [0x80000160]:sw ra, 16(gp)<br>     |
|   4|[0x80002228]<br>0xFFFFFFFF|- rs1 : x6<br> - rs2 : x8<br> - rd : x8<br> - rs2 == rd != rs1<br> - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == 43690<br> - rs2_h0_val == 16384<br> - rs1_h1_val == 61439<br> - rs1_h0_val == 63487<br>                                         |[0x80000174]:UKADD16 fp, t1, fp<br> [0x80000178]:csrrs t1, vxsat, zero<br> [0x8000017c]:sw fp, 24(gp)<br>     |
|   5|[0x80002230]<br>0x00000001|- rs1 : x20<br> - rs2 : x9<br> - rd : x20<br> - rs1 == rd != rs2<br> - rs2_h1_val == 21845<br> - rs2_h0_val == 2<br>                                                                                                                                                                    |[0x80000194]:UKADD16 s4, s4, s1<br> [0x80000198]:csrrs s4, vxsat, zero<br> [0x8000019c]:sw s4, 32(gp)<br>     |
|   6|[0x80002238]<br>0xFFF70006|- rs1 : x24<br> - rs2 : x0<br> - rd : x10<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h1_val == 65527<br>                                                                                                                                                                     |[0x800001b4]:UKADD16 a0, s8, zero<br> [0x800001b8]:csrrs s8, vxsat, zero<br> [0x800001bc]:sw a0, 40(gp)<br>   |
|   7|[0x80002240]<br>0xC0040016|- rs1 : x30<br> - rs2 : x28<br> - rd : x2<br> - rs2_h1_val == 49151<br> - rs2_h0_val == 8<br>                                                                                                                                                                                           |[0x800001d4]:UKADD16 sp, t5, t3<br> [0x800001d8]:csrrs t5, vxsat, zero<br> [0x800001dc]:sw sp, 48(gp)<br>     |
|   8|[0x80002248]<br>0xFFFF0202|- rs1 : x17<br> - rs2 : x18<br> - rd : x22<br> - rs2_h1_val == 57343<br> - rs1_h1_val == 32767<br> - rs1_h0_val == 512<br>                                                                                                                                                              |[0x800001f4]:UKADD16 s6, a7, s2<br> [0x800001f8]:csrrs a7, vxsat, zero<br> [0x800001fc]:sw s6, 56(gp)<br>     |
|   9|[0x80002250]<br>0xFFFFFFFF|- rs1 : x21<br> - rs2 : x6<br> - rd : x19<br> - rs2_h1_val == 61439<br> - rs2_h0_val == 65407<br> - rs1_h1_val == 65023<br> - rs1_h0_val == 32768<br>                                                                                                                                   |[0x80000210]:UKADD16 s3, s5, t1<br> [0x80000214]:csrrs s5, vxsat, zero<br> [0x80000218]:sw s3, 64(gp)<br>     |
|  10|[0x80002258]<br>0xFBFF800D|- rs1 : x12<br> - rs2 : x31<br> - rd : x11<br> - rs2_h1_val == 63487<br> - rs1_h1_val == 1024<br>                                                                                                                                                                                       |[0x8000022c]:UKADD16 a1, a2, t6<br> [0x80000230]:csrrs a2, vxsat, zero<br> [0x80000234]:sw a1, 72(gp)<br>     |
|  11|[0x80002260]<br>0xFE07AABA|- rs1 : x5<br> - rs2 : x2<br> - rd : x17<br> - rs2_h1_val == 65023<br> - rs2_h0_val == 43690<br> - rs1_h1_val == 8<br> - rs1_h0_val == 16<br>                                                                                                                                           |[0x8000024c]:UKADD16 a7, t0, sp<br> [0x80000250]:csrrs t0, vxsat, zero<br> [0x80000254]:sw a7, 80(gp)<br>     |
|  12|[0x80002268]<br>0x00000000|- rs1 : x29<br> - rs2 : x21<br> - rd : x0<br> - rs2_h1_val == 65279<br>                                                                                                                                                                                                                 |[0x8000026c]:UKADD16 zero, t4, s5<br> [0x80000270]:csrrs t4, vxsat, zero<br> [0x80000274]:sw zero, 88(gp)<br> |
|  13|[0x80002270]<br>0xFFFF000D|- rs1 : x26<br> - rs2 : x27<br> - rd : x15<br> - rs2_h1_val == 65407<br>                                                                                                                                                                                                                |[0x8000028c]:UKADD16 a5, s10, s11<br> [0x80000290]:csrrs s10, vxsat, zero<br> [0x80000294]:sw a5, 96(gp)<br>  |
|  14|[0x80002278]<br>0xFFFFF87F|- rs1 : x23<br> - rs2 : x19<br> - rd : x30<br> - rs2_h1_val == 65471<br> - rs2_h0_val == 128<br> - rs1_h1_val == 65471<br>                                                                                                                                                              |[0x800002ac]:UKADD16 t5, s7, s3<br> [0x800002b0]:csrrs s7, vxsat, zero<br> [0x800002b4]:sw t5, 104(gp)<br>    |
|  15|[0x80002280]<br>0xFFFFFFFF|- rs1 : x2<br> - rs2 : x11<br> - rd : x28<br> - rs2_h1_val == 65503<br> - rs1_h0_val == 65527<br>                                                                                                                                                                                       |[0x800002d4]:UKADD16 t3, sp, a1<br> [0x800002d8]:csrrs sp, vxsat, zero<br> [0x800002dc]:sw t3, 0(tp)<br>      |
|  16|[0x80002288]<br>0xFFFFFFFF|- rs1 : x18<br> - rs2 : x3<br> - rd : x13<br> - rs2_h1_val == 65519<br> - rs1_h1_val == 4096<br>                                                                                                                                                                                        |[0x800002f4]:UKADD16 a3, s2, gp<br> [0x800002f8]:csrrs s2, vxsat, zero<br> [0x800002fc]:sw a3, 8(tp)<br>      |
|  17|[0x80002290]<br>0xFFFF1800|- rs1 : x19<br> - rs2 : x30<br> - rd : x14<br> - rs2_h1_val == 65527<br> - rs2_h0_val == 2048<br> - rs1_h0_val == 4096<br>                                                                                                                                                              |[0x80000310]:UKADD16 a4, s3, t5<br> [0x80000314]:csrrs s3, vxsat, zero<br> [0x80000318]:sw a4, 16(tp)<br>     |
|  18|[0x80002298]<br>0xFFFF8010|- rs1 : x1<br> - rs2 : x17<br> - rd : x18<br> - rs2_h1_val == 65531<br> - rs2_h0_val == 16<br> - rs1_h1_val == 65503<br>                                                                                                                                                                |[0x8000032c]:UKADD16 s2, ra, a7<br> [0x80000330]:csrrs ra, vxsat, zero<br> [0x80000334]:sw s2, 24(tp)<br>     |
|  19|[0x800022a0]<br>0xFFFFFFFF|- rs1 : x3<br> - rs2 : x14<br> - rd : x31<br> - rs2_h1_val == 65533<br> - rs1_h1_val == 2048<br> - rs1_h0_val == 65534<br>                                                                                                                                                              |[0x8000034c]:UKADD16 t6, gp, a4<br> [0x80000350]:csrrs gp, vxsat, zero<br> [0x80000354]:sw t6, 32(tp)<br>     |
|  20|[0x800022a8]<br>0xFFFEFFFF|- rs1 : x9<br> - rs2 : x7<br> - rd : x29<br> - rs2_h1_val == 65534<br> - rs2_h0_val == 57343<br> - rs1_h1_val == 0<br> - rs1_h0_val == 16384<br>                                                                                                                                        |[0x80000368]:UKADD16 t4, s1, t2<br> [0x8000036c]:csrrs s1, vxsat, zero<br> [0x80000370]:sw t4, 40(tp)<br>     |
|  21|[0x800022b0]<br>0x80008000|- rs1 : x0<br> - rs2 : x25<br> - rd : x6<br> - rs1_h0_val == 0<br> - rs2_h1_val == 32768<br> - rs2_h0_val == 32768<br>                                                                                                                                                                  |[0x80000384]:UKADD16 t1, zero, s9<br> [0x80000388]:csrrs zero, vxsat, zero<br> [0x8000038c]:sw t1, 48(tp)<br> |
|  22|[0x800022b8]<br>0x8000C011|- rs1 : x7<br> - rs2 : x16<br> - rd : x9<br> - rs2_h1_val == 16384<br> - rs1_h1_val == 16384<br> - rs1_h0_val == 49151<br>                                                                                                                                                              |[0x800003a4]:UKADD16 s1, t2, a6<br> [0x800003a8]:csrrs t2, vxsat, zero<br> [0x800003ac]:sw s1, 56(tp)<br>     |
|  23|[0x800022c0]<br>0x2400FFFF|- rs1 : x11<br> - rs2 : x22<br> - rd : x25<br> - rs2_h1_val == 8192<br> - rs2_h0_val == 65535<br>                                                                                                                                                                                       |[0x800003c4]:UKADD16 s9, a1, s6<br> [0x800003c8]:csrrs a1, vxsat, zero<br> [0x800003cc]:sw s9, 64(tp)<br>     |
|  24|[0x800022c8]<br>0x8FFFC005|- rs1 : x22<br> - rs2 : x20<br> - rd : x27<br> - rs2_h1_val == 4096<br> - rs2_h0_val == 49151<br>                                                                                                                                                                                       |[0x800003e4]:UKADD16 s11, s6, s4<br> [0x800003e8]:csrrs s6, vxsat, zero<br> [0x800003ec]:sw s11, 72(tp)<br>   |
|  25|[0x800022d0]<br>0xE7FF010D|- rs1 : x25<br> - rs2 : x26<br> - rd : x3<br> - rs2_h1_val == 2048<br> - rs2_h0_val == 256<br> - rs1_h1_val == 57343<br>                                                                                                                                                                |[0x80000404]:UKADD16 gp, s9, s10<br> [0x80000408]:csrrs s9, vxsat, zero<br> [0x8000040c]:sw gp, 80(tp)<br>    |
|  26|[0x800022d8]<br>0x0408FFFF|- rs1 : x27<br> - rs2 : x1<br> - rd : x16<br> - rs2_h1_val == 1024<br> - rs1_h0_val == 65279<br>                                                                                                                                                                                        |[0x80000424]:UKADD16 a6, s11, ra<br> [0x80000428]:csrrs s11, vxsat, zero<br> [0x8000042c]:sw a6, 88(tp)<br>   |
|  27|[0x800022e0]<br>0x0207FFFF|- rs1 : x10<br> - rs2 : x12<br> - rd : x21<br> - rs2_h1_val == 512<br> - rs2_h0_val == 1024<br>                                                                                                                                                                                         |[0x80000444]:UKADD16 s5, a0, a2<br> [0x80000448]:csrrs a0, vxsat, zero<br> [0x8000044c]:sw s5, 96(tp)<br>     |
|  28|[0x800022e8]<br>0x0140FFF6|- rs1 : x31<br> - rs2 : x24<br> - rd : x7<br> - rs2_h1_val == 256<br> - rs1_h1_val == 64<br>                                                                                                                                                                                            |[0x80000464]:UKADD16 t2, t6, s8<br> [0x80000468]:csrrs t6, vxsat, zero<br> [0x8000046c]:sw t2, 104(tp)<br>    |
|  29|[0x800022f0]<br>0x00C00411|- rs1 : x14<br> - rs2 : x23<br> - rd : x24<br> - rs2_h1_val == 128<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                         |[0x80000484]:UKADD16 s8, a4, s7<br> [0x80000488]:csrrs a4, vxsat, zero<br> [0x8000048c]:sw s8, 112(tp)<br>    |
|  30|[0x800022f8]<br>0xAAEAFFFF|- rs1 : x8<br> - rs2 : x29<br> - rd : x23<br> - rs2_h1_val == 64<br> - rs2_h0_val == 63487<br> - rs1_h1_val == 43690<br> - rs1_h0_val == 65407<br>                                                                                                                                      |[0x800004ac]:UKADD16 s7, fp, t4<br> [0x800004b0]:csrrs fp, vxsat, zero<br> [0x800004b4]:sw s7, 0(ra)<br>      |
|  31|[0x80002300]<br>0x002CFF8C|- rs1 : x13<br> - rs2 : x10<br> - rd : x26<br> - rs2_h1_val == 32<br>                                                                                                                                                                                                                   |[0x800004cc]:UKADD16 s10, a3, a0<br> [0x800004d0]:csrrs a3, vxsat, zero<br> [0x800004d4]:sw s10, 8(ra)<br>    |
|  32|[0x80002308]<br>0xFFFFFFFF|- rs1 : x28<br> - rs2 : x5<br> - rd : x12<br> - rs2_h1_val == 16<br> - rs1_h1_val == 65531<br>                                                                                                                                                                                          |[0x800004ec]:UKADD16 a2, t3, t0<br> [0x800004f0]:csrrs t3, vxsat, zero<br> [0x800004f4]:sw a2, 16(ra)<br>     |
|  33|[0x80002310]<br>0x0017FFFD|- rs1_h1_val == 16<br> - rs1_h0_val == 65531<br>                                                                                                                                                                                                                                        |[0x8000050c]:UKADD16 t6, t5, t4<br> [0x80000510]:csrrs t5, vxsat, zero<br> [0x80000514]:sw t6, 24(ra)<br>     |
|  34|[0x80002318]<br>0x0109FFFF|- rs2_h0_val == 65527<br> - rs1_h0_val == 65533<br>                                                                                                                                                                                                                                     |[0x8000052c]:UKADD16 t6, t5, t4<br> [0x80000530]:csrrs t5, vxsat, zero<br> [0x80000534]:sw t6, 32(ra)<br>     |
|  35|[0x80002320]<br>0x000E7555|- rs2_h0_val == 21845<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                      |[0x80000548]:UKADD16 t6, t5, t4<br> [0x8000054c]:csrrs t5, vxsat, zero<br> [0x80000550]:sw t6, 40(ra)<br>     |
|  36|[0x80002328]<br>0x00850800|- rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                |[0x80000564]:UKADD16 t6, t5, t4<br> [0x80000568]:csrrs t5, vxsat, zero<br> [0x8000056c]:sw t6, 48(ra)<br>     |
|  37|[0x80002330]<br>0x0205010E|- rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                 |[0x80000584]:UKADD16 t6, t5, t4<br> [0x80000588]:csrrs t5, vxsat, zero<br> [0x8000058c]:sw t6, 56(ra)<br>     |
|  38|[0x80002338]<br>0x004DFE7F|- rs2_h0_val == 65023<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                       |[0x800005a4]:UKADD16 t6, t5, t4<br> [0x800005a8]:csrrs t5, vxsat, zero<br> [0x800005ac]:sw t6, 64(ra)<br>     |
|  39|[0x80002340]<br>0x80100080|- rs2_h0_val == 64<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                           |[0x800005c4]:UKADD16 t6, t5, t4<br> [0x800005c8]:csrrs t5, vxsat, zero<br> [0x800005cc]:sw t6, 72(ra)<br>     |
|  40|[0x80002348]<br>0xFFC3FFFF|- rs2_h0_val == 65533<br> - rs1_h1_val == 4<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                  |[0x800005e4]:UKADD16 t6, t5, t4<br> [0x800005e8]:csrrs t5, vxsat, zero<br> [0x800005ec]:sw t6, 80(ra)<br>     |
|  41|[0x80002350]<br>0x0093000E|- rs1_h1_val == 128<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                           |[0x80000604]:UKADD16 t6, t5, t4<br> [0x80000608]:csrrs t5, vxsat, zero<br> [0x8000060c]:sw t6, 88(ra)<br>     |
|  42|[0x80002358]<br>0xFFFFC003|- rs1_h1_val == 8192<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                          |[0x80000624]:UKADD16 t6, t5, t4<br> [0x80000628]:csrrs t5, vxsat, zero<br> [0x8000062c]:sw t6, 96(ra)<br>     |
|  43|[0x80002360]<br>0xF0050005|- rs2_h0_val == 4<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                             |[0x80000644]:UKADD16 t6, t5, t4<br> [0x80000648]:csrrs t5, vxsat, zero<br> [0x8000064c]:sw t6, 104(ra)<br>    |
|  44|[0x80002368]<br>0xFF92FFFF|- rs1_h0_val == 65535<br>                                                                                                                                                                                                                                                               |[0x80000664]:UKADD16 t6, t5, t4<br> [0x80000668]:csrrs t5, vxsat, zero<br> [0x8000066c]:sw t6, 112(ra)<br>    |
|  45|[0x80002370]<br>0xE0070113|- rs2_h1_val == 8<br>                                                                                                                                                                                                                                                                   |[0x80000684]:UKADD16 t6, t5, t4<br> [0x80000688]:csrrs t5, vxsat, zero<br> [0x8000068c]:sw t6, 120(ra)<br>    |
|  46|[0x80002378]<br>0x00060002|- rs2_h1_val == 4<br> - rs1_h1_val == 2<br>                                                                                                                                                                                                                                             |[0x800006a0]:UKADD16 t6, t5, t4<br> [0x800006a4]:csrrs t5, vxsat, zero<br> [0x800006a8]:sw t6, 128(ra)<br>    |
|  47|[0x80002380]<br>0x0005FFFF|- rs2_h1_val == 2<br>                                                                                                                                                                                                                                                                   |[0x800006bc]:UKADD16 t6, t5, t4<br> [0x800006c0]:csrrs t5, vxsat, zero<br> [0x800006c4]:sw t6, 136(ra)<br>    |
|  48|[0x80002388]<br>0xFFE05567|- rs2_h1_val == 1<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                         |[0x800006dc]:UKADD16 t6, t5, t4<br> [0x800006e0]:csrrs t5, vxsat, zero<br> [0x800006e4]:sw t6, 144(ra)<br>    |
|  49|[0x80002390]<br>0xFFFFD554|- rs2_h1_val == 65535<br> - rs2_h0_val == 32767<br>                                                                                                                                                                                                                                     |[0x800006fc]:UKADD16 t6, t5, t4<br> [0x80000700]:csrrs t5, vxsat, zero<br> [0x80000704]:sw t6, 152(ra)<br>    |
|  50|[0x800023a0]<br>0xFFFFFFFF|- rs2_h0_val == 512<br>                                                                                                                                                                                                                                                                 |[0x80000738]:UKADD16 t6, t5, t4<br> [0x8000073c]:csrrs t5, vxsat, zero<br> [0x80000740]:sw t6, 168(ra)<br>    |
|  51|[0x800023a8]<br>0xFFFFFFDF|- rs2_h0_val == 32<br> - rs1_h1_val == 512<br>                                                                                                                                                                                                                                          |[0x80000758]:UKADD16 t6, t5, t4<br> [0x8000075c]:csrrs t5, vxsat, zero<br> [0x80000760]:sw t6, 176(ra)<br>    |
|  52|[0x800023b0]<br>0x000AFFC0|- rs2_h0_val == 1<br>                                                                                                                                                                                                                                                                   |[0x80000778]:UKADD16 t6, t5, t4<br> [0x8000077c]:csrrs t5, vxsat, zero<br> [0x80000780]:sw t6, 184(ra)<br>    |
|  53|[0x800023b8]<br>0xFFFF000E|- rs1_h1_val == 49151<br>                                                                                                                                                                                                                                                               |[0x80000794]:UKADD16 t6, t5, t4<br> [0x80000798]:csrrs t5, vxsat, zero<br> [0x8000079c]:sw t6, 192(ra)<br>    |
|  54|[0x800023c0]<br>0xF9FFFFFF|- rs1_h1_val == 63487<br>                                                                                                                                                                                                                                                               |[0x800007b4]:UKADD16 t6, t5, t4<br> [0x800007b8]:csrrs t5, vxsat, zero<br> [0x800007bc]:sw t6, 200(ra)<br>    |
|  55|[0x800023c8]<br>0xFC11FFE6|- rs1_h0_val == 65503<br>                                                                                                                                                                                                                                                               |[0x800007d4]:UKADD16 t6, t5, t4<br> [0x800007d8]:csrrs t5, vxsat, zero<br> [0x800007dc]:sw t6, 208(ra)<br>    |
|  56|[0x800023d0]<br>0xFF114013|- rs1_h1_val == 65279<br>                                                                                                                                                                                                                                                               |[0x800007f0]:UKADD16 t6, t5, t4<br> [0x800007f4]:csrrs t5, vxsat, zero<br> [0x800007f8]:sw t6, 216(ra)<br>    |
|  57|[0x800023d8]<br>0xFFFFFFFF|- rs1_h1_val == 65407<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                     |[0x80000810]:UKADD16 t6, t5, t4<br> [0x80000814]:csrrs t5, vxsat, zero<br> [0x80000818]:sw t6, 224(ra)<br>    |
|  58|[0x800023e0]<br>0xFFFFE006|- rs1_h1_val == 65519<br> - rs1_h0_val == 57343<br>                                                                                                                                                                                                                                     |[0x80000830]:UKADD16 t6, t5, t4<br> [0x80000834]:csrrs t5, vxsat, zero<br> [0x80000838]:sw t6, 232(ra)<br>    |
|  59|[0x800023e8]<br>0xFFFF0013|- rs1_h1_val == 65533<br>                                                                                                                                                                                                                                                               |[0x80000850]:UKADD16 t6, t5, t4<br> [0x80000854]:csrrs t5, vxsat, zero<br> [0x80000858]:sw t6, 240(ra)<br>    |
|  60|[0x800023f0]<br>0xFFFFFFFF|- rs1_h1_val == 65534<br>                                                                                                                                                                                                                                                               |[0x80000870]:UKADD16 t6, t5, t4<br> [0x80000874]:csrrs t5, vxsat, zero<br> [0x80000878]:sw t6, 248(ra)<br>    |
|  61|[0x800023f8]<br>0xFFFFFFFF|- rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                 |[0x80000890]:UKADD16 t6, t5, t4<br> [0x80000894]:csrrs t5, vxsat, zero<br> [0x80000898]:sw t6, 256(ra)<br>    |
|  62|[0x80002400]<br>0x00A0400F|- rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                  |[0x800008ac]:UKADD16 t6, t5, t4<br> [0x800008b0]:csrrs t5, vxsat, zero<br> [0x800008b4]:sw t6, 264(ra)<br>    |
|  63|[0x80002408]<br>0xC005FFFF|- rs2_h0_val == 61439<br>                                                                                                                                                                                                                                                               |[0x800008c8]:UKADD16 t6, t5, t4<br> [0x800008cc]:csrrs t5, vxsat, zero<br> [0x800008d0]:sw t6, 272(ra)<br>    |
|  64|[0x80002410]<br>0xFFFC0806|- rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                   |[0x800008e8]:UKADD16 t6, t5, t4<br> [0x800008ec]:csrrs t5, vxsat, zero<br> [0x800008f0]:sw t6, 280(ra)<br>    |
|  65|[0x80002418]<br>0xFFFFFF01|- rs1_h1_val == 65535<br>                                                                                                                                                                                                                                                               |[0x80000904]:UKADD16 t6, t5, t4<br> [0x80000908]:csrrs t5, vxsat, zero<br> [0x8000090c]:sw t6, 288(ra)<br>    |
|  66|[0x80002420]<br>0xFF8EFFFF|- rs1_h0_val == 43690<br>                                                                                                                                                                                                                                                               |[0x80000924]:UKADD16 t6, t5, t4<br> [0x80000928]:csrrs t5, vxsat, zero<br> [0x8000092c]:sw t6, 296(ra)<br>    |
|  67|[0x80002428]<br>0xFFFFFFFF|- rs2_h0_val == 65279<br>                                                                                                                                                                                                                                                               |[0x80000944]:UKADD16 t6, t5, t4<br> [0x80000948]:csrrs t5, vxsat, zero<br> [0x8000094c]:sw t6, 304(ra)<br>    |
|  68|[0x80002430]<br>0x1005FFE2|- rs2_h0_val == 65503<br>                                                                                                                                                                                                                                                               |[0x80000964]:UKADD16 t6, t5, t4<br> [0x80000968]:csrrs t5, vxsat, zero<br> [0x8000096c]:sw t6, 312(ra)<br>    |
|  69|[0x80002438]<br>0x4040F00B|- rs1_h0_val == 61439<br>                                                                                                                                                                                                                                                               |[0x80000984]:UKADD16 t6, t5, t4<br> [0x80000988]:csrrs t5, vxsat, zero<br> [0x8000098c]:sw t6, 320(ra)<br>    |
|  70|[0x80002440]<br>0x0085FFFF|- rs2_h0_val == 65531<br>                                                                                                                                                                                                                                                               |[0x800009a4]:UKADD16 t6, t5, t4<br> [0x800009a8]:csrrs t5, vxsat, zero<br> [0x800009ac]:sw t6, 328(ra)<br>    |
|  71|[0x80002448]<br>0xFFFFFFFF|- rs1_h0_val == 65023<br>                                                                                                                                                                                                                                                               |[0x800009c0]:UKADD16 t6, t5, t4<br> [0x800009c4]:csrrs t5, vxsat, zero<br> [0x800009c8]:sw t6, 336(ra)<br>    |
|  72|[0x80002450]<br>0x5560FFFF|- rs2_h0_val == 65534<br>                                                                                                                                                                                                                                                               |[0x800009e0]:UKADD16 t6, t5, t4<br> [0x800009e4]:csrrs t5, vxsat, zero<br> [0x800009e8]:sw t6, 344(ra)<br>    |
|  73|[0x80002458]<br>0x02102000|- rs2_h0_val == 8192<br>                                                                                                                                                                                                                                                                |[0x800009f8]:UKADD16 t6, t5, t4<br> [0x800009fc]:csrrs t5, vxsat, zero<br> [0x80000a00]:sw t6, 352(ra)<br>    |
|  74|[0x80002460]<br>0xE0031003|- rs2_h0_val == 4096<br>                                                                                                                                                                                                                                                                |[0x80000a14]:UKADD16 t6, t5, t4<br> [0x80000a18]:csrrs t5, vxsat, zero<br> [0x80000a1c]:sw t6, 360(ra)<br>    |
|  75|[0x80002468]<br>0x80080106|- rs1_h1_val == 32768<br>                                                                                                                                                                                                                                                               |[0x80000a34]:UKADD16 t6, t5, t4<br> [0x80000a38]:csrrs t5, vxsat, zero<br> [0x80000a3c]:sw t6, 368(ra)<br>    |
|  76|[0x80002470]<br>0xFC12FC01|- rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                   |[0x80000a54]:UKADD16 t6, t5, t4<br> [0x80000a58]:csrrs t5, vxsat, zero<br> [0x80000a5c]:sw t6, 376(ra)<br>    |
|  77|[0x80002478]<br>0xFFFF0017|- rs2_h1_val == 32767<br>                                                                                                                                                                                                                                                               |[0x80000a74]:UKADD16 t6, t5, t4<br> [0x80000a78]:csrrs t5, vxsat, zero<br> [0x80000a7c]:sw t6, 384(ra)<br>    |
