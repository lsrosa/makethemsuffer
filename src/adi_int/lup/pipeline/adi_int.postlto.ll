; ModuleID = 'adi_int.postlto.bc'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"loop1\00", align 1

; Function Attrs: nounwind
define i32 @main() #0 {
  %u1 = alloca [2 x [11 x [4 x float]]], align 4
  %u2 = alloca [2 x [11 x [4 x float]]], align 4
  %u3 = alloca [2 x [11 x [4 x float]]], align 4
  br label %.preheader1

.preheader1:                                      ; preds = %78, %0
  %l.04 = phi i32 [ 1, %0 ], [ %79, %78 ]
  br label %.preheader

.preheader:                                       ; preds = %77, %.preheader1
  %kx.13 = phi i32 [ 1, %.preheader1 ], [ %1, %77 ]
  %1 = add nsw i32 %kx.13, 1
  %2 = add nsw i32 %kx.13, -1
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
  br label %3

; <label>:3                                       ; preds = %3, %.preheader
  %4 = phi float [ %.pre2, %.preheader ], [ %12, %3 ]
  %5 = phi float [ %.pre15, %.preheader ], [ %18, %3 ]
  %6 = phi float [ %.pre13, %.preheader ], [ %15, %3 ]
  %7 = phi float [ %.pre11, %.preheader ], [ %5, %3 ]
  %8 = phi float [ %.pre9, %.preheader ], [ %6, %3 ]
  %9 = phi float [ %.pre, %.preheader ], [ %4, %3 ]
  %ky.22 = phi i32 [ 1, %.preheader ], [ %10, %3 ]
  tail call void @__legup_label(i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0)) #2
  %10 = add nsw i32 %ky.22, 1
  %11 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u1, i32 0, i32 0, i32 %10, i32 %kx.13
  %12 = load float* %11, align 4, !tbaa !1
  %13 = fsub float %12, %9
  %14 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u2, i32 0, i32 0, i32 %10, i32 %kx.13
  %15 = load float* %14, align 4, !tbaa !1
  %16 = fsub float %15, %8
  %17 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u3, i32 0, i32 0, i32 %10, i32 %kx.13
  %18 = load float* %17, align 4, !tbaa !1
  %19 = fsub float %18, %7
  %20 = fmul float %13, 0.000000e+00
  %21 = fadd float %4, %20
  %22 = fmul float %16, 0.000000e+00
  %23 = fadd float %21, %22
  %24 = fmul float %19, 0.000000e+00
  %25 = fadd float %24, %23
  %26 = fpext float %25 to double
  %27 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u1, i32 0, i32 0, i32 %ky.22, i32 %1
  %28 = load float* %27, align 4, !tbaa !1
  %29 = fpext float %28 to double
  %30 = fpext float %4 to double
  %31 = fmul double %30, 2.000000e+00
  %32 = fsub double %29, %31
  %33 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u1, i32 0, i32 0, i32 %ky.22, i32 %2
  %34 = load float* %33, align 4, !tbaa !1
  %35 = fpext float %34 to double
  %36 = fadd double %32, %35
  %37 = fmul double %36, 0x3FC99999A0000000
  %38 = fadd double %26, %37
  %39 = fptrunc double %38 to float
  %40 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u1, i32 0, i32 1, i32 %ky.22, i32 %kx.13
  store float %39, float* %40, align 4, !tbaa !1
  %41 = fadd float %6, %20
  %42 = fadd float %41, %22
  %43 = fadd float %42, %24
  %44 = fpext float %43 to double
  %45 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u2, i32 0, i32 0, i32 %ky.22, i32 %1
  %46 = load float* %45, align 4, !tbaa !1
  %47 = fpext float %46 to double
  %48 = fpext float %6 to double
  %49 = fmul double %48, 2.000000e+00
  %50 = fsub double %47, %49
  %51 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u2, i32 0, i32 0, i32 %ky.22, i32 %2
  %52 = load float* %51, align 4, !tbaa !1
  %53 = fpext float %52 to double
  %54 = fadd double %50, %53
  %55 = fmul double %54, 0x3FC99999A0000000
  %56 = fadd double %44, %55
  %57 = fptrunc double %56 to float
  %58 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u2, i32 0, i32 1, i32 %ky.22, i32 %kx.13
  store float %57, float* %58, align 4, !tbaa !1
  %59 = fadd float %5, %20
  %60 = fadd float %59, %22
  %61 = fadd float %60, %24
  %62 = fpext float %61 to double
  %63 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u3, i32 0, i32 0, i32 %ky.22, i32 %1
  %64 = load float* %63, align 4, !tbaa !1
  %65 = fpext float %64 to double
  %66 = fpext float %5 to double
  %67 = fmul double %66, 2.000000e+00
  %68 = fsub double %65, %67
  %69 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u3, i32 0, i32 0, i32 %ky.22, i32 %2
  %70 = load float* %69, align 4, !tbaa !1
  %71 = fpext float %70 to double
  %72 = fadd double %68, %71
  %73 = fmul double %72, 0x3FC99999A0000000
  %74 = fadd double %62, %73
  %75 = fptrunc double %74 to float
  %76 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u3, i32 0, i32 1, i32 %ky.22, i32 %kx.13
  store float %75, float* %76, align 4, !tbaa !1
  %exitcond = icmp eq i32 %ky.22, 9
  br i1 %exitcond, label %77, label %3

; <label>:77                                      ; preds = %3
  %exitcond6 = icmp eq i32 %kx.13, 2
  br i1 %exitcond6, label %78, label %.preheader

; <label>:78                                      ; preds = %77
  %79 = add nsw i32 %l.04, 1
  %exitcond7 = icmp eq i32 %l.04, 2
  br i1 %exitcond7, label %80, label %.preheader1

; <label>:80                                      ; preds = %78
  %81 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u3, i32 0, i32 1, i32 10, i32 3
  %82 = load float* %81, align 4, !tbaa !1
  %83 = fptosi float %82 to i32
  ret i32 %83
}

declare void @__legup_label(i8*) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}

!0 = metadata !{metadata !"clang version 3.5.2 "}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"float", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
