; ModuleID = 'correlation.postlto.bc'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"loop4\00", align 1
@.str1 = private unnamed_addr constant [6 x i8] c"loop3\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c"loop2\00", align 1

; Function Attrs: noinline nounwind
define i32 @main(i32 %argc, i8** nocapture readnone %argv) #0 {
  %data = alloca [2500 x float], align 4
  %mean = alloca [50 x float], align 4
  %stddev = alloca [50 x float], align 4
  br label %1

; <label>:1                                       ; preds = %11, %0
  %j.015 = phi i32 [ 0, %0 ], [ %13, %11 ]
  %2 = getelementptr inbounds [50 x float]* %mean, i32 0, i32 %j.015
  store float 0.000000e+00, float* %2, align 4, !tbaa !1
  br label %3

; <label>:3                                       ; preds = %3, %1
  %4 = phi float [ 0.000000e+00, %1 ], [ %9, %3 ]
  %i.012 = phi i32 [ 0, %1 ], [ %10, %3 ]
  %5 = mul nsw i32 %i.012, 50
  %6 = add nsw i32 %5, %j.015
  %7 = getelementptr inbounds [2500 x float]* %data, i32 0, i32 %6
  %8 = load float* %7, align 4, !tbaa !1
  %9 = fadd float %8, %4
  %10 = add nsw i32 %i.012, 1
  %exitcond22 = icmp eq i32 %i.012, 49
  br i1 %exitcond22, label %11, label %3

; <label>:11                                      ; preds = %3
  %12 = fdiv float %9, 0x3FF3333340000000
  store float %12, float* %2, align 4, !tbaa !1
  %13 = add nsw i32 %j.015, 1
  %exitcond23 = icmp eq i32 %j.015, 49
  br i1 %exitcond23, label %.preheader2.preheader, label %1

.preheader2.preheader:                            ; preds = %11
  br label %.preheader2

.preheader2:                                      ; preds = %27, %.preheader2.preheader
  %j.111 = phi i32 [ %32, %27 ], [ 0, %.preheader2.preheader ]
  tail call void @__legup_label(i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0)) #2
  %14 = getelementptr inbounds [50 x float]* %stddev, i32 0, i32 %j.111
  store float 0.000000e+00, float* %14, align 4, !tbaa !1
  %15 = getelementptr inbounds [50 x float]* %mean, i32 0, i32 %j.111
  %16 = load float* %15, align 4, !tbaa !1
  br label %17

; <label>:17                                      ; preds = %17, %.preheader2
  %18 = phi float [ 0.000000e+00, %.preheader2 ], [ %25, %17 ]
  %i.18 = phi i32 [ 0, %.preheader2 ], [ %26, %17 ]
  %19 = mul nsw i32 %i.18, 50
  %20 = add nsw i32 %19, %j.111
  %21 = getelementptr inbounds [2500 x float]* %data, i32 0, i32 %20
  %22 = load float* %21, align 4, !tbaa !1
  %23 = fsub float %22, %16
  %24 = fmul float %23, %23
  %25 = fadd float %18, %24
  %26 = add nsw i32 %i.18, 1
  %exitcond20 = icmp eq i32 %i.18, 49
  br i1 %exitcond20, label %27, label %17

; <label>:27                                      ; preds = %17
  %28 = fdiv float %25, 0x3FF3333340000000
  %29 = fmul float %28, %28
  %30 = fcmp ugt float %29, 0x3FB99999A0000000
  %31 = select i1 %30, float %29, float 1.000000e+00
  store float %31, float* %14, align 4, !tbaa !1
  %32 = add nsw i32 %j.111, 1
  %exitcond21 = icmp eq i32 %j.111, 49
  br i1 %exitcond21, label %.preheader1.preheader, label %.preheader2

.preheader1.preheader:                            ; preds = %27
  br label %.preheader1

.preheader1:                                      ; preds = %46, %.preheader1.preheader
  %i.27 = phi i32 [ %47, %46 ], [ 0, %.preheader1.preheader ]
  tail call void @__legup_label(i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0)) #2
  %33 = mul nsw i32 %i.27, 50
  br label %34

; <label>:34                                      ; preds = %34, %.preheader1
  %j.26 = phi i32 [ 0, %.preheader1 ], [ %45, %34 ]
  tail call void @__legup_label(i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0)) #2
  %35 = getelementptr inbounds [50 x float]* %mean, i32 0, i32 %j.26
  %36 = load float* %35, align 4, !tbaa !1
  %37 = add nsw i32 %j.26, %33
  %38 = getelementptr inbounds [2500 x float]* %data, i32 0, i32 %37
  %39 = load float* %38, align 4, !tbaa !1
  %40 = fsub float %39, %36
  %41 = getelementptr inbounds [50 x float]* %stddev, i32 0, i32 %j.26
  %42 = load float* %41, align 4, !tbaa !1
  %43 = fmul float %42, 0x3FF70A3D80000000
  %44 = fdiv float %40, %43
  store float %44, float* %38, align 4, !tbaa !1
  %45 = add nsw i32 %j.26, 1
  %exitcond18 = icmp eq i32 %j.26, 49
  br i1 %exitcond18, label %46, label %34

; <label>:46                                      ; preds = %34
  %47 = add nsw i32 %i.27, 1
  %exitcond19 = icmp eq i32 %i.27, 49
  br i1 %exitcond19, label %.loopexit.preheader, label %.preheader1

.loopexit.preheader:                              ; preds = %46
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.preheader
  ret i32 50
}

declare void @__legup_label(i8*) #1

attributes #0 = { noinline nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}

!0 = metadata !{metadata !"clang version 3.5.2 "}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"float", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
