#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/rforelli/MSU_work/CustomLogic_samples/03_fw_sample_average_499frames/05_model_design_hls/myproject_axi/KCU035/.autopilot/db/a.g.bc ${1+"$@"}