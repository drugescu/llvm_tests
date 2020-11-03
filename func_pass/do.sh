# llvm flags
FLAGS="`llvm-config --system-libs --libs executionengine core mcjit mc orcjit analysis native instrumentation transformutils vectorize instcombine x86info x86desc x86codegen x86asmparser support --cxxflags --ldflags ` -Iinclude -std=c++14 -stdlib=libc++" #-std=c++17
FLAGS2="`llvm-config --system-libs --libs all --cxxflags --ldflags` -std=c++14 -stdlib=libc++"

# compile to binary
clang++ -o a.out $FLAGS2 -v *.cpp

# emit textual LLVM IR assembly with -S, otherwise assembled binary .bc
#clang++ -o a.out.ll $FLAGS -S -emit-llvm -c *.cpp -ast-print
#clang++ -o a.out.bc $FLAGS -emit-llvm -c *.cpp -ast-print

# emit assembly (x86_64 or target)
#llc a.out.bc

# run binary
./a.out

