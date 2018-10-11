#include <stdio.h>
#include <unistd.h>

int main(){
    int i = 0;

#pragma acc parallel loop
    for(i = 0; i < 10; i++){
        sleep(1);
        printf("I am iteration [%d]\n", i);
    }
    return 0;
}
