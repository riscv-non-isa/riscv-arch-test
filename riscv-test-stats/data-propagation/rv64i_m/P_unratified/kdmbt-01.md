
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800019a0')]      |
| SIG_REGION                | [('0x80003210', '0x80003850', '200 dwords')]      |
| COV_LABELS                | kdmbt      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kdmbt-01.S    |
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
      [0x80001344]:KDMBT t6, t5, t4
      [0x80001348]:sd t6, 624(ra)
 -- Signature Address: 0x80003670 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : kdmbt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs2_h3_val == -16385
      - rs2_h2_val == -9
      - rs2_h1_val == 16
      - rs2_h0_val == -1
      - rs1_h3_val == -129
      - rs1_h2_val == 16
      - rs1_h1_val == 0
      - rs1_h0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001754]:KDMBT t6, t5, t4
      [0x80001758]:sd t6, 928(ra)
 -- Signature Address: 0x800037a0 Data: 0x0000000000000004
 -- Redundant Coverpoints hit by the op
      - opcode : kdmbt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h3_val == 8
      - rs2_h2_val == -513
      - rs2_h1_val == 2
      - rs1_h2_val == 0
      - rs1_h1_val == -17
      - rs1_h0_val == 1




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001918]:KDMBT t6, t5, t4
      [0x8000191c]:sd t6, 1056(ra)
 -- Signature Address: 0x80003820 Data: 0xFFFFFFFFFFFFFFFA
 -- Redundant Coverpoints hit by the op
      - opcode : kdmbt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h3_val == 21845
      - rs2_h2_val == 0
      - rs2_h1_val == -3
      - rs2_h0_val == -33
      - rs1_h3_val == -2
      - rs1_h2_val == -4097
      - rs1_h0_val == 1






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kdmbt', 'rs1 : x21', 'rs2 : x21', 'rd : x1', 'rs1 == rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val == rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == -21846', 'rs2_h2_val == -1', 'rs2_h1_val == -513', 'rs2_h0_val == 1', 'rs1_h3_val == -21846', 'rs1_h2_val == -1', 'rs1_h1_val == -513', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x800003c8]:KDMBT ra, s5, s5
	-[0x800003cc]:sd ra, 0(t0)
Current Store : [0x800003d0] : sd s5, 8(t0) -- Store: [0x80003218]:0xAAAAFFFFFDFF0001




Last Coverpoint : ['rs1 : x24', 'rs2 : x24', 'rd : x24', 'rs1 == rs2 == rd', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs2_h3_val == 8192', 'rs2_h2_val == 16', 'rs2_h1_val == -21846', 'rs2_h0_val == 4096', 'rs1_h3_val == 8192', 'rs1_h2_val == 16', 'rs1_h1_val == -21846', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000408]:KDMBT s8, s8, s8
	-[0x8000040c]:sd s8, 16(t0)
Current Store : [0x80000410] : sd s8, 24(t0) -- Store: [0x80003228]:0xFFFFFFFFF5554000




Last Coverpoint : ['rs1 : x30', 'rs2 : x19', 'rd : x29', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h3_val == 2048', 'rs2_h2_val == -513', 'rs2_h1_val == -4097', 'rs2_h0_val == 32', 'rs1_h3_val == -513', 'rs1_h2_val == 2', 'rs1_h1_val == -4097', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x8000044c]:KDMBT t4, t5, s3
	-[0x80000450]:sd t4, 32(t0)
Current Store : [0x80000454] : sd t5, 40(t0) -- Store: [0x80003238]:0xFDFF0002EFFF0080




Last Coverpoint : ['rs1 : x17', 'rs2 : x31', 'rd : x17', 'rs1 == rd != rs2', 'rs1_h0_val == -32768', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == -16385', 'rs2_h2_val == 8192', 'rs2_h1_val == 1', 'rs2_h0_val == -1025', 'rs1_h3_val == -1025', 'rs1_h2_val == -2']
Last Code Sequence : 
	-[0x80000488]:KDMBT a7, a7, t6
	-[0x8000048c]:sd a7, 48(t0)
Current Store : [0x80000490] : sd a7, 56(t0) -- Store: [0x80003248]:0xFFFFFFFFFFFF0000




Last Coverpoint : ['rs1 : x18', 'rs2 : x3', 'rd : x3', 'rs2 == rd != rs1', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == -5', 'rs2_h2_val == -5', 'rs2_h1_val == -5', 'rs1_h1_val == 21845', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x800004c0]:KDMBT gp, s2, gp
	-[0x800004c4]:sd gp, 64(t0)
Current Store : [0x800004c8] : sd s2, 72(t0) -- Store: [0x80003258]:0x0005FFF65555FFFD




Last Coverpoint : ['rs1 : x2', 'rs2 : x26', 'rd : x27', 'rs2_h3_val == 256', 'rs2_h1_val == 256', 'rs1_h3_val == -1', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x800004f4]:KDMBT s11, sp, s10
	-[0x800004f8]:sd s11, 80(t0)
Current Store : [0x800004fc] : sd sp, 88(t0) -- Store: [0x80003268]:0xFFFFFFF9FFF6FFBF




Last Coverpoint : ['rs1 : x12', 'rs2 : x18', 'rd : x16', 'rs2_h2_val == 4096', 'rs2_h1_val == -129', 'rs2_h0_val == 2', 'rs1_h2_val == 4096', 'rs1_h1_val == 64', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x8000052c]:KDMBT a6, a2, s2
	-[0x80000530]:sd a6, 96(t0)
Current Store : [0x80000534] : sd a2, 104(t0) -- Store: [0x80003278]:0x0009100000400800




Last Coverpoint : ['rs1 : x4', 'rs2 : x9', 'rd : x25', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs2_h3_val == -9', 'rs2_h2_val == -8193', 'rs2_h1_val == 2048', 'rs2_h0_val == 2048', 'rs1_h3_val == -9', 'rs1_h2_val == -33', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000564]:KDMBT s9, tp, s1
	-[0x80000568]:sd s9, 112(t0)
Current Store : [0x8000056c] : sd tp, 120(t0) -- Store: [0x80003288]:0xFFF7FFDF00054000




Last Coverpoint : ['rs1 : x13', 'rs2 : x14', 'rd : x11', 'rs2_h3_val == 16384', 'rs2_h1_val == 4', 'rs1_h2_val == -3']
Last Code Sequence : 
	-[0x80000598]:KDMBT a1, a3, a4
	-[0x8000059c]:sd a1, 128(t0)
Current Store : [0x800005a0] : sd a3, 136(t0) -- Store: [0x80003298]:0x0003FFFDAAAAC000




Last Coverpoint : ['rs1 : x22', 'rs2 : x10', 'rd : x0', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == 21845', 'rs2_h2_val == 0', 'rs2_h1_val == -3', 'rs2_h0_val == -33', 'rs1_h3_val == -2', 'rs1_h2_val == -4097']
Last Code Sequence : 
	-[0x800005d4]:KDMBT zero, s6, a0
	-[0x800005d8]:sd zero, 144(t0)
Current Store : [0x800005dc] : sd s6, 152(t0) -- Store: [0x800032a8]:0xFFFEEFFF00050001




Last Coverpoint : ['rs1 : x11', 'rs2 : x0', 'rd : x22', 'rs2_h3_val == 0', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h3_val == 64', 'rs1_h2_val == 16384', 'rs1_h1_val == -1025', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000610]:KDMBT s6, a1, zero
	-[0x80000614]:sd s6, 160(t0)
Current Store : [0x80000618] : sd a1, 168(t0) -- Store: [0x800032b8]:0x00404000FBFF0010




Last Coverpoint : ['rs1 : x19', 'rs2 : x6', 'rd : x30', 'rs2_h3_val == -8193', 'rs1_h3_val == -32768', 'rs1_h2_val == 1024', 'rs1_h1_val == 1']
Last Code Sequence : 
	-[0x80000644]:KDMBT t5, s3, t1
	-[0x80000648]:sd t5, 176(t0)
Current Store : [0x8000064c] : sd s3, 184(t0) -- Store: [0x800032c8]:0x8000040000010009




Last Coverpoint : ['rs1 : x6', 'rs2 : x11', 'rd : x31', 'rs2_h3_val == -4097', 'rs2_h1_val == -8193', 'rs1_h2_val == -5', 'rs1_h1_val == 512', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000680]:KDMBT t6, t1, a1
	-[0x80000684]:sd t6, 192(t0)
Current Store : [0x80000688] : sd t1, 200(t0) -- Store: [0x800032d8]:0xC000FFFB02002000




Last Coverpoint : ['rs1 : x1', 'rs2 : x20', 'rd : x9', 'rs2_h3_val == -2049', 'rs2_h2_val == -17', 'rs2_h0_val == -9', 'rs1_h1_val == -2']
Last Code Sequence : 
	-[0x800006ac]:KDMBT s1, ra, s4
	-[0x800006b0]:sd s1, 208(t0)
Current Store : [0x800006b4] : sd ra, 216(t0) -- Store: [0x800032e8]:0xFFFA3FFFFFFE1000




Last Coverpoint : ['rs1 : x15', 'rs2 : x30', 'rd : x19', 'rs2_h3_val == -1025', 'rs2_h2_val == 2', 'rs2_h0_val == -32768', 'rs1_h3_val == -2049', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x800006e4]:KDMBT s3, a5, t5
	-[0x800006e8]:sd s3, 224(t0)
Current Store : [0x800006ec] : sd a5, 232(t0) -- Store: [0x800032f8]:0xF7FF00070009F7FF




Last Coverpoint : ['rs1 : x14', 'rs2 : x2', 'rd : x28', 'rs2_h3_val == -513', 'rs1_h2_val == -9', 'rs1_h1_val == -16385', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000714]:KDMBT t3, a4, sp
	-[0x80000718]:sd t3, 240(t0)
Current Store : [0x8000071c] : sd a4, 248(t0) -- Store: [0x80003308]:0xFFFEFFF7BFFFFEFF




Last Coverpoint : ['rs1 : x26', 'rs2 : x29', 'rd : x7', 'rs2_h3_val == -257', 'rs2_h0_val == -1']
Last Code Sequence : 
	-[0x80000754]:KDMBT t2, s10, t4
	-[0x80000758]:sd t2, 0(a1)
Current Store : [0x8000075c] : sd s10, 8(a1) -- Store: [0x80003318]:0x2000FFFB00018000




Last Coverpoint : ['rs1 : x27', 'rs2 : x15', 'rd : x8', 'rs2_h3_val == -129', 'rs2_h0_val == -2', 'rs1_h3_val == 128', 'rs1_h1_val == -65']
Last Code Sequence : 
	-[0x80000790]:KDMBT fp, s11, a5
	-[0x80000794]:sd fp, 16(a1)
Current Store : [0x80000798] : sd s11, 24(a1) -- Store: [0x80003328]:0x00800006FFBFFFFC




Last Coverpoint : ['rs1 : x25', 'rs2 : x4', 'rd : x14', 'rs2_h3_val == -65', 'rs2_h2_val == -2049', 'rs2_h1_val == -33', 'rs2_h0_val == -5']
Last Code Sequence : 
	-[0x800007cc]:KDMBT a4, s9, tp
	-[0x800007d0]:sd a4, 32(a1)
Current Store : [0x800007d4] : sd s9, 40(a1) -- Store: [0x80003338]:0xFFF9FFF8FFF8FFFA




Last Coverpoint : ['rs1 : x8', 'rs2 : x27', 'rd : x15', 'rs2_h3_val == -33', 'rs2_h2_val == -4097', 'rs2_h1_val == -1025', 'rs1_h2_val == 512', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x800007fc]:KDMBT a5, fp, s11
	-[0x80000800]:sd a5, 48(a1)
Current Store : [0x80000804] : sd fp, 56(a1) -- Store: [0x80003348]:0xFFF602000003FF7F




Last Coverpoint : ['rs1 : x0', 'rs2 : x8', 'rd : x26', 'rs2_h3_val == -17', 'rs2_h2_val == 21845', 'rs2_h1_val == 8192', 'rs1_h3_val == 0', 'rs1_h2_val == 0', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000830]:KDMBT s10, zero, fp
	-[0x80000834]:sd s10, 64(a1)
Current Store : [0x80000838] : sd zero, 72(a1) -- Store: [0x80003358]:0x0000000000000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x17', 'rd : x5', 'rs2_h3_val == -3', 'rs2_h2_val == 16384', 'rs2_h1_val == 8', 'rs1_h3_val == 8', 'rs1_h1_val == -32768', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000864]:KDMBT t0, s4, a7
	-[0x80000868]:sd t0, 80(a1)
Current Store : [0x8000086c] : sd s4, 88(a1) -- Store: [0x80003368]:0x000800028000FFFB




Last Coverpoint : ['rs1 : x16', 'rs2 : x7', 'rd : x10', 'rs2_h3_val == -2', 'rs2_h0_val == 21845', 'rs1_h3_val == -4097', 'rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x800008a4]:KDMBT a0, a6, t2
	-[0x800008a8]:sd a0, 96(a1)
Current Store : [0x800008ac] : sd a6, 104(a1) -- Store: [0x80003378]:0xEFFFFFF92000FFFD




Last Coverpoint : ['rs1 : x23', 'rs2 : x13', 'rd : x6', 'rs2_h3_val == -32768', 'rs2_h1_val == 1024', 'rs1_h3_val == 21845', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x800008dc]:KDMBT t1, s7, a3
	-[0x800008e0]:sd t1, 112(a1)
Current Store : [0x800008e4] : sd s7, 120(a1) -- Store: [0x80003388]:0x5555FFFF00090008




Last Coverpoint : ['rs1 : x28', 'rs2 : x12', 'rd : x21', 'rs2_h3_val == 4096', 'rs2_h1_val == 2', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000918]:KDMBT s5, t3, a2
	-[0x8000091c]:sd s5, 128(a1)
Current Store : [0x80000920] : sd t3, 136(a1) -- Store: [0x80003398]:0x000640008000DFFF




Last Coverpoint : ['rs1 : x7', 'rs2 : x22', 'rd : x18', 'rs2_h3_val == 1024', 'rs2_h1_val == -1', 'rs2_h0_val == 16', 'rs1_h2_val == -2049', 'rs1_h1_val == -9']
Last Code Sequence : 
	-[0x8000094c]:KDMBT s2, t2, s6
	-[0x80000950]:sd s2, 144(a1)
Current Store : [0x80000954] : sd t2, 152(a1) -- Store: [0x800033a8]:0x0003F7FFFFF7FFF8




Last Coverpoint : ['rs1 : x31', 'rs2 : x25', 'rd : x23', 'rs2_h3_val == 512', 'rs2_h0_val == 4', 'rs1_h3_val == 1', 'rs1_h1_val == 2']
Last Code Sequence : 
	-[0x80000988]:KDMBT s7, t6, s9
	-[0x8000098c]:sd s7, 160(a1)
Current Store : [0x80000990] : sd t6, 168(a1) -- Store: [0x800033b8]:0x0001F7FF0002FFF9




Last Coverpoint : ['rs1 : x10', 'rs2 : x1', 'rd : x12', 'rs2_h3_val == 128', 'rs1_h1_val == -5']
Last Code Sequence : 
	-[0x800009c0]:KDMBT a2, a0, ra
	-[0x800009c4]:sd a2, 176(a1)
Current Store : [0x800009c8] : sd a0, 184(a1) -- Store: [0x800033c8]:0x0006F7FFFFFBFFFA




Last Coverpoint : ['rs1 : x5', 'rs2 : x28', 'rd : x20', 'rs2_h3_val == 64', 'rs2_h2_val == 4', 'rs2_h1_val == -257', 'rs2_h0_val == -21846', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x80000a04]:KDMBT s4, t0, t3
	-[0x80000a08]:sd s4, 192(a1)
Current Store : [0x80000a0c] : sd t0, 200(a1) -- Store: [0x800033d8]:0x55550003AAAABFFF




Last Coverpoint : ['rs1 : x3', 'rs2 : x16', 'rd : x2', 'rs2_h3_val == 32', 'rs1_h3_val == -3', 'rs1_h2_val == -513', 'rs1_h1_val == 256', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000a40]:KDMBT sp, gp, a6
	-[0x80000a44]:sd sp, 208(a1)
Current Store : [0x80000a48] : sd gp, 216(a1) -- Store: [0x800033e8]:0xFFFDFDFF01007FFF




Last Coverpoint : ['rs1 : x9', 'rs2 : x23', 'rd : x13', 'rs2_h3_val == 16', 'rs2_h2_val == -257', 'rs2_h1_val == -9', 'rs1_h2_val == 128', 'rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x80000a7c]:KDMBT a3, s1, s7
	-[0x80000a80]:sd a3, 224(a1)
Current Store : [0x80000a84] : sd s1, 232(a1) -- Store: [0x800033f8]:0xFFF700801000FF7F




Last Coverpoint : ['rs1 : x29', 'rs2 : x5', 'rd : x4', 'rs2_h3_val == 8', 'rs2_h2_val == 32', 'rs2_h1_val == 32', 'rs1_h3_val == 32', 'rs1_h1_val == -257']
Last Code Sequence : 
	-[0x80000ab0]:KDMBT tp, t4, t0
	-[0x80000ab4]:sd tp, 0(ra)
Current Store : [0x80000ab8] : sd t4, 8(ra) -- Store: [0x80003408]:0x0020FFFAFEFFFF7F




Last Coverpoint : ['rs2_h3_val == 4', 'rs2_h1_val == 16', 'rs1_h2_val == 256']
Last Code Sequence : 
	-[0x80000ae4]:KDMBT t6, t5, t4
	-[0x80000ae8]:sd t6, 16(ra)
Current Store : [0x80000aec] : sd t5, 24(ra) -- Store: [0x80003418]:0xC0000100FFF6FF7F




Last Coverpoint : ['rs2_h3_val == 2', 'rs2_h2_val == -9', 'rs2_h0_val == 16384', 'rs1_h2_val == 32']
Last Code Sequence : 
	-[0x80000b1c]:KDMBT t6, t5, t4
	-[0x80000b20]:sd t6, 32(ra)
Current Store : [0x80000b24] : sd t5, 40(ra) -- Store: [0x80003428]:0x0005002000020080




Last Coverpoint : ['rs2_h2_val == -3', 'rs1_h3_val == 4', 'rs1_h2_val == 64', 'rs1_h1_val == -3', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000b5c]:KDMBT t6, t5, t4
	-[0x80000b60]:sd t6, 48(ra)
Current Store : [0x80000b64] : sd t5, 56(ra) -- Store: [0x80003438]:0x00040040FFFD0100




Last Coverpoint : ['rs2_h2_val == -129', 'rs2_h0_val == 32767', 'rs1_h3_val == -5', 'rs1_h2_val == -65', 'rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x80000ba0]:KDMBT t6, t5, t4
	-[0x80000ba4]:sd t6, 64(ra)
Current Store : [0x80000ba8] : sd t5, 72(ra) -- Store: [0x80003448]:0xFFFBFFBF4000FFFC




Last Coverpoint : ['rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x80000bdc]:KDMBT t6, t5, t4
	-[0x80000be0]:sd t6, 80(ra)
Current Store : [0x80000be4] : sd t5, 88(ra) -- Store: [0x80003458]:0xFFF8FFFC0400FFFC




Last Coverpoint : ['rs2_h1_val == 4096', 'rs1_h3_val == 16384', 'rs1_h2_val == -16385', 'rs1_h1_val == 128', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000c10]:KDMBT t6, t5, t4
	-[0x80000c14]:sd t6, 96(ra)
Current Store : [0x80000c18] : sd t5, 104(ra) -- Store: [0x80003468]:0x4000BFFF0080FBFF




Last Coverpoint : ['rs2_h3_val == 1', 'rs2_h0_val == -129', 'rs1_h2_val == 1', 'rs1_h1_val == 16', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000c4c]:KDMBT t6, t5, t4
	-[0x80000c50]:sd t6, 112(ra)
Current Store : [0x80000c54] : sd t5, 120(ra) -- Store: [0x80003478]:0xFFF700010010FFF7




Last Coverpoint : ['rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000c88]:KDMBT t6, t5, t4
	-[0x80000c8c]:sd t6, 128(ra)
Current Store : [0x80000c90] : sd t5, 136(ra) -- Store: [0x80003488]:0xFFF9FFFB0008FFFC




Last Coverpoint : ['rs2_h2_val == -65', 'rs1_h1_val == 4', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000cc8]:KDMBT t6, t5, t4
	-[0x80000ccc]:sd t6, 144(ra)
Current Store : [0x80000cd0] : sd t5, 152(ra) -- Store: [0x80003498]:0x4000000200045555




Last Coverpoint : ['rs2_h2_val == -32768', 'rs1_h3_val == -65']
Last Code Sequence : 
	-[0x80000cf4]:KDMBT t6, t5, t4
	-[0x80000cf8]:sd t6, 160(ra)
Current Store : [0x80000cfc] : sd t5, 168(ra) -- Store: [0x800034a8]:0xFFBFFFFB00000080




Last Coverpoint : ['rs2_h2_val == 2048', 'rs2_h1_val == -32768', 'rs1_h2_val == 2048', 'rs1_h1_val == -1']
Last Code Sequence : 
	-[0x80000d20]:KDMBT t6, t5, t4
	-[0x80000d24]:sd t6, 176(ra)
Current Store : [0x80000d28] : sd t5, 184(ra) -- Store: [0x800034b8]:0x00070800FFFFFBFF




Last Coverpoint : ['rs2_h2_val == 512', 'rs2_h1_val == 21845', 'rs1_h3_val == -17', 'rs1_h2_val == 32767', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000d5c]:KDMBT t6, t5, t4
	-[0x80000d60]:sd t6, 192(ra)
Current Store : [0x80000d64] : sd t5, 200(ra) -- Store: [0x800034c8]:0xFFEF7FFF0200AAAA




Last Coverpoint : ['rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80000d98]:KDMBT t6, t5, t4
	-[0x80000d9c]:sd t6, 208(ra)
Current Store : [0x80000da0] : sd t5, 216(ra) -- Store: [0x800034d8]:0xEFFF4000FFFEEFFF




Last Coverpoint : ['rs2_h0_val == 128', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000dcc]:KDMBT t6, t5, t4
	-[0x80000dd0]:sd t6, 224(ra)
Current Store : [0x80000dd4] : sd t5, 232(ra) -- Store: [0x800034e8]:0xFFBF04000009FDFF




Last Coverpoint : ['rs2_h1_val == -16385', 'rs1_h2_val == -1025', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000e08]:KDMBT t6, t5, t4
	-[0x80000e0c]:sd t6, 240(ra)
Current Store : [0x80000e10] : sd t5, 248(ra) -- Store: [0x800034f8]:0x0005FBFF2000FFDF




Last Coverpoint : ['rs1_h2_val == -17', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000e3c]:KDMBT t6, t5, t4
	-[0x80000e40]:sd t6, 256(ra)
Current Store : [0x80000e44] : sd t5, 264(ra) -- Store: [0x80003508]:0x0040FFEF0001FFEF




Last Coverpoint : ['rs1_h3_val == 1024', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000e70]:KDMBT t6, t5, t4
	-[0x80000e74]:sd t6, 272(ra)
Current Store : [0x80000e78] : sd t5, 280(ra) -- Store: [0x80003518]:0x040010000200FFFE




Last Coverpoint : ['rs2_h1_val == 64', 'rs2_h0_val == -4097', 'rs1_h3_val == -257', 'rs1_h1_val == -2049', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000eac]:KDMBT t6, t5, t4
	-[0x80000eb0]:sd t6, 288(ra)
Current Store : [0x80000eb4] : sd t5, 296(ra) -- Store: [0x80003528]:0xFEFFFFFDF7FF0400




Last Coverpoint : ['rs2_h0_val == 64', 'rs1_h2_val == 8', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000ee4]:KDMBT t6, t5, t4
	-[0x80000ee8]:sd t6, 304(ra)
Current Store : [0x80000eec] : sd t5, 312(ra) -- Store: [0x80003538]:0x0400000800010040




Last Coverpoint : ['rs1_h3_val == 32767', 'rs1_h2_val == 8192', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80000f18]:KDMBT t6, t5, t4
	-[0x80000f1c]:sd t6, 320(ra)
Current Store : [0x80000f20] : sd t5, 328(ra) -- Store: [0x80003548]:0x7FFF2000FFF70020




Last Coverpoint : ['rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80000f44]:KDMBT t6, t5, t4
	-[0x80000f48]:sd t6, 336(ra)
Current Store : [0x80000f4c] : sd t5, 344(ra) -- Store: [0x80003558]:0x00207FFF00800004




Last Coverpoint : ['rs2_h2_val == -16385', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000f80]:KDMBT t6, t5, t4
	-[0x80000f84]:sd t6, 352(ra)
Current Store : [0x80000f88] : sd t5, 360(ra) -- Store: [0x80003568]:0xFFFCFFDF00050002




Last Coverpoint : ['rs2_h0_val == -17']
Last Code Sequence : 
	-[0x80000fb4]:KDMBT t6, t5, t4
	-[0x80000fb8]:sd t6, 368(ra)
Current Store : [0x80000fbc] : sd t5, 376(ra) -- Store: [0x80003578]:0x0040000201000010




Last Coverpoint : ['rs2_h1_val == -17', 'rs2_h0_val == -16385']
Last Code Sequence : 
	-[0x80000ff0]:KDMBT t6, t5, t4
	-[0x80000ff4]:sd t6, 384(ra)
Current Store : [0x80000ff8] : sd t5, 392(ra) -- Store: [0x80003588]:0xAAAAFDFFFFF7FFDF




Last Coverpoint : ['rs2_h0_val == -8193']
Last Code Sequence : 
	-[0x80001028]:KDMBT t6, t5, t4
	-[0x8000102c]:sd t6, 400(ra)
Current Store : [0x80001030] : sd t5, 408(ra) -- Store: [0x80003598]:0x0400C000FFF9AAAA




Last Coverpoint : ['rs2_h0_val == -2049', 'rs1_h3_val == 256']
Last Code Sequence : 
	-[0x80001060]:KDMBT t6, t5, t4
	-[0x80001064]:sd t6, 416(ra)
Current Store : [0x80001068] : sd t5, 424(ra) -- Store: [0x800035a8]:0x0100080000031000




Last Coverpoint : ['rs2_h3_val == 32767', 'rs2_h2_val == -21846', 'rs2_h0_val == -513', 'rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x8000109c]:KDMBT t6, t5, t4
	-[0x800010a0]:sd t6, 432(ra)
Current Store : [0x800010a4] : sd t5, 440(ra) -- Store: [0x800035b8]:0xFFEFFFF87FFFDFFF




Last Coverpoint : ['rs2_h0_val == -257', 'rs1_h3_val == 16']
Last Code Sequence : 
	-[0x800010e0]:KDMBT t6, t5, t4
	-[0x800010e4]:sd t6, 448(ra)
Current Store : [0x800010e8] : sd t5, 456(ra) -- Store: [0x800035c8]:0x001000010200FFDF




Last Coverpoint : ['rs2_h1_val == 128', 'rs2_h0_val == -65']
Last Code Sequence : 
	-[0x8000111c]:KDMBT t6, t5, t4
	-[0x80001120]:sd t6, 464(ra)
Current Store : [0x80001124] : sd t5, 472(ra) -- Store: [0x800035d8]:0xFDFFFFFDFFFE0007




Last Coverpoint : ['rs2_h1_val == 512', 'rs2_h0_val == -3']
Last Code Sequence : 
	-[0x80001154]:KDMBT t6, t5, t4
	-[0x80001158]:sd t6, 480(ra)
Current Store : [0x8000115c] : sd t5, 488(ra) -- Store: [0x800035e8]:0x3FFFFFF700402000




Last Coverpoint : ['rs2_h0_val == 8192']
Last Code Sequence : 
	-[0x80001184]:KDMBT t6, t5, t4
	-[0x80001188]:sd t6, 496(ra)
Current Store : [0x8000118c] : sd t5, 504(ra) -- Store: [0x800035f8]:0x00000009FFFD0003




Last Coverpoint : ['rs2_h0_val == 1024']
Last Code Sequence : 
	-[0x800011b4]:KDMBT t6, t5, t4
	-[0x800011b8]:sd t6, 512(ra)
Current Store : [0x800011bc] : sd t5, 520(ra) -- Store: [0x80003608]:0x0001400000030020




Last Coverpoint : ['rs2_h0_val == 512']
Last Code Sequence : 
	-[0x800011f0]:KDMBT t6, t5, t4
	-[0x800011f4]:sd t6, 528(ra)
Current Store : [0x800011f8] : sd t5, 536(ra) -- Store: [0x80003618]:0x00407FFF00000800




Last Coverpoint : ['rs2_h0_val == 8']
Last Code Sequence : 
	-[0x80001228]:KDMBT t6, t5, t4
	-[0x8000122c]:sd t6, 544(ra)
Current Store : [0x80001230] : sd t5, 552(ra) -- Store: [0x80003628]:0xFFF6EFFFFDFF0003




Last Coverpoint : ['rs1_h3_val == -16385']
Last Code Sequence : 
	-[0x80001264]:KDMBT t6, t5, t4
	-[0x80001268]:sd t6, 560(ra)
Current Store : [0x8000126c] : sd t5, 568(ra) -- Store: [0x80003638]:0xBFFFFFDFFDFFFFF9




Last Coverpoint : ['rs2_h2_val == 1', 'rs1_h3_val == -8193']
Last Code Sequence : 
	-[0x8000129c]:KDMBT t6, t5, t4
	-[0x800012a0]:sd t6, 576(ra)
Current Store : [0x800012a4] : sd t5, 584(ra) -- Store: [0x80003648]:0xDFFFF7FF00083FFF




Last Coverpoint : ['rs1_h3_val == -129']
Last Code Sequence : 
	-[0x800012d8]:KDMBT t6, t5, t4
	-[0x800012dc]:sd t6, 592(ra)
Current Store : [0x800012e0] : sd t5, 600(ra) -- Store: [0x80003658]:0xFF7F3FFF7FFF0080




Last Coverpoint : ['rs2_h3_val == -1', 'rs1_h3_val == -33']
Last Code Sequence : 
	-[0x80001314]:KDMBT t6, t5, t4
	-[0x80001318]:sd t6, 608(ra)
Current Store : [0x8000131c] : sd t5, 616(ra) -- Store: [0x80003668]:0xFFDF00202000DFFF




Last Coverpoint : ['opcode : kdmbt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs2_h3_val == -16385', 'rs2_h2_val == -9', 'rs2_h1_val == 16', 'rs2_h0_val == -1', 'rs1_h3_val == -129', 'rs1_h2_val == 16', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80001344]:KDMBT t6, t5, t4
	-[0x80001348]:sd t6, 624(ra)
Current Store : [0x8000134c] : sd t5, 632(ra) -- Store: [0x80003678]:0xFF7F001000000000




Last Coverpoint : ['rs2_h2_val == -1025', 'rs1_h1_val == -33', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x80001370]:KDMBT t6, t5, t4
	-[0x80001374]:sd t6, 640(ra)
Current Store : [0x80001378] : sd t5, 648(ra) -- Store: [0x80003688]:0x00077FFFFFDFFFFF




Last Coverpoint : ['rs1_h3_val == 2048']
Last Code Sequence : 
	-[0x800013ac]:KDMBT t6, t5, t4
	-[0x800013b0]:sd t6, 656(ra)
Current Store : [0x800013b4] : sd t5, 664(ra) -- Store: [0x80003698]:0x080000800008FFDF




Last Coverpoint : ['rs1_h3_val == 512', 'rs1_h1_val == -17']
Last Code Sequence : 
	-[0x800013e8]:KDMBT t6, t5, t4
	-[0x800013ec]:sd t6, 672(ra)
Current Store : [0x800013f0] : sd t5, 680(ra) -- Store: [0x800036a8]:0x0200FDFFFFEFFF7F




Last Coverpoint : ['rs2_h2_val == -33', 'rs1_h2_val == -8193']
Last Code Sequence : 
	-[0x80001420]:KDMBT t6, t5, t4
	-[0x80001424]:sd t6, 688(ra)
Current Store : [0x80001428] : sd t5, 696(ra) -- Store: [0x800036b8]:0x0004DFFF00102000




Last Coverpoint : ['rs1_h3_val == 2']
Last Code Sequence : 
	-[0x80001450]:KDMBT t6, t5, t4
	-[0x80001454]:sd t6, 704(ra)
Current Store : [0x80001458] : sd t5, 712(ra) -- Store: [0x800036c8]:0x000208000003EFFF




Last Coverpoint : ['rs1_h2_val == -21846']
Last Code Sequence : 
	-[0x8000148c]:KDMBT t6, t5, t4
	-[0x80001490]:sd t6, 720(ra)
Current Store : [0x80001494] : sd t5, 728(ra) -- Store: [0x800036d8]:0xFFFDAAAAAAAAFEFF




Last Coverpoint : ['rs2_h2_val == -2']
Last Code Sequence : 
	-[0x800014c0]:KDMBT t6, t5, t4
	-[0x800014c4]:sd t6, 736(ra)
Current Store : [0x800014c8] : sd t5, 744(ra) -- Store: [0x800036e8]:0x000400084000FF7F




Last Coverpoint : ['rs1_h2_val == 21845']
Last Code Sequence : 
	-[0x800014fc]:KDMBT t6, t5, t4
	-[0x80001500]:sd t6, 752(ra)
Current Store : [0x80001504] : sd t5, 760(ra) -- Store: [0x800036f8]:0x000155554000FBFF




Last Coverpoint : ['rs2_h2_val == 1024']
Last Code Sequence : 
	-[0x80001530]:KDMBT t6, t5, t4
	-[0x80001534]:sd t6, 768(ra)
Current Store : [0x80001538] : sd t5, 776(ra) -- Store: [0x80003708]:0xFFBF5555F7FFFFFD




Last Coverpoint : ['rs2_h2_val == 256', 'rs1_h2_val == -32768']
Last Code Sequence : 
	-[0x80001564]:KDMBT t6, t5, t4
	-[0x80001568]:sd t6, 784(ra)
Current Store : [0x8000156c] : sd t5, 792(ra) -- Store: [0x80003718]:0x3FFF80000000FFDF




Last Coverpoint : ['rs1_h2_val == -257']
Last Code Sequence : 
	-[0x800015a0]:KDMBT t6, t5, t4
	-[0x800015a4]:sd t6, 800(ra)
Current Store : [0x800015a8] : sd t5, 808(ra) -- Store: [0x80003728]:0x0200FEFF8000FEFF




Last Coverpoint : ['rs2_h2_val == 128']
Last Code Sequence : 
	-[0x800015dc]:KDMBT t6, t5, t4
	-[0x800015e0]:sd t6, 816(ra)
Current Store : [0x800015e4] : sd t5, 824(ra) -- Store: [0x80003738]:0x0005FFFD0006FDFF




Last Coverpoint : ['rs2_h1_val == 32767']
Last Code Sequence : 
	-[0x80001610]:KDMBT t6, t5, t4
	-[0x80001614]:sd t6, 832(ra)
Current Store : [0x80001618] : sd t5, 840(ra) -- Store: [0x80003748]:0xFFFCC000FFEFFFBF




Last Coverpoint : ['rs2_h1_val == -2049']
Last Code Sequence : 
	-[0x8000163c]:KDMBT t6, t5, t4
	-[0x80001640]:sd t6, 848(ra)
Current Store : [0x80001644] : sd t5, 856(ra) -- Store: [0x80003758]:0xFFF680003FFFFFFA




Last Coverpoint : ['rs2_h1_val == -2']
Last Code Sequence : 
	-[0x8000166c]:KDMBT t6, t5, t4
	-[0x80001670]:sd t6, 864(ra)
Current Store : [0x80001674] : sd t5, 872(ra) -- Store: [0x80003768]:0x0005FFBFEFFFFFF6




Last Coverpoint : ['rs2_h2_val == 8']
Last Code Sequence : 
	-[0x800016a8]:KDMBT t6, t5, t4
	-[0x800016ac]:sd t6, 880(ra)
Current Store : [0x800016b0] : sd t5, 888(ra) -- Store: [0x80003778]:0xFFF8000302005555




Last Coverpoint : ['rs2_h1_val == -65']
Last Code Sequence : 
	-[0x800016dc]:KDMBT t6, t5, t4
	-[0x800016e0]:sd t6, 896(ra)
Current Store : [0x800016e4] : sd t5, 904(ra) -- Store: [0x80003788]:0xBFFFFFFB00080080




Last Coverpoint : ['rs1_h2_val == 4']
Last Code Sequence : 
	-[0x80001718]:KDMBT t6, t5, t4
	-[0x8000171c]:sd t6, 912(ra)
Current Store : [0x80001720] : sd t5, 920(ra) -- Store: [0x80003798]:0xC0000004FFFD0008




Last Coverpoint : ['opcode : kdmbt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 8', 'rs2_h2_val == -513', 'rs2_h1_val == 2', 'rs1_h2_val == 0', 'rs1_h1_val == -17', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80001754]:KDMBT t6, t5, t4
	-[0x80001758]:sd t6, 928(ra)
Current Store : [0x8000175c] : sd t5, 936(ra) -- Store: [0x800037a8]:0x00050000FFEF0001




Last Coverpoint : ['rs2_h1_val == 16384']
Last Code Sequence : 
	-[0x80001794]:KDMBT t6, t5, t4
	-[0x80001798]:sd t6, 944(ra)
Current Store : [0x8000179c] : sd t5, 952(ra) -- Store: [0x800037b8]:0xFF7F5555FFFAFFFA




Last Coverpoint : ['rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x800017c8]:KDMBT t6, t5, t4
	-[0x800017cc]:sd t6, 960(ra)
Current Store : [0x800017d0] : sd t5, 968(ra) -- Store: [0x800037c8]:0x00040800DFFFFFBF




Last Coverpoint : ['rs1_h2_val == -129', 'rs1_h1_val == -129']
Last Code Sequence : 
	-[0x800017f8]:KDMBT t6, t5, t4
	-[0x800017fc]:sd t6, 976(ra)
Current Store : [0x80001800] : sd t5, 984(ra) -- Store: [0x800037d8]:0xFFFFFF7FFF7FFBFF




Last Coverpoint : ['rs2_h2_val == 64']
Last Code Sequence : 
	-[0x80001828]:KDMBT t6, t5, t4
	-[0x8000182c]:sd t6, 992(ra)
Current Store : [0x80001830] : sd t5, 1000(ra) -- Store: [0x800037e8]:0xFFFFAAAA0040C000




Last Coverpoint : ['rs1_h3_val == 4096']
Last Code Sequence : 
	-[0x80001868]:KDMBT t6, t5, t4
	-[0x8000186c]:sd t6, 1008(ra)
Current Store : [0x80001870] : sd t5, 1016(ra) -- Store: [0x800037f8]:0x1000FFFF5555FFFE




Last Coverpoint : ['rs2_h2_val == 32767']
Last Code Sequence : 
	-[0x8000189c]:KDMBT t6, t5, t4
	-[0x800018a0]:sd t6, 1024(ra)
Current Store : [0x800018a4] : sd t5, 1032(ra) -- Store: [0x80003808]:0xFFFAFFBF0010EFFF




Last Coverpoint : ['rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x800018dc]:KDMBT t6, t5, t4
	-[0x800018e0]:sd t6, 1040(ra)
Current Store : [0x800018e4] : sd t5, 1048(ra) -- Store: [0x80003818]:0x2000FFFB08000080




Last Coverpoint : ['opcode : kdmbt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == 21845', 'rs2_h2_val == 0', 'rs2_h1_val == -3', 'rs2_h0_val == -33', 'rs1_h3_val == -2', 'rs1_h2_val == -4097', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80001918]:KDMBT t6, t5, t4
	-[0x8000191c]:sd t6, 1056(ra)
Current Store : [0x80001920] : sd t5, 1064(ra) -- Store: [0x80003828]:0xFFFEEFFF00050001




Last Coverpoint : ['rs2_h0_val == 256']
Last Code Sequence : 
	-[0x80001954]:KDMBT t6, t5, t4
	-[0x80001958]:sd t6, 1072(ra)
Current Store : [0x8000195c] : sd t5, 1080(ra) -- Store: [0x80003838]:0x00404000FBFF0010




Last Coverpoint : ['rs1_h1_val == 32', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80001988]:KDMBT t6, t5, t4
	-[0x8000198c]:sd t6, 1088(ra)
Current Store : [0x80001990] : sd t5, 1096(ra) -- Store: [0x80003848]:0xFFFFFFEF00200200





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

|s.no|            signature             |                                                                                                                                                                                                                                                                                      coverpoints                                                                                                                                                                                                                                                                                       |                                 code                                 |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80003210]<br>0xFFFFFFFFFFFFFBFE|- opcode : kdmbt<br> - rs1 : x21<br> - rs2 : x21<br> - rd : x1<br> - rs1 == rs2 != rd<br> - rs1_h3_val == rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val < 0<br> - rs1_h2_val == rs2_h2_val<br> - rs1_h2_val < 0 and rs2_h2_val < 0<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h3_val == -21846<br> - rs2_h2_val == -1<br> - rs2_h1_val == -513<br> - rs2_h0_val == 1<br> - rs1_h3_val == -21846<br> - rs1_h2_val == -1<br> - rs1_h1_val == -513<br> - rs1_h0_val == 1<br> |[0x800003c8]:KDMBT ra, s5, s5<br> [0x800003cc]:sd ra, 0(t0)<br>       |
|   2|[0x80003220]<br>0xFFFFFFFFF5554000|- rs1 : x24<br> - rs2 : x24<br> - rd : x24<br> - rs1 == rs2 == rd<br> - rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs2_h3_val == 8192<br> - rs2_h2_val == 16<br> - rs2_h1_val == -21846<br> - rs2_h0_val == 4096<br> - rs1_h3_val == 8192<br> - rs1_h2_val == 16<br> - rs1_h1_val == -21846<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                           |[0x80000408]:KDMBT s8, s8, s8<br> [0x8000040c]:sd s8, 16(t0)<br>      |
|   3|[0x80003230]<br>0xFFFFFFFFFFEFFF00|- rs1 : x30<br> - rs2 : x19<br> - rd : x29<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h3_val != rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val > 0<br> - rs1_h2_val != rs2_h2_val<br> - rs1_h2_val > 0 and rs2_h2_val < 0<br> - rs1_h0_val != rs2_h0_val<br> - rs2_h3_val == 2048<br> - rs2_h2_val == -513<br> - rs2_h1_val == -4097<br> - rs2_h0_val == 32<br> - rs1_h3_val == -513<br> - rs1_h2_val == 2<br> - rs1_h1_val == -4097<br> - rs1_h0_val == 128<br>                                                                                                           |[0x8000044c]:KDMBT t4, t5, s3<br> [0x80000450]:sd t4, 32(t0)<br>      |
|   4|[0x80003240]<br>0xFFFFFFFFFFFF0000|- rs1 : x17<br> - rs2 : x31<br> - rd : x17<br> - rs1 == rd != rs2<br> - rs1_h0_val == -32768<br> - rs1_h2_val < 0 and rs2_h2_val > 0<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h3_val == -16385<br> - rs2_h2_val == 8192<br> - rs2_h1_val == 1<br> - rs2_h0_val == -1025<br> - rs1_h3_val == -1025<br> - rs1_h2_val == -2<br>                                                                                                                                                                            |[0x80000488]:KDMBT a7, a7, t6<br> [0x8000048c]:sd a7, 48(t0)<br>      |
|   5|[0x80003250]<br>0x000000000000001E|- rs1 : x18<br> - rs2 : x3<br> - rd : x3<br> - rs2 == rd != rs1<br> - rs1_h3_val > 0 and rs2_h3_val < 0<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h3_val == -5<br> - rs2_h2_val == -5<br> - rs2_h1_val == -5<br> - rs1_h1_val == 21845<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                       |[0x800004c0]:KDMBT gp, s2, gp<br> [0x800004c4]:sd gp, 64(t0)<br>      |
|   6|[0x80003260]<br>0xFFFFFFFFFFFF7E00|- rs1 : x2<br> - rs2 : x26<br> - rd : x27<br> - rs2_h3_val == 256<br> - rs2_h1_val == 256<br> - rs1_h3_val == -1<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800004f4]:KDMBT s11, sp, s10<br> [0x800004f8]:sd s11, 80(t0)<br>   |
|   7|[0x80003270]<br>0xFFFFFFFFFFF7F000|- rs1 : x12<br> - rs2 : x18<br> - rd : x16<br> - rs2_h2_val == 4096<br> - rs2_h1_val == -129<br> - rs2_h0_val == 2<br> - rs1_h2_val == 4096<br> - rs1_h1_val == 64<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                         |[0x8000052c]:KDMBT a6, a2, s2<br> [0x80000530]:sd a6, 96(t0)<br>      |
|   8|[0x80003280]<br>0x0000000004000000|- rs1 : x4<br> - rs2 : x9<br> - rd : x25<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs2_h3_val == -9<br> - rs2_h2_val == -8193<br> - rs2_h1_val == 2048<br> - rs2_h0_val == 2048<br> - rs1_h3_val == -9<br> - rs1_h2_val == -33<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                        |[0x80000564]:KDMBT s9, tp, s1<br> [0x80000568]:sd s9, 112(t0)<br>     |
|   9|[0x80003290]<br>0xFFFFFFFFFFFE0000|- rs1 : x13<br> - rs2 : x14<br> - rd : x11<br> - rs2_h3_val == 16384<br> - rs2_h1_val == 4<br> - rs1_h2_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000598]:KDMBT a1, a3, a4<br> [0x8000059c]:sd a1, 128(t0)<br>     |
|  10|[0x800032a0]<br>0x0000000000000000|- rs1 : x22<br> - rs2 : x10<br> - rd : x0<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h3_val == 21845<br> - rs2_h2_val == 0<br> - rs2_h1_val == -3<br> - rs2_h0_val == -33<br> - rs1_h3_val == -2<br> - rs1_h2_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                   |[0x800005d4]:KDMBT zero, s6, a0<br> [0x800005d8]:sd zero, 144(t0)<br> |
|  11|[0x800032b0]<br>0x0000000000000000|- rs1 : x11<br> - rs2 : x0<br> - rd : x22<br> - rs2_h3_val == 0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h3_val == 64<br> - rs1_h2_val == 16384<br> - rs1_h1_val == -1025<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                       |[0x80000610]:KDMBT s6, a1, zero<br> [0x80000614]:sd s6, 160(t0)<br>   |
|  12|[0x800032c0]<br>0xFFFFFFFFFFFFFF70|- rs1 : x19<br> - rs2 : x6<br> - rd : x30<br> - rs2_h3_val == -8193<br> - rs1_h3_val == -32768<br> - rs1_h2_val == 1024<br> - rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000644]:KDMBT t5, s3, t1<br> [0x80000648]:sd t5, 176(t0)<br>     |
|  13|[0x800032d0]<br>0xFFFFFFFFF7FFC000|- rs1 : x6<br> - rs2 : x11<br> - rd : x31<br> - rs2_h3_val == -4097<br> - rs2_h1_val == -8193<br> - rs1_h2_val == -5<br> - rs1_h1_val == 512<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000680]:KDMBT t6, t1, a1<br> [0x80000684]:sd t6, 192(t0)<br>     |
|  14|[0x800032e0]<br>0xFFFFFFFFFBFFE000|- rs1 : x1<br> - rs2 : x20<br> - rd : x9<br> - rs2_h3_val == -2049<br> - rs2_h2_val == -17<br> - rs2_h0_val == -9<br> - rs1_h1_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800006ac]:KDMBT s1, ra, s4<br> [0x800006b0]:sd s1, 208(t0)<br>     |
|  15|[0x800032f0]<br>0x0000000001003002|- rs1 : x15<br> - rs2 : x30<br> - rd : x19<br> - rs2_h3_val == -1025<br> - rs2_h2_val == 2<br> - rs2_h0_val == -32768<br> - rs1_h3_val == -2049<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800006e4]:KDMBT s3, a5, t5<br> [0x800006e8]:sd s3, 224(t0)<br>     |
|  16|[0x80003300]<br>0xFFFFFFFFFFFFF3F4|- rs1 : x14<br> - rs2 : x2<br> - rd : x28<br> - rs2_h3_val == -513<br> - rs1_h2_val == -9<br> - rs1_h1_val == -16385<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000714]:KDMBT t3, a4, sp<br> [0x80000718]:sd t3, 240(t0)<br>     |
|  17|[0x80003310]<br>0xFFFFFFFFFFFA0000|- rs1 : x26<br> - rs2 : x29<br> - rd : x7<br> - rs2_h3_val == -257<br> - rs2_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000754]:KDMBT t2, s10, t4<br> [0x80000758]:sd t2, 0(a1)<br>      |
|  18|[0x80003320]<br>0xFFFFFFFFFFFFFFD8|- rs1 : x27<br> - rs2 : x15<br> - rd : x8<br> - rs2_h3_val == -129<br> - rs2_h0_val == -2<br> - rs1_h3_val == 128<br> - rs1_h1_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000790]:KDMBT fp, s11, a5<br> [0x80000794]:sd fp, 16(a1)<br>     |
|  19|[0x80003330]<br>0x000000000000018C|- rs1 : x25<br> - rs2 : x4<br> - rd : x14<br> - rs2_h3_val == -65<br> - rs2_h2_val == -2049<br> - rs2_h1_val == -33<br> - rs2_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800007cc]:KDMBT a4, s9, tp<br> [0x800007d0]:sd a4, 32(a1)<br>      |
|  20|[0x80003340]<br>0x0000000000040902|- rs1 : x8<br> - rs2 : x27<br> - rd : x15<br> - rs2_h3_val == -33<br> - rs2_h2_val == -4097<br> - rs2_h1_val == -1025<br> - rs1_h2_val == 512<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800007fc]:KDMBT a5, fp, s11<br> [0x80000800]:sd a5, 48(a1)<br>     |
|  21|[0x80003350]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x8<br> - rd : x26<br> - rs2_h3_val == -17<br> - rs2_h2_val == 21845<br> - rs2_h1_val == 8192<br> - rs1_h3_val == 0<br> - rs1_h2_val == 0<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                         |[0x80000830]:KDMBT s10, zero, fp<br> [0x80000834]:sd s10, 64(a1)<br>  |
|  22|[0x80003360]<br>0xFFFFFFFFFFFFFFB0|- rs1 : x20<br> - rs2 : x17<br> - rd : x5<br> - rs2_h3_val == -3<br> - rs2_h2_val == 16384<br> - rs2_h1_val == 8<br> - rs1_h3_val == 8<br> - rs1_h1_val == -32768<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000864]:KDMBT t0, s4, a7<br> [0x80000868]:sd t0, 80(a1)<br>      |
|  23|[0x80003370]<br>0xFFFFFFFFFFFFFFEE|- rs1 : x16<br> - rs2 : x7<br> - rd : x10<br> - rs2_h3_val == -2<br> - rs2_h0_val == 21845<br> - rs1_h3_val == -4097<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800008a4]:KDMBT a0, a6, t2<br> [0x800008a8]:sd a0, 96(a1)<br>      |
|  24|[0x80003380]<br>0x0000000000004000|- rs1 : x23<br> - rs2 : x13<br> - rd : x6<br> - rs2_h3_val == -32768<br> - rs2_h1_val == 1024<br> - rs1_h3_val == 21845<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800008dc]:KDMBT t1, s7, a3<br> [0x800008e0]:sd t1, 112(a1)<br>     |
|  25|[0x80003390]<br>0xFFFFFFFFFFFF7FFC|- rs1 : x28<br> - rs2 : x12<br> - rd : x21<br> - rs2_h3_val == 4096<br> - rs2_h1_val == 2<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000918]:KDMBT s5, t3, a2<br> [0x8000091c]:sd s5, 128(a1)<br>     |
|  26|[0x800033a0]<br>0x0000000000000010|- rs1 : x7<br> - rs2 : x22<br> - rd : x18<br> - rs2_h3_val == 1024<br> - rs2_h1_val == -1<br> - rs2_h0_val == 16<br> - rs1_h2_val == -2049<br> - rs1_h1_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x8000094c]:KDMBT s2, t2, s6<br> [0x80000950]:sd s2, 144(a1)<br>     |
|  27|[0x800033b0]<br>0x000000000000E00E|- rs1 : x31<br> - rs2 : x25<br> - rd : x23<br> - rs2_h3_val == 512<br> - rs2_h0_val == 4<br> - rs1_h3_val == 1<br> - rs1_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000988]:KDMBT s7, t6, s9<br> [0x8000098c]:sd s7, 160(a1)<br>     |
|  28|[0x800033c0]<br>0xFFFFFFFFFFFFFFAC|- rs1 : x10<br> - rs2 : x1<br> - rd : x12<br> - rs2_h3_val == 128<br> - rs1_h1_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800009c0]:KDMBT a2, a0, ra<br> [0x800009c4]:sd a2, 176(a1)<br>     |
|  29|[0x800033d0]<br>0x0000000000808202|- rs1 : x5<br> - rs2 : x28<br> - rd : x20<br> - rs2_h3_val == 64<br> - rs2_h2_val == 4<br> - rs2_h1_val == -257<br> - rs2_h0_val == -21846<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000a04]:KDMBT s4, t0, t3<br> [0x80000a08]:sd s4, 192(a1)<br>     |
|  30|[0x800033e0]<br>0xFFFFFFFFAAAAAAAC|- rs1 : x3<br> - rs2 : x16<br> - rd : x2<br> - rs2_h3_val == 32<br> - rs1_h3_val == -3<br> - rs1_h2_val == -513<br> - rs1_h1_val == 256<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000a40]:KDMBT sp, gp, a6<br> [0x80000a44]:sd sp, 208(a1)<br>     |
|  31|[0x800033f0]<br>0x0000000000000912|- rs1 : x9<br> - rs2 : x23<br> - rd : x13<br> - rs2_h3_val == 16<br> - rs2_h2_val == -257<br> - rs2_h1_val == -9<br> - rs1_h2_val == 128<br> - rs1_h1_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000a7c]:KDMBT a3, s1, s7<br> [0x80000a80]:sd a3, 224(a1)<br>     |
|  32|[0x80003400]<br>0xFFFFFFFFFFFFDFC0|- rs1 : x29<br> - rs2 : x5<br> - rd : x4<br> - rs2_h3_val == 8<br> - rs2_h2_val == 32<br> - rs2_h1_val == 32<br> - rs1_h3_val == 32<br> - rs1_h1_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000ab0]:KDMBT tp, t4, t0<br> [0x80000ab4]:sd tp, 0(ra)<br>       |
|  33|[0x80003410]<br>0xFFFFFFFFFFFFEFE0|- rs2_h3_val == 4<br> - rs2_h1_val == 16<br> - rs1_h2_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000ae4]:KDMBT t6, t5, t4<br> [0x80000ae8]:sd t6, 16(ra)<br>      |
|  34|[0x80003420]<br>0xFFFFFFFFFFFFFA00|- rs2_h3_val == 2<br> - rs2_h2_val == -9<br> - rs2_h0_val == 16384<br> - rs1_h2_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000b1c]:KDMBT t6, t5, t4<br> [0x80000b20]:sd t6, 32(ra)<br>      |
|  35|[0x80003430]<br>0xFFFFFFFFFFF7FE00|- rs2_h2_val == -3<br> - rs1_h3_val == 4<br> - rs1_h2_val == 64<br> - rs1_h1_val == -3<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000b5c]:KDMBT t6, t5, t4<br> [0x80000b60]:sd t6, 48(ra)<br>      |
|  36|[0x80003440]<br>0xFFFFFFFFFFFFE000|- rs2_h2_val == -129<br> - rs2_h0_val == 32767<br> - rs1_h3_val == -5<br> - rs1_h2_val == -65<br> - rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000ba0]:KDMBT t6, t5, t4<br> [0x80000ba4]:sd t6, 64(ra)<br>      |
|  37|[0x80003450]<br>0xFFFFFFFFFFFFFFD0|- rs1_h1_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000bdc]:KDMBT t6, t5, t4<br> [0x80000be0]:sd t6, 80(ra)<br>      |
|  38|[0x80003460]<br>0xFFFFFFFFFF7FE000|- rs2_h1_val == 4096<br> - rs1_h3_val == 16384<br> - rs1_h2_val == -16385<br> - rs1_h1_val == 128<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000c10]:KDMBT t6, t5, t4<br> [0x80000c14]:sd t6, 96(ra)<br>      |
|  39|[0x80003470]<br>0xFFFFFFFFFFFEE000|- rs2_h3_val == 1<br> - rs2_h0_val == -129<br> - rs1_h2_val == 1<br> - rs1_h1_val == 16<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000c4c]:KDMBT t6, t5, t4<br> [0x80000c50]:sd t6, 112(ra)<br>     |
|  40|[0x80003480]<br>0xFFFFFFFFFFFFFFE0|- rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000c88]:KDMBT t6, t5, t4<br> [0x80000c8c]:sd t6, 128(ra)<br>     |
|  41|[0x80003490]<br>0xFFFFFFFFC71C38E4|- rs2_h2_val == -65<br> - rs1_h1_val == 4<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000cc8]:KDMBT t6, t5, t4<br> [0x80000ccc]:sd t6, 144(ra)<br>     |
|  42|[0x800034a0]<br>0x0000000000040000|- rs2_h2_val == -32768<br> - rs1_h3_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000cf4]:KDMBT t6, t5, t4<br> [0x80000cf8]:sd t6, 160(ra)<br>     |
|  43|[0x800034b0]<br>0x0000000004010000|- rs2_h2_val == 2048<br> - rs2_h1_val == -32768<br> - rs1_h2_val == 2048<br> - rs1_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000d20]:KDMBT t6, t5, t4<br> [0x80000d24]:sd t6, 176(ra)<br>     |
|  44|[0x800034c0]<br>0xFFFFFFFFC71C38E4|- rs2_h2_val == 512<br> - rs2_h1_val == 21845<br> - rs1_h3_val == -17<br> - rs1_h2_val == 32767<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000d5c]:KDMBT t6, t5, t4<br> [0x80000d60]:sd t6, 192(ra)<br>     |
|  45|[0x800034d0]<br>0x0000000000010010|- rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000d98]:KDMBT t6, t5, t4<br> [0x80000d9c]:sd t6, 208(ra)<br>     |
|  46|[0x800034e0]<br>0xFFFFFFFFFFDFF000|- rs2_h0_val == 128<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000dcc]:KDMBT t6, t5, t4<br> [0x80000dd0]:sd t6, 224(ra)<br>     |
|  47|[0x800034f0]<br>0x0000000000108042|- rs2_h1_val == -16385<br> - rs1_h2_val == -1025<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000e08]:KDMBT t6, t5, t4<br> [0x80000e0c]:sd t6, 240(ra)<br>     |
|  48|[0x80003500]<br>0x0000000000001122|- rs1_h2_val == -17<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000e3c]:KDMBT t6, t5, t4<br> [0x80000e40]:sd t6, 256(ra)<br>     |
|  49|[0x80003510]<br>0xFFFFFFFFFFFFE000|- rs1_h3_val == 1024<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000e70]:KDMBT t6, t5, t4<br> [0x80000e74]:sd t6, 272(ra)<br>     |
|  50|[0x80003520]<br>0x0000000000020000|- rs2_h1_val == 64<br> - rs2_h0_val == -4097<br> - rs1_h3_val == -257<br> - rs1_h1_val == -2049<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000eac]:KDMBT t6, t5, t4<br> [0x80000eb0]:sd t6, 288(ra)<br>     |
|  51|[0x80003530]<br>0xFFFFFFFFFFFDFF80|- rs2_h0_val == 64<br> - rs1_h2_val == 8<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000ee4]:KDMBT t6, t5, t4<br> [0x80000ee8]:sd t6, 304(ra)<br>     |
|  52|[0x80003540]<br>0x0000000000040000|- rs1_h3_val == 32767<br> - rs1_h2_val == 8192<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000f18]:KDMBT t6, t5, t4<br> [0x80000f1c]:sd t6, 320(ra)<br>     |
|  53|[0x80003550]<br>0x0000000000000018|- rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000f44]:KDMBT t6, t5, t4<br> [0x80000f48]:sd t6, 336(ra)<br>     |
|  54|[0x80003560]<br>0x0000000000000020|- rs2_h2_val == -16385<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000f80]:KDMBT t6, t5, t4<br> [0x80000f84]:sd t6, 352(ra)<br>     |
|  55|[0x80003570]<br>0x0000000000000000|- rs2_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000fb4]:KDMBT t6, t5, t4<br> [0x80000fb8]:sd t6, 368(ra)<br>     |
|  56|[0x80003580]<br>0x0000000000000462|- rs2_h1_val == -17<br> - rs2_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000ff0]:KDMBT t6, t5, t4<br> [0x80000ff4]:sd t6, 384(ra)<br>     |
|  57|[0x80003590]<br>0x00000000000B556C|- rs2_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001028]:KDMBT t6, t5, t4<br> [0x8000102c]:sd t6, 400(ra)<br>     |
|  58|[0x800035a0]<br>0xFFFFFFFFFFFF2000|- rs2_h0_val == -2049<br> - rs1_h3_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001060]:KDMBT t6, t5, t4<br> [0x80001064]:sd t6, 416(ra)<br>     |
|  59|[0x800035b0]<br>0xFFFFFFFFFFFE7FF4|- rs2_h3_val == 32767<br> - rs2_h2_val == -21846<br> - rs2_h0_val == -513<br> - rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x8000109c]:KDMBT t6, t5, t4<br> [0x800010a0]:sd t6, 432(ra)<br>     |
|  60|[0x800035c0]<br>0xFFFFFFFFFFFDF000|- rs2_h0_val == -257<br> - rs1_h3_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800010e0]:KDMBT t6, t5, t4<br> [0x800010e4]:sd t6, 448(ra)<br>     |
|  61|[0x800035d0]<br>0x0000000000000700|- rs2_h1_val == 128<br> - rs2_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x8000111c]:KDMBT t6, t5, t4<br> [0x80001120]:sd t6, 464(ra)<br>     |
|  62|[0x800035e0]<br>0x0000000000800000|- rs2_h1_val == 512<br> - rs2_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001154]:KDMBT t6, t5, t4<br> [0x80001158]:sd t6, 480(ra)<br>     |
|  63|[0x800035f0]<br>0x0000000000000024|- rs2_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001184]:KDMBT t6, t5, t4<br> [0x80001188]:sd t6, 496(ra)<br>     |
|  64|[0x80003600]<br>0x0000000000002000|- rs2_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800011b4]:KDMBT t6, t5, t4<br> [0x800011b8]:sd t6, 512(ra)<br>     |
|  65|[0x80003610]<br>0xFFFFFFFFFFBFF000|- rs2_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800011f0]:KDMBT t6, t5, t4<br> [0x800011f4]:sd t6, 528(ra)<br>     |
|  66|[0x80003620]<br>0xFFFFFFFFFFFFFF9A|- rs2_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001228]:KDMBT t6, t5, t4<br> [0x8000122c]:sd t6, 544(ra)<br>     |
|  67|[0x80003630]<br>0x000000000000000E|- rs1_h3_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001264]:KDMBT t6, t5, t4<br> [0x80001268]:sd t6, 560(ra)<br>     |
|  68|[0x80003640]<br>0x000000000002FFF4|- rs2_h2_val == 1<br> - rs1_h3_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x8000129c]:KDMBT t6, t5, t4<br> [0x800012a0]:sd t6, 576(ra)<br>     |
|  69|[0x80003650]<br>0x0000000000020000|- rs1_h3_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800012d8]:KDMBT t6, t5, t4<br> [0x800012dc]:sd t6, 592(ra)<br>     |
|  70|[0x80003660]<br>0xFFFFFFFFFFFBFFE0|- rs2_h3_val == -1<br> - rs1_h3_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001314]:KDMBT t6, t5, t4<br> [0x80001318]:sd t6, 608(ra)<br>     |
|  71|[0x80003680]<br>0x0000000000004002|- rs2_h2_val == -1025<br> - rs1_h1_val == -33<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001370]:KDMBT t6, t5, t4<br> [0x80001374]:sd t6, 640(ra)<br>     |
|  72|[0x80003690]<br>0x0000000000000210|- rs1_h3_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800013ac]:KDMBT t6, t5, t4<br> [0x800013b0]:sd t6, 656(ra)<br>     |
|  73|[0x800036a0]<br>0xFFFFFFFFFFFFDFC0|- rs1_h3_val == 512<br> - rs1_h1_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800013e8]:KDMBT t6, t5, t4<br> [0x800013ec]:sd t6, 672(ra)<br>     |
|  74|[0x800036b0]<br>0x0000000000200000|- rs2_h2_val == -33<br> - rs1_h2_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001420]:KDMBT t6, t5, t4<br> [0x80001424]:sd t6, 688(ra)<br>     |
|  75|[0x800036c0]<br>0x000000000800A002|- rs1_h3_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001450]:KDMBT t6, t5, t4<br> [0x80001454]:sd t6, 704(ra)<br>     |
|  76|[0x800036d0]<br>0x0000000000000E0E|- rs1_h2_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x8000148c]:KDMBT t6, t5, t4<br> [0x80001490]:sd t6, 720(ra)<br>     |
|  77|[0x800036e0]<br>0xFFFFFFFFFFFDFC00|- rs2_h2_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800014c0]:KDMBT t6, t5, t4<br> [0x800014c4]:sd t6, 736(ra)<br>     |
|  78|[0x800036f0]<br>0x0000000000080A02|- rs1_h2_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800014fc]:KDMBT t6, t5, t4<br> [0x80001500]:sd t6, 752(ra)<br>     |
|  79|[0x80003700]<br>0xFFFFFFFFFFFFFFCA|- rs2_h2_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001530]:KDMBT t6, t5, t4<br> [0x80001534]:sd t6, 768(ra)<br>     |
|  80|[0x80003710]<br>0xFFFFFFFFFFFFF7C0|- rs2_h2_val == 256<br> - rs1_h2_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001564]:KDMBT t6, t5, t4<br> [0x80001568]:sd t6, 784(ra)<br>     |
|  81|[0x80003720]<br>0x0000000000001212|- rs1_h2_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800015a0]:KDMBT t6, t5, t4<br> [0x800015a4]:sd t6, 800(ra)<br>     |
|  82|[0x80003730]<br>0xFFFFFFFFFFEFF800|- rs2_h2_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800015dc]:KDMBT t6, t5, t4<br> [0x800015e0]:sd t6, 816(ra)<br>     |
|  83|[0x80003740]<br>0xFFFFFFFFFFBF0082|- rs2_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001610]:KDMBT t6, t5, t4<br> [0x80001614]:sd t6, 832(ra)<br>     |
|  84|[0x80003750]<br>0x000000000000600C|- rs2_h1_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x8000163c]:KDMBT t6, t5, t4<br> [0x80001640]:sd t6, 848(ra)<br>     |
|  85|[0x80003760]<br>0x0000000000000028|- rs2_h1_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x8000166c]:KDMBT t6, t5, t4<br> [0x80001670]:sd t6, 864(ra)<br>     |
|  86|[0x80003770]<br>0x0000000015554000|- rs2_h2_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800016a8]:KDMBT t6, t5, t4<br> [0x800016ac]:sd t6, 880(ra)<br>     |
|  87|[0x80003780]<br>0xFFFFFFFFFFFFBF00|- rs2_h1_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800016dc]:KDMBT t6, t5, t4<br> [0x800016e0]:sd t6, 896(ra)<br>     |
|  88|[0x80003790]<br>0x0000000000000080|- rs1_h2_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001718]:KDMBT t6, t5, t4<br> [0x8000171c]:sd t6, 912(ra)<br>     |
|  89|[0x800037b0]<br>0xFFFFFFFFFFFD0000|- rs2_h1_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001794]:KDMBT t6, t5, t4<br> [0x80001798]:sd t6, 944(ra)<br>     |
|  90|[0x800037c0]<br>0x0000000000010482|- rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800017c8]:KDMBT t6, t5, t4<br> [0x800017cc]:sd t6, 960(ra)<br>     |
|  91|[0x800037d0]<br>0x0000000000020882|- rs1_h2_val == -129<br> - rs1_h1_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800017f8]:KDMBT t6, t5, t4<br> [0x800017fc]:sd t6, 976(ra)<br>     |
|  92|[0x800037e0]<br>0xFFFFFFFFFF000000|- rs2_h2_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001828]:KDMBT t6, t5, t4<br> [0x8000182c]:sd t6, 992(ra)<br>     |
|  93|[0x800037f0]<br>0x0000000000000014|- rs1_h3_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001868]:KDMBT t6, t5, t4<br> [0x8000186c]:sd t6, 1008(ra)<br>    |
|  94|[0x80003800]<br>0xFFFFFFFFFFDFFE00|- rs2_h2_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x8000189c]:KDMBT t6, t5, t4<br> [0x800018a0]:sd t6, 1024(ra)<br>    |
|  95|[0x80003810]<br>0xFFFFFFFFFFAAAA00|- rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800018dc]:KDMBT t6, t5, t4<br> [0x800018e0]:sd t6, 1040(ra)<br>    |
|  96|[0x80003830]<br>0xFFFFFFFFFFFFEFE0|- rs2_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001954]:KDMBT t6, t5, t4<br> [0x80001958]:sd t6, 1072(ra)<br>    |
|  97|[0x80003840]<br>0x0000000000800000|- rs1_h1_val == 32<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001988]:KDMBT t6, t5, t4<br> [0x8000198c]:sd t6, 1088(ra)<br>    |
