This directory is an example target you can use as a template for your own target development

For linking you have two options.  

If your environment is a monolithic runtime (both code and data reside in the same contiguous
memory area) then you will want to use linkmon.ld as the template for linking.  

If you environment has separate code and data sections then you will want to use linksplit.ld as 
a template for linking.

Whichever linker script you choose to use, you will have to modify the example to fit your enviroement address space.

Under /devcie you will find a compliance_model.h file.  This provides the macros and some code that is specific to your
environment.  

For example if you are using the linksplit.ld file for a template for your linker script then in the 
compliance_model.h file you will have use the code to copy the data sections from the boot device to ram.  

// For code that has a split rom/ram area
// Code below will copy from the rom area to ram the 
// data.strings and .data sections to ram.
// Use linksplit.ld 
#define RVTEST_TARGET_INIT \
la t0, _data_strings; \
  la t1, _fstext; \
  la t2, _estext; \
1: \
  lw t3, 0(t0); \
  sw t3, 0(t1); \
  addi t0, t0, 4; \
  addi t1, t1, 4; \
  bltu t1, t2, 1b; \
  la t0, _data_lma; \
  la t1, _data; \
  la t2, _edata; \
1: \
  lw t3, 0(t0); \
  sw t3, 0(t1); \
  addi t0, t0, 4; \
  addi t1, t1, 4; \
  bltu t1, t2, 1b;

//RVTEST_TARGET_INIT
// Any specific target init code should be put here
// Code for one monolithic ram area
// Use linkmono.ld 
#define RVTEST_TARGET_INIT \

the file compliacne_model.h will have to be modified to fit our environment.  See comments in the file for more details.
