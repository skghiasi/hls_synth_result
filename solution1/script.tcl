############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hls-nn-lib_test
set_top docompute
add_files hls-nn-lib_test/.settings/core.cpp
add_files -tb hls-nn-lib_test/.settings/test.cpp -cflags "-I../../../HARDNET/hardnet-master/hls-nn-lib/hls-nn-lib.h -std=c++0x"
open_solution "solution1"
set_part {xcvu9p-fsgd2104-3-e} -tool vivado
create_clock -period 10 -name default
#source "./hls-nn-lib_test/solution1/directives.tcl"
csim_design -compiler gcc
csynth_design
cosim_design
export_design -format ip_catalog
