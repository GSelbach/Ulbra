
int main(){
   
    float num, preco;

    printf("Informe o número de maças que deseja comprar: ");
    scanf("%f", &num);
    if (num<12){
    preco=num*1.30;
        printf("Você comprou %f maças, custaram: R$%.2f", num, preco);
    }
    else {
        preco=num*1.0;
        printf("Você comprou %f maças, custaram: R$%.2f", num, preco);
    }
        return 0;
    
}