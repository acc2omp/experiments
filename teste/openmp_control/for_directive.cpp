#include <stdio.h>
#include <stdlib.h>

#define VEC_LENGHT 10

int main(){
    int even[VEC_LENGHT], odds[VEC_LENGHT], cheetos[VEC_LENGHT], i;

    #pragma omp parallel
    {
        #pragma omp for
        for(i = 0; i < VEC_LENGHT; i++){
            even[i] = 2*i;
            odds[i] = 2*i+1;
        }

        #pragma omp for
        for(i = 0; i < VEC_LENGHT; i++){
            cheetos[i] = even[i] * odds[i];
        }

        #pragma omp for
        for(i = 0; i < VEC_LENGHT; i++) {
            printf("#%d = %d\n", i, cheetos[i]);
        }
    }

    return 0;
}
