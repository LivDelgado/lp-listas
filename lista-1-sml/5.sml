fun currentSum ([], _ ) = []
  | currentSum (x::xs, acumulated) = 
      let 
        val currentValue = x + acumulated 
      in 
        currentValue::currentSum(xs, currentValue) 
      end;

fun cumSum [] = raise Empty
  | cumSum [a] = [a]
  | cumSum (xs) = currentSum(xs, 0);

cumSum [6, 10, 3, 11];
