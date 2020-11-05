# llvm flags
FLAGS="`llvm-config --cxxflags --ldflags --system-libs --libs all`"

# compile to binary
clang++ -g -o hello_world $FLAGS hello_world.cpp

# run binary
./hello_world > output.ll

# Emit binary with gas
llvm-as output.ll -o output.elf
chmod +x output.elf

# Run program
./output.elf


