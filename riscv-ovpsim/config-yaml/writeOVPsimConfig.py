# Copyright Imperas Software Ltd
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http:#www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and

import logging
logger = logging.getLogger(__name__)
import pprint as pp
import riscv_config.utils as utils
import os
import subprocess
import sys

yaml = ""
ovp_trace = False
xlen = 0

def fatal (s):
    sys.exit ("FATAL: "+str(s))
def todo (s):
    print ("TODO: "+str(s))
def internal (s):
    logger.error ("INTERNAL: "+str(s))
def error (s):
    logger.error ("ERROR: "+str(s))
def pprint (s, ss):
    print (s+": ", end='')
    pp.pprint(ss)
def cpprint (cc):
    attrs = vars(cc)
    pprint("class", attrs)

def convert_ISA (item, data, ovp):
    global ovp_trace
    global xlen
    if ovp_trace: print ("convert_ISA("+str(item)+","+str(data)+")")
    if   "RV32" in data: xlen=32
    elif "RV64" in data: xlen=64
    elif "RV128" in data: xlen=128
    else: fatal ("convert_ISA("+str(item)+","+str(data)+") is not 32 or 64bit or 128bit")
    # ovp.append("# xlen="+str(xlen)+" # derived from ISA string")

    data = data[2:] # lose "RV"
    if   "I" in data: base = "I"
    elif "E" in data: base = "E"
    else: fatal ("convert_ISA("+str(item)+","+str(data)+") is not I or E")
    variant = "RVB"+str(xlen)+str(base)

    ext = ""
    if "A" in data: ext += "A"
    if "B" in data: ext += "B"
    if "C" in data: ext += "C"
    if "D" in data: ext += "D"
    if "F" in data: ext += "F"
    if "G" in data: ext += "IMAFD"
    if "M" in data: ext += "M"
    if "N" in data: ext += "N"
    if "V" in data: ext += "V"
    if "X" in data: ext += "X"
    if ext != "": ovp.append("add_Extensions="+ext);

    if "Zicsr" in data: ovp.append ("add_Extensions=Zicsr")
    if "Zifencei" in data: ovp.append ("add_Extensions=Zifencei")
    if "Zam" in data: ovp.append ("add_Extensions=Zam")

    return "variant="+variant

def convert_mtvec (item, data, ovp):
    global ovp_trace
    info = "convert_mtvec("+str(item)+","+str(data)+") "
    if ovp_trace: print (info)

    mtvec_mask = 0
    mtvec = 0

    base_list = data['BASE']['range']['rangelist']
    if len(base_list) > 1: fatal (info+"only allow one range for BASE")
    if len(base_list[0]) > 2: fatal (info+"only allow two numbers in range for BASE")
    if len(base_list[0]) == 1:
        # no change to mtvec_mask as it is one setting so cant be writable
        mtvec |= (base_list[0][0] <<2)
    else: 
        mtvec_mask |= 0xfffffffc
        base_lo = base_list[0][0]
        base_hi = base_list[0][1]
        if base_lo != 0:         fatal (info+"BASE[lo] must be 0 ("+str(base_lo)+")")
        if base_hi > 0x3fffffff: fatal (info+"BASE[hi] must be < 0x3fffffff ("+str(base_hi)+")")
        mtvec |= (base_hi <<2)
        mtvec_mask = (base_hi << 2)

    mode_list = data['MODE']['range']['rangelist']
    if len(mode_list) > 1: fatal (info+"only allow one range for MODE")
    if len(mode_list[0]) > 2: fatal (info+"only allow two numbers in range for MODE")
    if mode_list[0][0] > 1: fatal (info+"MODE[lo] must be 0 or 1")
    if len(mode_list[0]) == 1: 
        # no change to mtvec_mask  as it is one setting so cant be writable
        mtvec |= mode_list[0][0]
    else:
        if mode_list[0][1] > 1: fatal (info+"MODE[hi] must be 0 or 1")
        mtvec |= mode_list[0][0]
        mtvec_mask |= 1 # as there are two settings, the bit must be writable

    if ovp_trace: print ("mtvec="+hex(mtvec)+" mtvec_mask="+hex(mtvec_mask))

    ovp.append ("mtvec_mask="+str(mtvec_mask))

    if (len(mode_list[0]) == 1) and (len(base_list[0])== 1):
        ovp.append ("mtvec_is_ro=T")
    else: 
        ovp.append ("mtvec_is_ro=F")

    return "mtvec="+str(mtvec)

def convert_mstatus (item, data, ovp):
    global ovp_trace
    info = "convert_mstatus("+str(item)+","+str(data)+") "
    if ovp_trace: print (info)
    for itm in data:
        if (itm == "MPP"): 
            val = data[itm]['range']['rangelist'][0][0]
            ovp.append("# mstatus."+itm+"="+str(val))
        else:
            ovp.append("# mstatus."+itm)
    return False

def convert_misa (item, data, ovp):
    global ovp_trace
    # s = "misa" # todo put in without comment when ovpsim implememts: riscvOVPsim/cpu/misa_undefined=T
    s = "# misa"
    info = "convert_misa("+str(item)+","+str(data)+") "
    if ovp_trace: print (info)
    for itm in data:
        if (itm == "MXL"):
            val = data[itm]['range']['rangelist'][0][0]
            ovp.append("misa_MXL="+str(val))
            if 'mode' in data[itm]['range'] and 'Unchanged' in data[itm]['range']['mode']:
                ovp.append("misa_MXL_mask=0")
        elif (itm == "implemented"):
            if data['implemented'] == False: undef_str = "T"
            else:                            undef_str = "F"
            ovp.append (str(s)+"_undefined="+undef_str)
        elif (itm == "Extensions"):
            if 'mask' in data[itm]['bitmask']:
                misa_mask = data[itm]['bitmask']['mask']
                ovp.append("misa_Extensions_mask="+str(misa_mask))
            if 'default' in data[itm]['bitmask']:
                misa_default = data[itm]['bitmask']['default']
                ovp.append("misa_Extensions="+str(misa_default))
        else:
            ovp.append(str(s)+itm)
    return False

def convert_simple_reg (item, data, ovp, s):
    global ovp_trace
    info = "convert_simple_reg("+str(item)+","+str(data)+") "
    if ovp_trace: print (info)
    if 'implemented' in data:
        if data['implemented'] == False: undef_str = "T"
        else:                            undef_str = "F"
        return str(s)+"_undefined="+undef_str
    else: 
        internal (info+"implemented is needed") # should be fatal
        ovp.append (str(s)+"_undefined=F # not sure?")
        return False

def convert_simple_reg_returning_zero (item, data, ovp, s):
    global ovp_trace
    info = "convert_simple_reg_returning_zero("+str(item)+","+str(data)+") "
    if ovp_trace: print (info)
    value = 0
    if not data or not 'implemented' in data:
        internal (info+"implemented is needed") # should be fatal
        ovp.append (str(s)+"="+str(value)+" # not sure?")
        return False
    if 'implemented' in data and data['implemented'] == True:
        if 'id' in data:
            value = data['id']
            return str(s)+"="+str(value)
        else:
            internal (info+"id is needed") # should be fatal
            ovp.append (str(s)+"="+str(value)+" # not sure?")
            return False
    else:
        return str(s)+"="+str(value)

def convert_hpm_reg_returning_zero (item, data, ovp, s):
    global ovp_trace
    info = "convert_simple_reg_returning_zero("+str(item)+","+str(data)+") "
    if ovp_trace: print (info)
    value = 0
    if not data or not 'implemented' in data:
        internal (info+"implemented is needed") # should be fatal
        ovp.append (str(s)+"="+str(value)+" # not sure?")
        return False
    if 'implemented' in data and data['implemented'] == True:
        if 'hardwired_val' in data:
            value = data['hardwired_val']
            # return str(s)+"="+str(value) ## use this to see them
            return False # means dont see them
        else:
            internal (info+"hardwired_val is needed") # should be fatal
            ovp.append (str(s)+"="+str(value)+" # not sure?")
            return False
    else:
        return str(s)+"="+str(value)

def convert_vector_reg (item, data, ovp, s):
    global ovp_trace
    info = "convert_simple_reg("+str(item)+","+str(data)+") "
    if ovp_trace: print (info)
    if 'address' in data:
        return str(s)+"="+str(data['address'])
    else:
        error (info+"only address is supported at present (eg not label)") 
        ovp.append ("# "+str(s)+"=??")
        return False

def convert_flag (item, data, ovp, s):
    global ovp_trace
    info = "convert_flag("+str(item)+","+str(data)+") "
    if ovp_trace: print (info)
    undef_str = "=F" if data == False else "=T"
    comment = " # "+str(item)
    return str(s+undef_str+comment)

def check_implemented (item, data):
    if data['implemented'] != True:
        internal ("check_implemented ("+str(item)+", "+str(data)+") != implemented: True")

def convert_to_target (item, yaml, ovp):
    global ovp_trace
    data = yaml[item]
    res = False

    # temp fixups..
    if item == "Privilege_Spec_Version" and str(data) == "1.1": data = "1.10"

    ### the ones with a '#' ini the comment as last field - could be hidden if we are just ignoring them
    if   item == "ISA":                           res = convert_ISA (item, data, ovp)
    elif item == "xlen":                          res = "xlen="+str(data)
    elif item == "Vendor":                        res = "vendor="+str(data)
    elif item == "Device":                        res = "device="+str(data)
    elif item == "Privilege_Spec_Version":        res = "priv_version="+str(data)
    elif item == "User_Spec_Version":             res = "user_version="+str(data)
    elif item == "mvendorid":                     res = convert_simple_reg_returning_zero (item, data, ovp, "mvendorid"); 
    elif item == "marchid":                       res = convert_simple_reg_returning_zero (item, data, ovp, "marchid"); 
    elif item == "mimpid":                        res = convert_simple_reg_returning_zero (item, data, ovp, "mimpid"); 
    elif item == "mhartid":                       res = "mhartid="  +str(data)
    elif item == "mtvec":                         res = convert_mtvec (item, data, ovp)
    elif item == "mstatus":                       res = convert_mstatus (item, data, ovp); del yaml[item]
    elif item == "mcause":                        res = convert_simple_reg (item, data, ovp, "# mcause"); 
    elif item == "mtime":                         res = convert_simple_reg (item, data, ovp, "time"); 
    elif item == "mcycle":                        res = convert_simple_reg (item, data, ovp, "cycle"); 
    elif item == "mtimecmp":                      res = convert_simple_reg (item, data, ovp, "# mtimecmp"); 
    elif item == "minstret":                      res = convert_simple_reg (item, data, ovp, "instret"); 
    elif item == "reset":                         res = convert_vector_reg (item, data, ovp, "reset_address"); 
    elif item == "nmi":                           res = convert_vector_reg (item, data, ovp, "nmi_address"); 
    elif item == "mtval":                         res = convert_simple_reg (item, data, ovp, "# mtval");
    # elif item == "hw_ins_misaligned_support":     res = False; del yaml[item]; internal ("convert_to_target("+str(item)+") is redundant and should be removed")
    elif item == "hw_data_misaligned_support":    res = convert_flag (item, data, ovp, "unaligned"); 
    elif item == "misa":                          res = convert_misa (item, data, ovp);  del yaml[item]
    elif item == "mideleg":                       res = convert_simple_reg (item, data, ovp, "# mideleg"); 
    elif item == "medeleg":                       res = convert_simple_reg (item, data, ovp, "# medeleg");
    elif item == "mip":                           res = convert_simple_reg (item, data, ovp, "# mip");
    elif item == "mie":                           res = convert_simple_reg (item, data, ovp, "# mie");
    elif item == "mepc":                          res = convert_simple_reg (item, data, ovp, "# mepc");
    elif item == "sip":                           res = convert_simple_reg (item, data, ovp, "# sip");  
    elif item == "sie":                           res = convert_simple_reg (item, data, ovp, "# sie");  
    elif item == "scounteren":                    res = convert_simple_reg (item, data, ovp, "# scounteren");  
    elif item == "sepc":                          res = convert_simple_reg (item, data, ovp, "# sepc");  
    elif item == "stvec":                         res = convert_simple_reg (item, data, ovp, "# stvec");  
    elif item == "satp":                          res = convert_simple_reg (item, data, ovp, "# satp");  
    elif item == "stval":                         res = convert_simple_reg (item, data, ovp, "# stval");  
    elif item == "scause":                        res = convert_simple_reg (item, data, ovp, "# scause");  
    elif item == "mcountinhibit":                 res = convert_simple_reg (item, data, ovp, "# mcountinhibit"); check_implemented (item, data); 
    elif item == "mcounteren":                    res = convert_simple_reg (item, data, ovp, "# mcounteren");    check_implemented (item, data); 
    elif 'hpmcounter' in item:                    res = convert_hpm_reg_returning_zero (item, data, ovp, "# "+str(item));  check_implemented (item, data);
    elif 'hpmevent' in item:                      res = convert_hpm_reg_returning_zero (item, data, ovp, "# "+str(item));  check_implemented (item, data);

    else: error ("unknown item in yaml = "+str(item))

    if ovp_trace: print ("convert_to_target ("+str(item)+": "+str(data)+") -->> "+str(res))
    if res: 
        ovp.append(res)
        del yaml[item]

def add_missing_configuration (s, ovp):
    ovp.append(s)
    internal ("add_missing_configuration ("+str(s)+")")

def check_output_file (output_filename):
    global ovp_trace
    logger.info ("Initiating OVPsim_check: "+output_filename)

    if not os.path.isfile (output_filename):
        fatal ("check_output_file ("+str(output_filename)+") file does not exist")

    override_str = "--override riscvOVPsim/cpu/"

    # get overrides from created control file
    overrides = []
    with open(output_filename) as f:
        for line in f:
            line = line.rstrip("\n\r")
            if line[0] == "#": continue # as they are not correct yet...
            if not override_str in line: continue
            if not override_str in line: fatal ("check_output_file ("+str(output_filename)+") does not have at least one line with '"+override_str+"' in!")
            override = line.split("/")[2]
            override = override.split("=")[0]
            overrides.append(override)
    if ovp_trace: pprint ("overrides", overrides)

    # run simulator using control file to get full (appropriate to settings) list of overrides
    OVPSIM = os.getenv('OVPSIM', "../bin/Linux64/riscvOVPsim.exe")
    if not os.access(OVPSIM,os.X_OK): fatal ("check_output_file () cant run riscvOVPsim.exe ("+OVPSIM+") - set the environment variable OVPSIM")

    # first try help to see if it runs ok
    devnull = open(os.devnull, 'w')
    result = subprocess.run ([OVPSIM, "--help" ], stdout=devnull)
    if result.returncode != 0:
        fatal ("check_output_file () riscvOVPsim.exe 1 ran with return code of ("+str(result.returncode)+") which is an error")
    if ovp_trace: pp.pprint (result)

    # now run and get overrides into log
    logfile_filename = os.path.dirname (output_filename)+"/imperas.log"
    result = subprocess.run ([OVPSIM, "--nosimulation", "--showmodeloverrides", "--controlfile", output_filename, "--logfile", logfile_filename], stdout=devnull)
    if result.returncode != 0:
        fatal ("check_output_file () riscvOVPsim.exe 2 ran with return code of ("+str(result.returncode)+") which is an error")
    if ovp_trace: pp.pprint (result)

    # process log to get full set of appropriate overrides
    full_overrides = []
    with open(logfile_filename) as f:
        for line in f:
            line = line.rstrip("\n\r")
            if not override_str in line: continue
            if not override_str in line: fatal ("check_output_file ("+str(logfile_filename)+") does not have at least one line with '"+override_str+"' in!")
            # if "riscv32Newlib" in line: continue # replaced
            if "pk" in line: continue # ToDo UNTESTED
            override = line.split("/")[2]
            override = override.split("=")[0]
            full_overrides.append(override)
    if ovp_trace: pprint ("full_overrides", full_overrides)

    # now compare 
    unused_overrides = list (set(full_overrides) - set(overrides))
    unused_overrides.remove ('variant') # remove as unnecessary when iss does not need separate --variant TEMP todo
    unused_overrides.remove ('PMP_grain') # remove as unnecessary TEMP todo
    unused_overrides.remove ('verbose') # remove as unnecessary
    unused_overrides.remove ('endian') # remove as unnecessary
    if 'add_Extensions' in overrides and 'misa_Extensions' in unused_overrides: unused_overrides.remove ('misa_Extensions') # remove alternative
    if 'misa_Extensions' in overrides and 'add_Extensions' in unused_overrides: unused_overrides.remove ('add_Extensions') # remove alternative
    if 'misa_Extensions_mask' in overrides and 'add_Extensions_mask' in unused_overrides: unused_overrides.remove ('add_Extensions_mask') # remove alternative
    if 'add_Extensions_mask' in overrides and 'misa_Extensions_mask' in unused_overrides: unused_overrides.remove ('misa_Extensions_mask') # remove alternative
    unused_overrides.remove ('enable_CSR_bus') # remove as simulation artifact
    unused_overrides.sort()
    pprint ("unused_overrides ("+str(len(unused_overrides))+")", unused_overrides)
    

    logger.info ("Finished OVPsim_check")

def write_ovp(isa_yaml, platform_yaml, OVPsim_check, work_dir, args_trace):
    global ovp_trace
    ovp_trace = args_trace
    logger.info ("Initiating writeOVPsim config file ("+str(ovp_trace)+")")

    logger.info('Loading input file: ' + str(isa_yaml))
    yaml = utils.load_yaml(isa_yaml)
    yaml.update(utils.load_yaml(platform_yaml))

    # if ovp_trace: pp.pprint (yaml)

    logger.info ("Converting YAML for OVPsim")
    ovp = []
    for item in list (yaml.items()):
        convert_to_target(item[0], yaml, ovp)
        
    add_missing_configuration ("# tvec_align=0", ovp)

    if ovp_trace: print ("  yaml left = "+str(len(yaml)))
    if ovp_trace: pp.pprint (ovp)
    if ovp_trace: pp.pprint (yaml)
    # pp.pprint (yaml)
    if ovp_trace: print ("  ovp now   = "+str(len(ovp)))

    file_name_split = isa_yaml.split('.')
    path = file_name_split[0]
    basename = os.path.basename(path)
    # dirname = os.path.dirname(path)
    # filename  = basename.replace("_isa", "")
    filename  = basename
    output_filename = work_dir + '/' + filename + '_riscvOVPsim.ic'

    logger.info ("Writing OVPsim control file: "+output_filename)
    f = open(output_filename, 'w')
    f.write ("# riscOVPsim configuration file converted from YAML for device: "+filename+'\n')
    override = "--override riscvOVPsim/cpu/"
    for item in ovp:
        if 'vendor' in item and not 'mvendorid' in item:
            item_split = item.split('=')
            f.write ("# "+item_split[0]+": "+str(item_split[1])+'\n')
            continue
        elif 'device' in item:
            item_split = item.split('=')
            f.write ("# "+item_split[0]+": "+str(item_split[1])+'\n')
            continue
        elif "variant" in item:
            if '32'  in item and xlen != 32:  fatal (item+"' and xlen="+str(xlen))
            if '64'  in item and xlen != 64:  fatal (item+"' and xlen="+str(xlen))
            if '128' in item and xlen != 128: fatal (item+"' and xlen="+str(xlen))
                        # todo remove when iss accepts override and not needs separate --variant
            item_split = item.split('=')
            f.write ("--variant "+str(item_split[1])+'\n') 
            continue
        elif "xlen" in item:           # todo remove when iss accepts override for xlen
            item_split = item.split('=')
            f.write ("# xlen not currently used as = "+str(item_split[1])+'\n')
            continue
        elif "misa_MXL" in item and not "mask" in item:
            item_split = item.split('=')
            val = int(item_split[1])
            if (val == 1) and (xlen != 32): fatal (item+"' and xlen="+str(xlen))
            if (val == 2) and (xlen != 64): fatal (item+"' and xlen="+str(xlen))
            if (val == 3) and (xlen != 128): fatal (item+"' and xlen="+str(xlen))

        if ('mask' in item or 'addr' in item or 'tvec=' in item or 'misa_Extensions' in item): # convert to hex for ease of human reading
            item_split = item.split('=')
            if item_split[1] == "??": 
                item = item_split[0]+"="+item_split[1]
            else:
                item = item_split[0]+"="+str(hex(int(item_split[1])))+" # "+item_split[1]
        if item[0] != "#":
            f.write (override+str(item)+'\n')
        else:
            # todo this is temp to lose these... as we dont configure them at present - or maybe they are not configurable..
            ignoreList = ['mstatus','mideleg','medeleg','mip','mie','mcountinhibit','mcounteren','sip','sie','scounteren','sepc','mepc','stvec','satp','mtimecmp','mcause','scause','stval','mtval']
            found = 0
            for ig_item in ignoreList:
                if ig_item in item:
                    found = 1
            if not found:
                f.write ("# "+override+str(item[2:])+'\n')
    
    # extra ones that are used for simulation
    f.write (override+str("simulateexceptions=T")+'\n')

    f.close()
    logger.info ("Finished writeOVPsim config file")

    ## CHECK phase ##
    if OVPsim_check:
        check_output_file (output_filename)
        
    
