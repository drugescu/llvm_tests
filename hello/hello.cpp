#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"

llvm::LLVMContext context;

int main(){
    llvm::Module*module = new llvm::Module("llvm-module",context);
    //module->dump();
    module->print(llvm::errs(), nullptr);
}
