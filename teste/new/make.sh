echo "\n ----- Compile Program ----- \n"
~/llvm/build/bin/clang++ prog.cpp -o exec -fopenacc

echo "\n ------- Compile Ir ------- \n"
~/llvm/build/bin/clang++ prog.cpp -fopenacc -S -emit-llvm

# echo "\n ------- Compile AST ------- \n"
# ~/llvm/build/bin/clang++ prog.cpp -fopenacc -Xclang -ast-dump &> dump.ast
