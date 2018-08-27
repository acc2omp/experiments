
int main(){
    int i;
    int a = 0;

#pragma omp parallel for
    for(i = 0; i<10; i++)
        a += 1;

    return 0;
}
