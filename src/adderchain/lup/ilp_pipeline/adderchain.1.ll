; ModuleID = 'adderchain.1.bc'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@b = internal global [100 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 -100], align 4
@c = internal global [100 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 -100], align 4
@d = internal global [100 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 -100], align 4
@e = internal global [100 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 -100], align 4
@f = internal global [100 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 -100], align 4
@g = internal global [100 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 -100], align 4
@h = internal global [100 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 -100], align 4
@ii = internal global [100 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 -100], align 4
@j = internal global [100 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 -100], align 4
@aa = internal global [100 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 -100], align 4
@bb = internal global [100 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 -100], align 4
@cc = internal global [100 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 -100], align 4
@dd = internal global [100 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 -100], align 4
@.str = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@.str1 = private unnamed_addr constant [10 x i8] c"sum = %d\0A\00", align 1
@.str2 = private unnamed_addr constant [8 x i8] c"PASSED\0A\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c"FAILED\0A\00", align 1
@"Global Shared RAM" = internal constant [18 x i8] c"Global Shared RAM\00"

; Function Attrs: nounwind
define i32 @main() #0 {
  br label %1

; <label>:1                                       ; preds = %1, %0
  %i.01 = phi i32 [ 0, %0 ], [ %20, %1 ], !legup.canonical_induction !2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep = getelementptr [100 x i32]* @dd, i32 0, i32 %i.01, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep2 = getelementptr [100 x i32]* @cc, i32 0, i32 %i.01, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep3 = getelementptr [100 x i32]* @aa, i32 0, i32 %i.01, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep4 = getelementptr [100 x i32]* @bb, i32 0, i32 %i.01, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep5 = getelementptr [100 x i32]* @ii, i32 0, i32 %i.01, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep6 = getelementptr [100 x i32]* @g, i32 0, i32 %i.01, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %2 = add i32 %i.01, 1, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep7 = getelementptr [100 x i32]* @dd, i32 0, i32 %2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep8 = getelementptr [100 x i32]* @g, i32 0, i32 %2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep9 = getelementptr [100 x i32]* @e, i32 0, i32 %2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep10 = getelementptr [100 x i32]* @e, i32 0, i32 %i.01, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %3 = add i32 %i.01, 7, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep11 = getelementptr [100 x i32]* @d, i32 0, i32 %3, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %4 = add i32 %i.01, 6, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep12 = getelementptr [100 x i32]* @d, i32 0, i32 %4, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %5 = add i32 %i.01, 5, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep13 = getelementptr [100 x i32]* @c, i32 0, i32 %5, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %6 = add i32 %i.01, 4, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep14 = getelementptr [100 x i32]* @c, i32 0, i32 %6, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %7 = add i32 %i.01, 3, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep15 = getelementptr [100 x i32]* @j, i32 0, i32 %7, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep16 = getelementptr [100 x i32]* @h, i32 0, i32 %7, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep17 = getelementptr [100 x i32]* @f, i32 0, i32 %7, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep18 = getelementptr [100 x i32]* @b, i32 0, i32 %7, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %8 = add i32 %i.01, 2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep19 = getelementptr [100 x i32]* @j, i32 0, i32 %8, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep20 = getelementptr [100 x i32]* @h, i32 0, i32 %8, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep21 = getelementptr [100 x i32]* @f, i32 0, i32 %8, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep22 = getelementptr [100 x i32]* @b, i32 0, i32 %8, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %9 = add i32 %i.01, 8, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep23 = getelementptr [100 x i32]* @dd, i32 0, i32 %9, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %10 = add i32 %i.01, 9, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep24 = getelementptr [100 x i32]* @dd, i32 0, i32 %10, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  tail call void @__legup_label(i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0)) #2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %11 = load volatile i32* %scevgep24, align 4, !tbaa !4, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !8, !legup.pipeline.stage !3
  %12 = load volatile i32* %scevgep23, align 4, !tbaa !4, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !8, !legup.pipeline.stage !3
  %13 = load volatile i32* %scevgep22, align 4, !tbaa !4, !legup.pipeline.start_time !2, !legup.pipeline.avail_time !9, !legup.pipeline.stage !3
  %14 = load volatile i32* %scevgep18, align 4, !tbaa !4, !legup.pipeline.start_time !8, !legup.pipeline.avail_time !10, !legup.pipeline.stage !3
  %15 = load volatile i32* %scevgep14, align 4, !tbaa !4, !legup.pipeline.start_time !2, !legup.pipeline.avail_time !9, !legup.pipeline.stage !3
  %16 = load volatile i32* %scevgep13, align 4, !tbaa !4, !legup.pipeline.start_time !8, !legup.pipeline.avail_time !10, !legup.pipeline.stage !3
  %17 = load volatile i32* %scevgep12, align 4, !tbaa !4, !legup.pipeline.start_time !9, !legup.pipeline.avail_time !11, !legup.pipeline.stage !3
  %18 = load volatile i32* %scevgep11, align 4, !tbaa !4, !legup.pipeline.start_time !9, !legup.pipeline.avail_time !11, !legup.pipeline.stage !3
  %19 = load volatile i32* %scevgep10, align 4, !tbaa !4, !legup.pipeline.start_time !10, !legup.pipeline.avail_time !12, !legup.pipeline.stage !3
  %20 = add nsw i32 %i.01, 1, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %21 = load volatile i32* %scevgep9, align 4, !tbaa !4, !legup.pipeline.start_time !11, !legup.pipeline.avail_time !13, !legup.pipeline.stage !3
  %22 = load volatile i32* %scevgep21, align 4, !tbaa !4, !legup.pipeline.start_time !10, !legup.pipeline.avail_time !12, !legup.pipeline.stage !3
  %23 = load volatile i32* %scevgep17, align 4, !tbaa !4, !legup.pipeline.start_time !11, !legup.pipeline.avail_time !13, !legup.pipeline.stage !3
  %24 = load volatile i32* %scevgep6, align 4, !tbaa !4, !legup.pipeline.start_time !12, !legup.pipeline.avail_time !14, !legup.pipeline.stage !3
  %25 = load volatile i32* %scevgep8, align 4, !tbaa !4, !legup.pipeline.start_time !12, !legup.pipeline.avail_time !14, !legup.pipeline.stage !3
  %26 = load volatile i32* %scevgep20, align 4, !tbaa !4, !legup.pipeline.start_time !13, !legup.pipeline.avail_time !15, !legup.pipeline.stage !3
  %27 = load volatile i32* %scevgep16, align 4, !tbaa !4, !legup.pipeline.start_time !13, !legup.pipeline.avail_time !15, !legup.pipeline.stage !3
  %28 = load volatile i32* %scevgep5, align 4, !tbaa !4, !legup.pipeline.start_time !14, !legup.pipeline.avail_time !16, !legup.pipeline.stage !3
  %29 = load volatile i32* %scevgep19, align 4, !tbaa !4, !legup.pipeline.start_time !14, !legup.pipeline.avail_time !16, !legup.pipeline.stage !3
  %30 = load volatile i32* %scevgep15, align 4, !tbaa !4, !legup.pipeline.start_time !15, !legup.pipeline.avail_time !17, !legup.pipeline.stage !3
  %31 = add i32 %12, %11, !legup.pipeline.start_time !8, !legup.pipeline.avail_time !8, !legup.pipeline.stage !3
  %32 = add i32 %31, %13, !legup.pipeline.start_time !9, !legup.pipeline.avail_time !9, !legup.pipeline.stage !3
  %33 = add i32 %32, %14, !legup.pipeline.start_time !10, !legup.pipeline.avail_time !10, !legup.pipeline.stage !3
  %34 = add i32 %33, %15, !legup.pipeline.start_time !10, !legup.pipeline.avail_time !10, !legup.pipeline.stage !3
  %35 = add i32 %34, %16, !legup.pipeline.start_time !10, !legup.pipeline.avail_time !10, !legup.pipeline.stage !3
  %36 = add i32 %35, %17, !legup.pipeline.start_time !11, !legup.pipeline.avail_time !11, !legup.pipeline.stage !3
  %37 = add i32 %36, %18, !legup.pipeline.start_time !11, !legup.pipeline.avail_time !11, !legup.pipeline.stage !3
  store volatile i32 %37, i32* %scevgep4, align 4, !tbaa !4, !legup.pipeline.start_time !16, !legup.pipeline.avail_time !17, !legup.pipeline.stage !3
  %38 = add i32 %37, %19, !legup.pipeline.start_time !12, !legup.pipeline.avail_time !12, !legup.pipeline.stage !3
  %39 = add i32 %38, %21, !legup.pipeline.start_time !13, !legup.pipeline.avail_time !13, !legup.pipeline.stage !3
  %40 = add i32 %39, %22, !legup.pipeline.start_time !13, !legup.pipeline.avail_time !13, !legup.pipeline.stage !3
  %41 = add i32 %40, %23, !legup.pipeline.start_time !13, !legup.pipeline.avail_time !13, !legup.pipeline.stage !3
  %42 = add i32 %41, %24, !legup.pipeline.start_time !14, !legup.pipeline.avail_time !14, !legup.pipeline.stage !3
  %43 = add i32 %42, %25, !legup.pipeline.start_time !14, !legup.pipeline.avail_time !14, !legup.pipeline.stage !3
  %44 = add i32 %43, %26, !legup.pipeline.start_time !15, !legup.pipeline.avail_time !15, !legup.pipeline.stage !3
  %45 = add i32 %44, %27, !legup.pipeline.start_time !15, !legup.pipeline.avail_time !15, !legup.pipeline.stage !3
  store volatile i32 %45, i32* %scevgep3, align 4, !tbaa !4, !legup.pipeline.start_time !16, !legup.pipeline.avail_time !17, !legup.pipeline.stage !3
  %46 = add i32 %45, %28, !legup.pipeline.start_time !16, !legup.pipeline.avail_time !16, !legup.pipeline.stage !3
  %47 = add i32 %46, %29, !legup.pipeline.start_time !16, !legup.pipeline.avail_time !16, !legup.pipeline.stage !3
  %48 = add i32 %47, %30, !legup.pipeline.start_time !17, !legup.pipeline.avail_time !17, !legup.pipeline.stage !3
  store volatile i32 %48, i32* %scevgep2, align 4, !tbaa !4, !legup.pipeline.start_time !17, !legup.pipeline.avail_time !18, !legup.pipeline.stage !3
  %49 = load volatile i32* %scevgep, align 4, !tbaa !4, !legup.pipeline.start_time !15, !legup.pipeline.avail_time !17, !legup.pipeline.stage !3
  %50 = add i32 %12, %11, !legup.pipeline.start_time !8, !legup.pipeline.avail_time !8, !legup.pipeline.stage !3
  %51 = add i32 %50, %13, !legup.pipeline.start_time !9, !legup.pipeline.avail_time !9, !legup.pipeline.stage !3
  %52 = add i32 %51, %14, !legup.pipeline.start_time !10, !legup.pipeline.avail_time !10, !legup.pipeline.stage !3
  %53 = add i32 %52, %15, !legup.pipeline.start_time !10, !legup.pipeline.avail_time !10, !legup.pipeline.stage !3
  %54 = add i32 %53, %16, !legup.pipeline.start_time !10, !legup.pipeline.avail_time !10, !legup.pipeline.stage !3
  %55 = add i32 %54, %17, !legup.pipeline.start_time !11, !legup.pipeline.avail_time !11, !legup.pipeline.stage !3
  %56 = add i32 %55, %18, !legup.pipeline.start_time !11, !legup.pipeline.avail_time !11, !legup.pipeline.stage !3
  %57 = add i32 %56, %19, !legup.pipeline.start_time !12, !legup.pipeline.avail_time !12, !legup.pipeline.stage !3
  %58 = add i32 %57, %21, !legup.pipeline.start_time !13, !legup.pipeline.avail_time !13, !legup.pipeline.stage !3
  %59 = add i32 %58, %22, !legup.pipeline.start_time !13, !legup.pipeline.avail_time !13, !legup.pipeline.stage !3
  %60 = add i32 %59, %23, !legup.pipeline.start_time !13, !legup.pipeline.avail_time !13, !legup.pipeline.stage !3
  %61 = add i32 %60, %24, !legup.pipeline.start_time !14, !legup.pipeline.avail_time !14, !legup.pipeline.stage !3
  %62 = add i32 %61, %25, !legup.pipeline.start_time !14, !legup.pipeline.avail_time !14, !legup.pipeline.stage !3
  %63 = add i32 %62, %26, !legup.pipeline.start_time !15, !legup.pipeline.avail_time !15, !legup.pipeline.stage !3
  %64 = add i32 %63, %27, !legup.pipeline.start_time !15, !legup.pipeline.avail_time !15, !legup.pipeline.stage !3
  %65 = add i32 %64, %28, !legup.pipeline.start_time !16, !legup.pipeline.avail_time !16, !legup.pipeline.stage !3
  %66 = add i32 %65, %29, !legup.pipeline.start_time !16, !legup.pipeline.avail_time !16, !legup.pipeline.stage !3
  %67 = add i32 %66, %30, !legup.pipeline.start_time !17, !legup.pipeline.avail_time !17, !legup.pipeline.stage !3
  %68 = add i32 %67, %49, !legup.pipeline.start_time !17, !legup.pipeline.avail_time !17, !legup.pipeline.stage !3
  %69 = add i32 %68, %i.01, !legup.pipeline.start_time !17, !legup.pipeline.avail_time !17, !legup.pipeline.stage !3
  store volatile i32 %69, i32* %scevgep7, align 4, !tbaa !4, !legup.pipeline.start_time !17, !legup.pipeline.avail_time !18, !legup.pipeline.stage !3
  %exitcond1 = icmp eq i32 %20, 90, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  br i1 %exitcond1, label %70, label %1, !legup.pipelined !2, !legup.II !18, !legup.totalTime !19, !legup.maxStage !3, !legup.tripCount !20, !legup.label !21, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3

; <label>:70                                      ; preds = %1
  %71 = load volatile i32* getelementptr inbounds ([100 x i32]* @dd, i32 0, i32 90), align 4, !tbaa !4
  %72 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str1, i32 0, i32 0), i32 %71) #2
  %73 = icmp eq i32 %71, 87301
  br i1 %73, label %74, label %76

; <label>:74                                      ; preds = %70
  %75 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str2, i32 0, i32 0)) #2
  br label %78

; <label>:76                                      ; preds = %70
  %77 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str3, i32 0, i32 0)) #2
  br label %78

; <label>:78                                      ; preds = %76, %74
  ret i32 %71
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
!1 = metadata !{metadata !"II", metadata !"12"}
!2 = metadata !{metadata !"1"}
!3 = metadata !{metadata !"0"}
!4 = metadata !{metadata !5, metadata !5, i64 0}
!5 = metadata !{metadata !"int", metadata !6, i64 0}
!6 = metadata !{metadata !"omnipotent char", metadata !7, i64 0}
!7 = metadata !{metadata !"Simple C/C++ TBAA"}
!8 = metadata !{metadata !"2"}
!9 = metadata !{metadata !"3"}
!10 = metadata !{metadata !"4"}
!11 = metadata !{metadata !"5"}
!12 = metadata !{metadata !"6"}
!13 = metadata !{metadata !"7"}
!14 = metadata !{metadata !"8"}
!15 = metadata !{metadata !"9"}
!16 = metadata !{metadata !"10"}
!17 = metadata !{metadata !"11"}
!18 = metadata !{metadata !"12"}
!19 = metadata !{metadata !"13"}
!20 = metadata !{metadata !"90"}
!21 = metadata !{metadata !"loop"}
