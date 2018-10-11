#include <stdio.h>
#include <unistd.h>

int main(){
    int i = 0, res = 0;
    int vec[] = {10, 10, 10, 10, 10, 10, 10};

#pragma omp parallel for reduction(+:res)
    for(i = 0; i < 7; i++){
        sleep(1);
        res += vec[i];
    }

    printf("The result of the sum is: %d\n", res);
    return 0;
}
