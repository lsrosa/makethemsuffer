; ModuleID = 'dividers.prelto.1.bc'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@c = global [100 x i64] [i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 -100], align 8
@aa = global [100 x i64] [i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 -100], align 8
@bb = global [100 x i64] [i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 -100], align 8
@cc = global [100 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 -100], align 4
@dd = global [100 x i64] [i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 -100], align 8
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

; Function Attrs: nounwind
define i32 @main() #0 {
  br label %1

; <label>:1                                       ; preds = %1, %0
  %i.01 = phi i32 [ 0, %0 ], [ %9, %1 ]
  tail call void @__legup_label(i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0)) #2
  %2 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0)) #2
  %3 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str9, i32 0, i32 0), i64 100, i64 3, i64 33) #2
  %4 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([33 x i8]* @.str2, i32 0, i32 0), i64 100, i64 3, i64 33) #2
  %5 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str3, i32 0, i32 0)) #2
  %6 = add nsw i32 %i.01, 10
  %7 = getelementptr inbounds [100 x i64]* @aa, i32 0, i32 %6
  %8 = load volatile i64* %7, align 8, !tbaa !1
  %9 = add nsw i32 %i.01, 1
  %10 = getelementptr inbounds [100 x i64]* @bb, i32 0, i32 %9
  %11 = load volatile i64* %10, align 8, !tbaa !1
  %12 = lshr i64 %11, 1
  %13 = shl i64 %8, 57
  %14 = udiv i64 %13, %12
  %15 = lshr i64 %14, 57
  %16 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str9, i32 0, i32 0), i64 %8, i64 %12, i64 %15) #2
  %17 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str4, i32 0, i32 0)) #2
  %18 = getelementptr inbounds [100 x i64]* @aa, i32 0, i32 %9
  %19 = load volatile i64* %18, align 8, !tbaa !1
  %20 = add nsw i32 %i.01, 6
  %21 = getelementptr inbounds [100 x i64]* @bb, i32 0, i32 %20
  %22 = load volatile i64* %21, align 8, !tbaa !1
  %23 = lshr i64 %22, 2
  %24 = shl i64 %19, 57
  %25 = udiv i64 %24, %23
  %26 = lshr i64 %25, 57
  %27 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str9, i32 0, i32 0), i64 %19, i64 %23, i64 %26) #2
  %28 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str5, i32 0, i32 0)) #2
  %29 = add nsw i32 %i.01, 4
  %30 = getelementptr inbounds [100 x i64]* @dd, i32 0, i32 %29
  %31 = load volatile i64* %30, align 8, !tbaa !1
  %32 = add nsw i32 %i.01, 7
  %33 = getelementptr inbounds [100 x i32]* @cc, i32 0, i32 %32
  %34 = load volatile i32* %33, align 4, !tbaa !5
  %35 = ashr i32 %34, 3
  %36 = sext i32 %35 to i64
  %37 = shl i64 %31, 57
  %38 = udiv i64 %37, %36
  %39 = lshr i64 %38, 57
  %40 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str9, i32 0, i32 0), i64 %31, i64 %36, i64 %39) #2
  %41 = add nsw i32 %i.01, 8
  %42 = getelementptr inbounds [100 x i64]* @aa, i32 0, i32 %41
  %43 = load volatile i64* %42, align 8, !tbaa !1
  %44 = getelementptr inbounds [100 x i32]* @cc, i32 0, i32 %29
  %45 = load volatile i32* %44, align 4, !tbaa !5
  %46 = ashr i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = shl i64 %43, 57
  %49 = udiv i64 %48, %47
  %50 = lshr i64 %49, 57
  %51 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str9, i32 0, i32 0), i64 %43, i64 %47, i64 %50) #2
  %52 = add i64 %49, %38
  %53 = trunc i64 %52 to i32
  %54 = add i64 %25, %14
  %55 = trunc i64 %54 to i32
  %56 = add nsw i32 %53, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [100 x i64]* @c, i32 0, i32 %9
  %59 = load volatile i64* %58, align 8, !tbaa !1
  %60 = add i64 %57, %59
  %61 = getelementptr inbounds [100 x i32]* @cc, i32 0, i32 %i.01
  %62 = load volatile i32* %61, align 4, !tbaa !5
  %63 = zext i32 %62 to i64
  %64 = shl i64 %63, 57
  %65 = add i64 %60, %64
  %66 = lshr i64 %65, 57
  %67 = trunc i64 %66 to i32
  %68 = getelementptr inbounds [100 x i32]* @cc, i32 0, i32 %9
  store volatile i32 %67, i32* %68, align 4, !tbaa !5
  %exitcond = icmp eq i32 %9, 40
  br i1 %exitcond, label %69, label %1

; <label>:69                                      ; preds = %1
  %70 = load volatile i32* getelementptr inbounds ([100 x i32]* @cc, i32 0, i32 40), align 4, !tbaa !5
  %71 = sext i32 %70 to i64
  %72 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str6, i32 0, i32 0), i64 %71) #2
  %73 = icmp eq i32 %70, 108
  br i1 %73, label %74, label %76

; <label>:74                                      ; preds = %69
  %75 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str7, i32 0, i32 0)) #2
  br label %78

; <label>:76                                      ; preds = %69
  %77 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str8, i32 0, i32 0)) #2
  br label %78

; <label>:78                                      ; preds = %76, %74
  ret i32 %70
}

declare void @__legup_label(i8*) #1

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.5.0-4ubuntu2~trusty2 (tags/RELEASE_350/final) (based on LLVM 3.5.0)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"long long", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
!5 = metadata !{metadata !6, metadata !6, i64 0}
!6 = metadata !{metadata !"int", metadata !3, i64 0}
