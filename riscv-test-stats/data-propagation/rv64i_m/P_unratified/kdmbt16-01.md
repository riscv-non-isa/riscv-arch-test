
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001980')]      |
| SIG_REGION                | [('0x80003210', '0x80003830', '196 dwords')]      |
| COV_LABELS                | kdmbt16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kdmbt16-01.S    |
| Total Number of coverpoints| 420     |
| Total Coverpoints Hit     | 414      |
| Total Signature Updates   | 196      |
| STAT1                     | 94      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 98     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000fb8]:KDMBT16 t6, t5, t4
      [0x80000fbc]:sd t6, 560(t2)
 -- Signature Address: 0x80003560 Data: 0x0001000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : kdmbt16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h3_val == 64
      - rs2_h1_val == 0
      - rs2_h0_val == -16385
      - rs1_h3_val == -3
      - rs1_h2_val == 512




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800011e0]:KDMBT16 t6, t5, t4
      [0x800011e4]:sd t6, 720(t2)
 -- Signature Address: 0x80003600 Data: 0x00000044FFFFFEE0
 -- Redundant Coverpoints hit by the op
      - opcode : kdmbt16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h3_val == -17
      - rs2_h2_val == 16384
      - rs2_h1_val == -9
      - rs2_h0_val == -2
      - rs1_h3_val == -16385
      - rs1_h2_val == -2
      - rs1_h1_val == 0
      - rs1_h0_val == 16




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001280]:KDMBT16 t6, t5, t4
      [0x80001284]:sd t6, 768(t2)
 -- Signature Address: 0x80003630 Data: 0xFFFFFF1200000000
 -- Redundant Coverpoints hit by the op
      - opcode : kdmbt16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h3_val == -17
      - rs2_h2_val == -4097
      - rs2_h1_val == 16
      - rs2_h0_val == 256
      - rs1_h3_val == -9
      - rs1_h0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001900]:KDMBT16 t6, t5, t4
      [0x80001904]:sd t6, 1232(t2)
 -- Signature Address: 0x80003800 Data: 0xFEFF800000000012
 -- Redundant Coverpoints hit by the op
      - opcode : kdmbt16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h3_val == 16384
      - rs2_h2_val == 0
      - rs2_h1_val == 1
      - rs1_h3_val == 8192
      - rs1_h2_val == -513
      - rs1_h1_val == 8






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kdmbt16', 'rs1 : x24', 'rs2 : x24', 'rd : x18', 'rs1 == rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val == rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == -16385', 'rs2_h2_val == 64', 'rs2_h0_val == -129', 'rs1_h3_val == -16385', 'rs1_h2_val == 64', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x800003d0]:KDMBT16 s2, s8, s8
	-[0x800003d4]:sd s2, 0(ra)
Current Store : [0x800003d8] : sd s8, 8(ra) -- Store: [0x80003218]:0xBFFF00400005FF7F




Last Coverpoint : ['rs1 : x23', 'rs2 : x23', 'rd : x23', 'rs1 == rs2 == rd', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 8', 'rs2_h1_val == 2', 'rs2_h0_val == 128', 'rs1_h3_val == 8', 'rs1_h1_val == 2', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x8000040c]:KDMBT16 s7, s7, s7
	-[0x80000410]:sd s7, 16(ra)
Current Store : [0x80000414] : sd s7, 24(ra) -- Store: [0x80003228]:0xFFFFFFA000000200




Last Coverpoint : ['rs1 : x12', 'rs2 : x20', 'rd : x7', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == 512', 'rs2_h2_val == -513', 'rs2_h1_val == 4096', 'rs2_h0_val == -1025', 'rs1_h3_val == -8193', 'rs1_h2_val == -2049']
Last Code Sequence : 
	-[0x80000448]:KDMBT16 t2, a2, s4
	-[0x8000044c]:sd t2, 32(ra)
Current Store : [0x80000450] : sd a2, 40(ra) -- Store: [0x80003238]:0xDFFFF7FF00060005




Last Coverpoint : ['rs1 : x20', 'rs2 : x21', 'rd : x20', 'rs1 == rd != rs2', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h1_val == -32768', 'rs2_h0_val == 1', 'rs1_h3_val == 64', 'rs1_h2_val == 2', 'rs1_h1_val == -17']
Last Code Sequence : 
	-[0x8000047c]:KDMBT16 s4, s4, s5
	-[0x80000480]:sd s4, 48(ra)
Current Store : [0x80000484] : sd s4, 56(ra) -- Store: [0x80003248]:0xFFFF000000080000




Last Coverpoint : ['rs1 : x21', 'rs2 : x0', 'rd : x0', 'rs2 == rd != rs1', 'rs2_h3_val == 0', 'rs2_h2_val == 0', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h3_val == -17', 'rs1_h2_val == 1024', 'rs1_h1_val == -5', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x800004b4]:KDMBT16 zero, s5, zero
	-[0x800004b8]:sd zero, 64(ra)
Current Store : [0x800004bc] : sd s5, 72(ra) -- Store: [0x80003258]:0xFFEF0400FFFB1000




Last Coverpoint : ['rs1 : x28', 'rs2 : x31', 'rd : x21', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs2_h3_val == -9', 'rs2_h1_val == -1', 'rs2_h0_val == 16384', 'rs1_h2_val == -2', 'rs1_h1_val == -1', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x800004e4]:KDMBT16 s5, t3, t6
	-[0x800004e8]:sd s5, 80(ra)
Current Store : [0x800004ec] : sd t3, 88(ra) -- Store: [0x80003268]:0x0009FFFEFFFFFFF7




Last Coverpoint : ['rs1 : x8', 'rs2 : x30', 'rd : x24', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs2_h1_val == -513', 'rs2_h0_val == 4096', 'rs1_h2_val == -8193', 'rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x80000524]:KDMBT16 s8, fp, t5
	-[0x80000528]:sd s8, 96(ra)
Current Store : [0x8000052c] : sd fp, 104(ra) -- Store: [0x80003278]:0xFFFADFFF0400FFF9




Last Coverpoint : ['rs1 : x2', 'rs2 : x8', 'rd : x29', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs2_h2_val == 16384', 'rs2_h1_val == 16', 'rs2_h0_val == -5', 'rs1_h3_val == -1', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000554]:KDMBT16 t4, sp, fp
	-[0x80000558]:sd t4, 112(ra)
Current Store : [0x8000055c] : sd sp, 120(ra) -- Store: [0x80003288]:0xFFFFC000FFFCFFFB




Last Coverpoint : ['rs1 : x11', 'rs2 : x19', 'rd : x28', 'rs2_h3_val == -21846', 'rs2_h2_val == -9', 'rs2_h1_val == -16385', 'rs2_h0_val == 64', 'rs1_h3_val == 16384', 'rs1_h2_val == 128', 'rs1_h1_val == -513', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000598]:KDMBT16 t3, a1, s3
	-[0x8000059c]:sd t3, 128(ra)
Current Store : [0x800005a0] : sd a1, 136(ra) -- Store: [0x80003298]:0x40000080FDFF0002




Last Coverpoint : ['rs1 : x7', 'rs2 : x9', 'rd : x5', 'rs2_h3_val == 21845', 'rs2_h2_val == -21846', 'rs2_h1_val == -129', 'rs2_h0_val == -257', 'rs1_h3_val == 256', 'rs1_h2_val == 512', 'rs1_h1_val == 16384', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x800005cc]:KDMBT16 t0, t2, s1
	-[0x800005d0]:sd t0, 144(ra)
Current Store : [0x800005d4] : sd t2, 152(ra) -- Store: [0x800032a8]:0x0100020040000001




Last Coverpoint : ['rs1 : x27', 'rs2 : x25', 'rd : x9', 'rs2_h3_val == 32767', 'rs2_h2_val == -5', 'rs2_h1_val == -8193', 'rs1_h2_val == 4']
Last Code Sequence : 
	-[0x8000060c]:KDMBT16 s1, s11, s9
	-[0x80000610]:sd s1, 160(ra)
Current Store : [0x80000614] : sd s11, 168(ra) -- Store: [0x800032b8]:0xFFF8000400023FFF




Last Coverpoint : ['rs1 : x6', 'rs2 : x7', 'rd : x25', 'rs2_h3_val == -8193', 'rs2_h2_val == 512', 'rs2_h0_val == 2', 'rs1_h3_val == -9', 'rs1_h2_val == -17', 'rs1_h1_val == 1', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000650]:KDMBT16 s9, t1, t2
	-[0x80000654]:sd s9, 176(ra)
Current Store : [0x80000658] : sd t1, 184(ra) -- Store: [0x800032c8]:0xFFF7FFEF00017FFF




Last Coverpoint : ['rs1 : x30', 'rs2 : x28', 'rd : x6', 'rs2_h3_val == -2049', 'rs2_h0_val == -2049', 'rs1_h3_val == -513', 'rs1_h2_val == -21846', 'rs1_h1_val == -2']
Last Code Sequence : 
	-[0x8000068c]:KDMBT16 t1, t5, t3
	-[0x80000690]:sd t1, 192(ra)
Current Store : [0x80000694] : sd t5, 200(ra) -- Store: [0x800032d8]:0xFDFFAAAAFFFEFFFC




Last Coverpoint : ['rs1 : x16', 'rs2 : x26', 'rd : x15', 'rs2_h3_val == -1025', 'rs1_h3_val == -257', 'rs1_h2_val == -257', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x800006c8]:KDMBT16 a5, a6, s10
	-[0x800006cc]:sd a5, 208(ra)
Current Store : [0x800006d0] : sd a6, 216(ra) -- Store: [0x800032e8]:0xFEFFFEFFFFFE0010




Last Coverpoint : ['rs1 : x4', 'rs2 : x29', 'rd : x31', 'rs2_h3_val == -513', 'rs2_h1_val == -9', 'rs2_h0_val == -513', 'rs1_h3_val == -5', 'rs1_h2_val == 256', 'rs1_h1_val == -9', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000704]:KDMBT16 t6, tp, t4
	-[0x80000708]:sd t6, 224(ra)
Current Store : [0x8000070c] : sd tp, 232(ra) -- Store: [0x800032f8]:0xFFFB0100FFF70040




Last Coverpoint : ['rs1 : x9', 'rs2 : x2', 'rd : x14', 'rs2_h3_val == -257', 'rs1_h3_val == 8192', 'rs1_h2_val == 16', 'rs1_h1_val == 21845', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000744]:KDMBT16 a4, s1, sp
	-[0x80000748]:sd a4, 240(ra)
Current Store : [0x8000074c] : sd s1, 248(ra) -- Store: [0x80003308]:0x2000001055550200




Last Coverpoint : ['rs1 : x29', 'rs2 : x27', 'rd : x8', 'rs2_h3_val == -129', 'rs2_h0_val == 32767', 'rs1_h3_val == -32768', 'rs1_h2_val == 32767', 'rs1_h1_val == -65']
Last Code Sequence : 
	-[0x80000780]:KDMBT16 fp, t4, s11
	-[0x80000784]:sd fp, 256(ra)
Current Store : [0x80000788] : sd t4, 264(ra) -- Store: [0x80003318]:0x80007FFFFFBFFFF9




Last Coverpoint : ['rs1 : x5', 'rs2 : x10', 'rd : x3', 'rs2_h3_val == -65', 'rs2_h0_val == 2048']
Last Code Sequence : 
	-[0x800007b8]:KDMBT16 gp, t0, a0
	-[0x800007bc]:sd gp, 272(ra)
Current Store : [0x800007c0] : sd t0, 280(ra) -- Store: [0x80003328]:0xFFFB3FFFFFFCFFF9




Last Coverpoint : ['rs1 : x13', 'rs2 : x4', 'rd : x22', 'rs2_h3_val == -33', 'rs2_h1_val == 32767', 'rs2_h0_val == -16385', 'rs1_h3_val == 512', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x800007fc]:KDMBT16 s6, a3, tp
	-[0x80000800]:sd s6, 0(t2)
Current Store : [0x80000804] : sd a3, 8(t2) -- Store: [0x80003338]:0x0200AAAA00080001




Last Coverpoint : ['rs1 : x19', 'rs2 : x18', 'rd : x17', 'rs2_h3_val == -17', 'rs2_h2_val == -3', 'rs2_h0_val == -9', 'rs1_h3_val == 21845', 'rs1_h1_val == -257', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000838]:KDMBT16 a7, s3, s2
	-[0x8000083c]:sd a7, 16(t2)
Current Store : [0x80000840] : sd s3, 24(t2) -- Store: [0x80003348]:0x5555DFFFFEFFFEFF




Last Coverpoint : ['rs1 : x18', 'rs2 : x3', 'rd : x16', 'rs2_h3_val == -5', 'rs2_h2_val == -4097', 'rs2_h1_val == 4']
Last Code Sequence : 
	-[0x80000874]:KDMBT16 a6, s2, gp
	-[0x80000878]:sd a6, 32(t2)
Current Store : [0x8000087c] : sd s2, 40(t2) -- Store: [0x80003358]:0xFFFC0009FFFF0003




Last Coverpoint : ['rs1 : x1', 'rs2 : x22', 'rd : x13', 'rs2_h3_val == -3']
Last Code Sequence : 
	-[0x800008a4]:KDMBT16 a3, ra, s6
	-[0x800008a8]:sd a3, 48(t2)
Current Store : [0x800008ac] : sd ra, 56(t2) -- Store: [0x80003368]:0x00033FFFFFFBFFF7




Last Coverpoint : ['rs1 : x17', 'rs2 : x14', 'rd : x10', 'rs2_h3_val == -2', 'rs2_h1_val == 8192', 'rs2_h0_val == -2', 'rs1_h2_val == 8192', 'rs1_h1_val == -32768', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x800008dc]:KDMBT16 a0, a7, a4
	-[0x800008e0]:sd a0, 64(t2)
Current Store : [0x800008e4] : sd a7, 72(t2) -- Store: [0x80003378]:0xFDFF200080002000




Last Coverpoint : ['rs1 : x10', 'rs2 : x1', 'rd : x4', 'rs2_h3_val == -32768', 'rs2_h2_val == 16', 'rs2_h0_val == 512', 'rs1_h3_val == 16', 'rs1_h2_val == -9', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000918]:KDMBT16 tp, a0, ra
	-[0x8000091c]:sd tp, 80(t2)
Current Store : [0x80000920] : sd a0, 88(t2) -- Store: [0x80003388]:0x0010FFF70003DFFF




Last Coverpoint : ['rs1 : x3', 'rs2 : x15', 'rd : x11', 'rs2_h3_val == 16384', 'rs2_h2_val == -65', 'rs1_h3_val == 4096', 'rs1_h2_val == -32768', 'rs1_h1_val == 32767', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000950]:KDMBT16 a1, gp, a5
	-[0x80000954]:sd a1, 96(t2)
Current Store : [0x80000958] : sd gp, 104(t2) -- Store: [0x80003398]:0x100080007FFF0400




Last Coverpoint : ['rs1 : x0', 'rs2 : x16', 'rd : x1', 'rs2_h3_val == 8192', 'rs1_h3_val == 0', 'rs1_h2_val == 0', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000984]:KDMBT16 ra, zero, a6
	-[0x80000988]:sd ra, 112(t2)
Current Store : [0x8000098c] : sd zero, 120(t2) -- Store: [0x800033a8]:0x0000000000000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x6', 'rd : x19', 'rs2_h3_val == 4096', 'rs2_h1_val == 128', 'rs1_h3_val == 1024', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x800009bc]:KDMBT16 s3, a4, t1
	-[0x800009c0]:sd s3, 128(t2)
Current Store : [0x800009c4] : sd a4, 136(t2) -- Store: [0x800033b8]:0x0400000601000200




Last Coverpoint : ['rs1 : x31', 'rs2 : x12', 'rd : x2', 'rs2_h3_val == 2048', 'rs2_h1_val == -3', 'rs1_h3_val == -21846', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x800009f8]:KDMBT16 sp, t6, a2
	-[0x800009fc]:sd sp, 144(t2)
Current Store : [0x80000a00] : sd t6, 152(t2) -- Store: [0x800033c8]:0xAAAA0400FFF9BFFF




Last Coverpoint : ['rs1 : x25', 'rs2 : x5', 'rd : x27', 'rs2_h3_val == 1024', 'rs2_h1_val == -1025', 'rs2_h0_val == 1024', 'rs1_h3_val == 4', 'rs1_h2_val == -4097', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000a30]:KDMBT16 s11, s9, t0
	-[0x80000a34]:sd s11, 160(t2)
Current Store : [0x80000a38] : sd s9, 168(t2) -- Store: [0x800033d8]:0x0004EFFF00014000




Last Coverpoint : ['rs1 : x15', 'rs2 : x17', 'rd : x26', 'rs2_h3_val == 256', 'rs2_h2_val == -1', 'rs2_h1_val == 256', 'rs1_h2_val == -33', 'rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x80000a68]:KDMBT16 s10, a5, a7
	-[0x80000a6c]:sd s10, 176(t2)
Current Store : [0x80000a70] : sd a5, 184(t2) -- Store: [0x800033e8]:0x2000FFDF08000007




Last Coverpoint : ['rs1 : x26', 'rs2 : x11', 'rd : x30', 'rs2_h3_val == 128', 'rs2_h2_val == 256', 'rs1_h2_val == -1025', 'rs1_h1_val == -4097', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000a9c]:KDMBT16 t5, s10, a1
	-[0x80000aa0]:sd t5, 192(t2)
Current Store : [0x80000aa4] : sd s10, 200(t2) -- Store: [0x800033f8]:0x0007FBFFEFFF0008




Last Coverpoint : ['rs1 : x22', 'rs2 : x13', 'rd : x12', 'rs2_h3_val == 64', 'rs1_h3_val == -129', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000ad8]:KDMBT16 a2, s6, a3
	-[0x80000adc]:sd a2, 208(t2)
Current Store : [0x80000ae0] : sd s6, 216(t2) -- Store: [0x80003408]:0xFF7FFEFF0007FFEF




Last Coverpoint : ['rs2_h3_val == 32', 'rs2_h1_val == 2048', 'rs2_h0_val == -3', 'rs1_h1_val == 4']
Last Code Sequence : 
	-[0x80000b14]:KDMBT16 t6, t5, t4
	-[0x80000b18]:sd t6, 224(t2)
Current Store : [0x80000b1c] : sd t5, 232(t2) -- Store: [0x80003418]:0xFFF73FFF00040008




Last Coverpoint : ['rs2_h3_val == -4097', 'rs2_h2_val == 1', 'rs2_h1_val == 8', 'rs2_h0_val == -17', 'rs1_h1_val == -3']
Last Code Sequence : 
	-[0x80000b50]:KDMBT16 t6, t5, t4
	-[0x80000b54]:sd t6, 240(t2)
Current Store : [0x80000b58] : sd t5, 248(t2) -- Store: [0x80003428]:0xFFF8FFFAFFFD0001




Last Coverpoint : ['rs1_h0_val == -32768', 'rs2_h0_val == 32', 'rs1_h3_val == 128', 'rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x80000b88]:KDMBT16 t6, t5, t4
	-[0x80000b8c]:sd t6, 256(t2)
Current Store : [0x80000b90] : sd t5, 264(t2) -- Store: [0x80003438]:0x0080FFF620008000




Last Coverpoint : ['rs2_h2_val == -32768', 'rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x80000bc8]:KDMBT16 t6, t5, t4
	-[0x80000bcc]:sd t6, 272(t2)
Current Store : [0x80000bd0] : sd t5, 280(t2) -- Store: [0x80003448]:0xAAAA00801000FF7F




Last Coverpoint : ['rs2_h2_val == -2049', 'rs2_h1_val == 32', 'rs1_h1_val == 512']
Last Code Sequence : 
	-[0x80000bfc]:KDMBT16 t6, t5, t4
	-[0x80000c00]:sd t6, 288(t2)
Current Store : [0x80000c04] : sd t5, 296(t2) -- Store: [0x80003458]:0x000400400200FFF7




Last Coverpoint : ['rs2_h3_val == -1', 'rs2_h2_val == 4', 'rs1_h1_val == 128', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000c3c]:KDMBT16 t6, t5, t4
	-[0x80000c40]:sd t6, 304(t2)
Current Store : [0x80000c44] : sd t5, 312(t2) -- Store: [0x80003468]:0x0400000000805555




Last Coverpoint : ['rs2_h3_val == 16', 'rs1_h3_val == -3', 'rs1_h1_val == 64']
Last Code Sequence : 
	-[0x80000c70]:KDMBT16 t6, t5, t4
	-[0x80000c74]:sd t6, 320(t2)
Current Store : [0x80000c78] : sd t5, 328(t2) -- Store: [0x80003478]:0xFFFD008000400040




Last Coverpoint : ['rs2_h0_val == 256', 'rs1_h2_val == -16385', 'rs1_h1_val == 16', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000ca8]:KDMBT16 t6, t5, t4
	-[0x80000cac]:sd t6, 336(t2)
Current Store : [0x80000cb0] : sd t5, 344(t2) -- Store: [0x80003488]:0x0009BFFF0010AAAA




Last Coverpoint : ['rs2_h3_val == 4', 'rs2_h2_val == -129', 'rs2_h1_val == 21845', 'rs2_h0_val == 8', 'rs1_h3_val == -4097']
Last Code Sequence : 
	-[0x80000ce4]:KDMBT16 t6, t5, t4
	-[0x80000ce8]:sd t6, 352(t2)
Current Store : [0x80000cec] : sd t5, 360(t2) -- Store: [0x80003498]:0xEFFFC0000000FFFC




Last Coverpoint : ['rs2_h0_val == -1', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80000d18]:KDMBT16 t6, t5, t4
	-[0x80000d1c]:sd t6, 368(t2)
Current Store : [0x80000d20] : sd t5, 376(t2) -- Store: [0x800034a8]:0x0006FFFA0080EFFF




Last Coverpoint : ['rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000d4c]:KDMBT16 t6, t5, t4
	-[0x80000d50]:sd t6, 384(t2)
Current Store : [0x80000d54] : sd t5, 392(t2) -- Store: [0x800034b8]:0x0080FFF60800F7FF




Last Coverpoint : ['rs2_h1_val == 16384', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000d80]:KDMBT16 t6, t5, t4
	-[0x80000d84]:sd t6, 400(t2)
Current Store : [0x80000d88] : sd t5, 408(t2) -- Store: [0x800034c8]:0xFFF70006FFF8FBFF




Last Coverpoint : ['rs2_h0_val == -32768', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000db8]:KDMBT16 t6, t5, t4
	-[0x80000dbc]:sd t6, 416(t2)
Current Store : [0x80000dc0] : sd t5, 424(t2) -- Store: [0x800034d8]:0x00060200FFFDFDFF




Last Coverpoint : ['rs1_h2_val == 8', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000df0]:KDMBT16 t6, t5, t4
	-[0x80000df4]:sd t6, 432(t2)
Current Store : [0x80000df8] : sd t5, 440(t2) -- Store: [0x800034e8]:0xFFF900080005FFBF




Last Coverpoint : ['rs2_h0_val == -4097', 'rs1_h3_val == -1025', 'rs1_h2_val == -3', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000e2c]:KDMBT16 t6, t5, t4
	-[0x80000e30]:sd t6, 448(t2)
Current Store : [0x80000e34] : sd t5, 456(t2) -- Store: [0x800034f8]:0xFBFFFFFD5555FFDF




Last Coverpoint : ['rs2_h2_val == -2', 'rs2_h0_val == 16', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000e60]:KDMBT16 t6, t5, t4
	-[0x80000e64]:sd t6, 464(t2)
Current Store : [0x80000e68] : sd t5, 472(t2) -- Store: [0x80003508]:0xC000FFDF0007FFFD




Last Coverpoint : ['rs2_h2_val == -33', 'rs1_h2_val == -129', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000e9c]:KDMBT16 t6, t5, t4
	-[0x80000ea0]:sd t6, 480(t2)
Current Store : [0x80000ea4] : sd t5, 488(t2) -- Store: [0x80003518]:0x8000FF7FFDFFFFFE




Last Coverpoint : ['rs2_h1_val == 1', 'rs1_h3_val == 2', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000ed4]:KDMBT16 t6, t5, t4
	-[0x80000ed8]:sd t6, 496(t2)
Current Store : [0x80000edc] : sd t5, 504(t2) -- Store: [0x80003528]:0x0002FF7FFFFD0800




Last Coverpoint : ['rs2_h3_val == 1', 'rs2_h2_val == 2', 'rs1_h2_val == 32', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000f10]:KDMBT16 t6, t5, t4
	-[0x80000f14]:sd t6, 512(t2)
Current Store : [0x80000f18] : sd t5, 520(t2) -- Store: [0x80003538]:0x80000020FFF80100




Last Coverpoint : ['rs2_h2_val == -17', 'rs1_h3_val == -65']
Last Code Sequence : 
	-[0x80000f4c]:KDMBT16 t6, t5, t4
	-[0x80000f50]:sd t6, 528(t2)
Current Store : [0x80000f54] : sd t5, 536(t2) -- Store: [0x80003548]:0xFFBFFFF87FFF0080




Last Coverpoint : ['rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80000f84]:KDMBT16 t6, t5, t4
	-[0x80000f88]:sd t6, 544(t2)
Current Store : [0x80000f8c] : sd t5, 552(t2) -- Store: [0x80003558]:0x2000FBFFFFF80020




Last Coverpoint : ['opcode : kdmbt16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == 64', 'rs2_h1_val == 0', 'rs2_h0_val == -16385', 'rs1_h3_val == -3', 'rs1_h2_val == 512']
Last Code Sequence : 
	-[0x80000fb8]:KDMBT16 t6, t5, t4
	-[0x80000fbc]:sd t6, 560(t2)
Current Store : [0x80000fc0] : sd t5, 568(t2) -- Store: [0x80003568]:0xFFFD02000007FFFC




Last Coverpoint : ['rs2_h0_val == -21846', 'rs1_h3_val == -33']
Last Code Sequence : 
	-[0x80000ff0]:KDMBT16 t6, t5, t4
	-[0x80000ff4]:sd t6, 576(t2)
Current Store : [0x80000ff8] : sd t5, 584(t2) -- Store: [0x80003578]:0xFFDFFFEFFFF94000




Last Coverpoint : ['rs2_h1_val == -2049', 'rs2_h0_val == 21845']
Last Code Sequence : 
	-[0x8000102c]:KDMBT16 t6, t5, t4
	-[0x80001030]:sd t6, 592(t2)
Current Store : [0x80001034] : sd t5, 600(t2) -- Store: [0x80003588]:0x1000FFF80007FDFF




Last Coverpoint : ['rs2_h2_val == -1025', 'rs2_h1_val == -257', 'rs2_h0_val == -8193', 'rs1_h3_val == 2048']
Last Code Sequence : 
	-[0x80001064]:KDMBT16 t6, t5, t4
	-[0x80001068]:sd t6, 608(t2)
Current Store : [0x8000106c] : sd t5, 616(t2) -- Store: [0x80003598]:0x080000000003FFFA




Last Coverpoint : ['rs2_h2_val == -8193', 'rs2_h1_val == -65', 'rs2_h0_val == -65', 'rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x800010a0]:KDMBT16 t6, t5, t4
	-[0x800010a4]:sd t6, 624(t2)
Current Store : [0x800010a8] : sd t5, 632(t2) -- Store: [0x800035a8]:0x0200C000FBFFFFF9




Last Coverpoint : ['rs2_h0_val == -33', 'rs1_h2_val == -5']
Last Code Sequence : 
	-[0x800010d0]:KDMBT16 t6, t5, t4
	-[0x800010d4]:sd t6, 640(t2)
Current Store : [0x800010d8] : sd t5, 648(t2) -- Store: [0x800035b8]:0xFBFFFFFBFFEF0100




Last Coverpoint : ['rs2_h1_val == -2', 'rs2_h0_val == 8192', 'rs1_h2_val == 2048']
Last Code Sequence : 
	-[0x80001104]:KDMBT16 t6, t5, t4
	-[0x80001108]:sd t6, 656(t2)
Current Store : [0x8000110c] : sd t5, 664(t2) -- Store: [0x800035c8]:0xFFF808000200FFBF




Last Coverpoint : ['rs2_h0_val == 4']
Last Code Sequence : 
	-[0x80001140]:KDMBT16 t6, t5, t4
	-[0x80001144]:sd t6, 672(t2)
Current Store : [0x80001148] : sd t5, 680(t2) -- Store: [0x800035d8]:0x00040009FDFF0002




Last Coverpoint : ['rs2_h2_val == 8', 'rs2_h1_val == -4097']
Last Code Sequence : 
	-[0x80001178]:KDMBT16 t6, t5, t4
	-[0x8000117c]:sd t6, 688(t2)
Current Store : [0x80001180] : sd t5, 696(t2) -- Store: [0x800035e8]:0x000800053FFF7FFF




Last Coverpoint : ['rs1_h3_val == 32767']
Last Code Sequence : 
	-[0x800011ac]:KDMBT16 t6, t5, t4
	-[0x800011b0]:sd t6, 704(t2)
Current Store : [0x800011b4] : sd t5, 712(t2) -- Store: [0x800035f8]:0x7FFFBFFFC0000005




Last Coverpoint : ['opcode : kdmbt16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == -17', 'rs2_h2_val == 16384', 'rs2_h1_val == -9', 'rs2_h0_val == -2', 'rs1_h3_val == -16385', 'rs1_h2_val == -2', 'rs1_h1_val == 0', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x800011e0]:KDMBT16 t6, t5, t4
	-[0x800011e4]:sd t6, 720(t2)
Current Store : [0x800011e8] : sd t5, 728(t2) -- Store: [0x80003608]:0xBFFFFFFE00000010




Last Coverpoint : ['rs1_h3_val == -2049']
Last Code Sequence : 
	-[0x8000121c]:KDMBT16 t6, t5, t4
	-[0x80001220]:sd t6, 736(t2)
Current Store : [0x80001224] : sd t5, 744(t2) -- Store: [0x80003618]:0xF7FF00047FFF0100




Last Coverpoint : ['rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80001248]:KDMBT16 t6, t5, t4
	-[0x8000124c]:sd t6, 752(t2)
Current Store : [0x80001250] : sd t5, 760(t2) -- Store: [0x80003628]:0x0008008000400004




Last Coverpoint : ['opcode : kdmbt16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h3_val == -17', 'rs2_h2_val == -4097', 'rs2_h1_val == 16', 'rs2_h0_val == 256', 'rs1_h3_val == -9', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80001280]:KDMBT16 t6, t5, t4
	-[0x80001284]:sd t6, 768(t2)
Current Store : [0x80001288] : sd t5, 776(t2) -- Store: [0x80003638]:0xFFF70007FFF80000




Last Coverpoint : ['rs1_h0_val == -1']
Last Code Sequence : 
	-[0x800012c0]:KDMBT16 t6, t5, t4
	-[0x800012c4]:sd t6, 784(t2)
Current Store : [0x800012c8] : sd t5, 792(t2) -- Store: [0x80003648]:0x3FFFFEFF2000FFFF




Last Coverpoint : ['rs2_h3_val == 2']
Last Code Sequence : 
	-[0x800012f4]:KDMBT16 t6, t5, t4
	-[0x800012f8]:sd t6, 800(t2)
Current Store : [0x800012fc] : sd t5, 808(t2) -- Store: [0x80003658]:0x01008000FFFCFFF7




Last Coverpoint : ['rs1_h3_val == -2']
Last Code Sequence : 
	-[0x80001328]:KDMBT16 t6, t5, t4
	-[0x8000132c]:sd t6, 816(t2)
Current Store : [0x80001330] : sd t5, 824(t2) -- Store: [0x80003668]:0xFFFEFFFD4000FFF8




Last Coverpoint : ['rs2_h2_val == 21845']
Last Code Sequence : 
	-[0x80001364]:KDMBT16 t6, t5, t4
	-[0x80001368]:sd t6, 832(t2)
Current Store : [0x8000136c] : sd t5, 840(t2) -- Store: [0x80003678]:0x0000FFF9FEFF0800




Last Coverpoint : ['rs2_h2_val == -16385', 'rs1_h1_val == -21846']
Last Code Sequence : 
	-[0x800013a8]:KDMBT16 t6, t5, t4
	-[0x800013ac]:sd t6, 848(t2)
Current Store : [0x800013b0] : sd t5, 856(t2) -- Store: [0x80003688]:0x3FFF0200AAAAF7FF




Last Coverpoint : ['rs1_h3_val == 32']
Last Code Sequence : 
	-[0x800013d8]:KDMBT16 t6, t5, t4
	-[0x800013dc]:sd t6, 864(t2)
Current Store : [0x800013e0] : sd t5, 872(t2) -- Store: [0x80003698]:0x0020FEFF04000000




Last Coverpoint : ['rs2_h2_val == -257']
Last Code Sequence : 
	-[0x8000141c]:KDMBT16 t6, t5, t4
	-[0x80001420]:sd t6, 880(t2)
Current Store : [0x80001424] : sd t5, 888(t2) -- Store: [0x800036a8]:0xF7FF080055550008




Last Coverpoint : ['rs1_h3_val == 1']
Last Code Sequence : 
	-[0x80001450]:KDMBT16 t6, t5, t4
	-[0x80001454]:sd t6, 896(t2)
Current Store : [0x80001458] : sd t5, 904(t2) -- Store: [0x800036b8]:0x0001FFFD00007FFF




Last Coverpoint : ['rs1_h2_val == 21845']
Last Code Sequence : 
	-[0x80001484]:KDMBT16 t6, t5, t4
	-[0x80001488]:sd t6, 912(t2)
Current Store : [0x8000148c] : sd t5, 920(t2) -- Store: [0x800036c8]:0x8000555500021000




Last Coverpoint : ['rs2_h2_val == 8192']
Last Code Sequence : 
	-[0x800014b4]:KDMBT16 t6, t5, t4
	-[0x800014b8]:sd t6, 928(t2)
Current Store : [0x800014bc] : sd t5, 936(t2) -- Store: [0x800036d8]:0x00080003FDFF0009




Last Coverpoint : ['rs2_h2_val == 4096']
Last Code Sequence : 
	-[0x800014ec]:KDMBT16 t6, t5, t4
	-[0x800014f0]:sd t6, 944(t2)
Current Store : [0x800014f4] : sd t5, 952(t2) -- Store: [0x800036e8]:0xFFF8004000044000




Last Coverpoint : ['rs2_h2_val == 2048']
Last Code Sequence : 
	-[0x80001530]:KDMBT16 t6, t5, t4
	-[0x80001534]:sd t6, 960(t2)
Current Store : [0x80001538] : sd t5, 968(t2) -- Store: [0x800036f8]:0x0100200000057FFF




Last Coverpoint : ['rs1_h2_val == -513']
Last Code Sequence : 
	-[0x8000156c]:KDMBT16 t6, t5, t4
	-[0x80001570]:sd t6, 976(t2)
Current Store : [0x80001574] : sd t5, 984(t2) -- Store: [0x80003708]:0x0020FDFFFEFF0010




Last Coverpoint : ['rs2_h2_val == 128', 'rs2_h1_val == -17']
Last Code Sequence : 
	-[0x800015a4]:KDMBT16 t6, t5, t4
	-[0x800015a8]:sd t6, 992(t2)
Current Store : [0x800015ac] : sd t5, 1000(t2) -- Store: [0x80003718]:0xFFDFFFF9FFFD5555




Last Coverpoint : ['rs2_h1_val == -5', 'rs1_h2_val == -65', 'rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x800015d4]:KDMBT16 t6, t5, t4
	-[0x800015d8]:sd t6, 1008(t2)
Current Store : [0x800015dc] : sd t5, 1016(t2) -- Store: [0x80003728]:0x0007FFBFDFFFFFEF




Last Coverpoint : ['rs2_h2_val == 32']
Last Code Sequence : 
	-[0x80001608]:KDMBT16 t6, t5, t4
	-[0x8000160c]:sd t6, 1024(t2)
Current Store : [0x80001610] : sd t5, 1032(t2) -- Store: [0x80003738]:0xFEFF08000000FFFF




Last Coverpoint : ['rs1_h2_val == 16384']
Last Code Sequence : 
	-[0x80001640]:KDMBT16 t6, t5, t4
	-[0x80001644]:sd t6, 1040(t2)
Current Store : [0x80001648] : sd t5, 1048(t2) -- Store: [0x80003748]:0x000640000009FFDF




Last Coverpoint : ['rs2_h1_val == -21846']
Last Code Sequence : 
	-[0x8000168c]:KDMBT16 t6, t5, t4
	-[0x80001690]:sd t6, 1056(t2)
Current Store : [0x80001694] : sd t5, 1064(t2) -- Store: [0x80003758]:0xF7FF3FFFAAAAFFFB




Last Coverpoint : ['rs1_h2_val == 4096']
Last Code Sequence : 
	-[0x800016d0]:KDMBT16 t6, t5, t4
	-[0x800016d4]:sd t6, 1072(t2)
Current Store : [0x800016d8] : sd t5, 1080(t2) -- Store: [0x80003768]:0xC00010005555FFF8




Last Coverpoint : ['rs2_h1_val == -33', 'rs1_h2_val == 1', 'rs1_h1_val == 32']
Last Code Sequence : 
	-[0x8000170c]:KDMBT16 t6, t5, t4
	-[0x80001710]:sd t6, 1088(t2)
Current Store : [0x80001714] : sd t5, 1096(t2) -- Store: [0x80003778]:0x000600010020FFFF




Last Coverpoint : ['rs2_h2_val == 32767']
Last Code Sequence : 
	-[0x8000173c]:KDMBT16 t6, t5, t4
	-[0x80001740]:sd t6, 1104(t2)
Current Store : [0x80001744] : sd t5, 1112(t2) -- Store: [0x80003788]:0xFFFD7FFFFFFD0001




Last Coverpoint : ['rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x80001780]:KDMBT16 t6, t5, t4
	-[0x80001784]:sd t6, 1120(t2)
Current Store : [0x80001788] : sd t5, 1128(t2) -- Store: [0x80003798]:0x20000009BFFFF7FF




Last Coverpoint : ['rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x800017b4]:KDMBT16 t6, t5, t4
	-[0x800017b8]:sd t6, 1136(t2)
Current Store : [0x800017bc] : sd t5, 1144(t2) -- Store: [0x800037a8]:0xFFFB0100F7FFF7FF




Last Coverpoint : ['rs2_h1_val == 1024']
Last Code Sequence : 
	-[0x800017e8]:KDMBT16 t6, t5, t4
	-[0x800017ec]:sd t6, 1152(t2)
Current Store : [0x800017f0] : sd t5, 1160(t2) -- Store: [0x800037b8]:0x00058000C000DFFF




Last Coverpoint : ['rs2_h1_val == 512']
Last Code Sequence : 
	-[0x80001824]:KDMBT16 t6, t5, t4
	-[0x80001828]:sd t6, 1168(t2)
Current Store : [0x8000182c] : sd t5, 1176(t2) -- Store: [0x800037c8]:0xFFEFFFBF00090005




Last Coverpoint : ['rs1_h1_val == -129']
Last Code Sequence : 
	-[0x80001860]:KDMBT16 t6, t5, t4
	-[0x80001864]:sd t6, 1184(t2)
Current Store : [0x80001868] : sd t5, 1192(t2) -- Store: [0x800037d8]:0x1000EFFFFF7F0001




Last Coverpoint : ['rs2_h1_val == 64']
Last Code Sequence : 
	-[0x8000189c]:KDMBT16 t6, t5, t4
	-[0x800018a0]:sd t6, 1200(t2)
Current Store : [0x800018a4] : sd t5, 1208(t2) -- Store: [0x800037e8]:0xFFF6F7FF0100FF7F




Last Coverpoint : ['rs1_h1_val == -33']
Last Code Sequence : 
	-[0x800018c8]:KDMBT16 t6, t5, t4
	-[0x800018cc]:sd t6, 1216(t2)
Current Store : [0x800018d0] : sd t5, 1224(t2) -- Store: [0x800037f8]:0x00000002FFDF0002




Last Coverpoint : ['opcode : kdmbt16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 16384', 'rs2_h2_val == 0', 'rs2_h1_val == 1', 'rs1_h3_val == 8192', 'rs1_h2_val == -513', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80001900]:KDMBT16 t6, t5, t4
	-[0x80001904]:sd t6, 1232(t2)
Current Store : [0x80001908] : sd t5, 1240(t2) -- Store: [0x80003808]:0x2000FDFF00080009




Last Coverpoint : ['rs1_h2_val == -1']
Last Code Sequence : 
	-[0x8000193c]:KDMBT16 t6, t5, t4
	-[0x80001940]:sd t6, 1248(t2)
Current Store : [0x80001944] : sd t5, 1256(t2) -- Store: [0x80003818]:0x0008FFFF00077FFF




Last Coverpoint : ['rs2_h2_val == 1024']
Last Code Sequence : 
	-[0x80001974]:KDMBT16 t6, t5, t4
	-[0x80001978]:sd t6, 1264(t2)
Current Store : [0x8000197c] : sd t5, 1272(t2) -- Store: [0x80003828]:0xFFEF0400FFFB1000





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

|s.no|            signature             |                                                                                                                                                                                                                                                                  coverpoints                                                                                                                                                                                                                                                                  |                                  code                                   |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------|
|   1|[0x80003210]<br>0xFFDFFF80FFFFFAF6|- opcode : kdmbt16<br> - rs1 : x24<br> - rs2 : x24<br> - rd : x18<br> - rs1 == rs2 != rd<br> - rs1_h3_val == rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val < 0<br> - rs1_h2_val == rs2_h2_val<br> - rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h3_val == -16385<br> - rs2_h2_val == 64<br> - rs2_h0_val == -129<br> - rs1_h3_val == -16385<br> - rs1_h2_val == 64<br> - rs1_h0_val == -129<br> |[0x800003d0]:KDMBT16 s2, s8, s8<br> [0x800003d4]:sd s2, 0(ra)<br>        |
|   2|[0x80003220]<br>0xFFFFFFA000000200|- rs1 : x23<br> - rs2 : x23<br> - rd : x23<br> - rs1 == rs2 == rd<br> - rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs1_h2_val < 0 and rs2_h2_val < 0<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h3_val == 8<br> - rs2_h1_val == 2<br> - rs2_h0_val == 128<br> - rs1_h3_val == 8<br> - rs1_h1_val == 2<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                          |[0x8000040c]:KDMBT16 s7, s7, s7<br> [0x80000410]:sd s7, 16(ra)<br>       |
|   3|[0x80003230]<br>0xFFDFFC000000A000|- rs1 : x12<br> - rs2 : x20<br> - rd : x7<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h3_val != rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val > 0<br> - rs1_h2_val != rs2_h2_val<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h3_val == 512<br> - rs2_h2_val == -513<br> - rs2_h1_val == 4096<br> - rs2_h0_val == -1025<br> - rs1_h3_val == -8193<br> - rs1_h2_val == -2049<br>                                                                                |[0x80000448]:KDMBT16 t2, a2, s4<br> [0x8000044c]:sd t2, 32(ra)<br>       |
|   4|[0x80003240]<br>0xFFFF000000080000|- rs1 : x20<br> - rs2 : x21<br> - rd : x20<br> - rs1 == rd != rs2<br> - rs1_h3_val > 0 and rs2_h3_val < 0<br> - rs1_h2_val > 0 and rs2_h2_val < 0<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h1_val == -32768<br> - rs2_h0_val == 1<br> - rs1_h3_val == 64<br> - rs1_h2_val == 2<br> - rs1_h1_val == -17<br>                                                                                                                                                                                    |[0x8000047c]:KDMBT16 s4, s4, s5<br> [0x80000480]:sd s4, 48(ra)<br>       |
|   5|[0x80003250]<br>0x0000000000000000|- rs1 : x21<br> - rs2 : x0<br> - rd : x0<br> - rs2 == rd != rs1<br> - rs2_h3_val == 0<br> - rs2_h2_val == 0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h3_val == -17<br> - rs1_h2_val == 1024<br> - rs1_h1_val == -5<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                   |[0x800004b4]:KDMBT16 zero, s5, zero<br> [0x800004b8]:sd zero, 64(ra)<br> |
|   6|[0x80003260]<br>0x0000002400000012|- rs1 : x28<br> - rs2 : x31<br> - rd : x21<br> - rs1_h2_val < 0 and rs2_h2_val > 0<br> - rs2_h3_val == -9<br> - rs2_h1_val == -1<br> - rs2_h0_val == 16384<br> - rs1_h2_val == -2<br> - rs1_h1_val == -1<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                                                            |[0x800004e4]:KDMBT16 s5, t3, t6<br> [0x800004e8]:sd s5, 80(ra)<br>       |
|   7|[0x80003270]<br>0x1000C00200001C0E|- rs1 : x8<br> - rs2 : x30<br> - rd : x24<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs2_h1_val == -513<br> - rs2_h0_val == 4096<br> - rs1_h2_val == -8193<br> - rs1_h1_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                     |[0x80000524]:KDMBT16 s8, fp, t5<br> [0x80000528]:sd s8, 96(ra)<br>       |
|   8|[0x80003280]<br>0x00020000FFFFFF60|- rs1 : x2<br> - rs2 : x8<br> - rd : x29<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs2_h2_val == 16384<br> - rs2_h1_val == 16<br> - rs2_h0_val == -5<br> - rs1_h3_val == -1<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                                     |[0x80000554]:KDMBT16 t4, sp, fp<br> [0x80000558]:sd t4, 112(ra)<br>      |
|   9|[0x80003290]<br>0xFFAAAA00FFFEFFFC|- rs1 : x11<br> - rs2 : x19<br> - rd : x28<br> - rs2_h3_val == -21846<br> - rs2_h2_val == -9<br> - rs2_h1_val == -16385<br> - rs2_h0_val == 64<br> - rs1_h3_val == 16384<br> - rs1_h2_val == 128<br> - rs1_h1_val == -513<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                            |[0x80000598]:KDMBT16 t3, a1, s3<br> [0x8000059c]:sd t3, 128(ra)<br>      |
|  10|[0x800032a0]<br>0x01555400FFFFFEFE|- rs1 : x7<br> - rs2 : x9<br> - rd : x5<br> - rs2_h3_val == 21845<br> - rs2_h2_val == -21846<br> - rs2_h1_val == -129<br> - rs2_h0_val == -257<br> - rs1_h3_val == 256<br> - rs1_h2_val == 512<br> - rs1_h1_val == 16384<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                             |[0x800005cc]:KDMBT16 t0, t2, s1<br> [0x800005d0]:sd t0, 144(ra)<br>      |
|  11|[0x800032b0]<br>0x0003FFF8EFFFC002|- rs1 : x27<br> - rs2 : x25<br> - rd : x9<br> - rs2_h3_val == 32767<br> - rs2_h2_val == -5<br> - rs2_h1_val == -8193<br> - rs1_h2_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                 |[0x8000060c]:KDMBT16 s1, s11, s9<br> [0x80000610]:sd s1, 160(ra)<br>     |
|  12|[0x800032c0]<br>0x00044022DFFF4002|- rs1 : x6<br> - rs2 : x7<br> - rd : x25<br> - rs2_h3_val == -8193<br> - rs2_h2_val == 512<br> - rs2_h0_val == 2<br> - rs1_h3_val == -9<br> - rs1_h2_val == -17<br> - rs1_h1_val == 1<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                            |[0x80000650]:KDMBT16 s9, t1, t2<br> [0x80000654]:sd s9, 176(ra)<br>      |
|  13|[0x800032d0]<br>0x05560AACFFFFFFF0|- rs1 : x30<br> - rs2 : x28<br> - rd : x6<br> - rs2_h3_val == -2049<br> - rs2_h0_val == -2049<br> - rs1_h3_val == -513<br> - rs1_h2_val == -21846<br> - rs1_h1_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                   |[0x8000068c]:KDMBT16 t1, t5, t3<br> [0x80000690]:sd t1, 192(ra)<br>      |
|  14|[0x800032e0]<br>0x00080A02FFFFFF20|- rs1 : x16<br> - rs2 : x26<br> - rd : x15<br> - rs2_h3_val == -1025<br> - rs1_h3_val == -257<br> - rs1_h2_val == -257<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                              |[0x800006c8]:KDMBT16 a5, a6, s10<br> [0x800006cc]:sd a5, 208(ra)<br>     |
|  15|[0x800032f0]<br>0xFFFBFE00FFFFFB80|- rs1 : x4<br> - rs2 : x29<br> - rd : x31<br> - rs2_h3_val == -513<br> - rs2_h1_val == -9<br> - rs2_h0_val == -513<br> - rs1_h3_val == -5<br> - rs1_h2_val == 256<br> - rs1_h1_val == -9<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                            |[0x80000704]:KDMBT16 t6, tp, t4<br> [0x80000708]:sd t6, 224(ra)<br>      |
|  16|[0x80003300]<br>0xFFFFDFE0FFFFF000|- rs1 : x9<br> - rs2 : x2<br> - rd : x14<br> - rs2_h3_val == -257<br> - rs1_h3_val == 8192<br> - rs1_h2_val == 16<br> - rs1_h1_val == 21845<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                        |[0x80000744]:KDMBT16 a4, s1, sp<br> [0x80000748]:sd a4, 240(ra)<br>      |
|  17|[0x80003310]<br>0xFF7F010200000062|- rs1 : x29<br> - rs2 : x27<br> - rd : x8<br> - rs2_h3_val == -129<br> - rs2_h0_val == 32767<br> - rs1_h3_val == -32768<br> - rs1_h2_val == 32767<br> - rs1_h1_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                  |[0x80000780]:KDMBT16 fp, t4, s11<br> [0x80000784]:sd fp, 256(ra)<br>     |
|  18|[0x80003320]<br>0xFFDF8082FFFFFF82|- rs1 : x5<br> - rs2 : x10<br> - rd : x3<br> - rs2_h3_val == -65<br> - rs2_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800007b8]:KDMBT16 gp, t0, a0<br> [0x800007bc]:sd gp, 272(ra)<br>      |
|  19|[0x80003330]<br>0x0016002C0000FFFE|- rs1 : x13<br> - rs2 : x4<br> - rd : x22<br> - rs2_h3_val == -33<br> - rs2_h1_val == 32767<br> - rs2_h0_val == -16385<br> - rs1_h3_val == 512<br> - rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                       |[0x800007fc]:KDMBT16 s6, a3, tp<br> [0x80000800]:sd s6, 0(t2)<br>        |
|  20|[0x80003340]<br>0x0004402200001010|- rs1 : x19<br> - rs2 : x18<br> - rd : x17<br> - rs2_h3_val == -17<br> - rs2_h2_val == -3<br> - rs2_h0_val == -9<br> - rs1_h3_val == 21845<br> - rs1_h1_val == -257<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                               |[0x80000838]:KDMBT16 a7, s3, s2<br> [0x8000083c]:sd a7, 16(t2)<br>       |
|  21|[0x80003350]<br>0xFFFFFFA600000018|- rs1 : x18<br> - rs2 : x3<br> - rd : x16<br> - rs2_h3_val == -5<br> - rs2_h2_val == -4097<br> - rs2_h1_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000874]:KDMBT16 a6, s2, gp<br> [0x80000878]:sd a6, 32(t2)<br>       |
|  22|[0x80003360]<br>0xFFFE800600048000|- rs1 : x1<br> - rs2 : x22<br> - rd : x13<br> - rs2_h3_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800008a4]:KDMBT16 a3, ra, s6<br> [0x800008a8]:sd a3, 48(t2)<br>       |
|  23|[0x80003370]<br>0xFFFF800008000000|- rs1 : x17<br> - rs2 : x14<br> - rd : x10<br> - rs2_h3_val == -2<br> - rs2_h1_val == 8192<br> - rs2_h0_val == -2<br> - rs1_h2_val == 8192<br> - rs1_h1_val == -32768<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                             |[0x800008dc]:KDMBT16 a0, a7, a4<br> [0x800008e0]:sd a0, 64(t2)<br>       |
|  24|[0x80003380]<br>0x00090000FFFEBFF6|- rs1 : x10<br> - rs2 : x1<br> - rd : x4<br> - rs2_h3_val == -32768<br> - rs2_h2_val == 16<br> - rs2_h0_val == 512<br> - rs1_h3_val == 16<br> - rs1_h2_val == -9<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                 |[0x80000918]:KDMBT16 tp, a0, ra<br> [0x8000091c]:sd tp, 80(t2)<br>       |
|  25|[0x80003390]<br>0xC0000000FFFFB000|- rs1 : x3<br> - rs2 : x15<br> - rd : x11<br> - rs2_h3_val == 16384<br> - rs2_h2_val == -65<br> - rs1_h3_val == 4096<br> - rs1_h2_val == -32768<br> - rs1_h1_val == 32767<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                         |[0x80000950]:KDMBT16 a1, gp, a5<br> [0x80000954]:sd a1, 96(t2)<br>       |
|  26|[0x800033a0]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x16<br> - rd : x1<br> - rs2_h3_val == 8192<br> - rs1_h3_val == 0<br> - rs1_h2_val == 0<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000984]:KDMBT16 ra, zero, a6<br> [0x80000988]:sd ra, 112(t2)<br>    |
|  27|[0x800033b0]<br>0x0000C00000020000|- rs1 : x14<br> - rs2 : x6<br> - rd : x19<br> - rs2_h3_val == 4096<br> - rs2_h1_val == 128<br> - rs1_h3_val == 1024<br> - rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                |[0x800009bc]:KDMBT16 s3, a4, t1<br> [0x800009c0]:sd s3, 128(t2)<br>      |
|  28|[0x800033c0]<br>0x0040000000018006|- rs1 : x31<br> - rs2 : x12<br> - rd : x2<br> - rs2_h3_val == 2048<br> - rs2_h1_val == -3<br> - rs1_h3_val == -21846<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                            |[0x800009f8]:KDMBT16 sp, t6, a2<br> [0x800009fc]:sd sp, 144(t2)<br>      |
|  29|[0x800033d0]<br>0xFF7FF800FDFF8000|- rs1 : x25<br> - rs2 : x5<br> - rd : x27<br> - rs2_h3_val == 1024<br> - rs2_h1_val == -1025<br> - rs2_h0_val == 1024<br> - rs1_h3_val == 4<br> - rs1_h2_val == -4097<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                            |[0x80000a30]:KDMBT16 s11, s9, t0<br> [0x80000a34]:sd s11, 160(t2)<br>    |
|  30|[0x800033e0]<br>0xFFFFBE0000000E00|- rs1 : x15<br> - rs2 : x17<br> - rd : x26<br> - rs2_h3_val == 256<br> - rs2_h2_val == -1<br> - rs2_h1_val == 256<br> - rs1_h2_val == -33<br> - rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                         |[0x80000a68]:KDMBT16 s10, a5, a7<br> [0x80000a6c]:sd s10, 176(t2)<br>    |
|  31|[0x800033f0]<br>0xFFFBFF0000010000|- rs1 : x26<br> - rs2 : x11<br> - rd : x30<br> - rs2_h3_val == 128<br> - rs2_h2_val == 256<br> - rs1_h2_val == -1025<br> - rs1_h1_val == -4097<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                       |[0x80000a9c]:KDMBT16 t5, s10, a1<br> [0x80000aa0]:sd t5, 192(t2)<br>     |
|  32|[0x80003400]<br>0xFFFF7F80FFFFEF00|- rs1 : x22<br> - rs2 : x13<br> - rd : x12<br> - rs2_h3_val == 64<br> - rs1_h3_val == -129<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000ad8]:KDMBT16 a2, s6, a3<br> [0x80000adc]:sd a2, 208(t2)<br>      |
|  33|[0x80003410]<br>0x000FFFC000008000|- rs2_h3_val == 32<br> - rs2_h1_val == 2048<br> - rs2_h0_val == -3<br> - rs1_h1_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000b14]:KDMBT16 t6, t5, t4<br> [0x80000b18]:sd t6, 224(t2)<br>      |
|  34|[0x80003420]<br>0x0000C00C00000010|- rs2_h3_val == -4097<br> - rs2_h2_val == 1<br> - rs2_h1_val == 8<br> - rs2_h0_val == -17<br> - rs1_h1_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000b50]:KDMBT16 t6, t5, t4<br> [0x80000b54]:sd t6, 240(t2)<br>      |
|  35|[0x80003430]<br>0x0006AAB8FFFA0000|- rs1_h0_val == -32768<br> - rs2_h0_val == 32<br> - rs1_h3_val == 128<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000b88]:KDMBT16 t6, t5, t4<br> [0x80000b8c]:sd t6, 256(t2)<br>      |
|  36|[0x80003440]<br>0xFFFFF70000020502|- rs2_h2_val == -32768<br> - rs1_h1_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000bc8]:KDMBT16 t6, t5, t4<br> [0x80000bcc]:sd t6, 272(t2)<br>      |
|  37|[0x80003450]<br>0x00000400FFFFFDC0|- rs2_h2_val == -2049<br> - rs2_h1_val == 32<br> - rs1_h1_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000bfc]:KDMBT16 t6, t5, t4<br> [0x80000c00]:sd t6, 288(t2)<br>      |
|  38|[0x80003460]<br>0x00000000FFFF5556|- rs2_h3_val == -1<br> - rs2_h2_val == 4<br> - rs1_h1_val == 128<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000c3c]:KDMBT16 t6, t5, t4<br> [0x80000c40]:sd t6, 304(t2)<br>      |
|  39|[0x80003470]<br>0x00001000FFC00000|- rs2_h3_val == 16<br> - rs1_h3_val == -3<br> - rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000c70]:KDMBT16 t6, t5, t4<br> [0x80000c74]:sd t6, 320(t2)<br>      |
|  40|[0x80003480]<br>0xFFFBFFF0005600AC|- rs2_h0_val == 256<br> - rs1_h2_val == -16385<br> - rs1_h1_val == 16<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000ca8]:KDMBT16 t6, t5, t4<br> [0x80000cac]:sd t6, 336(t2)<br>      |
|  41|[0x80003490]<br>0xFFFE0000FFFD5558|- rs2_h3_val == 4<br> - rs2_h2_val == -129<br> - rs2_h1_val == 21845<br> - rs2_h0_val == 8<br> - rs1_h3_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000ce4]:KDMBT16 t6, t5, t4<br> [0x80000ce8]:sd t6, 352(t2)<br>      |
|  42|[0x800034a0]<br>0xFFFFA0000800A002|- rs2_h0_val == -1<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000d18]:KDMBT16 t6, t5, t4<br> [0x80000d1c]:sd t6, 368(t2)<br>      |
|  43|[0x800034b0]<br>0xFFFFFFC400081102|- rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000d4c]:KDMBT16 t6, t5, t4<br> [0x80000d50]:sd t6, 384(t2)<br>      |
|  44|[0x800034c0]<br>0x00000030FDFF8000|- rs2_h1_val == 16384<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000d80]:KDMBT16 t6, t5, t4<br> [0x80000d84]:sd t6, 400(t2)<br>      |
|  45|[0x800034d0]<br>0xFFF7FC0000080802|- rs2_h0_val == -32768<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000db8]:KDMBT16 t6, t5, t4<br> [0x80000dbc]:sd t6, 416(t2)<br>      |
|  46|[0x800034e0]<br>0x0007FFF0FFFFFC72|- rs1_h2_val == 8<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000df0]:KDMBT16 t6, t5, t4<br> [0x80000df4]:sd t6, 432(t2)<br>      |
|  47|[0x800034f0]<br>0x0000003600000108|- rs2_h0_val == -4097<br> - rs1_h3_val == -1025<br> - rs1_h2_val == -3<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000e2c]:KDMBT16 t6, t5, t4<br> [0x80000e30]:sd t6, 448(t2)<br>      |
|  48|[0x80003500]<br>0x00000108FFFFD000|- rs2_h2_val == -2<br> - rs2_h0_val == 16<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000e60]:KDMBT16 t6, t5, t4<br> [0x80000e64]:sd t6, 464(t2)<br>      |
|  49|[0x80003510]<br>0x004080000000001C|- rs2_h2_val == -33<br> - rs1_h2_val == -129<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000e9c]:KDMBT16 t6, t5, t4<br> [0x80000ea0]:sd t6, 480(t2)<br>      |
|  50|[0x80003520]<br>0x0000081000001000|- rs2_h1_val == 1<br> - rs1_h3_val == 2<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000ed4]:KDMBT16 t6, t5, t4<br> [0x80000ed8]:sd t6, 496(t2)<br>      |
|  51|[0x80003530]<br>0x0000004000000200|- rs2_h3_val == 1<br> - rs2_h2_val == 2<br> - rs1_h2_val == 32<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000f10]:KDMBT16 t6, t5, t4<br> [0x80000f14]:sd t6, 512(t2)<br>      |
|  52|[0x80003540]<br>0xFFFFFC0000000500|- rs2_h2_val == -17<br> - rs1_h3_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000f4c]:KDMBT16 t6, t5, t4<br> [0x80000f50]:sd t6, 528(t2)<br>      |
|  53|[0x80003550]<br>0x0000300CFFFFFE00|- rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000f84]:KDMBT16 t6, t5, t4<br> [0x80000f88]:sd t6, 544(t2)<br>      |
|  54|[0x80003570]<br>0x00044022FFFD0000|- rs2_h0_val == -21846<br> - rs1_h3_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000ff0]:KDMBT16 t6, t5, t4<br> [0x80000ff4]:sd t6, 576(t2)<br>      |
|  55|[0x80003580]<br>0xFFFFFF8000201402|- rs2_h1_val == -2049<br> - rs2_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x8000102c]:KDMBT16 t6, t5, t4<br> [0x80001030]:sd t6, 592(t2)<br>      |
|  56|[0x80003590]<br>0x0000000000000C0C|- rs2_h2_val == -1025<br> - rs2_h1_val == -257<br> - rs2_h0_val == -8193<br> - rs1_h3_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001064]:KDMBT16 t6, t5, t4<br> [0x80001068]:sd t6, 608(t2)<br>      |
|  57|[0x800035a0]<br>0xFE0000000000038E|- rs2_h2_val == -8193<br> - rs2_h1_val == -65<br> - rs2_h0_val == -65<br> - rs1_h1_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800010a0]:KDMBT16 t6, t5, t4<br> [0x800010a4]:sd t6, 624(t2)<br>      |
|  58|[0x800035b0]<br>0x00000000FFBFFE00|- rs2_h0_val == -33<br> - rs1_h2_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800010d0]:KDMBT16 t6, t5, t4<br> [0x800010d4]:sd t6, 640(t2)<br>      |
|  59|[0x800035c0]<br>0x0000300000000104|- rs2_h1_val == -2<br> - rs2_h0_val == 8192<br> - rs1_h2_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001104]:KDMBT16 t6, t5, t4<br> [0x80001108]:sd t6, 656(t2)<br>      |
|  60|[0x800035d0]<br>0xFFFFF6EE00000024|- rs2_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001140]:KDMBT16 t6, t5, t4<br> [0x80001144]:sd t6, 672(t2)<br>      |
|  61|[0x800035e0]<br>0x000000A0EFFF2002|- rs2_h2_val == 8<br> - rs2_h1_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001178]:KDMBT16 t6, t5, t4<br> [0x8000117c]:sd t6, 688(t2)<br>      |
|  62|[0x800035f0]<br>0xFFFE7FFA00028000|- rs1_h3_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800011ac]:KDMBT16 t6, t5, t4<br> [0x800011b0]:sd t6, 704(t2)<br>      |
|  63|[0x80003610]<br>0x0000002000000600|- rs1_h3_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x8000121c]:KDMBT16 t6, t5, t4<br> [0x80001220]:sd t6, 736(t2)<br>      |
|  64|[0x80003620]<br>0x0000030000000100|- rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001248]:KDMBT16 t6, t5, t4<br> [0x8000124c]:sd t6, 752(t2)<br>      |
|  65|[0x80003640]<br>0xFFFDFE000000000C|- rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800012c0]:KDMBT16 t6, t5, t4<br> [0x800012c4]:sd t6, 784(t2)<br>      |
|  66|[0x80003650]<br>0xFFFE000000012012|- rs2_h3_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800012f4]:KDMBT16 t6, t5, t4<br> [0x800012f8]:sd t6, 800(t2)<br>      |
|  67|[0x80003660]<br>0x00000006FFFFFF00|- rs1_h3_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001328]:KDMBT16 t6, t5, t4<br> [0x8000132c]:sd t6, 816(t2)<br>      |
|  68|[0x80003670]<br>0x00000E0E00007000|- rs2_h2_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001364]:KDMBT16 t6, t5, t4<br> [0x80001368]:sd t6, 832(t2)<br>      |
|  69|[0x80003680]<br>0x00004000FFFFCFFA|- rs2_h2_val == -16385<br> - rs1_h1_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800013a8]:KDMBT16 t6, t5, t4<br> [0x800013ac]:sd t6, 848(t2)<br>      |
|  70|[0x80003690]<br>0xFFFFEDEE00000000|- rs1_h3_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800013d8]:KDMBT16 t6, t5, t4<br> [0x800013dc]:sd t6, 864(t2)<br>      |
|  71|[0x800036a0]<br>0x00008000FFFFFF60|- rs2_h2_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x8000141c]:KDMBT16 t6, t5, t4<br> [0x80001420]:sd t6, 880(t2)<br>      |
|  72|[0x800036b0]<br>0xFFFFD000FFFF0002|- rs1_h3_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001450]:KDMBT16 t6, t5, t4<br> [0x80001454]:sd t6, 896(t2)<br>      |
|  73|[0x800036c0]<br>0xFFAA005600002000|- rs1_h2_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001484]:KDMBT16 t6, t5, t4<br> [0x80001488]:sd t6, 912(t2)<br>      |
|  74|[0x800036d0]<br>0xFFFFFFD600012000|- rs2_h2_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800014b4]:KDMBT16 t6, t5, t4<br> [0x800014b8]:sd t6, 928(t2)<br>      |
|  75|[0x800036e0]<br>0x00100000DFFF8000|- rs2_h2_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800014ec]:KDMBT16 t6, t5, t4<br> [0x800014f0]:sd t6, 944(t2)<br>      |
|  76|[0x800036f0]<br>0xEFFFC000F7FF1002|- rs2_h2_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001530]:KDMBT16 t6, t5, t4<br> [0x80001534]:sd t6, 960(t2)<br>      |
|  77|[0x80003700]<br>0x00100C0200000020|- rs1_h2_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x8000156c]:KDMBT16 t6, t5, t4<br> [0x80001570]:sd t6, 976(t2)<br>      |
|  78|[0x80003710]<br>0xFFFFFF82FFF4AAB6|- rs2_h2_val == 128<br> - rs2_h1_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800015a4]:KDMBT16 t6, t5, t4<br> [0x800015a8]:sd t6, 992(t2)<br>      |
|  79|[0x80003720]<br>0xFFFFFD76000000AA|- rs2_h1_val == -5<br> - rs1_h2_val == -65<br> - rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800015d4]:KDMBT16 t6, t5, t4<br> [0x800015d8]:sd t6, 1008(t2)<br>     |
|  80|[0x80003730]<br>0x00002000FFFFFFE0|- rs2_h2_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001608]:KDMBT16 t6, t5, t4<br> [0x8000160c]:sd t6, 1024(t2)<br>     |
|  81|[0x80003740]<br>0xFFFC800000002142|- rs1_h2_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001640]:KDMBT16 t6, t5, t4<br> [0x80001644]:sd t6, 1040(t2)<br>     |
|  82|[0x80003750]<br>0x2AA9D5560003555C|- rs2_h1_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x8000168c]:KDMBT16 t6, t5, t4<br> [0x80001690]:sd t6, 1056(t2)<br>     |
|  83|[0x80003760]<br>0x00200000FFFFFFF0|- rs1_h2_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800016d0]:KDMBT16 t6, t5, t4<br> [0x800016d4]:sd t6, 1072(t2)<br>     |
|  84|[0x80003770]<br>0x0000000200000042|- rs2_h1_val == -33<br> - rs1_h2_val == 1<br> - rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x8000170c]:KDMBT16 t6, t5, t4<br> [0x80001710]:sd t6, 1088(t2)<br>     |
|  85|[0x80003780]<br>0xFFDF004200004000|- rs2_h2_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x8000173c]:KDMBT16 t6, t5, t4<br> [0x80001740]:sd t6, 1104(t2)<br>     |
|  86|[0x80003790]<br>0xFFF7000005560AAC|- rs1_h1_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001780]:KDMBT16 t6, t5, t4<br> [0x80001784]:sd t6, 1120(t2)<br>     |
|  87|[0x800037a0]<br>0x00000800FFFFCFFA|- rs1_h1_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800017b4]:KDMBT16 t6, t5, t4<br> [0x800017b8]:sd t6, 1136(t2)<br>     |
|  88|[0x800037b0]<br>0xFFFA0000FEFFF800|- rs2_h1_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800017e8]:KDMBT16 t6, t5, t4<br> [0x800017ec]:sd t6, 1152(t2)<br>     |
|  89|[0x800037c0]<br>0xFFFFFBF000001400|- rs2_h1_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001824]:KDMBT16 t6, t5, t4<br> [0x80001828]:sd t6, 1168(t2)<br>     |
|  90|[0x800037d0]<br>0xF554B5560000000C|- rs1_h1_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001860]:KDMBT16 t6, t5, t4<br> [0x80001864]:sd t6, 1184(t2)<br>     |
|  91|[0x800037e0]<br>0x0000700EFFFFBF80|- rs2_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x8000189c]:KDMBT16 t6, t5, t4<br> [0x800018a0]:sd t6, 1200(t2)<br>     |
|  92|[0x800037f0]<br>0x0000100000000000|- rs1_h1_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800018c8]:KDMBT16 t6, t5, t4<br> [0x800018cc]:sd t6, 1216(t2)<br>     |
|  93|[0x80003810]<br>0xFFFFFFF00001FFFC|- rs1_h2_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x8000193c]:KDMBT16 t6, t5, t4<br> [0x80001940]:sd t6, 1248(t2)<br>     |
|  94|[0x80003820]<br>0xFF7FF80000040000|- rs2_h2_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001974]:KDMBT16 t6, t5, t4<br> [0x80001978]:sd t6, 1264(t2)<br>     |
