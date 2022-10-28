
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001a30')]      |
| SIG_REGION                | [('0x80003210', '0x80003870', '204 dwords')]      |
| COV_LABELS                | kmaxda      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kmaxda-01.S    |
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
      [0x80001974]:KMAXDA t6, t5, t4
      [0x80001978]:sd t6, 1072(ra)
 -- Signature Address: 0x80003830 Data: 0xC2A7A3197FFFBFF3
 -- Redundant Coverpoints hit by the op
      - opcode : kmaxda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val == rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h3_val == -2
      - rs2_h2_val == -129
      - rs2_h0_val == 2048
      - rs1_h3_val == -2




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800019e8]:KMAXDA t6, t5, t4
      [0x800019ec]:sd t6, 1104(ra)
 -- Signature Address: 0x80003850 Data: 0xC0A75F157FE7A04D
 -- Redundant Coverpoints hit by the op
      - opcode : kmaxda
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
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h3_val == -513
      - rs2_h2_val == -2049
      - rs2_h1_val == -9
      - rs2_h0_val == 512
      - rs1_h3_val == -3
      - rs1_h2_val == 8
      - rs1_h1_val == 1024




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a18]:KMAXDA t6, t5, t4
      [0x80001a1c]:sd t6, 1120(ra)
 -- Signature Address: 0x80003860 Data: 0xC0A7A7607FF7AA9E
 -- Redundant Coverpoints hit by the op
      - opcode : kmaxda
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h3_val == -9
      - rs2_h2_val == -33
      - rs2_h1_val == -513
      - rs1_h3_val == -2
      - rs1_h2_val == -2049
      - rs1_h0_val == -2049






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmaxda', 'rs1 : x4', 'rs2 : x4', 'rd : x6', 'rs1 == rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val == rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 256', 'rs2_h2_val == -65', 'rs2_h1_val == -21846', 'rs2_h0_val == 21845', 'rs1_h3_val == 256', 'rs1_h2_val == -65', 'rs1_h1_val == -21846', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x800003d8]:KMAXDA t1, tp, tp
	-[0x800003dc]:sd t1, 0(gp)
Current Store : [0x800003e0] : sd tp, 8(gp) -- Store: [0x80003218]:0x0100FFBFAAAA5555




Last Coverpoint : ['rs1 : x27', 'rs2 : x27', 'rd : x27', 'rs1 == rs2 == rd', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs2_h3_val == -2', 'rs2_h2_val == -129', 'rs2_h0_val == 2048', 'rs1_h3_val == -2', 'rs1_h2_val == -129', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000414]:KMAXDA s11, s11, s11
	-[0x80000418]:sd s11, 16(gp)
Current Store : [0x8000041c] : sd s11, 24(gp) -- Store: [0x80003228]:0xFFFF018300033800




Last Coverpoint : ['rs1 : x14', 'rs2 : x21', 'rd : x1', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h2_val == -8193', 'rs2_h1_val == 0', 'rs1_h3_val == 4096', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x8000044c]:KMAXDA ra, a4, s5
	-[0x80000450]:sd ra, 32(gp)
Current Store : [0x80000454] : sd a4, 40(gp) -- Store: [0x80003238]:0x1000FFF90005EFFF




Last Coverpoint : ['rs1 : x30', 'rs2 : x11', 'rd : x30', 'rs1 == rd != rs2', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == 21845', 'rs2_h2_val == -33', 'rs2_h1_val == 1', 'rs2_h0_val == 32', 'rs1_h3_val == 8', 'rs1_h2_val == -4097', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000484]:KMAXDA t5, t5, a1
	-[0x80000488]:sd t5, 48(gp)
Current Store : [0x8000048c] : sd t5, 56(gp) -- Store: [0x80003248]:0xFAB349A2FFF9FEDE




Last Coverpoint : ['rs1 : x31', 'rs2 : x29', 'rd : x29', 'rs2 == rd != rs1', 'rs2_h3_val == 1024', 'rs2_h2_val == -5', 'rs2_h1_val == 512', 'rs2_h0_val == -513', 'rs1_h3_val == 4', 'rs1_h2_val == -5', 'rs1_h1_val == 1024', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x800004c0]:KMAXDA t4, t6, t4
	-[0x800004c4]:sd t4, 64(gp)
Current Store : [0x800004c8] : sd t6, 72(gp) -- Store: [0x80003258]:0x0004FFFB0400BFFF




Last Coverpoint : ['rs1 : x9', 'rs2 : x26', 'rd : x20', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs2_h3_val == 2048', 'rs2_h2_val == 8192', 'rs2_h0_val == 4', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x800004fc]:KMAXDA s4, s1, s10
	-[0x80000500]:sd s4, 80(gp)
Current Store : [0x80000504] : sd s1, 88(gp) -- Store: [0x80003268]:0xFFFCFF7F00070010




Last Coverpoint : ['rs1 : x15', 'rs2 : x12', 'rd : x16', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == -5', 'rs2_h2_val == 8', 'rs2_h1_val == -17', 'rs2_h0_val == -1025', 'rs1_h3_val == 21845', 'rs1_h2_val == 4096', 'rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x80000538]:KMAXDA a6, a5, a2
	-[0x8000053c]:sd a6, 96(gp)
Current Store : [0x80000540] : sd a5, 104(gp) -- Store: [0x80003278]:0x5555100010000800




Last Coverpoint : ['rs1 : x10', 'rs2 : x30', 'rd : x31', 'rs2_h3_val == 128', 'rs2_h2_val == 2', 'rs2_h1_val == 4096', 'rs2_h0_val == 1024', 'rs1_h2_val == -1025', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x80000564]:KMAXDA t6, a0, t5
	-[0x80000568]:sd t6, 112(gp)
Current Store : [0x8000056c] : sd a0, 120(gp) -- Store: [0x80003288]:0xFFF8FBFF10000080




Last Coverpoint : ['rs1 : x11', 'rs2 : x15', 'rd : x10', 'rs2_h3_val == -129', 'rs2_h2_val == 16384', 'rs2_h1_val == -8193', 'rs1_h3_val == 32', 'rs1_h2_val == -8193', 'rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x800005a0]:KMAXDA a0, a1, a5
	-[0x800005a4]:sd a0, 128(gp)
Current Store : [0x800005a8] : sd a1, 136(gp) -- Store: [0x80003298]:0x0020DFFFDFFF5555




Last Coverpoint : ['rs1 : x21', 'rs2 : x14', 'rd : x13', 'rs2_h3_val == -21846', 'rs2_h2_val == 1024', 'rs1_h3_val == 64', 'rs1_h1_val == -129', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x800005e4]:KMAXDA a3, s5, a4
	-[0x800005e8]:sd a3, 144(gp)
Current Store : [0x800005ec] : sd s5, 152(gp) -- Store: [0x800032a8]:0x0040FFF6FF7FFFFD




Last Coverpoint : ['rs1 : x28', 'rs2 : x0', 'rd : x17', 'rs2_h3_val == 0', 'rs2_h2_val == 0', 'rs2_h0_val == 0', 'rs1_h1_val == 8192', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x8000061c]:KMAXDA a7, t3, zero
	-[0x80000620]:sd a7, 160(gp)
Current Store : [0x80000624] : sd t3, 168(gp) -- Store: [0x800032b8]:0x0006FBFF20000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x22', 'rd : x4', 'rs2_h3_val == -16385', 'rs1_h2_val == 8', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000660]:KMAXDA tp, sp, s6
	-[0x80000664]:sd tp, 176(gp)
Current Store : [0x80000668] : sd sp, 184(gp) -- Store: [0x800032c8]:0xFFFE000800070400




Last Coverpoint : ['rs1 : x22', 'rs2 : x13', 'rd : x9', 'rs2_h3_val == -8193', 'rs2_h0_val == 256', 'rs1_h2_val == -3', 'rs1_h1_val == -3', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000694]:KMAXDA s1, s6, a3
	-[0x80000698]:sd s1, 192(gp)
Current Store : [0x8000069c] : sd s6, 200(gp) -- Store: [0x800032d8]:0x0100FFFDFFFDFFBF




Last Coverpoint : ['rs1 : x25', 'rs2 : x20', 'rd : x7', 'rs2_h3_val == -4097', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x800006d0]:KMAXDA t2, s9, s4
	-[0x800006d4]:sd t2, 208(gp)
Current Store : [0x800006d8] : sd s9, 216(gp) -- Store: [0x800032e8]:0x010000073FFF0001




Last Coverpoint : ['rs1 : x18', 'rs2 : x23', 'rd : x8', 'rs2_h3_val == -2049', 'rs2_h2_val == -21846', 'rs2_h0_val == 8', 'rs1_h3_val == 2048']
Last Code Sequence : 
	-[0x80000708]:KMAXDA fp, s2, s7
	-[0x8000070c]:sd fp, 224(gp)
Current Store : [0x80000710] : sd s2, 232(gp) -- Store: [0x800032f8]:0x0800DFFFAAAA0000




Last Coverpoint : ['rs1 : x19', 'rs2 : x3', 'rd : x24', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs2_h3_val == -1025', 'rs2_h2_val == -2049', 'rs2_h1_val == -5', 'rs2_h0_val == -32768', 'rs1_h3_val == 16', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000748]:KMAXDA s8, s3, gp
	-[0x8000074c]:sd s8, 0(tp)
Current Store : [0x80000750] : sd s3, 8(tp) -- Store: [0x80003308]:0x001000092000FFF7




Last Coverpoint : ['rs1 : x0', 'rs2 : x28', 'rd : x19', 'rs2_h3_val == -513', 'rs2_h1_val == -9', 'rs2_h0_val == 512', 'rs1_h3_val == 0', 'rs1_h2_val == 0', 'rs1_h1_val == 0']
Last Code Sequence : 
	-[0x80000784]:KMAXDA s3, zero, t3
	-[0x80000788]:sd s3, 16(tp)
Current Store : [0x8000078c] : sd zero, 24(tp) -- Store: [0x80003318]:0x0000000000000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x5', 'rd : x28', 'rs2_h3_val == -257', 'rs2_h2_val == 16', 'rs2_h0_val == 64', 'rs1_h1_val == 2048', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x800007c0]:KMAXDA t3, s7, t0
	-[0x800007c4]:sd t3, 32(tp)
Current Store : [0x800007c8] : sd s7, 40(tp) -- Store: [0x80003328]:0xC000FFBF08007FFF




Last Coverpoint : ['rs1 : x24', 'rs2 : x17', 'rd : x21', 'rs2_h3_val == -65', 'rs2_h2_val == -4097', 'rs2_h0_val == 2', 'rs1_h3_val == -65', 'rs1_h1_val == 16384', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x800007f4]:KMAXDA s5, s8, a7
	-[0x800007f8]:sd s5, 48(tp)
Current Store : [0x800007fc] : sd s8, 56(tp) -- Store: [0x80003338]:0xFFBF00094000FFFF




Last Coverpoint : ['rs1 : x26', 'rs2 : x10', 'rd : x23', 'rs2_h3_val == -33', 'rs1_h1_val == -513']
Last Code Sequence : 
	-[0x8000082c]:KMAXDA s7, s10, a0
	-[0x80000830]:sd s7, 64(tp)
Current Store : [0x80000834] : sd s10, 72(tp) -- Store: [0x80003348]:0x1000DFFFFDFF0009




Last Coverpoint : ['rs1 : x17', 'rs2 : x2', 'rd : x14', 'rs2_h3_val == -17', 'rs2_h2_val == 32767', 'rs2_h1_val == -513', 'rs2_h0_val == -129', 'rs1_h1_val == 64', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000860]:KMAXDA a4, a7, sp
	-[0x80000864]:sd a4, 80(tp)
Current Store : [0x80000868] : sd a7, 88(tp) -- Store: [0x80003358]:0x000900080040DFFF




Last Coverpoint : ['rs1 : x3', 'rs2 : x18', 'rd : x0', 'rs2_h3_val == -9', 'rs1_h2_val == -2049', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000890]:KMAXDA zero, gp, s2
	-[0x80000894]:sd zero, 96(tp)
Current Store : [0x80000898] : sd gp, 104(tp) -- Store: [0x80003368]:0xFFFEF7FFFFF6F7FF




Last Coverpoint : ['rs1 : x6', 'rs2 : x25', 'rd : x11', 'rs2_h3_val == -3', 'rs2_h2_val == -3', 'rs1_h2_val == -17']
Last Code Sequence : 
	-[0x800008c4]:KMAXDA a1, t1, s9
	-[0x800008c8]:sd a1, 112(tp)
Current Store : [0x800008cc] : sd t1, 120(tp) -- Store: [0x80003378]:0x0009FFEF1000FFFC




Last Coverpoint : ['rs1 : x1', 'rs2 : x24', 'rd : x12', 'rs2_h3_val == -32768', 'rs2_h2_val == -1025', 'rs1_h3_val == -5', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000900]:KMAXDA a2, ra, s8
	-[0x80000904]:sd a2, 128(tp)
Current Store : [0x80000908] : sd ra, 136(tp) -- Store: [0x80003388]:0xFFFB00080008FFFA




Last Coverpoint : ['rs1 : x20', 'rs2 : x7', 'rd : x22', 'rs2_h3_val == 16384', 'rs2_h0_val == 16384', 'rs1_h3_val == -32768', 'rs1_h2_val == 4', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x8000093c]:KMAXDA s6, s4, t2
	-[0x80000940]:sd s6, 144(tp)
Current Store : [0x80000944] : sd s4, 152(tp) -- Store: [0x80003398]:0x80000004FFF91000




Last Coverpoint : ['rs1 : x29', 'rs2 : x6', 'rd : x26', 'rs2_h3_val == 8192', 'rs2_h1_val == 256', 'rs1_h3_val == -3', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80000974]:KMAXDA s10, t4, t1
	-[0x80000978]:sd s10, 160(tp)
Current Store : [0x8000097c] : sd t4, 168(tp) -- Store: [0x800033a8]:0xFFFDFF7FFFF60004




Last Coverpoint : ['rs1 : x16', 'rs2 : x31', 'rd : x25', 'rs2_h3_val == 4096', 'rs2_h2_val == 21845', 'rs2_h1_val == 32767', 'rs1_h3_val == -16385', 'rs1_h2_val == -16385']
Last Code Sequence : 
	-[0x800009b0]:KMAXDA s9, a6, t6
	-[0x800009b4]:sd s9, 176(tp)
Current Store : [0x800009b8] : sd a6, 184(tp) -- Store: [0x800033b8]:0xBFFFBFFF0800EFFF




Last Coverpoint : ['rs1 : x8', 'rs2 : x1', 'rd : x5', 'rs2_h3_val == 512', 'rs2_h2_val == -17', 'rs2_h0_val == -4097', 'rs1_h3_val == -2049', 'rs1_h2_val == 64']
Last Code Sequence : 
	-[0x800009ec]:KMAXDA t0, fp, ra
	-[0x800009f0]:sd t0, 192(tp)
Current Store : [0x800009f4] : sd fp, 200(tp) -- Store: [0x800033c8]:0xF7FF004004000009




Last Coverpoint : ['rs1 : x5', 'rs2 : x8', 'rd : x2', 'rs2_h3_val == 64', 'rs1_h3_val == 2', 'rs1_h2_val == -513']
Last Code Sequence : 
	-[0x80000a28]:KMAXDA sp, t0, fp
	-[0x80000a2c]:sd sp, 208(tp)
Current Store : [0x80000a30] : sd t0, 216(tp) -- Store: [0x800033d8]:0x0002FDFFFDFF3FFF




Last Coverpoint : ['rs1 : x7', 'rs2 : x16', 'rd : x15', 'rs2_h3_val == 32', 'rs2_h0_val == -5', 'rs1_h2_val == 21845']
Last Code Sequence : 
	-[0x80000a64]:KMAXDA a5, t2, a6
	-[0x80000a68]:sd a5, 224(tp)
Current Store : [0x80000a6c] : sd t2, 232(tp) -- Store: [0x800033e8]:0x000255550006FFFC




Last Coverpoint : ['rs1 : x12', 'rs2 : x9', 'rd : x18', 'rs2_h3_val == 16', 'rs2_h2_val == 256', 'rs2_h1_val == -4097', 'rs1_h3_val == 16384', 'rs1_h1_val == -9']
Last Code Sequence : 
	-[0x80000aa0]:KMAXDA s2, a2, s1
	-[0x80000aa4]:sd s2, 240(tp)
Current Store : [0x80000aa8] : sd a2, 248(tp) -- Store: [0x800033f8]:0x40005555FFF7FFFA




Last Coverpoint : ['rs1 : x13', 'rs2 : x19', 'rd : x3', 'rs2_h3_val == 8', 'rs2_h0_val == -8193', 'rs1_h3_val == 512', 'rs1_h2_val == 8192', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000ae4]:KMAXDA gp, a3, s3
	-[0x80000ae8]:sd gp, 0(ra)
Current Store : [0x80000aec] : sd a3, 8(ra) -- Store: [0x80003408]:0x020020000009FBFF




Last Coverpoint : ['rs2_h3_val == 4', 'rs2_h2_val == 4096', 'rs2_h0_val == -33', 'rs1_h3_val == -513', 'rs1_h1_val == 512']
Last Code Sequence : 
	-[0x80000b24]:KMAXDA t6, t5, t4
	-[0x80000b28]:sd t6, 16(ra)
Current Store : [0x80000b2c] : sd t5, 24(ra) -- Store: [0x80003418]:0xFDFFF7FF02005555




Last Coverpoint : ['rs2_h3_val == 2', 'rs2_h1_val == -2049', 'rs2_h0_val == 4096', 'rs1_h3_val == 32767', 'rs1_h2_val == 2048', 'rs1_h1_val == -1']
Last Code Sequence : 
	-[0x80000b54]:KMAXDA t6, t5, t4
	-[0x80000b58]:sd t6, 32(ra)
Current Store : [0x80000b5c] : sd t5, 40(ra) -- Store: [0x80003428]:0x7FFF0800FFFFFFBF




Last Coverpoint : ['rs1_h1_val == -5', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000b90]:KMAXDA t6, t5, t4
	-[0x80000b94]:sd t6, 48(ra)
Current Store : [0x80000b98] : sd t5, 56(ra) -- Store: [0x80003438]:0x0004FF7FFFFB0200




Last Coverpoint : ['rs2_h3_val == -1', 'rs2_h1_val == -257', 'rs1_h1_val == -2']
Last Code Sequence : 
	-[0x80000bc4]:KMAXDA t6, t5, t4
	-[0x80000bc8]:sd t6, 64(ra)
Current Store : [0x80000bcc] : sd t5, 72(ra) -- Store: [0x80003448]:0x0002FFF8FFFE0005




Last Coverpoint : ['rs1_h1_val == -32768', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000bf0]:KMAXDA t6, t5, t4
	-[0x80000bf4]:sd t6, 80(ra)
Current Store : [0x80000bf8] : sd t5, 88(ra) -- Store: [0x80003458]:0x0010FFBF80000008




Last Coverpoint : ['rs1_h1_val == 256']
Last Code Sequence : 
	-[0x80000c20]:KMAXDA t6, t5, t4
	-[0x80000c24]:sd t6, 96(ra)
Current Store : [0x80000c28] : sd t5, 104(ra) -- Store: [0x80003468]:0x0007000001007FFF




Last Coverpoint : ['rs2_h2_val == 32', 'rs1_h2_val == 32', 'rs1_h1_val == 128', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000c5c]:KMAXDA t6, t5, t4
	-[0x80000c60]:sd t6, 112(ra)
Current Store : [0x80000c64] : sd t5, 120(ra) -- Store: [0x80003478]:0x0200002000800040




Last Coverpoint : ['rs2_h1_val == -65', 'rs2_h0_val == -9', 'rs1_h1_val == 32', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000c90]:KMAXDA t6, t5, t4
	-[0x80000c94]:sd t6, 128(ra)
Current Store : [0x80000c98] : sd t5, 136(ra) -- Store: [0x80003488]:0xC000F7FF0020FFFE




Last Coverpoint : ['rs1_h0_val == -32768', 'rs2_h2_val == 512', 'rs1_h1_val == 16']
Last Code Sequence : 
	-[0x80000cc8]:KMAXDA t6, t5, t4
	-[0x80000ccc]:sd t6, 144(ra)
Current Store : [0x80000cd0] : sd t5, 152(ra) -- Store: [0x80003498]:0xFFFEFDFF00108000




Last Coverpoint : ['rs2_h1_val == -1025', 'rs1_h1_val == 4']
Last Code Sequence : 
	-[0x80000d00]:KMAXDA t6, t5, t4
	-[0x80000d04]:sd t6, 160(ra)
Current Store : [0x80000d08] : sd t5, 168(ra) -- Store: [0x800034a8]:0x0100000500040004




Last Coverpoint : ['rs2_h1_val == -32768', 'rs2_h0_val == -1', 'rs1_h1_val == 2']
Last Code Sequence : 
	-[0x80000d3c]:KMAXDA t6, t5, t4
	-[0x80000d40]:sd t6, 176(ra)
Current Store : [0x80000d44] : sd t5, 184(ra) -- Store: [0x800034b8]:0x00003FFF0002F7FF




Last Coverpoint : ['rs2_h1_val == 4', 'rs1_h1_val == 1']
Last Code Sequence : 
	-[0x80000d70]:KMAXDA t6, t5, t4
	-[0x80000d74]:sd t6, 192(ra)
Current Store : [0x80000d78] : sd t5, 200(ra) -- Store: [0x800034c8]:0x0000555500011000




Last Coverpoint : ['rs2_h2_val == -32768']
Last Code Sequence : 
	-[0x80000da4]:KMAXDA t6, t5, t4
	-[0x80000da8]:sd t6, 208(ra)
Current Store : [0x80000dac] : sd t5, 216(ra) -- Store: [0x800034d8]:0x0008FFF60000FBFF




Last Coverpoint : ['rs1_h1_val == -17', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000de0]:KMAXDA t6, t5, t4
	-[0x80000de4]:sd t6, 224(ra)
Current Store : [0x80000de8] : sd t5, 232(ra) -- Store: [0x800034e8]:0x0020FFF9FFEFAAAA




Last Coverpoint : ['rs2_h2_val == -257', 'rs1_h3_val == -1025', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000e18]:KMAXDA t6, t5, t4
	-[0x80000e1c]:sd t6, 240(ra)
Current Store : [0x80000e20] : sd t5, 248(ra) -- Store: [0x800034f8]:0xFBFFFFF60080FDFF




Last Coverpoint : ['rs1_h3_val == 1024', 'rs1_h1_val == 32767', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000e44]:KMAXDA t6, t5, t4
	-[0x80000e48]:sd t6, 256(ra)
Current Store : [0x80000e4c] : sd t5, 264(ra) -- Store: [0x80003508]:0x040000207FFFFEFF




Last Coverpoint : ['rs2_h2_val == -2', 'rs1_h3_val == -33', 'rs1_h2_val == -1', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000e7c]:KMAXDA t6, t5, t4
	-[0x80000e80]:sd t6, 272(ra)
Current Store : [0x80000e84] : sd t5, 280(ra) -- Store: [0x80003518]:0xFFDFFFFF0006FF7F




Last Coverpoint : ['rs2_h2_val == 128', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000eb4]:KMAXDA t6, t5, t4
	-[0x80000eb8]:sd t6, 288(ra)
Current Store : [0x80000ebc] : sd t5, 296(ra) -- Store: [0x80003528]:0x0200FFFDFF7FFFEF




Last Coverpoint : ['rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000ee4]:KMAXDA t6, t5, t4
	-[0x80000ee8]:sd t6, 304(ra)
Current Store : [0x80000eec] : sd t5, 312(ra) -- Store: [0x80003538]:0x0020FFFFDFFFFFFB




Last Coverpoint : ['rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000f1c]:KMAXDA t6, t5, t4
	-[0x80000f20]:sd t6, 320(ra)
Current Store : [0x80000f24] : sd t5, 328(ra) -- Store: [0x80003548]:0x0005FFF900014000




Last Coverpoint : ['rs2_h1_val == 2', 'rs1_h1_val == -16385', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000f5c]:KMAXDA t6, t5, t4
	-[0x80000f60]:sd t6, 336(ra)
Current Store : [0x80000f64] : sd t5, 344(ra) -- Store: [0x80003558]:0x5555EFFFBFFF2000




Last Coverpoint : ['rs2_h0_val == 128', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000f98]:KMAXDA t6, t5, t4
	-[0x80000f9c]:sd t6, 352(ra)
Current Store : [0x80000fa0] : sd t5, 360(ra) -- Store: [0x80003568]:0xFFFAFFF800040100




Last Coverpoint : ['rs2_h0_val == -65', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80000fc4]:KMAXDA t6, t5, t4
	-[0x80000fc8]:sd t6, 368(ra)
Current Store : [0x80000fcc] : sd t5, 376(ra) -- Store: [0x80003578]:0xFFFA000700400020




Last Coverpoint : ['rs2_h1_val == -3', 'rs1_h1_val == -33', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000ffc]:KMAXDA t6, t5, t4
	-[0x80001000]:sd t6, 384(ra)
Current Store : [0x80001004] : sd t5, 392(ra) -- Store: [0x80003588]:0x0100FBFFFFDF0002




Last Coverpoint : ['rs2_h3_val == 1']
Last Code Sequence : 
	-[0x80001030]:KMAXDA t6, t5, t4
	-[0x80001034]:sd t6, 400(ra)
Current Store : [0x80001038] : sd t5, 408(ra) -- Store: [0x80003598]:0x3FFF000600407FFF




Last Coverpoint : ['rs2_h1_val == -1', 'rs2_h0_val == -17']
Last Code Sequence : 
	-[0x80001060]:KMAXDA t6, t5, t4
	-[0x80001064]:sd t6, 416(ra)
Current Store : [0x80001068] : sd t5, 424(ra) -- Store: [0x800035a8]:0x0006FFF8FDFF5555




Last Coverpoint : ['rs2_h0_val == -21846']
Last Code Sequence : 
	-[0x8000109c]:KMAXDA t6, t5, t4
	-[0x800010a0]:sd t6, 432(ra)
Current Store : [0x800010a4] : sd t5, 440(ra) -- Store: [0x800035b8]:0xFFF800200007FFF6




Last Coverpoint : ['rs2_h0_val == 32767', 'rs1_h2_val == -21846']
Last Code Sequence : 
	-[0x800010dc]:KMAXDA t6, t5, t4
	-[0x800010e0]:sd t6, 448(ra)
Current Store : [0x800010e4] : sd t5, 456(ra) -- Store: [0x800035c8]:0x0006AAAAFFF6FFEF




Last Coverpoint : ['rs2_h0_val == -16385']
Last Code Sequence : 
	-[0x80001114]:KMAXDA t6, t5, t4
	-[0x80001118]:sd t6, 464(ra)
Current Store : [0x8000111c] : sd t5, 472(ra) -- Store: [0x800035d8]:0x002000090008C000




Last Coverpoint : ['rs2_h0_val == -2049', 'rs1_h2_val == 32767']
Last Code Sequence : 
	-[0x8000114c]:KMAXDA t6, t5, t4
	-[0x80001150]:sd t6, 480(ra)
Current Store : [0x80001154] : sd t5, 488(ra) -- Store: [0x800035e8]:0x00107FFFFFFEFFFE




Last Coverpoint : ['rs2_h0_val == -3', 'rs1_h2_val == 1']
Last Code Sequence : 
	-[0x80001178]:KMAXDA t6, t5, t4
	-[0x8000117c]:sd t6, 496(ra)
Current Store : [0x80001180] : sd t5, 504(ra) -- Store: [0x800035f8]:0xF7FF0001C0000200




Last Coverpoint : ['rs2_h0_val == -2', 'rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x800011ac]:KMAXDA t6, t5, t4
	-[0x800011b0]:sd t6, 512(ra)
Current Store : [0x800011b4] : sd t5, 520(ra) -- Store: [0x80003608]:0xFFFEFFFA5555BFFF




Last Coverpoint : ['rs2_h1_val == -2', 'rs2_h0_val == 8192', 'rs1_h2_val == 16']
Last Code Sequence : 
	-[0x800011e4]:KMAXDA t6, t5, t4
	-[0x800011e8]:sd t6, 528(ra)
Current Store : [0x800011ec] : sd t5, 536(ra) -- Store: [0x80003618]:0x040000100004DFFF




Last Coverpoint : ['rs2_h3_val == 32767', 'rs2_h0_val == 16']
Last Code Sequence : 
	-[0x80001218]:KMAXDA t6, t5, t4
	-[0x8000121c]:sd t6, 544(ra)
Current Store : [0x80001220] : sd t5, 552(ra) -- Store: [0x80003628]:0xF7FF100040000200




Last Coverpoint : ['rs2_h0_val == 1', 'rs1_h2_val == -9']
Last Code Sequence : 
	-[0x80001254]:KMAXDA t6, t5, t4
	-[0x80001258]:sd t6, 560(ra)
Current Store : [0x8000125c] : sd t5, 568(ra) -- Store: [0x80003638]:0x0040FFF7FF7F0040




Last Coverpoint : ['rs1_h3_val == -21846']
Last Code Sequence : 
	-[0x80001290]:KMAXDA t6, t5, t4
	-[0x80001294]:sd t6, 576(ra)
Current Store : [0x80001298] : sd t5, 584(ra) -- Store: [0x80003648]:0xAAAABFFF00040010




Last Coverpoint : ['rs2_h1_val == -16385', 'rs1_h3_val == -8193']
Last Code Sequence : 
	-[0x800012c8]:KMAXDA t6, t5, t4
	-[0x800012cc]:sd t6, 592(ra)
Current Store : [0x800012d0] : sd t5, 600(ra) -- Store: [0x80003658]:0xDFFF100008000008




Last Coverpoint : ['rs2_h1_val == 8192', 'rs1_h3_val == -4097']
Last Code Sequence : 
	-[0x80001300]:KMAXDA t6, t5, t4
	-[0x80001304]:sd t6, 608(ra)
Current Store : [0x80001308] : sd t5, 616(ra) -- Store: [0x80003668]:0xEFFF0040FFFFDFFF




Last Coverpoint : ['rs2_h1_val == 32', 'rs1_h3_val == -257']
Last Code Sequence : 
	-[0x8000133c]:KMAXDA t6, t5, t4
	-[0x80001340]:sd t6, 624(ra)
Current Store : [0x80001344] : sd t5, 632(ra) -- Store: [0x80003678]:0xFEFF0800FFF60080




Last Coverpoint : ['rs1_h3_val == -129']
Last Code Sequence : 
	-[0x8000137c]:KMAXDA t6, t5, t4
	-[0x80001380]:sd t6, 640(ra)
Current Store : [0x80001384] : sd t5, 648(ra) -- Store: [0x80003688]:0xFF7F00090100F7FF




Last Coverpoint : ['rs1_h3_val == -9']
Last Code Sequence : 
	-[0x800013b8]:KMAXDA t6, t5, t4
	-[0x800013bc]:sd t6, 656(ra)
Current Store : [0x800013c0] : sd t5, 664(ra) -- Store: [0x80003698]:0xFFF70003FFFBFFFC




Last Coverpoint : ['rs1_h3_val == 8192']
Last Code Sequence : 
	-[0x800013ec]:KMAXDA t6, t5, t4
	-[0x800013f0]:sd t6, 672(ra)
Current Store : [0x800013f4] : sd t5, 680(ra) -- Store: [0x800036a8]:0x2000FF7F0007FFDF




Last Coverpoint : ['rs2_h2_val == -16385', 'rs1_h2_val == -257']
Last Code Sequence : 
	-[0x80001420]:KMAXDA t6, t5, t4
	-[0x80001424]:sd t6, 688(ra)
Current Store : [0x80001428] : sd t5, 696(ra) -- Store: [0x800036b8]:0x1000FEFF00000009




Last Coverpoint : ['rs2_h1_val == 64', 'rs1_h3_val == 128']
Last Code Sequence : 
	-[0x80001454]:KMAXDA t6, t5, t4
	-[0x80001458]:sd t6, 704(ra)
Current Store : [0x8000145c] : sd t5, 712(ra) -- Store: [0x800036c8]:0x00800800DFFFFFF7




Last Coverpoint : ['rs2_h2_val == -513']
Last Code Sequence : 
	-[0x80001498]:KMAXDA t6, t5, t4
	-[0x8000149c]:sd t6, 720(ra)
Current Store : [0x800014a0] : sd t5, 728(ra) -- Store: [0x800036d8]:0x8000FFFD4000FBFF




Last Coverpoint : ['rs1_h3_val == 1', 'rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x800014cc]:KMAXDA t6, t5, t4
	-[0x800014d0]:sd t6, 736(ra)
Current Store : [0x800014d4] : sd t5, 744(ra) -- Store: [0x800036e8]:0x00010010F7FFFBFF




Last Coverpoint : ['rs2_h2_val == -9', 'rs1_h3_val == -1']
Last Code Sequence : 
	-[0x8000150c]:KMAXDA t6, t5, t4
	-[0x80001510]:sd t6, 752(ra)
Current Store : [0x80001514] : sd t5, 760(ra) -- Store: [0x800036f8]:0xFFFFDFFF00040800




Last Coverpoint : ['rs2_h2_val == 64']
Last Code Sequence : 
	-[0x80001548]:KMAXDA t6, t5, t4
	-[0x8000154c]:sd t6, 768(ra)
Current Store : [0x80001550] : sd t5, 776(ra) -- Store: [0x80003708]:0xFFDF0008FFF80006




Last Coverpoint : ['rs1_h2_val == -33']
Last Code Sequence : 
	-[0x8000157c]:KMAXDA t6, t5, t4
	-[0x80001580]:sd t6, 784(ra)
Current Store : [0x80001584] : sd t5, 792(ra) -- Store: [0x80003718]:0xFFBFFFDFFFF7FFFF




Last Coverpoint : ['rs2_h2_val == 4', 'rs1_h2_val == 1024', 'rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x800015b8]:KMAXDA t6, t5, t4
	-[0x800015bc]:sd t6, 800(ra)
Current Store : [0x800015c0] : sd t5, 808(ra) -- Store: [0x80003728]:0x00030400FBFF0008




Last Coverpoint : ['rs2_h2_val == 1', 'rs2_h1_val == 1024', 'rs1_h2_val == 16384']
Last Code Sequence : 
	-[0x800015f0]:KMAXDA t6, t5, t4
	-[0x800015f4]:sd t6, 816(ra)
Current Store : [0x800015f8] : sd t5, 824(ra) -- Store: [0x80003738]:0x0005400000000800




Last Coverpoint : ['rs1_h2_val == -2']
Last Code Sequence : 
	-[0x8000161c]:KMAXDA t6, t5, t4
	-[0x80001620]:sd t6, 832(ra)
Current Store : [0x80001624] : sd t5, 840(ra) -- Store: [0x80003748]:0xFF7FFFFEFFFFFEFF




Last Coverpoint : ['rs2_h1_val == -129', 'rs1_h2_val == -32768']
Last Code Sequence : 
	-[0x8000165c]:KMAXDA t6, t5, t4
	-[0x80001660]:sd t6, 848(ra)
Current Store : [0x80001664] : sd t5, 856(ra) -- Store: [0x80003758]:0xBFFF800004002000




Last Coverpoint : ['rs2_h2_val == -1']
Last Code Sequence : 
	-[0x80001688]:KMAXDA t6, t5, t4
	-[0x8000168c]:sd t6, 864(ra)
Current Store : [0x80001690] : sd t5, 872(ra) -- Store: [0x80003768]:0xFDFFAAAA0000EFFF




Last Coverpoint : ['rs2_h1_val == 21845', 'rs1_h2_val == 256']
Last Code Sequence : 
	-[0x800016c0]:KMAXDA t6, t5, t4
	-[0x800016c4]:sd t6, 880(ra)
Current Store : [0x800016c8] : sd t5, 888(ra) -- Store: [0x80003778]:0xFF7F0100FFF71000




Last Coverpoint : ['rs1_h2_val == 512']
Last Code Sequence : 
	-[0x800016f8]:KMAXDA t6, t5, t4
	-[0x800016fc]:sd t6, 896(ra)
Current Store : [0x80001700] : sd t5, 904(ra) -- Store: [0x80003788]:0x02000200FFFD4000




Last Coverpoint : ['rs1_h2_val == 128']
Last Code Sequence : 
	-[0x8000172c]:KMAXDA t6, t5, t4
	-[0x80001730]:sd t6, 912(ra)
Current Store : [0x80001734] : sd t5, 920(ra) -- Store: [0x80003798]:0xFF7F008010000007




Last Coverpoint : ['rs2_h1_val == -33']
Last Code Sequence : 
	-[0x80001768]:KMAXDA t6, t5, t4
	-[0x8000176c]:sd t6, 928(ra)
Current Store : [0x80001770] : sd t5, 936(ra) -- Store: [0x800037a8]:0x040040000800FDFF




Last Coverpoint : ['rs1_h2_val == 2']
Last Code Sequence : 
	-[0x800017a4]:KMAXDA t6, t5, t4
	-[0x800017a8]:sd t6, 944(ra)
Current Store : [0x800017ac] : sd t5, 952(ra) -- Store: [0x800037b8]:0x0080000200040400




Last Coverpoint : ['rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x800017d8]:KMAXDA t6, t5, t4
	-[0x800017dc]:sd t6, 960(ra)
Current Store : [0x800017e0] : sd t5, 968(ra) -- Store: [0x800037c8]:0xFDFF0005EFFFFFEF




Last Coverpoint : ['rs2_h1_val == 2048']
Last Code Sequence : 
	-[0x80001814]:KMAXDA t6, t5, t4
	-[0x80001818]:sd t6, 976(ra)
Current Store : [0x8000181c] : sd t5, 984(ra) -- Store: [0x800037d8]:0xDFFF3FFFFFFA0040




Last Coverpoint : ['rs1_h1_val == -257']
Last Code Sequence : 
	-[0x8000184c]:KMAXDA t6, t5, t4
	-[0x80001850]:sd t6, 992(ra)
Current Store : [0x80001854] : sd t5, 1000(ra) -- Store: [0x800037e8]:0x00020003FEFFF7FF




Last Coverpoint : ['rs2_h1_val == 128']
Last Code Sequence : 
	-[0x80001888]:KMAXDA t6, t5, t4
	-[0x8000188c]:sd t6, 1008(ra)
Current Store : [0x80001890] : sd t5, 1016(ra) -- Store: [0x800037f8]:0xFEFF00800100FFFE




Last Coverpoint : ['rs2_h1_val == 16', 'rs1_h1_val == -65']
Last Code Sequence : 
	-[0x800018bc]:KMAXDA t6, t5, t4
	-[0x800018c0]:sd t6, 1024(ra)
Current Store : [0x800018c4] : sd t5, 1032(ra) -- Store: [0x80003808]:0x0006FFFDFFBF2000




Last Coverpoint : ['rs2_h1_val == 8']
Last Code Sequence : 
	-[0x800018f8]:KMAXDA t6, t5, t4
	-[0x800018fc]:sd t6, 1040(ra)
Current Store : [0x80001900] : sd t5, 1048(ra) -- Store: [0x80003818]:0x7FFF7FFFFFF63FFF




Last Coverpoint : ['rs1_h3_val == -17']
Last Code Sequence : 
	-[0x80001938]:KMAXDA t6, t5, t4
	-[0x8000193c]:sd t6, 1056(ra)
Current Store : [0x80001940] : sd t5, 1064(ra) -- Store: [0x80003828]:0xFFEF0010FFFC8000




Last Coverpoint : ['opcode : kmaxda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == -2', 'rs2_h2_val == -129', 'rs2_h0_val == 2048', 'rs1_h3_val == -2']
Last Code Sequence : 
	-[0x80001974]:KMAXDA t6, t5, t4
	-[0x80001978]:sd t6, 1072(ra)
Current Store : [0x8000197c] : sd t5, 1080(ra) -- Store: [0x80003838]:0xFFFEFFF9FFF8FFFC




Last Coverpoint : ['rs2_h2_val == 2048', 'rs2_h1_val == 16384', 'rs2_h0_val == -257']
Last Code Sequence : 
	-[0x800019ac]:KMAXDA t6, t5, t4
	-[0x800019b0]:sd t6, 1088(ra)
Current Store : [0x800019b4] : sd t5, 1096(ra) -- Store: [0x80003848]:0x0006FBFF20000000




Last Coverpoint : ['opcode : kmaxda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == -513', 'rs2_h2_val == -2049', 'rs2_h1_val == -9', 'rs2_h0_val == 512', 'rs1_h3_val == -3', 'rs1_h2_val == 8', 'rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x800019e8]:KMAXDA t6, t5, t4
	-[0x800019ec]:sd t6, 1104(ra)
Current Store : [0x800019f0] : sd t5, 1112(ra) -- Store: [0x80003858]:0xFFFD00080400FFF6




Last Coverpoint : ['opcode : kmaxda', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == -9', 'rs2_h2_val == -33', 'rs2_h1_val == -513', 'rs1_h3_val == -2', 'rs1_h2_val == -2049', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80001a18]:KMAXDA t6, t5, t4
	-[0x80001a1c]:sd t6, 1120(ra)
Current Store : [0x80001a20] : sd t5, 1128(ra) -- Store: [0x80003868]:0xFFFEF7FFFFF6F7FF





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

|s.no|            signature             |                                                                                                                                                                                                                                                                                          coverpoints                                                                                                                                                                                                                                                                                          |                                 code                                 |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80003210]<br>0xFFFF7E0080000000|- opcode : kmaxda<br> - rs1 : x4<br> - rs2 : x4<br> - rd : x6<br> - rs1 == rs2 != rd<br> - rs1_h3_val == rs2_h3_val<br> - rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs1_h2_val == rs2_h2_val<br> - rs1_h2_val < 0 and rs2_h2_val < 0<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h3_val == 256<br> - rs2_h2_val == -65<br> - rs2_h1_val == -21846<br> - rs2_h0_val == 21845<br> - rs1_h3_val == 256<br> - rs1_h2_val == -65<br> - rs1_h1_val == -21846<br> - rs1_h0_val == 21845<br> |[0x800003d8]:KMAXDA t1, tp, tp<br> [0x800003dc]:sd t1, 0(gp)<br>      |
|   2|[0x80003220]<br>0xFFFF018300033800|- rs1 : x27<br> - rs2 : x27<br> - rd : x27<br> - rs1 == rs2 == rd<br> - rs1_h3_val < 0 and rs2_h3_val < 0<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs2_h3_val == -2<br> - rs2_h2_val == -129<br> - rs2_h0_val == 2048<br> - rs1_h3_val == -2<br> - rs1_h2_val == -129<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                        |[0x80000414]:KMAXDA s11, s11, s11<br> [0x80000418]:sd s11, 16(gp)<br> |
|   3|[0x80003230]<br>0xFCEDAEF3FEEC7EAD|- rs1 : x14<br> - rs2 : x21<br> - rd : x1<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h3_val != rs2_h3_val<br> - rs1_h3_val > 0 and rs2_h3_val < 0<br> - rs1_h2_val != rs2_h2_val<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h2_val == -8193<br> - rs2_h1_val == 0<br> - rs1_h3_val == 4096<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                     |[0x8000044c]:KMAXDA ra, a4, s5<br> [0x80000450]:sd ra, 32(gp)<br>     |
|   4|[0x80003240]<br>0xFAB349A2FFF9FEDE|- rs1 : x30<br> - rs2 : x11<br> - rd : x30<br> - rs1 == rd != rs2<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h3_val == 21845<br> - rs2_h2_val == -33<br> - rs2_h1_val == 1<br> - rs2_h0_val == 32<br> - rs1_h3_val == 8<br> - rs1_h2_val == -4097<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                   |[0x80000484]:KMAXDA t5, t5, a1<br> [0x80000488]:sd t5, 48(gp)<br>     |
|   5|[0x80003250]<br>0x0400EBE70178F7FF|- rs1 : x31<br> - rs2 : x29<br> - rd : x29<br> - rs2 == rd != rs1<br> - rs2_h3_val == 1024<br> - rs2_h2_val == -5<br> - rs2_h1_val == 512<br> - rs2_h0_val == -513<br> - rs1_h3_val == 4<br> - rs1_h2_val == -5<br> - rs1_h1_val == 1024<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                                        |[0x800004c0]:KMAXDA t4, t6, t4<br> [0x800004c4]:sd t4, 64(gp)<br>     |
|   6|[0x80003260]<br>0xB7D137DDB7D5C029|- rs1 : x9<br> - rs2 : x26<br> - rd : x20<br> - rs1_h3_val < 0 and rs2_h3_val > 0<br> - rs1_h2_val < 0 and rs2_h2_val > 0<br> - rs2_h3_val == 2048<br> - rs2_h2_val == 8192<br> - rs2_h0_val == 4<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                   |[0x800004fc]:KMAXDA s4, s1, s10<br> [0x80000500]:sd s4, 80(gp)<br>    |
|   7|[0x80003270]<br>0x7D5E58837D1B65DB|- rs1 : x15<br> - rs2 : x12<br> - rd : x16<br> - rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h3_val == -5<br> - rs2_h2_val == 8<br> - rs2_h1_val == -17<br> - rs2_h0_val == -1025<br> - rs1_h3_val == 21845<br> - rs1_h2_val == 4096<br> - rs1_h1_val == 4096<br>                                                                                                                                                                                                                                              |[0x80000538]:KMAXDA a6, a5, a2<br> [0x8000053c]:sd a6, 96(gp)<br>     |
|   8|[0x80003280]<br>0x0002FF6B0448BFFF|- rs1 : x10<br> - rs2 : x30<br> - rd : x31<br> - rs2_h3_val == 128<br> - rs2_h2_val == 2<br> - rs2_h1_val == 4096<br> - rs2_h0_val == 1024<br> - rs1_h2_val == -1025<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000564]:KMAXDA t6, a0, t5<br> [0x80000568]:sd t6, 112(gp)<br>    |
|   9|[0x80003290]<br>0x00111C80FAAA15D6|- rs1 : x11<br> - rs2 : x15<br> - rd : x10<br> - rs2_h3_val == -129<br> - rs2_h2_val == 16384<br> - rs2_h1_val == -8193<br> - rs1_h3_val == 32<br> - rs1_h2_val == -8193<br> - rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                         |[0x800005a0]:KMAXDA a0, a1, a5<br> [0x800005a4]:sd a0, 128(gp)<br>    |
|  10|[0x800032a0]<br>0xEAE44437EAE04D5B|- rs1 : x21<br> - rs2 : x14<br> - rd : x13<br> - rs2_h3_val == -21846<br> - rs2_h2_val == 1024<br> - rs1_h3_val == 64<br> - rs1_h1_val == -129<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800005e4]:KMAXDA a3, s5, a4<br> [0x800005e8]:sd a3, 144(gp)<br>    |
|  11|[0x800032b0]<br>0xBEADFEEDBEADFEED|- rs1 : x28<br> - rs2 : x0<br> - rd : x17<br> - rs2_h3_val == 0<br> - rs2_h2_val == 0<br> - rs2_h0_val == 0<br> - rs1_h1_val == 8192<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x8000061c]:KMAXDA a7, t3, zero<br> [0x80000620]:sd a7, 160(gp)<br>  |
|  12|[0x800032c0]<br>0x00FEFFB1AAEA5524|- rs1 : x2<br> - rs2 : x22<br> - rd : x4<br> - rs2_h3_val == -16385<br> - rs1_h2_val == 8<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000660]:KMAXDA tp, sp, s6<br> [0x80000664]:sd tp, 176(gp)<br>    |
|  13|[0x800032d0]<br>0xFFFD57820006FD10|- rs1 : x22<br> - rs2 : x13<br> - rd : x9<br> - rs2_h3_val == -8193<br> - rs2_h0_val == 256<br> - rs1_h2_val == -3<br> - rs1_h1_val == -3<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000694]:KMAXDA s1, s6, a3<br> [0x80000698]:sd s1, 192(gp)<br>    |
|  14|[0x800032e0]<br>0xB7FB4DF3B7FC86F7|- rs1 : x25<br> - rs2 : x20<br> - rd : x7<br> - rs2_h3_val == -4097<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800006d0]:KMAXDA t2, s9, s4<br> [0x800006d4]:sd t2, 208(gp)<br>    |
|  15|[0x800032f0]<br>0x5A53537E5BFB30CD|- rs1 : x18<br> - rs2 : x23<br> - rd : x8<br> - rs2_h3_val == -2049<br> - rs2_h2_val == -21846<br> - rs2_h0_val == 8<br> - rs1_h3_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000708]:KMAXDA fp, s2, s7<br> [0x8000070c]:sd fp, 224(gp)<br>    |
|  16|[0x80003300]<br>0xDB7CB7E4CB7D5C2A|- rs1 : x19<br> - rs2 : x3<br> - rd : x24<br> - rs1_h2_val > 0 and rs2_h2_val < 0<br> - rs2_h3_val == -1025<br> - rs2_h2_val == -2049<br> - rs2_h1_val == -5<br> - rs2_h0_val == -32768<br> - rs1_h3_val == 16<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                      |[0x80000748]:KMAXDA s8, s3, gp<br> [0x8000074c]:sd s8, 0(tp)<br>      |
|  17|[0x80003310]<br>0x001000092000FFF7|- rs1 : x0<br> - rs2 : x28<br> - rd : x19<br> - rs2_h3_val == -513<br> - rs2_h1_val == -9<br> - rs2_h0_val == 512<br> - rs1_h3_val == 0<br> - rs1_h2_val == 0<br> - rs1_h1_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000784]:KMAXDA s3, zero, t3<br> [0x80000788]:sd s3, 16(tp)<br>   |
|  18|[0x80003320]<br>0xFDFC3940FFF90200|- rs1 : x23<br> - rs2 : x5<br> - rd : x28<br> - rs2_h3_val == -257<br> - rs2_h2_val == 16<br> - rs2_h0_val == 64<br> - rs1_h1_val == 2048<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800007c0]:KMAXDA t3, s7, t0<br> [0x800007c4]:sd t3, 32(tp)<br>     |
|  19|[0x80003330]<br>0x00450DEEFF807FFD|- rs1 : x24<br> - rs2 : x17<br> - rd : x21<br> - rs2_h3_val == -65<br> - rs2_h2_val == -4097<br> - rs2_h0_val == 2<br> - rs1_h3_val == -65<br> - rs1_h1_val == 16384<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                |[0x800007f4]:KMAXDA s5, s8, a7<br> [0x800007f8]:sd s5, 48(tp)<br>     |
|  20|[0x80003340]<br>0xBE050FE007F07766|- rs1 : x26<br> - rs2 : x10<br> - rd : x23<br> - rs2_h3_val == -33<br> - rs1_h1_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x8000082c]:KMAXDA s7, s10, a0<br> [0x80000830]:sd s7, 64(tp)<br>    |
|  21|[0x80003350]<br>0xAAAE836FE03F01C4|- rs1 : x17<br> - rs2 : x2<br> - rd : x14<br> - rs2_h3_val == -17<br> - rs2_h2_val == 32767<br> - rs2_h1_val == -513<br> - rs2_h0_val == -129<br> - rs1_h1_val == 64<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000860]:KMAXDA a4, a7, sp<br> [0x80000864]:sd a4, 80(tp)<br>     |
|  22|[0x80003360]<br>0x0000000000000000|- rs1 : x3<br> - rs2 : x18<br> - rd : x0<br> - rs2_h3_val == -9<br> - rs1_h2_val == -2049<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000890]:KMAXDA zero, gp, s2<br> [0x80000894]:sd zero, 96(tp)<br> |
|  23|[0x80003370]<br>0x0020E017E0007555|- rs1 : x6<br> - rs2 : x25<br> - rd : x11<br> - rs2_h3_val == -3<br> - rs2_h2_val == -3<br> - rs1_h2_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800008c4]:KMAXDA a1, t1, s9<br> [0x800008c8]:sd a1, 112(tp)<br>    |
|  24|[0x80003380]<br>0xFFF7140DFFEF9C2F|- rs1 : x1<br> - rs2 : x24<br> - rd : x12<br> - rs2_h3_val == -32768<br> - rs2_h2_val == -1025<br> - rs1_h3_val == -5<br> - rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000900]:KMAXDA a2, ra, s8<br> [0x80000904]:sd a2, 128(tp)<br>    |
|  25|[0x80003390]<br>0x0105FFFDFDFC2FBF|- rs1 : x20<br> - rs2 : x7<br> - rd : x22<br> - rs2_h3_val == 16384<br> - rs2_h0_val == 16384<br> - rs1_h3_val == -32768<br> - rs1_h2_val == 4<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x8000093c]:KMAXDA s6, s4, t2<br> [0x80000940]:sd s6, 144(tp)<br>    |
|  26|[0x800033a0]<br>0x0FF0C0C2FDFF0189|- rs1 : x29<br> - rs2 : x6<br> - rd : x26<br> - rs2_h3_val == 8192<br> - rs2_h1_val == 256<br> - rs1_h3_val == -3<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000974]:KMAXDA s10, t4, t1<br> [0x80000978]:sd s10, 160(tp)<br>  |
|  27|[0x800033b0]<br>0xE6A85AA8B7FF6003|- rs1 : x16<br> - rs2 : x31<br> - rd : x25<br> - rs2_h3_val == 4096<br> - rs2_h2_val == 21845<br> - rs2_h1_val == 32767<br> - rs1_h3_val == -16385<br> - rs1_h2_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800009b0]:KMAXDA s9, a6, t6<br> [0x800009b4]:sd s9, 176(tp)<br>    |
|  28|[0x800033c0]<br>0xFF000821FFC08C40|- rs1 : x8<br> - rs2 : x1<br> - rd : x5<br> - rs2_h3_val == 512<br> - rs2_h2_val == -17<br> - rs2_h0_val == -4097<br> - rs1_h3_val == -2049<br> - rs1_h2_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800009ec]:KMAXDA t0, fp, ra<br> [0x800009f0]:sd t0, 192(tp)<br>    |
|  29|[0x800033d0]<br>0xFFEEFFB7FDFDF783|- rs1 : x5<br> - rs2 : x8<br> - rd : x2<br> - rs2_h3_val == 64<br> - rs1_h3_val == 2<br> - rs1_h2_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000a28]:KMAXDA sp, t0, fp<br> [0x80000a2c]:sd sp, 208(tp)<br>    |
|  30|[0x800033e0]<br>0xFF89EA98DFFF5513|- rs1 : x7<br> - rs2 : x16<br> - rd : x15<br> - rs2_h3_val == 32<br> - rs2_h0_val == -5<br> - rs1_h2_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000a64]:KMAXDA a5, t2, a6<br> [0x80000a68]:sd a5, 224(tp)<br>    |
|  31|[0x800033f0]<br>0x003D552FFE0056FE|- rs1 : x12<br> - rs2 : x9<br> - rd : x18<br> - rs2_h3_val == 16<br> - rs2_h2_val == 256<br> - rs2_h1_val == -4097<br> - rs1_h3_val == 16384<br> - rs1_h1_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000aa0]:KMAXDA s2, a2, s1<br> [0x80000aa4]:sd s2, 240(tp)<br>    |
|  32|[0x80003400]<br>0x003FF7FFFFF5EBFB|- rs1 : x13<br> - rs2 : x19<br> - rd : x3<br> - rs2_h3_val == 8<br> - rs2_h0_val == -8193<br> - rs1_h3_val == 512<br> - rs1_h2_val == 8192<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000ae4]:KMAXDA gp, a3, s3<br> [0x80000ae8]:sd gp, 0(ra)<br>      |
|  33|[0x80003410]<br>0x0FE025517FFFFFFF|- rs2_h3_val == 4<br> - rs2_h2_val == 4096<br> - rs2_h0_val == -33<br> - rs1_h3_val == -513<br> - rs1_h1_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000b24]:KMAXDA t6, t5, t4<br> [0x80000b28]:sd t6, 16(ra)<br>     |
|  34|[0x80003420]<br>0x0FDB355B7FFFFFFF|- rs2_h3_val == 2<br> - rs2_h1_val == -2049<br> - rs2_h0_val == 4096<br> - rs1_h3_val == 32767<br> - rs1_h2_val == 2048<br> - rs1_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000b54]:KMAXDA t6, t5, t4<br> [0x80000b58]:sd t6, 32(ra)<br>     |
|  35|[0x80003430]<br>0x0FDB2D637FFFFFFF|- rs1_h1_val == -5<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000b90]:KMAXDA t6, t5, t4<br> [0x80000b94]:sd t6, 48(ra)<br>     |
|  36|[0x80003440]<br>0x0FDB2D5F7FFFFFFF|- rs2_h3_val == -1<br> - rs2_h1_val == -257<br> - rs1_h1_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000bc4]:KMAXDA t6, t5, t4<br> [0x80000bc8]:sd t6, 64(ra)<br>     |
|  37|[0x80003450]<br>0x0FDB3CD07FFFFFFF|- rs1_h1_val == -32768<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000bf0]:KMAXDA t6, t5, t4<br> [0x80000bf4]:sd t6, 80(ra)<br>     |
|  38|[0x80003460]<br>0x0FDC1CD07BFF8000|- rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000c20]:KMAXDA t6, t5, t4<br> [0x80000c24]:sd t6, 96(ra)<br>     |
|  39|[0x80003470]<br>0x0FDC5B907C0F8340|- rs2_h2_val == 32<br> - rs1_h2_val == 32<br> - rs1_h1_val == 128<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000c5c]:KMAXDA t6, t5, t4<br> [0x80000c60]:sd t6, 112(ra)<br>    |
|  40|[0x80003480]<br>0xEFDCCB967C0F82A2|- rs2_h1_val == -65<br> - rs2_h0_val == -9<br> - rs1_h1_val == 32<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000c90]:KMAXDA t6, t5, t4<br> [0x80000c94]:sd t6, 128(ra)<br>    |
|  41|[0x80003490]<br>0xEFDCBB907C148312|- rs1_h0_val == -32768<br> - rs2_h2_val == 512<br> - rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000cc8]:KMAXDA t6, t5, t4<br> [0x80000ccc]:sd t6, 144(ra)<br>    |
|  42|[0x800034a0]<br>0xEFDCDB7C7C12730E|- rs2_h1_val == -1025<br> - rs1_h1_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000d00]:KMAXDA t6, t5, t4<br> [0x80000d04]:sd t6, 160(ra)<br>    |
|  43|[0x800034b0]<br>0xEFE4DB5C7FFFFFFF|- rs2_h1_val == -32768<br> - rs2_h0_val == -1<br> - rs1_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000d3c]:KMAXDA t6, t5, t4<br> [0x80000d40]:sd t6, 176(ra)<br>    |
|  44|[0x800034c0]<br>0xEFE586067FFFFFFF|- rs2_h1_val == 4<br> - rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000d70]:KMAXDA t6, t5, t4<br> [0x80000d74]:sd t6, 192(ra)<br>    |
|  45|[0x800034d0]<br>0xEFE184C67FFFFFFF|- rs2_h2_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000da4]:KMAXDA t6, t5, t4<br> [0x80000da8]:sd t6, 208(ra)<br>    |
|  46|[0x800034e0]<br>0xEFF184C27FFE5DE2|- rs1_h1_val == -17<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000de0]:KMAXDA t6, t5, t4<br> [0x80000de4]:sd t6, 224(ra)<br>    |
|  47|[0x800034f0]<br>0xEFF589E17FFE4FDB|- rs2_h2_val == -257<br> - rs1_h3_val == -1025<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000e18]:KMAXDA t6, t5, t4<br> [0x80000e1c]:sd t6, 240(ra)<br>    |
|  48|[0x80003500]<br>0xEFF569C17FFFFFFF|- rs1_h3_val == 1024<br> - rs1_h1_val == 32767<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000e44]:KMAXDA t6, t5, t4<br> [0x80000e48]:sd t6, 256(ra)<br>    |
|  49|[0x80003510]<br>0xEFF569FB7FFFFFFF|- rs2_h2_val == -2<br> - rs1_h3_val == -33<br> - rs1_h2_val == -1<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000e7c]:KMAXDA t6, t5, t4<br> [0x80000e80]:sd t6, 272(ra)<br>    |
|  50|[0x80003520]<br>0xEFF66A0A7FFFFFFF|- rs2_h2_val == 128<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000eb4]:KMAXDA t6, t5, t4<br> [0x80000eb8]:sd t6, 288(ra)<br>    |
|  51|[0x80003530]<br>0xEFF628CB7FFFFFD2|- rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000ee4]:KMAXDA t6, t5, t4<br> [0x80000ee8]:sd t6, 304(ra)<br>    |
|  52|[0x80003540]<br>0xEFF61CC67FFFFFFF|- rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000f1c]:KMAXDA t6, t5, t4<br> [0x80000f20]:sd t6, 320(ra)<br>    |
|  53|[0x80003550]<br>0xEDF4FCC77FFFFFFF|- rs2_h1_val == 2<br> - rs1_h1_val == -16385<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000f5c]:KMAXDA t6, t5, t4<br> [0x80000f60]:sd t6, 336(ra)<br>    |
|  54|[0x80003560]<br>0xEDF6BCCB7FFFFFFF|- rs2_h0_val == 128<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000f98]:KMAXDA t6, t5, t4<br> [0x80000f9c]:sd t6, 352(ra)<br>    |
|  55|[0x80003570]<br>0xEDF65CCB7FFEEF9F|- rs2_h0_val == -65<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000fc4]:KMAXDA t6, t5, t4<br> [0x80000fc8]:sd t6, 368(ra)<br>    |
|  56|[0x80003580]<br>0xEDF63FC57FFFFFFF|- rs2_h1_val == -3<br> - rs1_h1_val == -33<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000ffc]:KMAXDA t6, t5, t4<br> [0x80001000]:sd t6, 384(ra)<br>    |
|  57|[0x80003590]<br>0xEDF4FFD07EFF7F80|- rs2_h3_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001030]:KMAXDA t6, t5, t4<br> [0x80001034]:sd t6, 400(ra)<br>    |
|  58|[0x800035a0]<br>0xEDF801D27EFF4C3C|- rs2_h1_val == -1<br> - rs2_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001060]:KMAXDA t6, t5, t4<br> [0x80001064]:sd t6, 416(ra)<br>    |
|  59|[0x800035b0]<br>0xEDF805527EFCF6CE|- rs2_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x8000109c]:KMAXDA t6, t5, t4<br> [0x800010a0]:sd t6, 432(ra)<br>    |
|  60|[0x800035c0]<br>0xE8A2A5527EFDA18E|- rs2_h0_val == 32767<br> - rs1_h2_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800010dc]:KMAXDA t6, t5, t4<br> [0x800010e0]:sd t6, 448(ra)<br>    |
|  61|[0x800035d0]<br>0xE8A2A5FC7F0BE186|- rs2_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001114]:KMAXDA t6, t5, t4<br> [0x80001118]:sd t6, 464(ra)<br>    |
|  62|[0x800035e0]<br>0xC8A2658D7F0BF190|- rs2_h0_val == -2049<br> - rs1_h2_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x8000114c]:KMAXDA t6, t5, t4<br> [0x80001150]:sd t6, 480(ra)<br>    |
|  63|[0x800035f0]<br>0xC89A64967FFFFFFF|- rs2_h0_val == -3<br> - rs1_h2_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001178]:KMAXDA t6, t5, t4<br> [0x8000117c]:sd t6, 496(ra)<br>    |
|  64|[0x80003600]<br>0xC899648C5FFF1556|- rs2_h0_val == -2<br> - rs1_h1_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800011ac]:KMAXDA t6, t5, t4<br> [0x800011b0]:sd t6, 512(ra)<br>    |
|  65|[0x80003610]<br>0xC89964EC5FFFD558|- rs2_h1_val == -2<br> - rs2_h0_val == 8192<br> - rs1_h2_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800011e4]:KMAXDA t6, t5, t4<br> [0x800011e8]:sd t6, 528(ra)<br>    |
|  66|[0x80003620]<br>0xD09D5D6D5FFBD358|- rs2_h3_val == 32767<br> - rs2_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001218]:KMAXDA t6, t5, t4<br> [0x8000121c]:sd t6, 544(ra)<br>    |
|  67|[0x80003630]<br>0xD0A061735FFB9297|- rs2_h0_val == 1<br> - rs1_h2_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001254]:KMAXDA t6, t5, t4<br> [0x80001258]:sd t6, 560(ra)<br>    |
|  68|[0x80003640]<br>0xCCA2A6CD5FFB8EC7|- rs1_h3_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001290]:KMAXDA t6, t5, t4<br> [0x80001294]:sd t6, 576(ra)<br>    |
|  69|[0x80003650]<br>0xCBA1B6C65DF98EBF|- rs2_h1_val == -16385<br> - rs1_h3_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800012c8]:KMAXDA t6, t5, t4<br> [0x800012cc]:sd t6, 592(ra)<br>    |
|  70|[0x80003660]<br>0xCBA224CD59F9EEBF|- rs2_h1_val == 8192<br> - rs1_h3_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001300]:KMAXDA t6, t5, t4<br> [0x80001304]:sd t6, 608(ra)<br>    |
|  71|[0x80003670]<br>0xC7E264CD59F9FE1F|- rs2_h1_val == 32<br> - rs1_h3_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x8000133c]:KMAXDA t6, t5, t4<br> [0x80001340]:sd t6, 624(ra)<br>    |
|  72|[0x80003680]<br>0xC7E25F7E5A39FE1F|- rs1_h3_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x8000137c]:KMAXDA t6, t5, t4<br> [0x80001380]:sd t6, 640(ra)<br>    |
|  73|[0x80003690]<br>0xC7E020FE5A3A0868|- rs1_h3_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800013b8]:KMAXDA t6, t5, t4<br> [0x800013bc]:sd t6, 656(ra)<br>    |
|  74|[0x800036a0]<br>0xC7DEC0BE5A31C7A2|- rs1_h3_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800013ec]:KMAXDA t6, t5, t4<br> [0x800013f0]:sd t6, 672(ra)<br>    |
|  75|[0x800036b0]<br>0xC3DEF1FF5A31C7D8|- rs2_h2_val == -16385<br> - rs1_h2_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001420]:KMAXDA t6, t5, t4<br> [0x80001424]:sd t6, 688(ra)<br>    |
|  76|[0x800036c0]<br>0xC5DEEFFF5A2FC588|- rs2_h1_val == 64<br> - rs1_h3_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001454]:KMAXDA t6, t5, t4<br> [0x80001458]:sd t6, 704(ra)<br>    |
|  77|[0x800036d0]<br>0xC6DF88025A312D92|- rs2_h2_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001498]:KMAXDA t6, t5, t4<br> [0x8000149c]:sd t6, 720(ra)<br>    |
|  78|[0x800036e0]<br>0xC6DD88F25C318D99|- rs1_h3_val == 1<br> - rs1_h1_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800014cc]:KMAXDA t6, t5, t4<br> [0x800014d0]:sd t6, 736(ra)<br>    |
|  79|[0x800036f0]<br>0xC8DDB8FC5CB18D71|- rs2_h2_val == -9<br> - rs1_h3_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x8000150c]:KMAXDA t6, t5, t4<br> [0x80001510]:sd t6, 752(ra)<br>    |
|  80|[0x80003700]<br>0xC8DDB0945CB18D23|- rs2_h2_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001548]:KMAXDA t6, t5, t4<br> [0x8000154c]:sd t6, 768(ra)<br>    |
|  81|[0x80003710]<br>0xC8DD6EEF5CB16423|- rs1_h2_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x8000157c]:KMAXDA t6, t5, t4<br> [0x80001580]:sd t6, 784(ra)<br>    |
|  82|[0x80003720]<br>0xC8DDAEFB5CB15457|- rs2_h2_val == 4<br> - rs1_h2_val == 1024<br> - rs1_h1_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800015b8]:KMAXDA t6, t5, t4<br> [0x800015bc]:sd t6, 800(ra)<br>    |
|  83|[0x80003730]<br>0xC8D56F005CD15457|- rs2_h2_val == 1<br> - rs2_h1_val == 1024<br> - rs1_h2_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800015f0]:KMAXDA t6, t5, t4<br> [0x800015f4]:sd t6, 816(ra)<br>    |
|  84|[0x80003740]<br>0xC8AA6F2B5CD11420|- rs1_h2_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x8000161c]:KMAXDA t6, t5, t4<br> [0x80001620]:sd t6, 832(ra)<br>    |
|  85|[0x80003750]<br>0xB39559D65CC0E820|- rs2_h1_val == -129<br> - rs1_h2_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x8000165c]:KMAXDA t6, t5, t4<br> [0x80001660]:sd t6, 848(ra)<br>    |
|  86|[0x80003760]<br>0xB395B12D5CC1F831|- rs2_h2_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001688]:KMAXDA t6, t5, t4<br> [0x8000168c]:sd t6, 864(ra)<br>    |
|  87|[0x80003770]<br>0xB395A929621747E0|- rs2_h1_val == 21845<br> - rs1_h2_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800016c0]:KMAXDA t6, t5, t4<br> [0x800016c4]:sd t6, 880(ra)<br>    |
|  88|[0x80003780]<br>0xB419A729621907EC|- rs1_h2_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800016f8]:KMAXDA t6, t5, t4<br> [0x800016fc]:sd t6, 896(ra)<br>    |
|  89|[0x80003790]<br>0xB3EEFAA6621930E5|- rs1_h2_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x8000172c]:KMAXDA t6, t5, t4<br> [0x80001730]:sd t6, 912(ra)<br>    |
|  90|[0x800037a0]<br>0xB3F37AA6621D7306|- rs2_h1_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001768]:KMAXDA t6, t5, t4<br> [0x8000176c]:sd t6, 928(ra)<br>    |
|  91|[0x800037b0]<br>0xB3F373A4622172EA|- rs1_h2_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800017a4]:KMAXDA t6, t5, t4<br> [0x800017a8]:sd t6, 944(ra)<br>    |
|  92|[0x800037c0]<br>0xB3EF6F1F63219340|- rs1_h1_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800017d8]:KMAXDA t6, t5, t4<br> [0x800017dc]:sd t6, 960(ra)<br>    |
|  93|[0x800037d0]<br>0xBE9244966323935E|- rs2_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001814]:KMAXDA t6, t5, t4<br> [0x80001818]:sd t6, 976(ra)<br>    |
|  94|[0x800037e0]<br>0xBE9246AB6323655A|- rs1_h1_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x8000184c]:KMAXDA t6, t5, t4<br> [0x80001850]:sd t6, 992(ra)<br>    |
|  95|[0x800037f0]<br>0xBE6795A56323695A|- rs2_h1_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001888]:KMAXDA t6, t5, t4<br> [0x8000188c]:sd t6, 1008(ra)<br>   |
|  96|[0x80003800]<br>0xBE6796386315295A|- rs2_h1_val == 16<br> - rs1_h1_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800018bc]:KMAXDA t6, t5, t4<br> [0x800018c0]:sd t6, 1024(ra)<br>   |
|  97|[0x80003810]<br>0xC2A78DB86317290C|- rs2_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800018f8]:KMAXDA t6, t5, t4<br> [0x800018fc]:sd t6, 1040(ra)<br>   |
|  98|[0x80003820]<br>0xC2A7A2097FFFFFFF|- rs1_h3_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001938]:KMAXDA t6, t5, t4<br> [0x8000193c]:sd t6, 1056(ra)<br>   |
|  99|[0x80003840]<br>0xC0A7571A7FDF9FF3|- rs2_h2_val == 2048<br> - rs2_h1_val == 16384<br> - rs2_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800019ac]:KMAXDA t6, t5, t4<br> [0x800019b0]:sd t6, 1088(ra)<br>   |
