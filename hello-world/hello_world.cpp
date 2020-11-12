#include "llvm/ADT/ArrayRef.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Support/raw_ostream.h"
#include <vector>
#include <string>

using namespace llvm;

static LLVMContext TheContext;

int main() {
  LLVMContext & context = TheContext;
  Module *module = new Module("asdf", context);
  IRBuilder<> builder(context);
 
  // Create main function returning void, and an entry point
  FunctionType *funcType = FunctionType::get(builder.getVoidTy(), false);
  Function *mainFunc = 
    Function::Create(funcType, Function::ExternalLinkage, "main", module);
  BasicBlock *entry = BasicBlock::Create(context, "entrypoint", mainFunc);
  builder.SetInsertPoint(entry);
 
  // Create a string and add it to the arguments of a future puts function
  Value *helloWorld = builder.CreateGlobalStringPtr("hello world!\n");
  std::vector<Type *> putsArgs;
  putsArgs.push_back(builder.getInt8Ty()->getPointerTo());
  llvm::ArrayRef<llvm::Type*>  argsRef(putsArgs);
 
  // We find the puts function, should already be defined
  FunctionType *putsType = 
  FunctionType::get(builder.getInt32Ty(), argsRef, false);
  auto funcCallee = module->getOrInsertFunction("puts", putsType);
  auto *putsFunc = funcCallee.getCallee();
 
  // Create a call to puts with the aforementioned string
  builder.CreateCall(putsType, putsFunc, helloWorld);
  
  // Create a return void instruction
  builder.CreateRetVoid();
  
  // Print results
  module->print(outs(), nullptr);
}
