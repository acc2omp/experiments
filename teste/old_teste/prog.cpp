
int main(){
    int i;

#pragma acc parallel for
    for(i = 0; i<10; i++)
        i += 4;
    return 0;
}
