; ModuleID = 'jacobi_2d.1.bc'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"l3\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"l2\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"l1\00", align 1

; Function Attrs: nounwind
define i32 @main() #0 {
  %1 = alloca [10000 x float], align 4
  br label %2

; <label>:2                                       ; preds = %29, %0
  %t.03 = phi i32 [ 0, %0 ], [ %30, %29 ]
  tail call void @__legup_label(i8* getelementptr inbounds ([3 x i8]* @.str, i32 0, i32 0)) #2
  br label %3

; <label>:3                                       ; preds = %28, %2
  %indvar2 = phi i32 [ %indvar.next3, %28 ], [ 0, %2 ]
  %4 = mul i32 %indvar2, 100
  %5 = add i32 %4, 101
  %6 = add i32 %4, 100
  %7 = add i32 %4, 102
  %8 = add i32 %4, 201
  %9 = add i32 %4, 1
  tail call void @__legup_label(i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0)) #2
  br label %10

; <label>:10                                      ; preds = %10, %3
  %indvar = phi i32 [ %indvar.next, %10 ], [ 0, %3 ], !legup.canonical_induction !2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %11 = add i32 %5, %indvar, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep7 = getelementptr [10000 x float]* %1, i32 0, i32 %11, !legup.pipeline.start_time !2, !legup.pipeline.avail_time !2, !legup.pipeline.stage !3
  %12 = add i32 %6, %indvar, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep6 = getelementptr [10000 x float]* %1, i32 0, i32 %12, !legup.pipeline.start_time !2, !legup.pipeline.avail_time !2, !legup.pipeline.stage !3
  %13 = add i32 %7, %indvar, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep5 = getelementptr [10000 x float]* %1, i32 0, i32 %13, !legup.pipeline.start_time !2, !legup.pipeline.avail_time !2, !legup.pipeline.stage !3
  %14 = add i32 %8, %indvar, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep4 = getelementptr [10000 x float]* %1, i32 0, i32 %14, !legup.pipeline.start_time !2, !legup.pipeline.avail_time !2, !legup.pipeline.stage !3
  %15 = add i32 %9, %indvar, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep = getelementptr [10000 x float]* %1, i32 0, i32 %15, !legup.pipeline.start_time !2, !legup.pipeline.avail_time !2, !legup.pipeline.stage !3
  tail call void @__legup_label(i8* getelementptr inbounds ([3 x i8]* @.str2, i32 0, i32 0)) #2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %16 = load float* %scevgep7, align 4, !tbaa !4, !legup.pipeline.start_time !2, !legup.pipeline.avail_time !8, !legup.pipeline.stage !3
  %17 = load float* %scevgep6, align 4, !tbaa !4, !legup.pipeline.start_time !2, !legup.pipeline.avail_time !8, !legup.pipeline.stage !3
  %18 = fadd float %16, %17, !legup.pipeline.start_time !8, !legup.pipeline.avail_time !9, !legup.pipeline.stage !3
  %19 = load float* %scevgep5, align 4, !tbaa !4, !legup.pipeline.start_time !8, !legup.pipeline.avail_time !10, !legup.pipeline.stage !3
  %20 = fadd float %18, %19, !legup.pipeline.start_time !9, !legup.pipeline.avail_time !11, !legup.pipeline.stage !3
  %21 = load float* %scevgep4, align 4, !tbaa !4, !legup.pipeline.start_time !8, !legup.pipeline.avail_time !10, !legup.pipeline.stage !3
  %22 = fadd float %20, %21, !legup.pipeline.start_time !11, !legup.pipeline.avail_time !12, !legup.pipeline.stage !3
  %23 = load float* %scevgep, align 4, !tbaa !4, !legup.pipeline.start_time !10, !legup.pipeline.avail_time !13, !legup.pipeline.stage !3
  %24 = fadd float %22, %23, !legup.pipeline.start_time !12, !legup.pipeline.avail_time !14, !legup.pipeline.stage !3
  %25 = fpext float %24 to double, !legup.pipeline.start_time !14, !legup.pipeline.avail_time !15, !legup.pipeline.stage !3
  %26 = fmul double %25, 2.000000e-01, !legup.pipeline.start_time !15, !legup.pipeline.avail_time !16, !legup.pipeline.stage !3
  %27 = fptrunc double %26 to float, !legup.pipeline.start_time !16, !legup.pipeline.avail_time !17, !legup.pipeline.stage !3
  store float %27, float* %scevgep7, align 4, !tbaa !4, !legup.pipeline.start_time !17, !legup.pipeline.avail_time !18, !legup.pipeline.stage !2
  %indvar.next = add i32 %indvar, 1, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %exitcond1 = icmp eq i32 %indvar.next, 98, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  br i1 %exitcond1, label %28, label %10, !legup.pipelined !2, !legup.II !17, !legup.totalTime !19, !legup.maxStage !2, !legup.tripCount !20, !legup.label !21, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3

; <label>:28                                      ; preds = %10
  %indvar.next3 = add i32 %indvar2, 1
  %exitcond = icmp eq i32 %indvar.next3, 98
  br i1 %exitcond, label %29, label %3

; <label>:29                                      ; preds = %28
  %30 = add nsw i32 %t.03, 1
  %exitcond13 = icmp eq i32 %30, 100
  br i1 %exitcond13, label %31, label %2

; <label>:31                                      ; preds = %29
  %32 = getelementptr inbounds [10000 x float]* %1, i32 0, i32 9999
  %33 = load float* %32, align 4, !tbaa !4
  %34 = fptosi float %33 to i32
  ret i32 %34
}

declare void @__legup_label(i8*) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!legup.pipeline = !{!1}

!0 = metadata !{metadata !"Ubuntu clang version 3.5.0-4ubuntu2~trusty2 (tags/RELEASE_350/final) (based on LLVM 3.5.0)"}
!1 = metadata !{metadata !"II", metadata !"74"}
!2 = metadata !{metadata !"1"}
!3 = metadata !{metadata !"0"}
!4 = metadata !{metadata !5, metadata !5, i64 0}
!5 = metadata !{metadata !"float", metadata !6, i64 0}
!6 = metadata !{metadata !"omnipotent char", metadata !7, i64 0}
!7 = metadata !{metadata !"Simple C/C++ TBAA"}
!8 = metadata !{metadata !"2"}
!9 = metadata !{metadata !"16"}
!10 = metadata !{metadata !"3"}
!11 = metadata !{metadata !"30"}
!12 = metadata !{metadata !"44"}
!13 = metadata !{metadata !"4"}
!14 = metadata !{metadata !"58"}
!15 = metadata !{metadata !"60"}
!16 = metadata !{metadata !"71"}
!17 = metadata !{metadata !"74"}
!18 = metadata !{metadata !"75"}
!19 = metadata !{metadata !"76"}
!20 = metadata !{metadata !"98"}
!21 = metadata !{metadata !"l1"}
