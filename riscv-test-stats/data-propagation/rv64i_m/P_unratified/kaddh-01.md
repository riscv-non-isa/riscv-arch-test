
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
| COV_LABELS                | kaddh      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kaddh-01.S    |
| Total Number of coverpoints| 420     |
| Total Coverpoints Hit     | 414      |
| Total Signature Updates   | 200      |
| STAT1                     | 97      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 100     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800014f0]:KADDH t6, t5, t4
      [0x800014f4]:sd t6, 784(ra)
 -- Signature Address: 0x800036e0 Data: 0xFFFFFFFFFFFF8000
 -- Redundant Coverpoints hit by the op
      - opcode : kaddh
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h3_val == -2
      - rs2_h2_val == 256
      - rs2_h0_val == 16
      - rs1_h3_val == 0
      - rs1_h2_val == 21845
      - rs1_h1_val == -3




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001524]:KADDH t6, t5, t4
      [0x80001528]:sd t6, 800(ra)
 -- Signature Address: 0x800036f0 Data: 0xFFFFFFFFFFFF8000
 -- Redundant Coverpoints hit by the op
      - opcode : kaddh
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h2_val == 8192
      - rs2_h1_val == -33
      - rs2_h0_val == -5
      - rs1_h3_val == 8
      - rs1_h2_val == -21846
      - rs1_h0_val == -129




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001984]:KADDH t6, t5, t4
      [0x80001988]:sd t6, 1120(ra)
 -- Signature Address: 0x80003830 Data: 0xFFFFFFFFFFFF8000
 -- Redundant Coverpoints hit by the op
      - opcode : kaddh
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h1_val == rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h3_val == 64
      - rs2_h2_val == 0
      - rs2_h1_val == -33
      - rs2_h0_val == 21845
      - rs1_h3_val == -1025
      - rs1_h2_val == -17
      - rs1_h1_val == -33
      - rs1_h0_val == -16385






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kaddh', 'rs1 : x27', 'rs2 : x27', 'rd : x22', 'rs1 == rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val == rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h2_val == -21846', 'rs2_h1_val == 256', 'rs2_h0_val == 1024', 'rs1_h2_val == -21846', 'rs1_h1_val == 256', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x800003c8]:KADDH s6, s11, s11
	-[0x800003cc]:sd s6, 0(fp)
Current Store : [0x800003d0] : sd s11, 8(fp) -- Store: [0x80003218]:0xFFFAAAAA01000400




Last Coverpoint : ['rs1 : x2', 'rs2 : x2', 'rd : x2', 'rs1 == rs2 == rd', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs2_h2_val == -5', 'rs2_h1_val == 64', 'rs2_h0_val == 1', 'rs1_h2_val == -5', 'rs1_h1_val == 64', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80000404]:KADDH sp, sp, sp
	-[0x80000408]:sd sp, 16(fp)
Current Store : [0x8000040c] : sd sp, 24(fp) -- Store: [0x80003228]:0x0000000000007FFF




Last Coverpoint : ['rs1 : x19', 'rs2 : x12', 'rd : x6', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h2_val == 512', 'rs2_h1_val == 1024', 'rs2_h0_val == -16385', 'rs1_h2_val == 32767', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x80000440]:KADDH t1, s3, a2
	-[0x80000444]:sd t1, 32(fp)
Current Store : [0x80000448] : sd s3, 40(fp) -- Store: [0x80003238]:0xFFF97FFF3FFFBFFF




Last Coverpoint : ['rs1 : x13', 'rs2 : x23', 'rd : x13', 'rs1 == rd != rs2', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h3_val == -65', 'rs2_h2_val == 128', 'rs2_h1_val == -1', 'rs2_h0_val == -8193', 'rs1_h3_val == 1', 'rs1_h2_val == -2', 'rs1_h1_val == 1', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x8000047c]:KADDH a3, a3, s7
	-[0x80000480]:sd a3, 48(fp)
Current Store : [0x80000484] : sd a3, 56(fp) -- Store: [0x80003248]:0x0000000000007FFF




Last Coverpoint : ['rs1 : x1', 'rs2 : x29', 'rd : x29', 'rs2 == rd != rs1', 'rs2_h3_val == -1025', 'rs2_h2_val == 0', 'rs2_h1_val == -33', 'rs2_h0_val == 2048', 'rs1_h3_val == -129', 'rs1_h2_val == 0', 'rs1_h1_val == 2048', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x800004b0]:KADDH t4, ra, t4
	-[0x800004b4]:sd t4, 64(fp)
Current Store : [0x800004b8] : sd ra, 72(fp) -- Store: [0x80003258]:0xFF7F000008000002




Last Coverpoint : ['rs1 : x30', 'rs2 : x5', 'rd : x0', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == 64', 'rs2_h0_val == 21845', 'rs1_h3_val == -1025', 'rs1_h2_val == -17', 'rs1_h1_val == -33']
Last Code Sequence : 
	-[0x800004ec]:KADDH zero, t5, t0
	-[0x800004f0]:sd zero, 80(fp)
Current Store : [0x800004f4] : sd t5, 88(fp) -- Store: [0x80003268]:0xFBFFFFEFFFDFBFFF




Last Coverpoint : ['rs1 : x17', 'rs2 : x30', 'rd : x21', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == 16384', 'rs2_h1_val == 16384', 'rs1_h3_val == -9', 'rs1_h2_val == -1', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80000524]:KADDH s5, a7, t5
	-[0x80000528]:sd s5, 96(fp)
Current Store : [0x8000052c] : sd a7, 104(fp) -- Store: [0x80003278]:0xFFF7FFFFFFDF0020




Last Coverpoint : ['rs1 : x7', 'rs2 : x28', 'rd : x9', 'rs2_h3_val == -21846', 'rs1_h3_val == 32767', 'rs1_h2_val == 8', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000560]:KADDH s1, t2, t3
	-[0x80000564]:sd s1, 112(fp)
Current Store : [0x80000568] : sd t2, 120(fp) -- Store: [0x80003288]:0x7FFF0008FFFA0100




Last Coverpoint : ['rs1 : x6', 'rs2 : x9', 'rd : x28', 'rs2_h3_val == 21845', 'rs2_h2_val == 16', 'rs2_h1_val == 16', 'rs1_h3_val == -4097']
Last Code Sequence : 
	-[0x800005a0]:KADDH t3, t1, s1
	-[0x800005a4]:sd t3, 128(fp)
Current Store : [0x800005a8] : sd t1, 136(fp) -- Store: [0x80003298]:0xEFFFFFFC0800FFFC




Last Coverpoint : ['rs1 : x12', 'rs2 : x10', 'rd : x16', 'rs2_h3_val == 32767', 'rs2_h0_val == -17', 'rs1_h1_val == 16']
Last Code Sequence : 
	-[0x800005d4]:KADDH a6, a2, a0
	-[0x800005d8]:sd a6, 144(fp)
Current Store : [0x800005dc] : sd a2, 152(fp) -- Store: [0x800032a8]:0xFFFC000800100400




Last Coverpoint : ['rs1 : x28', 'rs2 : x4', 'rd : x20', 'rs2_h3_val == -16385', 'rs2_h2_val == 2', 'rs1_h1_val == 16384', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x8000061c]:KADDH s4, t3, tp
	-[0x80000620]:sd s4, 160(fp)
Current Store : [0x80000624] : sd t3, 168(fp) -- Store: [0x800032b8]:0x7FFFFFFC4000FFBF




Last Coverpoint : ['rs1 : x3', 'rs2 : x7', 'rd : x31', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs2_h3_val == -8193', 'rs2_h0_val == 2', 'rs1_h3_val == -5', 'rs1_h2_val == 16384', 'rs1_h1_val == -513', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000650]:KADDH t6, gp, t2
	-[0x80000654]:sd t6, 176(fp)
Current Store : [0x80000658] : sd gp, 184(fp) -- Store: [0x800032c8]:0xFFFB4000FDFFFDFF




Last Coverpoint : ['rs1 : x15', 'rs2 : x31', 'rd : x19', 'rs2_h3_val == -4097', 'rs2_h2_val == 8', 'rs1_h3_val == 4', 'rs1_h2_val == -33', 'rs1_h1_val == -1', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000684]:KADDH s3, a5, t6
	-[0x80000688]:sd s3, 192(fp)
Current Store : [0x8000068c] : sd a5, 200(fp) -- Store: [0x800032d8]:0x0004FFDFFFFFFFDF




Last Coverpoint : ['rs1 : x10', 'rs2 : x24', 'rd : x11', 'rs2_h3_val == -2049', 'rs2_h2_val == -257', 'rs2_h1_val == 8192', 'rs2_h0_val == 0', 'rs1_h3_val == 64', 'rs1_h2_val == -1025', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x800006ac]:KADDH a1, a0, s8
	-[0x800006b0]:sd a1, 208(fp)
Current Store : [0x800006b4] : sd a0, 216(fp) -- Store: [0x800032e8]:0x0040FBFF40000200




Last Coverpoint : ['rs1 : x18', 'rs2 : x1', 'rd : x14', 'rs2_h3_val == -513', 'rs2_h2_val == 4096', 'rs2_h0_val == -3', 'rs1_h3_val == -2', 'rs1_h2_val == 16']
Last Code Sequence : 
	-[0x800006e8]:KADDH a4, s2, ra
	-[0x800006ec]:sd a4, 224(fp)
Current Store : [0x800006f0] : sd s2, 232(fp) -- Store: [0x800032f8]:0xFFFE0010FFDF0020




Last Coverpoint : ['rs1 : x21', 'rs2 : x20', 'rd : x17', 'rs2_h3_val == -257', 'rs2_h2_val == -4097', 'rs1_h3_val == 128', 'rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x8000072c]:KADDH a7, s5, s4
	-[0x80000730]:sd a7, 0(sp)
Current Store : [0x80000734] : sd s5, 8(sp) -- Store: [0x80003308]:0x0080FFF62000FDFF




Last Coverpoint : ['rs1 : x25', 'rs2 : x15', 'rd : x7', 'rs2_h3_val == -129', 'rs2_h1_val == -1025', 'rs2_h0_val == -1', 'rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x80000758]:KADDH t2, s9, a5
	-[0x8000075c]:sd t2, 16(sp)
Current Store : [0x80000760] : sd s9, 24(sp) -- Store: [0x80003318]:0xC000FFFE7FFFFFBF




Last Coverpoint : ['rs1 : x29', 'rs2 : x11', 'rd : x3', 'rs1_h0_val == -32768', 'rs2_h3_val == -33', 'rs2_h1_val == 512', 'rs2_h0_val == 512', 'rs1_h3_val == -33']
Last Code Sequence : 
	-[0x80000788]:KADDH gp, t4, a1
	-[0x8000078c]:sd gp, 32(sp)
Current Store : [0x80000790] : sd t4, 40(sp) -- Store: [0x80003328]:0xFFDFFFF8FFFC8000




Last Coverpoint : ['rs1 : x14', 'rs2 : x18', 'rd : x27', 'rs2_h3_val == -17', 'rs2_h1_val == -2049', 'rs2_h0_val == 256', 'rs1_h1_val == 21845', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x800007c0]:KADDH s11, a4, s2
	-[0x800007c4]:sd s11, 48(sp)
Current Store : [0x800007c8] : sd a4, 56(sp) -- Store: [0x80003338]:0xFFF9000055550000




Last Coverpoint : ['rs1 : x23', 'rs2 : x6', 'rd : x30', 'rs2_h3_val == -9', 'rs2_h1_val == -257', 'rs1_h3_val == -17', 'rs1_h2_val == -257', 'rs1_h1_val == -129', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x800007f4]:KADDH t5, s7, t1
	-[0x800007f8]:sd t5, 64(sp)
Current Store : [0x800007fc] : sd s7, 72(sp) -- Store: [0x80003348]:0xFFEFFEFFFF7FAAAA




Last Coverpoint : ['rs1 : x24', 'rs2 : x8', 'rd : x4', 'rs2_h3_val == -5', 'rs2_h1_val == 1', 'rs1_h2_val == 2048', 'rs1_h1_val == 0']
Last Code Sequence : 
	-[0x80000824]:KADDH tp, s8, fp
	-[0x80000828]:sd tp, 80(sp)
Current Store : [0x8000082c] : sd s8, 88(sp) -- Store: [0x80003358]:0xFFFE080000000001




Last Coverpoint : ['rs1 : x4', 'rs2 : x13', 'rd : x24', 'rs2_h3_val == -3', 'rs2_h1_val == -129', 'rs2_h0_val == -2049', 'rs1_h3_val == -1', 'rs1_h2_val == -16385', 'rs1_h1_val == -2', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000858]:KADDH s8, tp, a3
	-[0x8000085c]:sd s8, 96(sp)
Current Store : [0x80000860] : sd tp, 104(sp) -- Store: [0x80003368]:0xFFFFBFFFFFFEFF7F




Last Coverpoint : ['rs1 : x5', 'rs2 : x3', 'rd : x8', 'rs2_h3_val == -2', 'rs2_h2_val == 32', 'rs2_h1_val == 128']
Last Code Sequence : 
	-[0x80000894]:KADDH fp, t0, gp
	-[0x80000898]:sd fp, 112(sp)
Current Store : [0x8000089c] : sd t0, 120(sp) -- Store: [0x80003378]:0xFFF8FFFC0006AAAA




Last Coverpoint : ['rs1 : x9', 'rs2 : x17', 'rd : x15', 'rs2_h3_val == -32768', 'rs2_h2_val == 1', 'rs2_h0_val == 128']
Last Code Sequence : 
	-[0x800008d0]:KADDH a5, s1, a7
	-[0x800008d4]:sd a5, 128(sp)
Current Store : [0x800008d8] : sd s1, 136(sp) -- Store: [0x80003388]:0x3FFF0000FF7F0200




Last Coverpoint : ['rs1 : x0', 'rs2 : x22', 'rd : x12', 'rs2_h3_val == 8192', 'rs2_h0_val == 8192', 'rs1_h3_val == 0']
Last Code Sequence : 
	-[0x80000910]:KADDH a2, zero, s6
	-[0x80000914]:sd a2, 144(sp)
Current Store : [0x80000918] : sd zero, 152(sp) -- Store: [0x80003398]:0x0000000000000000




Last Coverpoint : ['rs1 : x22', 'rs2 : x14', 'rd : x23', 'rs2_h3_val == 4096', 'rs2_h1_val == -4097', 'rs2_h0_val == 4']
Last Code Sequence : 
	-[0x80000948]:KADDH s7, s6, a4
	-[0x8000094c]:sd s7, 160(sp)
Current Store : [0x80000950] : sd s6, 168(sp) -- Store: [0x800033a8]:0x0080FFFEC0000003




Last Coverpoint : ['rs1 : x8', 'rs2 : x16', 'rd : x26', 'rs2_h3_val == 2048', 'rs2_h2_val == -3', 'rs2_h1_val == -513', 'rs1_h1_val == 32', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x8000097c]:KADDH s10, fp, a6
	-[0x80000980]:sd s10, 176(sp)
Current Store : [0x80000984] : sd fp, 184(sp) -- Store: [0x800033b8]:0x0004FFEF00200080




Last Coverpoint : ['rs1 : x31', 'rs2 : x0', 'rd : x1', 'rs2_h3_val == 0', 'rs2_h1_val == 0', 'rs1_h1_val == 8', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x800009b8]:KADDH ra, t6, zero
	-[0x800009bc]:sd ra, 192(sp)
Current Store : [0x800009c0] : sd t6, 200(sp) -- Store: [0x800033c8]:0xC000FFF60008FEFF




Last Coverpoint : ['rs1 : x11', 'rs2 : x21', 'rd : x25', 'rs2_h3_val == 512', 'rs2_h2_val == -65', 'rs2_h1_val == -9', 'rs1_h3_val == 21845', 'rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x80000a04]:KADDH s9, a1, s5
	-[0x80000a08]:sd s9, 0(ra)
Current Store : [0x80000a0c] : sd a1, 8(ra) -- Store: [0x800033d8]:0x5555FFFBEFFF0200




Last Coverpoint : ['rs1 : x20', 'rs2 : x19', 'rd : x10', 'rs2_h3_val == 256', 'rs2_h2_val == -2', 'rs2_h1_val == -21846', 'rs1_h3_val == -2049']
Last Code Sequence : 
	-[0x80000a40]:KADDH a0, s4, s3
	-[0x80000a44]:sd a0, 16(ra)
Current Store : [0x80000a48] : sd s4, 24(ra) -- Store: [0x800033e8]:0xF7FFFEFF01000200




Last Coverpoint : ['rs1 : x16', 'rs2 : x26', 'rd : x18', 'rs2_h3_val == 128', 'rs2_h2_val == -513', 'rs1_h3_val == 4096']
Last Code Sequence : 
	-[0x80000a7c]:KADDH s2, a6, s10
	-[0x80000a80]:sd s2, 32(ra)
Current Store : [0x80000a84] : sd a6, 40(ra) -- Store: [0x800033f8]:0x1000FFFAEFFFFFFA




Last Coverpoint : ['rs1 : x26', 'rs2 : x25', 'rd : x5', 'rs2_h3_val == 32', 'rs2_h1_val == -16385']
Last Code Sequence : 
	-[0x80000ab0]:KADDH t0, s10, s9
	-[0x80000ab4]:sd t0, 48(ra)
Current Store : [0x80000ab8] : sd s10, 56(ra) -- Store: [0x80003408]:0xFFFE0010FFDFFBFF




Last Coverpoint : ['rs2_h3_val == 16', 'rs2_h2_val == -2049', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000ae8]:KADDH t6, t5, t4
	-[0x80000aec]:sd t6, 64(ra)
Current Store : [0x80000af0] : sd t5, 72(ra) -- Store: [0x80003418]:0x5555FFF90001FFF7




Last Coverpoint : ['rs2_h3_val == 8', 'rs2_h0_val == -257', 'rs1_h3_val == 32', 'rs1_h2_val == -129']
Last Code Sequence : 
	-[0x80000b20]:KADDH t6, t5, t4
	-[0x80000b24]:sd t6, 80(ra)
Current Store : [0x80000b28] : sd t5, 88(ra) -- Store: [0x80003428]:0x0020FF7F00100000




Last Coverpoint : ['rs2_h3_val == 4', 'rs1_h2_val == -32768']
Last Code Sequence : 
	-[0x80000b5c]:KADDH t6, t5, t4
	-[0x80000b60]:sd t6, 96(ra)
Current Store : [0x80000b64] : sd t5, 104(ra) -- Store: [0x80003438]:0x00208000FFFAFFF6




Last Coverpoint : ['rs2_h2_val == -33', 'rs2_h1_val == -8193', 'rs2_h0_val == -9', 'rs1_h1_val == -5', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000b90]:KADDH t6, t5, t4
	-[0x80000b94]:sd t6, 112(ra)
Current Store : [0x80000b98] : sd t5, 120(ra) -- Store: [0x80003448]:0xFFEF4000FFFBFFEF




Last Coverpoint : ['rs2_h0_val == -1025', 'rs1_h1_val == -3']
Last Code Sequence : 
	-[0x80000bcc]:KADDH t6, t5, t4
	-[0x80000bd0]:sd t6, 128(ra)
Current Store : [0x80000bd4] : sd t5, 136(ra) -- Store: [0x80003458]:0xFF7FFFF8FFFD0006




Last Coverpoint : ['rs2_h1_val == -5', 'rs2_h0_val == -21846', 'rs1_h1_val == -32768', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000c08]:KADDH t6, t5, t4
	-[0x80000c0c]:sd t6, 144(ra)
Current Store : [0x80000c10] : sd t5, 152(ra) -- Store: [0x80003468]:0x000500058000F7FF




Last Coverpoint : ['rs1_h3_val == 2', 'rs1_h2_val == -8193', 'rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x80000c4c]:KADDH t6, t5, t4
	-[0x80000c50]:sd t6, 160(ra)
Current Store : [0x80000c54] : sd t5, 168(ra) -- Store: [0x80003478]:0x0002DFFF1000FF7F




Last Coverpoint : ['rs2_h2_val == -1', 'rs2_h0_val == 16384', 'rs1_h3_val == 2048', 'rs1_h1_val == 128']
Last Code Sequence : 
	-[0x80000c80]:KADDH t6, t5, t4
	-[0x80000c84]:sd t6, 176(ra)
Current Store : [0x80000c88] : sd t5, 184(ra) -- Store: [0x80003488]:0x0800FFFF00800006




Last Coverpoint : ['rs2_h0_val == -513', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x80000cbc]:KADDH t6, t5, t4
	-[0x80000cc0]:sd t6, 192(ra)
Current Store : [0x80000cc4] : sd t5, 200(ra) -- Store: [0x80003498]:0x7FFFFFFA0040FFFF




Last Coverpoint : ['rs2_h0_val == -4097', 'rs1_h3_val == 16', 'rs1_h2_val == 512', 'rs1_h1_val == 4']
Last Code Sequence : 
	-[0x80000cec]:KADDH t6, t5, t4
	-[0x80000cf0]:sd t6, 208(ra)
Current Store : [0x80000cf4] : sd t5, 216(ra) -- Store: [0x800034a8]:0x0010020000040000




Last Coverpoint : ['rs1_h1_val == 2']
Last Code Sequence : 
	-[0x80000d24]:KADDH t6, t5, t4
	-[0x80000d28]:sd t6, 224(ra)
Current Store : [0x80000d2c] : sd t5, 232(ra) -- Store: [0x800034b8]:0xFFF7FFFB0002FFEF




Last Coverpoint : ['rs2_h2_val == 4', 'rs2_h0_val == 32767', 'rs1_h3_val == 8', 'rs1_h2_val == 32', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000d60]:KADDH t6, t5, t4
	-[0x80000d64]:sd t6, 240(ra)
Current Store : [0x80000d68] : sd t5, 248(ra) -- Store: [0x800034c8]:0x0008002001005555




Last Coverpoint : ['rs2_h2_val == 256', 'rs1_h3_val == -21846', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000d9c]:KADDH t6, t5, t4
	-[0x80000da0]:sd t6, 256(ra)
Current Store : [0x80000da4] : sd t5, 264(ra) -- Store: [0x800034d8]:0xAAAAFFF6FDFF7FFF




Last Coverpoint : ['rs2_h3_val == 2', 'rs1_h2_val == 8192', 'rs1_h1_val == -21846', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000dd8]:KADDH t6, t5, t4
	-[0x80000ddc]:sd t6, 272(ra)
Current Store : [0x80000de0] : sd t5, 280(ra) -- Store: [0x800034e8]:0xFFFF2000AAAADFFF




Last Coverpoint : ['rs2_h2_val == 8192', 'rs2_h1_val == -2', 'rs2_h0_val == -5', 'rs1_h1_val == -1025', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80000e14]:KADDH t6, t5, t4
	-[0x80000e18]:sd t6, 288(ra)
Current Store : [0x80000e1c] : sd t5, 296(ra) -- Store: [0x800034f8]:0x0001FFF9FBFFEFFF




Last Coverpoint : ['rs2_h2_val == -17', 'rs1_h3_val == 1024', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000e4c]:KADDH t6, t5, t4
	-[0x80000e50]:sd t6, 304(ra)
Current Store : [0x80000e54] : sd t5, 312(ra) -- Store: [0x80003508]:0x0400C0005555FFFB




Last Coverpoint : ['rs2_h2_val == 2048', 'rs2_h1_val == 32', 'rs2_h0_val == 8', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000e78]:KADDH t6, t5, t4
	-[0x80000e7c]:sd t6, 320(ra)
Current Store : [0x80000e80] : sd t5, 328(ra) -- Store: [0x80003518]:0xFFFF0007FBFFFFFD




Last Coverpoint : ['rs1_h3_val == -3', 'rs1_h1_val == -17', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000eac]:KADDH t6, t5, t4
	-[0x80000eb0]:sd t6, 336(ra)
Current Store : [0x80000eb4] : sd t5, 344(ra) -- Store: [0x80003528]:0xFFFDFBFFFFEF4000




Last Coverpoint : ['rs2_h2_val == 32767', 'rs2_h1_val == 8', 'rs1_h1_val == -8193', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000ee4]:KADDH t6, t5, t4
	-[0x80000ee8]:sd t6, 352(ra)
Current Store : [0x80000eec] : sd t5, 360(ra) -- Store: [0x80003538]:0x0400FFFEDFFF2000




Last Coverpoint : ['rs1_h3_val == 256', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000f24]:KADDH t6, t5, t4
	-[0x80000f28]:sd t6, 368(ra)
Current Store : [0x80000f2c] : sd t5, 376(ra) -- Store: [0x80003548]:0x0100000900801000




Last Coverpoint : ['rs2_h0_val == -129', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000f60]:KADDH t6, t5, t4
	-[0x80000f64]:sd t6, 384(ra)
Current Store : [0x80000f68] : sd t5, 392(ra) -- Store: [0x80003558]:0xFFFC400055550800




Last Coverpoint : ['rs2_h1_val == 4', 'rs2_h0_val == -2']
Last Code Sequence : 
	-[0x80000f9c]:KADDH t6, t5, t4
	-[0x80000fa0]:sd t6, 400(ra)
Current Store : [0x80000fa4] : sd t5, 408(ra) -- Store: [0x80003568]:0x3FFF080000080400




Last Coverpoint : ['rs2_h1_val == 2', 'rs1_h2_val == -9']
Last Code Sequence : 
	-[0x80000fd4]:KADDH t6, t5, t4
	-[0x80000fd8]:sd t6, 416(ra)
Current Store : [0x80000fdc] : sd t5, 424(ra) -- Store: [0x80003578]:0x0020FFF700010006




Last Coverpoint : ['rs2_h0_val == -65']
Last Code Sequence : 
	-[0x80001008]:KADDH t6, t5, t4
	-[0x8000100c]:sd t6, 432(ra)
Current Store : [0x80001010] : sd t5, 440(ra) -- Store: [0x80003588]:0xFFFC0009FFDFFEFF




Last Coverpoint : ['rs2_h0_val == -33']
Last Code Sequence : 
	-[0x80001044]:KADDH t6, t5, t4
	-[0x80001048]:sd t6, 448(ra)
Current Store : [0x8000104c] : sd t5, 456(ra) -- Store: [0x80003598]:0xFFFDFFFBFFFA7FFF




Last Coverpoint : ['rs2_h0_val == -32768']
Last Code Sequence : 
	-[0x8000107c]:KADDH t6, t5, t4
	-[0x80001080]:sd t6, 464(ra)
Current Store : [0x80001084] : sd t5, 472(ra) -- Store: [0x800035a8]:0x0006FFFB00020080




Last Coverpoint : ['rs2_h0_val == 4096']
Last Code Sequence : 
	-[0x800010b0]:KADDH t6, t5, t4
	-[0x800010b4]:sd t6, 480(ra)
Current Store : [0x800010b8] : sd t5, 488(ra) -- Store: [0x800035b8]:0xFFF8FBFFAAAA2000




Last Coverpoint : ['rs2_h0_val == 64']
Last Code Sequence : 
	-[0x800010e8]:KADDH t6, t5, t4
	-[0x800010ec]:sd t6, 496(ra)
Current Store : [0x800010f0] : sd t5, 504(ra) -- Store: [0x800035c8]:0x0009DFFFFFF8FFF8




Last Coverpoint : ['rs2_h3_val == -1', 'rs2_h2_val == -16385', 'rs2_h1_val == -65', 'rs2_h0_val == 32']
Last Code Sequence : 
	-[0x80001114]:KADDH t6, t5, t4
	-[0x80001118]:sd t6, 512(ra)
Current Store : [0x8000111c] : sd t5, 520(ra) -- Store: [0x800035d8]:0xFFFF000700800006




Last Coverpoint : ['rs2_h0_val == 16']
Last Code Sequence : 
	-[0x80001150]:KADDH t6, t5, t4
	-[0x80001154]:sd t6, 528(ra)
Current Store : [0x80001158] : sd t5, 536(ra) -- Store: [0x800035e8]:0xFFFC00060004FFFF




Last Coverpoint : ['rs1_h3_val == -16385']
Last Code Sequence : 
	-[0x8000118c]:KADDH t6, t5, t4
	-[0x80001190]:sd t6, 544(ra)
Current Store : [0x80001194] : sd t5, 552(ra) -- Store: [0x800035f8]:0xBFFFDFFFFDFF0006




Last Coverpoint : ['rs1_h3_val == -8193']
Last Code Sequence : 
	-[0x800011cc]:KADDH t6, t5, t4
	-[0x800011d0]:sd t6, 560(ra)
Current Store : [0x800011d4] : sd t5, 568(ra) -- Store: [0x80003608]:0xDFFF00030800FFF7




Last Coverpoint : ['rs1_h2_val == -2049', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80001200]:KADDH t6, t5, t4
	-[0x80001204]:sd t6, 576(ra)
Current Store : [0x80001208] : sd t5, 584(ra) -- Store: [0x80003618]:0xFBFFF7FF00200040




Last Coverpoint : ['rs1_h2_val == 21845', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80001244]:KADDH t6, t5, t4
	-[0x80001248]:sd t6, 592(ra)
Current Store : [0x8000124c] : sd t5, 600(ra) -- Store: [0x80003628]:0x7FFF5555DFFF0010




Last Coverpoint : ['rs1_h3_val == -513', 'rs1_h2_val == 4']
Last Code Sequence : 
	-[0x80001280]:KADDH t6, t5, t4
	-[0x80001284]:sd t6, 608(ra)
Current Store : [0x80001288] : sd t5, 616(ra) -- Store: [0x80003638]:0xFDFF00040800F7FF




Last Coverpoint : ['rs1_h2_val == -513', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x800012bc]:KADDH t6, t5, t4
	-[0x800012c0]:sd t6, 624(ra)
Current Store : [0x800012c4] : sd t5, 632(ra) -- Store: [0x80003648]:0x3FFFFDFF00400008




Last Coverpoint : ['rs2_h3_val == 1024', 'rs2_h2_val == -1025', 'rs1_h3_val == -257', 'rs1_h2_val == 64']
Last Code Sequence : 
	-[0x800012f8]:KADDH t6, t5, t4
	-[0x800012fc]:sd t6, 640(ra)
Current Store : [0x80001300] : sd t5, 648(ra) -- Store: [0x80003658]:0xFEFF0040FFFEFFFC




Last Coverpoint : ['rs1_h0_val == 4']
Last Code Sequence : 
	-[0x8000132c]:KADDH t6, t5, t4
	-[0x80001330]:sd t6, 656(ra)
Current Store : [0x80001334] : sd t5, 664(ra) -- Store: [0x80003668]:0x0007000020000004




Last Coverpoint : ['rs1_h3_val == -65', 'rs1_h1_val == -257', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80001358]:KADDH t6, t5, t4
	-[0x8000135c]:sd t6, 672(ra)
Current Store : [0x80001360] : sd t5, 680(ra) -- Store: [0x80003678]:0xFFBF0009FEFFFFFE




Last Coverpoint : ['rs2_h3_val == 1', 'rs2_h2_val == -32768', 'rs2_h1_val == -17']
Last Code Sequence : 
	-[0x80001394]:KADDH t6, t5, t4
	-[0x80001398]:sd t6, 688(ra)
Current Store : [0x8000139c] : sd t5, 696(ra) -- Store: [0x80003688]:0x040000008000FFFE




Last Coverpoint : ['rs2_h1_val == 32767', 'rs1_h3_val == -32768']
Last Code Sequence : 
	-[0x800013cc]:KADDH t6, t5, t4
	-[0x800013d0]:sd t6, 704(ra)
Current Store : [0x800013d4] : sd t5, 712(ra) -- Store: [0x80003698]:0x80000040DFFFFFFF




Last Coverpoint : ['rs2_h2_val == -8193']
Last Code Sequence : 
	-[0x80001408]:KADDH t6, t5, t4
	-[0x8000140c]:sd t6, 720(ra)
Current Store : [0x80001410] : sd t5, 728(ra) -- Store: [0x800036a8]:0xFFEFFEFFFFFD7FFF




Last Coverpoint : ['rs1_h3_val == 512', 'rs1_h2_val == 4096']
Last Code Sequence : 
	-[0x8000144c]:KADDH t6, t5, t4
	-[0x80001450]:sd t6, 736(ra)
Current Store : [0x80001454] : sd t5, 744(ra) -- Store: [0x800036b8]:0x0200100000100400




Last Coverpoint : ['rs2_h2_val == -129']
Last Code Sequence : 
	-[0x80001480]:KADDH t6, t5, t4
	-[0x80001484]:sd t6, 752(ra)
Current Store : [0x80001488] : sd t5, 760(ra) -- Store: [0x800036c8]:0x0006FFDFFBFF0007




Last Coverpoint : ['rs2_h2_val == -9']
Last Code Sequence : 
	-[0x800014bc]:KADDH t6, t5, t4
	-[0x800014c0]:sd t6, 768(ra)
Current Store : [0x800014c4] : sd t5, 776(ra) -- Store: [0x800036d8]:0x3FFF80003FFFFDFF




Last Coverpoint : ['opcode : kaddh', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == -2', 'rs2_h2_val == 256', 'rs2_h0_val == 16', 'rs1_h3_val == 0', 'rs1_h2_val == 21845', 'rs1_h1_val == -3']
Last Code Sequence : 
	-[0x800014f0]:KADDH t6, t5, t4
	-[0x800014f4]:sd t6, 784(ra)
Current Store : [0x800014f8] : sd t5, 792(ra) -- Store: [0x800036e8]:0x00005555FFFD0005




Last Coverpoint : ['opcode : kaddh', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h2_val == 8192', 'rs2_h1_val == -33', 'rs2_h0_val == -5', 'rs1_h3_val == 8', 'rs1_h2_val == -21846', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80001524]:KADDH t6, t5, t4
	-[0x80001528]:sd t6, 800(ra)
Current Store : [0x8000152c] : sd t5, 808(ra) -- Store: [0x800036f8]:0x0008AAAA0007FF7F




Last Coverpoint : ['rs2_h2_val == 1024']
Last Code Sequence : 
	-[0x80001560]:KADDH t6, t5, t4
	-[0x80001564]:sd t6, 816(ra)
Current Store : [0x80001568] : sd t5, 824(ra) -- Store: [0x80003708]:0xFBFFDFFFFBFFFFFC




Last Coverpoint : ['rs2_h1_val == 2048']
Last Code Sequence : 
	-[0x80001594]:KADDH t6, t5, t4
	-[0x80001598]:sd t6, 832(ra)
Current Store : [0x8000159c] : sd t5, 840(ra) -- Store: [0x80003718]:0x0003F7FFFFFB8000




Last Coverpoint : ['rs2_h2_val == 64', 'rs1_h2_val == -3']
Last Code Sequence : 
	-[0x800015d4]:KADDH t6, t5, t4
	-[0x800015d8]:sd t6, 848(ra)
Current Store : [0x800015dc] : sd t5, 856(ra) -- Store: [0x80003728]:0xAAAAFFFDFFFF0020




Last Coverpoint : ['rs2_h2_val == 21845', 'rs1_h2_val == -65']
Last Code Sequence : 
	-[0x8000160c]:KADDH t6, t5, t4
	-[0x80001610]:sd t6, 864(ra)
Current Store : [0x80001614] : sd t5, 872(ra) -- Store: [0x80003738]:0x0002FFBF5555AAAA




Last Coverpoint : ['rs2_h1_val == 21845']
Last Code Sequence : 
	-[0x80001644]:KADDH t6, t5, t4
	-[0x80001648]:sd t6, 880(ra)
Current Store : [0x8000164c] : sd t5, 888(ra) -- Store: [0x80003748]:0x0002FFBFFFEF0000




Last Coverpoint : ['rs1_h2_val == 1024']
Last Code Sequence : 
	-[0x80001680]:KADDH t6, t5, t4
	-[0x80001684]:sd t6, 896(ra)
Current Store : [0x80001688] : sd t5, 904(ra) -- Store: [0x80003758]:0x7FFF04000080FBFF




Last Coverpoint : ['rs1_h2_val == 256']
Last Code Sequence : 
	-[0x800016c4]:KADDH t6, t5, t4
	-[0x800016c8]:sd t6, 912(ra)
Current Store : [0x800016cc] : sd t5, 920(ra) -- Store: [0x80003768]:0x3FFF0100AAAAFFFC




Last Coverpoint : ['rs1_h2_val == 128']
Last Code Sequence : 
	-[0x800016f4]:KADDH t6, t5, t4
	-[0x800016f8]:sd t6, 928(ra)
Current Store : [0x800016fc] : sd t5, 936(ra) -- Store: [0x80003778]:0x000100800008FFFC




Last Coverpoint : ['rs1_h2_val == 2', 'rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x80001728]:KADDH t6, t5, t4
	-[0x8000172c]:sd t6, 944(ra)
Current Store : [0x80001730] : sd t5, 952(ra) -- Store: [0x80003788]:0xFFF80002F7FFFFFF




Last Coverpoint : ['rs1_h2_val == 1', 'rs1_h1_val == -9']
Last Code Sequence : 
	-[0x80001764]:KADDH t6, t5, t4
	-[0x80001768]:sd t6, 960(ra)
Current Store : [0x8000176c] : sd t5, 968(ra) -- Store: [0x80003798]:0xFFF60001FFF70003




Last Coverpoint : ['rs2_h1_val == -3']
Last Code Sequence : 
	-[0x80001794]:KADDH t6, t5, t4
	-[0x80001798]:sd t6, 976(ra)
Current Store : [0x8000179c] : sd t5, 984(ra) -- Store: [0x800037a8]:0x00080400FEFFFFFB




Last Coverpoint : ['rs1_h3_val == 16384']
Last Code Sequence : 
	-[0x800017d0]:KADDH t6, t5, t4
	-[0x800017d4]:sd t6, 992(ra)
Current Store : [0x800017d8] : sd t5, 1000(ra) -- Store: [0x800037b8]:0x4000FFF70005FBFF




Last Coverpoint : ['rs2_h1_val == -32768']
Last Code Sequence : 
	-[0x80001810]:KADDH t6, t5, t4
	-[0x80001814]:sd t6, 1008(ra)
Current Store : [0x80001818] : sd t5, 1016(ra) -- Store: [0x800037c8]:0x000400063FFF0000




Last Coverpoint : ['rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x80001844]:KADDH t6, t5, t4
	-[0x80001848]:sd t6, 1024(ra)
Current Store : [0x8000184c] : sd t5, 1032(ra) -- Store: [0x800037d8]:0xFDFF0005BFFFFFFC




Last Coverpoint : ['rs1_h1_val == -65']
Last Code Sequence : 
	-[0x80001878]:KADDH t6, t5, t4
	-[0x8000187c]:sd t6, 1040(ra)
Current Store : [0x80001880] : sd t5, 1048(ra) -- Store: [0x800037e8]:0x10000005FFBFFF7F




Last Coverpoint : ['rs1_h3_val == 8192']
Last Code Sequence : 
	-[0x800018ac]:KADDH t6, t5, t4
	-[0x800018b0]:sd t6, 1056(ra)
Current Store : [0x800018b4] : sd t5, 1064(ra) -- Store: [0x800037f8]:0x2000FFFBFDFFFFF8




Last Coverpoint : ['rs2_h1_val == 4096', 'rs1_h1_val == 512']
Last Code Sequence : 
	-[0x800018dc]:KADDH t6, t5, t4
	-[0x800018e0]:sd t6, 1072(ra)
Current Store : [0x800018e4] : sd t5, 1080(ra) -- Store: [0x80003808]:0x0200000502000020




Last Coverpoint : ['rs1_h2_val == -4097']
Last Code Sequence : 
	-[0x8000190c]:KADDH t6, t5, t4
	-[0x80001910]:sd t6, 1088(ra)
Current Store : [0x80001914] : sd t5, 1096(ra) -- Store: [0x80003818]:0xFFFBEFFF02008000




Last Coverpoint : ['rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x80001948]:KADDH t6, t5, t4
	-[0x8000194c]:sd t6, 1104(ra)
Current Store : [0x80001950] : sd t5, 1112(ra) -- Store: [0x80003828]:0x3FFF7FFF0400FFFE




Last Coverpoint : ['opcode : kaddh', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == 64', 'rs2_h2_val == 0', 'rs2_h1_val == -33', 'rs2_h0_val == 21845', 'rs1_h3_val == -1025', 'rs1_h2_val == -17', 'rs1_h1_val == -33', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x80001984]:KADDH t6, t5, t4
	-[0x80001988]:sd t6, 1120(ra)
Current Store : [0x8000198c] : sd t5, 1128(ra) -- Store: [0x80003838]:0xFBFFFFEFFFDFBFFF




Last Coverpoint : ['rs2_h2_val == 16384']
Last Code Sequence : 
	-[0x800019c0]:KADDH t6, t5, t4
	-[0x800019c4]:sd t6, 1136(ra)
Current Store : [0x800019c8] : sd t5, 1144(ra) -- Store: [0x80003848]:0xC000FFF60008FEFF





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

|s.no|            signature             |                                                                                                                                                                                                                                                                  coverpoints                                                                                                                                                                                                                                                                  |                                code                                 |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000000007FFF|- opcode : kaddh<br> - rs1 : x27<br> - rs2 : x27<br> - rd : x22<br> - rs1 == rs2 != rd<br> - rs1_h3_val == rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val < 0<br> - rs1_h2_val == rs2_h2_val<br> - rs1_h2_val < 0 and rs2_h2_val < 0<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h2_val == -21846<br> - rs2_h1_val == 256<br> - rs2_h0_val == 1024<br> - rs1_h2_val == -21846<br> - rs1_h1_val == 256<br> - rs1_h0_val == 1024<br> |[0x800003c8]:KADDH s6, s11, s11<br> [0x800003cc]:sd s6, 0(fp)<br>    |
|   2|[0x80003220]<br>0x0000000000007FFF|- rs1 : x2<br> - rs2 : x2<br> - rd : x2<br> - rs1 == rs2 == rd<br> - rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs2_h2_val == -5<br> - rs2_h1_val == 64<br> - rs2_h0_val == 1<br> - rs1_h2_val == -5<br> - rs1_h1_val == 64<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                             |[0x80000404]:KADDH sp, sp, sp<br> [0x80000408]:sd sp, 16(fp)<br>     |
|   3|[0x80003230]<br>0x0000000000007FFF|- rs1 : x19<br> - rs2 : x12<br> - rd : x6<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h3_val != rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val > 0<br> - rs1_h2_val != rs2_h2_val<br> - rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h2_val == 512<br> - rs2_h1_val == 1024<br> - rs2_h0_val == -16385<br> - rs1_h2_val == 32767<br> - rs1_h0_val == -16385<br>                                                                                              |[0x80000440]:KADDH t1, s3, a2<br> [0x80000444]:sd t1, 32(fp)<br>     |
|   4|[0x80003240]<br>0x0000000000007FFF|- rs1 : x13<br> - rs2 : x23<br> - rd : x13<br> - rs1 == rd != rs2<br> - rs1_h3_val > 0 and rs2_h3_val < 0<br> - rs1_h2_val < 0 and rs2_h2_val > 0<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val != rs2_h0_val<br> - rs2_h3_val == -65<br> - rs2_h2_val == 128<br> - rs2_h1_val == -1<br> - rs2_h0_val == -8193<br> - rs1_h3_val == 1<br> - rs1_h2_val == -2<br> - rs1_h1_val == 1<br> - rs1_h0_val == -1025<br>                                                                                                                     |[0x8000047c]:KADDH a3, a3, s7<br> [0x80000480]:sd a3, 48(fp)<br>     |
|   5|[0x80003250]<br>0x0000000000007FFF|- rs1 : x1<br> - rs2 : x29<br> - rd : x29<br> - rs2 == rd != rs1<br> - rs2_h3_val == -1025<br> - rs2_h2_val == 0<br> - rs2_h1_val == -33<br> - rs2_h0_val == 2048<br> - rs1_h3_val == -129<br> - rs1_h2_val == 0<br> - rs1_h1_val == 2048<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                            |[0x800004b0]:KADDH t4, ra, t4<br> [0x800004b4]:sd t4, 64(fp)<br>     |
|   6|[0x80003260]<br>0x0000000000000000|- rs1 : x30<br> - rs2 : x5<br> - rd : x0<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h3_val == 64<br> - rs2_h0_val == 21845<br> - rs1_h3_val == -1025<br> - rs1_h2_val == -17<br> - rs1_h1_val == -33<br>                                                                                                                                                                                                                                                                                        |[0x800004ec]:KADDH zero, t5, t0<br> [0x800004f0]:sd zero, 80(fp)<br> |
|   7|[0x80003270]<br>0x0000000000007FFF|- rs1 : x17<br> - rs2 : x30<br> - rd : x21<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h3_val == 16384<br> - rs2_h1_val == 16384<br> - rs1_h3_val == -9<br> - rs1_h2_val == -1<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                        |[0x80000524]:KADDH s5, a7, t5<br> [0x80000528]:sd s5, 96(fp)<br>     |
|   8|[0x80003280]<br>0xFFFFFFFFFFFF8000|- rs1 : x7<br> - rs2 : x28<br> - rd : x9<br> - rs2_h3_val == -21846<br> - rs1_h3_val == 32767<br> - rs1_h2_val == 8<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000560]:KADDH s1, t2, t3<br> [0x80000564]:sd s1, 112(fp)<br>    |
|   9|[0x80003290]<br>0x0000000000007FFF|- rs1 : x6<br> - rs2 : x9<br> - rd : x28<br> - rs2_h3_val == 21845<br> - rs2_h2_val == 16<br> - rs2_h1_val == 16<br> - rs1_h3_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800005a0]:KADDH t3, t1, s1<br> [0x800005a4]:sd t3, 128(fp)<br>    |
|  10|[0x800032a0]<br>0x0000000000007FFF|- rs1 : x12<br> - rs2 : x10<br> - rd : x16<br> - rs2_h3_val == 32767<br> - rs2_h0_val == -17<br> - rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800005d4]:KADDH a6, a2, a0<br> [0x800005d8]:sd a6, 144(fp)<br>    |
|  11|[0x800032b0]<br>0x0000000000007FFF|- rs1 : x28<br> - rs2 : x4<br> - rd : x20<br> - rs2_h3_val == -16385<br> - rs2_h2_val == 2<br> - rs1_h1_val == 16384<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                               |[0x8000061c]:KADDH s4, t3, tp<br> [0x80000620]:sd s4, 160(fp)<br>    |
|  12|[0x800032c0]<br>0xFFFFFFFFFFFF8000|- rs1 : x3<br> - rs2 : x7<br> - rd : x31<br> - rs1_h2_val > 0 and rs2_h2_val < 0<br> - rs2_h3_val == -8193<br> - rs2_h0_val == 2<br> - rs1_h3_val == -5<br> - rs1_h2_val == 16384<br> - rs1_h1_val == -513<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                                                                                        |[0x80000650]:KADDH t6, gp, t2<br> [0x80000654]:sd t6, 176(fp)<br>    |
|  13|[0x800032d0]<br>0x0000000000007FFF|- rs1 : x15<br> - rs2 : x31<br> - rd : x19<br> - rs2_h3_val == -4097<br> - rs2_h2_val == 8<br> - rs1_h3_val == 4<br> - rs1_h2_val == -33<br> - rs1_h1_val == -1<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                    |[0x80000684]:KADDH s3, a5, t6<br> [0x80000688]:sd s3, 192(fp)<br>    |
|  14|[0x800032e0]<br>0x0000000000007FFF|- rs1 : x10<br> - rs2 : x24<br> - rd : x11<br> - rs2_h3_val == -2049<br> - rs2_h2_val == -257<br> - rs2_h1_val == 8192<br> - rs2_h0_val == 0<br> - rs1_h3_val == 64<br> - rs1_h2_val == -1025<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                      |[0x800006ac]:KADDH a1, a0, s8<br> [0x800006b0]:sd a1, 208(fp)<br>    |
|  15|[0x800032f0]<br>0xFFFFFFFFFFFF8000|- rs1 : x18<br> - rs2 : x1<br> - rd : x14<br> - rs2_h3_val == -513<br> - rs2_h2_val == 4096<br> - rs2_h0_val == -3<br> - rs1_h3_val == -2<br> - rs1_h2_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                           |[0x800006e8]:KADDH a4, s2, ra<br> [0x800006ec]:sd a4, 224(fp)<br>    |
|  16|[0x80003300]<br>0x0000000000007FFF|- rs1 : x21<br> - rs2 : x20<br> - rd : x17<br> - rs2_h3_val == -257<br> - rs2_h2_val == -4097<br> - rs1_h3_val == 128<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                             |[0x8000072c]:KADDH a7, s5, s4<br> [0x80000730]:sd a7, 0(sp)<br>      |
|  17|[0x80003310]<br>0x0000000000007FFF|- rs1 : x25<br> - rs2 : x15<br> - rd : x7<br> - rs2_h3_val == -129<br> - rs2_h1_val == -1025<br> - rs2_h0_val == -1<br> - rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000758]:KADDH t2, s9, a5<br> [0x8000075c]:sd t2, 16(sp)<br>     |
|  18|[0x80003320]<br>0x0000000000007FFF|- rs1 : x29<br> - rs2 : x11<br> - rd : x3<br> - rs1_h0_val == -32768<br> - rs2_h3_val == -33<br> - rs2_h1_val == 512<br> - rs2_h0_val == 512<br> - rs1_h3_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                       |[0x80000788]:KADDH gp, t4, a1<br> [0x8000078c]:sd gp, 32(sp)<br>     |
|  19|[0x80003330]<br>0x0000000000007FFF|- rs1 : x14<br> - rs2 : x18<br> - rd : x27<br> - rs2_h3_val == -17<br> - rs2_h1_val == -2049<br> - rs2_h0_val == 256<br> - rs1_h1_val == 21845<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                       |[0x800007c0]:KADDH s11, a4, s2<br> [0x800007c4]:sd s11, 48(sp)<br>   |
|  20|[0x80003340]<br>0xFFFFFFFFFFFF8000|- rs1 : x23<br> - rs2 : x6<br> - rd : x30<br> - rs2_h3_val == -9<br> - rs2_h1_val == -257<br> - rs1_h3_val == -17<br> - rs1_h2_val == -257<br> - rs1_h1_val == -129<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                                             |[0x800007f4]:KADDH t5, s7, t1<br> [0x800007f8]:sd t5, 64(sp)<br>     |
|  21|[0x80003350]<br>0x0000000000007FFF|- rs1 : x24<br> - rs2 : x8<br> - rd : x4<br> - rs2_h3_val == -5<br> - rs2_h1_val == 1<br> - rs1_h2_val == 2048<br> - rs1_h1_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000824]:KADDH tp, s8, fp<br> [0x80000828]:sd tp, 80(sp)<br>     |
|  22|[0x80003360]<br>0xFFFFFFFFFFFF8000|- rs1 : x4<br> - rs2 : x13<br> - rd : x24<br> - rs2_h3_val == -3<br> - rs2_h1_val == -129<br> - rs2_h0_val == -2049<br> - rs1_h3_val == -1<br> - rs1_h2_val == -16385<br> - rs1_h1_val == -2<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                                                                      |[0x80000858]:KADDH s8, tp, a3<br> [0x8000085c]:sd s8, 96(sp)<br>     |
|  23|[0x80003370]<br>0x0000000000007FFF|- rs1 : x5<br> - rs2 : x3<br> - rd : x8<br> - rs2_h3_val == -2<br> - rs2_h2_val == 32<br> - rs2_h1_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000894]:KADDH fp, t0, gp<br> [0x80000898]:sd fp, 112(sp)<br>    |
|  24|[0x80003380]<br>0xFFFFFFFFFFFF8000|- rs1 : x9<br> - rs2 : x17<br> - rd : x15<br> - rs2_h3_val == -32768<br> - rs2_h2_val == 1<br> - rs2_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800008d0]:KADDH a5, s1, a7<br> [0x800008d4]:sd a5, 128(sp)<br>    |
|  25|[0x80003390]<br>0x0000000000007FFF|- rs1 : x0<br> - rs2 : x22<br> - rd : x12<br> - rs2_h3_val == 8192<br> - rs2_h0_val == 8192<br> - rs1_h3_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000910]:KADDH a2, zero, s6<br> [0x80000914]:sd a2, 144(sp)<br>  |
|  26|[0x800033a0]<br>0xFFFFFFFFFFFF8000|- rs1 : x22<br> - rs2 : x14<br> - rd : x23<br> - rs2_h3_val == 4096<br> - rs2_h1_val == -4097<br> - rs2_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000948]:KADDH s7, s6, a4<br> [0x8000094c]:sd s7, 160(sp)<br>    |
|  27|[0x800033b0]<br>0xFFFFFFFFFFFF8000|- rs1 : x8<br> - rs2 : x16<br> - rd : x26<br> - rs2_h3_val == 2048<br> - rs2_h2_val == -3<br> - rs2_h1_val == -513<br> - rs1_h1_val == 32<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                          |[0x8000097c]:KADDH s10, fp, a6<br> [0x80000980]:sd s10, 176(sp)<br>  |
|  28|[0x800033c0]<br>0x0000000000007FFF|- rs1 : x31<br> - rs2 : x0<br> - rd : x1<br> - rs2_h3_val == 0<br> - rs2_h1_val == 0<br> - rs1_h1_val == 8<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800009b8]:KADDH ra, t6, zero<br> [0x800009bc]:sd ra, 192(sp)<br>  |
|  29|[0x800033d0]<br>0xFFFFFFFFFFFF8000|- rs1 : x11<br> - rs2 : x21<br> - rd : x25<br> - rs2_h3_val == 512<br> - rs2_h2_val == -65<br> - rs2_h1_val == -9<br> - rs1_h3_val == 21845<br> - rs1_h1_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                      |[0x80000a04]:KADDH s9, a1, s5<br> [0x80000a08]:sd s9, 0(ra)<br>      |
|  30|[0x800033e0]<br>0xFFFFFFFFFFFF8000|- rs1 : x20<br> - rs2 : x19<br> - rd : x10<br> - rs2_h3_val == 256<br> - rs2_h2_val == -2<br> - rs2_h1_val == -21846<br> - rs1_h3_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000a40]:KADDH a0, s4, s3<br> [0x80000a44]:sd a0, 16(ra)<br>     |
|  31|[0x800033f0]<br>0xFFFFFFFFFFFF8000|- rs1 : x16<br> - rs2 : x26<br> - rd : x18<br> - rs2_h3_val == 128<br> - rs2_h2_val == -513<br> - rs1_h3_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000a7c]:KADDH s2, a6, s10<br> [0x80000a80]:sd s2, 32(ra)<br>    |
|  32|[0x80003400]<br>0xFFFFFFFFFFFF8000|- rs1 : x26<br> - rs2 : x25<br> - rd : x5<br> - rs2_h3_val == 32<br> - rs2_h1_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000ab0]:KADDH t0, s10, s9<br> [0x80000ab4]:sd t0, 48(ra)<br>    |
|  33|[0x80003410]<br>0xFFFFFFFFFFFF8000|- rs2_h3_val == 16<br> - rs2_h2_val == -2049<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000ae8]:KADDH t6, t5, t4<br> [0x80000aec]:sd t6, 64(ra)<br>     |
|  34|[0x80003420]<br>0x0000000000007FFF|- rs2_h3_val == 8<br> - rs2_h0_val == -257<br> - rs1_h3_val == 32<br> - rs1_h2_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000b20]:KADDH t6, t5, t4<br> [0x80000b24]:sd t6, 80(ra)<br>     |
|  35|[0x80003430]<br>0xFFFFFFFFFFFF8000|- rs2_h3_val == 4<br> - rs1_h2_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000b5c]:KADDH t6, t5, t4<br> [0x80000b60]:sd t6, 96(ra)<br>     |
|  36|[0x80003440]<br>0xFFFFFFFFFFFF8000|- rs2_h2_val == -33<br> - rs2_h1_val == -8193<br> - rs2_h0_val == -9<br> - rs1_h1_val == -5<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000b90]:KADDH t6, t5, t4<br> [0x80000b94]:sd t6, 112(ra)<br>    |
|  37|[0x80003450]<br>0x0000000000007FFF|- rs2_h0_val == -1025<br> - rs1_h1_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000bcc]:KADDH t6, t5, t4<br> [0x80000bd0]:sd t6, 128(ra)<br>    |
|  38|[0x80003460]<br>0xFFFFFFFFFFFF8000|- rs2_h1_val == -5<br> - rs2_h0_val == -21846<br> - rs1_h1_val == -32768<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000c08]:KADDH t6, t5, t4<br> [0x80000c0c]:sd t6, 144(ra)<br>    |
|  39|[0x80003470]<br>0x0000000000007FFF|- rs1_h3_val == 2<br> - rs1_h2_val == -8193<br> - rs1_h1_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000c4c]:KADDH t6, t5, t4<br> [0x80000c50]:sd t6, 160(ra)<br>    |
|  40|[0x80003480]<br>0xFFFFFFFFFFFF8000|- rs2_h2_val == -1<br> - rs2_h0_val == 16384<br> - rs1_h3_val == 2048<br> - rs1_h1_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000c80]:KADDH t6, t5, t4<br> [0x80000c84]:sd t6, 176(ra)<br>    |
|  41|[0x80003490]<br>0x0000000000007FFF|- rs2_h0_val == -513<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000cbc]:KADDH t6, t5, t4<br> [0x80000cc0]:sd t6, 192(ra)<br>    |
|  42|[0x800034a0]<br>0x0000000000007FFF|- rs2_h0_val == -4097<br> - rs1_h3_val == 16<br> - rs1_h2_val == 512<br> - rs1_h1_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000cec]:KADDH t6, t5, t4<br> [0x80000cf0]:sd t6, 208(ra)<br>    |
|  43|[0x800034b0]<br>0x0000000000007FFF|- rs1_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000d24]:KADDH t6, t5, t4<br> [0x80000d28]:sd t6, 224(ra)<br>    |
|  44|[0x800034c0]<br>0x0000000000007FFF|- rs2_h2_val == 4<br> - rs2_h0_val == 32767<br> - rs1_h3_val == 8<br> - rs1_h2_val == 32<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000d60]:KADDH t6, t5, t4<br> [0x80000d64]:sd t6, 240(ra)<br>    |
|  45|[0x800034d0]<br>0xFFFFFFFFFFFF8000|- rs2_h2_val == 256<br> - rs1_h3_val == -21846<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000d9c]:KADDH t6, t5, t4<br> [0x80000da0]:sd t6, 256(ra)<br>    |
|  46|[0x800034e0]<br>0xFFFFFFFFFFFF8000|- rs2_h3_val == 2<br> - rs1_h2_val == 8192<br> - rs1_h1_val == -21846<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000dd8]:KADDH t6, t5, t4<br> [0x80000ddc]:sd t6, 272(ra)<br>    |
|  47|[0x800034f0]<br>0xFFFFFFFFFFFF8000|- rs2_h2_val == 8192<br> - rs2_h1_val == -2<br> - rs2_h0_val == -5<br> - rs1_h1_val == -1025<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000e14]:KADDH t6, t5, t4<br> [0x80000e18]:sd t6, 288(ra)<br>    |
|  48|[0x80003500]<br>0x0000000000007FFF|- rs2_h2_val == -17<br> - rs1_h3_val == 1024<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000e4c]:KADDH t6, t5, t4<br> [0x80000e50]:sd t6, 304(ra)<br>    |
|  49|[0x80003510]<br>0xFFFFFFFFFFFF8000|- rs2_h2_val == 2048<br> - rs2_h1_val == 32<br> - rs2_h0_val == 8<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000e78]:KADDH t6, t5, t4<br> [0x80000e7c]:sd t6, 320(ra)<br>    |
|  50|[0x80003520]<br>0x0000000000007FFF|- rs1_h3_val == -3<br> - rs1_h1_val == -17<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000eac]:KADDH t6, t5, t4<br> [0x80000eb0]:sd t6, 336(ra)<br>    |
|  51|[0x80003530]<br>0xFFFFFFFFFFFF8000|- rs2_h2_val == 32767<br> - rs2_h1_val == 8<br> - rs1_h1_val == -8193<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000ee4]:KADDH t6, t5, t4<br> [0x80000ee8]:sd t6, 352(ra)<br>    |
|  52|[0x80003540]<br>0xFFFFFFFFFFFF8000|- rs1_h3_val == 256<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000f24]:KADDH t6, t5, t4<br> [0x80000f28]:sd t6, 368(ra)<br>    |
|  53|[0x80003550]<br>0x0000000000007FFF|- rs2_h0_val == -129<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000f60]:KADDH t6, t5, t4<br> [0x80000f64]:sd t6, 384(ra)<br>    |
|  54|[0x80003560]<br>0x0000000000007FFF|- rs2_h1_val == 4<br> - rs2_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000f9c]:KADDH t6, t5, t4<br> [0x80000fa0]:sd t6, 400(ra)<br>    |
|  55|[0x80003570]<br>0x0000000000007FFF|- rs2_h1_val == 2<br> - rs1_h2_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000fd4]:KADDH t6, t5, t4<br> [0x80000fd8]:sd t6, 416(ra)<br>    |
|  56|[0x80003580]<br>0x0000000000007FFF|- rs2_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001008]:KADDH t6, t5, t4<br> [0x8000100c]:sd t6, 432(ra)<br>    |
|  57|[0x80003590]<br>0xFFFFFFFFFFFF8000|- rs2_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001044]:KADDH t6, t5, t4<br> [0x80001048]:sd t6, 448(ra)<br>    |
|  58|[0x800035a0]<br>0xFFFFFFFFFFFF8000|- rs2_h0_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x8000107c]:KADDH t6, t5, t4<br> [0x80001080]:sd t6, 464(ra)<br>    |
|  59|[0x800035b0]<br>0xFFFFFFFFFFFF8000|- rs2_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800010b0]:KADDH t6, t5, t4<br> [0x800010b4]:sd t6, 480(ra)<br>    |
|  60|[0x800035c0]<br>0xFFFFFFFFFFFF8000|- rs2_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800010e8]:KADDH t6, t5, t4<br> [0x800010ec]:sd t6, 496(ra)<br>    |
|  61|[0x800035d0]<br>0x0000000000007FFF|- rs2_h3_val == -1<br> - rs2_h2_val == -16385<br> - rs2_h1_val == -65<br> - rs2_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001114]:KADDH t6, t5, t4<br> [0x80001118]:sd t6, 512(ra)<br>    |
|  62|[0x800035e0]<br>0x0000000000007FFF|- rs2_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001150]:KADDH t6, t5, t4<br> [0x80001154]:sd t6, 528(ra)<br>    |
|  63|[0x800035f0]<br>0xFFFFFFFFFFFF8000|- rs1_h3_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x8000118c]:KADDH t6, t5, t4<br> [0x80001190]:sd t6, 544(ra)<br>    |
|  64|[0x80003600]<br>0x0000000000007FFF|- rs1_h3_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800011cc]:KADDH t6, t5, t4<br> [0x800011d0]:sd t6, 560(ra)<br>    |
|  65|[0x80003610]<br>0xFFFFFFFFFFFF8000|- rs1_h2_val == -2049<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001200]:KADDH t6, t5, t4<br> [0x80001204]:sd t6, 576(ra)<br>    |
|  66|[0x80003620]<br>0xFFFFFFFFFFFF8000|- rs1_h2_val == 21845<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001244]:KADDH t6, t5, t4<br> [0x80001248]:sd t6, 592(ra)<br>    |
|  67|[0x80003630]<br>0x0000000000007FFF|- rs1_h3_val == -513<br> - rs1_h2_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001280]:KADDH t6, t5, t4<br> [0x80001284]:sd t6, 608(ra)<br>    |
|  68|[0x80003640]<br>0xFFFFFFFFFFFF8000|- rs1_h2_val == -513<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800012bc]:KADDH t6, t5, t4<br> [0x800012c0]:sd t6, 624(ra)<br>    |
|  69|[0x80003650]<br>0xFFFFFFFFFFFF8000|- rs2_h3_val == 1024<br> - rs2_h2_val == -1025<br> - rs1_h3_val == -257<br> - rs1_h2_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800012f8]:KADDH t6, t5, t4<br> [0x800012fc]:sd t6, 640(ra)<br>    |
|  70|[0x80003660]<br>0x0000000000007FFF|- rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x8000132c]:KADDH t6, t5, t4<br> [0x80001330]:sd t6, 656(ra)<br>    |
|  71|[0x80003670]<br>0xFFFFFFFFFFFFFFFF|- rs1_h3_val == -65<br> - rs1_h1_val == -257<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001358]:KADDH t6, t5, t4<br> [0x8000135c]:sd t6, 672(ra)<br>    |
|  72|[0x80003680]<br>0xFFFFFFFFFFFF8000|- rs2_h3_val == 1<br> - rs2_h2_val == -32768<br> - rs2_h1_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001394]:KADDH t6, t5, t4<br> [0x80001398]:sd t6, 688(ra)<br>    |
|  73|[0x80003690]<br>0x0000000000007FFF|- rs2_h1_val == 32767<br> - rs1_h3_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800013cc]:KADDH t6, t5, t4<br> [0x800013d0]:sd t6, 704(ra)<br>    |
|  74|[0x800036a0]<br>0x0000000000007FFF|- rs2_h2_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001408]:KADDH t6, t5, t4<br> [0x8000140c]:sd t6, 720(ra)<br>    |
|  75|[0x800036b0]<br>0xFFFFFFFFFFFF8000|- rs1_h3_val == 512<br> - rs1_h2_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x8000144c]:KADDH t6, t5, t4<br> [0x80001450]:sd t6, 736(ra)<br>    |
|  76|[0x800036c0]<br>0xFFFFFFFFFFFF8000|- rs2_h2_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001480]:KADDH t6, t5, t4<br> [0x80001484]:sd t6, 752(ra)<br>    |
|  77|[0x800036d0]<br>0x0000000000007FFF|- rs2_h2_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800014bc]:KADDH t6, t5, t4<br> [0x800014c0]:sd t6, 768(ra)<br>    |
|  78|[0x80003700]<br>0xFFFFFFFFFFFF8000|- rs2_h2_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001560]:KADDH t6, t5, t4<br> [0x80001564]:sd t6, 816(ra)<br>    |
|  79|[0x80003710]<br>0x0000000000007FFF|- rs2_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001594]:KADDH t6, t5, t4<br> [0x80001598]:sd t6, 832(ra)<br>    |
|  80|[0x80003720]<br>0xFFFFFFFFFFFF8000|- rs2_h2_val == 64<br> - rs1_h2_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800015d4]:KADDH t6, t5, t4<br> [0x800015d8]:sd t6, 848(ra)<br>    |
|  81|[0x80003730]<br>0x0000000000007FFF|- rs2_h2_val == 21845<br> - rs1_h2_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x8000160c]:KADDH t6, t5, t4<br> [0x80001610]:sd t6, 864(ra)<br>    |
|  82|[0x80003740]<br>0x0000000000007FFF|- rs2_h1_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001644]:KADDH t6, t5, t4<br> [0x80001648]:sd t6, 880(ra)<br>    |
|  83|[0x80003750]<br>0x0000000000007FFF|- rs1_h2_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001680]:KADDH t6, t5, t4<br> [0x80001684]:sd t6, 896(ra)<br>    |
|  84|[0x80003760]<br>0xFFFFFFFFFFFF8000|- rs1_h2_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800016c4]:KADDH t6, t5, t4<br> [0x800016c8]:sd t6, 912(ra)<br>    |
|  85|[0x80003770]<br>0xFFFFFFFFFFFF8000|- rs1_h2_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800016f4]:KADDH t6, t5, t4<br> [0x800016f8]:sd t6, 928(ra)<br>    |
|  86|[0x80003780]<br>0xFFFFFFFFFFFF8000|- rs1_h2_val == 2<br> - rs1_h1_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001728]:KADDH t6, t5, t4<br> [0x8000172c]:sd t6, 944(ra)<br>    |
|  87|[0x80003790]<br>0xFFFFFFFFFFFF8000|- rs1_h2_val == 1<br> - rs1_h1_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001764]:KADDH t6, t5, t4<br> [0x80001768]:sd t6, 960(ra)<br>    |
|  88|[0x800037a0]<br>0xFFFFFFFFFFFF8000|- rs2_h1_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001794]:KADDH t6, t5, t4<br> [0x80001798]:sd t6, 976(ra)<br>    |
|  89|[0x800037b0]<br>0x0000000000007FFF|- rs1_h3_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800017d0]:KADDH t6, t5, t4<br> [0x800017d4]:sd t6, 992(ra)<br>    |
|  90|[0x800037c0]<br>0xFFFFFFFFFFFF8000|- rs2_h1_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001810]:KADDH t6, t5, t4<br> [0x80001814]:sd t6, 1008(ra)<br>   |
|  91|[0x800037d0]<br>0xFFFFFFFFFFFF8000|- rs1_h1_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001844]:KADDH t6, t5, t4<br> [0x80001848]:sd t6, 1024(ra)<br>   |
|  92|[0x800037e0]<br>0x0000000000007FFF|- rs1_h1_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001878]:KADDH t6, t5, t4<br> [0x8000187c]:sd t6, 1040(ra)<br>   |
|  93|[0x800037f0]<br>0xFFFFFFFFFFFF8000|- rs1_h3_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800018ac]:KADDH t6, t5, t4<br> [0x800018b0]:sd t6, 1056(ra)<br>   |
|  94|[0x80003800]<br>0x0000000000007FFF|- rs2_h1_val == 4096<br> - rs1_h1_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800018dc]:KADDH t6, t5, t4<br> [0x800018e0]:sd t6, 1072(ra)<br>   |
|  95|[0x80003810]<br>0x0000000000007FFF|- rs1_h2_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x8000190c]:KADDH t6, t5, t4<br> [0x80001910]:sd t6, 1088(ra)<br>   |
|  96|[0x80003820]<br>0x0000000000007FFF|- rs1_h1_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001948]:KADDH t6, t5, t4<br> [0x8000194c]:sd t6, 1104(ra)<br>   |
|  97|[0x80003840]<br>0xFFFFFFFFFFFF8000|- rs2_h2_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800019c0]:KADDH t6, t5, t4<br> [0x800019c4]:sd t6, 1136(ra)<br>   |
