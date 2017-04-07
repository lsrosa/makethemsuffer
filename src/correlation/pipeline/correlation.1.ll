; ModuleID = 'correlation.1.bc'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"loop4\00", align 1
@.str1 = private unnamed_addr constant [6 x i8] c"loop3\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c"loop2\00", align 1

; Function Attrs: noinline nounwind
define i32 @main(i32 %argc, i8** nocapture readnone %argv) #0 {
  %data = alloca [2500 x float], align 4
  %mean = alloca [50 x float], align 4
  %stddev = alloca [50 x float], align 4
  br label %1

; <label>:1                                       ; preds = %11, %0
  %2 = phi i32 [ 0, %0 ], [ %13, %11 ]
  %scevgep16 = getelementptr [50 x float]* %mean, i32 0, i32 %2
  store float 0.000000e+00, float* %scevgep16, align 4, !tbaa !2
  br label %3

; <label>:3                                       ; preds = %3, %1
  %4 = phi float [ 0.000000e+00, %1 ], [ %9, %3 ]
  %5 = phi i32 [ 0, %1 ], [ %10, %3 ]
  %6 = mul i32 %5, 50
  %7 = add i32 %2, %6
  %scevgep13 = getelementptr [2500 x float]* %data, i32 0, i32 %7
  %8 = load float* %scevgep13, align 4, !tbaa !2
  %9 = fadd float %8, %4
  %10 = add nsw i32 %5, 1
  %exitcond12 = icmp eq i32 %10, 50
  br i1 %exitcond12, label %11, label %3

; <label>:11                                      ; preds = %3
  %.lcssa1 = phi float [ %9, %3 ]
  %12 = fdiv float %.lcssa1, 0x3FF3333340000000
  store float %12, float* %scevgep16, align 4, !tbaa !2
  %13 = add nsw i32 %2, 1
  %exitcond14 = icmp eq i32 %13, 50
  br i1 %exitcond14, label %.preheader2.preheader, label %1

.preheader2.preheader:                            ; preds = %11
  br label %.preheader2

.preheader2:                                      ; preds = %26, %.preheader2.preheader
  %14 = phi i32 [ %31, %26 ], [ 0, %.preheader2.preheader ]
  %scevgep10 = getelementptr [50 x float]* %mean, i32 0, i32 %14
  %scevgep11 = getelementptr [50 x float]* %stddev, i32 0, i32 %14
  tail call void @__legup_label(i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0)) #2
  store float 0.000000e+00, float* %scevgep11, align 4, !tbaa !2
  %15 = load float* %scevgep10, align 4, !tbaa !2
  br label %16

; <label>:16                                      ; preds = %16, %.preheader2
  %17 = phi float [ 0.000000e+00, %.preheader2 ], [ %24, %16 ]
  %18 = phi i32 [ 0, %.preheader2 ], [ %25, %16 ]
  %19 = mul i32 %18, 50
  %20 = add i32 %14, %19
  %scevgep7 = getelementptr [2500 x float]* %data, i32 0, i32 %20
  %21 = load float* %scevgep7, align 4, !tbaa !2
  %22 = fsub float %21, %15
  %23 = fmul float %22, %22
  %24 = fadd float %17, %23
  %25 = add nsw i32 %18, 1
  %exitcond6 = icmp eq i32 %25, 50
  br i1 %exitcond6, label %26, label %16

; <label>:26                                      ; preds = %16
  %.lcssa = phi float [ %24, %16 ]
  %27 = fdiv float %.lcssa, 0x3FF3333340000000
  %28 = fmul float %27, %27
  %29 = fcmp ugt float %28, 0x3FB99999A0000000
  %30 = select i1 %29, float %28, float 1.000000e+00
  store float %30, float* %scevgep11, align 4, !tbaa !2
  %31 = add nsw i32 %14, 1
  %exitcond8 = icmp eq i32 %31, 50
  br i1 %exitcond8, label %.preheader1.preheader, label %.preheader2

.preheader1.preheader:                            ; preds = %26
  br label %.preheader1

.preheader1:                                      ; preds = %44, %.preheader1.preheader
  %32 = phi i32 [ %45, %44 ], [ 0, %.preheader1.preheader ]
  %33 = mul i32 %32, 50
  tail call void @__legup_label(i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0)) #2
  br label %34

; <label>:34                                      ; preds = %34, %.preheader1
  %35 = phi i32 [ 0, %.preheader1 ], [ %43, %34 ], !legup.canonical_induction !6, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  %36 = add i32 %33, %35, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  %scevgep2 = getelementptr [2500 x float]* %data, i32 0, i32 %36, !legup.pipeline.start_time !6, !legup.pipeline.avail_time !6, !legup.pipeline.stage !7
  %scevgep = getelementptr [50 x float]* %stddev, i32 0, i32 %35, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  %scevgep3 = getelementptr [50 x float]* %mean, i32 0, i32 %35, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  tail call void @__legup_label(i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0)) #2, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  %37 = load float* %scevgep3, align 4, !tbaa !2, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !6, !legup.pipeline.stage !7
  %38 = load float* %scevgep2, align 4, !tbaa !2, !legup.pipeline.start_time !6, !legup.pipeline.avail_time !8, !legup.pipeline.stage !7
  %39 = fsub float %38, %37, !legup.pipeline.start_time !8, !legup.pipeline.avail_time !9, !legup.pipeline.stage !7
  %40 = load float* %scevgep, align 4, !tbaa !2, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !6, !legup.pipeline.stage !7
  %41 = fmul float %40, 0x3FF70A3D80000000, !legup.pipeline.start_time !6, !legup.pipeline.avail_time !10, !legup.pipeline.stage !7
  %42 = fdiv float %39, %41, !legup.pipeline.start_time !9, !legup.pipeline.avail_time !11, !legup.pipeline.stage !7
  store float %42, float* %scevgep2, align 4, !tbaa !2, !legup.pipeline.start_time !11, !legup.pipeline.avail_time !12, !legup.pipeline.stage !6
  %43 = add nsw i32 %35, 1, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  %exitcond = icmp eq i32 %43, 50, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  br i1 %exitcond, label %44, label %34, !legup.pipelined !6, !legup.II !11, !legup.totalTime !13, !legup.maxStage !6, !legup.tripCount !12, !legup.label !14, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7

; <label>:44                                      ; preds = %34
  %45 = add nsw i32 %32, 1
  %exitcond4 = icmp eq i32 %45, 50
  br i1 %exitcond4, label %.loopexit.preheader, label %.preheader1

.loopexit.preheader:                              ; preds = %44
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.preheader
  ret i32 50
}

declare void @__legup_label(i8*) #1

attributes #0 = { noinline nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!legup.pipeline = !{!1}

!0 = metadata !{metadata !"clang version 3.5.2 "}
!1 = metadata !{metadata !"II", metadata !"49"}
!2 = metadata !{metadata !3, metadata !3, i64 0}
!3 = metadata !{metadata !"float", metadata !4, i64 0}
!4 = metadata !{metadata !"omnipotent char", metadata !5, i64 0}
!5 = metadata !{metadata !"Simple C/C++ TBAA"}
!6 = metadata !{metadata !"1"}
!7 = metadata !{metadata !"0"}
!8 = metadata !{metadata !"2"}
!9 = metadata !{metadata !"16"}
!10 = metadata !{metadata !"12"}
!11 = metadata !{metadata !"49"}
!12 = metadata !{metadata !"50"}
!13 = metadata !{metadata !"51"}
!14 = metadata !{metadata !"loop2"}
