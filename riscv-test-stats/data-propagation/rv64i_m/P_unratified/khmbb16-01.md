
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001910')]      |
| SIG_REGION                | [('0x80003210', '0x80003820', '194 dwords')]      |
| COV_LABELS                | khmbb16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/khmbb16-01.S    |
| Total Number of coverpoints| 420     |
| Total Coverpoints Hit     | 414      |
| Total Signature Updates   | 194      |
| STAT1                     | 93      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 97     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000174c]:KHMBB16 t6, t5, t4
      [0x80001750]:sd t6, 960(ra)
 -- Signature Address: 0x80003790 Data: 0x00000000FFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : khmbb16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h3_val == -5
      - rs2_h0_val == 4096
      - rs1_h3_val == -129
      - rs1_h2_val == 0
      - rs1_h0_val == -5




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000185c]:KHMBB16 t6, t5, t4
      [0x80001860]:sd t6, 1040(ra)
 -- Signature Address: 0x800037e0 Data: 0x000003FF00000000
 -- Redundant Coverpoints hit by the op
      - opcode : khmbb16
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
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h3_val == 512
      - rs2_h0_val == 1024
      - rs1_h3_val == 512
      - rs1_h2_val == 2048
      - rs1_h1_val == -9
      - rs1_h0_val == 8




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001888]:KHMBB16 t6, t5, t4
      [0x8000188c]:sd t6, 1056(ra)
 -- Signature Address: 0x800037f0 Data: 0xFFFFFFF700000000
 -- Redundant Coverpoints hit by the op
      - opcode : khmbb16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h3_val == -129
      - rs2_h2_val == 64
      - rs2_h1_val == 8192
      - rs2_h0_val == 0
      - rs1_h3_val == -17
      - rs1_h2_val == -4097
      - rs1_h0_val == 256




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800018c4]:KHMBB16 t6, t5, t4
      [0x800018c8]:sd t6, 1072(ra)
 -- Signature Address: 0x80003800 Data: 0x0000000000000080
 -- Redundant Coverpoints hit by the op
      - opcode : khmbb16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val == rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h3_val == 64
      - rs2_h2_val == -3
      - rs2_h0_val == -2049
      - rs1_h3_val == -5
      - rs1_h2_val == -513
      - rs1_h1_val == 8
      - rs1_h0_val == -2049






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : khmbb16', 'rs1 : x22', 'rs2 : x22', 'rd : x9', 'rs1 == rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val == rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val == rs2_h1_val', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 2048', 'rs2_h1_val == 0', 'rs2_h0_val == 4096', 'rs1_h3_val == 2048', 'rs1_h1_val == 0', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x800003cc]:KHMBB16 s1, s6, s6
	-[0x800003d0]:sd s1, 0(s2)
Current Store : [0x800003d4] : sd s6, 8(s2) -- Store: [0x80003218]:0x0800000900001000




Last Coverpoint : ['rs1 : x2', 'rs2 : x2', 'rd : x2', 'rs1 == rs2 == rd', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs2_h3_val == 512', 'rs2_h0_val == 1024', 'rs1_h3_val == 512', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000408]:KHMBB16 sp, sp, sp
	-[0x8000040c]:sd sp, 16(s2)
Current Store : [0x80000410] : sd sp, 24(s2) -- Store: [0x80003228]:0x00001FFF00000020




Last Coverpoint : ['rs1 : x30', 'rs2 : x1', 'rd : x12', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == 32767', 'rs2_h2_val == 1', 'rs2_h1_val == -5', 'rs2_h0_val == -2049', 'rs1_h2_val == -8193', 'rs1_h1_val == 4096', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000444]:KHMBB16 a2, t5, ra
	-[0x80000448]:sd a2, 32(s2)
Current Store : [0x8000044c] : sd t5, 40(s2) -- Store: [0x80003238]:0xFFFADFFF1000FFF7




Last Coverpoint : ['rs1 : x31', 'rs2 : x13', 'rd : x31', 'rs1 == rd != rs2', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs2_h2_val == 32767', 'rs2_h1_val == -2', 'rs1_h3_val == -3', 'rs1_h2_val == -1', 'rs1_h1_val == -5', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x8000047c]:KHMBB16 t6, t6, a3
	-[0x80000480]:sd t6, 48(s2)
Current Store : [0x80000484] : sd t6, 56(s2) -- Store: [0x80003248]:0xFFFFFFFF00000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x10', 'rd : x10', 'rs2 == rd != rs1', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == -9', 'rs2_h2_val == 0', 'rs2_h1_val == -129', 'rs1_h3_val == 8', 'rs1_h1_val == -32768', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x800004b0]:KHMBB16 a0, t1, a0
	-[0x800004b4]:sd a0, 64(s2)
Current Store : [0x800004b8] : sd t1, 72(s2) -- Store: [0x80003258]:0x0008FFF980005555




Last Coverpoint : ['rs1 : x4', 'rs2 : x5', 'rd : x17', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs2_h3_val == 32', 'rs2_h2_val == -8193', 'rs2_h1_val == -3', 'rs2_h0_val == 256', 'rs1_h3_val == -8193', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x800004ec]:KHMBB16 a7, tp, t0
	-[0x800004f0]:sd a7, 80(s2)
Current Store : [0x800004f4] : sd tp, 88(s2) -- Store: [0x80003268]:0xDFFFDFFFC0002000




Last Coverpoint : ['rs1 : x20', 'rs2 : x15', 'rd : x27', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs2_h2_val == -5', 'rs2_h0_val == -8193', 'rs1_h2_val == 64']
Last Code Sequence : 
	-[0x80000528]:KHMBB16 s11, s4, a5
	-[0x8000052c]:sd s11, 96(s2)
Current Store : [0x80000530] : sd s4, 104(s2) -- Store: [0x80003278]:0xFFF800400005FFFA




Last Coverpoint : ['rs1 : x28', 'rs2 : x20', 'rd : x15', 'rs2_h3_val == -8193', 'rs2_h1_val == 512', 'rs2_h0_val == 8', 'rs1_h2_val == -2049', 'rs1_h1_val == 512']
Last Code Sequence : 
	-[0x80000560]:KHMBB16 a5, t3, s4
	-[0x80000564]:sd a5, 112(s2)
Current Store : [0x80000568] : sd t3, 120(s2) -- Store: [0x80003288]:0x0003F7FF02001000




Last Coverpoint : ['rs1 : x19', 'rs2 : x28', 'rd : x11', 'rs2_h3_val == 16384', 'rs2_h2_val == 4096', 'rs2_h0_val == 32', 'rs1_h3_val == -257', 'rs1_h1_val == 32', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80000598]:KHMBB16 a1, s3, t3
	-[0x8000059c]:sd a1, 128(s2)
Current Store : [0x800005a0] : sd s3, 136(s2) -- Store: [0x80003298]:0xFEFFC00000200020




Last Coverpoint : ['rs1 : x9', 'rs2 : x3', 'rd : x8', 'rs2_h3_val == -21846', 'rs2_h2_val == -257', 'rs2_h1_val == -33', 'rs2_h0_val == -129', 'rs1_h3_val == 64', 'rs1_h1_val == -65']
Last Code Sequence : 
	-[0x800005d4]:KHMBB16 fp, s1, gp
	-[0x800005d8]:sd fp, 144(s2)
Current Store : [0x800005dc] : sd s1, 152(s2) -- Store: [0x800032a8]:0x0040FFFAFFBFFFFC




Last Coverpoint : ['rs1 : x16', 'rs2 : x25', 'rd : x19', 'rs2_h3_val == 21845', 'rs2_h2_val == -17']
Last Code Sequence : 
	-[0x8000060c]:KHMBB16 s3, a6, s9
	-[0x80000610]:sd s3, 160(s2)
Current Store : [0x80000614] : sd a6, 168(s2) -- Store: [0x800032b8]:0x000500070000FFF9




Last Coverpoint : ['rs1 : x5', 'rs2 : x4', 'rd : x14', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs2_h3_val == -16385', 'rs2_h1_val == 21845', 'rs1_h3_val == -16385', 'rs1_h2_val == -65', 'rs1_h1_val == -8193', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80000654]:KHMBB16 a4, t0, tp
	-[0x80000658]:sd a4, 176(s2)
Current Store : [0x8000065c] : sd t0, 184(s2) -- Store: [0x800032c8]:0xBFFFFFBFDFFF0001




Last Coverpoint : ['rs1 : x26', 'rs2 : x21', 'rd : x28', 'rs2_h3_val == -4097', 'rs2_h1_val == -257', 'rs2_h0_val == -16385', 'rs1_h3_val == 128', 'rs1_h2_val == -2']
Last Code Sequence : 
	-[0x80000690]:KHMBB16 t3, s10, s5
	-[0x80000694]:sd t3, 192(s2)
Current Store : [0x80000698] : sd s10, 200(s2) -- Store: [0x800032d8]:0x0080FFFE00030020




Last Coverpoint : ['rs1 : x7', 'rs2 : x17', 'rd : x6', 'rs2_h3_val == -2049', 'rs2_h2_val == -9', 'rs2_h1_val == 256', 'rs2_h0_val == -3', 'rs1_h2_val == -129', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x800006cc]:KHMBB16 t1, t2, a7
	-[0x800006d0]:sd t1, 208(s2)
Current Store : [0x800006d4] : sd t2, 216(s2) -- Store: [0x800032e8]:0x0003FF7F00090004




Last Coverpoint : ['rs1 : x3', 'rs2 : x31', 'rd : x16', 'rs2_h3_val == -1025', 'rs2_h2_val == 8', 'rs1_h1_val == 64']
Last Code Sequence : 
	-[0x80000700]:KHMBB16 a6, gp, t6
	-[0x80000704]:sd a6, 0(sp)
Current Store : [0x80000708] : sd gp, 8(sp) -- Store: [0x800032f8]:0xFFFCFFBF00400004




Last Coverpoint : ['rs1 : x23', 'rs2 : x29', 'rd : x5', 'rs1_h0_val == -32768', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == -513', 'rs1_h2_val == -16385']
Last Code Sequence : 
	-[0x80000738]:KHMBB16 t0, s7, t4
	-[0x8000073c]:sd t0, 16(sp)
Current Store : [0x80000740] : sd s7, 24(sp) -- Store: [0x80003308]:0xFFFABFFF00078000




Last Coverpoint : ['rs1 : x18', 'rs2 : x30', 'rd : x13', 'rs2_h3_val == -257', 'rs2_h0_val == 32767', 'rs1_h3_val == -21846']
Last Code Sequence : 
	-[0x80000770]:KHMBB16 a3, s2, t5
	-[0x80000774]:sd a3, 32(sp)
Current Store : [0x80000778] : sd s2, 40(sp) -- Store: [0x80003318]:0xAAAAFF7FFFF82000




Last Coverpoint : ['rs1 : x1', 'rs2 : x7', 'rd : x0', 'rs2_h3_val == -129', 'rs2_h2_val == 64', 'rs2_h1_val == 8192', 'rs2_h0_val == 0', 'rs1_h3_val == -17', 'rs1_h2_val == -4097', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x8000079c]:KHMBB16 zero, ra, t2
	-[0x800007a0]:sd zero, 48(sp)
Current Store : [0x800007a4] : sd ra, 56(sp) -- Store: [0x80003328]:0xFFEFEFFFFFF60100




Last Coverpoint : ['rs1 : x15', 'rs2 : x24', 'rd : x18', 'rs2_h3_val == -65', 'rs2_h2_val == -513', 'rs2_h1_val == 4', 'rs1_h3_val == -33', 'rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x800007d0]:KHMBB16 s2, a5, s8
	-[0x800007d4]:sd s2, 64(sp)
Current Store : [0x800007d8] : sd a5, 72(sp) -- Store: [0x80003338]:0xFFDF000920000007




Last Coverpoint : ['rs1 : x13', 'rs2 : x6', 'rd : x30', 'rs2_h3_val == -33', 'rs2_h2_val == -129', 'rs2_h1_val == 16384', 'rs2_h0_val == 4', 'rs1_h3_val == -32768', 'rs1_h1_val == 1024', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000804]:KHMBB16 t5, a3, t1
	-[0x80000808]:sd t5, 80(sp)
Current Store : [0x8000080c] : sd a3, 88(sp) -- Store: [0x80003348]:0x8000FFFF0400FFFB




Last Coverpoint : ['rs1 : x17', 'rs2 : x9', 'rd : x7', 'rs2_h3_val == -17', 'rs1_h3_val == -1', 'rs1_h2_val == -1025']
Last Code Sequence : 
	-[0x80000838]:KHMBB16 t2, a7, s1
	-[0x8000083c]:sd t2, 96(sp)
Current Store : [0x80000840] : sd a7, 104(sp) -- Store: [0x80003358]:0xFFFFFBFF00073FFF




Last Coverpoint : ['rs1 : x29', 'rs2 : x18', 'rd : x1', 'rs2_h3_val == -5', 'rs2_h2_val == -32768', 'rs2_h1_val == 32767', 'rs1_h3_val == 32767', 'rs1_h2_val == -21846', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x80000874]:KHMBB16 ra, t4, s2
	-[0x80000878]:sd ra, 112(sp)
Current Store : [0x8000087c] : sd t4, 120(sp) -- Store: [0x80003368]:0x7FFFAAAA01000006




Last Coverpoint : ['rs1 : x14', 'rs2 : x19', 'rd : x24', 'rs2_h3_val == -3', 'rs2_h1_val == 2048', 'rs1_h3_val == 256', 'rs1_h2_val == 4096', 'rs1_h1_val == -2049', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x800008a8]:KHMBB16 s8, a4, s3
	-[0x800008ac]:sd s8, 128(sp)
Current Store : [0x800008b0] : sd a4, 136(sp) -- Store: [0x80003378]:0x01001000F7FF7FFF




Last Coverpoint : ['rs1 : x11', 'rs2 : x23', 'rd : x26', 'rs2_h3_val == -2', 'rs1_h3_val == 16384', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x800008dc]:KHMBB16 s10, a1, s7
	-[0x800008e0]:sd s10, 144(sp)
Current Store : [0x800008e4] : sd a1, 152(sp) -- Store: [0x80003388]:0x40000006FFF90200




Last Coverpoint : ['rs1 : x27', 'rs2 : x12', 'rd : x4', 'rs2_h3_val == -32768', 'rs2_h2_val == -3', 'rs2_h1_val == -16385', 'rs2_h0_val == -17', 'rs1_h1_val == -3', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80000918]:KHMBB16 tp, s11, a2
	-[0x8000091c]:sd tp, 160(sp)
Current Store : [0x80000920] : sd s11, 168(sp) -- Store: [0x80003398]:0xFFF8FF7FFFFDEFFF




Last Coverpoint : ['rs1 : x24', 'rs2 : x8', 'rd : x23', 'rs2_h3_val == 8192', 'rs1_h3_val == -1025', 'rs1_h2_val == 2048']
Last Code Sequence : 
	-[0x8000095c]:KHMBB16 s7, s8, fp
	-[0x80000960]:sd s7, 176(sp)
Current Store : [0x80000964] : sd s8, 184(sp) -- Store: [0x800033a8]:0xFBFF0800FFFA0020




Last Coverpoint : ['rs1 : x8', 'rs2 : x27', 'rd : x21', 'rs2_h3_val == 4096', 'rs2_h2_val == 128', 'rs1_h3_val == -65', 'rs1_h2_val == 16384', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000990]:KHMBB16 s5, fp, s11
	-[0x80000994]:sd s5, 192(sp)
Current Store : [0x80000998] : sd fp, 200(sp) -- Store: [0x800033b8]:0xFFBF4000DFFFFDFF




Last Coverpoint : ['rs1 : x10', 'rs2 : x16', 'rd : x20', 'rs2_h3_val == 1024', 'rs2_h2_val == -16385', 'rs2_h1_val == 32', 'rs2_h0_val == 16384', 'rs1_h2_val == 8192', 'rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x800009c8]:KHMBB16 s4, a0, a6
	-[0x800009cc]:sd s4, 208(sp)
Current Store : [0x800009d0] : sd a0, 216(sp) -- Store: [0x800033c8]:0xFFFD20004000FFFB




Last Coverpoint : ['rs1 : x12', 'rs2 : x26', 'rd : x22', 'rs2_h3_val == 256', 'rs2_h2_val == 8192', 'rs2_h1_val == -32768', 'rs1_h3_val == 2', 'rs1_h1_val == -129']
Last Code Sequence : 
	-[0x80000a04]:KHMBB16 s6, a2, s10
	-[0x80000a08]:sd s6, 0(ra)
Current Store : [0x80000a0c] : sd a2, 8(ra) -- Store: [0x800033d8]:0x00020006FF7FFFF7




Last Coverpoint : ['rs1 : x21', 'rs2 : x11', 'rd : x29', 'rs2_h3_val == 128', 'rs2_h2_val == 2048', 'rs2_h0_val == 512', 'rs1_h2_val == 4']
Last Code Sequence : 
	-[0x80000a40]:KHMBB16 t4, s5, a1
	-[0x80000a44]:sd t4, 16(ra)
Current Store : [0x80000a48] : sd s5, 24(ra) -- Store: [0x800033e8]:0x000600043FFFEFFF




Last Coverpoint : ['rs1 : x25', 'rs2 : x0', 'rd : x3', 'rs2_h3_val == 0', 'rs1_h3_val == -5', 'rs1_h2_val == -513', 'rs1_h1_val == 8', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000a7c]:KHMBB16 gp, s9, zero
	-[0x80000a80]:sd gp, 32(ra)
Current Store : [0x80000a84] : sd s9, 40(ra) -- Store: [0x800033f8]:0xFFFBFDFF0008F7FF




Last Coverpoint : ['rs1 : x0', 'rs2 : x14', 'rd : x25', 'rs2_h3_val == 16', 'rs2_h1_val == 128', 'rs2_h0_val == -21846', 'rs1_h3_val == 0', 'rs1_h2_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000ab0]:KHMBB16 s9, zero, a4
	-[0x80000ab4]:sd s9, 48(ra)
Current Store : [0x80000ab8] : sd zero, 56(ra) -- Store: [0x80003408]:0x0000000000000000




Last Coverpoint : ['rs2_h3_val == 8', 'rs2_h1_val == -2049', 'rs1_h2_val == -32768', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000aec]:KHMBB16 t6, t5, t4
	-[0x80000af0]:sd t6, 64(ra)
Current Store : [0x80000af4] : sd t5, 72(ra) -- Store: [0x80003418]:0xC000800002000010




Last Coverpoint : ['rs2_h3_val == 4', 'rs2_h2_val == 16', 'rs2_h0_val == -9', 'rs1_h2_val == 8', 'rs1_h1_val == 128', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000b20]:KHMBB16 t6, t5, t4
	-[0x80000b24]:sd t6, 80(ra)
Current Store : [0x80000b28] : sd t5, 88(ra) -- Store: [0x80003428]:0xFFFF00080080FBFF




Last Coverpoint : ['rs2_h2_val == 32', 'rs1_h3_val == -4097', 'rs1_h2_val == -3', 'rs1_h1_val == -2']
Last Code Sequence : 
	-[0x80000b54]:KHMBB16 t6, t5, t4
	-[0x80000b58]:sd t6, 96(ra)
Current Store : [0x80000b5c] : sd t5, 104(ra) -- Store: [0x80003438]:0xEFFFFFFDFFFE0400




Last Coverpoint : ['rs2_h2_val == -2', 'rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x80000b90]:KHMBB16 t6, t5, t4
	-[0x80000b94]:sd t6, 112(ra)
Current Store : [0x80000b98] : sd t5, 120(ra) -- Store: [0x80003448]:0xFFDF00040800FFF9




Last Coverpoint : ['rs2_h2_val == 256', 'rs2_h0_val == -65', 'rs1_h3_val == -129', 'rs1_h1_val == 16']
Last Code Sequence : 
	-[0x80000bcc]:KHMBB16 t6, t5, t4
	-[0x80000bd0]:sd t6, 128(ra)
Current Store : [0x80000bd4] : sd t5, 136(ra) -- Store: [0x80003458]:0xFF7F100000100800




Last Coverpoint : ['rs2_h1_val == -513', 'rs1_h3_val == 32', 'rs1_h1_val == 4', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000c04]:KHMBB16 t6, t5, t4
	-[0x80000c08]:sd t6, 144(ra)
Current Store : [0x80000c0c] : sd t5, 152(ra) -- Store: [0x80003468]:0x002000400004DFFF




Last Coverpoint : ['rs2_h0_val == 2', 'rs1_h1_val == 2']
Last Code Sequence : 
	-[0x80000c34]:KHMBB16 t6, t5, t4
	-[0x80000c38]:sd t6, 160(ra)
Current Store : [0x80000c3c] : sd t5, 168(ra) -- Store: [0x80003478]:0xFF7F00050002C000




Last Coverpoint : ['rs2_h2_val == 21845', 'rs1_h2_val == -33', 'rs1_h1_val == 1', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000c70]:KHMBB16 t6, t5, t4
	-[0x80000c74]:sd t6, 176(ra)
Current Store : [0x80000c78] : sd t5, 184(ra) -- Store: [0x80003488]:0xFFDFFFDF0001FFDF




Last Coverpoint : ['rs1_h3_val == 1024', 'rs1_h1_val == -1']
Last Code Sequence : 
	-[0x80000ca8]:KHMBB16 t6, t5, t4
	-[0x80000cac]:sd t6, 192(ra)
Current Store : [0x80000cb0] : sd t5, 200(ra) -- Store: [0x80003498]:0x0400F7FFFFFF2000




Last Coverpoint : ['rs2_h2_val == -65', 'rs1_h3_val == 4096', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000ce4]:KHMBB16 t6, t5, t4
	-[0x80000ce8]:sd t6, 208(ra)
Current Store : [0x80000cec] : sd t5, 216(ra) -- Store: [0x800034a8]:0x1000FFFE4000AAAA




Last Coverpoint : ['rs2_h1_val == -21846', 'rs1_h2_val == 512', 'rs1_h1_val == -21846', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x80000d2c]:KHMBB16 t6, t5, t4
	-[0x80000d30]:sd t6, 224(ra)
Current Store : [0x80000d34] : sd t5, 232(ra) -- Store: [0x800034b8]:0x10000200AAAABFFF




Last Coverpoint : ['rs2_h1_val == -4097', 'rs2_h0_val == -513', 'rs1_h2_val == 256', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000d68]:KHMBB16 t6, t5, t4
	-[0x80000d6c]:sd t6, 240(ra)
Current Store : [0x80000d70] : sd t5, 248(ra) -- Store: [0x800034c8]:0xFFF901004000FEFF




Last Coverpoint : ['rs2_h2_val == 4', 'rs1_h2_val == 32', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000da4]:KHMBB16 t6, t5, t4
	-[0x80000da8]:sd t6, 256(ra)
Current Store : [0x80000dac] : sd t5, 264(ra) -- Store: [0x800034d8]:0x000600200004FF7F




Last Coverpoint : ['rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000de0]:KHMBB16 t6, t5, t4
	-[0x80000de4]:sd t6, 272(ra)
Current Store : [0x80000de8] : sd t5, 280(ra) -- Store: [0x800034e8]:0xEFFFF7FF0004FFEF




Last Coverpoint : ['rs2_h1_val == 1', 'rs1_h2_val == 21845', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000e1c]:KHMBB16 t6, t5, t4
	-[0x80000e20]:sd t6, 288(ra)
Current Store : [0x80000e24] : sd t5, 296(ra) -- Store: [0x800034f8]:0xFFFC55550100FFFD




Last Coverpoint : ['rs2_h1_val == -1', 'rs1_h3_val == -9', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000e50]:KHMBB16 t6, t5, t4
	-[0x80000e54]:sd t6, 304(ra)
Current Store : [0x80000e58] : sd t5, 312(ra) -- Store: [0x80003508]:0xFFF7FFF9DFFFFFFE




Last Coverpoint : ['rs2_h1_val == -9', 'rs2_h0_val == 128', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000e88]:KHMBB16 t6, t5, t4
	-[0x80000e8c]:sd t6, 320(ra)
Current Store : [0x80000e90] : sd t5, 328(ra) -- Store: [0x80003518]:0xFFFD0007FFFE4000




Last Coverpoint : ['rs2_h0_val == 64', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x80000eb4]:KHMBB16 t6, t5, t4
	-[0x80000eb8]:sd t6, 336(ra)
Current Store : [0x80000ebc] : sd t5, 344(ra) -- Store: [0x80003528]:0x0400FFF910000080




Last Coverpoint : ['rs1_h3_val == 16', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000ef4]:KHMBB16 t6, t5, t4
	-[0x80000ef8]:sd t6, 352(ra)
Current Store : [0x80000efc] : sd t5, 360(ra) -- Store: [0x80003538]:0x00105555AAAA0040




Last Coverpoint : ['rs2_h2_val == -4097', 'rs1_h1_val == -16385', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000f2c]:KHMBB16 t6, t5, t4
	-[0x80000f30]:sd t6, 368(ra)
Current Store : [0x80000f34] : sd t5, 376(ra) -- Store: [0x80003548]:0x0100FFF8BFFF0002




Last Coverpoint : ['rs2_h2_val == -2049']
Last Code Sequence : 
	-[0x80000f64]:KHMBB16 t6, t5, t4
	-[0x80000f68]:sd t6, 384(ra)
Current Store : [0x80000f6c] : sd t5, 392(ra) -- Store: [0x80003558]:0xFFEFDFFFBFFF0000




Last Coverpoint : ['rs2_h0_val == 1', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x80000f90]:KHMBB16 t6, t5, t4
	-[0x80000f94]:sd t6, 400(ra)
Current Store : [0x80000f98] : sd t5, 408(ra) -- Store: [0x80003568]:0x0009FFDFFF7FFFFF




Last Coverpoint : ['rs2_h1_val == 2']
Last Code Sequence : 
	-[0x80000fcc]:KHMBB16 t6, t5, t4
	-[0x80000fd0]:sd t6, 416(ra)
Current Store : [0x80000fd4] : sd t5, 424(ra) -- Store: [0x80003578]:0x08002000FFFE0200




Last Coverpoint : ['rs2_h1_val == 16', 'rs2_h0_val == 21845', 'rs1_h3_val == 8192', 'rs1_h2_val == -5', 'rs1_h1_val == -9']
Last Code Sequence : 
	-[0x80001008]:KHMBB16 t6, t5, t4
	-[0x8000100c]:sd t6, 432(ra)
Current Store : [0x80001010] : sd t5, 440(ra) -- Store: [0x80003588]:0x2000FFFBFFF70007




Last Coverpoint : ['rs2_h1_val == 8', 'rs2_h0_val == -4097', 'rs1_h2_val == -257']
Last Code Sequence : 
	-[0x8000103c]:KHMBB16 t6, t5, t4
	-[0x80001040]:sd t6, 448(ra)
Current Store : [0x80001044] : sd t5, 456(ra) -- Store: [0x80003598]:0x0005FEFFDFFFFFFD




Last Coverpoint : ['rs2_h1_val == -65', 'rs2_h0_val == -1025', 'rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x80001078]:KHMBB16 t6, t5, t4
	-[0x8000107c]:sd t6, 464(ra)
Current Store : [0x80001080] : sd t5, 472(ra) -- Store: [0x800035a8]:0x004000055555FBFF




Last Coverpoint : ['rs2_h0_val == -257']
Last Code Sequence : 
	-[0x800010b8]:KHMBB16 t6, t5, t4
	-[0x800010bc]:sd t6, 480(ra)
Current Store : [0x800010c0] : sd t5, 488(ra) -- Store: [0x800035b8]:0xBFFFFFFD1000FEFF




Last Coverpoint : ['rs2_h0_val == -33']
Last Code Sequence : 
	-[0x800010f4]:KHMBB16 t6, t5, t4
	-[0x800010f8]:sd t6, 496(ra)
Current Store : [0x800010fc] : sd t5, 504(ra) -- Store: [0x800035c8]:0xDFFF020000020800




Last Coverpoint : ['rs2_h0_val == -5']
Last Code Sequence : 
	-[0x80001130]:KHMBB16 t6, t5, t4
	-[0x80001134]:sd t6, 512(ra)
Current Store : [0x80001138] : sd t5, 520(ra) -- Store: [0x800035d8]:0x0800BFFFFFF9FFFB




Last Coverpoint : ['rs2_h0_val == -2']
Last Code Sequence : 
	-[0x80001168]:KHMBB16 t6, t5, t4
	-[0x8000116c]:sd t6, 528(ra)
Current Store : [0x80001170] : sd t5, 536(ra) -- Store: [0x800035e8]:0x0005FFDFFFF90000




Last Coverpoint : ['rs2_h3_val == 64', 'rs2_h0_val == -32768', 'rs1_h3_val == 21845']
Last Code Sequence : 
	-[0x800011a0]:KHMBB16 t6, t5, t4
	-[0x800011a4]:sd t6, 544(ra)
Current Store : [0x800011a8] : sd t5, 552(ra) -- Store: [0x800035f8]:0x55551000FFF8EFFF




Last Coverpoint : ['rs2_h1_val == -8193', 'rs2_h0_val == 8192', 'rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x800011d8]:KHMBB16 t6, t5, t4
	-[0x800011dc]:sd t6, 560(ra)
Current Store : [0x800011e0] : sd t5, 568(ra) -- Store: [0x80003608]:0xFFF60008EFFFFBFF




Last Coverpoint : ['rs2_h0_val == 2048', 'rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x80001210]:KHMBB16 t6, t5, t4
	-[0x80001214]:sd t6, 576(ra)
Current Store : [0x80001218] : sd t5, 584(ra) -- Store: [0x80003618]:0x0800FFDFFBFF0000




Last Coverpoint : ['rs2_h2_val == -1', 'rs2_h0_val == 16', 'rs1_h3_val == -2049']
Last Code Sequence : 
	-[0x80001250]:KHMBB16 t6, t5, t4
	-[0x80001254]:sd t6, 592(ra)
Current Store : [0x80001258] : sd t5, 600(ra) -- Store: [0x80003628]:0xF7FFFFFB0009F7FF




Last Coverpoint : ['rs2_h0_val == -1', 'rs1_h1_val == -257']
Last Code Sequence : 
	-[0x80001288]:KHMBB16 t6, t5, t4
	-[0x8000128c]:sd t6, 608(ra)
Current Store : [0x80001290] : sd t5, 616(ra) -- Store: [0x80003638]:0x00800005FEFFFFFA




Last Coverpoint : ['rs1_h3_val == -513', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x800012c0]:KHMBB16 t6, t5, t4
	-[0x800012c4]:sd t6, 624(ra)
Current Store : [0x800012c8] : sd t5, 632(ra) -- Store: [0x80003648]:0xFDFFF7FF0005FFBF




Last Coverpoint : ['rs2_h3_val == 2']
Last Code Sequence : 
	-[0x800012fc]:KHMBB16 t6, t5, t4
	-[0x80001300]:sd t6, 640(ra)
Current Store : [0x80001304] : sd t5, 648(ra) -- Store: [0x80003658]:0x4000FFFA0002FFFD




Last Coverpoint : ['rs2_h2_val == -1025', 'rs2_h1_val == 4096']
Last Code Sequence : 
	-[0x80001340]:KHMBB16 t6, t5, t4
	-[0x80001344]:sd t6, 656(ra)
Current Store : [0x80001348] : sd t5, 664(ra) -- Store: [0x80003668]:0xFFFD02001000FFBF




Last Coverpoint : ['rs1_h3_val == 4']
Last Code Sequence : 
	-[0x8000137c]:KHMBB16 t6, t5, t4
	-[0x80001380]:sd t6, 672(ra)
Current Store : [0x80001384] : sd t5, 680(ra) -- Store: [0x80003678]:0x000400404000FFFD




Last Coverpoint : ['rs2_h2_val == -33']
Last Code Sequence : 
	-[0x800013b4]:KHMBB16 t6, t5, t4
	-[0x800013b8]:sd t6, 688(ra)
Current Store : [0x800013bc] : sd t5, 696(ra) -- Store: [0x80003688]:0x00404000FFF6FFF7




Last Coverpoint : ['rs2_h2_val == -21846', 'rs1_h3_val == 1']
Last Code Sequence : 
	-[0x800013ec]:KHMBB16 t6, t5, t4
	-[0x800013f0]:sd t6, 704(ra)
Current Store : [0x800013f4] : sd t5, 712(ra) -- Store: [0x80003698]:0x00010100FFFA8000




Last Coverpoint : ['rs2_h3_val == -1']
Last Code Sequence : 
	-[0x80001418]:KHMBB16 t6, t5, t4
	-[0x8000141c]:sd t6, 720(ra)
Current Store : [0x80001420] : sd t5, 728(ra) -- Store: [0x800036a8]:0x0000FFBFFFFC0006




Last Coverpoint : ['rs1_h2_val == 32767']
Last Code Sequence : 
	-[0x80001444]:KHMBB16 t6, t5, t4
	-[0x80001448]:sd t6, 736(ra)
Current Store : [0x8000144c] : sd t5, 744(ra) -- Store: [0x800036b8]:0xFFFA7FFFFFF7FFFF




Last Coverpoint : ['rs2_h2_val == 16384']
Last Code Sequence : 
	-[0x8000147c]:KHMBB16 t6, t5, t4
	-[0x80001480]:sd t6, 752(ra)
Current Store : [0x80001484] : sd t5, 760(ra) -- Store: [0x800036c8]:0x0400000510002000




Last Coverpoint : ['rs2_h2_val == 1024', 'rs2_h1_val == 1024']
Last Code Sequence : 
	-[0x800014b8]:KHMBB16 t6, t5, t4
	-[0x800014bc]:sd t6, 768(ra)
Current Store : [0x800014c0] : sd t5, 776(ra) -- Store: [0x800036d8]:0xFFBF2000FFBF7FFF




Last Coverpoint : ['rs2_h2_val == 512']
Last Code Sequence : 
	-[0x800014f4]:KHMBB16 t6, t5, t4
	-[0x800014f8]:sd t6, 784(ra)
Current Store : [0x800014fc] : sd t5, 792(ra) -- Store: [0x800036e8]:0xFFFFBFFF0020EFFF




Last Coverpoint : ['rs1_h2_val == -17']
Last Code Sequence : 
	-[0x80001528]:KHMBB16 t6, t5, t4
	-[0x8000152c]:sd t6, 800(ra)
Current Store : [0x80001530] : sd t5, 808(ra) -- Store: [0x800036f8]:0x2000FFEF00017FFF




Last Coverpoint : ['rs1_h2_val == -9']
Last Code Sequence : 
	-[0x80001564]:KHMBB16 t6, t5, t4
	-[0x80001568]:sd t6, 816(ra)
Current Store : [0x8000156c] : sd t5, 824(ra) -- Store: [0x80003708]:0xBFFFFFF7FBFFC000




Last Coverpoint : ['rs2_h2_val == 2']
Last Code Sequence : 
	-[0x800015a0]:KHMBB16 t6, t5, t4
	-[0x800015a4]:sd t6, 832(ra)
Current Store : [0x800015a8] : sd t5, 840(ra) -- Store: [0x80003718]:0xFFF700040008FFFF




Last Coverpoint : ['rs1_h2_val == 1024']
Last Code Sequence : 
	-[0x800015e0]:KHMBB16 t6, t5, t4
	-[0x800015e4]:sd t6, 848(ra)
Current Store : [0x800015e8] : sd t5, 856(ra) -- Store: [0x80003728]:0x10000400FFFAFFFB




Last Coverpoint : ['rs1_h2_val == 128']
Last Code Sequence : 
	-[0x80001610]:KHMBB16 t6, t5, t4
	-[0x80001614]:sd t6, 864(ra)
Current Store : [0x80001618] : sd t5, 872(ra) -- Store: [0x80003738]:0xFFEF008008000002




Last Coverpoint : ['rs2_h1_val == -1025']
Last Code Sequence : 
	-[0x80001648]:KHMBB16 t6, t5, t4
	-[0x8000164c]:sd t6, 880(ra)
Current Store : [0x80001650] : sd t5, 888(ra) -- Store: [0x80003748]:0x8000000700072000




Last Coverpoint : ['rs1_h2_val == 16']
Last Code Sequence : 
	-[0x80001674]:KHMBB16 t6, t5, t4
	-[0x80001678]:sd t6, 896(ra)
Current Store : [0x8000167c] : sd t5, 904(ra) -- Store: [0x80003758]:0xFFFC0010EFFFFFFD




Last Coverpoint : ['rs1_h2_val == 2']
Last Code Sequence : 
	-[0x800016b0]:KHMBB16 t6, t5, t4
	-[0x800016b4]:sd t6, 912(ra)
Current Store : [0x800016b8] : sd t5, 920(ra) -- Store: [0x80003768]:0x00080002FFFCFEFF




Last Coverpoint : ['rs2_h1_val == -17', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x800016dc]:KHMBB16 t6, t5, t4
	-[0x800016e0]:sd t6, 928(ra)
Current Store : [0x800016e4] : sd t5, 936(ra) -- Store: [0x80003778]:0x0010F7FF04000008




Last Coverpoint : ['rs1_h2_val == 1', 'rs1_h1_val == -17']
Last Code Sequence : 
	-[0x80001714]:KHMBB16 t6, t5, t4
	-[0x80001718]:sd t6, 944(ra)
Current Store : [0x8000171c] : sd t5, 952(ra) -- Store: [0x80003788]:0x7FFF0001FFEFFFF9




Last Coverpoint : ['opcode : khmbb16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == -5', 'rs2_h0_val == 4096', 'rs1_h3_val == -129', 'rs1_h2_val == 0', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x8000174c]:KHMBB16 t6, t5, t4
	-[0x80001750]:sd t6, 960(ra)
Current Store : [0x80001754] : sd t5, 968(ra) -- Store: [0x80003798]:0xFF7F0000FFF8FFFB




Last Coverpoint : ['rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x80001780]:KHMBB16 t6, t5, t4
	-[0x80001784]:sd t6, 976(ra)
Current Store : [0x80001788] : sd t5, 984(ra) -- Store: [0x800037a8]:0xFFFCFFF77FFFFFEF




Last Coverpoint : ['rs1_h1_val == -513']
Last Code Sequence : 
	-[0x800017c0]:KHMBB16 t6, t5, t4
	-[0x800017c4]:sd t6, 992(ra)
Current Store : [0x800017c8] : sd t5, 1000(ra) -- Store: [0x800037b8]:0x0200FFF9FDFFFFFC




Last Coverpoint : ['rs2_h3_val == 1', 'rs1_h1_val == -33']
Last Code Sequence : 
	-[0x800017ec]:KHMBB16 t6, t5, t4
	-[0x800017f0]:sd t6, 1008(ra)
Current Store : [0x800017f4] : sd t5, 1016(ra) -- Store: [0x800037c8]:0xFFFA0100FFDFFFEF




Last Coverpoint : ['rs2_h1_val == 64']
Last Code Sequence : 
	-[0x80001820]:KHMBB16 t6, t5, t4
	-[0x80001824]:sd t6, 1024(ra)
Current Store : [0x80001828] : sd t5, 1032(ra) -- Store: [0x800037d8]:0x5555BFFFFFFFFFF7




Last Coverpoint : ['opcode : khmbb16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 512', 'rs2_h0_val == 1024', 'rs1_h3_val == 512', 'rs1_h2_val == 2048', 'rs1_h1_val == -9', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x8000185c]:KHMBB16 t6, t5, t4
	-[0x80001860]:sd t6, 1040(ra)
Current Store : [0x80001864] : sd t5, 1048(ra) -- Store: [0x800037e8]:0x02000800FFF70008




Last Coverpoint : ['opcode : khmbb16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h3_val == -129', 'rs2_h2_val == 64', 'rs2_h1_val == 8192', 'rs2_h0_val == 0', 'rs1_h3_val == -17', 'rs1_h2_val == -4097', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80001888]:KHMBB16 t6, t5, t4
	-[0x8000188c]:sd t6, 1056(ra)
Current Store : [0x80001890] : sd t5, 1064(ra) -- Store: [0x800037f8]:0xFFEFEFFFFFF60100




Last Coverpoint : ['opcode : khmbb16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == 64', 'rs2_h2_val == -3', 'rs2_h0_val == -2049', 'rs1_h3_val == -5', 'rs1_h2_val == -513', 'rs1_h1_val == 8', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x800018c4]:KHMBB16 t6, t5, t4
	-[0x800018c8]:sd t6, 1072(ra)
Current Store : [0x800018cc] : sd t5, 1080(ra) -- Store: [0x80003808]:0xFFFBFDFF0008F7FF




Last Coverpoint : ['rs1_h3_val == -2']
Last Code Sequence : 
	-[0x800018f8]:KHMBB16 t6, t5, t4
	-[0x800018fc]:sd t6, 1088(ra)
Current Store : [0x80001900] : sd t5, 1096(ra) -- Store: [0x80003818]:0xFFFEFBFF0003FFBF





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

|s.no|            signature             |                                                                                                                                                                                                                                                                            coverpoints                                                                                                                                                                                                                                                                            |                                 code                                  |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000000000200|- opcode : khmbb16<br> - rs1 : x22<br> - rs2 : x22<br> - rd : x9<br> - rs1 == rs2 != rd<br> - rs1_h3_val == rs2_h3_val<br> - rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs1_h2_val == rs2_h2_val<br> - rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h3_val == 2048<br> - rs2_h1_val == 0<br> - rs2_h0_val == 4096<br> - rs1_h3_val == 2048<br> - rs1_h1_val == 0<br> - rs1_h0_val == 4096<br>                                                                    |[0x800003cc]:KHMBB16 s1, s6, s6<br> [0x800003d0]:sd s1, 0(s2)<br>      |
|   2|[0x80003220]<br>0x00001FFF00000020|- rs1 : x2<br> - rs2 : x2<br> - rd : x2<br> - rs1 == rs2 == rd<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs2_h3_val == 512<br> - rs2_h0_val == 1024<br> - rs1_h3_val == 512<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                       |[0x80000408]:KHMBB16 sp, sp, sp<br> [0x8000040c]:sd sp, 16(s2)<br>     |
|   3|[0x80003230]<br>0xFFFFFFFF00000000|- rs1 : x30<br> - rs2 : x1<br> - rd : x12<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h3_val != rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val > 0<br> - rs1_h2_val != rs2_h2_val<br> - rs1_h2_val < 0 and rs2_h2_val > 0<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h3_val == 32767<br> - rs2_h2_val == 1<br> - rs2_h1_val == -5<br> - rs2_h0_val == -2049<br> - rs1_h2_val == -8193<br> - rs1_h1_val == 4096<br> - rs1_h0_val == -9<br> |[0x80000444]:KHMBB16 a2, t5, ra<br> [0x80000448]:sd a2, 32(s2)<br>     |
|   4|[0x80003240]<br>0xFFFFFFFF00000000|- rs1 : x31<br> - rs2 : x13<br> - rd : x31<br> - rs1 == rd != rs2<br> - rs1_h3_val < 0 and rs2_h3_val < 0<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs2_h2_val == 32767<br> - rs2_h1_val == -2<br> - rs1_h3_val == -3<br> - rs1_h2_val == -1<br> - rs1_h1_val == -5<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                               |[0x8000047c]:KHMBB16 t6, t6, a3<br> [0x80000480]:sd t6, 48(s2)<br>     |
|   5|[0x80003250]<br>0x00000000FFFFFFFC|- rs1 : x6<br> - rs2 : x10<br> - rd : x10<br> - rs2 == rd != rs1<br> - rs1_h3_val > 0 and rs2_h3_val < 0<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h3_val == -9<br> - rs2_h2_val == 0<br> - rs2_h1_val == -129<br> - rs1_h3_val == 8<br> - rs1_h1_val == -32768<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                              |[0x800004b0]:KHMBB16 a0, t1, a0<br> [0x800004b4]:sd a0, 64(s2)<br>     |
|   6|[0x80003260]<br>0x0000080000000040|- rs1 : x4<br> - rs2 : x5<br> - rd : x17<br> - rs1_h2_val < 0 and rs2_h2_val < 0<br> - rs2_h3_val == 32<br> - rs2_h2_val == -8193<br> - rs2_h1_val == -3<br> - rs2_h0_val == 256<br> - rs1_h3_val == -8193<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                            |[0x800004ec]:KHMBB16 a7, tp, t0<br> [0x800004f0]:sd a7, 80(s2)<br>     |
|   7|[0x80003270]<br>0xFFFFFFFF00000001|- rs1 : x20<br> - rs2 : x15<br> - rd : x27<br> - rs1_h2_val > 0 and rs2_h2_val < 0<br> - rs2_h2_val == -5<br> - rs2_h0_val == -8193<br> - rs1_h2_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000528]:KHMBB16 s11, s4, a5<br> [0x8000052c]:sd s11, 96(s2)<br>   |
|   8|[0x80003280]<br>0xFFFFFFFF00000001|- rs1 : x28<br> - rs2 : x20<br> - rd : x15<br> - rs2_h3_val == -8193<br> - rs2_h1_val == 512<br> - rs2_h0_val == 8<br> - rs1_h2_val == -2049<br> - rs1_h1_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000560]:KHMBB16 a5, t3, s4<br> [0x80000564]:sd a5, 112(s2)<br>    |
|   9|[0x80003290]<br>0xFFFFF80000000000|- rs1 : x19<br> - rs2 : x28<br> - rd : x11<br> - rs2_h3_val == 16384<br> - rs2_h2_val == 4096<br> - rs2_h0_val == 32<br> - rs1_h3_val == -257<br> - rs1_h1_val == 32<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                    |[0x80000598]:KHMBB16 a1, s3, t3<br> [0x8000059c]:sd a1, 128(s2)<br>    |
|  10|[0x800032a0]<br>0x0000000000000000|- rs1 : x9<br> - rs2 : x3<br> - rd : x8<br> - rs2_h3_val == -21846<br> - rs2_h2_val == -257<br> - rs2_h1_val == -33<br> - rs2_h0_val == -129<br> - rs1_h3_val == 64<br> - rs1_h1_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                    |[0x800005d4]:KHMBB16 fp, s1, gp<br> [0x800005d8]:sd fp, 144(s2)<br>    |
|  11|[0x800032b0]<br>0xFFFFFFFF00000003|- rs1 : x16<br> - rs2 : x25<br> - rd : x19<br> - rs2_h3_val == 21845<br> - rs2_h2_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x8000060c]:KHMBB16 s3, a6, s9<br> [0x80000610]:sd s3, 160(s2)<br>    |
|  12|[0x800032c0]<br>0xFFFFFFFF00000000|- rs1 : x5<br> - rs2 : x4<br> - rd : x14<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs2_h3_val == -16385<br> - rs2_h1_val == 21845<br> - rs1_h3_val == -16385<br> - rs1_h2_val == -65<br> - rs1_h1_val == -8193<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                       |[0x80000654]:KHMBB16 a4, t0, tp<br> [0x80000658]:sd a4, 176(s2)<br>    |
|  13|[0x800032d0]<br>0x00000000FFFFFFEF|- rs1 : x26<br> - rs2 : x21<br> - rd : x28<br> - rs2_h3_val == -4097<br> - rs2_h1_val == -257<br> - rs2_h0_val == -16385<br> - rs1_h3_val == 128<br> - rs1_h2_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000690]:KHMBB16 t3, s10, s5<br> [0x80000694]:sd t3, 192(s2)<br>   |
|  14|[0x800032e0]<br>0x00000000FFFFFFFF|- rs1 : x7<br> - rs2 : x17<br> - rd : x6<br> - rs2_h3_val == -2049<br> - rs2_h2_val == -9<br> - rs2_h1_val == 256<br> - rs2_h0_val == -3<br> - rs1_h2_val == -129<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                        |[0x800006cc]:KHMBB16 t1, t2, a7<br> [0x800006d0]:sd t1, 208(s2)<br>    |
|  15|[0x800032f0]<br>0xFFFFFFFF00000000|- rs1 : x3<br> - rs2 : x31<br> - rd : x16<br> - rs2_h3_val == -1025<br> - rs2_h2_val == 8<br> - rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000700]:KHMBB16 a6, gp, t6<br> [0x80000704]:sd a6, 0(sp)<br>      |
|  16|[0x80003300]<br>0x00000004FFFFFFF8|- rs1 : x23<br> - rs2 : x29<br> - rd : x5<br> - rs1_h0_val == -32768<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h3_val == -513<br> - rs1_h2_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000738]:KHMBB16 t0, s7, t4<br> [0x8000073c]:sd t0, 16(sp)<br>     |
|  17|[0x80003310]<br>0xFFFFFFFF00001FFF|- rs1 : x18<br> - rs2 : x30<br> - rd : x13<br> - rs2_h3_val == -257<br> - rs2_h0_val == 32767<br> - rs1_h3_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000770]:KHMBB16 a3, s2, t5<br> [0x80000774]:sd a3, 32(sp)<br>     |
|  18|[0x80003320]<br>0x0000000000000000|- rs1 : x1<br> - rs2 : x7<br> - rd : x0<br> - rs2_h3_val == -129<br> - rs2_h2_val == 64<br> - rs2_h1_val == 8192<br> - rs2_h0_val == 0<br> - rs1_h3_val == -17<br> - rs1_h2_val == -4097<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                               |[0x8000079c]:KHMBB16 zero, ra, t2<br> [0x800007a0]:sd zero, 48(sp)<br> |
|  19|[0x80003330]<br>0xFFFFFFFF00000000|- rs1 : x15<br> - rs2 : x24<br> - rd : x18<br> - rs2_h3_val == -65<br> - rs2_h2_val == -513<br> - rs2_h1_val == 4<br> - rs1_h3_val == -33<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                             |[0x800007d0]:KHMBB16 s2, a5, s8<br> [0x800007d4]:sd s2, 64(sp)<br>     |
|  20|[0x80003340]<br>0x00000000FFFFFFFF|- rs1 : x13<br> - rs2 : x6<br> - rd : x30<br> - rs2_h3_val == -33<br> - rs2_h2_val == -129<br> - rs2_h1_val == 16384<br> - rs2_h0_val == 4<br> - rs1_h3_val == -32768<br> - rs1_h1_val == 1024<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                                          |[0x80000804]:KHMBB16 t5, a3, t1<br> [0x80000808]:sd t5, 80(sp)<br>     |
|  21|[0x80003350]<br>0x0000000000000001|- rs1 : x17<br> - rs2 : x9<br> - rd : x7<br> - rs2_h3_val == -17<br> - rs1_h3_val == -1<br> - rs1_h2_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000838]:KHMBB16 t2, a7, s1<br> [0x8000083c]:sd t2, 96(sp)<br>     |
|  22|[0x80003360]<br>0x0000555600000000|- rs1 : x29<br> - rs2 : x18<br> - rd : x1<br> - rs2_h3_val == -5<br> - rs2_h2_val == -32768<br> - rs2_h1_val == 32767<br> - rs1_h3_val == 32767<br> - rs1_h2_val == -21846<br> - rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                                                             |[0x80000874]:KHMBB16 ra, t4, s2<br> [0x80000878]:sd ra, 112(sp)<br>    |
|  23|[0x80003370]<br>0x000007FF00000006|- rs1 : x14<br> - rs2 : x19<br> - rd : x24<br> - rs2_h3_val == -3<br> - rs2_h1_val == 2048<br> - rs1_h3_val == 256<br> - rs1_h2_val == 4096<br> - rs1_h1_val == -2049<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                |[0x800008a8]:KHMBB16 s8, a4, s3<br> [0x800008ac]:sd s8, 128(sp)<br>    |
|  24|[0x80003380]<br>0xFFFFFFFE00000000|- rs1 : x11<br> - rs2 : x23<br> - rd : x26<br> - rs2_h3_val == -2<br> - rs1_h3_val == 16384<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800008dc]:KHMBB16 s10, a1, s7<br> [0x800008e0]:sd s10, 144(sp)<br>  |
|  25|[0x80003390]<br>0x0000000000000002|- rs1 : x27<br> - rs2 : x12<br> - rd : x4<br> - rs2_h3_val == -32768<br> - rs2_h2_val == -3<br> - rs2_h1_val == -16385<br> - rs2_h0_val == -17<br> - rs1_h1_val == -3<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                |[0x80000918]:KHMBB16 tp, s11, a2<br> [0x8000091c]:sd tp, 160(sp)<br>   |
|  26|[0x800033a0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x24<br> - rs2 : x8<br> - rd : x23<br> - rs2_h3_val == 8192<br> - rs1_h3_val == -1025<br> - rs1_h2_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x8000095c]:KHMBB16 s7, s8, fp<br> [0x80000960]:sd s7, 176(sp)<br>    |
|  27|[0x800033b0]<br>0x0000004000000000|- rs1 : x8<br> - rs2 : x27<br> - rd : x21<br> - rs2_h3_val == 4096<br> - rs2_h2_val == 128<br> - rs1_h3_val == -65<br> - rs1_h2_val == 16384<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000990]:KHMBB16 s5, fp, s11<br> [0x80000994]:sd s5, 192(sp)<br>   |
|  28|[0x800033c0]<br>0xFFFFEFFFFFFFFFFD|- rs1 : x10<br> - rs2 : x16<br> - rd : x20<br> - rs2_h3_val == 1024<br> - rs2_h2_val == -16385<br> - rs2_h1_val == 32<br> - rs2_h0_val == 16384<br> - rs1_h2_val == 8192<br> - rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                             |[0x800009c8]:KHMBB16 s4, a0, a6<br> [0x800009cc]:sd s4, 208(sp)<br>    |
|  29|[0x800033d0]<br>0x0000000100000000|- rs1 : x12<br> - rs2 : x26<br> - rd : x22<br> - rs2_h3_val == 256<br> - rs2_h2_val == 8192<br> - rs2_h1_val == -32768<br> - rs1_h3_val == 2<br> - rs1_h1_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000a04]:KHMBB16 s6, a2, s10<br> [0x80000a08]:sd s6, 0(ra)<br>     |
|  30|[0x800033e0]<br>0x00000000FFFFFFBF|- rs1 : x21<br> - rs2 : x11<br> - rd : x29<br> - rs2_h3_val == 128<br> - rs2_h2_val == 2048<br> - rs2_h0_val == 512<br> - rs1_h2_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000a40]:KHMBB16 t4, s5, a1<br> [0x80000a44]:sd t4, 16(ra)<br>     |
|  31|[0x800033f0]<br>0x0000000000000000|- rs1 : x25<br> - rs2 : x0<br> - rd : x3<br> - rs2_h3_val == 0<br> - rs1_h3_val == -5<br> - rs1_h2_val == -513<br> - rs1_h1_val == 8<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000a7c]:KHMBB16 gp, s9, zero<br> [0x80000a80]:sd gp, 32(ra)<br>   |
|  32|[0x80003400]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x14<br> - rd : x25<br> - rs2_h3_val == 16<br> - rs2_h1_val == 128<br> - rs2_h0_val == -21846<br> - rs1_h3_val == 0<br> - rs1_h2_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                          |[0x80000ab0]:KHMBB16 s9, zero, a4<br> [0x80000ab4]:sd s9, 48(ra)<br>   |
|  33|[0x80003410]<br>0x0000000A00000000|- rs2_h3_val == 8<br> - rs2_h1_val == -2049<br> - rs1_h2_val == -32768<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000aec]:KHMBB16 t6, t5, t4<br> [0x80000af0]:sd t6, 64(ra)<br>     |
|  34|[0x80003420]<br>0x0000000000000000|- rs2_h3_val == 4<br> - rs2_h2_val == 16<br> - rs2_h0_val == -9<br> - rs1_h2_val == 8<br> - rs1_h1_val == 128<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000b20]:KHMBB16 t6, t5, t4<br> [0x80000b24]:sd t6, 80(ra)<br>     |
|  35|[0x80003430]<br>0xFFFFFFFF00000000|- rs2_h2_val == 32<br> - rs1_h3_val == -4097<br> - rs1_h2_val == -3<br> - rs1_h1_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000b54]:KHMBB16 t6, t5, t4<br> [0x80000b58]:sd t6, 96(ra)<br>     |
|  36|[0x80003440]<br>0xFFFFFFFFFFFFFFFF|- rs2_h2_val == -2<br> - rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000b90]:KHMBB16 t6, t5, t4<br> [0x80000b94]:sd t6, 112(ra)<br>    |
|  37|[0x80003450]<br>0x00000020FFFFFFFB|- rs2_h2_val == 256<br> - rs2_h0_val == -65<br> - rs1_h3_val == -129<br> - rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000bcc]:KHMBB16 t6, t5, t4<br> [0x80000bd0]:sd t6, 128(ra)<br>    |
|  38|[0x80003460]<br>0xFFFFFFE000001000|- rs2_h1_val == -513<br> - rs1_h3_val == 32<br> - rs1_h1_val == 4<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000c04]:KHMBB16 t6, t5, t4<br> [0x80000c08]:sd t6, 144(ra)<br>    |
|  39|[0x80003470]<br>0x00000000FFFFFFFF|- rs2_h0_val == 2<br> - rs1_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000c34]:KHMBB16 t6, t5, t4<br> [0x80000c38]:sd t6, 160(ra)<br>    |
|  40|[0x80003480]<br>0xFFFFFFEA00000000|- rs2_h2_val == 21845<br> - rs1_h2_val == -33<br> - rs1_h1_val == 1<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000c70]:KHMBB16 t6, t5, t4<br> [0x80000c74]:sd t6, 176(ra)<br>    |
|  41|[0x80003490]<br>0xFFFFFFFE00000002|- rs1_h3_val == 1024<br> - rs1_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000ca8]:KHMBB16 t6, t5, t4<br> [0x80000cac]:sd t6, 192(ra)<br>    |
|  42|[0x800034a0]<br>0x0000000000002AAB|- rs2_h2_val == -65<br> - rs1_h3_val == 4096<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000ce4]:KHMBB16 t6, t5, t4<br> [0x80000ce8]:sd t6, 208(ra)<br>    |
|  43|[0x800034b0]<br>0x0000000000002000|- rs2_h1_val == -21846<br> - rs1_h2_val == 512<br> - rs1_h1_val == -21846<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000d2c]:KHMBB16 t6, t5, t4<br> [0x80000d30]:sd t6, 224(ra)<br>    |
|  44|[0x800034c0]<br>0x0000000000000004|- rs2_h1_val == -4097<br> - rs2_h0_val == -513<br> - rs1_h2_val == 256<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000d68]:KHMBB16 t6, t5, t4<br> [0x80000d6c]:sd t6, 240(ra)<br>    |
|  45|[0x800034d0]<br>0x0000000000000000|- rs2_h2_val == 4<br> - rs1_h2_val == 32<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000da4]:KHMBB16 t6, t5, t4<br> [0x80000da8]:sd t6, 256(ra)<br>    |
|  46|[0x800034e0]<br>0x00000000FFFFFFFF|- rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000de0]:KHMBB16 t6, t5, t4<br> [0x80000de4]:sd t6, 272(ra)<br>    |
|  47|[0x800034f0]<br>0xFFFFFF5400000000|- rs2_h1_val == 1<br> - rs1_h2_val == 21845<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000e1c]:KHMBB16 t6, t5, t4<br> [0x80000e20]:sd t6, 288(ra)<br>    |
|  48|[0x80003500]<br>0xFFFFFFFFFFFFFFFF|- rs2_h1_val == -1<br> - rs1_h3_val == -9<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000e50]:KHMBB16 t6, t5, t4<br> [0x80000e54]:sd t6, 304(ra)<br>    |
|  49|[0x80003510]<br>0xFFFFFFFF00000040|- rs2_h1_val == -9<br> - rs2_h0_val == 128<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000e88]:KHMBB16 t6, t5, t4<br> [0x80000e8c]:sd t6, 320(ra)<br>    |
|  50|[0x80003520]<br>0x0000000000000000|- rs2_h0_val == 64<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000eb4]:KHMBB16 t6, t5, t4<br> [0x80000eb8]:sd t6, 336(ra)<br>    |
|  51|[0x80003530]<br>0x0000000300000008|- rs1_h3_val == 16<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000ef4]:KHMBB16 t6, t5, t4<br> [0x80000ef8]:sd t6, 352(ra)<br>    |
|  52|[0x80003540]<br>0x00000001FFFFFFFE|- rs2_h2_val == -4097<br> - rs1_h1_val == -16385<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000f2c]:KHMBB16 t6, t5, t4<br> [0x80000f30]:sd t6, 368(ra)<br>    |
|  53|[0x80003550]<br>0x0000020000000000|- rs2_h2_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000f64]:KHMBB16 t6, t5, t4<br> [0x80000f68]:sd t6, 384(ra)<br>    |
|  54|[0x80003560]<br>0xFFFFFFFFFFFFFFFF|- rs2_h0_val == 1<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000f90]:KHMBB16 t6, t5, t4<br> [0x80000f94]:sd t6, 400(ra)<br>    |
|  55|[0x80003570]<br>0x00000040000001FF|- rs2_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000fcc]:KHMBB16 t6, t5, t4<br> [0x80000fd0]:sd t6, 416(ra)<br>    |
|  56|[0x80003580]<br>0xFFFFFFFF00000004|- rs2_h1_val == 16<br> - rs2_h0_val == 21845<br> - rs1_h3_val == 8192<br> - rs1_h2_val == -5<br> - rs1_h1_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001008]:KHMBB16 t6, t5, t4<br> [0x8000100c]:sd t6, 432(ra)<br>    |
|  57|[0x80003590]<br>0xFFFFFFFF00000000|- rs2_h1_val == 8<br> - rs2_h0_val == -4097<br> - rs1_h2_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x8000103c]:KHMBB16 t6, t5, t4<br> [0x80001040]:sd t6, 448(ra)<br>    |
|  58|[0x800035a0]<br>0xFFFFFFFF00000020|- rs2_h1_val == -65<br> - rs2_h0_val == -1025<br> - rs1_h1_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001078]:KHMBB16 t6, t5, t4<br> [0x8000107c]:sd t6, 464(ra)<br>    |
|  59|[0x800035b0]<br>0x0000000000000002|- rs2_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800010b8]:KHMBB16 t6, t5, t4<br> [0x800010bc]:sd t6, 480(ra)<br>    |
|  60|[0x800035c0]<br>0xFFFFFFF7FFFFFFFD|- rs2_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800010f4]:KHMBB16 t6, t5, t4<br> [0x800010f8]:sd t6, 496(ra)<br>    |
|  61|[0x800035d0]<br>0x0000010000000000|- rs2_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001130]:KHMBB16 t6, t5, t4<br> [0x80001134]:sd t6, 512(ra)<br>    |
|  62|[0x800035e0]<br>0x0000000000000000|- rs2_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001168]:KHMBB16 t6, t5, t4<br> [0x8000116c]:sd t6, 528(ra)<br>    |
|  63|[0x800035f0]<br>0xFFFFFFFE00001001|- rs2_h3_val == 64<br> - rs2_h0_val == -32768<br> - rs1_h3_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800011a0]:KHMBB16 t6, t5, t4<br> [0x800011a4]:sd t6, 544(ra)<br>    |
|  64|[0x80003600]<br>0xFFFFFFFFFFFFFEFF|- rs2_h1_val == -8193<br> - rs2_h0_val == 8192<br> - rs1_h1_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800011d8]:KHMBB16 t6, t5, t4<br> [0x800011dc]:sd t6, 560(ra)<br>    |
|  65|[0x80003610]<br>0xFFFFFFFF00000000|- rs2_h0_val == 2048<br> - rs1_h1_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001210]:KHMBB16 t6, t5, t4<br> [0x80001214]:sd t6, 576(ra)<br>    |
|  66|[0x80003620]<br>0x00000000FFFFFFFE|- rs2_h2_val == -1<br> - rs2_h0_val == 16<br> - rs1_h3_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001250]:KHMBB16 t6, t5, t4<br> [0x80001254]:sd t6, 592(ra)<br>    |
|  67|[0x80003630]<br>0x0000000000000000|- rs2_h0_val == -1<br> - rs1_h1_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80001288]:KHMBB16 t6, t5, t4<br> [0x8000128c]:sd t6, 608(ra)<br>    |
|  68|[0x80003640]<br>0x00000400FFFFFFFF|- rs1_h3_val == -513<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800012c0]:KHMBB16 t6, t5, t4<br> [0x800012c4]:sd t6, 624(ra)<br>    |
|  69|[0x80003650]<br>0x0000000000000000|- rs2_h3_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800012fc]:KHMBB16 t6, t5, t4<br> [0x80001300]:sd t6, 640(ra)<br>    |
|  70|[0x80003660]<br>0xFFFFFFEF00000000|- rs2_h2_val == -1025<br> - rs2_h1_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001340]:KHMBB16 t6, t5, t4<br> [0x80001344]:sd t6, 656(ra)<br>    |
|  71|[0x80003670]<br>0x0000000000000000|- rs1_h3_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x8000137c]:KHMBB16 t6, t5, t4<br> [0x80001380]:sd t6, 672(ra)<br>    |
|  72|[0x80003680]<br>0xFFFFFFEF00000000|- rs2_h2_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800013b4]:KHMBB16 t6, t5, t4<br> [0x800013b8]:sd t6, 688(ra)<br>    |
|  73|[0x80003690]<br>0xFFFFFF55FFFFAAAB|- rs2_h2_val == -21846<br> - rs1_h3_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800013ec]:KHMBB16 t6, t5, t4<br> [0x800013f0]:sd t6, 704(ra)<br>    |
|  74|[0x800036a0]<br>0x0000000000000000|- rs2_h3_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001418]:KHMBB16 t6, t5, t4<br> [0x8000141c]:sd t6, 720(ra)<br>    |
|  75|[0x800036b0]<br>0xFFFFFFBFFFFFFFFF|- rs1_h2_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001444]:KHMBB16 t6, t5, t4<br> [0x80001448]:sd t6, 736(ra)<br>    |
|  76|[0x800036c0]<br>0x00000002FFFFFFDF|- rs2_h2_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x8000147c]:KHMBB16 t6, t5, t4<br> [0x80001480]:sd t6, 752(ra)<br>    |
|  77|[0x800036d0]<br>0x000001000000007F|- rs2_h2_val == 1024<br> - rs2_h1_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800014b8]:KHMBB16 t6, t5, t4<br> [0x800014bc]:sd t6, 768(ra)<br>    |
|  78|[0x800036e0]<br>0xFFFFFEFFFFFFFF7F|- rs2_h2_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800014f4]:KHMBB16 t6, t5, t4<br> [0x800014f8]:sd t6, 784(ra)<br>    |
|  79|[0x800036f0]<br>0xFFFFFFFF00000002|- rs1_h2_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001528]:KHMBB16 t6, t5, t4<br> [0x8000152c]:sd t6, 800(ra)<br>    |
|  80|[0x80003700]<br>0xFFFFFFFFFFFFD555|- rs1_h2_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001564]:KHMBB16 t6, t5, t4<br> [0x80001568]:sd t6, 816(ra)<br>    |
|  81|[0x80003710]<br>0x00000000FFFFFFFF|- rs2_h2_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800015a0]:KHMBB16 t6, t5, t4<br> [0x800015a4]:sd t6, 832(ra)<br>    |
|  82|[0x80003720]<br>0x0000000000000000|- rs1_h2_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800015e0]:KHMBB16 t6, t5, t4<br> [0x800015e4]:sd t6, 848(ra)<br>    |
|  83|[0x80003730]<br>0xFFFFFF8000000000|- rs1_h2_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001610]:KHMBB16 t6, t5, t4<br> [0x80001614]:sd t6, 864(ra)<br>    |
|  84|[0x80003740]<br>0x0000000000000020|- rs2_h1_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001648]:KHMBB16 t6, t5, t4<br> [0x8000164c]:sd t6, 880(ra)<br>    |
|  85|[0x80003750]<br>0x00000000FFFFFFFF|- rs1_h2_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001674]:KHMBB16 t6, t5, t4<br> [0x80001678]:sd t6, 896(ra)<br>    |
|  86|[0x80003760]<br>0xFFFFFFFFFFFFFFEF|- rs1_h2_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800016b0]:KHMBB16 t6, t5, t4<br> [0x800016b4]:sd t6, 912(ra)<br>    |
|  87|[0x80003770]<br>0x00000000FFFFFFFF|- rs2_h1_val == -17<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800016dc]:KHMBB16 t6, t5, t4<br> [0x800016e0]:sd t6, 928(ra)<br>    |
|  88|[0x80003780]<br>0x00000000FFFFFFFF|- rs1_h2_val == 1<br> - rs1_h1_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001714]:KHMBB16 t6, t5, t4<br> [0x80001718]:sd t6, 944(ra)<br>    |
|  89|[0x800037a0]<br>0x00000000FFFFFFFF|- rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001780]:KHMBB16 t6, t5, t4<br> [0x80001784]:sd t6, 976(ra)<br>    |
|  90|[0x800037b0]<br>0x0000000700000002|- rs1_h1_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800017c0]:KHMBB16 t6, t5, t4<br> [0x800017c4]:sd t6, 992(ra)<br>    |
|  91|[0x800037c0]<br>0xFFFFFFFF00000000|- rs2_h3_val == 1<br> - rs1_h1_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800017ec]:KHMBB16 t6, t5, t4<br> [0x800017f0]:sd t6, 1008(ra)<br>   |
|  92|[0x800037d0]<br>0xFFFFFBFFFFFFFFFF|- rs2_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001820]:KHMBB16 t6, t5, t4<br> [0x80001824]:sd t6, 1024(ra)<br>   |
|  93|[0x80003810]<br>0x000000000000002B|- rs1_h3_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800018f8]:KHMBB16 t6, t5, t4<br> [0x800018fc]:sd t6, 1088(ra)<br>   |
