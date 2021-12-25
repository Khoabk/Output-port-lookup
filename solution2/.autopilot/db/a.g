#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/khoa/Documents/logic_design/Output_port_lookup/solution2/.autopilot/db/a.g.bc ${1+"$@"}
