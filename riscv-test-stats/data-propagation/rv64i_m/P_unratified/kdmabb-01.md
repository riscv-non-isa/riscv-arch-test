
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001b40')]      |
| SIG_REGION                | [('0x80003210', '0x800038b0', '212 dwords')]      |
| COV_LABELS                | kdmabb      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kdmabb-01.S    |
| Total Number of coverpoints| 420     |
| Total Coverpoints Hit     | 414      |
| Total Signature Updates   | 212      |
| STAT1                     | 102      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 106     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d5c]:KDMABB t6, t5, t4
      [0x80000d60]:sd t6, 240(ra)
 -- Signature Address: 0x800034b0 Data: 0xFFFFFFFFD03ECEFE
 -- Redundant Coverpoints hit by the op
      - opcode : kdmabb
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == -2049
      - rs1_h3_val == -8193
      - rs1_h2_val == 1
      - rs1_h1_val == 32




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001ab8]:KDMABB t6, t5, t4
      [0x80001abc]:sd t6, 1216(ra)
 -- Signature Address: 0x80003880 Data: 0xFFFFFFFFD41EAC64
 -- Redundant Coverpoints hit by the op
      - opcode : kdmabb
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val == -32768
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h3_val == -257
      - rs2_h2_val == -2
      - rs2_h0_val == -1025
      - rs1_h2_val == -33
      - rs1_h1_val == -1025




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001af4]:KDMABB t6, t5, t4
      [0x80001af8]:sd t6, 1232(ra)
 -- Signature Address: 0x80003890 Data: 0xFFFFFFFFD41AAA64
 -- Redundant Coverpoints hit by the op
      - opcode : kdmabb
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val == rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h3_val == 16384
      - rs2_h2_val == 1024
      - rs2_h1_val == 32
      - rs2_h0_val == -513
      - rs1_h3_val == 16384
      - rs1_h2_val == 8192
      - rs1_h1_val == -32768
      - rs1_h0_val == 256




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001b30]:KDMABB t6, t5, t4
      [0x80001b34]:sd t6, 1248(ra)
 -- Signature Address: 0x800038a0 Data: 0xFFFFFFFFD41ABB26
 -- Redundant Coverpoints hit by the op
      - opcode : kdmabb
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h3_val == 64
      - rs2_h1_val == 128
      - rs2_h0_val == -33
      - rs1_h3_val == -257
      - rs1_h1_val == -9
      - rs1_h0_val == -65






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kdmabb', 'rs1 : x11', 'rs2 : x11', 'rd : x18', 'rs1 == rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val == rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == -257', 'rs2_h2_val == -2', 'rs2_h0_val == -1025', 'rs1_h3_val == -257', 'rs1_h2_val == -2', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x800003c8]:KDMABB s2, a1, a1
	-[0x800003cc]:sd s2, 0(gp)
Current Store : [0x800003d0] : sd a1, 8(gp) -- Store: [0x80003218]:0xFEFFFFFE3FFFFBFF




Last Coverpoint : ['rs1 : x29', 'rs2 : x29', 'rd : x29', 'rs1 == rs2 == rd', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs2_h3_val == 16384', 'rs2_h2_val == 1024', 'rs2_h1_val == 32', 'rs2_h0_val == -513', 'rs1_h3_val == 16384', 'rs1_h2_val == 1024', 'rs1_h1_val == 32', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000404]:KDMABB t4, t4, t4
	-[0x80000408]:sd t4, 16(gp)
Current Store : [0x8000040c] : sd t4, 24(gp) -- Store: [0x80003228]:0x0000000000290601




Last Coverpoint : ['rs1 : x18', 'rs2 : x13', 'rd : x7', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == 8', 'rs2_h1_val == -2', 'rs2_h0_val == 32', 'rs1_h3_val == -129', 'rs1_h2_val == 4096', 'rs1_h1_val == -129', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000440]:KDMABB t2, s2, a3
	-[0x80000444]:sd t2, 32(gp)
Current Store : [0x80000448] : sd s2, 40(gp) -- Store: [0x80003238]:0xFF7F1000FF7FFFFD




Last Coverpoint : ['rs1 : x13', 'rs2 : x1', 'rd : x13', 'rs1 == rd != rs2', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h2_val == -513', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x8000047c]:KDMABB a3, a3, ra
	-[0x80000480]:sd a3, 48(gp)
Current Store : [0x80000484] : sd a3, 56(gp) -- Store: [0x80003248]:0x00000000400000AB




Last Coverpoint : ['rs1 : x17', 'rs2 : x4', 'rd : x4', 'rs2 == rd != rs1', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 128', 'rs2_h2_val == -8193', 'rs2_h0_val == 1', 'rs1_h3_val == 1024', 'rs1_h2_val == -8193', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x800004b8]:KDMABB tp, a7, tp
	-[0x800004bc]:sd tp, 64(gp)
Current Store : [0x800004c0] : sd a7, 72(gp) -- Store: [0x80003258]:0x0400DFFFFFFC0001




Last Coverpoint : ['rs1 : x23', 'rs2 : x0', 'rd : x30', 'rs2_h3_val == 0', 'rs2_h2_val == 0', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h3_val == -33', 'rs1_h2_val == 256', 'rs1_h1_val == -65']
Last Code Sequence : 
	-[0x800004f0]:KDMABB t5, s7, zero
	-[0x800004f4]:sd t5, 80(gp)
Current Store : [0x800004f8] : sd s7, 88(gp) -- Store: [0x80003268]:0xFFDF0100FFBFFFF6




Last Coverpoint : ['rs1 : x10', 'rs2 : x28', 'rd : x26', 'rs2_h3_val == -513', 'rs2_h2_val == 16384', 'rs2_h0_val == -257', 'rs1_h3_val == 1', 'rs1_h2_val == 8192', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000528]:KDMABB s10, a0, t3
	-[0x8000052c]:sd s10, 96(gp)
Current Store : [0x80000530] : sd a0, 104(gp) -- Store: [0x80003278]:0x000120000009FFEF




Last Coverpoint : ['rs1 : x14', 'rs2 : x27', 'rd : x9', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs2_h2_val == -2049', 'rs2_h0_val == 2048', 'rs1_h3_val == -5', 'rs1_h2_val == 0', 'rs1_h1_val == 256', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x8000055c]:KDMABB s1, a4, s11
	-[0x80000560]:sd s1, 112(gp)
Current Store : [0x80000564] : sd a4, 120(gp) -- Store: [0x80003288]:0xFFFB000001001000




Last Coverpoint : ['rs1 : x19', 'rs2 : x7', 'rd : x22', 'rs2_h3_val == -21846', 'rs2_h2_val == 21845', 'rs2_h1_val == 1024', 'rs2_h0_val == 32767', 'rs1_h3_val == -1', 'rs1_h2_val == 128', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x8000059c]:KDMABB s6, s3, t2
	-[0x800005a0]:sd s6, 128(gp)
Current Store : [0x800005a4] : sd s3, 136(gp) -- Store: [0x80003298]:0xFFFF00800006FFFF




Last Coverpoint : ['rs1 : x25', 'rs2 : x5', 'rd : x1', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == 21845', 'rs2_h2_val == -1', 'rs2_h1_val == -32768', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x800005e0]:KDMABB ra, s9, t0
	-[0x800005e4]:sd ra, 144(gp)
Current Store : [0x800005e8] : sd s9, 152(gp) -- Store: [0x800032a8]:0xFFFC0006FFFA0002




Last Coverpoint : ['rs1 : x8', 'rs2 : x18', 'rd : x31', 'rs2_h3_val == 32767', 'rs2_h2_val == 128', 'rs2_h1_val == 16', 'rs2_h0_val == -4097', 'rs1_h3_val == 8192', 'rs1_h2_val == 4', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x8000061c]:KDMABB t6, fp, s2
	-[0x80000620]:sd t6, 160(gp)
Current Store : [0x80000624] : sd fp, 168(gp) -- Store: [0x800032b8]:0x20000004FF7F7FFF




Last Coverpoint : ['rs1 : x22', 'rs2 : x6', 'rd : x2', 'rs2_h3_val == -16385', 'rs2_h2_val == 8192', 'rs2_h0_val == 512', 'rs1_h3_val == 4096']
Last Code Sequence : 
	-[0x80000658]:KDMABB sp, s6, t1
	-[0x8000065c]:sd sp, 176(gp)
Current Store : [0x80000660] : sd s6, 184(gp) -- Store: [0x800032c8]:0x1000100000073FFF




Last Coverpoint : ['rs1 : x16', 'rs2 : x17', 'rd : x14', 'rs2_h3_val == -8193', 'rs2_h2_val == -5', 'rs2_h0_val == -2', 'rs1_h2_val == -1025', 'rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x8000069c]:KDMABB a4, a6, a7
	-[0x800006a0]:sd a4, 192(gp)
Current Store : [0x800006a4] : sd a6, 200(gp) -- Store: [0x800032d8]:0x3FFFFBFF2000FFFC




Last Coverpoint : ['rs1 : x20', 'rs2 : x12', 'rd : x16', 'rs2_h3_val == -4097', 'rs2_h2_val == -1025', 'rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x800006d0]:KDMABB a6, s4, a2
	-[0x800006d4]:sd a6, 208(gp)
Current Store : [0x800006d8] : sd s4, 216(gp) -- Store: [0x800032e8]:0xFFF8FFFCDFFFFFF6




Last Coverpoint : ['rs1 : x12', 'rs2 : x16', 'rd : x19', 'rs2_h3_val == -2049', 'rs2_h2_val == 4096', 'rs2_h1_val == 21845', 'rs2_h0_val == -33', 'rs1_h3_val == -8193']
Last Code Sequence : 
	-[0x80000710]:KDMABB s3, a2, a6
	-[0x80000714]:sd s3, 0(a1)
Current Store : [0x80000718] : sd a2, 8(a1) -- Store: [0x800032f8]:0xDFFFFDFF0005C000




Last Coverpoint : ['rs1 : x7', 'rs2 : x22', 'rd : x6', 'rs2_h3_val == -1025', 'rs2_h2_val == -33', 'rs2_h1_val == -513', 'rs2_h0_val == -9', 'rs1_h2_val == -65', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x8000074c]:KDMABB t1, t2, s6
	-[0x80000750]:sd t1, 16(a1)
Current Store : [0x80000754] : sd t2, 24(a1) -- Store: [0x80003308]:0x0005FFBF0007EFFF




Last Coverpoint : ['rs1 : x2', 'rs2 : x26', 'rd : x21', 'rs2_h3_val == -129', 'rs2_h2_val == -513', 'rs2_h0_val == 21845', 'rs1_h3_val == -21846', 'rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x80000794]:KDMABB s5, sp, s10
	-[0x80000798]:sd s5, 32(a1)
Current Store : [0x8000079c] : sd sp, 40(a1) -- Store: [0x80003318]:0xAAAA04000800C000




Last Coverpoint : ['rs1 : x21', 'rs2 : x31', 'rd : x23', 'rs2_h3_val == -65', 'rs2_h1_val == -2049', 'rs1_h3_val == 4', 'rs1_h1_val == 4096', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x800007c0]:KDMABB s7, s5, t6
	-[0x800007c4]:sd s7, 48(a1)
Current Store : [0x800007c8] : sd s5, 56(a1) -- Store: [0x80003328]:0x0004000910000100




Last Coverpoint : ['rs1 : x31', 'rs2 : x3', 'rd : x27', 'rs2_h3_val == -33', 'rs2_h0_val == 1024', 'rs1_h3_val == 8', 'rs1_h2_val == -129', 'rs1_h1_val == -257', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x800007fc]:KDMABB s11, t6, gp
	-[0x80000800]:sd s11, 64(a1)
Current Store : [0x80000804] : sd t6, 72(a1) -- Store: [0x80003338]:0x0008FF7FFEFF0040




Last Coverpoint : ['rs1 : x26', 'rs2 : x9', 'rd : x20', 'rs2_h3_val == -17', 'rs1_h2_val == 8', 'rs1_h1_val == -1']
Last Code Sequence : 
	-[0x80000830]:KDMABB s4, s10, s1
	-[0x80000834]:sd s4, 80(a1)
Current Store : [0x80000838] : sd s10, 88(a1) -- Store: [0x80003348]:0xFF7F0008FFFFFFEF




Last Coverpoint : ['rs1 : x1', 'rs2 : x15', 'rd : x5', 'rs2_h3_val == -9', 'rs2_h1_val == -5', 'rs2_h0_val == 8', 'rs1_h3_val == -2049', 'rs1_h2_val == -9', 'rs1_h1_val == 2', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x8000086c]:KDMABB t0, ra, a5
	-[0x80000870]:sd t0, 96(a1)
Current Store : [0x80000874] : sd ra, 104(a1) -- Store: [0x80003358]:0xF7FFFFF70002BFFF




Last Coverpoint : ['rs1 : x9', 'rs2 : x10', 'rd : x0', 'rs2_h3_val == -5', 'rs2_h1_val == 2048', 'rs1_h3_val == -513']
Last Code Sequence : 
	-[0x800008a0]:KDMABB zero, s1, a0
	-[0x800008a4]:sd zero, 112(a1)
Current Store : [0x800008a8] : sd s1, 120(a1) -- Store: [0x80003368]:0xFDFF00042000FFFD




Last Coverpoint : ['rs1 : x4', 'rs2 : x14', 'rd : x15', 'rs2_h3_val == -3', 'rs2_h1_val == -65', 'rs1_h3_val == -2', 'rs1_h1_val == -9', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x800008dc]:KDMABB a5, tp, a4
	-[0x800008e0]:sd a5, 128(a1)
Current Store : [0x800008e4] : sd tp, 136(a1) -- Store: [0x80003378]:0xFFFE0000FFF70008




Last Coverpoint : ['rs1 : x28', 'rs2 : x19', 'rd : x24', 'rs2_h3_val == -2', 'rs2_h0_val == -2049', 'rs1_h3_val == -32768', 'rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x80000914]:KDMABB s8, t3, s3
	-[0x80000918]:sd s8, 144(a1)
Current Store : [0x8000091c] : sd t3, 152(a1) -- Store: [0x80003388]:0x8000000504000003




Last Coverpoint : ['rs1 : x15', 'rs2 : x25', 'rd : x12', 'rs2_h3_val == -32768', 'rs2_h2_val == 1', 'rs2_h0_val == -65', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80000950]:KDMABB a2, a5, s9
	-[0x80000954]:sd a2, 160(a1)
Current Store : [0x80000958] : sd a5, 168(a1) -- Store: [0x80003398]:0xFFF83FFF00020020




Last Coverpoint : ['rs1 : x30', 'rs2 : x20', 'rd : x17', 'rs2_h3_val == 8192', 'rs2_h2_val == -32768', 'rs2_h0_val == 4', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x8000098c]:KDMABB a7, t5, s4
	-[0x80000990]:sd a7, 176(a1)
Current Store : [0x80000994] : sd t5, 184(a1) -- Store: [0x800033a8]:0xFFFF0003FFFCAAAA




Last Coverpoint : ['rs1 : x24', 'rs2 : x8', 'rd : x28', 'rs2_h3_val == 4096', 'rs2_h2_val == 32767', 'rs1_h2_val == 64']
Last Code Sequence : 
	-[0x800009c4]:KDMABB t3, s8, fp
	-[0x800009c8]:sd t3, 192(a1)
Current Store : [0x800009cc] : sd s8, 200(a1) -- Store: [0x800033b8]:0x8000004020000002




Last Coverpoint : ['rs1 : x6', 'rs2 : x21', 'rd : x10', 'rs2_h3_val == 2048', 'rs2_h2_val == 8', 'rs1_h2_val == 1']
Last Code Sequence : 
	-[0x80000a04]:KDMABB a0, t1, s5
	-[0x80000a08]:sd a0, 0(ra)
Current Store : [0x80000a0c] : sd t1, 8(ra) -- Store: [0x800033c8]:0xFFFE0001FFBF0007




Last Coverpoint : ['rs1 : x3', 'rs2 : x23', 'rd : x11', 'rs2_h3_val == 1024', 'rs2_h2_val == -21846', 'rs1_h2_val == 16']
Last Code Sequence : 
	-[0x80000a44]:KDMABB a1, gp, s7
	-[0x80000a48]:sd a1, 16(ra)
Current Store : [0x80000a4c] : sd gp, 24(ra) -- Store: [0x800033d8]:0xDFFF00102000AAAA




Last Coverpoint : ['rs1 : x27', 'rs2 : x2', 'rd : x3', 'rs2_h3_val == 512', 'rs2_h2_val == 64', 'rs2_h0_val == -129', 'rs1_h3_val == 0', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000a78]:KDMABB gp, s11, sp
	-[0x80000a7c]:sd gp, 32(ra)
Current Store : [0x80000a80] : sd s11, 40(ra) -- Store: [0x800033e8]:0x0000DFFF0007FEFF




Last Coverpoint : ['rs1 : x5', 'rs2 : x24', 'rd : x8', 'rs2_h3_val == 256', 'rs2_h0_val == -8193', 'rs1_h1_val == 128']
Last Code Sequence : 
	-[0x80000aa8]:KDMABB fp, t0, s8
	-[0x80000aac]:sd fp, 48(ra)
Current Store : [0x80000ab0] : sd t0, 56(ra) -- Store: [0x800033f8]:0xFFF6FFF600800040




Last Coverpoint : ['rs1 : x0', 'rs2 : x30', 'rd : x25', 'rs2_h3_val == 64', 'rs2_h1_val == 128', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000ae4]:KDMABB s9, zero, t5
	-[0x80000ae8]:sd s9, 64(ra)
Current Store : [0x80000aec] : sd zero, 72(ra) -- Store: [0x80003408]:0x0000000000000000




Last Coverpoint : ['rs2_h3_val == 32', 'rs2_h1_val == 64']
Last Code Sequence : 
	-[0x80000b1c]:KDMABB t6, t5, t4
	-[0x80000b20]:sd t6, 80(ra)
Current Store : [0x80000b24] : sd t5, 88(ra) -- Store: [0x80003418]:0x2000000800030006




Last Coverpoint : ['rs2_h3_val == 16', 'rs2_h1_val == -3', 'rs1_h1_val == -513']
Last Code Sequence : 
	-[0x80000b58]:KDMABB t6, t5, t4
	-[0x80000b5c]:sd t6, 96(ra)
Current Store : [0x80000b60] : sd t5, 104(ra) -- Store: [0x80003428]:0x10000001FDFF0009




Last Coverpoint : ['rs2_h3_val == 4', 'rs2_h2_val == 256', 'rs2_h1_val == -1025', 'rs1_h2_val == 32', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80000b8c]:KDMABB t6, t5, t4
	-[0x80000b90]:sd t6, 112(ra)
Current Store : [0x80000b94] : sd t5, 120(ra) -- Store: [0x80003438]:0xFFDF002000000004




Last Coverpoint : ['rs2_h3_val == 2', 'rs1_h3_val == 128', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000bc4]:KDMABB t6, t5, t4
	-[0x80000bc8]:sd t6, 128(ra)
Current Store : [0x80000bcc] : sd t5, 136(ra) -- Store: [0x80003448]:0x0080000500804000




Last Coverpoint : ['rs2_h1_val == 1', 'rs1_h2_val == 21845', 'rs1_h1_val == -5', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000c00]:KDMABB t6, t5, t4
	-[0x80000c04]:sd t6, 144(ra)
Current Store : [0x80000c08] : sd t5, 152(ra) -- Store: [0x80003458]:0xFFFF5555FFFB0400




Last Coverpoint : ['rs2_h0_val == -21846', 'rs1_h1_val == -3']
Last Code Sequence : 
	-[0x80000c3c]:KDMABB t6, t5, t4
	-[0x80000c40]:sd t6, 160(ra)
Current Store : [0x80000c44] : sd t5, 168(ra) -- Store: [0x80003468]:0xC000FDFFFFFD0005




Last Coverpoint : ['rs2_h1_val == 32767', 'rs1_h1_val == -2']
Last Code Sequence : 
	-[0x80000c78]:KDMABB t6, t5, t4
	-[0x80000c7c]:sd t6, 176(ra)
Current Store : [0x80000c80] : sd t5, 184(ra) -- Store: [0x80003478]:0x00040020FFFEAAAA




Last Coverpoint : ['rs2_h3_val == 1', 'rs2_h0_val == -16385', 'rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x80000cac]:KDMABB t6, t5, t4
	-[0x80000cb0]:sd t6, 192(ra)
Current Store : [0x80000cb4] : sd t5, 200(ra) -- Store: [0x80003488]:0xFFF8FFFC40000009




Last Coverpoint : ['rs1_h0_val == -32768', 'rs2_h0_val == 16', 'rs1_h1_val == 512']
Last Code Sequence : 
	-[0x80000ce4]:KDMABB t6, t5, t4
	-[0x80000ce8]:sd t6, 208(ra)
Current Store : [0x80000cec] : sd t5, 216(ra) -- Store: [0x80003498]:0x0008001002008000




Last Coverpoint : ['rs2_h2_val == -16385', 'rs2_h1_val == 256', 'rs1_h3_val == 16', 'rs1_h1_val == 64']
Last Code Sequence : 
	-[0x80000d20]:KDMABB t6, t5, t4
	-[0x80000d24]:sd t6, 224(ra)
Current Store : [0x80000d28] : sd t5, 232(ra) -- Store: [0x800034a8]:0x0010DFFF0040FDFF




Last Coverpoint : ['opcode : kdmabb', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == -2049', 'rs1_h3_val == -8193', 'rs1_h2_val == 1', 'rs1_h1_val == 32']
Last Code Sequence : 
	-[0x80000d5c]:KDMABB t6, t5, t4
	-[0x80000d60]:sd t6, 240(ra)
Current Store : [0x80000d64] : sd t5, 248(ra) -- Store: [0x800034b8]:0xDFFF000100200009




Last Coverpoint : ['rs1_h1_val == 16']
Last Code Sequence : 
	-[0x80000d90]:KDMABB t6, t5, t4
	-[0x80000d94]:sd t6, 256(ra)
Current Store : [0x80000d98] : sd t5, 264(ra) -- Store: [0x800034c8]:0xFFFA100000100005




Last Coverpoint : ['rs2_h2_val == 2048', 'rs2_h1_val == -129', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000dc8]:KDMABB t6, t5, t4
	-[0x80000dcc]:sd t6, 272(ra)
Current Store : [0x80000dd0] : sd t5, 280(ra) -- Store: [0x800034d8]:0x200020000008C000




Last Coverpoint : ['rs2_h1_val == -33', 'rs1_h1_val == 4']
Last Code Sequence : 
	-[0x80000e04]:KDMABB t6, t5, t4
	-[0x80000e08]:sd t6, 288(ra)
Current Store : [0x80000e0c] : sd t5, 296(ra) -- Store: [0x800034e8]:0x2000FFF900040003




Last Coverpoint : ['rs2_h1_val == -9', 'rs2_h0_val == 128', 'rs1_h1_val == 1']
Last Code Sequence : 
	-[0x80000e38]:KDMABB t6, t5, t4
	-[0x80000e3c]:sd t6, 304(ra)
Current Store : [0x80000e40] : sd t5, 312(ra) -- Store: [0x800034f8]:0xFFFFFFF60001FFF6




Last Coverpoint : ['rs2_h0_val == -3', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000e70]:KDMABB t6, t5, t4
	-[0x80000e74]:sd t6, 320(ra)
Current Store : [0x80000e78] : sd t5, 328(ra) -- Store: [0x80003508]:0xFF7FFFFAFEFF5555




Last Coverpoint : ['rs2_h2_val == -17', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000eb4]:KDMABB t6, t5, t4
	-[0x80000eb8]:sd t6, 336(ra)
Current Store : [0x80000ebc] : sd t5, 344(ra) -- Store: [0x80003518]:0xDFFF55550800DFFF




Last Coverpoint : ['rs1_h3_val == -4097', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000ef8]:KDMABB t6, t5, t4
	-[0x80000efc]:sd t6, 352(ra)
Current Store : [0x80000f00] : sd t5, 360(ra) -- Store: [0x80003528]:0xEFFF3FFF0800F7FF




Last Coverpoint : ['rs2_h1_val == 16384']
Last Code Sequence : 
	-[0x80000f2c]:KDMABB t6, t5, t4
	-[0x80000f30]:sd t6, 368(ra)
Current Store : [0x80000f34] : sd t5, 376(ra) -- Store: [0x80003538]:0x0006DFFF0002FBFF




Last Coverpoint : ['rs1_h2_val == -21846', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000f68]:KDMABB t6, t5, t4
	-[0x80000f6c]:sd t6, 384(ra)
Current Store : [0x80000f70] : sd t5, 392(ra) -- Store: [0x80003548]:0xFDFFAAAAFFF7FF7F




Last Coverpoint : ['rs2_h1_val == -8193', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000f9c]:KDMABB t6, t5, t4
	-[0x80000fa0]:sd t6, 400(ra)
Current Store : [0x80000fa4] : sd t5, 408(ra) -- Store: [0x80003558]:0x200004000200FFDF




Last Coverpoint : ['rs1_h1_val == -32768', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000fd8]:KDMABB t6, t5, t4
	-[0x80000fdc]:sd t6, 416(ra)
Current Store : [0x80000fe0] : sd t5, 424(ra) -- Store: [0x80003568]:0xFFFBFFFC8000FFFB




Last Coverpoint : ['rs2_h0_val == 16384', 'rs1_h2_val == -17', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80001010]:KDMABB t6, t5, t4
	-[0x80001014]:sd t6, 432(ra)
Current Store : [0x80001018] : sd t5, 440(ra) -- Store: [0x80003578]:0x0009FFEF0200FFFE




Last Coverpoint : ['rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x8000103c]:KDMABB t6, t5, t4
	-[0x80001040]:sd t6, 448(ra)
Current Store : [0x80001044] : sd t5, 456(ra) -- Store: [0x80003588]:0x00080080FF7F2000




Last Coverpoint : ['rs2_h1_val == -4097', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80001078]:KDMABB t6, t5, t4
	-[0x8000107c]:sd t6, 464(ra)
Current Store : [0x80001080] : sd t5, 472(ra) -- Store: [0x80003598]:0x0007FFFC01000800




Last Coverpoint : ['rs1_h3_val == 32', 'rs1_h2_val == 512', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x800010b4]:KDMABB t6, t5, t4
	-[0x800010b8]:sd t6, 480(ra)
Current Store : [0x800010bc] : sd t5, 488(ra) -- Store: [0x800035a8]:0x00200200FF7F0200




Last Coverpoint : ['rs2_h0_val == -17', 'rs1_h2_val == -33', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x800010e8]:KDMABB t6, t5, t4
	-[0x800010ec]:sd t6, 496(ra)
Current Store : [0x800010f0] : sd t5, 504(ra) -- Store: [0x800035b8]:0x4000FFDF00000080




Last Coverpoint : ['rs2_h2_val == -257', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x8000111c]:KDMABB t6, t5, t4
	-[0x80001120]:sd t6, 512(ra)
Current Store : [0x80001124] : sd t5, 520(ra) -- Store: [0x800035c8]:0xFFFCAAAA02000010




Last Coverpoint : ['rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x80001154]:KDMABB t6, t5, t4
	-[0x80001158]:sd t6, 528(ra)
Current Store : [0x8000115c] : sd t5, 536(ra) -- Store: [0x800035d8]:0xFFFF0008EFFF0000




Last Coverpoint : ['rs2_h3_val == -1', 'rs1_h3_val == -65', 'rs1_h2_val == 2048', 'rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x80001190]:KDMABB t6, t5, t4
	-[0x80001194]:sd t6, 544(ra)
Current Store : [0x80001198] : sd t5, 552(ra) -- Store: [0x800035e8]:0xFFBF080055550020




Last Coverpoint : ['rs2_h2_val == 4', 'rs2_h1_val == 4', 'rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x800011c4]:KDMABB t6, t5, t4
	-[0x800011c8]:sd t6, 560(ra)
Current Store : [0x800011cc] : sd t5, 568(ra) -- Store: [0x800035f8]:0xFFF6FFF67FFFFFFB




Last Coverpoint : ['rs2_h1_val == 2']
Last Code Sequence : 
	-[0x80001200]:KDMABB t6, t5, t4
	-[0x80001204]:sd t6, 576(ra)
Current Store : [0x80001208] : sd t5, 584(ra) -- Store: [0x80003608]:0x00801000FFFDEFFF




Last Coverpoint : ['rs1_h2_val == -4097']
Last Code Sequence : 
	-[0x80001230]:KDMABB t6, t5, t4
	-[0x80001234]:sd t6, 592(ra)
Current Store : [0x80001238] : sd t5, 600(ra) -- Store: [0x80003618]:0x0003EFFFFFF98000




Last Coverpoint : ['rs2_h1_val == -1', 'rs1_h2_val == 16384']
Last Code Sequence : 
	-[0x80001264]:KDMABB t6, t5, t4
	-[0x80001268]:sd t6, 608(ra)
Current Store : [0x8000126c] : sd t5, 616(ra) -- Store: [0x80003628]:0xFFFA4000FFFC0020




Last Coverpoint : ['rs2_h1_val == 8192', 'rs2_h0_val == -5']
Last Code Sequence : 
	-[0x800012a0]:KDMABB t6, t5, t4
	-[0x800012a4]:sd t6, 624(ra)
Current Store : [0x800012a8] : sd t5, 632(ra) -- Store: [0x80003638]:0x0007FFBFFFF8F7FF




Last Coverpoint : ['rs2_h0_val == -32768', 'rs1_h3_val == 2048']
Last Code Sequence : 
	-[0x800012d4]:KDMABB t6, t5, t4
	-[0x800012d8]:sd t6, 640(ra)
Current Store : [0x800012dc] : sd t5, 648(ra) -- Store: [0x80003648]:0x0800FFFE80001000




Last Coverpoint : ['rs2_h0_val == 8192', 'rs1_h3_val == 2']
Last Code Sequence : 
	-[0x8000130c]:KDMABB t6, t5, t4
	-[0x80001310]:sd t6, 656(ra)
Current Store : [0x80001314] : sd t5, 664(ra) -- Store: [0x80003658]:0x0002FDFF0020FBFF




Last Coverpoint : ['rs2_h0_val == 4096']
Last Code Sequence : 
	-[0x80001344]:KDMABB t6, t5, t4
	-[0x80001348]:sd t6, 672(ra)
Current Store : [0x8000134c] : sd t5, 680(ra) -- Store: [0x80003668]:0xFF7FFDFF00070004




Last Coverpoint : ['rs2_h1_val == 512', 'rs2_h0_val == 256', 'rs1_h3_val == 21845']
Last Code Sequence : 
	-[0x80001378]:KDMABB t6, t5, t4
	-[0x8000137c]:sd t6, 688(ra)
Current Store : [0x80001380] : sd t5, 696(ra) -- Store: [0x80003678]:0x5555FFF610000040




Last Coverpoint : ['rs2_h0_val == 64', 'rs1_h3_val == -3']
Last Code Sequence : 
	-[0x800013ac]:KDMABB t6, t5, t4
	-[0x800013b0]:sd t6, 704(ra)
Current Store : [0x800013b4] : sd t5, 712(ra) -- Store: [0x80003688]:0xFFFDFFFE0006FFFC




Last Coverpoint : ['rs2_h0_val == 2']
Last Code Sequence : 
	-[0x800013e0]:KDMABB t6, t5, t4
	-[0x800013e4]:sd t6, 720(ra)
Current Store : [0x800013e8] : sd t5, 728(ra) -- Store: [0x80003698]:0xFFF8FFFE0040FFF8




Last Coverpoint : ['rs2_h0_val == -1']
Last Code Sequence : 
	-[0x8000140c]:KDMABB t6, t5, t4
	-[0x80001410]:sd t6, 736(ra)
Current Store : [0x80001414] : sd t5, 744(ra) -- Store: [0x800036a8]:0x000401003FFFFFFA




Last Coverpoint : ['rs2_h1_val == 4096', 'rs1_h3_val == 32767']
Last Code Sequence : 
	-[0x80001450]:KDMABB t6, t5, t4
	-[0x80001454]:sd t6, 752(ra)
Current Store : [0x80001458] : sd t5, 760(ra) -- Store: [0x800036b8]:0x7FFF0005FFFDFFFB




Last Coverpoint : ['rs1_h3_val == -16385', 'rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x8000148c]:KDMABB t6, t5, t4
	-[0x80001490]:sd t6, 768(ra)
Current Store : [0x80001494] : sd t5, 776(ra) -- Store: [0x800036c8]:0xBFFF4000FBFFFFF8




Last Coverpoint : ['rs1_h3_val == -1025']
Last Code Sequence : 
	-[0x800014c4]:KDMABB t6, t5, t4
	-[0x800014c8]:sd t6, 784(ra)
Current Store : [0x800014cc] : sd t5, 792(ra) -- Store: [0x800036d8]:0xFBFF0400FFFA1000




Last Coverpoint : ['rs1_h3_val == -17']
Last Code Sequence : 
	-[0x800014f4]:KDMABB t6, t5, t4
	-[0x800014f8]:sd t6, 800(ra)
Current Store : [0x800014fc] : sd t5, 808(ra) -- Store: [0x800036e8]:0xFFEFFFFE1000DFFF




Last Coverpoint : ['rs2_h2_val == 512', 'rs1_h3_val == -9', 'rs1_h2_val == -16385']
Last Code Sequence : 
	-[0x80001530]:KDMABB t6, t5, t4
	-[0x80001534]:sd t6, 816(ra)
Current Store : [0x80001538] : sd t5, 824(ra) -- Store: [0x800036f8]:0xFFF7BFFF55553FFF




Last Coverpoint : ['rs1_h3_val == 512']
Last Code Sequence : 
	-[0x80001568]:KDMABB t6, t5, t4
	-[0x8000156c]:sd t6, 832(ra)
Current Store : [0x80001570] : sd t5, 840(ra) -- Store: [0x80003708]:0x02000010FBFFFFFC




Last Coverpoint : ['rs2_h2_val == -4097']
Last Code Sequence : 
	-[0x800015a0]:KDMABB t6, t5, t4
	-[0x800015a4]:sd t6, 848(ra)
Current Store : [0x800015a8] : sd t5, 856(ra) -- Store: [0x80003718]:0x8000FFF600090200




Last Coverpoint : ['rs2_h1_val == -21846', 'rs1_h3_val == 256']
Last Code Sequence : 
	-[0x800015d0]:KDMABB t6, t5, t4
	-[0x800015d4]:sd t6, 864(ra)
Current Store : [0x800015d8] : sd t5, 872(ra) -- Store: [0x80003728]:0x0100400080000001




Last Coverpoint : ['rs1_h3_val == 64', 'rs1_h2_val == -32768']
Last Code Sequence : 
	-[0x80001604]:KDMABB t6, t5, t4
	-[0x80001608]:sd t6, 880(ra)
Current Store : [0x8000160c] : sd t5, 888(ra) -- Store: [0x80003738]:0x0040800000062000




Last Coverpoint : ['rs2_h2_val == -129']
Last Code Sequence : 
	-[0x8000163c]:KDMABB t6, t5, t4
	-[0x80001640]:sd t6, 896(ra)
Current Store : [0x80001644] : sd t5, 904(ra) -- Store: [0x80003748]:0x0006FFFA0009C000




Last Coverpoint : ['rs2_h2_val == -65']
Last Code Sequence : 
	-[0x80001678]:KDMABB t6, t5, t4
	-[0x8000167c]:sd t6, 912(ra)
Current Store : [0x80001680] : sd t5, 920(ra) -- Store: [0x80003758]:0xFFBF00070040BFFF




Last Coverpoint : ['rs2_h2_val == -3']
Last Code Sequence : 
	-[0x800016ac]:KDMABB t6, t5, t4
	-[0x800016b0]:sd t6, 928(ra)
Current Store : [0x800016b4] : sd t5, 936(ra) -- Store: [0x80003768]:0xEFFFFFEF00070020




Last Coverpoint : ['rs1_h2_val == 32767', 'rs1_h1_val == -33']
Last Code Sequence : 
	-[0x800016ec]:KDMABB t6, t5, t4
	-[0x800016f0]:sd t6, 944(ra)
Current Store : [0x800016f4] : sd t5, 952(ra) -- Store: [0x80003778]:0xAAAA7FFFFFDF0080




Last Coverpoint : ['rs1_h2_val == -2049']
Last Code Sequence : 
	-[0x80001728]:KDMABB t6, t5, t4
	-[0x8000172c]:sd t6, 960(ra)
Current Store : [0x80001730] : sd t5, 968(ra) -- Store: [0x80003788]:0x4000F7FF1000FFFA




Last Coverpoint : ['rs1_h2_val == -257']
Last Code Sequence : 
	-[0x8000175c]:KDMABB t6, t5, t4
	-[0x80001760]:sd t6, 976(ra)
Current Store : [0x80001764] : sd t5, 984(ra) -- Store: [0x80003798]:0x0005FEFF00070008




Last Coverpoint : ['rs2_h2_val == -9', 'rs2_h1_val == -16385']
Last Code Sequence : 
	-[0x80001798]:KDMABB t6, t5, t4
	-[0x8000179c]:sd t6, 992(ra)
Current Store : [0x800017a0] : sd t5, 1000(ra) -- Store: [0x800037a8]:0xFFF8FF7FDFFF0003




Last Coverpoint : ['rs2_h1_val == -257']
Last Code Sequence : 
	-[0x800017d0]:KDMABB t6, t5, t4
	-[0x800017d4]:sd t6, 1008(ra)
Current Store : [0x800017d8] : sd t5, 1016(ra) -- Store: [0x800037b8]:0xFBFFF7FF00010004




Last Coverpoint : ['rs1_h2_val == 2']
Last Code Sequence : 
	-[0x8000180c]:KDMABB t6, t5, t4
	-[0x80001810]:sd t6, 1024(ra)
Current Store : [0x80001814] : sd t5, 1032(ra) -- Store: [0x800037c8]:0xFFFB0002C000FFFC




Last Coverpoint : ['rs2_h1_val == -17']
Last Code Sequence : 
	-[0x80001848]:KDMABB t6, t5, t4
	-[0x8000184c]:sd t6, 1040(ra)
Current Store : [0x80001850] : sd t5, 1048(ra) -- Store: [0x800037d8]:0xFDFFFEFFFFFC0400




Last Coverpoint : ['rs1_h2_val == -1', 'rs1_h1_val == -17']
Last Code Sequence : 
	-[0x80001884]:KDMABB t6, t5, t4
	-[0x80001888]:sd t6, 1056(ra)
Current Store : [0x8000188c] : sd t5, 1064(ra) -- Store: [0x800037e8]:0x4000FFFFFFEF0100




Last Coverpoint : ['rs1_h1_val == -21846']
Last Code Sequence : 
	-[0x800018c0]:KDMABB t6, t5, t4
	-[0x800018c4]:sd t6, 1072(ra)
Current Store : [0x800018c8] : sd t5, 1080(ra) -- Store: [0x800037f8]:0xFFDF3FFFAAAA0004




Last Coverpoint : ['rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x800018f4]:KDMABB t6, t5, t4
	-[0x800018f8]:sd t6, 1088(ra)
Current Store : [0x800018fc] : sd t5, 1096(ra) -- Store: [0x80003808]:0xFFFA0005BFFFFFFB




Last Coverpoint : ['rs2_h2_val == 2']
Last Code Sequence : 
	-[0x80001930]:KDMABB t6, t5, t4
	-[0x80001934]:sd t6, 1104(ra)
Current Store : [0x80001938] : sd t5, 1112(ra) -- Store: [0x80003818]:0x0006FFF700010006




Last Coverpoint : ['rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x8000196c]:KDMABB t6, t5, t4
	-[0x80001970]:sd t6, 1120(ra)
Current Store : [0x80001974] : sd t5, 1128(ra) -- Store: [0x80003828]:0x0800FFF7F7FFFFF9




Last Coverpoint : ['rs2_h2_val == 32', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x800019a0]:KDMABB t6, t5, t4
	-[0x800019a4]:sd t6, 1136(ra)
Current Store : [0x800019a8] : sd t5, 1144(ra) -- Store: [0x80003838]:0xFFF94000FDFFFFBF




Last Coverpoint : ['rs2_h2_val == 16']
Last Code Sequence : 
	-[0x800019dc]:KDMABB t6, t5, t4
	-[0x800019e0]:sd t6, 1152(ra)
Current Store : [0x800019e4] : sd t5, 1160(ra) -- Store: [0x80003848]:0xFFEF00050009FFFE




Last Coverpoint : ['rs1_h2_val == -5']
Last Code Sequence : 
	-[0x80001a14]:KDMABB t6, t5, t4
	-[0x80001a18]:sd t6, 1168(ra)
Current Store : [0x80001a1c] : sd t5, 1176(ra) -- Store: [0x80003858]:0x0007FFFBDFFFAAAA




Last Coverpoint : ['rs1_h2_val == -3']
Last Code Sequence : 
	-[0x80001a4c]:KDMABB t6, t5, t4
	-[0x80001a50]:sd t6, 1184(ra)
Current Store : [0x80001a54] : sd t5, 1192(ra) -- Store: [0x80003868]:0x0007FFFD55550009




Last Coverpoint : ['rs2_h1_val == 8']
Last Code Sequence : 
	-[0x80001a88]:KDMABB t6, t5, t4
	-[0x80001a8c]:sd t6, 1200(ra)
Current Store : [0x80001a90] : sd t5, 1208(ra) -- Store: [0x80003878]:0x4000FF7FFFF70008




Last Coverpoint : ['opcode : kdmabb', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h0_val == -32768', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == -257', 'rs2_h2_val == -2', 'rs2_h0_val == -1025', 'rs1_h2_val == -33', 'rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x80001ab8]:KDMABB t6, t5, t4
	-[0x80001abc]:sd t6, 1216(ra)
Current Store : [0x80001ac0] : sd t5, 1224(ra) -- Store: [0x80003888]:0xFFFCFFDFFBFF8000




Last Coverpoint : ['opcode : kdmabb', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == 16384', 'rs2_h2_val == 1024', 'rs2_h1_val == 32', 'rs2_h0_val == -513', 'rs1_h3_val == 16384', 'rs1_h2_val == 8192', 'rs1_h1_val == -32768', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80001af4]:KDMABB t6, t5, t4
	-[0x80001af8]:sd t6, 1232(ra)
Current Store : [0x80001afc] : sd t5, 1240(ra) -- Store: [0x80003898]:0x4000200080000100




Last Coverpoint : ['opcode : kdmabb', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == 64', 'rs2_h1_val == 128', 'rs2_h0_val == -33', 'rs1_h3_val == -257', 'rs1_h1_val == -9', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80001b30]:KDMABB t6, t5, t4
	-[0x80001b34]:sd t6, 1248(ra)
Current Store : [0x80001b38] : sd t5, 1256(ra) -- Store: [0x800038a8]:0xFEFF0003FFF7FFBF





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

|s.no|            signature             |                                                                                                                                                                                                                                                                coverpoints                                                                                                                                                                                                                                                                 |                                 code                                  |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80003210]<br>0xFFFFFFFFDF770F78|- opcode : kdmabb<br> - rs1 : x11<br> - rs2 : x11<br> - rd : x18<br> - rs1 == rs2 != rd<br> - rs1_h3_val == rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val < 0<br> - rs1_h2_val == rs2_h2_val<br> - rs1_h2_val < 0 and rs2_h2_val < 0<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h3_val == -257<br> - rs2_h2_val == -2<br> - rs2_h0_val == -1025<br> - rs1_h3_val == -257<br> - rs1_h2_val == -2<br> - rs1_h0_val == -1025<br> |[0x800003c8]:KDMABB s2, a1, a1<br> [0x800003cc]:sd s2, 0(gp)<br>       |
|   2|[0x80003220]<br>0x0000000000290601|- rs1 : x29<br> - rs2 : x29<br> - rd : x29<br> - rs1 == rs2 == rd<br> - rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs2_h3_val == 16384<br> - rs2_h2_val == 1024<br> - rs2_h1_val == 32<br> - rs2_h0_val == -513<br> - rs1_h3_val == 16384<br> - rs1_h2_val == 1024<br> - rs1_h1_val == 32<br> - rs1_h0_val == -513<br>                                                                                                                                                                                 |[0x80000404]:KDMABB t4, t4, t4<br> [0x80000408]:sd t4, 16(gp)<br>      |
|   3|[0x80003230]<br>0xFFFFFFFFB7FBB63A|- rs1 : x18<br> - rs2 : x13<br> - rd : x7<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h3_val != rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val > 0<br> - rs1_h2_val != rs2_h2_val<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h3_val == 8<br> - rs2_h1_val == -2<br> - rs2_h0_val == 32<br> - rs1_h3_val == -129<br> - rs1_h2_val == 4096<br> - rs1_h1_val == -129<br> - rs1_h0_val == -3<br>                       |[0x80000440]:KDMABB t2, s2, a3<br> [0x80000444]:sd t2, 32(gp)<br>      |
|   4|[0x80003240]<br>0x00000000400000AB|- rs1 : x13<br> - rs2 : x1<br> - rd : x13<br> - rs1 == rd != rs2<br> - rs1_h3_val > 0 and rs2_h3_val < 0<br> - rs1_h2_val < 0 and rs2_h2_val > 0<br> - rs1_h2_val == -513<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                                        |[0x8000047c]:KDMABB a3, a3, ra<br> [0x80000480]:sd a3, 48(gp)<br>      |
|   5|[0x80003250]<br>0x0000000000090003|- rs1 : x17<br> - rs2 : x4<br> - rd : x4<br> - rs2 == rd != rs1<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h3_val == 128<br> - rs2_h2_val == -8193<br> - rs2_h0_val == 1<br> - rs1_h3_val == 1024<br> - rs1_h2_val == -8193<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                        |[0x800004b8]:KDMABB tp, a7, tp<br> [0x800004bc]:sd tp, 64(gp)<br>      |
|   6|[0x80003260]<br>0xFFFFFFFFF76DF56F|- rs1 : x23<br> - rs2 : x0<br> - rd : x30<br> - rs2_h3_val == 0<br> - rs2_h2_val == 0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h3_val == -33<br> - rs1_h2_val == 256<br> - rs1_h1_val == -65<br>                                                                                                                                                                                                                                                                                                                               |[0x800004f0]:KDMABB t5, s7, zero<br> [0x800004f4]:sd t5, 80(gp)<br>    |
|   7|[0x80003270]<br>0x0000000076DF7921|- rs1 : x10<br> - rs2 : x28<br> - rd : x26<br> - rs2_h3_val == -513<br> - rs2_h2_val == 16384<br> - rs2_h0_val == -257<br> - rs1_h3_val == 1<br> - rs1_h2_val == 8192<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                                           |[0x80000528]:KDMABB s10, a0, t3<br> [0x8000052c]:sd s10, 96(gp)<br>    |
|   8|[0x80003280]<br>0xFFFFFFFFAEFEEDBE|- rs1 : x14<br> - rs2 : x27<br> - rd : x9<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs2_h2_val == -2049<br> - rs2_h0_val == 2048<br> - rs1_h3_val == -5<br> - rs1_h2_val == 0<br> - rs1_h1_val == 256<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                      |[0x8000055c]:KDMABB s1, a4, s11<br> [0x80000560]:sd s1, 112(gp)<br>    |
|   9|[0x80003290]<br>0x000000006DF46FF9|- rs1 : x19<br> - rs2 : x7<br> - rd : x22<br> - rs2_h3_val == -21846<br> - rs2_h2_val == 21845<br> - rs2_h1_val == 1024<br> - rs2_h0_val == 32767<br> - rs1_h3_val == -1<br> - rs1_h2_val == 128<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                 |[0x8000059c]:KDMABB s6, s3, t2<br> [0x800005a0]:sd s6, 128(gp)<br>     |
|  10|[0x800032a0]<br>0x000000000006F7F2|- rs1 : x25<br> - rs2 : x5<br> - rd : x1<br> - rs1_h2_val > 0 and rs2_h2_val < 0<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h3_val == 21845<br> - rs2_h2_val == -1<br> - rs2_h1_val == -32768<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                              |[0x800005e0]:KDMABB ra, s9, t0<br> [0x800005e4]:sd ra, 144(gp)<br>     |
|  11|[0x800032b0]<br>0xFFFFFFFFEBB61AB9|- rs1 : x8<br> - rs2 : x18<br> - rd : x31<br> - rs2_h3_val == 32767<br> - rs2_h2_val == 128<br> - rs2_h1_val == 16<br> - rs2_h0_val == -4097<br> - rs1_h3_val == 8192<br> - rs1_h2_val == 4<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                   |[0x8000061c]:KDMABB t6, fp, s2<br> [0x80000620]:sd t6, 160(gp)<br>     |
|  12|[0x800032c0]<br>0x000000000076DB56|- rs1 : x22<br> - rs2 : x6<br> - rd : x2<br> - rs2_h3_val == -16385<br> - rs2_h2_val == 8192<br> - rs2_h0_val == 512<br> - rs1_h3_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000658]:KDMABB sp, s6, t1<br> [0x8000065c]:sd sp, 176(gp)<br>     |
|  13|[0x800032d0]<br>0x0000000001001010|- rs1 : x16<br> - rs2 : x17<br> - rd : x14<br> - rs2_h3_val == -8193<br> - rs2_h2_val == -5<br> - rs2_h0_val == -2<br> - rs1_h2_val == -1025<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                   |[0x8000069c]:KDMABB a4, a6, a7<br> [0x800006a0]:sd a4, 192(gp)<br>     |
|  14|[0x800032e0]<br>0x000000002000FF98|- rs1 : x20<br> - rs2 : x12<br> - rd : x16<br> - rs2_h3_val == -4097<br> - rs2_h2_val == -1025<br> - rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800006d0]:KDMABB a6, s4, a2<br> [0x800006d4]:sd a6, 208(gp)<br>     |
|  15|[0x800032f0]<br>0x0000000000177FFF|- rs1 : x12<br> - rs2 : x16<br> - rd : x19<br> - rs2_h3_val == -2049<br> - rs2_h2_val == 4096<br> - rs2_h1_val == 21845<br> - rs2_h0_val == -33<br> - rs1_h3_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                               |[0x80000710]:KDMABB s3, a2, a6<br> [0x80000714]:sd s3, 0(a1)<br>       |
|  16|[0x80003300]<br>0x0000000004012212|- rs1 : x7<br> - rs2 : x22<br> - rd : x6<br> - rs2_h3_val == -1025<br> - rs2_h2_val == -33<br> - rs2_h1_val == -513<br> - rs2_h0_val == -9<br> - rs1_h2_val == -65<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                                            |[0x8000074c]:KDMABB t1, t2, s6<br> [0x80000750]:sd t1, 16(a1)<br>      |
|  17|[0x80003310]<br>0xFFFFFFFFB1405FEE|- rs1 : x2<br> - rs2 : x26<br> - rd : x21<br> - rs2_h3_val == -129<br> - rs2_h2_val == -513<br> - rs2_h0_val == 21845<br> - rs1_h3_val == -21846<br> - rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                               |[0x80000794]:KDMABB s5, sp, s10<br> [0x80000798]:sd s5, 32(a1)<br>     |
|  18|[0x80003320]<br>0xFFFFFFFFFFBFFBF6|- rs1 : x21<br> - rs2 : x31<br> - rd : x23<br> - rs2_h3_val == -65<br> - rs2_h1_val == -2049<br> - rs1_h3_val == 4<br> - rs1_h1_val == 4096<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                     |[0x800007c0]:KDMABB s7, s5, t6<br> [0x800007c4]:sd s7, 48(a1)<br>      |
|  19|[0x80003330]<br>0xFFFFFFFFFFFE0800|- rs1 : x31<br> - rs2 : x3<br> - rd : x27<br> - rs2_h3_val == -33<br> - rs2_h0_val == 1024<br> - rs1_h3_val == 8<br> - rs1_h2_val == -129<br> - rs1_h1_val == -257<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                                               |[0x800007fc]:KDMABB s11, t6, gp<br> [0x80000800]:sd s11, 64(a1)<br>    |
|  20|[0x80003340]<br>0xFFFFFFFFDFFFFFD4|- rs1 : x26<br> - rs2 : x9<br> - rd : x20<br> - rs2_h3_val == -17<br> - rs1_h2_val == 8<br> - rs1_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000830]:KDMABB s4, s10, s1<br> [0x80000834]:sd s4, 80(a1)<br>     |
|  21|[0x80003350]<br>0xFFFFFFFF80000000|- rs1 : x1<br> - rs2 : x15<br> - rd : x5<br> - rs2_h3_val == -9<br> - rs2_h1_val == -5<br> - rs2_h0_val == 8<br> - rs1_h3_val == -2049<br> - rs1_h2_val == -9<br> - rs1_h1_val == 2<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                                          |[0x8000086c]:KDMABB t0, ra, a5<br> [0x80000870]:sd t0, 96(a1)<br>      |
|  22|[0x80003360]<br>0x0000000000000000|- rs1 : x9<br> - rs2 : x10<br> - rd : x0<br> - rs2_h3_val == -5<br> - rs2_h1_val == 2048<br> - rs1_h3_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800008a0]:KDMABB zero, s1, a0<br> [0x800008a4]:sd zero, 112(a1)<br> |
|  23|[0x80003370]<br>0x000000000002FFF8|- rs1 : x4<br> - rs2 : x14<br> - rd : x15<br> - rs2_h3_val == -3<br> - rs2_h1_val == -65<br> - rs1_h3_val == -2<br> - rs1_h1_val == -9<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                            |[0x800008dc]:KDMABB a5, tp, a4<br> [0x800008e0]:sd a5, 128(a1)<br>     |
|  24|[0x80003380]<br>0xFFFFFFFFDB7D2BF7|- rs1 : x28<br> - rs2 : x19<br> - rd : x24<br> - rs2_h3_val == -2<br> - rs2_h0_val == -2049<br> - rs1_h3_val == -32768<br> - rs1_h1_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000914]:KDMABB s8, t3, s3<br> [0x80000918]:sd s8, 144(a1)<br>     |
|  25|[0x80003390]<br>0x000000000005AFC0|- rs1 : x15<br> - rs2 : x25<br> - rd : x12<br> - rs2_h3_val == -32768<br> - rs2_h2_val == 1<br> - rs2_h0_val == -65<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000950]:KDMABB a2, a5, s9<br> [0x80000954]:sd a2, 160(a1)<br>     |
|  26|[0x800033a0]<br>0xFFFFFFFF80000000|- rs1 : x30<br> - rs2 : x20<br> - rd : x17<br> - rs2_h3_val == 8192<br> - rs2_h2_val == -32768<br> - rs2_h0_val == 4<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                         |[0x8000098c]:KDMABB a7, t5, s4<br> [0x80000990]:sd a7, 176(a1)<br>     |
|  27|[0x800033b0]<br>0x0000000004002003|- rs1 : x24<br> - rs2 : x8<br> - rd : x28<br> - rs2_h3_val == 4096<br> - rs2_h2_val == 32767<br> - rs1_h2_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800009c4]:KDMABB t3, s8, fp<br> [0x800009c8]:sd t3, 192(a1)<br>     |
|  28|[0x800033c0]<br>0x0000000008000084|- rs1 : x6<br> - rs2 : x21<br> - rd : x10<br> - rs2_h3_val == 2048<br> - rs2_h2_val == 8<br> - rs1_h2_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000a04]:KDMABB a0, t1, s5<br> [0x80000a08]:sd a0, 0(ra)<br>       |
|  29|[0x800033d0]<br>0xFFFFFFFFAAAB32F0|- rs1 : x3<br> - rs2 : x23<br> - rd : x11<br> - rs2_h3_val == 1024<br> - rs2_h2_val == -21846<br> - rs1_h2_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000a44]:KDMABB a1, gp, s7<br> [0x80000a48]:sd a1, 16(ra)<br>      |
|  30|[0x800033e0]<br>0x000000002001ADAC|- rs1 : x27<br> - rs2 : x2<br> - rd : x3<br> - rs2_h3_val == 512<br> - rs2_h2_val == 64<br> - rs2_h0_val == -129<br> - rs1_h3_val == 0<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                         |[0x80000a78]:KDMABB gp, s11, sp<br> [0x80000a7c]:sd gp, 32(ra)<br>     |
|  31|[0x800033f0]<br>0xFFFFFFFFFFF70780|- rs1 : x5<br> - rs2 : x24<br> - rd : x8<br> - rs2_h3_val == 256<br> - rs2_h0_val == -8193<br> - rs1_h1_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000aa8]:KDMABB fp, t0, s8<br> [0x80000aac]:sd fp, 48(ra)<br>      |
|  32|[0x80003400]<br>0x000000000005FFBF|- rs1 : x0<br> - rs2 : x30<br> - rd : x25<br> - rs2_h3_val == 64<br> - rs2_h1_val == 128<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000ae4]:KDMABB s9, zero, t5<br> [0x80000ae8]:sd s9, 64(ra)<br>    |
|  33|[0x80003410]<br>0xFFFFFFFFFEFF3040|- rs2_h3_val == 32<br> - rs2_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000b1c]:KDMABB t6, t5, t4<br> [0x80000b20]:sd t6, 80(ra)<br>      |
|  34|[0x80003420]<br>0xFFFFFFFFFEFF5440|- rs2_h3_val == 16<br> - rs2_h1_val == -3<br> - rs1_h1_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000b58]:KDMABB t6, t5, t4<br> [0x80000b5c]:sd t6, 96(ra)<br>      |
|  35|[0x80003430]<br>0xFFFFFFFFFEFF5488|- rs2_h3_val == 4<br> - rs2_h2_val == 256<br> - rs2_h1_val == -1025<br> - rs1_h2_val == 32<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000b8c]:KDMABB t6, t5, t4<br> [0x80000b90]:sd t6, 112(ra)<br>     |
|  36|[0x80003440]<br>0xFFFFFFFFFAFED488|- rs2_h3_val == 2<br> - rs1_h3_val == 128<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000bc4]:KDMABB t6, t5, t4<br> [0x80000bc8]:sd t6, 128(ra)<br>     |
|  37|[0x80003450]<br>0xFFFFFFFFFAFEF488|- rs2_h1_val == 1<br> - rs1_h2_val == 21845<br> - rs1_h1_val == -5<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000c00]:KDMABB t6, t5, t4<br> [0x80000c04]:sd t6, 144(ra)<br>     |
|  38|[0x80003460]<br>0xFFFFFFFFFAFB9F2C|- rs2_h0_val == -21846<br> - rs1_h1_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000c3c]:KDMABB t6, t5, t4<br> [0x80000c40]:sd t6, 160(ra)<br>     |
|  39|[0x80003470]<br>0xFFFFFFFFD05149D8|- rs2_h1_val == 32767<br> - rs1_h1_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000c78]:KDMABB t6, t5, t4<br> [0x80000c7c]:sd t6, 176(ra)<br>     |
|  40|[0x80003480]<br>0xFFFFFFFFD04CC9C6|- rs2_h3_val == 1<br> - rs2_h0_val == -16385<br> - rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000cac]:KDMABB t6, t5, t4<br> [0x80000cb0]:sd t6, 192(ra)<br>     |
|  41|[0x80003490]<br>0xFFFFFFFFD03CC9C6|- rs1_h0_val == -32768<br> - rs2_h0_val == 16<br> - rs1_h1_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000ce4]:KDMABB t6, t5, t4<br> [0x80000ce8]:sd t6, 208(ra)<br>     |
|  42|[0x800034a0]<br>0xFFFFFFFFD03ECEC8|- rs2_h2_val == -16385<br> - rs2_h1_val == 256<br> - rs1_h3_val == 16<br> - rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000d20]:KDMABB t6, t5, t4<br> [0x80000d24]:sd t6, 224(ra)<br>     |
|  43|[0x800034c0]<br>0xFFFFFFFFD043CEF4|- rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000d90]:KDMABB t6, t5, t4<br> [0x80000d94]:sd t6, 256(ra)<br>     |
|  44|[0x800034d0]<br>0xFFFFFFFFD0C44EF4|- rs2_h2_val == 2048<br> - rs2_h1_val == -129<br> - rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000dc8]:KDMABB t6, t5, t4<br> [0x80000dcc]:sd t6, 272(ra)<br>     |
|  45|[0x800034e0]<br>0xFFFFFFFFD0C3EEEE|- rs2_h1_val == -33<br> - rs1_h1_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000e04]:KDMABB t6, t5, t4<br> [0x80000e08]:sd t6, 288(ra)<br>     |
|  46|[0x800034f0]<br>0xFFFFFFFFD0C3E4EE|- rs2_h1_val == -9<br> - rs2_h0_val == 128<br> - rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000e38]:KDMABB t6, t5, t4<br> [0x80000e3c]:sd t6, 304(ra)<br>     |
|  47|[0x80003500]<br>0xFFFFFFFFD0C1E4F0|- rs2_h0_val == -3<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000e70]:KDMABB t6, t5, t4<br> [0x80000e74]:sd t6, 320(ra)<br>     |
|  48|[0x80003510]<br>0xFFFFFFFFD8C264F2|- rs2_h2_val == -17<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000eb4]:KDMABB t6, t5, t4<br> [0x80000eb8]:sd t6, 336(ra)<br>     |
|  49|[0x80003520]<br>0xFFFFFFFFD8C2D500|- rs1_h3_val == -4097<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000ef8]:KDMABB t6, t5, t4<br> [0x80000efc]:sd t6, 352(ra)<br>     |
|  50|[0x80003530]<br>0xFFFFFFFFD8C2A4F4|- rs2_h1_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000f2c]:KDMABB t6, t5, t4<br> [0x80000f30]:sd t6, 368(ra)<br>     |
|  51|[0x80003540]<br>0xFFFFFFFFD8C223F4|- rs1_h2_val == -21846<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000f68]:KDMABB t6, t5, t4<br> [0x80000f6c]:sd t6, 384(ra)<br>     |
|  52|[0x80003550]<br>0xFFFFFFFFD8C225C2|- rs2_h1_val == -8193<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000f9c]:KDMABB t6, t5, t4<br> [0x80000fa0]:sd t6, 400(ra)<br>     |
|  53|[0x80003560]<br>0xFFFFFFFFD8C1D5C2|- rs1_h1_val == -32768<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000fd8]:KDMABB t6, t5, t4<br> [0x80000fdc]:sd t6, 416(ra)<br>     |
|  54|[0x80003570]<br>0xFFFFFFFFD8C0D5C2|- rs2_h0_val == 16384<br> - rs1_h2_val == -17<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80001010]:KDMABB t6, t5, t4<br> [0x80001014]:sd t6, 432(ra)<br>     |
|  55|[0x80003580]<br>0xFFFFFFFFD8C0D5C2|- rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x8000103c]:KDMABB t6, t5, t4<br> [0x80001040]:sd t6, 448(ra)<br>     |
|  56|[0x80003590]<br>0xFFFFFFFFD8E0D5C2|- rs2_h1_val == -4097<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001078]:KDMABB t6, t5, t4<br> [0x8000107c]:sd t6, 464(ra)<br>     |
|  57|[0x800035a0]<br>0xFFFFFFFFD8E0BDC2|- rs1_h3_val == 32<br> - rs1_h2_val == 512<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800010b4]:KDMABB t6, t5, t4<br> [0x800010b8]:sd t6, 480(ra)<br>     |
|  58|[0x800035b0]<br>0xFFFFFFFFD8E0ACC2|- rs2_h0_val == -17<br> - rs1_h2_val == -33<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800010e8]:KDMABB t6, t5, t4<br> [0x800010ec]:sd t6, 496(ra)<br>     |
|  59|[0x800035c0]<br>0xFFFFFFFFD8E0AC82|- rs2_h2_val == -257<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x8000111c]:KDMABB t6, t5, t4<br> [0x80001120]:sd t6, 512(ra)<br>     |
|  60|[0x800035d0]<br>0xFFFFFFFFD8E0AC82|- rs1_h1_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001154]:KDMABB t6, t5, t4<br> [0x80001158]:sd t6, 528(ra)<br>     |
|  61|[0x800035e0]<br>0xFFFFFFFFD8E0A842|- rs2_h3_val == -1<br> - rs1_h3_val == -65<br> - rs1_h2_val == 2048<br> - rs1_h1_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001190]:KDMABB t6, t5, t4<br> [0x80001194]:sd t6, 544(ra)<br>     |
|  62|[0x800035f0]<br>0xFFFFFFFFD8E0BC4C|- rs2_h2_val == 4<br> - rs2_h1_val == 4<br> - rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800011c4]:KDMABB t6, t5, t4<br> [0x800011c8]:sd t6, 560(ra)<br>     |
|  63|[0x80003600]<br>0xFFFFFFFFE0E15C4E|- rs2_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001200]:KDMABB t6, t5, t4<br> [0x80001204]:sd t6, 576(ra)<br>     |
|  64|[0x80003610]<br>0xFFFFFFFFE0E95C4E|- rs1_h2_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001230]:KDMABB t6, t5, t4<br> [0x80001234]:sd t6, 592(ra)<br>     |
|  65|[0x80003620]<br>0xFFFFFFFFE0E95B4E|- rs2_h1_val == -1<br> - rs1_h2_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001264]:KDMABB t6, t5, t4<br> [0x80001268]:sd t6, 608(ra)<br>     |
|  66|[0x80003630]<br>0xFFFFFFFFE0E9AB58|- rs2_h1_val == 8192<br> - rs2_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800012a0]:KDMABB t6, t5, t4<br> [0x800012a4]:sd t6, 624(ra)<br>     |
|  67|[0x80003640]<br>0xFFFFFFFFD0E9AB58|- rs2_h0_val == -32768<br> - rs1_h3_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800012d4]:KDMABB t6, t5, t4<br> [0x800012d8]:sd t6, 640(ra)<br>     |
|  68|[0x80003650]<br>0xFFFFFFFFCFE96B58|- rs2_h0_val == 8192<br> - rs1_h3_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x8000130c]:KDMABB t6, t5, t4<br> [0x80001310]:sd t6, 656(ra)<br>     |
|  69|[0x80003660]<br>0xFFFFFFFFCFE9EB58|- rs2_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80001344]:KDMABB t6, t5, t4<br> [0x80001348]:sd t6, 672(ra)<br>     |
|  70|[0x80003670]<br>0xFFFFFFFFCFEA6B58|- rs2_h1_val == 512<br> - rs2_h0_val == 256<br> - rs1_h3_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001378]:KDMABB t6, t5, t4<br> [0x8000137c]:sd t6, 688(ra)<br>     |
|  71|[0x80003680]<br>0xFFFFFFFFCFEA6958|- rs2_h0_val == 64<br> - rs1_h3_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800013ac]:KDMABB t6, t5, t4<br> [0x800013b0]:sd t6, 704(ra)<br>     |
|  72|[0x80003690]<br>0xFFFFFFFFCFEA6938|- rs2_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800013e0]:KDMABB t6, t5, t4<br> [0x800013e4]:sd t6, 720(ra)<br>     |
|  73|[0x800036a0]<br>0xFFFFFFFFCFEA6944|- rs2_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x8000140c]:KDMABB t6, t5, t4<br> [0x80001410]:sd t6, 736(ra)<br>     |
|  74|[0x800036b0]<br>0xFFFFFFFFCFEA698A|- rs2_h1_val == 4096<br> - rs1_h3_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001450]:KDMABB t6, t5, t4<br> [0x80001454]:sd t6, 752(ra)<br>     |
|  75|[0x800036c0]<br>0xFFFFFFFFCFEA6A1A|- rs1_h3_val == -16385<br> - rs1_h1_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x8000148c]:KDMABB t6, t5, t4<br> [0x80001490]:sd t6, 768(ra)<br>     |
|  76|[0x800036d0]<br>0xFFFFFFFFCFEE6A1A|- rs1_h3_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800014c4]:KDMABB t6, t5, t4<br> [0x800014c8]:sd t6, 784(ra)<br>     |
|  77|[0x800036e0]<br>0xFFFFFFFFCFEE6A1A|- rs1_h3_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800014f4]:KDMABB t6, t5, t4<br> [0x800014f8]:sd t6, 800(ra)<br>     |
|  78|[0x800036f0]<br>0xFFFFFFFFCFF06A12|- rs2_h2_val == 512<br> - rs1_h3_val == -9<br> - rs1_h2_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001530]:KDMABB t6, t5, t4<br> [0x80001534]:sd t6, 816(ra)<br>     |
|  79|[0x80003700]<br>0xFFFFFFFFCFF06A0A|- rs1_h3_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001568]:KDMABB t6, t5, t4<br> [0x8000156c]:sd t6, 832(ra)<br>     |
|  80|[0x80003710]<br>0xFFFFFFFFCFF0660A|- rs2_h2_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800015a0]:KDMABB t6, t5, t4<br> [0x800015a4]:sd t6, 848(ra)<br>     |
|  81|[0x80003720]<br>0xFFFFFFFFCFF0A60A|- rs2_h1_val == -21846<br> - rs1_h3_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800015d0]:KDMABB t6, t5, t4<br> [0x800015d4]:sd t6, 864(ra)<br>     |
|  82|[0x80003730]<br>0xFFFFFFFFD000A60A|- rs1_h3_val == 64<br> - rs1_h2_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001604]:KDMABB t6, t5, t4<br> [0x80001608]:sd t6, 880(ra)<br>     |
|  83|[0x80003740]<br>0xFFFFFFFFCFC0A60A|- rs2_h2_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x8000163c]:KDMABB t6, t5, t4<br> [0x80001640]:sd t6, 896(ra)<br>     |
|  84|[0x80003750]<br>0xFFFFFFFFCFC9262C|- rs2_h2_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001678]:KDMABB t6, t5, t4<br> [0x8000167c]:sd t6, 912(ra)<br>     |
|  85|[0x80003760]<br>0xFFFFFFFFCFC9282C|- rs2_h2_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800016ac]:KDMABB t6, t5, t4<br> [0x800016b0]:sd t6, 928(ra)<br>     |
|  86|[0x80003770]<br>0xFFFFFFFFCFD9282C|- rs1_h2_val == 32767<br> - rs1_h1_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800016ec]:KDMABB t6, t5, t4<br> [0x800016f0]:sd t6, 944(ra)<br>     |
|  87|[0x80003780]<br>0xFFFFFFFFCFDF282C|- rs1_h2_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001728]:KDMABB t6, t5, t4<br> [0x8000172c]:sd t6, 960(ra)<br>     |
|  88|[0x80003790]<br>0xFFFFFFFFCFDF283C|- rs1_h2_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x8000175c]:KDMABB t6, t5, t4<br> [0x80001760]:sd t6, 976(ra)<br>     |
|  89|[0x800037a0]<br>0xFFFFFFFFCFDF2B3C|- rs2_h2_val == -9<br> - rs2_h1_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001798]:KDMABB t6, t5, t4<br> [0x8000179c]:sd t6, 992(ra)<br>     |
|  90|[0x800037b0]<br>0xFFFFFFFFCFE12B3C|- rs2_h1_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800017d0]:KDMABB t6, t5, t4<br> [0x800017d4]:sd t6, 1008(ra)<br>    |
|  91|[0x800037c0]<br>0xFFFFFFFFCFDE8094|- rs1_h2_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x8000180c]:KDMABB t6, t5, t4<br> [0x80001810]:sd t6, 1024(ra)<br>    |
|  92|[0x800037d0]<br>0xFFFFFFFFCFDEB894|- rs2_h1_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001848]:KDMABB t6, t5, t4<br> [0x8000184c]:sd t6, 1040(ra)<br>    |
|  93|[0x800037e0]<br>0xFFFFFFFFCFDEBC94|- rs1_h2_val == -1<br> - rs1_h1_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001884]:KDMABB t6, t5, t4<br> [0x80001888]:sd t6, 1056(ra)<br>    |
|  94|[0x800037f0]<br>0xFFFFFFFFCFDEBC8C|- rs1_h1_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800018c0]:KDMABB t6, t5, t4<br> [0x800018c4]:sd t6, 1072(ra)<br>    |
|  95|[0x80003800]<br>0xFFFFFFFFCFDEC696|- rs1_h1_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800018f4]:KDMABB t6, t5, t4<br> [0x800018f8]:sd t6, 1088(ra)<br>    |
|  96|[0x80003810]<br>0xFFFFFFFFCFDAC68E|- rs2_h2_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001930]:KDMABB t6, t5, t4<br> [0x80001934]:sd t6, 1104(ra)<br>    |
|  97|[0x80003820]<br>0xFFFFFFFFCFDB369C|- rs1_h1_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x8000196c]:KDMABB t6, t5, t4<br> [0x80001970]:sd t6, 1120(ra)<br>    |
|  98|[0x80003830]<br>0xFFFFFFFFD0068C48|- rs2_h2_val == 32<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800019a0]:KDMABB t6, t5, t4<br> [0x800019a4]:sd t6, 1136(ra)<br>    |
|  99|[0x80003840]<br>0xFFFFFFFFD0066C48|- rs2_h2_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800019dc]:KDMABB t6, t5, t4<br> [0x800019e0]:sd t6, 1152(ra)<br>    |
| 100|[0x80003850]<br>0xFFFFFFFFD01C6C74|- rs1_h2_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001a14]:KDMABB t6, t5, t4<br> [0x80001a18]:sd t6, 1168(ra)<br>    |
| 101|[0x80003860]<br>0xFFFFFFFFD01EAC74|- rs1_h2_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001a4c]:KDMABB t6, t5, t4<br> [0x80001a50]:sd t6, 1184(ra)<br>    |
| 102|[0x80003870]<br>0xFFFFFFFFD01DAC64|- rs2_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001a88]:KDMABB t6, t5, t4<br> [0x80001a8c]:sd t6, 1200(ra)<br>    |
