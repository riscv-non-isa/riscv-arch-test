
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800019d0')]      |
| SIG_REGION                | [('0x80003210', '0x80003850', '200 dwords')]      |
| COV_LABELS                | kdmatt      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kdmatt-01.S    |
| Total Number of coverpoints| 420     |
| Total Coverpoints Hit     | 414      |
| Total Signature Updates   | 200      |
| STAT1                     | 98      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 100     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800013c8]:KDMATT t6, t5, t4
      [0x800013cc]:sd t6, 672(sp)
 -- Signature Address: 0x80003690 Data: 0x0000000017D6A560
 -- Redundant Coverpoints hit by the op
      - opcode : kdmatt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h3_val == -17
      - rs2_h2_val == -8193
      - rs2_h1_val == 256
      - rs1_h3_val == 512
      - rs1_h0_val == -9




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001754]:KDMATT t6, t5, t4
      [0x80001758]:sd t6, 928(sp)
 -- Signature Address: 0x80003790 Data: 0x0000000008794818
 -- Redundant Coverpoints hit by the op
      - opcode : kdmatt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h2_val == 16384
      - rs2_h1_val == 64
      - rs2_h0_val == 0
      - rs1_h3_val == 32767
      - rs1_h2_val == 512
      - rs1_h0_val == -17






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kdmatt', 'rs1 : x22', 'rs2 : x22', 'rd : x10', 'rs1 == rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val == rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 512', 'rs2_h1_val == -17', 'rs2_h0_val == 32', 'rs1_h3_val == 512', 'rs1_h1_val == -17', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x800003d0]:KDMATT a0, s6, s6
	-[0x800003d4]:sd a0, 0(gp)
Current Store : [0x800003d8] : sd s6, 8(gp) -- Store: [0x80003218]:0x0200FFF8FFEF0020




Last Coverpoint : ['rs1 : x25', 'rs2 : x25', 'rd : x25', 'rs1 == rs2 == rd', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == -257', 'rs2_h1_val == -4097', 'rs2_h0_val == -8193', 'rs1_h3_val == -257', 'rs1_h1_val == -4097', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x8000040c]:KDMATT s9, s9, s9
	-[0x80000410]:sd s9, 16(gp)
Current Store : [0x80000414] : sd s9, 24(gp) -- Store: [0x80003228]:0xFFFFFFFFF2002001




Last Coverpoint : ['rs1 : x13', 'rs2 : x6', 'rd : x23', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == 1024', 'rs2_h2_val == 8192', 'rs2_h1_val == 4096', 'rs2_h0_val == 4096', 'rs1_h3_val == -129', 'rs1_h2_val == -8193', 'rs1_h1_val == 8192', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000444]:KDMATT s7, a3, t1
	-[0x80000448]:sd s7, 32(gp)
Current Store : [0x8000044c] : sd a3, 40(gp) -- Store: [0x80003238]:0xFF7FDFFF2000FDFF




Last Coverpoint : ['rs1 : x31', 'rs2 : x1', 'rd : x31', 'rs1 == rd != rs2', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs2_h3_val == -21846', 'rs2_h2_val == -5', 'rs2_h1_val == -8193', 'rs2_h0_val == -513', 'rs1_h2_val == -16385', 'rs1_h1_val == -257', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000478]:KDMATT t6, t6, ra
	-[0x8000047c]:sd t6, 48(gp)
Current Store : [0x80000480] : sd t6, 56(gp) -- Store: [0x80003248]:0xFFFFFFFFFF4041FF




Last Coverpoint : ['rs1 : x15', 'rs2 : x5', 'rd : x5', 'rs2 == rd != rs1', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs2_h3_val == 2048', 'rs2_h2_val == -1', 'rs2_h1_val == -3', 'rs1_h3_val == 256', 'rs1_h2_val == -2049', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x800004b4]:KDMATT t0, a5, t0
	-[0x800004b8]:sd t0, 64(gp)
Current Store : [0x800004bc] : sd a5, 72(gp) -- Store: [0x80003258]:0x0100F7FF0006FFFB




Last Coverpoint : ['rs1 : x24', 'rs2 : x15', 'rd : x6', 'rs2_h3_val == -32768', 'rs2_h2_val == -513', 'rs1_h3_val == -16385', 'rs1_h2_val == -513', 'rs1_h1_val == 128', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x800004ec]:KDMATT t1, s8, a5
	-[0x800004f0]:sd t1, 80(gp)
Current Store : [0x800004f4] : sd s8, 88(gp) -- Store: [0x80003268]:0xBFFFFDFF00800000




Last Coverpoint : ['rs1 : x23', 'rs2 : x27', 'rd : x28', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == -2049', 'rs2_h2_val == -3', 'rs1_h3_val == -9', 'rs1_h2_val == 32', 'rs1_h1_val == -513']
Last Code Sequence : 
	-[0x80000528]:KDMATT t3, s7, s11
	-[0x8000052c]:sd t3, 96(gp)
Current Store : [0x80000530] : sd s7, 104(gp) -- Store: [0x80003278]:0xFFF70020FDFF3FFF




Last Coverpoint : ['rs1 : x7', 'rs2 : x4', 'rd : x19', 'rs2_h3_val == 32', 'rs2_h1_val == 8', 'rs1_h2_val == 32767', 'rs1_h1_val == -9', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000560]:KDMATT s3, t2, tp
	-[0x80000564]:sd s3, 112(gp)
Current Store : [0x80000568] : sd t2, 120(gp) -- Store: [0x80003288]:0xFFF77FFFFFF70800




Last Coverpoint : ['rs1 : x28', 'rs2 : x24', 'rd : x17', 'rs2_h2_val == 128', 'rs2_h1_val == -2', 'rs2_h0_val == -65', 'rs1_h3_val == -2', 'rs1_h2_val == 16384', 'rs1_h1_val == -2', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x8000059c]:KDMATT a7, t3, s8
	-[0x800005a0]:sd a7, 128(gp)
Current Store : [0x800005a4] : sd t3, 136(gp) -- Store: [0x80003298]:0xFFFE4000FFFE0010




Last Coverpoint : ['rs1 : x19', 'rs2 : x0', 'rd : x12', 'rs2_h3_val == 0', 'rs2_h2_val == 0', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h1_val == 4096', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x800005d4]:KDMATT a2, s3, zero
	-[0x800005d8]:sd a2, 144(gp)
Current Store : [0x800005dc] : sd s3, 152(gp) -- Store: [0x800032a8]:0xFFFEBFFF1000BFFF




Last Coverpoint : ['rs1 : x17', 'rs2 : x29', 'rd : x20', 'rs2_h2_val == -129', 'rs2_h1_val == 1024', 'rs1_h2_val == -2', 'rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x80000600]:KDMATT s4, a7, t4
	-[0x80000604]:sd s4, 160(gp)
Current Store : [0x80000608] : sd a7, 168(gp) -- Store: [0x800032b8]:0xFEFFFFFE08000005




Last Coverpoint : ['rs1 : x4', 'rs2 : x11', 'rd : x7', 'rs2_h3_val == 21845', 'rs2_h2_val == 32767', 'rs2_h0_val == 4']
Last Code Sequence : 
	-[0x80000634]:KDMATT t2, tp, a1
	-[0x80000638]:sd t2, 176(gp)
Current Store : [0x8000063c] : sd tp, 184(gp) -- Store: [0x800032c8]:0x0003FFF808000003




Last Coverpoint : ['rs1 : x18', 'rs2 : x9', 'rd : x29', 'rs2_h3_val == 32767', 'rs2_h2_val == -257', 'rs2_h0_val == -1', 'rs1_h3_val == 32', 'rs1_h2_val == -3', 'rs1_h1_val == 16', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000670]:KDMATT t4, s2, s1
	-[0x80000674]:sd t4, 192(gp)
Current Store : [0x80000678] : sd s2, 200(gp) -- Store: [0x800032d8]:0x0020FFFD0010FFBF




Last Coverpoint : ['rs1 : x29', 'rs2 : x28', 'rd : x16', 'rs2_h3_val == -16385', 'rs2_h0_val == 21845', 'rs1_h1_val == 1', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x800006ac]:KDMATT a6, t4, t3
	-[0x800006b0]:sd a6, 208(gp)
Current Store : [0x800006b4] : sd t4, 216(gp) -- Store: [0x800032e8]:0x3FFF000600010080




Last Coverpoint : ['rs1 : x10', 'rs2 : x2', 'rd : x26', 'rs2_h3_val == -8193', 'rs2_h1_val == -32768', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x800006e0]:KDMATT s10, a0, sp
	-[0x800006e4]:sd s10, 224(gp)
Current Store : [0x800006e8] : sd a0, 232(gp) -- Store: [0x800032f8]:0x01003FFF10000008




Last Coverpoint : ['rs1 : x9', 'rs2 : x30', 'rd : x2', 'rs2_h3_val == -4097', 'rs2_h1_val == -33', 'rs1_h3_val == -513', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000718]:KDMATT sp, s1, t5
	-[0x8000071c]:sd sp, 240(gp)
Current Store : [0x80000720] : sd s1, 248(gp) -- Store: [0x80003308]:0xFDFF3FFFFFF60200




Last Coverpoint : ['rs1 : x0', 'rs2 : x19', 'rd : x3', 'rs2_h3_val == -1025', 'rs2_h2_val == 4', 'rs2_h0_val == 256', 'rs1_h3_val == 0', 'rs1_h2_val == 0', 'rs1_h1_val == 0']
Last Code Sequence : 
	-[0x8000075c]:KDMATT gp, zero, s3
	-[0x80000760]:sd gp, 0(s9)
Current Store : [0x80000764] : sd zero, 8(s9) -- Store: [0x80003318]:0x0000000000000000




Last Coverpoint : ['rs1 : x27', 'rs2 : x8', 'rd : x22', 'rs2_h3_val == -513', 'rs2_h1_val == -1025']
Last Code Sequence : 
	-[0x80000790]:KDMATT s6, s11, fp
	-[0x80000794]:sd s6, 16(s9)
Current Store : [0x80000798] : sd s11, 24(s9) -- Store: [0x80003328]:0xFDFF400010000080




Last Coverpoint : ['rs1 : x11', 'rs2 : x26', 'rd : x30', 'rs2_h3_val == -129', 'rs2_h2_val == -65', 'rs2_h1_val == 32', 'rs1_h2_val == -4097']
Last Code Sequence : 
	-[0x800007cc]:KDMATT t5, a1, s10
	-[0x800007d0]:sd t5, 32(s9)
Current Store : [0x800007d4] : sd a1, 40(s9) -- Store: [0x80003338]:0xFFFEEFFF10000800




Last Coverpoint : ['rs1 : x12', 'rs2 : x21', 'rd : x8', 'rs2_h3_val == -65', 'rs2_h1_val == -9', 'rs2_h0_val == -32768', 'rs1_h3_val == 4096', 'rs1_h2_val == -9', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000804]:KDMATT fp, a2, s5
	-[0x80000808]:sd fp, 48(s9)
Current Store : [0x8000080c] : sd a2, 56(s9) -- Store: [0x80003348]:0x1000FFF700057FFF




Last Coverpoint : ['rs1 : x14', 'rs2 : x18', 'rd : x13', 'rs2_h3_val == -33', 'rs1_h3_val == 21845', 'rs1_h1_val == -33', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000840]:KDMATT a3, a4, s2
	-[0x80000844]:sd a3, 64(s9)
Current Store : [0x80000848] : sd a4, 72(s9) -- Store: [0x80003358]:0x55550009FFDFFFDF




Last Coverpoint : ['rs1 : x30', 'rs2 : x10', 'rd : x9', 'rs2_h3_val == -17', 'rs2_h1_val == -2049', 'rs1_h3_val == 16384', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x8000087c]:KDMATT s1, t5, a0
	-[0x80000880]:sd s1, 80(s9)
Current Store : [0x80000884] : sd t5, 88(s9) -- Store: [0x80003368]:0x4000C0000080FFFF




Last Coverpoint : ['rs1 : x1', 'rs2 : x7', 'rd : x18', 'rs2_h3_val == -9', 'rs2_h2_val == 256', 'rs2_h0_val == 64', 'rs1_h2_val == 8', 'rs1_h1_val == -65']
Last Code Sequence : 
	-[0x800008b0]:KDMATT s2, ra, t2
	-[0x800008b4]:sd s2, 96(s9)
Current Store : [0x800008b8] : sd ra, 104(s9) -- Store: [0x80003378]:0x00200008FFBF0007




Last Coverpoint : ['rs1 : x26', 'rs2 : x13', 'rd : x15', 'rs2_h3_val == -5', 'rs2_h2_val == 1', 'rs2_h1_val == -257', 'rs1_h3_val == 128', 'rs1_h2_val == -1', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x800008e8]:KDMATT a5, s10, a3
	-[0x800008ec]:sd a5, 112(s9)
Current Store : [0x800008f0] : sd s10, 120(s9) -- Store: [0x80003388]:0x0080FFFFFFFA0004




Last Coverpoint : ['rs1 : x3', 'rs2 : x20', 'rd : x14', 'rs2_h3_val == -3', 'rs2_h2_val == 16384', 'rs2_h1_val == 512', 'rs1_h3_val == 4', 'rs1_h1_val == 64', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000920]:KDMATT a4, gp, s4
	-[0x80000924]:sd a4, 128(s9)
Current Store : [0x80000928] : sd gp, 136(s9) -- Store: [0x80003398]:0x0004FDFF0040F7FF




Last Coverpoint : ['rs1 : x8', 'rs2 : x23', 'rd : x24', 'rs2_h3_val == -2', 'rs1_h3_val == -8193']
Last Code Sequence : 
	-[0x80000954]:KDMATT s8, fp, s7
	-[0x80000958]:sd s8, 144(s9)
Current Store : [0x8000095c] : sd fp, 152(s9) -- Store: [0x800033a8]:0xDFFF0007FFEF0008




Last Coverpoint : ['rs1 : x6', 'rs2 : x14', 'rd : x11', 'rs2_h3_val == 16384', 'rs2_h2_val == -33', 'rs2_h1_val == -1', 'rs1_h3_val == -21846', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80000990]:KDMATT a1, t1, a4
	-[0x80000994]:sd a1, 160(s9)
Current Store : [0x80000998] : sd t1, 168(s9) -- Store: [0x800033b8]:0xAAAAEFFFFFDF0001




Last Coverpoint : ['rs1 : x21', 'rs2 : x16', 'rd : x4', 'rs2_h3_val == 8192', 'rs2_h1_val == 32767', 'rs1_h1_val == 32']
Last Code Sequence : 
	-[0x800009c4]:KDMATT tp, s5, a6
	-[0x800009c8]:sd tp, 176(s9)
Current Store : [0x800009cc] : sd s5, 184(s9) -- Store: [0x800033c8]:0xC000BFFF0020FFF9




Last Coverpoint : ['rs1 : x5', 'rs2 : x12', 'rd : x0', 'rs2_h3_val == 4096', 'rs2_h0_val == -129', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x800009f4]:KDMATT zero, t0, a2
	-[0x800009f8]:sd zero, 192(s9)
Current Store : [0x800009fc] : sd t0, 200(s9) -- Store: [0x800033d8]:0x0000000910001000




Last Coverpoint : ['rs1 : x2', 'rs2 : x17', 'rd : x27', 'rs2_h3_val == 256', 'rs2_h2_val == 2048', 'rs2_h0_val == 32767', 'rs1_h3_val == 2', 'rs1_h1_val == -1']
Last Code Sequence : 
	-[0x80000a30]:KDMATT s11, sp, a7
	-[0x80000a34]:sd s11, 208(s9)
Current Store : [0x80000a38] : sd sp, 216(s9) -- Store: [0x800033e8]:0x00020009FFFF0080




Last Coverpoint : ['rs1 : x20', 'rs2 : x31', 'rd : x1', 'rs2_h3_val == 128', 'rs2_h1_val == 2048', 'rs2_h0_val == 2']
Last Code Sequence : 
	-[0x80000a6c]:KDMATT ra, s4, t6
	-[0x80000a70]:sd ra, 0(sp)
Current Store : [0x80000a74] : sd s4, 8(sp) -- Store: [0x800033f8]:0xBFFF7FFFFFFCFFFB




Last Coverpoint : ['rs1 : x16', 'rs2 : x3', 'rd : x21', 'rs2_h3_val == 64', 'rs2_h2_val == 4096', 'rs2_h1_val == 256', 'rs1_h1_val == -3', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000aa4]:KDMATT s5, a6, gp
	-[0x80000aa8]:sd s5, 16(sp)
Current Store : [0x80000aac] : sd a6, 24(sp) -- Store: [0x80003408]:0xDFFFFFF9FFFD0100




Last Coverpoint : ['rs2_h3_val == 16', 'rs2_h2_val == -21846', 'rs2_h0_val == 512', 'rs1_h2_val == 2', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000ad8]:KDMATT t6, t5, t4
	-[0x80000adc]:sd t6, 32(sp)
Current Store : [0x80000ae0] : sd t5, 40(sp) -- Store: [0x80003418]:0xFF7F00020005FF7F




Last Coverpoint : ['rs2_h3_val == 8', 'rs2_h0_val == -9', 'rs1_h2_val == -129', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000b08]:KDMATT t6, t5, t4
	-[0x80000b0c]:sd t6, 48(sp)
Current Store : [0x80000b10] : sd t5, 56(sp) -- Store: [0x80003428]:0x0003FF7FFFFEFFFE




Last Coverpoint : ['rs2_h3_val == 4']
Last Code Sequence : 
	-[0x80000b3c]:KDMATT t6, t5, t4
	-[0x80000b40]:sd t6, 64(sp)
Current Store : [0x80000b44] : sd t5, 72(sp) -- Store: [0x80003438]:0x5555F7FFFFFE0800




Last Coverpoint : ['rs2_h2_val == -9', 'rs1_h3_val == -2049', 'rs1_h2_val == 128', 'rs1_h1_val == -5', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000b74]:KDMATT t6, t5, t4
	-[0x80000b78]:sd t6, 80(sp)
Current Store : [0x80000b7c] : sd t5, 88(sp) -- Store: [0x80003448]:0xF7FF0080FFFB4000




Last Coverpoint : ['rs1_h2_val == -33', 'rs1_h1_val == -32768', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000bb0]:KDMATT t6, t5, t4
	-[0x80000bb4]:sd t6, 96(sp)
Current Store : [0x80000bb8] : sd t5, 104(sp) -- Store: [0x80003458]:0x0080FFDF8000FFEF




Last Coverpoint : ['rs2_h3_val == 1', 'rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x80000be4]:KDMATT t6, t5, t4
	-[0x80000be8]:sd t6, 112(sp)
Current Store : [0x80000bec] : sd t5, 120(sp) -- Store: [0x80003468]:0x4000FFFC40000100




Last Coverpoint : ['rs2_h1_val == 2', 'rs1_h2_val == 4', 'rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x80000c18]:KDMATT t6, t5, t4
	-[0x80000c1c]:sd t6, 128(sp)
Current Store : [0x80000c20] : sd t5, 136(sp) -- Store: [0x80003478]:0xFEFF000404000010




Last Coverpoint : ['rs2_h1_val == 64', 'rs2_h0_val == -16385', 'rs1_h1_val == 512', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000c54]:KDMATT t6, t5, t4
	-[0x80000c58]:sd t6, 144(sp)
Current Store : [0x80000c5c] : sd t5, 152(sp) -- Store: [0x80003488]:0x000500800200FFF7




Last Coverpoint : ['rs2_h2_val == -32768', 'rs2_h0_val == -3', 'rs1_h2_val == 512', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x80000c8c]:KDMATT t6, t5, t4
	-[0x80000c90]:sd t6, 160(sp)
Current Store : [0x80000c94] : sd t5, 168(sp) -- Store: [0x80003498]:0x4000020001000010




Last Coverpoint : ['rs2_h2_val == 2', 'rs2_h1_val == -513', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000cc0]:KDMATT t6, t5, t4
	-[0x80000cc4]:sd t6, 176(sp)
Current Store : [0x80000cc8] : sd t5, 184(sp) -- Store: [0x800034a8]:0x000000060008BFFF




Last Coverpoint : ['rs1_h2_val == -21846', 'rs1_h1_val == 4', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000cf0]:KDMATT t6, t5, t4
	-[0x80000cf4]:sd t6, 192(sp)
Current Store : [0x80000cf8] : sd t5, 200(sp) -- Store: [0x800034b8]:0x0000AAAA00040002




Last Coverpoint : ['rs2_h0_val == -2', 'rs1_h2_val == 21845', 'rs1_h1_val == 2', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000d28]:KDMATT t6, t5, t4
	-[0x80000d2c]:sd t6, 208(sp)
Current Store : [0x80000d30] : sd t5, 216(sp) -- Store: [0x800034c8]:0xFDFF555500022000




Last Coverpoint : ['rs2_h1_val == -129', 'rs2_h0_val == 16384', 'rs1_h2_val == -1025']
Last Code Sequence : 
	-[0x80000d5c]:KDMATT t6, t5, t4
	-[0x80000d60]:sd t6, 224(sp)
Current Store : [0x80000d64] : sd t5, 232(sp) -- Store: [0x800034d8]:0xFF7FFBFF0000C000




Last Coverpoint : ['rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000da0]:KDMATT t6, t5, t4
	-[0x80000da4]:sd t6, 240(sp)
Current Store : [0x80000da8] : sd t5, 248(sp) -- Store: [0x800034e8]:0xC000BFFF4000AAAA




Last Coverpoint : ['rs1_h3_val == 32767', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000ddc]:KDMATT t6, t5, t4
	-[0x80000de0]:sd t6, 256(sp)
Current Store : [0x80000de4] : sd t5, 264(sp) -- Store: [0x800034f8]:0x7FFF7FFF00045555




Last Coverpoint : ['rs2_h2_val == -2', 'rs1_h3_val == 8']
Last Code Sequence : 
	-[0x80000e18]:KDMATT t6, t5, t4
	-[0x80000e1c]:sd t6, 272(sp)
Current Store : [0x80000e20] : sd t5, 280(sp) -- Store: [0x80003508]:0x00080008FFBFDFFF




Last Coverpoint : ['rs2_h0_val == 1024', 'rs1_h3_val == 2048', 'rs1_h1_val == 21845', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80000e5c]:KDMATT t6, t5, t4
	-[0x80000e60]:sd t6, 288(sp)
Current Store : [0x80000e64] : sd t5, 296(sp) -- Store: [0x80003518]:0x0800FFFA5555EFFF




Last Coverpoint : ['rs2_h2_val == -17', 'rs2_h1_val == 21845', 'rs1_h3_val == -65', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000e94]:KDMATT t6, t5, t4
	-[0x80000e98]:sd t6, 304(sp)
Current Store : [0x80000e9c] : sd t5, 312(sp) -- Store: [0x80003528]:0xFFBF0005FFFAFBFF




Last Coverpoint : ['rs2_h3_val == 2', 'rs2_h0_val == 16', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000ed0]:KDMATT t6, t5, t4
	-[0x80000ed4]:sd t6, 320(sp)
Current Store : [0x80000ed8] : sd t5, 328(sp) -- Store: [0x80003538]:0x0008FFF60003FEFF




Last Coverpoint : ['rs2_h1_val == -21846', 'rs1_h3_val == -3', 'rs1_h2_val == 1024', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000f04]:KDMATT t6, t5, t4
	-[0x80000f08]:sd t6, 336(sp)
Current Store : [0x80000f0c] : sd t5, 344(sp) -- Store: [0x80003548]:0xFFFD040000200400




Last Coverpoint : ['rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000f40]:KDMATT t6, t5, t4
	-[0x80000f44]:sd t6, 352(sp)
Current Store : [0x80000f48] : sd t5, 360(sp) -- Store: [0x80003558]:0x00030003FFFA0040




Last Coverpoint : ['rs1_h2_val == 64', 'rs1_h1_val == -21846']
Last Code Sequence : 
	-[0x80000f7c]:KDMATT t6, t5, t4
	-[0x80000f80]:sd t6, 368(sp)
Current Store : [0x80000f84] : sd t5, 376(sp) -- Store: [0x80003568]:0x00040040AAAA0020




Last Coverpoint : ['rs2_h1_val == 128', 'rs1_h3_val == 1']
Last Code Sequence : 
	-[0x80000fb0]:KDMATT t6, t5, t4
	-[0x80000fb4]:sd t6, 384(sp)
Current Store : [0x80000fb8] : sd t5, 392(sp) -- Store: [0x80003578]:0x0001FFF73FFF0003




Last Coverpoint : ['rs2_h3_val == -1', 'rs2_h2_val == 512']
Last Code Sequence : 
	-[0x80000fe8]:KDMATT t6, t5, t4
	-[0x80000fec]:sd t6, 400(sp)
Current Store : [0x80000ff0] : sd t5, 408(sp) -- Store: [0x80003588]:0x0004FFFA4000FFFB




Last Coverpoint : ['rs2_h2_val == 8', 'rs2_h1_val == 4', 'rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x8000101c]:KDMATT t6, t5, t4
	-[0x80001020]:sd t6, 416(sp)
Current Store : [0x80001024] : sd t5, 424(sp) -- Store: [0x80003598]:0xFFF7AAAABFFFFFFE




Last Coverpoint : ['rs2_h1_val == 1']
Last Code Sequence : 
	-[0x80001058]:KDMATT t6, t5, t4
	-[0x8000105c]:sd t6, 432(sp)
Current Store : [0x80001060] : sd t5, 440(sp) -- Store: [0x800035a8]:0x0020FFFA1000FBFF




Last Coverpoint : ['rs2_h0_val == -21846', 'rs1_h2_val == -5']
Last Code Sequence : 
	-[0x80001098]:KDMATT t6, t5, t4
	-[0x8000109c]:sd t6, 448(sp)
Current Store : [0x800010a0] : sd t5, 456(sp) -- Store: [0x800035b8]:0xFFBFFFFB00030001




Last Coverpoint : ['rs2_h1_val == -65', 'rs2_h0_val == -4097', 'rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x800010d8]:KDMATT t6, t5, t4
	-[0x800010dc]:sd t6, 464(sp)
Current Store : [0x800010e0] : sd t5, 472(sp) -- Store: [0x800035c8]:0x7FFF0003DFFF1000




Last Coverpoint : ['rs2_h0_val == -2049', 'rs1_h3_val == -33']
Last Code Sequence : 
	-[0x80001114]:KDMATT t6, t5, t4
	-[0x80001118]:sd t6, 480(sp)
Current Store : [0x8000111c] : sd t5, 488(sp) -- Store: [0x800035d8]:0xFFDF00030020FFFF




Last Coverpoint : ['rs2_h0_val == -1025']
Last Code Sequence : 
	-[0x80001150]:KDMATT t6, t5, t4
	-[0x80001154]:sd t6, 496(sp)
Current Store : [0x80001158] : sd t5, 504(sp) -- Store: [0x800035e8]:0xDFFFFFDFFEFFFEFF




Last Coverpoint : ['rs2_h2_val == 64', 'rs2_h1_val == 16', 'rs2_h0_val == -257']
Last Code Sequence : 
	-[0x80001184]:KDMATT t6, t5, t4
	-[0x80001188]:sd t6, 512(sp)
Current Store : [0x8000118c] : sd t5, 520(sp) -- Store: [0x800035f8]:0x0007000604000004




Last Coverpoint : ['rs2_h2_val == 32', 'rs2_h0_val == -33']
Last Code Sequence : 
	-[0x800011b8]:KDMATT t6, t5, t4
	-[0x800011bc]:sd t6, 528(sp)
Current Store : [0x800011c0] : sd t5, 536(sp) -- Store: [0x80003608]:0xFFF600041000F7FF




Last Coverpoint : ['rs2_h2_val == -2049', 'rs2_h0_val == -17']
Last Code Sequence : 
	-[0x800011f4]:KDMATT t6, t5, t4
	-[0x800011f8]:sd t6, 544(sp)
Current Store : [0x800011fc] : sd t5, 552(sp) -- Store: [0x80003618]:0xC000FFF80400FFFB




Last Coverpoint : ['rs2_h2_val == -8193', 'rs2_h0_val == -5']
Last Code Sequence : 
	-[0x80001230]:KDMATT t6, t5, t4
	-[0x80001234]:sd t6, 560(sp)
Current Store : [0x80001238] : sd t5, 568(sp) -- Store: [0x80003628]:0x00030002EFFF0800




Last Coverpoint : ['rs2_h0_val == 8192', 'rs1_h2_val == 16']
Last Code Sequence : 
	-[0x80001268]:KDMATT t6, t5, t4
	-[0x8000126c]:sd t6, 576(sp)
Current Store : [0x80001270] : sd t5, 584(sp) -- Store: [0x80003638]:0xFFFC001000080004




Last Coverpoint : ['rs2_h0_val == 2048']
Last Code Sequence : 
	-[0x8000129c]:KDMATT t6, t5, t4
	-[0x800012a0]:sd t6, 592(sp)
Current Store : [0x800012a4] : sd t5, 600(sp) -- Store: [0x80003648]:0xFF7FFFF7C0000004




Last Coverpoint : ['rs2_h2_val == -16385', 'rs2_h0_val == 128']
Last Code Sequence : 
	-[0x800012d8]:KDMATT t6, t5, t4
	-[0x800012dc]:sd t6, 608(sp)
Current Store : [0x800012e0] : sd t5, 616(sp) -- Store: [0x80003658]:0xFF7FFFFD0006FFF7




Last Coverpoint : ['rs2_h0_val == 8', 'rs1_h3_val == 8192']
Last Code Sequence : 
	-[0x80001314]:KDMATT t6, t5, t4
	-[0x80001318]:sd t6, 624(sp)
Current Store : [0x8000131c] : sd t5, 632(sp) -- Store: [0x80003668]:0x2000040000050008




Last Coverpoint : ['rs2_h0_val == 1', 'rs1_h3_val == -5']
Last Code Sequence : 
	-[0x80001350]:KDMATT t6, t5, t4
	-[0x80001354]:sd t6, 640(sp)
Current Store : [0x80001358] : sd t5, 648(sp) -- Store: [0x80003678]:0xFFFB3FFF0002FFFE




Last Coverpoint : ['rs1_h3_val == 1024']
Last Code Sequence : 
	-[0x8000138c]:KDMATT t6, t5, t4
	-[0x80001390]:sd t6, 656(sp)
Current Store : [0x80001394] : sd t5, 664(sp) -- Store: [0x80003688]:0x0400FFDFDFFF0400




Last Coverpoint : ['opcode : kdmatt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == -17', 'rs2_h2_val == -8193', 'rs2_h1_val == 256', 'rs1_h3_val == 512', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x800013c8]:KDMATT t6, t5, t4
	-[0x800013cc]:sd t6, 672(sp)
Current Store : [0x800013d0] : sd t5, 680(sp) -- Store: [0x80003698]:0x0200FFFCFFF6FFF7




Last Coverpoint : ['rs2_h2_val == -4097']
Last Code Sequence : 
	-[0x80001404]:KDMATT t6, t5, t4
	-[0x80001408]:sd t6, 688(sp)
Current Store : [0x8000140c] : sd t5, 696(sp) -- Store: [0x800036a8]:0xFF7F0000FFFAFFF9




Last Coverpoint : ['rs2_h2_val == -1025', 'rs2_h1_val == 16384']
Last Code Sequence : 
	-[0x80001440]:KDMATT t6, t5, t4
	-[0x80001444]:sd t6, 704(sp)
Current Store : [0x80001448] : sd t5, 712(sp) -- Store: [0x800036b8]:0x10007FFFFFF8FFBF




Last Coverpoint : ['rs1_h3_val == 64']
Last Code Sequence : 
	-[0x8000147c]:KDMATT t6, t5, t4
	-[0x80001480]:sd t6, 720(sp)
Current Store : [0x80001484] : sd t5, 728(sp) -- Store: [0x800036c8]:0x004000040000DFFF




Last Coverpoint : ['rs1_h3_val == 16']
Last Code Sequence : 
	-[0x800014b8]:KDMATT t6, t5, t4
	-[0x800014bc]:sd t6, 736(sp)
Current Store : [0x800014c0] : sd t5, 744(sp) -- Store: [0x800036d8]:0x0010000900010040




Last Coverpoint : ['rs1_h3_val == -1']
Last Code Sequence : 
	-[0x800014f0]:KDMATT t6, t5, t4
	-[0x800014f4]:sd t6, 752(sp)
Current Store : [0x800014f8] : sd t5, 760(sp) -- Store: [0x800036e8]:0xFFFF0040EFFF0040




Last Coverpoint : ['rs2_h2_val == 1024', 'rs1_h2_val == -32768']
Last Code Sequence : 
	-[0x8000152c]:KDMATT t6, t5, t4
	-[0x80001530]:sd t6, 768(sp)
Current Store : [0x80001534] : sd t5, 776(sp) -- Store: [0x800036f8]:0xC00080000007AAAA




Last Coverpoint : ['rs1_h2_val == -257']
Last Code Sequence : 
	-[0x8000156c]:KDMATT t6, t5, t4
	-[0x80001570]:sd t6, 784(sp)
Current Store : [0x80001574] : sd t5, 792(sp) -- Store: [0x80003708]:0x0000FEFFEFFF1000




Last Coverpoint : ['rs1_h2_val == -65']
Last Code Sequence : 
	-[0x800015a8]:KDMATT t6, t5, t4
	-[0x800015ac]:sd t6, 800(sp)
Current Store : [0x800015b0] : sd t5, 808(sp) -- Store: [0x80003718]:0xFDFFFFBFFFFEFEFF




Last Coverpoint : ['rs2_h2_val == 16']
Last Code Sequence : 
	-[0x800015dc]:KDMATT t6, t5, t4
	-[0x800015e0]:sd t6, 816(sp)
Current Store : [0x800015e4] : sd t5, 824(sp) -- Store: [0x80003728]:0x0002EFFFC000FFF6




Last Coverpoint : ['rs1_h2_val == -17']
Last Code Sequence : 
	-[0x80001610]:KDMATT t6, t5, t4
	-[0x80001614]:sd t6, 832(sp)
Current Store : [0x80001618] : sd t5, 840(sp) -- Store: [0x80003738]:0xFFFCFFEFFFBFFFF9




Last Coverpoint : ['rs1_h2_val == 8192']
Last Code Sequence : 
	-[0x80001648]:KDMATT t6, t5, t4
	-[0x8000164c]:sd t6, 848(sp)
Current Store : [0x80001650] : sd t5, 856(sp) -- Store: [0x80003748]:0x00032000FFFE0000




Last Coverpoint : ['rs1_h3_val == -17', 'rs1_h2_val == 4096']
Last Code Sequence : 
	-[0x80001674]:KDMATT t6, t5, t4
	-[0x80001678]:sd t6, 864(sp)
Current Store : [0x8000167c] : sd t5, 872(sp) -- Store: [0x80003758]:0xFFEF1000EFFFFDFF




Last Coverpoint : ['rs2_h1_val == -5', 'rs1_h2_val == 2048']
Last Code Sequence : 
	-[0x800016ac]:KDMATT t6, t5, t4
	-[0x800016b0]:sd t6, 880(sp)
Current Store : [0x800016b4] : sd t5, 888(sp) -- Store: [0x80003768]:0xFFFD080000090006




Last Coverpoint : ['rs2_h1_val == -16385']
Last Code Sequence : 
	-[0x800016e8]:KDMATT t6, t5, t4
	-[0x800016ec]:sd t6, 896(sp)
Current Store : [0x800016f0] : sd t5, 904(sp) -- Store: [0x80003778]:0x4000FEFF0800FEFF




Last Coverpoint : ['rs1_h2_val == 256']
Last Code Sequence : 
	-[0x80001724]:KDMATT t6, t5, t4
	-[0x80001728]:sd t6, 912(sp)
Current Store : [0x8000172c] : sd t5, 920(sp) -- Store: [0x80003788]:0xFFFC0100FDFF0200




Last Coverpoint : ['opcode : kdmatt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h2_val == 16384', 'rs2_h1_val == 64', 'rs2_h0_val == 0', 'rs1_h3_val == 32767', 'rs1_h2_val == 512', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80001754]:KDMATT t6, t5, t4
	-[0x80001758]:sd t6, 928(sp)
Current Store : [0x8000175c] : sd t5, 936(sp) -- Store: [0x80003798]:0x7FFF02000003FFEF




Last Coverpoint : ['rs1_h3_val == -4097']
Last Code Sequence : 
	-[0x80001790]:KDMATT t6, t5, t4
	-[0x80001794]:sd t6, 944(sp)
Current Store : [0x80001798] : sd t5, 952(sp) -- Store: [0x800037a8]:0xEFFF040010000010




Last Coverpoint : ['rs1_h3_val == -32768']
Last Code Sequence : 
	-[0x800017c8]:KDMATT t6, t5, t4
	-[0x800017cc]:sd t6, 960(sp)
Current Store : [0x800017d0] : sd t5, 968(sp) -- Store: [0x800037b8]:0x8000FDFF0200FFDF




Last Coverpoint : ['rs1_h2_val == 1']
Last Code Sequence : 
	-[0x80001804]:KDMATT t6, t5, t4
	-[0x80001808]:sd t6, 976(sp)
Current Store : [0x8000180c] : sd t5, 984(sp) -- Store: [0x800037c8]:0xFEFF00010004BFFF




Last Coverpoint : ['rs1_h3_val == -1025']
Last Code Sequence : 
	-[0x80001840]:KDMATT t6, t5, t4
	-[0x80001844]:sd t6, 992(sp)
Current Store : [0x80001848] : sd t5, 1000(sp) -- Store: [0x800037d8]:0xFBFFFFFD0010AAAA




Last Coverpoint : ['rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x80001874]:KDMATT t6, t5, t4
	-[0x80001878]:sd t6, 1008(sp)
Current Store : [0x8000187c] : sd t5, 1016(sp) -- Store: [0x800037e8]:0x0001FFDF7FFFFFEF




Last Coverpoint : ['rs2_h1_val == 8192']
Last Code Sequence : 
	-[0x800018a8]:KDMATT t6, t5, t4
	-[0x800018ac]:sd t6, 1024(sp)
Current Store : [0x800018b0] : sd t5, 1032(sp) -- Store: [0x800037f8]:0x0007FF7F3FFFFF7F




Last Coverpoint : ['rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x800018e0]:KDMATT t6, t5, t4
	-[0x800018e4]:sd t6, 1040(sp)
Current Store : [0x800018e8] : sd t5, 1048(sp) -- Store: [0x80003808]:0xFFFDF7FFFBFF0003




Last Coverpoint : ['rs1_h1_val == -129']
Last Code Sequence : 
	-[0x8000191c]:KDMATT t6, t5, t4
	-[0x80001920]:sd t6, 1056(sp)
Current Store : [0x80001924] : sd t5, 1064(sp) -- Store: [0x80003818]:0x3FFFDFFFFF7FFFFD




Last Coverpoint : ['rs2_h2_val == 21845']
Last Code Sequence : 
	-[0x80001950]:KDMATT t6, t5, t4
	-[0x80001954]:sd t6, 1072(sp)
Current Store : [0x80001958] : sd t5, 1080(sp) -- Store: [0x80003828]:0x0020FFF800010400




Last Coverpoint : ['rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x80001984]:KDMATT t6, t5, t4
	-[0x80001988]:sd t6, 1088(sp)
Current Store : [0x8000198c] : sd t5, 1096(sp) -- Store: [0x80003838]:0x00004000F7FFFFFD




Last Coverpoint : ['rs1_h0_val == -32768']
Last Code Sequence : 
	-[0x800019bc]:KDMATT t6, t5, t4
	-[0x800019c0]:sd t6, 1104(sp)
Current Store : [0x800019c4] : sd t5, 1112(sp) -- Store: [0x80003848]:0x0000FFFEFFFD8000





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

|s.no|            signature             |                                                                                                                                                                                                                                                                                           coverpoints                                                                                                                                                                                                                                                                                           |                                 code                                  |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000000000442|- opcode : kdmatt<br> - rs1 : x22<br> - rs2 : x22<br> - rd : x10<br> - rs1 == rs2 != rd<br> - rs1_h3_val == rs2_h3_val<br> - rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs1_h2_val == rs2_h2_val<br> - rs1_h2_val < 0 and rs2_h2_val < 0<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h3_val == 512<br> - rs2_h1_val == -17<br> - rs2_h0_val == 32<br> - rs1_h3_val == 512<br> - rs1_h1_val == -17<br> - rs1_h0_val == 32<br>                                                            |[0x800003d0]:KDMATT a0, s6, s6<br> [0x800003d4]:sd a0, 0(gp)<br>       |
|   2|[0x80003220]<br>0xFFFFFFFFF2002001|- rs1 : x25<br> - rs2 : x25<br> - rd : x25<br> - rs1 == rs2 == rd<br> - rs1_h3_val < 0 and rs2_h3_val < 0<br> - rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h3_val == -257<br> - rs2_h1_val == -4097<br> - rs2_h0_val == -8193<br> - rs1_h3_val == -257<br> - rs1_h1_val == -4097<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                          |[0x8000040c]:KDMATT s9, s9, s9<br> [0x80000410]:sd s9, 16(gp)<br>      |
|   3|[0x80003230]<br>0xFFFFFFFFBAFAB7FB|- rs1 : x13<br> - rs2 : x6<br> - rd : x23<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h3_val != rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val > 0<br> - rs1_h2_val != rs2_h2_val<br> - rs1_h2_val < 0 and rs2_h2_val > 0<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h3_val == 1024<br> - rs2_h2_val == 8192<br> - rs2_h1_val == 4096<br> - rs2_h0_val == 4096<br> - rs1_h3_val == -129<br> - rs1_h2_val == -8193<br> - rs1_h1_val == 8192<br> - rs1_h0_val == -513<br> |[0x80000444]:KDMATT s7, a3, t1<br> [0x80000448]:sd s7, 32(gp)<br>      |
|   4|[0x80003240]<br>0xFFFFFFFFFF4041FF|- rs1 : x31<br> - rs2 : x1<br> - rd : x31<br> - rs1 == rd != rs2<br> - rs1_h3_val > 0 and rs2_h3_val < 0<br> - rs2_h3_val == -21846<br> - rs2_h2_val == -5<br> - rs2_h1_val == -8193<br> - rs2_h0_val == -513<br> - rs1_h2_val == -16385<br> - rs1_h1_val == -257<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                                                     |[0x80000478]:KDMATT t6, t6, ra<br> [0x8000047c]:sd t6, 48(gp)<br>      |
|   5|[0x80003250]<br>0xFFFFFFFFFFFD3FDB|- rs1 : x15<br> - rs2 : x5<br> - rd : x5<br> - rs2 == rd != rs1<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs2_h3_val == 2048<br> - rs2_h2_val == -1<br> - rs2_h1_val == -3<br> - rs1_h3_val == 256<br> - rs1_h2_val == -2049<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                                      |[0x800004b4]:KDMATT t0, a5, t0<br> [0x800004b8]:sd t0, 64(gp)<br>      |
|   6|[0x80003260]<br>0x0000000010001900|- rs1 : x24<br> - rs2 : x15<br> - rd : x6<br> - rs2_h3_val == -32768<br> - rs2_h2_val == -513<br> - rs1_h3_val == -16385<br> - rs1_h2_val == -513<br> - rs1_h1_val == 128<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                              |[0x800004ec]:KDMATT t1, s8, a5<br> [0x800004f0]:sd t1, 80(gp)<br>      |
|   7|[0x80003270]<br>0xFFFFFFFFDDB7BDB3|- rs1 : x23<br> - rs2 : x27<br> - rd : x28<br> - rs1_h2_val > 0 and rs2_h2_val < 0<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h3_val == -2049<br> - rs2_h2_val == -3<br> - rs1_h3_val == -9<br> - rs1_h2_val == 32<br> - rs1_h1_val == -513<br>                                                                                                                                                                                                                                                                                                   |[0x80000528]:KDMATT t3, s7, s11<br> [0x8000052c]:sd t3, 96(gp)<br>     |
|   8|[0x80003280]<br>0x000000006FAB7F2B|- rs1 : x7<br> - rs2 : x4<br> - rd : x19<br> - rs2_h3_val == 32<br> - rs2_h1_val == 8<br> - rs1_h2_val == 32767<br> - rs1_h1_val == -9<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000560]:KDMATT s3, t2, tp<br> [0x80000564]:sd s3, 112(gp)<br>     |
|   9|[0x80003290]<br>0xFFFFFFFFBEADFEF5|- rs1 : x28<br> - rs2 : x24<br> - rd : x17<br> - rs2_h2_val == 128<br> - rs2_h1_val == -2<br> - rs2_h0_val == -65<br> - rs1_h3_val == -2<br> - rs1_h2_val == 16384<br> - rs1_h1_val == -2<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                             |[0x8000059c]:KDMATT a7, t3, s8<br> [0x800005a0]:sd a7, 128(gp)<br>     |
|  10|[0x800032a0]<br>0xFFFFFFFFD5BFDDB7|- rs1 : x19<br> - rs2 : x0<br> - rd : x12<br> - rs2_h3_val == 0<br> - rs2_h2_val == 0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h1_val == 4096<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800005d4]:KDMATT a2, s3, zero<br> [0x800005d8]:sd a2, 144(gp)<br>   |
|  11|[0x800032b0]<br>0xFFFFFFFFB815BFDD|- rs1 : x17<br> - rs2 : x29<br> - rd : x20<br> - rs2_h2_val == -129<br> - rs2_h1_val == 1024<br> - rs1_h2_val == -2<br> - rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000600]:KDMATT s4, a7, t4<br> [0x80000604]:sd s4, 160(gp)<br>     |
|  12|[0x800032c0]<br>0xFFFFFFFFFFF6E800|- rs1 : x4<br> - rs2 : x11<br> - rd : x7<br> - rs2_h3_val == 21845<br> - rs2_h2_val == 32767<br> - rs2_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000634]:KDMATT t2, tp, a1<br> [0x80000638]:sd t2, 176(gp)<br>     |
|  13|[0x800032d0]<br>0x0000000003FFFDE6|- rs1 : x18<br> - rs2 : x9<br> - rd : x29<br> - rs2_h3_val == 32767<br> - rs2_h2_val == -257<br> - rs2_h0_val == -1<br> - rs1_h3_val == 32<br> - rs1_h2_val == -3<br> - rs1_h1_val == 16<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                             |[0x80000670]:KDMATT t4, s2, s1<br> [0x80000674]:sd t4, 192(gp)<br>     |
|  14|[0x800032e0]<br>0x000000007D5BFDE5|- rs1 : x29<br> - rs2 : x28<br> - rd : x16<br> - rs2_h3_val == -16385<br> - rs2_h0_val == 21845<br> - rs1_h1_val == 1<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800006ac]:KDMATT a6, t4, t3<br> [0x800006b0]:sd a6, 208(gp)<br>     |
|  15|[0x800032f0]<br>0x0000000066DF56FF|- rs1 : x10<br> - rs2 : x2<br> - rd : x26<br> - rs2_h3_val == -8193<br> - rs2_h1_val == -32768<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800006e0]:KDMATT s10, a0, sp<br> [0x800006e4]:sd s10, 224(gp)<br>   |
|  16|[0x80003300]<br>0xFFFFFFFF80010290|- rs1 : x9<br> - rs2 : x30<br> - rd : x2<br> - rs2_h3_val == -4097<br> - rs2_h1_val == -33<br> - rs1_h3_val == -513<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000718]:KDMATT sp, s1, t5<br> [0x8000071c]:sd sp, 240(gp)<br>     |
|  17|[0x80003310]<br>0xFFFFFFFF80003210|- rs1 : x0<br> - rs2 : x19<br> - rd : x3<br> - rs2_h3_val == -1025<br> - rs2_h2_val == 4<br> - rs2_h0_val == 256<br> - rs1_h3_val == 0<br> - rs1_h2_val == 0<br> - rs1_h1_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                                           |[0x8000075c]:KDMATT gp, zero, s3<br> [0x80000760]:sd gp, 0(s9)<br>     |
|  18|[0x80003320]<br>0xFFFFFFFFFF6EE020|- rs1 : x27<br> - rs2 : x8<br> - rd : x22<br> - rs2_h3_val == -513<br> - rs2_h1_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000790]:KDMATT s6, s11, fp<br> [0x80000794]:sd s6, 16(s9)<br>     |
|  19|[0x80003330]<br>0xFFFFFFFFFFE31000|- rs1 : x11<br> - rs2 : x26<br> - rd : x30<br> - rs2_h3_val == -129<br> - rs2_h2_val == -65<br> - rs2_h1_val == 32<br> - rs1_h2_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800007cc]:KDMATT t5, a1, s10<br> [0x800007d0]:sd t5, 32(s9)<br>     |
|  20|[0x80003340]<br>0xFFFFFFFFFBFEFFAD|- rs1 : x12<br> - rs2 : x21<br> - rd : x8<br> - rs2_h3_val == -65<br> - rs2_h1_val == -9<br> - rs2_h0_val == -32768<br> - rs1_h3_val == 4096<br> - rs1_h2_val == -9<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000804]:KDMATT fp, a2, s5<br> [0x80000808]:sd fp, 48(s9)<br>      |
|  21|[0x80003350]<br>0x000000002000FEC5|- rs1 : x14<br> - rs2 : x18<br> - rd : x13<br> - rs2_h3_val == -33<br> - rs1_h3_val == 21845<br> - rs1_h1_val == -33<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000840]:KDMATT a3, a4, s2<br> [0x80000844]:sd a3, 64(s9)<br>      |
|  22|[0x80003360]<br>0xFFFFFFFFFFEE0100|- rs1 : x30<br> - rs2 : x10<br> - rd : x9<br> - rs2_h3_val == -17<br> - rs2_h1_val == -2049<br> - rs1_h3_val == 16384<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x8000087c]:KDMATT s1, t5, a0<br> [0x80000880]:sd s1, 80(s9)<br>      |
|  23|[0x80003370]<br>0xFFFFFFFFFFF4E007|- rs1 : x1<br> - rs2 : x7<br> - rd : x18<br> - rs2_h3_val == -9<br> - rs2_h2_val == 256<br> - rs2_h0_val == 64<br> - rs1_h2_val == 8<br> - rs1_h1_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800008b0]:KDMATT s2, ra, t2<br> [0x800008b4]:sd s2, 96(s9)<br>      |
|  24|[0x80003380]<br>0x00000000000A0C06|- rs1 : x26<br> - rs2 : x13<br> - rd : x15<br> - rs2_h3_val == -5<br> - rs2_h2_val == 1<br> - rs2_h1_val == -257<br> - rs1_h3_val == 128<br> - rs1_h2_val == -1<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800008e8]:KDMATT a5, s10, a3<br> [0x800008ec]:sd a5, 112(s9)<br>    |
|  25|[0x80003390]<br>0xFFFFFFFFFFE0FFDF|- rs1 : x3<br> - rs2 : x20<br> - rd : x14<br> - rs2_h3_val == -3<br> - rs2_h2_val == 16384<br> - rs2_h1_val == 512<br> - rs1_h3_val == 4<br> - rs1_h1_val == 64<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000920]:KDMATT a4, gp, s4<br> [0x80000924]:sd a4, 128(s9)<br>     |
|  26|[0x800033a0]<br>0xFFFFFFFFFFFE77BF|- rs1 : x8<br> - rs2 : x23<br> - rd : x24<br> - rs2_h3_val == -2<br> - rs1_h3_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000954]:KDMATT s8, fp, s7<br> [0x80000958]:sd s8, 144(s9)<br>     |
|  27|[0x800033b0]<br>0x0000000010000842|- rs1 : x6<br> - rs2 : x14<br> - rd : x11<br> - rs2_h3_val == 16384<br> - rs2_h2_val == -33<br> - rs2_h1_val == -1<br> - rs1_h3_val == -21846<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000990]:KDMATT a1, t1, a4<br> [0x80000994]:sd a1, 160(s9)<br>     |
|  28|[0x800033c0]<br>0x00000000081FFFC3|- rs1 : x21<br> - rs2 : x16<br> - rd : x4<br> - rs2_h3_val == 8192<br> - rs2_h1_val == 32767<br> - rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800009c4]:KDMATT tp, s5, a6<br> [0x800009c8]:sd tp, 176(s9)<br>     |
|  29|[0x800033d0]<br>0x0000000000000000|- rs1 : x5<br> - rs2 : x12<br> - rd : x0<br> - rs2_h3_val == 4096<br> - rs2_h0_val == -129<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800009f4]:KDMATT zero, t0, a2<br> [0x800009f8]:sd zero, 192(s9)<br> |
|  30|[0x800033e0]<br>0x0000000010000090|- rs1 : x2<br> - rs2 : x17<br> - rd : x27<br> - rs2_h3_val == 256<br> - rs2_h2_val == 2048<br> - rs2_h0_val == 32767<br> - rs1_h3_val == 2<br> - rs1_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000a30]:KDMATT s11, sp, a7<br> [0x80000a34]:sd s11, 208(s9)<br>   |
|  31|[0x800033f0]<br>0xFFFFFFFFFFBEC007|- rs1 : x20<br> - rs2 : x31<br> - rd : x1<br> - rs2_h3_val == 128<br> - rs2_h1_val == 2048<br> - rs2_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000a6c]:KDMATT ra, s4, t6<br> [0x80000a70]:sd ra, 0(sp)<br>       |
|  32|[0x80003400]<br>0x000000000020F9F9|- rs1 : x16<br> - rs2 : x3<br> - rd : x21<br> - rs2_h3_val == 64<br> - rs2_h2_val == 4096<br> - rs2_h1_val == 256<br> - rs1_h1_val == -3<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000aa4]:KDMATT s5, a6, gp<br> [0x80000aa8]:sd s5, 16(sp)<br>      |
|  33|[0x80003410]<br>0x0000000008001402|- rs2_h3_val == 16<br> - rs2_h2_val == -21846<br> - rs2_h0_val == 512<br> - rs1_h2_val == 2<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000ad8]:KDMATT t6, t5, t4<br> [0x80000adc]:sd t6, 32(sp)<br>      |
|  34|[0x80003420]<br>0x0000000008001486|- rs2_h3_val == 8<br> - rs2_h0_val == -9<br> - rs1_h2_val == -129<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000b08]:KDMATT t6, t5, t4<br> [0x80000b0c]:sd t6, 48(sp)<br>      |
|  35|[0x80003430]<br>0x000000000800248A|- rs2_h3_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000b3c]:KDMATT t6, t5, t4<br> [0x80000b40]:sd t6, 64(sp)<br>      |
|  36|[0x80003440]<br>0x000000000800C494|- rs2_h2_val == -9<br> - rs1_h3_val == -2049<br> - rs1_h2_val == 128<br> - rs1_h1_val == -5<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000b74]:KDMATT t6, t5, t4<br> [0x80000b78]:sd t6, 80(sp)<br>      |
|  37|[0x80003450]<br>0x000000000811C494|- rs1_h2_val == -33<br> - rs1_h1_val == -32768<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000bb0]:KDMATT t6, t5, t4<br> [0x80000bb4]:sd t6, 96(sp)<br>      |
|  38|[0x80003460]<br>0x00000000080FC494|- rs2_h3_val == 1<br> - rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000be4]:KDMATT t6, t5, t4<br> [0x80000be8]:sd t6, 112(sp)<br>     |
|  39|[0x80003470]<br>0x00000000080FD494|- rs2_h1_val == 2<br> - rs1_h2_val == 4<br> - rs1_h1_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000c18]:KDMATT t6, t5, t4<br> [0x80000c1c]:sd t6, 128(sp)<br>     |
|  40|[0x80003480]<br>0x000000000810D494|- rs2_h1_val == 64<br> - rs2_h0_val == -16385<br> - rs1_h1_val == 512<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000c54]:KDMATT t6, t5, t4<br> [0x80000c58]:sd t6, 144(sp)<br>     |
|  41|[0x80003490]<br>0x000000000812D494|- rs2_h2_val == -32768<br> - rs2_h0_val == -3<br> - rs1_h2_val == 512<br> - rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000c8c]:KDMATT t6, t5, t4<br> [0x80000c90]:sd t6, 160(sp)<br>     |
|  42|[0x800034a0]<br>0x000000000812B484|- rs2_h2_val == 2<br> - rs2_h1_val == -513<br> - rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000cc0]:KDMATT t6, t5, t4<br> [0x80000cc4]:sd t6, 176(sp)<br>     |
|  43|[0x800034b0]<br>0x000000000812B37C|- rs1_h2_val == -21846<br> - rs1_h1_val == 4<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000cf0]:KDMATT t6, t5, t4<br> [0x80000cf4]:sd t6, 192(sp)<br>     |
|  44|[0x800034c0]<br>0x000000000812B77C|- rs2_h0_val == -2<br> - rs1_h2_val == 21845<br> - rs1_h1_val == 2<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000d28]:KDMATT t6, t5, t4<br> [0x80000d2c]:sd t6, 208(sp)<br>     |
|  45|[0x800034d0]<br>0x000000000812B77C|- rs2_h1_val == -129<br> - rs2_h0_val == 16384<br> - rs1_h2_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000d5c]:KDMATT t6, t5, t4<br> [0x80000d60]:sd t6, 224(sp)<br>     |
|  46|[0x800034e0]<br>0x00000000080DB77C|- rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000da0]:KDMATT t6, t5, t4<br> [0x80000da4]:sd t6, 240(sp)<br>     |
|  47|[0x800034f0]<br>0x00000000080DB744|- rs1_h3_val == 32767<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000ddc]:KDMATT t6, t5, t4<br> [0x80000de0]:sd t6, 256(sp)<br>     |
|  48|[0x80003500]<br>0x00000000080DB5BE|- rs2_h2_val == -2<br> - rs1_h3_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000e18]:KDMATT t6, t5, t4<br> [0x80000e1c]:sd t6, 272(sp)<br>     |
|  49|[0x80003510]<br>0x0000000007B7B614|- rs2_h0_val == 1024<br> - rs1_h3_val == 2048<br> - rs1_h1_val == 21845<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000e5c]:KDMATT t6, t5, t4<br> [0x80000e60]:sd t6, 288(sp)<br>     |
|  50|[0x80003520]<br>0x0000000007B3B618|- rs2_h2_val == -17<br> - rs2_h1_val == 21845<br> - rs1_h3_val == -65<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000e94]:KDMATT t6, t5, t4<br> [0x80000e98]:sd t6, 304(sp)<br>     |
|  51|[0x80003530]<br>0x0000000007B3B5EE|- rs2_h3_val == 2<br> - rs2_h0_val == 16<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000ed0]:KDMATT t6, t5, t4<br> [0x80000ed4]:sd t6, 320(sp)<br>     |
|  52|[0x80003540]<br>0x00000000079E606E|- rs2_h1_val == -21846<br> - rs1_h3_val == -3<br> - rs1_h2_val == 1024<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000f04]:KDMATT t6, t5, t4<br> [0x80000f08]:sd t6, 336(sp)<br>     |
|  53|[0x80003550]<br>0x00000000079E609E|- rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000f40]:KDMATT t6, t5, t4<br> [0x80000f44]:sd t6, 352(sp)<br>     |
|  54|[0x80003560]<br>0x0000000007A10B4E|- rs1_h2_val == 64<br> - rs1_h1_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000f7c]:KDMATT t6, t5, t4<br> [0x80000f80]:sd t6, 368(sp)<br>     |
|  55|[0x80003570]<br>0x0000000007E10A4E|- rs2_h1_val == 128<br> - rs1_h3_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000fb0]:KDMATT t6, t5, t4<br> [0x80000fb4]:sd t6, 384(sp)<br>     |
|  56|[0x80003580]<br>0x0000000007E10A4E|- rs2_h3_val == -1<br> - rs2_h2_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000fe8]:KDMATT t6, t5, t4<br> [0x80000fec]:sd t6, 400(sp)<br>     |
|  57|[0x80003590]<br>0x0000000007DF0A46|- rs2_h2_val == 8<br> - rs2_h1_val == 4<br> - rs1_h1_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x8000101c]:KDMATT t6, t5, t4<br> [0x80001020]:sd t6, 416(sp)<br>     |
|  58|[0x800035a0]<br>0x0000000007DF2A46|- rs2_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001058]:KDMATT t6, t5, t4<br> [0x8000105c]:sd t6, 432(sp)<br>     |
|  59|[0x800035b0]<br>0x0000000007DD2A42|- rs2_h0_val == -21846<br> - rs1_h2_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001098]:KDMATT t6, t5, t4<br> [0x8000109c]:sd t6, 448(sp)<br>     |
|  60|[0x800035c0]<br>0x0000000007ED6AC4|- rs2_h1_val == -65<br> - rs2_h0_val == -4097<br> - rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800010d8]:KDMATT t6, t5, t4<br> [0x800010dc]:sd t6, 464(sp)<br>     |
|  61|[0x800035d0]<br>0x0000000007ED6C44|- rs2_h0_val == -2049<br> - rs1_h3_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001114]:KDMATT t6, t5, t4<br> [0x80001118]:sd t6, 480(sp)<br>     |
|  62|[0x800035e0]<br>0x0000000007ED5C34|- rs2_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001150]:KDMATT t6, t5, t4<br> [0x80001154]:sd t6, 496(sp)<br>     |
|  63|[0x800035f0]<br>0x0000000007EDDC34|- rs2_h2_val == 64<br> - rs2_h1_val == 16<br> - rs2_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001184]:KDMATT t6, t5, t4<br> [0x80001188]:sd t6, 512(sp)<br>     |
|  64|[0x80003600]<br>0x0000000017EDBC34|- rs2_h2_val == 32<br> - rs2_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800011b8]:KDMATT t6, t5, t4<br> [0x800011bc]:sd t6, 528(sp)<br>     |
|  65|[0x80003610]<br>0x0000000017EDBC34|- rs2_h2_val == -2049<br> - rs2_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800011f4]:KDMATT t6, t5, t4<br> [0x800011f8]:sd t6, 544(sp)<br>     |
|  66|[0x80003620]<br>0x0000000017E5BBB4|- rs2_h2_val == -8193<br> - rs2_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001230]:KDMATT t6, t5, t4<br> [0x80001234]:sd t6, 560(sp)<br>     |
|  67|[0x80003630]<br>0x0000000017E5FBB4|- rs2_h0_val == 8192<br> - rs1_h2_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001268]:KDMATT t6, t5, t4<br> [0x8000126c]:sd t6, 576(sp)<br>     |
|  68|[0x80003640]<br>0x0000000017D5FBB4|- rs2_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x8000129c]:KDMATT t6, t5, t4<br> [0x800012a0]:sd t6, 592(sp)<br>     |
|  69|[0x80003650]<br>0x0000000017D5FBCC|- rs2_h2_val == -16385<br> - rs2_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800012d8]:KDMATT t6, t5, t4<br> [0x800012dc]:sd t6, 608(sp)<br>     |
|  70|[0x80003660]<br>0x0000000017D5F942|- rs2_h0_val == 8<br> - rs1_h3_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001314]:KDMATT t6, t5, t4<br> [0x80001318]:sd t6, 624(sp)<br>     |
|  71|[0x80003670]<br>0x0000000017D5F95A|- rs2_h0_val == 1<br> - rs1_h3_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001350]:KDMATT t6, t5, t4<br> [0x80001354]:sd t6, 640(sp)<br>     |
|  72|[0x80003680]<br>0x0000000017D6B960|- rs1_h3_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x8000138c]:KDMATT t6, t5, t4<br> [0x80001390]:sd t6, 656(sp)<br>     |
|  73|[0x800036a0]<br>0x0000000017D6A4F4|- rs2_h2_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001404]:KDMATT t6, t5, t4<br> [0x80001408]:sd t6, 688(sp)<br>     |
|  74|[0x800036b0]<br>0x0000000017D2A4F4|- rs2_h2_val == -1025<br> - rs2_h1_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001440]:KDMATT t6, t5, t4<br> [0x80001444]:sd t6, 704(sp)<br>     |
|  75|[0x800036c0]<br>0x0000000017D2A4F4|- rs1_h3_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x8000147c]:KDMATT t6, t5, t4<br> [0x80001480]:sd t6, 720(sp)<br>     |
|  76|[0x800036d0]<br>0x0000000017D2A4FC|- rs1_h3_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800014b8]:KDMATT t6, t5, t4<br> [0x800014bc]:sd t6, 736(sp)<br>     |
|  77|[0x800036e0]<br>0x0000000017529CFC|- rs1_h3_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800014f0]:KDMATT t6, t5, t4<br> [0x800014f4]:sd t6, 752(sp)<br>     |
|  78|[0x800036f0]<br>0x0000000017529CD2|- rs2_h2_val == 1024<br> - rs1_h2_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x8000152c]:KDMATT t6, t5, t4<br> [0x80001530]:sd t6, 768(sp)<br>     |
|  79|[0x80003700]<br>0x000000000CA75228|- rs1_h2_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x8000156c]:KDMATT t6, t5, t4<br> [0x80001570]:sd t6, 784(sp)<br>     |
|  80|[0x80003710]<br>0x000000000CA7526C|- rs1_h2_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800015a8]:KDMATT t6, t5, t4<br> [0x800015ac]:sd t6, 800(sp)<br>     |
|  81|[0x80003720]<br>0x000000000CA7D26C|- rs2_h2_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800015dc]:KDMATT t6, t5, t4<br> [0x800015e0]:sd t6, 816(sp)<br>     |
|  82|[0x80003730]<br>0x000000000C87526C|- rs1_h2_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001610]:KDMATT t6, t5, t4<br> [0x80001614]:sd t6, 832(sp)<br>     |
|  83|[0x80003740]<br>0x000000000C8752F0|- rs1_h2_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001648]:KDMATT t6, t5, t4<br> [0x8000164c]:sd t6, 848(sp)<br>     |
|  84|[0x80003750]<br>0x000000000C7751F0|- rs1_h3_val == -17<br> - rs1_h2_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001674]:KDMATT t6, t5, t4<br> [0x80001678]:sd t6, 864(sp)<br>     |
|  85|[0x80003760]<br>0x000000000C775196|- rs2_h1_val == -5<br> - rs1_h2_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800016ac]:KDMATT t6, t5, t4<br> [0x800016b0]:sd t6, 880(sp)<br>     |
|  86|[0x80003770]<br>0x0000000008774196|- rs2_h1_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800016e8]:KDMATT t6, t5, t4<br> [0x800016ec]:sd t6, 896(sp)<br>     |
|  87|[0x80003780]<br>0x0000000008794698|- rs1_h2_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001724]:KDMATT t6, t5, t4<br> [0x80001728]:sd t6, 912(sp)<br>     |
|  88|[0x800037a0]<br>0x0000000008786818|- rs1_h3_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001790]:KDMATT t6, t5, t4<br> [0x80001794]:sd t6, 944(sp)<br>     |
|  89|[0x800037b0]<br>0x0000000008786018|- rs1_h3_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800017c8]:KDMATT t6, t5, t4<br> [0x800017cc]:sd t6, 960(sp)<br>     |
|  90|[0x800037c0]<br>0x0000000008746018|- rs1_h2_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001804]:KDMATT t6, t5, t4<br> [0x80001808]:sd t6, 976(sp)<br>     |
|  91|[0x800037d0]<br>0x0000000008746098|- rs1_h3_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001840]:KDMATT t6, t5, t4<br> [0x80001844]:sd t6, 992(sp)<br>     |
|  92|[0x800037e0]<br>0x00000000086B60AA|- rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001874]:KDMATT t6, t5, t4<br> [0x80001878]:sd t6, 1008(sp)<br>    |
|  93|[0x800037f0]<br>0x00000000186B20AA|- rs2_h1_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800018a8]:KDMATT t6, t5, t4<br> [0x800018ac]:sd t6, 1024(sp)<br>    |
|  94|[0x80003800]<br>0x00000000182B10AA|- rs1_h1_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800018e0]:KDMATT t6, t5, t4<br> [0x800018e4]:sd t6, 1040(sp)<br>    |
|  95|[0x80003810]<br>0x00000000182B522C|- rs1_h1_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x8000191c]:KDMATT t6, t5, t4<br> [0x80001920]:sd t6, 1056(sp)<br>    |
|  96|[0x80003820]<br>0x00000000182B532C|- rs2_h2_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001950]:KDMATT t6, t5, t4<br> [0x80001954]:sd t6, 1072(sp)<br>    |
|  97|[0x80003830]<br>0x00000000182C634E|- rs1_h1_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001984]:KDMATT t6, t5, t4<br> [0x80001988]:sd t6, 1088(sp)<br>    |
|  98|[0x80003840]<br>0x00000000182C63B4|- rs1_h0_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800019bc]:KDMATT t6, t5, t4<br> [0x800019c0]:sd t6, 1104(sp)<br>    |
