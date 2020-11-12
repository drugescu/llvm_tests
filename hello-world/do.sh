# Remove artifacts
rm -f output.ll output.bc output.s

# LLVM flags
FLAGS="`llvm-config --cxxflags --ldflags --system-libs --libs all`"

# Compile to binary
clang++ -g -o hello_world $FLAGS hello_world.cpp

# Run binary to output LLVM IR
./hello_world > output.ll

# Emit assembly from LLVM IR with llc
llc output.ll -o output.s

# Emit binary with gas
llvm-as output.ll -o output.bc
chmod +x output.bc

# Run program .bc
echo "------------- Output of compiled .bc file ---------------"
./output.bc

# Echo .ll
echo "-------------------- LLVM IR output ---------------------"
cat output.ll

# Echo .s
echo "----------------- LLVM assembly output ------------------"
cat output.s
