# ==============================================================
# File generated on Tue Jan 23 17:36:50 CST 2024
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb /home/rforelli/MSU_work/CustomLogic_samples/01_fw_sample_thresholding/05_model_design_hls/srcs/myproject_test.cpp -cflags { -Wno-unknown-pragmas}
add_files /home/rforelli/MSU_work/CustomLogic_samples/01_fw_sample_thresholding/05_model_design_hls/srcs/myproject.cpp -cflags -std=c++0x
add_files /home/rforelli/MSU_work/CustomLogic_samples/01_fw_sample_thresholding/05_model_design_hls/srcs/myproject_axi.cpp -cflags -std=c++0x
set_part xcku035-fbva676-2-e
create_clock -name default -period 2
set_clock_uncertainty .25 default
config_array_partition -maximum_size=4096
config_compile -no_signed_zeros=0
config_compile -unsafe_math_optimizations=0
config_export -description=HLS_myproject_axi
config_export -display_name=myproject_axi
config_export -format=ip_catalog
config_export -library=KCU035
config_export -rtl=verilog
config_export -vendor=Fermilab
config_export -version=0.1
config_export -vivado_phys_opt=place
config_export -vivado_report_level=0
config_schedule -effort=high
config_schedule -enable_dsp_full_reg=0
config_schedule -relax_ii_for_timing=0
config_schedule -verbose=1
