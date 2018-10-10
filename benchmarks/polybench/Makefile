ACC_TARGET = multicore
UTILITIES = $(realpath utilities)
INCPATHS = -I$(UTILITIES)
ACC = pgcc
ACCFLAGS = -acc -ta=$(ACC_TARGET) 

./output/correlation : ./correlation/correlation.c ./correlation/correlation.h
	$(ACC) $(ACCFLAGS) $(INCPATHS) ./correlation/correlation.c \
		$(UTILITIES)/polybench.c -o ./output/correlation
	rm correlation.o polybench.o

./output/covariance : ./covariance/covariance.c ./covariance/covariance.h
	$(ACC) $(ACCFLAGS) $(INCPATHS) ./covariance/covariance.c \
		$(UTILITIES)/polybench.c -o ./output/covariance
	rm covariance.o polybench.o

./output/floyd-warshall : ./floyd-warshall/floyd-warshall.c \
	./floyd-warshall/floyd-warshall.h
	$(ACC) $(ACCFLAGS) $(INCPATHS) ./floyd-warshall/floyd-warshall.c \
		$(UTILITIES)/polybench.c -o ./output/floyd-warshall
	rm floyd-warshall.o polybench.o

./output/reg_detect : ./reg_detect/reg_detect.c ./reg_detect/reg_detect.h
	$(ACC) $(ACCFLAGS) $(INCPATHS) ./reg_detect/reg_detect.c \
		$(UTILITIES)/polybench.c -o ./output/reg_detect
	rm reg_detect.o polybench.o

./output/adi : ./adi/adi.c ./adi/adi.h
	$(ACC) $(ACCFLAGS) $(INCPATHS) ./adi/adi.c $(UTILITIES)/polybench.c \
		-o ./output/adi
	rm adi.o polybench.o

./output/convolution-2d : ./convolution-2d/convolution-2d.c \
	./convolution-2d/convolution-2d.h
	$(ACC) $(ACCFLAGS) $(INCPATHS) ./convolution-2d/convolution-2d.c \
		$(UTILITIES)/polybench.c -o ./output/convolution-2d
	rm convolution-2d.o polybench.o

./output/convolution-3d : ./convolution-3d/convolution-3d.c \
	./convolution-3d/convolution-3d.h
	$(ACC) $(ACCFLAGS) $(INCPATHS) ./convolution-3d/convolution-3d.c \
		$(UTILITIES)/polybench.c -o ./output/convolution-3d
	rm convolution-3d.o polybench.o

./output/fdtd-2d : ./fdtd-2d/fdtd-2d.c ./fdtd-2d/fdtd-2d.h
	$(ACC) $(ACCFLAGS) $(INCPATHS) ./fdtd-2d/fdtd-2d.c \
		$(UTILITIES)/polybench.c -o ./output/fdtd-2d
	rm fdtd-2d.o polybench.o

./output/fdtd-apml : ./fdtd-apml/fdtd-apml.c ./fdtd-apml/fdtd-apml.h
	$(ACC) $(ACCFLAGS) $(INCPATHS) ./fdtd-apml/fdtd-apml.c \
		$(UTILITIES)/polybench.c -o ./output/fdtd-apml
	rm fdtd-apml.o polybench.o

./output/jacobi-1d-imper : ./jacobi-1d-imper/jacobi-1d-imper.c \
	./jacobi-1d-imper/jacobi-1d-imper.h
	$(ACC) $(ACCFLAGS) $(INCPATHS) ./jacobi-1d-imper/jacobi-1d-imper.c \
		$(UTILITIES)/polybench.c -o ./output/jacobi-1d-imper
	rm jacobi-1d-imper.o polybench.o

./output/jacobi-2d-imper : ./jacobi-2d-imper/jacobi-2d-imper.c \
	./jacobi-2d-imper/jacobi-2d-imper.h
	$(ACC) $(ACCFLAGS) $(INCPATHS) ./jacobi-2d-imper/jacobi-2d-imper.c \
		$(UTILITIES)/polybench.c -o ./output/jacobi-2d-imper
	rm jacobi-2d-imper.o polybench.o

./output/seidel-2d : ./seidel-2d/seidel-2d.c ./seidel-2d/seidel-2d.h
	$(ACC) $(ACCFLAGS) $(INCPATHS) ./seidel-2d/seidel-2d.c \
		$(UTILITIES)/polybench.c -o ./output/seidel-2d
	rm seidel-2d.o polybench.o
