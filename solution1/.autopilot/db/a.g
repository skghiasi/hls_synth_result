#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/keyarash/University/Project1/___Cifar10Resnet___/hls-nn-lib_test/solution1/.autopilot/db/a.g.bc ${1+"$@"}
