/***************************************************************************
 *cr
 *cr            (C) Copyright 2010 The Board of Trustees of the
 *cr                        University of Illinois
 *cr                         All Rights Reserved
 *cr
 ***************************************************************************/

#include "common.h"

void cpu_stencil(float c0,float c1, float *A0,float * Anext,const int nx, const int ny, const int nz)
{

  int i, j, k;  
#pragma acc parallel pcopyin(A0[0:nx*ny*nz]), pcopyout(Anext[0:nx*ny*nz])
  {
#pragma acc loop gang collapse(2) 
	for(k=1;k<nz-1;k++)
	{
		for(j=1;j<ny-1;j++)
		{
#pragma acc loop vector  
			for(i=1;i<nx-1;i++)
			{
				Anext[Index3D (nx, ny, i, j, k)] = 
				(A0[Index3D (nx, ny, i, j, k + 1)] +
				A0[Index3D (nx, ny, i, j, k - 1)] +
				A0[Index3D (nx, ny, i, j + 1, k)] +
				A0[Index3D (nx, ny, i, j - 1, k)] +
				A0[Index3D (nx, ny, i + 1, j, k)] +
				A0[Index3D (nx, ny, i - 1, j, k)])*c1
				- A0[Index3D (nx, ny, i, j, k)]*c0;
			}
		}
	}
  }

}


