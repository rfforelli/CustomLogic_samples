# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name StreamIn_V_Data_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_StreamIn_V_Data_V \
    op interface \
    ports { StreamIn_V_Data_V_dout { I 128 vector } StreamIn_V_Data_V_empty_n { I 1 bit } StreamIn_V_Data_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name StreamIn_V_User_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_StreamIn_V_User_V \
    op interface \
    ports { StreamIn_V_User_V_dout { I 4 vector } StreamIn_V_User_V_empty_n { I 1 bit } StreamIn_V_User_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name StreamOut_V_Data_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_StreamOut_V_Data_V \
    op interface \
    ports { StreamOut_V_Data_V_din { O 128 vector } StreamOut_V_Data_V_full_n { I 1 bit } StreamOut_V_Data_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name StreamOut_V_User_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_StreamOut_V_User_V \
    op interface \
    ports { StreamOut_V_User_V_din { O 4 vector } StreamOut_V_User_V_full_n { I 1 bit } StreamOut_V_User_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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
    reset_level 1 \
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
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
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


