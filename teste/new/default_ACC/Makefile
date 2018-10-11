OMPFLAGS = -fopenmp
ACCFLAGS = -fopenacc -fopenmp
IR_FLAGS = -Xclang -emit-llvm

all: accprint ompprint

accprint: accprint.cpp
	$(CC) accprint.cpp -o accprint $(ACCFLAGS)

ompprint: ompprint.cpp
	$(CC) ompprint.cpp -o ompprint $(OMPFLAGS)

clean:
	rm accprint ompprint
