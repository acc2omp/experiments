#include <stdio.h>

int main() {
    int i;

#pragma acc parallel loop simd
    for(i = 0; i<10; i++){
        printf("I am iteration [%d]\n", i);
    }

    return 0;
}
