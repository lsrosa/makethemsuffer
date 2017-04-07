; ModuleID = 'rs_decode.prelto.6.bc'
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

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind readonly
define internal fastcc zeroext i8 @poly_eval(i8* nocapture readonly %poly, i8 zeroext %alpha_inv) #3 {
  %1 = tail call fastcc zeroext i8 @gfmult_hw(i8 zeroext 0, i8 zeroext %alpha_inv) #5
  %2 = getelementptr inbounds i8* %poly, i32 15
  %3 = load i8* %2, align 1, !tbaa !1
  %4 = xor i8 %3, %1
  %5 = tail call fastcc zeroext i8 @gfmult_hw(i8 zeroext %4, i8 zeroext %alpha_inv) #5
  %6 = getelementptr inbounds i8* %poly, i32 14
  %7 = load i8* %6, align 1, !tbaa !1
  %8 = xor i8 %7, %5
  %9 = tail call fastcc zeroext i8 @gfmult_hw(i8 zeroext %8, i8 zeroext %alpha_inv) #5
  %10 = getelementptr inbounds i8* %poly, i32 13
  %11 = load i8* %10, align 1, !tbaa !1
  %12 = xor i8 %11, %9
  %13 = tail call fastcc zeroext i8 @gfmult_hw(i8 zeroext %12, i8 zeroext %alpha_inv) #5
  %14 = getelementptr inbounds i8* %poly, i32 12
  %15 = load i8* %14, align 1, !tbaa !1
  %16 = xor i8 %15, %13
  %17 = tail call fastcc zeroext i8 @gfmult_hw(i8 zeroext %16, i8 zeroext %alpha_inv) #5
  %18 = getelementptr inbounds i8* %poly, i32 11
  %19 = load i8* %18, align 1, !tbaa !1
  %20 = xor i8 %19, %17
  %21 = tail call fastcc zeroext i8 @gfmult_hw(i8 zeroext %20, i8 zeroext %alpha_inv) #5
  %22 = getelementptr inbounds i8* %poly, i32 10
  %23 = load i8* %22, align 1, !tbaa !1
  %24 = xor i8 %23, %21
  %25 = tail call fastcc zeroext i8 @gfmult_hw(i8 zeroext %24, i8 zeroext %alpha_inv) #5
  %26 = getelementptr inbounds i8* %poly, i32 9
  %27 = load i8* %26, align 1, !tbaa !1
  %28 = xor i8 %27, %25
  %29 = tail call fastcc zeroext i8 @gfmult_hw(i8 zeroext %28, i8 zeroext %alpha_inv) #5
  %30 = getelementptr inbounds i8* %poly, i32 8
  %31 = load i8* %30, align 1, !tbaa !1
  %32 = xor i8 %31, %29
  %33 = tail call fastcc zeroext i8 @gfmult_hw(i8 zeroext %32, i8 zeroext %alpha_inv) #5
  %34 = getelementptr inbounds i8* %poly, i32 7
  %35 = load i8* %34, align 1, !tbaa !1
  %36 = xor i8 %35, %33
  %37 = tail call fastcc zeroext i8 @gfmult_hw(i8 zeroext %36, i8 zeroext %alpha_inv) #5
  %38 = getelementptr inbounds i8* %poly, i32 6
  %39 = load i8* %38, align 1, !tbaa !1
  %40 = xor i8 %39, %37
  %41 = tail call fastcc zeroext i8 @gfmult_hw(i8 zeroext %40, i8 zeroext %alpha_inv) #5
  %42 = getelementptr inbounds i8* %poly, i32 5
  %43 = load i8* %42, align 1, !tbaa !1
  %44 = xor i8 %43, %41
  %45 = tail call fastcc zeroext i8 @gfmult_hw(i8 zeroext %44, i8 zeroext %alpha_inv) #5
  %46 = getelementptr inbounds i8* %poly, i32 4
  %47 = load i8* %46, align 1, !tbaa !1
  %48 = xor i8 %47, %45
  %49 = tail call fastcc zeroext i8 @gfmult_hw(i8 zeroext %48, i8 zeroext %alpha_inv) #5
  %50 = getelementptr inbounds i8* %poly, i32 3
  %51 = load i8* %50, align 1, !tbaa !1
  %52 = xor i8 %51, %49
  %53 = tail call fastcc zeroext i8 @gfmult_hw(i8 zeroext %52, i8 zeroext %alpha_inv) #5
  %54 = getelementptr inbounds i8* %poly, i32 2
  %55 = load i8* %54, align 1, !tbaa !1
  %56 = xor i8 %55, %53
  %57 = tail call fastcc zeroext i8 @gfmult_hw(i8 zeroext %56, i8 zeroext %alpha_inv) #5
  %58 = getelementptr inbounds i8* %poly, i32 1
  %59 = load i8* %58, align 1, !tbaa !1
  %60 = xor i8 %59, %57
  %61 = tail call fastcc zeroext i8 @gfmult_hw(i8 zeroext %60, i8 zeroext %alpha_inv) #5
  %62 = load i8* %poly, align 1, !tbaa !1
  %63 = xor i8 %62, %61
  ret i8 %63
}

; Function Attrs: nounwind
define i32 @main() #4 {
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
  %1 = getelementptr inbounds [223 x i8]* %out_d, i32 0, i32 0
  %2 = getelementptr inbounds [223 x i8]* %err_loc, i32 0, i32 0
  %3 = getelementptr inbounds [223 x i8]* %err, i32 0, i32 0
  %4 = getelementptr inbounds [223 x i8]* %in_data, i32 0, i32 0
  %5 = getelementptr inbounds [255 x i8]* %in_d_2, i32 0, i32 0
  %6 = getelementptr inbounds [32 x i8]* %s, i32 0, i32 0
  %7 = getelementptr inbounds [16 x i8]* %lambda, i32 0, i32 0
  %8 = getelementptr inbounds [16 x i8]* %omega, i32 0, i32 0
  %9 = getelementptr inbounds [16 x i8]* %alpha_inv, i32 0, i32 0
  %10 = bitcast [18 x i8]* %p.i to i8*
  %11 = bitcast [18 x i8]* %a.i to i8*
  %12 = bitcast [18 x i8]* %t1.i to i8*
  %13 = bitcast [18 x i8]* %t2.i to i8*
  %14 = bitcast [18 x i8]* %syn_shift_reg.i to i8*
  %15 = bitcast [18 x i8]* %temp.i to i8*
  %16 = bitcast [18 x i8]* %c.i to i8*
  %17 = bitcast [18 x i8]* %w.i to i8*
  %18 = getelementptr inbounds [18 x i8]* %c.i, i32 0, i32 0
  %19 = getelementptr inbounds [18 x i8]* %p.i, i32 0, i32 0
  %20 = getelementptr inbounds [18 x i8]* %w.i, i32 0, i32 0
  %21 = getelementptr inbounds [18 x i8]* %a.i, i32 0, i32 0
  %22 = getelementptr inbounds [18 x i8]* %syn_shift_reg.i, i32 0, i32 0
  %23 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 0
  %24 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 1
  %25 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 2
  %26 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 3
  %27 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 4
  %28 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 5
  %29 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 6
  %30 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 7
  %31 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 8
  %32 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 9
  %33 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 10
  %34 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 11
  %35 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 12
  %36 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 13
  %37 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 14
  %38 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 15
  %39 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 16
  %40 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 17
  %41 = bitcast [16 x i8]* %lambda_a.i to i8*
  %42 = bitcast [16 x i8]* %err_loc_temp.i to i8*
  %43 = bitcast [16 x i8]* %alpha_inv_temp.i to i8*
  %44 = getelementptr inbounds [16 x i8]* %lambda_a.i, i32 0, i32 0
  %45 = getelementptr inbounds i8* %7, i32 1
  %46 = getelementptr inbounds [16 x i8]* %lambda_a.i, i32 0, i32 1
  %47 = getelementptr inbounds i8* %7, i32 2
  %48 = getelementptr inbounds [16 x i8]* %lambda_a.i, i32 0, i32 2
  %49 = getelementptr inbounds i8* %7, i32 3
  %50 = getelementptr inbounds [16 x i8]* %lambda_a.i, i32 0, i32 3
  %51 = getelementptr inbounds i8* %7, i32 4
  %52 = getelementptr inbounds [16 x i8]* %lambda_a.i, i32 0, i32 4
  %53 = getelementptr inbounds i8* %7, i32 5
  %54 = getelementptr inbounds [16 x i8]* %lambda_a.i, i32 0, i32 5
  %55 = getelementptr inbounds i8* %7, i32 6
  %56 = getelementptr inbounds [16 x i8]* %lambda_a.i, i32 0, i32 6
  %57 = getelementptr inbounds i8* %7, i32 7
  %58 = getelementptr inbounds [16 x i8]* %lambda_a.i, i32 0, i32 7
  %59 = getelementptr inbounds i8* %7, i32 8
  %60 = getelementptr inbounds [16 x i8]* %lambda_a.i, i32 0, i32 8
  %61 = getelementptr inbounds i8* %7, i32 9
  %62 = getelementptr inbounds [16 x i8]* %lambda_a.i, i32 0, i32 9
  %63 = getelementptr inbounds i8* %7, i32 10
  %64 = getelementptr inbounds [16 x i8]* %lambda_a.i, i32 0, i32 10
  %65 = getelementptr inbounds i8* %7, i32 11
  %66 = getelementptr inbounds [16 x i8]* %lambda_a.i, i32 0, i32 11
  %67 = getelementptr inbounds i8* %7, i32 12
  %68 = getelementptr inbounds [16 x i8]* %lambda_a.i, i32 0, i32 12
  %69 = getelementptr inbounds i8* %7, i32 13
  %70 = getelementptr inbounds [16 x i8]* %lambda_a.i, i32 0, i32 13
  %71 = getelementptr inbounds i8* %7, i32 14
  %72 = getelementptr inbounds [16 x i8]* %lambda_a.i, i32 0, i32 14
  %73 = getelementptr inbounds i8* %7, i32 15
  %74 = getelementptr inbounds [16 x i8]* %lambda_a.i, i32 0, i32 15
  br label %75

; <label>:75                                      ; preds = %error_correct.exit, %0
  %j.06 = phi i32 [ 0, %0 ], [ %347, %error_correct.exit ]
  br label %76

; <label>:76                                      ; preds = %76, %75
  %i.15 = phi i32 [ 0, %75 ], [ %80, %76 ]
  %77 = getelementptr inbounds [255 x i8]* @main.in_d, i32 0, i32 %i.15
  %78 = load i8* %77, align 1, !tbaa !1
  %79 = getelementptr inbounds [255 x i8]* %in_d_2, i32 0, i32 %i.15
  store i8 %78, i8* %79, align 1, !tbaa !1
  %80 = add nsw i32 %i.15, 1
  %exitcond = icmp eq i32 %i.15, 254
  br i1 %exitcond, label %.preheader, label %76

.preheader:                                       ; preds = %.backedge, %76
  %i.01.i = phi i32 [ %i.01.i.be, %.backedge ], [ 0, %76 ]
  %81 = icmp slt i32 %i.01.i, 223
  br i1 %81, label %83, label %.thread

.thread:                                          ; preds = %.preheader
  %82 = getelementptr inbounds [223 x i8]* %in_data, i32 0, i32 %i.01.i
  store i8 0, i8* %82, align 1, !tbaa !1
  br label %.backedge

; <label>:83                                      ; preds = %.preheader
  %84 = getelementptr inbounds [255 x i8]* @main.in_d, i32 0, i32 %i.01.i
  %85 = load i8* %84, align 1, !tbaa !1
  %86 = getelementptr inbounds [223 x i8]* %in_data, i32 0, i32 %i.01.i
  store i8 %85, i8* %86, align 1, !tbaa !1
  %exitcond.i = icmp eq i32 %i.01.i, 222
  br i1 %exitcond.i, label %rs_fifo.exit, label %.backedge

.backedge:                                        ; preds = %83, %.thread
  %i.01.i.be = add nsw i32 %i.01.i, 1
  br label %.preheader

rs_fifo.exit:                                     ; preds = %rs_fifo.exit, %83
  %j.04.i = phi i32 [ %88, %rs_fifo.exit ], [ 0, %83 ]
  %87 = getelementptr inbounds [32 x i8]* %s, i32 0, i32 %j.04.i
  store i8 0, i8* %87, align 1, !tbaa !1
  %88 = add nsw i32 %j.04.i, 1
  %exitcond6.i = icmp eq i32 %j.04.i, 31
  br i1 %exitcond6.i, label %.preheader.i, label %rs_fifo.exit

.preheader.i:                                     ; preds = %99, %rs_fifo.exit
  %i.03.i = phi i32 [ %100, %99 ], [ 0, %rs_fifo.exit ]
  tail call void @__legup_label(i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0)) #6
  %89 = getelementptr inbounds [255 x i8]* %in_d_2, i32 0, i32 %i.03.i
  %90 = load i8* %89, align 1, !tbaa !1
  br label %91

; <label>:91                                      ; preds = %91, %.preheader.i
  %j1.02.i = phi i32 [ 0, %.preheader.i ], [ %94, %91 ]
  tail call void @__legup_label(i8* getelementptr inbounds ([10 x i8]* @.str1, i32 0, i32 0)) #6
  %92 = getelementptr inbounds [32 x i8]* %s, i32 0, i32 %j1.02.i
  %93 = load i8* %92, align 1, !tbaa !1
  %94 = add nsw i32 %j1.02.i, 1
  %95 = getelementptr inbounds [256 x i8]* @alpha.alpha_lut, i32 0, i32 %94
  %96 = load i8* %95, align 1, !tbaa !1
  %97 = tail call fastcc zeroext i8 @gfmult_hw(i8 zeroext %93, i8 zeroext %96) #6
  %98 = xor i8 %97, %90
  store i8 %98, i8* %92, align 1, !tbaa !1
  %exitcond.i3 = icmp eq i32 %j1.02.i, 31
  br i1 %exitcond.i3, label %99, label %91

; <label>:99                                      ; preds = %91
  %100 = add nsw i32 %i.03.i, 1
  %exitcond5.i = icmp eq i32 %i.03.i, 254
  br i1 %exitcond5.i, label %syndrome.exit, label %.preheader.i

syndrome.exit:                                    ; preds = %99
  store i8 1, i8* %18, align 1, !tbaa !1
  store i8 1, i8* %19, align 1, !tbaa !1
  store i8 0, i8* %20, align 1, !tbaa !1
  store i8 1, i8* %21, align 1, !tbaa !1
  store i8 0, i8* %22, align 1, !tbaa !1
  store i8 0, i8* %23, align 1, !tbaa !1
  br label %101

; <label>:101                                     ; preds = %101, %syndrome.exit
  %i.022.i = phi i32 [ 1, %syndrome.exit ], [ %110, %101 ]
  call void @__legup_label(i8* getelementptr inbounds ([9 x i8]* @.str2, i32 0, i32 0)) #6
  %102 = getelementptr inbounds [18 x i8]* %c.i, i32 0, i32 %i.022.i
  store i8 0, i8* %102, align 1, !tbaa !1
  %103 = getelementptr inbounds [18 x i8]* %w.i, i32 0, i32 %i.022.i
  store i8 0, i8* %103, align 1, !tbaa !1
  %104 = getelementptr inbounds [18 x i8]* %p.i, i32 0, i32 %i.022.i
  store i8 0, i8* %104, align 1, !tbaa !1
  %105 = getelementptr inbounds [18 x i8]* %a.i, i32 0, i32 %i.022.i
  store i8 0, i8* %105, align 1, !tbaa !1
  %106 = getelementptr inbounds [18 x i8]* %t1.i, i32 0, i32 %i.022.i
  store i8 0, i8* %106, align 1, !tbaa !1
  %107 = getelementptr inbounds [18 x i8]* %t2.i, i32 0, i32 %i.022.i
  store i8 0, i8* %107, align 1, !tbaa !1
  %108 = getelementptr inbounds [18 x i8]* %syn_shift_reg.i, i32 0, i32 %i.022.i
  store i8 0, i8* %108, align 1, !tbaa !1
  %109 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 %i.022.i
  store i8 0, i8* %109, align 1, !tbaa !1
  %110 = add nsw i32 %i.022.i, 1
  %exitcond26.i = icmp eq i32 %i.022.i, 17
  br i1 %exitcond26.i, label %.preheader13.i, label %101

.preheader13.i:                                   ; preds = %gfadd_array_array_hw2.exit.i, %101
  %i1.020.i = phi i32 [ %219, %gfadd_array_array_hw2.exit.i ], [ 0, %101 ]
  %dstar.019.i = phi i8 [ %dstar.2.i, %gfadd_array_array_hw2.exit.i ], [ 1, %101 ]
  %l.018.i = phi i8 [ %l.2.i, %gfadd_array_array_hw2.exit.i ], [ 0, %101 ]
  call void @__legup_label(i8* getelementptr inbounds ([10 x i8]* @.str3, i32 0, i32 0)) #6
  br label %111

; <label>:111                                     ; preds = %111, %.preheader13.i
  %k.015.i = phi i32 [ 17, %.preheader13.i ], [ %112, %111 ]
  call void @__legup_label(i8* getelementptr inbounds ([10 x i8]* @.str4, i32 0, i32 0)) #6
  %112 = add nsw i32 %k.015.i, -1
  %113 = getelementptr inbounds [18 x i8]* %syn_shift_reg.i, i32 0, i32 %112
  %114 = load i8* %113, align 1, !tbaa !1
  %115 = getelementptr inbounds [18 x i8]* %syn_shift_reg.i, i32 0, i32 %k.015.i
  store i8 %114, i8* %115, align 1, !tbaa !1
  %116 = getelementptr inbounds [18 x i8]* %p.i, i32 0, i32 %112
  %117 = load i8* %116, align 1, !tbaa !1
  %118 = getelementptr inbounds [18 x i8]* %p.i, i32 0, i32 %k.015.i
  store i8 %117, i8* %118, align 1, !tbaa !1
  %119 = getelementptr inbounds [18 x i8]* %a.i, i32 0, i32 %112
  %120 = load i8* %119, align 1, !tbaa !1
  %121 = getelementptr inbounds [18 x i8]* %a.i, i32 0, i32 %k.015.i
  store i8 %120, i8* %121, align 1, !tbaa !1
  %122 = icmp sgt i32 %112, 0
  br i1 %122, label %111, label %123

; <label>:123                                     ; preds = %111
  %124 = getelementptr inbounds i8* %6, i32 %i1.020.i
  %125 = load i8* %124, align 1, !tbaa !1
  store i8 %125, i8* %22, align 1, !tbaa !1
  store i8 0, i8* %19, align 1, !tbaa !1
  store i8 0, i8* %21, align 1, !tbaa !1
  br label %126

; <label>:126                                     ; preds = %._crit_edge.i, %123
  %127 = phi i8 [ %125, %123 ], [ %.pre.i, %._crit_edge.i ]
  %i.01.i.i = phi i32 [ 0, %123 ], [ %132, %._crit_edge.i ]
  %128 = getelementptr inbounds [18 x i8]* %c.i, i32 0, i32 %i.01.i.i
  %129 = load i8* %128, align 1, !tbaa !1
  %130 = call fastcc zeroext i8 @gfmult_hw(i8 zeroext %129, i8 zeroext %127) #6
  %131 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 %i.01.i.i
  store i8 %130, i8* %131, align 1, !tbaa !1
  %132 = add nsw i32 %i.01.i.i, 1
  %exitcond.i.i = icmp eq i32 %i.01.i.i, 17
  br i1 %exitcond.i.i, label %gfmult_array_array_hw.exit.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %126
  %.phi.trans.insert.i = getelementptr inbounds [18 x i8]* %syn_shift_reg.i, i32 0, i32 %132
  %.pre.i = load i8* %.phi.trans.insert.i, align 1, !tbaa !1
  br label %126

gfmult_array_array_hw.exit.i:                     ; preds = %126
  %133 = load i8* %23, align 1, !tbaa !1
  %134 = load i8* %24, align 1, !tbaa !1
  %135 = xor i8 %134, %133
  %136 = load i8* %25, align 1, !tbaa !1
  %137 = xor i8 %135, %136
  %138 = load i8* %26, align 1, !tbaa !1
  %139 = xor i8 %137, %138
  %140 = load i8* %27, align 1, !tbaa !1
  %141 = xor i8 %139, %140
  %142 = load i8* %28, align 1, !tbaa !1
  %143 = xor i8 %141, %142
  %144 = load i8* %29, align 1, !tbaa !1
  %145 = xor i8 %143, %144
  %146 = load i8* %30, align 1, !tbaa !1
  %147 = xor i8 %145, %146
  %148 = load i8* %31, align 1, !tbaa !1
  %149 = xor i8 %147, %148
  %150 = load i8* %32, align 1, !tbaa !1
  %151 = xor i8 %149, %150
  %152 = load i8* %33, align 1, !tbaa !1
  %153 = xor i8 %151, %152
  %154 = load i8* %34, align 1, !tbaa !1
  %155 = xor i8 %153, %154
  %156 = load i8* %35, align 1, !tbaa !1
  %157 = xor i8 %155, %156
  %158 = load i8* %36, align 1, !tbaa !1
  %159 = xor i8 %157, %158
  %160 = load i8* %37, align 1, !tbaa !1
  %161 = xor i8 %159, %160
  %162 = load i8* %38, align 1, !tbaa !1
  %163 = xor i8 %161, %162
  %164 = load i8* %39, align 1, !tbaa !1
  %165 = xor i8 %163, %164
  %166 = load i8* %40, align 1, !tbaa !1
  %167 = xor i8 %166, %165
  %168 = icmp eq i8 %166, %165
  br i1 %168, label %gfadd_array_array_hw2.exit.i, label %.preheader32.i

.preheader32.i:                                   ; preds = %._crit_edge27.i, %gfmult_array_array_hw.exit.i
  %169 = phi i8 [ %.pre31.i, %._crit_edge27.i ], [ 0, %gfmult_array_array_hw.exit.i ]
  %170 = phi i8 [ %.pre29.i, %._crit_edge27.i ], [ 0, %gfmult_array_array_hw.exit.i ]
  %k2.016.i = phi i32 [ %173, %._crit_edge27.i ], [ 0, %gfmult_array_array_hw.exit.i ]
  call void @__legup_label(i8* getelementptr inbounds ([12 x i8]* @.str5, i32 0, i32 0)) #6
  %171 = getelementptr inbounds [18 x i8]* %t1.i, i32 0, i32 %k2.016.i
  store i8 %170, i8* %171, align 1, !tbaa !1
  %172 = getelementptr inbounds [18 x i8]* %t2.i, i32 0, i32 %k2.016.i
  store i8 %169, i8* %172, align 1, !tbaa !1
  %173 = add nsw i32 %k2.016.i, 1
  %exitcond23.i = icmp eq i32 %k2.016.i, 17
  br i1 %exitcond23.i, label %174, label %._crit_edge27.i

._crit_edge27.i:                                  ; preds = %.preheader32.i
  %.phi.trans.insert28.i = getelementptr inbounds [18 x i8]* %p.i, i32 0, i32 %173
  %.pre29.i = load i8* %.phi.trans.insert28.i, align 1, !tbaa !1
  %.phi.trans.insert30.i = getelementptr inbounds [18 x i8]* %a.i, i32 0, i32 %173
  %.pre31.i = load i8* %.phi.trans.insert30.i, align 1, !tbaa !1
  br label %.preheader32.i

; <label>:174                                     ; preds = %.preheader32.i
  %175 = call fastcc zeroext i8 @gfmult_hw(i8 zeroext %167, i8 zeroext %dstar.019.i) #6
  %176 = zext i8 %l.018.i to i32
  %177 = shl nuw nsw i32 %176, 1
  %178 = icmp slt i32 %i1.020.i, %177
  br i1 %178, label %195, label %179

; <label>:179                                     ; preds = %174
  %180 = sub i32 1, %176
  br label %181

; <label>:181                                     ; preds = %181, %179
  %k3.017.i = phi i32 [ 0, %179 ], [ %188, %181 ]
  call void @__legup_label(i8* getelementptr inbounds ([12 x i8]* @.str6, i32 0, i32 0)) #6
  %182 = getelementptr inbounds [18 x i8]* %c.i, i32 0, i32 %k3.017.i
  %183 = load i8* %182, align 1, !tbaa !1
  %184 = getelementptr inbounds [18 x i8]* %p.i, i32 0, i32 %k3.017.i
  store i8 %183, i8* %184, align 1, !tbaa !1
  %185 = getelementptr inbounds [18 x i8]* %w.i, i32 0, i32 %k3.017.i
  %186 = load i8* %185, align 1, !tbaa !1
  %187 = getelementptr inbounds [18 x i8]* %a.i, i32 0, i32 %k3.017.i
  store i8 %186, i8* %187, align 1, !tbaa !1
  %188 = add nsw i32 %k3.017.i, 1
  %exitcond24.i = icmp eq i32 %k3.017.i, 17
  br i1 %exitcond24.i, label %189, label %181

; <label>:189                                     ; preds = %181
  %190 = add i32 %180, %i1.020.i
  %191 = trunc i32 %190 to i8
  %192 = zext i8 %167 to i32
  %193 = getelementptr inbounds [256 x i8]* @gfinv_lut.lut, i32 0, i32 %192
  %194 = load i8* %193, align 1, !tbaa !1
  br label %195

; <label>:195                                     ; preds = %189, %174
  %l.1.i = phi i8 [ %191, %189 ], [ %l.018.i, %174 ]
  %dstar.1.i = phi i8 [ %194, %189 ], [ %dstar.019.i, %174 ]
  br label %196

; <label>:196                                     ; preds = %196, %195
  %i.01.i11.i = phi i32 [ 0, %195 ], [ %201, %196 ]
  %197 = getelementptr inbounds [18 x i8]* %t1.i, i32 0, i32 %i.01.i11.i
  %198 = load i8* %197, align 1, !tbaa !1
  %199 = call fastcc zeroext i8 @gfmult_hw(i8 zeroext %175, i8 zeroext %198) #6
  %200 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 %i.01.i11.i
  store i8 %199, i8* %200, align 1, !tbaa !1
  %201 = add nsw i32 %i.01.i11.i, 1
  %exitcond.i12.i = icmp eq i32 %i.01.i11.i, 17
  br i1 %exitcond.i12.i, label %gfmult_scalar_array_hw1.exit.i, label %196

gfmult_scalar_array_hw1.exit.i:                   ; preds = %gfmult_scalar_array_hw1.exit.i, %196
  %i.01.i9.i = phi i32 [ %207, %gfmult_scalar_array_hw1.exit.i ], [ 0, %196 ]
  %202 = getelementptr inbounds [18 x i8]* %c.i, i32 0, i32 %i.01.i9.i
  %203 = load i8* %202, align 1, !tbaa !1
  %204 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 %i.01.i9.i
  %205 = load i8* %204, align 1, !tbaa !1
  %206 = xor i8 %205, %203
  store i8 %206, i8* %202, align 1, !tbaa !1
  %207 = add nsw i32 %i.01.i9.i, 1
  %exitcond.i10.i = icmp eq i32 %i.01.i9.i, 17
  br i1 %exitcond.i10.i, label %gfadd_array_array_hw1.exit.i, label %gfmult_scalar_array_hw1.exit.i

gfadd_array_array_hw1.exit.i:                     ; preds = %gfadd_array_array_hw1.exit.i, %gfmult_scalar_array_hw1.exit.i
  %i.01.i7.i = phi i32 [ %212, %gfadd_array_array_hw1.exit.i ], [ 0, %gfmult_scalar_array_hw1.exit.i ]
  %208 = getelementptr inbounds [18 x i8]* %t2.i, i32 0, i32 %i.01.i7.i
  %209 = load i8* %208, align 1, !tbaa !1
  %210 = call fastcc zeroext i8 @gfmult_hw(i8 zeroext %175, i8 zeroext %209) #6
  %211 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 %i.01.i7.i
  store i8 %210, i8* %211, align 1, !tbaa !1
  %212 = add nsw i32 %i.01.i7.i, 1
  %exitcond.i8.i = icmp eq i32 %i.01.i7.i, 17
  br i1 %exitcond.i8.i, label %gfmult_scalar_array_hw2.exit.i, label %gfadd_array_array_hw1.exit.i

gfmult_scalar_array_hw2.exit.i:                   ; preds = %gfmult_scalar_array_hw2.exit.i, %gfadd_array_array_hw1.exit.i
  %i.01.i5.i = phi i32 [ %218, %gfmult_scalar_array_hw2.exit.i ], [ 0, %gfadd_array_array_hw1.exit.i ]
  %213 = getelementptr inbounds [18 x i8]* %w.i, i32 0, i32 %i.01.i5.i
  %214 = load i8* %213, align 1, !tbaa !1
  %215 = getelementptr inbounds [18 x i8]* %temp.i, i32 0, i32 %i.01.i5.i
  %216 = load i8* %215, align 1, !tbaa !1
  %217 = xor i8 %216, %214
  store i8 %217, i8* %213, align 1, !tbaa !1
  %218 = add nsw i32 %i.01.i5.i, 1
  %exitcond.i6.i = icmp eq i32 %i.01.i5.i, 17
  br i1 %exitcond.i6.i, label %gfadd_array_array_hw2.exit.i, label %gfmult_scalar_array_hw2.exit.i

gfadd_array_array_hw2.exit.i:                     ; preds = %gfmult_scalar_array_hw2.exit.i, %gfmult_array_array_hw.exit.i
  %l.2.i = phi i8 [ %l.018.i, %gfmult_array_array_hw.exit.i ], [ %l.1.i, %gfmult_scalar_array_hw2.exit.i ]
  %dstar.2.i = phi i8 [ %dstar.019.i, %gfmult_array_array_hw.exit.i ], [ %dstar.1.i, %gfmult_scalar_array_hw2.exit.i ]
  %219 = add nsw i32 %i1.020.i, 1
  %exitcond25.i = icmp eq i32 %i1.020.i, 31
  br i1 %exitcond25.i, label %.preheader.i2, label %.preheader13.i

.preheader.i2:                                    ; preds = %.preheader.i2, %gfadd_array_array_hw2.exit.i
  %k4.014.i = phi i32 [ %220, %.preheader.i2 ], [ 0, %gfadd_array_array_hw2.exit.i ]
  call void @__legup_label(i8* getelementptr inbounds ([9 x i8]* @.str7, i32 0, i32 0)) #6
  %220 = add nsw i32 %k4.014.i, 1
  %221 = getelementptr inbounds [18 x i8]* %c.i, i32 0, i32 %220
  %222 = load i8* %221, align 1, !tbaa !1
  %223 = getelementptr inbounds i8* %7, i32 %k4.014.i
  store i8 %222, i8* %223, align 1, !tbaa !1
  %224 = getelementptr inbounds [18 x i8]* %w.i, i32 0, i32 %220
  %225 = load i8* %224, align 1, !tbaa !1
  %226 = getelementptr inbounds i8* %8, i32 %k4.014.i
  store i8 %225, i8* %226, align 1, !tbaa !1
  %exitcond.i1 = icmp eq i32 %k4.014.i, 15
  br i1 %exitcond.i1, label %berlekamp.exit, label %.preheader.i2

berlekamp.exit:                                   ; preds = %.preheader.i2
  %227 = load i8* %7, align 1, !tbaa !1
  store i8 %227, i8* %44, align 1, !tbaa !1
  %228 = load i8* %45, align 1, !tbaa !1
  store i8 %228, i8* %46, align 1, !tbaa !1
  %229 = load i8* %47, align 1, !tbaa !1
  store i8 %229, i8* %48, align 1, !tbaa !1
  %230 = load i8* %49, align 1, !tbaa !1
  store i8 %230, i8* %50, align 1, !tbaa !1
  %231 = load i8* %51, align 1, !tbaa !1
  store i8 %231, i8* %52, align 1, !tbaa !1
  %232 = load i8* %53, align 1, !tbaa !1
  store i8 %232, i8* %54, align 1, !tbaa !1
  %233 = load i8* %55, align 1, !tbaa !1
  store i8 %233, i8* %56, align 1, !tbaa !1
  %234 = load i8* %57, align 1, !tbaa !1
  store i8 %234, i8* %58, align 1, !tbaa !1
  %235 = load i8* %59, align 1, !tbaa !1
  store i8 %235, i8* %60, align 1, !tbaa !1
  %236 = load i8* %61, align 1, !tbaa !1
  store i8 %236, i8* %62, align 1, !tbaa !1
  %237 = load i8* %63, align 1, !tbaa !1
  store i8 %237, i8* %64, align 1, !tbaa !1
  %238 = load i8* %65, align 1, !tbaa !1
  store i8 %238, i8* %66, align 1, !tbaa !1
  %239 = load i8* %67, align 1, !tbaa !1
  store i8 %239, i8* %68, align 1, !tbaa !1
  %240 = load i8* %69, align 1, !tbaa !1
  store i8 %240, i8* %70, align 1, !tbaa !1
  %241 = load i8* %71, align 1, !tbaa !1
  store i8 %241, i8* %72, align 1, !tbaa !1
  %242 = load i8* %73, align 1, !tbaa !1
  store i8 %242, i8* %74, align 1, !tbaa !1
  br label %243

; <label>:243                                     ; preds = %296, %berlekamp.exit
  %244 = phi i8 [ %227, %berlekamp.exit ], [ %245, %296 ]
  %i1.014.i = phi i32 [ 254, %berlekamp.exit ], [ %297, %296 ]
  %alphainv.013.i = phi i32 [ 2, %berlekamp.exit ], [ %phitmp5.i, %296 ]
  %err_cnt.012.i = phi i8 [ 0, %berlekamp.exit ], [ %err_cnt.1.i, %296 ]
  call void @__legup_label(i8* getelementptr inbounds ([20 x i8]* @.str8, i32 0, i32 0)) #6
  br label %281

.preheader6.i:                                    ; preds = %281
  %245 = load i8* %44, align 1, !tbaa !1
  %246 = xor i8 %245, 1
  %247 = load i8* %46, align 1, !tbaa !1
  %248 = xor i8 %247, %246
  %249 = load i8* %48, align 1, !tbaa !1
  %250 = xor i8 %249, %248
  %251 = load i8* %50, align 1, !tbaa !1
  %252 = xor i8 %251, %250
  %253 = load i8* %52, align 1, !tbaa !1
  %254 = xor i8 %253, %252
  %255 = load i8* %54, align 1, !tbaa !1
  %256 = xor i8 %255, %254
  %257 = load i8* %56, align 1, !tbaa !1
  %258 = xor i8 %257, %256
  %259 = load i8* %58, align 1, !tbaa !1
  %260 = xor i8 %259, %258
  %261 = load i8* %60, align 1, !tbaa !1
  %262 = xor i8 %261, %260
  %263 = load i8* %62, align 1, !tbaa !1
  %264 = xor i8 %263, %262
  %265 = load i8* %64, align 1, !tbaa !1
  %266 = xor i8 %265, %264
  %267 = load i8* %66, align 1, !tbaa !1
  %268 = xor i8 %267, %266
  %269 = load i8* %68, align 1, !tbaa !1
  %270 = xor i8 %269, %268
  %271 = load i8* %70, align 1, !tbaa !1
  %272 = xor i8 %271, %270
  %273 = load i8* %72, align 1, !tbaa !1
  %274 = xor i8 %273, %272
  %275 = load i8* %74, align 1, !tbaa !1
  %276 = and i32 %alphainv.013.i, 256
  %277 = icmp eq i32 %276, 0
  %278 = xor i32 %alphainv.013.i, 29
  %temp.3.6..i.i = select i1 %277, i32 %alphainv.013.i, i32 %278
  %i1.0.off.i = add i32 %i1.014.i, -32
  %279 = icmp ult i32 %i1.0.off.i, 223
  %280 = icmp eq i8 %275, %274
  %or.cond.i = and i1 %279, %280
  br i1 %or.cond.i, label %288, label %296

; <label>:281                                     ; preds = %._crit_edge.i5, %243
  %282 = phi i8 [ %244, %243 ], [ %.pre.i4, %._crit_edge.i5 ]
  %j.09.i = phi i32 [ 0, %243 ], [ %284, %._crit_edge.i5 ]
  %283 = getelementptr inbounds [16 x i8]* %lambda_a.i, i32 0, i32 %j.09.i
  %284 = add nsw i32 %j.09.i, 1
  %285 = getelementptr inbounds [256 x i8]* @alpha.alpha_lut, i32 0, i32 %284
  %286 = load i8* %285, align 1, !tbaa !1
  %287 = call fastcc zeroext i8 @gfmult_hw(i8 zeroext %282, i8 zeroext %286) #6
  store i8 %287, i8* %283, align 1, !tbaa !1
  %exitcond16.i = icmp eq i32 %j.09.i, 15
  br i1 %exitcond16.i, label %.preheader6.i, label %._crit_edge.i5

._crit_edge.i5:                                   ; preds = %281
  %.phi.trans.insert.i3 = getelementptr inbounds [16 x i8]* %lambda_a.i, i32 0, i32 %284
  %.pre.i4 = load i8* %.phi.trans.insert.i3, align 1, !tbaa !1
  br label %281

; <label>:288                                     ; preds = %.preheader6.i
  %289 = trunc i32 %temp.3.6..i.i to i8
  call void @__legup_label(i8* getelementptr inbounds ([13 x i8]* @.str9, i32 0, i32 0)) #6
  %290 = add nsw i32 %i1.014.i, 224
  %291 = trunc i32 %290 to i8
  %292 = zext i8 %err_cnt.012.i to i32
  %293 = getelementptr inbounds [16 x i8]* %err_loc_temp.i, i32 0, i32 %292
  store i8 %291, i8* %293, align 1, !tbaa !1
  %294 = getelementptr inbounds [16 x i8]* %alpha_inv_temp.i, i32 0, i32 %292
  store i8 %289, i8* %294, align 1, !tbaa !1
  %295 = add i8 %err_cnt.012.i, 1
  br label %296

; <label>:296                                     ; preds = %288, %.preheader6.i
  %err_cnt.1.i = phi i8 [ %295, %288 ], [ %err_cnt.012.i, %.preheader6.i ]
  %297 = add nsw i32 %i1.014.i, -1
  %phitmp.i = shl nuw nsw i32 %temp.3.6..i.i, 1
  %phitmp5.i = and i32 %phitmp.i, 510
  %298 = icmp sgt i32 %i1.014.i, 0
  br i1 %298, label %243, label %.preheader.i8.preheader

.preheader.i8.preheader:                          ; preds = %296
  %err_cnt.1.i.lcssa = phi i8 [ %err_cnt.1.i, %296 ]
  br label %.preheader.i8

.preheader.i8:                                    ; preds = %.preheader.i8, %.preheader.i8.preheader
  %i3.08.i = phi i32 [ %305, %.preheader.i8 ], [ 0, %.preheader.i8.preheader ]
  call void @__legup_label(i8* getelementptr inbounds ([21 x i8]* @.str10, i32 0, i32 0)) #6
  %299 = getelementptr inbounds [16 x i8]* %err_loc_temp.i, i32 0, i32 %i3.08.i
  %300 = load i8* %299, align 1, !tbaa !1
  %301 = getelementptr inbounds i8* %2, i32 %i3.08.i
  store i8 %300, i8* %301, align 1, !tbaa !1
  %302 = getelementptr inbounds [16 x i8]* %alpha_inv_temp.i, i32 0, i32 %i3.08.i
  %303 = load i8* %302, align 1, !tbaa !1
  %304 = getelementptr inbounds i8* %9, i32 %i3.08.i
  store i8 %303, i8* %304, align 1, !tbaa !1
  %305 = add nsw i32 %i3.08.i, 1
  %exitcond.i7 = icmp eq i32 %i3.08.i, 15
  br i1 %exitcond.i7, label %chien_search.exit, label %.preheader.i8

chien_search.exit:                                ; preds = %311, %.preheader.i8
  %i.01.i.i9 = phi i32 [ %314, %311 ], [ 0, %.preheader.i8 ]
  %306 = and i32 %i.01.i.i9, 1
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %311

; <label>:308                                     ; preds = %chien_search.exit
  %309 = getelementptr inbounds i8* %7, i32 %i.01.i.i9
  %310 = load i8* %309, align 1, !tbaa !1
  br label %311

; <label>:311                                     ; preds = %308, %chien_search.exit
  %312 = phi i8 [ %310, %308 ], [ 0, %chien_search.exit ]
  %313 = getelementptr inbounds [16 x i8]* %lambda_a.i, i32 0, i32 %i.01.i.i9
  store i8 %312, i8* %313, align 1, !tbaa !1
  %314 = add nsw i32 %i.01.i.i9, 1
  %exitcond.i.i10 = icmp eq i32 %i.01.i.i9, 15
  br i1 %exitcond.i.i10, label %compute_deriv.exit.i, label %chien_search.exit

.preheader.i11:                                   ; preds = %compute_deriv.exit.i
  %315 = zext i8 %err_cnt.1.i.lcssa to i32
  br label %326

compute_deriv.exit.i:                             ; preds = %compute_deriv.exit.i, %311
  %i.05.i = phi i32 [ %325, %compute_deriv.exit.i ], [ 0, %311 ]
  %316 = getelementptr inbounds i8* %9, i32 %i.05.i
  %317 = load i8* %316, align 1, !tbaa !1
  %318 = call fastcc zeroext i8 @poly_eval(i8* %44, i8 zeroext %317) #6
  %319 = call fastcc zeroext i8 @poly_eval(i8* %8, i8 zeroext %317) #6
  %320 = zext i8 %318 to i32
  %321 = getelementptr inbounds [256 x i8]* @gfinv_lut.lut, i32 0, i32 %320
  %322 = load i8* %321, align 1, !tbaa !1
  %323 = call fastcc zeroext i8 @gfmult_hw(i8 zeroext %319, i8 zeroext %322) #6
  %324 = getelementptr inbounds [16 x i8]* %err_loc_temp.i, i32 0, i32 %i.05.i
  store i8 %323, i8* %324, align 1, !tbaa !1
  %325 = add nsw i32 %i.05.i, 1
  %exitcond6.i12 = icmp eq i32 %i.05.i, 15
  br i1 %exitcond6.i12, label %.preheader.i11, label %compute_deriv.exit.i

; <label>:326                                     ; preds = %337, %.preheader.i11
  %i1.04.i = phi i32 [ 0, %.preheader.i11 ], [ %339, %337 ]
  %loc_idx.03.i = phi i32 [ 0, %.preheader.i11 ], [ %loc_idx.1.i, %337 ]
  %327 = getelementptr inbounds i8* %2, i32 %loc_idx.03.i
  %328 = load i8* %327, align 1, !tbaa !1
  %329 = zext i8 %328 to i32
  %330 = sub nsw i32 222, %i1.04.i
  %331 = icmp eq i32 %329, %330
  %332 = icmp slt i32 %loc_idx.03.i, %315
  %or.cond.i13 = and i1 %331, %332
  br i1 %or.cond.i13, label %333, label %337

; <label>:333                                     ; preds = %326
  %334 = getelementptr inbounds [16 x i8]* %err_loc_temp.i, i32 0, i32 %loc_idx.03.i
  %335 = load i8* %334, align 1, !tbaa !1
  %336 = add nsw i32 %loc_idx.03.i, 1
  br label %337

; <label>:337                                     ; preds = %333, %326
  %.sink.i = phi i8 [ %335, %333 ], [ 0, %326 ]
  %loc_idx.1.i = phi i32 [ %336, %333 ], [ %loc_idx.03.i, %326 ]
  %338 = getelementptr inbounds i8* %3, i32 %i1.04.i
  store i8 %.sink.i, i8* %338, align 1
  %339 = add nsw i32 %i1.04.i, 1
  %exitcond.i14 = icmp eq i32 %i1.04.i, 222
  br i1 %exitcond.i14, label %error_mag.exit, label %326

error_mag.exit:                                   ; preds = %error_mag.exit, %337
  %i.01.i1 = phi i32 [ %346, %error_mag.exit ], [ 0, %337 ]
  %340 = getelementptr inbounds [223 x i8]* %in_data, i32 0, i32 %i.01.i1
  %341 = load i8* %340, align 1, !tbaa !1
  %342 = getelementptr inbounds [223 x i8]* %err, i32 0, i32 %i.01.i1
  %343 = load i8* %342, align 1, !tbaa !1
  %344 = xor i8 %343, %341
  %345 = getelementptr inbounds [223 x i8]* %out_d, i32 0, i32 %i.01.i1
  store i8 %344, i8* %345, align 1, !tbaa !1
  %346 = add nsw i32 %i.01.i1, 1
  %exitcond.i2 = icmp eq i32 %i.01.i1, 222
  br i1 %exitcond.i2, label %error_correct.exit, label %error_mag.exit

error_correct.exit:                               ; preds = %error_mag.exit
  %347 = add nsw i32 %j.06, 1
  %exitcond7 = icmp eq i32 %j.06, 2
  br i1 %exitcond7, label %348, label %75

; <label>:348                                     ; preds = %error_correct.exit
  %349 = getelementptr inbounds [223 x i8]* %out_d, i32 0, i32 255
  %350 = load i8* %349, align 1, !tbaa !1
  %351 = zext i8 %350 to i32
  ret i32 %351
}

attributes #0 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 "}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"omnipotent char", metadata !3, i64 0}
!3 = metadata !{metadata !"Simple C/C++ TBAA"}
