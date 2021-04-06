#include<stdio.h>

int main(){

    int num;
    int sol = 0;
    scanf("%d", &num);

    for(int i = 2; i <= num; i++){
        
        int is_prime = 1;
        
        for(int j = 2; j < i; j++){
            if(i % j == 0){
                is_prime = 0;
                break;
            }
        }
        if(is_prime == 1)
            sol++;
    }

    printf("%d\n", sol);

    return 0;
}