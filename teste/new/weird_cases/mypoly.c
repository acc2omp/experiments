/*
 * =====================================================================================
 *
 *       Filename:  mypoly.cpp
 *
 *    Description:  A version of polybench with just the part that crashes
 *
 *        Version:  1.0
 *        Created:  10/12/2018 11:12:16 PM
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */
#include <string.h>
#include <unistd.h>
#include <assert.h>
#include <time.h>
#include <sys/time.h>
#include <sys/resource.h>
#include <sched.h>
#include <math.h>

#include <stdio.h>
#include <stdlib.h>


static
void *
xmalloc (size_t num)
{
  void* new = NULL;
  int ret = posix_memalign (&new, 32, num);
  if (! new || ret)
    {
      fprintf (stderr, "[PolyBench] posix_memalign: cannot allocate memory");
      exit (1);
    }
  return new;
}

int main() {
    printf("Hello, Clang!\n");

    return 0;
}
