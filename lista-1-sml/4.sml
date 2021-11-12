fun max []  = raise Empty
  | max [a] = a : int
  | max (x::xs) =
      let 
        val maximumValue = max xs
      in
        if x > maximumValue then x else maximumValue
      end;


max [2, 1, 7, 3];