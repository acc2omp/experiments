ACC_TARGET = multicore
INCPATHS = -I$(UTILITIES)
ACC = pgcc
ACCFLAGS = -acc -ta=$(ACC_TARGET) 

303_D = $(realpath ./303.ostencil)
303_C = $(303_D)/file.c $(303_D)/kernels.c $(303_D)/main.c \
	$(303_D)/pbcommon_sources/parboil.c
303_H = $(303_D)/file.h $(303_D)/kernels.h $(303_D)/pbcommon_sources/parboil.h

314_D = $(realpath ./314.omriq)
314_C = $(314_D)/file.c $(314_D)/main.c $(314_D)/pbcommon_sources/parboil.c
314_H = $(314_D)/file.h $(314_D)/pbcommon_sources/parboil.h $(314_D)/computeQ.c

./output/303.ostencil : $(303_C) $(303_H)
	$(ACC) $(ACCFLAGS) -I$(303_D)/pbcommon_sources -I$(303_D) $(303_C) \
		-o ./output/303.ostencil
	rm file.o kernels.o main.o parboil.o

./output/314.omriq : $(314_C) $(314_H)
	$(ACC) $(ACCFLAGS) -I$(314_D)/pbcommon_sources -I$(314_D) $(314_C) \
		-o ./output/314.omriq
	rm file.o main.o parboil.o
