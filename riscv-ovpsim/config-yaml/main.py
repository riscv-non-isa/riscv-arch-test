#!/usr/bin/python3 

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
# limitations under the License.

import os
import sys
import shutil
import logging

import oyaml as yaml

import riscv_config.utils as utils
import riscv_config.checker as checker
from riscv_config.errors import ValidationError

import writeOVPsimConfig as ovp

logger = logging.getLogger(__name__)

def main():
    global logger

    '''
        Entry point for writing OVPsim config files from YAML
    '''

    # Set up the parser
    parser = utils.riscv_config_cmdline_args()
    parser.add_argument('--target',
                        type=str,
                        metavar='<target>',
                        help='Write targets configuration file: OVPsim | <other>',
                        )
    parser.add_argument('--target_trace',
                        action='store_true',
                        help='Trace writing target config file',
                        )
    parser.add_argument('--target_phase',
                        type=str,
                        metavar='<target_phase>',
                        help='Only process specific target phase',
                        )
    parser.prog = "./main.py"
    args = parser.parse_args()

    args.work_dir = "work" # force this to be this name

    work_dir = os.path.join(os.getcwd(), args.work_dir)
    if not os.path.exists(work_dir):
        os.mkdir(work_dir)

    # Set up the logger
    utils.setup_logging(args.verbose)
    logger = logging.getLogger()
    logger.handlers = []
    ch = logging.StreamHandler()
    ch.setFormatter(utils.ColoredFormatter())
    logger.addHandler(ch)
    fh = logging.FileHandler(work_dir+'/run.log', 'w')
    logger.addHandler(fh)

    if not os.path.exists(os.path.abspath(args.isa_spec)):
        fatal (os.path.abspath(args.isa_spec)+" does not exist")
    if not os.path.exists(os.path.abspath(args.platform_spec)):
        fatal (os.path.abspath(args.platform_spec)+" does not exist")

    try:
        checker.check_specs(os.path.abspath(args.isa_spec),
                            os.path.abspath(args.platform_spec), work_dir)
    except ValidationError as msg:
        logger.error(msg)
        return 1

    if args.target:
        if args.target == "OVPsim" or args.target == "OVPsim_check":
            ovp.write_ovp (os.path.abspath(args.isa_spec),
                os.path.abspath(args.platform_spec), (args.target == "OVPsim_check"), work_dir, args.target_trace)
            if not args.target_phase == "one":
                isa_basename      = os.path.basename(os.path.abspath(args.isa_spec).split('.')[0])
                platform_basename = os.path.basename(os.path.abspath(args.platform_spec).split('.')[0])
                logger.info ("Starting second phase for: "+isa_basename)
                isa_spec_checked      = work_dir+"/"+isa_basename+"_checked.yaml"
                platform_spec_checked = work_dir+"/"+platform_basename+"_checked.yaml"
                try:
                    checker.check_specs(os.path.abspath(isa_spec_checked), os.path.abspath(platform_spec_checked), work_dir)
                except ValidationError as msg:
                    logger.error(msg)
                    return 1
                ovp.write_ovp (os.path.abspath(isa_spec_checked),
                    os.path.abspath(platform_spec_checked), (args.target == "OVPsim_check"), work_dir, args.target_trace)
                os.remove (work_dir+"/"+isa_basename+"_riscvOVPsim.ic")
        else:
            logger.error ("Error: target not known: '"+args.target+"'")
            sys.exit (-1)

if __name__ == "__main__":
    exit(main())
