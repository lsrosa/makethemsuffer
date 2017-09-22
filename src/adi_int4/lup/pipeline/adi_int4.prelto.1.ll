; ModuleID = 'adi_int4.prelto.1.bc'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"loop1\00", align 1

; Function Attrs: nounwind
define i32 @main() #0 {
  %u1 = alloca [2 x [11 x [4 x float]]], align 4
  %u2 = alloca [2 x [11 x [4 x float]]], align 4
  %u3 = alloca [2 x [11 x [4 x float]]], align 4
  %u21 = alloca [2 x [11 x [4 x float]]], align 4
  %u22 = alloca [2 x [11 x [4 x float]]], align 4
  %u23 = alloca [2 x [11 x [4 x float]]], align 4
  %u41 = alloca [2 x [11 x [4 x float]]], align 4
  %u42 = alloca [2 x [11 x [4 x float]]], align 4
  %u43 = alloca [2 x [11 x [4 x float]]], align 4
  %u421 = alloca [2 x [11 x [4 x float]]], align 4
  %u422 = alloca [2 x [11 x [4 x float]]], align 4
  %u423 = alloca [2 x [11 x [4 x float]]], align 4
  %1 = bitcast [2 x [11 x [4 x float]]]* %u1 to i8*
  call void @llvm.lifetime.start(i64 352, i8* %1) #1
  %2 = bitcast [2 x [11 x [4 x float]]]* %u2 to i8*
  call void @llvm.lifetime.start(i64 352, i8* %2) #1
  %3 = bitcast [2 x [11 x [4 x float]]]* %u3 to i8*
  call void @llvm.lifetime.start(i64 352, i8* %3) #1
  %4 = bitcast [2 x [11 x [4 x float]]]* %u21 to i8*
  call void @llvm.lifetime.start(i64 352, i8* %4) #1
  %5 = bitcast [2 x [11 x [4 x float]]]* %u22 to i8*
  call void @llvm.lifetime.start(i64 352, i8* %5) #1
  %6 = bitcast [2 x [11 x [4 x float]]]* %u23 to i8*
  call void @llvm.lifetime.start(i64 352, i8* %6) #1
  %7 = bitcast [2 x [11 x [4 x float]]]* %u41 to i8*
  call void @llvm.lifetime.start(i64 352, i8* %7) #1
  %8 = bitcast [2 x [11 x [4 x float]]]* %u42 to i8*
  call void @llvm.lifetime.start(i64 352, i8* %8) #1
  %9 = bitcast [2 x [11 x [4 x float]]]* %u43 to i8*
  call void @llvm.lifetime.start(i64 352, i8* %9) #1
  %10 = bitcast [2 x [11 x [4 x float]]]* %u421 to i8*
  call void @llvm.lifetime.start(i64 352, i8* %10) #1
  %11 = bitcast [2 x [11 x [4 x float]]]* %u422 to i8*
  call void @llvm.lifetime.start(i64 352, i8* %11) #1
  %12 = bitcast [2 x [11 x [4 x float]]]* %u423 to i8*
  call void @llvm.lifetime.start(i64 352, i8* %12) #1
  br label %.preheader1

.preheader1:                                      ; preds = %331, %0
  %l.04 = phi i32 [ 1, %0 ], [ %332, %331 ]
  br label %.preheader

.preheader:                                       ; preds = %330, %.preheader1
  %kx.13 = phi i32 [ 1, %.preheader1 ], [ %13, %330 ]
  %13 = add nsw i32 %kx.13, 1
  %14 = add nsw i32 %kx.13, -1
  br label %15

; <label>:15                                      ; preds = %15, %.preheader
  %ky.22 = phi i32 [ 1, %.preheader ], [ %16, %15 ]
  tail call void @__legup_label(i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0)) #3
  %16 = add nsw i32 %ky.22, 1
  %17 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u1, i32 0, i32 0, i32 %16, i32 %kx.13
  %18 = load float* %17, align 4, !tbaa !1
  %19 = add nsw i32 %ky.22, -1
  %20 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u1, i32 0, i32 0, i32 %19, i32 %kx.13
  %21 = load float* %20, align 4, !tbaa !1
  %22 = fsub float %18, %21
  %23 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u2, i32 0, i32 0, i32 %16, i32 %kx.13
  %24 = load float* %23, align 4, !tbaa !1
  %25 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u2, i32 0, i32 0, i32 %19, i32 %kx.13
  %26 = load float* %25, align 4, !tbaa !1
  %27 = fsub float %24, %26
  %28 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u3, i32 0, i32 0, i32 %16, i32 %kx.13
  %29 = load float* %28, align 4, !tbaa !1
  %30 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u3, i32 0, i32 0, i32 %19, i32 %kx.13
  %31 = load float* %30, align 4, !tbaa !1
  %32 = fsub float %29, %31
  %33 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u1, i32 0, i32 0, i32 %ky.22, i32 %kx.13
  %34 = load float* %33, align 4, !tbaa !1
  %35 = fmul float %22, 0.000000e+00
  %36 = fadd float %34, %35
  %37 = fmul float %27, 0.000000e+00
  %38 = fadd float %36, %37
  %39 = fmul float %32, 0.000000e+00
  %40 = fadd float %39, %38
  %41 = fpext float %40 to double
  %42 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u1, i32 0, i32 0, i32 %ky.22, i32 %13
  %43 = load float* %42, align 4, !tbaa !1
  %44 = fpext float %43 to double
  %45 = fpext float %34 to double
  %46 = fmul double %45, 2.000000e+00
  %47 = fsub double %44, %46
  %48 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u1, i32 0, i32 0, i32 %ky.22, i32 %14
  %49 = load float* %48, align 4, !tbaa !1
  %50 = fpext float %49 to double
  %51 = fadd double %47, %50
  %52 = fmul double %51, 0x3FC99999A0000000
  %53 = fadd double %41, %52
  %54 = fptrunc double %53 to float
  %55 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u1, i32 0, i32 1, i32 %ky.22, i32 %kx.13
  store float %54, float* %55, align 4, !tbaa !1
  %56 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u2, i32 0, i32 0, i32 %ky.22, i32 %kx.13
  %57 = load float* %56, align 4, !tbaa !1
  %58 = fadd float %57, %35
  %59 = fadd float %58, %37
  %60 = fadd float %59, %39
  %61 = fpext float %60 to double
  %62 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u2, i32 0, i32 0, i32 %ky.22, i32 %13
  %63 = load float* %62, align 4, !tbaa !1
  %64 = fpext float %63 to double
  %65 = fpext float %57 to double
  %66 = fmul double %65, 2.000000e+00
  %67 = fsub double %64, %66
  %68 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u2, i32 0, i32 0, i32 %ky.22, i32 %14
  %69 = load float* %68, align 4, !tbaa !1
  %70 = fpext float %69 to double
  %71 = fadd double %67, %70
  %72 = fmul double %71, 0x3FC99999A0000000
  %73 = fadd double %61, %72
  %74 = fptrunc double %73 to float
  %75 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u2, i32 0, i32 1, i32 %ky.22, i32 %kx.13
  store float %74, float* %75, align 4, !tbaa !1
  %76 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u3, i32 0, i32 0, i32 %ky.22, i32 %kx.13
  %77 = load float* %76, align 4, !tbaa !1
  %78 = fadd float %77, %35
  %79 = fadd float %78, %37
  %80 = fadd float %79, %39
  %81 = fpext float %80 to double
  %82 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u3, i32 0, i32 0, i32 %ky.22, i32 %13
  %83 = load float* %82, align 4, !tbaa !1
  %84 = fpext float %83 to double
  %85 = fpext float %77 to double
  %86 = fmul double %85, 2.000000e+00
  %87 = fsub double %84, %86
  %88 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u3, i32 0, i32 0, i32 %ky.22, i32 %14
  %89 = load float* %88, align 4, !tbaa !1
  %90 = fpext float %89 to double
  %91 = fadd double %87, %90
  %92 = fmul double %91, 0x3FC99999A0000000
  %93 = fadd double %81, %92
  %94 = fptrunc double %93 to float
  %95 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u3, i32 0, i32 1, i32 %ky.22, i32 %kx.13
  store float %94, float* %95, align 4, !tbaa !1
  %96 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u21, i32 0, i32 0, i32 %16, i32 %kx.13
  %97 = load float* %96, align 4, !tbaa !1
  %98 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u21, i32 0, i32 0, i32 %19, i32 %kx.13
  %99 = load float* %98, align 4, !tbaa !1
  %100 = fsub float %97, %99
  %101 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u22, i32 0, i32 0, i32 %16, i32 %kx.13
  %102 = load float* %101, align 4, !tbaa !1
  %103 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u22, i32 0, i32 0, i32 %19, i32 %kx.13
  %104 = load float* %103, align 4, !tbaa !1
  %105 = fsub float %102, %104
  %106 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u23, i32 0, i32 0, i32 %16, i32 %kx.13
  %107 = load float* %106, align 4, !tbaa !1
  %108 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u23, i32 0, i32 0, i32 %19, i32 %kx.13
  %109 = load float* %108, align 4, !tbaa !1
  %110 = fsub float %107, %109
  %111 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u21, i32 0, i32 0, i32 %ky.22, i32 %kx.13
  %112 = load float* %111, align 4, !tbaa !1
  %113 = fmul float %100, 0.000000e+00
  %114 = fadd float %112, %113
  %115 = fmul float %105, 0.000000e+00
  %116 = fadd float %114, %115
  %117 = fmul float %110, 0.000000e+00
  %118 = fadd float %117, %116
  %119 = fpext float %118 to double
  %120 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u21, i32 0, i32 0, i32 %ky.22, i32 %13
  %121 = load float* %120, align 4, !tbaa !1
  %122 = fpext float %121 to double
  %123 = fpext float %112 to double
  %124 = fmul double %123, 2.000000e+00
  %125 = fsub double %122, %124
  %126 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u21, i32 0, i32 0, i32 %ky.22, i32 %14
  %127 = load float* %126, align 4, !tbaa !1
  %128 = fpext float %127 to double
  %129 = fadd double %125, %128
  %130 = fmul double %129, 0x3FC99999A0000000
  %131 = fadd double %119, %130
  %132 = fptrunc double %131 to float
  %133 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u21, i32 0, i32 1, i32 %ky.22, i32 %kx.13
  store float %132, float* %133, align 4, !tbaa !1
  %134 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u22, i32 0, i32 0, i32 %ky.22, i32 %kx.13
  %135 = load float* %134, align 4, !tbaa !1
  %136 = fadd float %135, %113
  %137 = fadd float %136, %115
  %138 = fadd float %137, %117
  %139 = fpext float %138 to double
  %140 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u22, i32 0, i32 0, i32 %ky.22, i32 %13
  %141 = load float* %140, align 4, !tbaa !1
  %142 = fpext float %141 to double
  %143 = fpext float %135 to double
  %144 = fmul double %143, 2.000000e+00
  %145 = fsub double %142, %144
  %146 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u22, i32 0, i32 0, i32 %ky.22, i32 %14
  %147 = load float* %146, align 4, !tbaa !1
  %148 = fpext float %147 to double
  %149 = fadd double %145, %148
  %150 = fmul double %149, 0x3FC99999A0000000
  %151 = fadd double %139, %150
  %152 = fptrunc double %151 to float
  %153 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u22, i32 0, i32 1, i32 %ky.22, i32 %kx.13
  store float %152, float* %153, align 4, !tbaa !1
  %154 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u23, i32 0, i32 0, i32 %ky.22, i32 %kx.13
  %155 = load float* %154, align 4, !tbaa !1
  %156 = fadd float %155, %113
  %157 = fadd float %156, %115
  %158 = fadd float %157, %117
  %159 = fpext float %158 to double
  %160 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u23, i32 0, i32 0, i32 %ky.22, i32 %13
  %161 = load float* %160, align 4, !tbaa !1
  %162 = fpext float %161 to double
  %163 = fpext float %155 to double
  %164 = fmul double %163, 2.000000e+00
  %165 = fsub double %162, %164
  %166 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u23, i32 0, i32 0, i32 %ky.22, i32 %14
  %167 = load float* %166, align 4, !tbaa !1
  %168 = fpext float %167 to double
  %169 = fadd double %165, %168
  %170 = fmul double %169, 0x3FC99999A0000000
  %171 = fadd double %159, %170
  %172 = fptrunc double %171 to float
  %173 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u23, i32 0, i32 1, i32 %ky.22, i32 %kx.13
  store float %172, float* %173, align 4, !tbaa !1
  %174 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u41, i32 0, i32 0, i32 %16, i32 %kx.13
  %175 = load float* %174, align 4, !tbaa !1
  %176 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u41, i32 0, i32 0, i32 %19, i32 %kx.13
  %177 = load float* %176, align 4, !tbaa !1
  %178 = fsub float %175, %177
  %179 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u42, i32 0, i32 0, i32 %16, i32 %kx.13
  %180 = load float* %179, align 4, !tbaa !1
  %181 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u42, i32 0, i32 0, i32 %19, i32 %kx.13
  %182 = load float* %181, align 4, !tbaa !1
  %183 = fsub float %180, %182
  %184 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u43, i32 0, i32 0, i32 %16, i32 %kx.13
  %185 = load float* %184, align 4, !tbaa !1
  %186 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u43, i32 0, i32 0, i32 %19, i32 %kx.13
  %187 = load float* %186, align 4, !tbaa !1
  %188 = fsub float %185, %187
  %189 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u41, i32 0, i32 0, i32 %ky.22, i32 %kx.13
  %190 = load float* %189, align 4, !tbaa !1
  %191 = fmul float %178, 0.000000e+00
  %192 = fadd float %190, %191
  %193 = fmul float %183, 0.000000e+00
  %194 = fadd float %192, %193
  %195 = fmul float %188, 0.000000e+00
  %196 = fadd float %195, %194
  %197 = fpext float %196 to double
  %198 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u41, i32 0, i32 0, i32 %ky.22, i32 %13
  %199 = load float* %198, align 4, !tbaa !1
  %200 = fpext float %199 to double
  %201 = fpext float %190 to double
  %202 = fmul double %201, 2.000000e+00
  %203 = fsub double %200, %202
  %204 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u41, i32 0, i32 0, i32 %ky.22, i32 %14
  %205 = load float* %204, align 4, !tbaa !1
  %206 = fpext float %205 to double
  %207 = fadd double %203, %206
  %208 = fmul double %207, 0x3FC99999A0000000
  %209 = fadd double %197, %208
  %210 = fptrunc double %209 to float
  %211 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u41, i32 0, i32 1, i32 %ky.22, i32 %kx.13
  store float %210, float* %211, align 4, !tbaa !1
  %212 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u42, i32 0, i32 0, i32 %ky.22, i32 %kx.13
  %213 = load float* %212, align 4, !tbaa !1
  %214 = fadd float %213, %191
  %215 = fadd float %214, %193
  %216 = fadd float %215, %195
  %217 = fpext float %216 to double
  %218 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u42, i32 0, i32 0, i32 %ky.22, i32 %13
  %219 = load float* %218, align 4, !tbaa !1
  %220 = fpext float %219 to double
  %221 = fpext float %213 to double
  %222 = fmul double %221, 2.000000e+00
  %223 = fsub double %220, %222
  %224 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u42, i32 0, i32 0, i32 %ky.22, i32 %14
  %225 = load float* %224, align 4, !tbaa !1
  %226 = fpext float %225 to double
  %227 = fadd double %223, %226
  %228 = fmul double %227, 0x3FC99999A0000000
  %229 = fadd double %217, %228
  %230 = fptrunc double %229 to float
  %231 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u42, i32 0, i32 1, i32 %ky.22, i32 %kx.13
  store float %230, float* %231, align 4, !tbaa !1
  %232 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u43, i32 0, i32 0, i32 %ky.22, i32 %kx.13
  %233 = load float* %232, align 4, !tbaa !1
  %234 = fadd float %233, %191
  %235 = fadd float %234, %193
  %236 = fadd float %235, %195
  %237 = fpext float %236 to double
  %238 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u43, i32 0, i32 0, i32 %ky.22, i32 %13
  %239 = load float* %238, align 4, !tbaa !1
  %240 = fpext float %239 to double
  %241 = fpext float %233 to double
  %242 = fmul double %241, 2.000000e+00
  %243 = fsub double %240, %242
  %244 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u43, i32 0, i32 0, i32 %ky.22, i32 %14
  %245 = load float* %244, align 4, !tbaa !1
  %246 = fpext float %245 to double
  %247 = fadd double %243, %246
  %248 = fmul double %247, 0x3FC99999A0000000
  %249 = fadd double %237, %248
  %250 = fptrunc double %249 to float
  %251 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u43, i32 0, i32 1, i32 %ky.22, i32 %kx.13
  store float %250, float* %251, align 4, !tbaa !1
  %252 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u421, i32 0, i32 0, i32 %16, i32 %kx.13
  %253 = load float* %252, align 4, !tbaa !1
  %254 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u421, i32 0, i32 0, i32 %19, i32 %kx.13
  %255 = load float* %254, align 4, !tbaa !1
  %256 = fsub float %253, %255
  %257 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u422, i32 0, i32 0, i32 %16, i32 %kx.13
  %258 = load float* %257, align 4, !tbaa !1
  %259 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u422, i32 0, i32 0, i32 %19, i32 %kx.13
  %260 = load float* %259, align 4, !tbaa !1
  %261 = fsub float %258, %260
  %262 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u423, i32 0, i32 0, i32 %16, i32 %kx.13
  %263 = load float* %262, align 4, !tbaa !1
  %264 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u423, i32 0, i32 0, i32 %19, i32 %kx.13
  %265 = load float* %264, align 4, !tbaa !1
  %266 = fsub float %263, %265
  %267 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u421, i32 0, i32 0, i32 %ky.22, i32 %kx.13
  %268 = load float* %267, align 4, !tbaa !1
  %269 = fmul float %256, 0.000000e+00
  %270 = fadd float %268, %269
  %271 = fmul float %261, 0.000000e+00
  %272 = fadd float %270, %271
  %273 = fmul float %266, 0.000000e+00
  %274 = fadd float %273, %272
  %275 = fpext float %274 to double
  %276 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u421, i32 0, i32 0, i32 %ky.22, i32 %13
  %277 = load float* %276, align 4, !tbaa !1
  %278 = fpext float %277 to double
  %279 = fpext float %268 to double
  %280 = fmul double %279, 2.000000e+00
  %281 = fsub double %278, %280
  %282 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u421, i32 0, i32 0, i32 %ky.22, i32 %14
  %283 = load float* %282, align 4, !tbaa !1
  %284 = fpext float %283 to double
  %285 = fadd double %281, %284
  %286 = fmul double %285, 0x3FC99999A0000000
  %287 = fadd double %275, %286
  %288 = fptrunc double %287 to float
  %289 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u421, i32 0, i32 1, i32 %ky.22, i32 %kx.13
  store float %288, float* %289, align 4, !tbaa !1
  %290 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u422, i32 0, i32 0, i32 %ky.22, i32 %kx.13
  %291 = load float* %290, align 4, !tbaa !1
  %292 = fadd float %291, %269
  %293 = fadd float %292, %271
  %294 = fadd float %293, %273
  %295 = fpext float %294 to double
  %296 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u422, i32 0, i32 0, i32 %ky.22, i32 %13
  %297 = load float* %296, align 4, !tbaa !1
  %298 = fpext float %297 to double
  %299 = fpext float %291 to double
  %300 = fmul double %299, 2.000000e+00
  %301 = fsub double %298, %300
  %302 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u422, i32 0, i32 0, i32 %ky.22, i32 %14
  %303 = load float* %302, align 4, !tbaa !1
  %304 = fpext float %303 to double
  %305 = fadd double %301, %304
  %306 = fmul double %305, 0x3FC99999A0000000
  %307 = fadd double %295, %306
  %308 = fptrunc double %307 to float
  %309 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u422, i32 0, i32 1, i32 %ky.22, i32 %kx.13
  store float %308, float* %309, align 4, !tbaa !1
  %310 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u423, i32 0, i32 0, i32 %ky.22, i32 %kx.13
  %311 = load float* %310, align 4, !tbaa !1
  %312 = fadd float %311, %269
  %313 = fadd float %312, %271
  %314 = fadd float %313, %273
  %315 = fpext float %314 to double
  %316 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u423, i32 0, i32 0, i32 %ky.22, i32 %13
  %317 = load float* %316, align 4, !tbaa !1
  %318 = fpext float %317 to double
  %319 = fpext float %311 to double
  %320 = fmul double %319, 2.000000e+00
  %321 = fsub double %318, %320
  %322 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u423, i32 0, i32 0, i32 %ky.22, i32 %14
  %323 = load float* %322, align 4, !tbaa !1
  %324 = fpext float %323 to double
  %325 = fadd double %321, %324
  %326 = fmul double %325, 0x3FC99999A0000000
  %327 = fadd double %315, %326
  %328 = fptrunc double %327 to float
  %329 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u423, i32 0, i32 1, i32 %ky.22, i32 %kx.13
  store float %328, float* %329, align 4, !tbaa !1
  %exitcond = icmp eq i32 %ky.22, 9
  br i1 %exitcond, label %330, label %15

; <label>:330                                     ; preds = %15
  %exitcond6 = icmp eq i32 %kx.13, 2
  br i1 %exitcond6, label %331, label %.preheader

; <label>:331                                     ; preds = %330
  %332 = add nsw i32 %l.04, 1
  %exitcond7 = icmp eq i32 %l.04, 2
  br i1 %exitcond7, label %333, label %.preheader1

; <label>:333                                     ; preds = %331
  %334 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u3, i32 0, i32 1, i32 10, i32 3
  %335 = load float* %334, align 4, !tbaa !1
  %336 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u23, i32 0, i32 1, i32 10, i32 3
  %337 = load float* %336, align 4, !tbaa !1
  %338 = fadd float %335, %337
  %339 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u43, i32 0, i32 1, i32 10, i32 3
  %340 = load float* %339, align 4, !tbaa !1
  %341 = fadd float %338, %340
  %342 = getelementptr inbounds [2 x [11 x [4 x float]]]* %u423, i32 0, i32 1, i32 10, i32 3
  %343 = load float* %342, align 4, !tbaa !1
  %344 = fadd float %341, %343
  %345 = fptosi float %344 to i32
  call void @llvm.lifetime.end(i64 352, i8* %12) #1
  call void @llvm.lifetime.end(i64 352, i8* %11) #1
  call void @llvm.lifetime.end(i64 352, i8* %10) #1
  call void @llvm.lifetime.end(i64 352, i8* %9) #1
  call void @llvm.lifetime.end(i64 352, i8* %8) #1
  call void @llvm.lifetime.end(i64 352, i8* %7) #1
  call void @llvm.lifetime.end(i64 352, i8* %6) #1
  call void @llvm.lifetime.end(i64 352, i8* %5) #1
  call void @llvm.lifetime.end(i64 352, i8* %4) #1
  call void @llvm.lifetime.end(i64 352, i8* %3) #1
  call void @llvm.lifetime.end(i64 352, i8* %2) #1
  call void @llvm.lifetime.end(i64 352, i8* %1) #1
  ret i32 %345
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
