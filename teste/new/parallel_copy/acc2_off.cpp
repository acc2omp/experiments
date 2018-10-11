#include <stdio.h>
#include <stdlib.h>
#define VEC_SIZE 1000000000

void init(float* v1, float* v2, int N) {
    int i;
    for(i = 0; i < N; i++) {
        v1[i] = 10;
        v2[i] = 4;
    }
}

void output(float* p, int N) {
    int i;
    for(i = 0; i < 5; i++) {
        printf("(p[%d] = %lf) ", i, p[i]);
    }
    printf("\n");
}

void vec_mult(int N) {
    int i;
    float *p, *v1, *v2;

    p = (float*) malloc (N * (sizeof(float)));
    v1 = (float*) malloc (N * (sizeof(float)));
    v2 = (float*) malloc (N * (sizeof(float)));

    init(v1,v2,N);

    #pragma acc parallel loop copyin(v1,v2) copyout(p)
    for (i = 0; i < N; i++) {
        p[i] = v1[i] * v2[i];
    }

    output(p,N);
}

int main(){
    vec_mult(VEC_SIZE);

    return 0;
}
