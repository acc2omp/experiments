; ModuleID = '/home/felipe.emos/experiments/teste/new/target_ACC/acc_off.cpp'
source_filename = "/home/felipe.emos/experiments/teste/new/target_ACC/acc_off.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [15 x i8] c"(p[%d] = %lf) \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr constant %ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant %ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0) }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_Z4initPfS_i(float*, float*, i32) #0 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

; <label>:8:                                      ; preds = %21, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %24

; <label>:12:                                     ; preds = %8
  %13 = load float*, float** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds float, float* %13, i64 %15
  store float 1.000000e+01, float* %16, align 4
  %17 = load float*, float** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds float, float* %17, i64 %19
  store float 4.000000e+00, float* %20, align 4
  br label %21

; <label>:21:                                     ; preds = %12
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %7, align 4
  br label %8

; <label>:24:                                     ; preds = %8
  ret void
}

; Function Attrs: noinline optnone uwtable
define dso_local void @_Z6outputPfi(float*, i32) #1 {
  %3 = alloca float*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store float* %0, float** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %18, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 5
  br i1 %8, label %9, label %21

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* %5, align 4
  %11 = load float*, float** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds float, float* %11, i64 %13
  %15 = load float, float* %14, align 4
  %16 = fpext float %15 to double
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 %10, double %16)
  br label %18

; <label>:18:                                     ; preds = %9
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  br label %6

; <label>:21:                                     ; preds = %6
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline optnone uwtable
define dso_local void @_Z8vec_multi(i32) #1 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca float, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load i32, i32* %2, align 4
  %13 = zext i32 %12 to i64
  %14 = alloca float, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %15 = load i32, i32* %2, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca float, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %18 = load i32, i32* %2, align 4
  call void @_Z4initPfS_i(float* %14, float* %17, i32 %18)
  call void (%ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%ident_t* @1, i32 8, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i64, float*, i64, float*, i64, float*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %3, i32* %2, i64 %9, float* %11, i64 %13, float* %14, i64 %16, float* %17)
  %19 = load i32, i32* %2, align 4
  call void @_Z6outputPfi(float* %11, i32 %19)
  %20 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %20)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias, i32* noalias, i32* dereferenceable(4), i32* dereferenceable(4), i64, float* dereferenceable(4), i64, float* dereferenceable(4), i64, float* dereferenceable(4)) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca float*, align 8
  %17 = alloca i64, align 8
  %18 = alloca float*, align 8
  %19 = alloca i64, align 8
  %20 = alloca float*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = call i32 @__kmpc_global_thread_num(%ident_t* @1)
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i64 %4, i64* %15, align 8
  store float* %5, float** %16, align 8
  store i64 %6, i64* %17, align 8
  store float* %7, float** %18, align 8
  store i64 %8, i64* %19, align 8
  store float* %9, float** %20, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = load i64, i64* %15, align 8
  %34 = load float*, float** %16, align 8
  %35 = load i64, i64* %17, align 8
  %36 = load float*, float** %18, align 8
  %37 = load i64, i64* %19, align 8
  %38 = load float*, float** %20, align 8
  %39 = load i32, i32* %32, align 4
  store i32 %39, i32* %23, align 4
  %40 = load i32, i32* %23, align 4
  %41 = sub nsw i32 %40, 0
  %42 = sub nsw i32 %41, 1
  %43 = add nsw i32 %42, 1
  %44 = sdiv i32 %43, 1
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %46 = load i32, i32* %23, align 4
  %47 = icmp slt i32 0, %46
  br i1 %47, label %48, label %86

; <label>:48:                                     ; preds = %10
  store i32 0, i32* %26, align 4
  %49 = load i32, i32* %24, align 4
  store i32 %49, i32* %27, align 4
  store i32 1, i32* %28, align 4
  store i32 0, i32* %29, align 4
  call void @__kmpc_for_static_init_4(%ident_t* @0, i32 %30, i32 34, i32* %29, i32* %26, i32* %27, i32* %28, i32 1, i32 1)
  %50 = load i32, i32* %27, align 4
  %51 = load i32, i32* %24, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %55

; <label>:53:                                     ; preds = %48
  %54 = load i32, i32* %24, align 4
  br label %57

; <label>:55:                                     ; preds = %48
  %56 = load i32, i32* %27, align 4
  br label %57

; <label>:57:                                     ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  store i32 %58, i32* %27, align 4
  %59 = load i32, i32* %26, align 4
  store i32 %59, i32* %21, align 4
  br label %60

; <label>:60:                                     ; preds = %81, %57
  %61 = load i32, i32* %21, align 4
  %62 = load i32, i32* %27, align 4
  %63 = icmp sle i32 %61, %62
  br i1 %63, label %64, label %84

; <label>:64:                                     ; preds = %60
  %65 = load i32, i32* %21, align 4
  %66 = mul nsw i32 %65, 1
  %67 = add nsw i32 0, %66
  store i32 %67, i32* %25, align 4
  %68 = load i32, i32* %25, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds float, float* %36, i64 %69
  %71 = load float, float* %70, align 4
  %72 = load i32, i32* %25, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, float* %38, i64 %73
  %75 = load float, float* %74, align 4
  %76 = fmul float %71, %75
  %77 = load i32, i32* %25, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds float, float* %34, i64 %78
  store float %76, float* %79, align 4
  br label %80

; <label>:80:                                     ; preds = %64
  br label %81

; <label>:81:                                     ; preds = %80
  %82 = load i32, i32* %21, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %21, align 4
  br label %60

; <label>:84:                                     ; preds = %60
  br label %85

; <label>:85:                                     ; preds = %84
  call void @__kmpc_for_static_fini(%ident_t* @0, i32 %30)
  br label %86

; <label>:86:                                     ; preds = %85, %10
  ret void
}

declare i32 @__kmpc_global_thread_num(%ident_t*)

declare void @__kmpc_for_static_init_4(%ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare void @__kmpc_for_static_fini(%ident_t*, i32)

declare void @__kmpc_fork_call(%ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: noinline norecurse optnone uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @_Z8vec_multi(i32 10000000)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 7.0.0 (git@github.com:acc2omp/clang.git 6e8802ff86c18123577b10f8a044b6321be49886) (git@github.com:acc2omp/llvm.git d85c7de7041199e1dd98b8ee4a07bb6f9f9239c1)"}
