(*
  caracteres separadores = ”,”, ”.”, ou ”-”
*)

val frase = "Bom dia,pra-voce";

fun isSeparator character = 
  (character = #",") orelse
  (character = #".") orelse
  (character = #"-") orelse
  (character = #" ");

String.tokens isSeparator frase;