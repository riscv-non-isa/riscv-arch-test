
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001a90')]      |
| SIG_REGION                | [('0x80003210', '0x80003870', '204 dwords')]      |
| COV_LABELS                | kmabb      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kmabb-01.S    |
| Total Number of coverpoints| 420     |
| Total Coverpoints Hit     | 414      |
| Total Signature Updates   | 204      |
| STAT1                     | 99      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 102     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800019c8]:KMABB t6, t5, t4
      [0x800019cc]:sd t6, 1056(ra)
 -- Signature Address: 0x80003830 Data: 0x18852058EFD6285D
 -- Redundant Coverpoints hit by the op
      - opcode : kmabb
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val == rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h3_val == -4097
      - rs2_h2_val == 1024
      - rs1_h3_val == -4097
      - rs1_h2_val == -65




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a0c]:KMABB t6, t5, t4
      [0x80001a10]:sd t6, 1072(ra)
 -- Signature Address: 0x80003840 Data: 0x18651058EFC6281D
 -- Redundant Coverpoints hit by the op
      - opcode : kmabb
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h3_val == 32767
      - rs2_h2_val == -513
      - rs2_h0_val == 64
      - rs1_h3_val == -257
      - rs1_h2_val == 4096
      - rs1_h1_val == -16385
      - rs1_h0_val == -16385




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a7c]:KMABB t6, t5, t4
      [0x80001a80]:sd t6, 1104(ra)
 -- Signature Address: 0x80003860 Data: 0x1866545DEFC6291C
 -- Redundant Coverpoints hit by the op
      - opcode : kmabb
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h3_val == -513
      - rs2_h2_val == 4
      - rs2_h1_val == -33
      - rs2_h0_val == -5
      - rs1_h2_val == 256
      - rs1_h1_val == 512
      - rs1_h0_val == -129






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmabb', 'rs1 : x8', 'rs2 : x8', 'rd : x17', 'rs1 == rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val == rs2_h2_val', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == -129', 'rs2_h2_val == 0', 'rs2_h1_val == -65', 'rs1_h3_val == -129', 'rs1_h2_val == 0', 'rs1_h1_val == -65']
Last Code Sequence : 
	-[0x800003d0]:KMABB a7, fp, fp
	-[0x800003d4]:sd a7, 0(s1)
Current Store : [0x800003d8] : sd fp, 8(s1) -- Store: [0x80003218]:0xFF7F0000FFBF0006




Last Coverpoint : ['rs1 : x21', 'rs2 : x21', 'rd : x21', 'rs1 == rs2 == rd', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == -4097', 'rs2_h2_val == 1024', 'rs1_h3_val == -4097', 'rs1_h2_val == 1024']
Last Code Sequence : 
	-[0x80000408]:KMABB s5, s5, s5
	-[0x8000040c]:sd s5, 16(s1)
Current Store : [0x80000410] : sd s5, 24(s1) -- Store: [0x80003228]:0xF00F0400000A001E




Last Coverpoint : ['rs1 : x5', 'rs2 : x1', 'rd : x26', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == 1024', 'rs1_h2_val == -4097', 'rs1_h1_val == 1', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x8000043c]:KMABB s10, t0, ra
	-[0x80000440]:sd s10, 32(s1)
Current Store : [0x80000444] : sd t0, 40(s1) -- Store: [0x80003238]:0xFFFCEFFF0001AAAA




Last Coverpoint : ['rs1 : x15', 'rs2 : x30', 'rd : x15', 'rs1 == rd != rs2', 'rs1_h0_val == -32768', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs2_h3_val == -1025', 'rs2_h2_val == -33', 'rs1_h3_val == 1', 'rs1_h2_val == 32', 'rs1_h1_val == -17']
Last Code Sequence : 
	-[0x80000474]:KMABB a5, a5, t5
	-[0x80000478]:sd a5, 48(s1)
Current Store : [0x8000047c] : sd a5, 56(s1) -- Store: [0x80003248]:0x0000FC00FFEC0000




Last Coverpoint : ['rs1 : x22', 'rs2 : x27', 'rd : x27', 'rs2 == rd != rs1', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == 128', 'rs2_h1_val == -2049', 'rs1_h3_val == 21845', 'rs1_h2_val == -33']
Last Code Sequence : 
	-[0x800004ac]:KMABB s11, s6, s11
	-[0x800004b0]:sd s11, 64(s1)
Current Store : [0x800004b4] : sd s6, 72(s1) -- Store: [0x80003258]:0x5555FFDFFFEF0009




Last Coverpoint : ['rs1 : x4', 'rs2 : x10', 'rd : x23', 'rs2_h0_val == 128', 'rs1_h1_val == -4097', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x800004e0]:KMABB s7, tp, a0
	-[0x800004e4]:sd s7, 80(s1)
Current Store : [0x800004e8] : sd tp, 88(s1) -- Store: [0x80003268]:0x00010000EFFFFFEF




Last Coverpoint : ['rs1 : x1', 'rs2 : x6', 'rd : x30', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs2_h2_val == 4096', 'rs2_h1_val == -3', 'rs2_h0_val == 16', 'rs1_h3_val == -1025', 'rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x80000518]:KMABB t5, ra, t1
	-[0x8000051c]:sd t5, 96(s1)
Current Store : [0x80000520] : sd ra, 104(s1) -- Store: [0x80003278]:0xFBFF000908000007




Last Coverpoint : ['rs1 : x28', 'rs2 : x7', 'rd : x1', 'rs2_h3_val == -65', 'rs2_h0_val == -33', 'rs1_h3_val == 128', 'rs1_h2_val == -1', 'rs1_h1_val == 1024', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000554]:KMABB ra, t3, t2
	-[0x80000558]:sd ra, 112(s1)
Current Store : [0x8000055c] : sd t3, 120(s1) -- Store: [0x80003288]:0x0080FFFF0400FEFF




Last Coverpoint : ['rs1 : x2', 'rs2 : x18', 'rd : x31', 'rs2_h2_val == 2048', 'rs2_h1_val == 32', 'rs2_h0_val == 4096', 'rs1_h3_val == 4', 'rs1_h2_val == 4', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000588]:KMABB t6, sp, s2
	-[0x8000058c]:sd t6, 128(s1)
Current Store : [0x80000590] : sd sp, 136(s1) -- Store: [0x80003298]:0x0004000400061000




Last Coverpoint : ['rs1 : x18', 'rs2 : x28', 'rd : x16', 'rs2_h3_val == -21846', 'rs2_h1_val == 21845', 'rs2_h0_val == 8192', 'rs1_h3_val == -17', 'rs1_h2_val == 21845', 'rs1_h1_val == -21846', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x800005c8]:KMABB a6, s2, t3
	-[0x800005cc]:sd a6, 144(s1)
Current Store : [0x800005d0] : sd s2, 152(s1) -- Store: [0x800032a8]:0xFFEF5555AAAA0200




Last Coverpoint : ['rs1 : x3', 'rs2 : x13', 'rd : x10', 'rs2_h3_val == 21845', 'rs2_h2_val == -65', 'rs2_h1_val == 8192', 'rs2_h0_val == 2', 'rs1_h3_val == 2', 'rs1_h2_val == 128', 'rs1_h1_val == -1025', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x800005fc]:KMABB a0, gp, a3
	-[0x80000600]:sd a0, 160(s1)
Current Store : [0x80000604] : sd gp, 168(s1) -- Store: [0x800032b8]:0x00020080FBFFFFFF




Last Coverpoint : ['rs1 : x0', 'rs2 : x5', 'rd : x4', 'rs2_h3_val == 32767', 'rs2_h2_val == -513', 'rs2_h0_val == 64', 'rs1_h3_val == 0', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000640]:KMABB tp, zero, t0
	-[0x80000644]:sd tp, 176(s1)
Current Store : [0x80000648] : sd zero, 184(s1) -- Store: [0x800032c8]:0x0000000000000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x11', 'rd : x3', 'rs2_h3_val == -16385', 'rs2_h0_val == -21846', 'rs1_h3_val == -65', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x8000067c]:KMABB gp, t1, a1
	-[0x80000680]:sd gp, 192(s1)
Current Store : [0x80000684] : sd t1, 200(s1) -- Store: [0x800032d8]:0xFFBF0005FFF80080




Last Coverpoint : ['rs1 : x13', 'rs2 : x16', 'rd : x7', 'rs2_h3_val == -8193', 'rs2_h2_val == -129', 'rs2_h1_val == 64', 'rs2_h0_val == -3', 'rs1_h3_val == 4096', 'rs1_h1_val == -16385', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x800006b8]:KMABB t2, a3, a6
	-[0x800006bc]:sd t2, 208(s1)
Current Store : [0x800006c0] : sd a3, 216(s1) -- Store: [0x800032e8]:0x10000080BFFF0002




Last Coverpoint : ['rs1 : x19', 'rs2 : x0', 'rd : x11', 'rs2_h3_val == 0', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h2_val == -16385']
Last Code Sequence : 
	-[0x800006f0]:KMABB a1, s3, zero
	-[0x800006f4]:sd a1, 224(s1)
Current Store : [0x800006f8] : sd s3, 232(s1) -- Store: [0x800032f8]:0xFFF8BFFFFFFC0006




Last Coverpoint : ['rs1 : x25', 'rs2 : x3', 'rd : x0', 'rs2_h3_val == -513', 'rs2_h2_val == 4', 'rs2_h1_val == -33', 'rs2_h0_val == -5', 'rs1_h2_val == 256', 'rs1_h1_val == 512', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000728]:KMABB zero, s9, gp
	-[0x8000072c]:sd zero, 240(s1)
Current Store : [0x80000730] : sd s9, 248(s1) -- Store: [0x80003308]:0xFFFC01000200FF7F




Last Coverpoint : ['rs1 : x31', 'rs2 : x23', 'rd : x19', 'rs2_h3_val == -257', 'rs2_h2_val == 32767', 'rs2_h1_val == -2', 'rs2_h0_val == 8', 'rs1_h3_val == 1024', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80000760]:KMABB s3, t6, s7
	-[0x80000764]:sd s3, 256(s1)
Current Store : [0x80000768] : sd t6, 264(s1) -- Store: [0x80003318]:0x0400BFFFFFF60001




Last Coverpoint : ['rs1 : x16', 'rs2 : x29', 'rd : x12', 'rs2_h3_val == -33', 'rs2_h2_val == -21846', 'rs1_h3_val == 32767', 'rs1_h2_val == 16', 'rs1_h1_val == 4096', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x800007a4]:KMABB a2, a6, t4
	-[0x800007a8]:sd a2, 272(s1)
Current Store : [0x800007ac] : sd a6, 280(s1) -- Store: [0x80003328]:0x7FFF001010007FFF




Last Coverpoint : ['rs1 : x27', 'rs2 : x22', 'rd : x5', 'rs2_h3_val == -17', 'rs2_h2_val == -1', 'rs1_h2_val == 64']
Last Code Sequence : 
	-[0x800007e4]:KMABB t0, s11, s6
	-[0x800007e8]:sd t0, 0(ra)
Current Store : [0x800007ec] : sd s11, 8(ra) -- Store: [0x80003338]:0x7FFF0040FFFC8000




Last Coverpoint : ['rs1 : x14', 'rs2 : x25', 'rd : x2', 'rs2_h3_val == -9', 'rs2_h2_val == 256', 'rs2_h0_val == -16385', 'rs1_h3_val == 64', 'rs1_h2_val == -9', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80000820]:KMABB sp, a4, s9
	-[0x80000824]:sd sp, 16(ra)
Current Store : [0x80000828] : sd a4, 24(ra) -- Store: [0x80003348]:0x0040FFF7EFFF0004




Last Coverpoint : ['rs1 : x11', 'rs2 : x15', 'rd : x20', 'rs2_h3_val == -5', 'rs2_h2_val == -32768', 'rs2_h1_val == 4', 'rs2_h0_val == -2049', 'rs1_h1_val == -3']
Last Code Sequence : 
	-[0x80000850]:KMABB s4, a1, a5
	-[0x80000854]:sd s4, 32(ra)
Current Store : [0x80000858] : sd a1, 40(ra) -- Store: [0x80003358]:0x00000000FFFDFFFC




Last Coverpoint : ['rs1 : x23', 'rs2 : x9', 'rd : x13', 'rs2_h3_val == -3', 'rs2_h2_val == -257', 'rs2_h1_val == 8', 'rs1_h3_val == 512', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x8000087c]:KMABB a3, s7, s1
	-[0x80000880]:sd a3, 48(ra)
Current Store : [0x80000884] : sd s7, 56(ra) -- Store: [0x80003368]:0x02000100C0000040




Last Coverpoint : ['rs1 : x26', 'rs2 : x2', 'rd : x8', 'rs2_h3_val == -2', 'rs2_h0_val == -513', 'rs1_h2_val == -32768', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x800008b0]:KMABB fp, s10, sp
	-[0x800008b4]:sd fp, 64(ra)
Current Store : [0x800008b8] : sd s10, 72(ra) -- Store: [0x80003378]:0xFFFC8000FFF6BFFF




Last Coverpoint : ['rs1 : x29', 'rs2 : x19', 'rd : x9', 'rs2_h3_val == -32768', 'rs2_h2_val == 32', 'rs2_h1_val == -32768', 'rs1_h3_val == 8', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x800008ec]:KMABB s1, t4, s3
	-[0x800008f0]:sd s1, 80(ra)
Current Store : [0x800008f4] : sd t4, 88(ra) -- Store: [0x80003388]:0x0008EFFFFFF80008




Last Coverpoint : ['rs1 : x24', 'rs2 : x20', 'rd : x25', 'rs2_h3_val == 16384', 'rs2_h1_val == -1025', 'rs2_h0_val == -1', 'rs1_h3_val == -9', 'rs1_h2_val == 32767', 'rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x80000928]:KMABB s9, s8, s4
	-[0x8000092c]:sd s9, 96(ra)
Current Store : [0x80000930] : sd s8, 104(ra) -- Store: [0x80003398]:0xFFF77FFFDFFF0008




Last Coverpoint : ['rs1 : x9', 'rs2 : x17', 'rd : x6', 'rs2_h3_val == 8192']
Last Code Sequence : 
	-[0x80000964]:KMABB t1, s1, a7
	-[0x80000968]:sd t1, 112(ra)
Current Store : [0x8000096c] : sd s1, 120(ra) -- Store: [0x800033a8]:0x00030009FFFA0080




Last Coverpoint : ['rs1 : x12', 'rs2 : x31', 'rd : x14', 'rs2_h3_val == 4096', 'rs1_h2_val == 8', 'rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x8000099c]:KMABB a4, a2, t6
	-[0x800009a0]:sd a4, 128(ra)
Current Store : [0x800009a4] : sd a2, 136(ra) -- Store: [0x800033b8]:0xFF7F00084000AAAA




Last Coverpoint : ['rs1 : x7', 'rs2 : x4', 'rd : x22', 'rs2_h3_val == 2048', 'rs2_h2_val == 16384', 'rs2_h1_val == -513', 'rs2_h0_val == 256', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x800009d8]:KMABB s6, t2, tp
	-[0x800009dc]:sd s6, 144(ra)
Current Store : [0x800009e0] : sd t2, 152(ra) -- Store: [0x800033c8]:0x0004FFF90009FDFF




Last Coverpoint : ['rs1 : x20', 'rs2 : x12', 'rd : x18', 'rs2_h3_val == 1024', 'rs2_h2_val == 512', 'rs1_h1_val == -1']
Last Code Sequence : 
	-[0x80000a14]:KMABB s2, s4, a2
	-[0x80000a18]:sd s2, 160(ra)
Current Store : [0x80000a1c] : sd s4, 168(ra) -- Store: [0x800033d8]:0xFFF60006FFFF7FFF




Last Coverpoint : ['rs1 : x10', 'rs2 : x24', 'rd : x29', 'rs2_h3_val == 512', 'rs2_h1_val == 16', 'rs2_h0_val == 21845', 'rs1_h2_val == -1025', 'rs1_h1_val == 128', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000a50]:KMABB t4, a0, s8
	-[0x80000a54]:sd t4, 176(ra)
Current Store : [0x80000a58] : sd a0, 184(ra) -- Store: [0x800033e8]:0x0400FBFF0080FFF7




Last Coverpoint : ['rs1 : x30', 'rs2 : x26', 'rd : x24', 'rs2_h3_val == 256', 'rs2_h2_val == -2049', 'rs2_h1_val == 1', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000a94]:KMABB s8, t5, s10
	-[0x80000a98]:sd s8, 192(ra)
Current Store : [0x80000a9c] : sd t5, 200(ra) -- Store: [0x800033f8]:0xEFFF01000800FBFF




Last Coverpoint : ['rs1 : x17', 'rs2 : x14', 'rd : x28', 'rs2_h3_val == 64', 'rs2_h1_val == -9', 'rs1_h3_val == 8192']
Last Code Sequence : 
	-[0x80000acc]:KMABB t3, a7, a4
	-[0x80000ad0]:sd t3, 208(ra)
Current Store : [0x80000ad4] : sd a7, 216(ra) -- Store: [0x80003408]:0x20000004FFFC1000




Last Coverpoint : ['rs2_h3_val == 32', 'rs2_h2_val == -3', 'rs2_h0_val == -65', 'rs1_h1_val == -5']
Last Code Sequence : 
	-[0x80000b10]:KMABB t6, t5, t4
	-[0x80000b14]:sd t6, 0(ra)
Current Store : [0x80000b18] : sd t5, 8(ra) -- Store: [0x80003418]:0xFFBF0040FFFB3FFF




Last Coverpoint : ['rs2_h3_val == 16', 'rs2_h2_val == 2', 'rs2_h0_val == 32', 'rs1_h2_val == 2048', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000b48]:KMABB t6, t5, t4
	-[0x80000b4c]:sd t6, 16(ra)
Current Store : [0x80000b50] : sd t5, 24(ra) -- Store: [0x80003428]:0x0008080000080001




Last Coverpoint : ['rs2_h2_val == 21845', 'rs1_h1_val == -2']
Last Code Sequence : 
	-[0x80000b88]:KMABB t6, t5, t4
	-[0x80000b8c]:sd t6, 32(ra)
Current Store : [0x80000b90] : sd t5, 40(ra) -- Store: [0x80003438]:0xFFF80006FFFE0000




Last Coverpoint : ['rs2_h3_val == 2', 'rs2_h2_val == -4097', 'rs2_h1_val == 128', 'rs1_h1_val == -32768']
Last Code Sequence : 
	-[0x80000bc4]:KMABB t6, t5, t4
	-[0x80000bc8]:sd t6, 48(ra)
Current Store : [0x80000bcc] : sd t5, 56(ra) -- Store: [0x80003448]:0x3FFF00008000FFF8




Last Coverpoint : ['rs2_h0_val == -257', 'rs1_h2_val == -5', 'rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x80000c00]:KMABB t6, t5, t4
	-[0x80000c04]:sd t6, 64(ra)
Current Store : [0x80000c08] : sd t5, 72(ra) -- Store: [0x80003458]:0xC000FFFB20000004




Last Coverpoint : ['rs2_h1_val == 4096', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x80000c34]:KMABB t6, t5, t4
	-[0x80000c38]:sd t6, 80(ra)
Current Store : [0x80000c3c] : sd t5, 88(ra) -- Store: [0x80003468]:0x000500080100FFFA




Last Coverpoint : ['rs2_h2_val == 16', 'rs2_h1_val == -4097', 'rs1_h3_val == -8193', 'rs1_h2_val == 4096', 'rs1_h1_val == 64']
Last Code Sequence : 
	-[0x80000c70]:KMABB t6, t5, t4
	-[0x80000c74]:sd t6, 96(ra)
Current Store : [0x80000c78] : sd t5, 104(ra) -- Store: [0x80003478]:0xDFFF10000040AAAA




Last Coverpoint : ['rs1_h1_val == 32']
Last Code Sequence : 
	-[0x80000ca4]:KMABB t6, t5, t4
	-[0x80000ca8]:sd t6, 112(ra)
Current Store : [0x80000cac] : sd t5, 120(ra) -- Store: [0x80003488]:0x0007000600200200




Last Coverpoint : ['rs2_h1_val == -129', 'rs1_h2_val == -65', 'rs1_h1_val == 16']
Last Code Sequence : 
	-[0x80000ce0]:KMABB t6, t5, t4
	-[0x80000ce4]:sd t6, 128(ra)
Current Store : [0x80000ce8] : sd t5, 136(ra) -- Store: [0x80003498]:0xFFF6FFBF00100009




Last Coverpoint : ['rs2_h2_val == -2', 'rs1_h2_val == -21846', 'rs1_h1_val == 4', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000d1c]:KMABB t6, t5, t4
	-[0x80000d20]:sd t6, 144(ra)
Current Store : [0x80000d24] : sd t5, 152(ra) -- Store: [0x800034a8]:0x0002AAAA0004F7FF




Last Coverpoint : ['rs2_h1_val == -257', 'rs2_h0_val == 4', 'rs1_h3_val == -257', 'rs1_h1_val == 2']
Last Code Sequence : 
	-[0x80000d58]:KMABB t6, t5, t4
	-[0x80000d5c]:sd t6, 160(ra)
Current Store : [0x80000d60] : sd t5, 168(ra) -- Store: [0x800034b8]:0xFEFFEFFF00020005




Last Coverpoint : ['rs1_h3_val == -1']
Last Code Sequence : 
	-[0x80000d80]:KMABB t6, t5, t4
	-[0x80000d84]:sd t6, 176(ra)
Current Store : [0x80000d88] : sd t5, 184(ra) -- Store: [0x800034c8]:0xFFFFFFFC00000200




Last Coverpoint : ['rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000db8]:KMABB t6, t5, t4
	-[0x80000dbc]:sd t6, 192(ra)
Current Store : [0x80000dc0] : sd t5, 200(ra) -- Store: [0x800034d8]:0xFFF95555EFFF5555




Last Coverpoint : ['rs2_h0_val == -8193', 'rs1_h3_val == -33', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000df4]:KMABB t6, t5, t4
	-[0x80000df8]:sd t6, 208(ra)
Current Store : [0x80000dfc] : sd t5, 216(ra) -- Store: [0x800034e8]:0xFFDF0100FFFFDFFF




Last Coverpoint : ['rs1_h2_val == -8193', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80000e30]:KMABB t6, t5, t4
	-[0x80000e34]:sd t6, 224(ra)
Current Store : [0x80000e38] : sd t5, 232(ra) -- Store: [0x800034f8]:0xFBFFDFFFFFFAEFFF




Last Coverpoint : ['rs1_h2_val == 2', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000e6c]:KMABB t6, t5, t4
	-[0x80000e70]:sd t6, 240(ra)
Current Store : [0x80000e74] : sd t5, 248(ra) -- Store: [0x80003508]:0x20000002FFFBFFBF




Last Coverpoint : ['rs2_h0_val == -2', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000ea8]:KMABB t6, t5, t4
	-[0x80000eac]:sd t6, 256(ra)
Current Store : [0x80000eb0] : sd t5, 264(ra) -- Store: [0x80003518]:0x00080000FFF9FFDF




Last Coverpoint : ['rs2_h2_val == 1', 'rs2_h0_val == -1025', 'rs1_h1_val == -129', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000edc]:KMABB t6, t5, t4
	-[0x80000ee0]:sd t6, 272(ra)
Current Store : [0x80000ee4] : sd t5, 280(ra) -- Store: [0x80003528]:0x00080002FF7FFFFB




Last Coverpoint : ['rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000f10]:KMABB t6, t5, t4
	-[0x80000f14]:sd t6, 288(ra)
Current Store : [0x80000f18] : sd t5, 296(ra) -- Store: [0x80003538]:0xC0007FFF0003FFFD




Last Coverpoint : ['rs1_h3_val == -3', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000f4c]:KMABB t6, t5, t4
	-[0x80000f50]:sd t6, 304(ra)
Current Store : [0x80000f54] : sd t5, 312(ra) -- Store: [0x80003548]:0xFFFD0003BFFFFFFE




Last Coverpoint : ['rs2_h2_val == -5', 'rs1_h3_val == 32', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000f84]:KMABB t6, t5, t4
	-[0x80000f88]:sd t6, 320(ra)
Current Store : [0x80000f8c] : sd t5, 328(ra) -- Store: [0x80003558]:0x00200080C0004000




Last Coverpoint : ['rs1_h1_val == 21845', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000fbc]:KMABB t6, t5, t4
	-[0x80000fc0]:sd t6, 336(ra)
Current Store : [0x80000fc4] : sd t5, 344(ra) -- Store: [0x80003568]:0x0007004055552000




Last Coverpoint : ['rs2_h2_val == 8', 'rs2_h1_val == 2048', 'rs1_h3_val == 2048', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000ff8]:KMABB t6, t5, t4
	-[0x80000ffc]:sd t6, 352(ra)
Current Store : [0x80001000] : sd t5, 360(ra) -- Store: [0x80003578]:0x08007FFF80000800




Last Coverpoint : ['rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80001034]:KMABB t6, t5, t4
	-[0x80001038]:sd t6, 368(ra)
Current Store : [0x8000103c] : sd t5, 376(ra) -- Store: [0x80003588]:0x00030002FFF60400




Last Coverpoint : ['rs1_h3_val == -32768', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80001070]:KMABB t6, t5, t4
	-[0x80001074]:sd t6, 384(ra)
Current Store : [0x80001078] : sd t5, 392(ra) -- Store: [0x80003598]:0x80000010FFFF0100




Last Coverpoint : ['rs2_h1_val == 2', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x800010ac]:KMABB t6, t5, t4
	-[0x800010b0]:sd t6, 400(ra)
Current Store : [0x800010b4] : sd t5, 408(ra) -- Store: [0x800035a8]:0x0080FFFCEFFF0020




Last Coverpoint : ['rs1_h2_val == -2049', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x800010e4]:KMABB t6, t5, t4
	-[0x800010e8]:sd t6, 416(ra)
Current Store : [0x800010ec] : sd t5, 424(ra) -- Store: [0x800035b8]:0xFFF6F7FFFFFD0010




Last Coverpoint : ['rs1_h3_val == -2049']
Last Code Sequence : 
	-[0x80001120]:KMABB t6, t5, t4
	-[0x80001124]:sd t6, 432(ra)
Current Store : [0x80001128] : sd t5, 440(ra) -- Store: [0x800035c8]:0xF7FF0003C000FFFA




Last Coverpoint : ['rs2_h2_val == -16385', 'rs2_h1_val == -1', 'rs2_h0_val == -4097', 'rs1_h3_val == -2']
Last Code Sequence : 
	-[0x80001158]:KMABB t6, t5, t4
	-[0x8000115c]:sd t6, 448(ra)
Current Store : [0x80001160] : sd t5, 456(ra) -- Store: [0x800035d8]:0xFFFE000901001000




Last Coverpoint : ['rs2_h3_val == 8', 'rs2_h0_val == 32767', 'rs1_h2_val == 1']
Last Code Sequence : 
	-[0x80001194]:KMABB t6, t5, t4
	-[0x80001198]:sd t6, 464(ra)
Current Store : [0x8000119c] : sd t5, 472(ra) -- Store: [0x800035e8]:0xFFEF0001FFEF0400




Last Coverpoint : ['rs2_h1_val == 256', 'rs2_h0_val == -129']
Last Code Sequence : 
	-[0x800011cc]:KMABB t6, t5, t4
	-[0x800011d0]:sd t6, 480(ra)
Current Store : [0x800011d4] : sd t5, 488(ra) -- Store: [0x800035f8]:0x1000000920000100




Last Coverpoint : ['rs2_h2_val == 128', 'rs2_h0_val == -17']
Last Code Sequence : 
	-[0x800011fc]:KMABB t6, t5, t4
	-[0x80001200]:sd t6, 496(ra)
Current Store : [0x80001204] : sd t5, 504(ra) -- Store: [0x80003608]:0x0020100001000000




Last Coverpoint : ['rs2_h0_val == -9']
Last Code Sequence : 
	-[0x80001238]:KMABB t6, t5, t4
	-[0x8000123c]:sd t6, 512(ra)
Current Store : [0x80001240] : sd t5, 520(ra) -- Store: [0x80003618]:0x0020FFFC00040009




Last Coverpoint : ['rs2_h0_val == -32768', 'rs1_h2_val == -513']
Last Code Sequence : 
	-[0x80001270]:KMABB t6, t5, t4
	-[0x80001274]:sd t6, 528(ra)
Current Store : [0x80001278] : sd t5, 536(ra) -- Store: [0x80003628]:0x0006FDFFEFFF0002




Last Coverpoint : ['rs2_h1_val == -5', 'rs2_h0_val == 16384']
Last Code Sequence : 
	-[0x800012a8]:KMABB t6, t5, t4
	-[0x800012ac]:sd t6, 544(ra)
Current Store : [0x800012b0] : sd t5, 552(ra) -- Store: [0x80003638]:0x8000040000080002




Last Coverpoint : ['rs2_h1_val == -17', 'rs2_h0_val == 2048']
Last Code Sequence : 
	-[0x800012e4]:KMABB t6, t5, t4
	-[0x800012e8]:sd t6, 560(ra)
Current Store : [0x800012ec] : sd t5, 568(ra) -- Store: [0x80003648]:0x1000DFFF00083FFF




Last Coverpoint : ['rs2_h0_val == 1024']
Last Code Sequence : 
	-[0x80001320]:KMABB t6, t5, t4
	-[0x80001324]:sd t6, 576(ra)
Current Store : [0x80001328] : sd t5, 584(ra) -- Store: [0x80003658]:0x0008FFBF00805555




Last Coverpoint : ['rs2_h2_val == 8192', 'rs2_h0_val == 512', 'rs1_h2_val == -129']
Last Code Sequence : 
	-[0x8000135c]:KMABB t6, t5, t4
	-[0x80001360]:sd t6, 592(ra)
Current Store : [0x80001364] : sd t5, 600(ra) -- Store: [0x80003668]:0xFFF6FF7F5555F7FF




Last Coverpoint : ['rs2_h0_val == 1']
Last Code Sequence : 
	-[0x80001390]:KMABB t6, t5, t4
	-[0x80001394]:sd t6, 608(ra)
Current Store : [0x80001398] : sd t5, 616(ra) -- Store: [0x80003678]:0x0080F7FF0400FFFA




Last Coverpoint : ['rs2_h2_val == -8193', 'rs1_h3_val == -16385']
Last Code Sequence : 
	-[0x800013bc]:KMABB t6, t5, t4
	-[0x800013c0]:sd t6, 624(ra)
Current Store : [0x800013c4] : sd t5, 632(ra) -- Store: [0x80003688]:0xBFFF0006FBFF0000




Last Coverpoint : ['rs1_h3_val == -21846']
Last Code Sequence : 
	-[0x80001400]:KMABB t6, t5, t4
	-[0x80001404]:sd t6, 640(ra)
Current Store : [0x80001408] : sd t5, 648(ra) -- Store: [0x80003698]:0xAAAA00088000FFFB




Last Coverpoint : ['rs1_h3_val == -513', 'rs1_h2_val == -2']
Last Code Sequence : 
	-[0x80001434]:KMABB t6, t5, t4
	-[0x80001438]:sd t6, 656(ra)
Current Store : [0x8000143c] : sd t5, 664(ra) -- Store: [0x800036a8]:0xFDFFFFFE0000FFFE




Last Coverpoint : ['rs1_h3_val == 256', 'rs1_h1_val == -513']
Last Code Sequence : 
	-[0x80001464]:KMABB t6, t5, t4
	-[0x80001468]:sd t6, 672(ra)
Current Store : [0x8000146c] : sd t5, 680(ra) -- Store: [0x800036b8]:0x01000800FDFF4000




Last Coverpoint : ['rs2_h3_val == 4', 'rs2_h2_val == -1025']
Last Code Sequence : 
	-[0x80001498]:KMABB t6, t5, t4
	-[0x8000149c]:sd t6, 688(ra)
Current Store : [0x800014a0] : sd t5, 696(ra) -- Store: [0x800036c8]:0xFFFD00000005FFFC




Last Coverpoint : ['rs1_h3_val == 16', 'rs1_h1_val == -9']
Last Code Sequence : 
	-[0x800014d4]:KMABB t6, t5, t4
	-[0x800014d8]:sd t6, 704(ra)
Current Store : [0x800014dc] : sd t5, 712(ra) -- Store: [0x800036d8]:0x00100800FFF70007




Last Coverpoint : ['rs2_h2_val == -17']
Last Code Sequence : 
	-[0x80001508]:KMABB t6, t5, t4
	-[0x8000150c]:sd t6, 720(ra)
Current Store : [0x80001510] : sd t5, 728(ra) -- Store: [0x800036e8]:0x8000F7FF00203FFF




Last Coverpoint : ['rs2_h2_val == -9']
Last Code Sequence : 
	-[0x8000153c]:KMABB t6, t5, t4
	-[0x80001540]:sd t6, 736(ra)
Current Store : [0x80001544] : sd t5, 744(ra) -- Store: [0x800036f8]:0x0006FFFAFFBFFFFC




Last Coverpoint : ['rs1_h2_val == -257', 'rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x80001578]:KMABB t6, t5, t4
	-[0x8000157c]:sd t6, 752(ra)
Current Store : [0x80001580] : sd t5, 760(ra) -- Store: [0x80003708]:0xEFFFFEFFF7FFFFBF




Last Coverpoint : ['rs2_h2_val == 64', 'rs1_h1_val == -33']
Last Code Sequence : 
	-[0x800015b4]:KMABB t6, t5, t4
	-[0x800015b8]:sd t6, 768(ra)
Current Store : [0x800015bc] : sd t5, 776(ra) -- Store: [0x80003718]:0xFF7FC000FFDF0006




Last Coverpoint : ['rs1_h2_val == -17']
Last Code Sequence : 
	-[0x800015f0]:KMABB t6, t5, t4
	-[0x800015f4]:sd t6, 784(ra)
Current Store : [0x800015f8] : sd t5, 792(ra) -- Store: [0x80003728]:0x1000FFEFFBFF0200




Last Coverpoint : ['rs1_h2_val == -3']
Last Code Sequence : 
	-[0x8000162c]:KMABB t6, t5, t4
	-[0x80001630]:sd t6, 800(ra)
Current Store : [0x80001634] : sd t5, 808(ra) -- Store: [0x80003738]:0x0008FFFD5555F7FF




Last Coverpoint : ['rs1_h2_val == 16384']
Last Code Sequence : 
	-[0x80001668]:KMABB t6, t5, t4
	-[0x8000166c]:sd t6, 816(ra)
Current Store : [0x80001670] : sd t5, 824(ra) -- Store: [0x80003748]:0x00204000FF7FAAAA




Last Coverpoint : ['rs2_h1_val == -21846']
Last Code Sequence : 
	-[0x800016ac]:KMABB t6, t5, t4
	-[0x800016b0]:sd t6, 832(ra)
Current Store : [0x800016b4] : sd t5, 840(ra) -- Store: [0x80003758]:0xEFFF0040C000FFF8




Last Coverpoint : ['rs1_h2_val == 8192']
Last Code Sequence : 
	-[0x800016e0]:KMABB t6, t5, t4
	-[0x800016e4]:sd t6, 848(ra)
Current Store : [0x800016e8] : sd t5, 856(ra) -- Store: [0x80003768]:0x00052000FFBF0002




Last Coverpoint : ['rs2_h1_val == 32767']
Last Code Sequence : 
	-[0x80001718]:KMABB t6, t5, t4
	-[0x8000171c]:sd t6, 864(ra)
Current Store : [0x80001720] : sd t5, 872(ra) -- Store: [0x80003778]:0xFFFA7FFFFFFDFBFF




Last Coverpoint : ['rs2_h1_val == -16385']
Last Code Sequence : 
	-[0x8000174c]:KMABB t6, t5, t4
	-[0x80001750]:sd t6, 880(ra)
Current Store : [0x80001754] : sd t5, 888(ra) -- Store: [0x80003788]:0xFFF7FFDFEFFFFFFA




Last Coverpoint : ['rs2_h1_val == -8193']
Last Code Sequence : 
	-[0x80001784]:KMABB t6, t5, t4
	-[0x80001788]:sd t6, 896(ra)
Current Store : [0x8000178c] : sd t5, 904(ra) -- Store: [0x80003798]:0xFFFA00000002FFFC




Last Coverpoint : ['rs2_h3_val == 1']
Last Code Sequence : 
	-[0x800017c0]:KMABB t6, t5, t4
	-[0x800017c4]:sd t6, 912(ra)
Current Store : [0x800017c8] : sd t5, 920(ra) -- Store: [0x800037a8]:0x00800010FFFFF7FF




Last Coverpoint : ['rs1_h2_val == 512']
Last Code Sequence : 
	-[0x800017f4]:KMABB t6, t5, t4
	-[0x800017f8]:sd t6, 928(ra)
Current Store : [0x800017fc] : sd t5, 936(ra) -- Store: [0x800037b8]:0xC0000200FFFA0003




Last Coverpoint : ['rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x80001838]:KMABB t6, t5, t4
	-[0x8000183c]:sd t6, 944(ra)
Current Store : [0x80001840] : sd t5, 952(ra) -- Store: [0x800037c8]:0x5555F7FF7FFF0006




Last Coverpoint : ['rs2_h1_val == 16384']
Last Code Sequence : 
	-[0x80001874]:KMABB t6, t5, t4
	-[0x80001878]:sd t6, 960(ra)
Current Store : [0x8000187c] : sd t5, 968(ra) -- Store: [0x800037d8]:0xFFF60005FFFF0003




Last Coverpoint : ['rs1_h3_val == -5']
Last Code Sequence : 
	-[0x800018a8]:KMABB t6, t5, t4
	-[0x800018ac]:sd t6, 976(ra)
Current Store : [0x800018b0] : sd t5, 984(ra) -- Store: [0x800037e8]:0xFFFBFFFD3FFF0003




Last Coverpoint : ['rs2_h1_val == 512']
Last Code Sequence : 
	-[0x800018e0]:KMABB t6, t5, t4
	-[0x800018e4]:sd t6, 992(ra)
Current Store : [0x800018e8] : sd t5, 1000(ra) -- Store: [0x800037f8]:0xFFFA3FFF0009FFDF




Last Coverpoint : ['rs1_h1_val == -257']
Last Code Sequence : 
	-[0x80001918]:KMABB t6, t5, t4
	-[0x8000191c]:sd t6, 1008(ra)
Current Store : [0x80001920] : sd t5, 1016(ra) -- Store: [0x80003808]:0xFFDF0200FEFF0400




Last Coverpoint : ['rs1_h3_val == 16384']
Last Code Sequence : 
	-[0x80001958]:KMABB t6, t5, t4
	-[0x8000195c]:sd t6, 1024(ra)
Current Store : [0x80001960] : sd t5, 1032(ra) -- Store: [0x80003818]:0x40000001F7FFEFFF




Last Coverpoint : ['rs2_h3_val == -1']
Last Code Sequence : 
	-[0x80001990]:KMABB t6, t5, t4
	-[0x80001994]:sd t6, 1040(ra)
Current Store : [0x80001998] : sd t5, 1048(ra) -- Store: [0x80003828]:0x00070005EFFF0020




Last Coverpoint : ['opcode : kmabb', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == -4097', 'rs2_h2_val == 1024', 'rs1_h3_val == -4097', 'rs1_h2_val == -65']
Last Code Sequence : 
	-[0x800019c8]:KMABB t6, t5, t4
	-[0x800019cc]:sd t6, 1056(ra)
Current Store : [0x800019d0] : sd t5, 1064(ra) -- Store: [0x80003838]:0xEFFFFFBF0003C000




Last Coverpoint : ['opcode : kmabb', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == 32767', 'rs2_h2_val == -513', 'rs2_h0_val == 64', 'rs1_h3_val == -257', 'rs1_h2_val == 4096', 'rs1_h1_val == -16385', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x80001a0c]:KMABB t6, t5, t4
	-[0x80001a10]:sd t6, 1072(ra)
Current Store : [0x80001a14] : sd t5, 1080(ra) -- Store: [0x80003848]:0xFEFF1000BFFFBFFF




Last Coverpoint : ['rs2_h3_val == -2049']
Last Code Sequence : 
	-[0x80001a44]:KMABB t6, t5, t4
	-[0x80001a48]:sd t6, 1088(ra)
Current Store : [0x80001a4c] : sd t5, 1096(ra) -- Store: [0x80003858]:0xFFF8BFFFFFFC0006




Last Coverpoint : ['opcode : kmabb', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == -513', 'rs2_h2_val == 4', 'rs2_h1_val == -33', 'rs2_h0_val == -5', 'rs1_h2_val == 256', 'rs1_h1_val == 512', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80001a7c]:KMABB t6, t5, t4
	-[0x80001a80]:sd t6, 1104(ra)
Current Store : [0x80001a84] : sd t5, 1112(ra) -- Store: [0x80003868]:0xFFFC01000200FF7F





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

|s.no|            signature             |                                                                                                                                                                                                                                        coverpoints                                                                                                                                                                                                                                        |                                 code                                 |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80003210]<br>0xBEADFEEDBEADFF11|- opcode : kmabb<br> - rs1 : x8<br> - rs2 : x8<br> - rd : x17<br> - rs1 == rs2 != rd<br> - rs1_h3_val == rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val < 0<br> - rs1_h2_val == rs2_h2_val<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h3_val == -129<br> - rs2_h2_val == 0<br> - rs2_h1_val == -65<br> - rs1_h3_val == -129<br> - rs1_h2_val == 0<br> - rs1_h1_val == -65<br> |[0x800003d0]:KMABB a7, fp, fp<br> [0x800003d4]:sd a7, 0(s1)<br>       |
|   2|[0x80003220]<br>0xF00F0400000A001E|- rs1 : x21<br> - rs2 : x21<br> - rd : x21<br> - rs1 == rs2 == rd<br> - rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h3_val == -4097<br> - rs2_h2_val == 1024<br> - rs1_h3_val == -4097<br> - rs1_h2_val == 1024<br>                                                                                                                                                                                        |[0x80000408]:KMABB s5, s5, s5<br> [0x8000040c]:sd s5, 16(s1)<br>      |
|   3|[0x80003230]<br>0x76DEC6F676DE56FD|- rs1 : x5<br> - rs2 : x1<br> - rd : x26<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h3_val != rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val > 0<br> - rs1_h2_val != rs2_h2_val<br> - rs1_h2_val < 0 and rs2_h2_val > 0<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h1_val == 1024<br> - rs1_h2_val == -4097<br> - rs1_h1_val == 1<br> - rs1_h0_val == -21846<br>                                         |[0x8000043c]:KMABB s10, t0, ra<br> [0x80000440]:sd s10, 32(s1)<br>    |
|   4|[0x80003240]<br>0x0000FC00FFEC0000|- rs1 : x15<br> - rs2 : x30<br> - rd : x15<br> - rs1 == rd != rs2<br> - rs1_h0_val == -32768<br> - rs1_h3_val > 0 and rs2_h3_val < 0<br> - rs1_h2_val > 0 and rs2_h2_val < 0<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs2_h3_val == -1025<br> - rs2_h2_val == -33<br> - rs1_h3_val == 1<br> - rs1_h2_val == 32<br> - rs1_h1_val == -17<br>                                                                                                                                            |[0x80000474]:KMABB a5, a5, t5<br> [0x80000478]:sd a5, 48(s1)<br>      |
|   5|[0x80003250]<br>0x00890000F7FD8000|- rs1 : x22<br> - rs2 : x27<br> - rd : x27<br> - rs2 == rd != rs1<br> - rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs1_h2_val < 0 and rs2_h2_val < 0<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h3_val == 128<br> - rs2_h1_val == -2049<br> - rs1_h3_val == 21845<br> - rs1_h2_val == -33<br>                                                                                                                                                                                          |[0x800004ac]:KMABB s11, s6, s11<br> [0x800004b0]:sd s11, 64(s1)<br>   |
|   6|[0x80003260]<br>0xB6FAB7FBB6FAAF7B|- rs1 : x4<br> - rs2 : x10<br> - rd : x23<br> - rs2_h0_val == 128<br> - rs1_h1_val == -4097<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                    |[0x800004e0]:KMABB s7, tp, a0<br> [0x800004e4]:sd s7, 80(s1)<br>      |
|   7|[0x80003270]<br>0xFC008FDF04000077|- rs1 : x1<br> - rs2 : x6<br> - rd : x30<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs2_h2_val == 4096<br> - rs2_h1_val == -3<br> - rs2_h0_val == 16<br> - rs1_h3_val == -1025<br> - rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                             |[0x80000518]:KMABB t5, ra, t1<br> [0x8000051c]:sd t5, 96(s1)<br>      |
|   8|[0x80003280]<br>0xFBFF002A08002128|- rs1 : x28<br> - rs2 : x7<br> - rd : x1<br> - rs2_h3_val == -65<br> - rs2_h0_val == -33<br> - rs1_h3_val == 128<br> - rs1_h2_val == -1<br> - rs1_h1_val == 1024<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                                              |[0x80000554]:KMABB ra, t3, t2<br> [0x80000558]:sd ra, 112(s1)<br>     |
|   9|[0x80003290]<br>0xFBB71AB7FCB6FAB7|- rs1 : x2<br> - rs2 : x18<br> - rd : x31<br> - rs2_h2_val == 2048<br> - rs2_h1_val == 32<br> - rs2_h0_val == 4096<br> - rs1_h3_val == 4<br> - rs1_h2_val == 4<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                |[0x80000588]:KMABB t6, sp, s2<br> [0x8000058c]:sd t6, 128(s1)<br>     |
|  10|[0x800032a0]<br>0x7D5DA8847D9BFDDB|- rs1 : x18<br> - rs2 : x28<br> - rd : x16<br> - rs2_h3_val == -21846<br> - rs2_h1_val == 21845<br> - rs2_h0_val == 8192<br> - rs1_h3_val == -17<br> - rs1_h2_val == 21845<br> - rs1_h1_val == -21846<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                          |[0x800005c8]:KMABB a6, s2, t3<br> [0x800005cc]:sd a6, 144(s1)<br>     |
|  11|[0x800032b0]<br>0x0004DF80F7FF007E|- rs1 : x3<br> - rs2 : x13<br> - rd : x10<br> - rs2_h3_val == 21845<br> - rs2_h2_val == -65<br> - rs2_h1_val == 8192<br> - rs2_h0_val == 2<br> - rs1_h3_val == 2<br> - rs1_h2_val == 128<br> - rs1_h1_val == -1025<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                              |[0x800005fc]:KMABB a0, gp, a3<br> [0x80000600]:sd a0, 160(s1)<br>     |
|  12|[0x800032c0]<br>0x00010000EFFFFFEF|- rs1 : x0<br> - rs2 : x5<br> - rd : x4<br> - rs2_h3_val == 32767<br> - rs2_h2_val == -513<br> - rs2_h0_val == 64<br> - rs1_h3_val == 0<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                                                                                                    |[0x80000640]:KMABB tp, zero, t0<br> [0x80000644]:sd tp, 176(s1)<br>   |
|  13|[0x800032d0]<br>0x000200A3FBD554FF|- rs1 : x6<br> - rs2 : x11<br> - rd : x3<br> - rs2_h3_val == -16385<br> - rs2_h0_val == -21846<br> - rs1_h3_val == -65<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                         |[0x8000067c]:KMABB gp, t1, a1<br> [0x80000680]:sd gp, 192(s1)<br>     |
|  14|[0x800032e0]<br>0xFFBFBF5F0400FFD9|- rs1 : x13<br> - rs2 : x16<br> - rd : x7<br> - rs2_h3_val == -8193<br> - rs2_h2_val == -129<br> - rs2_h1_val == 64<br> - rs2_h0_val == -3<br> - rs1_h3_val == 4096<br> - rs1_h1_val == -16385<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                   |[0x800006b8]:KMABB t2, a3, a6<br> [0x800006bc]:sd t2, 208(s1)<br>     |
|  15|[0x800032f0]<br>0xBFFF00070003AAAA|- rs1 : x19<br> - rs2 : x0<br> - rd : x11<br> - rs2_h3_val == 0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h2_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                 |[0x800006f0]:KMABB a1, s3, zero<br> [0x800006f4]:sd a1, 224(s1)<br>   |
|  16|[0x80003300]<br>0x0000000000000000|- rs1 : x25<br> - rs2 : x3<br> - rd : x0<br> - rs2_h3_val == -513<br> - rs2_h2_val == 4<br> - rs2_h1_val == -33<br> - rs2_h0_val == -5<br> - rs1_h2_val == 256<br> - rs1_h1_val == 512<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                        |[0x80000728]:KMABB zero, s9, gp<br> [0x8000072c]:sd zero, 240(s1)<br> |
|  17|[0x80003310]<br>0xDFF88000FFFC000E|- rs1 : x31<br> - rs2 : x23<br> - rd : x19<br> - rs2_h3_val == -257<br> - rs2_h2_val == 32767<br> - rs2_h1_val == -2<br> - rs2_h0_val == 8<br> - rs1_h3_val == 1024<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                              |[0x80000760]:KMABB s3, t6, s7<br> [0x80000764]:sd s3, 256(s1)<br>     |
|  18|[0x80003320]<br>0xD5BA8857D5C0DDB5|- rs1 : x16<br> - rs2 : x29<br> - rd : x12<br> - rs2_h3_val == -33<br> - rs2_h2_val == -21846<br> - rs1_h3_val == 32767<br> - rs1_h2_val == 16<br> - rs1_h1_val == 4096<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                      |[0x800007a4]:KMABB a2, a6, t4<br> [0x800007a8]:sd a2, 272(s1)<br>     |
|  19|[0x80003330]<br>0x7FFFFDBF40020040|- rs1 : x27<br> - rs2 : x22<br> - rd : x5<br> - rs2_h3_val == -17<br> - rs2_h2_val == -1<br> - rs1_h2_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                        |[0x800007e4]:KMABB t0, s11, s6<br> [0x800007e8]:sd t0, 0(ra)<br>      |
|  20|[0x80003340]<br>0x0003F70400050FFC|- rs1 : x14<br> - rs2 : x25<br> - rd : x2<br> - rs2_h3_val == -9<br> - rs2_h2_val == 256<br> - rs2_h0_val == -16385<br> - rs1_h3_val == 64<br> - rs1_h2_val == -9<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                |[0x80000820]:KMABB sp, a4, s9<br> [0x80000824]:sd sp, 16(ra)<br>      |
|  21|[0x80003350]<br>0xB7D5BFDDB7D5DFE1|- rs1 : x11<br> - rs2 : x15<br> - rd : x20<br> - rs2_h3_val == -5<br> - rs2_h2_val == -32768<br> - rs2_h1_val == 4<br> - rs2_h0_val == -2049<br> - rs1_h1_val == -3<br>                                                                                                                                                                                                                                                                                                                    |[0x80000850]:KMABB s4, a1, a5<br> [0x80000854]:sd s4, 32(ra)<br>      |
|  22|[0x80003360]<br>0x0FFEFF80BFFF1002|- rs1 : x23<br> - rs2 : x9<br> - rd : x13<br> - rs2_h3_val == -3<br> - rs2_h2_val == -257<br> - rs2_h1_val == 8<br> - rs1_h3_val == 512<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                         |[0x8000087c]:KMABB a3, s7, s1<br> [0x80000880]:sd a3, 48(ra)<br>      |
|  23|[0x80003370]<br>0x2A2A0000003F4207|- rs1 : x26<br> - rs2 : x2<br> - rd : x8<br> - rs2_h3_val == -2<br> - rs2_h0_val == -513<br> - rs1_h2_val == -32768<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                                                         |[0x800008b0]:KMABB fp, s10, sp<br> [0x800008b4]:sd fp, 64(ra)<br>     |
|  24|[0x80003380]<br>0xFFFBFEDF0007C038|- rs1 : x29<br> - rs2 : x19<br> - rd : x9<br> - rs2_h3_val == -32768<br> - rs2_h2_val == 32<br> - rs2_h1_val == -32768<br> - rs1_h3_val == 8<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                     |[0x800008ec]:KMABB s1, t4, s3<br> [0x800008f0]:sd s1, 80(ra)<br>      |
|  25|[0x80003390]<br>0xDFF741002000BFF7|- rs1 : x24<br> - rs2 : x20<br> - rd : x25<br> - rs2_h3_val == 16384<br> - rs2_h1_val == -1025<br> - rs2_h0_val == -1<br> - rs1_h3_val == -9<br> - rs1_h2_val == 32767<br> - rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                                                       |[0x80000928]:KMABB s9, s8, s4<br> [0x8000092c]:sd s9, 96(ra)<br>      |
|  26|[0x800033a0]<br>0xFFBEFFC6FFF7FF00|- rs1 : x9<br> - rs2 : x17<br> - rd : x6<br> - rs2_h3_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000964]:KMABB t1, s1, a7<br> [0x80000968]:sd t1, 112(ra)<br>     |
|  27|[0x800033b0]<br>0x00411FF7EAA9A004|- rs1 : x12<br> - rs2 : x31<br> - rd : x14<br> - rs2_h3_val == 4096<br> - rs1_h2_val == 8<br> - rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                    |[0x8000099c]:KMABB a4, a2, t6<br> [0x800009a0]:sd a4, 128(ra)<br>     |
|  28|[0x800033c0]<br>0xFFEE3FFF003EFEFA|- rs1 : x7<br> - rs2 : x4<br> - rd : x22<br> - rs2_h3_val == 2048<br> - rs2_h2_val == 16384<br> - rs2_h1_val == -513<br> - rs2_h0_val == 256<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                                                                                                  |[0x800009d8]:KMABB s6, t2, tp<br> [0x800009dc]:sd s6, 144(ra)<br>     |
|  29|[0x800033d0]<br>0xFFEF615580000000|- rs1 : x20<br> - rs2 : x12<br> - rd : x18<br> - rs2_h3_val == 1024<br> - rs2_h2_val == 512<br> - rs1_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                     |[0x80000a14]:KMABB s2, s4, a2<br> [0x80000a18]:sd s2, 160(ra)<br>     |
|  30|[0x800033e0]<br>0xFF08AFFFFFF5000B|- rs1 : x10<br> - rs2 : x24<br> - rd : x29<br> - rs2_h3_val == 512<br> - rs2_h1_val == 16<br> - rs2_h0_val == 21845<br> - rs1_h2_val == -1025<br> - rs1_h1_val == 128<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                                           |[0x80000a50]:KMABB t4, a0, s8<br> [0x80000a54]:sd t4, 176(ra)<br>     |
|  31|[0x800033f0]<br>0x01F83F000010D976|- rs1 : x30<br> - rs2 : x26<br> - rd : x24<br> - rs2_h3_val == 256<br> - rs2_h2_val == -2049<br> - rs2_h1_val == 1<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                                           |[0x80000a94]:KMABB s8, t5, s10<br> [0x80000a98]:sd s8, 192(ra)<br>    |
|  32|[0x80003400]<br>0xAAAA040555551000|- rs1 : x17<br> - rs2 : x14<br> - rd : x28<br> - rs2_h3_val == 64<br> - rs2_h1_val == -9<br> - rs1_h3_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                      |[0x80000acc]:KMABB t3, a7, a4<br> [0x80000ad0]:sd t3, 208(ra)<br>     |
|  33|[0x80003410]<br>0x10000340FFF7D041|- rs2_h3_val == 32<br> - rs2_h2_val == -3<br> - rs2_h0_val == -65<br> - rs1_h1_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000b10]:KMABB t6, t5, t4<br> [0x80000b14]:sd t6, 0(ra)<br>       |
|  34|[0x80003420]<br>0x10001340FFF7D061|- rs2_h3_val == 16<br> - rs2_h2_val == 2<br> - rs2_h0_val == 32<br> - rs1_h2_val == 2048<br> - rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                         |[0x80000b48]:KMABB t6, t5, t4<br> [0x80000b4c]:sd t6, 16(ra)<br>      |
|  35|[0x80003430]<br>0x1002133EFFF7D061|- rs2_h2_val == 21845<br> - rs1_h1_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000b88]:KMABB t6, t5, t4<br> [0x80000b8c]:sd t6, 32(ra)<br>      |
|  36|[0x80003440]<br>0x1002133EFFF7D091|- rs2_h3_val == 2<br> - rs2_h2_val == -4097<br> - rs2_h1_val == 128<br> - rs1_h1_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000bc4]:KMABB t6, t5, t4<br> [0x80000bc8]:sd t6, 48(ra)<br>      |
|  37|[0x80003450]<br>0x1002134DFFF7CC8D|- rs2_h0_val == -257<br> - rs1_h2_val == -5<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000c00]:KMABB t6, t5, t4<br> [0x80000c04]:sd t6, 64(ra)<br>      |
|  38|[0x80003460]<br>0x10021395FFF7CBCD|- rs2_h1_val == 4096<br> - rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000c34]:KMABB t6, t5, t4<br> [0x80000c38]:sd t6, 80(ra)<br>      |
|  39|[0x80003470]<br>0x10031395FFF2766D|- rs2_h2_val == 16<br> - rs2_h1_val == -4097<br> - rs1_h3_val == -8193<br> - rs1_h2_val == 4096<br> - rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                 |[0x80000c70]:KMABB t6, t5, t4<br> [0x80000c74]:sd t6, 96(ra)<br>      |
|  40|[0x80003480]<br>0x10031995FFF2706D|- rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000ca4]:KMABB t6, t5, t4<br> [0x80000ca8]:sd t6, 112(ra)<br>     |
|  41|[0x80003490]<br>0x0FED6F00FFEF7067|- rs2_h1_val == -129<br> - rs1_h2_val == -65<br> - rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000ce0]:KMABB t6, t5, t4<br> [0x80000ce4]:sd t6, 128(ra)<br>     |
|  42|[0x800034a0]<br>0x0FEE19ACFFEE7047|- rs2_h2_val == -2<br> - rs1_h2_val == -21846<br> - rs1_h1_val == 4<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000d1c]:KMABB t6, t5, t4<br> [0x80000d20]:sd t6, 144(ra)<br>     |
|  43|[0x800034b0]<br>0x0FEE39AEFFEE705B|- rs2_h1_val == -257<br> - rs2_h0_val == 4<br> - rs1_h3_val == -257<br> - rs1_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000d58]:KMABB t6, t5, t4<br> [0x80000d5c]:sd t6, 160(ra)<br>     |
|  44|[0x800034c0]<br>0x0FEE19AEFFEE745B|- rs1_h3_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000d80]:KMABB t6, t5, t4<br> [0x80000d84]:sd t6, 176(ra)<br>     |
|  45|[0x800034d0]<br>0x0FEC19B0EA99345B|- rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000db8]:KMABB t6, t5, t4<br> [0x80000dbc]:sd t6, 192(ra)<br>     |
|  46|[0x800034e0]<br>0x0FEBD8B0EE99745C|- rs2_h0_val == -8193<br> - rs1_h3_val == -33<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000df4]:KMABB t6, t5, t4<br> [0x80000df8]:sd t6, 208(ra)<br>     |
|  47|[0x800034f0]<br>0x100BF9B1F099A45D|- rs1_h2_val == -8193<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000e30]:KMABB t6, t5, t4<br> [0x80000e34]:sd t6, 224(ra)<br>     |
|  48|[0x80003500]<br>0x100BF9BBF099A359|- rs1_h2_val == 2<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000e6c]:KMABB t6, t5, t4<br> [0x80000e70]:sd t6, 240(ra)<br>     |
|  49|[0x80003510]<br>0x100BF9BBF099A39B|- rs2_h0_val == -2<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000ea8]:KMABB t6, t5, t4<br> [0x80000eac]:sd t6, 256(ra)<br>     |
|  50|[0x80003520]<br>0x100BF9BDF099B7A0|- rs2_h2_val == 1<br> - rs2_h0_val == -1025<br> - rs1_h1_val == -129<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000edc]:KMABB t6, t5, t4<br> [0x80000ee0]:sd t6, 272(ra)<br>     |
|  51|[0x80003530]<br>0x100C79BCF099B79A|- rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000f10]:KMABB t6, t5, t4<br> [0x80000f14]:sd t6, 288(ra)<br>     |
|  52|[0x80003540]<br>0x100C7959F099B792|- rs1_h3_val == -3<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000f4c]:KMABB t6, t5, t4<br> [0x80000f50]:sd t6, 304(ra)<br>     |
|  53|[0x80003550]<br>0x100C76D9F0A1B792|- rs2_h2_val == -5<br> - rs1_h3_val == 32<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000f84]:KMABB t6, t5, t4<br> [0x80000f88]:sd t6, 320(ra)<br>     |
|  54|[0x80003560]<br>0x100C7AD9ECA19792|- rs1_h1_val == 21845<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000fbc]:KMABB t6, t5, t4<br> [0x80000fc0]:sd t6, 336(ra)<br>     |
|  55|[0x80003570]<br>0x10107AD1ECA15F92|- rs2_h2_val == 8<br> - rs2_h1_val == 2048<br> - rs1_h3_val == 2048<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000ff8]:KMABB t6, t5, t4<br> [0x80000ffc]:sd t6, 352(ra)<br>     |
|  56|[0x80003580]<br>0x10107AE1ECA17B92|- rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001034]:KMABB t6, t5, t4<br> [0x80001038]:sd t6, 368(ra)<br>     |
|  57|[0x80003590]<br>0x10106AD1ECA18392|- rs1_h3_val == -32768<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001070]:KMABB t6, t5, t4<br> [0x80001074]:sd t6, 384(ra)<br>     |
|  58|[0x800035a0]<br>0x10106ED5ECA17F72|- rs2_h1_val == 2<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800010ac]:KMABB t6, t5, t4<br> [0x800010b0]:sd t6, 400(ra)<br>     |
|  59|[0x800035b0]<br>0x10106ED5ECA27F72|- rs1_h2_val == -2049<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800010e4]:KMABB t6, t5, t4<br> [0x800010e8]:sd t6, 416(ra)<br>     |
|  60|[0x800035c0]<br>0x10106EEDECA280F8|- rs1_h3_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001120]:KMABB t6, t5, t4<br> [0x80001124]:sd t6, 432(ra)<br>     |
|  61|[0x800035d0]<br>0x100E2EE4EBA270F8|- rs2_h2_val == -16385<br> - rs2_h1_val == -1<br> - rs2_h0_val == -4097<br> - rs1_h3_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001158]:KMABB t6, t5, t4<br> [0x8000115c]:sd t6, 448(ra)<br>     |
|  62|[0x800035e0]<br>0x100E2EE3EDA26CF8|- rs2_h3_val == 8<br> - rs2_h0_val == 32767<br> - rs1_h2_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001194]:KMABB t6, t5, t4<br> [0x80001198]:sd t6, 464(ra)<br>     |
|  63|[0x800035f0]<br>0x10106EDAEDA1EBF8|- rs2_h1_val == 256<br> - rs2_h0_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800011cc]:KMABB t6, t5, t4<br> [0x800011d0]:sd t6, 480(ra)<br>     |
|  64|[0x80003600]<br>0x10186EDAEDA1EBF8|- rs2_h2_val == 128<br> - rs2_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800011fc]:KMABB t6, t5, t4<br> [0x80001200]:sd t6, 496(ra)<br>     |
|  65|[0x80003610]<br>0x10186EFAEDA1EBA7|- rs2_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001238]:KMABB t6, t5, t4<br> [0x8000123c]:sd t6, 512(ra)<br>     |
|  66|[0x80003620]<br>0x10182EDAEDA0EBA7|- rs2_h0_val == -32768<br> - rs1_h2_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001270]:KMABB t6, t5, t4<br> [0x80001274]:sd t6, 528(ra)<br>     |
|  67|[0x80003630]<br>0x11182EDAEDA16BA7|- rs2_h1_val == -5<br> - rs2_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800012a8]:KMABB t6, t5, t4<br> [0x800012ac]:sd t6, 544(ra)<br>     |
|  68|[0x80003640]<br>0x101826DAEFA163A7|- rs2_h1_val == -17<br> - rs2_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800012e4]:KMABB t6, t5, t4<br> [0x800012e8]:sd t6, 560(ra)<br>     |
|  69|[0x80003650]<br>0x1028671BF0F6B7A7|- rs2_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001320]:KMABB t6, t5, t4<br> [0x80001324]:sd t6, 576(ra)<br>     |
|  70|[0x80003660]<br>0x1018471BF0E6B5A7|- rs2_h2_val == 8192<br> - rs2_h0_val == 512<br> - rs1_h2_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x8000135c]:KMABB t6, t5, t4<br> [0x80001360]:sd t6, 592(ra)<br>     |
|  71|[0x80003670]<br>0x0FF8431BF0E6B5A1|- rs2_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001390]:KMABB t6, t5, t4<br> [0x80001394]:sd t6, 608(ra)<br>     |
|  72|[0x80003680]<br>0x0FF78315F0E6B5A1|- rs2_h2_val == -8193<br> - rs1_h3_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800013bc]:KMABB t6, t5, t4<br> [0x800013c0]:sd t6, 624(ra)<br>     |
|  73|[0x80003690]<br>0x0FF78355F0E6B592|- rs1_h3_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001400]:KMABB t6, t5, t4<br> [0x80001404]:sd t6, 640(ra)<br>     |
|  74|[0x800036a0]<br>0x0FF7A357F0E6B590|- rs1_h3_val == -513<br> - rs1_h2_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001434]:KMABB t6, t5, t4<br> [0x80001438]:sd t6, 656(ra)<br>     |
|  75|[0x800036b0]<br>0x0FF75357EFE67590|- rs1_h3_val == 256<br> - rs1_h1_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001464]:KMABB t6, t5, t4<br> [0x80001468]:sd t6, 672(ra)<br>     |
|  76|[0x800036c0]<br>0x0FF75357EFE6B594|- rs2_h3_val == 4<br> - rs2_h2_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001498]:KMABB t6, t5, t4<br> [0x8000149c]:sd t6, 688(ra)<br>     |
|  77|[0x800036d0]<br>0x0FF74B57EFE6B571|- rs1_h3_val == 16<br> - rs1_h1_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800014d4]:KMABB t6, t5, t4<br> [0x800014d8]:sd t6, 704(ra)<br>     |
|  78|[0x800036e0]<br>0x0FF7D368F066B371|- rs2_h2_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80001508]:KMABB t6, t5, t4<br> [0x8000150c]:sd t6, 720(ra)<br>     |
|  79|[0x800036f0]<br>0x0FF7D39EF06808C9|- rs2_h2_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x8000153c]:KMABB t6, t5, t4<br> [0x80001540]:sd t6, 736(ra)<br>     |
|  80|[0x80003700]<br>0x0FF7DCA7F06800A9|- rs1_h2_val == -257<br> - rs1_h1_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001578]:KMABB t6, t5, t4<br> [0x8000157c]:sd t6, 752(ra)<br>     |
|  81|[0x80003710]<br>0x0FE7DCA7F067FDA3|- rs2_h2_val == 64<br> - rs1_h1_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800015b4]:KMABB t6, t5, t4<br> [0x800015b8]:sd t6, 768(ra)<br>     |
|  82|[0x80003720]<br>0x0FE7D867EFE7FBA3|- rs1_h2_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800015f0]:KMABB t6, t5, t4<br> [0x800015f4]:sd t6, 784(ra)<br>     |
|  83|[0x80003730]<br>0x0FE7F06AEFEA03E4|- rs1_h2_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x8000162c]:KMABB t6, t5, t4<br> [0x80001630]:sd t6, 800(ra)<br>     |
|  84|[0x80003740]<br>0x1067F06AEFDF5924|- rs1_h2_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001668]:KMABB t6, t5, t4<br> [0x8000166c]:sd t6, 816(ra)<br>     |
|  85|[0x80003750]<br>0x105FF02AEFE203D4|- rs2_h1_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800016ac]:KMABB t6, t5, t4<br> [0x800016b0]:sd t6, 832(ra)<br>     |
|  86|[0x80003760]<br>0x185FD02AEFE203C4|- rs1_h2_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800016e0]:KMABB t6, t5, t4<br> [0x800016e4]:sd t6, 848(ra)<br>     |
|  87|[0x80003770]<br>0x185ED02CEFD1FFC4|- rs2_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001718]:KMABB t6, t5, t4<br> [0x8000171c]:sd t6, 864(ra)<br>     |
|  88|[0x80003780]<br>0x185ECF66EFD1FF04|- rs2_h1_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x8000174c]:KMABB t6, t5, t4<br> [0x80001750]:sd t6, 880(ra)<br>     |
|  89|[0x80003790]<br>0x185ECF66EFD1FF24|- rs2_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001784]:KMABB t6, t5, t4<br> [0x80001788]:sd t6, 896(ra)<br>     |
|  90|[0x800037a0]<br>0x1866CF56EFDA0825|- rs2_h3_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800017c0]:KMABB t6, t5, t4<br> [0x800017c4]:sd t6, 912(ra)<br>     |
|  91|[0x800037b0]<br>0x1865CD56EFDA07F2|- rs1_h2_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800017f4]:KMABB t6, t5, t4<br> [0x800017f8]:sd t6, 928(ra)<br>     |
|  92|[0x800037c0]<br>0x1865AD52EFDD07EC|- rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001838]:KMABB t6, t5, t4<br> [0x8000183c]:sd t6, 944(ra)<br>     |
|  93|[0x800037d0]<br>0x1865FD52EFDD081C|- rs2_h1_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001874]:KMABB t6, t5, t4<br> [0x80001878]:sd t6, 960(ra)<br>     |
|  94|[0x800037e0]<br>0x1865FD58EFDD0837|- rs1_h3_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800018a8]:KMABB t6, t5, t4<br> [0x800018ac]:sd t6, 976(ra)<br>     |
|  95|[0x800037f0]<br>0x18A5FC58EFDD08FD|- rs2_h1_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800018e0]:KMABB t6, t5, t4<br> [0x800018e4]:sd t6, 992(ra)<br>     |
|  96|[0x80003800]<br>0x1885FA58EFDD28FD|- rs1_h1_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001918]:KMABB t6, t5, t4<br> [0x8000191c]:sd t6, 1008(ra)<br>    |
|  97|[0x80003810]<br>0x18861A58EFD5287D|- rs1_h3_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001958]:KMABB t6, t5, t4<br> [0x8000195c]:sd t6, 1024(ra)<br>    |
|  98|[0x80003820]<br>0x18862458EFD4A85D|- rs2_h3_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001990]:KMABB t6, t5, t4<br> [0x80001994]:sd t6, 1040(ra)<br>    |
|  99|[0x80003850]<br>0x1866505DEFC62697|- rs2_h3_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001a44]:KMABB t6, t5, t4<br> [0x80001a48]:sd t6, 1088(ra)<br>    |
