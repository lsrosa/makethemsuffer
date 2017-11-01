; ModuleID = 'complex.1.bc'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

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
  %2 = phi i32 [ 0, %0 ], [ %33, %1 ], !legup.canonical_induction !2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %3 = add i32 %2, 9, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep = getelementptr [100 x i64]* @dd, i32 0, i32 %3, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep2 = getelementptr [100 x i64]* @dd, i32 0, i32 %2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep3 = getelementptr [100 x i64]* @a, i32 0, i32 %2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep4 = getelementptr [100 x i64]* @cc, i32 0, i32 %2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep5 = getelementptr [100 x i64]* @aa, i32 0, i32 %2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep6 = getelementptr [100 x i64]* @bb, i32 0, i32 %2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep7 = getelementptr [100 x i64]* @ii, i32 0, i32 %2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep8 = getelementptr [100 x i64]* @g, i32 0, i32 %2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %4 = add i32 %2, 1, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep9 = getelementptr [100 x i64]* @g, i32 0, i32 %4, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep10 = getelementptr [100 x i64]* @e, i32 0, i32 %4, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep11 = getelementptr [100 x i64]* @e, i32 0, i32 %2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %5 = add i32 %2, 7, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep12 = getelementptr [100 x i64]* @d, i32 0, i32 %5, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %6 = add i32 %2, 6, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep13 = getelementptr [100 x i64]* @d, i32 0, i32 %6, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %7 = add i32 %2, 5, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep14 = getelementptr [100 x i64]* @c, i32 0, i32 %7, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %8 = add i32 %2, 4, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep15 = getelementptr [100 x i64]* @c, i32 0, i32 %8, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %9 = add i32 %2, 3, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep16 = getelementptr [100 x i64]* @j, i32 0, i32 %9, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep17 = getelementptr [100 x i64]* @h, i32 0, i32 %9, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep18 = getelementptr [100 x i64]* @f, i32 0, i32 %9, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep19 = getelementptr [100 x i64]* @b, i32 0, i32 %9, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %10 = add i32 %2, 2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep20 = getelementptr [100 x i64]* @j, i32 0, i32 %10, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep21 = getelementptr [100 x i64]* @h, i32 0, i32 %10, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep22 = getelementptr [100 x i64]* @f, i32 0, i32 %10, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep23 = getelementptr [100 x i64]* @b, i32 0, i32 %10, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %11 = add i32 %2, 14, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep24 = getelementptr [100 x i64]* @dd, i32 0, i32 %11, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  tail call void @__legup_label(i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0)) #2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %12 = load volatile i64* %scevgep24, align 8, !tbaa !4, !legup.pipeline.start_time !8, !legup.pipeline.avail_time !9, !legup.pipeline.stage !3
  %13 = load volatile i64* %scevgep24, align 8, !tbaa !4, !legup.pipeline.start_time !10, !legup.pipeline.avail_time !11, !legup.pipeline.stage !3
  %14 = lshr i64 %13, 1, !legup.pipeline.start_time !12, !legup.pipeline.avail_time !12, !legup.pipeline.stage !3
  %15 = shl i64 %12, 14, !legup.pipeline.start_time !13, !legup.pipeline.avail_time !13, !legup.pipeline.stage !3
  %16 = udiv i64 %15, %14, !legup.pipeline.start_time !13, !legup.pipeline.avail_time !14, !legup.pipeline.stage !3
  %17 = load volatile i64* %scevgep23, align 8, !tbaa !4, !legup.pipeline.start_time !8, !legup.pipeline.avail_time !9, !legup.pipeline.stage !3
  %18 = load volatile i64* %scevgep19, align 8, !tbaa !4, !legup.pipeline.start_time !15, !legup.pipeline.avail_time !16, !legup.pipeline.stage !2
  %19 = shl i64 %17, 28, !legup.pipeline.start_time !9, !legup.pipeline.avail_time !9, !legup.pipeline.stage !3
  %20 = mul i64 %19, %18, !legup.pipeline.start_time !17, !legup.pipeline.avail_time !18, !legup.pipeline.stage !2
  %21 = lshr exact i64 %20, 14, !legup.pipeline.start_time !18, !legup.pipeline.avail_time !18, !legup.pipeline.stage !10
  %22 = load volatile i64* %scevgep15, align 8, !tbaa !4, !legup.pipeline.start_time !19, !legup.pipeline.avail_time !20, !legup.pipeline.stage !10
  %23 = load volatile i64* %scevgep14, align 8, !tbaa !4, !legup.pipeline.start_time !21, !legup.pipeline.avail_time !22, !legup.pipeline.stage !23
  %24 = shl i64 %22, 28, !legup.pipeline.start_time !24, !legup.pipeline.avail_time !24, !legup.pipeline.stage !10
  %25 = mul i64 %24, %23, !legup.pipeline.start_time !25, !legup.pipeline.avail_time !26, !legup.pipeline.stage !23
  %26 = lshr exact i64 %25, 14, !legup.pipeline.start_time !26, !legup.pipeline.avail_time !26, !legup.pipeline.stage !11
  %27 = load volatile i64* %scevgep13, align 8, !tbaa !4, !legup.pipeline.start_time !27, !legup.pipeline.avail_time !28, !legup.pipeline.stage !11
  %28 = load volatile i64* %scevgep12, align 8, !tbaa !4, !legup.pipeline.start_time !26, !legup.pipeline.avail_time !29, !legup.pipeline.stage !11
  %29 = shl i64 %27, 28, !legup.pipeline.start_time !29, !legup.pipeline.avail_time !29, !legup.pipeline.stage !11
  %30 = mul i64 %29, %28, !legup.pipeline.start_time !29, !legup.pipeline.avail_time !30, !legup.pipeline.stage !11
  %31 = lshr exact i64 %30, 14, !legup.pipeline.start_time !30, !legup.pipeline.avail_time !30, !legup.pipeline.stage !31
  %32 = load volatile i64* %scevgep11, align 8, !tbaa !4, !legup.pipeline.start_time !11, !legup.pipeline.avail_time !32, !legup.pipeline.stage !3
  %33 = add nsw i32 %2, 1, !legup.pipeline.start_time !9, !legup.pipeline.avail_time !9, !legup.pipeline.stage !3
  %34 = load volatile i64* %scevgep10, align 8, !tbaa !4, !legup.pipeline.start_time !9, !legup.pipeline.avail_time !33, !legup.pipeline.stage !3
  %35 = shl i64 %32, 14, !legup.pipeline.start_time !34, !legup.pipeline.avail_time !34, !legup.pipeline.stage !3
  %36 = udiv i64 %35, %34, !legup.pipeline.start_time !34, !legup.pipeline.avail_time !35, !legup.pipeline.stage !3
  %37 = load volatile i64* %scevgep22, align 8, !tbaa !4, !legup.pipeline.start_time !36, !legup.pipeline.avail_time !37, !legup.pipeline.stage !3
  %38 = load volatile i64* %scevgep18, align 8, !tbaa !4, !legup.pipeline.start_time !12, !legup.pipeline.avail_time !38, !legup.pipeline.stage !3
  %39 = add i64 %38, %37, !legup.pipeline.start_time !37, !legup.pipeline.avail_time !37, !legup.pipeline.stage !2
  %40 = load volatile i64* %scevgep8, align 8, !tbaa !4, !legup.pipeline.start_time !38, !legup.pipeline.avail_time !36, !legup.pipeline.stage !3
  %41 = load volatile i64* %scevgep9, align 8, !tbaa !4, !legup.pipeline.start_time !39, !legup.pipeline.avail_time !13, !legup.pipeline.stage !3
  %42 = load volatile i64* %scevgep21, align 8, !tbaa !4, !legup.pipeline.start_time !9, !legup.pipeline.avail_time !33, !legup.pipeline.stage !3
  %43 = load volatile i64* %scevgep17, align 8, !tbaa !4, !legup.pipeline.start_time !39, !legup.pipeline.avail_time !13, !legup.pipeline.stage !3
  %44 = load volatile i64* %scevgep7, align 8, !tbaa !4, !legup.pipeline.start_time !13, !legup.pipeline.avail_time !40, !legup.pipeline.stage !3
  %45 = load volatile i64* %scevgep20, align 8, !tbaa !4, !legup.pipeline.start_time !34, !legup.pipeline.avail_time !12, !legup.pipeline.stage !3
  %46 = load volatile i64* %scevgep16, align 8, !tbaa !4, !legup.pipeline.start_time !12, !legup.pipeline.avail_time !38, !legup.pipeline.stage !3
  %47 = shl i64 %16, 28, !legup.pipeline.start_time !41, !legup.pipeline.avail_time !41, !legup.pipeline.stage !11
  %48 = mul i64 %47, %21, !legup.pipeline.start_time !41, !legup.pipeline.avail_time !42, !legup.pipeline.stage !11
  %49 = lshr exact i64 %48, 14, !legup.pipeline.start_time !42, !legup.pipeline.avail_time !42, !legup.pipeline.stage !31
  %50 = add i64 %41, %40, !legup.pipeline.start_time !36, !legup.pipeline.avail_time !36, !legup.pipeline.stage !3
  %51 = add i64 %50, %42, !legup.pipeline.start_time !36, !legup.pipeline.avail_time !36, !legup.pipeline.stage !3
  %52 = sub i64 %51, %43, !legup.pipeline.start_time !36, !legup.pipeline.avail_time !36, !legup.pipeline.stage !3
  %.neg4 = sub i64 %49, %26, !legup.pipeline.start_time !42, !legup.pipeline.avail_time !42, !legup.pipeline.stage !31
  %53 = sub i64 %.neg4, %31, !legup.pipeline.start_time !30, !legup.pipeline.avail_time !30, !legup.pipeline.stage !31
  %54 = shl i64 %36, 42, !legup.pipeline.start_time !35, !legup.pipeline.avail_time !35, !legup.pipeline.stage !23
  %55 = mul i64 %54, %39, !legup.pipeline.start_time !35, !legup.pipeline.avail_time !43, !legup.pipeline.stage !23
  %56 = mul i64 %55, %52, !legup.pipeline.start_time !43, !legup.pipeline.avail_time !44, !legup.pipeline.stage !11
  %57 = lshr exact i64 %56, 14, !legup.pipeline.start_time !44, !legup.pipeline.avail_time !44, !legup.pipeline.stage !31
  store volatile i64 %53, i64* %scevgep6, align 8, !tbaa !4, !legup.pipeline.start_time !45, !legup.pipeline.avail_time !46, !legup.pipeline.stage !32
  %58 = add nsw i64 %57, %53, !legup.pipeline.start_time !44, !legup.pipeline.avail_time !44, !legup.pipeline.stage !31
  store volatile i64 %58, i64* %scevgep5, align 8, !tbaa !4, !legup.pipeline.start_time !44, !legup.pipeline.avail_time !47, !legup.pipeline.stage !31
  %59 = add i64 %45, %44, !legup.pipeline.start_time !40, !legup.pipeline.avail_time !40, !legup.pipeline.stage !3
  %60 = sub i64 %59, %46, !legup.pipeline.start_time !40, !legup.pipeline.avail_time !40, !legup.pipeline.stage !3
  %61 = add i64 %60, %58, !legup.pipeline.start_time !44, !legup.pipeline.avail_time !44, !legup.pipeline.stage !31
  store volatile i64 %61, i64* %scevgep4, align 8, !tbaa !4, !legup.pipeline.start_time !45, !legup.pipeline.avail_time !46, !legup.pipeline.stage !32
  %62 = load volatile i64* %scevgep3, align 8, !tbaa !4, !legup.pipeline.start_time !13, !legup.pipeline.avail_time !40, !legup.pipeline.stage !3
  %63 = load volatile i64* %scevgep2, align 8, !tbaa !4, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !31, !legup.pipeline.stage !3
  %64 = shl i64 %61, 28, !legup.pipeline.start_time !44, !legup.pipeline.avail_time !44, !legup.pipeline.stage !31
  %65 = mul i64 %64, %63, !legup.pipeline.start_time !44, !legup.pipeline.avail_time !48, !legup.pipeline.stage !31
  %66 = lshr exact i64 %65, 28, !legup.pipeline.start_time !48, !legup.pipeline.avail_time !48, !legup.pipeline.stage !32
  %67 = add i64 %66, %62, !legup.pipeline.start_time !48, !legup.pipeline.avail_time !48, !legup.pipeline.stage !32
  store volatile i64 %67, i64* %scevgep, align 8, !tbaa !4, !legup.pipeline.start_time !48, !legup.pipeline.avail_time !49, !legup.pipeline.stage !32
  %exitcond1 = icmp eq i32 %33, 85, !legup.pipeline.start_time !9, !legup.pipeline.avail_time !9, !legup.pipeline.stage !3
  br i1 %exitcond1, label %68, label %1, !legup.pipelined !2, !legup.II !15, !legup.totalTime !50, !legup.maxStage !32, !legup.tripCount !41, !legup.label !51, !legup.pipeline.start_time !9, !legup.pipeline.avail_time !9, !legup.pipeline.stage !3

; <label>:68                                      ; preds = %1
  %69 = load volatile i64* getelementptr inbounds ([100 x i64]* @dd, i32 0, i32 90), align 8, !tbaa !4
  %70 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str1, i32 0, i32 0), i64 %69) #2
  %71 = icmp eq i64 %69, 40288495459
  br i1 %71, label %72, label %74

; <label>:72                                      ; preds = %68
  %73 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str2, i32 0, i32 0)) #2
  br label %76

; <label>:74                                      ; preds = %68
  %75 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str3, i32 0, i32 0)) #2
  br label %76

; <label>:76                                      ; preds = %74, %72
  %77 = trunc i64 %69 to i32
  ret i32 %77
}

declare void @__legup_label(i8*) #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #0

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!legup.pipeline = !{!1}

!0 = metadata !{metadata !"clang version 3.5.2 "}
!1 = metadata !{metadata !"II", metadata !"20"}
!2 = metadata !{metadata !"1"}
!3 = metadata !{metadata !"0"}
!4 = metadata !{metadata !5, metadata !5, i64 0}
!5 = metadata !{metadata !"long long", metadata !6, i64 0}
!6 = metadata !{metadata !"omnipotent char", metadata !7, i64 0}
!7 = metadata !{metadata !"Simple C/C++ TBAA"}
!8 = metadata !{metadata !"8"}
!9 = metadata !{metadata !"10"}
!10 = metadata !{metadata !"2"}
!11 = metadata !{metadata !"4"}
!12 = metadata !{metadata !"15"}
!13 = metadata !{metadata !"16"}
!14 = metadata !{metadata !"80"}
!15 = metadata !{metadata !"20"}
!16 = metadata !{metadata !"22"}
!17 = metadata !{metadata !"34"}
!18 = metadata !{metadata !"52"}
!19 = metadata !{metadata !"41"}
!20 = metadata !{metadata !"43"}
!21 = metadata !{metadata !"71"}
!22 = metadata !{metadata !"73"}
!23 = metadata !{metadata !"3"}
!24 = metadata !{metadata !"54"}
!25 = metadata !{metadata !"74"}
!26 = metadata !{metadata !"92"}
!27 = metadata !{metadata !"86"}
!28 = metadata !{metadata !"88"}
!29 = metadata !{metadata !"94"}
!30 = metadata !{metadata !"112"}
!31 = metadata !{metadata !"5"}
!32 = metadata !{metadata !"6"}
!33 = metadata !{metadata !"12"}
!34 = metadata !{metadata !"13"}
!35 = metadata !{metadata !"77"}
!36 = metadata !{metadata !"19"}
!37 = metadata !{metadata !"21"}
!38 = metadata !{metadata !"17"}
!39 = metadata !{metadata !"14"}
!40 = metadata !{metadata !"18"}
!41 = metadata !{metadata !"85"}
!42 = metadata !{metadata !"103"}
!43 = metadata !{metadata !"95"}
!44 = metadata !{metadata !"113"}
!45 = metadata !{metadata !"125"}
!46 = metadata !{metadata !"126"}
!47 = metadata !{metadata !"114"}
!48 = metadata !{metadata !"131"}
!49 = metadata !{metadata !"132"}
!50 = metadata !{metadata !"133"}
!51 = metadata !{metadata !"loop"}
