all: acctarget_ir omptarget_ir acctarget_exe omptarget_exe

acctarget_exe: acctarget.cpp
	/local/felipe.emos/llvm-loop/install/bin/clang++ ~/experiments/teste/new/target_ACC/acctarget.cpp -v -fopenacc -fopenmp -omptargets=nvptx64sm_35-nvidia-linux -o acctarget.exe

omptarget_exe: omptarget.cpp
	/local/felipe.emos/llvm-loop/install/bin/clang++ ~/experiments/teste/new/target_ACC/omptarget.cpp -v -fopenmp -omptargets=nvptx64sm_35-nvidia-linux -o omptarget.exe

acctarget_ir: acctarget.cpp
	/local/felipe.emos/llvm-loop/install/bin/clang++ ~/experiments/teste/new/target_ACC/acctarget.cpp -v -fopenacc -fopenmp -omptargets=nvptx64sm_35-nvidia-linux -S -emit-llvm -o acctarget.ll


omptarget_ir: omptarget.cpp
	/local/felipe.emos/llvm-loop/install/bin/clang++ ~/experiments/teste/new/target_ACC/omptarget.cpp -v -fopenmp -omptargets=nvptx64sm_35-nvidia-linux -S -emit-llvm -o omptarget.ll

clean: *.ll
	rm -rf *.ll
