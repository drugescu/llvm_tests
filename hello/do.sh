clang++ -o a.out `llvm-config --system-libs --libs all --cxxflags --ldflags `   -Iinclude -std=c++14 -stdlib=libc++ *.cpp
