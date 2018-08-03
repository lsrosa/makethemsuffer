; ModuleID = 'adi_int.prelto.bc'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"loop1\00", align 1

; Function Attrs: nounwind
define i32 @main() #0 {
  %u1 = alloca [2 x [11 x [4 x float]]], align 4
  %u2 = alloca [2 x [11 x [4 x float]]], align 4
  %u3 = alloca [2 x [11 x [4 x float]]], align 4
  %1 = bitcast [2 x [11 x [4 x float]]]* %u2 to i8*
  br label %.preheader1

.preheader1:                                      ; preds = %79, %0
  %l.04 = phi i32 [ 1, %0 ], [ %80, %79 ]
  br label %.preheader

.preheader:                                       ; preds = %78, %.preheader1
  %kx.13 = phi i32 [ 1, %.preheader1 ], [ %2, %78 ]
  %2 = add nsw i32 %kx.13, 1
  %3 = add nsw i32 %kx.13, -1
  %.phi.trans.insert = getelementptr inbounds [2 x [11 x [4 x float]]]* %u1, i32 0, i32 0, i32 0, i32 %kx.13
  %.pre = load float* %.phi.trans.insert, align 4, !tbaa !1
  %.phi.trans.insert8 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u2, i32 0, i32 0, i32 0, i32 %kx.13
  %.pre9 = load float* %.phi.trans.insert8, align 4, !tbaa !1
  %.phi.trans.insert10 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u3, i32 0, i32 0, i32 0, i32 %kx.13
  %.pre11 = load float* %.phi.trans.insert10, align 4, !tbaa !1
  %.phi.trans.insert12 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u2, i32 0, i32 0, i32 1, i32 %kx.13
  %.pre13 = load float* %.phi.trans.insert12, align 4, !tbaa !1
  %.phi.trans.insert14 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u3, i32 0, i32 0, i32 1, i32 %kx.13
  %.pre15 = load float* %.phi.trans.insert14, align 4, !tbaa !1
  %.phi.trans.insert1 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u1, i32 0, i32 0, i32 1, i32 %kx.13
  %.pre2 = load float* %.phi.trans.insert1, align 4, !tbaa !1
  br label %4

; <label>:4                                       ; preds = %4, %.preheader
  %5 = phi float [ %.pre2, %.preheader ], [ %13, %4 ]
  %6 = phi float [ %.pre15, %.preheader ], [ %19, %4 ]
  %7 = phi float [ %.pre13, %.preheader ], [ %16, %4 ]
  %8 = phi float [ %.pre11, %.preheader ], [ %6, %4 ]
  %9 = phi float [ %.pre9, %.preheader ], [ %7, %4 ]
  %10 = phi float [ %.pre, %.preheader ], [ %5, %4 ]
  %ky.22 = phi i32 [ 1, %.preheader ], [ %11, %4 ]
  tail call void @__legup_label(i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0)) #2
  %11 = add nsw i32 %ky.22, 1
  %12 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u1, i32 0, i32 0, i32 %11, i32 %kx.13
  %13 = load float* %12, align 4, !tbaa !1
  %14 = fsub float %13, %10
  %15 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u2, i32 0, i32 0, i32 %11, i32 %kx.13
  %16 = load float* %15, align 4, !tbaa !1
  %17 = fsub float %16, %9
  %18 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u3, i32 0, i32 0, i32 %11, i32 %kx.13
  %19 = load float* %18, align 4, !tbaa !1
  %20 = fsub float %19, %8
  %21 = fmul float %14, 0.000000e+00
  %22 = fadd float %5, %21
  %23 = fmul float %17, 0.000000e+00
  %24 = fadd float %22, %23
  %25 = fmul float %20, 0.000000e+00
  %26 = fadd float %25, %24
  %27 = fpext float %26 to double
  %28 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u1, i32 0, i32 0, i32 %ky.22, i32 %2
  %29 = load float* %28, align 4, !tbaa !1
  %30 = fpext float %29 to double
  %31 = fpext float %5 to double
  %32 = fmul double %31, 2.000000e+00
  %33 = fsub double %30, %32
  %34 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u1, i32 0, i32 0, i32 %ky.22, i32 %3
  %35 = load float* %34, align 4, !tbaa !1
  %36 = fpext float %35 to double
  %37 = fadd double %33, %36
  %38 = fmul double %37, 0x3FC99999A0000000
  %39 = fadd double %27, %38
  %40 = fptrunc double %39 to float
  %41 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u1, i32 0, i32 1, i32 %ky.22, i32 %kx.13
  store float %40, float* %41, align 4, !tbaa !1
  %42 = fadd float %7, %21
  %43 = fadd float %42, %23
  %44 = fadd float %43, %25
  %45 = fpext float %44 to double
  %46 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u2, i32 0, i32 0, i32 %ky.22, i32 %2
  %47 = load float* %46, align 4, !tbaa !1
  %48 = fpext float %47 to double
  %49 = fpext float %7 to double
  %50 = fmul double %49, 2.000000e+00
  %51 = fsub double %48, %50
  %52 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u2, i32 0, i32 0, i32 %ky.22, i32 %3
  %53 = load float* %52, align 4, !tbaa !1
  %54 = fpext float %53 to double
  %55 = fadd double %51, %54
  %56 = fmul double %55, 0x3FC99999A0000000
  %57 = fadd double %45, %56
  %58 = fptrunc double %57 to float
  %59 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u2, i32 0, i32 1, i32 %ky.22, i32 %kx.13
  store float %58, float* %59, align 4, !tbaa !1
  %60 = fadd float %6, %21
  %61 = fadd float %60, %23
  %62 = fadd float %61, %25
  %63 = fpext float %62 to double
  %64 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u3, i32 0, i32 0, i32 %ky.22, i32 %2
  %65 = load float* %64, align 4, !tbaa !1
  %66 = fpext float %65 to double
  %67 = fpext float %6 to double
  %68 = fmul double %67, 2.000000e+00
  %69 = fsub double %66, %68
  %70 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u3, i32 0, i32 0, i32 %ky.22, i32 %3
  %71 = load float* %70, align 4, !tbaa !1
  %72 = fpext float %71 to double
  %73 = fadd double %69, %72
  %74 = fmul double %73, 0x3FC99999A0000000
  %75 = fadd double %63, %74
  %76 = fptrunc double %75 to float
  %77 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u3, i32 0, i32 1, i32 %ky.22, i32 %kx.13
  store float %76, float* %77, align 4, !tbaa !1
  %exitcond = icmp eq i32 %11, 10
  br i1 %exitcond, label %78, label %4

; <label>:78                                      ; preds = %4
  %exitcond6 = icmp eq i32 %2, 3
  br i1 %exitcond6, label %79, label %.preheader

; <label>:79                                      ; preds = %78
  %80 = add nsw i32 %l.04, 1
  %exitcond7 = icmp eq i32 %80, 3
  br i1 %exitcond7, label %81, label %.preheader1

; <label>:81                                      ; preds = %79
  %82 = bitcast [2 x [11 x [4 x float]]]* %u1 to i8*
  %83 = bitcast [2 x [11 x [4 x float]]]* %u3 to i8*
  %84 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u3, i32 0, i32 1, i32 10, i32 3
  %85 = load float* %84, align 4, !tbaa !1
  %86 = fptosi float %85 to i32
  ret i32 %86
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
