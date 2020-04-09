Algoritmo "Questao 2"
// Faça um algoritmo para ler: quantidade atual em estoque,
//quantidade máxima em estoque e quantidade mínima em estoque
//de um produto. Calcular e escrever a quantidade média
//((quantidade média = quantidade máxima + quantidade mínima)/2).
//Se a quantidade em estoque for maior ou igual a quantidade média
//escrever a mensagem 'Não efetuar compra', senão escrever a mensagem
//'Efetuar compra'.
Var
     qae, qmae, qmie, qmedia : real


Inicio

      escreva("Digite a quantidade atual:")
      leia (qae)
      escreva ("Digite a quantidade maxima:")
      leia (qmae)
      escreva ("Digite a quantidade minima:")
      leia (qmie)
      
      qmedia <- qmae + qmie / 2

      se (qae >= qmedia)entao
      escreva ("Nao efetuar compra")
      senao
      escreva ("Efetuar compra")
      fimse

Fimalgoritmo