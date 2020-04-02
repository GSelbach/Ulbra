/***************************************

Faça um algoritmo que leia um número. Se o número for 1, 
escreva o número. Se o número for 2, escreva o dobro do número. 
Se o número for 3, escreva o triplo do número. Se for outro número, 
screva a mensagem “número não esperado”. 

*****************************************/

#include <stdio.h>

int main()
{
int digito;

    printf("Entre com um digito [1...3]: ");
    scanf("%i", &digito);
        switch (digito)
{
        case 1: printf("Um\n");
            break;
        case 2: printf("4\n");
            break;
        case 3: printf("9\n");
            break;
        default: printf("numero nao esperado");
            


}
}