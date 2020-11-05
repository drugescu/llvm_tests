#include "llvm/ADT/APFloat.h"
#include "llvm/ADT/STLExtras.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/DerivedTypes.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Type.h"
#include "llvm/IR/Verifier.h"
#include <algorithm>
#include <cctype>
#include <cstdio>
#include <cstdlib>
#include <map>
#include <memory>
#include <string>
#include <vector>

#include <iostream>

// For code emission
#include "llvm/Support/FileSystem.h"
#include "llvm/Support/Host.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/TargetRegistry.h"
#include "llvm/Support/TargetSelect.h"
#include "llvm/Target/TargetMachine.h"
#include "llvm/Target/TargetOptions.h"
#include "llvm/MC/SubtargetFeature.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/Instructions.h"
#include <algorithm>
#include <cassert>
#include <cctype>
#include <cstdio>
#include <cstdlib>
#include <map>
#include <memory>
#include <string>
#include <system_error>
#include <utility>
#include <vector>

using namespace llvm;

// Code Generation

static LLVMContext TheContext;
static IRBuilder<> Builder(TheContext);
static std::unique_ptr<Module> TheModule;

llvm::Function* createSumFunction(Module* module) {
//llvm::Function* createSumFunction(module) {
    /* Builds the following function:
    
    int sum(int a, int b) {
        int sum1 = 1 + 1;
        int sum2 = sum1 + a;
        int result = sum2 + b;
        return result;
    }
    */

    LLVMContext &context = module->getContext();
    IRBuilder<> builder(context);

    // Define function's signature
    std::vector<Type*> Integers(2, builder.getInt32Ty());
    auto *funcType = FunctionType::get(builder.getInt32Ty(), Integers, false);

    // create the function "sum" and bind it to the module with ExternalLinkage,
    // so we can retrieve it later
    auto *fooFunc = Function::Create(
        funcType, Function::ExternalLinkage, "sum", module
    );

    // Define the entry block and fill it with an appropriate code
    auto *entry = BasicBlock::Create(context, "entry", fooFunc);
    builder.SetInsertPoint(entry);

    // Add constant to itself, to visualize constant folding
    Value *constant = ConstantInt::get(builder.getInt32Ty(), 0x1);
    auto *sum1 = builder.CreateAdd(constant, constant, "sum1");

    // Retrieve arguments and proceed with further adding...
    auto args = fooFunc->arg_begin();
    Value *arg1 = &(*args);
    args = std::next(args);
    Value *arg2 = &(*args);
    auto *sum2 = builder.CreateAdd(sum1, arg1, "sum2");
    auto *result = builder.CreateAdd(sum2, arg2, "result");  
    
    // ...and return
    builder.CreateRet(result);

    // Verify at the end
    verifyFunction(*fooFunc);
    return fooFunc;
};

// Directly emit object code
int printBuild(Module *M, CodeGenFileType Type, std::string out) {
    InitializeNativeTarget();
    InitializeNativeTargetAsmPrinter();

    auto TargetTriple = sys::getDefaultTargetTriple();
    M->setTargetTriple(TargetTriple);

    std::string Error;
    const Target *target = TargetRegistry::lookupTarget(TargetTriple, Error);
    auto cpu = sys::getHostCPUName();
    SubtargetFeatures Features;
    StringMap<bool> HostFeatures;
    if (sys::getHostCPUFeatures(HostFeatures))
        for (auto &F : HostFeatures)
            Features.AddFeature(F.first(), F.second);
    auto features = Features.getString();
    
    std::cout << "Features: " << features << std::endl;

    TargetOptions Options;
    std::unique_ptr<TargetMachine> TM{
            target->createTargetMachine(
                    TargetTriple, cpu, features, Options,
                    Reloc::PIC_, None, CodeGenOpt::None)
    };

    legacy::PassManager PM;
    M->setDataLayout(TM->createDataLayout());
    
    if (out == "stdout") {
      TM->addPassesToEmitFile(PM, 
                              (raw_pwrite_stream &) outs(), 
                              (raw_pwrite_stream *) (&outs()),
                              Type, true, nullptr);
      PM.run(*M);
    }
    else {
      std::error_code EC;
      raw_fd_ostream dest(out, EC, sys::fs::F_None);
      
      if (EC) {
        errs() << "Could not open file: " << EC.message();
        return 1;
      }
      
      if (TM->addPassesToEmitFile(PM, dest, &dest, Type, true, nullptr)) {
        errs() << "TheTargetMachine can't emit a file of this type";
        return 1;
      }

      PM.run(*M);
    }
    
    return 0;
}

// Make the module, which holds all the code.

int main() {
  TheModule = std::make_unique<Module>("test module", TheContext);

  // Create function and attach to module
  auto free_func = createSumFunction(TheModule.get());
  
  // Print generated .ll code
  TheModule->print(errs(), nullptr);
    
  // Emit asm
  std::cout << " -------------------- ASM (output.s) --------------- " << std::endl;
  printBuild(TheModule.get(), CodeGenFileType::CGFT_AssemblyFile, "stdout");

  // Emit binary
  std::cout << " -------------------- Binary (output.o) --------------- " << std::endl;
  printBuild(TheModule.get(), CodeGenFileType::CGFT_ObjectFile, "output.o");

  printBuild(TheModule.get(), CodeGenFileType::CGFT_AssemblyFile, "output2.s");
  
  return 0;
}
