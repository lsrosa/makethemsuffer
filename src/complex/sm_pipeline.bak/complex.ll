; ModuleID = 'complex.bc'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@a = internal global [100 x i64] [i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 -100], align 8
@b = internal global [100 x i64] [i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 -100], align 8
@c = internal global [100 x i64] [i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 -100], align 8
@d = internal global [100 x i64] [i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 -100], align 8
@e = internal global [100 x i64] [i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 -100], align 8
@f = internal global [100 x i64] [i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 -100], align 8
@g = internal global [100 x i64] [i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 -100], align 8
@h = internal global [100 x i64] [i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 -100], align 8
@ii = internal global [100 x i64] [i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 -100], align 8
@j = internal global [100 x i64] [i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 -100], align 8
@aa = internal global [100 x i64] [i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 -100], align 8
@bb = internal global [100 x i64] [i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 -100], align 8
@cc = internal global [100 x i64] [i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 -100], align 8
@dd = internal global [100 x i64] [i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 -100], align 8
@.str = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@.str1 = private unnamed_addr constant [12 x i8] c"sum = %lld\0A\00", align 1
@.str2 = private unnamed_addr constant [8 x i8] c"PASSED\0A\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c"FAILED\0A\00", align 1
@"Global Shared RAM" = internal constant [18 x i8] c"Global Shared RAM\00"

; Function Attrs: nounwind
define i32 @main() #0 {
  br label %1

; <label>:1                                       ; preds = %1, %0
  %i.05 = phi i32 [ 0, %0 ], [ %32, %1 ], !legup.canonical_induction !2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %2 = add i32 %i.05, 9, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep = getelementptr [100 x i64]* @dd, i32 0, i32 %2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep2 = getelementptr [100 x i64]* @dd, i32 0, i32 %i.05, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep3 = getelementptr [100 x i64]* @a, i32 0, i32 %i.05, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep4 = getelementptr [100 x i64]* @cc, i32 0, i32 %i.05, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep5 = getelementptr [100 x i64]* @aa, i32 0, i32 %i.05, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep6 = getelementptr [100 x i64]* @bb, i32 0, i32 %i.05, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep7 = getelementptr [100 x i64]* @ii, i32 0, i32 %i.05, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep8 = getelementptr [100 x i64]* @g, i32 0, i32 %i.05, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %3 = add i32 %i.05, 1, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep9 = getelementptr [100 x i64]* @g, i32 0, i32 %3, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep10 = getelementptr [100 x i64]* @e, i32 0, i32 %3, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep11 = getelementptr [100 x i64]* @e, i32 0, i32 %i.05, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %4 = add i32 %i.05, 7, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep12 = getelementptr [100 x i64]* @d, i32 0, i32 %4, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %5 = add i32 %i.05, 6, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep13 = getelementptr [100 x i64]* @d, i32 0, i32 %5, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %6 = add i32 %i.05, 5, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep14 = getelementptr [100 x i64]* @c, i32 0, i32 %6, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %7 = add i32 %i.05, 4, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep15 = getelementptr [100 x i64]* @c, i32 0, i32 %7, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %8 = add i32 %i.05, 3, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep16 = getelementptr [100 x i64]* @j, i32 0, i32 %8, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep17 = getelementptr [100 x i64]* @h, i32 0, i32 %8, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep18 = getelementptr [100 x i64]* @f, i32 0, i32 %8, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep19 = getelementptr [100 x i64]* @b, i32 0, i32 %8, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %9 = add i32 %i.05, 2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep20 = getelementptr [100 x i64]* @j, i32 0, i32 %9, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep21 = getelementptr [100 x i64]* @h, i32 0, i32 %9, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep22 = getelementptr [100 x i64]* @f, i32 0, i32 %9, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep23 = getelementptr [100 x i64]* @b, i32 0, i32 %9, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %10 = add i32 %i.05, 14, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep24 = getelementptr [100 x i64]* @dd, i32 0, i32 %10, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  tail call void @__legup_label(i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0)) #2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %11 = load volatile i64* %scevgep24, align 8, !tbaa !4, !legup.pipeline.start_time !8, !legup.pipeline.avail_time !9, !legup.pipeline.stage !3
  %12 = load volatile i64* %scevgep24, align 8, !tbaa !4, !legup.pipeline.start_time !10, !legup.pipeline.avail_time !11, !legup.pipeline.stage !3
  %13 = lshr i64 %12, 1, !legup.pipeline.start_time !12, !legup.pipeline.avail_time !12, !legup.pipeline.stage !2
  %14 = shl i64 %11, 14, !legup.pipeline.start_time !12, !legup.pipeline.avail_time !12, !legup.pipeline.stage !2
  %15 = udiv i64 %14, %13, !legup.pipeline.start_time !12, !legup.pipeline.avail_time !13, !legup.pipeline.stage !2
  %16 = load volatile i64* %scevgep23, align 8, !tbaa !4, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !14, !legup.pipeline.stage !3
  %17 = load volatile i64* %scevgep19, align 8, !tbaa !4, !legup.pipeline.start_time !15, !legup.pipeline.avail_time !12, !legup.pipeline.stage !2
  %18 = shl i64 %16, 28, !legup.pipeline.start_time !14, !legup.pipeline.avail_time !14, !legup.pipeline.stage !3
  %19 = mul i64 %18, %17, !legup.pipeline.start_time !12, !legup.pipeline.avail_time !16, !legup.pipeline.stage !2
  %20 = lshr exact i64 %19, 14, !legup.pipeline.start_time !16, !legup.pipeline.avail_time !16, !legup.pipeline.stage !2
  %21 = load volatile i64* %scevgep15, align 8, !tbaa !4, !legup.pipeline.start_time !17, !legup.pipeline.avail_time !18, !legup.pipeline.stage !2
  %22 = load volatile i64* %scevgep14, align 8, !tbaa !4, !legup.pipeline.start_time !19, !legup.pipeline.avail_time !20, !legup.pipeline.stage !14
  %23 = shl i64 %21, 28, !legup.pipeline.start_time !21, !legup.pipeline.avail_time !21, !legup.pipeline.stage !14
  %24 = mul i64 %23, %22, !legup.pipeline.start_time !22, !legup.pipeline.avail_time !23, !legup.pipeline.stage !24
  %25 = lshr exact i64 %24, 14, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !25
  %26 = load volatile i64* %scevgep13, align 8, !tbaa !4, !legup.pipeline.start_time !26, !legup.pipeline.avail_time !22, !legup.pipeline.stage !24
  %27 = load volatile i64* %scevgep12, align 8, !tbaa !4, !legup.pipeline.start_time !27, !legup.pipeline.avail_time !28, !legup.pipeline.stage !25
  %28 = shl i64 %26, 28, !legup.pipeline.start_time !22, !legup.pipeline.avail_time !22, !legup.pipeline.stage !24
  %29 = mul i64 %28, %27, !legup.pipeline.start_time !28, !legup.pipeline.avail_time !29, !legup.pipeline.stage !25
  %30 = lshr exact i64 %29, 14, !legup.pipeline.start_time !29, !legup.pipeline.avail_time !29, !legup.pipeline.stage !30
  %31 = load volatile i64* %scevgep11, align 8, !tbaa !4, !legup.pipeline.start_time !2, !legup.pipeline.avail_time !24, !legup.pipeline.stage !3
  %32 = add nsw i32 %i.05, 1, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %33 = load volatile i64* %scevgep10, align 8, !tbaa !4, !legup.pipeline.start_time !2, !legup.pipeline.avail_time !24, !legup.pipeline.stage !3
  %34 = shl i64 %31, 14, !legup.pipeline.start_time !12, !legup.pipeline.avail_time !12, !legup.pipeline.stage !2
  %35 = udiv i64 %34, %33, !legup.pipeline.start_time !12, !legup.pipeline.avail_time !13, !legup.pipeline.stage !2
  %36 = load volatile i64* %scevgep22, align 8, !tbaa !4, !legup.pipeline.start_time !14, !legup.pipeline.avail_time !25, !legup.pipeline.stage !3
  %37 = load volatile i64* %scevgep18, align 8, !tbaa !4, !legup.pipeline.start_time !12, !legup.pipeline.avail_time !31, !legup.pipeline.stage !2
  %38 = add i64 %37, %36, !legup.pipeline.start_time !32, !legup.pipeline.avail_time !32, !legup.pipeline.stage !14
  %39 = load volatile i64* %scevgep8, align 8, !tbaa !4, !legup.pipeline.start_time !24, !legup.pipeline.avail_time !30, !legup.pipeline.stage !3
  %40 = load volatile i64* %scevgep9, align 8, !tbaa !4, !legup.pipeline.start_time !24, !legup.pipeline.avail_time !30, !legup.pipeline.stage !3
  %41 = load volatile i64* %scevgep21, align 8, !tbaa !4, !legup.pipeline.start_time !25, !legup.pipeline.avail_time !33, !legup.pipeline.stage !3
  %42 = load volatile i64* %scevgep17, align 8, !tbaa !4, !legup.pipeline.start_time !31, !legup.pipeline.avail_time !34, !legup.pipeline.stage !2
  %43 = load volatile i64* %scevgep7, align 8, !tbaa !4, !legup.pipeline.start_time !30, !legup.pipeline.avail_time !8, !legup.pipeline.stage !3
  %44 = load volatile i64* %scevgep20, align 8, !tbaa !4, !legup.pipeline.start_time !30, !legup.pipeline.avail_time !8, !legup.pipeline.stage !3
  %45 = load volatile i64* %scevgep16, align 8, !tbaa !4, !legup.pipeline.start_time !34, !legup.pipeline.avail_time !35, !legup.pipeline.stage !2
  %46 = shl i64 %15, 28, !legup.pipeline.start_time !13, !legup.pipeline.avail_time !13, !legup.pipeline.stage !25
  %47 = mul i64 %46, %20, !legup.pipeline.start_time !13, !legup.pipeline.avail_time !36, !legup.pipeline.stage !25
  %48 = lshr exact i64 %47, 14, !legup.pipeline.start_time !36, !legup.pipeline.avail_time !36, !legup.pipeline.stage !30
  %49 = add i64 %40, %39, !legup.pipeline.start_time !12, !legup.pipeline.avail_time !12, !legup.pipeline.stage !2
  %50 = add i64 %49, %41, !legup.pipeline.start_time !12, !legup.pipeline.avail_time !12, !legup.pipeline.stage !2
  %51 = sub i64 %50, %42, !legup.pipeline.start_time !32, !legup.pipeline.avail_time !32, !legup.pipeline.stage !14
  %.neg4 = sub i64 %48, %25, !legup.pipeline.start_time !36, !legup.pipeline.avail_time !36, !legup.pipeline.stage !30
  %52 = sub i64 %.neg4, %30, !legup.pipeline.start_time !29, !legup.pipeline.avail_time !29, !legup.pipeline.stage !30
  %53 = shl i64 %35, 42, !legup.pipeline.start_time !13, !legup.pipeline.avail_time !13, !legup.pipeline.stage !25
  %54 = mul i64 %53, %38, !legup.pipeline.start_time !13, !legup.pipeline.avail_time !36, !legup.pipeline.stage !25
  %55 = mul i64 %54, %51, !legup.pipeline.start_time !36, !legup.pipeline.avail_time !37, !legup.pipeline.stage !30
  %56 = lshr exact i64 %55, 14, !legup.pipeline.start_time !37, !legup.pipeline.avail_time !37, !legup.pipeline.stage !30
  store volatile i64 %52, i64* %scevgep6, align 8, !tbaa !4, !legup.pipeline.start_time !29, !legup.pipeline.avail_time !38, !legup.pipeline.stage !30
  %57 = add nsw i64 %56, %52, !legup.pipeline.start_time !37, !legup.pipeline.avail_time !37, !legup.pipeline.stage !30
  store volatile i64 %57, i64* %scevgep5, align 8, !tbaa !4, !legup.pipeline.start_time !37, !legup.pipeline.avail_time !39, !legup.pipeline.stage !30
  %58 = add i64 %44, %43, !legup.pipeline.start_time !12, !legup.pipeline.avail_time !12, !legup.pipeline.stage !2
  %59 = sub i64 %58, %45, !legup.pipeline.start_time !32, !legup.pipeline.avail_time !32, !legup.pipeline.stage !14
  %60 = add i64 %59, %57, !legup.pipeline.start_time !37, !legup.pipeline.avail_time !37, !legup.pipeline.stage !30
  store volatile i64 %60, i64* %scevgep4, align 8, !tbaa !4, !legup.pipeline.start_time !37, !legup.pipeline.avail_time !39, !legup.pipeline.stage !30
  %61 = load volatile i64* %scevgep3, align 8, !tbaa !4, !legup.pipeline.start_time !8, !legup.pipeline.avail_time !9, !legup.pipeline.stage !3
  %62 = load volatile i64* %scevgep2, align 8, !tbaa !4, !legup.pipeline.start_time !33, !legup.pipeline.avail_time !10, !legup.pipeline.stage !3
  %63 = shl i64 %60, 28, !legup.pipeline.start_time !37, !legup.pipeline.avail_time !37, !legup.pipeline.stage !30
  %64 = mul i64 %63, %62, !legup.pipeline.start_time !37, !legup.pipeline.avail_time !40, !legup.pipeline.stage !30
  %65 = lshr exact i64 %64, 28, !legup.pipeline.start_time !40, !legup.pipeline.avail_time !40, !legup.pipeline.stage !33
  %66 = add i64 %65, %61, !legup.pipeline.start_time !40, !legup.pipeline.avail_time !40, !legup.pipeline.stage !33
  store volatile i64 %66, i64* %scevgep, align 8, !tbaa !4, !legup.pipeline.start_time !40, !legup.pipeline.avail_time !41, !legup.pipeline.stage !33
  %exitcond1 = icmp eq i32 %32, 85, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  br i1 %exitcond1, label %67, label %1, !legup.pipelined !2, !legup.II !15, !legup.totalTime !42, !legup.maxStage !33, !legup.tripCount !43, !legup.label !44, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3

; <label>:67                                      ; preds = %1
  %68 = load volatile i64* getelementptr inbounds ([100 x i64]* @dd, i32 0, i32 90), align 8, !tbaa !4
  %69 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str1, i32 0, i32 0), i64 %68) #2
  %70 = icmp eq i64 %68, 40288495459
  br i1 %70, label %71, label %73

; <label>:71                                      ; preds = %67
  %72 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str2, i32 0, i32 0)) #2
  br label %75

; <label>:73                                      ; preds = %67
  %74 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str3, i32 0, i32 0)) #2
  br label %75

; <label>:75                                      ; preds = %73, %71
  %76 = trunc i64 %68 to i32
  ret i32 %76
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
!1 = metadata !{metadata !"II", metadata !"21"}
!2 = metadata !{metadata !"1"}
!3 = metadata !{metadata !"0"}
!4 = metadata !{metadata !5, metadata !5, i64 0}
!5 = metadata !{metadata !"long long", metadata !6, i64 0}
!6 = metadata !{metadata !"omnipotent char", metadata !7, i64 0}
!7 = metadata !{metadata !"Simple C/C++ TBAA"}
!8 = metadata !{metadata !"7"}
!9 = metadata !{metadata !"9"}
!10 = metadata !{metadata !"8"}
!11 = metadata !{metadata !"10"}
!12 = metadata !{metadata !"23"}
!13 = metadata !{metadata !"87"}
!14 = metadata !{metadata !"2"}
!15 = metadata !{metadata !"21"}
!16 = metadata !{metadata !"41"}
!17 = metadata !{metadata !"38"}
!18 = metadata !{metadata !"40"}
!19 = metadata !{metadata !"59"}
!20 = metadata !{metadata !"61"}
!21 = metadata !{metadata !"60"}
!22 = metadata !{metadata !"81"}
!23 = metadata !{metadata !"99"}
!24 = metadata !{metadata !"3"}
!25 = metadata !{metadata !"4"}
!26 = metadata !{metadata !"79"}
!27 = metadata !{metadata !"100"}
!28 = metadata !{metadata !"102"}
!29 = metadata !{metadata !"120"}
!30 = metadata !{metadata !"5"}
!31 = metadata !{metadata !"25"}
!32 = metadata !{metadata !"44"}
!33 = metadata !{metadata !"6"}
!34 = metadata !{metadata !"27"}
!35 = metadata !{metadata !"29"}
!36 = metadata !{metadata !"105"}
!37 = metadata !{metadata !"123"}
!38 = metadata !{metadata !"121"}
!39 = metadata !{metadata !"124"}
!40 = metadata !{metadata !"141"}
!41 = metadata !{metadata !"142"}
!42 = metadata !{metadata !"143"}
!43 = metadata !{metadata !"85"}
!44 = metadata !{metadata !"loop"}
