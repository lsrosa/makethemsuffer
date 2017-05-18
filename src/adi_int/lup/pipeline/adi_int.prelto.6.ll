; ModuleID = 'adi_int.prelto.6.bc'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"loop1\00", align 1

; Function Attrs: nounwind
define i32 @main() #0 {
  %u1 = alloca [2 x [11 x [4 x float]]], align 4
  %u2 = alloca [2 x [11 x [4 x float]]], align 4
  %u3 = alloca [2 x [11 x [4 x float]]], align 4
  %1 = bitcast [2 x [11 x [4 x float]]]* %u1 to i8*
  %2 = bitcast [2 x [11 x [4 x float]]]* %u2 to i8*
  %3 = bitcast [2 x [11 x [4 x float]]]* %u3 to i8*
  br label %.preheader1

.preheader1:                                      ; preds = %82, %0
  %l.04 = phi i32 [ 1, %0 ], [ %83, %82 ]
  br label %.preheader

.preheader:                                       ; preds = %81, %.preheader1
  %kx.13 = phi i32 [ 1, %.preheader1 ], [ %4, %81 ]
  %4 = add nsw i32 %kx.13, 1
  %5 = add nsw i32 %kx.13, -1
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
  br label %6

; <label>:6                                       ; preds = %6, %.preheader
  %7 = phi float [ %.pre2, %.preheader ], [ %15, %6 ]
  %8 = phi float [ %.pre15, %.preheader ], [ %21, %6 ]
  %9 = phi float [ %.pre13, %.preheader ], [ %18, %6 ]
  %10 = phi float [ %.pre11, %.preheader ], [ %8, %6 ]
  %11 = phi float [ %.pre9, %.preheader ], [ %9, %6 ]
  %12 = phi float [ %.pre, %.preheader ], [ %7, %6 ]
  %ky.22 = phi i32 [ 1, %.preheader ], [ %13, %6 ]
  tail call void @__legup_label(i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0)) #3
  %13 = add nsw i32 %ky.22, 1
  %14 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u1, i32 0, i32 0, i32 %13, i32 %kx.13
  %15 = load float* %14, align 4, !tbaa !1
  %16 = fsub float %15, %12
  %17 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u2, i32 0, i32 0, i32 %13, i32 %kx.13
  %18 = load float* %17, align 4, !tbaa !1
  %19 = fsub float %18, %11
  %20 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u3, i32 0, i32 0, i32 %13, i32 %kx.13
  %21 = load float* %20, align 4, !tbaa !1
  %22 = fsub float %21, %10
  %23 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u1, i32 0, i32 0, i32 %ky.22, i32 %kx.13
  %24 = fmul float %16, 0.000000e+00
  %25 = fadd float %7, %24
  %26 = fmul float %19, 0.000000e+00
  %27 = fadd float %25, %26
  %28 = fmul float %22, 0.000000e+00
  %29 = fadd float %28, %27
  %30 = fpext float %29 to double
  %31 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u1, i32 0, i32 0, i32 %ky.22, i32 %4
  %32 = load float* %31, align 4, !tbaa !1
  %33 = fpext float %32 to double
  %34 = fpext float %7 to double
  %35 = fmul double %34, 2.000000e+00
  %36 = fsub double %33, %35
  %37 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u1, i32 0, i32 0, i32 %ky.22, i32 %5
  %38 = load float* %37, align 4, !tbaa !1
  %39 = fpext float %38 to double
  %40 = fadd double %36, %39
  %41 = fmul double %40, 0x3FC99999A0000000
  %42 = fadd double %30, %41
  %43 = fptrunc double %42 to float
  %44 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u1, i32 0, i32 1, i32 %ky.22, i32 %kx.13
  store float %43, float* %44, align 4, !tbaa !1
  %45 = fadd float %9, %24
  %46 = fadd float %45, %26
  %47 = fadd float %46, %28
  %48 = fpext float %47 to double
  %49 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u2, i32 0, i32 0, i32 %ky.22, i32 %4
  %50 = load float* %49, align 4, !tbaa !1
  %51 = fpext float %50 to double
  %52 = fpext float %9 to double
  %53 = fmul double %52, 2.000000e+00
  %54 = fsub double %51, %53
  %55 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u2, i32 0, i32 0, i32 %ky.22, i32 %5
  %56 = load float* %55, align 4, !tbaa !1
  %57 = fpext float %56 to double
  %58 = fadd double %54, %57
  %59 = fmul double %58, 0x3FC99999A0000000
  %60 = fadd double %48, %59
  %61 = fptrunc double %60 to float
  %62 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u2, i32 0, i32 1, i32 %ky.22, i32 %kx.13
  store float %61, float* %62, align 4, !tbaa !1
  %63 = fadd float %8, %24
  %64 = fadd float %63, %26
  %65 = fadd float %64, %28
  %66 = fpext float %65 to double
  %67 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u3, i32 0, i32 0, i32 %ky.22, i32 %4
  %68 = load float* %67, align 4, !tbaa !1
  %69 = fpext float %68 to double
  %70 = fpext float %8 to double
  %71 = fmul double %70, 2.000000e+00
  %72 = fsub double %69, %71
  %73 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u3, i32 0, i32 0, i32 %ky.22, i32 %5
  %74 = load float* %73, align 4, !tbaa !1
  %75 = fpext float %74 to double
  %76 = fadd double %72, %75
  %77 = fmul double %76, 0x3FC99999A0000000
  %78 = fadd double %66, %77
  %79 = fptrunc double %78 to float
  %80 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u3, i32 0, i32 1, i32 %ky.22, i32 %kx.13
  store float %79, float* %80, align 4, !tbaa !1
  %exitcond = icmp eq i32 %ky.22, 9
  br i1 %exitcond, label %81, label %6

; <label>:81                                      ; preds = %6
  %exitcond6 = icmp eq i32 %kx.13, 2
  br i1 %exitcond6, label %82, label %.preheader

; <label>:82                                      ; preds = %81
  %83 = add nsw i32 %l.04, 1
  %exitcond7 = icmp eq i32 %l.04, 2
  br i1 %exitcond7, label %84, label %.preheader1

; <label>:84                                      ; preds = %82
  %85 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u3, i32 0, i32 1, i32 10, i32 3
  %86 = load float* %85, align 4, !tbaa !1
  %87 = fptosi float %86 to i32
  ret i32 %87
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @__legup_label(i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 "}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"float", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
