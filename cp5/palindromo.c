#include<stdio.h>
#include<string.h>

int main(){

    while(1>0)
    {
        char word[30];
        scanf("%s", word);
        int is_palindrome = 1;
        // printf("%zd\n", strlen(word));
        for(int i = 0; i < strlen(word)/2; i++){
            if(word[i] != word[strlen(word)-i]){
                is_palindrome = 0;
                break;
            }
        }
        if(is_palindrome == 0)
            printf("No es Palindromo\n");
        else
            printf("Es Palindromo\n");
    }
}