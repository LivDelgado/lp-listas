(*

Defina um tipo algébrico de dados dinheiro, que possa representar quantidades em
centavos (tipo int), em reais (tipo real), ou um par Nome x reais. A partir desse
tipo, defina uma fun¸c˜ao amount: dinheiro -> int que recebe um tipo dinheiro
como entrada e retorne a quantidade em centavos correspondente `a entrada.
input: val d = Real(2.0) : dinheiro
output: val it = 200 : int
input: val d = Centavos(2) : dinheiro
output: val it = 2 : int
input: val d = Pessoa Dinheiro(”Gene”, 2.5)) : dinheiro
output: val it = 250 : int

*)

datatype dinheiro = 
    Centavos of int
    | Real of real;

fun amount (Centavos v) = v
  | amount (Real v) = 
    Real.round (
            ((Real.realRound (#whole (Real.split valor))) * 100.0) + 
            ((Real.realMod valor) * 100.0)
    );

val d = Real(2.0) : dinheiro;
amount d;

val d = Centavos(2) : dinheiro;
amount d;