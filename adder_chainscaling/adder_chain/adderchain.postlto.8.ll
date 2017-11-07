; ModuleID = 'adderchain.postlto.8.bc'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

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

; Function Attrs: nounwind
define i32 @main() #0 {
  br label %1

; <label>:1                                       ; preds = %1, %0
  %i.01 = phi i32 [ 0, %0 ], [ %28, %1 ]
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
  %45 = getelementptr inbounds [100 x i32]* @j, i32 0, i32 %8
  %46 = load volatile i32* %45, align 4, !tbaa !1
  %47 = getelementptr inbounds [100 x i32]* @j, i32 0, i32 %11
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
  %75 = load volatile i32* %3, align 4, !tbaa !1
  %76 = load volatile i32* %6, align 4, !tbaa !1
  %77 = load volatile i32* %9, align 4, !tbaa !1
  %78 = load volatile i32* %12, align 4, !tbaa !1
  %79 = load volatile i32* %15, align 4, !tbaa !1
  %80 = load volatile i32* %18, align 4, !tbaa !1
  %81 = load volatile i32* %21, align 4, !tbaa !1
  %82 = load volatile i32* %24, align 4, !tbaa !1
  %83 = load volatile i32* %26, align 4, !tbaa !1
  %84 = load volatile i32* %29, align 4, !tbaa !1
  %85 = load volatile i32* %31, align 4, !tbaa !1
  %86 = load volatile i32* %33, align 4, !tbaa !1
  %87 = load volatile i32* %35, align 4, !tbaa !1
  %88 = load volatile i32* %37, align 4, !tbaa !1
  %89 = load volatile i32* %39, align 4, !tbaa !1
  %90 = load volatile i32* %41, align 4, !tbaa !1
  %91 = load volatile i32* %43, align 4, !tbaa !1
  %92 = load volatile i32* %45, align 4, !tbaa !1
  %93 = load volatile i32* %47, align 4, !tbaa !1
  %94 = add i32 %76, %75
  %95 = add i32 %94, %77
  %96 = add i32 %95, %78
  %97 = add i32 %96, %79
  %98 = add i32 %97, %80
  %99 = add i32 %98, %81
  %100 = add i32 %99, %82
  store volatile i32 %100, i32* %56, align 4, !tbaa !1
  %101 = add i32 %100, %83
  %102 = add i32 %101, %84
  %103 = add i32 %102, %85
  %104 = add i32 %103, %86
  %105 = add i32 %104, %87
  %106 = add i32 %105, %88
  %107 = add i32 %106, %89
  %108 = add i32 %107, %90
  store volatile i32 %108, i32* %65, align 4, !tbaa !1
  %109 = add i32 %108, %91
  %110 = add i32 %109, %92
  %111 = add i32 %110, %93
  store volatile i32 %111, i32* %69, align 4, !tbaa !1
  %112 = load volatile i32* %70, align 4, !tbaa !1
  %113 = add i32 %112, %i.01
  %114 = add i32 %113, %111
  store volatile i32 %114, i32* %74, align 4, !tbaa !1
  %115 = load volatile i32* %3, align 4, !tbaa !1
  %116 = load volatile i32* %6, align 4, !tbaa !1
  %117 = load volatile i32* %9, align 4, !tbaa !1
  %118 = load volatile i32* %12, align 4, !tbaa !1
  %119 = load volatile i32* %15, align 4, !tbaa !1
  %120 = load volatile i32* %18, align 4, !tbaa !1
  %121 = load volatile i32* %21, align 4, !tbaa !1
  %122 = load volatile i32* %24, align 4, !tbaa !1
  %123 = load volatile i32* %26, align 4, !tbaa !1
  %124 = load volatile i32* %29, align 4, !tbaa !1
  %125 = load volatile i32* %31, align 4, !tbaa !1
  %126 = load volatile i32* %33, align 4, !tbaa !1
  %127 = load volatile i32* %35, align 4, !tbaa !1
  %128 = load volatile i32* %37, align 4, !tbaa !1
  %129 = load volatile i32* %39, align 4, !tbaa !1
  %130 = load volatile i32* %41, align 4, !tbaa !1
  %131 = load volatile i32* %43, align 4, !tbaa !1
  %132 = load volatile i32* %45, align 4, !tbaa !1
  %133 = load volatile i32* %47, align 4, !tbaa !1
  %134 = add i32 %116, %115
  %135 = add i32 %134, %117
  %136 = add i32 %135, %118
  %137 = add i32 %136, %119
  %138 = add i32 %137, %120
  %139 = add i32 %138, %121
  %140 = add i32 %139, %122
  store volatile i32 %140, i32* %56, align 4, !tbaa !1
  %141 = add i32 %140, %123
  %142 = add i32 %141, %124
  %143 = add i32 %142, %125
  %144 = add i32 %143, %126
  %145 = add i32 %144, %127
  %146 = add i32 %145, %128
  %147 = add i32 %146, %129
  %148 = add i32 %147, %130
  store volatile i32 %148, i32* %65, align 4, !tbaa !1
  %149 = add i32 %148, %131
  %150 = add i32 %149, %132
  %151 = add i32 %150, %133
  store volatile i32 %151, i32* %69, align 4, !tbaa !1
  %152 = load volatile i32* %70, align 4, !tbaa !1
  %153 = add i32 %152, %i.01
  %154 = add i32 %153, %151
  store volatile i32 %154, i32* %74, align 4, !tbaa !1
  %155 = load volatile i32* %3, align 4, !tbaa !1
  %156 = load volatile i32* %6, align 4, !tbaa !1
  %157 = load volatile i32* %9, align 4, !tbaa !1
  %158 = load volatile i32* %12, align 4, !tbaa !1
  %159 = load volatile i32* %15, align 4, !tbaa !1
  %160 = load volatile i32* %18, align 4, !tbaa !1
  %161 = load volatile i32* %21, align 4, !tbaa !1
  %162 = load volatile i32* %24, align 4, !tbaa !1
  %163 = load volatile i32* %26, align 4, !tbaa !1
  %164 = load volatile i32* %29, align 4, !tbaa !1
  %165 = load volatile i32* %31, align 4, !tbaa !1
  %166 = load volatile i32* %33, align 4, !tbaa !1
  %167 = load volatile i32* %35, align 4, !tbaa !1
  %168 = load volatile i32* %37, align 4, !tbaa !1
  %169 = load volatile i32* %39, align 4, !tbaa !1
  %170 = load volatile i32* %41, align 4, !tbaa !1
  %171 = load volatile i32* %43, align 4, !tbaa !1
  %172 = load volatile i32* %45, align 4, !tbaa !1
  %173 = load volatile i32* %47, align 4, !tbaa !1
  %174 = add i32 %156, %155
  %175 = add i32 %174, %157
  %176 = add i32 %175, %158
  %177 = add i32 %176, %159
  %178 = add i32 %177, %160
  %179 = add i32 %178, %161
  %180 = add i32 %179, %162
  store volatile i32 %180, i32* %56, align 4, !tbaa !1
  %181 = add i32 %180, %163
  %182 = add i32 %181, %164
  %183 = add i32 %182, %165
  %184 = add i32 %183, %166
  %185 = add i32 %184, %167
  %186 = add i32 %185, %168
  %187 = add i32 %186, %169
  %188 = add i32 %187, %170
  store volatile i32 %188, i32* %65, align 4, !tbaa !1
  %189 = add i32 %188, %171
  %190 = add i32 %189, %172
  %191 = add i32 %190, %173
  store volatile i32 %191, i32* %69, align 4, !tbaa !1
  %192 = load volatile i32* %70, align 4, !tbaa !1
  %193 = add i32 %192, %i.01
  %194 = add i32 %193, %191
  store volatile i32 %194, i32* %74, align 4, !tbaa !1
  %195 = load volatile i32* %3, align 4, !tbaa !1
  %196 = load volatile i32* %6, align 4, !tbaa !1
  %197 = load volatile i32* %9, align 4, !tbaa !1
  %198 = load volatile i32* %12, align 4, !tbaa !1
  %199 = load volatile i32* %15, align 4, !tbaa !1
  %200 = load volatile i32* %18, align 4, !tbaa !1
  %201 = load volatile i32* %21, align 4, !tbaa !1
  %202 = load volatile i32* %24, align 4, !tbaa !1
  %203 = load volatile i32* %26, align 4, !tbaa !1
  %204 = load volatile i32* %29, align 4, !tbaa !1
  %205 = load volatile i32* %31, align 4, !tbaa !1
  %206 = load volatile i32* %33, align 4, !tbaa !1
  %207 = load volatile i32* %35, align 4, !tbaa !1
  %208 = load volatile i32* %37, align 4, !tbaa !1
  %209 = load volatile i32* %39, align 4, !tbaa !1
  %210 = load volatile i32* %41, align 4, !tbaa !1
  %211 = load volatile i32* %43, align 4, !tbaa !1
  %212 = load volatile i32* %45, align 4, !tbaa !1
  %213 = load volatile i32* %47, align 4, !tbaa !1
  %214 = add i32 %196, %195
  %215 = add i32 %214, %197
  %216 = add i32 %215, %198
  %217 = add i32 %216, %199
  %218 = add i32 %217, %200
  %219 = add i32 %218, %201
  %220 = add i32 %219, %202
  store volatile i32 %220, i32* %56, align 4, !tbaa !1
  %221 = add i32 %220, %203
  %222 = add i32 %221, %204
  %223 = add i32 %222, %205
  %224 = add i32 %223, %206
  %225 = add i32 %224, %207
  %226 = add i32 %225, %208
  %227 = add i32 %226, %209
  %228 = add i32 %227, %210
  store volatile i32 %228, i32* %65, align 4, !tbaa !1
  %229 = add i32 %228, %211
  %230 = add i32 %229, %212
  %231 = add i32 %230, %213
  store volatile i32 %231, i32* %69, align 4, !tbaa !1
  %232 = load volatile i32* %70, align 4, !tbaa !1
  %233 = add i32 %232, %i.01
  %234 = add i32 %233, %231
  store volatile i32 %234, i32* %74, align 4, !tbaa !1
  %235 = load volatile i32* %3, align 4, !tbaa !1
  %236 = load volatile i32* %6, align 4, !tbaa !1
  %237 = load volatile i32* %9, align 4, !tbaa !1
  %238 = load volatile i32* %12, align 4, !tbaa !1
  %239 = load volatile i32* %15, align 4, !tbaa !1
  %240 = load volatile i32* %18, align 4, !tbaa !1
  %241 = load volatile i32* %21, align 4, !tbaa !1
  %242 = load volatile i32* %24, align 4, !tbaa !1
  %243 = load volatile i32* %26, align 4, !tbaa !1
  %244 = load volatile i32* %29, align 4, !tbaa !1
  %245 = load volatile i32* %31, align 4, !tbaa !1
  %246 = load volatile i32* %33, align 4, !tbaa !1
  %247 = load volatile i32* %35, align 4, !tbaa !1
  %248 = load volatile i32* %37, align 4, !tbaa !1
  %249 = load volatile i32* %39, align 4, !tbaa !1
  %250 = load volatile i32* %41, align 4, !tbaa !1
  %251 = load volatile i32* %43, align 4, !tbaa !1
  %252 = load volatile i32* %45, align 4, !tbaa !1
  %253 = load volatile i32* %47, align 4, !tbaa !1
  %254 = add i32 %236, %235
  %255 = add i32 %254, %237
  %256 = add i32 %255, %238
  %257 = add i32 %256, %239
  %258 = add i32 %257, %240
  %259 = add i32 %258, %241
  %260 = add i32 %259, %242
  store volatile i32 %260, i32* %56, align 4, !tbaa !1
  %261 = add i32 %260, %243
  %262 = add i32 %261, %244
  %263 = add i32 %262, %245
  %264 = add i32 %263, %246
  %265 = add i32 %264, %247
  %266 = add i32 %265, %248
  %267 = add i32 %266, %249
  %268 = add i32 %267, %250
  store volatile i32 %268, i32* %65, align 4, !tbaa !1
  %269 = add i32 %268, %251
  %270 = add i32 %269, %252
  %271 = add i32 %270, %253
  store volatile i32 %271, i32* %69, align 4, !tbaa !1
  %272 = load volatile i32* %70, align 4, !tbaa !1
  %273 = add i32 %272, %i.01
  %274 = add i32 %273, %271
  store volatile i32 %274, i32* %74, align 4, !tbaa !1
  %exitcond = icmp eq i32 %i.01, 89
  br i1 %exitcond, label %275, label %1

; <label>:275                                     ; preds = %1
  %276 = load volatile i32* getelementptr inbounds ([100 x i32]* @dd, i32 0, i32 90), align 4, !tbaa !1
  %277 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str1, i32 0, i32 0), i32 %276) #2
  %278 = icmp eq i32 %276, 87301
  br i1 %278, label %279, label %281

; <label>:279                                     ; preds = %275
  %280 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str2, i32 0, i32 0)) #2
  br label %283

; <label>:281                                     ; preds = %275
  %282 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str3, i32 0, i32 0)) #2
  br label %283

; <label>:283                                     ; preds = %281, %279
  ret i32 %276
}

declare void @__legup_label(i8*) #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #0

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}

!0 = metadata !{metadata !"clang version 3.5.2 "}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
