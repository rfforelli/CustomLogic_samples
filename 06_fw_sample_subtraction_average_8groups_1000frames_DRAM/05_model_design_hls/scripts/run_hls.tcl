# Get Paths
set initialPath [pwd]
puts "EURESYS_INFO: \[Initial path\] $initialPath"

set scriptPath [file dirname [file normalize [info script]]]
puts "EURESYS_INFO: \[Script path\] $scriptPath"

set sourcePath [file normalize "$scriptPath/../srcs"]
puts "EURESYS_INFO: \[Source path\] $sourcePath"

set hlsProjectPath [file normalize "$scriptPath/.."]
puts "EURESYS_INFO: \[HLS project path\] $hlsProjectPath"

cd $hlsProjectPath

puts "EURESYS_INFO: Generating \"myproject_axi\" IP..."

open_project myproject_axi
set_top myproject_axi
add_files $sourcePath/myproject_axi.cpp -cflags "-std=c++0x"	
add_files $sourcePath/myproject.cpp -cflags "-std=c++0x"
add_files -tb $sourcePath/myproject_test.cpp -cflags "-Wno-unknown-pragmas"
open_solution "KCU035"
catch {config_array_partition -maximum_size 4096}
set_part {xcku035-fbva676-2-e} -tool vivado
create_clock -period 2 -name default
set_clock_uncertainty .25 default
config_compile -no_signed_zeros=0 -unsafe_math_optimizations=0
config_export -description HLS_myproject_axi -display_name myproject_axi -format ip_catalog -library KCU035 -rtl verilog -vendor Fermilab -version 0.1 -vivado_phys_opt place -vivado_report_level 0
config_schedule -effort high -enable_dsp_full_reg=0 -relax_ii_for_timing=0 -verbose
# csim_design -clean -ldflags {-z stack-size=1048576000}
csynth_design

puts "EURESYS_INFO: Generation of the \"myproject_axi\" IP done."

cd $initialPath
exit
