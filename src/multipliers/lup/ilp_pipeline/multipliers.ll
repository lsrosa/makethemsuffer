; ModuleID = 'multipliers.bc'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@a = internal global [100 x i64] [i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 -100], align 8
@c = internal global [100 x i64] [i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 -100], align 8
@d = internal global [100 x i64] [i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 -100], align 8
@.str = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@.str1 = private unnamed_addr constant [14 x i8] c"d[%d] = %lld\0A\00", align 1
@.str2 = private unnamed_addr constant [12 x i8] c"sum = %lld\0A\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c"PASSED\0A\00", align 1
@.str4 = private unnamed_addr constant [8 x i8] c"FAILED\0A\00", align 1
@"Global Shared RAM" = internal constant [18 x i8] c"Global Shared RAM\00"

; Function Attrs: nounwind
define i32 @main() #0 {
  br label %1

; <label>:1                                       ; preds = %1, %0
  %i.01 = phi i32 [ 0, %0 ], [ %6, %1 ], !legup.canonical_induction !2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep = getelementptr [100 x i64]* @c, i32 0, i32 %i.01, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %2 = add i32 %i.01, 7, !legup.pipeline.start_time !2, !legup.pipeline.avail_time !2, !legup.pipeline.stage !3
  %scevgep2 = getelementptr [100 x i64]* @c, i32 0, i32 %2, !legup.pipeline.start_time !2, !legup.pipeline.avail_time !2, !legup.pipeline.stage !3
  %3 = add i32 %i.01, 4, !legup.pipeline.start_time !2, !legup.pipeline.avail_time !2, !legup.pipeline.stage !3
  %scevgep3 = getelementptr [100 x i64]* @d, i32 0, i32 %3, !legup.pipeline.start_time !2, !legup.pipeline.avail_time !2, !legup.pipeline.stage !3
  %4 = add i32 %i.01, 6, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep4 = getelementptr [100 x i64]* @c, i32 0, i32 %4, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %5 = add i32 %i.01, 1, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep5 = getelementptr [100 x i64]* @d, i32 0, i32 %5, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep6 = getelementptr [100 x i64]* @c, i32 0, i32 %5, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep7 = getelementptr [100 x i64]* @a, i32 0, i32 %5, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  tail call void @__legup_label(i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0)) #2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %6 = add nsw i32 %i.01, 1, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %7 = load volatile i64* %scevgep7, align 8, !tbaa !4, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !8, !legup.pipeline.stage !3
  %8 = load volatile i64* %scevgep4, align 8, !tbaa !4, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !8, !legup.pipeline.stage !3
  %9 = mul nsw i64 %8, %7, !legup.pipeline.start_time !8, !legup.pipeline.avail_time !9, !legup.pipeline.stage !3
  %10 = load volatile i64* %scevgep3, align 8, !tbaa !4, !legup.pipeline.start_time !2, !legup.pipeline.avail_time !10, !legup.pipeline.stage !3
  %11 = load volatile i64* %scevgep2, align 8, !tbaa !4, !legup.pipeline.start_time !2, !legup.pipeline.avail_time !10, !legup.pipeline.stage !3
  %12 = mul nsw i64 %11, %10, !legup.pipeline.start_time !10, !legup.pipeline.avail_time !11, !legup.pipeline.stage !3
  %13 = add nsw i64 %12, %9, !legup.pipeline.start_time !11, !legup.pipeline.avail_time !11, !legup.pipeline.stage !12
  %14 = load volatile i64* %scevgep, align 8, !tbaa !4, !legup.pipeline.start_time !13, !legup.pipeline.avail_time !11, !legup.pipeline.stage !14
  %15 = add nsw i64 %13, %14, !legup.pipeline.start_time !11, !legup.pipeline.avail_time !11, !legup.pipeline.stage !12
  store volatile i64 %15, i64* %scevgep6, align 8, !tbaa !4, !legup.pipeline.start_time !15, !legup.pipeline.avail_time !16, !legup.pipeline.stage !12
  %16 = load volatile i64* %scevgep5, align 8, !tbaa !4, !legup.pipeline.start_time !8, !legup.pipeline.avail_time !14, !legup.pipeline.stage !3
  %17 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str1, i32 0, i32 0), i32 %5, i64 %16) #2, !legup.pipeline.start_time !16, !legup.pipeline.avail_time !16, !legup.pipeline.stage !12
  %exitcond1 = icmp eq i32 %6, 90, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  br i1 %exitcond1, label %18, label %1, !legup.pipelined !2, !legup.II !14, !legup.totalTime !17, !legup.maxStage !12, !legup.tripCount !18, !legup.label !19, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3

; <label>:18                                      ; preds = %1
  %19 = load volatile i64* getelementptr inbounds ([100 x i64]* @d, i32 0, i32 90), align 8, !tbaa !4
  %20 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str2, i32 0, i32 0), i64 %19) #2
  %21 = icmp eq i64 %19, 91
  br i1 %21, label %22, label %24

; <label>:22                                      ; preds = %18
  %23 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str3, i32 0, i32 0)) #2
  br label %26

; <label>:24                                      ; preds = %18
  %25 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str4, i32 0, i32 0)) #2
  br label %26

; <label>:26                                      ; preds = %24, %22
  %27 = trunc i64 %19 to i32
  ret i32 %27
}

declare void @__legup_label(i8*) #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #0

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!legup.pipeline = !{!1}

!0 = metadata !{metadata !"Ubuntu clang version 3.5.0-4ubuntu2~trusty2 (tags/RELEASE_350/final) (based on LLVM 3.5.0)"}
!1 = metadata !{metadata !"II", metadata !"4"}
!2 = metadata !{metadata !"1"}
!3 = metadata !{metadata !"0"}
!4 = metadata !{metadata !5, metadata !5, i64 0}
!5 = metadata !{metadata !"long long", metadata !6, i64 0}
!6 = metadata !{metadata !"omnipotent char", metadata !7, i64 0}
!7 = metadata !{metadata !"Simple C/C++ TBAA"}
!8 = metadata !{metadata !"2"}
!9 = metadata !{metadata !"20"}
!10 = metadata !{metadata !"3"}
!11 = metadata !{metadata !"21"}
!12 = metadata !{metadata !"5"}
!13 = metadata !{metadata !"19"}
!14 = metadata !{metadata !"4"}
!15 = metadata !{metadata !"22"}
!16 = metadata !{metadata !"23"}
!17 = metadata !{metadata !"24"}
!18 = metadata !{metadata !"90"}
!19 = metadata !{metadata !"loop"}
