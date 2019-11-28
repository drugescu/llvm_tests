; ModuleID = 'new_hello.cpp'
source_filename = "new_hello.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvm::LLVMContext" = type { %"class.llvm::LLVMContextImpl"* }
%"class.llvm::LLVMContextImpl" = type opaque
%"class.llvm::Module" = type { %"class.llvm::LLVMContext"*, %"class.llvm::SymbolTableList", %"class.llvm::SymbolTableList.0", %"class.llvm::SymbolTableList.8", %"class.llvm::SymbolTableList.16", %"class.llvm::iplist", %"class.std::__1::basic_string", %"class.llvm::ValueSymbolTable"*, %"class.llvm::StringMap", %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr.35", %"class.std::__1::basic_string", %"class.std::__1::basic_string", %"class.std::__1::basic_string", i8*, %"class.llvm::DataLayout" }
%"class.llvm::SymbolTableList" = type { %"class.llvm::iplist_impl" }
%"class.llvm::iplist_impl" = type { %"class.llvm::simple_ilist" }
%"class.llvm::simple_ilist" = type { %"class.llvm::ilist_sentinel" }
%"class.llvm::ilist_sentinel" = type { %"class.llvm::ilist_node_impl" }
%"class.llvm::ilist_node_impl" = type { %"class.llvm::ilist_node_base" }
%"class.llvm::ilist_node_base" = type { %"class.llvm::ilist_node_base"*, %"class.llvm::ilist_node_base"* }
%"class.llvm::SymbolTableList.0" = type { %"class.llvm::iplist_impl.1" }
%"class.llvm::iplist_impl.1" = type { %"class.llvm::simple_ilist.4" }
%"class.llvm::simple_ilist.4" = type { %"class.llvm::ilist_sentinel.6" }
%"class.llvm::ilist_sentinel.6" = type { %"class.llvm::ilist_node_impl.7" }
%"class.llvm::ilist_node_impl.7" = type { %"class.llvm::ilist_node_base" }
%"class.llvm::SymbolTableList.8" = type { %"class.llvm::iplist_impl.9" }
%"class.llvm::iplist_impl.9" = type { %"class.llvm::simple_ilist.12" }
%"class.llvm::simple_ilist.12" = type { %"class.llvm::ilist_sentinel.14" }
%"class.llvm::ilist_sentinel.14" = type { %"class.llvm::ilist_node_impl.15" }
%"class.llvm::ilist_node_impl.15" = type { %"class.llvm::ilist_node_base" }
%"class.llvm::SymbolTableList.16" = type { %"class.llvm::iplist_impl.17" }
%"class.llvm::iplist_impl.17" = type { %"class.llvm::simple_ilist.20" }
%"class.llvm::simple_ilist.20" = type { %"class.llvm::ilist_sentinel.22" }
%"class.llvm::ilist_sentinel.22" = type { %"class.llvm::ilist_node_impl.23" }
%"class.llvm::ilist_node_impl.23" = type { %"class.llvm::ilist_node_base" }
%"class.llvm::iplist" = type { %"class.llvm::iplist_impl.24" }
%"class.llvm::iplist_impl.24" = type { %"class.llvm::simple_ilist.26" }
%"class.llvm::simple_ilist.26" = type { %"class.llvm::ilist_sentinel.28" }
%"class.llvm::ilist_sentinel.28" = type { %"class.llvm::ilist_node_impl.29" }
%"class.llvm::ilist_node_impl.29" = type { %"class.llvm::ilist_node_base" }
%"class.llvm::ValueSymbolTable" = type opaque
%"class.llvm::StringMap" = type <{ %"class.llvm::StringMapImpl", %"class.llvm::MallocAllocator", [7 x i8] }>
%"class.llvm::StringMapImpl" = type { %"class.llvm::StringMapEntryBase"**, i32, i32, i32, i32 }
%"class.llvm::StringMapEntryBase" = type { i64 }
%"class.llvm::MallocAllocator" = type { i8 }
%"class.std::__1::unique_ptr" = type { %"class.std::__1::__compressed_pair.32" }
%"class.std::__1::__compressed_pair.32" = type { %"struct.std::__1::__compressed_pair_elem.33" }
%"struct.std::__1::__compressed_pair_elem.33" = type { %"class.llvm::MemoryBuffer"* }
%"class.llvm::MemoryBuffer" = type { i32 (...)**, i8*, i8* }
%"class.std::__1::unique_ptr.35" = type { %"class.std::__1::__compressed_pair.36" }
%"class.std::__1::__compressed_pair.36" = type { %"struct.std::__1::__compressed_pair_elem.37" }
%"struct.std::__1::__compressed_pair_elem.37" = type { %"class.llvm::GVMaterializer"* }
%"class.llvm::GVMaterializer" = type opaque
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" = type { i64, i64, i8* }
%"class.llvm::DataLayout" = type { i8, i32, i32, i32, i32, i32, i32, %"class.llvm::SmallVector", %"class.llvm::SmallVector.41", %"class.std::__1::basic_string", %"class.llvm::SmallVector.48", i8*, %"class.llvm::SmallVector.55" }
%"class.llvm::SmallVector" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage" }
%"class.llvm::SmallVectorImpl" = type { %"class.llvm::SmallVectorTemplateBase" }
%"class.llvm::SmallVectorTemplateBase" = type { %"class.llvm::SmallVectorTemplateCommon" }
%"class.llvm::SmallVectorTemplateCommon" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { i8*, i32, i32 }
%"struct.llvm::SmallVectorStorage" = type { [8 x %"struct.llvm::AlignedCharArrayUnion"] }
%"struct.llvm::AlignedCharArrayUnion" = type { %"struct.llvm::AlignedCharArray" }
%"struct.llvm::AlignedCharArray" = type { [1 x i8] }
%"class.llvm::SmallVector.41" = type { %"class.llvm::SmallVectorImpl.42", %"struct.llvm::SmallVectorStorage.45" }
%"class.llvm::SmallVectorImpl.42" = type { %"class.llvm::SmallVectorTemplateBase.43" }
%"class.llvm::SmallVectorTemplateBase.43" = type { %"class.llvm::SmallVectorTemplateCommon.44" }
%"class.llvm::SmallVectorTemplateCommon.44" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.45" = type { [16 x %"struct.llvm::AlignedCharArrayUnion.46"] }
%"struct.llvm::AlignedCharArrayUnion.46" = type { %"struct.llvm::AlignedCharArray.47" }
%"struct.llvm::AlignedCharArray.47" = type { [8 x i8] }
%"class.llvm::SmallVector.48" = type { %"class.llvm::SmallVectorImpl.49", %"struct.llvm::SmallVectorStorage.52" }
%"class.llvm::SmallVectorImpl.49" = type { %"class.llvm::SmallVectorTemplateBase.50" }
%"class.llvm::SmallVectorTemplateBase.50" = type { %"class.llvm::SmallVectorTemplateCommon.51" }
%"class.llvm::SmallVectorTemplateCommon.51" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.52" = type { [8 x %"struct.llvm::AlignedCharArrayUnion.53"] }
%"struct.llvm::AlignedCharArrayUnion.53" = type { %"struct.llvm::AlignedCharArray.54" }
%"struct.llvm::AlignedCharArray.54" = type { [20 x i8] }
%"class.llvm::SmallVector.55" = type { %"class.llvm::SmallVectorImpl.56", %"struct.llvm::SmallVectorStorage.59" }
%"class.llvm::SmallVectorImpl.56" = type { %"class.llvm::SmallVectorTemplateBase.57" }
%"class.llvm::SmallVectorTemplateBase.57" = type { %"class.llvm::SmallVectorTemplateCommon.58" }
%"class.llvm::SmallVectorTemplateCommon.58" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.59" = type { [8 x %"struct.llvm::AlignedCharArrayUnion.60"] }
%"struct.llvm::AlignedCharArrayUnion.60" = type { %"struct.llvm::AlignedCharArray.61" }
%"struct.llvm::AlignedCharArray.61" = type { [4 x i8] }
%"class.llvm::StringRef" = type { i8*, i64 }
%"class.llvm::raw_ostream" = type <{ i32 (...)**, i8*, i8*, i8*, i32, [4 x i8] }>
%"class.llvm::AssemblyAnnotationWriter" = type opaque

$_ZN4llvm9StringRefC2EPKc = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external dso_local global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden global i32* @_ZN4llvm24DisableABIBreakingChecksE, align 8
@context = dso_local global %"class.llvm::LLVMContext" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [12 x i8] c"llvm-module\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_new_hello.cpp, i8* null }]

; Function Attrs: noinline nounwind uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZN4llvm11LLVMContextC1Ev(%"class.llvm::LLVMContext"* @context)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.llvm::LLVMContext"*)* @_ZN4llvm11LLVMContextD1Ev to void (i8*)*), i8* bitcast (%"class.llvm::LLVMContext"* @context to i8*), i8* @__dso_handle) #3
  ret void
}

declare dso_local void @_ZN4llvm11LLVMContextC1Ev(%"class.llvm::LLVMContext"*) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZN4llvm11LLVMContextD1Ev(%"class.llvm::LLVMContext"*) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: noinline norecurse nounwind optnone uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca %"class.llvm::Module"*, align 8
  %3 = alloca %"class.llvm::StringRef", align 8
  store i32 0, i32* %1, align 4
  %4 = call i8* @_Znwm(i64 704) #8
  %5 = bitcast i8* %4 to %"class.llvm::Module"*
  call void @_ZN4llvm9StringRefC2EPKc(%"class.llvm::StringRef"* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %6 = bitcast %"class.llvm::StringRef"* %3 to { i8*, i64 }*
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %6, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  call void @_ZN4llvm6ModuleC1ENS_9StringRefERNS_11LLVMContextE(%"class.llvm::Module"* %5, i8* %8, i64 %10, %"class.llvm::LLVMContext"* dereferenceable(8) @context)
  store %"class.llvm::Module"* %5, %"class.llvm::Module"** %2, align 8
  %11 = load %"class.llvm::Module"*, %"class.llvm::Module"** %2, align 8
  %12 = call dereferenceable(40) %"class.llvm::raw_ostream"* @_ZN4llvm4errsEv()
  call void @_ZNK4llvm6Module5printERNS_11raw_ostreamEPNS_24AssemblyAnnotationWriterEbb(%"class.llvm::Module"* %11, %"class.llvm::raw_ostream"* dereferenceable(40) %12, %"class.llvm::AssemblyAnnotationWriter"* null, i1 zeroext false, i1 zeroext false)
  ret i32 0
}

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znwm(i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4llvm9StringRefC2EPKc(%"class.llvm::StringRef"*, i8*) unnamed_addr #6 comdat align 2 {
  %3 = alloca %"class.llvm::StringRef"*, align 8
  %4 = alloca i8*, align 8
  store %"class.llvm::StringRef"* %0, %"class.llvm::StringRef"** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %"class.llvm::StringRef"*, %"class.llvm::StringRef"** %3, align 8
  %6 = getelementptr inbounds %"class.llvm::StringRef", %"class.llvm::StringRef"* %5, i32 0, i32 0
  %7 = load i8*, i8** %4, align 8
  store i8* %7, i8** %6, align 8
  %8 = getelementptr inbounds %"class.llvm::StringRef", %"class.llvm::StringRef"* %5, i32 0, i32 1
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @strlen(i8* %12) #9
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi i64 [ %13, %11 ], [ 0, %14 ]
  store i64 %16, i64* %8, align 8
  ret void
}

declare dso_local void @_ZN4llvm6ModuleC1ENS_9StringRefERNS_11LLVMContextE(%"class.llvm::Module"*, i8*, i64, %"class.llvm::LLVMContext"* dereferenceable(8)) unnamed_addr #1

declare dso_local void @_ZNK4llvm6Module5printERNS_11raw_ostreamEPNS_24AssemblyAnnotationWriterEbb(%"class.llvm::Module"*, %"class.llvm::raw_ostream"* dereferenceable(40), %"class.llvm::AssemblyAnnotationWriter"*, i1 zeroext, i1 zeroext) #1

declare dso_local dereferenceable(40) %"class.llvm::raw_ostream"* @_ZN4llvm4errsEv() #1

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #7

; Function Attrs: noinline nounwind uwtable
define internal void @_GLOBAL__sub_I_new_hello.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { builtin }
attributes #9 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.0-2 (tags/RELEASE_900/final)"}
