; ModuleID = 'rs_decode.1.bc'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

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

declare void @__legup_label(i8*) #0

; Function Attrs: nounwind readnone
define internal fastcc zeroext i8 @gfmult_hw(i8 zeroext %a, i8 zeroext %b) #1 {
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

; Function Attrs: nounwind readonly
define internal fastcc zeroext i8 @poly_eval(i8* nocapture readonly %poly, i8 zeroext %alpha_inv) #2 {
  %1 = tail call fastcc zeroext i8 @gfmult_hw(i8 zeroext 0, i8 zeroext %alpha_inv) #4
  %2 = getelementptr inbounds i8* %poly, i32 15
  %3 = load i8* %2, align 1, !tbaa !1
  %4 = xor i8 %3, %1
  %5 = tail call fastcc zeroext i8 @gfmult_hw(i8 zeroext %4, i8 zeroext %alpha_inv) #4
  %6 = getelementptr inbounds i8* %poly, i32 14
  %7 = load i8* %6, align 1, !tbaa !1
  %8 = xor i8 %7, %5
  %9 = tail call fastcc zeroext i8 @gfmult_hw(i8 zeroext %8, i8 zeroext %alpha_inv) #4
  %10 = getelementptr inbounds i8* %poly, i32 13
  %11 = load i8* %10, align 1, !tbaa !1
  %12 = xor i8 %11, %9
  %13 = tail call fastcc zeroext i8 @gfmult_hw(i8 zeroext %12, i8 zeroext %alpha_inv) #4
  %14 = getelementptr inbounds i8* %poly, i32 12
  %15 = load i8* %14, align 1, !tbaa !1
  %16 = xor i8 %15, %13
  %17 = tail call fastcc zeroext i8 @gfmult_hw(i8 zeroext %16, i8 zeroext %alpha_inv) #4
  %18 = getelementptr inbounds i8* %poly, i32 11
  %19 = load i8* %18, align 1, !tbaa !1
  %20 = xor i8 %19, %17
  %21 = tail call fastcc zeroext i8 @gfmult_hw(i8 zeroext %20, i8 zeroext %alpha_inv) #4
  %22 = getelementptr inbounds i8* %poly, i32 10
  %23 = load i8* %22, align 1, !tbaa !1
  %24 = xor i8 %23, %21
  %25 = tail call fastcc zeroext i8 @gfmult_hw(i8 zeroext %24, i8 zeroext %alpha_inv) #4
  %26 = getelementptr inbounds i8* %poly, i32 9
  %27 = load i8* %26, align 1, !tbaa !1
  %28 = xor i8 %27, %25
  %29 = tail call fastcc zeroext i8 @gfmult_hw(i8 zeroext %28, i8 zeroext %alpha_inv) #4
  %30 = getelementptr inbounds i8* %poly, i32 8
  %31 = load i8* %30, align 1, !tbaa !1
  %32 = xor i8 %31, %29
  %33 = tail call fastcc zeroext i8 @gfmult_hw(i8 zeroext %32, i8 zeroext %alpha_inv) #4
  %34 = getelementptr inbounds i8* %poly, i32 7
  %35 = load i8* %34, align 1, !tbaa !1
  %36 = xor i8 %35, %33
  %37 = tail call fastcc zeroext i8 @gfmult_hw(i8 zeroext %36, i8 zeroext %alpha_inv) #4
  %38 = getelementptr inbounds i8* %poly, i32 6
  %39 = load i8* %38, align 1, !tbaa !1
  %40 = xor i8 %39, %37
  %41 = tail call fastcc zeroext i8 @gfmult_hw(i8 zeroext %40, i8 zeroext %alpha_inv) #4
  %42 = getelementptr inbounds i8* %poly, i32 5
  %43 = load i8* %42, align 1, !tbaa !1
  %44 = xor i8 %43, %41
  %45 = tail call fastcc zeroext i8 @gfmult_hw(i8 zeroext %44, i8 zeroext %alpha_inv) #4
  %46 = getelementptr inbounds i8* %poly, i32 4
  %47 = load i8* %46, align 1, !tbaa !1
  %48 = xor i8 %47, %45
  %49 = tail call fastcc zeroext i8 @gfmult_hw(i8 zeroext %48, i8 zeroext %alpha_inv) #4
  %50 = getelementptr inbounds i8* %poly, i32 3
  %51 = load i8* %50, align 1, !tbaa !1
  %52 = xor i8 %51, %49
  %53 = tail call fastcc zeroext i8 @gfmult_hw(i8 zeroext %52, i8 zeroext %alpha_inv) #4
  %54 = getelementptr inbounds i8* %poly, i32 2
  %55 = load i8* %54, align 1, !tbaa !1
  %56 = xor i8 %55, %53
  %57 = tail call fastcc zeroext i8 @gfmult_hw(i8 zeroext %56, i8 zeroext %alpha_inv) #4
  %58 = getelementptr inbounds i8* %poly, i32 1
  %59 = load i8* %58, align 1, !tbaa !1
  %60 = xor i8 %59, %57
  %61 = tail call fastcc zeroext i8 @gfmult_hw(i8 zeroext %60, i8 zeroext %alpha_inv) #4
  %62 = load i8* %poly, align 1, !tbaa !1
  %63 = xor i8 %62, %61
  ret i8 %63
}

; Function Attrs: nounwind
define i32 @main() #3 {
  %lambda_a.i = alloca [16 x i8], align 1
  %err_loc_temp.i = alloca [16 x i8], align 1
  %alpha_inv_temp.i = alloca [16 x i8], align 1
  %p.i = alloca [18 x i8], align 1
  %a.i = alloca [18 x i8], align 1
  %t1.i = alloca [18 x i8], align 1
  %t2.i = alloca [18 x i8], align 1
  %syn_shift_reg.i = alloca [18 x i8], align 1
  %temp.i = alloca [18 x i8], align 1
  %c.i = alloca [18 x i8], align 1
  %w.i = alloca [18 x i8], align 1
  %out_d = alloca [223 x i8], align 1
  %s = alloca [32 x i8], align 1
  %lambda = alloca [16 x i8], align 1
  %omega = alloca [16 x i8], align 1
  %err_loc = alloca [223 x i8], align 1
  %alpha_inv = alloca [16 x i8], align 1
  %err = alloca [223 x i8], align 1
  %in_data = alloca [223 x i8], align 1
  %in_d_2 = alloca [255 x i8], align 1
  %1 = getelementptr inbounds [16 x i8]* %lambda, i32 0, i32 0
  %2 = getelementptr inbounds [16 x i8]* %omega, i32 0, i32 0
  %3 = getelementptr inbounds [18 x i8]* %c.i, i32 0, i32 0
  %4 = getelementptr inbounds [18 x i8]* %p.i, i32 0, i32 0
  %5 = getelementptr inbounds [18 x i8]* %w.i, i32 0, i32 0
  %6 = getelementptr inbounds [18 x i8]* %a.i, i32 0, i32 0
  %7 = getelementptr inbounds [18 x i8]* %syn_shift_reg.i, i32 0, i32 0
  %8 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 0
  %9 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 1
  %10 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 2
  %11 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 3
  %12 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 4
  %13 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 5
  %14 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 6
  %15 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 7
  %16 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 8
  %17 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 9
  %18 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 10
  %19 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 11
  %20 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 12
  %21 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 13
  %22 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 14
  %23 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 15
  %24 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 16
  %25 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 17
  %26 = getelementptr inbounds [16 x i8]* %lambda_a.i, i32 0, i32 0
  %27 = getelementptr inbounds [16 x i8]* %lambda, i32 0, i32 1
  %28 = getelementptr inbounds [16 x i8]* %lambda_a.i, i32 0, i32 1
  %29 = getelementptr inbounds [16 x i8]* %lambda, i32 0, i32 2
  %30 = getelementptr inbounds [16 x i8]* %lambda_a.i, i32 0, i32 2
  %31 = getelementptr inbounds [16 x i8]* %lambda, i32 0, i32 3
  %32 = getelementptr inbounds [16 x i8]* %lambda_a.i, i32 0, i32 3
  %33 = getelementptr inbounds [16 x i8]* %lambda, i32 0, i32 4
  %34 = getelementptr inbounds [16 x i8]* %lambda_a.i, i32 0, i32 4
  %35 = getelementptr inbounds [16 x i8]* %lambda, i32 0, i32 5
  %36 = getelementptr inbounds [16 x i8]* %lambda_a.i, i32 0, i32 5
  %37 = getelementptr inbounds [16 x i8]* %lambda, i32 0, i32 6
  %38 = getelementptr inbounds [16 x i8]* %lambda_a.i, i32 0, i32 6
  %39 = getelementptr inbounds [16 x i8]* %lambda, i32 0, i32 7
  %40 = getelementptr inbounds [16 x i8]* %lambda_a.i, i32 0, i32 7
  %41 = getelementptr inbounds [16 x i8]* %lambda, i32 0, i32 8
  %42 = getelementptr inbounds [16 x i8]* %lambda_a.i, i32 0, i32 8
  %43 = getelementptr inbounds [16 x i8]* %lambda, i32 0, i32 9
  %44 = getelementptr inbounds [16 x i8]* %lambda_a.i, i32 0, i32 9
  %45 = getelementptr inbounds [16 x i8]* %lambda, i32 0, i32 10
  %46 = getelementptr inbounds [16 x i8]* %lambda_a.i, i32 0, i32 10
  %47 = getelementptr inbounds [16 x i8]* %lambda, i32 0, i32 11
  %48 = getelementptr inbounds [16 x i8]* %lambda_a.i, i32 0, i32 11
  %49 = getelementptr inbounds [16 x i8]* %lambda, i32 0, i32 12
  %50 = getelementptr inbounds [16 x i8]* %lambda_a.i, i32 0, i32 12
  %51 = getelementptr inbounds [16 x i8]* %lambda, i32 0, i32 13
  %52 = getelementptr inbounds [16 x i8]* %lambda_a.i, i32 0, i32 13
  %53 = getelementptr inbounds [16 x i8]* %lambda, i32 0, i32 14
  %54 = getelementptr inbounds [16 x i8]* %lambda_a.i, i32 0, i32 14
  %55 = getelementptr inbounds [16 x i8]* %lambda, i32 0, i32 15
  %56 = getelementptr inbounds [16 x i8]* %lambda_a.i, i32 0, i32 15
  br label %57

; <label>:57                                      ; preds = %error_correct.exit, %0
  %58 = phi i32 [ 0, %0 ], [ %292, %error_correct.exit ]
  br label %59

; <label>:59                                      ; preds = %59, %57
  %60 = phi i32 [ 0, %57 ], [ %62, %59 ]
  %scevgep = getelementptr [255 x i8]* %in_d_2, i32 0, i32 %60
  %scevgep2 = getelementptr [255 x i8]* @main.in_d, i32 0, i32 %60
  %61 = load i8* %scevgep2, align 1, !tbaa !1
  store i8 %61, i8* %scevgep, align 1, !tbaa !1
  %62 = add nsw i32 %60, 1
  %exitcond1 = icmp eq i32 %62, 255
  br i1 %exitcond1, label %.preheader.preheader, label %59

.preheader.preheader:                             ; preds = %59
  br label %.preheader

.preheader:                                       ; preds = %.backedge, %.preheader.preheader
  %63 = phi i32 [ %i.01.i.be, %.backedge ], [ 0, %.preheader.preheader ]
  %scevgep3 = getelementptr [223 x i8]* %in_data, i32 0, i32 %63
  %scevgep4 = getelementptr [255 x i8]* @main.in_d, i32 0, i32 %63
  %64 = icmp slt i32 %63, 223
  br i1 %64, label %65, label %.thread

.thread:                                          ; preds = %.preheader
  store i8 0, i8* %scevgep3, align 1, !tbaa !1
  br label %.backedge

; <label>:65                                      ; preds = %.preheader
  %66 = load i8* %scevgep4, align 1, !tbaa !1
  store i8 %66, i8* %scevgep3, align 1, !tbaa !1
  %exitcond.i = icmp eq i32 %63, 222
  br i1 %exitcond.i, label %rs_fifo.exit.preheader, label %.backedge

rs_fifo.exit.preheader:                           ; preds = %65
  br label %rs_fifo.exit

.backedge:                                        ; preds = %65, %.thread
  %i.01.i.be = add nsw i32 %63, 1
  br label %.preheader

rs_fifo.exit:                                     ; preds = %rs_fifo.exit, %rs_fifo.exit.preheader
  %67 = phi i32 [ %68, %rs_fifo.exit ], [ 0, %rs_fifo.exit.preheader ]
  %scevgep5 = getelementptr [32 x i8]* %s, i32 0, i32 %67
  store i8 0, i8* %scevgep5, align 1, !tbaa !1
  %68 = add nsw i32 %67, 1
  %exitcond = icmp eq i32 %68, 32
  br i1 %exitcond, label %.preheader.i.preheader, label %rs_fifo.exit

.preheader.i.preheader:                           ; preds = %rs_fifo.exit
  br label %.preheader.i

.preheader.i:                                     ; preds = %79, %.preheader.i.preheader
  %69 = phi i32 [ %80, %79 ], [ 0, %.preheader.i.preheader ]
  %scevgep10 = getelementptr [255 x i8]* %in_d_2, i32 0, i32 %69
  tail call void @__legup_label(i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0)) #5
  %70 = load i8* %scevgep10, align 1, !tbaa !1
  br label %71

; <label>:71                                      ; preds = %71, %.preheader.i
  %72 = phi i32 [ 0, %.preheader.i ], [ %75, %71 ]
  %73 = add i32 %72, 1
  %scevgep7 = getelementptr [256 x i8]* @alpha.alpha_lut, i32 0, i32 %73
  %scevgep8 = getelementptr [32 x i8]* %s, i32 0, i32 %72
  tail call void @__legup_label(i8* getelementptr inbounds ([10 x i8]* @.str1, i32 0, i32 0)) #5
  %74 = load i8* %scevgep8, align 1, !tbaa !1
  %75 = add nsw i32 %72, 1
  %76 = load i8* %scevgep7, align 1, !tbaa !1
  %77 = tail call fastcc zeroext i8 @gfmult_hw(i8 zeroext %74, i8 zeroext %76) #5
  %78 = xor i8 %77, %70
  store i8 %78, i8* %scevgep8, align 1, !tbaa !1
  %exitcond6 = icmp eq i32 %75, 32
  br i1 %exitcond6, label %79, label %71

; <label>:79                                      ; preds = %71
  %80 = add nsw i32 %69, 1
  %exitcond9 = icmp eq i32 %80, 255
  br i1 %exitcond9, label %syndrome.exit, label %.preheader.i

syndrome.exit:                                    ; preds = %79
  store i8 1, i8* %3, align 1, !tbaa !1
  store i8 1, i8* %4, align 1, !tbaa !1
  store i8 0, i8* %5, align 1, !tbaa !1
  store i8 1, i8* %6, align 1, !tbaa !1
  store i8 0, i8* %7, align 1, !tbaa !1
  store i8 0, i8* %8, align 1, !tbaa !1
  br label %81

; <label>:81                                      ; preds = %81, %syndrome.exit
  %indvar = phi i32 [ %indvar.next, %81 ], [ 0, %syndrome.exit ]
  %i.022.i = add i32 %indvar, 1
  %scevgep12 = getelementptr [18 x i8]* %temp.i, i32 0, i32 %i.022.i
  %scevgep13 = getelementptr [18 x i8]* %syn_shift_reg.i, i32 0, i32 %i.022.i
  %scevgep14 = getelementptr [18 x i8]* %t2.i, i32 0, i32 %i.022.i
  %scevgep15 = getelementptr [18 x i8]* %t1.i, i32 0, i32 %i.022.i
  %scevgep16 = getelementptr [18 x i8]* %a.i, i32 0, i32 %i.022.i
  %scevgep17 = getelementptr [18 x i8]* %p.i, i32 0, i32 %i.022.i
  %scevgep18 = getelementptr [18 x i8]* %w.i, i32 0, i32 %i.022.i
  %scevgep19 = getelementptr [18 x i8]* %c.i, i32 0, i32 %i.022.i
  call void @__legup_label(i8* getelementptr inbounds ([9 x i8]* @.str2, i32 0, i32 0)) #5
  store i8 0, i8* %scevgep19, align 1, !tbaa !1
  store i8 0, i8* %scevgep18, align 1, !tbaa !1
  store i8 0, i8* %scevgep17, align 1, !tbaa !1
  store i8 0, i8* %scevgep16, align 1, !tbaa !1
  store i8 0, i8* %scevgep15, align 1, !tbaa !1
  store i8 0, i8* %scevgep14, align 1, !tbaa !1
  store i8 0, i8* %scevgep13, align 1, !tbaa !1
  store i8 0, i8* %scevgep12, align 1, !tbaa !1
  %indvar.next = add i32 %indvar, 1
  %exitcond11 = icmp eq i32 %indvar.next, 17
  br i1 %exitcond11, label %.preheader13.i.preheader, label %81

.preheader13.i.preheader:                         ; preds = %81
  br label %.preheader13.i

.preheader13.i:                                   ; preds = %gfadd_array_array_hw2.exit.i, %.preheader13.i.preheader
  %82 = phi i32 [ %176, %gfadd_array_array_hw2.exit.i ], [ 0, %.preheader13.i.preheader ]
  %dstar.019.i = phi i8 [ %dstar.2.i, %gfadd_array_array_hw2.exit.i ], [ 1, %.preheader13.i.preheader ]
  %l.018.i = phi i8 [ %l.2.i, %gfadd_array_array_hw2.exit.i ], [ 0, %.preheader13.i.preheader ]
  %83 = add i32 %82, 1
  %84 = trunc i32 %83 to i8
  %scevgep56 = getelementptr [32 x i8]* %s, i32 0, i32 %82
  call void @__legup_label(i8* getelementptr inbounds ([10 x i8]* @.str3, i32 0, i32 0)) #5
  br label %85

; <label>:85                                      ; preds = %85, %.preheader13.i
  %indvar20 = phi i32 [ %indvar.next21, %85 ], [ 0, %.preheader13.i ]
  %86 = mul i32 %indvar20, -1
  %87 = add i32 %86, 17
  %scevgep23 = getelementptr [18 x i8]* %a.i, i32 0, i32 %87
  %scevgep24 = getelementptr [18 x i8]* %p.i, i32 0, i32 %87
  %scevgep25 = getelementptr [18 x i8]* %syn_shift_reg.i, i32 0, i32 %87
  %88 = add i32 %86, 16
  %scevgep26 = getelementptr [18 x i8]* %a.i, i32 0, i32 %88
  %scevgep27 = getelementptr [18 x i8]* %p.i, i32 0, i32 %88
  %scevgep28 = getelementptr [18 x i8]* %syn_shift_reg.i, i32 0, i32 %88
  call void @__legup_label(i8* getelementptr inbounds ([10 x i8]* @.str4, i32 0, i32 0)) #5
  %89 = load i8* %scevgep28, align 1, !tbaa !1
  store i8 %89, i8* %scevgep25, align 1, !tbaa !1
  %90 = load i8* %scevgep27, align 1, !tbaa !1
  store i8 %90, i8* %scevgep24, align 1, !tbaa !1
  %91 = load i8* %scevgep26, align 1, !tbaa !1
  store i8 %91, i8* %scevgep23, align 1, !tbaa !1
  %indvar.next21 = add i32 %indvar20, 1
  %exitcond22 = icmp ne i32 %indvar.next21, 17
  br i1 %exitcond22, label %85, label %92

; <label>:92                                      ; preds = %85
  %93 = load i8* %scevgep56, align 1, !tbaa !1
  store i8 %93, i8* %7, align 1, !tbaa !1
  store i8 0, i8* %4, align 1, !tbaa !1
  store i8 0, i8* %6, align 1, !tbaa !1
  br label %94

; <label>:94                                      ; preds = %._crit_edge.i, %92
  %95 = phi i8 [ %93, %92 ], [ %.pre.i, %._crit_edge.i ]
  %96 = phi i32 [ 0, %92 ], [ %100, %._crit_edge.i ]
  %97 = add i32 %96, 1
  %.phi.trans.insert.i = getelementptr [18 x i8]* %syn_shift_reg.i, i32 0, i32 %97
  %scevgep31 = getelementptr [18 x i8]* %temp.i, i32 0, i32 %96
  %scevgep32 = getelementptr [18 x i8]* %c.i, i32 0, i32 %96
  %98 = load i8* %scevgep32, align 1, !tbaa !1
  %99 = call fastcc zeroext i8 @gfmult_hw(i8 zeroext %98, i8 zeroext %95) #5
  store i8 %99, i8* %scevgep31, align 1, !tbaa !1
  %100 = add nsw i32 %96, 1
  %exitcond29 = icmp eq i32 %96, 17
  br i1 %exitcond29, label %gfmult_array_array_hw.exit.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %94
  %.pre.i = load i8* %.phi.trans.insert.i, align 1, !tbaa !1
  br label %94

gfmult_array_array_hw.exit.i:                     ; preds = %94
  %101 = load i8* %8, align 1, !tbaa !1
  %102 = load i8* %9, align 1, !tbaa !1
  %103 = xor i8 %102, %101
  %104 = load i8* %10, align 1, !tbaa !1
  %105 = xor i8 %103, %104
  %106 = load i8* %11, align 1, !tbaa !1
  %107 = xor i8 %105, %106
  %108 = load i8* %12, align 1, !tbaa !1
  %109 = xor i8 %107, %108
  %110 = load i8* %13, align 1, !tbaa !1
  %111 = xor i8 %109, %110
  %112 = load i8* %14, align 1, !tbaa !1
  %113 = xor i8 %111, %112
  %114 = load i8* %15, align 1, !tbaa !1
  %115 = xor i8 %113, %114
  %116 = load i8* %16, align 1, !tbaa !1
  %117 = xor i8 %115, %116
  %118 = load i8* %17, align 1, !tbaa !1
  %119 = xor i8 %117, %118
  %120 = load i8* %18, align 1, !tbaa !1
  %121 = xor i8 %119, %120
  %122 = load i8* %19, align 1, !tbaa !1
  %123 = xor i8 %121, %122
  %124 = load i8* %20, align 1, !tbaa !1
  %125 = xor i8 %123, %124
  %126 = load i8* %21, align 1, !tbaa !1
  %127 = xor i8 %125, %126
  %128 = load i8* %22, align 1, !tbaa !1
  %129 = xor i8 %127, %128
  %130 = load i8* %23, align 1, !tbaa !1
  %131 = xor i8 %129, %130
  %132 = load i8* %24, align 1, !tbaa !1
  %133 = xor i8 %131, %132
  %134 = load i8* %25, align 1, !tbaa !1
  %135 = xor i8 %134, %133
  %136 = icmp eq i8 %134, %133
  br i1 %136, label %gfadd_array_array_hw2.exit.i, label %.preheader32.i.preheader

.preheader32.i.preheader:                         ; preds = %gfmult_array_array_hw.exit.i
  br label %.preheader32.i

.preheader32.i:                                   ; preds = %._crit_edge27.i, %.preheader32.i.preheader
  %137 = phi i8 [ %.pre31.i, %._crit_edge27.i ], [ 0, %.preheader32.i.preheader ]
  %138 = phi i8 [ %.pre29.i, %._crit_edge27.i ], [ 0, %.preheader32.i.preheader ]
  %139 = phi i32 [ %141, %._crit_edge27.i ], [ 0, %.preheader32.i.preheader ]
  %140 = add i32 %139, 1
  %.phi.trans.insert30.i = getelementptr [18 x i8]* %a.i, i32 0, i32 %140
  %.phi.trans.insert28.i = getelementptr [18 x i8]* %p.i, i32 0, i32 %140
  %scevgep36 = getelementptr [18 x i8]* %t2.i, i32 0, i32 %139
  %scevgep37 = getelementptr [18 x i8]* %t1.i, i32 0, i32 %139
  call void @__legup_label(i8* getelementptr inbounds ([12 x i8]* @.str5, i32 0, i32 0)) #5
  store i8 %138, i8* %scevgep37, align 1, !tbaa !1
  store i8 %137, i8* %scevgep36, align 1, !tbaa !1
  %141 = add nsw i32 %139, 1
  %exitcond33 = icmp eq i32 %139, 17
  br i1 %exitcond33, label %142, label %._crit_edge27.i

._crit_edge27.i:                                  ; preds = %.preheader32.i
  %.pre29.i = load i8* %.phi.trans.insert28.i, align 1, !tbaa !1
  %.pre31.i = load i8* %.phi.trans.insert30.i, align 1, !tbaa !1
  br label %.preheader32.i

; <label>:142                                     ; preds = %.preheader32.i
  %143 = call fastcc zeroext i8 @gfmult_hw(i8 zeroext %135, i8 zeroext %dstar.019.i) #5
  %144 = zext i8 %l.018.i to i32
  %145 = shl nuw nsw i32 %144, 1
  %146 = icmp slt i32 %82, %145
  br i1 %146, label %156, label %.preheader1.preheader

.preheader1.preheader:                            ; preds = %142
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1, %.preheader1.preheader
  %147 = phi i32 [ %150, %.preheader1 ], [ 0, %.preheader1.preheader ]
  %scevgep39 = getelementptr [18 x i8]* %a.i, i32 0, i32 %147
  %scevgep40 = getelementptr [18 x i8]* %w.i, i32 0, i32 %147
  %scevgep41 = getelementptr [18 x i8]* %p.i, i32 0, i32 %147
  %scevgep42 = getelementptr [18 x i8]* %c.i, i32 0, i32 %147
  call void @__legup_label(i8* getelementptr inbounds ([12 x i8]* @.str6, i32 0, i32 0)) #5
  %148 = load i8* %scevgep42, align 1, !tbaa !1
  store i8 %148, i8* %scevgep41, align 1, !tbaa !1
  %149 = load i8* %scevgep40, align 1, !tbaa !1
  store i8 %149, i8* %scevgep39, align 1, !tbaa !1
  %150 = add nsw i32 %147, 1
  %exitcond38 = icmp eq i32 %150, 18
  br i1 %exitcond38, label %151, label %.preheader1

; <label>:151                                     ; preds = %.preheader1
  %152 = zext i8 %135 to i32
  %153 = getelementptr inbounds [256 x i8]* @gfinv_lut.lut, i32 0, i32 %152
  %154 = load i8* %153, align 1, !tbaa !1
  %155 = sub i8 %84, %l.018.i
  br label %156

; <label>:156                                     ; preds = %151, %142
  %l.1.i = phi i8 [ %155, %151 ], [ %l.018.i, %142 ]
  %dstar.1.i = phi i8 [ %154, %151 ], [ %dstar.019.i, %142 ]
  br label %157

; <label>:157                                     ; preds = %157, %156
  %158 = phi i32 [ 0, %156 ], [ %161, %157 ]
  %scevgep44 = getelementptr [18 x i8]* %temp.i, i32 0, i32 %158
  %scevgep45 = getelementptr [18 x i8]* %t1.i, i32 0, i32 %158
  %159 = load i8* %scevgep45, align 1, !tbaa !1
  %160 = call fastcc zeroext i8 @gfmult_hw(i8 zeroext %143, i8 zeroext %159) #5
  store i8 %160, i8* %scevgep44, align 1, !tbaa !1
  %161 = add nsw i32 %158, 1
  %exitcond43 = icmp eq i32 %161, 18
  br i1 %exitcond43, label %gfmult_scalar_array_hw1.exit.i.preheader, label %157

gfmult_scalar_array_hw1.exit.i.preheader:         ; preds = %157
  br label %gfmult_scalar_array_hw1.exit.i

gfmult_scalar_array_hw1.exit.i:                   ; preds = %gfmult_scalar_array_hw1.exit.i, %gfmult_scalar_array_hw1.exit.i.preheader
  %162 = phi i32 [ %166, %gfmult_scalar_array_hw1.exit.i ], [ 0, %gfmult_scalar_array_hw1.exit.i.preheader ]
  %scevgep47 = getelementptr [18 x i8]* %temp.i, i32 0, i32 %162
  %scevgep48 = getelementptr [18 x i8]* %c.i, i32 0, i32 %162
  %163 = load i8* %scevgep48, align 1, !tbaa !1
  %164 = load i8* %scevgep47, align 1, !tbaa !1
  %165 = xor i8 %164, %163
  store i8 %165, i8* %scevgep48, align 1, !tbaa !1
  %166 = add nsw i32 %162, 1
  %exitcond46 = icmp eq i32 %166, 18
  br i1 %exitcond46, label %gfadd_array_array_hw1.exit.i.preheader, label %gfmult_scalar_array_hw1.exit.i

gfadd_array_array_hw1.exit.i.preheader:           ; preds = %gfmult_scalar_array_hw1.exit.i
  br label %gfadd_array_array_hw1.exit.i

gfadd_array_array_hw1.exit.i:                     ; preds = %gfadd_array_array_hw1.exit.i, %gfadd_array_array_hw1.exit.i.preheader
  %167 = phi i32 [ %170, %gfadd_array_array_hw1.exit.i ], [ 0, %gfadd_array_array_hw1.exit.i.preheader ]
  %scevgep50 = getelementptr [18 x i8]* %temp.i, i32 0, i32 %167
  %scevgep51 = getelementptr [18 x i8]* %t2.i, i32 0, i32 %167
  %168 = load i8* %scevgep51, align 1, !tbaa !1
  %169 = call fastcc zeroext i8 @gfmult_hw(i8 zeroext %143, i8 zeroext %168) #5
  store i8 %169, i8* %scevgep50, align 1, !tbaa !1
  %170 = add nsw i32 %167, 1
  %exitcond49 = icmp eq i32 %170, 18
  br i1 %exitcond49, label %gfmult_scalar_array_hw2.exit.i.preheader, label %gfadd_array_array_hw1.exit.i

gfmult_scalar_array_hw2.exit.i.preheader:         ; preds = %gfadd_array_array_hw1.exit.i
  br label %gfmult_scalar_array_hw2.exit.i

gfmult_scalar_array_hw2.exit.i:                   ; preds = %gfmult_scalar_array_hw2.exit.i, %gfmult_scalar_array_hw2.exit.i.preheader
  %171 = phi i32 [ %175, %gfmult_scalar_array_hw2.exit.i ], [ 0, %gfmult_scalar_array_hw2.exit.i.preheader ]
  %scevgep53 = getelementptr [18 x i8]* %temp.i, i32 0, i32 %171
  %scevgep54 = getelementptr [18 x i8]* %w.i, i32 0, i32 %171
  %172 = load i8* %scevgep54, align 1, !tbaa !1
  %173 = load i8* %scevgep53, align 1, !tbaa !1
  %174 = xor i8 %173, %172
  store i8 %174, i8* %scevgep54, align 1, !tbaa !1
  %175 = add nsw i32 %171, 1
  %exitcond52 = icmp eq i32 %175, 18
  br i1 %exitcond52, label %gfadd_array_array_hw2.exit.i.loopexit, label %gfmult_scalar_array_hw2.exit.i

gfadd_array_array_hw2.exit.i.loopexit:            ; preds = %gfmult_scalar_array_hw2.exit.i
  br label %gfadd_array_array_hw2.exit.i

gfadd_array_array_hw2.exit.i:                     ; preds = %gfadd_array_array_hw2.exit.i.loopexit, %gfmult_array_array_hw.exit.i
  %l.2.i = phi i8 [ %l.018.i, %gfmult_array_array_hw.exit.i ], [ %l.1.i, %gfadd_array_array_hw2.exit.i.loopexit ]
  %dstar.2.i = phi i8 [ %dstar.019.i, %gfmult_array_array_hw.exit.i ], [ %dstar.1.i, %gfadd_array_array_hw2.exit.i.loopexit ]
  %176 = add nsw i32 %82, 1
  %exitcond55 = icmp eq i32 %176, 32
  br i1 %exitcond55, label %.preheader.i2.preheader, label %.preheader13.i

.preheader.i2.preheader:                          ; preds = %gfadd_array_array_hw2.exit.i
  br label %.preheader.i2

.preheader.i2:                                    ; preds = %.preheader.i2, %.preheader.i2.preheader
  %177 = phi i32 [ %179, %.preheader.i2 ], [ 0, %.preheader.i2.preheader ]
  %scevgep58 = getelementptr [16 x i8]* %omega, i32 0, i32 %177
  %scevgep59 = getelementptr [16 x i8]* %lambda, i32 0, i32 %177
  %178 = add i32 %177, 1
  %scevgep60 = getelementptr [18 x i8]* %w.i, i32 0, i32 %178
  %scevgep61 = getelementptr [18 x i8]* %c.i, i32 0, i32 %178
  call void @__legup_label(i8* getelementptr inbounds ([9 x i8]* @.str7, i32 0, i32 0)) #5
  %179 = add nsw i32 %177, 1
  %180 = load i8* %scevgep61, align 1, !tbaa !1
  store i8 %180, i8* %scevgep59, align 1, !tbaa !1
  %181 = load i8* %scevgep60, align 1, !tbaa !1
  store i8 %181, i8* %scevgep58, align 1, !tbaa !1
  %exitcond57 = icmp eq i32 %179, 16
  br i1 %exitcond57, label %berlekamp.exit, label %.preheader.i2

berlekamp.exit:                                   ; preds = %.preheader.i2
  %182 = load i8* %1, align 1, !tbaa !1
  store i8 %182, i8* %26, align 1, !tbaa !1
  %183 = load i8* %27, align 1, !tbaa !1
  store i8 %183, i8* %28, align 1, !tbaa !1
  %184 = load i8* %29, align 1, !tbaa !1
  store i8 %184, i8* %30, align 1, !tbaa !1
  %185 = load i8* %31, align 1, !tbaa !1
  store i8 %185, i8* %32, align 1, !tbaa !1
  %186 = load i8* %33, align 1, !tbaa !1
  store i8 %186, i8* %34, align 1, !tbaa !1
  %187 = load i8* %35, align 1, !tbaa !1
  store i8 %187, i8* %36, align 1, !tbaa !1
  %188 = load i8* %37, align 1, !tbaa !1
  store i8 %188, i8* %38, align 1, !tbaa !1
  %189 = load i8* %39, align 1, !tbaa !1
  store i8 %189, i8* %40, align 1, !tbaa !1
  %190 = load i8* %41, align 1, !tbaa !1
  store i8 %190, i8* %42, align 1, !tbaa !1
  %191 = load i8* %43, align 1, !tbaa !1
  store i8 %191, i8* %44, align 1, !tbaa !1
  %192 = load i8* %45, align 1, !tbaa !1
  store i8 %192, i8* %46, align 1, !tbaa !1
  %193 = load i8* %47, align 1, !tbaa !1
  store i8 %193, i8* %48, align 1, !tbaa !1
  %194 = load i8* %49, align 1, !tbaa !1
  store i8 %194, i8* %50, align 1, !tbaa !1
  %195 = load i8* %51, align 1, !tbaa !1
  store i8 %195, i8* %52, align 1, !tbaa !1
  %196 = load i8* %53, align 1, !tbaa !1
  store i8 %196, i8* %54, align 1, !tbaa !1
  %197 = load i8* %55, align 1, !tbaa !1
  store i8 %197, i8* %56, align 1, !tbaa !1
  br label %198

; <label>:198                                     ; preds = %252, %berlekamp.exit
  %indvar66 = phi i32 [ %indvar.next67, %252 ], [ 0, %berlekamp.exit ]
  %199 = phi i8 [ %182, %berlekamp.exit ], [ %203, %252 ]
  %alphainv.013.i = phi i32 [ 2, %berlekamp.exit ], [ %phitmp5.i, %252 ]
  %err_cnt.012.i = phi i8 [ 0, %berlekamp.exit ], [ %err_cnt.1.i, %252 ]
  %200 = mul i32 %indvar66, -1
  %201 = add i32 %200, -34
  %202 = trunc i32 %201 to i8
  %i1.0.off.i = add i32 %200, 222
  call void @__legup_label(i8* getelementptr inbounds ([20 x i8]* @.str8, i32 0, i32 0)) #5
  br label %239

.preheader6.i:                                    ; preds = %239
  %203 = load i8* %26, align 1, !tbaa !1
  %204 = xor i8 %203, 1
  %205 = load i8* %28, align 1, !tbaa !1
  %206 = xor i8 %205, %204
  %207 = load i8* %30, align 1, !tbaa !1
  %208 = xor i8 %207, %206
  %209 = load i8* %32, align 1, !tbaa !1
  %210 = xor i8 %209, %208
  %211 = load i8* %34, align 1, !tbaa !1
  %212 = xor i8 %211, %210
  %213 = load i8* %36, align 1, !tbaa !1
  %214 = xor i8 %213, %212
  %215 = load i8* %38, align 1, !tbaa !1
  %216 = xor i8 %215, %214
  %217 = load i8* %40, align 1, !tbaa !1
  %218 = xor i8 %217, %216
  %219 = load i8* %42, align 1, !tbaa !1
  %220 = xor i8 %219, %218
  %221 = load i8* %44, align 1, !tbaa !1
  %222 = xor i8 %221, %220
  %223 = load i8* %46, align 1, !tbaa !1
  %224 = xor i8 %223, %222
  %225 = load i8* %48, align 1, !tbaa !1
  %226 = xor i8 %225, %224
  %227 = load i8* %50, align 1, !tbaa !1
  %228 = xor i8 %227, %226
  %229 = load i8* %52, align 1, !tbaa !1
  %230 = xor i8 %229, %228
  %231 = load i8* %54, align 1, !tbaa !1
  %232 = xor i8 %231, %230
  %233 = load i8* %56, align 1, !tbaa !1
  %234 = and i32 %alphainv.013.i, 256
  %235 = icmp eq i32 %234, 0
  %236 = xor i32 %alphainv.013.i, 29
  %temp.3.6..i.i = select i1 %235, i32 %alphainv.013.i, i32 %236
  %237 = icmp ult i32 %i1.0.off.i, 223
  %238 = icmp eq i8 %233, %232
  %or.cond.i = and i1 %237, %238
  br i1 %or.cond.i, label %246, label %252

; <label>:239                                     ; preds = %._crit_edge.i5, %198
  %240 = phi i8 [ %199, %198 ], [ %.pre.i4, %._crit_edge.i5 ]
  %241 = phi i32 [ 0, %198 ], [ %243, %._crit_edge.i5 ]
  %242 = add i32 %241, 1
  %.phi.trans.insert.i3 = getelementptr [16 x i8]* %lambda_a.i, i32 0, i32 %242
  %scevgep64 = getelementptr [256 x i8]* @alpha.alpha_lut, i32 0, i32 %242
  %scevgep65 = getelementptr [16 x i8]* %lambda_a.i, i32 0, i32 %241
  %243 = add nsw i32 %241, 1
  %244 = load i8* %scevgep64, align 1, !tbaa !1
  %245 = call fastcc zeroext i8 @gfmult_hw(i8 zeroext %240, i8 zeroext %244) #5
  store i8 %245, i8* %scevgep65, align 1, !tbaa !1
  %exitcond62 = icmp eq i32 %241, 15
  br i1 %exitcond62, label %.preheader6.i, label %._crit_edge.i5

._crit_edge.i5:                                   ; preds = %239
  %.pre.i4 = load i8* %.phi.trans.insert.i3, align 1, !tbaa !1
  br label %239

; <label>:246                                     ; preds = %.preheader6.i
  %247 = trunc i32 %temp.3.6..i.i to i8
  call void @__legup_label(i8* getelementptr inbounds ([13 x i8]* @.str9, i32 0, i32 0)) #5
  %248 = zext i8 %err_cnt.012.i to i32
  %249 = getelementptr inbounds [16 x i8]* %err_loc_temp.i, i32 0, i32 %248
  store i8 %202, i8* %249, align 1, !tbaa !1
  %250 = getelementptr inbounds [16 x i8]* %alpha_inv_temp.i, i32 0, i32 %248
  store i8 %247, i8* %250, align 1, !tbaa !1
  %251 = add i8 %err_cnt.012.i, 1
  br label %252

; <label>:252                                     ; preds = %246, %.preheader6.i
  %err_cnt.1.i = phi i8 [ %251, %246 ], [ %err_cnt.012.i, %.preheader6.i ]
  %phitmp.i = shl nuw nsw i32 %temp.3.6..i.i, 1
  %phitmp5.i = and i32 %phitmp.i, 510
  %indvar.next67 = add i32 %indvar66, 1
  %exitcond68 = icmp ne i32 %indvar.next67, 255
  br i1 %exitcond68, label %198, label %.preheader.i8.preheader

.preheader.i8.preheader:                          ; preds = %252
  %err_cnt.1.i.lcssa = phi i8 [ %err_cnt.1.i, %252 ]
  br label %.preheader.i8

.preheader.i8:                                    ; preds = %.preheader.i8, %.preheader.i8.preheader
  %253 = phi i32 [ %256, %.preheader.i8 ], [ 0, %.preheader.i8.preheader ]
  %scevgep70 = getelementptr [16 x i8]* %alpha_inv, i32 0, i32 %253
  %scevgep71 = getelementptr [16 x i8]* %alpha_inv_temp.i, i32 0, i32 %253
  %scevgep72 = getelementptr [223 x i8]* %err_loc, i32 0, i32 %253
  %scevgep73 = getelementptr [16 x i8]* %err_loc_temp.i, i32 0, i32 %253
  call void @__legup_label(i8* getelementptr inbounds ([21 x i8]* @.str10, i32 0, i32 0)) #5
  %254 = load i8* %scevgep73, align 1, !tbaa !1
  store i8 %254, i8* %scevgep72, align 1, !tbaa !1
  %255 = load i8* %scevgep71, align 1, !tbaa !1
  store i8 %255, i8* %scevgep70, align 1, !tbaa !1
  %256 = add nsw i32 %253, 1
  %exitcond69 = icmp eq i32 %256, 16
  br i1 %exitcond69, label %chien_search.exit.preheader, label %.preheader.i8

chien_search.exit.preheader:                      ; preds = %.preheader.i8
  br label %257

; <label>:257                                     ; preds = %257, %chien_search.exit.preheader
  %258 = phi i32 [ %263, %257 ], [ 0, %chien_search.exit.preheader ]
  %scevgep75 = getelementptr [16 x i8]* %lambda_a.i, i32 0, i32 %258
  %scevgep76 = getelementptr [16 x i8]* %lambda, i32 0, i32 %258
  %259 = and i32 %258, 1
  %260 = icmp eq i32 %259, 0
  %261 = load i8* %scevgep76, align 1, !tbaa !1
  %262 = select i1 %260, i8 %261, i8 0
  store i8 %262, i8* %scevgep75, align 1, !tbaa !1
  %263 = add nsw i32 %258, 1
  %exitcond74 = icmp eq i32 %263, 16
  br i1 %exitcond74, label %compute_deriv.exit.i.preheader, label %257

compute_deriv.exit.i.preheader:                   ; preds = %257
  br label %compute_deriv.exit.i

.preheader.i11:                                   ; preds = %compute_deriv.exit.i
  %264 = zext i8 %err_cnt.1.i.lcssa to i32
  br label %274

compute_deriv.exit.i:                             ; preds = %compute_deriv.exit.i, %compute_deriv.exit.i.preheader
  %265 = phi i32 [ %273, %compute_deriv.exit.i ], [ 0, %compute_deriv.exit.i.preheader ]
  %scevgep78 = getelementptr [16 x i8]* %err_loc_temp.i, i32 0, i32 %265
  %scevgep79 = getelementptr [16 x i8]* %alpha_inv, i32 0, i32 %265
  %266 = load i8* %scevgep79, align 1, !tbaa !1
  %267 = call fastcc zeroext i8 @poly_eval(i8* %26, i8 zeroext %266) #5
  %268 = call fastcc zeroext i8 @poly_eval(i8* %2, i8 zeroext %266) #5
  %269 = zext i8 %267 to i32
  %270 = getelementptr inbounds [256 x i8]* @gfinv_lut.lut, i32 0, i32 %269
  %271 = load i8* %270, align 1, !tbaa !1
  %272 = call fastcc zeroext i8 @gfmult_hw(i8 zeroext %268, i8 zeroext %271) #5
  store i8 %272, i8* %scevgep78, align 1, !tbaa !1
  %273 = add nsw i32 %265, 1
  %exitcond77 = icmp eq i32 %273, 16
  br i1 %exitcond77, label %.preheader.i11, label %compute_deriv.exit.i

; <label>:274                                     ; preds = %274, %.preheader.i11
  %275 = phi i32 [ 0, %.preheader.i11 ], [ %286, %274 ]
  %loc_idx.03.i = phi i32 [ 0, %.preheader.i11 ], [ %loc_idx.1.i, %274 ]
  %scevgep81 = getelementptr [223 x i8]* %err, i32 0, i32 %275
  %276 = mul i32 %275, -1
  %277 = add i32 %276, 222
  %278 = getelementptr inbounds [223 x i8]* %err_loc, i32 0, i32 %loc_idx.03.i
  %279 = load i8* %278, align 1, !tbaa !1
  %280 = zext i8 %279 to i32
  %281 = icmp eq i32 %280, %277
  %282 = icmp slt i32 %loc_idx.03.i, %264
  %or.cond.i13 = and i1 %281, %282
  %283 = getelementptr inbounds [16 x i8]* %err_loc_temp.i, i32 0, i32 %loc_idx.03.i
  %284 = load i8* %283, align 1, !tbaa !1
  %285 = add nsw i32 %loc_idx.03.i, 1
  %.sink.i = select i1 %or.cond.i13, i8 %284, i8 0
  %loc_idx.1.i = select i1 %or.cond.i13, i32 %285, i32 %loc_idx.03.i
  store i8 %.sink.i, i8* %scevgep81, align 1
  %286 = add nsw i32 %275, 1
  %exitcond80 = icmp eq i32 %286, 223
  br i1 %exitcond80, label %error_mag.exit.preheader, label %274

error_mag.exit.preheader:                         ; preds = %274
  br label %error_mag.exit

error_mag.exit:                                   ; preds = %error_mag.exit, %error_mag.exit.preheader
  %287 = phi i32 [ %291, %error_mag.exit ], [ 0, %error_mag.exit.preheader ]
  %scevgep83 = getelementptr [223 x i8]* %out_d, i32 0, i32 %287
  %scevgep84 = getelementptr [223 x i8]* %err, i32 0, i32 %287
  %scevgep85 = getelementptr [223 x i8]* %in_data, i32 0, i32 %287
  %288 = load i8* %scevgep85, align 1, !tbaa !1
  %289 = load i8* %scevgep84, align 1, !tbaa !1
  %290 = xor i8 %289, %288
  store i8 %290, i8* %scevgep83, align 1, !tbaa !1
  %291 = add nsw i32 %287, 1
  %exitcond82 = icmp eq i32 %291, 223
  br i1 %exitcond82, label %error_correct.exit, label %error_mag.exit

error_correct.exit:                               ; preds = %error_mag.exit
  %292 = add nsw i32 %58, 1
  %exitcond86 = icmp eq i32 %292, 3
  br i1 %exitcond86, label %293, label %57

; <label>:293                                     ; preds = %error_correct.exit
  %294 = getelementptr inbounds [223 x i8]* %out_d, i32 0, i32 255
  %295 = load i8* %294, align 1, !tbaa !1
  %296 = zext i8 %295 to i32
  ret i32 %296
}

attributes #0 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}

!0 = metadata !{metadata !"clang version 3.5.2 "}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"omnipotent char", metadata !3, i64 0}
!3 = metadata !{metadata !"Simple C/C++ TBAA"}
