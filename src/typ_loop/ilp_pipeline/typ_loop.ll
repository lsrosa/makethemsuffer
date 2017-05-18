; ModuleID = 'typ_loop.bc'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"loop1\00", align 1

; Function Attrs: nounwind
define i32 @main() #0 {
  %A = alloca [10000 x i32], align 4
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %0
  %indvar = phi i32 [ %indvar.next, %.preheader ], [ 0, %0 ], !legup.canonical_induction !2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %1 = mul i32 %indvar, 100, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !2, !legup.pipeline.stage !3
  %2 = add i32 %1, 104, !legup.pipeline.start_time !2, !legup.pipeline.avail_time !2, !legup.pipeline.stage !3
  %scevgep = getelementptr [10000 x i32]* %A, i32 0, i32 %2, !legup.pipeline.start_time !4, !legup.pipeline.avail_time !4, !legup.pipeline.stage !3
  %3 = add i32 %1, 6, !legup.pipeline.start_time !2, !legup.pipeline.avail_time !2, !legup.pipeline.stage !3
  %scevgep2 = getelementptr [10000 x i32]* %A, i32 0, i32 %3, !legup.pipeline.start_time !4, !legup.pipeline.avail_time !4, !legup.pipeline.stage !3
  %4 = add i32 %1, 103, !legup.pipeline.start_time !2, !legup.pipeline.avail_time !2, !legup.pipeline.stage !3
  %scevgep3 = getelementptr [10000 x i32]* %A, i32 0, i32 %4, !legup.pipeline.start_time !4, !legup.pipeline.avail_time !4, !legup.pipeline.stage !3
  %5 = add i32 %1, 5, !legup.pipeline.start_time !2, !legup.pipeline.avail_time !2, !legup.pipeline.stage !3
  %scevgep4 = getelementptr [10000 x i32]* %A, i32 0, i32 %5, !legup.pipeline.start_time !4, !legup.pipeline.avail_time !4, !legup.pipeline.stage !3
  %6 = add i32 %1, 102, !legup.pipeline.start_time !2, !legup.pipeline.avail_time !2, !legup.pipeline.stage !3
  %scevgep5 = getelementptr [10000 x i32]* %A, i32 0, i32 %6, !legup.pipeline.start_time !4, !legup.pipeline.avail_time !4, !legup.pipeline.stage !3
  %7 = add i32 %1, 4, !legup.pipeline.start_time !2, !legup.pipeline.avail_time !2, !legup.pipeline.stage !3
  %scevgep6 = getelementptr [10000 x i32]* %A, i32 0, i32 %7, !legup.pipeline.start_time !4, !legup.pipeline.avail_time !4, !legup.pipeline.stage !3
  %8 = add i32 %1, 101, !legup.pipeline.start_time !2, !legup.pipeline.avail_time !2, !legup.pipeline.stage !3
  %scevgep7 = getelementptr [10000 x i32]* %A, i32 0, i32 %8, !legup.pipeline.start_time !4, !legup.pipeline.avail_time !4, !legup.pipeline.stage !3
  %9 = or i32 %1, 3
  %scevgep8 = getelementptr [10000 x i32]* %A, i32 0, i32 %9, !legup.pipeline.start_time !4, !legup.pipeline.avail_time !4, !legup.pipeline.stage !3
  tail call void @__legup_label(i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0)) #2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %10 = load i32* %scevgep8, align 4, !tbaa !5, !legup.pipeline.start_time !4, !legup.pipeline.avail_time !9, !legup.pipeline.stage !3
  store i32 %10, i32* %scevgep7, align 4, !tbaa !5, !legup.pipeline.start_time !10, !legup.pipeline.avail_time !11, !legup.pipeline.stage !2
  tail call void @__legup_label(i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0)) #2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %11 = load i32* %scevgep6, align 4, !tbaa !5, !legup.pipeline.start_time !4, !legup.pipeline.avail_time !9, !legup.pipeline.stage !3
  store i32 %11, i32* %scevgep5, align 4, !tbaa !5, !legup.pipeline.start_time !10, !legup.pipeline.avail_time !11, !legup.pipeline.stage !2
  tail call void @__legup_label(i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0)) #2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %12 = load i32* %scevgep4, align 4, !tbaa !5, !legup.pipeline.start_time !9, !legup.pipeline.avail_time !12, !legup.pipeline.stage !3
  store i32 %12, i32* %scevgep3, align 4, !tbaa !5, !legup.pipeline.start_time !12, !legup.pipeline.avail_time !10, !legup.pipeline.stage !2
  tail call void @__legup_label(i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0)) #2, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %13 = load i32* %scevgep2, align 4, !tbaa !5, !legup.pipeline.start_time !9, !legup.pipeline.avail_time !12, !legup.pipeline.stage !3
  store i32 %13, i32* %scevgep, align 4, !tbaa !5, !legup.pipeline.start_time !12, !legup.pipeline.avail_time !10, !legup.pipeline.stage !2
  %indvar.next = add i32 %indvar, 1, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  %exitcond1 = icmp eq i32 %indvar.next, 49, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3
  br i1 %exitcond1, label %14, label %.preheader, !legup.pipelined !2, !legup.II !12, !legup.totalTime !13, !legup.maxStage !2, !legup.tripCount !14, !legup.label !15, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !3

; <label>:14                                      ; preds = %.preheader
  %15 = getelementptr inbounds [10000 x i32]* %A, i32 0, i32 5005
  %16 = load i32* %15, align 4, !tbaa !5
  ret i32 %16
}

declare void @__legup_label(i8*) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!legup.pipeline = !{!1}

!0 = metadata !{metadata !"clang version 3.5.2 "}
!1 = metadata !{metadata !"II", metadata !"4"}
!2 = metadata !{metadata !"1"}
!3 = metadata !{metadata !"0"}
!4 = metadata !{metadata !"2"}
!5 = metadata !{metadata !6, metadata !6, i64 0}
!6 = metadata !{metadata !"int", metadata !7, i64 0}
!7 = metadata !{metadata !"omnipotent char", metadata !8, i64 0}
!8 = metadata !{metadata !"Simple C/C++ TBAA"}
!9 = metadata !{metadata !"3"}
!10 = metadata !{metadata !"5"}
!11 = metadata !{metadata !"6"}
!12 = metadata !{metadata !"4"}
!13 = metadata !{metadata !"7"}
!14 = metadata !{metadata !"49"}
!15 = metadata !{metadata !"loop1"}
