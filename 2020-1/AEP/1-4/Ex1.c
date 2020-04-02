/********************************************
 * 
1. Faça um algoritmo que leia dois números. 
Depois pergunte se o usuário deseja somar, 
subtrair, multiplicar ou dividir estes 
números. Realize a operação matemática que ele 
escolheu e logo após escreva na tela o resultado

*********************************************/

#include <stdio.h>

int main(){
    
    int nro1, nro2, op;
    
    printf("Digite dois numeros inteiros: ");
    scanf("%i", &nro1);
    scanf("%i", &nro2);
    printf("Escolha 1 para somar, 2 para subtrair, 3 para multiplicar e 4 para dividir: ");
    scanf("%i", &op);
    
    switch (op){
        case 1:
            op = nro1+nro2;
            printf("A soma e: %i", op);
            break;
            
        case 2:
            op = nro1-nro2;
            printf("A subtracao e: %i", op);
            break;
        
        case 3:
            op = nro1*nro2;
            printf("A soma e: %i", op");
            break;
        
         case 4:
            op = nro1/nro2;
            printf("A divisão é: %i", op);
            break;
            
        default:
            printf("Operação invalida");
            break;

            }

}
