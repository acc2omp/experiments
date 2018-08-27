#include <stdio.h>

int main(){
    int i;
    int a = 10;

#pragma omp parallel for
    for(i = 0; i < 10; i++){
        a += i;
    }

    return 0;
}
