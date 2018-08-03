; ModuleID = 'dividers.1.bc'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@c = internal global [100 x i64] [i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 -100], align 8
@aa = internal global [100 x i64] [i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 -100], align 8
@bb = internal global [100 x i64] [i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 -100], align 8
@cc = internal global [100 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 -100], align 4
@dd = internal global [100 x i64] [i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 -100], align 8
@.str = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"test:\0A\00", align 1
@.str2 = private unnamed_addr constant [33 x i8] c"test = 100/3 = %lld/%lld = %lld\0A\00", align 1
@.str3 = private unnamed_addr constant [7 x i8] c"tmp7: \00", align 1
@.str4 = private unnamed_addr constant [7 x i8] c"tmp3: \00", align 1
@.str5 = private unnamed_addr constant [7 x i8] c"tmp2: \00", align 1
@.str6 = private unnamed_addr constant [12 x i8] c"sum = %lld\0A\00", align 1
@.str7 = private unnamed_addr constant [8 x i8] c"PASSED\0A\00", align 1
@.str8 = private unnamed_addr constant [8 x i8] c"FAILED\0A\00", align 1
@.str9 = private unnamed_addr constant [30 x i8] c"div = a/b = %lld/%lld = %lld\0A\00", align 1
@"Global Shared RAM" = internal constant [18 x i8] c"Global Shared RAM\00"

; Function Attrs: nounwind
define i32 @main() #0 {
  br label %1

; <label>:1                                       ; preds = %1, %0
  %i.01 = phi i32 [ 0, %0 ], [ %13, %1 ], !legup.canonical_induction !2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep = getelementptr [100 x i32]* @cc, i32 0, i32 %i.01, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %2 = add i32 %i.01, 8, !legup.pipeline.start_time !2, !legup.pipeline.avail_time !2, !legup.pipeline.stage !3
  %scevgep2 = getelementptr [100 x i64]* @aa, i32 0, i32 %2, !legup.pipeline.start_time !2, !legup.pipeline.avail_time !2, !legup.pipeline.stage !3
  %3 = add i32 %i.01, 7, !legup.pipeline.start_time !4, !legup.pipeline.avail_time !4, !legup.pipeline.stage !3
  %scevgep3 = getelementptr [100 x i32]* @cc, i32 0, i32 %3, !legup.pipeline.start_time !4, !legup.pipeline.avail_time !4, !legup.pipeline.stage !3
  %4 = add i32 %i.01, 4, !legup.pipeline.start_time !2, !legup.pipeline.avail_time !2, !legup.pipeline.stage !3
  %scevgep4 = getelementptr [100 x i32]* @cc, i32 0, i32 %4, !legup.pipeline.start_time !2, !legup.pipeline.avail_time !2, !legup.pipeline.stage !3
  %scevgep5 = getelementptr [100 x i64]* @dd, i32 0, i32 %4, !legup.pipeline.start_time !2, !legup.pipeline.avail_time !2, !legup.pipeline.stage !3
  %5 = add i32 %i.01, 6, !legup.pipeline.start_time !2, !legup.pipeline.avail_time !2, !legup.pipeline.stage !3
  %scevgep6 = getelementptr [100 x i64]* @bb, i32 0, i32 %5, !legup.pipeline.start_time !2, !legup.pipeline.avail_time !2, !legup.pipeline.stage !3
  %6 = add i32 %i.01, 1, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep7 = getelementptr [100 x i32]* @cc, i32 0, i32 %6, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep8 = getelementptr [100 x i64]* @c, i32 0, i32 %6, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep9 = getelementptr [100 x i64]* @aa, i32 0, i32 %6, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep10 = getelementptr [100 x i64]* @bb, i32 0, i32 %6, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %7 = add i32 %i.01, 10, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep11 = getelementptr [100 x i64]* @aa, i32 0, i32 %7, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  tail call void @__legup_label(i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0)) #2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %8 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0)) #2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %9 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str9, i32 0, i32 0), i64 100, i64 3, i64 33) #2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %10 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([33 x i8]* @.str2, i32 0, i32 0), i64 100, i64 3, i64 33) #2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %11 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str3, i32 0, i32 0)) #2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %12 = load volatile i64* %scevgep11, align 8, !tbaa !5, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !4, !legup.pipeline.stage !3
  %13 = add nsw i32 %i.01, 1, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %14 = load volatile i64* %scevgep10, align 8, !tbaa !5, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !4, !legup.pipeline.stage !3
  %15 = lshr i64 %14, 1, !legup.pipeline.start_time !4, !legup.pipeline.avail_time !4, !legup.pipeline.stage !3
  %16 = shl i64 %12, 57, !legup.pipeline.start_time !4, !legup.pipeline.avail_time !4, !legup.pipeline.stage !3
  %17 = udiv i64 %16, %15, !legup.pipeline.start_time !4, !legup.pipeline.avail_time !9, !legup.pipeline.stage !3
  %18 = lshr i64 %17, 57, !legup.pipeline.start_time !9, !legup.pipeline.avail_time !9, !legup.pipeline.stage !10
  %19 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str9, i32 0, i32 0), i64 %12, i64 %15, i64 %18) #2, !legup.pipeline.start_time !9, !legup.pipeline.avail_time !9, !legup.pipeline.stage !10
  %20 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str4, i32 0, i32 0)) #2, !legup.pipeline.start_time !9, !legup.pipeline.avail_time !9, !legup.pipeline.stage !10
  %21 = load volatile i64* %scevgep9, align 8, !tbaa !5, !legup.pipeline.start_time !2, !legup.pipeline.avail_time !11, !legup.pipeline.stage !3
  %22 = load volatile i64* %scevgep6, align 8, !tbaa !5, !legup.pipeline.start_time !2, !legup.pipeline.avail_time !11, !legup.pipeline.stage !3
  %23 = lshr i64 %22, 2, !legup.pipeline.start_time !11, !legup.pipeline.avail_time !11, !legup.pipeline.stage !3
  %24 = shl i64 %21, 57, !legup.pipeline.start_time !11, !legup.pipeline.avail_time !11, !legup.pipeline.stage !3
  %25 = udiv i64 %24, %23, !legup.pipeline.start_time !11, !legup.pipeline.avail_time !12, !legup.pipeline.stage !3
  %26 = lshr i64 %25, 57, !legup.pipeline.start_time !12, !legup.pipeline.avail_time !12, !legup.pipeline.stage !10
  %27 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str9, i32 0, i32 0), i64 %21, i64 %23, i64 %26) #2, !legup.pipeline.start_time !12, !legup.pipeline.avail_time !12, !legup.pipeline.stage !10
  %28 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str5, i32 0, i32 0)) #2, !legup.pipeline.start_time !12, !legup.pipeline.avail_time !12, !legup.pipeline.stage !10
  %29 = load volatile i64* %scevgep5, align 8, !tbaa !5, !legup.pipeline.start_time !4, !legup.pipeline.avail_time !13, !legup.pipeline.stage !3
  %30 = load volatile i32* %scevgep3, align 4, !tbaa !14, !legup.pipeline.start_time !4, !legup.pipeline.avail_time !13, !legup.pipeline.stage !3
  %31 = ashr i32 %30, 3, !legup.pipeline.start_time !13, !legup.pipeline.avail_time !13, !legup.pipeline.stage !3
  %32 = sext i32 %31 to i64, !legup.pipeline.start_time !13, !legup.pipeline.avail_time !13, !legup.pipeline.stage !3
  %33 = shl i64 %29, 57, !legup.pipeline.start_time !13, !legup.pipeline.avail_time !13, !legup.pipeline.stage !3
  %34 = udiv i64 %33, %32, !legup.pipeline.start_time !13, !legup.pipeline.avail_time !16, !legup.pipeline.stage !3
  %35 = lshr i64 %34, 57, !legup.pipeline.start_time !16, !legup.pipeline.avail_time !16, !legup.pipeline.stage !10
  %36 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str9, i32 0, i32 0), i64 %29, i64 %32, i64 %35) #2, !legup.pipeline.start_time !16, !legup.pipeline.avail_time !16, !legup.pipeline.stage !10
  %37 = load volatile i64* %scevgep2, align 8, !tbaa !5, !legup.pipeline.start_time !11, !legup.pipeline.avail_time !17, !legup.pipeline.stage !3
  %38 = load volatile i32* %scevgep4, align 4, !tbaa !14, !legup.pipeline.start_time !11, !legup.pipeline.avail_time !17, !legup.pipeline.stage !3
  %39 = ashr i32 %38, 1, !legup.pipeline.start_time !17, !legup.pipeline.avail_time !17, !legup.pipeline.stage !3
  %40 = sext i32 %39 to i64, !legup.pipeline.start_time !17, !legup.pipeline.avail_time !17, !legup.pipeline.stage !3
  %41 = shl i64 %37, 57, !legup.pipeline.start_time !17, !legup.pipeline.avail_time !17, !legup.pipeline.stage !3
  %42 = udiv i64 %41, %40, !legup.pipeline.start_time !17, !legup.pipeline.avail_time !18, !legup.pipeline.stage !3
  %43 = lshr i64 %42, 57, !legup.pipeline.start_time !18, !legup.pipeline.avail_time !18, !legup.pipeline.stage !10
  %44 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str9, i32 0, i32 0), i64 %37, i64 %40, i64 %43) #2, !legup.pipeline.start_time !18, !legup.pipeline.avail_time !18, !legup.pipeline.stage !10
  %45 = add i64 %42, %34, !legup.pipeline.start_time !18, !legup.pipeline.avail_time !18, !legup.pipeline.stage !10
  %46 = trunc i64 %45 to i32, !legup.pipeline.start_time !18, !legup.pipeline.avail_time !18, !legup.pipeline.stage !10
  %47 = add i64 %25, %17, !legup.pipeline.start_time !12, !legup.pipeline.avail_time !12, !legup.pipeline.stage !10
  %48 = trunc i64 %47 to i32, !legup.pipeline.start_time !12, !legup.pipeline.avail_time !12, !legup.pipeline.stage !10
  %49 = add nsw i32 %46, %48, !legup.pipeline.start_time !18, !legup.pipeline.avail_time !18, !legup.pipeline.stage !10
  %50 = sext i32 %49 to i64, !legup.pipeline.start_time !18, !legup.pipeline.avail_time !18, !legup.pipeline.stage !10
  %51 = load volatile i64* %scevgep8, align 8, !tbaa !5, !legup.pipeline.start_time !13, !legup.pipeline.avail_time !19, !legup.pipeline.stage !3
  %52 = add i64 %50, %51, !legup.pipeline.start_time !18, !legup.pipeline.avail_time !18, !legup.pipeline.stage !10
  %53 = load volatile i32* %scevgep, align 4, !tbaa !14, !legup.pipeline.start_time !20, !legup.pipeline.avail_time !12, !legup.pipeline.stage !21
  %54 = zext i32 %53 to i64, !legup.pipeline.start_time !12, !legup.pipeline.avail_time !12, !legup.pipeline.stage !10
  %55 = shl i64 %54, 57, !legup.pipeline.start_time !12, !legup.pipeline.avail_time !12, !legup.pipeline.stage !10
  %56 = add i64 %52, %55, !legup.pipeline.start_time !18, !legup.pipeline.avail_time !18, !legup.pipeline.stage !10
  %57 = lshr i64 %56, 57, !legup.pipeline.start_time !18, !legup.pipeline.avail_time !18, !legup.pipeline.stage !10
  %58 = trunc i64 %57 to i32, !legup.pipeline.start_time !18, !legup.pipeline.avail_time !18, !legup.pipeline.stage !10
  store volatile i32 %58, i32* %scevgep7, align 4, !tbaa !14, !legup.pipeline.start_time !22, !legup.pipeline.avail_time !23, !legup.pipeline.stage !10
  %exitcond1 = icmp eq i32 %13, 40, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  br i1 %exitcond1, label %59, label %1, !legup.pipelined !2, !legup.II !19, !legup.totalTime !24, !legup.maxStage !10, !legup.tripCount !25, !legup.label !26, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3

; <label>:59                                      ; preds = %1
  %60 = load volatile i32* getelementptr inbounds ([100 x i32]* @cc, i32 0, i32 40), align 4, !tbaa !14
  %61 = sext i32 %60 to i64
  %62 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str6, i32 0, i32 0), i64 %61) #2
  %63 = icmp eq i32 %60, 108
  br i1 %63, label %64, label %66

; <label>:64                                      ; preds = %59
  %65 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str7, i32 0, i32 0)) #2
  br label %68

; <label>:66                                      ; preds = %59
  %67 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str8, i32 0, i32 0)) #2
  br label %68

; <label>:68                                      ; preds = %66, %64
  ret i32 %60
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
!1 = metadata !{metadata !"II", metadata !"6"}
!2 = metadata !{metadata !"1"}
!3 = metadata !{metadata !"0"}
!4 = metadata !{metadata !"2"}
!5 = metadata !{metadata !6, metadata !6, i64 0}
!6 = metadata !{metadata !"long long", metadata !7, i64 0}
!7 = metadata !{metadata !"omnipotent char", metadata !8, i64 0}
!8 = metadata !{metadata !"Simple C/C++ TBAA"}
!9 = metadata !{metadata !"66"}
!10 = metadata !{metadata !"11"}
!11 = metadata !{metadata !"3"}
!12 = metadata !{metadata !"67"}
!13 = metadata !{metadata !"4"}
!14 = metadata !{metadata !15, metadata !15, i64 0}
!15 = metadata !{metadata !"int", metadata !7, i64 0}
!16 = metadata !{metadata !"68"}
!17 = metadata !{metadata !"5"}
!18 = metadata !{metadata !"69"}
!19 = metadata !{metadata !"6"}
!20 = metadata !{metadata !"65"}
!21 = metadata !{metadata !"10"}
!22 = metadata !{metadata !"70"}
!23 = metadata !{metadata !"71"}
!24 = metadata !{metadata !"72"}
!25 = metadata !{metadata !"40"}
!26 = metadata !{metadata !"loop"}
