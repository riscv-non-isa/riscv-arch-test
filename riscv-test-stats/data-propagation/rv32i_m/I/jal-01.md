
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x801ab5a0')]      |
| SIG_REGION                | [('0x801ad010', '0x801ad090', '32 words')]      |
| COV_LABELS                | jal      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/jal-01.S/jal-01.S    |
| Total Number of coverpoints| 37     |
| Total Coverpoints Hit     | 37      |
| Total Signature Updates   | 32      |
| STAT1                     | 32      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```

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

|s.no|        signature         |                    coverpoints                     |                                                                                                                                                                                       code                                                                                                                                                                                       |
|---:|--------------------------|----------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x801ad010]<br>0x000AAAC9|- opcode : jal<br> - rd : x21<br> - imm_val < 0<br> |[0x800aabc4]:jal s5, 1398100<br> [0x80000118]:xori s5, s5, 1<br> [0x8000011c]:beq zero, zero, 8176<br> [0x8000010c]:auipc a3, 171<br> [0x80000110]:addi a3, a3, 2772<br> [0x80000114]:jalr zero, a3, 0<br> [0x800aabe0]:auipc a3, 1048405<br> [0x800aabe4]:addi a3, a3, 1312<br> [0x800aabe8]:andi a3, a3, 4092<br> [0x800aabec]:sub s5, s5, a3<br> [0x800aabf0]:sw s5, 0(sp)<br> |
|   2|[0x801ad014]<br>0x00000027|- rd : x3<br> - imm_val > 0<br>                     |[0x800aac14]:jal gp, 12<br> [0x800aac20]:xori gp, gp, 3<br> [0x800aac24]:auipc a3, 0<br> [0x800aac28]:addi a3, a3, 12<br> [0x800aac2c]:jalr zero, a3, 0<br> [0x800aac30]:auipc a3, 0<br> [0x800aac34]:addi a3, a3, 4036<br> [0x800aac38]:andi a3, a3, 4092<br> [0x800aac3c]:sub gp, gp, a3<br> [0x800aac40]:sw gp, 4(sp)<br>                                                      |
|   3|[0x801ad018]<br>0x0008001D|- rd : x29<br> - imm_val == (-(2**(18)))<br>        |[0x8012ac5c]:jal t4, 1572864<br> [0x800aac5c]:xori t4, t4, 1<br> [0x800aac60]:beq zero, zero, 8176<br> [0x800aac50]:auipc a3, 128<br> [0x800aac54]:addi a3, a3, 40<br> [0x800aac58]:jalr zero, a3, 0<br> [0x8012ac78]:auipc a3, 1048448<br> [0x8012ac7c]:addi a3, a3, 4044<br> [0x8012ac80]:andi a3, a3, 4092<br> [0x8012ac84]:sub t4, t4, a3<br> [0x8012ac88]:sw t4, 8(sp)<br>   |
|   4|[0x801ad01c]<br>0x00000027|- rd : x27<br> - imm_val == ((2**(18)))<br>         |[0x8012acac]:jal s11, 524288<br> [0x801aacac]:xori s11, s11, 3<br> [0x801aacb0]:auipc a3, 0<br> [0x801aacb4]:addi a3, a3, 12<br> [0x801aacb8]:jalr zero, a3, 0<br> [0x801aacbc]:auipc a3, 1048448<br> [0x801aacc0]:addi a3, a3, 4048<br> [0x801aacc4]:andi a3, a3, 4092<br> [0x801aacc8]:sub s11, s11, a3<br> [0x801aaccc]:sw s11, 12(sp)<br>                                     |
|   5|[0x801ad020]<br>0x00000000|- rd : x0<br>                                       |[0x801aacf0]:jal zero, 12<br> [0x801aacfc]:xori zero, zero, 3<br> [0x801aad00]:auipc a3, 0<br> [0x801aad04]:addi a3, a3, 12<br> [0x801aad08]:jalr zero, a3, 0<br> [0x801aad0c]:auipc a3, 0<br> [0x801aad10]:addi a3, a3, 4036<br> [0x801aad14]:andi a3, a3, 4092<br> [0x801aad18]:sub zero, zero, a3<br> [0x801aad1c]:sw zero, 16(sp)<br>                                         |
|   6|[0x801ad024]<br>0x00000027|- rd : x4<br>                                       |[0x801aad40]:jal tp, 12<br> [0x801aad4c]:xori tp, tp, 3<br> [0x801aad50]:auipc a3, 0<br> [0x801aad54]:addi a3, a3, 12<br> [0x801aad58]:jalr zero, a3, 0<br> [0x801aad5c]:auipc a3, 0<br> [0x801aad60]:addi a3, a3, 4036<br> [0x801aad64]:andi a3, a3, 4092<br> [0x801aad68]:sub tp, tp, a3<br> [0x801aad6c]:sw tp, 20(sp)<br>                                                     |
|   7|[0x801ad028]<br>0x00000027|- rd : x22<br>                                      |[0x801aad90]:jal s6, 12<br> [0x801aad9c]:xori s6, s6, 3<br> [0x801aada0]:auipc a3, 0<br> [0x801aada4]:addi a3, a3, 12<br> [0x801aada8]:jalr zero, a3, 0<br> [0x801aadac]:auipc a3, 0<br> [0x801aadb0]:addi a3, a3, 4036<br> [0x801aadb4]:andi a3, a3, 4092<br> [0x801aadb8]:sub s6, s6, a3<br> [0x801aadbc]:sw s6, 24(sp)<br>                                                     |
|   8|[0x801ad02c]<br>0x00000027|- rd : x16<br>                                      |[0x801aade0]:jal a6, 12<br> [0x801aadec]:xori a6, a6, 3<br> [0x801aadf0]:auipc a3, 0<br> [0x801aadf4]:addi a3, a3, 12<br> [0x801aadf8]:jalr zero, a3, 0<br> [0x801aadfc]:auipc a3, 0<br> [0x801aae00]:addi a3, a3, 4036<br> [0x801aae04]:andi a3, a3, 4092<br> [0x801aae08]:sub a6, a6, a3<br> [0x801aae0c]:sw a6, 28(sp)<br>                                                     |
|   9|[0x801ad030]<br>0x00000027|- rd : x12<br>                                      |[0x801aae30]:jal a2, 12<br> [0x801aae3c]:xori a2, a2, 3<br> [0x801aae40]:auipc a3, 0<br> [0x801aae44]:addi a3, a3, 12<br> [0x801aae48]:jalr zero, a3, 0<br> [0x801aae4c]:auipc a3, 0<br> [0x801aae50]:addi a3, a3, 4036<br> [0x801aae54]:andi a3, a3, 4092<br> [0x801aae58]:sub a2, a2, a3<br> [0x801aae5c]:sw a2, 32(sp)<br>                                                     |
|  10|[0x801ad034]<br>0x00000027|- rd : x28<br>                                      |[0x801aae80]:jal t3, 12<br> [0x801aae8c]:xori t3, t3, 3<br> [0x801aae90]:auipc a3, 0<br> [0x801aae94]:addi a3, a3, 12<br> [0x801aae98]:jalr zero, a3, 0<br> [0x801aae9c]:auipc a3, 0<br> [0x801aaea0]:addi a3, a3, 4036<br> [0x801aaea4]:andi a3, a3, 4092<br> [0x801aaea8]:sub t3, t3, a3<br> [0x801aaeac]:sw t3, 36(sp)<br>                                                     |
|  11|[0x801ad038]<br>0x00000027|- rd : x11<br>                                      |[0x801aaed0]:jal a1, 12<br> [0x801aaedc]:xori a1, a1, 3<br> [0x801aaee0]:auipc a3, 0<br> [0x801aaee4]:addi a3, a3, 12<br> [0x801aaee8]:jalr zero, a3, 0<br> [0x801aaeec]:auipc a3, 0<br> [0x801aaef0]:addi a3, a3, 4036<br> [0x801aaef4]:andi a3, a3, 4092<br> [0x801aaef8]:sub a1, a1, a3<br> [0x801aaefc]:sw a1, 40(sp)<br>                                                     |
|  12|[0x801ad03c]<br>0x00000027|- rd : x30<br>                                      |[0x801aaf20]:jal t5, 12<br> [0x801aaf2c]:xori t5, t5, 3<br> [0x801aaf30]:auipc a3, 0<br> [0x801aaf34]:addi a3, a3, 12<br> [0x801aaf38]:jalr zero, a3, 0<br> [0x801aaf3c]:auipc a3, 0<br> [0x801aaf40]:addi a3, a3, 4036<br> [0x801aaf44]:andi a3, a3, 4092<br> [0x801aaf48]:sub t5, t5, a3<br> [0x801aaf4c]:sw t5, 44(sp)<br>                                                     |
|  13|[0x801ad040]<br>0x00000027|- rd : x10<br>                                      |[0x801aaf70]:jal a0, 12<br> [0x801aaf7c]:xori a0, a0, 3<br> [0x801aaf80]:auipc a3, 0<br> [0x801aaf84]:addi a3, a3, 12<br> [0x801aaf88]:jalr zero, a3, 0<br> [0x801aaf8c]:auipc a3, 0<br> [0x801aaf90]:addi a3, a3, 4036<br> [0x801aaf94]:andi a3, a3, 4092<br> [0x801aaf98]:sub a0, a0, a3<br> [0x801aaf9c]:sw a0, 48(sp)<br>                                                     |
|  14|[0x801ad044]<br>0x00000027|- rd : x1<br>                                       |[0x801aafc0]:jal ra, 12<br> [0x801aafcc]:xori ra, ra, 3<br> [0x801aafd0]:auipc a3, 0<br> [0x801aafd4]:addi a3, a3, 12<br> [0x801aafd8]:jalr zero, a3, 0<br> [0x801aafdc]:auipc a3, 0<br> [0x801aafe0]:addi a3, a3, 4036<br> [0x801aafe4]:andi a3, a3, 4092<br> [0x801aafe8]:sub ra, ra, a3<br> [0x801aafec]:sw ra, 52(sp)<br>                                                     |
|  15|[0x801ad048]<br>0x00000027|- rd : x20<br>                                      |[0x801ab010]:jal s4, 12<br> [0x801ab01c]:xori s4, s4, 3<br> [0x801ab020]:auipc a3, 0<br> [0x801ab024]:addi a3, a3, 12<br> [0x801ab028]:jalr zero, a3, 0<br> [0x801ab02c]:auipc a3, 0<br> [0x801ab030]:addi a3, a3, 4036<br> [0x801ab034]:andi a3, a3, 4092<br> [0x801ab038]:sub s4, s4, a3<br> [0x801ab03c]:sw s4, 56(sp)<br>                                                     |
|  16|[0x801ad04c]<br>0x00000027|- rd : x19<br>                                      |[0x801ab060]:jal s3, 12<br> [0x801ab06c]:xori s3, s3, 3<br> [0x801ab070]:auipc a3, 0<br> [0x801ab074]:addi a3, a3, 12<br> [0x801ab078]:jalr zero, a3, 0<br> [0x801ab07c]:auipc a3, 0<br> [0x801ab080]:addi a3, a3, 4036<br> [0x801ab084]:andi a3, a3, 4092<br> [0x801ab088]:sub s3, s3, a3<br> [0x801ab08c]:sw s3, 60(sp)<br>                                                     |
|  17|[0x801ad050]<br>0x00000027|- rd : x24<br>                                      |[0x801ab0b0]:jal s8, 12<br> [0x801ab0bc]:xori s8, s8, 3<br> [0x801ab0c0]:auipc a3, 0<br> [0x801ab0c4]:addi a3, a3, 12<br> [0x801ab0c8]:jalr zero, a3, 0<br> [0x801ab0cc]:auipc a3, 0<br> [0x801ab0d0]:addi a3, a3, 4036<br> [0x801ab0d4]:andi a3, a3, 4092<br> [0x801ab0d8]:sub s8, s8, a3<br> [0x801ab0dc]:sw s8, 64(sp)<br>                                                     |
|  18|[0x801ad054]<br>0x00000027|- rd : x7<br>                                       |[0x801ab100]:jal t2, 12<br> [0x801ab10c]:xori t2, t2, 3<br> [0x801ab110]:auipc a3, 0<br> [0x801ab114]:addi a3, a3, 12<br> [0x801ab118]:jalr zero, a3, 0<br> [0x801ab11c]:auipc a3, 0<br> [0x801ab120]:addi a3, a3, 4036<br> [0x801ab124]:andi a3, a3, 4092<br> [0x801ab128]:sub t2, t2, a3<br> [0x801ab12c]:sw t2, 68(sp)<br>                                                     |
|  19|[0x801ad058]<br>0x00000027|- rd : x6<br>                                       |[0x801ab150]:jal t1, 12<br> [0x801ab15c]:xori t1, t1, 3<br> [0x801ab160]:auipc a3, 0<br> [0x801ab164]:addi a3, a3, 12<br> [0x801ab168]:jalr zero, a3, 0<br> [0x801ab16c]:auipc a3, 0<br> [0x801ab170]:addi a3, a3, 4036<br> [0x801ab174]:andi a3, a3, 4092<br> [0x801ab178]:sub t1, t1, a3<br> [0x801ab17c]:sw t1, 72(sp)<br>                                                     |
|  20|[0x801ad05c]<br>0x00000027|- rd : x8<br>                                       |[0x801ab1a0]:jal fp, 12<br> [0x801ab1ac]:xori fp, fp, 3<br> [0x801ab1b0]:auipc a3, 0<br> [0x801ab1b4]:addi a3, a3, 12<br> [0x801ab1b8]:jalr zero, a3, 0<br> [0x801ab1bc]:auipc a3, 0<br> [0x801ab1c0]:addi a3, a3, 4036<br> [0x801ab1c4]:andi a3, a3, 4092<br> [0x801ab1c8]:sub fp, fp, a3<br> [0x801ab1cc]:sw fp, 76(sp)<br>                                                     |
|  21|[0x801ad060]<br>0x00000027|- rd : x31<br>                                      |[0x801ab1f0]:jal t6, 12<br> [0x801ab1fc]:xori t6, t6, 3<br> [0x801ab200]:auipc a3, 0<br> [0x801ab204]:addi a3, a3, 12<br> [0x801ab208]:jalr zero, a3, 0<br> [0x801ab20c]:auipc a3, 0<br> [0x801ab210]:addi a3, a3, 4036<br> [0x801ab214]:andi a3, a3, 4092<br> [0x801ab218]:sub t6, t6, a3<br> [0x801ab21c]:sw t6, 80(sp)<br>                                                     |
|  22|[0x801ad064]<br>0x00000027|- rd : x26<br>                                      |[0x801ab240]:jal s10, 12<br> [0x801ab24c]:xori s10, s10, 3<br> [0x801ab250]:auipc a3, 0<br> [0x801ab254]:addi a3, a3, 12<br> [0x801ab258]:jalr zero, a3, 0<br> [0x801ab25c]:auipc a3, 0<br> [0x801ab260]:addi a3, a3, 4036<br> [0x801ab264]:andi a3, a3, 4092<br> [0x801ab268]:sub s10, s10, a3<br> [0x801ab26c]:sw s10, 84(sp)<br>                                               |
|  23|[0x801ad068]<br>0x00000027|- rd : x5<br>                                       |[0x801ab290]:jal t0, 12<br> [0x801ab29c]:xori t0, t0, 3<br> [0x801ab2a0]:auipc a3, 0<br> [0x801ab2a4]:addi a3, a3, 12<br> [0x801ab2a8]:jalr zero, a3, 0<br> [0x801ab2ac]:auipc a3, 0<br> [0x801ab2b0]:addi a3, a3, 4036<br> [0x801ab2b4]:andi a3, a3, 4092<br> [0x801ab2b8]:sub t0, t0, a3<br> [0x801ab2bc]:sw t0, 88(sp)<br>                                                     |
|  24|[0x801ad06c]<br>0x00000027|- rd : x15<br>                                      |[0x801ab2e0]:jal a5, 12<br> [0x801ab2ec]:xori a5, a5, 3<br> [0x801ab2f0]:auipc a3, 0<br> [0x801ab2f4]:addi a3, a3, 12<br> [0x801ab2f8]:jalr zero, a3, 0<br> [0x801ab2fc]:auipc a3, 0<br> [0x801ab300]:addi a3, a3, 4036<br> [0x801ab304]:andi a3, a3, 4092<br> [0x801ab308]:sub a5, a5, a3<br> [0x801ab30c]:sw a5, 92(sp)<br>                                                     |
|  25|[0x801ad070]<br>0x00000027|- rd : x23<br>                                      |[0x801ab330]:jal s7, 12<br> [0x801ab33c]:xori s7, s7, 3<br> [0x801ab340]:auipc a3, 0<br> [0x801ab344]:addi a3, a3, 12<br> [0x801ab348]:jalr zero, a3, 0<br> [0x801ab34c]:auipc a3, 0<br> [0x801ab350]:addi a3, a3, 4036<br> [0x801ab354]:andi a3, a3, 4092<br> [0x801ab358]:sub s7, s7, a3<br> [0x801ab35c]:sw s7, 96(sp)<br>                                                     |
|  26|[0x801ad074]<br>0x00000027|- rd : x25<br>                                      |[0x801ab380]:jal s9, 12<br> [0x801ab38c]:xori s9, s9, 3<br> [0x801ab390]:auipc a3, 0<br> [0x801ab394]:addi a3, a3, 12<br> [0x801ab398]:jalr zero, a3, 0<br> [0x801ab39c]:auipc a3, 0<br> [0x801ab3a0]:addi a3, a3, 4036<br> [0x801ab3a4]:andi a3, a3, 4092<br> [0x801ab3a8]:sub s9, s9, a3<br> [0x801ab3ac]:sw s9, 100(sp)<br>                                                    |
|  27|[0x801ad078]<br>0x00000027|- rd : x18<br>                                      |[0x801ab3d0]:jal s2, 12<br> [0x801ab3dc]:xori s2, s2, 3<br> [0x801ab3e0]:auipc a3, 0<br> [0x801ab3e4]:addi a3, a3, 12<br> [0x801ab3e8]:jalr zero, a3, 0<br> [0x801ab3ec]:auipc a3, 0<br> [0x801ab3f0]:addi a3, a3, 4036<br> [0x801ab3f4]:andi a3, a3, 4092<br> [0x801ab3f8]:sub s2, s2, a3<br> [0x801ab3fc]:sw s2, 104(sp)<br>                                                    |
|  28|[0x801ad07c]<br>0x00000027|- rd : x9<br>                                       |[0x801ab420]:jal s1, 12<br> [0x801ab42c]:xori s1, s1, 3<br> [0x801ab430]:auipc a3, 0<br> [0x801ab434]:addi a3, a3, 12<br> [0x801ab438]:jalr zero, a3, 0<br> [0x801ab43c]:auipc a3, 0<br> [0x801ab440]:addi a3, a3, 4036<br> [0x801ab444]:andi a3, a3, 4092<br> [0x801ab448]:sub s1, s1, a3<br> [0x801ab44c]:sw s1, 108(sp)<br>                                                    |
|  29|[0x801ad080]<br>0x00000027|- rd : x13<br>                                      |[0x801ab470]:jal a3, 12<br> [0x801ab47c]:xori a3, a3, 3<br> [0x801ab480]:auipc gp, 0<br> [0x801ab484]:addi gp, gp, 12<br> [0x801ab488]:jalr zero, gp, 0<br> [0x801ab48c]:auipc gp, 0<br> [0x801ab490]:addi gp, gp, 4036<br> [0x801ab494]:andi gp, gp, 4092<br> [0x801ab498]:sub a3, a3, gp<br> [0x801ab49c]:sw a3, 112(sp)<br>                                                    |
|  30|[0x801ad084]<br>0x00000027|- rd : x14<br>                                      |[0x801ab4c8]:jal a4, 12<br> [0x801ab4d4]:xori a4, a4, 3<br> [0x801ab4d8]:auipc gp, 0<br> [0x801ab4dc]:addi gp, gp, 12<br> [0x801ab4e0]:jalr zero, gp, 0<br> [0x801ab4e4]:auipc gp, 0<br> [0x801ab4e8]:addi gp, gp, 4036<br> [0x801ab4ec]:andi gp, gp, 4092<br> [0x801ab4f0]:sub a4, a4, gp<br> [0x801ab4f4]:sw a4, 0(ra)<br>                                                      |
|  31|[0x801ad088]<br>0x00000027|- rd : x17<br>                                      |[0x801ab518]:jal a7, 12<br> [0x801ab524]:xori a7, a7, 3<br> [0x801ab528]:auipc gp, 0<br> [0x801ab52c]:addi gp, gp, 12<br> [0x801ab530]:jalr zero, gp, 0<br> [0x801ab534]:auipc gp, 0<br> [0x801ab538]:addi gp, gp, 4036<br> [0x801ab53c]:andi gp, gp, 4092<br> [0x801ab540]:sub a7, a7, gp<br> [0x801ab544]:sw a7, 4(ra)<br>                                                      |
|  32|[0x801ad08c]<br>0x00000027|- rd : x2<br>                                       |[0x801ab568]:jal sp, 12<br> [0x801ab574]:xori sp, sp, 3<br> [0x801ab578]:auipc gp, 0<br> [0x801ab57c]:addi gp, gp, 12<br> [0x801ab580]:jalr zero, gp, 0<br> [0x801ab584]:auipc gp, 0<br> [0x801ab588]:addi gp, gp, 4036<br> [0x801ab58c]:andi gp, gp, 4092<br> [0x801ab590]:sub sp, sp, gp<br> [0x801ab594]:sw sp, 8(ra)<br>                                                      |
