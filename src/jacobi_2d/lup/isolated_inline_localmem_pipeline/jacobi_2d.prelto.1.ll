; ModuleID = 'jacobi_2d.prelto.1.bc'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"l3\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"l2\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"l1\00", align 1

; Function Attrs: nounwind
define i32 @main() #0 {
  %1 = alloca [10000 x float], align 4
  br label %2

; <label>:2                                       ; preds = %34, %0
  %t.03 = phi i32 [ 0, %0 ], [ %35, %34 ]
  tail call void @__legup_label(i8* getelementptr inbounds ([3 x i8]* @.str, i32 0, i32 0)) #2
  br label %3

; <label>:3                                       ; preds = %32, %2
  %i.12 = phi i32 [ 1, %2 ], [ %33, %32 ]
  tail call void @__legup_label(i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0)) #2
  %4 = mul i32 %i.12, 100
  %5 = or i32 %4, 1
  %6 = add i32 %4, 100
  %7 = add i32 %4, -100
  br label %8

; <label>:8                                       ; preds = %8, %3
  %j.21 = phi i32 [ 1, %3 ], [ %31, %8 ]
  tail call void @__legup_label(i8* getelementptr inbounds ([3 x i8]* @.str2, i32 0, i32 0)) #2
  %9 = add nsw i32 %j.21, %4
  %10 = getelementptr inbounds [10000 x float]* %1, i32 0, i32 %9
  %11 = load float* %10, align 4, !tbaa !1
  %12 = add nsw i32 %9, -1
  %13 = getelementptr inbounds [10000 x float]* %1, i32 0, i32 %12
  %14 = load float* %13, align 4, !tbaa !1
  %15 = fadd float %11, %14
  %16 = add nsw i32 %j.21, %5
  %17 = getelementptr inbounds [10000 x float]* %1, i32 0, i32 %16
  %18 = load float* %17, align 4, !tbaa !1
  %19 = fadd float %15, %18
  %20 = add nsw i32 %6, %j.21
  %21 = getelementptr inbounds [10000 x float]* %1, i32 0, i32 %20
  %22 = load float* %21, align 4, !tbaa !1
  %23 = fadd float %19, %22
  %24 = add nsw i32 %7, %j.21
  %25 = getelementptr inbounds [10000 x float]* %1, i32 0, i32 %24
  %26 = load float* %25, align 4, !tbaa !1
  %27 = fadd float %23, %26
  %28 = fpext float %27 to double
  %29 = fmul double %28, 2.000000e-01
  %30 = fptrunc double %29 to float
  store float %30, float* %10, align 4, !tbaa !1
  %31 = add nsw i32 %j.21, 1
  %exitcond = icmp eq i32 %31, 99
  br i1 %exitcond, label %32, label %8

; <label>:32                                      ; preds = %8
  %33 = add nsw i32 %i.12, 1
  %exitcond5 = icmp eq i32 %33, 99
  br i1 %exitcond5, label %34, label %3

; <label>:34                                      ; preds = %32
  %35 = add nsw i32 %t.03, 1
  %exitcond6 = icmp eq i32 %35, 100
  br i1 %exitcond6, label %36, label %2

; <label>:36                                      ; preds = %34
  %37 = getelementptr inbounds [10000 x float]* %1, i32 0, i32 9999
  %38 = load float* %37, align 4, !tbaa !1
  %39 = fptosi float %38 to i32
  ret i32 %39
}

declare void @__legup_label(i8*) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.5.0-4ubuntu2~trusty2 (tags/RELEASE_350/final) (based on LLVM 3.5.0)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"float", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
