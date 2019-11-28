clang++ -o a.out `llvm-config --system-libs --libs executionengine core mcjit analysis native --cxxflags --ldflags `   -Iinclude -std=c++11 -stdlib=libc++ *.cpp
