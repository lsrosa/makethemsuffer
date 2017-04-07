; ModuleID = 'correlation.prelto.6.bc'
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
  %1 = bitcast [2500 x float]* %data to i8*
  %2 = bitcast [50 x float]* %mean to i8*
  %3 = bitcast [50 x float]* %stddev to i8*
  br label %4

; <label>:4                                       ; preds = %14, %0
  %j.015 = phi i32 [ 0, %0 ], [ %16, %14 ]
  %5 = getelementptr inbounds [50 x float]* %mean, i32 0, i32 %j.015
  store float 0.000000e+00, float* %5, align 4, !tbaa !1
  br label %6

; <label>:6                                       ; preds = %6, %4
  %7 = phi float [ 0.000000e+00, %4 ], [ %12, %6 ]
  %i.012 = phi i32 [ 0, %4 ], [ %13, %6 ]
  %8 = mul nsw i32 %i.012, 50
  %9 = add nsw i32 %8, %j.015
  %10 = getelementptr inbounds [2500 x float]* %data, i32 0, i32 %9
  %11 = load float* %10, align 4, !tbaa !1
  %12 = fadd float %11, %7
  %13 = add nsw i32 %i.012, 1
  %exitcond22 = icmp eq i32 %i.012, 49
  br i1 %exitcond22, label %14, label %6

; <label>:14                                      ; preds = %6
  %.lcssa25 = phi float [ %12, %6 ]
  %15 = fdiv float %.lcssa25, 0x3FF3333340000000
  store float %15, float* %5, align 4, !tbaa !1
  %16 = add nsw i32 %j.015, 1
  %exitcond23 = icmp eq i32 %j.015, 49
  br i1 %exitcond23, label %.preheader2.preheader, label %4

.preheader2.preheader:                            ; preds = %14
  br label %.preheader2

.preheader2:                                      ; preds = %30, %.preheader2.preheader
  %j.111 = phi i32 [ %35, %30 ], [ 0, %.preheader2.preheader ]
  tail call void @__legup_label(i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0)) #3
  %17 = getelementptr inbounds [50 x float]* %stddev, i32 0, i32 %j.111
  store float 0.000000e+00, float* %17, align 4, !tbaa !1
  %18 = getelementptr inbounds [50 x float]* %mean, i32 0, i32 %j.111
  %19 = load float* %18, align 4, !tbaa !1
  br label %20

; <label>:20                                      ; preds = %20, %.preheader2
  %21 = phi float [ 0.000000e+00, %.preheader2 ], [ %28, %20 ]
  %i.18 = phi i32 [ 0, %.preheader2 ], [ %29, %20 ]
  %22 = mul nsw i32 %i.18, 50
  %23 = add nsw i32 %22, %j.111
  %24 = getelementptr inbounds [2500 x float]* %data, i32 0, i32 %23
  %25 = load float* %24, align 4, !tbaa !1
  %26 = fsub float %25, %19
  %27 = fmul float %26, %26
  %28 = fadd float %21, %27
  %29 = add nsw i32 %i.18, 1
  %exitcond20 = icmp eq i32 %i.18, 49
  br i1 %exitcond20, label %30, label %20

; <label>:30                                      ; preds = %20
  %.lcssa = phi float [ %28, %20 ]
  %31 = fdiv float %.lcssa, 0x3FF3333340000000
  %32 = fmul float %31, %31
  %33 = fcmp ugt float %32, 0x3FB99999A0000000
  %34 = select i1 %33, float %32, float 1.000000e+00
  store float %34, float* %17, align 4, !tbaa !1
  %35 = add nsw i32 %j.111, 1
  %exitcond21 = icmp eq i32 %j.111, 49
  br i1 %exitcond21, label %.preheader1.preheader, label %.preheader2

.preheader1.preheader:                            ; preds = %30
  br label %.preheader1

.preheader1:                                      ; preds = %49, %.preheader1.preheader
  %i.27 = phi i32 [ %50, %49 ], [ 0, %.preheader1.preheader ]
  tail call void @__legup_label(i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0)) #3
  %36 = mul nsw i32 %i.27, 50
  br label %37

; <label>:37                                      ; preds = %37, %.preheader1
  %j.26 = phi i32 [ 0, %.preheader1 ], [ %48, %37 ]
  tail call void @__legup_label(i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0)) #3
  %38 = getelementptr inbounds [50 x float]* %mean, i32 0, i32 %j.26
  %39 = load float* %38, align 4, !tbaa !1
  %40 = add nsw i32 %j.26, %36
  %41 = getelementptr inbounds [2500 x float]* %data, i32 0, i32 %40
  %42 = load float* %41, align 4, !tbaa !1
  %43 = fsub float %42, %39
  %44 = getelementptr inbounds [50 x float]* %stddev, i32 0, i32 %j.26
  %45 = load float* %44, align 4, !tbaa !1
  %46 = fmul float %45, 0x3FF70A3D80000000
  %47 = fdiv float %43, %46
  store float %47, float* %41, align 4, !tbaa !1
  %48 = add nsw i32 %j.26, 1
  %exitcond18 = icmp eq i32 %j.26, 49
  br i1 %exitcond18, label %49, label %37

; <label>:49                                      ; preds = %37
  %50 = add nsw i32 %i.27, 1
  %exitcond19 = icmp eq i32 %i.27, 49
  br i1 %exitcond19, label %.loopexit.preheader, label %.preheader1

.loopexit.preheader:                              ; preds = %49
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.preheader
  ret i32 50
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @__legup_label(i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { noinline nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 "}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"float", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
