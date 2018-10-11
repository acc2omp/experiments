#include <stdio.h>
#define VEC_SIZE 100000

void init(float* v1, float* v2, int N) {
    int i;
    for(i = 0; i < N; i++) {
        v1[i] = 10;
        v2[i] = 4;
    }
}

void output(float* p, int N) {
    int i;
    for(i = 0; i < N; i++) {
        printf("(p[%d] = %lf) ", i, p[i]);
    }
}

void vec_mult(int N) {
    int i;
    float p[N], v1[N], v2[N];

    init(v1,v2,N);

    #pragma acc parallel loop copy(v1, v2, p)
    for (i = 0; i < N; i++) {
        p[i] = v1[i] * v2[i];
    }

    /* output(p,N); */
}

int main(){

    vec_mult(VEC_SIZE);

    return 0;
}
