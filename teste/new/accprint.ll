; ModuleID = '/home/felipe.emos/teste/new/accprint.cpp'
source_filename = "/home/felipe.emos/teste/new/accprint.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%ident_t = type { i32, i32, i32, i32, i8* }

$__clang_call_terminate = comdat any

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr constant %ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"I am iteration [%d]\0A\00", align 1
@1 = private unnamed_addr constant %ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: noinline norecurse optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  call void (%ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%ident_t* @1, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %i)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i) #1 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  %.acc.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.acc.lb = alloca i32, align 4
  %.acc.ub = alloca i32, align 4
  %.acc.stride = alloca i32, align 4
  %.acc.is_last = alloca i32, align 4
  %i1 = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  store i32* %i, i32** %i.addr, align 8
  %0 = load i32*, i32** %i.addr, align 8
  store i32 0, i32* %.acc.lb, align 4
  store i32 9, i32* %.acc.ub, align 4
  store i32 1, i32* %.acc.stride, align 4
  store i32 0, i32* %.acc.is_last, align 4
  %1 = load i32*, i32** %.global_tid..addr, align 8
  %2 = load i32, i32* %1, align 4
  call void @__kmpc_for_static_init_4(%ident_t* @0, i32 %2, i32 34, i32* %.acc.is_last, i32* %.acc.lb, i32* %.acc.ub, i32* %.acc.stride, i32 1, i32 1)
  %3 = load i32, i32* %.acc.ub, align 4
  %cmp = icmp sgt i32 %3, 9
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %.acc.ub, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 9, %cond.true ], [ %4, %cond.false ]
  store i32 %cond, i32* %.acc.ub, align 4
  %5 = load i32, i32* %.acc.lb, align 4
  store i32 %5, i32* %.acc.iv, align 4
  br label %acc.inner.for.cond

acc.inner.for.cond:                               ; preds = %acc.inner.for.inc, %cond.end
  %6 = load i32, i32* %.acc.iv, align 4
  %7 = load i32, i32* %.acc.ub, align 4
  %cmp2 = icmp sle i32 %6, %7
  br i1 %cmp2, label %acc.inner.for.body, label %acc.inner.for.end

acc.inner.for.body:                               ; preds = %acc.inner.for.cond
  %8 = load i32, i32* %.acc.iv, align 4
  %mul = mul nsw i32 %8, 1
  %add = add nsw i32 0, %mul
  store i32 %add, i32* %i1, align 4
  %call = invoke i32 @sleep(i32 1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %acc.inner.for.body
  %9 = load i32, i32* %i1, align 4
  %call4 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 %9)
          to label %invoke.cont3 unwind label %terminate.lpad

invoke.cont3:                                     ; preds = %invoke.cont
  br label %acc.body.continue

acc.body.continue:                                ; preds = %invoke.cont3
  br label %acc.inner.for.inc

acc.inner.for.inc:                                ; preds = %acc.body.continue
  %10 = load i32, i32* %.acc.iv, align 4
  %add5 = add nsw i32 %10, 1
  store i32 %add5, i32* %.acc.iv, align 4
  br label %acc.inner.for.cond

acc.inner.for.end:                                ; preds = %acc.inner.for.cond
  br label %acc.loop.exit

acc.loop.exit:                                    ; preds = %acc.inner.for.end
  call void @__kmpc_for_static_fini(%ident_t* @0, i32 %2)
  ret void

terminate.lpad:                                   ; preds = %invoke.cont, %acc.inner.for.body
  %11 = landingpad { i8*, i32 }
          catch i8* null
  %12 = extractvalue { i8*, i32 } %11, 0
  call void @__clang_call_terminate(i8* %12) #4
  unreachable
}

declare void @__kmpc_for_static_init_4(%ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local i32 @sleep(i32) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #3 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #5
  call void @_ZSt9terminatev() #4
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

declare dso_local i32 @printf(i8*, ...) #2

declare void @__kmpc_for_static_fini(%ident_t*, i32)

declare void @__kmpc_fork_call(%ident_t*, i32, void (i32*, i32*, ...)*, ...)

attributes #0 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline noreturn nounwind }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 7.0.0 (git@github.com:acc2omp/clang.git 47284dadbfd90835689a4986e164a73557716def) (git@github.com:acc2omp/llvm.git d85c7de7041199e1dd98b8ee4a07bb6f9f9239c1)"}
