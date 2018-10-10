/***************************************************************************
 *cr
 *cr            (C) Copyright 2010 The Board of Trustees of the
 *cr                        University of Illinois
 *cr                         All Rights Reserved
 *cr
 ***************************************************************************/
#ifndef __FILEH__
#define __FILEH__

#ifdef __cplusplus
extern "C" {
#endif

void inputData(char* fName, int* nx, int* ny, int* nz);
void outputData(char* fName, float *h_A0,int nx,int ny,int nz);
char* readFile(const char* fileName);

#ifdef __cplusplus
}
#endif

#endif
