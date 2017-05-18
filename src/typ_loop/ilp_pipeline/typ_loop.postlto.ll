; ModuleID = 'typ_loop.postlto.bc'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"loop1\00", align 1

; Function Attrs: nounwind
define i32 @main() #0 {
  %A = alloca [10000 x i32], align 4
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %0
  %i.02 = phi i32 [ 1, %0 ], [ %22, %.preheader ]
  %1 = mul i32 %i.02, 100
  tail call void @__legup_label(i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0)) #2
  %2 = add i32 %1, -97
  %3 = getelementptr inbounds [10000 x i32]* %A, i32 0, i32 %2
  %4 = load i32* %3, align 4, !tbaa !1
  %5 = or i32 %1, 1
  %6 = getelementptr inbounds [10000 x i32]* %A, i32 0, i32 %5
  store i32 %4, i32* %6, align 4, !tbaa !1
  tail call void @__legup_label(i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0)) #2
  %7 = add i32 %1, -96
  %8 = getelementptr inbounds [10000 x i32]* %A, i32 0, i32 %7
  %9 = load i32* %8, align 4, !tbaa !1
  %10 = or i32 %1, 2
  %11 = getelementptr inbounds [10000 x i32]* %A, i32 0, i32 %10
  store i32 %9, i32* %11, align 4, !tbaa !1
  tail call void @__legup_label(i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0)) #2
  %12 = add i32 %1, -95
  %13 = getelementptr inbounds [10000 x i32]* %A, i32 0, i32 %12
  %14 = load i32* %13, align 4, !tbaa !1
  %15 = or i32 %1, 3
  %16 = getelementptr inbounds [10000 x i32]* %A, i32 0, i32 %15
  store i32 %14, i32* %16, align 4, !tbaa !1
  tail call void @__legup_label(i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0)) #2
  %17 = add i32 %1, -94
  %18 = getelementptr inbounds [10000 x i32]* %A, i32 0, i32 %17
  %19 = load i32* %18, align 4, !tbaa !1
  %20 = add nsw i32 %1, 4
  %21 = getelementptr inbounds [10000 x i32]* %A, i32 0, i32 %20
  store i32 %19, i32* %21, align 4, !tbaa !1
  %22 = add nsw i32 %i.02, 1
  %exitcond = icmp eq i32 %i.02, 49
  br i1 %exitcond, label %23, label %.preheader

; <label>:23                                      ; preds = %.preheader
  %24 = getelementptr inbounds [10000 x i32]* %A, i32 0, i32 5005
  %25 = load i32* %24, align 4, !tbaa !1
  ret i32 %25
}

declare void @__legup_label(i8*) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}

!0 = metadata !{metadata !"clang version 3.5.2 "}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
