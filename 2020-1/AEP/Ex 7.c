int main(){

    int senha;

    printf("Digite aqui sua senha: ");
    scanf("%i", &senha);
    if(senha==1234){
        printf("ACESSO PERMITIDO");
    }
    else{
        printf("ACESSO NEGADO");
        
    }
        return 0;
}