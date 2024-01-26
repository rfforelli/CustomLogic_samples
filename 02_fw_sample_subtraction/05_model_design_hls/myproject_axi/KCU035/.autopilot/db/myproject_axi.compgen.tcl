# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 24 \
    name VideoIn_V_Data_V \
    reset_level 0 \
    sync_rst true \
    corename {VideoIn} \
    metadata {  } \
    op interface \
    ports { VideoIn_TDATA { I 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'VideoIn_V_Data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 25 \
    name VideoIn_V_User_V \
    reset_level 0 \
    sync_rst true \
    corename {VideoIn} \
    metadata {  } \
    op interface \
    ports { VideoIn_TVALID { I 1 bit } VideoIn_TREADY { O 1 bit } VideoIn_TUSER { I 4 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'VideoIn_V_User_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 26 \
    name VideoOut_V_Data_V \
    reset_level 0 \
    sync_rst true \
    corename {VideoOut} \
    metadata {  } \
    op interface \
    ports { VideoOut_TDATA { O 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'VideoOut_V_Data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 27 \
    name VideoOut_V_User_V \
    reset_level 0 \
    sync_rst true \
    corename {VideoOut} \
    metadata {  } \
    op interface \
    ports { VideoOut_TVALID { O 1 bit } VideoOut_TREADY { I 1 bit } VideoOut_TUSER { O 4 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'VideoOut_V_User_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name MetaIn_StreamId \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_MetaIn_StreamId \
    op interface \
    ports { MetaIn_StreamId { I 8 vector } MetaIn_StreamId_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name MetaIn_SourceTag \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_MetaIn_SourceTag \
    op interface \
    ports { MetaIn_SourceTag { I 16 vector } MetaIn_SourceTag_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name MetaIn_Xsize_V \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_MetaIn_Xsize_V \
    op interface \
    ports { MetaIn_Xsize_V { I 24 vector } MetaIn_Xsize_V_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name MetaIn_Xoffs_V \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_MetaIn_Xoffs_V \
    op interface \
    ports { MetaIn_Xoffs_V { I 24 vector } MetaIn_Xoffs_V_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name MetaIn_Ysize_V \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_MetaIn_Ysize_V \
    op interface \
    ports { MetaIn_Ysize_V { I 24 vector } MetaIn_Ysize_V_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name MetaIn_Yoffs_V \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_MetaIn_Yoffs_V \
    op interface \
    ports { MetaIn_Yoffs_V { I 24 vector } MetaIn_Yoffs_V_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name MetaIn_DsizeL_V \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_MetaIn_DsizeL_V \
    op interface \
    ports { MetaIn_DsizeL_V { I 24 vector } MetaIn_DsizeL_V_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name MetaIn_PixelF \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_MetaIn_PixelF \
    op interface \
    ports { MetaIn_PixelF { I 16 vector } MetaIn_PixelF_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name MetaIn_TapG \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_MetaIn_TapG \
    op interface \
    ports { MetaIn_TapG { I 16 vector } MetaIn_TapG_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name MetaIn_Flags \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_MetaIn_Flags \
    op interface \
    ports { MetaIn_Flags { I 8 vector } MetaIn_Flags_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name MetaIn_Timestamp \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_MetaIn_Timestamp \
    op interface \
    ports { MetaIn_Timestamp { I 32 vector } MetaIn_Timestamp_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name MetaIn_PixProcessingFlgs \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_MetaIn_PixProcessingFlgs \
    op interface \
    ports { MetaIn_PixProcessingFlgs { I 8 vector } MetaIn_PixProcessingFlgs_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name MetaIn_ModPixelF \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_MetaIn_ModPixelF \
    op interface \
    ports { MetaIn_ModPixelF { I 32 vector } MetaIn_ModPixelF_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name MetaIn_Status \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_MetaIn_Status \
    op interface \
    ports { MetaIn_Status { I 32 vector } MetaIn_Status_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name MetaOut_StreamId \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_MetaOut_StreamId \
    op interface \
    ports { MetaOut_StreamId { O 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name MetaOut_SourceTag \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_MetaOut_SourceTag \
    op interface \
    ports { MetaOut_SourceTag { O 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name MetaOut_Xsize_V \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_MetaOut_Xsize_V \
    op interface \
    ports { MetaOut_Xsize_V { O 24 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name MetaOut_Xoffs_V \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_MetaOut_Xoffs_V \
    op interface \
    ports { MetaOut_Xoffs_V { O 24 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name MetaOut_Ysize_V \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_MetaOut_Ysize_V \
    op interface \
    ports { MetaOut_Ysize_V { O 24 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name MetaOut_Yoffs_V \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_MetaOut_Yoffs_V \
    op interface \
    ports { MetaOut_Yoffs_V { O 24 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name MetaOut_DsizeL_V \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_MetaOut_DsizeL_V \
    op interface \
    ports { MetaOut_DsizeL_V { O 24 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name MetaOut_PixelF \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_MetaOut_PixelF \
    op interface \
    ports { MetaOut_PixelF { O 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name MetaOut_TapG \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_MetaOut_TapG \
    op interface \
    ports { MetaOut_TapG { O 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name MetaOut_Flags \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_MetaOut_Flags \
    op interface \
    ports { MetaOut_Flags { O 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name MetaOut_Timestamp \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_MetaOut_Timestamp \
    op interface \
    ports { MetaOut_Timestamp { O 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name MetaOut_PixProcessingFlgs \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_MetaOut_PixProcessingFlgs \
    op interface \
    ports { MetaOut_PixProcessingFlgs { O 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name MetaOut_ModPixelF \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_MetaOut_ModPixelF \
    op interface \
    ports { MetaOut_ModPixelF { O 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name MetaOut_Status \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_MetaOut_Status \
    op interface \
    ports { MetaOut_Status { O 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 0 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst_n
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_rst_n \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


