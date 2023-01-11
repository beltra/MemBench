; ModuleID = 'C:/Users/gbeve/Downloads/ddrBench/ddrbench_sol/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<512>" = type { %"struct.ap_int_base<512, false>" }
%"struct.ap_int_base<512, false>" = type { %"struct.ssdm_int<512, false>" }
%"struct.ssdm_int<512, false>" = type { i512 }

; Function Attrs: noinline
define void @apatb_ddrBenchmark_ir(%"struct.ap_uint<512>"* noalias nocapture nonnull %mem, i32 %dataNum, i1 zeroext %rw, i64* noalias nocapture nonnull %res) local_unnamed_addr #0 {
entry:
  %malloccall = call i8* @malloc(i64 1048576)
  %mem_copy = bitcast i8* %malloccall to [16384 x i512]*
  %res_copy = alloca i64, align 512
  %0 = bitcast %"struct.ap_uint<512>"* %mem to [16384 x %"struct.ap_uint<512>"]*
  call fastcc void @copy_in([16384 x %"struct.ap_uint<512>"]* nonnull %0, [16384 x i512]* %mem_copy, i64* nonnull %res, i64* nonnull align 512 %res_copy)
  %1 = getelementptr [16384 x i512], [16384 x i512]* %mem_copy, i32 0, i32 0
  call void @apatb_ddrBenchmark_hw(i512* %1, i32 %dataNum, i1 %rw, i64* %res_copy)
  call void @copy_back([16384 x %"struct.ap_uint<512>"]* %0, [16384 x i512]* %mem_copy, i64* %res, i64* %res_copy)
  call void @free(i8* %malloccall)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([16384 x %"struct.ap_uint<512>"]* noalias readonly, [16384 x i512]* noalias, i64* noalias readonly, i64* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a16384struct.ap_uint<512>"([16384 x i512]* %1, [16384 x %"struct.ap_uint<512>"]* %0)
  call fastcc void @onebyonecpy_hls.p0i64(i64* align 512 %3, i64* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a16384struct.ap_uint<512>"([16384 x i512]* noalias, [16384 x %"struct.ap_uint<512>"]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [16384 x i512]* %0, null
  %3 = icmp eq [16384 x %"struct.ap_uint<512>"]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [16384 x %"struct.ap_uint<512>"], [16384 x %"struct.ap_uint<512>"]* %1, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %5 = getelementptr [16384 x i512], [16384 x i512]* %0, i64 0, i64 %for.loop.idx7
  %6 = load i512, i512* %src.addr.0.0.05, align 64
  store i512 %6, i512* %5, align 64
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 16384
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
define internal fastcc void @copy_out([16384 x %"struct.ap_uint<512>"]* noalias, [16384 x i512]* noalias readonly, i64* noalias, i64* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a16384struct.ap_uint<512>.6"([16384 x %"struct.ap_uint<512>"]* %0, [16384 x i512]* %1)
  call fastcc void @onebyonecpy_hls.p0i64(i64* %2, i64* align 512 %3)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a16384struct.ap_uint<512>.6"([16384 x %"struct.ap_uint<512>"]* noalias, [16384 x i512]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [16384 x %"struct.ap_uint<512>"]* %0, null
  %3 = icmp eq [16384 x i512]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %5 = getelementptr [16384 x i512], [16384 x i512]* %1, i64 0, i64 %for.loop.idx7
  %dst.addr.0.0.06 = getelementptr [16384 x %"struct.ap_uint<512>"], [16384 x %"struct.ap_uint<512>"]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %6 = load i512, i512* %5, align 64
  store i512 %6, i512* %dst.addr.0.0.06, align 64
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 16384
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

declare void @apatb_ddrBenchmark_hw(i512*, i32, i1, i64*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([16384 x %"struct.ap_uint<512>"]* noalias, [16384 x i512]* noalias readonly, i64* noalias, i64* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a16384struct.ap_uint<512>.6"([16384 x %"struct.ap_uint<512>"]* %0, [16384 x i512]* %1)
  call fastcc void @onebyonecpy_hls.p0i64(i64* %2, i64* align 512 %3)
  ret void
}

define void @ddrBenchmark_hw_stub_wrapper(i512*, i32, i1, i64*) #4 {
entry:
  %malloccall = tail call i8* @malloc(i64 1048576)
  %4 = bitcast i8* %malloccall to [16384 x %"struct.ap_uint<512>"]*
  %5 = bitcast i512* %0 to [16384 x i512]*
  call void @copy_out([16384 x %"struct.ap_uint<512>"]* %4, [16384 x i512]* %5, i64* null, i64* %3)
  %6 = bitcast [16384 x %"struct.ap_uint<512>"]* %4 to %"struct.ap_uint<512>"*
  call void @ddrBenchmark_hw_stub(%"struct.ap_uint<512>"* %6, i32 %1, i1 %2, i64* %3)
  call void @copy_in([16384 x %"struct.ap_uint<512>"]* %4, [16384 x i512]* %5, i64* null, i64* %3)
  ret void
}

declare void @ddrBenchmark_hw_stub(%"struct.ap_uint<512>"*, i32, i1, i64*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
