; ModuleID = 'typ_loop.prelto.1.bc'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"loop1\00", align 1

; Function Attrs: nounwind
define i32 @main() #0 {
  %A = alloca [10000 x i32], align 4
  %1 = bitcast [10000 x i32]* %A to i8*
  call void @llvm.lifetime.start(i64 40000, i8* %1) #1
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %0
  %i.02 = phi i32 [ 1, %0 ], [ %23, %.preheader ]
  %2 = mul i32 %i.02, 100
  tail call void @__legup_label(i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0)) #3
  %3 = add i32 %2, -97
  %4 = getelementptr inbounds [10000 x i32]* %A, i32 0, i32 %3
  %5 = load i32* %4, align 4, !tbaa !1
  %6 = or i32 %2, 1
  %7 = getelementptr inbounds [10000 x i32]* %A, i32 0, i32 %6
  store i32 %5, i32* %7, align 4, !tbaa !1
  tail call void @__legup_label(i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0)) #3
  %8 = add i32 %2, -96
  %9 = getelementptr inbounds [10000 x i32]* %A, i32 0, i32 %8
  %10 = load i32* %9, align 4, !tbaa !1
  %11 = or i32 %2, 2
  %12 = getelementptr inbounds [10000 x i32]* %A, i32 0, i32 %11
  store i32 %10, i32* %12, align 4, !tbaa !1
  tail call void @__legup_label(i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0)) #3
  %13 = add i32 %2, -95
  %14 = getelementptr inbounds [10000 x i32]* %A, i32 0, i32 %13
  %15 = load i32* %14, align 4, !tbaa !1
  %16 = or i32 %2, 3
  %17 = getelementptr inbounds [10000 x i32]* %A, i32 0, i32 %16
  store i32 %15, i32* %17, align 4, !tbaa !1
  tail call void @__legup_label(i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0)) #3
  %18 = add i32 %2, -94
  %19 = getelementptr inbounds [10000 x i32]* %A, i32 0, i32 %18
  %20 = load i32* %19, align 4, !tbaa !1
  %21 = add nsw i32 %2, 4
  %22 = getelementptr inbounds [10000 x i32]* %A, i32 0, i32 %21
  store i32 %20, i32* %22, align 4, !tbaa !1
  %23 = add nsw i32 %i.02, 1
  %exitcond = icmp eq i32 %i.02, 49
  br i1 %exitcond, label %24, label %.preheader

; <label>:24                                      ; preds = %.preheader
  %25 = getelementptr inbounds [10000 x i32]* %A, i32 0, i32 5005
  %26 = load i32* %25, align 4, !tbaa !1
  call void @llvm.lifetime.end(i64 40000, i8* %1) #1
  ret i32 %26
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
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
