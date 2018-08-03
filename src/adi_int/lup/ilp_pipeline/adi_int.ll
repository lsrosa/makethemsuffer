; ModuleID = 'adi_int.bc'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"loop1\00", align 1
@"Global Shared RAM" = internal constant [18 x i8] c"Global Shared RAM\00"

; Function Attrs: nounwind
define i32 @main() #0 {
  %u1 = alloca [2 x [11 x [4 x float]]], align 4
  %u2 = alloca [2 x [11 x [4 x float]]], align 4
  %u3 = alloca [2 x [11 x [4 x float]]], align 4
  br label %.preheader1

.preheader1:                                      ; preds = %67, %0
  %indvar33 = phi i32 [ %indvar.next34, %67 ], [ 0, %0 ]
  br label %.preheader

.preheader:                                       ; preds = %66, %.preheader1
  %indvar2 = phi i32 [ %indvar.next3, %66 ], [ 0, %.preheader1 ]
  %1 = add i32 %indvar2, 2
  %2 = add i32 %indvar2, 1
  %.phi.trans.insert1 = getelementptr [2 x [11 x [4 x float]]]* %u1, i32 0, i32 0, i32 1, i32 %2
  %.phi.trans.insert14 = getelementptr [2 x [11 x [4 x float]]]* %u3, i32 0, i32 0, i32 1, i32 %2
  %.phi.trans.insert12 = getelementptr [2 x [11 x [4 x float]]]* %u2, i32 0, i32 0, i32 1, i32 %2
  %.phi.trans.insert10 = getelementptr [2 x [11 x [4 x float]]]* %u3, i32 0, i32 0, i32 0, i32 %2
  %.phi.trans.insert8 = getelementptr [2 x [11 x [4 x float]]]* %u2, i32 0, i32 0, i32 0, i32 %2
  %.phi.trans.insert = getelementptr [2 x [11 x [4 x float]]]* %u1, i32 0, i32 0, i32 0, i32 %2
  %.pre = load float* %.phi.trans.insert, align 4, !tbaa !2
  %.pre9 = load float* %.phi.trans.insert8, align 4, !tbaa !2
  %.pre11 = load float* %.phi.trans.insert10, align 4, !tbaa !2
  %.pre13 = load float* %.phi.trans.insert12, align 4, !tbaa !2
  %.pre15 = load float* %.phi.trans.insert14, align 4, !tbaa !2
  %.pre2 = load float* %.phi.trans.insert1, align 4, !tbaa !2
  br label %3

; <label>:3                                       ; preds = %3, %.preheader
  %indvar = phi i32 [ %indvar.next, %3 ], [ 0, %.preheader ], !legup.canonical_induction !6, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  %4 = phi float [ %12, %3 ], [ %.pre2, %.preheader ], !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  %5 = phi float [ %16, %3 ], [ %.pre15, %.preheader ], !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  %6 = phi float [ %14, %3 ], [ %.pre13, %.preheader ], !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  %7 = phi float [ %5, %3 ], [ %.pre11, %.preheader ], !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  %8 = phi float [ %6, %3 ], [ %.pre9, %.preheader ], !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  %9 = phi float [ %4, %3 ], [ %.pre, %.preheader ], !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  %10 = add i32 %indvar, 1, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  %scevgep10 = getelementptr [2 x [11 x [4 x float]]]* %u1, i32 0, i32 0, i32 %10, i32 %indvar2, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  %scevgep7 = getelementptr [2 x [11 x [4 x float]]]* %u2, i32 0, i32 0, i32 %10, i32 %indvar2, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  %scevgep11 = getelementptr [2 x [11 x [4 x float]]]* %u1, i32 0, i32 0, i32 %10, i32 %1, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  %scevgep8 = getelementptr [2 x [11 x [4 x float]]]* %u2, i32 0, i32 0, i32 %10, i32 %1, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  %scevgep5 = getelementptr [2 x [11 x [4 x float]]]* %u3, i32 0, i32 0, i32 %10, i32 %1, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  %scevgep4 = getelementptr [2 x [11 x [4 x float]]]* %u3, i32 0, i32 0, i32 %10, i32 %indvar2, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  %11 = add i32 %indvar, 2, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  %scevgep14 = getelementptr [2 x [11 x [4 x float]]]* %u1, i32 0, i32 0, i32 %11, i32 %2, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  %scevgep13 = getelementptr [2 x [11 x [4 x float]]]* %u2, i32 0, i32 0, i32 %11, i32 %2, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  %scevgep12 = getelementptr [2 x [11 x [4 x float]]]* %u3, i32 0, i32 0, i32 %11, i32 %2, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  %scevgep9 = getelementptr [2 x [11 x [4 x float]]]* %u1, i32 0, i32 1, i32 %10, i32 %2, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  %scevgep6 = getelementptr [2 x [11 x [4 x float]]]* %u2, i32 0, i32 1, i32 %10, i32 %2, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  %scevgep = getelementptr [2 x [11 x [4 x float]]]* %u3, i32 0, i32 1, i32 %10, i32 %2, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  tail call void @__legup_label(i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0)) #2, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  %12 = load float* %scevgep14, align 4, !tbaa !2, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !8, !legup.pipeline.stage !7
  %13 = fsub float %12, %9, !legup.pipeline.start_time !8, !legup.pipeline.avail_time !9, !legup.pipeline.stage !7
  %14 = load float* %scevgep13, align 4, !tbaa !2, !legup.pipeline.start_time !6, !legup.pipeline.avail_time !10, !legup.pipeline.stage !7
  %15 = fsub float %14, %8, !legup.pipeline.start_time !10, !legup.pipeline.avail_time !11, !legup.pipeline.stage !7
  %16 = load float* %scevgep12, align 4, !tbaa !2, !legup.pipeline.start_time !8, !legup.pipeline.avail_time !12, !legup.pipeline.stage !7
  %17 = fsub float %16, %7, !legup.pipeline.start_time !12, !legup.pipeline.avail_time !13, !legup.pipeline.stage !7
  %18 = fmul float %13, 0.000000e+00, !legup.pipeline.start_time !9, !legup.pipeline.avail_time !14, !legup.pipeline.stage !6
  %19 = fadd float %4, %18, !legup.pipeline.start_time !14, !legup.pipeline.avail_time !15, !legup.pipeline.stage !8
  %20 = fmul float %15, 0.000000e+00, !legup.pipeline.start_time !11, !legup.pipeline.avail_time !16, !legup.pipeline.stage !6
  %21 = fadd float %19, %20, !legup.pipeline.start_time !15, !legup.pipeline.avail_time !17, !legup.pipeline.stage !10
  %22 = fmul float %17, 0.000000e+00, !legup.pipeline.start_time !13, !legup.pipeline.avail_time !18, !legup.pipeline.stage !6
  %23 = fadd float %22, %21, !legup.pipeline.start_time !17, !legup.pipeline.avail_time !19, !legup.pipeline.stage !12
  %24 = fpext float %23 to double, !legup.pipeline.start_time !20, !legup.pipeline.avail_time !21, !legup.pipeline.stage !22
  %25 = load float* %scevgep11, align 4, !tbaa !2, !legup.pipeline.start_time !8, !legup.pipeline.avail_time !12, !legup.pipeline.stage !7
  %26 = fpext float %25 to double, !legup.pipeline.start_time !22, !legup.pipeline.avail_time !23, !legup.pipeline.stage !7
  %27 = fpext float %4 to double, !legup.pipeline.start_time !8, !legup.pipeline.avail_time !12, !legup.pipeline.stage !7
  %28 = fmul double %27, 2.000000e+00, !legup.pipeline.start_time !12, !legup.pipeline.avail_time !24, !legup.pipeline.stage !7
  %29 = fsub double %26, %28, !legup.pipeline.start_time !24, !legup.pipeline.avail_time !18, !legup.pipeline.stage !6
  %30 = load float* %scevgep10, align 4, !tbaa !2, !legup.pipeline.start_time !10, !legup.pipeline.avail_time !22, !legup.pipeline.stage !7
  %31 = fpext float %30 to double, !legup.pipeline.start_time !25, !legup.pipeline.avail_time !26, !legup.pipeline.stage !7
  %32 = fadd double %29, %31, !legup.pipeline.start_time !18, !legup.pipeline.avail_time !27, !legup.pipeline.stage !8
  %33 = fmul double %32, 0x3FC99999A0000000, !legup.pipeline.start_time !27, !legup.pipeline.avail_time !28, !legup.pipeline.stage !10
  %34 = fadd double %24, %33, !legup.pipeline.start_time !21, !legup.pipeline.avail_time !29, !legup.pipeline.stage !25
  %35 = fptrunc double %34 to float, !legup.pipeline.start_time !29, !legup.pipeline.avail_time !30, !legup.pipeline.stage !23
  store float %35, float* %scevgep9, align 4, !tbaa !2, !legup.pipeline.start_time !30, !legup.pipeline.avail_time !31, !legup.pipeline.stage !23
  %36 = fadd float %6, %18, !legup.pipeline.start_time !14, !legup.pipeline.avail_time !15, !legup.pipeline.stage !8
  %37 = fadd float %36, %20, !legup.pipeline.start_time !15, !legup.pipeline.avail_time !17, !legup.pipeline.stage !10
  %38 = fadd float %37, %22, !legup.pipeline.start_time !17, !legup.pipeline.avail_time !19, !legup.pipeline.stage !12
  %39 = fpext float %38 to double, !legup.pipeline.start_time !19, !legup.pipeline.avail_time !20, !legup.pipeline.stage !22
  %40 = load float* %scevgep8, align 4, !tbaa !2, !legup.pipeline.start_time !6, !legup.pipeline.avail_time !10, !legup.pipeline.stage !7
  %41 = fpext float %40 to double, !legup.pipeline.start_time !10, !legup.pipeline.avail_time !22, !legup.pipeline.stage !7
  %42 = fpext float %6 to double, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !8, !legup.pipeline.stage !7
  %43 = fmul double %42, 2.000000e+00, !legup.pipeline.start_time !8, !legup.pipeline.avail_time !32, !legup.pipeline.stage !7
  %44 = fsub double %41, %43, !legup.pipeline.start_time !32, !legup.pipeline.avail_time !14, !legup.pipeline.stage !6
  %45 = load float* %scevgep7, align 4, !tbaa !2, !legup.pipeline.start_time !10, !legup.pipeline.avail_time !22, !legup.pipeline.stage !7
  %46 = fpext float %45 to double, !legup.pipeline.start_time !26, !legup.pipeline.avail_time !33, !legup.pipeline.stage !7
  %47 = fadd double %44, %46, !legup.pipeline.start_time !14, !legup.pipeline.avail_time !15, !legup.pipeline.stage !8
  %48 = fmul double %47, 0x3FC99999A0000000, !legup.pipeline.start_time !15, !legup.pipeline.avail_time !34, !legup.pipeline.stage !10
  %49 = fadd double %39, %48, !legup.pipeline.start_time !20, !legup.pipeline.avail_time !35, !legup.pipeline.stage !22
  %50 = fptrunc double %49 to float, !legup.pipeline.start_time !35, !legup.pipeline.avail_time !36, !legup.pipeline.stage !23
  store float %50, float* %scevgep6, align 4, !tbaa !2, !legup.pipeline.start_time !36, !legup.pipeline.avail_time !37, !legup.pipeline.stage !23
  %51 = fadd float %5, %18, !legup.pipeline.start_time !14, !legup.pipeline.avail_time !15, !legup.pipeline.stage !8
  %52 = fadd float %51, %20, !legup.pipeline.start_time !15, !legup.pipeline.avail_time !17, !legup.pipeline.stage !10
  %53 = fadd float %52, %22, !legup.pipeline.start_time !17, !legup.pipeline.avail_time !19, !legup.pipeline.stage !12
  %54 = fpext float %53 to double, !legup.pipeline.start_time !38, !legup.pipeline.avail_time !39, !legup.pipeline.stage !22
  %55 = load float* %scevgep5, align 4, !tbaa !2, !legup.pipeline.start_time !12, !legup.pipeline.avail_time !25, !legup.pipeline.stage !7
  %56 = fpext float %55 to double, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !40, !legup.pipeline.stage !7
  %57 = fpext float %5 to double, !legup.pipeline.start_time !6, !legup.pipeline.avail_time !10, !legup.pipeline.stage !7
  %58 = fmul double %57, 2.000000e+00, !legup.pipeline.start_time !10, !legup.pipeline.avail_time !41, !legup.pipeline.stage !7
  %59 = fsub double %56, %58, !legup.pipeline.start_time !41, !legup.pipeline.avail_time !16, !legup.pipeline.stage !6
  %60 = load float* %scevgep4, align 4, !tbaa !2, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !8, !legup.pipeline.stage !7
  %61 = fpext float %60 to double, !legup.pipeline.start_time !12, !legup.pipeline.avail_time !25, !legup.pipeline.stage !7
  %62 = fadd double %59, %61, !legup.pipeline.start_time !16, !legup.pipeline.avail_time !42, !legup.pipeline.stage !8
  %63 = fmul double %62, 0x3FC99999A0000000, !legup.pipeline.start_time !42, !legup.pipeline.avail_time !43, !legup.pipeline.stage !10
  %64 = fadd double %54, %63, !legup.pipeline.start_time !39, !legup.pipeline.avail_time !44, !legup.pipeline.stage !25
  %65 = fptrunc double %64 to float, !legup.pipeline.start_time !44, !legup.pipeline.avail_time !37, !legup.pipeline.stage !23
  store float %65, float* %scevgep, align 4, !tbaa !2, !legup.pipeline.start_time !37, !legup.pipeline.avail_time !30, !legup.pipeline.stage !23
  %indvar.next = add i32 %indvar, 1, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  %exitcond1 = icmp eq i32 %indvar.next, 9, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  br i1 %exitcond1, label %66, label %3, !legup.pipelined !6, !legup.II !45, !legup.totalTime !46, !legup.maxStage !23, !legup.tripCount !40, !legup.label !47, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7

; <label>:66                                      ; preds = %3
  %indvar.next3 = add i32 %indvar2, 1
  %exitcond = icmp eq i32 %indvar.next3, 2
  br i1 %exitcond, label %67, label %.preheader

; <label>:67                                      ; preds = %66
  %indvar.next34 = add i32 %indvar33, 1
  %exitcond35 = icmp eq i32 %indvar.next34, 2
  br i1 %exitcond35, label %68, label %.preheader1

; <label>:68                                      ; preds = %67
  %69 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u3, i32 0, i32 1, i32 10, i32 3
  %70 = load float* %69, align 4, !tbaa !2
  %71 = fptosi float %70 to i32
  ret i32 %71
}

declare void @__legup_label(i8*) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!legup.pipeline = !{!1}

!0 = metadata !{metadata !"Ubuntu clang version 3.5.0-4ubuntu2~trusty2 (tags/RELEASE_350/final) (based on LLVM 3.5.0)"}
!1 = metadata !{metadata !"II", metadata !"12"}
!2 = metadata !{metadata !3, metadata !3, i64 0}
!3 = metadata !{metadata !"float", metadata !4, i64 0}
!4 = metadata !{metadata !"omnipotent char", metadata !5, i64 0}
!5 = metadata !{metadata !"Simple C/C++ TBAA"}
!6 = metadata !{metadata !"1"}
!7 = metadata !{metadata !"0"}
!8 = metadata !{metadata !"2"}
!9 = metadata !{metadata !"16"}
!10 = metadata !{metadata !"3"}
!11 = metadata !{metadata !"17"}
!12 = metadata !{metadata !"4"}
!13 = metadata !{metadata !"18"}
!14 = metadata !{metadata !"27"}
!15 = metadata !{metadata !"41"}
!16 = metadata !{metadata !"28"}
!17 = metadata !{metadata !"55"}
!18 = metadata !{metadata !"29"}
!19 = metadata !{metadata !"69"}
!20 = metadata !{metadata !"71"}
!21 = metadata !{metadata !"73"}
!22 = metadata !{metadata !"5"}
!23 = metadata !{metadata !"7"}
!24 = metadata !{metadata !"15"}
!25 = metadata !{metadata !"6"}
!26 = metadata !{metadata !"8"}
!27 = metadata !{metadata !"43"}
!28 = metadata !{metadata !"54"}
!29 = metadata !{metadata !"87"}
!30 = metadata !{metadata !"90"}
!31 = metadata !{metadata !"91"}
!32 = metadata !{metadata !"13"}
!33 = metadata !{metadata !"10"}
!34 = metadata !{metadata !"52"}
!35 = metadata !{metadata !"85"}
!36 = metadata !{metadata !"88"}
!37 = metadata !{metadata !"89"}
!38 = metadata !{metadata !"70"}
!39 = metadata !{metadata !"72"}
!40 = metadata !{metadata !"9"}
!41 = metadata !{metadata !"14"}
!42 = metadata !{metadata !"42"}
!43 = metadata !{metadata !"53"}
!44 = metadata !{metadata !"86"}
!45 = metadata !{metadata !"12"}
!46 = metadata !{metadata !"92"}
!47 = metadata !{metadata !"loop1"}
