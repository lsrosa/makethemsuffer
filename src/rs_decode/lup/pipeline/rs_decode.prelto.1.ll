; ModuleID = 'rs_decode.prelto.1.bc'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@pp = constant [9 x i32] [i32 1, i32 0, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 1], align 4
@pp_char = constant i8 29, align 1
@.str = private unnamed_addr constant [10 x i8] c"Syn_Outer\00", align 1
@.str1 = private unnamed_addr constant [10 x i8] c"Syn_Inner\00", align 1
@alpha.alpha_lut = private unnamed_addr constant [256 x i8] c"\01\02\04\08\10 @\80\1D:t\E8\CD\87\13&L\98-Z\B4u\EA\C9\8F\03\06\0C\180`\C0\9D'N\9D%J\945j\D4\B5w\EE\C1\9F#F\8C\05\0A\14(P\A0]\BAi\D2\B9o\DE\A1_\BEa\C2\99/^\BCe\CA\89\0F\1E<x\F0\FD\E7\D3\BBk\D6\B1\7F\FE\E1\DF\A3[\B6q\E2\D9\AFA\86\11\22D\88\0D\1A4h\D0\BDg\CE\81\1F>|\F8\ED\C7\93;v\EC\C5\973f\CC\85\17.\5C\B8m\DA\A9O\9E!B\84\15*T\A8M\9A)R\A4U\AAI\929r\E4\D5\B7s\E6\D1\BFc\C6\91?~\FC\E5\D7\B3{\F6\F1\FF\E3\DB\ABK\961b\C4\957n\DC\A5W\AEA\82\192d\C8\8D\07\0E\1C8p\E0\DD\A7S\A6Q\A2Y\B2y\F2\F9\EF\C3\9B+V\ACE\8A\09\12$H\90=z\F4\F5\F7\F3\FB\EB\CB\8B\0B\16,X\B0}\FA\E9\CF\83\1B6l\D8\ADG\8E\00", align 1
@gfinv_lut.lut = private unnamed_addr constant [256 x i8] c"\02\01\8E\F4G\A7z\BA\AD\9D\DD\98=\AA]\96\D8r\C0X\E0>Lf\90\DEU\80\A0\83K*l\ED9Q`V,\8Ap\D0\1FJ&\8B3nH\89o.\A4\C3@^P\22\CF\A9\AB\0C\15\E16_\F8\D5\92N\A6\040\88+\1E\16gE\938#h\8C\81\1A%a\13\C1\CBc\97\0E7A$W\CA[\B9\C4\17MR\8D\EF\B3 \EC/2(\D1\11\D9\E9\FB\DAy\DBw\06\BB\84\CD\FE\FC\1BT\A1\1D|\CC\E4\B0I1'-Si\02\F5\18\DFDO\9B\BC\0F\5C\0B\DC\BD\94\AC\09\C7\A2\1C\82\9F\C64\C2F\05\CE;\0D<\9C\08\BE\B7\87\E5\EEk\EB\F2\BF\AF\C5d\07{\95\9A\AE\B6\12Y\A55e\B8\A3\9E\D2\F7bZ\85}\A8:)q\C8\F6\F9C\D7\D6\10svx\99\0A\19\91\14?\E6\F0\86\B1\E2\F1\FAt\F3\B4m!\B2j\E3\E7\B5\EA\03\8F\D3\C9B\D4\E8u\7F\FF~\FD", align 1
@.str2 = private unnamed_addr constant [9 x i8] c"BerlInit\00", align 1
@.str3 = private unnamed_addr constant [10 x i8] c"BerlOuter\00", align 1
@.str4 = private unnamed_addr constant [10 x i8] c"BerlShift\00", align 1
@.str5 = private unnamed_addr constant [12 x i8] c"BerlSimple1\00", align 1
@.str6 = private unnamed_addr constant [12 x i8] c"BerlSimple2\00", align 1
@.str7 = private unnamed_addr constant [9 x i8] c"BerlCopy\00", align 1
@.str8 = private unnamed_addr constant [20 x i8] c"Chien_AssignInArray\00", align 1
@.str9 = private unnamed_addr constant [13 x i8] c"Chien_Inner2\00", align 1
@.str10 = private unnamed_addr constant [21 x i8] c"Chien_AssignOutArray\00", align 1
@main.in_d = private unnamed_addr constant [255 x i8] c"\DF\00\DD\DC\DB\DA\D9\D8\D7\D6\D5\D4\D3\D2\D1\D0\CF\CE\CD\CC\CB\CA\C9\C8\C7\C6\C5\C4\C3\C2\C1\C0\BF\BE\BD\BC\BB\BA\B9\B8\B7\B6\B5\B4\B3\B2\B1\B0\AF\AE\AD\AC\AB\AA\A9\A8\A7\A6\A5\A4\A3\A2\A1\A0\9F\9E\9D\9C\9B\9A\99\98\97\96\95\94\93\92\91\90\8F\8E\8D\8C\8B\8A\89\88\87\86\85\84\83\82\81\80\7F~}|{zyxwvutsrqponmlkjihgfedcba`_^]\5C[ZYXWVUTSRQPONMLKJIHGFEDCBA@?>=<;:9876543210/.-,+*)('&%$#\22! \1F\1E\1D\1C\1B\1A\19\18\17\16\15\14\13\12\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\FD\09<\DC[\CA0S\C9\B5Q{u?b\DB\14\09G\0D\E7\B4inrh\93\127\91\AA\1A", align 1

; Function Attrs: nounwind
define void @syndrome(i8 zeroext %k, i8 zeroext %t, i8* nocapture readonly %r, i8* nocapture %s) #0 {
  br label %1

; <label>:1                                       ; preds = %1, %0
  %j.04 = phi i32 [ 0, %0 ], [ %3, %1 ]
  %2 = getelementptr inbounds i8* %s, i32 %j.04
  store i8 0, i8* %2, align 1, !tbaa !1
  %3 = add nsw i32 %j.04, 1
  %exitcond6 = icmp eq i32 %j.04, 31
  br i1 %exitcond6, label %.preheader.preheader, label %1

.preheader.preheader:                             ; preds = %1
  br label %.preheader

.preheader:                                       ; preds = %14, %.preheader.preheader
  %i.03 = phi i32 [ %15, %14 ], [ 0, %.preheader.preheader ]
  tail call void @__legup_label(i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0)) #5
  %4 = getelementptr inbounds i8* %r, i32 %i.03
  %5 = load i8* %4, align 1, !tbaa !1
  br label %6

; <label>:6                                       ; preds = %6, %.preheader
  %j1.02 = phi i32 [ 0, %.preheader ], [ %9, %6 ]
  tail call void @__legup_label(i8* getelementptr inbounds ([10 x i8]* @.str1, i32 0, i32 0)) #5
  %7 = getelementptr inbounds i8* %s, i32 %j1.02
  %8 = load i8* %7, align 1, !tbaa !1
  %9 = add nsw i32 %j1.02, 1
  %10 = getelementptr inbounds [256 x i8]* @alpha.alpha_lut, i32 0, i32 %9
  %11 = load i8* %10, align 1, !tbaa !1
  %12 = tail call zeroext i8 @gfmult_hw(i8 zeroext %8, i8 zeroext %11) #6
  %13 = xor i8 %12, %5
  store i8 %13, i8* %7, align 1, !tbaa !1
  %exitcond = icmp eq i32 %j1.02, 31
  br i1 %exitcond, label %14, label %6

; <label>:14                                      ; preds = %6
  %15 = add nsw i32 %i.03, 1
  %exitcond5 = icmp eq i32 %i.03, 254
  br i1 %exitcond5, label %16, label %.preheader

; <label>:16                                      ; preds = %14
  ret void
}

declare void @__legup_label(i8*) #1

; Function Attrs: nounwind readnone
define zeroext i8 @gfmult_hw(i8 zeroext %a, i8 zeroext %b) #2 {
  %1 = zext i8 %b to i32
  %2 = zext i8 %a to i32
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  %. = select i1 %4, i32 0, i32 %2
  %5 = and i32 %1, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

; <label>:7                                       ; preds = %0
  %8 = shl nuw nsw i32 %2, 1
  %9 = xor i32 %8, %.
  br label %10

; <label>:10                                      ; preds = %7, %0
  %temp.1.1 = phi i32 [ %9, %7 ], [ %., %0 ]
  %11 = and i32 %1, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

; <label>:13                                      ; preds = %10
  %14 = shl nuw nsw i32 %2, 2
  %15 = xor i32 %14, %temp.1.1
  br label %16

; <label>:16                                      ; preds = %13, %10
  %temp.1.2 = phi i32 [ %15, %13 ], [ %temp.1.1, %10 ]
  %17 = and i32 %1, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

; <label>:19                                      ; preds = %16
  %20 = shl nuw nsw i32 %2, 3
  %21 = xor i32 %20, %temp.1.2
  br label %22

; <label>:22                                      ; preds = %19, %16
  %temp.1.3 = phi i32 [ %21, %19 ], [ %temp.1.2, %16 ]
  %23 = and i32 %1, 16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

; <label>:25                                      ; preds = %22
  %26 = shl nuw nsw i32 %2, 4
  %27 = xor i32 %26, %temp.1.3
  br label %28

; <label>:28                                      ; preds = %25, %22
  %temp.1.4 = phi i32 [ %27, %25 ], [ %temp.1.3, %22 ]
  %29 = and i32 %1, 32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

; <label>:31                                      ; preds = %28
  %32 = shl nuw nsw i32 %2, 5
  %33 = xor i32 %32, %temp.1.4
  br label %34

; <label>:34                                      ; preds = %31, %28
  %temp.1.5 = phi i32 [ %33, %31 ], [ %temp.1.4, %28 ]
  %35 = and i32 %1, 64
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

; <label>:37                                      ; preds = %34
  %38 = shl nuw nsw i32 %2, 6
  %39 = xor i32 %38, %temp.1.5
  br label %40

; <label>:40                                      ; preds = %37, %34
  %temp.1.6 = phi i32 [ %39, %37 ], [ %temp.1.5, %34 ]
  %41 = and i32 %1, 128
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %.preheader5, label %43

; <label>:43                                      ; preds = %40
  %44 = shl nuw nsw i32 %2, 7
  %45 = xor i32 %44, %temp.1.6
  br label %.preheader5

.preheader5:                                      ; preds = %43, %40
  %temp.1.7 = phi i32 [ %45, %43 ], [ %temp.1.6, %40 ]
  %46 = and i32 %temp.1.7, 32768
  %47 = icmp eq i32 %46, 0
  %48 = xor i32 %temp.1.7, 3712
  %temp.3 = select i1 %47, i32 %temp.1.7, i32 %48
  %49 = and i32 %temp.3, 16384
  %50 = icmp eq i32 %49, 0
  %51 = xor i32 %temp.3, 1856
  %temp.3. = select i1 %50, i32 %temp.3, i32 %51
  %52 = and i32 %temp.3., 8192
  %53 = icmp eq i32 %52, 0
  %54 = xor i32 %temp.3., 928
  %temp.3.2 = select i1 %53, i32 %temp.3., i32 %54
  %55 = and i32 %temp.3.2, 4096
  %56 = icmp eq i32 %55, 0
  %57 = xor i32 %temp.3.2, 464
  %temp.3.2. = select i1 %56, i32 %temp.3.2, i32 %57
  %58 = and i32 %temp.3.2., 2048
  %59 = icmp eq i32 %58, 0
  %60 = xor i32 %temp.3.2., 232
  %temp.3.4 = select i1 %59, i32 %temp.3.2., i32 %60
  %61 = and i32 %temp.3.4, 1024
  %62 = icmp eq i32 %61, 0
  %63 = xor i32 %temp.3.4, 116
  %temp.3.4. = select i1 %62, i32 %temp.3.4, i32 %63
  %64 = and i32 %temp.3.4., 512
  %65 = icmp eq i32 %64, 0
  %66 = xor i32 %temp.3.4., 58
  %temp.3.6 = select i1 %65, i32 %temp.3.4., i32 %66
  %67 = and i32 %temp.3.6, 256
  %68 = icmp eq i32 %67, 0
  %69 = xor i32 %temp.3.6, 29
  %temp.3.6. = select i1 %68, i32 %temp.3.6, i32 %69
  %70 = trunc i32 %temp.3.6. to i8
  ret i8 %70
}

; Function Attrs: nounwind readnone
define zeroext i8 @alpha(i8 zeroext %n) #2 {
  %1 = zext i8 %n to i32
  %2 = getelementptr inbounds [256 x i8]* @alpha.alpha_lut, i32 0, i32 %1
  %3 = load i8* %2, align 1, !tbaa !1
  ret i8 %3
}

; Function Attrs: nounwind
define void @rs_fifo(i8 zeroext %k, i8* nocapture readonly %in_d, i8* nocapture %out_d) #0 {
  %1 = zext i8 %k to i32
  br label %2

; <label>:2                                       ; preds = %7, %0
  %i.01 = phi i32 [ 0, %0 ], [ %10, %7 ]
  %3 = icmp slt i32 %i.01, %1
  br i1 %3, label %4, label %7

; <label>:4                                       ; preds = %2
  %5 = getelementptr inbounds i8* %in_d, i32 %i.01
  %6 = load i8* %5, align 1, !tbaa !1
  br label %7

; <label>:7                                       ; preds = %4, %2
  %8 = phi i8 [ %6, %4 ], [ 0, %2 ]
  %9 = getelementptr inbounds i8* %out_d, i32 %i.01
  store i8 %8, i8* %9, align 1, !tbaa !1
  %10 = add nsw i32 %i.01, 1
  %exitcond = icmp eq i32 %i.01, 222
  br i1 %exitcond, label %11, label %2

; <label>:11                                      ; preds = %7
  ret void
}

; Function Attrs: nounwind readnone
define zeroext i8 @gfadd_hw(i8 zeroext %a, i8 zeroext %b) #2 {
  %1 = xor i8 %b, %a
  ret i8 %1
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind readnone
define zeroext i8 @gfinv_lut(i8 zeroext %a) #2 {
  %1 = zext i8 %a to i32
  %2 = getelementptr inbounds [256 x i8]* @gfinv_lut.lut, i32 0, i32 %1
  %3 = load i8* %2, align 1, !tbaa !1
  ret i8 %3
}

; Function Attrs: nounwind readnone
define zeroext i8 @alphainv_lut(i8 zeroext %n) #2 {
  %1 = icmp eq i8 %n, 0
  br i1 %1, label %9, label %2

; <label>:2                                       ; preds = %0
  %3 = zext i8 %n to i32
  %4 = getelementptr inbounds [256 x i8]* @alpha.alpha_lut, i32 0, i32 %3
  %5 = load i8* %4, align 1, !tbaa !1
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds [256 x i8]* @gfinv_lut.lut, i32 0, i32 %6
  %8 = load i8* %7, align 1, !tbaa !1
  br label %9

; <label>:9                                       ; preds = %2, %0
  %.0 = phi i8 [ %8, %2 ], [ 1, %0 ]
  ret i8 %.0
}

; Function Attrs: nounwind readnone
define zeroext i8 @gfdiv_lut(i8 zeroext %dividend, i8 zeroext %divisor) #2 {
  %1 = zext i8 %divisor to i32
  %2 = getelementptr inbounds [256 x i8]* @gfinv_lut.lut, i32 0, i32 %1
  %3 = load i8* %2, align 1, !tbaa !1
  %4 = tail call zeroext i8 @gfmult_hw(i8 zeroext %dividend, i8 zeroext %3) #6
  ret i8 %4
}

; Function Attrs: nounwind
define void @compute_deriv(i8* nocapture readonly %lambda, i8* nocapture %lambda_deriv) #0 {
  br label %1

; <label>:1                                       ; preds = %7, %0
  %i.01 = phi i32 [ 0, %0 ], [ %10, %7 ]
  %2 = and i32 %i.01, 1
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

; <label>:4                                       ; preds = %1
  %5 = getelementptr inbounds i8* %lambda, i32 %i.01
  %6 = load i8* %5, align 1, !tbaa !1
  br label %7

; <label>:7                                       ; preds = %4, %1
  %8 = phi i8 [ %6, %4 ], [ 0, %1 ]
  %9 = getelementptr inbounds i8* %lambda_deriv, i32 %i.01
  store i8 %8, i8* %9, align 1, !tbaa !1
  %10 = add nsw i32 %i.01, 1
  %exitcond = icmp eq i32 %i.01, 15
  br i1 %exitcond, label %11, label %1

; <label>:11                                      ; preds = %7
  ret void
}

; Function Attrs: nounwind readonly
define zeroext i8 @poly_eval(i8* nocapture readonly %poly, i8 zeroext %alpha_inv) #4 {
  %1 = tail call zeroext i8 @gfmult_hw(i8 zeroext 0, i8 zeroext %alpha_inv) #6
  %2 = getelementptr inbounds i8* %poly, i32 15
  %3 = load i8* %2, align 1, !tbaa !1
  %4 = xor i8 %3, %1
  %5 = tail call zeroext i8 @gfmult_hw(i8 zeroext %4, i8 zeroext %alpha_inv) #6
  %6 = getelementptr inbounds i8* %poly, i32 14
  %7 = load i8* %6, align 1, !tbaa !1
  %8 = xor i8 %7, %5
  %9 = tail call zeroext i8 @gfmult_hw(i8 zeroext %8, i8 zeroext %alpha_inv) #6
  %10 = getelementptr inbounds i8* %poly, i32 13
  %11 = load i8* %10, align 1, !tbaa !1
  %12 = xor i8 %11, %9
  %13 = tail call zeroext i8 @gfmult_hw(i8 zeroext %12, i8 zeroext %alpha_inv) #6
  %14 = getelementptr inbounds i8* %poly, i32 12
  %15 = load i8* %14, align 1, !tbaa !1
  %16 = xor i8 %15, %13
  %17 = tail call zeroext i8 @gfmult_hw(i8 zeroext %16, i8 zeroext %alpha_inv) #6
  %18 = getelementptr inbounds i8* %poly, i32 11
  %19 = load i8* %18, align 1, !tbaa !1
  %20 = xor i8 %19, %17
  %21 = tail call zeroext i8 @gfmult_hw(i8 zeroext %20, i8 zeroext %alpha_inv) #6
  %22 = getelementptr inbounds i8* %poly, i32 10
  %23 = load i8* %22, align 1, !tbaa !1
  %24 = xor i8 %23, %21
  %25 = tail call zeroext i8 @gfmult_hw(i8 zeroext %24, i8 zeroext %alpha_inv) #6
  %26 = getelementptr inbounds i8* %poly, i32 9
  %27 = load i8* %26, align 1, !tbaa !1
  %28 = xor i8 %27, %25
  %29 = tail call zeroext i8 @gfmult_hw(i8 zeroext %28, i8 zeroext %alpha_inv) #6
  %30 = getelementptr inbounds i8* %poly, i32 8
  %31 = load i8* %30, align 1, !tbaa !1
  %32 = xor i8 %31, %29
  %33 = tail call zeroext i8 @gfmult_hw(i8 zeroext %32, i8 zeroext %alpha_inv) #6
  %34 = getelementptr inbounds i8* %poly, i32 7
  %35 = load i8* %34, align 1, !tbaa !1
  %36 = xor i8 %35, %33
  %37 = tail call zeroext i8 @gfmult_hw(i8 zeroext %36, i8 zeroext %alpha_inv) #6
  %38 = getelementptr inbounds i8* %poly, i32 6
  %39 = load i8* %38, align 1, !tbaa !1
  %40 = xor i8 %39, %37
  %41 = tail call zeroext i8 @gfmult_hw(i8 zeroext %40, i8 zeroext %alpha_inv) #6
  %42 = getelementptr inbounds i8* %poly, i32 5
  %43 = load i8* %42, align 1, !tbaa !1
  %44 = xor i8 %43, %41
  %45 = tail call zeroext i8 @gfmult_hw(i8 zeroext %44, i8 zeroext %alpha_inv) #6
  %46 = getelementptr inbounds i8* %poly, i32 4
  %47 = load i8* %46, align 1, !tbaa !1
  %48 = xor i8 %47, %45
  %49 = tail call zeroext i8 @gfmult_hw(i8 zeroext %48, i8 zeroext %alpha_inv) #6
  %50 = getelementptr inbounds i8* %poly, i32 3
  %51 = load i8* %50, align 1, !tbaa !1
  %52 = xor i8 %51, %49
  %53 = tail call zeroext i8 @gfmult_hw(i8 zeroext %52, i8 zeroext %alpha_inv) #6
  %54 = getelementptr inbounds i8* %poly, i32 2
  %55 = load i8* %54, align 1, !tbaa !1
  %56 = xor i8 %55, %53
  %57 = tail call zeroext i8 @gfmult_hw(i8 zeroext %56, i8 zeroext %alpha_inv) #6
  %58 = getelementptr inbounds i8* %poly, i32 1
  %59 = load i8* %58, align 1, !tbaa !1
  %60 = xor i8 %59, %57
  %61 = tail call zeroext i8 @gfmult_hw(i8 zeroext %60, i8 zeroext %alpha_inv) #6
  %62 = load i8* %poly, align 1, !tbaa !1
  %63 = xor i8 %62, %61
  ret i8 %63
}

; Function Attrs: nounwind readonly
define zeroext i8 @poly_eval_inst1(i8* nocapture readonly %poly, i8 zeroext %alpha_inv) #4 {
  %1 = tail call zeroext i8 @poly_eval(i8* %poly, i8 zeroext %alpha_inv) #6
  ret i8 %1
}

; Function Attrs: nounwind readonly
define zeroext i8 @poly_eval_inst2(i8* nocapture readonly %poly, i8 zeroext %alpha_inv) #4 {
  %1 = tail call zeroext i8 @poly_eval(i8* %poly, i8 zeroext %alpha_inv) #6
  ret i8 %1
}

; Function Attrs: nounwind readnone
define zeroext i8 @gfdiv_lut_inst(i8 zeroext %dividend, i8 zeroext %divisor) #2 {
  %1 = zext i8 %divisor to i32
  %2 = getelementptr inbounds [256 x i8]* @gfinv_lut.lut, i32 0, i32 %1
  %3 = load i8* %2, align 1, !tbaa !1
  %4 = tail call zeroext i8 @gfmult_hw(i8 zeroext %dividend, i8 zeroext %3) #5
  ret i8 %4
}

; Function Attrs: nounwind
define void @compute_deriv_inst(i8* nocapture readonly %lambda, i8* nocapture %lambda_deriv) #0 {
  br label %1

; <label>:1                                       ; preds = %7, %0
  %i.01.i = phi i32 [ 0, %0 ], [ %10, %7 ]
  %2 = and i32 %i.01.i, 1
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

; <label>:4                                       ; preds = %1
  %5 = getelementptr inbounds i8* %lambda, i32 %i.01.i
  %6 = load i8* %5, align 1, !tbaa !1
  br label %7

; <label>:7                                       ; preds = %4, %1
  %8 = phi i8 [ %6, %4 ], [ 0, %1 ]
  %9 = getelementptr inbounds i8* %lambda_deriv, i32 %i.01.i
  store i8 %8, i8* %9, align 1, !tbaa !1
  %10 = add nsw i32 %i.01.i, 1
  %exitcond.i = icmp eq i32 %i.01.i, 15
  br i1 %exitcond.i, label %compute_deriv.exit, label %1

compute_deriv.exit:                               ; preds = %7
  ret void
}

; Function Attrs: nounwind
define void @error_mag(i8 zeroext %k, i8* nocapture readonly %lambda, i8* nocapture readonly %omega, i8 zeroext %err_no, i8* nocapture readonly %err_loc, i8* nocapture readonly %alpha_inv, i8* nocapture %err) #0 {
  %lambda_deriv = alloca [16 x i8], align 1
  %err_temp = alloca [16 x i8], align 1
  br label %1

; <label>:1                                       ; preds = %7, %0
  %i.01.i = phi i32 [ 0, %0 ], [ %10, %7 ]
  %2 = and i32 %i.01.i, 1
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

; <label>:4                                       ; preds = %1
  %5 = getelementptr inbounds i8* %lambda, i32 %i.01.i
  %6 = load i8* %5, align 1, !tbaa !1
  br label %7

; <label>:7                                       ; preds = %4, %1
  %8 = phi i8 [ %6, %4 ], [ 0, %1 ]
  %9 = getelementptr inbounds [16 x i8]* %lambda_deriv, i32 0, i32 %i.01.i
  store i8 %8, i8* %9, align 1, !tbaa !1
  %10 = add nsw i32 %i.01.i, 1
  %exitcond.i = icmp eq i32 %i.01.i, 15
  br i1 %exitcond.i, label %compute_deriv.exit.preheader, label %1

compute_deriv.exit.preheader:                     ; preds = %7
  %11 = getelementptr inbounds [16 x i8]* %lambda_deriv, i32 0, i32 0
  br label %compute_deriv.exit

.preheader:                                       ; preds = %compute_deriv.exit
  %12 = zext i8 %err_no to i32
  br label %23

compute_deriv.exit:                               ; preds = %compute_deriv.exit, %compute_deriv.exit.preheader
  %i.05 = phi i32 [ 0, %compute_deriv.exit.preheader ], [ %22, %compute_deriv.exit ]
  %13 = getelementptr inbounds i8* %alpha_inv, i32 %i.05
  %14 = load i8* %13, align 1, !tbaa !1
  %15 = call zeroext i8 @poly_eval(i8* %11, i8 zeroext %14) #5
  %16 = tail call zeroext i8 @poly_eval(i8* %omega, i8 zeroext %14) #5
  %17 = zext i8 %15 to i32
  %18 = getelementptr inbounds [256 x i8]* @gfinv_lut.lut, i32 0, i32 %17
  %19 = load i8* %18, align 1, !tbaa !1
  %20 = tail call zeroext i8 @gfmult_hw(i8 zeroext %16, i8 zeroext %19) #5
  %21 = getelementptr inbounds [16 x i8]* %err_temp, i32 0, i32 %i.05
  store i8 %20, i8* %21, align 1, !tbaa !1
  %22 = add nsw i32 %i.05, 1
  %exitcond6 = icmp eq i32 %i.05, 15
  br i1 %exitcond6, label %.preheader, label %compute_deriv.exit

; <label>:23                                      ; preds = %34, %.preheader
  %i1.04 = phi i32 [ 0, %.preheader ], [ %36, %34 ]
  %loc_idx.03 = phi i32 [ 0, %.preheader ], [ %loc_idx.1, %34 ]
  %24 = getelementptr inbounds i8* %err_loc, i32 %loc_idx.03
  %25 = load i8* %24, align 1, !tbaa !1
  %26 = zext i8 %25 to i32
  %27 = sub nsw i32 222, %i1.04
  %28 = icmp eq i32 %26, %27
  %29 = icmp slt i32 %loc_idx.03, %12
  %or.cond = and i1 %28, %29
  br i1 %or.cond, label %30, label %34

; <label>:30                                      ; preds = %23
  %31 = getelementptr inbounds [16 x i8]* %err_temp, i32 0, i32 %loc_idx.03
  %32 = load i8* %31, align 1, !tbaa !1
  %33 = add nsw i32 %loc_idx.03, 1
  br label %34

; <label>:34                                      ; preds = %30, %23
  %.sink = phi i8 [ %32, %30 ], [ 0, %23 ]
  %loc_idx.1 = phi i32 [ %33, %30 ], [ %loc_idx.03, %23 ]
  %35 = getelementptr inbounds i8* %err, i32 %i1.04
  store i8 %.sink, i8* %35, align 1
  %36 = add nsw i32 %i1.04, 1
  %exitcond = icmp eq i32 %i1.04, 222
  br i1 %exitcond, label %37, label %23

; <label>:37                                      ; preds = %34
  ret void
}

; Function Attrs: nounwind
define void @error_correct(i8 zeroext %k, i8* nocapture readonly %in_data, i8* nocapture readonly %err, i8* nocapture %out_data) #0 {
  br label %1

; <label>:1                                       ; preds = %1, %0
  %i.01 = phi i32 [ 0, %0 ], [ %8, %1 ]
  %2 = getelementptr inbounds i8* %in_data, i32 %i.01
  %3 = load i8* %2, align 1, !tbaa !1
  %4 = getelementptr inbounds i8* %err, i32 %i.01
  %5 = load i8* %4, align 1, !tbaa !1
  %6 = xor i8 %5, %3
  %7 = getelementptr inbounds i8* %out_data, i32 %i.01
  store i8 %6, i8* %7, align 1, !tbaa !1
  %8 = add nsw i32 %i.01, 1
  %exitcond = icmp eq i32 %i.01, 222
  br i1 %exitcond, label %9, label %1

; <label>:9                                       ; preds = %1
  ret void
}

; Function Attrs: nounwind
define void @gfmult_array_array_hw(i8* nocapture %res_vec, i8* nocapture readonly %in_vec0, i8* nocapture readonly %in_vec1) #0 {
  br label %1

; <label>:1                                       ; preds = %1, %0
  %i.01 = phi i32 [ 0, %0 ], [ %8, %1 ]
  %2 = getelementptr inbounds i8* %in_vec0, i32 %i.01
  %3 = load i8* %2, align 1, !tbaa !1
  %4 = getelementptr inbounds i8* %in_vec1, i32 %i.01
  %5 = load i8* %4, align 1, !tbaa !1
  %6 = tail call zeroext i8 @gfmult_hw(i8 zeroext %3, i8 zeroext %5) #6
  %7 = getelementptr inbounds i8* %res_vec, i32 %i.01
  store i8 %6, i8* %7, align 1, !tbaa !1
  %8 = add nsw i32 %i.01, 1
  %exitcond = icmp eq i32 %i.01, 17
  br i1 %exitcond, label %9, label %1

; <label>:9                                       ; preds = %1
  ret void
}

; Function Attrs: nounwind
define void @gfmult_scalar_array_hw1(i8* nocapture %res_vec, i8 zeroext %val, i8* nocapture readonly %in_vec) #0 {
  br label %1

; <label>:1                                       ; preds = %1, %0
  %i.01 = phi i32 [ 0, %0 ], [ %6, %1 ]
  %2 = getelementptr inbounds i8* %in_vec, i32 %i.01
  %3 = load i8* %2, align 1, !tbaa !1
  %4 = tail call zeroext i8 @gfmult_hw(i8 zeroext %val, i8 zeroext %3) #6
  %5 = getelementptr inbounds i8* %res_vec, i32 %i.01
  store i8 %4, i8* %5, align 1, !tbaa !1
  %6 = add nsw i32 %i.01, 1
  %exitcond = icmp eq i32 %i.01, 17
  br i1 %exitcond, label %7, label %1

; <label>:7                                       ; preds = %1
  ret void
}

; Function Attrs: nounwind
define void @gfmult_scalar_array_hw2(i8* nocapture %res_vec, i8 zeroext %val, i8* nocapture readonly %in_vec) #0 {
  br label %1

; <label>:1                                       ; preds = %1, %0
  %i.01 = phi i32 [ 0, %0 ], [ %6, %1 ]
  %2 = getelementptr inbounds i8* %in_vec, i32 %i.01
  %3 = load i8* %2, align 1, !tbaa !1
  %4 = tail call zeroext i8 @gfmult_hw(i8 zeroext %val, i8 zeroext %3) #6
  %5 = getelementptr inbounds i8* %res_vec, i32 %i.01
  store i8 %4, i8* %5, align 1, !tbaa !1
  %6 = add nsw i32 %i.01, 1
  %exitcond = icmp eq i32 %i.01, 17
  br i1 %exitcond, label %7, label %1

; <label>:7                                       ; preds = %1
  ret void
}

; Function Attrs: nounwind
define void @gfadd_array_array_hw1(i8* nocapture %in_vec0, i8* nocapture readonly %in_vec1) #0 {
  br label %1

; <label>:1                                       ; preds = %1, %0
  %i.01 = phi i32 [ 0, %0 ], [ %7, %1 ]
  %2 = getelementptr inbounds i8* %in_vec0, i32 %i.01
  %3 = load i8* %2, align 1, !tbaa !1
  %4 = getelementptr inbounds i8* %in_vec1, i32 %i.01
  %5 = load i8* %4, align 1, !tbaa !1
  %6 = xor i8 %5, %3
  store i8 %6, i8* %2, align 1, !tbaa !1
  %7 = add nsw i32 %i.01, 1
  %exitcond = icmp eq i32 %i.01, 17
  br i1 %exitcond, label %8, label %1

; <label>:8                                       ; preds = %1
  ret void
}

; Function Attrs: nounwind
define void @gfadd_array_array_hw2(i8* nocapture %in_vec0, i8* nocapture readonly %in_vec1) #0 {
  br label %1

; <label>:1                                       ; preds = %1, %0
  %i.01 = phi i32 [ 0, %0 ], [ %7, %1 ]
  %2 = getelementptr inbounds i8* %in_vec0, i32 %i.01
  %3 = load i8* %2, align 1, !tbaa !1
  %4 = getelementptr inbounds i8* %in_vec1, i32 %i.01
  %5 = load i8* %4, align 1, !tbaa !1
  %6 = xor i8 %5, %3
  store i8 %6, i8* %2, align 1, !tbaa !1
  %7 = add nsw i32 %i.01, 1
  %exitcond = icmp eq i32 %i.01, 17
  br i1 %exitcond, label %8, label %1

; <label>:8                                       ; preds = %1
  ret void
}

; Function Attrs: nounwind readonly
define zeroext i8 @gfsum_array_hw(i8* nocapture readonly %in_vec) #4 {
  %1 = load i8* %in_vec, align 1, !tbaa !1
  %2 = getelementptr inbounds i8* %in_vec, i32 1
  %3 = load i8* %2, align 1, !tbaa !1
  %4 = xor i8 %3, %1
  %5 = getelementptr inbounds i8* %in_vec, i32 2
  %6 = load i8* %5, align 1, !tbaa !1
  %7 = xor i8 %6, %4
  %8 = getelementptr inbounds i8* %in_vec, i32 3
  %9 = load i8* %8, align 1, !tbaa !1
  %10 = xor i8 %9, %7
  %11 = getelementptr inbounds i8* %in_vec, i32 4
  %12 = load i8* %11, align 1, !tbaa !1
  %13 = xor i8 %12, %10
  %14 = getelementptr inbounds i8* %in_vec, i32 5
  %15 = load i8* %14, align 1, !tbaa !1
  %16 = xor i8 %15, %13
  %17 = getelementptr inbounds i8* %in_vec, i32 6
  %18 = load i8* %17, align 1, !tbaa !1
  %19 = xor i8 %18, %16
  %20 = getelementptr inbounds i8* %in_vec, i32 7
  %21 = load i8* %20, align 1, !tbaa !1
  %22 = xor i8 %21, %19
  %23 = getelementptr inbounds i8* %in_vec, i32 8
  %24 = load i8* %23, align 1, !tbaa !1
  %25 = xor i8 %24, %22
  %26 = getelementptr inbounds i8* %in_vec, i32 9
  %27 = load i8* %26, align 1, !tbaa !1
  %28 = xor i8 %27, %25
  %29 = getelementptr inbounds i8* %in_vec, i32 10
  %30 = load i8* %29, align 1, !tbaa !1
  %31 = xor i8 %30, %28
  %32 = getelementptr inbounds i8* %in_vec, i32 11
  %33 = load i8* %32, align 1, !tbaa !1
  %34 = xor i8 %33, %31
  %35 = getelementptr inbounds i8* %in_vec, i32 12
  %36 = load i8* %35, align 1, !tbaa !1
  %37 = xor i8 %36, %34
  %38 = getelementptr inbounds i8* %in_vec, i32 13
  %39 = load i8* %38, align 1, !tbaa !1
  %40 = xor i8 %39, %37
  %41 = getelementptr inbounds i8* %in_vec, i32 14
  %42 = load i8* %41, align 1, !tbaa !1
  %43 = xor i8 %42, %40
  %44 = getelementptr inbounds i8* %in_vec, i32 15
  %45 = load i8* %44, align 1, !tbaa !1
  %46 = xor i8 %45, %43
  %47 = getelementptr inbounds i8* %in_vec, i32 16
  %48 = load i8* %47, align 1, !tbaa !1
  %49 = xor i8 %48, %46
  %50 = getelementptr inbounds i8* %in_vec, i32 17
  %51 = load i8* %50, align 1, !tbaa !1
  %52 = xor i8 %51, %49
  ret i8 %52
}

; Function Attrs: nounwind
define void @berlekamp(i8 zeroext %t, i8* nocapture readonly %s, i8* nocapture %c_out, i8* nocapture %w_out) #0 {
  %p = alloca [18 x i8], align 1
  %a = alloca [18 x i8], align 1
  %t1 = alloca [18 x i8], align 1
  %t2 = alloca [18 x i8], align 1
  %syn_shift_reg = alloca [18 x i8], align 1
  %temp = alloca [18 x i8], align 1
  %c = alloca [18 x i8], align 1
  %w = alloca [18 x i8], align 1
  %1 = getelementptr inbounds [18 x i8]* %c, i32 0, i32 0
  store i8 1, i8* %1, align 1, !tbaa !1
  %2 = getelementptr inbounds [18 x i8]* %p, i32 0, i32 0
  store i8 1, i8* %2, align 1, !tbaa !1
  %3 = getelementptr inbounds [18 x i8]* %w, i32 0, i32 0
  store i8 0, i8* %3, align 1, !tbaa !1
  %4 = getelementptr inbounds [18 x i8]* %a, i32 0, i32 0
  store i8 1, i8* %4, align 1, !tbaa !1
  %5 = getelementptr inbounds [18 x i8]* %syn_shift_reg, i32 0, i32 0
  store i8 0, i8* %5, align 1, !tbaa !1
  %6 = getelementptr inbounds [18 x i8]* %temp, i32 0, i32 0
  store i8 0, i8* %6, align 1, !tbaa !1
  br label %24

.preheader13:                                     ; preds = %24
  %7 = getelementptr inbounds [18 x i8]* %temp, i32 0, i32 1
  %8 = getelementptr inbounds [18 x i8]* %temp, i32 0, i32 2
  %9 = getelementptr inbounds [18 x i8]* %temp, i32 0, i32 3
  %10 = getelementptr inbounds [18 x i8]* %temp, i32 0, i32 4
  %11 = getelementptr inbounds [18 x i8]* %temp, i32 0, i32 5
  %12 = getelementptr inbounds [18 x i8]* %temp, i32 0, i32 6
  %13 = getelementptr inbounds [18 x i8]* %temp, i32 0, i32 7
  %14 = getelementptr inbounds [18 x i8]* %temp, i32 0, i32 8
  %15 = getelementptr inbounds [18 x i8]* %temp, i32 0, i32 9
  %16 = getelementptr inbounds [18 x i8]* %temp, i32 0, i32 10
  %17 = getelementptr inbounds [18 x i8]* %temp, i32 0, i32 11
  %18 = getelementptr inbounds [18 x i8]* %temp, i32 0, i32 12
  %19 = getelementptr inbounds [18 x i8]* %temp, i32 0, i32 13
  %20 = getelementptr inbounds [18 x i8]* %temp, i32 0, i32 14
  %21 = getelementptr inbounds [18 x i8]* %temp, i32 0, i32 15
  %22 = getelementptr inbounds [18 x i8]* %temp, i32 0, i32 16
  %23 = getelementptr inbounds [18 x i8]* %temp, i32 0, i32 17
  br label %34

; <label>:24                                      ; preds = %24, %0
  %i.022 = phi i32 [ 1, %0 ], [ %33, %24 ]
  tail call void @__legup_label(i8* getelementptr inbounds ([9 x i8]* @.str2, i32 0, i32 0)) #5
  %25 = getelementptr inbounds [18 x i8]* %c, i32 0, i32 %i.022
  store i8 0, i8* %25, align 1, !tbaa !1
  %26 = getelementptr inbounds [18 x i8]* %w, i32 0, i32 %i.022
  store i8 0, i8* %26, align 1, !tbaa !1
  %27 = getelementptr inbounds [18 x i8]* %p, i32 0, i32 %i.022
  store i8 0, i8* %27, align 1, !tbaa !1
  %28 = getelementptr inbounds [18 x i8]* %a, i32 0, i32 %i.022
  store i8 0, i8* %28, align 1, !tbaa !1
  %29 = getelementptr inbounds [18 x i8]* %t1, i32 0, i32 %i.022
  store i8 0, i8* %29, align 1, !tbaa !1
  %30 = getelementptr inbounds [18 x i8]* %t2, i32 0, i32 %i.022
  store i8 0, i8* %30, align 1, !tbaa !1
  %31 = getelementptr inbounds [18 x i8]* %syn_shift_reg, i32 0, i32 %i.022
  store i8 0, i8* %31, align 1, !tbaa !1
  %32 = getelementptr inbounds [18 x i8]* %temp, i32 0, i32 %i.022
  store i8 0, i8* %32, align 1, !tbaa !1
  %33 = add nsw i32 %i.022, 1
  %exitcond26 = icmp eq i32 %i.022, 17
  br i1 %exitcond26, label %.preheader13, label %24

; <label>:34                                      ; preds = %gfadd_array_array_hw2.exit, %.preheader13
  %i1.020 = phi i32 [ 0, %.preheader13 ], [ %143, %gfadd_array_array_hw2.exit ]
  %dstar.019 = phi i8 [ 1, %.preheader13 ], [ %dstar.2, %gfadd_array_array_hw2.exit ]
  %l.018 = phi i8 [ 0, %.preheader13 ], [ %l.2, %gfadd_array_array_hw2.exit ]
  tail call void @__legup_label(i8* getelementptr inbounds ([10 x i8]* @.str3, i32 0, i32 0)) #5
  br label %35

; <label>:35                                      ; preds = %35, %34
  %k.015 = phi i32 [ 17, %34 ], [ %36, %35 ]
  tail call void @__legup_label(i8* getelementptr inbounds ([10 x i8]* @.str4, i32 0, i32 0)) #5
  %36 = add nsw i32 %k.015, -1
  %37 = getelementptr inbounds [18 x i8]* %syn_shift_reg, i32 0, i32 %36
  %38 = load i8* %37, align 1, !tbaa !1
  %39 = getelementptr inbounds [18 x i8]* %syn_shift_reg, i32 0, i32 %k.015
  store i8 %38, i8* %39, align 1, !tbaa !1
  %40 = getelementptr inbounds [18 x i8]* %p, i32 0, i32 %36
  %41 = load i8* %40, align 1, !tbaa !1
  %42 = getelementptr inbounds [18 x i8]* %p, i32 0, i32 %k.015
  store i8 %41, i8* %42, align 1, !tbaa !1
  %43 = getelementptr inbounds [18 x i8]* %a, i32 0, i32 %36
  %44 = load i8* %43, align 1, !tbaa !1
  %45 = getelementptr inbounds [18 x i8]* %a, i32 0, i32 %k.015
  store i8 %44, i8* %45, align 1, !tbaa !1
  %46 = icmp sgt i32 %36, 0
  br i1 %46, label %35, label %47

; <label>:47                                      ; preds = %35
  %48 = getelementptr inbounds i8* %s, i32 %i1.020
  %49 = load i8* %48, align 1, !tbaa !1
  store i8 %49, i8* %5, align 1, !tbaa !1
  store i8 0, i8* %2, align 1, !tbaa !1
  store i8 0, i8* %4, align 1, !tbaa !1
  br label %50

; <label>:50                                      ; preds = %._crit_edge, %47
  %51 = phi i8 [ %49, %47 ], [ %.pre, %._crit_edge ]
  %i.01.i = phi i32 [ 0, %47 ], [ %56, %._crit_edge ]
  %52 = getelementptr inbounds [18 x i8]* %c, i32 0, i32 %i.01.i
  %53 = load i8* %52, align 1, !tbaa !1
  %54 = tail call zeroext i8 @gfmult_hw(i8 zeroext %53, i8 zeroext %51) #5
  %55 = getelementptr inbounds [18 x i8]* %temp, i32 0, i32 %i.01.i
  store i8 %54, i8* %55, align 1, !tbaa !1
  %56 = add nsw i32 %i.01.i, 1
  %exitcond.i = icmp eq i32 %i.01.i, 17
  br i1 %exitcond.i, label %gfmult_array_array_hw.exit, label %._crit_edge

._crit_edge:                                      ; preds = %50
  %.phi.trans.insert = getelementptr inbounds [18 x i8]* %syn_shift_reg, i32 0, i32 %56
  %.pre = load i8* %.phi.trans.insert, align 1, !tbaa !1
  br label %50

gfmult_array_array_hw.exit:                       ; preds = %50
  %57 = load i8* %6, align 1, !tbaa !1
  %58 = load i8* %7, align 1, !tbaa !1
  %59 = xor i8 %58, %57
  %60 = load i8* %8, align 1, !tbaa !1
  %61 = xor i8 %59, %60
  %62 = load i8* %9, align 1, !tbaa !1
  %63 = xor i8 %61, %62
  %64 = load i8* %10, align 1, !tbaa !1
  %65 = xor i8 %63, %64
  %66 = load i8* %11, align 1, !tbaa !1
  %67 = xor i8 %65, %66
  %68 = load i8* %12, align 1, !tbaa !1
  %69 = xor i8 %67, %68
  %70 = load i8* %13, align 1, !tbaa !1
  %71 = xor i8 %69, %70
  %72 = load i8* %14, align 1, !tbaa !1
  %73 = xor i8 %71, %72
  %74 = load i8* %15, align 1, !tbaa !1
  %75 = xor i8 %73, %74
  %76 = load i8* %16, align 1, !tbaa !1
  %77 = xor i8 %75, %76
  %78 = load i8* %17, align 1, !tbaa !1
  %79 = xor i8 %77, %78
  %80 = load i8* %18, align 1, !tbaa !1
  %81 = xor i8 %79, %80
  %82 = load i8* %19, align 1, !tbaa !1
  %83 = xor i8 %81, %82
  %84 = load i8* %20, align 1, !tbaa !1
  %85 = xor i8 %83, %84
  %86 = load i8* %21, align 1, !tbaa !1
  %87 = xor i8 %85, %86
  %88 = load i8* %22, align 1, !tbaa !1
  %89 = xor i8 %87, %88
  %90 = load i8* %23, align 1, !tbaa !1
  %91 = xor i8 %90, %89
  %92 = icmp eq i8 %90, %89
  br i1 %92, label %gfadd_array_array_hw2.exit, label %.preheader32.preheader

.preheader32.preheader:                           ; preds = %gfmult_array_array_hw.exit
  br label %.preheader32

.preheader32:                                     ; preds = %._crit_edge27, %.preheader32.preheader
  %93 = phi i8 [ %.pre31, %._crit_edge27 ], [ 0, %.preheader32.preheader ]
  %94 = phi i8 [ %.pre29, %._crit_edge27 ], [ 0, %.preheader32.preheader ]
  %k2.016 = phi i32 [ %97, %._crit_edge27 ], [ 0, %.preheader32.preheader ]
  tail call void @__legup_label(i8* getelementptr inbounds ([12 x i8]* @.str5, i32 0, i32 0)) #5
  %95 = getelementptr inbounds [18 x i8]* %t1, i32 0, i32 %k2.016
  store i8 %94, i8* %95, align 1, !tbaa !1
  %96 = getelementptr inbounds [18 x i8]* %t2, i32 0, i32 %k2.016
  store i8 %93, i8* %96, align 1, !tbaa !1
  %97 = add nsw i32 %k2.016, 1
  %exitcond23 = icmp eq i32 %k2.016, 17
  br i1 %exitcond23, label %98, label %._crit_edge27

._crit_edge27:                                    ; preds = %.preheader32
  %.phi.trans.insert28 = getelementptr inbounds [18 x i8]* %p, i32 0, i32 %97
  %.pre29 = load i8* %.phi.trans.insert28, align 1, !tbaa !1
  %.phi.trans.insert30 = getelementptr inbounds [18 x i8]* %a, i32 0, i32 %97
  %.pre31 = load i8* %.phi.trans.insert30, align 1, !tbaa !1
  br label %.preheader32

; <label>:98                                      ; preds = %.preheader32
  %99 = tail call zeroext i8 @gfmult_hw(i8 zeroext %91, i8 zeroext %dstar.019) #6
  %100 = zext i8 %l.018 to i32
  %101 = shl nuw nsw i32 %100, 1
  %102 = icmp slt i32 %i1.020, %101
  br i1 %102, label %119, label %103

; <label>:103                                     ; preds = %98
  %104 = sub i32 1, %100
  %105 = add i32 %104, %i1.020
  br label %106

; <label>:106                                     ; preds = %106, %103
  %k3.017 = phi i32 [ 0, %103 ], [ %113, %106 ]
  tail call void @__legup_label(i8* getelementptr inbounds ([12 x i8]* @.str6, i32 0, i32 0)) #5
  %107 = getelementptr inbounds [18 x i8]* %c, i32 0, i32 %k3.017
  %108 = load i8* %107, align 1, !tbaa !1
  %109 = getelementptr inbounds [18 x i8]* %p, i32 0, i32 %k3.017
  store i8 %108, i8* %109, align 1, !tbaa !1
  %110 = getelementptr inbounds [18 x i8]* %w, i32 0, i32 %k3.017
  %111 = load i8* %110, align 1, !tbaa !1
  %112 = getelementptr inbounds [18 x i8]* %a, i32 0, i32 %k3.017
  store i8 %111, i8* %112, align 1, !tbaa !1
  %113 = add nsw i32 %k3.017, 1
  %exitcond24 = icmp eq i32 %k3.017, 17
  br i1 %exitcond24, label %114, label %106

; <label>:114                                     ; preds = %106
  %115 = trunc i32 %105 to i8
  %116 = zext i8 %91 to i32
  %117 = getelementptr inbounds [256 x i8]* @gfinv_lut.lut, i32 0, i32 %116
  %118 = load i8* %117, align 1, !tbaa !1
  br label %119

; <label>:119                                     ; preds = %114, %98
  %l.1 = phi i8 [ %115, %114 ], [ %l.018, %98 ]
  %dstar.1 = phi i8 [ %118, %114 ], [ %dstar.019, %98 ]
  br label %120

; <label>:120                                     ; preds = %120, %119
  %i.01.i11 = phi i32 [ 0, %119 ], [ %125, %120 ]
  %121 = getelementptr inbounds [18 x i8]* %t1, i32 0, i32 %i.01.i11
  %122 = load i8* %121, align 1, !tbaa !1
  %123 = tail call zeroext i8 @gfmult_hw(i8 zeroext %99, i8 zeroext %122) #5
  %124 = getelementptr inbounds [18 x i8]* %temp, i32 0, i32 %i.01.i11
  store i8 %123, i8* %124, align 1, !tbaa !1
  %125 = add nsw i32 %i.01.i11, 1
  %exitcond.i12 = icmp eq i32 %i.01.i11, 17
  br i1 %exitcond.i12, label %gfmult_scalar_array_hw1.exit.preheader, label %120

gfmult_scalar_array_hw1.exit.preheader:           ; preds = %120
  br label %gfmult_scalar_array_hw1.exit

gfmult_scalar_array_hw1.exit:                     ; preds = %gfmult_scalar_array_hw1.exit, %gfmult_scalar_array_hw1.exit.preheader
  %i.01.i9 = phi i32 [ %131, %gfmult_scalar_array_hw1.exit ], [ 0, %gfmult_scalar_array_hw1.exit.preheader ]
  %126 = getelementptr inbounds [18 x i8]* %c, i32 0, i32 %i.01.i9
  %127 = load i8* %126, align 1, !tbaa !1
  %128 = getelementptr inbounds [18 x i8]* %temp, i32 0, i32 %i.01.i9
  %129 = load i8* %128, align 1, !tbaa !1
  %130 = xor i8 %129, %127
  store i8 %130, i8* %126, align 1, !tbaa !1
  %131 = add nsw i32 %i.01.i9, 1
  %exitcond.i10 = icmp eq i32 %i.01.i9, 17
  br i1 %exitcond.i10, label %gfadd_array_array_hw1.exit.preheader, label %gfmult_scalar_array_hw1.exit

gfadd_array_array_hw1.exit.preheader:             ; preds = %gfmult_scalar_array_hw1.exit
  br label %gfadd_array_array_hw1.exit

gfadd_array_array_hw1.exit:                       ; preds = %gfadd_array_array_hw1.exit, %gfadd_array_array_hw1.exit.preheader
  %i.01.i7 = phi i32 [ %136, %gfadd_array_array_hw1.exit ], [ 0, %gfadd_array_array_hw1.exit.preheader ]
  %132 = getelementptr inbounds [18 x i8]* %t2, i32 0, i32 %i.01.i7
  %133 = load i8* %132, align 1, !tbaa !1
  %134 = tail call zeroext i8 @gfmult_hw(i8 zeroext %99, i8 zeroext %133) #5
  %135 = getelementptr inbounds [18 x i8]* %temp, i32 0, i32 %i.01.i7
  store i8 %134, i8* %135, align 1, !tbaa !1
  %136 = add nsw i32 %i.01.i7, 1
  %exitcond.i8 = icmp eq i32 %i.01.i7, 17
  br i1 %exitcond.i8, label %gfmult_scalar_array_hw2.exit.preheader, label %gfadd_array_array_hw1.exit

gfmult_scalar_array_hw2.exit.preheader:           ; preds = %gfadd_array_array_hw1.exit
  br label %gfmult_scalar_array_hw2.exit

gfmult_scalar_array_hw2.exit:                     ; preds = %gfmult_scalar_array_hw2.exit, %gfmult_scalar_array_hw2.exit.preheader
  %i.01.i5 = phi i32 [ %142, %gfmult_scalar_array_hw2.exit ], [ 0, %gfmult_scalar_array_hw2.exit.preheader ]
  %137 = getelementptr inbounds [18 x i8]* %w, i32 0, i32 %i.01.i5
  %138 = load i8* %137, align 1, !tbaa !1
  %139 = getelementptr inbounds [18 x i8]* %temp, i32 0, i32 %i.01.i5
  %140 = load i8* %139, align 1, !tbaa !1
  %141 = xor i8 %140, %138
  store i8 %141, i8* %137, align 1, !tbaa !1
  %142 = add nsw i32 %i.01.i5, 1
  %exitcond.i6 = icmp eq i32 %i.01.i5, 17
  br i1 %exitcond.i6, label %gfadd_array_array_hw2.exit.loopexit, label %gfmult_scalar_array_hw2.exit

gfadd_array_array_hw2.exit.loopexit:              ; preds = %gfmult_scalar_array_hw2.exit
  br label %gfadd_array_array_hw2.exit

gfadd_array_array_hw2.exit:                       ; preds = %gfadd_array_array_hw2.exit.loopexit, %gfmult_array_array_hw.exit
  %l.2 = phi i8 [ %l.018, %gfmult_array_array_hw.exit ], [ %l.1, %gfadd_array_array_hw2.exit.loopexit ]
  %dstar.2 = phi i8 [ %dstar.019, %gfmult_array_array_hw.exit ], [ %dstar.1, %gfadd_array_array_hw2.exit.loopexit ]
  %143 = add nsw i32 %i1.020, 1
  %exitcond25 = icmp eq i32 %i1.020, 31
  br i1 %exitcond25, label %.preheader.preheader, label %34

.preheader.preheader:                             ; preds = %gfadd_array_array_hw2.exit
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader
  %k4.014 = phi i32 [ %144, %.preheader ], [ 0, %.preheader.preheader ]
  tail call void @__legup_label(i8* getelementptr inbounds ([9 x i8]* @.str7, i32 0, i32 0)) #5
  %144 = add nsw i32 %k4.014, 1
  %145 = getelementptr inbounds [18 x i8]* %c, i32 0, i32 %144
  %146 = load i8* %145, align 1, !tbaa !1
  %147 = getelementptr inbounds i8* %c_out, i32 %k4.014
  store i8 %146, i8* %147, align 1, !tbaa !1
  %148 = getelementptr inbounds [18 x i8]* %w, i32 0, i32 %144
  %149 = load i8* %148, align 1, !tbaa !1
  %150 = getelementptr inbounds i8* %w_out, i32 %k4.014
  store i8 %149, i8* %150, align 1, !tbaa !1
  %exitcond = icmp eq i32 %k4.014, 15
  br i1 %exitcond, label %151, label %.preheader

; <label>:151                                     ; preds = %.preheader
  ret void
}

; Function Attrs: nounwind
define void @chien_search(i8 zeroext %k, i8 zeroext %t, i8* nocapture readonly %lambda, i8* nocapture %err_no, i8* nocapture %err_loc, i8* nocapture %alpha_inv) #0 {
.preheader719:
  %lambda_a = alloca [16 x i8], align 1
  %err_loc_temp = alloca [16 x i8], align 1
  %alpha_inv_temp = alloca [16 x i8], align 1
  %0 = load i8* %lambda, align 1, !tbaa !1
  %1 = getelementptr inbounds [16 x i8]* %lambda_a, i32 0, i32 0
  store i8 %0, i8* %1, align 1, !tbaa !1
  %2 = getelementptr inbounds i8* %lambda, i32 1
  %3 = load i8* %2, align 1, !tbaa !1
  %4 = getelementptr inbounds [16 x i8]* %lambda_a, i32 0, i32 1
  store i8 %3, i8* %4, align 1, !tbaa !1
  %5 = getelementptr inbounds i8* %lambda, i32 2
  %6 = load i8* %5, align 1, !tbaa !1
  %7 = getelementptr inbounds [16 x i8]* %lambda_a, i32 0, i32 2
  store i8 %6, i8* %7, align 1, !tbaa !1
  %8 = getelementptr inbounds i8* %lambda, i32 3
  %9 = load i8* %8, align 1, !tbaa !1
  %10 = getelementptr inbounds [16 x i8]* %lambda_a, i32 0, i32 3
  store i8 %9, i8* %10, align 1, !tbaa !1
  %11 = getelementptr inbounds i8* %lambda, i32 4
  %12 = load i8* %11, align 1, !tbaa !1
  %13 = getelementptr inbounds [16 x i8]* %lambda_a, i32 0, i32 4
  store i8 %12, i8* %13, align 1, !tbaa !1
  %14 = getelementptr inbounds i8* %lambda, i32 5
  %15 = load i8* %14, align 1, !tbaa !1
  %16 = getelementptr inbounds [16 x i8]* %lambda_a, i32 0, i32 5
  store i8 %15, i8* %16, align 1, !tbaa !1
  %17 = getelementptr inbounds i8* %lambda, i32 6
  %18 = load i8* %17, align 1, !tbaa !1
  %19 = getelementptr inbounds [16 x i8]* %lambda_a, i32 0, i32 6
  store i8 %18, i8* %19, align 1, !tbaa !1
  %20 = getelementptr inbounds i8* %lambda, i32 7
  %21 = load i8* %20, align 1, !tbaa !1
  %22 = getelementptr inbounds [16 x i8]* %lambda_a, i32 0, i32 7
  store i8 %21, i8* %22, align 1, !tbaa !1
  %23 = getelementptr inbounds i8* %lambda, i32 8
  %24 = load i8* %23, align 1, !tbaa !1
  %25 = getelementptr inbounds [16 x i8]* %lambda_a, i32 0, i32 8
  store i8 %24, i8* %25, align 1, !tbaa !1
  %26 = getelementptr inbounds i8* %lambda, i32 9
  %27 = load i8* %26, align 1, !tbaa !1
  %28 = getelementptr inbounds [16 x i8]* %lambda_a, i32 0, i32 9
  store i8 %27, i8* %28, align 1, !tbaa !1
  %29 = getelementptr inbounds i8* %lambda, i32 10
  %30 = load i8* %29, align 1, !tbaa !1
  %31 = getelementptr inbounds [16 x i8]* %lambda_a, i32 0, i32 10
  store i8 %30, i8* %31, align 1, !tbaa !1
  %32 = getelementptr inbounds i8* %lambda, i32 11
  %33 = load i8* %32, align 1, !tbaa !1
  %34 = getelementptr inbounds [16 x i8]* %lambda_a, i32 0, i32 11
  store i8 %33, i8* %34, align 1, !tbaa !1
  %35 = getelementptr inbounds i8* %lambda, i32 12
  %36 = load i8* %35, align 1, !tbaa !1
  %37 = getelementptr inbounds [16 x i8]* %lambda_a, i32 0, i32 12
  store i8 %36, i8* %37, align 1, !tbaa !1
  %38 = getelementptr inbounds i8* %lambda, i32 13
  %39 = load i8* %38, align 1, !tbaa !1
  %40 = getelementptr inbounds [16 x i8]* %lambda_a, i32 0, i32 13
  store i8 %39, i8* %40, align 1, !tbaa !1
  %41 = getelementptr inbounds i8* %lambda, i32 14
  %42 = load i8* %41, align 1, !tbaa !1
  %43 = getelementptr inbounds [16 x i8]* %lambda_a, i32 0, i32 14
  store i8 %42, i8* %43, align 1, !tbaa !1
  %44 = getelementptr inbounds i8* %lambda, i32 15
  %45 = load i8* %44, align 1, !tbaa !1
  %46 = getelementptr inbounds [16 x i8]* %lambda_a, i32 0, i32 15
  store i8 %45, i8* %46, align 1, !tbaa !1
  br label %47

; <label>:47                                      ; preds = %100, %.preheader719
  %48 = phi i8 [ %0, %.preheader719 ], [ %49, %100 ]
  %i1.014 = phi i32 [ 254, %.preheader719 ], [ %101, %100 ]
  %alphainv.013 = phi i32 [ 2, %.preheader719 ], [ %phitmp5, %100 ]
  %err_cnt.012 = phi i8 [ 0, %.preheader719 ], [ %err_cnt.1, %100 ]
  tail call void @__legup_label(i8* getelementptr inbounds ([20 x i8]* @.str8, i32 0, i32 0)) #5
  br label %85

.preheader6:                                      ; preds = %85
  %49 = load i8* %1, align 1, !tbaa !1
  %50 = xor i8 %49, 1
  %51 = load i8* %4, align 1, !tbaa !1
  %52 = xor i8 %51, %50
  %53 = load i8* %7, align 1, !tbaa !1
  %54 = xor i8 %53, %52
  %55 = load i8* %10, align 1, !tbaa !1
  %56 = xor i8 %55, %54
  %57 = load i8* %13, align 1, !tbaa !1
  %58 = xor i8 %57, %56
  %59 = load i8* %16, align 1, !tbaa !1
  %60 = xor i8 %59, %58
  %61 = load i8* %19, align 1, !tbaa !1
  %62 = xor i8 %61, %60
  %63 = load i8* %22, align 1, !tbaa !1
  %64 = xor i8 %63, %62
  %65 = load i8* %25, align 1, !tbaa !1
  %66 = xor i8 %65, %64
  %67 = load i8* %28, align 1, !tbaa !1
  %68 = xor i8 %67, %66
  %69 = load i8* %31, align 1, !tbaa !1
  %70 = xor i8 %69, %68
  %71 = load i8* %34, align 1, !tbaa !1
  %72 = xor i8 %71, %70
  %73 = load i8* %37, align 1, !tbaa !1
  %74 = xor i8 %73, %72
  %75 = load i8* %40, align 1, !tbaa !1
  %76 = xor i8 %75, %74
  %77 = load i8* %43, align 1, !tbaa !1
  %78 = xor i8 %77, %76
  %79 = load i8* %46, align 1, !tbaa !1
  %80 = and i32 %alphainv.013, 256
  %81 = icmp eq i32 %80, 0
  %82 = xor i32 %alphainv.013, 29
  %temp.3.6..i = select i1 %81, i32 %alphainv.013, i32 %82
  %i1.0.off = add i32 %i1.014, -32
  %83 = icmp ult i32 %i1.0.off, 223
  %84 = icmp eq i8 %79, %78
  %or.cond = and i1 %83, %84
  br i1 %or.cond, label %92, label %100

; <label>:85                                      ; preds = %._crit_edge, %47
  %86 = phi i8 [ %48, %47 ], [ %.pre, %._crit_edge ]
  %j.09 = phi i32 [ 0, %47 ], [ %88, %._crit_edge ]
  %87 = getelementptr inbounds [16 x i8]* %lambda_a, i32 0, i32 %j.09
  %88 = add nsw i32 %j.09, 1
  %89 = getelementptr inbounds [256 x i8]* @alpha.alpha_lut, i32 0, i32 %88
  %90 = load i8* %89, align 1, !tbaa !1
  %91 = tail call zeroext i8 @gfmult_hw(i8 zeroext %86, i8 zeroext %90) #6
  store i8 %91, i8* %87, align 1, !tbaa !1
  %exitcond16 = icmp eq i32 %j.09, 15
  br i1 %exitcond16, label %.preheader6, label %._crit_edge

._crit_edge:                                      ; preds = %85
  %.phi.trans.insert = getelementptr inbounds [16 x i8]* %lambda_a, i32 0, i32 %88
  %.pre = load i8* %.phi.trans.insert, align 1, !tbaa !1
  br label %85

; <label>:92                                      ; preds = %.preheader6
  %93 = trunc i32 %temp.3.6..i to i8
  tail call void @__legup_label(i8* getelementptr inbounds ([13 x i8]* @.str9, i32 0, i32 0)) #5
  %94 = add nsw i32 %i1.014, 224
  %95 = trunc i32 %94 to i8
  %96 = zext i8 %err_cnt.012 to i32
  %97 = getelementptr inbounds [16 x i8]* %err_loc_temp, i32 0, i32 %96
  store i8 %95, i8* %97, align 1, !tbaa !1
  %98 = getelementptr inbounds [16 x i8]* %alpha_inv_temp, i32 0, i32 %96
  store i8 %93, i8* %98, align 1, !tbaa !1
  %99 = add i8 %err_cnt.012, 1
  br label %100

; <label>:100                                     ; preds = %92, %.preheader6
  %err_cnt.1 = phi i8 [ %99, %92 ], [ %err_cnt.012, %.preheader6 ]
  %101 = add nsw i32 %i1.014, -1
  %phitmp = shl nuw nsw i32 %temp.3.6..i, 1
  %phitmp5 = and i32 %phitmp, 510
  %102 = icmp sgt i32 %i1.014, 0
  br i1 %102, label %47, label %.preheader.preheader

.preheader.preheader:                             ; preds = %100
  %err_cnt.1.lcssa = phi i8 [ %err_cnt.1, %100 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader
  %i3.08 = phi i32 [ %109, %.preheader ], [ 0, %.preheader.preheader ]
  tail call void @__legup_label(i8* getelementptr inbounds ([21 x i8]* @.str10, i32 0, i32 0)) #5
  %103 = getelementptr inbounds [16 x i8]* %err_loc_temp, i32 0, i32 %i3.08
  %104 = load i8* %103, align 1, !tbaa !1
  %105 = getelementptr inbounds i8* %err_loc, i32 %i3.08
  store i8 %104, i8* %105, align 1, !tbaa !1
  %106 = getelementptr inbounds [16 x i8]* %alpha_inv_temp, i32 0, i32 %i3.08
  %107 = load i8* %106, align 1, !tbaa !1
  %108 = getelementptr inbounds i8* %alpha_inv, i32 %i3.08
  store i8 %107, i8* %108, align 1, !tbaa !1
  %109 = add nsw i32 %i3.08, 1
  %exitcond = icmp eq i32 %i3.08, 15
  br i1 %exitcond, label %110, label %.preheader

; <label>:110                                     ; preds = %.preheader
  store i8 %err_cnt.1.lcssa, i8* %err_no, align 1, !tbaa !1
  ret void
}

; Function Attrs: nounwind
define i32 @main() #0 {
  %out_d = alloca [223 x i8], align 1
  %s = alloca [32 x i8], align 1
  %lambda = alloca [16 x i8], align 1
  %omega = alloca [16 x i8], align 1
  %err_no = alloca i8, align 1
  %err_loc = alloca [223 x i8], align 1
  %alpha_inv = alloca [16 x i8], align 1
  %err = alloca [223 x i8], align 1
  %in_data = alloca [223 x i8], align 1
  %in_d_2 = alloca [255 x i8], align 1
  %1 = getelementptr inbounds [223 x i8]* %out_d, i32 0, i32 0
  call void @llvm.lifetime.start(i64 223, i8* %1) #3
  %2 = getelementptr inbounds [223 x i8]* %err_loc, i32 0, i32 0
  %3 = getelementptr inbounds [223 x i8]* %err, i32 0, i32 0
  %4 = getelementptr inbounds [223 x i8]* %in_data, i32 0, i32 0
  %5 = getelementptr inbounds [255 x i8]* %in_d_2, i32 0, i32 0
  %6 = getelementptr inbounds [32 x i8]* %s, i32 0, i32 0
  %7 = getelementptr inbounds [16 x i8]* %lambda, i32 0, i32 0
  %8 = getelementptr inbounds [16 x i8]* %omega, i32 0, i32 0
  %9 = getelementptr inbounds [16 x i8]* %alpha_inv, i32 0, i32 0
  br label %10

; <label>:10                                      ; preds = %error_correct.exit, %0
  %j.06 = phi i32 [ 0, %0 ], [ %45, %error_correct.exit ]
  call void @llvm.lifetime.start(i64 223, i8* %2) #3
  call void @llvm.lifetime.start(i64 223, i8* %3) #3
  call void @llvm.lifetime.start(i64 223, i8* %4) #3
  call void @llvm.lifetime.start(i64 255, i8* %5) #3
  br label %11

; <label>:11                                      ; preds = %11, %10
  %i.15 = phi i32 [ 0, %10 ], [ %15, %11 ]
  %12 = getelementptr inbounds [255 x i8]* @main.in_d, i32 0, i32 %i.15
  %13 = load i8* %12, align 1, !tbaa !1
  %14 = getelementptr inbounds [255 x i8]* %in_d_2, i32 0, i32 %i.15
  store i8 %13, i8* %14, align 1, !tbaa !1
  %15 = add nsw i32 %i.15, 1
  %exitcond = icmp eq i32 %i.15, 254
  br i1 %exitcond, label %.preheader.preheader, label %11

.preheader.preheader:                             ; preds = %11
  br label %.preheader

.preheader:                                       ; preds = %.backedge, %.preheader.preheader
  %i.01.i = phi i32 [ %i.01.i.be, %.backedge ], [ 0, %.preheader.preheader ]
  %16 = icmp slt i32 %i.01.i, 223
  br i1 %16, label %18, label %.thread

.thread:                                          ; preds = %.preheader
  %17 = getelementptr inbounds [223 x i8]* %in_data, i32 0, i32 %i.01.i
  store i8 0, i8* %17, align 1, !tbaa !1
  br label %.backedge

; <label>:18                                      ; preds = %.preheader
  %19 = getelementptr inbounds [255 x i8]* @main.in_d, i32 0, i32 %i.01.i
  %20 = load i8* %19, align 1, !tbaa !1
  %21 = getelementptr inbounds [223 x i8]* %in_data, i32 0, i32 %i.01.i
  store i8 %20, i8* %21, align 1, !tbaa !1
  %exitcond.i = icmp eq i32 %i.01.i, 222
  br i1 %exitcond.i, label %rs_fifo.exit.preheader, label %.backedge

rs_fifo.exit.preheader:                           ; preds = %18
  br label %rs_fifo.exit

.backedge:                                        ; preds = %18, %.thread
  %i.01.i.be = add nsw i32 %i.01.i, 1
  br label %.preheader

rs_fifo.exit:                                     ; preds = %rs_fifo.exit, %rs_fifo.exit.preheader
  %j.04.i = phi i32 [ %23, %rs_fifo.exit ], [ 0, %rs_fifo.exit.preheader ]
  %22 = getelementptr inbounds [32 x i8]* %s, i32 0, i32 %j.04.i
  store i8 0, i8* %22, align 1, !tbaa !1
  %23 = add nsw i32 %j.04.i, 1
  %exitcond6.i = icmp eq i32 %j.04.i, 31
  br i1 %exitcond6.i, label %.preheader.i.preheader, label %rs_fifo.exit

.preheader.i.preheader:                           ; preds = %rs_fifo.exit
  br label %.preheader.i

.preheader.i:                                     ; preds = %34, %.preheader.i.preheader
  %i.03.i = phi i32 [ %35, %34 ], [ 0, %.preheader.i.preheader ]
  tail call void @__legup_label(i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0)) #5
  %24 = getelementptr inbounds [255 x i8]* %in_d_2, i32 0, i32 %i.03.i
  %25 = load i8* %24, align 1, !tbaa !1
  br label %26

; <label>:26                                      ; preds = %26, %.preheader.i
  %j1.02.i = phi i32 [ 0, %.preheader.i ], [ %29, %26 ]
  tail call void @__legup_label(i8* getelementptr inbounds ([10 x i8]* @.str1, i32 0, i32 0)) #5
  %27 = getelementptr inbounds [32 x i8]* %s, i32 0, i32 %j1.02.i
  %28 = load i8* %27, align 1, !tbaa !1
  %29 = add nsw i32 %j1.02.i, 1
  %30 = getelementptr inbounds [256 x i8]* @alpha.alpha_lut, i32 0, i32 %29
  %31 = load i8* %30, align 1, !tbaa !1
  %32 = tail call zeroext i8 @gfmult_hw(i8 zeroext %28, i8 zeroext %31) #5
  %33 = xor i8 %32, %25
  store i8 %33, i8* %27, align 1, !tbaa !1
  %exitcond.i3 = icmp eq i32 %j1.02.i, 31
  br i1 %exitcond.i3, label %34, label %26

; <label>:34                                      ; preds = %26
  %35 = add nsw i32 %i.03.i, 1
  %exitcond5.i = icmp eq i32 %i.03.i, 254
  br i1 %exitcond5.i, label %syndrome.exit, label %.preheader.i

syndrome.exit:                                    ; preds = %34
  call void @berlekamp(i8 zeroext undef, i8* %6, i8* %7, i8* %8) #6
  call void @chien_search(i8 zeroext undef, i8 zeroext undef, i8* %7, i8* %err_no, i8* %2, i8* %9) #6
  %36 = load i8* %err_no, align 1, !tbaa !1
  call void @error_mag(i8 zeroext undef, i8* %7, i8* %8, i8 zeroext %36, i8* %2, i8* %9, i8* %3) #6
  br label %37

; <label>:37                                      ; preds = %37, %syndrome.exit
  %i.01.i1 = phi i32 [ 0, %syndrome.exit ], [ %44, %37 ]
  %38 = getelementptr inbounds [223 x i8]* %in_data, i32 0, i32 %i.01.i1
  %39 = load i8* %38, align 1, !tbaa !1
  %40 = getelementptr inbounds [223 x i8]* %err, i32 0, i32 %i.01.i1
  %41 = load i8* %40, align 1, !tbaa !1
  %42 = xor i8 %41, %39
  %43 = getelementptr inbounds [223 x i8]* %out_d, i32 0, i32 %i.01.i1
  store i8 %42, i8* %43, align 1, !tbaa !1
  %44 = add nsw i32 %i.01.i1, 1
  %exitcond.i2 = icmp eq i32 %i.01.i1, 222
  br i1 %exitcond.i2, label %error_correct.exit, label %37

error_correct.exit:                               ; preds = %37
  call void @llvm.lifetime.end(i64 255, i8* %5) #3
  call void @llvm.lifetime.end(i64 223, i8* %4) #3
  call void @llvm.lifetime.end(i64 223, i8* %3) #3
  call void @llvm.lifetime.end(i64 223, i8* %2) #3
  %45 = add nsw i32 %j.06, 1
  %exitcond7 = icmp eq i32 %j.06, 2
  br i1 %exitcond7, label %46, label %10

; <label>:46                                      ; preds = %error_correct.exit
  %47 = getelementptr inbounds [223 x i8]* %out_d, i32 0, i32 255
  %48 = load i8* %47, align 1, !tbaa !1
  %49 = zext i8 %48 to i32
  call void @llvm.lifetime.end(i64 223, i8* %1) #3
  ret i32 %49
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind }
attributes #6 = { nobuiltin }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 "}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"omnipotent char", metadata !3, i64 0}
!3 = metadata !{metadata !"Simple C/C++ TBAA"}
