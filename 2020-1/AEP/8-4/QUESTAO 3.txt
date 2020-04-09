Algoritmo "Questao 3"
// Para a entrada de uma festa, existe a seguinte promoção
//de acordo com a cor da camiseta da pessoa:
//· Camiseta rosa: ingresso R$20,00
//· Camiseta azul: ingresso R$ 30,00
//· Camiseta preta: Mulheres: R$ 10,00 – homens: R$15,00
//· Camiseta laranja: R$ 25,00
//· Demais cores: Maiores de 30 anos: R$45,00 – Menores ou com
//30 anos: R$40,00
//Usando a múltipla escolha, faça um algoritmo que leia a cor da
//camiseta, e dê o valor do ingresso a ser pago pela pessoa.
//Caso seja necessário, leia a idade e o sexo.

Var

   cor, rosa, azul, preto, laranja, demais, idade: inteiro
   genero, m, f  : caracter

Inicio

      escreva("Digite 1 para rosa, 2 para azul, 3 para preta, 4 para laranja, 5 para demais:")
      leia(cor)
      
      escolha(cor)
      caso 1:
           cor = rosa
           escreva ("Ingresso = R$20")
           
      caso 2:
           cor = azul
           escreva ("Ingresso= R$30")

      caso 3:
           cor = preto
           escreva("Digite M para masculino ou F para feminino")
           leia (genero)
           se (genero = m) entao
           escreva ("Ingresso = R$15")
           senao
           se (genero = f) entao
           escreva ("Ingresso = R$10")
           fimse
      fimse

     caso 4:
          cor = laranja
          escreva("Ingresso = R$25")
          
     caso 5:
          cor = demais
          escreva ("Digite sua idade")
          se (idade >30)entao
          escreva ("Ingresso = R$45")
          senao
          se (idade <=30) entao
          escreva ("Ingresso = R$40")
          fimse
     fimse
     

Fimalgoritmo