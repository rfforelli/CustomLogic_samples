#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/rforelli/MSU_work/CustomLogic_samples/02_fw_sample_subtraction/05_model_design_hls/myproject_axi/KCU035/.autopilot/db/a.g.bc ${1+"$@"}