#include<stdio.h>

int main(){
    int n;
    scanf("%d", &n);
    int num1 = 1;
    int num2 = 1;

    for(int i = 2; i < n; i++){
        int temp = num1 + num2;
        num1 = num2;
        num2 = temp;
    }

    printf("%d\n", num2);
}