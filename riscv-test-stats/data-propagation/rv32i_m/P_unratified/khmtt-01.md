
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000af0')]      |
| SIG_REGION                | [('0x80002210', '0x800024a0', '164 words')]      |
| COV_LABELS                | khmtt      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/khmtt-01.S    |
| Total Number of coverpoints| 264     |
| Total Coverpoints Hit     | 258      |
| Total Signature Updates   | 164      |
| STAT1                     | 79      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 82     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a84]:KHMTT t6, t5, t4
      [0x80000a88]:csrrs t5, vxsat, zero
      [0x80000a8c]:sw t6, 488(sp)
 -- Signature Address: 0x80002480 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : khmtt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h1_val == 64
      - rs2_h0_val == -129
      - rs1_h1_val == 64




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ac4]:KHMTT t6, t5, t4
      [0x80000ac8]:csrrs t5, vxsat, zero
      [0x80000acc]:sw t6, 504(sp)
 -- Signature Address: 0x80002490 Data: 0x00005554
 -- Redundant Coverpoints hit by the op
      - opcode : khmtt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 32767
      - rs2_h0_val == 8
      - rs1_h1_val == 21845




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ae0]:KHMTT t6, t5, t4
      [0x80000ae4]:csrrs t5, vxsat, zero
      [0x80000ae8]:sw t6, 512(sp)
 -- Signature Address: 0x80002498 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : khmtt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == -513
      - rs2_h0_val == 4096
      - rs1_h0_val == 1024






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : khmtt', 'rs1 : x3', 'rs2 : x3', 'rd : x3', 'rs1 == rs2 == rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h0_val == 1', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80000118]:KHMTT gp, gp, gp
	-[0x8000011c]:csrrs gp, vxsat, zero
	-[0x80000120]:sw gp, 0(a4)
Current Store : [0x80000124] : sw gp, 4(a4) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x7', 'rs2 : x7', 'rd : x18', 'rs1 == rs2 != rd', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == 64', 'rs2_h0_val == -129', 'rs1_h1_val == 64', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000138]:KHMTT s2, t2, t2
	-[0x8000013c]:csrrs t2, vxsat, zero
	-[0x80000140]:sw s2, 8(a4)
Current Store : [0x80000144] : sw t2, 12(a4) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x26', 'rs2 : x18', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h0_val == 4096', 'rs1_h1_val == -3', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000154]:KHMTT t5, s10, s2
	-[0x80000158]:csrrs s10, vxsat, zero
	-[0x8000015c]:sw t5, 16(a4)
Current Store : [0x80000160] : sw s10, 20(a4) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x2', 'rd : x2', 'rs2 == rd != rs1', 'rs2_h1_val == -32768', 'rs2_h0_val == -513']
Last Code Sequence : 
	-[0x80000174]:KHMTT sp, tp, sp
	-[0x80000178]:csrrs tp, vxsat, zero
	-[0x8000017c]:sw sp, 24(a4)
Current Store : [0x80000180] : sw tp, 28(a4) -- Store: [0x8000222c]:0x00000000




Last Coverpoint : ['rs1 : x31', 'rs2 : x15', 'rd : x31', 'rs1 == rd != rs2', 'rs2_h1_val == 4096', 'rs1_h1_val == -17']
Last Code Sequence : 
	-[0x80000194]:KHMTT t6, t6, a5
	-[0x80000198]:csrrs t6, vxsat, zero
	-[0x8000019c]:sw t6, 32(a4)
Current Store : [0x800001a0] : sw t6, 36(a4) -- Store: [0x80002234]:0x00000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x0', 'rd : x17', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h1_val == -1']
Last Code Sequence : 
	-[0x800001b4]:KHMTT a7, sp, zero
	-[0x800001b8]:csrrs sp, vxsat, zero
	-[0x800001bc]:sw a7, 40(a4)
Current Store : [0x800001c0] : sw sp, 44(a4) -- Store: [0x8000223c]:0x00000000




Last Coverpoint : ['rs1 : x17', 'rs2 : x20', 'rd : x5', 'rs2_h1_val == 21845', 'rs2_h0_val == -5', 'rs1_h1_val == 512', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x800001d4]:KHMTT t0, a7, s4
	-[0x800001d8]:csrrs a7, vxsat, zero
	-[0x800001dc]:sw t0, 48(a4)
Current Store : [0x800001e0] : sw a7, 52(a4) -- Store: [0x80002244]:0x00000000




Last Coverpoint : ['rs1 : x0', 'rs2 : x5', 'rd : x9', 'rs2_h1_val == 32767', 'rs2_h0_val == 8', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x800001f4]:KHMTT s1, zero, t0
	-[0x800001f8]:csrrs zero, vxsat, zero
	-[0x800001fc]:sw s1, 56(a4)
Current Store : [0x80000200] : sw zero, 60(a4) -- Store: [0x8000224c]:0x00000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x25', 'rd : x21', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == -16385', 'rs2_h0_val == -9', 'rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x80000214]:KHMTT s5, t4, s9
	-[0x80000218]:csrrs t4, vxsat, zero
	-[0x8000021c]:sw s5, 64(a4)
Current Store : [0x80000220] : sw t4, 68(a4) -- Store: [0x80002254]:0x00000000




Last Coverpoint : ['rs1 : x11', 'rs2 : x4', 'rd : x12', 'rs2_h1_val == -8193', 'rs2_h0_val == -17', 'rs1_h1_val == -513', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000234]:KHMTT a2, a1, tp
	-[0x80000238]:csrrs a1, vxsat, zero
	-[0x8000023c]:sw a2, 72(a4)
Current Store : [0x80000240] : sw a1, 76(a4) -- Store: [0x8000225c]:0x00000000




Last Coverpoint : ['rs1 : x25', 'rs2 : x26', 'rd : x13', 'rs2_h1_val == -4097', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x80000254]:KHMTT a3, s9, s10
	-[0x80000258]:csrrs s9, vxsat, zero
	-[0x8000025c]:sw a3, 80(a4)
Current Store : [0x80000260] : sw s9, 84(a4) -- Store: [0x80002264]:0x00000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x1', 'rd : x7', 'rs2_h1_val == -2049']
Last Code Sequence : 
	-[0x80000274]:KHMTT t2, a5, ra
	-[0x80000278]:csrrs a5, vxsat, zero
	-[0x8000027c]:sw t2, 88(a4)
Current Store : [0x80000280] : sw a5, 92(a4) -- Store: [0x8000226c]:0x00000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x16', 'rd : x27', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == -1025', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000294]:KHMTT s11, s4, a6
	-[0x80000298]:csrrs s4, vxsat, zero
	-[0x8000029c]:sw s11, 96(a4)
Current Store : [0x800002a0] : sw s4, 100(a4) -- Store: [0x80002274]:0x00000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x27', 'rd : x0', 'rs2_h1_val == -513', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x800002b0]:KHMTT zero, s2, s11
	-[0x800002b4]:csrrs s2, vxsat, zero
	-[0x800002b8]:sw zero, 104(a4)
Current Store : [0x800002bc] : sw s2, 108(a4) -- Store: [0x8000227c]:0x00000000




Last Coverpoint : ['rs1 : x10', 'rs2 : x24', 'rd : x6', 'rs2_h1_val == -257', 'rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x800002d0]:KHMTT t1, a0, s8
	-[0x800002d4]:csrrs a0, vxsat, zero
	-[0x800002d8]:sw t1, 112(a4)
Current Store : [0x800002dc] : sw a0, 116(a4) -- Store: [0x80002284]:0x00000000




Last Coverpoint : ['rs1 : x12', 'rs2 : x23', 'rd : x10', 'rs2_h1_val == -129', 'rs2_h0_val == 16', 'rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x800002f0]:KHMTT a0, a2, s7
	-[0x800002f4]:csrrs a2, vxsat, zero
	-[0x800002f8]:sw a0, 120(a4)
Current Store : [0x800002fc] : sw a2, 124(a4) -- Store: [0x8000228c]:0x00000000




Last Coverpoint : ['rs1 : x5', 'rs2 : x8', 'rd : x19', 'rs2_h1_val == -65', 'rs2_h0_val == 2', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x8000030c]:KHMTT s3, t0, fp
	-[0x80000310]:csrrs t0, vxsat, zero
	-[0x80000314]:sw s3, 128(a4)
Current Store : [0x80000318] : sw t0, 132(a4) -- Store: [0x80002294]:0x00000000




Last Coverpoint : ['rs1 : x16', 'rs2 : x14', 'rd : x25', 'rs2_h1_val == -33']
Last Code Sequence : 
	-[0x80000330]:KHMTT s9, a6, a4
	-[0x80000334]:csrrs a6, vxsat, zero
	-[0x80000338]:sw s9, 0(sp)
Current Store : [0x8000033c] : sw a6, 4(sp) -- Store: [0x8000229c]:0x00000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x12', 'rd : x22', 'rs2_h1_val == -17', 'rs2_h0_val == -8193', 'rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x8000034c]:KHMTT s6, a4, a2
	-[0x80000350]:csrrs a4, vxsat, zero
	-[0x80000354]:sw s6, 8(sp)
Current Store : [0x80000358] : sw a4, 12(sp) -- Store: [0x800022a4]:0x00000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x17', 'rd : x23', 'rs2_h1_val == -9', 'rs2_h0_val == 21845']
Last Code Sequence : 
	-[0x8000036c]:KHMTT s7, t5, a7
	-[0x80000370]:csrrs t5, vxsat, zero
	-[0x80000374]:sw s7, 16(sp)
Current Store : [0x80000378] : sw t5, 20(sp) -- Store: [0x800022ac]:0x00000000




Last Coverpoint : ['rs1 : x9', 'rs2 : x31', 'rd : x11', 'rs2_h1_val == -5', 'rs1_h1_val == 16', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x8000038c]:KHMTT a1, s1, t6
	-[0x80000390]:csrrs s1, vxsat, zero
	-[0x80000394]:sw a1, 24(sp)
Current Store : [0x80000398] : sw s1, 28(sp) -- Store: [0x800022b4]:0x00000000




Last Coverpoint : ['rs1 : x27', 'rs2 : x30', 'rd : x29', 'rs2_h1_val == -3', 'rs2_h0_val == 2048', 'rs1_h1_val == 32']
Last Code Sequence : 
	-[0x800003ac]:KHMTT t4, s11, t5
	-[0x800003b0]:csrrs s11, vxsat, zero
	-[0x800003b4]:sw t4, 32(sp)
Current Store : [0x800003b8] : sw s11, 36(sp) -- Store: [0x800022bc]:0x00000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x22', 'rd : x26', 'rs2_h1_val == -2', 'rs1_h1_val == -9']
Last Code Sequence : 
	-[0x800003cc]:KHMTT s10, t1, s6
	-[0x800003d0]:csrrs t1, vxsat, zero
	-[0x800003d4]:sw s10, 40(sp)
Current Store : [0x800003d8] : sw t1, 44(sp) -- Store: [0x800022c4]:0x00000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x9', 'rd : x28', 'rs1_h0_val == -32768', 'rs2_h1_val == 16384', 'rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x800003e8]:KHMTT t3, ra, s1
	-[0x800003ec]:csrrs ra, vxsat, zero
	-[0x800003f0]:sw t3, 48(sp)
Current Store : [0x800003f4] : sw ra, 52(sp) -- Store: [0x800022cc]:0x00000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x13', 'rd : x20', 'rs2_h1_val == 8192', 'rs2_h0_val == 8192', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x80000404]:KHMTT s4, s5, a3
	-[0x80000408]:csrrs s5, vxsat, zero
	-[0x8000040c]:sw s4, 56(sp)
Current Store : [0x80000410] : sw s5, 60(sp) -- Store: [0x800022d4]:0x00000000




Last Coverpoint : ['rs1 : x8', 'rs2 : x29', 'rd : x1', 'rs2_h1_val == 2048']
Last Code Sequence : 
	-[0x80000424]:KHMTT ra, fp, t4
	-[0x80000428]:csrrs fp, vxsat, zero
	-[0x8000042c]:sw ra, 64(sp)
Current Store : [0x80000430] : sw fp, 68(sp) -- Store: [0x800022dc]:0x00000000




Last Coverpoint : ['rs1 : x24', 'rs2 : x21', 'rd : x14', 'rs2_h1_val == 1024', 'rs1_h1_val == -32768', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000444]:KHMTT a4, s8, s5
	-[0x80000448]:csrrs s8, vxsat, zero
	-[0x8000044c]:sw a4, 72(sp)
Current Store : [0x80000450] : sw s8, 76(sp) -- Store: [0x800022e4]:0x00000000




Last Coverpoint : ['rs1 : x22', 'rs2 : x6', 'rd : x4', 'rs2_h1_val == 512']
Last Code Sequence : 
	-[0x80000464]:KHMTT tp, s6, t1
	-[0x80000468]:csrrs s6, vxsat, zero
	-[0x8000046c]:sw tp, 80(sp)
Current Store : [0x80000470] : sw s6, 84(sp) -- Store: [0x800022ec]:0x00000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x11', 'rd : x8', 'rs2_h1_val == 256', 'rs1_h1_val == -5']
Last Code Sequence : 
	-[0x80000480]:KHMTT fp, a3, a1
	-[0x80000484]:csrrs a3, vxsat, zero
	-[0x80000488]:sw fp, 88(sp)
Current Store : [0x8000048c] : sw a3, 92(sp) -- Store: [0x800022f4]:0x00000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x28', 'rd : x15', 'rs2_h1_val == 128', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x800004a0]:KHMTT a5, s7, t3
	-[0x800004a4]:csrrs s7, vxsat, zero
	-[0x800004a8]:sw a5, 96(sp)
Current Store : [0x800004ac] : sw s7, 100(sp) -- Store: [0x800022fc]:0x00000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x19', 'rd : x24', 'rs2_h1_val == 32', 'rs2_h0_val == 64', 'rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x800004bc]:KHMTT s8, t3, s3
	-[0x800004c0]:csrrs t3, vxsat, zero
	-[0x800004c4]:sw s8, 104(sp)
Current Store : [0x800004c8] : sw t3, 108(sp) -- Store: [0x80002304]:0x00000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x10', 'rd : x16', 'rs2_h1_val == 16', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x800004dc]:KHMTT a6, s3, a0
	-[0x800004e0]:csrrs s3, vxsat, zero
	-[0x800004e4]:sw a6, 112(sp)
Current Store : [0x800004e8] : sw s3, 116(sp) -- Store: [0x8000230c]:0x00000000




Last Coverpoint : ['rs2_h1_val == 8', 'rs2_h0_val == -32768', 'rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x800004f8]:KHMTT t6, t5, t4
	-[0x800004fc]:csrrs t5, vxsat, zero
	-[0x80000500]:sw t6, 120(sp)
Current Store : [0x80000504] : sw t5, 124(sp) -- Store: [0x80002314]:0x00000000




Last Coverpoint : ['rs2_h1_val == 4']
Last Code Sequence : 
	-[0x80000514]:KHMTT t6, t5, t4
	-[0x80000518]:csrrs t5, vxsat, zero
	-[0x8000051c]:sw t6, 128(sp)
Current Store : [0x80000520] : sw t5, 132(sp) -- Store: [0x8000231c]:0x00000000




Last Coverpoint : ['rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000534]:KHMTT t6, t5, t4
	-[0x80000538]:csrrs t5, vxsat, zero
	-[0x8000053c]:sw t6, 136(sp)
Current Store : [0x80000540] : sw t5, 140(sp) -- Store: [0x80002324]:0x00000000




Last Coverpoint : ['rs2_h0_val == -1', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000554]:KHMTT t6, t5, t4
	-[0x80000558]:csrrs t5, vxsat, zero
	-[0x8000055c]:sw t6, 144(sp)
Current Store : [0x80000560] : sw t5, 148(sp) -- Store: [0x8000232c]:0x00000000




Last Coverpoint : ['rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000574]:KHMTT t6, t5, t4
	-[0x80000578]:csrrs t5, vxsat, zero
	-[0x8000057c]:sw t6, 152(sp)
Current Store : [0x80000580] : sw t5, 156(sp) -- Store: [0x80002334]:0x00000000




Last Coverpoint : ['rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000594]:KHMTT t6, t5, t4
	-[0x80000598]:csrrs t5, vxsat, zero
	-[0x8000059c]:sw t6, 160(sp)
Current Store : [0x800005a0] : sw t5, 164(sp) -- Store: [0x8000233c]:0x00000000




Last Coverpoint : ['rs1_h0_val == -5']
Last Code Sequence : 
	-[0x800005b4]:KHMTT t6, t5, t4
	-[0x800005b8]:csrrs t5, vxsat, zero
	-[0x800005bc]:sw t6, 168(sp)
Current Store : [0x800005c0] : sw t5, 172(sp) -- Store: [0x80002344]:0x00000000




Last Coverpoint : ['rs1_h1_val == -257', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x800005d4]:KHMTT t6, t5, t4
	-[0x800005d8]:csrrs t5, vxsat, zero
	-[0x800005dc]:sw t6, 176(sp)
Current Store : [0x800005e0] : sw t5, 180(sp) -- Store: [0x8000234c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -1025', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x800005f0]:KHMTT t6, t5, t4
	-[0x800005f4]:csrrs t5, vxsat, zero
	-[0x800005f8]:sw t6, 184(sp)
Current Store : [0x800005fc] : sw t5, 188(sp) -- Store: [0x80002354]:0x00000000




Last Coverpoint : ['rs1_h1_val == 4', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x8000060c]:KHMTT t6, t5, t4
	-[0x80000610]:csrrs t5, vxsat, zero
	-[0x80000614]:sw t6, 192(sp)
Current Store : [0x80000618] : sw t5, 196(sp) -- Store: [0x8000235c]:0x00000000




Last Coverpoint : ['rs1_h1_val == 2', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x8000062c]:KHMTT t6, t5, t4
	-[0x80000630]:csrrs t5, vxsat, zero
	-[0x80000634]:sw t6, 200(sp)
Current Store : [0x80000638] : sw t5, 204(sp) -- Store: [0x80002364]:0x00000000




Last Coverpoint : ['rs2_h1_val == 2', 'rs2_h0_val == 32767', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x8000064c]:KHMTT t6, t5, t4
	-[0x80000650]:csrrs t5, vxsat, zero
	-[0x80000654]:sw t6, 208(sp)
Current Store : [0x80000658] : sw t5, 212(sp) -- Store: [0x8000236c]:0x00000000




Last Coverpoint : ['rs1_h0_val == 256']
Last Code Sequence : 
	-[0x8000066c]:KHMTT t6, t5, t4
	-[0x80000670]:csrrs t5, vxsat, zero
	-[0x80000674]:sw t6, 216(sp)
Current Store : [0x80000678] : sw t5, 220(sp) -- Store: [0x80002374]:0x00000000




Last Coverpoint : ['rs2_h0_val == 16384', 'rs1_h1_val == -21846', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000688]:KHMTT t6, t5, t4
	-[0x8000068c]:csrrs t5, vxsat, zero
	-[0x80000690]:sw t6, 224(sp)
Current Store : [0x80000694] : sw t5, 228(sp) -- Store: [0x8000237c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -257', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x800006a8]:KHMTT t6, t5, t4
	-[0x800006ac]:csrrs t5, vxsat, zero
	-[0x800006b0]:sw t6, 232(sp)
Current Store : [0x800006b4] : sw t5, 236(sp) -- Store: [0x80002384]:0x00000000




Last Coverpoint : ['rs1_h0_val == 16']
Last Code Sequence : 
	-[0x800006c4]:KHMTT t6, t5, t4
	-[0x800006c8]:csrrs t5, vxsat, zero
	-[0x800006cc]:sw t6, 240(sp)
Current Store : [0x800006d0] : sw t5, 244(sp) -- Store: [0x8000238c]:0x00000000




Last Coverpoint : ['rs2_h0_val == 4', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x800006e4]:KHMTT t6, t5, t4
	-[0x800006e8]:csrrs t5, vxsat, zero
	-[0x800006ec]:sw t6, 248(sp)
Current Store : [0x800006f0] : sw t5, 252(sp) -- Store: [0x80002394]:0x00000000




Last Coverpoint : ['rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80000704]:KHMTT t6, t5, t4
	-[0x80000708]:csrrs t5, vxsat, zero
	-[0x8000070c]:sw t6, 256(sp)
Current Store : [0x80000710] : sw t5, 260(sp) -- Store: [0x8000239c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -16385', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000724]:KHMTT t6, t5, t4
	-[0x80000728]:csrrs t5, vxsat, zero
	-[0x8000072c]:sw t6, 264(sp)
Current Store : [0x80000730] : sw t5, 268(sp) -- Store: [0x800023a4]:0x00000000




Last Coverpoint : ['rs2_h1_val == 1']
Last Code Sequence : 
	-[0x80000744]:KHMTT t6, t5, t4
	-[0x80000748]:csrrs t5, vxsat, zero
	-[0x8000074c]:sw t6, 272(sp)
Current Store : [0x80000750] : sw t5, 276(sp) -- Store: [0x800023ac]:0x00000000




Last Coverpoint : ['rs2_h0_val == -21846']
Last Code Sequence : 
	-[0x80000764]:KHMTT t6, t5, t4
	-[0x80000768]:csrrs t5, vxsat, zero
	-[0x8000076c]:sw t6, 280(sp)
Current Store : [0x80000770] : sw t5, 284(sp) -- Store: [0x800023b4]:0x00000000




Last Coverpoint : ['rs2_h0_val == -3', 'rs1_h1_val == -65']
Last Code Sequence : 
	-[0x80000784]:KHMTT t6, t5, t4
	-[0x80000788]:csrrs t5, vxsat, zero
	-[0x8000078c]:sw t6, 288(sp)
Current Store : [0x80000790] : sw t5, 292(sp) -- Store: [0x800023bc]:0x00000000




Last Coverpoint : ['rs2_h0_val == -2', 'rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x800007a4]:KHMTT t6, t5, t4
	-[0x800007a8]:csrrs t5, vxsat, zero
	-[0x800007ac]:sw t6, 296(sp)
Current Store : [0x800007b0] : sw t5, 300(sp) -- Store: [0x800023c4]:0x00000000




Last Coverpoint : ['rs2_h0_val == 1024', 'rs1_h1_val == -33']
Last Code Sequence : 
	-[0x800007c4]:KHMTT t6, t5, t4
	-[0x800007c8]:csrrs t5, vxsat, zero
	-[0x800007cc]:sw t6, 304(sp)
Current Store : [0x800007d0] : sw t5, 308(sp) -- Store: [0x800023cc]:0x00000000




Last Coverpoint : ['rs2_h0_val == 512']
Last Code Sequence : 
	-[0x800007e4]:KHMTT t6, t5, t4
	-[0x800007e8]:csrrs t5, vxsat, zero
	-[0x800007ec]:sw t6, 312(sp)
Current Store : [0x800007f0] : sw t5, 316(sp) -- Store: [0x800023d4]:0x00000000




Last Coverpoint : ['rs2_h0_val == 256']
Last Code Sequence : 
	-[0x80000804]:KHMTT t6, t5, t4
	-[0x80000808]:csrrs t5, vxsat, zero
	-[0x8000080c]:sw t6, 320(sp)
Current Store : [0x80000810] : sw t5, 324(sp) -- Store: [0x800023dc]:0x00000000




Last Coverpoint : ['rs2_h0_val == 128']
Last Code Sequence : 
	-[0x80000824]:KHMTT t6, t5, t4
	-[0x80000828]:csrrs t5, vxsat, zero
	-[0x8000082c]:sw t6, 328(sp)
Current Store : [0x80000830] : sw t5, 332(sp) -- Store: [0x800023e4]:0x00000000




Last Coverpoint : ['rs2_h0_val == 32']
Last Code Sequence : 
	-[0x80000840]:KHMTT t6, t5, t4
	-[0x80000844]:csrrs t5, vxsat, zero
	-[0x80000848]:sw t6, 336(sp)
Current Store : [0x8000084c] : sw t5, 340(sp) -- Store: [0x800023ec]:0x00000000




Last Coverpoint : ['rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x8000085c]:KHMTT t6, t5, t4
	-[0x80000860]:csrrs t5, vxsat, zero
	-[0x80000864]:sw t6, 344(sp)
Current Store : [0x80000868] : sw t5, 348(sp) -- Store: [0x800023f4]:0x00000000




Last Coverpoint : ['rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x8000087c]:KHMTT t6, t5, t4
	-[0x80000880]:csrrs t5, vxsat, zero
	-[0x80000884]:sw t6, 352(sp)
Current Store : [0x80000888] : sw t5, 356(sp) -- Store: [0x800023fc]:0x00000000




Last Coverpoint : ['rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x80000898]:KHMTT t6, t5, t4
	-[0x8000089c]:csrrs t5, vxsat, zero
	-[0x800008a0]:sw t6, 360(sp)
Current Store : [0x800008a4] : sw t5, 364(sp) -- Store: [0x80002404]:0x00000000




Last Coverpoint : ['rs1_h1_val == -2']
Last Code Sequence : 
	-[0x800008b8]:KHMTT t6, t5, t4
	-[0x800008bc]:csrrs t5, vxsat, zero
	-[0x800008c0]:sw t6, 368(sp)
Current Store : [0x800008c4] : sw t5, 372(sp) -- Store: [0x8000240c]:0x00000000




Last Coverpoint : ['rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x800008d4]:KHMTT t6, t5, t4
	-[0x800008d8]:csrrs t5, vxsat, zero
	-[0x800008dc]:sw t6, 376(sp)
Current Store : [0x800008e0] : sw t5, 380(sp) -- Store: [0x80002414]:0x00000000




Last Coverpoint : ['rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x800008f4]:KHMTT t6, t5, t4
	-[0x800008f8]:csrrs t5, vxsat, zero
	-[0x800008fc]:sw t6, 384(sp)
Current Store : [0x80000900] : sw t5, 388(sp) -- Store: [0x8000241c]:0x00000000




Last Coverpoint : ['rs1_h1_val == 128']
Last Code Sequence : 
	-[0x80000910]:KHMTT t6, t5, t4
	-[0x80000914]:csrrs t5, vxsat, zero
	-[0x80000918]:sw t6, 392(sp)
Current Store : [0x8000091c] : sw t5, 396(sp) -- Store: [0x80002424]:0x00000000




Last Coverpoint : ['rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000930]:KHMTT t6, t5, t4
	-[0x80000934]:csrrs t5, vxsat, zero
	-[0x80000938]:sw t6, 400(sp)
Current Store : [0x8000093c] : sw t5, 404(sp) -- Store: [0x8000242c]:0x00000000




Last Coverpoint : ['rs2_h1_val == -1']
Last Code Sequence : 
	-[0x80000948]:KHMTT t6, t5, t4
	-[0x8000094c]:csrrs t5, vxsat, zero
	-[0x80000950]:sw t6, 408(sp)
Current Store : [0x80000954] : sw t5, 412(sp) -- Store: [0x80002434]:0x00000000




Last Coverpoint : ['rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000968]:KHMTT t6, t5, t4
	-[0x8000096c]:csrrs t5, vxsat, zero
	-[0x80000970]:sw t6, 416(sp)
Current Store : [0x80000974] : sw t5, 420(sp) -- Store: [0x8000243c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -4097']
Last Code Sequence : 
	-[0x80000988]:KHMTT t6, t5, t4
	-[0x8000098c]:csrrs t5, vxsat, zero
	-[0x80000990]:sw t6, 424(sp)
Current Store : [0x80000994] : sw t5, 428(sp) -- Store: [0x80002444]:0x00000000




Last Coverpoint : ['rs1_h1_val == 1']
Last Code Sequence : 
	-[0x800009a8]:KHMTT t6, t5, t4
	-[0x800009ac]:csrrs t5, vxsat, zero
	-[0x800009b0]:sw t6, 432(sp)
Current Store : [0x800009b4] : sw t5, 436(sp) -- Store: [0x8000244c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -2049']
Last Code Sequence : 
	-[0x800009c4]:KHMTT t6, t5, t4
	-[0x800009c8]:csrrs t5, vxsat, zero
	-[0x800009cc]:sw t6, 440(sp)
Current Store : [0x800009d0] : sw t5, 444(sp) -- Store: [0x80002454]:0x00000000




Last Coverpoint : ['rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x800009e4]:KHMTT t6, t5, t4
	-[0x800009e8]:csrrs t5, vxsat, zero
	-[0x800009ec]:sw t6, 448(sp)
Current Store : [0x800009f0] : sw t5, 452(sp) -- Store: [0x8000245c]:0x00000000




Last Coverpoint : ['rs2_h0_val == -65']
Last Code Sequence : 
	-[0x80000a04]:KHMTT t6, t5, t4
	-[0x80000a08]:csrrs t5, vxsat, zero
	-[0x80000a0c]:sw t6, 456(sp)
Current Store : [0x80000a10] : sw t5, 460(sp) -- Store: [0x80002464]:0x00000000




Last Coverpoint : ['rs2_h0_val == -33']
Last Code Sequence : 
	-[0x80000a24]:KHMTT t6, t5, t4
	-[0x80000a28]:csrrs t5, vxsat, zero
	-[0x80000a2c]:sw t6, 464(sp)
Current Store : [0x80000a30] : sw t5, 468(sp) -- Store: [0x8000246c]:0x00000000




Last Coverpoint : ['rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80000a44]:KHMTT t6, t5, t4
	-[0x80000a48]:csrrs t5, vxsat, zero
	-[0x80000a4c]:sw t6, 472(sp)
Current Store : [0x80000a50] : sw t5, 476(sp) -- Store: [0x80002474]:0x00000000




Last Coverpoint : ['rs1_h1_val == -129']
Last Code Sequence : 
	-[0x80000a64]:KHMTT t6, t5, t4
	-[0x80000a68]:csrrs t5, vxsat, zero
	-[0x80000a6c]:sw t6, 480(sp)
Current Store : [0x80000a70] : sw t5, 484(sp) -- Store: [0x8000247c]:0x00000000




Last Coverpoint : ['opcode : khmtt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == 64', 'rs2_h0_val == -129', 'rs1_h1_val == 64']
Last Code Sequence : 
	-[0x80000a84]:KHMTT t6, t5, t4
	-[0x80000a88]:csrrs t5, vxsat, zero
	-[0x80000a8c]:sw t6, 488(sp)
Current Store : [0x80000a90] : sw t5, 492(sp) -- Store: [0x80002484]:0x00000000




Last Coverpoint : ['rs2_h1_val == -21846']
Last Code Sequence : 
	-[0x80000aa4]:KHMTT t6, t5, t4
	-[0x80000aa8]:csrrs t5, vxsat, zero
	-[0x80000aac]:sw t6, 496(sp)
Current Store : [0x80000ab0] : sw t5, 500(sp) -- Store: [0x8000248c]:0x00000000




Last Coverpoint : ['opcode : khmtt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 32767', 'rs2_h0_val == 8', 'rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x80000ac4]:KHMTT t6, t5, t4
	-[0x80000ac8]:csrrs t5, vxsat, zero
	-[0x80000acc]:sw t6, 504(sp)
Current Store : [0x80000ad0] : sw t5, 508(sp) -- Store: [0x80002494]:0x00000000




Last Coverpoint : ['opcode : khmtt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == -513', 'rs2_h0_val == 4096', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000ae0]:KHMTT t6, t5, t4
	-[0x80000ae4]:csrrs t5, vxsat, zero
	-[0x80000ae8]:sw t6, 512(sp)
Current Store : [0x80000aec] : sw t5, 516(sp) -- Store: [0x8000249c]:0x00000000





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

|s.no|        signature         |                                                                                                                                   coverpoints                                                                                                                                    |                                                     code                                                     |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : khmtt<br> - rs1 : x3<br> - rs2 : x3<br> - rd : x3<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h0_val == 1<br> - rs1_h0_val == 1<br> |[0x80000118]:KHMTT gp, gp, gp<br> [0x8000011c]:csrrs gp, vxsat, zero<br> [0x80000120]:sw gp, 0(a4)<br>        |
|   2|[0x80002218]<br>0x00000000|- rs1 : x7<br> - rs2 : x7<br> - rd : x18<br> - rs1 == rs2 != rd<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h1_val == 64<br> - rs2_h0_val == -129<br> - rs1_h1_val == 64<br> - rs1_h0_val == -129<br>                               |[0x80000138]:KHMTT s2, t2, t2<br> [0x8000013c]:csrrs t2, vxsat, zero<br> [0x80000140]:sw s2, 8(a4)<br>        |
|   3|[0x80002220]<br>0xFFFFFFFF|- rs1 : x26<br> - rs2 : x18<br> - rd : x30<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val != rs2_h0_val<br> - rs2_h0_val == 4096<br> - rs1_h1_val == -3<br> - rs1_h0_val == 21845<br>      |[0x80000154]:KHMTT t5, s10, s2<br> [0x80000158]:csrrs s10, vxsat, zero<br> [0x8000015c]:sw t5, 16(a4)<br>     |
|   4|[0x80002228]<br>0x00000007|- rs1 : x4<br> - rs2 : x2<br> - rd : x2<br> - rs2 == rd != rs1<br> - rs2_h1_val == -32768<br> - rs2_h0_val == -513<br>                                                                                                                                                            |[0x80000174]:KHMTT sp, tp, sp<br> [0x80000178]:csrrs tp, vxsat, zero<br> [0x8000017c]:sw sp, 24(a4)<br>       |
|   5|[0x80002230]<br>0x00000000|- rs1 : x31<br> - rs2 : x15<br> - rd : x31<br> - rs1 == rd != rs2<br> - rs2_h1_val == 4096<br> - rs1_h1_val == -17<br>                                                                                                                                                            |[0x80000194]:KHMTT t6, t6, a5<br> [0x80000198]:csrrs t6, vxsat, zero<br> [0x8000019c]:sw t6, 32(a4)<br>       |
|   6|[0x80002238]<br>0x00000000|- rs1 : x2<br> - rs2 : x0<br> - rd : x17<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h1_val == -1<br>                                                                                                                                                                   |[0x800001b4]:KHMTT a7, sp, zero<br> [0x800001b8]:csrrs sp, vxsat, zero<br> [0x800001bc]:sw a7, 40(a4)<br>     |
|   7|[0x80002240]<br>0x00000155|- rs1 : x17<br> - rs2 : x20<br> - rd : x5<br> - rs2_h1_val == 21845<br> - rs2_h0_val == -5<br> - rs1_h1_val == 512<br> - rs1_h0_val == -2<br>                                                                                                                                     |[0x800001d4]:KHMTT t0, a7, s4<br> [0x800001d8]:csrrs a7, vxsat, zero<br> [0x800001dc]:sw t0, 48(a4)<br>       |
|   8|[0x80002248]<br>0x00000000|- rs1 : x0<br> - rs2 : x5<br> - rd : x9<br> - rs2_h1_val == 32767<br> - rs2_h0_val == 8<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                           |[0x800001f4]:KHMTT s1, zero, t0<br> [0x800001f8]:csrrs zero, vxsat, zero<br> [0x800001fc]:sw s1, 56(a4)<br>   |
|   9|[0x80002250]<br>0xFFFFBFFF|- rs1 : x29<br> - rs2 : x25<br> - rd : x21<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h1_val == -16385<br> - rs2_h0_val == -9<br> - rs1_h1_val == 32767<br>                                                                        |[0x80000214]:KHMTT s5, t4, s9<br> [0x80000218]:csrrs t4, vxsat, zero<br> [0x8000021c]:sw s5, 64(a4)<br>       |
|  10|[0x80002258]<br>0x00000080|- rs1 : x11<br> - rs2 : x4<br> - rd : x12<br> - rs2_h1_val == -8193<br> - rs2_h0_val == -17<br> - rs1_h1_val == -513<br> - rs1_h0_val == -1025<br>                                                                                                                                |[0x80000234]:KHMTT a2, a1, tp<br> [0x80000238]:csrrs a1, vxsat, zero<br> [0x8000023c]:sw a2, 72(a4)<br>       |
|  11|[0x80002260]<br>0xFFFFFFDF|- rs1 : x25<br> - rs2 : x26<br> - rd : x13<br> - rs2_h1_val == -4097<br> - rs1_h1_val == 256<br>                                                                                                                                                                                  |[0x80000254]:KHMTT a3, s9, s10<br> [0x80000258]:csrrs s9, vxsat, zero<br> [0x8000025c]:sw a3, 80(a4)<br>      |
|  12|[0x80002268]<br>0x00000400|- rs1 : x15<br> - rs2 : x1<br> - rd : x7<br> - rs2_h1_val == -2049<br>                                                                                                                                                                                                            |[0x80000274]:KHMTT t2, a5, ra<br> [0x80000278]:csrrs a5, vxsat, zero<br> [0x8000027c]:sw t2, 88(a4)<br>       |
|  13|[0x80002270]<br>0x00000200|- rs1 : x20<br> - rs2 : x16<br> - rd : x27<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h1_val == -1025<br> - rs1_h0_val == -257<br>                                                                                                                                         |[0x80000294]:KHMTT s11, s4, a6<br> [0x80000298]:csrrs s4, vxsat, zero<br> [0x8000029c]:sw s11, 96(a4)<br>     |
|  14|[0x80002278]<br>0x00000000|- rs1 : x18<br> - rs2 : x27<br> - rd : x0<br> - rs2_h1_val == -513<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                   |[0x800002b0]:KHMTT zero, s2, s11<br> [0x800002b4]:csrrs s2, vxsat, zero<br> [0x800002b8]:sw zero, 104(a4)<br> |
|  15|[0x80002280]<br>0xFFFFFF54|- rs1 : x10<br> - rs2 : x24<br> - rd : x6<br> - rs2_h1_val == -257<br> - rs1_h1_val == 21845<br>                                                                                                                                                                                  |[0x800002d0]:KHMTT t1, a0, s8<br> [0x800002d4]:csrrs a0, vxsat, zero<br> [0x800002d8]:sw t1, 112(a4)<br>      |
|  16|[0x80002288]<br>0x00000020|- rs1 : x12<br> - rs2 : x23<br> - rd : x10<br> - rs2_h1_val == -129<br> - rs2_h0_val == 16<br> - rs1_h1_val == -8193<br>                                                                                                                                                          |[0x800002f0]:KHMTT a0, a2, s7<br> [0x800002f4]:csrrs a2, vxsat, zero<br> [0x800002f8]:sw a0, 120(a4)<br>      |
|  17|[0x80002290]<br>0xFFFFFFFE|- rs1 : x5<br> - rs2 : x8<br> - rd : x19<br> - rs2_h1_val == -65<br> - rs2_h0_val == 2<br> - rs1_h0_val == 8192<br>                                                                                                                                                               |[0x8000030c]:KHMTT s3, t0, fp<br> [0x80000310]:csrrs t0, vxsat, zero<br> [0x80000314]:sw s3, 128(a4)<br>      |
|  18|[0x80002298]<br>0x00000010|- rs1 : x16<br> - rs2 : x14<br> - rd : x25<br> - rs2_h1_val == -33<br>                                                                                                                                                                                                            |[0x80000330]:KHMTT s9, a6, a4<br> [0x80000334]:csrrs a6, vxsat, zero<br> [0x80000338]:sw s9, 0(sp)<br>        |
|  19|[0x800022a0]<br>0x00000000|- rs1 : x14<br> - rs2 : x12<br> - rd : x22<br> - rs2_h1_val == -17<br> - rs2_h0_val == -8193<br> - rs1_h1_val == -1025<br>                                                                                                                                                        |[0x8000034c]:KHMTT s6, a4, a2<br> [0x80000350]:csrrs a4, vxsat, zero<br> [0x80000354]:sw s6, 8(sp)<br>        |
|  20|[0x800022a8]<br>0xFFFFFFFF|- rs1 : x30<br> - rs2 : x17<br> - rd : x23<br> - rs2_h1_val == -9<br> - rs2_h0_val == 21845<br>                                                                                                                                                                                   |[0x8000036c]:KHMTT s7, t5, a7<br> [0x80000370]:csrrs t5, vxsat, zero<br> [0x80000374]:sw s7, 16(sp)<br>       |
|  21|[0x800022b0]<br>0xFFFFFFFF|- rs1 : x9<br> - rs2 : x31<br> - rd : x11<br> - rs2_h1_val == -5<br> - rs1_h1_val == 16<br> - rs1_h0_val == -513<br>                                                                                                                                                              |[0x8000038c]:KHMTT a1, s1, t6<br> [0x80000390]:csrrs s1, vxsat, zero<br> [0x80000394]:sw a1, 24(sp)<br>       |
|  22|[0x800022b8]<br>0xFFFFFFFF|- rs1 : x27<br> - rs2 : x30<br> - rd : x29<br> - rs2_h1_val == -3<br> - rs2_h0_val == 2048<br> - rs1_h1_val == 32<br>                                                                                                                                                             |[0x800003ac]:KHMTT t4, s11, t5<br> [0x800003b0]:csrrs s11, vxsat, zero<br> [0x800003b4]:sw t4, 32(sp)<br>     |
|  23|[0x800022c0]<br>0x00000000|- rs1 : x6<br> - rs2 : x22<br> - rd : x26<br> - rs2_h1_val == -2<br> - rs1_h1_val == -9<br>                                                                                                                                                                                       |[0x800003cc]:KHMTT s10, t1, s6<br> [0x800003d0]:csrrs t1, vxsat, zero<br> [0x800003d4]:sw s10, 40(sp)<br>     |
|  24|[0x800022c8]<br>0x00000400|- rs1 : x1<br> - rs2 : x9<br> - rd : x28<br> - rs1_h0_val == -32768<br> - rs2_h1_val == 16384<br> - rs1_h1_val == 2048<br>                                                                                                                                                        |[0x800003e8]:KHMTT t3, ra, s1<br> [0x800003ec]:csrrs ra, vxsat, zero<br> [0x800003f0]:sw t3, 48(sp)<br>       |
|  25|[0x800022d0]<br>0xFFFFFFFD|- rs1 : x21<br> - rs2 : x13<br> - rd : x20<br> - rs2_h1_val == 8192<br> - rs2_h0_val == 8192<br> - rs1_h0_val == -1<br>                                                                                                                                                           |[0x80000404]:KHMTT s4, s5, a3<br> [0x80000408]:csrrs s5, vxsat, zero<br> [0x8000040c]:sw s4, 56(sp)<br>       |
|  26|[0x800022d8]<br>0x00000010|- rs1 : x8<br> - rs2 : x29<br> - rd : x1<br> - rs2_h1_val == 2048<br>                                                                                                                                                                                                             |[0x80000424]:KHMTT ra, fp, t4<br> [0x80000428]:csrrs fp, vxsat, zero<br> [0x8000042c]:sw ra, 64(sp)<br>       |
|  27|[0x800022e0]<br>0xFFFFFC00|- rs1 : x24<br> - rs2 : x21<br> - rd : x14<br> - rs2_h1_val == 1024<br> - rs1_h1_val == -32768<br> - rs1_h0_val == 32767<br>                                                                                                                                                      |[0x80000444]:KHMTT a4, s8, s5<br> [0x80000448]:csrrs s8, vxsat, zero<br> [0x8000044c]:sw a4, 72(sp)<br>       |
|  28|[0x800022e8]<br>0xFFFFFFFF|- rs1 : x22<br> - rs2 : x6<br> - rd : x4<br> - rs2_h1_val == 512<br>                                                                                                                                                                                                              |[0x80000464]:KHMTT tp, s6, t1<br> [0x80000468]:csrrs s6, vxsat, zero<br> [0x8000046c]:sw tp, 80(sp)<br>       |
|  29|[0x800022f0]<br>0xFFFFFFFF|- rs1 : x13<br> - rs2 : x11<br> - rd : x8<br> - rs2_h1_val == 256<br> - rs1_h1_val == -5<br>                                                                                                                                                                                      |[0x80000480]:KHMTT fp, a3, a1<br> [0x80000484]:csrrs a3, vxsat, zero<br> [0x80000488]:sw fp, 88(sp)<br>       |
|  30|[0x800022f8]<br>0x00000000|- rs1 : x23<br> - rs2 : x28<br> - rd : x15<br> - rs2_h1_val == 128<br> - rs1_h1_val == 8<br>                                                                                                                                                                                      |[0x800004a0]:KHMTT a5, s7, t3<br> [0x800004a4]:csrrs s7, vxsat, zero<br> [0x800004a8]:sw a5, 96(sp)<br>       |
|  31|[0x80002300]<br>0xFFFFFFFB|- rs1 : x28<br> - rs2 : x19<br> - rd : x24<br> - rs2_h1_val == 32<br> - rs2_h0_val == 64<br> - rs1_h1_val == -4097<br>                                                                                                                                                            |[0x800004bc]:KHMTT s8, t3, s3<br> [0x800004c0]:csrrs t3, vxsat, zero<br> [0x800004c4]:sw s8, 104(sp)<br>      |
|  32|[0x80002308]<br>0x00000000|- rs1 : x19<br> - rs2 : x10<br> - rd : x16<br> - rs2_h1_val == 16<br> - rs1_h0_val == 128<br>                                                                                                                                                                                     |[0x800004dc]:KHMTT a6, s3, a0<br> [0x800004e0]:csrrs s3, vxsat, zero<br> [0x800004e4]:sw a6, 112(sp)<br>      |
|  33|[0x80002310]<br>0x00000000|- rs2_h1_val == 8<br> - rs2_h0_val == -32768<br> - rs1_h1_val == 1024<br>                                                                                                                                                                                                         |[0x800004f8]:KHMTT t6, t5, t4<br> [0x800004fc]:csrrs t5, vxsat, zero<br> [0x80000500]:sw t6, 120(sp)<br>      |
|  34|[0x80002318]<br>0x00000000|- rs2_h1_val == 4<br>                                                                                                                                                                                                                                                             |[0x80000514]:KHMTT t6, t5, t4<br> [0x80000518]:csrrs t5, vxsat, zero<br> [0x8000051c]:sw t6, 128(sp)<br>      |
|  35|[0x80002320]<br>0x00000004|- rs1_h0_val == -65<br>                                                                                                                                                                                                                                                           |[0x80000534]:KHMTT t6, t5, t4<br> [0x80000538]:csrrs t5, vxsat, zero<br> [0x8000053c]:sw t6, 136(sp)<br>      |
|  36|[0x80002328]<br>0xFFFFFFFF|- rs2_h0_val == -1<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                    |[0x80000554]:KHMTT t6, t5, t4<br> [0x80000558]:csrrs t5, vxsat, zero<br> [0x8000055c]:sw t6, 144(sp)<br>      |
|  37|[0x80002330]<br>0x00000000|- rs1_h0_val == -17<br>                                                                                                                                                                                                                                                           |[0x80000574]:KHMTT t6, t5, t4<br> [0x80000578]:csrrs t5, vxsat, zero<br> [0x8000057c]:sw t6, 152(sp)<br>      |
|  38|[0x80002338]<br>0xFFFFFFFF|- rs1_h0_val == -9<br>                                                                                                                                                                                                                                                            |[0x80000594]:KHMTT t6, t5, t4<br> [0x80000598]:csrrs t5, vxsat, zero<br> [0x8000059c]:sw t6, 160(sp)<br>      |
|  39|[0x80002340]<br>0x00000003|- rs1_h0_val == -5<br>                                                                                                                                                                                                                                                            |[0x800005b4]:KHMTT t6, t5, t4<br> [0x800005b8]:csrrs t5, vxsat, zero<br> [0x800005bc]:sw t6, 168(sp)<br>      |
|  40|[0x80002348]<br>0x00000010|- rs1_h1_val == -257<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                   |[0x800005d4]:KHMTT t6, t5, t4<br> [0x800005d8]:csrrs t5, vxsat, zero<br> [0x800005dc]:sw t6, 176(sp)<br>      |
|  41|[0x80002350]<br>0x00000000|- rs2_h0_val == -1025<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                               |[0x800005f0]:KHMTT t6, t5, t4<br> [0x800005f4]:csrrs t5, vxsat, zero<br> [0x800005f8]:sw t6, 184(sp)<br>      |
|  42|[0x80002358]<br>0xFFFFFFFF|- rs1_h1_val == 4<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                    |[0x8000060c]:KHMTT t6, t5, t4<br> [0x80000610]:csrrs t5, vxsat, zero<br> [0x80000614]:sw t6, 192(sp)<br>      |
|  43|[0x80002360]<br>0x00000000|- rs1_h1_val == 2<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                    |[0x8000062c]:KHMTT t6, t5, t4<br> [0x80000630]:csrrs t5, vxsat, zero<br> [0x80000634]:sw t6, 200(sp)<br>      |
|  44|[0x80002368]<br>0x00000000|- rs2_h1_val == 2<br> - rs2_h0_val == 32767<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                           |[0x8000064c]:KHMTT t6, t5, t4<br> [0x80000650]:csrrs t5, vxsat, zero<br> [0x80000654]:sw t6, 208(sp)<br>      |
|  45|[0x80002370]<br>0x00000010|- rs1_h0_val == 256<br>                                                                                                                                                                                                                                                           |[0x8000066c]:KHMTT t6, t5, t4<br> [0x80000670]:csrrs t5, vxsat, zero<br> [0x80000674]:sw t6, 216(sp)<br>      |
|  46|[0x80002378]<br>0x00000002|- rs2_h0_val == 16384<br> - rs1_h1_val == -21846<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                       |[0x80000688]:KHMTT t6, t5, t4<br> [0x8000068c]:csrrs t5, vxsat, zero<br> [0x80000690]:sw t6, 224(sp)<br>      |
|  47|[0x80002380]<br>0x00000000|- rs2_h0_val == -257<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                   |[0x800006a8]:KHMTT t6, t5, t4<br> [0x800006ac]:csrrs t5, vxsat, zero<br> [0x800006b0]:sw t6, 232(sp)<br>      |
|  48|[0x80002388]<br>0xFFFFFFEF|- rs1_h0_val == 16<br>                                                                                                                                                                                                                                                            |[0x800006c4]:KHMTT t6, t5, t4<br> [0x800006c8]:csrrs t5, vxsat, zero<br> [0x800006cc]:sw t6, 240(sp)<br>      |
|  49|[0x80002390]<br>0xFFFFFFFE|- rs2_h0_val == 4<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                       |[0x800006e4]:KHMTT t6, t5, t4<br> [0x800006e8]:csrrs t5, vxsat, zero<br> [0x800006ec]:sw t6, 248(sp)<br>      |
|  50|[0x80002398]<br>0x00000000|- rs1_h0_val == 4<br>                                                                                                                                                                                                                                                             |[0x80000704]:KHMTT t6, t5, t4<br> [0x80000708]:csrrs t5, vxsat, zero<br> [0x8000070c]:sw t6, 256(sp)<br>      |
|  51|[0x800023a0]<br>0x00000000|- rs2_h0_val == -16385<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                  |[0x80000724]:KHMTT t6, t5, t4<br> [0x80000728]:csrrs t5, vxsat, zero<br> [0x8000072c]:sw t6, 264(sp)<br>      |
|  52|[0x800023a8]<br>0xFFFFFFFF|- rs2_h1_val == 1<br>                                                                                                                                                                                                                                                             |[0x80000744]:KHMTT t6, t5, t4<br> [0x80000748]:csrrs t5, vxsat, zero<br> [0x8000074c]:sw t6, 272(sp)<br>      |
|  53|[0x800023b0]<br>0x00000000|- rs2_h0_val == -21846<br>                                                                                                                                                                                                                                                        |[0x80000764]:KHMTT t6, t5, t4<br> [0x80000768]:csrrs t5, vxsat, zero<br> [0x8000076c]:sw t6, 280(sp)<br>      |
|  54|[0x800023b8]<br>0xFFFFFFFF|- rs2_h0_val == -3<br> - rs1_h1_val == -65<br>                                                                                                                                                                                                                                    |[0x80000784]:KHMTT t6, t5, t4<br> [0x80000788]:csrrs t5, vxsat, zero<br> [0x8000078c]:sw t6, 288(sp)<br>      |
|  55|[0x800023c0]<br>0x00000002|- rs2_h0_val == -2<br> - rs1_h1_val == -2049<br>                                                                                                                                                                                                                                  |[0x800007a4]:KHMTT t6, t5, t4<br> [0x800007a8]:csrrs t5, vxsat, zero<br> [0x800007ac]:sw t6, 296(sp)<br>      |
|  56|[0x800023c8]<br>0x00000002|- rs2_h0_val == 1024<br> - rs1_h1_val == -33<br>                                                                                                                                                                                                                                  |[0x800007c4]:KHMTT t6, t5, t4<br> [0x800007c8]:csrrs t5, vxsat, zero<br> [0x800007cc]:sw t6, 304(sp)<br>      |
|  57|[0x800023d0]<br>0xFFFFFFFF|- rs2_h0_val == 512<br>                                                                                                                                                                                                                                                           |[0x800007e4]:KHMTT t6, t5, t4<br> [0x800007e8]:csrrs t5, vxsat, zero<br> [0x800007ec]:sw t6, 312(sp)<br>      |
|  58|[0x800023d8]<br>0xFFFFFFFF|- rs2_h0_val == 256<br>                                                                                                                                                                                                                                                           |[0x80000804]:KHMTT t6, t5, t4<br> [0x80000808]:csrrs t5, vxsat, zero<br> [0x8000080c]:sw t6, 320(sp)<br>      |
|  59|[0x800023e0]<br>0x00000001|- rs2_h0_val == 128<br>                                                                                                                                                                                                                                                           |[0x80000824]:KHMTT t6, t5, t4<br> [0x80000828]:csrrs t5, vxsat, zero<br> [0x8000082c]:sw t6, 328(sp)<br>      |
|  60|[0x800023e8]<br>0x00000000|- rs2_h0_val == 32<br>                                                                                                                                                                                                                                                            |[0x80000840]:KHMTT t6, t5, t4<br> [0x80000844]:csrrs t5, vxsat, zero<br> [0x80000848]:sw t6, 336(sp)<br>      |
|  61|[0x800023f0]<br>0xFFFFFFFF|- rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                         |[0x8000085c]:KHMTT t6, t5, t4<br> [0x80000860]:csrrs t5, vxsat, zero<br> [0x80000864]:sw t6, 344(sp)<br>      |
|  62|[0x800023f8]<br>0x00000000|- rs1_h0_val == -16385<br>                                                                                                                                                                                                                                                        |[0x8000087c]:KHMTT t6, t5, t4<br> [0x80000880]:csrrs t5, vxsat, zero<br> [0x80000884]:sw t6, 352(sp)<br>      |
|  63|[0x80002400]<br>0x00001000|- rs1_h1_val == -16385<br>                                                                                                                                                                                                                                                        |[0x80000898]:KHMTT t6, t5, t4<br> [0x8000089c]:csrrs t5, vxsat, zero<br> [0x800008a0]:sw t6, 360(sp)<br>      |
|  64|[0x80002408]<br>0x00000000|- rs1_h1_val == -2<br>                                                                                                                                                                                                                                                            |[0x800008b8]:KHMTT t6, t5, t4<br> [0x800008bc]:csrrs t5, vxsat, zero<br> [0x800008c0]:sw t6, 368(sp)<br>      |
|  65|[0x80002410]<br>0x00000002|- rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                          |[0x800008d4]:KHMTT t6, t5, t4<br> [0x800008d8]:csrrs t5, vxsat, zero<br> [0x800008dc]:sw t6, 376(sp)<br>      |
|  66|[0x80002418]<br>0x00000001|- rs1_h1_val == 4096<br>                                                                                                                                                                                                                                                          |[0x800008f4]:KHMTT t6, t5, t4<br> [0x800008f8]:csrrs t5, vxsat, zero<br> [0x800008fc]:sw t6, 384(sp)<br>      |
|  67|[0x80002420]<br>0xFFFFFFFF|- rs1_h1_val == 128<br>                                                                                                                                                                                                                                                           |[0x80000910]:KHMTT t6, t5, t4<br> [0x80000914]:csrrs t5, vxsat, zero<br> [0x80000918]:sw t6, 392(sp)<br>      |
|  68|[0x80002428]<br>0xFFFFFFFF|- rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                         |[0x80000930]:KHMTT t6, t5, t4<br> [0x80000934]:csrrs t5, vxsat, zero<br> [0x80000938]:sw t6, 400(sp)<br>      |
|  69|[0x80002430]<br>0xFFFFFFFF|- rs2_h1_val == -1<br>                                                                                                                                                                                                                                                            |[0x80000948]:KHMTT t6, t5, t4<br> [0x8000094c]:csrrs t5, vxsat, zero<br> [0x80000950]:sw t6, 408(sp)<br>      |
|  70|[0x80002438]<br>0xFFFFFFFF|- rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                         |[0x80000968]:KHMTT t6, t5, t4<br> [0x8000096c]:csrrs t5, vxsat, zero<br> [0x80000970]:sw t6, 416(sp)<br>      |
|  71|[0x80002440]<br>0x00000002|- rs2_h0_val == -4097<br>                                                                                                                                                                                                                                                         |[0x80000988]:KHMTT t6, t5, t4<br> [0x8000098c]:csrrs t5, vxsat, zero<br> [0x80000990]:sw t6, 424(sp)<br>      |
|  72|[0x80002448]<br>0xFFFFFFFF|- rs1_h1_val == 1<br>                                                                                                                                                                                                                                                             |[0x800009a8]:KHMTT t6, t5, t4<br> [0x800009ac]:csrrs t5, vxsat, zero<br> [0x800009b0]:sw t6, 432(sp)<br>      |
|  73|[0x80002450]<br>0x00000000|- rs2_h0_val == -2049<br>                                                                                                                                                                                                                                                         |[0x800009c4]:KHMTT t6, t5, t4<br> [0x800009c8]:csrrs t5, vxsat, zero<br> [0x800009cc]:sw t6, 440(sp)<br>      |
|  74|[0x80002458]<br>0xFFFFFFFF|- rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                        |[0x800009e4]:KHMTT t6, t5, t4<br> [0x800009e8]:csrrs t5, vxsat, zero<br> [0x800009ec]:sw t6, 448(sp)<br>      |
|  75|[0x80002460]<br>0x00000000|- rs2_h0_val == -65<br>                                                                                                                                                                                                                                                           |[0x80000a04]:KHMTT t6, t5, t4<br> [0x80000a08]:csrrs t5, vxsat, zero<br> [0x80000a0c]:sw t6, 456(sp)<br>      |
|  76|[0x80002468]<br>0x00000005|- rs2_h0_val == -33<br>                                                                                                                                                                                                                                                           |[0x80000a24]:KHMTT t6, t5, t4<br> [0x80000a28]:csrrs t5, vxsat, zero<br> [0x80000a2c]:sw t6, 464(sp)<br>      |
|  77|[0x80002470]<br>0xFFFFFFFF|- rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                         |[0x80000a44]:KHMTT t6, t5, t4<br> [0x80000a48]:csrrs t5, vxsat, zero<br> [0x80000a4c]:sw t6, 472(sp)<br>      |
|  78|[0x80002478]<br>0xFFFFFF7F|- rs1_h1_val == -129<br>                                                                                                                                                                                                                                                          |[0x80000a64]:KHMTT t6, t5, t4<br> [0x80000a68]:csrrs t5, vxsat, zero<br> [0x80000a6c]:sw t6, 480(sp)<br>      |
|  79|[0x80002488]<br>0x00000000|- rs2_h1_val == -21846<br>                                                                                                                                                                                                                                                        |[0x80000aa4]:KHMTT t6, t5, t4<br> [0x80000aa8]:csrrs t5, vxsat, zero<br> [0x80000aac]:sw t6, 496(sp)<br>      |
