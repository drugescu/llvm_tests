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

// Make the module, which holds all the code.

int main() {
  TheModule = llvm::make_unique<Module>("my cool jit", TheContext);

  // Create function and attach to module
  auto free_func = createSumFunction(TheModule.get());
  
  //printf("free_func: ", free_func->print(errs()));  
  // Print generated code
  TheModule->print(errs(), nullptr);
  
  return 0;
}