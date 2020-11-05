# llvm flags
FLAGS="`llvm-config --system-libs --libs executionengine core mcjit mc orcjit analysis native instrumentation transformutils vectorize instcombine x86info x86desc x86codegen x86asmparser support --cxxflags --ldflags ` -Iinclude -std=c++14 -stdlib=libc++" #-std=c++17
#FLAGS2="`llvm-config --cxxflags --ldflags --system-libs --libs all` -std=c++14 -stdlib=libc++ -l/usr/lib/llvm-10/lib/libLLVMSupport.a"
FLAGS2="`llvm-config --cxxflags --ldflags --system-libs --libs all`"

# compile to binary
clang++ -g -o new_hello $FLAGS2 new_hello2.cpp

# emit textual LLVM IR assembly with -S, otherwise assembled binary .bc
#clang++ -o a.out.ll $FLAGS -S -emit-llvm -c *.cpp -ast-print
#clang++ -o a.out.bc $FLAGS -emit-llvm -c *.cpp -ast-print

# emit assembly (x86_64 or target)
#llc a.out.bc

# run binary
./new_hello

# Emit binary with gas
as output.s -o output.elf

# Link with another program
clang++ main.cpp output.elf -o main


