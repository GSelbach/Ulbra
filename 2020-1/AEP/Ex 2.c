

int main(){

    float num, n1;
    printf("Digite um número:");
    scanf("%f", &num);

    if(num<=30)
    {
        n1= num/2;
        printf("A metade do número é: %.2f", n1);
    }
    else {
        n1= num*2;
        printf("O dobro do número: %.2f", n1);
    }
    
    return 0;
}