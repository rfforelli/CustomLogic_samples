set lang "C++"
set moduleName "myproject_axi"
set moduleIsExternC "0"
set rawDecl ""
set globalVariable ""
set PortList ""
set PortName0 "VideoIn"
set BitWidth0 "256"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "2"
set Reference0 "1"
set Dims0 [list 0]
set Interface0 [list AP_STREAM 0] 
set structMem0 ""
set PortName00 "Data"
set BitWidth00 "128"
set ArrayOpt00 ""
set Const00 "0"
set Volatile00 "0"
set Pointer00 "0"
set Reference00 "0"
set Dims00 [list 0]
set Interface00 "wire"
set DataType00 "[list ap_uint 128 ]"
set Port00 [list $PortName00 $Interface00 $DataType00 $Pointer00 $Dims00 $Const00 $Volatile00 $ArrayOpt00]
lappend structMem0 $Port00
set PortName01 "User"
set BitWidth01 "8"
set ArrayOpt01 ""
set Const01 "0"
set Volatile01 "0"
set Pointer01 "0"
set Reference01 "0"
set Dims01 [list 0]
set Interface01 "wire"
set DataType01 "[list ap_uint 4 ]"
set Port01 [list $PortName01 $Interface01 $DataType01 $Pointer01 $Dims01 $Const01 $Volatile01 $ArrayOpt01]
lappend structMem0 $Port01
set structParameter0 [list ]
set structArgument0 [list ]
set NameSpace0 [list ]
set structIsPacked0 "0"
set DataType0 [list "video_struct" "struct video_struct" $structMem0 1 0 $structParameter0 $structArgument0 $NameSpace0 $structIsPacked0]
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend PortList $Port0
set PortName1 "VideoOut"
set BitWidth1 "256"
set ArrayOpt1 ""
set Const1 "0"
set Volatile1 "0"
set Pointer1 "2"
set Reference1 "1"
set Dims1 [list 0]
set Interface1 [list AP_STREAM 0] 
set structMem1 ""
set PortName10 "Data"
set BitWidth10 "128"
set ArrayOpt10 ""
set Const10 "0"
set Volatile10 "0"
set Pointer10 "0"
set Reference10 "0"
set Dims10 [list 0]
set Interface10 "wire"
set DataType10 "[list ap_uint 128 ]"
set Port10 [list $PortName10 $Interface10 $DataType10 $Pointer10 $Dims10 $Const10 $Volatile10 $ArrayOpt10]
lappend structMem1 $Port10
set PortName11 "User"
set BitWidth11 "8"
set ArrayOpt11 ""
set Const11 "0"
set Volatile11 "0"
set Pointer11 "0"
set Reference11 "0"
set Dims11 [list 0]
set Interface11 "wire"
set DataType11 "[list ap_uint 4 ]"
set Port11 [list $PortName11 $Interface11 $DataType11 $Pointer11 $Dims11 $Const11 $Volatile11 $ArrayOpt11]
lappend structMem1 $Port11
set structParameter1 [list ]
set structArgument1 [list ]
set NameSpace1 [list ]
set structIsPacked1 "0"
set DataType1 [list "video_struct" "struct video_struct" $structMem1 1 0 $structParameter1 $structArgument1 $NameSpace1 $structIsPacked1]
set Port1 [list $PortName1 $Interface1 $DataType1 $Pointer1 $Dims1 $Const1 $Volatile1 $ArrayOpt1]
lappend PortList $Port1
set PortName2 "MetaIn"
set BitWidth2 "64"
set ArrayOpt2 ""
set Const2 "0"
set Volatile2 "0"
set Pointer2 "1"
set Reference2 "0"
set Dims2 [list 0]
set Interface2 "wire"
set structMem2 ""
set PortName20 "StreamId"
set BitWidth20 "8"
set ArrayOpt20 ""
set Const20 "0"
set Volatile20 "0"
set Pointer20 "0"
set Reference20 "0"
set Dims20 [list 0]
set Interface20 "wire"
set DataType20 "unsigned char"
set Port20 [list $PortName20 $Interface20 $DataType20 $Pointer20 $Dims20 $Const20 $Volatile20 $ArrayOpt20]
lappend structMem2 $Port20
set PortName21 "SourceTag"
set BitWidth21 "16"
set ArrayOpt21 ""
set Const21 "0"
set Volatile21 "0"
set Pointer21 "0"
set Reference21 "0"
set Dims21 [list 0]
set Interface21 "wire"
set DataType21 "unsigned short"
set Port21 [list $PortName21 $Interface21 $DataType21 $Pointer21 $Dims21 $Const21 $Volatile21 $ArrayOpt21]
lappend structMem2 $Port21
set PortName22 "Xsize"
set BitWidth22 "32"
set ArrayOpt22 ""
set Const22 "0"
set Volatile22 "0"
set Pointer22 "0"
set Reference22 "0"
set Dims22 [list 0]
set Interface22 "wire"
set DataType22 "[list ap_int 24 ]"
set Port22 [list $PortName22 $Interface22 $DataType22 $Pointer22 $Dims22 $Const22 $Volatile22 $ArrayOpt22]
lappend structMem2 $Port22
set PortName23 "Xoffs"
set BitWidth23 "32"
set ArrayOpt23 ""
set Const23 "0"
set Volatile23 "0"
set Pointer23 "0"
set Reference23 "0"
set Dims23 [list 0]
set Interface23 "wire"
set DataType23 "[list ap_int 24 ]"
set Port23 [list $PortName23 $Interface23 $DataType23 $Pointer23 $Dims23 $Const23 $Volatile23 $ArrayOpt23]
lappend structMem2 $Port23
set PortName24 "Ysize"
set BitWidth24 "32"
set ArrayOpt24 ""
set Const24 "0"
set Volatile24 "0"
set Pointer24 "0"
set Reference24 "0"
set Dims24 [list 0]
set Interface24 "wire"
set DataType24 "[list ap_int 24 ]"
set Port24 [list $PortName24 $Interface24 $DataType24 $Pointer24 $Dims24 $Const24 $Volatile24 $ArrayOpt24]
lappend structMem2 $Port24
set PortName25 "Yoffs"
set BitWidth25 "32"
set ArrayOpt25 ""
set Const25 "0"
set Volatile25 "0"
set Pointer25 "0"
set Reference25 "0"
set Dims25 [list 0]
set Interface25 "wire"
set DataType25 "[list ap_int 24 ]"
set Port25 [list $PortName25 $Interface25 $DataType25 $Pointer25 $Dims25 $Const25 $Volatile25 $ArrayOpt25]
lappend structMem2 $Port25
set PortName26 "DsizeL"
set BitWidth26 "32"
set ArrayOpt26 ""
set Const26 "0"
set Volatile26 "0"
set Pointer26 "0"
set Reference26 "0"
set Dims26 [list 0]
set Interface26 "wire"
set DataType26 "[list ap_int 24 ]"
set Port26 [list $PortName26 $Interface26 $DataType26 $Pointer26 $Dims26 $Const26 $Volatile26 $ArrayOpt26]
lappend structMem2 $Port26
set PortName27 "PixelF"
set BitWidth27 "16"
set ArrayOpt27 ""
set Const27 "0"
set Volatile27 "0"
set Pointer27 "0"
set Reference27 "0"
set Dims27 [list 0]
set Interface27 "wire"
set DataType27 "unsigned short"
set Port27 [list $PortName27 $Interface27 $DataType27 $Pointer27 $Dims27 $Const27 $Volatile27 $ArrayOpt27]
lappend structMem2 $Port27
set PortName28 "TapG"
set BitWidth28 "16"
set ArrayOpt28 ""
set Const28 "0"
set Volatile28 "0"
set Pointer28 "0"
set Reference28 "0"
set Dims28 [list 0]
set Interface28 "wire"
set DataType28 "unsigned short"
set Port28 [list $PortName28 $Interface28 $DataType28 $Pointer28 $Dims28 $Const28 $Volatile28 $ArrayOpt28]
lappend structMem2 $Port28
set PortName29 "Flags"
set BitWidth29 "8"
set ArrayOpt29 ""
set Const29 "0"
set Volatile29 "0"
set Pointer29 "0"
set Reference29 "0"
set Dims29 [list 0]
set Interface29 "wire"
set DataType29 "unsigned char"
set Port29 [list $PortName29 $Interface29 $DataType29 $Pointer29 $Dims29 $Const29 $Volatile29 $ArrayOpt29]
lappend structMem2 $Port29
set PortName210 "Timestamp"
set BitWidth210 "32"
set ArrayOpt210 ""
set Const210 "0"
set Volatile210 "0"
set Pointer210 "0"
set Reference210 "0"
set Dims210 [list 0]
set Interface210 "wire"
set DataType210 "unsigned int"
set Port210 [list $PortName210 $Interface210 $DataType210 $Pointer210 $Dims210 $Const210 $Volatile210 $ArrayOpt210]
lappend structMem2 $Port210
set PortName211 "PixProcessingFlgs"
set BitWidth211 "8"
set ArrayOpt211 ""
set Const211 "0"
set Volatile211 "0"
set Pointer211 "0"
set Reference211 "0"
set Dims211 [list 0]
set Interface211 "wire"
set DataType211 "unsigned char"
set Port211 [list $PortName211 $Interface211 $DataType211 $Pointer211 $Dims211 $Const211 $Volatile211 $ArrayOpt211]
lappend structMem2 $Port211
set PortName212 "ModPixelF"
set BitWidth212 "32"
set ArrayOpt212 ""
set Const212 "0"
set Volatile212 "0"
set Pointer212 "0"
set Reference212 "0"
set Dims212 [list 0]
set Interface212 "wire"
set DataType212 "unsigned int"
set Port212 [list $PortName212 $Interface212 $DataType212 $Pointer212 $Dims212 $Const212 $Volatile212 $ArrayOpt212]
lappend structMem2 $Port212
set PortName213 "Status"
set BitWidth213 "32"
set ArrayOpt213 ""
set Const213 "0"
set Volatile213 "0"
set Pointer213 "0"
set Reference213 "0"
set Dims213 [list 0]
set Interface213 "wire"
set DataType213 "unsigned int"
set Port213 [list $PortName213 $Interface213 $DataType213 $Pointer213 $Dims213 $Const213 $Volatile213 $ArrayOpt213]
lappend structMem2 $Port213
set structParameter2 [list ]
set structArgument2 [list ]
set NameSpace2 [list ]
set structIsPacked2 "0"
set DataType2 [list "Metadata_t" "struct Metadata_struct" $structMem2 0 0 $structParameter2 $structArgument2 $NameSpace2 $structIsPacked2]
set Port2 [list $PortName2 $Interface2 $DataType2 $Pointer2 $Dims2 $Const2 $Volatile2 $ArrayOpt2]
lappend PortList $Port2
set PortName3 "MetaOut"
set BitWidth3 "64"
set ArrayOpt3 ""
set Const3 "0"
set Volatile3 "0"
set Pointer3 "1"
set Reference3 "0"
set Dims3 [list 0]
set Interface3 "wire"
set structMem3 ""
set PortName30 "StreamId"
set BitWidth30 "8"
set ArrayOpt30 ""
set Const30 "0"
set Volatile30 "0"
set Pointer30 "0"
set Reference30 "0"
set Dims30 [list 0]
set Interface30 "wire"
set DataType30 "unsigned char"
set Port30 [list $PortName30 $Interface30 $DataType30 $Pointer30 $Dims30 $Const30 $Volatile30 $ArrayOpt30]
lappend structMem3 $Port30
set PortName31 "SourceTag"
set BitWidth31 "16"
set ArrayOpt31 ""
set Const31 "0"
set Volatile31 "0"
set Pointer31 "0"
set Reference31 "0"
set Dims31 [list 0]
set Interface31 "wire"
set DataType31 "unsigned short"
set Port31 [list $PortName31 $Interface31 $DataType31 $Pointer31 $Dims31 $Const31 $Volatile31 $ArrayOpt31]
lappend structMem3 $Port31
set PortName32 "Xsize"
set BitWidth32 "32"
set ArrayOpt32 ""
set Const32 "0"
set Volatile32 "0"
set Pointer32 "0"
set Reference32 "0"
set Dims32 [list 0]
set Interface32 "wire"
set DataType32 "[list ap_int 24 ]"
set Port32 [list $PortName32 $Interface32 $DataType32 $Pointer32 $Dims32 $Const32 $Volatile32 $ArrayOpt32]
lappend structMem3 $Port32
set PortName33 "Xoffs"
set BitWidth33 "32"
set ArrayOpt33 ""
set Const33 "0"
set Volatile33 "0"
set Pointer33 "0"
set Reference33 "0"
set Dims33 [list 0]
set Interface33 "wire"
set DataType33 "[list ap_int 24 ]"
set Port33 [list $PortName33 $Interface33 $DataType33 $Pointer33 $Dims33 $Const33 $Volatile33 $ArrayOpt33]
lappend structMem3 $Port33
set PortName34 "Ysize"
set BitWidth34 "32"
set ArrayOpt34 ""
set Const34 "0"
set Volatile34 "0"
set Pointer34 "0"
set Reference34 "0"
set Dims34 [list 0]
set Interface34 "wire"
set DataType34 "[list ap_int 24 ]"
set Port34 [list $PortName34 $Interface34 $DataType34 $Pointer34 $Dims34 $Const34 $Volatile34 $ArrayOpt34]
lappend structMem3 $Port34
set PortName35 "Yoffs"
set BitWidth35 "32"
set ArrayOpt35 ""
set Const35 "0"
set Volatile35 "0"
set Pointer35 "0"
set Reference35 "0"
set Dims35 [list 0]
set Interface35 "wire"
set DataType35 "[list ap_int 24 ]"
set Port35 [list $PortName35 $Interface35 $DataType35 $Pointer35 $Dims35 $Const35 $Volatile35 $ArrayOpt35]
lappend structMem3 $Port35
set PortName36 "DsizeL"
set BitWidth36 "32"
set ArrayOpt36 ""
set Const36 "0"
set Volatile36 "0"
set Pointer36 "0"
set Reference36 "0"
set Dims36 [list 0]
set Interface36 "wire"
set DataType36 "[list ap_int 24 ]"
set Port36 [list $PortName36 $Interface36 $DataType36 $Pointer36 $Dims36 $Const36 $Volatile36 $ArrayOpt36]
lappend structMem3 $Port36
set PortName37 "PixelF"
set BitWidth37 "16"
set ArrayOpt37 ""
set Const37 "0"
set Volatile37 "0"
set Pointer37 "0"
set Reference37 "0"
set Dims37 [list 0]
set Interface37 "wire"
set DataType37 "unsigned short"
set Port37 [list $PortName37 $Interface37 $DataType37 $Pointer37 $Dims37 $Const37 $Volatile37 $ArrayOpt37]
lappend structMem3 $Port37
set PortName38 "TapG"
set BitWidth38 "16"
set ArrayOpt38 ""
set Const38 "0"
set Volatile38 "0"
set Pointer38 "0"
set Reference38 "0"
set Dims38 [list 0]
set Interface38 "wire"
set DataType38 "unsigned short"
set Port38 [list $PortName38 $Interface38 $DataType38 $Pointer38 $Dims38 $Const38 $Volatile38 $ArrayOpt38]
lappend structMem3 $Port38
set PortName39 "Flags"
set BitWidth39 "8"
set ArrayOpt39 ""
set Const39 "0"
set Volatile39 "0"
set Pointer39 "0"
set Reference39 "0"
set Dims39 [list 0]
set Interface39 "wire"
set DataType39 "unsigned char"
set Port39 [list $PortName39 $Interface39 $DataType39 $Pointer39 $Dims39 $Const39 $Volatile39 $ArrayOpt39]
lappend structMem3 $Port39
set PortName310 "Timestamp"
set BitWidth310 "32"
set ArrayOpt310 ""
set Const310 "0"
set Volatile310 "0"
set Pointer310 "0"
set Reference310 "0"
set Dims310 [list 0]
set Interface310 "wire"
set DataType310 "unsigned int"
set Port310 [list $PortName310 $Interface310 $DataType310 $Pointer310 $Dims310 $Const310 $Volatile310 $ArrayOpt310]
lappend structMem3 $Port310
set PortName311 "PixProcessingFlgs"
set BitWidth311 "8"
set ArrayOpt311 ""
set Const311 "0"
set Volatile311 "0"
set Pointer311 "0"
set Reference311 "0"
set Dims311 [list 0]
set Interface311 "wire"
set DataType311 "unsigned char"
set Port311 [list $PortName311 $Interface311 $DataType311 $Pointer311 $Dims311 $Const311 $Volatile311 $ArrayOpt311]
lappend structMem3 $Port311
set PortName312 "ModPixelF"
set BitWidth312 "32"
set ArrayOpt312 ""
set Const312 "0"
set Volatile312 "0"
set Pointer312 "0"
set Reference312 "0"
set Dims312 [list 0]
set Interface312 "wire"
set DataType312 "unsigned int"
set Port312 [list $PortName312 $Interface312 $DataType312 $Pointer312 $Dims312 $Const312 $Volatile312 $ArrayOpt312]
lappend structMem3 $Port312
set PortName313 "Status"
set BitWidth313 "32"
set ArrayOpt313 ""
set Const313 "0"
set Volatile313 "0"
set Pointer313 "0"
set Reference313 "0"
set Dims313 [list 0]
set Interface313 "wire"
set DataType313 "unsigned int"
set Port313 [list $PortName313 $Interface313 $DataType313 $Pointer313 $Dims313 $Const313 $Volatile313 $ArrayOpt313]
lappend structMem3 $Port313
set structParameter3 [list ]
set structArgument3 [list ]
set NameSpace3 [list ]
set structIsPacked3 "0"
set DataType3 [list "Metadata_t" "struct Metadata_struct" $structMem3 0 0 $structParameter3 $structArgument3 $NameSpace3 $structIsPacked3]
set Port3 [list $PortName3 $Interface3 $DataType3 $Pointer3 $Dims3 $Const3 $Volatile3 $ArrayOpt3]
lappend PortList $Port3
set globalAPint "" 
set returnAPInt "" 
set hasCPPAPInt 1 
set argAPInt "" 
set hasCPPAPFix 0 
set hasSCFix 0 
set hasCBool 0 
set hasCPPComplex 0 
set isTemplateTop 0
set hasHalf 0 
set dataPackList ""
set module [list $moduleName $PortList $rawDecl $argAPInt $returnAPInt $dataPackList]
