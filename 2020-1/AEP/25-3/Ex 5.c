
int main(){
    int idade;
    char sexo, nome;
    printf("Digite seu nome: ");
    scanf("%s", &nome);
    printf("Digite sua idade: ");
    scanf("%i%*c", &idade);
    printf("Insira o seu sexo: M - masculino F - feminino: ");
    scanf("%c", &sexo);

    if (sexo == 'f' && idade<=25)
        printf("%s. Você está: ACEITA!");
   
    else
        {
        printf("%s. Você foi: RECUSADA!");
    }
    return 0;
}