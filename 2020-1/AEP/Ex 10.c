int main(){

    int cliente;
    float saldo, saldoatual, deb, cred;

    printf("Informe o número da sua conta: ");
    scanf("%i", &cliente);
    printf("Informe seu saldo: ");
    scanf("%f", &saldo);
    printf("Informe seu débito atual: ");
    scanf("%f", &deb);
    printf("Informe seu crédito atual: ");
    scanf("%f", &cred);

    saldoatual = saldo - deb + cred;
    printf("O saldo atual da conta %i é de: R$%.2f" cliente, saldoatual);
    if (saldoatual<=0){
    printf("\nSALDO NEGATIVO!");
    }
    else {
        printf("\nSALDO POSITIVO!");
    }
    
}