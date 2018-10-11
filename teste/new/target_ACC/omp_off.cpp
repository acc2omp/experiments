#include <stdio.h>
#define VEC_SIZE 10000000

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
    float p[N], v1[N], v2[N];

    init(v1,v2,N);

    #pragma omp target enter data map(alloc:p) map(to:v1,v2)
    #pragma omp parallel for
    for (i = 0; i < N; i++) {
        p[i] = v1[i] * v2[i];
    }

    output(p,N);
    #pragma omp target exit data map(delete:p, v1, v2)
}

int main(){

    vec_mult(VEC_SIZE);

    return 0;
}
