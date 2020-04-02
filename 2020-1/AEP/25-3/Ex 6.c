int main(){
    float KM, consumo;
    char tipo;

    printf("Informe o percurso em KM: ");
    scanf("%f", &KM);
    printf("Informe o time de carro:\n ");
    printf("Tipo A - 8Km/L | Tipo B - 9Km/L | Tipo C - 12Km/L:  ");
    scanf("%s", &tipo);
    
    if (tipo == 'a' || tipo == 'A')
    {
        consumo=KM/8;
        
        printf("A quantidade de combustível consumida é: %.2f", consumo);
    }
    else 
        if (tipo =='b' || tipo == 'B'){
        
        consumo=KM/9;
        
        printf("A quantidade de combusítvel consumida é: %.2fL", consumo);
    }
        else 
            if (tipo == 'c' || tipo == 'C'){
            consumo=KM/12;
            printf("A quantidade de combustível consumida é: %.2f", consumo);
    }
    
    return 0;
        
}