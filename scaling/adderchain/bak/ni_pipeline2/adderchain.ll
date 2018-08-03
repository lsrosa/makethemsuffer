; ModuleID = 'adderchain.bc'
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
@BANANA = internal global [100 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 -100], align 4
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
  %indvar = phi i32 [ %indvar.next, %1 ], [ 0, %0 ], !legup.canonical_induction !2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %2 = shl i32 %indvar, 1
  %3 = add i32 %2, 10, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep = getelementptr [100 x i32]* @dd, i32 0, i32 %3, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep1 = getelementptr [100 x i32]* @dd, i32 0, i32 %2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep2 = getelementptr [100 x i32]* @cc, i32 0, i32 %2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep3 = getelementptr [100 x i32]* @aa, i32 0, i32 %2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep4 = getelementptr [100 x i32]* @bb, i32 0, i32 %2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep5 = getelementptr [100 x i32]* @ii, i32 0, i32 %2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep6 = getelementptr [100 x i32]* @g, i32 0, i32 %2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %4 = or i32 %2, 1
  %scevgep7 = getelementptr [100 x i32]* @cc, i32 0, i32 %4, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep8 = getelementptr [100 x i32]* @aa, i32 0, i32 %4, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep9 = getelementptr [100 x i32]* @bb, i32 0, i32 %4, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep10 = getelementptr [100 x i32]* @ii, i32 0, i32 %4, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep11 = getelementptr [100 x i32]* @dd, i32 0, i32 %4, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep12 = getelementptr [100 x i32]* @g, i32 0, i32 %4, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep13 = getelementptr [100 x i32]* @e, i32 0, i32 %4, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep14 = getelementptr [100 x i32]* @e, i32 0, i32 %2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %5 = add i32 %2, 7, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep15 = getelementptr [100 x i32]* @d, i32 0, i32 %5, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %6 = add i32 %2, 6, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep16 = getelementptr [100 x i32]* @c, i32 0, i32 %6, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep17 = getelementptr [100 x i32]* @d, i32 0, i32 %6, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %7 = add i32 %2, 5, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep18 = getelementptr [100 x i32]* @c, i32 0, i32 %7, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %8 = add i32 %2, 4, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep19 = getelementptr [100 x i32]* @BANANA, i32 0, i32 %8, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep20 = getelementptr [100 x i32]* @h, i32 0, i32 %8, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep21 = getelementptr [100 x i32]* @f, i32 0, i32 %8, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep22 = getelementptr [100 x i32]* @b, i32 0, i32 %8, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep23 = getelementptr [100 x i32]* @c, i32 0, i32 %8, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %9 = add i32 %2, 3, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep24 = getelementptr [100 x i32]* @BANANA, i32 0, i32 %9, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep25 = getelementptr [100 x i32]* @h, i32 0, i32 %9, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep26 = getelementptr [100 x i32]* @f, i32 0, i32 %9, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep27 = getelementptr [100 x i32]* @b, i32 0, i32 %9, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %10 = add i32 %2, 2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep28 = getelementptr [100 x i32]* @dd, i32 0, i32 %10, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep29 = getelementptr [100 x i32]* @g, i32 0, i32 %10, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep30 = getelementptr [100 x i32]* @e, i32 0, i32 %10, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep31 = getelementptr [100 x i32]* @BANANA, i32 0, i32 %10, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep32 = getelementptr [100 x i32]* @h, i32 0, i32 %10, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep33 = getelementptr [100 x i32]* @f, i32 0, i32 %10, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep34 = getelementptr [100 x i32]* @b, i32 0, i32 %10, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %11 = add i32 %2, 8, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep35 = getelementptr [100 x i32]* @d, i32 0, i32 %11, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep36 = getelementptr [100 x i32]* @dd, i32 0, i32 %11, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %12 = add i32 %2, 9, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %scevgep37 = getelementptr [100 x i32]* @dd, i32 0, i32 %12, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  tail call void @__legup_label(i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0)) #2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %13 = load volatile i32* %scevgep37, align 4, !tbaa !4, !legup.pipeline.start_time !8, !legup.pipeline.avail_time !9, !legup.pipeline.stage !3
  %14 = load volatile i32* %scevgep36, align 4, !tbaa !4, !legup.pipeline.start_time !10, !legup.pipeline.avail_time !11, !legup.pipeline.stage !3
  %15 = load volatile i32* %scevgep34, align 4, !tbaa !4, !legup.pipeline.start_time !8, !legup.pipeline.avail_time !9, !legup.pipeline.stage !3
  %16 = load volatile i32* %scevgep27, align 4, !tbaa !4, !legup.pipeline.start_time !12, !legup.pipeline.avail_time !13, !legup.pipeline.stage !3
  %17 = load volatile i32* %scevgep23, align 4, !tbaa !4, !legup.pipeline.start_time !12, !legup.pipeline.avail_time !13, !legup.pipeline.stage !3
  %18 = load volatile i32* %scevgep18, align 4, !tbaa !4, !legup.pipeline.start_time !14, !legup.pipeline.avail_time !15, !legup.pipeline.stage !3
  %19 = load volatile i32* %scevgep17, align 4, !tbaa !4, !legup.pipeline.start_time !16, !legup.pipeline.avail_time !17, !legup.pipeline.stage !3
  %20 = load volatile i32* %scevgep15, align 4, !tbaa !4, !legup.pipeline.start_time !18, !legup.pipeline.avail_time !19, !legup.pipeline.stage !3
  %21 = load volatile i32* %scevgep14, align 4, !tbaa !4, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !16, !legup.pipeline.stage !3
  %22 = load volatile i32* %scevgep13, align 4, !tbaa !4, !legup.pipeline.start_time !20, !legup.pipeline.avail_time !21, !legup.pipeline.stage !3
  %23 = load volatile i32* %scevgep33, align 4, !tbaa !4, !legup.pipeline.start_time !20, !legup.pipeline.avail_time !21, !legup.pipeline.stage !3
  %24 = load volatile i32* %scevgep26, align 4, !tbaa !4, !legup.pipeline.start_time !13, !legup.pipeline.avail_time !22, !legup.pipeline.stage !3
  %25 = load volatile i32* %scevgep6, align 4, !tbaa !4, !legup.pipeline.start_time !2, !legup.pipeline.avail_time !14, !legup.pipeline.stage !3
  %26 = load volatile i32* %scevgep12, align 4, !tbaa !4, !legup.pipeline.start_time !13, !legup.pipeline.avail_time !22, !legup.pipeline.stage !3
  %27 = load volatile i32* %scevgep32, align 4, !tbaa !4, !legup.pipeline.start_time !9, !legup.pipeline.avail_time !20, !legup.pipeline.stage !3
  %28 = load volatile i32* %scevgep25, align 4, !tbaa !4, !legup.pipeline.start_time !9, !legup.pipeline.avail_time !20, !legup.pipeline.stage !3
  %29 = load volatile i32* %scevgep5, align 4, !tbaa !4, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !16, !legup.pipeline.stage !3
  %30 = load volatile i32* %scevgep31, align 4, !tbaa !4, !legup.pipeline.start_time !22, !legup.pipeline.avail_time !18, !legup.pipeline.stage !3
  %31 = load volatile i32* %scevgep24, align 4, !tbaa !4, !legup.pipeline.start_time !22, !legup.pipeline.avail_time !18, !legup.pipeline.stage !3
  %32 = add i32 %14, %13, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %33 = add i32 %32, %15, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %34 = add i32 %33, %16, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %35 = add i32 %34, %17, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %36 = add i32 %35, %18, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %37 = add i32 %36, %19, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %38 = add i32 %37, %20, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  store volatile i32 %38, i32* %scevgep4, align 4, !tbaa !4, !legup.pipeline.start_time !24, !legup.pipeline.avail_time !25, !legup.pipeline.stage !2
  %39 = add i32 %38, %21, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %40 = add i32 %39, %22, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %41 = add i32 %40, %23, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %42 = add i32 %41, %24, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %43 = add i32 %42, %25, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %44 = add i32 %43, %26, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %45 = add i32 %44, %27, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %46 = add i32 %45, %28, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  store volatile i32 %46, i32* %scevgep3, align 4, !tbaa !4, !legup.pipeline.start_time !25, !legup.pipeline.avail_time !26, !legup.pipeline.stage !2
  %47 = add i32 %46, %29, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %48 = add i32 %47, %30, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %49 = add i32 %48, %31, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  store volatile i32 %49, i32* %scevgep2, align 4, !tbaa !4, !legup.pipeline.start_time !26, !legup.pipeline.avail_time !27, !legup.pipeline.stage !2
  %50 = load volatile i32* %scevgep1, align 4, !tbaa !4, !legup.pipeline.start_time !2, !legup.pipeline.avail_time !14, !legup.pipeline.stage !3
  %51 = add i32 %14, %13, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %52 = add i32 %51, %15, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %53 = add i32 %52, %16, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %54 = add i32 %53, %17, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %55 = add i32 %54, %18, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %56 = add i32 %55, %19, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %57 = add i32 %56, %20, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %58 = add i32 %57, %21, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %59 = add i32 %58, %22, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %60 = add i32 %59, %23, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %61 = add i32 %60, %24, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %62 = add i32 %61, %25, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %63 = add i32 %62, %26, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %64 = add i32 %63, %27, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %65 = add i32 %64, %28, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %66 = add i32 %65, %29, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %67 = add i32 %66, %30, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %68 = add i32 %67, %31, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %69 = add i32 %68, %50, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %70 = add i32 %69, %2, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  store volatile i32 %70, i32* %scevgep11, align 4, !tbaa !4, !legup.pipeline.start_time !26, !legup.pipeline.avail_time !27, !legup.pipeline.stage !2
  tail call void @__legup_label(i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0)) #2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %71 = load volatile i32* %scevgep, align 4, !tbaa !4, !legup.pipeline.start_time !14, !legup.pipeline.avail_time !15, !legup.pipeline.stage !3
  %72 = load volatile i32* %scevgep37, align 4, !tbaa !4, !legup.pipeline.start_time !17, !legup.pipeline.avail_time !10, !legup.pipeline.stage !3
  %73 = load volatile i32* %scevgep27, align 4, !tbaa !4, !legup.pipeline.start_time !17, !legup.pipeline.avail_time !10, !legup.pipeline.stage !3
  %74 = load volatile i32* %scevgep22, align 4, !tbaa !4, !legup.pipeline.start_time !15, !legup.pipeline.avail_time !28, !legup.pipeline.stage !3
  %75 = load volatile i32* %scevgep18, align 4, !tbaa !4, !legup.pipeline.start_time !15, !legup.pipeline.avail_time !28, !legup.pipeline.stage !3
  %76 = load volatile i32* %scevgep16, align 4, !tbaa !4, !legup.pipeline.start_time !11, !legup.pipeline.avail_time !29, !legup.pipeline.stage !3
  %77 = load volatile i32* %scevgep15, align 4, !tbaa !4, !legup.pipeline.start_time !10, !legup.pipeline.avail_time !11, !legup.pipeline.stage !3
  %78 = load volatile i32* %scevgep35, align 4, !tbaa !4, !legup.pipeline.start_time !28, !legup.pipeline.avail_time !30, !legup.pipeline.stage !3
  %79 = load volatile i32* %scevgep13, align 4, !tbaa !4, !legup.pipeline.start_time !28, !legup.pipeline.avail_time !30, !legup.pipeline.stage !3
  %80 = load volatile i32* %scevgep30, align 4, !tbaa !4, !legup.pipeline.start_time !11, !legup.pipeline.avail_time !29, !legup.pipeline.stage !3
  %81 = load volatile i32* %scevgep26, align 4, !tbaa !4, !legup.pipeline.start_time !16, !legup.pipeline.avail_time !17, !legup.pipeline.stage !3
  %82 = load volatile i32* %scevgep21, align 4, !tbaa !4, !legup.pipeline.start_time !30, !legup.pipeline.avail_time !31, !legup.pipeline.stage !3
  %83 = load volatile i32* %scevgep12, align 4, !tbaa !4, !legup.pipeline.start_time !30, !legup.pipeline.avail_time !31, !legup.pipeline.stage !3
  %84 = load volatile i32* %scevgep29, align 4, !tbaa !4, !legup.pipeline.start_time !29, !legup.pipeline.avail_time !32, !legup.pipeline.stage !3
  %85 = load volatile i32* %scevgep25, align 4, !tbaa !4, !legup.pipeline.start_time !29, !legup.pipeline.avail_time !32, !legup.pipeline.stage !3
  %86 = load volatile i32* %scevgep20, align 4, !tbaa !4, !legup.pipeline.start_time !31, !legup.pipeline.avail_time !12, !legup.pipeline.stage !3
  %87 = load volatile i32* %scevgep10, align 4, !tbaa !4, !legup.pipeline.start_time !31, !legup.pipeline.avail_time !12, !legup.pipeline.stage !3
  %88 = load volatile i32* %scevgep24, align 4, !tbaa !4, !legup.pipeline.start_time !32, !legup.pipeline.avail_time !8, !legup.pipeline.stage !3
  %89 = load volatile i32* %scevgep19, align 4, !tbaa !4, !legup.pipeline.start_time !32, !legup.pipeline.avail_time !8, !legup.pipeline.stage !3
  %90 = add i32 %72, %71, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %91 = add i32 %90, %73, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %92 = add i32 %91, %74, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %93 = add i32 %92, %75, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %94 = add i32 %93, %76, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %95 = add i32 %94, %77, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %96 = add i32 %95, %78, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  store volatile i32 %96, i32* %scevgep9, align 4, !tbaa !4, !legup.pipeline.start_time !33, !legup.pipeline.avail_time !24, !legup.pipeline.stage !2
  %97 = add i32 %96, %79, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %98 = add i32 %97, %80, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %99 = add i32 %98, %81, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %100 = add i32 %99, %82, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %101 = add i32 %100, %83, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %102 = add i32 %101, %84, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %103 = add i32 %102, %85, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %104 = add i32 %103, %86, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  store volatile i32 %104, i32* %scevgep8, align 4, !tbaa !4, !legup.pipeline.start_time !24, !legup.pipeline.avail_time !25, !legup.pipeline.stage !2
  %105 = add i32 %104, %87, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %106 = add i32 %105, %88, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %107 = add i32 %106, %89, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  store volatile i32 %107, i32* %scevgep7, align 4, !tbaa !4, !legup.pipeline.start_time !25, !legup.pipeline.avail_time !26, !legup.pipeline.stage !2
  %108 = load volatile i32* %scevgep11, align 4, !tbaa !4, !legup.pipeline.start_time !27, !legup.pipeline.avail_time !34, !legup.pipeline.stage !2
  %109 = add i32 %72, %71, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %110 = add i32 %109, %73, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %111 = add i32 %110, %74, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %112 = add i32 %111, %75, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %113 = add i32 %112, %76, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %114 = add i32 %113, %77, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %115 = add i32 %114, %78, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %116 = add i32 %115, %79, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %117 = add i32 %116, %80, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %118 = add i32 %117, %81, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %119 = add i32 %118, %82, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %120 = add i32 %119, %83, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %121 = add i32 %120, %84, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %122 = add i32 %121, %85, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %123 = add i32 %122, %86, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %124 = add i32 %123, %87, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %125 = add i32 %124, %88, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %126 = add i32 %125, %89, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !23, !legup.pipeline.stage !2
  %127 = add i32 %126, %108, !legup.pipeline.start_time !35, !legup.pipeline.avail_time !35, !legup.pipeline.stage !16
  %128 = add i32 %127, %4, !legup.pipeline.start_time !35, !legup.pipeline.avail_time !35, !legup.pipeline.stage !16
  store volatile i32 %128, i32* %scevgep28, align 4, !tbaa !4, !legup.pipeline.start_time !36, !legup.pipeline.avail_time !37, !legup.pipeline.stage !16
  %indvar.next = add i32 %indvar, 1, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %exitcond = icmp eq i32 %indvar.next, 45, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  br i1 %exitcond, label %129, label %1, !llvm.loop !38, !legup.pipelined !2, !legup.II !40, !legup.totalTime !41, !legup.maxStage !16, !legup.tripCount !25, !legup.label !42, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3

; <label>:129                                     ; preds = %1
  %130 = load volatile i32* getelementptr inbounds ([100 x i32]* @dd, i32 0, i32 90), align 4, !tbaa !4
  %131 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str1, i32 0, i32 0), i32 %130) #2
  %132 = icmp eq i32 %130, 87301
  br i1 %132, label %133, label %135

; <label>:133                                     ; preds = %129
  %134 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str2, i32 0, i32 0)) #2
  br label %137

; <label>:135                                     ; preds = %129
  %136 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str3, i32 0, i32 0)) #2
  br label %137

; <label>:137                                     ; preds = %135, %133
  ret i32 %130
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
!1 = metadata !{metadata !"II", metadata !"24"}
!2 = metadata !{metadata !"1"}
!3 = metadata !{metadata !"0"}
!4 = metadata !{metadata !5, metadata !5, i64 0}
!5 = metadata !{metadata !"int", metadata !6, i64 0}
!6 = metadata !{metadata !"omnipotent char", metadata !7, i64 0}
!7 = metadata !{metadata !"Simple C/C++ TBAA"}
!8 = metadata !{metadata !"14"}
!9 = metadata !{metadata !"16"}
!10 = metadata !{metadata !"6"}
!11 = metadata !{metadata !"8"}
!12 = metadata !{metadata !"13"}
!13 = metadata !{metadata !"15"}
!14 = metadata !{metadata !"3"}
!15 = metadata !{metadata !"5"}
!16 = metadata !{metadata !"2"}
!17 = metadata !{metadata !"4"}
!18 = metadata !{metadata !"19"}
!19 = metadata !{metadata !"21"}
!20 = metadata !{metadata !"18"}
!21 = metadata !{metadata !"20"}
!22 = metadata !{metadata !"17"}
!23 = metadata !{metadata !"26"}
!24 = metadata !{metadata !"44"}
!25 = metadata !{metadata !"45"}
!26 = metadata !{metadata !"46"}
!27 = metadata !{metadata !"47"}
!28 = metadata !{metadata !"7"}
!29 = metadata !{metadata !"10"}
!30 = metadata !{metadata !"9"}
!31 = metadata !{metadata !"11"}
!32 = metadata !{metadata !"12"}
!33 = metadata !{metadata !"43"}
!34 = metadata !{metadata !"49"}
!35 = metadata !{metadata !"53"}
!36 = metadata !{metadata !"71"}
!37 = metadata !{metadata !"72"}
!38 = metadata !{metadata !38, metadata !39}
!39 = metadata !{metadata !"llvm.loop.unroll.enable", i1 false}
!40 = metadata !{metadata !"24"}
!41 = metadata !{metadata !"73"}
!42 = metadata !{metadata !"loop"}
