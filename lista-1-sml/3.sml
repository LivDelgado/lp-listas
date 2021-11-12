fun mapTwo _ ([],[]) = []
  | mapTwo f ((a::b),(c::d)) = f(a, c) :: (mapTwo f (b, d))
  | mapTwo _ _ = [];

fun sumLists (a, b) = mapTwo (fn (x, y) => x + y) (a, b);

sumLists([2, 5, 10], [1, 15, 4]);