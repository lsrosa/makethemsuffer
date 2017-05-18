; ModuleID = 'adi_int.bc'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"loop1\00", align 1

; Function Attrs: nounwind
define i32 @main() #0 {
  %u1 = alloca [2 x [11 x [4 x float]]], align 4
  %u2 = alloca [2 x [11 x [4 x float]]], align 4
  %u3 = alloca [2 x [11 x [4 x float]]], align 4
  br label %.preheader1

.preheader1:                                      ; preds = %66, %0
  %indvar33 = phi i32 [ %indvar.next34, %66 ], [ 0, %0 ]
  br label %.preheader

.preheader:                                       ; preds = %65, %.preheader1
  %indvar2 = phi i32 [ %indvar.next3, %65 ], [ 0, %.preheader1 ]
  %1 = add i32 %indvar2, 2
  %kx.13 = add i32 %indvar2, 1
  %.phi.trans.insert1 = getelementptr [2 x [11 x [4 x float]]]* %u1, i32 0, i32 0, i32 1, i32 %kx.13
  %.phi.trans.insert14 = getelementptr [2 x [11 x [4 x float]]]* %u3, i32 0, i32 0, i32 1, i32 %kx.13
  %.phi.trans.insert12 = getelementptr [2 x [11 x [4 x float]]]* %u2, i32 0, i32 0, i32 1, i32 %kx.13
  %.phi.trans.insert10 = getelementptr [2 x [11 x [4 x float]]]* %u3, i32 0, i32 0, i32 0, i32 %kx.13
  %.phi.trans.insert8 = getelementptr [2 x [11 x [4 x float]]]* %u2, i32 0, i32 0, i32 0, i32 %kx.13
  %.phi.trans.insert = getelementptr [2 x [11 x [4 x float]]]* %u1, i32 0, i32 0, i32 0, i32 %kx.13
  %.pre = load float* %.phi.trans.insert, align 4, !tbaa !2
  %.pre9 = load float* %.phi.trans.insert8, align 4, !tbaa !2
  %.pre11 = load float* %.phi.trans.insert10, align 4, !tbaa !2
  %.pre13 = load float* %.phi.trans.insert12, align 4, !tbaa !2
  %.pre15 = load float* %.phi.trans.insert14, align 4, !tbaa !2
  %.pre2 = load float* %.phi.trans.insert1, align 4, !tbaa !2
  br label %2

; <label>:2                                       ; preds = %2, %.preheader
  %indvar = phi i32 [ %indvar.next, %2 ], [ 0, %.preheader ], !legup.canonical_induction !6, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  %3 = phi float [ %11, %2 ], [ %.pre2, %.preheader ], !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  %4 = phi float [ %15, %2 ], [ %.pre15, %.preheader ], !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  %5 = phi float [ %13, %2 ], [ %.pre13, %.preheader ], !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  %6 = phi float [ %4, %2 ], [ %.pre11, %.preheader ], !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  %7 = phi float [ %5, %2 ], [ %.pre9, %.preheader ], !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  %8 = phi float [ %3, %2 ], [ %.pre, %.preheader ], !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  %9 = add i32 %indvar, 1, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  %scevgep10 = getelementptr [2 x [11 x [4 x float]]]* %u1, i32 0, i32 0, i32 %9, i32 %indvar2, !legup.pipeline.start_time !6, !legup.pipeline.avail_time !6, !legup.pipeline.stage !7
  %scevgep7 = getelementptr [2 x [11 x [4 x float]]]* %u2, i32 0, i32 0, i32 %9, i32 %indvar2, !legup.pipeline.start_time !6, !legup.pipeline.avail_time !6, !legup.pipeline.stage !7
  %scevgep11 = getelementptr [2 x [11 x [4 x float]]]* %u1, i32 0, i32 0, i32 %9, i32 %1, !legup.pipeline.start_time !6, !legup.pipeline.avail_time !6, !legup.pipeline.stage !7
  %scevgep8 = getelementptr [2 x [11 x [4 x float]]]* %u2, i32 0, i32 0, i32 %9, i32 %1, !legup.pipeline.start_time !6, !legup.pipeline.avail_time !6, !legup.pipeline.stage !7
  %scevgep5 = getelementptr [2 x [11 x [4 x float]]]* %u3, i32 0, i32 0, i32 %9, i32 %1, !legup.pipeline.start_time !6, !legup.pipeline.avail_time !6, !legup.pipeline.stage !7
  %scevgep4 = getelementptr [2 x [11 x [4 x float]]]* %u3, i32 0, i32 0, i32 %9, i32 %indvar2, !legup.pipeline.start_time !6, !legup.pipeline.avail_time !6, !legup.pipeline.stage !7
  %10 = add i32 %indvar, 2, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  %scevgep14 = getelementptr [2 x [11 x [4 x float]]]* %u1, i32 0, i32 0, i32 %10, i32 %kx.13, !legup.pipeline.start_time !6, !legup.pipeline.avail_time !6, !legup.pipeline.stage !7
  %scevgep13 = getelementptr [2 x [11 x [4 x float]]]* %u2, i32 0, i32 0, i32 %10, i32 %kx.13, !legup.pipeline.start_time !6, !legup.pipeline.avail_time !6, !legup.pipeline.stage !7
  %scevgep12 = getelementptr [2 x [11 x [4 x float]]]* %u3, i32 0, i32 0, i32 %10, i32 %kx.13, !legup.pipeline.start_time !6, !legup.pipeline.avail_time !6, !legup.pipeline.stage !7
  %scevgep9 = getelementptr [2 x [11 x [4 x float]]]* %u1, i32 0, i32 1, i32 %9, i32 %kx.13, !legup.pipeline.start_time !6, !legup.pipeline.avail_time !6, !legup.pipeline.stage !7
  %scevgep6 = getelementptr [2 x [11 x [4 x float]]]* %u2, i32 0, i32 1, i32 %9, i32 %kx.13, !legup.pipeline.start_time !6, !legup.pipeline.avail_time !6, !legup.pipeline.stage !7
  %scevgep = getelementptr [2 x [11 x [4 x float]]]* %u3, i32 0, i32 1, i32 %9, i32 %kx.13, !legup.pipeline.start_time !6, !legup.pipeline.avail_time !6, !legup.pipeline.stage !7
  tail call void @__legup_label(i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0)) #2, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  %11 = load float* %scevgep14, align 4, !tbaa !2, !legup.pipeline.start_time !6, !legup.pipeline.avail_time !8, !legup.pipeline.stage !7
  %12 = fsub float %11, %8, !legup.pipeline.start_time !8, !legup.pipeline.avail_time !9, !legup.pipeline.stage !7
  %13 = load float* %scevgep13, align 4, !tbaa !2, !legup.pipeline.start_time !6, !legup.pipeline.avail_time !8, !legup.pipeline.stage !7
  %14 = fsub float %13, %7, !legup.pipeline.start_time !10, !legup.pipeline.avail_time !11, !legup.pipeline.stage !7
  %15 = load float* %scevgep12, align 4, !tbaa !2, !legup.pipeline.start_time !6, !legup.pipeline.avail_time !8, !legup.pipeline.stage !7
  %16 = fsub float %15, %6, !legup.pipeline.start_time !12, !legup.pipeline.avail_time !13, !legup.pipeline.stage !7
  %17 = fmul float %12, 0.000000e+00, !legup.pipeline.start_time !9, !legup.pipeline.avail_time !14, !legup.pipeline.stage !6
  %18 = fadd float %3, %17, !legup.pipeline.start_time !14, !legup.pipeline.avail_time !15, !legup.pipeline.stage !8
  %19 = fmul float %14, 0.000000e+00, !legup.pipeline.start_time !11, !legup.pipeline.avail_time !16, !legup.pipeline.stage !6
  %20 = fadd float %18, %19, !legup.pipeline.start_time !17, !legup.pipeline.avail_time !18, !legup.pipeline.stage !10
  %21 = fmul float %16, 0.000000e+00, !legup.pipeline.start_time !13, !legup.pipeline.avail_time !19, !legup.pipeline.stage !6
  %22 = fadd float %21, %20, !legup.pipeline.start_time !18, !legup.pipeline.avail_time !20, !legup.pipeline.stage !12
  %23 = fpext float %22 to double, !legup.pipeline.start_time !21, !legup.pipeline.avail_time !22, !legup.pipeline.stage !23
  %24 = load float* %scevgep11, align 4, !tbaa !2, !legup.pipeline.start_time !6, !legup.pipeline.avail_time !8, !legup.pipeline.stage !7
  %25 = fpext float %24 to double, !legup.pipeline.start_time !23, !legup.pipeline.avail_time !24, !legup.pipeline.stage !7
  %26 = fpext float %3 to double, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !8, !legup.pipeline.stage !7
  %27 = fmul double %26, 2.000000e+00, !legup.pipeline.start_time !8, !legup.pipeline.avail_time !25, !legup.pipeline.stage !7
  %28 = fsub double %25, %27, !legup.pipeline.start_time !25, !legup.pipeline.avail_time !14, !legup.pipeline.stage !6
  %29 = load float* %scevgep10, align 4, !tbaa !2, !legup.pipeline.start_time !8, !legup.pipeline.avail_time !10, !legup.pipeline.stage !7
  %30 = fpext float %29 to double, !legup.pipeline.start_time !10, !legup.pipeline.avail_time !26, !legup.pipeline.stage !7
  %31 = fadd double %28, %30, !legup.pipeline.start_time !14, !legup.pipeline.avail_time !15, !legup.pipeline.stage !8
  %32 = fmul double %31, 0x3FC99999A0000000, !legup.pipeline.start_time !15, !legup.pipeline.avail_time !27, !legup.pipeline.stage !10
  %33 = fadd double %23, %32, !legup.pipeline.start_time !22, !legup.pipeline.avail_time !28, !legup.pipeline.stage !29
  %34 = fptrunc double %33 to float, !legup.pipeline.start_time !28, !legup.pipeline.avail_time !30, !legup.pipeline.stage !24
  store float %34, float* %scevgep9, align 4, !tbaa !2, !legup.pipeline.start_time !30, !legup.pipeline.avail_time !31, !legup.pipeline.stage !24
  %35 = fadd float %5, %17, !legup.pipeline.start_time !16, !legup.pipeline.avail_time !32, !legup.pipeline.stage !8
  %36 = fadd float %35, %19, !legup.pipeline.start_time !32, !legup.pipeline.avail_time !33, !legup.pipeline.stage !10
  %37 = fadd float %36, %21, !legup.pipeline.start_time !34, !legup.pipeline.avail_time !35, !legup.pipeline.stage !12
  %38 = fpext float %37 to double, !legup.pipeline.start_time !36, !legup.pipeline.avail_time !37, !legup.pipeline.stage !23
  %39 = load float* %scevgep8, align 4, !tbaa !2, !legup.pipeline.start_time !6, !legup.pipeline.avail_time !8, !legup.pipeline.stage !7
  %40 = fpext float %39 to double, !legup.pipeline.start_time !29, !legup.pipeline.avail_time !38, !legup.pipeline.stage !7
  %41 = fpext float %5 to double, !legup.pipeline.start_time !6, !legup.pipeline.avail_time !10, !legup.pipeline.stage !7
  %42 = fmul double %41, 2.000000e+00, !legup.pipeline.start_time !10, !legup.pipeline.avail_time !39, !legup.pipeline.stage !7
  %43 = fsub double %40, %42, !legup.pipeline.start_time !39, !legup.pipeline.avail_time !16, !legup.pipeline.stage !6
  %44 = load float* %scevgep7, align 4, !tbaa !2, !legup.pipeline.start_time !8, !legup.pipeline.avail_time !10, !legup.pipeline.stage !7
  %45 = fpext float %44 to double, !legup.pipeline.start_time !12, !legup.pipeline.avail_time !23, !legup.pipeline.stage !7
  %46 = fadd double %43, %45, !legup.pipeline.start_time !16, !legup.pipeline.avail_time !32, !legup.pipeline.stage !8
  %47 = fmul double %46, 0x3FC99999A0000000, !legup.pipeline.start_time !32, !legup.pipeline.avail_time !40, !legup.pipeline.stage !10
  %48 = fadd double %38, %47, !legup.pipeline.start_time !37, !legup.pipeline.avail_time !41, !legup.pipeline.stage !23
  %49 = fptrunc double %48 to float, !legup.pipeline.start_time !41, !legup.pipeline.avail_time !42, !legup.pipeline.stage !24
  store float %49, float* %scevgep6, align 4, !tbaa !2, !legup.pipeline.start_time !42, !legup.pipeline.avail_time !30, !legup.pipeline.stage !24
  %50 = fadd float %4, %17, !legup.pipeline.start_time !19, !legup.pipeline.avail_time !43, !legup.pipeline.stage !8
  %51 = fadd float %50, %19, !legup.pipeline.start_time !43, !legup.pipeline.avail_time !44, !legup.pipeline.stage !10
  %52 = fadd float %51, %21, !legup.pipeline.start_time !44, !legup.pipeline.avail_time !45, !legup.pipeline.stage !12
  %53 = fpext float %52 to double, !legup.pipeline.start_time !45, !legup.pipeline.avail_time !35, !legup.pipeline.stage !26
  %54 = load float* %scevgep5, align 4, !tbaa !2, !legup.pipeline.start_time !6, !legup.pipeline.avail_time !8, !legup.pipeline.stage !7
  %55 = fpext float %54 to double, !legup.pipeline.start_time !24, !legup.pipeline.avail_time !46, !legup.pipeline.stage !7
  %56 = fpext float %4 to double, !legup.pipeline.start_time !8, !legup.pipeline.avail_time !12, !legup.pipeline.stage !7
  %57 = fmul double %56, 2.000000e+00, !legup.pipeline.start_time !12, !legup.pipeline.avail_time !47, !legup.pipeline.stage !7
  %58 = fsub double %55, %57, !legup.pipeline.start_time !47, !legup.pipeline.avail_time !19, !legup.pipeline.stage !6
  %59 = load float* %scevgep4, align 4, !tbaa !2, !legup.pipeline.start_time !8, !legup.pipeline.avail_time !10, !legup.pipeline.stage !7
  %60 = fpext float %59 to double, !legup.pipeline.start_time !26, !legup.pipeline.avail_time !29, !legup.pipeline.stage !7
  %61 = fadd double %58, %60, !legup.pipeline.start_time !19, !legup.pipeline.avail_time !43, !legup.pipeline.stage !8
  %62 = fmul double %61, 0x3FC99999A0000000, !legup.pipeline.start_time !43, !legup.pipeline.avail_time !48, !legup.pipeline.stage !10
  %63 = fadd double %53, %62, !legup.pipeline.start_time !35, !legup.pipeline.avail_time !49, !legup.pipeline.stage !23
  %64 = fptrunc double %63 to float, !legup.pipeline.start_time !49, !legup.pipeline.avail_time !50, !legup.pipeline.stage !29
  store float %64, float* %scevgep, align 4, !tbaa !2, !legup.pipeline.start_time !50, !legup.pipeline.avail_time !51, !legup.pipeline.stage !29
  %indvar.next = add i32 %indvar, 1, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  %exitcond1 = icmp eq i32 %indvar.next, 9, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7
  br i1 %exitcond1, label %65, label %2, !legup.pipelined !6, !legup.II !52, !legup.totalTime !53, !legup.maxStage !24, !legup.tripCount !38, !legup.label !54, !legup.pipeline.start_time !7, !legup.pipeline.avail_time !7, !legup.pipeline.stage !7

; <label>:65                                      ; preds = %2
  %indvar.next3 = add i32 %indvar2, 1
  %exitcond = icmp eq i32 %indvar.next3, 2
  br i1 %exitcond, label %66, label %.preheader

; <label>:66                                      ; preds = %65
  %indvar.next34 = add i32 %indvar33, 1
  %exitcond35 = icmp eq i32 %indvar.next34, 2
  br i1 %exitcond35, label %67, label %.preheader1

; <label>:67                                      ; preds = %66
  %68 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u3, i32 0, i32 1, i32 10, i32 3
  %69 = load float* %68, align 4, !tbaa !2
  %70 = fptosi float %69 to i32
  ret i32 %70
}

declare void @__legup_label(i8*) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!legup.pipeline = !{!1}

!0 = metadata !{metadata !"clang version 3.5.2 "}
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
!17 = metadata !{metadata !"44"}
!18 = metadata !{metadata !"58"}
!19 = metadata !{metadata !"29"}
!20 = metadata !{metadata !"72"}
!21 = metadata !{metadata !"82"}
!22 = metadata !{metadata !"84"}
!23 = metadata !{metadata !"6"}
!24 = metadata !{metadata !"8"}
!25 = metadata !{metadata !"13"}
!26 = metadata !{metadata !"5"}
!27 = metadata !{metadata !"52"}
!28 = metadata !{metadata !"98"}
!29 = metadata !{metadata !"7"}
!30 = metadata !{metadata !"101"}
!31 = metadata !{metadata !"102"}
!32 = metadata !{metadata !"42"}
!33 = metadata !{metadata !"56"}
!34 = metadata !{metadata !"59"}
!35 = metadata !{metadata !"73"}
!36 = metadata !{metadata !"81"}
!37 = metadata !{metadata !"83"}
!38 = metadata !{metadata !"9"}
!39 = metadata !{metadata !"14"}
!40 = metadata !{metadata !"53"}
!41 = metadata !{metadata !"97"}
!42 = metadata !{metadata !"100"}
!43 = metadata !{metadata !"43"}
!44 = metadata !{metadata !"57"}
!45 = metadata !{metadata !"71"}
!46 = metadata !{metadata !"10"}
!47 = metadata !{metadata !"15"}
!48 = metadata !{metadata !"54"}
!49 = metadata !{metadata !"87"}
!50 = metadata !{metadata !"90"}
!51 = metadata !{metadata !"91"}
!52 = metadata !{metadata !"12"}
!53 = metadata !{metadata !"103"}
!54 = metadata !{metadata !"loop1"}
