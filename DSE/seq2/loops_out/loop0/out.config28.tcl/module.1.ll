; ModuleID = 'module.1.bc'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@a = internal global [100 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 -100], align 4
@b = internal global [100 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 -100], align 4
@c = internal global [100 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 -100], align 4
@d = internal global [100 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 -100], align 4
@e = internal global [100 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 -100], align 4
@f = internal global [100 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 -100], align 4
@a2 = internal global [100 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 -100], align 4
@b2 = internal global [100 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 -100], align 4
@c2 = internal global [100 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 -100], align 4
@.str = private unnamed_addr constant [6 x i8] c"loop0\00", align 1
@.str1 = private unnamed_addr constant [10 x i8] c"sum = %d\0A\00", align 1
@.str2 = private unnamed_addr constant [8 x i8] c"PASSED\0A\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c"FAILED\0A\00", align 1

; Function Attrs: nounwind
define i32 @main() #0 {
  br label %1

; <label>:1                                       ; preds = %1, %0
  %sum.02 = phi i32 [ 0, %0 ], [ %19, %1 ], !legup.pipeline.start_time !2, !legup.pipeline.avail_time !2, !legup.pipeline.stage !3
  %i.01 = phi i32 [ 0, %0 ], [ %20, %1 ], !legup.canonical_induction !4, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !5, !legup.pipeline.stage !5
  %scevgep = getelementptr [100 x i32]* @c2, i32 0, i32 %i.01, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !5, !legup.pipeline.stage !5
  %scevgep2 = getelementptr [100 x i32]* @b2, i32 0, i32 %i.01, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !5, !legup.pipeline.stage !5
  %scevgep3 = getelementptr [100 x i32]* @a2, i32 0, i32 %i.01, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !5, !legup.pipeline.stage !5
  %scevgep4 = getelementptr [100 x i32]* @f, i32 0, i32 %i.01, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !5, !legup.pipeline.stage !5
  %scevgep5 = getelementptr [100 x i32]* @e, i32 0, i32 %i.01, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !5, !legup.pipeline.stage !5
  %scevgep6 = getelementptr [100 x i32]* @d, i32 0, i32 %i.01, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !5, !legup.pipeline.stage !5
  %scevgep7 = getelementptr [100 x i32]* @c, i32 0, i32 %i.01, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !5, !legup.pipeline.stage !5
  %scevgep8 = getelementptr [100 x i32]* @b, i32 0, i32 %i.01, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !5, !legup.pipeline.stage !5
  %scevgep9 = getelementptr [100 x i32]* @a, i32 0, i32 %i.01, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !5, !legup.pipeline.stage !5
  tail call void @__legup_label(i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0)) #2, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !5, !legup.pipeline.stage !5
  %2 = load volatile i32* %scevgep9, align 4, !tbaa !6, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !4, !legup.pipeline.stage !5
  %3 = load volatile i32* %scevgep8, align 4, !tbaa !6, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !4, !legup.pipeline.stage !5
  %4 = mul nsw i32 %3, %2, !legup.pipeline.start_time !4, !legup.pipeline.avail_time !10, !legup.pipeline.stage !5
  %5 = load volatile i32* %scevgep7, align 4, !tbaa !6, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !4, !legup.pipeline.stage !5
  %6 = mul nsw i32 %4, %5, !legup.pipeline.start_time !10, !legup.pipeline.avail_time !11, !legup.pipeline.stage !4
  %7 = load volatile i32* %scevgep6, align 4, !tbaa !6, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !4, !legup.pipeline.stage !5
  %8 = mul nsw i32 %6, %7, !legup.pipeline.start_time !11, !legup.pipeline.avail_time !12, !legup.pipeline.stage !4
  %9 = load volatile i32* %scevgep5, align 4, !tbaa !6, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !4, !legup.pipeline.stage !5
  %10 = mul nsw i32 %8, %9, !legup.pipeline.start_time !12, !legup.pipeline.avail_time !13, !legup.pipeline.stage !10
  %11 = load volatile i32* %scevgep4, align 4, !tbaa !6, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !4, !legup.pipeline.stage !5
  %12 = mul nsw i32 %10, %11, !legup.pipeline.start_time !13, !legup.pipeline.avail_time !14, !legup.pipeline.stage !10
  %13 = load volatile i32* %scevgep3, align 4, !tbaa !6, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !4, !legup.pipeline.stage !5
  %14 = sdiv i32 %12, %13, !legup.pipeline.start_time !14, !legup.pipeline.avail_time !15, !legup.pipeline.stage !11
  %15 = load volatile i32* %scevgep2, align 4, !tbaa !6, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !4, !legup.pipeline.stage !5
  %16 = sdiv i32 %14, %15, !legup.pipeline.start_time !15, !legup.pipeline.avail_time !16, !legup.pipeline.stage !17
  %17 = load volatile i32* %scevgep, align 4, !tbaa !6, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !4, !legup.pipeline.stage !5
  %18 = sdiv i32 %16, %17, !legup.pipeline.start_time !16, !legup.pipeline.avail_time !18, !legup.pipeline.stage !19
  %19 = add nsw i32 %18, %sum.02, !legup.pipeline.start_time !18, !legup.pipeline.avail_time !18, !legup.pipeline.stage !20
  %20 = add nsw i32 %i.01, 1, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !5, !legup.pipeline.stage !5
  %exitcond1 = icmp eq i32 %20, 99, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !5, !legup.pipeline.stage !5
  br i1 %exitcond1, label %21, label %1, !legup.pipelined !4, !legup.II !10, !legup.totalTime !21, !legup.maxStage !20, !legup.tripCount !22, !legup.label !23, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !5, !legup.pipeline.stage !5

; <label>:21                                      ; preds = %1
  %.lcssa = phi i32 [ %19, %1 ]
  %22 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str1, i32 0, i32 0), i32 %.lcssa) #2
  %23 = icmp eq i32 %.lcssa, 250102
  br i1 %23, label %24, label %26

; <label>:24                                      ; preds = %21
  %25 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str2, i32 0, i32 0)) #2
  br label %28

; <label>:26                                      ; preds = %21
  %27 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str3, i32 0, i32 0)) #2
  br label %28

; <label>:28                                      ; preds = %26, %24
  ret i32 %.lcssa
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
!1 = metadata !{metadata !"II", metadata !"2"}
!2 = metadata !{metadata !"100"}
!3 = metadata !{metadata !"50"}
!4 = metadata !{metadata !"1"}
!5 = metadata !{metadata !"0"}
!6 = metadata !{metadata !7, metadata !7, i64 0}
!7 = metadata !{metadata !"int", metadata !8, i64 0}
!8 = metadata !{metadata !"omnipotent char", metadata !9, i64 0}
!9 = metadata !{metadata !"Simple C/C++ TBAA"}
!10 = metadata !{metadata !"2"}
!11 = metadata !{metadata !"3"}
!12 = metadata !{metadata !"4"}
!13 = metadata !{metadata !"5"}
!14 = metadata !{metadata !"6"}
!15 = metadata !{metadata !"38"}
!16 = metadata !{metadata !"70"}
!17 = metadata !{metadata !"19"}
!18 = metadata !{metadata !"102"}
!19 = metadata !{metadata !"35"}
!20 = metadata !{metadata !"51"}
!21 = metadata !{metadata !"103"}
!22 = metadata !{metadata !"99"}
!23 = metadata !{metadata !"loop0"}
