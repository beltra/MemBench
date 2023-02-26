; ModuleID = 'C:/FPGA/MemBench/ddrbench_sol/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<48>" = type { %"struct.ap_int_base<48, false>" }
%"struct.ap_int_base<48, false>" = type { %"struct.ssdm_int<48, false>" }
%"struct.ssdm_int<48, false>" = type { i48 }

; Function Attrs: noinline
define void @apatb_ddrBenchmark_ir(%"struct.ap_uint<48>"* noalias nocapture nonnull %mem, i32 %dataNum, i1 zeroext %rw, i64* noalias nocapture nonnull %res) local_unnamed_addr #0 {
entry:
  %malloccall = call i8* @malloc(i64 89478464)
  %mem_copy = bitcast i8* %malloccall to [11184808 x i64]*
  %res_copy = alloca i64, align 512
  %0 = bitcast %"struct.ap_uint<48>"* %mem to [11184808 x %"struct.ap_uint<48>"]*
  call fastcc void @copy_in([11184808 x %"struct.ap_uint<48>"]* nonnull %0, [11184808 x i64]* %mem_copy, i64* nonnull %res, i64* nonnull align 512 %res_copy)
  %1 = getelementptr [11184808 x i64], [11184808 x i64]* %mem_copy, i32 0, i32 0
  call void @apatb_ddrBenchmark_hw(i64* %1, i32 %dataNum, i1 %rw, i64* %res_copy)
  call void @copy_back([11184808 x %"struct.ap_uint<48>"]* %0, [11184808 x i64]* %mem_copy, i64* %res, i64* %res_copy)
  call void @free(i8* %malloccall)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([11184808 x %"struct.ap_uint<48>"]* noalias readonly, [11184808 x i64]* noalias, i64* noalias readonly, i64* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a11184808struct.ap_uint<48>"([11184808 x i64]* %1, [11184808 x %"struct.ap_uint<48>"]* %0)
  call fastcc void @onebyonecpy_hls.p0i64(i64* align 512 %3, i64* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a11184808struct.ap_uint<48>"([11184808 x i64]* noalias, [11184808 x %"struct.ap_uint<48>"]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [11184808 x i64]* %0, null
  %3 = icmp eq [11184808 x %"struct.ap_uint<48>"]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [11184808 x %"struct.ap_uint<48>"], [11184808 x %"struct.ap_uint<48>"]* %1, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %5 = getelementptr [11184808 x i64], [11184808 x i64]* %0, i64 0, i64 %for.loop.idx7
  %6 = load i48, i48* %src.addr.0.0.05, align 8
  %7 = call i64 @_llvm.fpga.pack.none.i64.i48(i48 %6)
  store i64 %7, i64* %5, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 11184808
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0i64(i64* noalias align 512, i64* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq i64* %0, null
  %3 = icmp eq i64* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = load i64, i64* %1, align 8
  store i64 %5, i64* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([11184808 x %"struct.ap_uint<48>"]* noalias, [11184808 x i64]* noalias readonly, i64* noalias, i64* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a11184808struct.ap_uint<48>.6"([11184808 x %"struct.ap_uint<48>"]* %0, [11184808 x i64]* %1)
  call fastcc void @onebyonecpy_hls.p0i64(i64* %2, i64* align 512 %3)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: alwaysinline nounwind readnone
define internal i64 @_llvm.fpga.pack.none.i64.i48(i48 %A) #4 {
  %A.cast = zext i48 %A to i64
  ret i64 %A.cast
}

; Function Attrs: alwaysinline nounwind readnone
define internal i48 @_llvm.fpga.unpack.none.i48.i64(i64 %A) #4 {
  %A.cast = trunc i64 %A to i48
  ret i48 %A.cast
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a11184808struct.ap_uint<48>.6"([11184808 x %"struct.ap_uint<48>"]* noalias, [11184808 x i64]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [11184808 x %"struct.ap_uint<48>"]* %0, null
  %3 = icmp eq [11184808 x i64]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %5 = getelementptr [11184808 x i64], [11184808 x i64]* %1, i64 0, i64 %for.loop.idx7
  %dst.addr.0.0.06 = getelementptr [11184808 x %"struct.ap_uint<48>"], [11184808 x %"struct.ap_uint<48>"]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = call i48 @_llvm.fpga.unpack.none.i48.i64(i64 %6)
  store i48 %7, i48* %dst.addr.0.0.06, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 11184808
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

declare void @apatb_ddrBenchmark_hw(i64*, i32, i1, i64*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([11184808 x %"struct.ap_uint<48>"]* noalias, [11184808 x i64]* noalias readonly, i64* noalias, i64* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a11184808struct.ap_uint<48>.6"([11184808 x %"struct.ap_uint<48>"]* %0, [11184808 x i64]* %1)
  call fastcc void @onebyonecpy_hls.p0i64(i64* %2, i64* align 512 %3)
  ret void
}

define void @ddrBenchmark_hw_stub_wrapper(i64*, i32, i1, i64*) #5 {
entry:
  %malloccall = tail call i8* @malloc(i64 89478464)
  %4 = bitcast i8* %malloccall to [11184808 x %"struct.ap_uint<48>"]*
  %5 = bitcast i64* %0 to [11184808 x i64]*
  call void @copy_out([11184808 x %"struct.ap_uint<48>"]* %4, [11184808 x i64]* %5, i64* null, i64* %3)
  %6 = bitcast [11184808 x %"struct.ap_uint<48>"]* %4 to %"struct.ap_uint<48>"*
  call void @ddrBenchmark_hw_stub(%"struct.ap_uint<48>"* %6, i32 %1, i1 %2, i64* %3)
  call void @copy_in([11184808 x %"struct.ap_uint<48>"]* %4, [11184808 x i64]* %5, i64* null, i64* %3)
  ret void
}

declare void @ddrBenchmark_hw_stub(%"struct.ap_uint<48>"*, i32, i1, i64*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { alwaysinline nounwind readnone }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
