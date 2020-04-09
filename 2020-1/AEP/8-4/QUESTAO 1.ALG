Algoritmo "Questao 1"
// 1. Uma loja de sapatos precisa fazer uma promoção para
//seus clientes. O cliente que comprar 2 pares de sapato
//terá o desconto de 15% e se comprar 3 pares ou mais ganha desconto de 30%.
//Faça um algoritmo que leia o valor total da compra e o
//número de pares de sapatos. Se forem 2 ou mais calcule o
//desconto e escreva valor da compra e valor com desconto.
Var

    par_sapato: inteiro
    total, total_desconto : real
 
Inicio

      escreva("Digite o numero de pares:")
      leia (par_sapato)
           se (par_sapato = 2) entao
           total_desconto <- total - 15/100
           senao
                se (par_sapato >=3) entao
               total_desconto <- total - 30/100
               fimse
                




fimalgoritmo



