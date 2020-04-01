
int main(){
    
    float n1, n2, soma, total;
    printf("Digite um número: ");
    scanf("%f", &n1);
    printf("Digite outro número: ");
    scanf("%f", &n2);
    soma = n1+n2;
   
    if (soma > 20)
{
    total = soma + 8;
    printf("A soma entre %.2f e %.2f foi de: %.2f + 8 = %.2f", n1, n2, soma, total);
} 
    else
{
    total = soma - 5;
    printf("A soma entre %.2f e %.2f foi de: %.2f - 5 = %.2f", n1, n2, soma, total);
}

    return 0;
}