var a = true;
var b = true;

var s = !a;
console.log("negando a" + s);

var s = a && b;
console.log("a and b" + s);

var s = a || b;
console.log("a or b" + s);

var s = a ^ b;
console.log("a xor b é" + s );
function pegarVariavel(){
    var variavel = document.getElementById('variavel').value;
    console.log(variavel);
    document.getElementById('result').innerHTML = "o conteudo e " + variavel;


}