; ModuleID = 'adderchain.prelto.bc'
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

; Function Attrs: nounwind
define i32 @main() #0 {
  br label %1

; <label>:1                                       ; preds = %1, %0
  %i.01 = phi i32 [ 0, %0 ], [ %2, %1 ]
  tail call void @__legup_label(i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0)) #2
  %2 = add nsw i32 %i.01, 9
  %3 = getelementptr inbounds [100 x i32]* @dd, i32 0, i32 %2
  %4 = load volatile i32* %3, align 4, !tbaa !1
  %5 = add nsw i32 %i.01, 8
  %6 = getelementptr inbounds [100 x i32]* @dd, i32 0, i32 %5
  %7 = load volatile i32* %6, align 4, !tbaa !1
  %8 = add nsw i32 %i.01, 2
  %9 = getelementptr inbounds [100 x i32]* @b, i32 0, i32 %8
  %10 = load volatile i32* %9, align 4, !tbaa !1
  %11 = add nsw i32 %i.01, 3
  %12 = getelementptr inbounds [100 x i32]* @b, i32 0, i32 %11
  %13 = load volatile i32* %12, align 4, !tbaa !1
  %14 = add nsw i32 %i.01, 4
  %15 = getelementptr inbounds [100 x i32]* @c, i32 0, i32 %14
  %16 = load volatile i32* %15, align 4, !tbaa !1
  %17 = add nsw i32 %i.01, 5
  %18 = getelementptr inbounds [100 x i32]* @c, i32 0, i32 %17
  %19 = load volatile i32* %18, align 4, !tbaa !1
  %20 = add nsw i32 %i.01, 6
  %21 = getelementptr inbounds [100 x i32]* @d, i32 0, i32 %20
  %22 = load volatile i32* %21, align 4, !tbaa !1
  %23 = add nsw i32 %i.01, 7
  %24 = getelementptr inbounds [100 x i32]* @d, i32 0, i32 %23
  %25 = load volatile i32* %24, align 4, !tbaa !1
  %26 = getelementptr inbounds [100 x i32]* @e, i32 0, i32 %i.01
  %27 = load volatile i32* %26, align 4, !tbaa !1
  %28 = add nsw i32 %i.01, 1
  %29 = getelementptr inbounds [100 x i32]* @e, i32 0, i32 %28
  %30 = load volatile i32* %29, align 4, !tbaa !1
  %31 = getelementptr inbounds [100 x i32]* @f, i32 0, i32 %8
  %32 = load volatile i32* %31, align 4, !tbaa !1
  %33 = getelementptr inbounds [100 x i32]* @f, i32 0, i32 %11
  %34 = load volatile i32* %33, align 4, !tbaa !1
  %35 = getelementptr inbounds [100 x i32]* @g, i32 0, i32 %i.01
  %36 = load volatile i32* %35, align 4, !tbaa !1
  %37 = getelementptr inbounds [100 x i32]* @g, i32 0, i32 %28
  %38 = load volatile i32* %37, align 4, !tbaa !1
  %39 = getelementptr inbounds [100 x i32]* @h, i32 0, i32 %8
  %40 = load volatile i32* %39, align 4, !tbaa !1
  %41 = getelementptr inbounds [100 x i32]* @h, i32 0, i32 %11
  %42 = load volatile i32* %41, align 4, !tbaa !1
  %43 = getelementptr inbounds [100 x i32]* @ii, i32 0, i32 %i.01
  %44 = load volatile i32* %43, align 4, !tbaa !1
  %45 = getelementptr inbounds [100 x i32]* @BANANA, i32 0, i32 %8
  %46 = load volatile i32* %45, align 4, !tbaa !1
  %47 = getelementptr inbounds [100 x i32]* @BANANA, i32 0, i32 %11
  %48 = load volatile i32* %47, align 4, !tbaa !1
  %49 = add i32 %7, %4
  %50 = add i32 %49, %10
  %51 = add i32 %50, %13
  %52 = add i32 %51, %16
  %53 = add i32 %52, %19
  %54 = add i32 %53, %22
  %55 = add i32 %54, %25
  %56 = getelementptr inbounds [100 x i32]* @bb, i32 0, i32 %i.01
  store volatile i32 %55, i32* %56, align 4, !tbaa !1
  %57 = add i32 %55, %27
  %58 = add i32 %57, %30
  %59 = add i32 %58, %32
  %60 = add i32 %59, %34
  %61 = add i32 %60, %36
  %62 = add i32 %61, %38
  %63 = add i32 %62, %40
  %64 = add i32 %63, %42
  %65 = getelementptr inbounds [100 x i32]* @aa, i32 0, i32 %i.01
  store volatile i32 %64, i32* %65, align 4, !tbaa !1
  %66 = add i32 %64, %44
  %67 = add i32 %66, %46
  %68 = add i32 %67, %48
  %69 = getelementptr inbounds [100 x i32]* @cc, i32 0, i32 %i.01
  store volatile i32 %68, i32* %69, align 4, !tbaa !1
  %70 = getelementptr inbounds [100 x i32]* @dd, i32 0, i32 %i.01
  %71 = load volatile i32* %70, align 4, !tbaa !1
  %72 = add i32 %71, %i.01
  %73 = add i32 %72, %68
  %74 = getelementptr inbounds [100 x i32]* @dd, i32 0, i32 %28
  store volatile i32 %73, i32* %74, align 4, !tbaa !1
  tail call void @__legup_label(i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0)) #2
  %75 = add nsw i32 %i.01, 10
  %76 = getelementptr inbounds [100 x i32]* @dd, i32 0, i32 %75
  %77 = load volatile i32* %76, align 4, !tbaa !1
  %78 = load volatile i32* %3, align 4, !tbaa !1
  %79 = load volatile i32* %12, align 4, !tbaa !1
  %80 = getelementptr inbounds [100 x i32]* @b, i32 0, i32 %14
  %81 = load volatile i32* %80, align 4, !tbaa !1
  %82 = load volatile i32* %18, align 4, !tbaa !1
  %83 = getelementptr inbounds [100 x i32]* @c, i32 0, i32 %20
  %84 = load volatile i32* %83, align 4, !tbaa !1
  %85 = load volatile i32* %24, align 4, !tbaa !1
  %86 = getelementptr inbounds [100 x i32]* @d, i32 0, i32 %5
  %87 = load volatile i32* %86, align 4, !tbaa !1
  %88 = load volatile i32* %29, align 4, !tbaa !1
  %89 = getelementptr inbounds [100 x i32]* @e, i32 0, i32 %8
  %90 = load volatile i32* %89, align 4, !tbaa !1
  %91 = load volatile i32* %33, align 4, !tbaa !1
  %92 = getelementptr inbounds [100 x i32]* @f, i32 0, i32 %14
  %93 = load volatile i32* %92, align 4, !tbaa !1
  %94 = load volatile i32* %37, align 4, !tbaa !1
  %95 = getelementptr inbounds [100 x i32]* @g, i32 0, i32 %8
  %96 = load volatile i32* %95, align 4, !tbaa !1
  %97 = load volatile i32* %41, align 4, !tbaa !1
  %98 = getelementptr inbounds [100 x i32]* @h, i32 0, i32 %14
  %99 = load volatile i32* %98, align 4, !tbaa !1
  %100 = getelementptr inbounds [100 x i32]* @ii, i32 0, i32 %28
  %101 = load volatile i32* %100, align 4, !tbaa !1
  %102 = load volatile i32* %47, align 4, !tbaa !1
  %103 = getelementptr inbounds [100 x i32]* @BANANA, i32 0, i32 %14
  %104 = load volatile i32* %103, align 4, !tbaa !1
  %105 = add i32 %78, %77
  %106 = add i32 %105, %79
  %107 = add i32 %106, %81
  %108 = add i32 %107, %82
  %109 = add i32 %108, %84
  %110 = add i32 %109, %85
  %111 = add i32 %110, %87
  %112 = getelementptr inbounds [100 x i32]* @bb, i32 0, i32 %28
  store volatile i32 %111, i32* %112, align 4, !tbaa !1
  %113 = add i32 %111, %88
  %114 = add i32 %113, %90
  %115 = add i32 %114, %91
  %116 = add i32 %115, %93
  %117 = add i32 %116, %94
  %118 = add i32 %117, %96
  %119 = add i32 %118, %97
  %120 = add i32 %119, %99
  %121 = getelementptr inbounds [100 x i32]* @aa, i32 0, i32 %28
  store volatile i32 %120, i32* %121, align 4, !tbaa !1
  %122 = add i32 %120, %101
  %123 = add i32 %122, %102
  %124 = add i32 %123, %104
  %125 = getelementptr inbounds [100 x i32]* @cc, i32 0, i32 %28
  store volatile i32 %124, i32* %125, align 4, !tbaa !1
  %126 = load volatile i32* %74, align 4, !tbaa !1
  %127 = add i32 %126, %28
  %128 = add i32 %127, %124
  %129 = getelementptr inbounds [100 x i32]* @dd, i32 0, i32 %8
  store volatile i32 %128, i32* %129, align 4, !tbaa !1
  tail call void @__legup_label(i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0)) #2
  %130 = add nsw i32 %i.01, 11
  %131 = getelementptr inbounds [100 x i32]* @dd, i32 0, i32 %130
  %132 = load volatile i32* %131, align 4, !tbaa !1
  %133 = load volatile i32* %76, align 4, !tbaa !1
  %134 = load volatile i32* %80, align 4, !tbaa !1
  %135 = getelementptr inbounds [100 x i32]* @b, i32 0, i32 %17
  %136 = load volatile i32* %135, align 4, !tbaa !1
  %137 = load volatile i32* %83, align 4, !tbaa !1
  %138 = getelementptr inbounds [100 x i32]* @c, i32 0, i32 %23
  %139 = load volatile i32* %138, align 4, !tbaa !1
  %140 = load volatile i32* %86, align 4, !tbaa !1
  %141 = getelementptr inbounds [100 x i32]* @d, i32 0, i32 %2
  %142 = load volatile i32* %141, align 4, !tbaa !1
  %143 = load volatile i32* %89, align 4, !tbaa !1
  %144 = getelementptr inbounds [100 x i32]* @e, i32 0, i32 %11
  %145 = load volatile i32* %144, align 4, !tbaa !1
  %146 = load volatile i32* %92, align 4, !tbaa !1
  %147 = getelementptr inbounds [100 x i32]* @f, i32 0, i32 %17
  %148 = load volatile i32* %147, align 4, !tbaa !1
  %149 = load volatile i32* %95, align 4, !tbaa !1
  %150 = getelementptr inbounds [100 x i32]* @g, i32 0, i32 %11
  %151 = load volatile i32* %150, align 4, !tbaa !1
  %152 = load volatile i32* %98, align 4, !tbaa !1
  %153 = getelementptr inbounds [100 x i32]* @h, i32 0, i32 %17
  %154 = load volatile i32* %153, align 4, !tbaa !1
  %155 = getelementptr inbounds [100 x i32]* @ii, i32 0, i32 %8
  %156 = load volatile i32* %155, align 4, !tbaa !1
  %157 = load volatile i32* %103, align 4, !tbaa !1
  %158 = getelementptr inbounds [100 x i32]* @BANANA, i32 0, i32 %17
  %159 = load volatile i32* %158, align 4, !tbaa !1
  %160 = add i32 %133, %132
  %161 = add i32 %160, %134
  %162 = add i32 %161, %136
  %163 = add i32 %162, %137
  %164 = add i32 %163, %139
  %165 = add i32 %164, %140
  %166 = add i32 %165, %142
  %167 = getelementptr inbounds [100 x i32]* @bb, i32 0, i32 %8
  store volatile i32 %166, i32* %167, align 4, !tbaa !1
  %168 = add i32 %166, %143
  %169 = add i32 %168, %145
  %170 = add i32 %169, %146
  %171 = add i32 %170, %148
  %172 = add i32 %171, %149
  %173 = add i32 %172, %151
  %174 = add i32 %173, %152
  %175 = add i32 %174, %154
  %176 = getelementptr inbounds [100 x i32]* @aa, i32 0, i32 %8
  store volatile i32 %175, i32* %176, align 4, !tbaa !1
  %177 = add i32 %175, %156
  %178 = add i32 %177, %157
  %179 = add i32 %178, %159
  %180 = getelementptr inbounds [100 x i32]* @cc, i32 0, i32 %8
  store volatile i32 %179, i32* %180, align 4, !tbaa !1
  %181 = load volatile i32* %129, align 4, !tbaa !1
  %182 = add i32 %181, %8
  %183 = add i32 %182, %179
  %184 = getelementptr inbounds [100 x i32]* @dd, i32 0, i32 %11
  store volatile i32 %183, i32* %184, align 4, !tbaa !1
  tail call void @__legup_label(i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0)) #2
  %185 = add nsw i32 %i.01, 12
  %186 = getelementptr inbounds [100 x i32]* @dd, i32 0, i32 %185
  %187 = load volatile i32* %186, align 4, !tbaa !1
  %188 = load volatile i32* %131, align 4, !tbaa !1
  %189 = load volatile i32* %135, align 4, !tbaa !1
  %190 = getelementptr inbounds [100 x i32]* @b, i32 0, i32 %20
  %191 = load volatile i32* %190, align 4, !tbaa !1
  %192 = load volatile i32* %138, align 4, !tbaa !1
  %193 = getelementptr inbounds [100 x i32]* @c, i32 0, i32 %5
  %194 = load volatile i32* %193, align 4, !tbaa !1
  %195 = load volatile i32* %141, align 4, !tbaa !1
  %196 = getelementptr inbounds [100 x i32]* @d, i32 0, i32 %75
  %197 = load volatile i32* %196, align 4, !tbaa !1
  %198 = load volatile i32* %144, align 4, !tbaa !1
  %199 = getelementptr inbounds [100 x i32]* @e, i32 0, i32 %14
  %200 = load volatile i32* %199, align 4, !tbaa !1
  %201 = load volatile i32* %147, align 4, !tbaa !1
  %202 = getelementptr inbounds [100 x i32]* @f, i32 0, i32 %20
  %203 = load volatile i32* %202, align 4, !tbaa !1
  %204 = load volatile i32* %150, align 4, !tbaa !1
  %205 = getelementptr inbounds [100 x i32]* @g, i32 0, i32 %14
  %206 = load volatile i32* %205, align 4, !tbaa !1
  %207 = load volatile i32* %153, align 4, !tbaa !1
  %208 = getelementptr inbounds [100 x i32]* @h, i32 0, i32 %20
  %209 = load volatile i32* %208, align 4, !tbaa !1
  %210 = getelementptr inbounds [100 x i32]* @ii, i32 0, i32 %11
  %211 = load volatile i32* %210, align 4, !tbaa !1
  %212 = load volatile i32* %158, align 4, !tbaa !1
  %213 = getelementptr inbounds [100 x i32]* @BANANA, i32 0, i32 %20
  %214 = load volatile i32* %213, align 4, !tbaa !1
  %215 = add i32 %188, %187
  %216 = add i32 %215, %189
  %217 = add i32 %216, %191
  %218 = add i32 %217, %192
  %219 = add i32 %218, %194
  %220 = add i32 %219, %195
  %221 = add i32 %220, %197
  %222 = getelementptr inbounds [100 x i32]* @bb, i32 0, i32 %11
  store volatile i32 %221, i32* %222, align 4, !tbaa !1
  %223 = add i32 %221, %198
  %224 = add i32 %223, %200
  %225 = add i32 %224, %201
  %226 = add i32 %225, %203
  %227 = add i32 %226, %204
  %228 = add i32 %227, %206
  %229 = add i32 %228, %207
  %230 = add i32 %229, %209
  %231 = getelementptr inbounds [100 x i32]* @aa, i32 0, i32 %11
  store volatile i32 %230, i32* %231, align 4, !tbaa !1
  %232 = add i32 %230, %211
  %233 = add i32 %232, %212
  %234 = add i32 %233, %214
  %235 = getelementptr inbounds [100 x i32]* @cc, i32 0, i32 %11
  store volatile i32 %234, i32* %235, align 4, !tbaa !1
  %236 = load volatile i32* %184, align 4, !tbaa !1
  %237 = add i32 %236, %11
  %238 = add i32 %237, %234
  %239 = getelementptr inbounds [100 x i32]* @dd, i32 0, i32 %14
  store volatile i32 %238, i32* %239, align 4, !tbaa !1
  tail call void @__legup_label(i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0)) #2
  %240 = add nsw i32 %i.01, 13
  %241 = getelementptr inbounds [100 x i32]* @dd, i32 0, i32 %240
  %242 = load volatile i32* %241, align 4, !tbaa !1
  %243 = load volatile i32* %186, align 4, !tbaa !1
  %244 = load volatile i32* %190, align 4, !tbaa !1
  %245 = getelementptr inbounds [100 x i32]* @b, i32 0, i32 %23
  %246 = load volatile i32* %245, align 4, !tbaa !1
  %247 = load volatile i32* %193, align 4, !tbaa !1
  %248 = getelementptr inbounds [100 x i32]* @c, i32 0, i32 %2
  %249 = load volatile i32* %248, align 4, !tbaa !1
  %250 = load volatile i32* %196, align 4, !tbaa !1
  %251 = getelementptr inbounds [100 x i32]* @d, i32 0, i32 %130
  %252 = load volatile i32* %251, align 4, !tbaa !1
  %253 = load volatile i32* %199, align 4, !tbaa !1
  %254 = getelementptr inbounds [100 x i32]* @e, i32 0, i32 %17
  %255 = load volatile i32* %254, align 4, !tbaa !1
  %256 = load volatile i32* %202, align 4, !tbaa !1
  %257 = getelementptr inbounds [100 x i32]* @f, i32 0, i32 %23
  %258 = load volatile i32* %257, align 4, !tbaa !1
  %259 = load volatile i32* %205, align 4, !tbaa !1
  %260 = getelementptr inbounds [100 x i32]* @g, i32 0, i32 %17
  %261 = load volatile i32* %260, align 4, !tbaa !1
  %262 = load volatile i32* %208, align 4, !tbaa !1
  %263 = getelementptr inbounds [100 x i32]* @h, i32 0, i32 %23
  %264 = load volatile i32* %263, align 4, !tbaa !1
  %265 = getelementptr inbounds [100 x i32]* @ii, i32 0, i32 %14
  %266 = load volatile i32* %265, align 4, !tbaa !1
  %267 = load volatile i32* %213, align 4, !tbaa !1
  %268 = getelementptr inbounds [100 x i32]* @BANANA, i32 0, i32 %23
  %269 = load volatile i32* %268, align 4, !tbaa !1
  %270 = add i32 %243, %242
  %271 = add i32 %270, %244
  %272 = add i32 %271, %246
  %273 = add i32 %272, %247
  %274 = add i32 %273, %249
  %275 = add i32 %274, %250
  %276 = add i32 %275, %252
  %277 = getelementptr inbounds [100 x i32]* @bb, i32 0, i32 %14
  store volatile i32 %276, i32* %277, align 4, !tbaa !1
  %278 = add i32 %276, %253
  %279 = add i32 %278, %255
  %280 = add i32 %279, %256
  %281 = add i32 %280, %258
  %282 = add i32 %281, %259
  %283 = add i32 %282, %261
  %284 = add i32 %283, %262
  %285 = add i32 %284, %264
  %286 = getelementptr inbounds [100 x i32]* @aa, i32 0, i32 %14
  store volatile i32 %285, i32* %286, align 4, !tbaa !1
  %287 = add i32 %285, %266
  %288 = add i32 %287, %267
  %289 = add i32 %288, %269
  %290 = getelementptr inbounds [100 x i32]* @cc, i32 0, i32 %14
  store volatile i32 %289, i32* %290, align 4, !tbaa !1
  %291 = load volatile i32* %239, align 4, !tbaa !1
  %292 = add i32 %291, %14
  %293 = add i32 %292, %289
  %294 = getelementptr inbounds [100 x i32]* @dd, i32 0, i32 %17
  store volatile i32 %293, i32* %294, align 4, !tbaa !1
  tail call void @__legup_label(i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0)) #2
  %295 = add nsw i32 %i.01, 14
  %296 = getelementptr inbounds [100 x i32]* @dd, i32 0, i32 %295
  %297 = load volatile i32* %296, align 4, !tbaa !1
  %298 = load volatile i32* %241, align 4, !tbaa !1
  %299 = load volatile i32* %245, align 4, !tbaa !1
  %300 = getelementptr inbounds [100 x i32]* @b, i32 0, i32 %5
  %301 = load volatile i32* %300, align 4, !tbaa !1
  %302 = load volatile i32* %248, align 4, !tbaa !1
  %303 = getelementptr inbounds [100 x i32]* @c, i32 0, i32 %75
  %304 = load volatile i32* %303, align 4, !tbaa !1
  %305 = load volatile i32* %251, align 4, !tbaa !1
  %306 = getelementptr inbounds [100 x i32]* @d, i32 0, i32 %185
  %307 = load volatile i32* %306, align 4, !tbaa !1
  %308 = load volatile i32* %254, align 4, !tbaa !1
  %309 = getelementptr inbounds [100 x i32]* @e, i32 0, i32 %20
  %310 = load volatile i32* %309, align 4, !tbaa !1
  %311 = load volatile i32* %257, align 4, !tbaa !1
  %312 = getelementptr inbounds [100 x i32]* @f, i32 0, i32 %5
  %313 = load volatile i32* %312, align 4, !tbaa !1
  %314 = load volatile i32* %260, align 4, !tbaa !1
  %315 = getelementptr inbounds [100 x i32]* @g, i32 0, i32 %20
  %316 = load volatile i32* %315, align 4, !tbaa !1
  %317 = load volatile i32* %263, align 4, !tbaa !1
  %318 = getelementptr inbounds [100 x i32]* @h, i32 0, i32 %5
  %319 = load volatile i32* %318, align 4, !tbaa !1
  %320 = getelementptr inbounds [100 x i32]* @ii, i32 0, i32 %17
  %321 = load volatile i32* %320, align 4, !tbaa !1
  %322 = load volatile i32* %268, align 4, !tbaa !1
  %323 = getelementptr inbounds [100 x i32]* @BANANA, i32 0, i32 %5
  %324 = load volatile i32* %323, align 4, !tbaa !1
  %325 = add i32 %298, %297
  %326 = add i32 %325, %299
  %327 = add i32 %326, %301
  %328 = add i32 %327, %302
  %329 = add i32 %328, %304
  %330 = add i32 %329, %305
  %331 = add i32 %330, %307
  %332 = getelementptr inbounds [100 x i32]* @bb, i32 0, i32 %17
  store volatile i32 %331, i32* %332, align 4, !tbaa !1
  %333 = add i32 %331, %308
  %334 = add i32 %333, %310
  %335 = add i32 %334, %311
  %336 = add i32 %335, %313
  %337 = add i32 %336, %314
  %338 = add i32 %337, %316
  %339 = add i32 %338, %317
  %340 = add i32 %339, %319
  %341 = getelementptr inbounds [100 x i32]* @aa, i32 0, i32 %17
  store volatile i32 %340, i32* %341, align 4, !tbaa !1
  %342 = add i32 %340, %321
  %343 = add i32 %342, %322
  %344 = add i32 %343, %324
  %345 = getelementptr inbounds [100 x i32]* @cc, i32 0, i32 %17
  store volatile i32 %344, i32* %345, align 4, !tbaa !1
  %346 = load volatile i32* %294, align 4, !tbaa !1
  %347 = add i32 %346, %17
  %348 = add i32 %347, %344
  %349 = getelementptr inbounds [100 x i32]* @dd, i32 0, i32 %20
  store volatile i32 %348, i32* %349, align 4, !tbaa !1
  tail call void @__legup_label(i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0)) #2
  %350 = add nsw i32 %i.01, 15
  %351 = getelementptr inbounds [100 x i32]* @dd, i32 0, i32 %350
  %352 = load volatile i32* %351, align 4, !tbaa !1
  %353 = load volatile i32* %296, align 4, !tbaa !1
  %354 = load volatile i32* %300, align 4, !tbaa !1
  %355 = getelementptr inbounds [100 x i32]* @b, i32 0, i32 %2
  %356 = load volatile i32* %355, align 4, !tbaa !1
  %357 = load volatile i32* %303, align 4, !tbaa !1
  %358 = getelementptr inbounds [100 x i32]* @c, i32 0, i32 %130
  %359 = load volatile i32* %358, align 4, !tbaa !1
  %360 = load volatile i32* %306, align 4, !tbaa !1
  %361 = getelementptr inbounds [100 x i32]* @d, i32 0, i32 %240
  %362 = load volatile i32* %361, align 4, !tbaa !1
  %363 = load volatile i32* %309, align 4, !tbaa !1
  %364 = getelementptr inbounds [100 x i32]* @e, i32 0, i32 %23
  %365 = load volatile i32* %364, align 4, !tbaa !1
  %366 = load volatile i32* %312, align 4, !tbaa !1
  %367 = getelementptr inbounds [100 x i32]* @f, i32 0, i32 %2
  %368 = load volatile i32* %367, align 4, !tbaa !1
  %369 = load volatile i32* %315, align 4, !tbaa !1
  %370 = getelementptr inbounds [100 x i32]* @g, i32 0, i32 %23
  %371 = load volatile i32* %370, align 4, !tbaa !1
  %372 = load volatile i32* %318, align 4, !tbaa !1
  %373 = getelementptr inbounds [100 x i32]* @h, i32 0, i32 %2
  %374 = load volatile i32* %373, align 4, !tbaa !1
  %375 = getelementptr inbounds [100 x i32]* @ii, i32 0, i32 %20
  %376 = load volatile i32* %375, align 4, !tbaa !1
  %377 = load volatile i32* %323, align 4, !tbaa !1
  %378 = getelementptr inbounds [100 x i32]* @BANANA, i32 0, i32 %2
  %379 = load volatile i32* %378, align 4, !tbaa !1
  %380 = add i32 %353, %352
  %381 = add i32 %380, %354
  %382 = add i32 %381, %356
  %383 = add i32 %382, %357
  %384 = add i32 %383, %359
  %385 = add i32 %384, %360
  %386 = add i32 %385, %362
  %387 = getelementptr inbounds [100 x i32]* @bb, i32 0, i32 %20
  store volatile i32 %386, i32* %387, align 4, !tbaa !1
  %388 = add i32 %386, %363
  %389 = add i32 %388, %365
  %390 = add i32 %389, %366
  %391 = add i32 %390, %368
  %392 = add i32 %391, %369
  %393 = add i32 %392, %371
  %394 = add i32 %393, %372
  %395 = add i32 %394, %374
  %396 = getelementptr inbounds [100 x i32]* @aa, i32 0, i32 %20
  store volatile i32 %395, i32* %396, align 4, !tbaa !1
  %397 = add i32 %395, %376
  %398 = add i32 %397, %377
  %399 = add i32 %398, %379
  %400 = getelementptr inbounds [100 x i32]* @cc, i32 0, i32 %20
  store volatile i32 %399, i32* %400, align 4, !tbaa !1
  %401 = load volatile i32* %349, align 4, !tbaa !1
  %402 = add i32 %401, %20
  %403 = add i32 %402, %399
  %404 = getelementptr inbounds [100 x i32]* @dd, i32 0, i32 %23
  store volatile i32 %403, i32* %404, align 4, !tbaa !1
  tail call void @__legup_label(i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0)) #2
  %405 = add nsw i32 %i.01, 16
  %406 = getelementptr inbounds [100 x i32]* @dd, i32 0, i32 %405
  %407 = load volatile i32* %406, align 4, !tbaa !1
  %408 = load volatile i32* %351, align 4, !tbaa !1
  %409 = load volatile i32* %355, align 4, !tbaa !1
  %410 = getelementptr inbounds [100 x i32]* @b, i32 0, i32 %75
  %411 = load volatile i32* %410, align 4, !tbaa !1
  %412 = load volatile i32* %358, align 4, !tbaa !1
  %413 = getelementptr inbounds [100 x i32]* @c, i32 0, i32 %185
  %414 = load volatile i32* %413, align 4, !tbaa !1
  %415 = load volatile i32* %361, align 4, !tbaa !1
  %416 = getelementptr inbounds [100 x i32]* @d, i32 0, i32 %295
  %417 = load volatile i32* %416, align 4, !tbaa !1
  %418 = load volatile i32* %364, align 4, !tbaa !1
  %419 = getelementptr inbounds [100 x i32]* @e, i32 0, i32 %5
  %420 = load volatile i32* %419, align 4, !tbaa !1
  %421 = load volatile i32* %367, align 4, !tbaa !1
  %422 = getelementptr inbounds [100 x i32]* @f, i32 0, i32 %75
  %423 = load volatile i32* %422, align 4, !tbaa !1
  %424 = load volatile i32* %370, align 4, !tbaa !1
  %425 = getelementptr inbounds [100 x i32]* @g, i32 0, i32 %5
  %426 = load volatile i32* %425, align 4, !tbaa !1
  %427 = load volatile i32* %373, align 4, !tbaa !1
  %428 = getelementptr inbounds [100 x i32]* @h, i32 0, i32 %75
  %429 = load volatile i32* %428, align 4, !tbaa !1
  %430 = getelementptr inbounds [100 x i32]* @ii, i32 0, i32 %23
  %431 = load volatile i32* %430, align 4, !tbaa !1
  %432 = load volatile i32* %378, align 4, !tbaa !1
  %433 = getelementptr inbounds [100 x i32]* @BANANA, i32 0, i32 %75
  %434 = load volatile i32* %433, align 4, !tbaa !1
  %435 = add i32 %408, %407
  %436 = add i32 %435, %409
  %437 = add i32 %436, %411
  %438 = add i32 %437, %412
  %439 = add i32 %438, %414
  %440 = add i32 %439, %415
  %441 = add i32 %440, %417
  %442 = getelementptr inbounds [100 x i32]* @bb, i32 0, i32 %23
  store volatile i32 %441, i32* %442, align 4, !tbaa !1
  %443 = add i32 %441, %418
  %444 = add i32 %443, %420
  %445 = add i32 %444, %421
  %446 = add i32 %445, %423
  %447 = add i32 %446, %424
  %448 = add i32 %447, %426
  %449 = add i32 %448, %427
  %450 = add i32 %449, %429
  %451 = getelementptr inbounds [100 x i32]* @aa, i32 0, i32 %23
  store volatile i32 %450, i32* %451, align 4, !tbaa !1
  %452 = add i32 %450, %431
  %453 = add i32 %452, %432
  %454 = add i32 %453, %434
  %455 = getelementptr inbounds [100 x i32]* @cc, i32 0, i32 %23
  store volatile i32 %454, i32* %455, align 4, !tbaa !1
  %456 = load volatile i32* %404, align 4, !tbaa !1
  %457 = add i32 %456, %23
  %458 = add i32 %457, %454
  store volatile i32 %458, i32* %6, align 4, !tbaa !1
  tail call void @__legup_label(i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0)) #2
  %459 = add nsw i32 %i.01, 17
  %460 = getelementptr inbounds [100 x i32]* @dd, i32 0, i32 %459
  %461 = load volatile i32* %460, align 4, !tbaa !1
  %462 = load volatile i32* %406, align 4, !tbaa !1
  %463 = load volatile i32* %410, align 4, !tbaa !1
  %464 = getelementptr inbounds [100 x i32]* @b, i32 0, i32 %130
  %465 = load volatile i32* %464, align 4, !tbaa !1
  %466 = load volatile i32* %413, align 4, !tbaa !1
  %467 = getelementptr inbounds [100 x i32]* @c, i32 0, i32 %240
  %468 = load volatile i32* %467, align 4, !tbaa !1
  %469 = load volatile i32* %416, align 4, !tbaa !1
  %470 = getelementptr inbounds [100 x i32]* @d, i32 0, i32 %350
  %471 = load volatile i32* %470, align 4, !tbaa !1
  %472 = load volatile i32* %419, align 4, !tbaa !1
  %473 = getelementptr inbounds [100 x i32]* @e, i32 0, i32 %2
  %474 = load volatile i32* %473, align 4, !tbaa !1
  %475 = load volatile i32* %422, align 4, !tbaa !1
  %476 = getelementptr inbounds [100 x i32]* @f, i32 0, i32 %130
  %477 = load volatile i32* %476, align 4, !tbaa !1
  %478 = load volatile i32* %425, align 4, !tbaa !1
  %479 = getelementptr inbounds [100 x i32]* @g, i32 0, i32 %2
  %480 = load volatile i32* %479, align 4, !tbaa !1
  %481 = load volatile i32* %428, align 4, !tbaa !1
  %482 = getelementptr inbounds [100 x i32]* @h, i32 0, i32 %130
  %483 = load volatile i32* %482, align 4, !tbaa !1
  %484 = getelementptr inbounds [100 x i32]* @ii, i32 0, i32 %5
  %485 = load volatile i32* %484, align 4, !tbaa !1
  %486 = load volatile i32* %433, align 4, !tbaa !1
  %487 = getelementptr inbounds [100 x i32]* @BANANA, i32 0, i32 %130
  %488 = load volatile i32* %487, align 4, !tbaa !1
  %489 = add i32 %462, %461
  %490 = add i32 %489, %463
  %491 = add i32 %490, %465
  %492 = add i32 %491, %466
  %493 = add i32 %492, %468
  %494 = add i32 %493, %469
  %495 = add i32 %494, %471
  %496 = getelementptr inbounds [100 x i32]* @bb, i32 0, i32 %5
  store volatile i32 %495, i32* %496, align 4, !tbaa !1
  %497 = add i32 %495, %472
  %498 = add i32 %497, %474
  %499 = add i32 %498, %475
  %500 = add i32 %499, %477
  %501 = add i32 %500, %478
  %502 = add i32 %501, %480
  %503 = add i32 %502, %481
  %504 = add i32 %503, %483
  %505 = getelementptr inbounds [100 x i32]* @aa, i32 0, i32 %5
  store volatile i32 %504, i32* %505, align 4, !tbaa !1
  %506 = add i32 %504, %485
  %507 = add i32 %506, %486
  %508 = add i32 %507, %488
  %509 = getelementptr inbounds [100 x i32]* @cc, i32 0, i32 %5
  store volatile i32 %508, i32* %509, align 4, !tbaa !1
  %510 = load volatile i32* %6, align 4, !tbaa !1
  %511 = add i32 %510, %5
  %512 = add i32 %511, %508
  store volatile i32 %512, i32* %3, align 4, !tbaa !1
  %exitcond.8 = icmp eq i32 %2, 90
  br i1 %exitcond.8, label %513, label %1, !llvm.loop !5

; <label>:513                                     ; preds = %1
  %514 = load volatile i32* getelementptr inbounds ([100 x i32]* @dd, i32 0, i32 90), align 4, !tbaa !1
  %515 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str1, i32 0, i32 0), i32 %514) #2
  %516 = icmp eq i32 %514, 87301
  br i1 %516, label %517, label %519

; <label>:517                                     ; preds = %513
  %518 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str2, i32 0, i32 0)) #2
  br label %521

; <label>:519                                     ; preds = %513
  %520 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str3, i32 0, i32 0)) #2
  br label %521

; <label>:521                                     ; preds = %519, %517
  ret i32 %514
}

declare void @__legup_label(i8*) #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #0

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.5.0-4ubuntu2~trusty2 (tags/RELEASE_350/final) (based on LLVM 3.5.0)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
!5 = metadata !{metadata !5, metadata !6}
!6 = metadata !{metadata !"llvm.loop.unroll.enable", i1 false}
