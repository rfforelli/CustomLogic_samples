
set TopModule "myproject_axi"
set ClockPeriod 2
set ClockList ap_clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 0
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xcku035:-fbva676:-2-e
set SourceFiles {sc {} c {/home/rforelli/MSU_work/CustomLogic_samples/03_fw_sample_average_9frames/05_model_design_hls/srcs/myproject.cpp /home/rforelli/MSU_work/CustomLogic_samples/03_fw_sample_average_9frames/05_model_design_hls/srcs/myproject_axi.cpp}}
set SourceFlags {sc {} c {{ -std=c++0x} { -std=c++0x}}}
set DirectiveFile /home/rforelli/MSU_work/CustomLogic_samples/03_fw_sample_average_9frames/05_model_design_hls/myproject_axi/KCU035/KCU035.directive
set TBFiles {verilog /home/rforelli/MSU_work/CustomLogic_samples/03_fw_sample_average_9frames/05_model_design_hls/srcs/myproject_test.cpp bc /home/rforelli/MSU_work/CustomLogic_samples/03_fw_sample_average_9frames/05_model_design_hls/srcs/myproject_test.cpp sc /home/rforelli/MSU_work/CustomLogic_samples/03_fw_sample_average_9frames/05_model_design_hls/srcs/myproject_test.cpp vhdl /home/rforelli/MSU_work/CustomLogic_samples/03_fw_sample_average_9frames/05_model_design_hls/srcs/myproject_test.cpp c {} cas /home/rforelli/MSU_work/CustomLogic_samples/03_fw_sample_average_9frames/05_model_design_hls/srcs/myproject_test.cpp}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set TBInstNames {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../vivado_hls.app
set ApsFile KCU035.aps
set AvePath ../..
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/kintexu/kintexu xilinx/kintexu/kintexu_fpv7}}}
set HPFPO 0