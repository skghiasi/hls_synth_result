; ModuleID = '/home/keyarash/University/Project1/___Cifar10Resnet___/hls-nn-lib_test/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer
@docompute_str = internal unnamed_addr constant [10 x i8] c"docompute\00"
@p_str4 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@p_str3 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str = private unnamed_addr constant [5 x i8] c"axis\00", align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @docompute(i512* %input_V_data_V, i1* %input_V_last_V, i64* %input_V_keep_V, i512* %output_V_data_V, i1* %output_V_last_V, i64* %output_V_keep_V) readnone {
  call void (...)* @_ssdm_op_SpecBitsMap(i512* %input_V_data_V), !map !14
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %input_V_last_V), !map !18
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %input_V_keep_V), !map !22
  call void (...)* @_ssdm_op_SpecBitsMap(i512* %output_V_data_V), !map !26
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %output_V_last_V), !map !30
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %output_V_keep_V), !map !34
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @docompute_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i512* %output_V_data_V, i1* %output_V_last_V, i64* %output_V_keep_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i512* %input_V_data_V, i1* %input_V_last_V, i64* %input_V_keep_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [8 x i8]* @p_str4, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

!opencl.kernels = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!7}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"stream<struct ap_axis> &", metadata !"stream<struct ap_axis> &"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"input", metadata !"output"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{metadata !8, [0 x i32]* @llvm_global_ctors_0}
!8 = metadata !{metadata !9}
!9 = metadata !{i32 0, i32 31, metadata !10}
!10 = metadata !{metadata !11}
!11 = metadata !{metadata !"llvm.global_ctors.0", metadata !12, metadata !"", i32 0, i32 31}
!12 = metadata !{metadata !13}
!13 = metadata !{i32 0, i32 0, i32 1}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 0, i32 511, metadata !16}
!16 = metadata !{metadata !17}
!17 = metadata !{metadata !"input.V.data.V", metadata !12, metadata !"uint512", i32 0, i32 511}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 0, i32 0, metadata !20}
!20 = metadata !{metadata !21}
!21 = metadata !{metadata !"input.V.last.V", metadata !12, metadata !"uint1", i32 0, i32 0}
!22 = metadata !{metadata !23}
!23 = metadata !{i32 0, i32 63, metadata !24}
!24 = metadata !{metadata !25}
!25 = metadata !{metadata !"input.V.keep.V", metadata !12, metadata !"uint64", i32 0, i32 63}
!26 = metadata !{metadata !27}
!27 = metadata !{i32 0, i32 511, metadata !28}
!28 = metadata !{metadata !29}
!29 = metadata !{metadata !"output.V.data.V", metadata !12, metadata !"uint512", i32 0, i32 511}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 0, metadata !32}
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !"output.V.last.V", metadata !12, metadata !"uint1", i32 0, i32 0}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 63, metadata !36}
!36 = metadata !{metadata !37}
!37 = metadata !{metadata !"output.V.keep.V", metadata !12, metadata !"uint64", i32 0, i32 63}
