fun compose f g (x, y) = g (f (x, y));

fun f (x, y) = x + y;
fun g z = z * z;

fun quadradoDaSoma (x, y) = compose f g (x, y);

quadradoDaSoma(4, 5);